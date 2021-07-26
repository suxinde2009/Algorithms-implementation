//
//  ITree.swift
//  CommonDataStructures
//
//  Created by SuXinDe on 2021/7/26.
//

import Foundation

/**
 * A tree can be defined recursively (locally) as a collection of nodes (starting at a root node),
 * where each node is a data structure consisting of a value, together with a list of nodes (the "children"),
 * with the constraints that no node is duplicated. A tree can be defined abstractly as a whole (globally)
 * as an ordered tree, with a value assigned to each node.
 * <p>
 * @see <a href="https://en.wikipedia.org/wiki/Tree_(data_structure)">Tree (Wikipedia)</a>
 * <br>
 * @author suxinde <skyprayer@126.com>
 */
public protocol ITree {
    
    associatedtype T
    
    /**
     * Add value to the tree. Tree can contain multiple equal values.
     *
     * @param value to add to the tree.
     * @return True if successfully added to tree.
     */
    @discardableResult
    func add(value: T) -> Bool;
    
    /**
     * Remove first occurrence of value in the tree.
     *
     * @param value to remove from the tree.
     * @return T value removed from tree.
     */
    @discardableResult
    func remove(value: T) -> T;
    
    /**
     * Clear the entire stack.
     */
    func clear();
    
    /**
     * Does the tree contain the value.
     *
     * @param value to locate in the tree.
     * @return True if tree contains value.
     */
    func contains(value: T) -> Bool;
    
    /**
     * Get number of nodes in the tree.
     *
     * @return Number of nodes in the tree.
     */
    func size() -> Int;
    
    /**
     * Validate the tree according to the invariants.
     *
     * @return True if the tree is valid.
     */
    func validate() -> Bool;
    
    /**
     * Get this Queue as a Swift Array
     *
     * @return Swift Array
     */
    func toArray() -> Array<T>;
    
}
