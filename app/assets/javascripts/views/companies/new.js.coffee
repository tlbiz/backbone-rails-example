class Tapp.Views.CompaniesNew extends Backbone.View

  template: JST['companies/new']


  events:
    "click #save_company": "saveCompany"

  render: =>
    @$el.html(@template())
    @

  initialize: ->
    @collection = @options.collection

  saveCompany: (e) ->
    e.preventDefault()
    attributes =
      name: $("#company_name").val()
      address: $("#company_address").val()
      phone: $("#company_phone").val()
    if @collection.create attributes
      @router.navigate "#brands", trigger: true
    else
      alert "There were errors!"
