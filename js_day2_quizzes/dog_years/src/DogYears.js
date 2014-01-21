//create an object called dog
//it should have 3 functions, ageInYears, ageInDays, ageInDogYears

function Dog() {
  this.age = Math.floor(Math.random()*15)+1;
  this.ageInYears = function() {
    return this.age;
  };
  this.ageInDays = function() {
    return this.age * 365;
  };
  this.ageInDogYears = function() {

  };
}