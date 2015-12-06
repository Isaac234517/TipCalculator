//
//  Calculator.swift
//  TipCalculator
//
//  Created by Isaac on 05/12/2015.
//  Copyright © 2015 Isaac. All rights reserved.
//

import Foundation


class Calculator{
    var total:Double
    var taxPct:Double
    var subTotal:Double{
        get{
            return total/(taxPct+1)
        }
    }
    
    var postTax:Double{
        get{
            return total*(1+taxPct)
        }
    }
    
    init(BillTotal total:Double, TaxPercentage taxPct:Double){
        self.total=total;
        self.taxPct=taxPct;
    }
    
    func tipAmount(TipPercentage tipPct:Double) -> Double{
        return self.subTotal * tipPct;
    }
    
    func possibileTips()->[Int:Double]{
      let Tips=[0.15,0.18,0.20]
        var mapping=[Int:Double]()
        for tip in Tips{
             let tipInPercentage:Int=Int(tip*100);
            mapping[tipInPercentage]=tipAmount(TipPercentage:tip)
        }
        return mapping;
    }
}
