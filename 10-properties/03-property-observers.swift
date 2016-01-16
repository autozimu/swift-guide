class StepCounter {
    var totalStep: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalStep to \(newTotalSteps)")
        }
        didSet {
            if totalStep > oldValue {
                print("Added \(totalStep - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalStep = 200
stepCounter.totalStep = 360
stepCounter.totalStep = 896
