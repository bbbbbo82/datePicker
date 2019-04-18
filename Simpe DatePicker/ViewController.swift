//
//  ViewController.swift
//  Simpe DatePicker
//
//  Created by amadeus on 16/04/2019.
//  Copyright © 2019 DIT Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outLabel: UILabel!
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // UI의 지역화(locatization)
        let locale = Locale(identifier: "ko_KO")    // ko_KO 한글(jp_JP 일본어, 지정안하면 영어)
        myDatePicker.locale = locale
        
        // DatePicker 모드 설정
        myDatePicker.datePickerMode = UIDatePicker.Mode.date
        
        // .date : 날짜가 나옴
        // .countDownTimer : 카운트 다운
        // .dateAndTime : 날짜와 시간이 같이 나옴
        // .time : 시간만 나옴
        
        // label 값 초기 설정
        let date = Date()
        let format = DateFormatter()    // DateFormatter : 형식에 맞게 데이터 타입을 바꿔줌
        format.dateFormat = "yyyy-MM-dd HH:mm EEE a" // a : PM, AM 나타냄
        let formattedDate = format.string(from: date)
        //print(formattedDate)
        outLabel.text = formattedDate
    }

    @IBAction func changeDatePicker(_ sender: Any) {
        let selectedData = myDatePicker.date
        print(selectedData)
        
        // Date 형을 문자형으로 변환
        let formatter = DateFormatter()     // DateFormatter : 형식에 맞게 데이터 타입을 바꿔줌
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        outLabel.text = formatter.string(from: selectedData)
    }
}

