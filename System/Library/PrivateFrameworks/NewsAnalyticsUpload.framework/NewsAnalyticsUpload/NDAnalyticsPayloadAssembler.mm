@interface NDAnalyticsPayloadAssembler
- (NDAnalyticsPayloadAssembler)init;
- (NDAnalyticsPayloadAssembler)initWithConfigProvider:(id)provider maxPayloadSize:(unint64_t)size;
- (void)_fetchAnalyticsEnvelopeContentTypeConfigsWithCompletion:(id)completion;
- (void)assemblePayloadsWithEntries:(id)entries lastUploadDatesByContentType:(id)type droppedEnvelopeReasonsToUpload:(id)upload envelopeSizeByEntry:(id)entry completion:(id)completion;
- (void)determinePayloadDeliveryWindowForEntries:(id)entries withLastUploadDatesByContentType:(id)type completion:(id)completion;
@end

@implementation NDAnalyticsPayloadAssembler

- (NDAnalyticsPayloadAssembler)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NDAnalyticsPayloadAssembler init]";
    v10 = 2080;
    v11 = "NDAnalyticsPayloadAssembler.m";
    v12 = 1024;
    v13 = 38;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BDF7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NDAnalyticsPayloadAssembler init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NDAnalyticsPayloadAssembler)initWithConfigProvider:(id)provider maxPayloadSize:(unint64_t)size
{
  providerCopy = provider;
  if (!providerCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsPayloadAssembler initWithConfigProvider:maxPayloadSize:];
  }

  v11.receiver = self;
  v11.super_class = NDAnalyticsPayloadAssembler;
  v8 = [(NDAnalyticsPayloadAssembler *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configProvider, provider);
    v9->_maxPayloadSize = size;
  }

  return v9;
}

- (void)determinePayloadDeliveryWindowForEntries:(id)entries withLastUploadDatesByContentType:(id)type completion:(id)completion
{
  entriesCopy = entries;
  typeCopy = type;
  completionCopy = completion;
  if (!entriesCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsPayloadAssembler determinePayloadDeliveryWindowForEntries:withLastUploadDatesByContentType:completion:];
    if (typeCopy)
    {
      goto LABEL_6;
    }
  }

  else if (typeCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsPayloadAssembler determinePayloadDeliveryWindowForEntries:withLastUploadDatesByContentType:completion:];
  }

LABEL_6:
  if (!completionCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsPayloadAssembler determinePayloadDeliveryWindowForEntries:withLastUploadDatesByContentType:completion:];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __116__NDAnalyticsPayloadAssembler_determinePayloadDeliveryWindowForEntries_withLastUploadDatesByContentType_completion___block_invoke;
  v14[3] = &unk_27997A980;
  v16 = typeCopy;
  v17 = completionCopy;
  v15 = entriesCopy;
  v11 = typeCopy;
  v12 = entriesCopy;
  v13 = completionCopy;
  [(NDAnalyticsPayloadAssembler *)self _fetchAnalyticsEnvelopeContentTypeConfigsWithCompletion:v14];
}

void __116__NDAnalyticsPayloadAssembler_determinePayloadDeliveryWindowForEntries_withLastUploadDatesByContentType_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v6 = a4;
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = *(a1 + 32);
    v9 = [v8 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v9)
    {
      v10 = *v40;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v39 + 1) + 8 * i);
          v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v12, "envelopeContentType")}];
          v14 = [v7 objectForKeyedSubscript:v13];
          v15 = [v12 envelopeSubmissionDate];
          v16 = v15;
          if (v14)
          {
            v17 = [v14 earlierDate:v15];
          }

          else
          {
            v17 = v15;
          }

          v18 = v17;
          [v7 setObject:v17 forKeyedSubscript:v13];
        }

        v9 = [v8 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v9);
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__1;
    v37 = __Block_byref_object_dispose__1;
    v38 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__1;
    v31 = __Block_byref_object_dispose__1;
    v32 = 0;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __116__NDAnalyticsPayloadAssembler_determinePayloadDeliveryWindowForEntries_withLastUploadDatesByContentType_completion___block_invoke_18;
    v22[3] = &unk_27997A958;
    v23 = v21;
    v24 = *(a1 + 40);
    v25 = &v33;
    v26 = &v27;
    [v7 enumerateKeysAndObjectsUsingBlock:v22];
    v19 = v34[5];
    if (v19)
    {
      v20 = [MEMORY[0x277D30F38] dateRangeWithEarlierDate:v19 laterDate:v28[5]];
    }

    else
    {
      v20 = 0;
    }

    (*(*(a1 + 48) + 16))();

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v33, 8);

    v6 = 0;
  }
}

void __116__NDAnalyticsPayloadAssembler_determinePayloadDeliveryWindowForEntries_withLastUploadDatesByContentType_completion___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v17];
  if (v6)
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v17];
    v8 = NDAnalyticsEntryDeliveryWindow(v5, v7, v6);
    v9 = *(*(*(a1 + 48) + 8) + 40);
    v10 = [v8 earlierDate];
    v11 = v10;
    if (v9)
    {
      v12 = [v9 earlierDate:v10];
    }

    else
    {
      v12 = v10;
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v12);
    if (v9)
    {
    }

    v13 = *(*(*(a1 + 56) + 8) + 40);
    v14 = [v8 laterDate];
    v15 = v14;
    if (v13)
    {
      v16 = [v13 earlierDate:v14];
    }

    else
    {
      v16 = v14;
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v16);
    if (v13)
    {
    }
  }
}

- (void)assemblePayloadsWithEntries:(id)entries lastUploadDatesByContentType:(id)type droppedEnvelopeReasonsToUpload:(id)upload envelopeSizeByEntry:(id)entry completion:(id)completion
{
  entriesCopy = entries;
  typeCopy = type;
  uploadCopy = upload;
  entryCopy = entry;
  completionCopy = completion;
  if (!entriesCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsPayloadAssembler assemblePayloadsWithEntries:lastUploadDatesByContentType:droppedEnvelopeReasonsToUpload:envelopeSizeByEntry:completion:];
    if (typeCopy)
    {
      goto LABEL_6;
    }
  }

  else if (typeCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsPayloadAssembler assemblePayloadsWithEntries:lastUploadDatesByContentType:droppedEnvelopeReasonsToUpload:envelopeSizeByEntry:completion:];
  }

LABEL_6:
  if (!uploadCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsPayloadAssembler assemblePayloadsWithEntries:lastUploadDatesByContentType:droppedEnvelopeReasonsToUpload:envelopeSizeByEntry:completion:];
  }

  if ([uploadCopy containsObject:&unk_286D791F8] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsPayloadAssembler assemblePayloadsWithEntries:lastUploadDatesByContentType:droppedEnvelopeReasonsToUpload:envelopeSizeByEntry:completion:];
    if (entryCopy)
    {
      goto LABEL_14;
    }
  }

  else if (entryCopy)
  {
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsPayloadAssembler assemblePayloadsWithEntries:lastUploadDatesByContentType:droppedEnvelopeReasonsToUpload:envelopeSizeByEntry:completion:];
  }

LABEL_14:
  if (!completionCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsPayloadAssembler assemblePayloadsWithEntries:lastUploadDatesByContentType:droppedEnvelopeReasonsToUpload:envelopeSizeByEntry:completion:];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke;
  v22[3] = &unk_27997AB20;
  v23 = uploadCopy;
  v24 = entriesCopy;
  v25 = typeCopy;
  selfCopy = self;
  v27 = entryCopy;
  v28 = completionCopy;
  v17 = entryCopy;
  v18 = typeCopy;
  v19 = completionCopy;
  v20 = entriesCopy;
  v21 = uploadCopy;
  [(NDAnalyticsPayloadAssembler *)self _fetchAnalyticsEnvelopeContentTypeConfigsWithCompletion:v22];
}

void __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v63[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    if ([*(a1 + 32) containsObject:&unk_286D791F8])
    {
      v9 = MEMORY[0x277CBEC10];
    }

    else
    {
      v34 = *(a1 + 40);
      v62 = &unk_286D791F8;
      v63[0] = v34;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = *(a1 + 40);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_2;
    v58[3] = &unk_27997A9A8;
    v40 = v7;
    v12 = v7;
    v59 = v12;
    v37 = v10;
    v60 = v37;
    v61 = *(a1 + 48);
    v39 = [v11 fc_arrayOfObjectsPassingTest:v58];
    v13 = [v39 fc_dictionaryOfSortedObjectsWithKeyBlock:&__block_literal_global_3];
    v14 = objc_opt_new();
    v15 = [v13 allKeys];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_4;
    v56[3] = &unk_27997A9D0;
    v16 = v12;
    v57 = v16;
    v17 = [v15 fc_setOfObjectsPassingTest:v56];

    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_5;
    v54[3] = &unk_27997A9F8;
    v18 = v13;
    v55 = v18;
    v38 = v17;
    v19 = [v17 fc_arrayByTransformingWithBlock:v54];
    v20 = [v19 fc_arrayByFlattening];

    if ([v20 count])
    {
      v21 = [v20 mutableCopy];
      [v14 setObject:v21 forKeyedSubscript:&unk_286D791F8];
    }

    v22 = objc_opt_new();
    v23 = objc_opt_new();
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_6;
    v50[3] = &unk_27997AA20;
    v51 = v18;
    v52 = v22;
    v24 = v23;
    v53 = v24;
    v25 = v22;
    v36 = v18;
    [v16 enumerateKeysAndObjectsUsingBlock:v50];
    v26 = objc_opt_new();
    v27 = [*(a1 + 56) maxPayloadSize];
    if (v27 >= a3)
    {
      v28 = a3;
    }

    else
    {
      v28 = v27;
    }

    v29 = FCDeviceIdentifierForVendor();
    v35 = v20;
    v30 = [v29 hash] % 0x64uLL;

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_7;
    v41[3] = &unk_27997AAF8;
    v42 = v24;
    v43 = *(a1 + 32);
    v44 = v14;
    v45 = v16;
    v48 = v30;
    v49 = v28;
    v46 = *(a1 + 64);
    v47 = v26;
    v31 = v26;
    v32 = v14;
    v33 = v24;
    [v25 enumerateKeysAndObjectsUsingBlock:v41];
    (*(*(a1 + 72) + 16))();

    v7 = v40;
    v9 = v37;
  }
}

uint64_t __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "envelopeContentType")}];
  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = [v3 envelopeSubmissionDate];
    v7 = *(a1 + 40);
    v8 = [*(a1 + 48) objectForKeyedSubscript:v4];
    CanBeUploaded = NDAnalyticsEntryCanBeUploaded(v6, v7, v8, v5);
  }

  else
  {
    CanBeUploaded = 1;
  }

  return CanBeUploaded;
}

uint64_t __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 envelopeContentType];

  return [v2 numberWithInt:v3];
}

BOOL __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = v2 == 0;

  return v3;
}

void __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_6(id *a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [a1[4] objectForKeyedSubscript:v15];

  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "groupingTag")}];
    v8 = [a1[5] objectForKeyedSubscript:v7];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_opt_new();
      [a1[5] setObject:v10 forKeyedSubscript:v7];
    }

    v11 = [a1[4] objectForKeyedSubscript:v15];
    [v10 addObjectsFromArray:v11];

    v12 = MEMORY[0x277CBEBC0];
    v13 = [v5 endpointURLString];
    v14 = [v12 URLWithString:v13];

    [a1[6] setObject:v14 forKeyedSubscript:v7];
  }
}

void __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v53 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v6 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_8;
  aBlock[3] = &unk_27997AA48;
  v66 = *(a1 + 40);
  v7 = v6;
  v67 = v7;
  v68 = *(a1 + 48);
  v8 = _Block_copy(aBlock);
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_9;
  v62[3] = &unk_27997AA70;
  v9 = *(a1 + 56);
  v10 = *(a1 + 80);
  v63 = v9;
  v64 = v10;
  v54 = v5;
  v11 = [v5 fc_dictionaryOfSortedObjectsWithKeyBlock:v62];
  v12 = [v11 objectForKeyedSubscript:MEMORY[0x277CBEC28]];
  v8[2](v8, 2, v12);

  v13 = [v11 objectForKeyedSubscript:MEMORY[0x277CBEC38]];
  v14 = v13;
  v15 = MEMORY[0x277CBEBF8];
  if (v13)
  {
    v15 = v13;
  }

  v16 = v15;

  v17 = [v16 sortedArrayUsingComparator:&__block_literal_global_38];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 88)];
  v61 = 0;
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_11;
  v59[3] = &unk_27997A820;
  v60 = *(a1 + 64);
  v19 = [v17 fc_arraysByPartitioningWithBudget:v18 indicesOfOverBudgetObjects:&v61 appraiser:v59 accumulator:&__block_literal_global_41 comparator:&__block_literal_global_44];
  v20 = v61;

  v51 = v20;
  v52 = v17;
  v21 = [v17 objectsAtIndexes:v20];
  v8[2](v8, 1, v21);

  v50 = v19;
  v22 = [v19 firstObject];
  if ([v22 count])
  {
    v45 = v16;
    v46 = v11;
    v47 = v8;
    v49 = v7;
    v23 = MEMORY[0x277CBEB98];
    v44 = v22;
    v24 = NDAnalyticsEnvelopeContentTypesFromEntries(v22);
    v25 = [v23 setWithArray:v24];

    v26 = objc_opt_new();
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v48 = a1;
    v27 = *(a1 + 56);
    v43 = v25;
    v28 = [v25 allObjects];
    v29 = [v27 nf_objectsForKeysWithoutMarker:v28];

    v30 = [v29 countByEnumeratingWithState:&v55 objects:v69 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v56;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v56 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v55 + 1) + 8 * i);
          v35 = [v34 contentHeaderName];
          if (v35)
          {
            v36 = [v26 objectForKeyedSubscript:v35];
            v37 = v36;
            if (v36)
            {
              v38 = v36;
            }

            else
            {
              v38 = objc_opt_new();
              [v26 setObject:v38 forKeyedSubscript:v35];
            }

            v39 = [v34 contentHeaderValue];
            [v38 addObject:v39];
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v55 objects:v69 count:16];
      }

      while (v31);
    }

    v40 = objc_opt_new();
    v41 = v53;
    [v40 setEndpointURL:v53];
    [v40 setValuesByHTTPHeaderField:v26];
    v22 = v44;
    [v40 setEntriesToUpload:v44];

    v7 = v49;
    v42 = v54;
    if (![v49 count])
    {
      v8 = v47;
      a1 = v48;
      v16 = v45;
      v11 = v46;
      if (!v40)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v8 = v47;
    a1 = v48;
    v16 = v45;
    v11 = v46;
    if (v40)
    {
      [v40 setDroppedEntriesByReason:v49];
LABEL_21:
      [*(a1 + 72) addObject:v40];

      goto LABEL_22;
    }
  }

  else
  {
    v41 = v53;
    v42 = v5;
    if (![v7 count])
    {
      goto LABEL_22;
    }
  }

  v40 = objc_opt_new();
  [v40 setEndpointURL:v41];
  [v40 setEntriesToUpload:MEMORY[0x277CBEBF8]];
  [v40 setDroppedEntriesByReason:v7];
  if (v40)
  {
    goto LABEL_21;
  }

LABEL_22:
}

void __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_8(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  if ([v12 count])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    v6 = [*(a1 + 32) containsObject:v5];
    v7 = 48;
    if (v6)
    {
      v7 = 40;
    }

    v8 = *(a1 + v7);
    v9 = [v8 objectForKeyedSubscript:v5];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_opt_new();
      [v8 setObject:v11 forKeyedSubscript:v5];
    }

    [v11 addObjectsFromArray:v12];
  }
}

id __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a2, "envelopeContentType")}];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = MEMORY[0x277CCABB0];
  v7 = *(a1 + 40);
  if (v7 >= [v5 samplingFloor])
  {
    v9 = *(a1 + 40);
    v8 = v9 < [v5 samplingCeiling];
  }

  else
  {
    v8 = 0;
  }

  v10 = [v6 numberWithInt:v8];

  return v10;
}

uint64_t __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 envelopeSubmissionDate];
  v6 = [v4 envelopeSubmissionDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [a2 unsignedIntegerValue];
  v7 = [v5 unsignedIntegerValue];

  return [v4 numberWithUnsignedInteger:v7 + v6];
}

uint64_t __150__NDAnalyticsPayloadAssembler_assemblePayloadsWithEntries_lastUploadDatesByContentType_droppedEnvelopeReasonsToUpload_envelopeSizeByEntry_completion___block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 unsignedIntegerValue];
  v6 = [v4 unsignedIntegerValue];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

- (void)_fetchAnalyticsEnvelopeContentTypeConfigsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NDAnalyticsPayloadAssembler _fetchAnalyticsEnvelopeContentTypeConfigsWithCompletion:];
  }

  configProvider = [(NDAnalyticsPayloadAssembler *)self configProvider];
  [configProvider fetchConfigWithCompletion:completionCopy];
}

- (void)initWithConfigProvider:maxPayloadSize:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "configProvider"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)determinePayloadDeliveryWindowForEntries:withLastUploadDatesByContentType:completion:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "entries"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)determinePayloadDeliveryWindowForEntries:withLastUploadDatesByContentType:completion:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "lastUploadDatesByContentType"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)determinePayloadDeliveryWindowForEntries:withLastUploadDatesByContentType:completion:.cold.3()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)assemblePayloadsWithEntries:lastUploadDatesByContentType:droppedEnvelopeReasonsToUpload:envelopeSizeByEntry:completion:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "entries"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)assemblePayloadsWithEntries:lastUploadDatesByContentType:droppedEnvelopeReasonsToUpload:envelopeSizeByEntry:completion:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "lastUploadDatesByContentType"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)assemblePayloadsWithEntries:lastUploadDatesByContentType:droppedEnvelopeReasonsToUpload:envelopeSizeByEntry:completion:.cold.3()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "droppedEnvelopeReasonsToUpload"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)assemblePayloadsWithEntries:lastUploadDatesByContentType:droppedEnvelopeReasonsToUpload:envelopeSizeByEntry:completion:.cold.4()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "![droppedEnvelopeReasonsToUpload containsObject:@(NDAnalyticsPayloadAssemblerDroppedEnvelopeReasonMissingConfigForContentType)]"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)assemblePayloadsWithEntries:lastUploadDatesByContentType:droppedEnvelopeReasonsToUpload:envelopeSizeByEntry:completion:.cold.5()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "envelopeSizeByEntry"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)assemblePayloadsWithEntries:lastUploadDatesByContentType:droppedEnvelopeReasonsToUpload:envelopeSizeByEntry:completion:.cold.6()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)_fetchAnalyticsEnvelopeContentTypeConfigsWithCompletion:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BDF7000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

@end