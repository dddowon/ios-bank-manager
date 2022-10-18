//
//  BankManager.swift
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

struct BankManager {
    func workStart() {
        let clientNumber = Client().randomClientNumber()
        let clientList = Queue<Int>()
        let workTime: Double = 0.7
        
        for client in 1...clientNumber {
            clientList.enqueue(data: client)
            guard let client = clientList.dequeue() else { return }
            print("\(client) 번 고객 업무 시작")
            print("\(client) 번 고객 업무 종료")
        }
        let totalWorkTime: Double = workTime * Double(clientNumber)
        let strTotalWorkTime = String(format: "%.2f", totalWorkTime)
        print("업무가 마감되었습니다. 오늘 업무를 처리한 고객은 총 \(clientNumber)명 이며, 총 업무시간은 \(strTotalWorkTime)초입니다.")
        
    }
    
}
