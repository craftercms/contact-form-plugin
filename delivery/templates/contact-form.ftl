<#if contentModel.usePlugintheme_b?? && contentModel.usePlugintheme_b>
    <link rel="stylesheet" href="/static-assets/plugins/org/craftercms/plugin/contactform/css/contact-form.css" />
</#if>

<#assign validateForm = contentModel.usePluginScript_b?? && contentModel.usePluginScript_b />

<form
    id="${contentModel.formId_s}"
    action="${contentModel.url_s}"
    method="post"
    class="contact-form <#if validateForm>needs-validation</#if>"
    <#if validateForm>novalidate</#if>
>
    <#if contentModel.title_s??>
        <div class="form-section">
            <h2 class="form-title">${contentModel.title_s}</h2>
        </div>
    </#if>

    <#list contentModel.fields_o.item as field>
        <div class="form-section">
            <label for="${contentModel.formId_s}-${field.fieldName_s}" class="form-label">${field.fieldLabel_s}</label>
            <input
                type="text"
                id="${contentModel.formId_s}-${field.fieldName_s}"
                name="${field.fieldName_s}"
                class="form-control"
                <#if field.required_b?? && field.required_b>required</#if>
            />
        </div>
    </#list>

    <div class="form-section">
        <label for="${contentModel.formId_s}-message" class="form-label">${contentModel.messageLabel_s}</label>
        <textarea id="${contentModel.formId_s}-message" name="message" class="form-control" required></textarea>
    </div>

    <input type="hidden" name="formId" value="${contentModel.formId_s}"/>
    <input type="submit" class="submit-btn" value="${contentModel.submitLabel_s}"/>
</form>

<#if validateForm>
    <script src="/static-assets/plugins/org/craftercms/plugin/contactform/js/validate-form.js"></script>
</#if>