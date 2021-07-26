//
//  ISuffixTree.swift
//  CommonDataStructures
//
//  Created by SuXinDe on 2021/7/26.
//

import Foundation

/**
 * In computer science, a suffix tree (also called PAT tree or, in an earlier form, position tree) is a compressed trie
 * containing all the suffixes of the given text as their keys and positions in the text as their values. Suffix trees
 * allow particularly fast implementations of many important string operations.
 * <p>
 * @see <a href="https://en.wikipedia.org/wiki/Suffix_tree">Suffix Tree (Wikipedia)</a>
 * <br>
 * @author suxinde <skyprayer@126.com>
 */
public protocol ISuffixTree {
    
    associatedtype C = Substring
    
    /**
     * Does the sub-sequence exist in the suffix tree.
     *
     * @param sub-sequence to locate in the tree.
     * @return True if the sub-sequence exist in the tree.
     */
    func doesSubStringExist(sub: C) -> Bool;
    
    /**
     * Get all the suffixes in the tree.
     *
     * @return set of suffixes in the tree.
     */
    func getSuffixes() -> Set<String>;
}
