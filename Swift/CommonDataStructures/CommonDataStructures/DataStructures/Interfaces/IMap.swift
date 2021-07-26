//
//  IMap.swift
//  CommonDataStructures
//
//  Created by SuXinDe on 2021/7/26.
//

import Foundation

/**
 * In computer science, an associative array, map, or dictionary is an abstract
 * data type composed of a collection of (key, value) pairs, such that each possible
 * key appears at most once in the collection.
 * <p>
 * @see <a href="https://en.wikipedia.org/wiki/Associative_array">Associative Array (Wikipedia)</a>
 * <br>
 * @author suxinde <skyprayer@126.com>
 */
public protocol IMap {
    
    associatedtype K = Hashable
    associatedtype V = Hashable
    
    
    /**
     * Put key->value pair in the map.
     *
     * @param key to be inserted.
     * @param value to be inserted.
     * @return V previous value or null if none.
     */
    func put(key: K , value: V) -> V;
    
    /**
     * Get value for key.
     *
     * @param key to get value for.
     * @return value mapped to key.
     */
    func get(key: K) -> V;
    
    /**
     * Remove key and value from map.
     *
     * @param key to remove from the map.
     * @return True if removed or False if not found.
     */
    func remove(key: K) -> V;
    
    /**
     * Clear the entire map.
     */
    func clear();
    
    /**
     * Does the map contain the key.
     *
     * @param key to locate in the map.
     * @return True if key is in the map.
     */
    func contains(key: K) -> Bool;
    
    /**
     * Number of key/value pairs in the hash map.
     *
     * @return number of key/value pairs.
     */
    func size() -> Int;
    
    /**
     * Validate the map according to the invariants.
     *
     * @return True if the map is valid.
     */
    func validate() -> Bool;
    
    /**
     * Get this Queue as a NSDictionary
     *
     * @return NSDictionary
     */
    func toNSDictionary() -> NSDictionary;
    
    
}
