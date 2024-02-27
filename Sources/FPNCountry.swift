import UIKit

public struct FPNCountry: Equatable, Hashable, Identifiable {

    public var code: FPNCountryCode
    public var name: String
    public var phoneCode: String
    public var flag: UIImage?

    public init(code: String, name: String, phoneCode: String) {
        self.name = name
        self.phoneCode = phoneCode
        self.code = FPNCountryCode(rawValue: code)!

        if let flag = UIImage(named: code, in: Bundle.FlagIcons, compatibleWith: nil) {
            self.flag = flag
        } else {
            self.flag = UIImage(named: "unknown", in: Bundle.FlagIcons, compatibleWith: nil)
        }
    }

    static public func ==(lhs: FPNCountry, rhs: FPNCountry) -> Bool {
        return lhs.code == rhs.code
    }
    
    public var id: String { "\(name)-\(phoneCode)" }
}
