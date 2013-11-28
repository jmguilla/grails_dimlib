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
    brand nullable: false
    type nullable: false
    name nullable: false, blank: false
    asin nullable: true, blank: false
    ean nullable: true, blank: false
  }

}
