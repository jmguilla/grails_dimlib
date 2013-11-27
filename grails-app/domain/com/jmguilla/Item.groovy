package com.jmguilla

class Item {

  Brand brand
  String name
  Type type
  //Amazon Standard Identification
  String asin
  //European Article Numbering
  String ean
  
  static hasMany = [pointsOfMeasure: PointOfMeasure, contributions: Contribution, urls: String]
  static mappedBy = [contributions: 'item']
  
  static constraints = {
  }
}
