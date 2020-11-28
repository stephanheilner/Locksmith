import Foundation

// MARK: Accessible
public enum LocksmithAccessibleOption: RawRepresentable {
    case whenUnlocked, afterFirstUnlock, whenUnlockedThisDeviceOnly, afterFirstUnlockThisDeviceOnly, whenPasscodeSetThisDeviceOnly
    
    public init?(rawValue: String) {
        switch rawValue {
        case String(kSecAttrAccessibleWhenUnlocked):
            self = .whenUnlocked
        case String(kSecAttrAccessibleAfterFirstUnlock):
            self = .afterFirstUnlock
        case String(kSecAttrAccessibleWhenUnlockedThisDeviceOnly):
            self = .whenUnlockedThisDeviceOnly
        case String(kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly):
            self = .afterFirstUnlockThisDeviceOnly
        case String(kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly):
            self = .whenPasscodeSetThisDeviceOnly
        default:
            self = .whenUnlocked
        }
    }
    
    public var rawValue: String {
        switch self {
        case .whenUnlocked:
            return String(kSecAttrAccessibleWhenUnlocked)
        case .afterFirstUnlock:
            return String(kSecAttrAccessibleAfterFirstUnlock)
        case .whenPasscodeSetThisDeviceOnly:
            return String(kSecAttrAccessibleWhenPasscodeSetThisDeviceOnly)
        case .whenUnlockedThisDeviceOnly:
            return String(kSecAttrAccessibleWhenUnlockedThisDeviceOnly)
        case .afterFirstUnlockThisDeviceOnly:
            return String(kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly)
        }
    }
}
