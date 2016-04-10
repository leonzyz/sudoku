//
//  main.swift
//  sudoku_console
//
//  Created by 刘莎 on 16/3/23.
//  Copyright © 2016年 刘莎. All rights reserved.
//

import Foundation

print("Hello, World!")

var sudoku_table=[[Int]]();
for row in 1...9{
	var this_row=[Int]();
	for col in 1...9{
		let tmp=arc4random()%9+1;
		print("\(tmp)\t",terminator:"");
		this_row.append(Int(tmp));
	}
	sudoku_table.append(this_row);
}


// test git
//test 2
