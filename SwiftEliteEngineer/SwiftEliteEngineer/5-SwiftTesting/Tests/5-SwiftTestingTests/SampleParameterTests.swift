import Foundation
import Testing

struct SampleParameterTests {
    
    private struct TextValidator {
        
        /// Returns if every character is a number
        func isInteger(text: String) -> Bool {
            return Int(text) != nil
        }
        
    }
    
    /// GIVEN: Several strings with and without numbers
    /// WHEN: Checking if a string contains only numbers
    /// THEN: Should succeed only with integers
    @Test("String only contains integer numbers", arguments: [
        "123",
        "abc",
        "123abc",
        "abc123",
        "123.45",
        "123,45",
        "abc123.45"
    ])
    func parameteresSample(text: String) {
        // Given
        let textValidator = TextValidator()
        
        // When
        let result = textValidator.isInteger(text: text)
        
        // Then
        #expect(result == true)
    }
    
}
