//  THIS IS LECTURE 5
//  Artem Slonko
//  main.swift
//  Code 5
//
//  Created by user227117 on 9/29/22.
//

import Foundation

enum dietTypes{
    case herbavor, insectavor, carnivor, omnivor
}

class Animal{
    var numberOfLegs: Int
    var noctunrnal: Bool
    var hasTail:Bool
    var diet:[dietTypes]
    var typeOfAnimal: String
    
    init(_ typeOfAnimal:String,_ numberOfLegs:Int,_ noctunrnal:Bool,_ hasTail:Bool,_ diet:[dietTypes]){
        self.typeOfAnimal = typeOfAnimal
        self.numberOfLegs = numberOfLegs
        self.noctunrnal = noctunrnal
        self.hasTail = hasTail
        self.diet    = diet
    }
    
    
    func eat(){
            print("\(typeOfAnimal)animal ate")
    }
    
    func swim(){
        print("\(typeOfAnimal) animal swom")
    }
    
    func sleep(){
        print("\(typeOfAnimal)animal slept")
    }
    
}

class Dog: Animal{
    
    override
    func eat() {
        print("\(typeOfAnimal) animal ate but it is overrided")
    }
}





let dog = Dog("dog",4,false,true,[dietTypes.omnivor])

dog.eat()


class Cat: Animal{
    init(){
        super.init("Cat",4,false,true,[dietTypes.omnivor])
    }
    
    override
    func swim() {
            print("Cats don't like water! Overrided func.")
    }
}

let cat = Cat();
cat.swim()

dog.swim()



func getNumberOfLegs(animal: Animal) -> Int{
    print("This is an animal \(animal.typeOfAnimal) has \(animal.numberOfLegs) legs")
    return animal.numberOfLegs
}

getNumberOfLegs(animal: dog)
getNumberOfLegs(animal: cat)




protocol Flies{
    var  wingSpan: Double{get set}
    func flapWings()
    }


class Duck: Animal, Flies{
    var wingSpan: Double = 2.2
    
    init(){
        super.init("Duck", 2, false,true, [dietTypes.carnivor])
    }
    
    func flapWings() {
        print("The duck is flying")
    }
    
    
}

func isFlying(animal: Flies){
    print("wingSpan: \(animal.wingSpan)")
}

let duck = Duck()
isFlying(animal: duck)


class Inspects{
    var numberOflegs: Int
    var isPolinator: Bool
    
    init(numberOflegs: Int, isPolinator: Bool) {
        self.numberOflegs = numberOflegs
        self.isPolinator = isPolinator
    }
    
    func buildHome(){
        print("Insect built a house")
    }
    
    func makeNoise(){
        print("buzzzz")
    }
}

//
//class Bee: Inspects, Flies{
//    var wingSpan: Double
//    var numberOflegs: Int
//    var isPolinator: Bool
//
//    func flapWings() {
//        print("bee is buzzing around")
//    }
//
//    init(){
//        super.init(numberOflegs: 6, isPolinator: false)
//    }
//}



class Ant:Inspects,Flies{
    var wingSpan: Double
    
    
    init() {
        super.init(numberOflegs: 6, isPolinator: false)
    }
    
    
    
    
    func flapWings() {
        print("Blayt kak vse zaebalo")
    }
    
    
    override func buildHome() {
        print("Ant built a home ")
    }
}
