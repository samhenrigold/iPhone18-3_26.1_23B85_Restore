@interface SBSystemApertureLayoutAssertion
- (BOOL)isValid;
- (NSString)description;
- (SBSystemApertureLayoutAssertion)initWithMaximumPermittedLayoutMode:(int64_t)mode reason:(id)reason invalidationHandler:(id)handler;
- (void)addInvalidationBlock:(id)block;
- (void)dealloc;
- (void)invalidateWithReason:(id)reason;
@end

@implementation SBSystemApertureLayoutAssertion

- (void)dealloc
{
  if ([(SBSystemApertureLayoutAssertion *)self isValid])
  {
    [(SBSystemApertureLayoutAssertion *)self invalidateWithReason:@"deallocation"];
  }

  v3.receiver = self;
  v3.super_class = SBSystemApertureLayoutAssertion;
  [(SBSystemApertureLayoutAssertion *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = SAUIStringFromElementViewLayoutMode();
  reason = self->_reason;
  [(SBSystemApertureLayoutAssertion *)self isValid];
  v7 = NSStringFromBOOL();
  v8 = [v3 stringWithFormat:@"<%@: %p max layout mode: %@; reason: %@; isValid: %@", v4, self, v5, reason, v7];;

  return v8;
}

- (SBSystemApertureLayoutAssertion)initWithMaximumPermittedLayoutMode:(int64_t)mode reason:(id)reason invalidationHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  handlerCopy = handler;
  if ((mode - 4) > 0xFFFFFFFFFFFFFFFALL)
  {
    if (reasonCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    [SBSystemApertureLayoutAssertion initWithMaximumPermittedLayoutMode:reason:invalidationHandler:];
    if (handlerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  [SBSystemApertureLayoutAssertion initWithMaximumPermittedLayoutMode:reason:invalidationHandler:];
  if (!reasonCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (handlerCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  [SBSystemApertureLayoutAssertion initWithMaximumPermittedLayoutMode:reason:invalidationHandler:];
LABEL_4:
  v19.receiver = self;
  v19.super_class = SBSystemApertureLayoutAssertion;
  v10 = [(SBSystemApertureLayoutAssertion *)&v19 init];
  v11 = v10;
  if (v10)
  {
    v10->_maximumPermittedLayoutMode = mode;
    v12 = [reasonCopy copy];
    reason = v11->_reason;
    v11->_reason = v12;

    v14 = [handlerCopy copy];
    invalidationHandler = v11->_invalidationHandler;
    v11->_invalidationHandler = v14;

    v17 = SBLogSystemApertureController(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v11;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "Created layout assertion: %{public}@", buf, 0xCu);
    }
  }

  return v11;
}

- (BOOL)isValid
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_invalidationHandler != 0;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)addInvalidationBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v10 = blockCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    invalidationBlocks = selfCopy->_invalidationBlocks;
    if (!invalidationBlocks)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v8 = selfCopy->_invalidationBlocks;
      selfCopy->_invalidationBlocks = v7;

      invalidationBlocks = selfCopy->_invalidationBlocks;
    }

    v9 = MEMORY[0x223D6F7F0](v10);
    [(NSMutableSet *)invalidationBlocks addObject:v9];

    objc_sync_exit(selfCopy);
    blockCopy = v10;
  }
}

- (void)invalidateWithReason:(id)reason
{
  v25 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (![reasonCopy length])
  {
    [SBSystemApertureLayoutAssertion invalidateWithReason:];
  }

  if (![(SBSystemApertureLayoutAssertion *)self isValid])
  {
    [SBSystemApertureLayoutAssertion invalidateWithReason:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = MEMORY[0x223D6F7F0](selfCopy->_invalidationHandler);
  invalidationHandler = selfCopy->_invalidationHandler;
  selfCopy->_invalidationHandler = 0;

  v9 = SBLogSystemApertureController(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v22 = selfCopy;
    v23 = 2114;
    v24 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Invalidated layout assertion: %{public}@; reason: %{public}@", buf, 0x16u);
  }

  (v6)[2](v6, selfCopy);
  v10 = selfCopy;
  objc_sync_enter(v10);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v10[2];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v16 + 1) + 8 * v14) + 16))(*(*(&v16 + 1) + 8 * v14));
        ++v14;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = v10[2];
  v10[2] = 0;

  objc_sync_exit(v10);
  objc_sync_exit(v10);
}

- (void)initWithMaximumPermittedLayoutMode:reason:invalidationHandler:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"(SAUIElementViewLayoutModeRemoved <= maxLayoutMode) && (maxLayoutMode <= SAUIElementViewLayoutModeCustom)" object:? file:? lineNumber:? description:?];
}

- (void)initWithMaximumPermittedLayoutMode:reason:invalidationHandler:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)initWithMaximumPermittedLayoutMode:reason:invalidationHandler:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"invalidationHandler" object:? file:? lineNumber:? description:?];
}

- (void)invalidateWithReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"[reason length] > 0" object:? file:? lineNumber:? description:?];
}

- (void)invalidateWithReason:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

@end