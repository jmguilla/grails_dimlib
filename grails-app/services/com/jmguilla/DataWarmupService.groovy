package com.jmguilla

import grails.transaction.Transactional

@Transactional
class DataWarmupService {

  def dev() {
    // Roles
    if(Role.count == 0) {
      new Role(authority: "ROLE_USER").save(flush: true, failOnError: true)
      new Role(authority: "ROLE_ADMIN").save(flush: true, failOnError: true)
      new Role(authority: "ROLE_FACEBOOK").save(flush: true, failOnError: true)
    }
    assert Role.count() == 3
    
    // Users
    def user = null
    if(!(user = new User(username:'jmguilla', password:'jmguilla', email:'guillauj@gmail.com', firstName: 'Jean-Michel', lastName: 'Guillaume', phoneNumber: '+33000000000', sha1: Utils.shortId(), signin: new Date())).save(flush: true, failOnError: true)){
      for(error in user.errors.getAllErrors()){
        println error
      }
    }
    UserRole.create(user, Role.findByAuthority("ROLE_USER"), true)
    assert User.count() == 1

    // Brands
    new Brand(name: "Reebok").save(failOnError: true, flush: true)
    new Brand(name: "Devred").save(failOnError: true, flush: true)
    new Brand(name: "Addidas").save(failOnError: true, flush: true)
    assert Brand.count() == 3 
    
    // Types
    new Type(value: "Shoes").save(failOnError: true, flush: true)
    new Type(value: "Gloves").save(failOnError: true, flush: true)
    new Type(value: "Helmet").save(failOnError: true, flush: true)
    assert Type.count() == 3
    
    // Items
    new Item(name: "Derbie1", brand: Brand.findByNameIlike("devred"), type: Type.findByValueIlike('shoes')).save(failOnError: true, flush: true)
    new Item(name: "Derbie2", brand: Brand.findByNameIlike("devred"), type: Type.findByValueIlike('shoes')).save(failOnError: true, flush: true)
    new Item(name: "Derbie3", brand: Brand.findByNameIlike("devred"), type: Type.findByValueIlike('shoes')).save(failOnError: true, flush: true)
    new Item(name: "Derbie4", brand: Brand.findByNameIlike("devred"), type: Type.findByValueIlike('shoes')).save(failOnError: true, flush: true)
    new Item(name: "Derbie5", brand: Brand.findByNameIlike("devred"), type: Type.findByValueIlike('shoes')).save(failOnError: true, flush: true)
    new Item(name: "Glove1", brand: Brand.findByNameIlike("Reebok"), type: Type.findByValueIlike('Gloves')).save(failOnError: true, flush: true)
    new Item(name: "Glove2", brand: Brand.findByNameIlike("Reebok"), type: Type.findByValueIlike('Gloves')).save(failOnError: true, flush: true)
    new Item(name: "Glove3", brand: Brand.findByNameIlike("Reebok"), type: Type.findByValueIlike('Gloves')).save(failOnError: true, flush: true)
    new Item(name: "Glove4", brand: Brand.findByNameIlike("Reebok"), type: Type.findByValueIlike('Gloves')).save(failOnError: true, flush: true)
    new Item(name: "Glove5", brand: Brand.findByNameIlike("Reebok"), type: Type.findByValueIlike('Gloves')).save(failOnError: true, flush: true)
    new Item(name: "Helmet1", brand: Brand.findByNameIlike("Addidas"), type: Type.findByValueIlike('helmet')).save(failOnError: true, flush: true)
    new Item(name: "Helmet2", brand: Brand.findByNameIlike("Addidas"), type: Type.findByValueIlike('helmet')).save(failOnError: true, flush: true)
    new Item(name: "Helmet3", brand: Brand.findByNameIlike("Addidas"), type: Type.findByValueIlike('helmet')).save(failOnError: true, flush: true)
    new Item(name: "Helmet4", brand: Brand.findByNameIlike("Addidas"), type: Type.findByValueIlike('helmet')).save(failOnError: true, flush: true)
    new Item(name: "Helmet5", brand: Brand.findByNameIlike("Addidas"), type: Type.findByValueIlike('helmet')).save(failOnError: true, flush: true)
    assert Item.count() == 15
  }
}
