# Timestamped ⏱

A generic type to decorate a given value with timestamp information.

```swift
let resource = Timestamped<Resource>(value: getResource())

if resource.createdBefore(Date.yesterady) {
  print("Old resource. Needs refresh")
} else {
  print("Still fresh: resource is \(resource.value)")
}
```
