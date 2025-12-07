@interface AnalyticsStoreProxy
+ (BOOL)batchDelete:(id)delete withPredicate:(id)predicate withFetchRequest:(id)request moc:(id)moc;
+ (BOOL)batchUpdate:(id)update withPredicate:(id)predicate propertiesToUpdate:(id)toUpdate moc:(id)moc;
+ (id)createEntity:(id)entity moc:(id)moc;
+ (id)entity:(id)entity withPredicate:(id)predicate created:(BOOL *)created moc:(id)moc;
+ (id)fetch:(id)fetch withPredicate:(id)predicate moc:(id)moc;
+ (id)fetchAll:(id)all moc:(id)moc;
+ (id)fetchFirst:(id)first withPredicate:(id)predicate moc:(id)moc;
+ (id)fetchPropertiesForEntity:(id)entity properties:(id)properties predicate:(id)predicate moc:(id)moc;
+ (id)fetchPropertiesForEntityWithLimitAndSortDescriptor:(id)descriptor properties:(id)properties predicate:(id)predicate fetchLimit:(unint64_t)limit sortDescriptor:(id)sortDescriptor returnDistinct:(BOOL)distinct moc:(id)moc;
+ (id)fetchRequestForEntity:(id)entity;
+ (id)fetchRequestForEntityWithBatchSize:(id)size batchSize:(unint64_t)batchSize prefetch:(id)prefetch;
+ (id)fetchRequestForEntityWithOffset:(id)offset limit:(unint64_t)limit offset:(unint64_t)a5 prefetch:(id)prefetch;
+ (id)predicateForEntityWithAgeOlderThan:(id)than dateAttribute:(id)attribute olderThan:(double)olderThan;
+ (unint64_t)entityCount:(id)count withPredicate:(id)predicate moc:(id)moc;
@end

@implementation AnalyticsStoreProxy

+ (id)fetchAll:(id)all moc:(id)moc
{
  v20 = *MEMORY[0x1E69E9840];
  allCopy = all;
  mocCopy = moc;
  if (!mocCopy)
  {
    v11 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "+[AnalyticsStoreProxy fetchAll:moc:]";
      *&buf[12] = 1024;
      *&buf[14] = 19;
      _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_ERROR, "%{public}s::%d:moc nil", buf, 0x12u);
    }

    goto LABEL_7;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36__AnalyticsStoreProxy_fetchAll_moc___block_invoke;
  v12[3] = &unk_1E830E5F0;
  v15 = buf;
  v13 = allCopy;
  v14 = mocCopy;
  [v14 performBlockAndWait:v12];
  v8 = *(*&buf[8] + 40);
  if (v8 && [v8 count])
  {
    v4 = *(*&buf[8] + 40);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  _Block_object_dispose(buf, 8);
  if (v9)
  {
LABEL_7:
    v4 = 0;
  }

  return v4;
}

void __36__AnalyticsStoreProxy_fetchAll_moc___block_invoke(void *a1)
{
  v5 = [AnalyticsStoreProxy fetchRequestForEntity:a1[4]];
  v2 = [AnalyticsStoreProxy fetch:v5 withPredicate:0 moc:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)createEntity:(id)entity moc:(id)moc
{
  v29 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  mocCopy = moc;
  v7 = mocCopy;
  if (!entityCopy)
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "+[AnalyticsStoreProxy createEntity:moc:]";
      *&buf[12] = 1024;
      *&buf[14] = 34;
      v13 = "%{public}s::%d:entityName nil";
LABEL_14:
      _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
    }

LABEL_15:

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (!mocCopy)
  {
    v12 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "+[AnalyticsStoreProxy createEntity:moc:]";
      *&buf[12] = 1024;
      *&buf[14] = 35;
      v13 = "%{public}s::%d:moc nil";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v26 = __Block_byref_object_copy__2;
  v27 = __Block_byref_object_dispose__2;
  v28 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__AnalyticsStoreProxy_createEntity_moc___block_invoke;
  v15[3] = &unk_1E830E5F0;
  v18 = buf;
  v8 = entityCopy;
  v16 = v8;
  v17 = v7;
  [v17 performBlockAndWait:v15];
  v9 = *(*&buf[8] + 40);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136446722;
      v20 = "+[AnalyticsStoreProxy createEntity:moc:]";
      v21 = 1024;
      v22 = 42;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error creating entity:%@", v19, 0x1Cu);
    }
  }

  _Block_object_dispose(buf, 8);
  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

void __40__AnalyticsStoreProxy_createEntity_moc___block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:a1[4] inManagedObjectContext:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = a1[4];
    v6 = a1[5];
    v8 = 136446978;
    v9 = "+[AnalyticsStoreProxy createEntity:moc:]_block_invoke";
    v10 = 1024;
    v11 = 40;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_DEBUG, "%{public}s::%d:[moc: %@] Inserted new %@", &v8, 0x26u);
  }
}

+ (id)fetchFirst:(id)first withPredicate:(id)predicate moc:(id)moc
{
  mocCopy = moc;
  predicateCopy = predicate;
  firstCopy = first;
  [firstCopy setFetchLimit:1];
  v11 = [self fetch:firstCopy withPredicate:predicateCopy moc:mocCopy];

  if (v11)
  {
    firstObject = [v11 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)fetch:(id)fetch withPredicate:(id)predicate moc:(id)moc
{
  v54 = *MEMORY[0x1E69E9840];
  fetchCopy = fetch;
  predicateCopy = predicate;
  mocCopy = moc;
  v10 = mocCopy;
  if (fetchCopy)
  {
    if (mocCopy)
    {
      *v50 = 0;
      *&v50[8] = v50;
      *&v50[16] = 0x3032000000;
      v51 = __Block_byref_object_copy__2;
      v52 = __Block_byref_object_dispose__2;
      v53 = 0;
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__2;
      v38 = __Block_byref_object_dispose__2;
      v39 = 0;
      if (predicateCopy)
      {
        [fetchCopy setPredicate:predicateCopy];
      }

      v11 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v41 = "+[AnalyticsStoreProxy fetch:withPredicate:moc:]";
        v42 = 1024;
        v43 = 69;
        v44 = 2112;
        v45 = fetchCopy;
        _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEBUG, "%{public}s::%d:fetch:%@", buf, 0x1Cu);
      }

      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __47__AnalyticsStoreProxy_fetch_withPredicate_moc___block_invoke;
      v29 = &unk_1E830DB20;
      v32 = v50;
      v30 = v10;
      v12 = fetchCopy;
      v31 = v12;
      v33 = &v34;
      [v30 performBlockAndWait:&v26];
      v13 = v35[5];
      v14 = WALogCategoryDeviceStoreHandle();
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v35[5] localizedDescription];
          userInfo = [v35[5] userInfo];
          *buf = 136447234;
          v41 = "+[AnalyticsStoreProxy fetch:withPredicate:moc:]";
          v42 = 1024;
          v43 = 81;
          v44 = 2112;
          v45 = v12;
          v46 = 2112;
          v47 = localizedDescription;
          v48 = 2112;
          v49 = userInfo;
          _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error fetching %@. %@ %@", buf, 0x30u);
        }
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(*&v50[8] + 40);
          *buf = 136446722;
          v41 = "+[AnalyticsStoreProxy fetch:withPredicate:moc:]";
          v42 = 1024;
          v43 = 82;
          v44 = 2112;
          v45 = v16;
          _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEBUG, "%{public}s::%d:results:%@", buf, 0x1Cu);
        }

        v17 = *(*&v50[8] + 40);
        if (v17)
        {
          v12 = v17;
          v18 = 0;
          goto LABEL_12;
        }

        v15 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          localizedDescription2 = [v35[5] localizedDescription];
          userInfo2 = [v35[5] userInfo];
          *buf = 136447234;
          v41 = "+[AnalyticsStoreProxy fetch:withPredicate:moc:]";
          v42 = 1024;
          v43 = 83;
          v44 = 2112;
          v45 = v12;
          v46 = 2112;
          v47 = localizedDescription2;
          v48 = 2112;
          v49 = userInfo2;
          _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error fetching %@. %@ %@", buf, 0x30u);
        }
      }

      v18 = 1;
LABEL_12:

      _Block_object_dispose(&v34, 8);
      _Block_object_dispose(v50, 8);

      if ((v18 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v20 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v50 = 136446466;
      *&v50[4] = "+[AnalyticsStoreProxy fetch:withPredicate:moc:]";
      *&v50[12] = 1024;
      *&v50[14] = 61;
      v21 = "%{public}s::%d:moc request nil";
      goto LABEL_21;
    }
  }

  else
  {
    v20 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v50 = 136446466;
      *&v50[4] = "+[AnalyticsStoreProxy fetch:withPredicate:moc:]";
      *&v50[12] = 1024;
      *&v50[14] = 60;
      v21 = "%{public}s::%d:fetch request nil";
LABEL_21:
      _os_log_impl(&dword_1C8460000, v20, OS_LOG_TYPE_ERROR, v21, v50, 0x12u);
    }
  }

LABEL_13:
  v12 = 0;
LABEL_14:

  return v12;
}

void __47__AnalyticsStoreProxy_fetch_withPredicate_moc___block_invoke(void *a1)
{
  obj[6] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj[0] = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:obj];
  objc_storeStrong((v4 + 40), obj[0]);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (id)fetchRequestForEntity:(id)entity
{
  v10 = *MEMORY[0x1E69E9840];
  if (entity)
  {
    v3 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:?];
  }

  else
  {
    v5 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446466;
      v7 = "+[AnalyticsStoreProxy fetchRequestForEntity:]";
      v8 = 1024;
      v9 = 91;
      _os_log_impl(&dword_1C8460000, v5, OS_LOG_TYPE_ERROR, "%{public}s::%d:entityName nil", &v6, 0x12u);
    }

    v3 = 0;
  }

  return v3;
}

+ (unint64_t)entityCount:(id)count withPredicate:(id)predicate moc:(id)moc
{
  v35 = *MEMORY[0x1E69E9840];
  countCopy = count;
  predicateCopy = predicate;
  mocCopy = moc;
  v10 = mocCopy;
  if (!countCopy)
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136446466;
    v26 = "+[AnalyticsStoreProxy entityCount:withPredicate:moc:]";
    v27 = 1024;
    v28 = 101;
    v16 = "%{public}s::%d:entityName nil";
LABEL_12:
    v17 = v14;
    v18 = 18;
LABEL_15:
    _os_log_impl(&dword_1C8460000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
    goto LABEL_16;
  }

  if (!mocCopy)
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *buf = 136446466;
    v26 = "+[AnalyticsStoreProxy entityCount:withPredicate:moc:]";
    v27 = 1024;
    v28 = 102;
    v16 = "%{public}s::%d:entityName nil";
    goto LABEL_12;
  }

  v11 = [AnalyticsStoreProxy fetchRequestForEntity:countCopy];
  v12 = v11;
  if (!v11)
  {
    v14 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v26 = "+[AnalyticsStoreProxy entityCount:withPredicate:moc:]";
      v27 = 1024;
      v28 = 105;
      v29 = 2112;
      v30 = countCopy;
      v16 = "%{public}s::%d:fetch request nil for entity:%@";
      v17 = v14;
      v18 = 28;
      goto LABEL_15;
    }

LABEL_16:
    v12 = 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_20:

    goto LABEL_7;
  }

  if (predicateCopy)
  {
    [v11 setPredicate:predicateCopy];
  }

  v24 = 0;
  v13 = [v10 countForFetchRequest:v12 error:&v24];
  v14 = v24;
  if (v14)
  {
    v19 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      entityName = [v12 entityName];
      localizedDescription = [v14 localizedDescription];
      userInfo = [v14 userInfo];
      *buf = 136447234;
      v26 = "+[AnalyticsStoreProxy entityCount:withPredicate:moc:]";
      v27 = 1024;
      v28 = 119;
      v29 = 2112;
      v30 = entityName;
      v31 = 2112;
      v32 = localizedDescription;
      v33 = 2112;
      v34 = userInfo;
      v23 = userInfo;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error countForFetchRequest for entity %@. %@ %@", buf, 0x30u);
    }

    goto LABEL_20;
  }

LABEL_7:

  return v13;
}

+ (id)entity:(id)entity withPredicate:(id)predicate created:(BOOL *)created moc:(id)moc
{
  v32 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  predicateCopy = predicate;
  mocCopy = moc;
  v12 = mocCopy;
  if (!entityCopy)
  {
    v19 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "+[AnalyticsStoreProxy entity:withPredicate:created:moc:]";
      *&buf[12] = 1024;
      *&buf[14] = 125;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:entityName nil", buf, 0x12u);
    }

    goto LABEL_21;
  }

  if (!mocCopy)
  {
    v19 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      *&buf[4] = "+[AnalyticsStoreProxy entity:withPredicate:created:moc:]";
      *&buf[12] = 1024;
      *&buf[14] = 126;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_ERROR, "%{public}s::%d:moc nil", buf, 0x12u);
    }

LABEL_21:

    v17 = 0;
    goto LABEL_13;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31 = 0;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __56__AnalyticsStoreProxy_entity_withPredicate_created_moc___block_invoke;
  v23 = &unk_1E830E8C0;
  v27 = buf;
  v13 = entityCopy;
  v24 = v13;
  v25 = predicateCopy;
  v14 = v12;
  v26 = v14;
  [v14 performBlockAndWait:&v20];
  v15 = *(*&buf[8] + 40);
  if (v15 && [v15 count])
  {
    if (created)
    {
      *created = 0;
    }

    if ([*(*&buf[8] + 40) count] != 1)
    {
      abort();
    }

    firstObject = [*(*&buf[8] + 40) firstObject];
  }

  else
  {
    if (created)
    {
      *created = 1;
    }

    firstObject = [AnalyticsStoreProxy createEntity:v13 moc:v14, v20, v21, v22, v23];
  }

  v17 = firstObject;

  _Block_object_dispose(buf, 8);
LABEL_13:

  return v17;
}

void __56__AnalyticsStoreProxy_entity_withPredicate_created_moc___block_invoke(void *a1)
{
  v5 = [AnalyticsStoreProxy fetchRequestForEntity:a1[4]];
  v2 = [AnalyticsStoreProxy fetch:v5 withPredicate:a1[5] moc:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)fetchRequestForEntityWithOffset:(id)offset limit:(unint64_t)limit offset:(unint64_t)a5 prefetch:(id)prefetch
{
  prefetchCopy = prefetch;
  v10 = [AnalyticsStoreProxy fetchRequestForEntity:offset];
  [v10 setFetchLimit:limit];
  [v10 setFetchOffset:a5];
  if (prefetchCopy)
  {
    [v10 setRelationshipKeyPathsForPrefetching:prefetchCopy];
  }

  return v10;
}

+ (id)fetchRequestForEntityWithBatchSize:(id)size batchSize:(unint64_t)batchSize prefetch:(id)prefetch
{
  prefetchCopy = prefetch;
  v8 = [AnalyticsStoreProxy fetchRequestForEntity:size];
  [v8 setFetchBatchSize:batchSize];
  if (prefetchCopy)
  {
    [v8 setRelationshipKeyPathsForPrefetching:prefetchCopy];
  }

  return v8;
}

+ (id)predicateForEntityWithAgeOlderThan:(id)than dateAttribute:(id)attribute olderThan:(double)olderThan
{
  v26 = *MEMORY[0x1E69E9840];
  thanCopy = than;
  v8 = MEMORY[0x1E695DF00];
  attributeCopy = attribute;
  date = [v8 date];
  v11 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v11 setDay:-(olderThan / 86400.0)];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v13 = [currentCalendar dateByAddingComponents:v11 toDate:date options:0];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < %@", attributeCopy, v13];

  v15 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v14 description];
    *buf = 136446978;
    v19 = "+[AnalyticsStoreProxy predicateForEntityWithAgeOlderThan:dateAttribute:olderThan:]";
    v20 = 1024;
    v21 = 183;
    v22 = 2112;
    v23 = thanCopy;
    v24 = 2112;
    v25 = v16;
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Batch deleted predicate on %@: %@", buf, 0x26u);
  }

  return v14;
}

+ (BOOL)batchDelete:(id)delete withPredicate:(id)predicate withFetchRequest:(id)request moc:(id)moc
{
  v64 = *MEMORY[0x1E69E9840];
  deleteCopy = delete;
  predicateCopy = predicate;
  requestCopy = request;
  mocCopy = moc;
  if (requestCopy)
  {
    v13 = requestCopy;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:deleteCopy];
  }

  v14 = v13;
  if (predicateCopy)
  {
    [v13 setPredicate:predicateCopy];
    predicateFormat = [predicateCopy predicateFormat];
  }

  else
  {
    predicateFormat = 0;
  }

  v16 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v14];
  [v16 setResultType:1];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__2;
  v50 = __Block_byref_object_dispose__2;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__2;
  v44 = __Block_byref_object_dispose__2;
  v45 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __70__AnalyticsStoreProxy_batchDelete_withPredicate_withFetchRequest_moc___block_invoke;
  v35[3] = &unk_1E830DB20;
  v38 = &v46;
  v17 = mocCopy;
  v36 = v17;
  v18 = v16;
  v37 = v18;
  v39 = &v40;
  [v17 performBlockAndWait:v35];
  if (v41[5])
  {
    v25 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v41[5] localizedDescription];
      userInfo = [v41[5] userInfo];
      *buf = 136447490;
      v53 = "+[AnalyticsStoreProxy batchDelete:withPredicate:withFetchRequest:moc:]";
      v54 = 1024;
      v55 = 212;
      v56 = 2112;
      v57 = deleteCopy;
      v58 = 2112;
      v59 = predicateFormat;
      v60 = 2112;
      v61 = localizedDescription;
      v62 = 2112;
      v30 = userInfo;
      v63 = userInfo;
      _os_log_impl(&dword_1C8460000, v25, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error executing batch delete for entity[%@] predicateFormat[%@]. %@ %@", buf, 0x3Au);
    }
  }

  else
  {
    result = [v47[5] result];
    v20 = [result count] == 0;

    if (v20)
    {
      v24 = 1;
      goto LABEL_15;
    }

    if ([v47[5] resultType] == 1)
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __70__AnalyticsStoreProxy_batchDelete_withPredicate_withFetchRequest_moc___block_invoke_64;
      v31[3] = &unk_1E830E910;
      v33 = &v46;
      v32 = v17;
      v34 = &v40;
      [v32 performBlockAndWait:v31];
      v21 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        result2 = [v47[5] result];
        v23 = [result2 count];
        *buf = 136447234;
        v53 = "+[AnalyticsStoreProxy batchDelete:withPredicate:withFetchRequest:moc:]";
        v54 = 1024;
        v55 = 226;
        v56 = 2048;
        v57 = v23;
        v58 = 2112;
        v59 = deleteCopy;
        v60 = 2112;
        v61 = predicateFormat;
        _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Batch deleted %lu MOs of entity[%@] predicateFormat[%@]", buf, 0x30u);
      }

      v24 = 1;
      v25 = v32;
      goto LABEL_13;
    }

    v25 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      resultType = [v47[5] resultType];
      *buf = 136447234;
      v53 = "+[AnalyticsStoreProxy batchDelete:withPredicate:withFetchRequest:moc:]";
      v54 = 1024;
      v55 = 215;
      v56 = 2112;
      v57 = deleteCopy;
      v58 = 2112;
      v59 = predicateFormat;
      v60 = 2048;
      v61 = resultType;
      _os_log_impl(&dword_1C8460000, v25, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error executing batch delete for entity[%@] predicateFormat[%@]. Unexpected ResultType %lu ", buf, 0x30u);
    }
  }

  v24 = 0;
LABEL_13:

LABEL_15:
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  return v24;
}

void __70__AnalyticsStoreProxy_batchDelete_withPredicate_withFetchRequest_moc___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __70__AnalyticsStoreProxy_batchDelete_withPredicate_withFetchRequest_moc___block_invoke_64(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) result];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__AnalyticsStoreProxy_batchDelete_withPredicate_withFetchRequest_moc___block_invoke_2;
  v5[3] = &unk_1E830E8E8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v5];
}

void __70__AnalyticsStoreProxy_batchDelete_withPredicate_withFetchRequest_moc___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = [v3 existingObjectWithID:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5 && ([v5 isFault] & 1) == 0)
  {
    [*(a1 + 32) refreshObject:v5 mergeChanges:1];
  }
}

+ (BOOL)batchUpdate:(id)update withPredicate:(id)predicate propertiesToUpdate:(id)toUpdate moc:(id)moc
{
  v30 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  predicateCopy = predicate;
  toUpdateCopy = toUpdate;
  mocCopy = moc;
  if (updateCopy)
  {
    v13 = toUpdateCopy == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (v13)
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v23 = "+[AnalyticsStoreProxy batchUpdate:withPredicate:propertiesToUpdate:moc:]";
      v24 = 1024;
      v25 = 273;
      v26 = 2112;
      v27 = updateCopy;
      v28 = 2112;
      v29 = toUpdateCopy;
      _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, "%{public}s::%d:entityName %@ or propertiesToUpdate %@ nil", buf, 0x26u);
    }
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72__AnalyticsStoreProxy_batchUpdate_withPredicate_propertiesToUpdate_moc___block_invoke;
    v17[3] = &unk_1E830E938;
    v18 = updateCopy;
    v19 = toUpdateCopy;
    v20 = predicateCopy;
    v21 = mocCopy;
    [v21 performBlockAndWait:v17];

    v15 = v18;
  }

  return v14;
}

void __72__AnalyticsStoreProxy_batchUpdate_withPredicate_propertiesToUpdate_moc___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695D560] batchUpdateRequestWithEntityName:*(a1 + 32)];
  [v2 setPropertiesToUpdate:*(a1 + 40)];
  [v2 setPredicate:*(a1 + 48)];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = [v3 predicateFormat];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 56) persistentStoreCoordinator];
  v6 = [v5 persistentStores];
  [v2 setAffectedStores:v6];

  [v2 setResultType:1];
  v7 = *(a1 + 56);
  v22 = 0;
  v8 = [v7 executeRequest:v2 error:&v22];
  v9 = v22;
  v10 = [v8 result];
  v11 = objc_opt_respondsToSelector();

  if ((v11 & 1) == 0)
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136446466;
    v24 = "+[AnalyticsStoreProxy batchUpdate:withPredicate:propertiesToUpdate:moc:]_block_invoke";
    v25 = 1024;
    v26 = 268;
    v16 = "%{public}s::%d:batchUpdate results empty";
LABEL_11:
    _os_log_impl(&dword_1C8460000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x12u);
    goto LABEL_12;
  }

  v12 = [v8 result];
  v13 = [v12 count];

  if (!v13)
  {
    v15 = WALogCategoryDeviceStoreHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 136446466;
    v24 = "+[AnalyticsStoreProxy batchUpdate:withPredicate:propertiesToUpdate:moc:]_block_invoke";
    v25 = 1024;
    v26 = 265;
    v16 = "%{public}s::%d:batchUpdate count is 0";
    goto LABEL_11;
  }

  v14 = *(a1 + 56);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__AnalyticsStoreProxy_batchUpdate_withPredicate_propertiesToUpdate_moc___block_invoke_2;
  v17[3] = &unk_1E830E938;
  v18 = v8;
  v19 = *(a1 + 56);
  v20 = *(a1 + 32);
  v21 = v4;
  [v14 performBlockAndWait:v17];

  v15 = v18;
LABEL_12:
}

void __72__AnalyticsStoreProxy_batchUpdate_withPredicate_propertiesToUpdate_moc___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1 + 32) result];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v33 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v20;
    *&v4 = 136447234;
    v17 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = *(a1 + 40);
        v18 = 0;
        v10 = [v9 existingObjectWithID:v8 error:{&v18, v17}];
        v11 = v18;
        [*(a1 + 40) refreshObject:v10 mergeChanges:1];
        v12 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = [*(a1 + 32) result];
          v14 = [v13 count];
          v15 = *(a1 + 48);
          v16 = *(a1 + 56);
          *buf = v17;
          v24 = "+[AnalyticsStoreProxy batchUpdate:withPredicate:propertiesToUpdate:moc:]_block_invoke_2";
          v25 = 1024;
          v26 = 261;
          v27 = 2048;
          v28 = v14;
          v29 = 2112;
          v30 = v15;
          v31 = 2112;
          v32 = v16;
          _os_log_impl(&dword_1C8460000, v12, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Batch updated %lu MOs of entity[%@] predicateFormat[%@]", buf, 0x30u);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v19 objects:v33 count:16];
    }

    while (v5);
  }
}

+ (id)fetchPropertiesForEntity:(id)entity properties:(id)properties predicate:(id)predicate moc:(id)moc
{
  v27 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  propertiesCopy = properties;
  predicateCopy = predicate;
  mocCopy = moc;
  v13 = [AnalyticsStoreProxy fetchRequestForEntity:entityCopy];
  v14 = v13;
  if (v13)
  {
    if (mocCopy)
    {
      [v13 setResultType:2];
      [v14 setReturnsDistinctResults:1];
      [v14 setPropertiesToFetch:propertiesCopy];
      v15 = [AnalyticsStoreProxy fetch:v14 withPredicate:predicateCopy moc:mocCopy];
      goto LABEL_4;
    }

    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446466;
      v22 = "+[AnalyticsStoreProxy fetchPropertiesForEntity:properties:predicate:moc:]";
      v23 = 1024;
      v24 = 286;
      v18 = "%{public}s::%d:moc nil";
      v19 = v17;
      v20 = 18;
      goto LABEL_11;
    }
  }

  else
  {
    v17 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446722;
      v22 = "+[AnalyticsStoreProxy fetchPropertiesForEntity:properties:predicate:moc:]";
      v23 = 1024;
      v24 = 285;
      v25 = 2112;
      v26 = entityCopy;
      v18 = "%{public}s::%d:fetch request nil for entity:%@";
      v19 = v17;
      v20 = 28;
LABEL_11:
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_ERROR, v18, &v21, v20);
    }
  }

  v15 = 0;
LABEL_4:

  return v15;
}

+ (id)fetchPropertiesForEntityWithLimitAndSortDescriptor:(id)descriptor properties:(id)properties predicate:(id)predicate fetchLimit:(unint64_t)limit sortDescriptor:(id)sortDescriptor returnDistinct:(BOOL)distinct moc:(id)moc
{
  distinctCopy = distinct;
  v37 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  propertiesCopy = properties;
  predicateCopy = predicate;
  sortDescriptorCopy = sortDescriptor;
  mocCopy = moc;
  v18 = [AnalyticsStoreProxy fetchRequestForEntity:descriptorCopy];
  v19 = v18;
  if (!v18)
  {
    v24 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v32 = "+[AnalyticsStoreProxy fetchPropertiesForEntityWithLimitAndSortDescriptor:properties:predicate:fetchLimit:sortDescriptor:returnDistinct:moc:]";
      v33 = 1024;
      v34 = 306;
      v35 = 2112;
      v36 = descriptorCopy;
      v26 = "%{public}s::%d:fetch request nil for entity:%@";
      v27 = v24;
      v28 = 28;
LABEL_18:
      _os_log_impl(&dword_1C8460000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
    }

LABEL_19:
    v23 = 0;
    v22 = predicateCopy;
    goto LABEL_11;
  }

  if (!mocCopy)
  {
    v24 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v32 = "+[AnalyticsStoreProxy fetchPropertiesForEntityWithLimitAndSortDescriptor:properties:predicate:fetchLimit:sortDescriptor:returnDistinct:moc:]";
      v33 = 1024;
      v34 = 307;
      v26 = "%{public}s::%d:moc nil";
      v27 = v24;
      v28 = 18;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  [v18 setResultType:2];
  [v19 setReturnsDistinctResults:distinctCopy];
  [v19 setPropertiesToFetch:propertiesCopy];
  if (sortDescriptorCopy)
  {
    v30 = sortDescriptorCopy;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    [v19 setSortDescriptors:v20];
  }

  if (limit)
  {
    [v19 setFetchLimit:limit];
  }

  v21 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v32 = "+[AnalyticsStoreProxy fetchPropertiesForEntityWithLimitAndSortDescriptor:properties:predicate:fetchLimit:sortDescriptor:returnDistinct:moc:]";
    v33 = 1024;
    v34 = 321;
    v35 = 2112;
    v36 = v19;
    _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_DEBUG, "%{public}s::%d:request:%@", buf, 0x1Cu);
  }

  v22 = predicateCopy;
  v23 = [AnalyticsStoreProxy fetch:v19 withPredicate:predicateCopy moc:mocCopy];
  v24 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v32 = "+[AnalyticsStoreProxy fetchPropertiesForEntityWithLimitAndSortDescriptor:properties:predicate:fetchLimit:sortDescriptor:returnDistinct:moc:]";
    v33 = 1024;
    v34 = 323;
    v35 = 2112;
    v36 = v23;
    _os_log_impl(&dword_1C8460000, v24, OS_LOG_TYPE_DEBUG, "%{public}s::%d:results:%@", buf, 0x1Cu);
  }

LABEL_11:

  return v23;
}

@end