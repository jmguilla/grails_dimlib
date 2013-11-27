package com.jmguilla

class Contribution {
  
  //How does the item match
  Integer match
  Integer reliability

  static hasMany = [comments: Comment, requests: Request]
  static belongsTo = [item: Item, user: User]

  static constraints = {
  }
}
