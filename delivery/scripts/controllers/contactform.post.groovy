import plugins.org.craftercms.plugin.contactform.DefaultFormHandler

logger.info("New contact form submission")

def formId = params.formId
def handler = applicationContext."${formId}FormHandler"

if (!handler) {
  logger.info("No form handler found for form $formId")
  handler = new DefaultFormHandler()
}

return handler.handle(params, request)
