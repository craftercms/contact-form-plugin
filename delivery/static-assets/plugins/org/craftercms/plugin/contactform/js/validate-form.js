(function () {
    'use strict';

    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.querySelectorAll('.needs-validation');

    // Loop over them and prevent submission
    Array.prototype.slice.call(forms)
        .forEach(function (form) {
            form.addEventListener('submit', function (event) {
                if (!form.checkValidity()) {
                    event.preventDefault();
                    event.stopPropagation();
                }

                form.classList.add('was-validated');
            }, false);

            form.addEventListener('change', function(event) {
                const formField = event.target;
                const valid = formField.checkValidity();
                const fieldLabelValidationIndicator = document.querySelector(`[for="${formField.id}"] .form-field-required-indicator`);

                if (valid) {
                    fieldLabelValidationIndicator.classList.add('valid');
                } else {
                    fieldLabelValidationIndicator.classList.remove('valid');
                }
            })
        })
})()