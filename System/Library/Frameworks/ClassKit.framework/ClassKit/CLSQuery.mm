@interface CLSQuery
+ (id)queryWithObjectType:(Class)type predicate:(id)predicate;
+ (id)queryWithObjectType:(Class)type predicate:(id)predicate error:(id *)error;
+ (id)queryWithQuerySpecification:(id)specification completion:(id)completion error:(id *)error;
+ (id)queryWithSearchSpecification:(id)specification;
- (CLSQuery)initWithObjectType:(Class)type predicate:(id)predicate sortDescriptors:(id)descriptors error:(id *)error;
- (CLSQuery)initWithQuerySpecification:(id)specification completion:(id)completion error:(id *)error;
- (CLSQuery)initWithQuerySpecification:(id)specification error:(id *)error;
- (CLSQuery)initWithSearchSpecification:(id)specification error:(id *)error;
- (NSString)description;
- (void)_faultResultsAndComplete;
- (void)_notifyOfCompletionWithError:(id)error;
- (void)_notifyOfCompletionWithResults:(id)results error:(id)error;
- (void)clientRemote_deliverObject:(id)object;
- (void)clientRemote_finishWithOffset:(unint64_t)offset error:(id)error;
- (void)clientRemote_invalidate;
- (void)reset;
- (void)setFetchLimit:(int64_t)limit;
@end

@implementation CLSQuery

+ (id)queryWithQuerySpecification:(id)specification completion:(id)completion error:(id *)error
{
  completionCopy = completion;
  specificationCopy = specification;
  v10 = [self alloc];
  Specification_completion_error = objc_msgSend_initWithQuerySpecification_completion_error_(v10, v11, specificationCopy, completionCopy, error);

  return Specification_completion_error;
}

+ (id)queryWithObjectType:(Class)type predicate:(id)predicate
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v4 = objc_msgSend_queryWithObjectType_predicate_error_(self, a2, type, predicate, &v8);
  v5 = v8;
  if (v5)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v6 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v10 = v5;
      _os_log_impl(&dword_236F71000, v6, OS_LOG_TYPE_INFO, "Error validating predicate: %{public}@", buf, 0xCu);
    }
  }

  return v4;
}

+ (id)queryWithObjectType:(Class)type predicate:(id)predicate error:(id *)error
{
  v7 = objc_msgSend_querySpecificationWithObjectType_predicate_(CLSQuerySpecification, a2, type, predicate);
  v9 = objc_msgSend_queryWithQuerySpecification_completion_error_(self, v8, v7, &unk_284A07848, error);

  return v9;
}

+ (id)queryWithSearchSpecification:(id)specification
{
  v14 = *MEMORY[0x277D85DE8];
  specificationCopy = specification;
  v5 = [self alloc];
  v11 = 0;
  v7 = objc_msgSend_initWithSearchSpecification_error_(v5, v6, specificationCopy, &v11);

  v8 = v11;
  if (v8)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v9 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_236F71000, v9, OS_LOG_TYPE_INFO, "Error creating searchQuery: %{public}@", buf, 0xCu);
    }
  }

  return v7;
}

- (CLSQuery)initWithQuerySpecification:(id)specification error:(id *)error
{
  specificationCopy = specification;
  v13.receiver = self;
  v13.super_class = CLSQuery;
  v7 = [(CLSDataObserver *)&v13 initWithQuerySpecification:specificationCopy error:error];
  if (v7)
  {
    v8 = objc_opt_new();
    objc_msgSend_setResults_(v7, v9, v8);

    v7->_shouldAddResultsToDataStore = 1;
    v7->_shouldFaultResults = 1;
    v7->_lock._os_unfair_lock_opaque = 0;
    v7->_fetchLimit = objc_msgSend_limit(specificationCopy, v10, v11);
  }

  return v7;
}

- (CLSQuery)initWithQuerySpecification:(id)specification completion:(id)completion error:(id *)error
{
  specificationCopy = specification;
  completionCopy = completion;
  v17.receiver = self;
  v17.super_class = CLSQuery;
  v10 = [(CLSDataObserver *)&v17 initWithQuerySpecification:specificationCopy error:error];
  if (v10)
  {
    v11 = objc_opt_new();
    objc_msgSend_setResults_(v10, v12, v11);

    v10->_shouldAddResultsToDataStore = 1;
    v10->_shouldFaultResults = 1;
    v10->_lock._os_unfair_lock_opaque = 0;
    v10->_fetchLimit = objc_msgSend_limit(specificationCopy, v13, v14);
    objc_msgSend_setCompletion_(v10, v15, completionCopy);
  }

  return v10;
}

- (CLSQuery)initWithSearchSpecification:(id)specification error:(id *)error
{
  specificationCopy = specification;
  v8 = objc_opt_class();
  v10 = objc_msgSend_querySpecificationWithObjectType_predicate_(CLSQuerySpecification, v9, v8, 0);
  Specification_error = objc_msgSend_initWithQuerySpecification_error_(self, v11, v10, error);
  v13 = Specification_error;
  if (Specification_error)
  {
    objc_storeStrong((Specification_error + 136), specification);
  }

  return v13;
}

- (CLSQuery)initWithObjectType:(Class)type predicate:(id)predicate sortDescriptors:(id)descriptors error:(id *)error
{
  descriptorsCopy = descriptors;
  v12 = objc_msgSend_querySpecificationWithObjectType_predicate_(CLSQuerySpecification, v11, type, predicate);
  objc_msgSend_setSortDescriptors_(v12, v13, descriptorsCopy);

  Specification_error = objc_msgSend_initWithQuerySpecification_error_(self, v14, v12, error);
  return Specification_error;
}

- (NSString)description
{
  v17.receiver = self;
  v17.super_class = CLSQuery;
  v3 = [(CLSDataObserver *)&v17 description];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  searchSpec = self->_searchSpec;
  if (searchSpec)
  {
    v10 = objc_msgSend_description(searchSpec, v7, v8);
    objc_msgSend_appendString_(v6, v11, v10);
  }

  objc_msgSend_appendString_(v6, v7, @" (executing: ");
  if (objc_msgSend_isExecuting(self, v12, v13))
  {
    objc_msgSend_appendString_(v6, v14, @"YES");
  }

  else
  {
    objc_msgSend_appendString_(v6, v14, @"NO");
  }

  objc_msgSend_appendString_(v6, v15, @""));

  return v6;
}

- (void)setFetchLimit:(int64_t)limit
{
  v5 = objc_msgSend_querySpec(self, a2, limit);
  objc_msgSend_setLimit_(v5, v6, limit);

  self->_fetchLimit = limit;
}

- (void)reset
{
  v4 = objc_msgSend_querySpec(self, a2, v2);
  objc_msgSend_setOffset_(v4, v3, 0);
}

- (void)clientRemote_invalidate
{
  objc_msgSend_lock(self, a2, v2);
  v6 = objc_msgSend_results(self, v4, v5);
  objc_msgSend_removeAllObjects(v6, v7, v8);

  v14 = MEMORY[0x2383C3E80](self->_completion);
  objc_msgSend_unlock(self, v9, v10);
  if (v14)
  {
    v12 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v11, 100, @"Query invalidated");
    objc_msgSend_setExecuting_(self, v13, 0);
    v14[2](v14, 0, v12);
  }

  else
  {
    objc_msgSend_setExecuting_(self, v11, 0);
  }
}

- (void)clientRemote_deliverObject:(id)object
{
  v28 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_msgSend_lock(self, v5, v6);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = objectCopy;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v23, v27, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_msgSend_dataStore(self, v14, v15, v23), v16 = objc_claimAutoreleasedReturnValue(), isRemovedObject = objc_msgSend_isRemovedObject_(v16, v17, v13), v16, (isRemovedObject & 1) == 0))
        {
          v19 = objc_msgSend_results(self, v14, v15, v23);
          objc_msgSend_addObject_(v19, v20, v13);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v14, &v23, v27, 16);
    }

    while (v10);
  }

  objc_msgSend_unlock(self, v21, v22);
}

- (void)clientRemote_finishWithOffset:(unint64_t)offset error:(id)error
{
  errorCopy = error;
  objc_msgSend_lock(self, v6, v7);
  v10 = objc_msgSend_querySpec(self, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_querySpec(self, v11, v12);
    objc_msgSend_setOffset_(v13, v14, offset);
  }

  objc_msgSend_unlock(self, v11, v12);
  v17 = objc_msgSend_objectType(self, v15, v16);
  v19 = objc_msgSend_conformsToProtocol_(v17, v18, &unk_284A1E680);
  v21 = errorCopy;
  if (!errorCopy && v19 && (shouldFaultResults = objc_msgSend_shouldFaultResults(self, 0, v20), v21 = 0, (shouldFaultResults & 1) != 0))
  {
    objc_msgSend__faultResultsAndComplete(self, errorCopy, v23);
  }

  else
  {
    objc_msgSend__notifyOfCompletionWithError_(self, v21, v21);
  }
}

- (void)_faultResultsAndComplete
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_236F92738;
  v20 = sub_236F92748;
  v3 = [CLSFaultProcessor alloc];
  v6 = objc_msgSend_dataStore(self, v4, v5);
  v21 = objc_msgSend_initWithDelegate_(v3, v7, v6);

  v8 = v17[5];
  v11 = objc_msgSend_results(self, v9, v10);
  objc_msgSend_faultObjects_(v8, v12, v11);

  v13 = v17[5];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236F92750;
  v15[3] = &unk_278A18238;
  v15[4] = self;
  v15[5] = &v16;
  objc_msgSend_completionNotify_(v13, v14, v15);
  _Block_object_dispose(&v16, 8);
}

- (void)_notifyOfCompletionWithError:(id)error
{
  v47 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  objc_msgSend_lock(self, v5, v6);
  v9 = objc_msgSend_results(self, v7, v8);
  v12 = objc_msgSend_copy(v9, v10, v11);

  v15 = objc_msgSend_results(self, v13, v14);
  objc_msgSend_removeAllObjects(v15, v16, v17);

  objc_msgSend_unlock(self, v18, v19);
  v22 = objc_msgSend_objectType(self, v20, v21);
  v23 = objc_opt_class();
  if (objc_msgSend_isSubclassOfClass_(v22, v24, v23) && self->_shouldAddResultsToDataStore)
  {
    v26 = objc_opt_new();
    v29 = objc_msgSend_dataStore(self, v27, v28);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v30 = v12;
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v42, v46, 16);
    if (v32)
    {
      v34 = v32;
      v35 = *v43;
      do
      {
        v36 = 0;
        do
        {
          if (*v43 != v35)
          {
            objc_enumerationMutation(v30);
          }

          v37 = objc_msgSend_addObject_(v29, v33, *(*(&v42 + 1) + 8 * v36), v42);
          v40 = v37;
          if (v37 && (objc_msgSend_isDeleted(v37, v38, v39) & 1) == 0)
          {
            objc_msgSend_addObject_(v26, v41, v40);
          }

          ++v36;
        }

        while (v34 != v36);
        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v42, v46, 16);
      }

      while (v34);
    }
  }

  else
  {
    v26 = v12;
  }

  objc_msgSend__notifyOfCompletionWithResults_error_(self, v25, v26, errorCopy, v42);
}

- (void)_notifyOfCompletionWithResults:(id)results error:(id)error
{
  v38 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  errorCopy = error;
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v8 = CLSLogConnection;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v18 = objc_msgSend_date(MEMORY[0x277CBEAA8], v9, v10);
    v21 = objc_msgSend_startDate(self, v19, v20);
    objc_msgSend_timeIntervalSinceDate_(v18, v22, v21);
    v26 = v25;
    if (resultsCopy)
    {
      v27 = objc_msgSend_count(resultsCopy, v23, v24);
    }

    else
    {
      v27 = 0;
    }

    *buf = 138412802;
    selfCopy = self;
    v34 = 2048;
    v35 = v26;
    v36 = 2048;
    v37 = v27;
    _os_log_debug_impl(&dword_236F71000, v8, OS_LOG_TYPE_DEBUG, "query: %@; took: %.3f count: %ld", buf, 0x20u);
  }

  objc_msgSend_lock(self, v11, v12);
  v13 = MEMORY[0x2383C3E80](self->_completion);
  objc_msgSend_unlock(self, v14, v15);
  if (v13)
  {
    v17 = dispatch_get_global_queue(33, 0);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_236F92D2C;
    v28[3] = &unk_278A18260;
    v28[4] = self;
    v29 = errorCopy;
    v31 = v13;
    v30 = resultsCopy;
    dispatch_async(v17, v28);
  }

  else
  {
    objc_msgSend_setExecuting_(self, v16, 0);
  }
}

@end