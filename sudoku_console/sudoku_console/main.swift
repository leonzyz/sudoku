//
//  main.swift
//  sudoku_console
//
//  Created by 刘莎 on 16/3/23.
//  Copyright © 2016年 刘莎. All rights reserved.
//

import Foundation

print("Hello, World!")

class sudoku_table{
	var table=[Int]()
	let rownum=9
	let colnum=9
	var test: Int
	init(){
        test=0
		table=[Int](count:rownum*colnum,repeatedValue:0)
	}
	convenience init(newtable newtable_in:sudoku_table){
		self.init();
		for idx in 0...rownum*colnum-1 {
			table[idx]=newtable_in.table[idx]
		}
	}
	func print_table(){
        print()
		for row in 0...rownum-1 {
			var tmp_row: String=""
			for col in 0...colnum-1{
				tmp_row+="\(table[row*colnum+col]) \t"
			}
			print("\(tmp_row)");
		}
        print()
	}
	subscript(row:Int,col:Int)->Int{
        get {
            return table[row*colnum+col]
        }
        set {
            table[row*colnum+col]=newValue
            
        }
	}
    func erase(){
        for idx in 0...rownum*colnum-1{
            table[idx]=0
        }
    }
    func rand_gen(){
        for idx in 0...rownum*colnum-1{
            table[idx]=Int(arc4random()%9+1)
        }
    }
}

let a=sudoku_table()
a.print_table()
a.rand_gen()
a.print_table()
a.erase()
a[2,2]=3
a.print_table()
a.rand_gen()
a.print_table()

/*
var sudoku_table=[[Int]]();
for row in 1...9{
	var this_row=[Int]();
	for col in 1...9{
		let tmp=arc4random()%9+1;
		//print("\(tmp)\t",terminator:"");
		this_row.append(Int(tmp));
	}
    print("\(this_row)");
	sudoku_table.append(this_row);
}
*/

