//
//  ISet.swift
//  CommonDataStructures
//
//  Created by SuXinDe on 2021/7/26.
//

import Foundation

/**
 * In computer science, a set is an abstract data structure that can store certain values, without
 * any particular order, and no repeated values. It is a computer implementation of the mathematical
 * concept of a finite set. Unlike most other collection types, rather than retrieving a specific
 * element from a set, one typically tests a value for membership in a set.
 * <p>
 * @see <a href="https://en.wikipedia.org/wiki/Set_(abstract_data_type)">Set (Wikipedia)</a>
 * <br>
 * @author suxinde <skyprayer@126.com>
 */
public protocol ISet {
    
    associatedtype T
    
    /**
     * Add value to set.
     *
     * @param value to add.
     * @return True if added.
     */
    @discardableResult
    func add(value: T) -> Bool;
    
    /**
     * Remove value from set.
     *
     * @param value to remove.
     * @return True if removed.
     */
    @discardableResult
    func remove(value: T) -> Bool;
    
    /**
     * Clear the entire set.
     */
    func clear();
    
    /**
     * Does the set contain value.
     *
     * @param value to search set for.
     * @return True if set contains value.
     */
    func contains(value: T) -> Bool;
    
    /**
     * Size of the set.
     *
     * @return size of the set.
     */
    func size() -> Int;
    
    /**
     * Validate the set according to the invariants.
     *
     * @return True if the set is valid.
     */
    func validate() -> Bool;
    
    /**
     * Get this Queue as a Swift Array
     *
     * @return Swift Array
     */
    func toArray() -> Array<T>;
    
}
