package cakecatalog

class Cake {

  long id
  String name
  String description
  int ownerId
  boolean isPublic

  static constraints = {
  }

  static mapping = {
    id generator: "identity"
  }
}
