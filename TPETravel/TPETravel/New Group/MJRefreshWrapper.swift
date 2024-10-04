//
//  MJRefreshWrapper.swift
//  TPETravel
//
//  Created by Kai Fu Jhuang on 2024/8/10.
//

// For reload 使用
import UIKit
import MJRefresh

extension UITableView {

    func addRefreshHeader(refreshingBlock: @escaping () -> Void) {

        mj_header = MJRefreshNormalHeader(refreshingBlock: refreshingBlock)
    }

    func endHeaderRefreshing() {

        mj_header?.endRefreshing()
    }

    func beginHeaderRefreshing() {

        mj_header?.beginRefreshing()
    }

    func addRefreshFooter(refreshingBlock: @escaping () -> Void) {

        mj_footer = MJRefreshAutoNormalFooter(refreshingBlock: refreshingBlock)
    }

    func endFooterRefreshing() {

        mj_footer?.endRefreshing()
    }

    func endWithNoMoreData() {

        mj_footer?.endRefreshingWithNoMoreData()
    }

    func resetNoMoreData() {

        mj_footer?.resetNoMoreData()
    }
}

extension UICollectionView {

    func addRefreshHeader(refreshingBlock: @escaping () -> Void) {

        mj_header = MJRefreshNormalHeader(refreshingBlock: refreshingBlock)
    }

    func endHeaderRefreshing() {

        mj_header?.endRefreshing()
    }

    func beginHeaderRefreshing() {

        mj_header?.beginRefreshing()
    }

    func addRefreshFooter(refreshingBlock: @escaping () -> Void) {

        mj_footer = MJRefreshAutoNormalFooter(refreshingBlock: refreshingBlock)
    }

    func endFooterRefreshing() {

        mj_footer?.endRefreshing()
    }

    func endWithNoMoreData() {

        mj_footer?.endRefreshingWithNoMoreData()
    }

    func resetNoMoreData() {

        mj_footer?.resetNoMoreData()
    }
}
