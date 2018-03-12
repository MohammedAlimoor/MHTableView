//  MHTableView
//
//  Created by MohammedAlimoor on 03/12/2018.
//  Copyright (c) 2018 MohammedAlimoor. All rights reserved.
/

import UIKit

public class EmptyView: UIView {


    @IBOutlet public weak var lbl_Status: UILabel!
    @IBOutlet public weak var image_Status: UIImageView!
    @IBOutlet public weak var btn_Status: UIButton!
    @IBOutlet  public weak var progressIndicatorView: UIActivityIndicatorView!

     var ReloadClickBlock : (() -> Void)?;
    
       
    var view: UIView!
    
    

    @IBAction func ButtonClick(_ sender: Any) {
        ReloadClickBlock!()
    }
   
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        xibSetup()
//        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        
        //        let tapRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(self.dismiss))
        //        view.addGestureRecognizer(tapRecognizer1)
        
    }
    required public init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    func dismiss() {
        
        self.removeFromSuperview()
    }
    
    func xibSetup()
    {
        view = loadViewFromNib()
        
        view.frame = bounds
        
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth , UIViewAutoresizing.flexibleHeight]
        
        addSubview(view)
        
        setupTable()
        
        //categoryView.tag=111
        
    }
    func setupTable(){
//        
//        if Login.hasPassword().contains("null"){
//            //password1.isHidden = true
//            password1.hideByHeight(hidden: true)
//            
//            
//        }else{
//            
//            
//            
//        }
//        
        
    }
    
    func loadViewFromNib() ->  UIView{
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "EmptyView", bundle: bundle)
        
        let view  = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
    }
    

}
