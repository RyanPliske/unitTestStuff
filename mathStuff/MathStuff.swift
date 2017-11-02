import Foundation

func numberOfTwos(maxNumber: Int) -> Int {
    var count = 0
    for number in 0...maxNumber {
        if String(number).contains("2") {
            count += 1
        }
    }
    return count
}

func humanize(_ param: String?) -> String {
    guard let unwrappedParamater = param else {
        return ""
    }
    var copyOfParam = ""
    for (index, char) in unwrappedParamater.enumerated() {
        if index == 0 {
            copyOfParam += String(char).capitalized
        } else {
            copyOfParam += String(char)
        }
        
    }
    return copyOfParam
}
