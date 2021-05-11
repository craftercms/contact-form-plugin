<link rel="stylesheet" href="/static-assets/plugins/org/craftercms/plugin/contactform/css/contact-form.css" />

<form id="${contentModel.formId_s}" action="${contentModel.url_s}" method="post" class="contact-form">
  <#if contentModel.title_s??>
    <div class="form-section">
      <h2 class="form-title">${contentModel.title_s}</h2>
    </div>
  </#if>

  <#list contentModel.fields_o.item as field>
    <div class="form-section">
      <label for="${contentModel.formId_s}-${field.fieldName_s}" class="form-label">${field.fieldLabel_s}</label>
      <input type="input" id="${contentModel.formId_s}-${field.fieldName_s}" name="${field.fieldName_s}" class="form-control"/>
    </div>
  </#list>

  <div class="form-section">
    <label for="${contentModel.formId_s}-message" class="form-label">${contentModel.messageLabel_s}</label>
    <textarea id="${contentModel.formId_s}-message" name="message" class="form-control"></textarea>
  </div>

  <input type="hidden" name="formId" value="${contentModel.formId_s}"/>
  <input type="submit" class="submit-btn" value="${contentModel.submitLabel_s}"/>
</form>