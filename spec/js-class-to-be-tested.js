// This class is here to be close to the the spec, but you might normally
// put this in /js or similar and add it to the load path in the rspec
// rake task
function JsClassToBeTested(first, last){
    this.fullName = first + " " + last;
    this.yearBornIfThisOld = function(ageInYears) {
        var yearsAgo = new Date();
	yearsAgo.setTime(yearsAgo.valueOf() - ageInYears * 365 * 24 * 60 * 60 * 1000);
        return yearsAgo.getFullYear();
    };
}
