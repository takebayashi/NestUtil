import Nest

extension Collection where Iterator.Element == Header {

    public subscript(name: String) -> String? {
        for header in self {
            if header.0 == name {
                return header.1
            }
        }
        return nil
    }

}
