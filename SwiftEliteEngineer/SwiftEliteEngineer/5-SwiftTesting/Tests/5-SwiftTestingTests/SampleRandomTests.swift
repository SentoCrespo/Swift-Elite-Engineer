import Foundation
import Testing

struct SampleRandomTests {
    
    /// GIVEN: Several random strings with different lengths
    /// WHEN: Checking if a string contains a dot or a comma
    /// THEN: Should not include a dot or a comma
    @Test("String does not contain '.'", arguments: [
        String.random(length: 1),
        String.random(length: 2),
        String.random(length: 3),
        String.random(length: 4),
        String.random(length: 5),
        String.random(length: 10),
        String.random(length: 50)
    ])
    func randomSample(text: String) {
        // Given
        let textValidator = TextValidator()
        
        // When
        let result = textValidator.isValid(text: text)
        
        // Then
        #expect(result == false)
    }

    private struct TextValidator {
        
        /// It is valid if it does not contain a '.'
        func isValid(text: String) -> Bool {
            return !text.contains(".")
        }
        
    }
    
}

extension String {
    
    static func random(length: Int) -> String {
        let text = (0 ..< length)
            .compactMap { _ in
                generateRandomCharacter()
            }
        return String(text)
    }
    
    static func generateRandomCharacter() -> Character {
        let characters = Array(
            "abcdefghijklmnopqrstuvwxyz" +
            "ABCDEFGHIJKLMNOPQRSTUVWXYZ" +
            "0123456789" +
            "!@#$%^&*()-_=+[]{}|;:'\",.<>?/~`"
        )
        return characters.randomElement()!
    }
    
}

