package plugins.org.craftercms.plugin.contactform

class DefaultFormHandler implements FormHandler {

  def handle(params, request) {
    // do nothing and return a generic message...

    return "/templates/plugins/org/craftercms/plugin/contactform/thanks.ftl"
  }

}
