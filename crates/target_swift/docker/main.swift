import Foundation

// Read JSON from stdin, parse with generated types, and output back to JSON
func main() {
    while let line = readLine() {
        guard !line.isEmpty else { continue }
        
        // Convert input line to Data
        guard let jsonData = line.data(using: .utf8) else {
            fatalError("Failed to convert input to UTF-8 data")
        }
        
        do {
            // Decode JSON using the generated Root type
            let decoder = JSONDecoder()
            let parsed = try decoder.decode(Root.self, from: jsonData)
            
            // Encode back to JSON
            let encoder = JSONEncoder()
            encoder.outputFormatting = .sortedKeys // For consistent output
            let outputData = try encoder.encode(parsed)
            
            // Output the JSON string
            if let outputString = String(data: outputData, encoding: .utf8) {
                print(outputString)
            } else {
                fatalError("Failed to convert output data to UTF-8 string")
            }
        } catch {
            fatalError("JSON processing failed: \(error)")
        }
    }
}

main()