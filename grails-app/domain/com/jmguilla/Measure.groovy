package com.jmguilla

class Measure {

  BigDecimal value
  PointOfMeasure pointOfMeasure

  static belongsTo = [user: User]

  static constraints = {
    value nullable: false
    pointOfMeasure nullable: false
  }
}
