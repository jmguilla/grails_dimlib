package com.jmguilla

class Brand {

  String name
  
  static constraints = {
    name nullable: false, blank: false
  }
}
