//
//  IHeap.swift
//  CommonDataStructures
//
//  Created by SuXinDe on 2021/7/26.
//

import Foundation

/**
 * In computer science, a heap is a specialized tree-based data structure that
 * satisfies the heap property: If A is a parent node of B then key(A) is ordered
 * with respect to key(B) with the same ordering applying across the heap. Either
 * the keys of parent nodes are always greater than or equal to those of the children
 * and the highest key is in the root node (this kind of heap is called max heap) or
 * the keys of parent nodes are less than or equal to those of the children (min heap).
 * <p>
 * @see <a href="https://en.wikipedia.org/wiki/Heap">Heap (Wikipedia)</a>
 * <br>
 * @author suxinde <skyprayer@126.com>
 */
public protocol IHeap {
    
    associatedtype T
    
    /**
     * Add value to the heap.
     *
     * @param value to add to the heap.
     * @return True if added to the heap.
     */
    @discardableResult
    func add(value: T) -> Bool;
    
    /**
     * Get the value of the head node from the heap.
     *
     * @return value of the head node.
     */
    func getHeadValue() -> T;
    
    /**
     * Remove the head node from the heap.
     *
     * @return value of the head node.
     */
    @discardableResult
    func  removeHead() -> T;
    
    /**
     * Remove the value from the heap.
     *
     * @param value to remove from heap.
     * @return True if value was removed form the heap;
     */
    @discardableResult
    func remove(value: T) -> Bool;
    
    /**
     * Clear the entire heap.
     */
    func clear();
    
    /**
     * Does the value exist in the heap. Warning this is a O(n) operation.
     *
     * @param value to locate in the heap.
     * @return True if the value is in heap.
     */
    func contains(value: Bool)-> Bool;
    
    /**
     * Get size of the heap.
     *
     * @return size of the heap.
     */
    func size() -> Int;
    
    /**
     * Validate the heap according to the invariants.
     *
     * @return True if the heap is valid.
     */
    func validate() -> Bool;
    
    /**
     * Get this Queue as a Swift Array
     *
     * @return Swift Array
     */
    func toArray() -> Array<T>;
    
}
