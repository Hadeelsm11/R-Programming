### Creating generic function in s4

library(methods)

setClass("Women", 
         slots = c(
           name = "character",
           height = "numeric", 
           weight = "numeric"
         ),
         prototype = list(
           name = NA_character_,
           height = NA_real_,
           weight = NA_real_
         )) 

sandy<- new("Women", name = "Sandy", height = 58, weight = 115)
bella<- new("Women", name = "Bella", height = 59, weight = 117)
cindy<- new("Women", name = "Cindy", height = 60, weight = 120)
karla<- new("Women", name = "Karla", height = 62, weight = 135)
sara<- new("Women",  name = "Sara", height = 63, weight = 95)

setGeneric("show", 
           function(object) standardGeneric("show"))

setMethod("show", "Women", function(object) {
  cat(is(object)[[1]], "\n",
      "Name: ", object@name, "\n",
      "Height: ", object@height, "\n",
      "Weight: ", object@weight, "\n",
      sep = ""
      )

})


show(sandy)
show(bella)
show(cindy)
show(karla)
show(sara)

##Example of S3
studentBio <- list(studentName = "Harry Potter", studentAge = 19, studentContact="London")
class(studentBio) <- "StudentInfo"
studentBio

#creating a generic function in s3
contact <- function(object) {
  UseMethod("contact")
}
contact.StudentInfo <- function(object) {
  cat("Your contact is", object$studentContact, "\n")
}
contact(studentBio)
#################################################################


#s4 Generic function for listing objects in the dataset
show(mtcars)

#check to see if it is a S4 method
isS4(show)

#see if mtcars is s3 or s4
sloop::otype(mtcars)

#see the class of mtcars
class(mtcars)

#check base type
typeof(mtcars)

#check if "sara" is s3 or s4
sloop::otype(sara)

#check to see if studentBio is s3 or s4
sloop::otype(studentBio)

#generic function "plot"
plot(mtcars)

#generic function "summary"
summary(mtcars)





