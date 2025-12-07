@interface RBAssertionCollection
- (BOOL)hasAssertion:(id)assertion;
- (BOOL)hasAssertionsForOriginator:(id)originator;
- (BOOL)hasAssertionsForOriginator:(id)originator exceedingCount:(unint64_t)count;
- (BOOL)hasResolvedAssertion:(id)assertion;
- (RBAssertionCollection)init;
- (id)allAssertions;
- (id)assertionWithIdentifier:(id)identifier;
- (id)assertionsForOriginator:(id)originator;
- (id)assertionsForTarget:(id)target;
- (id)assertionsForTargetIdentity:(id)identity;
- (unint64_t)assertionCountForOriginator:(id)originator;
- (unint64_t)assertionCountForTargetProcessIdentity:(id)identity;
- (unint64_t)count;
- (void)addAssertion:(id)assertion;
- (void)enumerateAssertionsForOriginator:(id)originator withBlock:(id)block;
- (void)enumerateAssertionsForProcessTargetsWithBlock:(id)block;
- (void)enumerateAssertionsForSystemTargetWithBlock:(id)block;
- (void)enumerateAssertionsForTargetProcessIdentity:(id)identity withBlock:(id)block;
- (void)enumerateAssertionsWithBlock:(id)block;
- (void)noteResolvedAssertion:(id)assertion;
- (void)removeAssertion:(id)assertion;
@end

@implementation RBAssertionCollection

- (unint64_t)count
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_assertionsByIdentifier count];
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (RBAssertionCollection)init
{
  v17.receiver = self;
  v17.super_class = RBAssertionCollection;
  v2 = [(RBAssertionCollection *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    assertionsByIdentifier = v3->_assertionsByIdentifier;
    v3->_assertionsByIdentifier = dictionary;

    v6 = [MEMORY[0x277CBEB58] set];
    processAssertions = v3->_processAssertions;
    v3->_processAssertions = v6;

    v8 = [MEMORY[0x277CBEB58] set];
    systemAssertions = v3->_systemAssertions;
    v3->_systemAssertions = v8;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    assertionsByTargetProcessIdentity = v3->_assertionsByTargetProcessIdentity;
    v3->_assertionsByTargetProcessIdentity = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    assertionsByOriginator = v3->_assertionsByOriginator;
    v3->_assertionsByOriginator = dictionary3;

    v14 = [MEMORY[0x277CBEB58] set];
    resolvedIdentifiers = v3->_resolvedIdentifiers;
    v3->_resolvedIdentifiers = v14;
  }

  return v3;
}

- (id)allAssertions
{
  os_unfair_recursive_lock_lock_with_options();
  processAssertions = self->_processAssertions;
  if (self->_systemAssertions)
  {
    if (processAssertions)
    {
      v4 = [(NSMutableSet *)processAssertions setByAddingObjectsFromSet:?];
      goto LABEL_6;
    }

    processAssertions = self->_systemAssertions;
  }

  v4 = [(NSMutableSet *)processAssertions copy];
LABEL_6:
  v5 = v4;
  os_unfair_recursive_lock_unlock();

  return v5;
}

- (void)enumerateAssertionsWithBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  os_unfair_recursive_lock_lock_with_options();
  allValues = [(NSMutableDictionary *)self->_assertionsByIdentifier allValues];
  os_unfair_recursive_lock_unlock();
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = allValues;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      blockCopy[2](blockCopy, v11, &v17);
      LOBYTE(v11) = v17;
      objc_autoreleasePoolPop(v12);
      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateAssertionsForSystemTargetWithBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  os_unfair_recursive_lock_lock_with_options();
  allObjects = [(NSMutableSet *)self->_systemAssertions allObjects];
  os_unfair_recursive_lock_unlock();
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = allObjects;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      blockCopy[2](blockCopy, v11, &v17);
      LOBYTE(v11) = v17;
      objc_autoreleasePoolPop(v12);
      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateAssertionsForProcessTargetsWithBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  os_unfair_recursive_lock_lock_with_options();
  allObjects = [(NSMutableSet *)self->_processAssertions allObjects];
  os_unfair_recursive_lock_unlock();
  v17 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = allObjects;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v13 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      blockCopy[2](blockCopy, v11, &v17);
      LOBYTE(v11) = v17;
      objc_autoreleasePoolPop(v12);
      if (v11)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateAssertionsForTargetProcessIdentity:(id)identity withBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  blockCopy = block;
  os_unfair_recursive_lock_lock_with_options();
  v8 = [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity objectForKey:identityCopy];
  allObjects = [v8 allObjects];

  os_unfair_recursive_lock_unlock();
  v21 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = allObjects;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v18 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v17 + 1) + 8 * v14);
      v16 = objc_autoreleasePoolPush();
      blockCopy[2](blockCopy, v15, &v21);
      LOBYTE(v15) = v21;
      objc_autoreleasePoolPop(v16);
      if (v15)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateAssertionsForOriginator:(id)originator withBlock:(id)block
{
  v23 = *MEMORY[0x277D85DE8];
  originatorCopy = originator;
  blockCopy = block;
  os_unfair_recursive_lock_lock_with_options();
  v8 = [(NSMutableDictionary *)self->_assertionsByOriginator objectForKey:originatorCopy];
  allObjects = [v8 allObjects];

  os_unfair_recursive_lock_unlock();
  v21 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = allObjects;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v18 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v17 + 1) + 8 * v14);
      v16 = objc_autoreleasePoolPush();
      blockCopy[2](blockCopy, v15, &v21);
      LOBYTE(v15) = v21;
      objc_autoreleasePoolPop(v16);
      if (v15)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)assertionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_assertionsByIdentifier objectForKeyedSubscript:identifierCopy];

  os_unfair_recursive_lock_unlock();

  return v5;
}

- (id)assertionsForTarget:(id)target
{
  targetCopy = target;
  if ([targetCopy isSystem])
  {
    os_unfair_recursive_lock_lock_with_options();
    v5 = [(NSMutableSet *)self->_systemAssertions copy];
    os_unfair_recursive_lock_unlock();
  }

  else
  {
    identity = [targetCopy identity];
    v5 = [(RBAssertionCollection *)self assertionsForTargetIdentity:identity];
  }

  return v5;
}

- (id)assertionsForTargetIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity objectForKey:identityCopy];

  v6 = [v5 copy];
  os_unfair_recursive_lock_unlock();

  return v6;
}

- (id)assertionsForOriginator:(id)originator
{
  originatorCopy = originator;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_assertionsByOriginator objectForKey:originatorCopy];

  v6 = [v5 copy];
  os_unfair_recursive_lock_unlock();

  return v6;
}

- (void)removeAssertion:(id)assertion
{
  v28 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_recursive_lock_lock_with_options();
  target = [assertionCopy target];
  originator = [assertionCopy originator];
  identifier = [originator identifier];

  identifier2 = [assertionCopy identifier];
  identity = [target identity];
  [(NSMutableDictionary *)self->_assertionsByIdentifier removeObjectForKey:identifier2];
  [(NSMutableSet *)self->_resolvedIdentifiers removeObject:identifier2];
  v10 = [(NSMutableDictionary *)self->_assertionsByOriginator objectForKeyedSubscript:identifier];
  v11 = v10;
  if (v10)
  {
    [v10 removeObject:assertionCopy];
  }

  if (![v11 count])
  {
    [(NSMutableDictionary *)self->_assertionsByOriginator removeObjectForKey:identifier];
  }

  v12 = rbs_assertion_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v23 = [(NSMutableDictionary *)self->_assertionsByIdentifier count];
    *buf = 67109634;
    *v27 = v23;
    *&v27[4] = 2114;
    *&v27[6] = identifier;
    *&v27[14] = 1024;
    *&v27[16] = [v11 count];
    _os_log_debug_impl(&dword_262485000, v12, OS_LOG_TYPE_DEBUG, "Now tracking %u assertions (%{public}@ holds %u).", buf, 0x18u);
  }

  v13 = rbs_assertion_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

  if (v14)
  {
    v15 = rbs_assertion_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [(RBAssertionCollection *)identifier2 removeAssertion:target, v15];
    }

    [v11 enumerateObjectsUsingBlock:&__block_literal_global_13];
  }

  if ([target isSystem])
  {
    [(NSMutableSet *)self->_systemAssertions removeObject:assertionCopy];
  }

  else
  {
    [(NSMutableSet *)self->_processAssertions removeObject:assertionCopy];
    v16 = [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity objectForKey:identity];
    [v16 removeObject:assertionCopy];
    if (![v16 count])
    {
      [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity removeObjectForKey:identity];
    }

    v17 = rbs_assertion_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity objectForKeyedSubscript:identity];
      v19 = [v18 count];
      *buf = 138543618;
      *v27 = identity;
      *&v27[8] = 2048;
      *&v27[10] = v19;
      _os_log_impl(&dword_262485000, v17, OS_LOG_TYPE_INFO, "%{public}@ is now targeted by %lu assertions", buf, 0x16u);
    }

    v20 = rbs_assertion_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG);

    if (v21)
    {
      v22 = [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity objectForKeyedSubscript:identity];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __41__RBAssertionCollection_removeAssertion___block_invoke_2;
      v24[3] = &unk_279B32ED8;
      v25 = identifier;
      [v22 enumerateObjectsUsingBlock:v24];
    }
  }

  os_unfair_recursive_lock_unlock();
}

void __41__RBAssertionCollection_removeAssertion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = rbs_assertion_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __41__RBAssertionCollection_removeAssertion___block_invoke_cold_1(v2);
  }
}

void __41__RBAssertionCollection_removeAssertion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = rbs_assertion_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __41__RBAssertionCollection_removeAssertion___block_invoke_2_cold_1(a1, v3);
  }
}

- (void)addAssertion:(id)assertion
{
  v22 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_recursive_lock_lock_with_options();
  target = [assertionCopy target];
  originator = [assertionCopy originator];
  identifier = [originator identifier];

  identifier2 = [assertionCopy identifier];
  identity = [target identity];
  [(NSMutableDictionary *)self->_assertionsByIdentifier setObject:assertionCopy forKeyedSubscript:identifier2];
  v10 = [(NSMutableDictionary *)self->_assertionsByOriginator objectForKey:identifier];
  if (!v10)
  {
    v10 = [MEMORY[0x277CBEB58] set];
    [(NSMutableDictionary *)self->_assertionsByOriginator setObject:v10 forKey:identifier];
  }

  [v10 addObject:assertionCopy];
  v11 = rbs_assertion_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(RBAssertionCollection *)assertionCopy addAssertion:v11];
  }

  v12 = rbs_assertion_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v17 = [(NSMutableDictionary *)self->_assertionsByIdentifier count];
    v18 = 67109634;
    *v19 = v17;
    *&v19[4] = 2114;
    *&v19[6] = identifier;
    v20 = 1024;
    v21 = [v10 count];
    _os_log_debug_impl(&dword_262485000, v12, OS_LOG_TYPE_DEBUG, "Now tracking %u assertions (%{public}@ holds %u).", &v18, 0x18u);
  }

  if ([target isSystem])
  {
    [(NSMutableSet *)self->_systemAssertions addObject:assertionCopy];
  }

  else
  {
    [(NSMutableSet *)self->_processAssertions addObject:assertionCopy];
    v13 = [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity objectForKey:identity];
    if (!v13)
    {
      v13 = [MEMORY[0x277CBEB58] set];
      [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity setObject:v13 forKey:identity];
    }

    [v13 addObject:assertionCopy];
    v14 = rbs_assertion_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity objectForKeyedSubscript:identity];
      v16 = [v15 count];
      v18 = 138543618;
      *v19 = identity;
      *&v19[8] = 1024;
      *&v19[10] = v16;
      _os_log_impl(&dword_262485000, v14, OS_LOG_TYPE_INFO, "%{public}@ is now targeted by %u assertions", &v18, 0x12u);
    }
  }

  os_unfair_recursive_lock_unlock();
}

- (BOOL)hasAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_recursive_lock_lock_with_options();
  assertionsByIdentifier = self->_assertionsByIdentifier;
  identifier = [assertionCopy identifier];

  v7 = [(NSMutableDictionary *)assertionsByIdentifier objectForKeyedSubscript:identifier];
  LOBYTE(assertionCopy) = v7 != 0;

  os_unfair_recursive_lock_unlock();
  return assertionCopy;
}

- (BOOL)hasAssertionsForOriginator:(id)originator
{
  originatorCopy = originator;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_assertionsByOriginator objectForKeyedSubscript:originatorCopy];

  LOBYTE(originatorCopy) = [v5 count] != 0;
  os_unfair_recursive_lock_unlock();
  return originatorCopy;
}

- (unint64_t)assertionCountForTargetProcessIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_assertionsByTargetProcessIdentity objectForKeyedSubscript:identityCopy];

  v6 = [v5 count];
  os_unfair_recursive_lock_unlock();
  return v6;
}

- (BOOL)hasAssertionsForOriginator:(id)originator exceedingCount:(unint64_t)count
{
  v21 = *MEMORY[0x277D85DE8];
  originatorCopy = originator;
  os_unfair_recursive_lock_lock_with_options();
  v7 = [(NSMutableDictionary *)self->_assertionsByOriginator objectForKeyedSubscript:originatorCopy];
  if ([v7 count] <= count)
  {
    v14 = 0;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(NSMutableDictionary *)self->_assertionsByOriginator objectForKeyedSubscript:originatorCopy, 0];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v16 + 1) + 8 * i) isValid])
          {
            if (++v11 > count)
            {
              v14 = 1;
              goto LABEL_14;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_14:
  }

  os_unfair_recursive_lock_unlock();

  return v14;
}

- (unint64_t)assertionCountForOriginator:(id)originator
{
  originatorCopy = originator;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_assertionsByOriginator objectForKeyedSubscript:originatorCopy];

  v6 = [v5 count];
  os_unfair_recursive_lock_unlock();
  return v6;
}

- (void)noteResolvedAssertion:(id)assertion
{
  resolvedIdentifiers = self->_resolvedIdentifiers;
  identifier = [assertion identifier];
  [(NSMutableSet *)resolvedIdentifiers addObject:identifier];
}

- (BOOL)hasResolvedAssertion:(id)assertion
{
  resolvedIdentifiers = self->_resolvedIdentifiers;
  identifier = [assertion identifier];
  LOBYTE(resolvedIdentifiers) = [(NSMutableSet *)resolvedIdentifiers containsObject:identifier];

  return resolvedIdentifiers;
}

- (void)removeAssertion:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_262485000, log, OS_LOG_TYPE_DEBUG, "Removing assertion %{public}@ on %{public}@", &v3, 0x16u);
}

void __41__RBAssertionCollection_removeAssertion___block_invoke_cold_1(void *a1)
{
  v2 = [a1 target];
  v3 = [v2 identity];
  v4 = [a1 explanation];
  v5 = [a1 identifier];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_12(&dword_262485000, v6, v7, "> %{public}@ ['%{public}@'] [%{public}@]", v8, v9, v10, v11);
}

void __41__RBAssertionCollection_removeAssertion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = [a2 explanation];
  v4 = [a2 identifier];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_1_12(&dword_262485000, v5, v6, "> %{public}@ ['%{public}@'] [%{public}@]", v7, v8, v9, v10);
}

- (void)addAssertion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_262485000, a2, OS_LOG_TYPE_DEBUG, "Adding assertion %{public}@", &v2, 0xCu);
}

@end