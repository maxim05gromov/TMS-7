class Person{
    var name: String
    var surname: String
    var age: Int
    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
}
class Student: Person{
    var group: String
    var marks: [(subject: String, mark: Int)] = []
    
    init(group: String, name: String, surname: String, age: Int) {
        self.group = group
        super.init(name: name, surname: surname, age: age)
    }
    
    func printInfo(){
        print("\(name) \(surname) (\(group))")
        for m in marks{
            print("\(m.subject): \(m.mark)")
        }
    }
}
class Director: Person{
    var experience: Int
    var rating: Int
    init(experience: Int, rating: Int, name: String, surname: String, age: Int) {
        self.experience = experience
        self.rating = rating
        super.init(name: name, surname: surname, age: age)
    }
}

struct Location{
    let x: Int
    let y: Int
    let streetName: String
}
struct School{
    var students: [Student]
    let name: String
    let addr: Location
    var director: Director
    func printInfo(){
        print("School \(name)")
        print("Location: \(addr.x) \(addr.y) at \(addr.streetName) str.")
        print("Director: \(director.name) \(director.surname), expirience: \(director.experience), rating: \(director.rating)")
        print("Students count: \(students.count)")
    }
}

var masha = Student(group: "1a", name: "Masha", surname: "Ivanova", age: 7)
masha.marks = [("Math", 5), ("Russian Language", 5)]

var vitya = Student(group: "4b", name: "Vitya", surname: "Petrov", age: 11)
vitya.marks = [("Okruzhauschiy mir", 4), ("Physical Education", 5)]

var vanya = Student(group: "8c", name: "Vanya", surname: "Kozlov", age: 15)
vanya.marks = [("Biology", 3), ("English Language", 3)]

var marivanna = Director(experience: 6, rating: 1, name: "Maria", surname: "Ivanna", age: 45)

var school = School(students: [masha, vitya, vanya], name: "School #1", addr: Location(x: 5, y: 15, streetName: "Ploschad Alexandra Nevskogo"), director: marivanna)

school.printInfo()
for s in school.students{
    s.printInfo()
}
