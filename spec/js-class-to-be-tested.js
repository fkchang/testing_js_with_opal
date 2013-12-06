function JsClassToBeTested(first, last){
    this.fullName = first + " " + last;
    this.yearBornIfThisOld = function(ageInYears) {
        var yearsAgo = new Date();
	yearsAgo.setTime(yearsAgo.valueOf() - ageInYears * 365 * 24 * 60 * 60 * 1000);
        return yearsAgo.getFullYear();
    };
}
