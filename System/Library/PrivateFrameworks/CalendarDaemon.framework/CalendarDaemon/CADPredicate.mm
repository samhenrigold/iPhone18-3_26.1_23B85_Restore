@interface CADPredicate
+ (id)conciseCalendarList:(id)list;
+ (void)setValidator:(Class)validator;
- (BOOL)evaluateWithObject:(id)object;
- (id)concisePublicDescription;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)matchingDatesForEvent:(void *)event modifiedProperties:(unint64_t)properties dates:(id)dates inRange:(id)range database:(CalDatabase *)database outReset:(BOOL *)reset;
- (void)beginSignpostWithHandle:(id)handle signpostID:(unint64_t)d;
@end

@implementation CADPredicate

+ (void)setValidator:(Class)validator
{
  obj = objc_opt_class();
  objc_sync_enter(obj);
  __CADPredicateValidator = validator;
  objc_sync_exit(obj);
}

- (BOOL)evaluateWithObject:(id)object
{
  objectCopy = object;
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  if (__CADPredicateValidator)
  {
    v6 = [__CADPredicateValidator evaluatePredicate:self withObject:objectCopy];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(v5);

  return v6;
}

- (id)matchingDatesForEvent:(void *)event modifiedProperties:(unint64_t)properties dates:(id)dates inRange:(id)range database:(CalDatabase *)database outReset:(BOOL *)reset
{
  if (reset)
  {
    *reset = 1;
  }

  return 0;
}

- (void)beginSignpostWithHandle:(id)handle signpostID:(unint64_t)d
{
  v15 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v7 = handleCopy;
  if (d - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(handleCopy))
  {
    v8 = objc_opt_class();
    v9 = v8;
    predicateFormat = [(CADPredicate *)self predicateFormat];
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = predicateFormat;
    _os_signpost_emit_with_name_impl(&dword_22430B000, v7, OS_SIGNPOST_INTERVAL_BEGIN, d, "EKPredicateSearch", "predicateClass=%@; predicateFormat=%@", &v11, 0x16u);
  }
}

+ (id)conciseCalendarList:(id)list
{
  v23 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if (listCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{(4 * objc_msgSend(listCopy, "count")) | 2}];
    -[__CFString appendString:](v4, "appendString:", @"(");
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = listCopy;
    v5 = listCopy;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v19;
      v10 = *MEMORY[0x277CF7570];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if (v8)
          {
            [(__CFString *)v4 appendString:@", "];
          }

          databaseID = [v12 databaseID];
          entityID = [v12 entityID];
          if (databaseID == v10)
          {
            [(__CFString *)v4 appendFormat:@"%i", entityID, v16];
          }

          else
          {
            [(__CFString *)v4 appendFormat:@"%i/%i", databaseID, entityID];
          }

          v8 = 1;
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    [(__CFString *)v4 appendString:@""]);
    listCopy = v17;
  }

  else
  {
    v4 = @"(null)";
  }

  return v4;
}

- (id)concisePublicDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end