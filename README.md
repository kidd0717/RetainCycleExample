# RetainCycleExample
An example for Swift retain cycle

## RetainCycleExample
### Issue
```Swift
class BankAccount {
    var owner: Owner?
    init() {
        
    }
}
class Owner {
    var account: BankAccount?
    init() {
        
    }
}

let bankAccount = BankAccount()
let owner = Owner()
bankAccount.owner = owner
owner.account = bankAccount
```
### Fix
```Swift
var owner: Owner?
```
↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
```Swift
weak var owner: Owner?
```

## RetainCycleExample2
### Issue
```Swift
lazy var configureCell: (UITableViewCell)->() = { cell in
    if let tableViewCell = cell as? TableViewCell {
        tableViewCell.title?.text = self.name
    }
}
```
### Fix
```Swift
lazy var configureCell: (UITableViewCell)->() = { cell in
```
↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
```Swift
lazy var configureCell: (UITableViewCell)->() = { [unowned self] cell in
```

## RetainCycleExample3
### Issue
```Swift
var delegate: TableViewCellDelegate?
```
### Fix
```Swift
var delegate: TableViewCellDelegate?
```
↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
```Swift
weak var delegate: TableViewCellDelegate?
```
