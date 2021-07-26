$(document).ready(function () {

    $.validator.addMethod("alphabetsAndSpaces", function (value, element) {
        return this.optional(element) || value == value.match(/^[a-zA-Z ]*$/);
    });

    $.validator.addMethod("alphabetsOnly", function (value, element) {
        return this.optional(element) || value == value.match(/^[a-zA-Z]*$/);
    });

    jQuery.validator.addMethod("validDate", function (value, element) {
        return this.optional(element) || moment(value, "DD/MM/YYYY").isValid();
    });

    //pakistani mobile number both formats
    $.validator.addMethod("phoneNumber", function (value, element) {
        return this.optional(element) || value == value.match(/^[\+]\d{2}\d{10}$/) || value == value.match(/^[\d]{4}[\d]{7}$/);
    });

    $.validator.addMethod("telePhoneNumber", function (value, element) {
        return this.optional(element) || value == value.match(/^[\+]\d{2}\d{10}$/);
    });

    //Admin Login Form
    $("#admin_login_form").validate({
        rules: {
            email: {
                required: true,
                email: true,
            },
            password: {
                required: true,
            },
        },
        messages: {
            email: {
                required: "Please enter email.",
                email: "Email is invalid.",
            },
            password: {
                required: "Please enter password.",
            },
        }
    });












});
