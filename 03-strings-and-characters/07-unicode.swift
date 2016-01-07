// unicode scalar: 21-bit number for a character or modifier

// special characters
// \n, \\, ...
// \u{n}, where n is hexadecimal number
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
print(wiseWords)
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"
print(dollarSign, blackHeart, sparklingHeart)

// extended grapheme cluster
let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "\u{65}\u{301}"
print(eAcute, combinedEAcute)

let precomposed: Character = "\u{D55C}"
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"
print(precomposed, decomposed)

let enclosedEAcute: Character = "\u{E9}\u{20DD}"
print(enclosedEAcute)

let regionalIndicatorForUS: Character = "\u{1F1FA}\u{1F1FB}"
print(regionalIndicatorForUS)
