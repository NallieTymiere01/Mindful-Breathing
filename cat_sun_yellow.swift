import UIKit

class BreathingExercise {
    let exerciseName: String
    let breathingTime:TimeInterval
    let breathsPerMinute: Int
    
    init(exerciseName:String, breathingTime:TimeInterval, breathsPerMinute:Int) {
        self.exerciseName = exerciseName
        self.breathingTime = breathingTime
        self.breathsPerMinute = breathsPerMinute
    }
    
    func executeExercise() -> String {
        return "\(exerciseName) Breath in for \(breathingTime) seconds and breathe out for \(breathingTime) seconds, for \(breathsPerMinute) breaths per minute"
    }
    
    func description() -> String {
        return "\(exerciseName) is to breathe in for \(breathingTime) seconds and breathe out for \(breathingTime) seconds, for \(breathsPerMinute) breaths per minute"
    }
}

class BreathingTechniquesWorkshop {
    var exercises = [BreathingExercise]()
    
    func addExercise(exerciseName:String, breathingTime:TimeInterval, breathsPerMinute:Int) {
        let exercise = BreathingExercise(exerciseName: exerciseName, breathingTime: breathingTime, breathsPerMinute: breathsPerMinute)
        exercises.append(exercise)
    }
    
    func executeAllExercises() -> [String] {
        var results = [String]()
        for exercise in exercises {
            results.append(exercise.executeExercise())
        }
        return results
    }
    
    func description() -> [String] {
        var results = [String]()
        for exercise in exercises {
            results.append(exercise.description())
        }
        return results
    }
    
    func removeExercise(exercise:BreathingExercise) {
        if let index = exercises.index(of: exercise) {
            exercises.remove(at: index)
        }
    }
    
    func removeExercise(exerciseName:String) {
        if let index = exercises.index(where: { $0.exerciseName == exerciseName }) {
            exercises.remove(at: index)
        }
    }
}

let workshop = BreathingTechniquesWorkshop()
workshop.addExercise(exerciseName: "Deep Breathing", breathingTime: 5.0, breathsPerMinute: 6)
workshop.addExercise(exerciseName: "Belly Breathing", breathingTime: 5.0, breathsPerMinute: 8)
workshop.addExercise(exerciseName: "Nose Breathing", breathingTime: 4.0, breathsPerMinute: 10)

let allExercises = workshop.executeAllExercises()
let allExerciseDescriptions = workshop.description()

// results
print(allExercises)
print(allExerciseDescriptions)

// remove the exercise by name
workshop.removeExercise(exerciseName: "Deep Breathing")

// results
allExercises = workshop.executeAllExercises()
allExerciseDescriptions = workshop.description()

print(allExercises)
print(allExerciseDescriptions)