# r.swift-example
An example project demonstrating the need to specify the bundle when using R.swift

This example is meant to illustrate a certain usecase as discussed in https://github.com/mac-cain13/R.swift/issues/31


### Problem

R.swift always assumes the `mainBundle` when loading resources. This does not work anymore when resources are bundled in a framework. 

In this example, there is a `GUI` target. In a real world application, custom GUI elements might be encapsulated in this target. 
The target builds the `GUI` framework. The main app target uses the GUI framework.

The problem can be observed in [GUI/GUI.swift](https://github.com/iv-mexx/r.swift-example/blob/master/GUI/GUI.swift) where both, the image as well as the UINib can not be loaded because they are located not in the main bundle but in the `GUI` bundle.
