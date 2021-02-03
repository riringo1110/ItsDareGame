//
//  ViewController.swift
//  ItsDareGame
//
//  Created by Ririko Nagaishi on 2021/02/04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var itsuLabel: UILabel!
    @IBOutlet var dokoLabel: UILabel!
    @IBOutlet var dareLabel: UILabel!
    @IBOutlet var doshitaLabel: UILabel!
    
    let itsuArray: [String] = ["一年前","一週間","昨日","今日"]
    let dokoArray: [String] = ["山の上で","アメリカで","学校で","クラスで"]
    let dareArray: [String] = ["僕が","大統領が","先生が","友達が"]
    let doshitaArray: [String] = ["叫んだ","演説した","怒った","踊った"]
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func change() {
        //それぞれのラベルに配列の要素を追加
        itsuLabel.text = itsuArray[index]
        dokoLabel.text = dokoArray[index]
        dareLabel.text = dareArray[index]
        doshitaLabel.text = doshitaArray[index]
        
        //indexの値を+1とする
        index = index + 1
        
        //indexの値が3より大きくなったら0に戻す
        if index > 3 {
            index = 0
        }
    }
    
    @IBAction func reset() {
        //それぞれのラベルを元に戻す
        itsuLabel.text = "---"
        dokoLabel.text = "---"
        dareLabel.text = "---"
        doshitaLabel.text = "---"
        
        //indexを初期化
        index = 0
    }
    
    @IBAction func random() {
        
        //乱数を生成して、それぞれのindexに入れる
        let itsuIndex = Int.random(in: 0...3)
        let dokoIndex = Int.random(in: 0...3)
        let dareIndex = Int.random(in: 0...3)
        let doshitaIndex = Int.random(in: 0...3)
        
        //コンソールに出力して、それぞれの値を確かめよう
        print("いつ: \(itsuIndex)")
        print("どこで: \(dokoIndex)")
        print("だれが: \(dareIndex)")
        print("どうした: \(doshitaIndex)")
        
        //それぞれのラベルに要素を追加する
        itsuLabel.text = itsuArray[itsuIndex]
        dokoLabel.text = dokoArray[itsuIndex]
        dareLabel.text = dareArray[itsuIndex]
        doshitaLabel.text = doshitaArray[itsuIndex]
        
        }
    }



