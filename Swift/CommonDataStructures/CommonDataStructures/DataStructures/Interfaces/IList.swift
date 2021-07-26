//
//  IList.swift
//  CommonDataStructures
//
//  Created by SuXinDe on 2021/7/26.
//

import Foundation

/**
 * A list or sequence is an abstract data type that implements an ordered
 * collection of values, where the same value may occur more than once.
 * <p>
 * @see <a href="https://en.wikipedia.org/wiki/List_(computing)">List (Wikipedia)</a>
 * <br>
 * @author suxinde <skyprayer@126.com>
 */
public protocol IList {
    
    associatedtype T
    
    /**
     * Add value to list.
     *
     * @param value to add.
     * @return True if added.
     */
    @discardableResult
    func add(value: T) -> Bool;
    
    /**
     * Remove value from list.
     *
     * @param value to remove.
     * @return True if removed.
     */
    @discardableResult
    func remove(value: T) -> Bool;
    
    /**
     * Clear the entire list.
     */
    func clear();
    
    /**
     * Does the list contain value.
     *
     * @param value to search list for.
     * @return True if list contains value.
     */
    func contains(value: T) -> Bool;
    
    /**
     * Size of the list.
     *
     * @return size of the list.
     */
    func size() -> Int;
    
    /**
     * Validate the list according to the invariants.
     *
     * @return True if the list is valid.
     */
    func validate() -> Bool;
    
    /**
     * Get this Queue as a Swift Array
     *
     * @return Swift Array
     */
    func toArray() -> Array<T>;
    
}
