// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift

import UIKit

struct R {
  static func validate() {
    storyboard.launchScreen.validateImages()
    storyboard.launchScreen.validateViewControllers()
    storyboard.main.validateImages()
    storyboard.main.validateViewControllers()
  }
  
  struct file {
    
  }
  
  struct font {
    
  }
  
  struct image {
    
  }
  
  struct nib {
    
  }
  
  struct reuseIdentifier {
    
  }
  
  struct segue {
    
  }
  
  struct storyboard {
    struct launchScreen {
      static var initialViewController: UIViewController? { return instance.instantiateInitialViewController() }
      static var instance: UIStoryboard { return UIStoryboard(name: "LaunchScreen", bundle: nil) }
      
      static func validateImages() {
        
      }
      
      static func validateViewControllers() {
        
      }
    }
    
    struct main {
      static var initialViewController: R_Example.ViewController? { return instance.instantiateInitialViewController() as? R_Example.ViewController }
      static var instance: UIStoryboard { return UIStoryboard(name: "Main", bundle: nil) }
      
      static func validateImages() {
        
      }
      
      static func validateViewControllers() {
        
      }
    }
  }
}

struct _R {
  struct nib {
    
  }
}

struct ReuseIdentifier<T>: CustomStringConvertible {
  let identifier: String
  
  var description: String { return identifier }
}

protocol NibResource {
  var instance: UINib { get }
  var name: String { get }
}

protocol Reusable {
  typealias T
  
  var reuseIdentifier: ReuseIdentifier<T> { get }
}

extension UITableView {
  func dequeueReusableCellWithIdentifier<T : UITableViewCell>(identifier: ReuseIdentifier<T>, forIndexPath indexPath: NSIndexPath?) -> T? {
    if let indexPath = indexPath {
      return dequeueReusableCellWithIdentifier(identifier.identifier, forIndexPath: indexPath) as? T
    }
    return dequeueReusableCellWithIdentifier(identifier.identifier) as? T
  }
  
  func dequeueReusableCellWithIdentifier<T : UITableViewCell>(identifier: ReuseIdentifier<T>) -> T? {
    return dequeueReusableCellWithIdentifier(identifier.identifier) as? T
  }
  
  func dequeueReusableHeaderFooterViewWithIdentifier<T : UITableViewHeaderFooterView>(identifier: ReuseIdentifier<T>) -> T? {
    return dequeueReusableHeaderFooterViewWithIdentifier(identifier.identifier) as? T
  }
  
  func registerNib<T: NibResource where T: Reusable, T.T: UITableViewCell>(nibResource: T) {
    registerNib(nibResource.instance, forCellReuseIdentifier: nibResource.reuseIdentifier.identifier)
  }
  
  func registerNibForHeaderFooterView<T: NibResource where T: Reusable, T.T: UIView>(nibResource: T) {
    registerNib(nibResource.instance, forHeaderFooterViewReuseIdentifier: nibResource.reuseIdentifier.identifier)
  }
  
  func registerNibs<T: NibResource where T: Reusable, T.T: UITableViewCell>(nibResources: [T]) {
    nibResources.forEach(registerNib)
  }
}

extension UICollectionView {
  func dequeueReusableCellWithReuseIdentifier<T: UICollectionViewCell>(identifier: ReuseIdentifier<T>, forIndexPath indexPath: NSIndexPath) -> T? {
    return dequeueReusableCellWithReuseIdentifier(identifier.identifier, forIndexPath: indexPath) as? T
  }
  
  func dequeueReusableSupplementaryViewOfKind<T: UICollectionReusableView>(elementKind: String, withReuseIdentifier identifier: ReuseIdentifier<T>, forIndexPath indexPath: NSIndexPath) -> T? {
    return dequeueReusableSupplementaryViewOfKind(elementKind, withReuseIdentifier: identifier.identifier, forIndexPath: indexPath) as? T
  }
  
  func registerNib<T: NibResource where T: Reusable, T.T: UICollectionViewCell>(nibResource: T) {
    registerNib(nibResource.instance, forCellWithReuseIdentifier: nibResource.reuseIdentifier.identifier)
  }
  
  func registerNib<T: NibResource where T: Reusable, T.T: UICollectionReusableView>(nibResource: T, forSupplementaryViewOfKind kind: String) {
    registerNib(nibResource.instance, forSupplementaryViewOfKind: kind, withReuseIdentifier: nibResource.reuseIdentifier.identifier)
  }
  
  func registerNibs<T: NibResource where T: Reusable, T.T: UICollectionViewCell>(nibResources: [T]) {
    nibResources.forEach(registerNib)
  }
  
  func registerNibs<T: NibResource where T: Reusable, T.T: UICollectionReusableView>(nibResources: [T], forSupplementaryViewOfKind kind: String) {
    nibResources.forEach { self.registerNib($0, forSupplementaryViewOfKind: kind) }
  }
}

extension UIViewController {
  convenience init(nib: NibResource) {
    self.init(nibName: nib.name, bundle: nil)
  }
}