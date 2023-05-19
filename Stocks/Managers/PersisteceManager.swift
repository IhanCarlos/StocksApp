//
//  PersisteceManager.swift
//  Stocks
//
//  Created by ihan carlos on 12/04/23.
//

import Foundation

final class PersistenceMenager {
    static let shared = PersistenceMenager()
    
    private let userDefalts: UserDefaults = .standard
    
    private struct Constants {
        
    }
    private init () {
        
    }
     // MARK: - Public
    
    public var watchlist: [String] {
        return []
    }
    
    public func addToWatchlist() {
        
    }
    
    public func removeFromWatcList () {
        
    }
    
    // MARK: - Private
    
    private var hasOnboarded: Bool {
        return false
    }
}
