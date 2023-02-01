## Right arrow widget for pock

Simple right arrow key widget for Pock based on ESC key widget from https://github.com/pock/esc-widget

## Purpose
This handy widget was created to resolve problem with not working physical button on mac book pro.

## Make Your own key widget


This project could be used as base for any other key. Simply edit in `ArrowWidget` hex key code to another one if needed. Replace also title to other one with would be displayed on button.

```
private let key: KeySender = KeySender(keyCode: Int32(0x7C), isAux: false)
        
        required init() {
            self.view = PKButton(title: "->", maxWidth: 64, target: self, action: #selector(tap))
        }
```


Ex. `->` and hex code `0x7C`

Key code could be found here: https://eastmanreference.com/complete-list-of-applescript-key-codes

Remeber to convert decimal code to hex.

## Preview

<img width="137" alt="Screenshot 2023-02-01 at 15 51 42" src="https://user-images.githubusercontent.com/6278666/216076339-bf7477d9-1f34-492d-b92c-41d076470f7a.png">
