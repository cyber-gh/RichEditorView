# RichEditorView

This is the Swift 5 version of [cjwirth/RichEditorView](https://github.com/cjwirth/RichEditorView) using WKWebView that **added several** awesome functionalities.

Table of Contents:
- Usage Instructions
- Added Features
- TODO
- Extra Notes
- Credits and License

-------

### Usage Instructions:

You can import it only using Cocoapods
```
pod "RichEditorViewSwift"
```

```swift
import RichEditorViewSwift
```

No unit testing is included here. You can find it in cjwirth/RichEditorView

---

### Added Features:

Most features are the same from the [parent repo](https://github.com/cjwirth/RichEditorView), but I have added some other functionalities and some directions in the sample. Other features can be found in cjwirth's repo.

- Checkbox
- Offline & Server-based Image and Video functionality
- Tables ([with editing functionality](https://github.com/YoomamaFTW/RichEditorView/pull/5#issuecomment-592952190))

The following edited features assumes you have a property `let editorView = RichEditorView()`

1. You can get selected text by doing `editorView.getSelectedText`
2. runJS and other functions in the RichEditorView does NOT work like cjwirth's. This is due to the JavaScript bridging for WKWebView; unlike WK, UIWebView had a string be returned. In order to run JavaScript and other functionalities return `Void`, you must do the following:
```
editorView.getSelectedText() { r in
    // r is just a variable.
}
```
or 
```
editorView.runJS("document.getElementById('editor')") { r in 
    print(r)
}
```
**NOTE That these might run asynchronously. This might be due to WKWebView's memory efficiency feature. Don't quote me on that though, since I'm not too sure if that's true. Just an observation.**
This is because the function is: `public func getSelectedText(handler: @escaping (String) -> Void)`. Notice the `(String) -> Void`. The variable `r` is the string value returned by JavaScript.

3. The insertLink functionality has also changed. Normal <a> tags in HTML are layed out like this: `<a href="https://github.com/" title="GitHub">The TEXT that user sees</a>`. When you insert a link, the following arguments are required: href and text. **If there is a range selection, the text in the range selection will be cleared!**
4. Dark mode is included via the CSS and HTML files.

---

### TODO

- Certain issue if your frame is not set to the view controller's view's width. Recommend using additionalSafeAreaInsets ~~There is an issue with the CSS expanding on user initially clicking the editor's view~~
- Find someone to maintain Pod and Carthage package
- Separate iOS 12.X and iOS >13.X packages
- Refactor toolbar for iOS 12.X

---

### Credits and License

License is under BSD-3 Clause
cjwirth - Original iOS-RichEditorView Creator
C. Bess - WKWebView Support
Forked from YoomamaFTW
