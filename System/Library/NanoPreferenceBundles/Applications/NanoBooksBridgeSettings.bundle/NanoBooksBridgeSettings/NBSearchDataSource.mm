@interface NBSearchDataSource
- (BOOL)_isSearchCancelled;
- (NBSearchDataSource)init;
- (unint64_t)count;
- (void)_combineSearchResults;
- (void)dealloc;
- (void)filterResultsUsingSearchString:(id)string completion:(id)completion;
@end

@implementation NBSearchDataSource

- (NBSearchDataSource)init
{
  v9.receiver = self;
  v9.super_class = NBSearchDataSource;
  v2 = [(NBSearchDataSource *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
    v5 = +[MPMediaQuery nb_storeOnlyAudiobooksQuery];
    searchQuery = v2->_searchQuery;
    v2->_searchQuery = v5;

    familyDSIDs = v2->_familyDSIDs;
    v2->_familyDSIDs = &__NSArray0__struct;
  }

  return v2;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = NBSearchDataSource;
  [(NBSearchDataSource *)&v3 dealloc];
}

- (unint64_t)count
{
  result = [(NSString *)self->_searchString length];
  if (result)
  {
    results = self->_results;

    return [(NSArray *)results count];
  }

  return result;
}

- (void)filterResultsUsingSearchString:(id)string completion:(id)completion
{
  stringCopy = string;
  completionCopy = completion;
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  [(NSOperationQueue *)self->_operationQueue waitUntilAllOperationsAreFinished];
  mediaSearchOperation = self->_mediaSearchOperation;
  self->_mediaSearchOperation = 0;

  jaliscoSearchOperation = self->_jaliscoSearchOperation;
  self->_jaliscoSearchOperation = 0;

  v11 = NBDefaultLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = stringCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "Starting search for term '%@'", buf, 0xCu);
  }

  results = self->_results;
  self->_results = 0;

  v13 = [stringCopy copy];
  searchString = self->_searchString;
  self->_searchString = v13;

  if ([(NSString *)self->_searchString length])
  {
    searchQuery = [(NBSearchDataSource *)self searchQuery];
    nb_existingSearchPredicate = [searchQuery nb_existingSearchPredicate];
    if (nb_existingSearchPredicate)
    {
      [searchQuery removeFilterPredicate:nb_existingSearchPredicate];
    }

    [searchQuery setCollectionPropertiesToFetch:0];
    v17 = self->_searchString;
    v18 = [NSSet setWithObjects:MPMediaItemPropertyArtist, MPMediaItemPropertyTitle, 0];
    v19 = [_MPMediaSearchStringPredicate predicateWithSearchString:v17 forProperties:v18];

    [searchQuery addFilterPredicate:v19];
    v20 = objc_opt_new();
    v21 = [[_NBMediaSearchOperation alloc] initWithSearchDataSource:self searchString:stringCopy];
    v22 = self->_mediaSearchOperation;
    self->_mediaSearchOperation = v21;

    [v20 addObject:self->_mediaSearchOperation];
    familyDSIDs = [(NBSearchDataSource *)self familyDSIDs];
    v24 = [familyDSIDs count] == 0;

    if (!v24)
    {
      v25 = [[_NBJaliscoSearchOperation alloc] initWithSearchDataSource:self searchString:stringCopy];
      v26 = self->_jaliscoSearchOperation;
      self->_jaliscoSearchOperation = v25;

      [v20 addObject:self->_jaliscoSearchOperation];
    }

    [(NSOperationQueue *)self->_operationQueue addOperations:v20 waitUntilFinished:0];
    objc_initWeak(buf, self);
    operationQueue = self->_operationQueue;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_E358;
    v29[3] = &unk_20C00;
    objc_copyWeak(&v32, buf);
    v31 = completionCopy;
    v30 = stringCopy;
    [(NSOperationQueue *)operationQueue addBarrierBlock:v29];

    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);
  }

  else if (completionCopy)
  {
    v28 = NBDefaultLog(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = stringCopy;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "Completed search for term '%@'", buf, 0xCu);
    }

    completionCopy[2](completionCopy);
  }
}

- (BOOL)_isSearchCancelled
{
  mediaSearchOperation = self->_mediaSearchOperation;
  if (mediaSearchOperation && ([(_NBMediaSearchOperation *)mediaSearchOperation isCancelled]& 1) != 0)
  {
    LOBYTE(jaliscoSearchOperation) = 1;
  }

  else
  {
    jaliscoSearchOperation = self->_jaliscoSearchOperation;
    if (jaliscoSearchOperation)
    {

      LOBYTE(jaliscoSearchOperation) = [(_NBJaliscoSearchOperation *)jaliscoSearchOperation isCancelled];
    }
  }

  return jaliscoSearchOperation;
}

- (void)_combineSearchResults
{
  mediaSearchOperation = self->_mediaSearchOperation;
  if (!mediaSearchOperation || ([(_NBMediaSearchOperation *)mediaSearchOperation isCancelled]& 1) == 0)
  {
    jaliscoSearchOperation = self->_jaliscoSearchOperation;
    if (!jaliscoSearchOperation || ([(_NBJaliscoSearchOperation *)jaliscoSearchOperation isCancelled]& 1) == 0)
    {
      selfCopy = self;
      results = [(_NBMediaSearchOperation *)self->_mediaSearchOperation results];
      v6 = +[NSMutableSet set];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v7 = results;
      v8 = [v7 countByEnumeratingWithState:&v68 objects:v78 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v69;
        v11 = MPMediaItemPropertyStoreID;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v69 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v68 + 1) + 8 * i);
            objc_opt_class();
            v14 = [v13 valueForProperty:v11];
            v15 = BUDynamicCast();

            if (v15)
            {
              [v6 addObject:v15];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v68 objects:v78 count:16];
        }

        while (v9);
      }

      v16 = selfCopy;
      results2 = [(_NBJaliscoSearchOperation *)selfCopy->_jaliscoSearchOperation results];
      if ([v7 count] && !objc_msgSend(results2, "count"))
      {
        v47 = NBDefaultLog(0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = [v7 count];
          searchString = [(NBSearchDataSource *)selfCopy searchString];
          *buf = 134218242;
          v73 = v48;
          v16 = selfCopy;
          v74 = 2112;
          v75 = searchString;
          _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "Only media items(%lu) found for search: %@", buf, 0x16u);
        }

        v50 = v7;
      }

      else
      {
        if (![results2 count] || objc_msgSend(v7, "count"))
        {
          v18 = [v7 count];
          if (v18 && (v18 = [results2 count]) != 0)
          {
            v19 = NBDefaultLog(v18);
            v65 = results2;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = [results2 count];
              v21 = [v7 count];
              searchString2 = [(NBSearchDataSource *)selfCopy searchString];
              *buf = 134218498;
              v73 = v20;
              v74 = 2048;
              v75 = v21;
              v76 = 2112;
              v77 = searchString2;
              _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Combining jalisco items (%lu) and media items (%lu) for search: %@", buf, 0x20u);

              results2 = v65;
            }

            v23 = objc_opt_new();
            objectEnumerator = [v7 objectEnumerator];
            objectEnumerator2 = [results2 objectEnumerator];
            v66 = objectEnumerator;
            nextObject = [objectEnumerator nextObject];
            nextObject2 = [objectEnumerator2 nextObject];
            v29 = nextObject2;
            if (nextObject)
            {
              v30 = selfCopy;
              if (nextObject2)
              {
                *&v28 = 138412290;
                v63 = v28;
                while (1)
                {
                  if ([(NBSearchDataSource *)v30 _isSearchCancelled])
                  {
                    goto LABEL_49;
                  }

                  storeID = [v29 storeID];
                  v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [storeID integerValue]);
                  v33 = [v6 containsObject:v32];

                  if (v33)
                  {
                    break;
                  }

                  title = [v29 title];
                  if (!title || (v37 = title, [nextObject title], v38 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "title"), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v38, "localizedCaseInsensitiveCompare:", v39), v39, v38, v37, v41 = v40 + 1 == 0, v30 = selfCopy, !v41))
                  {
                    [v23 addObject:v29];
LABEL_33:
                    nextObject3 = [objectEnumerator2 nextObject];
                    v43 = v29;
                    v29 = nextObject3;
                    goto LABEL_34;
                  }

                  [v23 addObject:nextObject];
                  nextObject4 = [v66 nextObject];
                  v43 = nextObject;
                  nextObject = nextObject4;
LABEL_34:

                  if (!nextObject || !v29)
                  {
                    goto LABEL_48;
                  }
                }

                v35 = NBDefaultLog(v34);
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v63;
                  v73 = v29;
                  _os_log_debug_impl(&dword_0, v35, OS_LOG_TYPE_DEBUG, "Skipping jalisco item %@", buf, 0xCu);
                }

                goto LABEL_33;
              }
            }

LABEL_48:
            if (nextObject)
            {
              do
              {
LABEL_49:
                [v23 addObject:nextObject];
                nextObject5 = [v66 nextObject];

                nextObject = nextObject5;
              }

              while (nextObject5);
            }

            if (v29)
            {
              *&v28 = 138412290;
              v64 = v28;
              do
              {
                storeID2 = [v29 storeID];
                v56 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [storeID2 integerValue]);
                v57 = [v6 containsObject:v56];

                if ((v57 & 1) == 0)
                {
                  v59 = NBDefaultLog(v58);
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = v64;
                    v73 = v29;
                    _os_log_debug_impl(&dword_0, v59, OS_LOG_TYPE_DEBUG, "Skipping jalisco item %@", buf, 0xCu);
                  }

                  [v23 addObject:v29];
                }

                nextObject6 = [objectEnumerator2 nextObject];

                v29 = nextObject6;
              }

              while (nextObject6);
            }

            v61 = [v23 copy];
            results = selfCopy->_results;
            selfCopy->_results = v61;

            results2 = v65;
          }

          else
          {
            v45 = NBDefaultLog(v18);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              searchString3 = [(NBSearchDataSource *)selfCopy searchString];
              *buf = 138412290;
              v73 = searchString3;
              _os_log_impl(&dword_0, v45, OS_LOG_TYPE_INFO, "No jalisco or media items found for search:%@", buf, 0xCu);
            }

            v23 = selfCopy->_results;
            selfCopy->_results = &__NSArray0__struct;
          }

          goto LABEL_58;
        }

        v51 = NBDefaultLog(0);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v52 = [results2 count];
          searchString4 = [(NBSearchDataSource *)selfCopy searchString];
          *buf = 134218242;
          v73 = v52;
          v16 = selfCopy;
          v74 = 2112;
          v75 = searchString4;
          _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "Only jalisco items(%lu) found for search: %@", buf, 0x16u);
        }

        v50 = results2;
      }

      v23 = v16->_results;
      v16->_results = v50;
LABEL_58:
    }
  }
}

@end