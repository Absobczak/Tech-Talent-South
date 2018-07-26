/*Variable, Functio practice
var name = prompt("What is your name");
var lang = prompt("Are you fluent in any language other than English?");
var saying = prompt("How do you greet others in that language?");

function greeting(name, language, saying) {
    console.log(saying + " " + name + " , nice to speak with someone else who speaks " + lang);
}

greeting(name, lang, saying);*/

var name = prompt("Provide a name")
var verb = prompt("Provide a verb");
var noun1 = prompt("Provide a noun");
var verb2 = prompt("Provide a new verb");
var adjective = prompt("Provide a adjective");
var noun3 = prompt("Provide a new noun");
var verb3 = prompt("Provide a new verb");
var noun4 = prompt("Provide a new noun");
var adverb = prompt("Provide an adverb");
var verb4 = prompt("Provide a new verb");

function madlib(name, verb, noun1, verb2, adjective, noun3, verb3, noun4, adverb, verb4) {
    console.log(name + verb + " to " + noun1 + " to " + verb +". If " + adjective + noun3 + verb3 + " then the " + noun4 + adverb + verb4)
}

madlib(name, verb, noun1, verb2, adjective, noun3, verb3, noun4, adverb, verb4)