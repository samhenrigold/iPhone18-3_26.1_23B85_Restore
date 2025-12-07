@interface HMDBackingStoreLogDropOperationsWithUUID
- (HMDBackingStoreLogDropOperationsWithUUID)initWithUUID:(id)d pushingTo:(unint64_t)to resultBlock:(id)block;
- (id)mainReturningError;
@end

@implementation HMDBackingStoreLogDropOperationsWithUUID

- (id)mainReturningError
{
  v45 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__133678;
  v42 = __Block_byref_object_dispose__133679;
  v43 = 0;
  store = [(HMDBackingStoreOperation *)self store];
  local = [store local];
  store2 = [(HMDBackingStoreOperation *)self store];
  root = [store2 root];
  maskValue = [(HMDBackingStoreLogDropOperationsWithUUID *)self maskValue];
  compareValue = [(HMDBackingStoreLogDropOperationsWithUUID *)self compareValue];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __62__HMDBackingStoreLogDropOperationsWithUUID_mainReturningError__block_invoke;
  v35[3] = &unk_27972D138;
  v37 = &v38;
  v35[4] = self;
  v10 = array;
  v36 = v10;
  [local _selectLogWithRoot:root after:0 mask:maskValue compare:compareValue callback:v35];

  v11 = v39[5];
  if (v11 || (-[HMDBackingStoreOperation store](self, "store"), v12 = objc_claimAutoreleasedReturnValue(), [v12 local], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "_begin"), v14 = objc_claimAutoreleasedReturnValue(), v15 = v39[5], v39[5] = v14, v15, v13, v12, (v11 = v39[5]) != 0))
  {
    _commit = v11;
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = v10;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v44 count:16];
    if (v19)
    {
      v20 = *v32;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v31 + 1) + 8 * i);
          store3 = [(HMDBackingStoreOperation *)self store];
          local2 = [store3 local];
          v25 = [local2 _deleteLog:{objc_msgSend(v22, "unsignedIntegerValue")}];
          v26 = v39[5];
          v39[5] = v25;

          if (v39[5])
          {
            store4 = [(HMDBackingStoreOperation *)self store];
            local3 = [store4 local];
            [local3 _rollback];

            _commit = v39[5];
            goto LABEL_4;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v31 objects:v44 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    store5 = [(HMDBackingStoreOperation *)self store];
    local4 = [store5 local];
    _commit = [local4 _commit];
  }

LABEL_4:

  _Block_object_dispose(&v38, 8);

  return _commit;
}

BOOL __62__HMDBackingStoreLogDropOperationsWithUUID_mainReturningError__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = a8;
  if (v14)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a8);
  }

  else
  {
    v23 = 0;
    v15 = [HMDBackingStoreModelObject objectFromData:a7 encoding:a6 error:&v23];
    v16 = v23;
    [v15 setObjectChangeType:a5];
    if (v16 || ([v15 uuid], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "uuid"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isEqual:", v18), v18, v17, v19))
    {
      v20 = *(a1 + 40);
      v21 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
      [v20 addObject:v21];
    }
  }

  return v14 != 0;
}

- (HMDBackingStoreLogDropOperationsWithUUID)initWithUUID:(id)d pushingTo:(unint64_t)to resultBlock:(id)block
{
  dCopy = d;
  v14.receiver = self;
  v14.super_class = HMDBackingStoreLogDropOperationsWithUUID;
  v10 = [(HMDBackingStoreOperation *)&v14 initWithResultBlock:block];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_uuid, d);
    v11->_maskValue = to;
    v11->_compareValue = to;
    v12 = v11;
  }

  return v11;
}

@end