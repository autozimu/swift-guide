protocol Toggable {
    mutating func toggle()
}

enum OnOffSwitch: Toggable {
    case Off, On
    mutating func toggle() {
        switch self {
        case Off:
            self = On
        case On:
            self = Off
        }
    }
}

var lightSwitch = OnOffSwitch.Off
print(lightSwitch)
lightSwitch.toggle()
print(lightSwitch)
