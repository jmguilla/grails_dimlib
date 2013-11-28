package com.jmguilla

import grails.converters.JSON
import grails.converters.XML

class ItemController {

  static scaffold = true

  def index(){
    def result = Item.list(params)
    withFormat{
      html{ render view: 'index'}
      json{ render(result as JSON) }
      xml{ render(result as XML) }
    }
  }

  def findByType(){
    def result = null
    try{
      result = Item.findAllWhere(type: Type.findByValueIlike(params.type))
    }catch(Throwable t){
      response.status = 400
      result = new ApiResult(type: 'danger', message: message(code: 'app.api.item.find.failure', args: ["of type ${params.type}"]))
    }
    withFormat{
      html{ render view: 'index'}
      json{ JSON.use('deep') {render(result as JSON) }}
      xml{ XML.use('deep') {render(result as XML) }}
    }
  }
}
