@interface NSPersistentHistoryResult
+ (_NSPersistentHistoryChange)_changeFromResult:(uint64_t)result withTransaction:;
+ (_NSPersistentHistoryTransaction)_transactionFromResult:(void *)result withChanges:;
+ (id)_processResult:(id)result forRequest:(id)request withProvider:(id)provider;
- (NSPersistentHistoryResult)initWithResultType:(int64_t)type andResult:(id)result;
- (NSPersistentHistoryResult)initWithSubresults:(id)subresults;
- (id)description;
- (void)dealloc;
@end

@implementation NSPersistentHistoryResult

- (void)dealloc
{
  self->_aggregatedResult = 0;
  v3.receiver = self;
  v3.super_class = NSPersistentHistoryResult;
  [(NSPersistentHistoryResult *)&v3 dealloc];
}

- (NSPersistentHistoryResult)initWithResultType:(int64_t)type andResult:(id)result
{
  v9.receiver = self;
  v9.super_class = NSPersistentHistoryResult;
  v6 = [(NSPersistentHistoryResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_resultType = type;
    v6->_aggregatedResult = result;
  }

  return v7;
}

- (NSPersistentHistoryResult)initWithSubresults:(id)subresults
{
  v92 = *MEMORY[0x1E69E9840];
  v74.receiver = self;
  v74.super_class = NSPersistentHistoryResult;
  v4 = [(NSPersistentHistoryResult *)&v74 init];
  if (!v4)
  {
    return v4;
  }

  if ([subresults count])
  {
    resultType = [objc_msgSend(subresults "lastObject")];
    v4->_resultType = resultType;
  }

  else
  {
    resultType = v4->_resultType;
  }

  if (resultType > 2)
  {
    if (resultType > 4)
    {
      if (resultType != 5)
      {
        if (resultType != 6)
        {
          return v4;
        }

        goto LABEL_13;
      }

      goto LABEL_23;
    }

    if (resultType == 3)
    {
LABEL_23:
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v14 = [subresults countByEnumeratingWithState:&v57 objects:v78 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v58;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v58 != v16)
            {
              objc_enumerationMutation(subresults);
            }

            v18 = *(*(&v57 + 1) + 8 * i);
            v19 = v4->_resultType;
            if (v19 != [v18 resultType])
            {
              v50 = MEMORY[0x1E695DF30];
              v51 = *MEMORY[0x1E695D930];
              v76 = @"Results";
              subresultsCopy = subresults;
              v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&subresultsCopy forKeys:&v76 count:1];
              v53 = @"Mismatched result types during aggregation of history results";
              goto LABEL_69;
            }

            [v13 addObjectsFromArray:{objc_msgSend(v18, "result")}];
          }

          v15 = [subresults countByEnumeratingWithState:&v57 objects:v78 count:16];
        }

        while (v15);
      }

      v20 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"timestamp" ascending:1];
      v75 = v20;
      v4->_aggregatedResult = [v13 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v75, 1)}];

      return v4;
    }

    v46 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v47 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v49 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v47)
      {
        if (!v49)
        {
          goto LABEL_73;
        }

        *buf = 0;
      }

      else
      {
        if (!v49)
        {
          goto LABEL_73;
        }

        *buf = 0;
      }

      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: History Change Request failed NSPersistentHistoryResultTypeChangesOnly unsupported for multiple stores\n", buf, 2u);
    }

LABEL_73:
    _NSCoreDataLog_console(1, "History Change Request failed NSPersistentHistoryResultTypeChangesOnly unsupported for multiple stores");
    objc_autoreleasePoolPop(v46);
    v54 = *MEMORY[0x1E695D930];
    v79 = @"Results";
    subresultsCopy2 = subresults;
    v55 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v54, 134091, @"NSPersistentHistoryResultTypeChangesOnly unsupported for multiple stores", [MEMORY[0x1E695DF20] dictionaryWithObjects:&subresultsCopy2 forKeys:&v79 count:1]);
    objc_exception_throw(v55);
  }

  if (resultType)
  {
    if (resultType == 1)
    {
      v56 = [MEMORY[0x1E695DFA8] set];
      v28 = [MEMORY[0x1E695DFA8] set];
      v29 = [MEMORY[0x1E695DFA8] set];
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v30 = [subresults countByEnumeratingWithState:&v62 objects:v85 count:16];
      if (!v30)
      {
        goto LABEL_54;
      }

      v31 = v30;
      v32 = *v63;
      while (1)
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v63 != v32)
          {
            objc_enumerationMutation(subresults);
          }

          v34 = *(*(&v62 + 1) + 8 * j);
          v35 = v4->_resultType;
          if (v35 != [v34 resultType])
          {
            v50 = MEMORY[0x1E695DF30];
            v51 = *MEMORY[0x1E695D930];
            v83 = @"Results";
            subresultsCopy3 = subresults;
            v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&subresultsCopy3 forKeys:&v83 count:1];
            v53 = @"Mismatched result types during aggregation of history object IDs results";
LABEL_69:
            objc_exception_throw([v50 exceptionWithName:v51 reason:v53 userInfo:v52]);
          }

          result = [v34 result];
          if (result)
          {
            v37 = result;
            [v56 unionSet:{objc_msgSend(result, "objectForKey:", @"inserted_objectIDs"}];
            [v28 unionSet:{objc_msgSend(v37, "objectForKey:", @"updated_objectIDs"}];
            [v29 unionSet:{objc_msgSend(v37, "objectForKey:", @"deleted_objectIDs"}];
          }
        }

        v31 = [subresults countByEnumeratingWithState:&v62 objects:v85 count:16];
        if (!v31)
        {
LABEL_54:
          [v56 minusSet:v29];
          [v28 minusSet:v29];
          [v28 minusSet:v56];
          v38 = [v56 copy];
          v39 = [v28 copy];
          v40 = [v29 copy];
          v41 = objc_alloc(MEMORY[0x1E695DF20]);
          v82[0] = v38;
          v82[1] = v39;
          v82[2] = v40;
          v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:3];
          v81[0] = @"inserted_objectIDs";
          v81[1] = @"updated_objectIDs";
          v81[2] = @"deleted_objectIDs";
          v43 = [v41 initWithObjects:v42 forKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v81, 3)}];

          v4->_aggregatedResult = v43;
          return v4;
        }
      }
    }

    if (resultType == 2)
    {
LABEL_13:
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v6 = [subresults countByEnumeratingWithState:&v66 objects:v88 count:16];
      if (!v6)
      {
        v8 = 0;
        goto LABEL_56;
      }

      v7 = v6;
      v8 = 0;
      v9 = *v67;
      while (1)
      {
        for (k = 0; k != v7; ++k)
        {
          if (*v67 != v9)
          {
            objc_enumerationMutation(subresults);
          }

          v11 = *(*(&v66 + 1) + 8 * k);
          v12 = v4->_resultType;
          if (v12 != [v11 resultType])
          {
            v50 = MEMORY[0x1E695DF30];
            v51 = *MEMORY[0x1E695D930];
            v86 = @"Results";
            subresultsCopy4 = subresults;
            v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&subresultsCopy4 forKeys:&v86 count:1];
            v53 = @"Mismatched result types during aggregation of history count results";
            goto LABEL_69;
          }

          v8 += [objc_msgSend(v11 "result")];
        }

        v7 = [subresults countByEnumeratingWithState:&v66 objects:v88 count:16];
        if (!v7)
        {
LABEL_56:
          v44 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:v8];
          goto LABEL_59;
        }
      }
    }
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v21 = [subresults countByEnumeratingWithState:&v70 objects:v91 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v71;
      LOBYTE(v24) = 1;
      do
      {
        for (m = 0; m != v22; ++m)
        {
          if (*v71 != v23)
          {
            objc_enumerationMutation(subresults);
          }

          v26 = *(*(&v70 + 1) + 8 * m);
          v27 = v4->_resultType;
          if (v27 != [v26 resultType])
          {
            v50 = MEMORY[0x1E695DF30];
            v51 = *MEMORY[0x1E695D930];
            v89 = @"Results";
            subresultsCopy5 = subresults;
            v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&subresultsCopy5 forKeys:&v89 count:1];
            v53 = @"Mismatched result types during aggregation of history status results";
            goto LABEL_69;
          }

          if (v24)
          {
            v24 = [objc_msgSend(v26 "result")];
          }

          else
          {
            v24 = 0;
          }
        }

        v22 = [subresults countByEnumeratingWithState:&v70 objects:v91 count:16];
      }

      while (v22);
    }

    else
    {
      v24 = 1;
    }

    v44 = [MEMORY[0x1E696AD98] numberWithBool:v24];
LABEL_59:
    v4->_aggregatedResult = v44;
  }

  return v4;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  Name = class_getName(v5);
  v7 = objc_msgSend_stringWithFormat_(v4, Name, self, self->_aggregatedResult);
  objc_autoreleasePoolPop(v3);

  return v7;
}

+ (_NSPersistentHistoryTransaction)_transactionFromResult:(void *)result withChanges:
{
  objc_opt_self();
  v5 = -[_NSPersistentHistoryTransaction initWithDictionary:andObjectID:]([_NSPersistentHistoryTransaction alloc], "initWithDictionary:andObjectID:", a2, [a2 objectForKey:@"self"]);
  [(_NSPersistentHistoryTransaction *)v5 _setChanges:result];
  return v5;
}

+ (_NSPersistentHistoryChange)_changeFromResult:(uint64_t)result withTransaction:
{
  objc_opt_self();
  v5 = -[_NSPersistentHistoryChange initWithDictionary:andChangeObjectID:]([_NSPersistentHistoryChange alloc], "initWithDictionary:andChangeObjectID:", a2, [a2 objectForKey:@"self"]);
  [(_NSPersistentHistoryChange *)v5 _setTransaction:result];
  return v5;
}

+ (id)_processResult:(id)result forRequest:(id)request withProvider:(id)provider
{
  v87 = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  if ([request resultType] == 2 || objc_msgSend(request, "resultType") == 6 || !objc_msgSend(request, "resultType"))
  {
    firstObject = [result firstObject];
LABEL_29:
    result = firstObject;
    goto LABEL_30;
  }

  if ([request resultType] != 1)
  {
    if (![result isNSArray])
    {
      result = 0;
      goto LABEL_30;
    }

    if ([request fetchBatchSize])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [result description];
        goto LABEL_30;
      }

      firstObject = [[_PFBatchHistoryFaultingArray alloc] initWithPFBatchFaultingArray:result];
      goto LABEL_29;
    }

    v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([request resultType] == 5 && objc_msgSend(result, "count") == 2)
    {
      v36 = [result objectAtIndexedSubscript:0];
      v37 = [result objectAtIndexedSubscript:1];
      v38 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v36, "count")}];
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      obja = v36;
      v67 = [v36 countByEnumeratingWithState:&v72 objects:v81 count:16];
      if (v67)
      {
        v63 = v35;
        requestCopy = request;
        v39 = 0;
        v66 = *v73;
        do
        {
          for (i = 0; i != v67; ++i)
          {
            v41 = v39;
            if (*v73 != v66)
            {
              objc_enumerationMutation(obja);
            }

            v42 = *(*(&v72 + 1) + 8 * i);
            v43 = objc_autoreleasePoolPush();
            array = [MEMORY[0x1E695DF70] array];
            v45 = [NSPersistentHistoryResult _transactionFromResult:v42 withChanges:array];
            transactionNumber = [(_NSPersistentHistoryTransaction *)v45 transactionNumber];
            if ([v37 count] > v39)
            {
              v39 = v39;
              while (1)
              {
                v47 = [v37 objectAtIndexedSubscript:v39];
                if ([objc_msgSend(v47 objectForKey:{@"TRANSACTIONID", "_referenceData64"}] != transactionNumber)
                {
                  break;
                }

                v48 = [NSPersistentHistoryResult _changeFromResult:v47 withTransaction:v45];
                [array addObject:v48];

                v39 = (v41 + 1);
                v41 = v39;
                if ([v37 count] <= v39)
                {
                  goto LABEL_49;
                }
              }
            }

            v39 = v41;
LABEL_49:
            [v38 addObject:v45];

            objc_autoreleasePoolPop(v43);
          }

          v67 = [obja countByEnumeratingWithState:&v72 objects:v81 count:16];
        }

        while (v67);
        request = requestCopy;
        v35 = v63;
      }

LABEL_65:

      result = v38;
      goto LABEL_30;
    }

    v38 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(result, "count")}];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v49 = [result countByEnumeratingWithState:&v68 objects:v80 count:16];
    if (!v49)
    {
      goto LABEL_65;
    }

    v50 = v49;
    v51 = *v69;
LABEL_55:
    v52 = 0;
    while (1)
    {
      if (*v69 != v51)
      {
        objc_enumerationMutation(result);
      }

      v53 = *(*(&v68 + 1) + 8 * v52);
      if ([request resultType] == 3)
      {
        break;
      }

      if ([request resultType] == 4)
      {
        v54 = [NSPersistentHistoryResult _changeFromResult:v53 withTransaction:0];
        goto LABEL_62;
      }

LABEL_63:
      if (v50 == ++v52)
      {
        v50 = [result countByEnumeratingWithState:&v68 objects:v80 count:16];
        if (!v50)
        {
          goto LABEL_65;
        }

        goto LABEL_55;
      }
    }

    v54 = [NSPersistentHistoryResult _transactionFromResult:v53 withChanges:0];
LABEL_62:
    v55 = v54;
    [v38 addObject:v54];

    goto LABEL_63;
  }

  requestCopy2 = request;
  v58 = v8;
  obj = [MEMORY[0x1E695DFA8] set];
  v62 = [MEMORY[0x1E695DFA8] set];
  v61 = [MEMORY[0x1E695DFA8] set];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v9 = [result countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = v9;
  v11 = *v77;
  v12 = @"ENTITY";
  providerCopy = provider;
  do
  {
    v13 = 0;
    do
    {
      if (*v77 != v11)
      {
        objc_enumerationMutation(result);
      }

      v14 = *(*(&v76 + 1) + 8 * v13);
      v15 = objc_autoreleasePoolPush();
      v16 = [provider newObjectIDForEntity:objc_msgSend(objc_msgSend(provider pk:{"model"), "entityForID:", objc_msgSend(objc_msgSend(v14, "objectForKey:", v12), "intValue")), objc_msgSend(objc_msgSend(v14, "objectForKey:", @"ENTITYPK", "intValue")}];
      v17 = [objc_msgSend(v14 objectForKey:{@"CHANGETYPE", "unsignedIntegerValue"}];
      if (v17 == 2)
      {
        v19 = v61;
        goto LABEL_16;
      }

      v18 = v17;
      if (v17 == 1)
      {
        v19 = v62;
        goto LABEL_16;
      }

      if (!v17)
      {
        v19 = obj;
LABEL_16:
        [v19 addObject:v16];
        goto LABEL_23;
      }

      v20 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v21 = v20;
        v22 = v10;
        v23 = v12;
        v24 = v11;
        resultCopy = result;
        v26 = _pflogging_catastrophic_mode;
        log = _PFLogGetLogStream(1);
        v27 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
        if (v26)
        {
          result = resultCopy;
          v11 = v24;
          v12 = v23;
          v10 = v22;
          v20 = v21;
          provider = providerCopy;
          if (v27)
          {
            goto LABEL_25;
          }
        }

        else
        {
          result = resultCopy;
          v11 = v24;
          v12 = v23;
          v10 = v22;
          v20 = v21;
          provider = providerCopy;
          if (v27)
          {
LABEL_25:
            *buf = 134217984;
            v85 = v18;
            _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error: error: unexpected type of change : %lu\n", buf, 0xCu);
          }
        }
      }

      _NSCoreDataLog_console(1, "error: unexpected type of change : %lu", v18);
      objc_autoreleasePoolPop(v20);
LABEL_23:

      objc_autoreleasePoolPop(v15);
      ++v13;
    }

    while (v10 != v13);
    v28 = [result countByEnumeratingWithState:&v76 objects:v86 count:16];
    v10 = v28;
  }

  while (v28);
LABEL_27:
  [obj minusSet:v61];
  [v62 minusSet:v61];
  [v62 minusSet:obj];
  v29 = [obj copy];
  v30 = [v62 copy];
  v31 = [v61 copy];
  v82[0] = @"inserted_objectIDs";
  v82[1] = @"updated_objectIDs";
  v83[0] = v29;
  v83[1] = v30;
  v82[2] = @"deleted_objectIDs";
  v83[2] = v31;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:3];

  request = requestCopy2;
  v8 = v58;
LABEL_30:
  v33 = -[NSPersistentHistoryResult initWithResultType:andResult:]([NSPersistentHistoryResult alloc], "initWithResultType:andResult:", [request resultType], result);
  objc_autoreleasePoolPop(v8);
  return v33;
}

@end