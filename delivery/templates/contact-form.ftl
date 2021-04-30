<form id="${contentModel.formId_s}" action="${contentModel.url_s}" method="post">
  <#if contentModel.title_s??>
  <strong>${contentModel.title_s}</strong><br/>
  </#if>

  <#list contentModel.fields_o.item as field>
  <label for="${contentModel.formId_s}-${field.fieldName_s}">${field.fieldLabel_s}</label><br/>
  <input type="input" id="${contentModel.formId_s}-${field.fieldName_s}" name="${field.fieldName_s}"/><br/>
  </#list>

  <label for="${contentModel.formId_s}-message">${contentModel.messageLabel_s}</label><br/>
  <textarea id="${contentModel.formId_s}-message" name="message"></textarea><br/>

  <input type="hidden" name="formId" value="${contentModel.formId_s}"/>
  <input type="submit" value="${contentModel.submitLabel_s}"/>
</form>
