//
//  IStack.swift
//  CommonDataStructures
//
//  Created by SuXinDe on 2021/7/26.
//

import Foundation

/**
 * A stack is a last in, first out (LIFO) abstract data type and linear
 * data structure. A stack can have any abstract data type as an element, but is
 * characterized by two fundamental operations, called push and pop. The push
 * operation adds a new item to the top of the stack, or initializes the stack
 * if it is empty. If the stack is full and does not contain enough space to
 * accept the given item, the stack is then considered to be in an overflow
 * state. The pop operation removes an item from the top of the stack.
 * <p>
 * @see <a href="https://en.wikipedia.org/wiki/Stack_(abstract_data_type)">Stack (Wikipedia)</a>
 * <br>
 * @author suxinde <skyprayer@126.com>
 */
public protocol IStack {
    
    associatedtype T
    
    /**
     * Push value on top of stack
     *
     * @param value to push on the stack.
     */
    @discardableResult
    func push(value: T) -> Bool;
    
    /**
     * Pop the value from the top of stack.
     *
     * @return value popped off the top of the stack.
     */
    func pop() -> T;
    
    /**
     * Peek the value from the top of stack.
     *
     * @return value popped off the top of the stack.
     */
    func peek() -> T;
    
    /**
     * Remove value from stack.
     *
     * @param value to remove from stack.
     * @return True if value was removed.
     */
    @discardableResult
    func remove(value: T) -> Bool;
    
    /**
     * Clear the entire stack.
     */
    func clear();
    
    /**
     * Does stack contain object.
     *
     * @param value object to find in stack.
     * @return True is stack contains object.
     */
    func contains(value: T) -> Bool;
    
    /**
     * Size of the stack.
     *
     * @return size of the stack.
     */
    func size() -> Int;
    
    /**
     * Validate the stack according to the invariants.
     *
     * @return True if the stack is valid.
     */
    func validate() -> Bool;
    
    /**
     * Get this Queue as a Swift Array
     *
     * @return Swift Array
     */
    func toArray() -> Array<T>;
    
}
