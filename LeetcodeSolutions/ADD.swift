class Solution
{
    func plusOne(_ digits: [Int]) -> [Int] {
        guard let lastDigit = digits.last else { return [] }
        
        if lastDigit == 9 {
            return digits.count == 1 ? [1, 0] : plusOne(digits.dropLast()) + [0]
        }
        return digits.dropLast() + [lastDigit + 1]
    }
}
//Mehriddin Jumayev

