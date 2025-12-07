@interface NSPersistentCloudKitContainerEventRequest
+ (NSFetchRequest)fetchRequestForEvents;
+ (NSPersistentCloudKitContainerEventRequest)fetchEventsAfterDate:(NSDate *)date;
+ (NSPersistentCloudKitContainerEventRequest)fetchEventsAfterEvent:(NSPersistentCloudKitContainerEvent *)event;
+ (NSPersistentCloudKitContainerEventRequest)fetchEventsMatchingFetchRequest:(NSFetchRequest *)fetchRequest;
+ (__CFString)ckEventKeyForKey:(uint64_t)key;
+ (id)translateExpression:(uint64_t *)expression orReturnFailureReason:;
+ (uint64_t)translatePredicate:(uint64_t *)predicate orReturnFailureReason:;
- (NSPersistentCloudKitContainerEventRequest)initWithCKEventFetchRequest:(id)request;
- (void)dealloc;
@end

@implementation NSPersistentCloudKitContainerEventRequest

+ (NSPersistentCloudKitContainerEventRequest)fetchEventsAfterDate:(NSDate *)date
{
  v5 = [[NSFetchRequest alloc] initWithEntityName:+[NSCKEvent entityPath]];
  -[NSFetchRequest setPredicate:](v5, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"startedAt > %@", date]);
  v6 = [[self alloc] initWithCKEventFetchRequest:v5];

  return v6;
}

+ (NSPersistentCloudKitContainerEventRequest)fetchEventsAfterEvent:(NSPersistentCloudKitContainerEvent *)event
{
  v5 = [[NSFetchRequest alloc] initWithEntityName:+[NSCKEvent entityPath]];
  if (event)
  {
    -[NSFetchRequest setPredicate:](v5, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF > %@", event->_ckEventObjectID]);
  }

  v6 = [[self alloc] initWithCKEventFetchRequest:v5];

  return v6;
}

+ (NSPersistentCloudKitContainerEventRequest)fetchEventsMatchingFetchRequest:(NSFetchRequest *)fetchRequest
{
  v70 = *MEMORY[0x1E69E9840];
  v5 = 0x1E6EC0000uLL;
  objc_opt_self();
  v68 = 0;
  entityName = [(NSFetchRequest *)fetchRequest entityName];
  v7 = objc_opt_class();
  if (![(NSString *)entityName isEqualToString:NSStringFromClass(v7)])
  {
    v39 = MEMORY[0x1E696AEC0];
    v40 = objc_opt_class();
    v41 = NSStringFromClass(v40);
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    entityName2 = [(NSFetchRequest *)fetchRequest entityName];
    v45 = objc_opt_class();
    v46 = NSStringFromClass(v45);
    v47 = NSStringFromSelector(sel_fetchRequest);
    v68 = objc_msgSend_stringWithFormat_(v39, v41, v43, entityName2, v46, v47);
    if (!v68)
    {
      goto LABEL_30;
    }

    v60 = 0;
    goto LABEL_36;
  }

  v8 = [[NSFetchRequest alloc] initWithEntityName:+[NSCKEvent entityPath]];
  [(NSFetchRequest *)v8 setAffectedStores:[(NSFetchRequest *)fetchRequest affectedStores]];
  v60 = v8;
  if (([(NSFetchRequest *)fetchRequest resultType]| 4) == 4)
  {
    [(NSFetchRequest *)v8 setResultType:[(NSFetchRequest *)fetchRequest resultType]];
    goto LABEL_5;
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v5 = 0x1E6EC0000uLL;
  v68 = objc_msgSend_stringWithFormat_(v9, v11, [NSFetchRequest _stringForFetchRequestResultType:0], [NSFetchRequest _stringForFetchRequestResultType:4]);
  if (v68)
  {
LABEL_36:

    v50 = MEMORY[0x1E695DF30];
    v51 = *MEMORY[0x1E695D940];
    v52 = v68;
    goto LABEL_37;
  }

LABEL_5:
  selfCopy = self;
  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](-[NSFetchRequest sortDescriptors](fetchRequest, "sortDescriptors"), "count")}];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v59 = fetchRequest;
  obj = [(NSFetchRequest *)fetchRequest sortDescriptors];
  v13 = [(NSArray *)obj countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v65;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v65 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v64 + 1) + 8 * i);
        v19 = +[NSPersistentCloudKitContainerEventRequest ckEventKeyForKey:](*(v5 + 2784), [v18 key]);
        if (v19)
        {
          [v12 addObject:{objc_msgSend(MEMORY[0x1E696AEB0], "sortDescriptorWithKey:ascending:", v19, objc_msgSend(v18, "ascending"))}];
        }

        else
        {
          v20 = v14;
          if ([objc_msgSend(v18 "key")])
          {
            v61 = MEMORY[0x1E696AEC0];
            v21 = [v18 key];
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            v26 = NSStringFromSelector(sel_affectedStores);
            v27 = objc_opt_class();
            v55 = NSStringFromClass(v27);
            v57 = NSStringFromSelector(sel_affectedStores);
            v5 = 0x1E6EC0000;
            v28 = objc_msgSend_stringWithFormat_(v61, v21, v23, v25, v26, v55, v57);
          }

          else
          {
            v29 = [objc_msgSend(v18 "key")];
            v30 = MEMORY[0x1E696AEC0];
            v31 = [v18 key];
            v32 = objc_opt_class();
            v33 = NSStringFromClass(v32);
            v34 = v33;
            if (!v29)
            {
              v15 = objc_msgSend_stringWithFormat_(v30, v31, v33);
              v68 = v15;
              goto LABEL_22;
            }

            v35 = NSStringFromSelector(sel_domain);
            v53 = NSStringFromSelector(sel_code);
            v28 = objc_msgSend_stringWithFormat_(v30, v31, v34, v35, v53, v54, v56);
          }

          v15 = v28;
          v68 = v28;
          v14 = v20;
        }
      }

      v14 = [(NSArray *)obj countByEnumeratingWithState:&v64 objects:v69 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_22:
  [(NSFetchRequest *)v60 setSortDescriptors:v12];

  if (v15)
  {
    goto LABEL_36;
  }

  if ([(NSFetchRequest *)v59 predicate])
  {
    v36 = [NSPersistentCloudKitContainerEventRequest translatePredicate:&v68 orReturnFailureReason:?];
    [(NSFetchRequest *)v60 setPredicate:v36];

    if (v68)
    {
      goto LABEL_36;
    }
  }

  if (!v60)
  {
LABEL_30:
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Fetch request validation for NSPersistentCloudKitContainerEventRequest failed but did not report a failure reason.\n", buf, 2u);
    }

    v49 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v49, OS_LOG_TYPE_FAULT, "CoreData: Fetch request validation for NSPersistentCloudKitContainerEventRequest failed but did not report a failure reason.", buf, 2u);
    }

    v50 = MEMORY[0x1E695DF30];
    v51 = *MEMORY[0x1E695D940];
    v52 = 0;
LABEL_37:
    objc_exception_throw([v50 exceptionWithName:v51 reason:v52 userInfo:0]);
  }

  v37 = [[selfCopy alloc] initWithCKEventFetchRequest:v60];

  return v37;
}

+ (NSFetchRequest)fetchRequestForEvents
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);

  return [NSFetchRequest fetchRequestWithEntityName:v3];
}

- (NSPersistentCloudKitContainerEventRequest)initWithCKEventFetchRequest:(id)request
{
  v8.receiver = self;
  v8.super_class = NSPersistentCloudKitContainerEventRequest;
  v4 = [(NSPersistentCloudKitContainerEventRequest *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_resultType = 0;
    requestCopy = request;
    v5->_ckEventFetchRequest = requestCopy;
    if ([(NSArray *)[(NSFetchRequest *)requestCopy affectedStores] count])
    {
      [(NSPersistentStoreRequest *)v5 setAffectedStores:[(NSFetchRequest *)v5->_ckEventFetchRequest affectedStores]];
    }
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSPersistentCloudKitContainerEventRequest;
  [(NSPersistentStoreRequest *)&v3 dealloc];
}

+ (__CFString)ckEventKeyForKey:(uint64_t)key
{
  objc_opt_self();
  if ([a2 isEqualToString:@"identifier"])
  {
    return @"eventIdentifier";
  }

  if ([a2 isEqualToString:@"type"])
  {
    return @"cloudKitEventType";
  }

  if ([a2 isEqualToString:@"startDate"])
  {
    return @"startedAt";
  }

  if ([a2 isEqualToString:@"endDate"])
  {
    return @"endedAt";
  }

  if (([a2 isEqualToString:@"succeeded"] & 1) == 0)
  {
    if ([a2 isEqualToString:@"error.domain"])
    {
      return @"errorDomain";
    }

    else if ([a2 isEqualToString:@"error.code"])
    {
      return @"errorCode";
    }

    else
    {
      return 0;
    }
  }

  return a2;
}

+ (uint64_t)translatePredicate:(uint64_t *)predicate orReturnFailureReason:
{
  v34 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(objc_msgSend(a2, "subpredicates"), "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    subpredicates = [a2 subpredicates];
    v7 = [subpredicates countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (!v7)
    {
LABEL_10:
      v13 = [objc_alloc(MEMORY[0x1E696AB28]) initWithType:objc_msgSend(a2 subpredicates:{"compoundPredicateType"), v5}];
      goto LABEL_20;
    }

    v8 = v7;
    v9 = *v28;
LABEL_4:
    v10 = 0;
    while (1)
    {
      if (*v28 != v9)
      {
        objc_enumerationMutation(subpredicates);
      }

      v11 = [NSPersistentCloudKitContainerEventRequest translatePredicate:predicate orReturnFailureReason:?];
      if (!v11)
      {
        goto LABEL_19;
      }

      v12 = v11;
      [v5 addObject:v11];

      if (v8 == ++v10)
      {
        v8 = [subpredicates countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v8)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = objc_opt_class();
    v26 = NSStringFromClass(v20);
    v16 = objc_msgSend_stringWithFormat_(v17, v19, v26);
    goto LABEL_15;
  }

  if ([a2 predicateOperatorType] == 11)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v25 = NSStringFromClass(v15);
    v16 = objc_msgSend_stringWithFormat_(v14, v25, a2);
LABEL_15:
    v13 = 0;
    *predicate = v16;
    return v13;
  }

  v5 = +[NSPersistentCloudKitContainerEventRequest translateExpression:orReturnFailureReason:](NSPersistentCloudKitContainerEventRequest, [a2 leftExpression], predicate);
  if (!v5)
  {
LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  v21 = +[NSPersistentCloudKitContainerEventRequest translateExpression:orReturnFailureReason:](NSPersistentCloudKitContainerEventRequest, [a2 rightExpression], predicate);
  if (v21)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v5 rightExpression:v21 modifier:objc_msgSend(a2 type:"comparisonPredicateModifier") options:{objc_msgSend(a2, "predicateOperatorType"), objc_msgSend(a2, "options")}];
  }

  else
  {
    v13 = 0;
  }

LABEL_20:
  if (!(predicate | v13))
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = a2;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: NSPersistentCloudKitContainerEventRequest predicate translation failed but did not return a failure reason: %@\n", buf, 0xCu);
    }

    v23 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v32 = a2;
      _os_log_fault_impl(&dword_18565F000, v23, OS_LOG_TYPE_FAULT, "CoreData: NSPersistentCloudKitContainerEventRequest predicate translation failed but did not return a failure reason: %@", buf, 0xCu);
    }

    return 0;
  }

  return v13;
}

+ (id)translateExpression:(uint64_t *)expression orReturnFailureReason:
{
  objc_opt_self();
  if ([a2 expressionType] != 3)
  {
    if ([a2 expressionType] != 13)
    {
      v6 = a2;
      goto LABEL_8;
    }

    v7 = +[NSPersistentCloudKitContainerEventRequest translatePredicate:orReturnFailureReason:](NSPersistentCloudKitContainerEventRequest, [a2 predicate], expression);
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC8]) initWithExpression:objc_msgSend(a2 usingIteratorExpression:"collection") predicate:{objc_msgSend(a2, "variableExpression"), v7}];
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  keyPath = [a2 keyPath];
  v5 = [NSPersistentCloudKitContainerEventRequest ckEventKeyForKey:keyPath];
  if (!v5)
  {
    if ([keyPath isEqualToString:@"storeIdentifier"])
    {
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(sel_affectedStores);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v26 = NSStringFromSelector(sel_affectedStores);
      v18 = objc_msgSend_stringWithFormat_(v10, keyPath, v12, v14, v15, v17, v26);
    }

    else
    {
      v19 = [keyPath isEqualToString:@"error"];
      v20 = MEMORY[0x1E696AEC0];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = v22;
      if (v19)
      {
        v24 = NSStringFromSelector(sel_domain);
        v25 = NSStringFromSelector(sel_code);
        v18 = objc_msgSend_stringWithFormat_(v20, keyPath, v23, v24, v25);
      }

      else
      {
        v18 = objc_msgSend_stringWithFormat_(v20, keyPath, v22);
      }
    }

    v8 = 0;
    *expression = v18;
    return v8;
  }

  v6 = [MEMORY[0x1E696ABC8] expressionForKeyPath:v5];
LABEL_8:

  return v6;
}

@end