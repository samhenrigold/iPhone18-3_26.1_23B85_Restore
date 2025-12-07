@interface _GCDevicePhysicalInput
- (BOOL)_commitTransaction:(_GCDevicePhysicalInput *)transaction;
- (_GCDevicePhysicalInput)_handleEventTransaction:(_GCDevicePhysicalInput *)result;
- (_GCDevicePhysicalInput)handleMouseEvent:(_GCDevicePhysicalInput *)result;
- (_GCDevicePhysicalInput)initWithFacade:(id)facade elements:(id)elements;
- (_GCDevicePhysicalInput)initWithFacade:(id)facade elements:(id)elements attributes:(id)attributes;
- (double)handleCollectionEvent:(_GCDevicePhysicalInput *)event;
- (double)handleGamepadEvent:(_GCDevicePhysicalInput *)event;
- (double)lastEventTimestamp;
- (id)elementValueDidChangeHandler;
- (id)inputStateAvailableHandler;
- (id)popTransaction;
- (id)popTransactionNotExceedingTimestamp:(double)timestamp;
- (id)queue;
- (id)updateWithElements:(id *)result;
- (uint64_t)currentTransaction;
- (uint64_t)pendingTransaction;
- (uint64_t)transactionQueueDepth;
- (void)dealloc;
- (void)setDataSource:(id)source;
- (void)setDevice:(id)device;
- (void)setElementValueDidChangeHandler:(uint64_t)handler;
- (void)setInputStateAvailableHandler:(uint64_t)handler;
- (void)setQueue:(void *)result;
- (void)setTransactionQueueDepth:(void *)result;
- (void)updateViewStateIfNeeded;
@end

@implementation _GCDevicePhysicalInput

- (_GCDevicePhysicalInput)initWithFacade:(id)facade elements:(id)elements attributes:(id)attributes
{
  v9 = objc_opt_new();
  v24.receiver = self;
  v24.super_class = _GCDevicePhysicalInput;
  v10 = -[_GCDevicePhysicalInputBase _initWithFacadeTemplate:elementsTemplates:attributes:context:](&v24, sel__initWithFacadeTemplate_elementsTemplates_attributes_context_, facade, [elements allObjects], attributes, v9);
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  viewConfiguration = [(_GCDevicePhysicalInputBase *)v10 viewConfiguration];
  viewState = [(_GCDevicePhysicalInputBase *)v10 viewState];
  v16 = [_GCDevicePhysicalInputTransaction transactionWithImplementation:v10 configuration:viewConfiguration state:viewState];
  [(NSMutableArray *)v11 addObject:v16];
  viewConfiguration2 = [(_GCDevicePhysicalInputBase *)v10 viewConfiguration];
  viewState2 = [(_GCDevicePhysicalInputBase *)v10 viewState];
  v21 = [_GCDevicePhysicalInputStateTable stateTableWithCopyOfStateTable:viewState2];
  v22 = [_GCDevicePhysicalInputTransaction transactionWithImplementation:v10 configuration:viewConfiguration2 state:v21];
  [(NSMutableArray *)v11 addObject:v22];
  v10->_allTransactions = v11;
  v10->_currentTransaction = v16;
  v10->_pendingTransaction = v22;
  v10->_bufferedTransactionsQueueDepth = 1;
  v10->_bufferedTransactions = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];

  return v10;
}

- (_GCDevicePhysicalInput)initWithFacade:(id)facade elements:(id)elements
{
  v7 = [MEMORY[0x1E695DFD8] set];

  return [(_GCDevicePhysicalInput *)self initWithFacade:facade elements:elements attributes:v7];
}

- (BOOL)_commitTransaction:(_GCDevicePhysicalInput *)transaction
{
  v30 = *MEMORY[0x1E69E9840];
  if (!transaction)
  {
    return 0;
  }

  objc_sync_enter(transaction);
  if (a2)
  {
    viewConfiguration = [(_GCDevicePhysicalInputBase *)transaction->_pendingTransaction viewConfiguration];
    [(_GCDevicePhysicalInputBase *)transaction setViewConfiguration:viewConfiguration];
  }

  viewState = [(_GCDevicePhysicalInputBase *)transaction->_pendingTransaction viewState];
  [(_GCDevicePhysicalInputBase *)transaction setViewState:viewState];
  objc_storeStrong(&transaction->_currentTransaction, transaction->_pendingTransaction);
  objc_storeStrong(&transaction->_pendingTransaction, 0);
  [(NSMutableArray *)transaction->_bufferedTransactions addObject:transaction->_currentTransaction];
  while ([(NSMutableArray *)transaction->_bufferedTransactions count]> transaction->_bufferedTransactionsQueueDepth)
  {
    [(NSMutableArray *)transaction->_bufferedTransactions removeObjectAtIndex:0];
    [(_GCDevicePhysicalInputTransaction *)[(NSMutableArray *)transaction->_bufferedTransactions firstObject] invalidateAllUpdateContexts];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allTransactions = transaction->_allTransactions;
  v8 = [(NSMutableArray *)allTransactions countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = *v26;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(allTransactions);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        if ([v11 retainCount] == 1)
        {
          objc_storeStrong(&transaction->_pendingTransaction, v11);
          goto LABEL_17;
        }
      }

      v8 = [(NSMutableArray *)allTransactions countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
  pendingTransaction = transaction->_pendingTransaction;
  if (pendingTransaction)
  {
    if (a2)
    {
      viewConfiguration2 = [(_GCDevicePhysicalInputBase *)transaction viewConfiguration];
      [(_GCDevicePhysicalInputBase *)transaction->_pendingTransaction setViewConfiguration:viewConfiguration2];
      pendingTransaction = transaction->_pendingTransaction;
    }

    viewState2 = [(_GCDevicePhysicalInputBase *)pendingTransaction viewState];
    viewState3 = [(_GCDevicePhysicalInputBase *)transaction->_currentTransaction viewState];
    [(_GCDevicePhysicalInputStateTable *)viewState2 updateStateTableWithContentsOf:viewState3];
  }

  else
  {
    viewConfiguration3 = [(_GCDevicePhysicalInputBase *)transaction viewConfiguration];
    viewState4 = [(_GCDevicePhysicalInputBase *)transaction viewState];
    v22 = [_GCDevicePhysicalInputStateTable stateTableWithCopyOfStateTable:viewState4];
    v23 = [_GCDevicePhysicalInputTransaction transactionWithImplementation:transaction configuration:viewConfiguration3 state:v22];
    [(NSMutableArray *)transaction->_allTransactions addObject:v23];
    transaction->_pendingTransaction = v23;
  }

  v16 = [(NSMutableArray *)transaction->_bufferedTransactions count]== 1;
  objc_sync_exit(transaction);
  return v16;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allTransactions = self->_allTransactions;
  v4 = [(NSMutableArray *)allTransactions countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allTransactions);
        }

        [(_GCDevicePhysicalInputTransaction *)*(*(&v9 + 1) + 8 * i) detach];
      }

      v5 = [(NSMutableArray *)allTransactions countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_storeStrong(&self->_pendingTransaction, 0);
  objc_storeStrong(&self->_currentTransaction, 0);
  [(NSMutableArray *)self->_bufferedTransactions removeAllObjects];
  objc_storeStrong(&self->_bufferedTransactions, 0);
  [(NSMutableArray *)self->_allTransactions removeAllObjects];
  objc_storeStrong(&self->_allTransactions, 0);

  self->_inputStateAvailableHandler = 0;
  self->_elementValueDidChangeHandler = 0;
  objc_setAssociatedObject(self, GCDevicePhysicalInputQueueKey, 0, 0x301);
  v8.receiver = self;
  v8.super_class = _GCDevicePhysicalInput;
  [(_GCDevicePhysicalInputBase *)&v8 dealloc];
}

- (void)setDevice:(id)device
{
  v5.receiver = self;
  v5.super_class = _GCDevicePhysicalInput;
  [(_GCDevicePhysicalInputBase *)&v5 setDevice:?];
  [(NSMutableArray *)self->_allTransactions makeObjectsPerformSelector:sel_setDevice_ withObject:device];
}

- (void)setDataSource:(id)source
{
  if (!source && [(_GCDevicePhysicalInputBase *)self dataSource])
  {
    [_GCDevicePhysicalInput setDataSource:?];
  }

  v5.receiver = self;
  v5.super_class = _GCDevicePhysicalInput;
  [(_GCDevicePhysicalInputBase *)&v5 setDataSource:source];
}

- (id)popTransaction
{
  [(_GCDevicePhysicalInputDataSource *)[(_GCDevicePhysicalInputBase *)self dataSource] physicalInputPoll:self forLatest:0];
  objc_sync_enter(self);
  firstObject = [(NSMutableArray *)self->_bufferedTransactions firstObject];
  if (firstObject)
  {
    v4 = firstObject;
    [(NSMutableArray *)self->_bufferedTransactions removeObjectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  [v4 lastEventHostTimestamp];
  [-[_GCDevicePhysicalInputBase attributes](self) count];
  kdebug_trace();
  objc_sync_exit(self);
  return v4;
}

- (id)popTransactionNotExceedingTimestamp:(double)timestamp
{
  [(_GCDevicePhysicalInputDataSource *)[(_GCDevicePhysicalInputBase *)self dataSource] physicalInputPoll:self forLatest:0];
  objc_sync_enter(self);
  firstObject = [(NSMutableArray *)self->_bufferedTransactions firstObject];
  v6 = firstObject;
  if (firstObject)
  {
    [firstObject lastEventTimestamp];
    if (v7 <= timestamp)
    {
      v6 = v6;
      [(NSMutableArray *)self->_bufferedTransactions removeObjectAtIndex:0];
      [v6 lastEventHostTimestamp];
      [-[_GCDevicePhysicalInputBase attributes](self) count];
      kdebug_trace();
    }

    else
    {
      v6 = 0;
    }
  }

  objc_sync_exit(self);
  return v6;
}

- (void)updateViewStateIfNeeded
{
  dataSource = [(_GCDevicePhysicalInputBase *)self dataSource];

  [(_GCDevicePhysicalInputDataSource *)dataSource physicalInputPoll:self forLatest:1];
}

- (_GCDevicePhysicalInput)_handleEventTransaction:(_GCDevicePhysicalInput *)result
{
  v57 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    v3 = 0;
    atomic_compare_exchange_strong(&result->_isHandlingEvent, &v3, 1u);
    if (v3)
    {
      [_GCDevicePhysicalInput _handleEventTransaction:];
    }

    pendingTransaction = result->_pendingTransaction;
    v5 = (*(a2 + 16))(a2, pendingTransaction);
    [(_GCDevicePhysicalInputTransaction *)pendingTransaction setLastEventHostTimestamp:v5];
    elements = [(_GCDevicePhysicalInputBase *)v2 elements];
    facade = [(_GCDevicePhysicalInputBase *)v2 facade];
    [(_GCDevicePhysicalInputView *)facade _willChangeValueForKey:?];
    facade2 = [(_GCDevicePhysicalInputBase *)v2 facade];
    [(_GCDevicePhysicalInputView *)facade2 _willChangeValueForKey:?];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v9 = [elements countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v51;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v51 != v12)
          {
            objc_enumerationMutation(elements);
          }

          v14 = *(*(&v50 + 1) + 8 * i);
          v49 = 0;
          v15 = [(_GCDevicePhysicalInputTransaction *)pendingTransaction updateContextForElementAtIndex:v11 size:&v49 onlyIfChanged:1];
          if (v15)
          {
            [v14 preCommit:v15 sender:v2];
          }

          ++v11;
        }

        v10 = [elements countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v10);
    }

    v40 = [(_GCDevicePhysicalInput *)v2 _commitTransaction:?];
    objc_sync_enter(v2);
    currentTransaction = v2->_currentTransaction;
    objc_sync_exit(v2);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v17 = [elements countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v46;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v46 != v20)
          {
            objc_enumerationMutation(elements);
          }

          v22 = *(*(&v45 + 1) + 8 * j);
          v49 = 0;
          v23 = [(_GCDevicePhysicalInputTransaction *)currentTransaction updateContextForElementAtIndex:v19 size:&v49 onlyIfChanged:1];
          if (v23)
          {
            [v22 postCommit:v23 sender:v2];
          }

          ++v19;
        }

        v18 = [elements countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v18);
    }

    facade3 = [(_GCDevicePhysicalInputBase *)v2 facade];
    [(_GCDevicePhysicalInputView *)facade3 _didChangeValueForKey:?];
    facade4 = [(_GCDevicePhysicalInputBase *)v2 facade];
    [(_GCDevicePhysicalInputView *)facade4 _didChangeValueForKey:?];
    Property = objc_getProperty(v2, v26, 112, 1);
    if (Property)
    {
      v29 = Property;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v30 = [elements countByEnumeratingWithState:&v41 objects:v54 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = 0;
        v33 = *v42;
        do
        {
          for (k = 0; k != v31; ++k)
          {
            if (*v42 != v33)
            {
              objc_enumerationMutation(elements);
            }

            v35 = *(*(&v41 + 1) + 8 * k);
            if ([(_GCDevicePhysicalInputTransaction *)currentTransaction updateContextForElementAtIndex:v32 size:0 onlyIfChanged:1])
            {
              facade5 = [(_GCDevicePhysicalInputBase *)v2 facade];
              v29[2](v29, facade5, v35);
            }

            ++v32;
          }

          v31 = [elements countByEnumeratingWithState:&v41 objects:v54 count:16];
        }

        while (v31);
      }
    }

    result = objc_getProperty(v2, v28, 120, 1);
    v37 = v40;
    if (!result)
    {
      v37 = 0;
    }

    if (v37)
    {
      v38 = result;
      facade6 = [(_GCDevicePhysicalInputBase *)v2 facade];
      result = (*(v38 + 2))(v38, facade6);
    }

    atomic_store(0, &v2->_isHandlingEvent);
  }

  return result;
}

- (id)updateWithElements:(id *)result
{
  v95 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = result[18];
    elements = [(_GCDevicePhysicalInputBase *)v4 elements];
    v6 = [elements count];
    if (v6 != [a2 count])
    {
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    v66 = a2;
    viewConfiguration = [(_GCDevicePhysicalInputBase *)v3[18] viewConfiguration];
    v9 = [_GCDevicePhysicalInputStateTable stateTableWithCopyOfStateTable:viewConfiguration];
    [(_GCDevicePhysicalInputBase *)v3[18] setViewConfiguration:v9];
    objc_sync_enter(v3);
    v10 = v3[17];
    v64 = v3;
    objc_sync_exit(v3);
    -[_GCDevicePhysicalInputTransaction setLastEventHostTimestamp:](v4, [v10 lastEventHostTimestamp]);
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v11 = [elements countByEnumeratingWithState:&v89 objects:v94 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v90;
      do
      {
        v15 = elements;
        v16 = 0;
        v17 = v13;
        do
        {
          if (*v90 != v14)
          {
            objc_enumerationMutation(v15);
          }

          v18 = *(*(&v89 + 1) + 8 * v16);
          v19 = [v66 gc_member:{objc_msgSend(v18, "identifier")}];
          if (!v19)
          {
            [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
          }

          v13 = v17 + 1;
          v83 = MEMORY[0x1E69E9820];
          v84 = 3221225472;
          v85 = __45___GCDevicePhysicalInput_updateWithElements___block_invoke;
          v86 = &unk_1E841AE30;
          v87 = v18;
          v88 = v19;
          [(_GCDevicePhysicalInputTransaction *)v4 mutableUpdateContextForElementAtIndex:v17 withHandler:&v83];
          ++v16;
          ++v17;
        }

        while (v12 != v16);
        elements = v15;
        v12 = [v15 countByEnumeratingWithState:&v89 objects:v94 count:16];
      }

      while (v12);
    }

    v20 = v64;
    elements2 = [(_GCDevicePhysicalInputBase *)v64 elements];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v22 = [elements2 countByEnumeratingWithState:&v79 objects:v93 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = *v80;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v80 != v25)
          {
            objc_enumerationMutation(elements2);
          }

          v27 = *(*(&v79 + 1) + 8 * i);
          v78 = 0;
          v28 = [(_GCDevicePhysicalInputTransaction *)v4 updateContextForElementAtIndex:v24 size:&v78 onlyIfChanged:1];
          if (v28)
          {
            [v27 preCommit:v28 sender:v64];
          }

          ++v24;
        }

        v23 = [elements2 countByEnumeratingWithState:&v79 objects:v93 count:16];
      }

      while (v23);
    }

    v29 = [(_GCDevicePhysicalInput *)v64 _commitTransaction:?];
    objc_sync_enter(v64);
    currentTransaction = v64->_currentTransaction;
    v31 = objc_sync_exit(v64);
    v39 = OUTLINED_FUNCTION_5_11(v31, v32, v33, v34, v35, v36, v37, v38, v57, v59, v61, sel_updateWithElements_, v64, v66, 0, 0, 0, 0, 0, 0, 0, 0, v76, v78, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84, v85, v86, v87, v88, v89, *(&v89 + 1), v90, *(&v90 + 1), v91, *(&v91 + 1), v92, *(&v92 + 1));
    if (v39)
    {
      v41 = v39;
      v42 = 0;
      v43 = *v70;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v70 != v43)
          {
            objc_enumerationMutation(elements2);
          }

          v45 = *(v69 + 8 * j);
          v78 = 0;
          v46 = [(_GCDevicePhysicalInputTransaction *)currentTransaction updateContextForElementAtIndex:v42 size:&v78 onlyIfChanged:1];
          if (v46)
          {
            v46 = [v45 postCommit:v46 sender:v20];
          }

          ++v42;
        }

        v41 = OUTLINED_FUNCTION_5_11(v46, v47, v48, v49, v50, v51, v52, v53, v58, v60, v62, v63, v65, v67, v68, v69, v70, v71, v72, v73, v74, v75, v77, v78, v79, *(&v79 + 1), v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, v84, v85, v86, v87, v88, v89, *(&v89 + 1), v90, *(&v90 + 1), v91, *(&v91 + 1), v92, *(&v92 + 1));
      }

      while (v41);
    }

    result = objc_getProperty(v20, v40, 120, 1);
    if (result)
    {
      v54 = v29;
    }

    else
    {
      v54 = 0;
    }

    if (v54)
    {
      v55 = result;
      facade = [(_GCDevicePhysicalInputBase *)v20 facade];
      return (v55[2])(v55, facade);
    }
  }

  return result;
}

- (uint64_t)currentTransaction
{
  if (!self)
  {
    return 0;
  }

  objc_sync_enter(self);
  v2 = self[17];
  objc_sync_exit(self);
  return v2;
}

- (id)inputStateAvailableHandler
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_2(result, a2, 120);
  }

  return result;
}

- (id)queue
{
  if (result)
  {
    v1 = result;
    dataSource = [result dataSource];
    if (dataSource)
    {

      return [dataSource physicalInputQueue:v1];
    }

    else
    {
      v3 = GCDevicePhysicalInputQueueKey;

      return objc_getAssociatedObject(v1, v3);
    }
  }

  return result;
}

- (void)setQueue:(void *)result
{
  if (result)
  {
    v3 = result;
    dataSource = [result dataSource];
    if (dataSource)
    {

      return [dataSource physicalInput:v3 setQueue:a2];
    }

    else
    {
      [-[_GCDevicePhysicalInputBase facade](v3) willChangeValueForKey:@"queue"];
      objc_setAssociatedObject(v3, GCDevicePhysicalInputQueueKey, a2, 0x301);
      facade = [(_GCDevicePhysicalInputBase *)v3 facade];

      return [facade didChangeValueForKey:@"queue"];
    }
  }

  return result;
}

- (uint64_t)transactionQueueDepth
{
  if (!self)
  {
    return 0;
  }

  objc_sync_enter(self);
  v2 = self[20];
  objc_sync_exit(self);
  return v2;
}

- (void)setTransactionQueueDepth:(void *)result
{
  if (result)
  {
    v2 = result;
    if (a2 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = a2;
    }

    objc_sync_enter(result);
    if (v3 != v2[20])
    {
      v2[20] = v3;
    }

    objc_sync_exit(v2);
    dataSource = [v2 dataSource];

    return [dataSource physicalInputTransactionQueueDepthDidChange:v2];
  }

  return result;
}

- (uint64_t)pendingTransaction
{
  if (!self)
  {
    return 0;
  }

  objc_sync_enter(self);
  v2 = self[18];
  objc_sync_exit(self);
  return v2;
}

- (double)lastEventTimestamp
{
  [(_GCDevicePhysicalInput *)self updateViewStateIfNeeded];
  currentTransaction = [(_GCDevicePhysicalInput *)self currentTransaction];

  [currentTransaction lastEventTimestamp];
  return result;
}

- (id)elementValueDidChangeHandler
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_2(result, a2, 112);
  }

  return result;
}

- (void)setElementValueDidChangeHandler:(uint64_t)handler
{
  if (self)
  {
    OUTLINED_FUNCTION_1_24(self, a2, handler, 112);
  }
}

- (void)setInputStateAvailableHandler:(uint64_t)handler
{
  if (self)
  {
    OUTLINED_FUNCTION_1_24(self, a2, handler, 120);
  }
}

- (double)handleGamepadEvent:(_GCDevicePhysicalInput *)event
{
  if (event)
  {
    [a2 timestamp];
    v4 = [-[_GCDevicePhysicalInputBase attributes](event) count];
    OUTLINED_FUNCTION_3_11(v4);
    OUTLINED_FUNCTION_0_30();
    v8 = 3221225472;
    v9 = __60___GCDevicePhysicalInput_EventHandling__handleGamepadEvent___block_invoke;
    v10 = &unk_1E841AE80;
    v11 = a2;
    [(_GCDevicePhysicalInput *)event _handleEventTransaction:v7];
    [a2 timestamp];
    v5 = [-[_GCDevicePhysicalInputBase attributes](event) count];
    return OUTLINED_FUNCTION_4_10(v5);
  }

  return result;
}

- (_GCDevicePhysicalInput)handleMouseEvent:(_GCDevicePhysicalInput *)result
{
  if (result)
  {
    OUTLINED_FUNCTION_0_30();
    v4 = 3221225472;
    v5 = __58___GCDevicePhysicalInput_EventHandling__handleMouseEvent___block_invoke;
    v6 = &__block_descriptor_56_e43_Q16__0___GCDevicePhysicalInputTransaction_8l;
    v7 = *v1;
    v8 = *(v1 + 2);
    return [(_GCDevicePhysicalInput *)v2 _handleEventTransaction:v3];
  }

  return result;
}

- (double)handleCollectionEvent:(_GCDevicePhysicalInput *)event
{
  if (event)
  {
    [a2 timestamp];
    v4 = [-[_GCDevicePhysicalInputBase attributes](event) count];
    OUTLINED_FUNCTION_3_11(v4);
    OUTLINED_FUNCTION_0_30();
    v8 = 3221225472;
    v9 = __63___GCDevicePhysicalInput_EventHandling__handleCollectionEvent___block_invoke;
    v10 = &unk_1E841AE80;
    v11 = a2;
    [(_GCDevicePhysicalInput *)event _handleEventTransaction:v7];
    [a2 timestamp];
    v5 = [-[_GCDevicePhysicalInputBase attributes](event) count];
    return OUTLINED_FUNCTION_4_10(v5);
  }

  return result;
}

- (void)setDataSource:(void *)a1 .cold.1(void *a1)
{
  v2 = GCDevicePhysicalInputQueueKey;
  v3 = [0 physicalInputQueue:a1];

  objc_setAssociatedObject(a1, v2, v3, 0x301);
}

@end