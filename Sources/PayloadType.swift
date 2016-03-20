import Nest

extension PayloadType {

    mutating public func toString() -> String? {
        var buffer = [CChar]()
        while let chunk = next() {
            buffer.append(contentsOf: chunk.map({ CChar($0) }))
        }
        return String(validatingUTF8: buffer)
    }

}
