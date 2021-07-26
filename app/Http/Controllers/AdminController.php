<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    public function login(){
        return view('login');
    }

    public function submitAdminLogin(Request $request){
        $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        $admin=User::where(['email'=>$request->email, 'role'=>'admin'])->first();
        if ($admin){
            if (Hash::check($request->password, $admin->password)) {
                session(['admin' => $admin]);
                return redirect()->route('adminDashboard');
            }
            else {
                return back()->withInput()->with('error','Email or Password entered is incorrect.');
            }
        }
        else {
            return back()->withInput()->with('error','Email or Password entered is incorrect.');
        }
    }

    public function adminDashboard(){
        $total_users=User::where('role','user')->count();
        return view('dashboard', compact('total_users'));
    }

    public function logout(){
        session()->forget('admin');
        return redirect()->route('login');
    }

    public function usersList(){
        return view('users-list');
    }

    public function getUsersList(Request $request){
        $offset = ($request->page_num-1) * 10;

        $where=" role='user' ";
        if (!is_null($request->name)){
            $where.="AND name LIKE '%".$request->name."%' ";
        }

        if (!is_null($request->mobile_number)){
            $where.="AND mobile_number='$request->mobile_number' ";
        }

        if (!is_null($request->email)){
            $where.="AND email='$request->email' ";
        }
        //dd($where);

        $users=User::whereRaw($where)->offset($offset)->limit(10)->get();
        $total=User::whereRaw($where)->count();
        $count=$offset+1;

        $html='';
        if (count($users)){
            foreach ($users as $user){
                $html.='<tr>
                            <td>'.$count.'</td>
                            <td>'.change_format($user->created_at).'</td>
                            <td>'.$user->name.'</td>
                            <td>'.check_empty($user->mobile_number).'</td>
                            <td>'.$user->email.'</td>
                        </tr>';
                ++$count;
            }
        }
        else{
            $html.= empty_table(5);
        }

        $data=['html'=> $html, 'total'=> $total];
        return json_encode($data);
    }







}
