//
//  UsersDefaults.swift
//  Task 2
//
//  Created by Ogabek Matyakubov on 02/12/22.
//

import Foundation

class UsersDefaults: ObservableObject {
    
    @Published var account: Account? {
        didSet {
            saveAccount(account: account)
        }
    }
    
    init() {
        self.account = loadAccount( )
    }
 
    func saveAccount(account: Account?) {
        let encoder = JSONEncoder()
        if let encodedAccount = try? encoder.encode(account) {
            UserDefaults.standard.set(encodedAccount, forKey: "account")
        }
    }
    
    func loadAccount() -> Account? {
        if let savedAccountData = UserDefaults.standard.object(forKey: "account") as? Data {
            let decoder = JSONDecoder()
            if let savedAccount = try? decoder.decode(Account.self, from: savedAccountData) {
                return savedAccount
            }
        }
        return nil
    }
    
}
