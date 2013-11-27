package com.jmguilla

class Request {
  static belongsTo = [user: User, item: Item]

  static constraints = {
  }
}
