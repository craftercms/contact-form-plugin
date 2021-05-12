# Contact Form Plugin for Crafter CMS

This is a very simple but highly configurable plugin to add one or more contact forms to your site.

# Installation

The plugin can be installed to your site from the Crafter CMS Marketplace

# Setup

After the plugin has been installed you can add a contact form to any page or component of your site using the
`Contact Form` content-type.

# Configuration

Every contact form can be configured with the following properties:

- Form Id: Used to identify the form in the page (required)
- Title: The title displayed in the form (optional)
- URL: The URL used to submit the form (required, defaults to a Groovy controller provided by this plugin)
- Fields: The list of fields to capture from the user (optional)
  - Field Label: The label displayed for this field in the form (required)
  - Field Name: The name used for this field when submitting the form (required)
- Message Label: The label displayed for the main field of the form (required)
- Submit Label: The label displayed for the submit button (required)

# Capturing Form Submission

There are two strategies to capture the form submissions using this plugin:

## External Service

Set the URL to an external endpoint, for example an AWS Lambda

## Groovy Handler

The default Groovy controller included in this plugin will lookup a bean from the application context using the name
`<formId>FormHandler`. So it is possible to execute any custom code following these steps:

1. Create your custom handler by adding a class under `/scripts/classes` that implements
   `plugins.org.craftercms.plugin.contactform.FormHandler`.
2. Add your custom handler to the application context in the file `/config/engine/application-context.xml`

# Styling

The styles of the Contact Form plugin are based on Bootstrap 5 forms components, using Bootstrap's 
[build tools](https://getbootstrap.com/docs/5.0/getting-started/build-tools/#sass):

```
@import "functions";
@import "variables";
@import "mixins";
@import "utilities";

@import "forms";
```

To override styles you can use bootstrap form themes, or apply your own styles matching the classes used by 
[Bootstrap](https://getbootstrap.com/docs/5.0/forms/overview/).

## Custom elements (not matching Bootstrap) CSS

| Class Name | Description |
| ----------- | ----------- |
| .contact-form | Styles applied to the form element.  |
| .form-title | Styles applied to the component's title. |
| .submit-btn | Styles applied to the submit button. |
| .form-section | Styles applied to each form section. |

# Form Validation

Form validation is performed using HTML5 form validation, following Bootstrap's mechanisms, for more information, check
[here](https://getbootstrap.com/docs/5.0/forms/validation/). 