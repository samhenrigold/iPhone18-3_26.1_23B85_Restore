@interface HDBatchedQueryServer
- (id)_queryCursorWithQueryCursor:(void *)cursor state:;
- (int64_t)batchObjectsWithEnumerator:(id)enumerator error:(id *)error handler:(id)handler;
- (int64_t)batchObjectsWithEnumerator:(id)enumerator includeDeletedObjects:(BOOL)objects error:(id *)error batchHandler:(id)handler;
- (int64_t)batchObjectsWithMultitypeQueryCursor:(id)cursor includeDeletedObjects:(BOOL)objects limit:(unint64_t)limit error:(id *)error batchHandler:(id)handler;
@end

@implementation HDBatchedQueryServer

- (int64_t)batchObjectsWithEnumerator:(id)enumerator error:(id *)error handler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__HDBatchedQueryServer_batchObjectsWithEnumerator_error_handler___block_invoke;
  v12[3] = &unk_278629470;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [(HDBatchedQueryServer *)self batchObjectsWithEnumerator:enumerator includeDeletedObjects:0 error:error batchHandler:v12];

  return v10;
}

- (int64_t)batchObjectsWithEnumerator:(id)enumerator includeDeletedObjects:(BOOL)objects error:(id *)error batchHandler:(id)handler
{
  objectsCopy = objects;
  enumeratorCopy = enumerator;
  handlerCopy = handler;
  if (self)
  {
    client = [(HDQueryServer *)self client];
    sourceBundleIdentifier = [client sourceBundleIdentifier];

    if ([sourceBundleIdentifier hasPrefix:@"com.appleinternal.health.Lime."])
    {
      v14 = 1;
    }

    else
    {
      v14 = [sourceBundleIdentifier hasPrefix:@"com.apple.Research."];
    }

    sampleType = [(HDQueryServer *)self sampleType];
    electrocardiogramType = [MEMORY[0x277CCD3A8] electrocardiogramType];
    if ([sampleType isEqual:electrocardiogramType] && (v14 & 1) != 0)
    {
      errorCopy = error;
      v17 = enumeratorCopy;
      v18 = objectsCopy;
      client2 = [(HDQueryServer *)self client];
      configuration = [client2 configuration];
      [configuration applicationSDKVersionToken];
      v21 = dyld_version_token_at_least();

      if ((v21 & 1) == 0)
      {
        aBlock = MEMORY[0x277D85DD0];
        p_aBlock = 3221225472;
        v71 = __68__HDBatchedQueryServer__processBatchHandlerForResearchAppECGAccess___block_invoke;
        v72 = &unk_278629470;
        v73 = handlerCopy;
        handlerCopy = _Block_copy(&aBlock);
      }

      objectsCopy = v18;
      enumeratorCopy = v17;
      error = errorCopy;
    }

    else
    {
    }

    v22 = _Block_copy(handlerCopy);
  }

  else
  {
    v22 = 0;
  }

  sampleType2 = [(HDQueryServer *)self sampleType];
  if (sampleType2)
  {
    v24 = [(HDQueryServer *)self authorizationStatusRecordForType:sampleType2 error:error];
    v25 = v24;
    if (v24)
    {
      if ([v24 canRead])
      {
        restrictedSourceEntities = [v25 restrictedSourceEntities];
        [enumeratorCopy setRestrictedSourceEntities:restrictedSourceEntities];

        if (objectsCopy)
        {
          restrictedBundleIdentifier = [v25 restrictedBundleIdentifier];

          if (!restrictedBundleIdentifier)
          {
            deletedObjectBaselineAnchor = [v25 deletedObjectBaselineAnchor];
            [enumeratorCopy setDeletedObjectsAnchor:deletedObjectBaselineAnchor];
          }
        }

        v29 = _Block_copy(self->_unitTest_queryServerWillSendBatchHandler);
        v30 = _Block_copy(self->_unitTest_queryServerObjectEnumerationHandler);
        v79[0] = 0;
        v79[1] = v79;
        v79[2] = 0x2020000000;
        v79[3] = 0;
        if (v29)
        {
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __92__HDBatchedQueryServer_batchObjectsWithEnumerator_includeDeletedObjects_error_batchHandler___block_invoke;
          v75[3] = &unk_278629498;
          v31 = v29;
          v75[4] = self;
          v76 = v31;
          v77 = v22;
          v78 = v79;
          v22 = _Block_copy(v75);
        }

        aBlock = 0;
        p_aBlock = &aBlock;
        v71 = 0x3032000000;
        v72 = __Block_byref_object_copy__162;
        v73 = __Block_byref_object_dispose__162;
        v32 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:200];
        v33 = 0;
        v74 = v32;
        v63 = 0;
        v64 = &v63;
        v65 = 0x3032000000;
        v66 = __Block_byref_object_copy__162;
        v67 = __Block_byref_object_dispose__162;
        if (objectsCopy)
        {
          v33 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:200];
        }

        v34 = v30;
        v43 = v29;
        v68 = v33;
        v59 = 0;
        v60 = &v59;
        v61 = 0x2020000000;
        v62 = 0;
        v55 = 0;
        v56 = &v55;
        v57 = 0x2020000000;
        anchor = [enumeratorCopy anchor];
        longLongValue = [anchor longLongValue];

        v58 = longLongValue;
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __92__HDBatchedQueryServer_batchObjectsWithEnumerator_includeDeletedObjects_error_batchHandler___block_invoke_297;
        v45[3] = &unk_2786294C0;
        v45[4] = self;
        v48 = &aBlock;
        v49 = &v59;
        v50 = &v63;
        v54 = objectsCopy;
        v53 = a2;
        v22 = v22;
        v46 = v22;
        v51 = &v55;
        v52 = v79;
        v37 = v34;
        v38 = objectsCopy;
        v39 = v37;
        v47 = v37;
        if ([enumeratorCopy enumerateIncludingDeletedObjects:v38 error:error handler:v45])
        {
          if ([(HDQueryServer *)self _shouldStopProcessingQuery])
          {
            v40 = 4;
          }

          else if (v60[3])
          {
            v40 = 3;
          }

          else
          {
            (*(v22 + 2))(v22, *(p_aBlock + 40), v64[5], v56[3], 1);
            v40 = 0;
          }
        }

        else
        {
          v40 = 1;
        }

        _Block_object_dispose(&v55, 8);
        _Block_object_dispose(&v59, 8);
        _Block_object_dispose(&v63, 8);

        _Block_object_dispose(&aBlock, 8);
        _Block_object_dispose(v79, 8);
      }

      else
      {
        v40 = 2;
      }
    }

    else
    {
      v40 = 1;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 description:@"Missing sample type for query"];
    v40 = 1;
  }

  return v40;
}

void __92__HDBatchedQueryServer_batchObjectsWithEnumerator_includeDeletedObjects_error_batchHandler___block_invoke(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[4];
  v8 = a1[5];
  v10 = *(*(a1[7] + 8) + 24);
  v11 = *(v8 + 16);
  v12 = a3;
  v13 = a2;
  v11(v8, v9, v13, a5, v10);
  (*(a1[6] + 16))();
}

uint64_t __92__HDBatchedQueryServer_batchObjectsWithEnumerator_includeDeletedObjects_error_batchHandler___block_invoke_297(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if ([*(a1 + 32) _shouldStopProcessingQuery])
  {
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

LABEL_3:
    v11 = 0;
    goto LABEL_33;
  }

  if (![*(a1 + 32) _shouldSuspendQuery])
  {
    if (v7 | v8)
    {
      if (!v7)
      {
        v11 = 1;
        if (!v8 || (*(a1 + 104) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      v16 = a1 + 56;
      v17 = [*(*(*(a1 + 56) + 8) + 40) count];
      if (([*(*(*(a1 + 72) + 8) + 40) count] + v17) >= 0xC8)
      {
        (*(*(a1 + 40) + 16))();
        v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:200];
        v19 = *(*(a1 + 56) + 8);
        v20 = *(v19 + 40);
        *(v19 + 40) = v18;

        v21 = *(a1 + 104);
        if (v21 == 1)
        {
          v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:200];
        }

        else
        {
          v22 = 0;
        }

        objc_storeStrong((*(*(a1 + 72) + 8) + 40), v22);
        if (v21)
        {
        }

        *(*(*(a1 + 80) + 8) + 24) = 0;
      }

      v23 = v7;
      if (v7 || v8 && (v16 = a1 + 72, v23 = v8, (*(a1 + 104) & 1) != 0))
      {
        [*(*(*v16 + 8) + 40) addObject:v23];
      }

      ++*(*(*(a1 + 88) + 8) + 24);
      v24 = *(*(a1 + 80) + 8);
      if (*(v24 + 24) < a4)
      {
        *(v24 + 24) = a4;
      }

      v25 = *(a1 + 48);
      if (v25)
      {
        if (v7)
        {
          v26 = v7;
        }

        else
        {
          v26 = v8;
        }

        (*(v25 + 16))(v25, *(a1 + 32), v26, *(*(*(a1 + 88) + 8) + 24));
      }
    }

    else
    {
      v28 = [MEMORY[0x277CCA890] currentHandler];
      [v28 handleFailureInMethod:*(a1 + 96) object:*(a1 + 32) file:@"HDBatchedQueryServer.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"sample != nil || deletedObject != nil"}];
    }

    v11 = 1;
    goto LABEL_33;
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:200];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v11 = *(a1 + 104);
  if (v11 == 1)
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:200];
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), v15);
  if (v11)
  {

    goto LABEL_3;
  }

LABEL_33:

  return v11;
}

void __68__HDBatchedQueryServer__processBatchHandlerForResearchAppECGAccess___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 hk_map:&__block_literal_global_196];
  (*(*(a1 + 32) + 16))();
}

id __68__HDBatchedQueryServer__processBatchHandlerForResearchAppECGAccess___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 metadata];
  if (v3)
  {
    v4 = [v2 metadata];
    v5 = [v4 mutableCopy];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "privateClassification")}];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCDFD8]];

  [v2 _setMetadata:v5];

  return v2;
}

- (int64_t)batchObjectsWithMultitypeQueryCursor:(id)cursor includeDeletedObjects:(BOOL)objects limit:(unint64_t)limit error:(id *)error batchHandler:(id)handler
{
  objectsCopy = objects;
  v144 = *MEMORY[0x277D85DE8];
  cursorCopy = cursor;
  handlerCopy = handler;
  v132 = cursorCopy;
  queryDescriptors = [cursorCopy queryDescriptors];
  v12 = objc_alloc(MEMORY[0x277CBEB18]);
  v13 = [queryDescriptors count];
  v14 = v12;
  errorCopy = error;
  v130 = [v14 initWithCapacity:v13];
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v16 = queryDescriptors;
  v17 = [v16 countByEnumeratingWithState:&v138 objects:v143 count:16];
  v129 = v16;
  errorCopy2 = error;
  selfCopy = self;
  if (v17)
  {
    v18 = v17;
    v19 = *v139;
    v20 = &selRef__queue_enqueueConceptAuthorizationRequestWithIdentifier_bundleIdentifier_objectType_promptIfNeeded_authorizationNeededHandler_completionHandler_;
    v125 = *v139;
    do
    {
      v21 = 0;
      v123 = v20[43];
      v127 = v18;
      do
      {
        if (*v139 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v138 + 1) + 8 * v21);
        sampleType = [v22 sampleType];
        v24 = [(HDQueryServer *)self authorizationStatusRecordForType:sampleType error:errorCopy];

        if (!v24)
        {
          goto LABEL_49;
        }

        if (![v24 canRead])
        {
          goto LABEL_27;
        }

        if (objectsCopy && ([v24 restrictedBundleIdentifier], v25 = objc_claimAutoreleasedReturnValue(), v25, !v25))
        {
          v50 = MEMORY[0x277D10B18];
          [HDDataEntity disambiguatedSQLForProperty:@"data_id"];
          v52 = v51 = errorCopy;
          deletedObjectBaselineAnchor = [v24 deletedObjectBaselineAnchor];
          v136 = [v50 predicateWithProperty:v52 greaterThanValue:deletedObjectBaselineAnchor];

          errorCopy = v51;
          self = selfCopy;
        }

        else
        {
          v136 = 0;
        }

        sampleType2 = [v22 sampleType];
        v27 = v132;
        if (self)
        {
          v28 = sampleType2;
          client = [(HDQueryServer *)self client];
          authorizationOracle = [client authorizationOracle];
          v31 = [authorizationOracle additionalAuthorizationPredicateForObjectType:v28 error:errorCopy];

          if (v31)
          {
            followingAnchor = [v27 followingAnchor];

            if (followingAnchor)
            {
              v33 = MEMORY[0x277D10B70];
              v34 = MEMORY[0x277D10B18];
              v35 = MEMORY[0x277CCABB0];
              followingAnchor2 = [v27 followingAnchor];
              v37 = [v35 numberWithLongLong:{objc_msgSend(followingAnchor2, "_rowid")}];
              v38 = [v34 predicateWithProperty:@"data_id" greaterThanValue:v37];
              v39 = [v33 compoundPredicateWithPredicate:v31 otherPredicate:v38];

              v31 = v39;
            }

            upToAndIncludingAnchor = [v27 upToAndIncludingAnchor];

            if (!upToAndIncludingAnchor)
            {
              goto LABEL_25;
            }

            v41 = MEMORY[0x277D10B70];
            v42 = MEMORY[0x277D10B18];
            v43 = MEMORY[0x277CCABB0];
            upToAndIncludingAnchor2 = [v27 upToAndIncludingAnchor];
            v45 = [v43 numberWithLongLong:{objc_msgSend(upToAndIncludingAnchor2, "_rowid") + 1}];
            v46 = [v42 predicateWithProperty:@"data_id" lessThanValue:v45];
            v47 = [v41 compoundPredicateWithPredicate:v31 otherPredicate:v46];

            v31 = v47;
          }

          else
          {
            v48 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:v123 format:@"Unable to determine authorization status."];
            v45 = v48;
            if (v48)
            {
              if (errorCopy2)
              {
                v49 = v48;
                v31 = 0;
                *errorCopy2 = v45;
              }

              else
              {
                _HKLogDroppedError();
                v31 = 0;
              }

              upToAndIncludingAnchor2 = v45;
            }

            else
            {
              upToAndIncludingAnchor2 = 0;
              v31 = 0;
            }
          }
        }

        else
        {
          v31 = 0;
        }

LABEL_25:

        if (!v31)
        {

          v16 = v129;
LABEL_49:

          v92 = 1;
          v63 = v130;
          goto LABEL_99;
        }

        v54 = [HDQueryDescriptor alloc];
        v55 = MEMORY[0x277CBEB98];
        sampleType3 = [v22 sampleType];
        v57 = [v55 setWithObject:sampleType3];
        restrictedSourceEntities = [v24 restrictedSourceEntities];
        sampleAuthorizationFilter = [(HDQueryServer *)selfCopy sampleAuthorizationFilter];
        _filter = [v22 _filter];
        v61 = [(HDQueryDescriptor *)v54 initWithSampleTypes:v57 encodingOptions:0 restrictedSourceEntities:restrictedSourceEntities authorizationFilter:sampleAuthorizationFilter filter:_filter samplePredicate:v31 deletedObjectsPredicate:v136];
        [v130 addObject:v61];

        self = selfCopy;
        errorCopy = errorCopy2;
        v18 = v127;
        v16 = v129;
        v19 = v125;
LABEL_27:

        ++v21;
      }

      while (v18 != v21);
      v62 = [v16 countByEnumeratingWithState:&v138 objects:v143 count:16];
      v18 = v62;
      v20 = &selRef__queue_enqueueConceptAuthorizationRequestWithIdentifier_bundleIdentifier_objectType_promptIfNeeded_authorizationNeededHandler_completionHandler_;
    }

    while (v62);
  }

  v63 = v130;
  if (![v130 count])
  {
    v92 = 2;
    goto LABEL_99;
  }

  selfCopy2 = self;
  v65 = v130;
  v66 = v132;
  v137 = handlerCopy;
  if (!selfCopy2)
  {
    v92 = 0;
    v16 = v129;
    goto LABEL_98;
  }

  if (limit >= 0x32)
  {
    limitCopy = 50;
  }

  else
  {
    limitCopy = limit;
  }

  if (limit >= 1)
  {
    v68 = limitCopy;
  }

  else
  {
    v68 = 50;
  }

  v69 = MEMORY[0x277CCD9F0];
  sortDescriptors = [v66 sortDescriptors];
  v71 = sortDescriptors;
  if (sortDescriptors)
  {
    v72 = sortDescriptors;
  }

  else
  {
    v72 = MEMORY[0x277CBEBF8];
  }

  followingAnchor3 = [v66 followingAnchor];
  v74 = [v69 sortedQueryAnchorWithSortDescriptors:v72 objectID:{objc_msgSend(followingAnchor3, "_rowid")}];

  v75 = [HDMultiTypeSortedSampleIterator alloc];
  sortDescriptors2 = [v66 sortDescriptors];
  profile = [(HDQueryServer *)selfCopy2 profile];
  v126 = v74;
  v78 = [(HDMultiTypeSortedSampleIterator *)v75 initWithQueryDescriptors:v65 includeDeletedObjects:objectsCopy anchor:v74 sortDescriptors:sortDescriptors2 bufferSize:v68 profile:profile];

  distinctByKeyPaths = [v66 distinctByKeyPaths];
  v80 = [distinctByKeyPaths count];

  if (v80)
  {
    v81 = [HDDistinctByKeyPathsIterator alloc];
    distinctByKeyPaths2 = [v66 distinctByKeyPaths];
    v83 = [(HDDistinctByKeyPathsIterator *)v81 initWithSourceIterator:v78 keyPaths:distinctByKeyPaths2];

    v78 = v83;
  }

  state = [v66 state];

  if (state)
  {
    state2 = [v66 state];
    v86 = [(HDMultiTypeSortedSampleIterator *)v78 restoreIteratorStateFromData:state2 error:errorCopy2];

    if (!v86)
    {
      v92 = 1;
      v16 = v129;
      goto LABEL_97;
    }
  }

  v87 = _Block_copy(selfCopy->_unitTest_queryServerObjectEnumerationHandler);
  v128 = v66;
  followingAnchor4 = [v66 followingAnchor];
  _rowid = [followingAnchor4 _rowid];

  v90 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v124 = v65;
  if (objectsCopy)
  {
    v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v91 = 0;
  }

  v142 = 0;
  v93 = [(HDMultiTypeSortedSampleIterator *)v78 advanceWithError:&v142];
  v94 = v142;
  if (!v93)
  {
LABEL_74:
    v135 = _rowid;
    v111 = v87;
    v112 = 0;
LABEL_75:
    v16 = v129;
    v74 = v126;
    goto LABEL_82;
  }

  v95 = 1;
  while (1)
  {
    _shouldStopProcessingQuery = [(HDQueryServer *)selfCopy _shouldStopProcessingQuery];
    if (_shouldStopProcessingQuery)
    {
      v135 = _rowid;
      v111 = v87;
      v113 = 0;
      goto LABEL_81;
    }

    if ([(HDQueryServer *)selfCopy _shouldSuspendQuery])
    {
      break;
    }

    v97 = [v90 count];
    if (([v91 count] + v97) >= 0xC8)
    {
      iteratorStateData = [(HDMultiTypeSortedSampleIterator *)v78 iteratorStateData];
      v99 = [(HDBatchedQueryServer *)selfCopy _queryCursorWithQueryCursor:v128 state:iteratorStateData];

      v137[2](v137, v90, v91, _rowid, v99, 0);
      v100 = objc_alloc_init(MEMORY[0x277CBEB18]);

      if (objectsCopy)
      {
        v101 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      else
      {
        v101 = 0;
      }

      v90 = v100;
      v91 = v101;
      _rowid = 0;
    }

    object = [(HDMultiTypeSortedSampleIterator *)v78 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      sample = [(HDMultiTypeSortedSampleIterator *)v78 sample];
      v105 = v90;
    }

    else
    {
      if (!objectsCopy)
      {
        goto LABEL_67;
      }

      object2 = [(HDMultiTypeSortedSampleIterator *)v78 object];
      objc_opt_class();
      v107 = objc_opt_isKindOfClass();

      if ((v107 & 1) == 0)
      {
        goto LABEL_67;
      }

      sample = [(HDMultiTypeSortedSampleIterator *)v78 deletedObject];
      v105 = v91;
    }

    [v105 addObject:sample];

LABEL_67:
    if ([(HDMultiTypeSortedSampleIterator *)v78 objectID]> _rowid)
    {
      _rowid = [(HDMultiTypeSortedSampleIterator *)v78 objectID];
    }

    if (limit - 1 < v95)
    {
      goto LABEL_74;
    }

    if (v87)
    {
      object3 = [(HDMultiTypeSortedSampleIterator *)v78 object];
      (*(v87 + 2))(v87, selfCopy, object3, v95);
    }

    v142 = v94;
    v109 = [(HDMultiTypeSortedSampleIterator *)v78 advanceWithError:&v142];
    v110 = v142;

    ++v95;
    v94 = v110;
    if (!v109)
    {
      v135 = _rowid;
      v111 = v87;
      v112 = 0;
      v94 = v110;
      goto LABEL_75;
    }
  }

  v135 = _rowid;
  v111 = v87;
  v113 = objc_alloc_init(MEMORY[0x277CBEB18]);

  v90 = v91;
  if (objectsCopy)
  {
    v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v91 = 0;
  }

LABEL_81:
  v16 = v129;
  v74 = v126;
  v112 = !_shouldStopProcessingQuery;

  v90 = v113;
LABEL_82:
  v114 = [v94 hk_isHealthKitErrorWithCode:900];
  v115 = v114;
  if (!v94 || (v114 & 1) != 0)
  {
    _shouldStopProcessingQuery2 = [(HDQueryServer *)selfCopy _shouldStopProcessingQuery];
    if (_shouldStopProcessingQuery2)
    {
      v92 = 4;
    }

    else
    {
      v92 = 3;
    }

    if (!v112 && !_shouldStopProcessingQuery2)
    {
      if (v115)
      {
        v118 = 0;
      }

      else
      {
        iteratorStateData2 = [(HDMultiTypeSortedSampleIterator *)v78 iteratorStateData];
        v118 = [(HDBatchedQueryServer *)selfCopy _queryCursorWithQueryCursor:v128 state:iteratorStateData2];

        if (!v118)
        {
          goto LABEL_93;
        }
      }

      v137[2](v137, v90, v91, v135, v118, 1);

      v92 = 0;
    }
  }

  else
  {
    if (errorCopy2)
    {
      v116 = v94;
      *errorCopy2 = v94;
    }

    else
    {
      _HKLogDroppedError();
    }

LABEL_93:
    v92 = 1;
  }

  v63 = v130;
  v65 = v124;
  v66 = v128;
LABEL_97:

LABEL_98:
LABEL_99:

  return v92;
}

- (id)_queryCursorWithQueryCursor:(void *)cursor state:
{
  v5 = a2;
  cursorCopy = cursor;
  if (!cursorCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel__queryCursorWithQueryCursor_state_ object:self file:@"HDBatchedQueryServer.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"state"}];
  }

  v7 = objc_alloc(MEMORY[0x277CCD8C0]);
  queryDescriptors = [v5 queryDescriptors];
  sortDescriptors = [v5 sortDescriptors];
  followingAnchor = [v5 followingAnchor];
  upToAndIncludingAnchor = [v5 upToAndIncludingAnchor];
  distinctByKeyPaths = [v5 distinctByKeyPaths];
  v13 = [v7 initWithQueryDescriptors:queryDescriptors sortDescriptors:sortDescriptors followingAnchor:followingAnchor upToAndIncludingAnchor:upToAndIncludingAnchor distinctByKeyPaths:distinctByKeyPaths state:cursorCopy];

  return v13;
}

@end