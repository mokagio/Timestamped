import Foundation

/// A wrapper to decorate a type with timestamp information.
public struct Timestamped<Value> {

  public let value: Value
  public let created: Date

  public init(value: Value, created: Date = Date()) {
    self.value = value
    self.created = created
  }

  public func createdAfter(_ date: Date) -> Bool {
    return created.timeIntervalSince(date) > 0
  }

  public func createdBefore(_ date: Date) -> Bool {
    return created.timeIntervalSince(date) < 0
  }
}
