//
//  MHTableView+View+TableView.swift
//  MHTableView
//
//  Created by mac on 3/12/18.
//

import Foundation
extension UITableView {
    var emptyview: EmptyView {
        let  rec =  CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height)
        let temp = EmptyView(frame: rec)
        
        return temp
    }
    
 
    func  showEmpty(text:String){
          hideEmpty()
        self.emptyview.lbl_Status.isHidden = false
        self.emptyview.image_Status.isHidden = true
        self.emptyview.btn_Status.isHidden = true


        self.emptyview.lbl_Status.text = text
        self.backgroundView = self.emptyview
        
    }
    func  showEmpty(text:String,
                    buttonText:String,ReloadClickBlock : @escaping (() -> Void)){
          hideEmpty()
        self.emptyview.lbl_Status.isHidden = false
        self.emptyview.btn_Status.isHidden = false
        self.emptyview.image_Status.isHidden = true

        self.emptyview.lbl_Status.text = text
        self.emptyview.btn_Status.setTitle(buttonText, for: UIControlState.normal)
        self.emptyview.ReloadClickBlock = ReloadClickBlock
        self.backgroundView = self.emptyview
    }
    func  showEmpty(text:String,
                    buttonText:String,image:UIImage,ReloadClickBlock : @escaping (() -> Void)){
        hideEmpty()
        self.emptyview.lbl_Status.isHidden = false
        self.emptyview.btn_Status.isHidden = false
        self.emptyview.image_Status.isHidden = false
        self.emptyview.lbl_Status.text = text
        self.emptyview.btn_Status.setTitle(buttonText, for: UIControlState.normal)
        self.emptyview.ReloadClickBlock = ReloadClickBlock
        self.emptyview.image_Status.image = image

        self.backgroundView = self.emptyview
    }
  
    func hideEmpty(){
        for v in (self.backgroundView?.subviews)!{
            v.removeFromSuperview()
        }
    }
}
