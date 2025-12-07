@interface RadioSyncRequest
- (RadioSyncRequest)init;
- (RadioSyncRequest)initWithGlobalVersion:(unint64_t)version;
- (id)_sortedChangesByType:(id)type;
- (id)_stationSortOrderForChanges:(id)changes;
- (id)_updateModel:(id)model withChangeDictionary:(id)dictionary changeType:(int64_t *)type loadArtworkSynchronously:(BOOL)synchronously;
- (void)startWithCompletionHandler:(id)handler;
@end

@implementation RadioSyncRequest

- (id)_updateModel:(id)model withChangeDictionary:(id)dictionary changeType:(int64_t *)type loadArtworkSynchronously:(BOOL)synchronously
{
  v36 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  dictionaryCopy = dictionary;
  v10 = [dictionaryCopy objectForKey:@"change-type"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = 0;
    goto LABEL_30;
  }

  integerValue = [v10 integerValue];
  v12 = integerValue;
  if (type)
  {
    *type = integerValue;
  }

  if (integerValue == 4)
  {
    v13 = [dictionaryCopy objectForKey:@"sort-order"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = v13;
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v13);
            }

            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              v18 = v13;
              goto LABEL_27;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v18 = [v13 valueForKey:@"longLongValue", v27];
      [modelCopy setStationSortOrdering:v18];
LABEL_27:
    }

    goto LABEL_28;
  }

  v20 = integerValue - 1;
  if ((integerValue - 1) > 2)
  {
    v13 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v32 = v12;
      v33 = 2112;
      v34 = dictionaryCopy;
      _os_log_impl(&dword_261792000, v13, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Unknown change type (%ld): %@", buf, 0x16u);
    }
  }

  else
  {
    v13 = [dictionaryCopy objectForKey:@"station-dict"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v13 objectForKey:@"station-id"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        longLongValue = [v21 longLongValue];
        if (v20 > 1)
        {
          v25 = longLongValue;
          v26 = _RadioLogCategoryRequests();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v32 = v25;
            _os_log_impl(&dword_261792000, v26, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Deleting station with id: %llu", buf, 0xCu);
          }

          [modelCopy deleteStationWithID:v25];
        }

        else
        {
          v19 = [modelCopy newStationWithDictionary:v13];
          if (v19)
          {
LABEL_37:

            goto LABEL_29;
          }

          v23 = _RadioLogCategoryRequests();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v32 = v13;
            _os_log_impl(&dword_261792000, v23, OS_LOG_TYPE_ERROR, "Error: Unable to create station with dictionary: %@", buf, 0xCu);
          }
        }
      }

      v19 = 0;
      goto LABEL_37;
    }
  }

LABEL_28:
  v19 = 0;
LABEL_29:

LABEL_30:

  return v19;
}

- (id)_stationSortOrderForChanges:(id)changes
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  changesCopy = changes;
  v4 = [changesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(changesCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 objectForKey:{@"change-type", v12}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 integerValue] == 4)
        {
          v10 = [v8 objectForKey:@"sort-order"];

          goto LABEL_12;
        }
      }

      v5 = [changesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (id)_sortedChangesByType:(id)type
{
  v55 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(typeCopy, "count")}];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v5 = typeCopy;
  v6 = [v5 countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v48;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        v11 = [v10 objectForKey:@"change-type"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 integerValue] == 1)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v7);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v44;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v43 + 1) + 8 * j);
        v18 = [v17 objectForKey:@"change-type"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v18 integerValue] == 2)
        {
          [v4 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v14);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v19 = v12;
  v20 = [v19 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v40;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v39 + 1) + 8 * k);
        v25 = [v24 objectForKey:@"change-type"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v25 integerValue] == 3)
        {
          [v4 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v21);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v26 = v19;
  v27 = [v26 countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v36;
    do
    {
      for (m = 0; m != v28; ++m)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v35 + 1) + 8 * m);
        v32 = [v31 objectForKey:{@"change-type", v35}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v32 integerValue] == 4)
        {
          [v4 addObject:v31];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v28);
  }

  v33 = [v4 copy];

  return v33;
}

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requestContext = [(RadioRequest *)self requestContext];
  v6 = +[RadioModel sharedModel];
  databaseVersion = [v6 databaseVersion];

  if (databaseVersion != 3)
  {
    v8 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_261792000, v8, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Doing a full sync for a database version update...", buf, 2u);
    }

    self->_globalVersion = 0;
    self->_isAutomaticUpdate = 0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__RadioSyncRequest_startWithCompletionHandler___block_invoke;
  v11[3] = &unk_279AEADC0;
  v12 = requestContext;
  v13 = handlerCopy;
  v11[4] = self;
  v14 = databaseVersion != 3;
  v9 = requestContext;
  v10 = handlerCopy;
  [(RadioRequest *)self _loadRadioStoreBagWithCompletionHandler:v11];
}

void __47__RadioSyncRequest_startWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 baseURL];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 URLByAppendingPathComponent:@"sync"];
    v7 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v43 = v6;
      _os_log_impl(&dword_261792000, v7, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Request URL: %@", buf, 0xCu);
    }

    v34 = v6;
    v8 = [MEMORY[0x277D69BD0] newForRadioRequestURL:v6];
    [v8 setShouldProcessProtocol:0];
    v9 = MEMORY[0x277CBEB38];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(a1 + 32) + 80)];
    v11 = [v9 dictionaryWithObjectsAndKeys:{v10, @"global-version", 0}];

    v12 = [*(a1 + 32) changeList];
    if ([v12 count])
    {
      [v11 setObject:v12 forKey:@"change-list"];
    }

    v33 = v12;
    v13 = [*(a1 + 32) matchDictionary];
    if (v13)
    {
      [v11 setObject:v13 forKey:@"match"];
    }

    v32 = v13;
    v14 = [v3 radioConfigurationDictionary];
    v15 = [v14 objectForKey:@"show-explicit-toggle"];

    if ((objc_opt_respondsToSelector() & 1) == 0 || [v15 BOOLValue])
    {
      v16 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 32) + 105)];
      [v11 setObject:v16 forKey:@"clean"];
    }

    v17 = +[RadioModel backgroundModel];
    v18 = [v17 globalHash];
    if ([v18 length])
    {
      [v11 setObject:v18 forKey:@"global-hash"];
    }

    v19 = *(a1 + 32);
    if (*(v19 + 106) == 1)
    {
      [v11 setObject:MEMORY[0x277CBEC38] forKey:@"auto-update"];
      v19 = *(a1 + 32);
    }

    if ([*(v19 + 112) length])
    {
      [v8 setValue:*(*(a1 + 32) + 112) forHTTPHeaderField:@"Referer"];
    }

    v20 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v43 = v11;
      _os_log_impl(&dword_261792000, v20, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Request parameters: %@", buf, 0xCu);
    }

    v21 = [MEMORY[0x277CBEA90] dataForRadioRequestParameters:v11 isAsynchronousBackgroundRequest:objc_msgSend(*(a1 + 32) error:{"isAsynchronousBackgroundRequest"), 0}];
    [v8 setHTTPBody:v21];
    v22 = +[RadioNetworkObserver sharedNetworkObserver];
    [v22 beginUsingNetwork];

    v23 = [MEMORY[0x277D69C98] newRadioRequestWithRequestContext:*(a1 + 40) requestProperties:v8 storeBag:v3];
    v24 = *(a1 + 32);
    v25 = *(v24 + 88);
    *(v24 + 88) = v23;

    v26 = *(a1 + 32);
    v27 = *(v26 + 88);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_39;
    v35[3] = &unk_279AEAD98;
    v35[4] = v26;
    v36 = v17;
    v39 = *(a1 + 56);
    v37 = *(a1 + 40);
    v38 = *(a1 + 48);
    v28 = v17;
    [v27 startWithConnectionResponseBlock:v35];

    v29 = v34;
  }

  else
  {
    [*(a1 + 32) setStatus:5];
    v30 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_2;
    block[3] = &unk_279AEACF0;
    v31 = *(a1 + 48);
    block[4] = *(a1 + 32);
    v41 = v31;
    dispatch_async(v30, block);

    v29 = v41;
  }
}

void __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1 + 32) + 80), 0);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"RadioRequestDidFinishNotification" object:*(a1 + 32)];
}

void __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_39(uint64_t a1, void *a2, void *a3)
{
  v79[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[RadioNetworkObserver sharedNetworkObserver];
  [v7 endUsingNetwork];

  v8 = v6;
  v9 = v8;
  if (v5)
  {
    v10 = [v5 statusCode];
  }

  else
  {
    v11 = [v8 userInfo];
    v12 = [v11 objectForKey:*MEMORY[0x277D6A118]];
    v10 = [v12 integerValue];
  }

  v13 = os_log_create("com.apple.amp.radio", "Requests");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_261792000, v13, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Status code: %lli", &buf, 0xCu);
  }

  if ((v10 - 300) <= 0xFFFFFFFFFFFFFF9BLL)
  {
    v14 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_261792000, v14, OS_LOG_TYPE_ERROR, "Error: Unable to read station listing (%@)", &buf, 0xCu);
    }

    v15 = v9;
    if (!v9)
    {
      v16 = MEMORY[0x277CCA9B8];
      v78 = *MEMORY[0x277D6A118];
      v17 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
      v79[0] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:&v78 count:1];
      v15 = [v16 errorWithDomain:*MEMORY[0x277D6A110] code:109 userInfo:v18];
    }

    if (v10 <= 399)
    {
      v19 = 1;
      if (v10 == 200 || v10 == 204)
      {
        goto LABEL_30;
      }
    }

    else
    {
      switch(v10)
      {
        case 404:
          goto LABEL_15;
        case 401:
          v19 = 2;
          goto LABEL_30;
        case 400:
LABEL_15:
          v19 = 4;
LABEL_30:
          [*(a1 + 32) setStatus:v19];
          v26 = 0;
          goto LABEL_57;
      }
    }

    v19 = 3;
    goto LABEL_30;
  }

  v20 = [v5 radio_decompressedBodyData];
  if ([v20 length])
  {
    v71 = 0;
    v72 = v9;
    v52 = [v20 propertyListForRadioResponseReturningError:&v72 unparsedResponseDictionary:&v71];
    v15 = v72;

    v21 = v71;
    v22 = v71;
    if (v22)
    {
      objc_storeStrong((*(a1 + 32) + 96), v21);
      v51 = [v22 objectForKey:@"error"];
      if (v51)
      {
        [*(a1 + 32) setStatus:3];
        v23 = v51;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [v23 objectForKey:@"error-value"];
          if (objc_opt_respondsToSelector())
          {
            v25 = [v24 intValue];
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v25 = 0;
        }

        [*(a1 + 32) setErrorCode:v25];
        v42 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RadioRequestErrorDomain" code:v25 userInfo:0];

        v41 = os_log_create("com.apple.amp.radio", "Requests");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v23;
          _os_log_impl(&dword_261792000, v41, OS_LOG_TYPE_ERROR, "Error: Sync request failed (%@)", &buf, 0xCu);
        }

        v26 = 0;
        v15 = v42;
      }

      else
      {
        v50 = [v52 objectForKey:@"global-version"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = [v50 unsignedLongLongValue];
          [*(a1 + 40) setGlobalVersion:v26];
        }

        else
        {
          v26 = 0;
        }

        v49 = [v52 objectForKey:@"bag"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = [v49 copy];
          v29 = *(a1 + 32);
          v30 = *(v29 + 120);
          *(v29 + 120) = v28;
        }

        v48 = [v52 objectForKey:@"global-hash"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [*(a1 + 40) setGlobalHash:v48];
        }

        v47 = [v52 objectForKey:@"type"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = [v47 unsignedIntValue];
          v32 = os_log_create("com.apple.amp.radio", "Requests");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v31;
            _os_log_impl(&dword_261792000, v32, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Sync type: %lli", &buf, 0xCu);
          }
        }

        else
        {
          v31 = 1;
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v74 = 0x3032000000;
        v75 = __Block_byref_object_copy__1054;
        v76 = __Block_byref_object_dispose__1055;
        v77 = [MEMORY[0x277CBEB58] set];
        v69[0] = 0;
        v69[1] = v69;
        v69[2] = 0x3032000000;
        v69[3] = __Block_byref_object_copy__1054;
        v69[4] = __Block_byref_object_dispose__1055;
        v70 = [MEMORY[0x277CBEB58] set];
        v33 = *(a1 + 40);
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_53;
        v61[3] = &unk_279AEAD18;
        v34 = v52;
        v35 = *(a1 + 32);
        v36 = *(a1 + 40);
        v62 = v34;
        v63 = v35;
        v64 = v36;
        p_buf = &buf;
        v66 = v69;
        v67 = v31;
        v68 = *(a1 + 64);
        [v33 performWriteTransactionWithBlock:v61];
        if (v31 == 2)
        {
          v37 = os_log_create("com.apple.amp.radio", "Requests");
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *v60 = 0;
            _os_log_impl(&dword_261792000, v37, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Synchronously fetching featured stations...", v60, 2u);
          }

          v38 = objc_alloc_init(RadioGetFeaturedStationsRequest);
          [(RadioRequest *)v38 setRequestContext:*(a1 + 48)];
          [(RadioGetFeaturedStationsRequest *)v38 setDisableArtworkLoading:*(*(a1 + 32) + 104)];
          v39 = dispatch_semaphore_create(0);
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_62;
          v58[3] = &unk_279AEAD40;
          v40 = v39;
          v59 = v40;
          [(RadioGetFeaturedStationsRequest *)v38 startWithCompletionHandler:v58];
          dispatch_semaphore_wait(v40, 0xFFFFFFFFFFFFFFFFLL);
        }

        [*(a1 + 32) setStatus:1];

        _Block_object_dispose(v69, 8);
        _Block_object_dispose(&buf, 8);

        v41 = v50;
      }
    }

    else
    {
      v27 = os_log_create("com.apple.amp.radio", "Requests");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v15;
        _os_log_impl(&dword_261792000, v27, OS_LOG_TYPE_ERROR, "Error: Unable to deserialize station listing (%@)", &buf, 0xCu);
      }

      [*(a1 + 32) setStatus:3];
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
    v15 = v9;
  }

LABEL_57:
  v43 = os_log_create("com.apple.amp.radio", "Requests");
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_261792000, v43, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Sync completed", &buf, 2u);
  }

  v44 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_64;
  block[3] = &unk_279AEAD70;
  v56 = *(a1 + 56);
  v57 = v26;
  v45 = *(a1 + 32);
  v54 = v15;
  v55 = v45;
  v46 = v15;
  dispatch_async(v44, block);
}

void __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_53(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKey:@"change-list"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_37;
  }

  v3 = [*(a1 + 40) _sortedChangesByType:v2];

  v25 = [*(a1 + 40) _stationSortOrderForChanges:v3];
  v4 = MEMORY[0x277CBEB58];
  v5 = [*(a1 + 48) userStations];
  v24 = [v4 setWithArray:v5];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = v3;
  v6 = [v2 countByEnumeratingWithState:&v30 objects:v36 count:16];
  v23 = v2;
  if (!v6)
  {
    goto LABEL_25;
  }

  v7 = v6;
  v8 = *v31;
  v22 = a1 + 64;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v31 != v8)
      {
        objc_enumerationMutation(v2);
      }

      v10 = *(*(&v30 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v25)
        {
          v11 = [v10 objectForKey:@"station-dict"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 objectForKey:@"station-id"];
            if (v12)
            {
              v13 = [v25 indexOfObject:v12] < 2;
            }

            else
            {
              v13 = 0;
            }

            v2 = v23;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        *buf = 1;
        v14 = [*(a1 + 40) _updateModel:*(a1 + 48) withChangeDictionary:v10 changeType:buf loadArtworkSynchronously:{v13, v22}];
        if (v14)
        {
          [v24 removeObject:v14];
          v15 = a1 + 56;
          if (*buf == 1)
          {
            goto LABEL_21;
          }

          if (*buf == 2)
          {
            v15 = v22;
LABEL_21:
            [*(*(*v15 + 8) + 40) addObject:v14];
          }
        }

        continue;
      }
    }

    v7 = [v2 countByEnumeratingWithState:&v30 objects:v36 count:16];
  }

  while (v7);
LABEL_25:

  if (*(a1 + 72) == 2)
  {
    v16 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v24;
      _os_log_impl(&dword_261792000, v16, OS_LOG_TYPE_INFO, "[RadioSyncRequest] Removing stations after full sync: %@", buf, 0xCu);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = v24;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(a1 + 48) deleteStationWithID:{objc_msgSend(*(*(&v26 + 1) + 8 * j), "stationID", v22)}];
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v19);
    }

    v2 = v23;
  }

LABEL_37:
  if (*(a1 + 80) == 1)
  {
    [*(a1 + 48) setDatabaseVersion:3];
  }
}

void __47__RadioSyncRequest_startWithCompletionHandler___block_invoke_64(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[7], a1[4]);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"RadioRequestDidFinishNotification" object:a1[5]];
}

- (RadioSyncRequest)initWithGlobalVersion:(unint64_t)version
{
  v9.receiver = self;
  v9.super_class = RadioSyncRequest;
  v4 = [(RadioRequest *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_globalVersion = version;
    v6 = dispatch_queue_create("com.apple.Radio.RadioSyncRequest.artworkQueue", 0);
    artworkQueue = v5->_artworkQueue;
    v5->_artworkQueue = v6;
  }

  return v5;
}

- (RadioSyncRequest)init
{
  v3 = +[RadioModel sharedModel];
  v4 = -[RadioSyncRequest initWithGlobalVersion:](self, "initWithGlobalVersion:", [v3 globalVersion]);

  return v4;
}

@end