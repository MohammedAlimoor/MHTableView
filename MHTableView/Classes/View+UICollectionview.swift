//
//  MHTableView+View+TableView.swift
//  MHTableView
//
//  Created by mac on 3/12/18.
//

import Foundation
import UIKit
extension UICollectionView{

 
    // show empty with text
   public func  showEmpty(text:String){
    

    let  rec =  CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height)
      hideEmpty()
        let emptyview = EmptyView(frame: rec)
        emptyview.lbl_Status.isHidden = false
        emptyview.lbl_Status.text = text
        emptyview.image_Status.isHidden = true
        emptyview.btn_Status.isHidden = true
        emptyview.progressIndicatorView.isHidden = true


        emptyview.lbl_Status.text = text
        self.backgroundView = emptyview
        
    }
    
    // show empty with text and button  & callback click

   public func  showEmpty(text:String,
                    buttonText:String,ReloadClickBlock : @escaping (() -> Void)){
      hideEmpty()
    let  rec =  CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height)
    let emptyview = EmptyView(frame: rec)
    
        emptyview.lbl_Status.isHidden = false
        emptyview.btn_Status.isHidden = false
        emptyview.image_Status.isHidden = true
        emptyview.progressIndicatorView.isHidden = true
        emptyview.lbl_Status.text = text
        emptyview.btn_Status.setTitle(buttonText, for: UIControlState.normal)
        emptyview.ReloadClickBlock = ReloadClickBlock
        self.backgroundView = emptyview
    }
    
    // show empty with text and button and image   & callback click button

  public  func  showEmpty(text:String,
                    buttonText:String,image:UIImage,ReloadClickBlock : @escaping (() -> Void)){
        hideEmpty()
    let  rec =  CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height)
    let emptyview = EmptyView(frame: rec)
        emptyview.lbl_Status.isHidden = false
        emptyview.btn_Status.isHidden = false
        emptyview.image_Status.isHidden = false
        emptyview.progressIndicatorView.isHidden = true
        emptyview.lbl_Status.text = text
        emptyview.btn_Status.setTitle(buttonText, for: UIControlState.normal)
        emptyview.ReloadClickBlock = ReloadClickBlock
        emptyview.image_Status.image = image

        self.backgroundView = emptyview
    }
  
    // show empty with IndicatorView
    public func  showEmptyIndicatorView(text:String,showText:Bool){
        
        
        let  rec =  CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height)
        hideEmpty()
        let emptyview = EmptyView(frame: rec)
        emptyview.lbl_Status.isHidden = showText
        emptyview.lbl_Status.text = text
        emptyview.image_Status.isHidden = true
        emptyview.btn_Status.isHidden = true
        emptyview.progressIndicatorView.isHidden = false
        
        
        emptyview.lbl_Status.text = text
        self.backgroundView = emptyview
        
    }
    
    // show empty with custom view
    public func  showEmpty(emptyview:UIView){
        hideEmpty()
        self.backgroundView = emptyview
    }
    
    // rest table view and clear empty view
  public  func hideEmpty(){
    if self.backgroundView == nil{
        return
    }
    if self.backgroundView?.subviews.count == 0{
        return
    }
        for v in (self.backgroundView?.subviews)!{
            v.removeFromSuperview()
        }
    }
}
