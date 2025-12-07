@interface WebBookmarksSettingsGateway
- (WBSCreditCardImporterDelegate)creditCardImporterDelegate;
- (WBSExtensionsImporterDelegate)extensionsImporterDelegate;
- (WebBookmarksSettingsGateway)init;
- (void)_enableExtensionWithMessage:(id)message connection:(id)connection;
- (void)_finishedImportingCreditCardsWithMessage:(id)message connection:(id)connection;
- (void)_finishedImportingExtensionsWithMessage:(id)message connection:(id)connection;
- (void)_saveCreditCardWithMessage:(id)message connection:(id)connection;
- (void)_setupConnection;
- (void)clearHistoryVisitsAddedAfterDate:(id)date beforeDate:(id)beforeDate profileIdentifiers:(id)identifiers options:(int64_t)options clearAllSpotlightHistoryForProfile:(BOOL)profile completionHandler:(id)handler;
- (void)computeNumberOfItemsToBeImportedFromURL:(id)l exportMetadataDataType:(id)type completionHandler:(id)handler;
- (void)connection:(id)connection didCloseWithError:(id)error;
- (void)deleteAllSafariSecurityOriginsForProfileWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteSafariPersistentURLCacheStorageWithCompletionHandler:(id)handler;
- (void)deleteSafariWebsiteDataRecord:(id)record completionHandler:(id)handler;
- (void)exportBookmarksToURL:(id)l sandboxExtension:(id)extension completionHandler:(id)handler;
- (void)exportSafariHistoryToURL:(id)l sandboxExtension:(id)extension profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getSafariDataUsageByteCountWithCompletionHandler:(id)handler;
- (void)getSafariWebDataUsageWithCompletion:(id)completion;
- (void)importBookmarksFromURL:(id)l inFolderWithSuggestedName:(id)name completionHandler:(id)handler;
- (void)importChromeExtensionsFromURL:(id)l completionHandler:(id)handler;
- (void)importChromeHistoryFromURL:(id)l ageLimit:(double)limit profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)importCreditCardsFromURL:(id)l completionHandler:(id)handler;
- (void)importExtensionsFromURL:(id)l completionHandler:(id)handler;
- (void)importSafariHistoryFromURL:(id)l ageLimit:(double)limit profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)numberOfHistorySitesToBeExportedWithProfileIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)scanImportURLs:(id)ls sandboxExtensions:(id)extensions completionHandler:(id)handler;
- (void)scheduleBookmarksDatabaseMaintenance;
- (void)scheduleBookmarksDatabaseMigrationTask;
- (void)scheduleHSTSSuperCookieCleanup;
- (void)schedulePasswordIconsCleanup;
@end

@implementation WebBookmarksSettingsGateway

- (WebBookmarksSettingsGateway)init
{
  v6.receiver = self;
  v6.super_class = WebBookmarksSettingsGateway;
  v2 = [(WebBookmarksSettingsGateway *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(WebBookmarksSettingsGateway *)v2 _setupConnection];
    v4 = v3;
  }

  return v3;
}

- (void)_setupConnection
{
  v3 = [WebBookmarksXPCConnection alloc];
  v4 = [(WebBookmarksXPCConnection *)v3 initClientForMachService:kWebBookmarksdServiceName];
  connection = self->_connection;
  self->_connection = v4;

  objc_initWeak(&location, self);
  v6 = self->_connection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__WebBookmarksSettingsGateway__setupConnection__block_invoke;
  v16[3] = &unk_279E775F0;
  objc_copyWeak(&v17, &location);
  [(WebBookmarksXPCConnection *)v6 setHandler:v16 forMessageNamed:kWebBookmarksEnableImportedExtensionMessageName];
  v7 = self->_connection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__WebBookmarksSettingsGateway__setupConnection__block_invoke_2;
  v14[3] = &unk_279E775F0;
  objc_copyWeak(&v15, &location);
  [(WebBookmarksXPCConnection *)v7 setHandler:v14 forMessageNamed:kWebBookmarksFinishedImportingExtensionsMessageName];
  v8 = self->_connection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__WebBookmarksSettingsGateway__setupConnection__block_invoke_3;
  v12[3] = &unk_279E775F0;
  objc_copyWeak(&v13, &location);
  [(WebBookmarksXPCConnection *)v8 setHandler:v12 forMessageNamed:kWebBookmarksSaveImportedCreditCardMessageName];
  v9 = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__WebBookmarksSettingsGateway__setupConnection__block_invoke_4;
  v10[3] = &unk_279E775F0;
  objc_copyWeak(&v11, &location);
  [(WebBookmarksXPCConnection *)v9 setHandler:v10 forMessageNamed:kWebBookmarksFinishedImportingCreditCardsMessageName];
  [(WebBookmarksXPCConnection *)self->_connection setDelegate:self];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __47__WebBookmarksSettingsGateway__setupConnection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _enableExtensionWithMessage:v5 connection:v6];
}

void __47__WebBookmarksSettingsGateway__setupConnection__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishedImportingExtensionsWithMessage:v5 connection:v6];
}

void __47__WebBookmarksSettingsGateway__setupConnection__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _saveCreditCardWithMessage:v5 connection:v6];
}

void __47__WebBookmarksSettingsGateway__setupConnection__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishedImportingCreditCardsWithMessage:v5 connection:v6];
}

- (void)getSafariWebDataUsageWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksGetSafariWebDataUsageMessageName];
  v7 = WBS_LOG_CHANNEL_PREFIXWebsiteData(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v7, OS_LOG_TYPE_DEFAULT, "Waiting for website data from webbookmarksd.", buf, 2u);
  }

  connection = self->_connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__WebBookmarksSettingsGateway_getSafariWebDataUsageWithCompletion___block_invoke;
  v10[3] = &unk_279E77D58;
  v11 = completionCopy;
  v9 = completionCopy;
  [(WebBookmarksXPCConnection *)connection sendMessage:v5 withReplyHandler:v10];
}

void __67__WebBookmarksSettingsGateway_getSafariWebDataUsageWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXWebsiteData(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __67__WebBookmarksSettingsGateway_getSafariWebDataUsageWithCompletion___block_invoke_cold_1(v9);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v10 = [MEMORY[0x277CBEB18] array];
    v12 = v10;
    if (v5)
    {
      v13 = xpc_dictionary_get_value(v5, kWebsiteDataAllRecordsKey);
      applier[0] = MEMORY[0x277D85DD0];
      applier[1] = 3221225472;
      applier[2] = __67__WebBookmarksSettingsGateway_getSafariWebDataUsageWithCompletion___block_invoke_2;
      applier[3] = &unk_279E77D30;
      v18 = v12;
      xpc_array_apply(v13, applier);
    }

    v14 = WBS_LOG_CHANNEL_PREFIXWebsiteData(v10, v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v12 count];
      *buf = 134217984;
      v20 = v16;
      _os_log_impl(&dword_272C20000, v15, OS_LOG_TYPE_DEFAULT, "Parsed %zu data records from webbookmarksd.", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __67__WebBookmarksSettingsGateway_getSafariWebDataUsageWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [WBWebsiteDataRecord websiteDataRecordFromXPCDictionary:?];
  [v1 addObject:v2];

  return 1;
}

- (void)deleteAllSafariSecurityOriginsForProfileWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v9 = WBS_LOG_CHANNEL_PREFIXWebsiteData(identifierCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Sending XPC message to delete all Website data", buf, 2u);
  }

  v10 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksDeleteAllSafariWebSecurityOriginsMessageName];
  v11 = xpc_array_create(0, 0);
  uTF8String = [identifierCopy UTF8String];

  v13 = xpc_string_create(uTF8String);
  xpc_array_append_value(v11, v13);

  xpc_dictionary_set_value(v10, kWebsiteProfileIdentifiersKey, v11);
  connection = self->_connection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __104__WebBookmarksSettingsGateway_deleteAllSafariSecurityOriginsForProfileWithIdentifier_completionHandler___block_invoke;
  v16[3] = &unk_279E77D58;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [(WebBookmarksXPCConnection *)connection sendMessage:v10 withReplyHandler:v16];
}

void __104__WebBookmarksSettingsGateway_deleteAllSafariSecurityOriginsForProfileWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXWebsiteData(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __104__WebBookmarksSettingsGateway_deleteAllSafariSecurityOriginsForProfileWithIdentifier_completionHandler___block_invoke_cold_1(v9);
    }
  }

  else if (v5)
  {
    v11 = xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey);
    if (v11)
    {
      v13 = WBS_LOG_CHANNEL_PREFIXWebsiteData(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to delete all website data", v14, 2u);
      }
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }
}

- (void)deleteSafariWebsiteDataRecord:(id)record completionHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->_connection;
  v8 = kWebBookmarksDeleteSafariWebSecurityOriginMessageName;
  recordCopy = record;
  v10 = [(WebBookmarksXPCConnection *)connection messageWithName:v8];
  v11 = kWebsiteDataRecordKey;
  xPCDictionaryRepresentation = [recordCopy XPCDictionaryRepresentation];

  xpc_dictionary_set_value(v10, v11, xPCDictionaryRepresentation);
  v13 = self->_connection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__WebBookmarksSettingsGateway_deleteSafariWebsiteDataRecord_completionHandler___block_invoke;
  v15[3] = &unk_279E77D58;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(WebBookmarksXPCConnection *)v13 sendMessage:v10 withReplyHandler:v15];
}

void __79__WebBookmarksSettingsGateway_deleteSafariWebsiteDataRecord_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXWebsiteData(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __79__WebBookmarksSettingsGateway_deleteSafariWebsiteDataRecord_completionHandler___block_invoke_cold_1(v9);
    }
  }

  else if (v5)
  {
    v11 = xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey);
    if (v11)
    {
      v13 = WBS_LOG_CHANNEL_PREFIXWebsiteData(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to delete individual website data", v14, 2u);
      }
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }
}

- (void)deleteSafariPersistentURLCacheStorageWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksDeleteSafariPersistentURLCacheStorageMessageName];
  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __90__WebBookmarksSettingsGateway_deleteSafariPersistentURLCacheStorageWithCompletionHandler___block_invoke;
  v8[3] = &unk_279E77D58;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(WebBookmarksXPCConnection *)connection sendMessage:v5 withReplyHandler:v8];
}

void __90__WebBookmarksSettingsGateway_deleteSafariPersistentURLCacheStorageWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXWebsiteData(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __90__WebBookmarksSettingsGateway_deleteSafariPersistentURLCacheStorageWithCompletionHandler___block_invoke_cold_1(v9);
    }
  }

  else if (v5)
  {
    v11 = xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey);
    if (v11)
    {
      v13 = WBS_LOG_CHANNEL_PREFIXWebsiteData(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to delete persistent URL cache storage", v14, 2u);
      }
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }
}

- (void)getSafariDataUsageByteCountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksGetSafariDataUsageSummaryMessageName];
  connection = self->_connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__WebBookmarksSettingsGateway_getSafariDataUsageByteCountWithCompletionHandler___block_invoke;
  v8[3] = &unk_279E77D58;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(WebBookmarksXPCConnection *)connection sendMessage:v5 withReplyHandler:v8];
}

uint64_t __80__WebBookmarksSettingsGateway_getSafariDataUsageByteCountWithCompletionHandler___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v2 = *(a1 + 32);
  if (xdict)
  {
    xdict = xpc_dictionary_get_uint64(xdict, kWebDataUsageSizeKey);
  }

  v3 = *(v2 + 16);

  return v3(v2, xdict);
}

- (void)clearHistoryVisitsAddedAfterDate:(id)date beforeDate:(id)beforeDate profileIdentifiers:(id)identifiers options:(int64_t)options clearAllSpotlightHistoryForProfile:(BOOL)profile completionHandler:(id)handler
{
  v41 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  beforeDateCopy = beforeDate;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v18 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksClearHistoryMessageName];
  v19 = kWebsiteStartDateKey;
  [dateCopy timeIntervalSinceReferenceDate];
  xpc_dictionary_set_double(v18, v19, v20);
  v21 = kWebsiteEndDateKey;
  [beforeDateCopy timeIntervalSinceReferenceDate];
  xpc_dictionary_set_double(v18, v21, v22);
  xpc_dictionary_set_int64(v18, kWebsiteOptionsKey, options);
  xpc_dictionary_set_BOOL(v18, kWebsiteClearAllSpotlightHistoryForProfileKey, profile);
  if (identifiersCopy)
  {
    v32 = beforeDateCopy;
    v33 = dateCopy;
    v23 = xpc_array_create(0, 0);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v24 = identifiersCopy;
    v25 = [v24 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v37;
      do
      {
        v28 = 0;
        do
        {
          if (*v37 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = xpc_string_create([*(*(&v36 + 1) + 8 * v28) UTF8String]);
          xpc_array_append_value(v23, v29);

          ++v28;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v26);
    }

    xpc_dictionary_set_value(v18, kWebsiteProfileIdentifiersKey, v23);
    beforeDateCopy = v32;
    dateCopy = v33;
  }

  connection = self->_connection;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __155__WebBookmarksSettingsGateway_clearHistoryVisitsAddedAfterDate_beforeDate_profileIdentifiers_options_clearAllSpotlightHistoryForProfile_completionHandler___block_invoke;
  v34[3] = &unk_279E77D58;
  v35 = handlerCopy;
  v31 = handlerCopy;
  [(WebBookmarksXPCConnection *)connection sendMessage:v18 withReplyHandler:v34];
}

void __155__WebBookmarksSettingsGateway_clearHistoryVisitsAddedAfterDate_beforeDate_profileIdentifiers_options_clearAllSpotlightHistoryForProfile_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXWebsiteData(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __155__WebBookmarksSettingsGateway_clearHistoryVisitsAddedAfterDate_beforeDate_profileIdentifiers_options_clearAllSpotlightHistoryForProfile_completionHandler___block_invoke_cold_1(v9);
    }
  }

  else if (v5)
  {
    v11 = xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey);
    if (v11)
    {
      v13 = WBS_LOG_CHANNEL_PREFIXWebsiteData(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to delete Safari's history", v14, 2u);
      }
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }
}

- (void)exportBookmarksToURL:(id)l sandboxExtension:(id)extension completionHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->_connection;
  v10 = kWebBookmarksExportBookmarksMessageName;
  extensionCopy = extension;
  lCopy = l;
  v13 = [(WebBookmarksXPCConnection *)connection messageWithName:v10];
  v14 = kWebBookmarksExportBookmarksURLKey;
  absoluteString = [lCopy absoluteString];

  xpc_dictionary_set_string(v13, v14, [absoluteString UTF8String]);
  v16 = kWebBookmarksExportBookmarksSandboxExtensionKey;
  uTF8String = [extensionCopy UTF8String];

  xpc_dictionary_set_string(v13, v16, uTF8String);
  v18 = self->_connection;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__WebBookmarksSettingsGateway_exportBookmarksToURL_sandboxExtension_completionHandler___block_invoke;
  v20[3] = &unk_279E77D58;
  v21 = handlerCopy;
  v19 = handlerCopy;
  [(WebBookmarksXPCConnection *)v18 sendMessage:v13 withReplyHandler:v20];
}

void __87__WebBookmarksSettingsGateway_exportBookmarksToURL_sandboxExtension_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXExport(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __87__WebBookmarksSettingsGateway_exportBookmarksToURL_sandboxExtension_completionHandler___block_invoke_cold_1(v9);
    }
  }

  else if (v5)
  {
    v10 = xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey);
    if (v10)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXExport(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to export bookmarks", v13, 2u);
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)importBookmarksFromURL:(id)l inFolderWithSuggestedName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v19 = 0;
  v10 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:l error:&v19];
  v11 = v19;
  v13 = v11;
  if (v10)
  {
    v14 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksImportBookmarksMessageName];
    xpc_dictionary_set_string(v14, kWebBookmarksImportBookmarksSuggestedNameKey, [nameCopy UTF8String]);
    xpc_dictionary_set_fd(v14, kWebBookmarksImportBookmarksFileDescriptorKey, [v10 fileDescriptor]);
    connection = self->_connection;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __98__WebBookmarksSettingsGateway_importBookmarksFromURL_inFolderWithSuggestedName_completionHandler___block_invoke;
    v17[3] = &unk_279E77D58;
    v18 = handlerCopy;
    [(WebBookmarksXPCConnection *)connection sendMessage:v14 withReplyHandler:v17];
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXImport(v11, v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarksSettingsGateway importBookmarksFromURL:v16 inFolderWithSuggestedName:? completionHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

void __98__WebBookmarksSettingsGateway_importBookmarksFromURL_inFolderWithSuggestedName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (!v5 || v6)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXImport(v6, v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __98__WebBookmarksSettingsGateway_importBookmarksFromURL_inFolderWithSuggestedName_completionHandler___block_invoke_cold_1(v14);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v8);
  }

  else
  {
    v9 = xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey);
    if (v9)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXImport(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to import bookmarks", v15, 2u);
      }
    }

    v12 = *(a1 + 32);
    uint64 = xpc_dictionary_get_uint64(v5, kWebBookmarksImportBookmarksItemsCountKey);
    (*(v12 + 16))(v12, uint64, 0);
  }
}

- (void)exportSafariHistoryToURL:(id)l sandboxExtension:(id)extension profileIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->_connection;
  v12 = kWebBookmarksExportHistoryMessageName;
  identifierCopy = identifier;
  extensionCopy = extension;
  lCopy = l;
  v16 = [(WebBookmarksXPCConnection *)connection messageWithName:v12];
  v17 = kWebBookmarksHistoryExportURLKey;
  absoluteString = [lCopy absoluteString];

  xpc_dictionary_set_string(v16, v17, [absoluteString UTF8String]);
  v19 = kWebBookmarksHistoryExportSandboxExtensionKey;
  uTF8String = [extensionCopy UTF8String];

  xpc_dictionary_set_string(v16, v19, uTF8String);
  v21 = kWebsiteProfileIdentifiersKey;
  uTF8String2 = [identifierCopy UTF8String];

  xpc_dictionary_set_string(v16, v21, uTF8String2);
  v23 = self->_connection;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __109__WebBookmarksSettingsGateway_exportSafariHistoryToURL_sandboxExtension_profileIdentifier_completionHandler___block_invoke;
  v25[3] = &unk_279E77D58;
  v26 = handlerCopy;
  v24 = handlerCopy;
  [(WebBookmarksXPCConnection *)v23 sendMessage:v16 withReplyHandler:v25];
}

void __109__WebBookmarksSettingsGateway_exportSafariHistoryToURL_sandboxExtension_profileIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXExport(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __109__WebBookmarksSettingsGateway_exportSafariHistoryToURL_sandboxExtension_profileIdentifier_completionHandler___block_invoke_cold_1(v9);
    }
  }

  else if (v5)
  {
    v11 = xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey);
    if (v11)
    {
      v13 = WBS_LOG_CHANNEL_PREFIXExport(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_272C20000, v13, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to export Safari's history", v14, 2u);
      }
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }
}

- (void)numberOfHistorySitesToBeExportedWithProfileIdentifiers:(id)identifiers completionHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->_connection;
  v8 = kWebBookmarksGetNumberOfHistorySitesToBeExportedMessageName;
  identifiersCopy = identifiers;
  v10 = [(WebBookmarksXPCConnection *)connection messageWithName:v8];
  v11 = MEMORY[0x277CCAAB0];
  allObjects = [identifiersCopy allObjects];

  v21 = 0;
  v13 = [v11 archivedDataWithRootObject:allObjects requiringSecureCoding:0 error:&v21];
  v14 = v21;

  if (v14)
  {
    v17 = WBS_LOG_CHANNEL_PREFIXExport(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarksSettingsGateway numberOfHistorySitesToBeExportedWithProfileIdentifiers:v17 completionHandler:?];
    }

    handlerCopy[2](handlerCopy, 0, v14);
  }

  else
  {
    xpc_dictionary_set_data(v10, kWebBookmarksNumberOfHistorySitesToBeExportedProfileIdentifiersKey, [v13 bytes], objc_msgSend(v13, "length"));
    v18 = self->_connection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __104__WebBookmarksSettingsGateway_numberOfHistorySitesToBeExportedWithProfileIdentifiers_completionHandler___block_invoke;
    v19[3] = &unk_279E77D58;
    v20 = handlerCopy;
    [(WebBookmarksXPCConnection *)v18 sendMessage:v10 withReplyHandler:v19];
  }
}

void __104__WebBookmarksSettingsGateway_numberOfHistorySitesToBeExportedWithProfileIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (!v5 || v6)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXExport(v6, v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __109__WebBookmarksSettingsGateway_exportSafariHistoryToURL_sandboxExtension_profileIdentifier_completionHandler___block_invoke_cold_1(v14);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, 0);
  }

  else
  {
    v9 = xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey);
    if (v9)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXExport(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to export Safari's history", v15, 2u);
      }
    }

    v12 = *(a1 + 32);
    uint64 = xpc_dictionary_get_uint64(v5, kWebBookmarksNumberOfHistorySitesToBeExportedKey);
    (*(v12 + 16))(v12, uint64, 0);
  }
}

- (void)importSafariHistoryFromURL:(id)l ageLimit:(double)limit profileIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v22 = 0;
  v12 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:l error:&v22];
  v13 = v22;
  v15 = v13;
  if (v12)
  {
    v16 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksImportHistoryMessageName];
    xpc_dictionary_set_fd(v16, kWebBookmarksImportHistoryFileDescriptorKey, [v12 fileDescriptor]);
    xpc_dictionary_set_double(v16, kWebBookmarksImportHistoryAgeLimitKey, limit);
    if (identifierCopy)
    {
      v17 = identifierCopy;
    }

    else
    {
      v17 = *MEMORY[0x277D49BD8];
    }

    xpc_dictionary_set_string(v16, kWebsiteProfileIdentifiersKey, [v17 UTF8String]);
    connection = self->_connection;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __103__WebBookmarksSettingsGateway_importSafariHistoryFromURL_ageLimit_profileIdentifier_completionHandler___block_invoke;
    v20[3] = &unk_279E77D58;
    v21 = handlerCopy;
    [(WebBookmarksXPCConnection *)connection sendMessage:v16 withReplyHandler:v20];
  }

  else
  {
    v19 = WBS_LOG_CHANNEL_PREFIXImport(v13, v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarksSettingsGateway importSafariHistoryFromURL:v19 ageLimit:? profileIdentifier:? completionHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }
}

void __103__WebBookmarksSettingsGateway_importSafariHistoryFromURL_ageLimit_profileIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (!v5 || v6)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXImport(v6, v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __103__WebBookmarksSettingsGateway_importSafariHistoryFromURL_ageLimit_profileIdentifier_completionHandler___block_invoke_cold_1(v14);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, 0);
  }

  else
  {
    v9 = xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey);
    if (v9)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXImport(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to import Safari's history", v15, 2u);
      }
    }

    v12 = *(a1 + 32);
    uint64 = xpc_dictionary_get_uint64(v5, kWebBookmarksImportHistoryItemsCountKey);
    (*(v12 + 16))(v12, uint64, 0);
  }
}

- (void)scanImportURLs:(id)ls sandboxExtensions:(id)extensions completionHandler:(id)handler
{
  extensionsCopy = extensions;
  handlerCopy = handler;
  connection = self->_connection;
  v11 = kWebBookmarksScanImportURLsMessageName;
  lsCopy = ls;
  v13 = [(WebBookmarksXPCConnection *)connection messageWithName:v11];
  v27 = 0;
  v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:lsCopy requiringSecureCoding:0 error:&v27];

  v15 = v27;
  if (v15)
  {
    v17 = v15;
    v18 = WBS_LOG_CHANNEL_PREFIXImport(v15, v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarksSettingsGateway scanImportURLs:v18 sandboxExtensions:? completionHandler:?];
    }

    handlerCopy[2](handlerCopy, MEMORY[0x277CBEC10], v17);
  }

  else
  {
    v26 = 0;
    v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:extensionsCopy requiringSecureCoding:0 error:&v26];
    v20 = v26;
    v17 = v20;
    if (v20)
    {
      v22 = WBS_LOG_CHANNEL_PREFIXImport(v20, v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [WebBookmarksSettingsGateway scanImportURLs:v22 sandboxExtensions:? completionHandler:?];
      }

      handlerCopy[2](handlerCopy, MEMORY[0x277CBEC10], v17);
    }

    else
    {
      xpc_dictionary_set_data(v13, kWebBookmarksImportURLsKey, [v14 bytes], objc_msgSend(v14, "length"));
      xpc_dictionary_set_data(v13, kWebBookmarksImportSandboxExtensionsKey, [v19 bytes], objc_msgSend(v19, "length"));
      v23 = self->_connection;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __82__WebBookmarksSettingsGateway_scanImportURLs_sandboxExtensions_completionHandler___block_invoke;
      v24[3] = &unk_279E77D58;
      v25 = handlerCopy;
      [(WebBookmarksXPCConnection *)v23 sendMessage:v13 withReplyHandler:v24];
    }
  }
}

void __82__WebBookmarksSettingsGateway_scanImportURLs_sandboxExtensions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (!v5 || v6)
  {
    v26 = WBS_LOG_CHANNEL_PREFIXImport(v6, v7);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __82__WebBookmarksSettingsGateway_scanImportURLs_sandboxExtensions_completionHandler___block_invoke_cold_2(v26);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey);
    if (v9)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXImport(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to scan import URLs", buf, 2u);
      }
    }

    *buf = 0;
    data = xpc_dictionary_get_data(v5, kWebBookmarksImportURLsResultKey, buf);
    v13 = MEMORY[0x277CCAAC8];
    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v14 setWithObjects:{v15, v16, v17, objc_opt_class(), 0}];
    v19 = [MEMORY[0x277CBEA90] dataWithBytes:data length:*buf];
    v27 = 0;
    v20 = [v13 unarchivedObjectOfClasses:v18 fromData:v19 error:&v27];
    v21 = v27;

    if (v21)
    {
      v24 = WBS_LOG_CHANNEL_PREFIXImport(v22, v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __82__WebBookmarksSettingsGateway_scanImportURLs_sandboxExtensions_completionHandler___block_invoke_cold_1(v24);
      }
    }

    if (v20)
    {
      v25 = v20;
    }

    else
    {
      v25 = MEMORY[0x277CBEC10];
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), v25, v21);
  }
}

- (void)importChromeExtensionsFromURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v16 = 0;
  v7 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:l error:&v16];
  v8 = v16;
  v10 = v8;
  if (v7)
  {
    v11 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksImportChromeExtensionsMessageName];
    xpc_dictionary_set_fd(v11, kWebBookmarksImportChromeExtensionsFileDescriptorKey, [v7 fileDescriptor]);
    connection = self->_connection;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __79__WebBookmarksSettingsGateway_importChromeExtensionsFromURL_completionHandler___block_invoke;
    v14[3] = &unk_279E77D58;
    v15 = handlerCopy;
    [(WebBookmarksXPCConnection *)connection sendMessage:v11 withReplyHandler:v14];
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXImport(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarksSettingsGateway importChromeExtensionsFromURL:v13 completionHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, v10);
  }
}

void __79__WebBookmarksSettingsGateway_importChromeExtensionsFromURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXImport(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __79__WebBookmarksSettingsGateway_importChromeExtensionsFromURL_completionHandler___block_invoke_cold_1(v9);
    }
  }

  else if (v5)
  {
    v10 = xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey);
    if (v10)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXImport(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to import extensions", v13, 2u);
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)importCreditCardsFromURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v13 = 0;
  v7 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:l error:&v13];
  v8 = v13;
  if (v7)
  {
    v9 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksImportCreditCardsMessageName];
    xpc_dictionary_set_fd(v9, kWebBookmarksImportCreditCardsFileDescriptorKey, [v7 fileDescriptor]);
    connection = self->_connection;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__WebBookmarksSettingsGateway_importCreditCardsFromURL_completionHandler___block_invoke;
    v11[3] = &unk_279E77D58;
    v12 = handlerCopy;
    [(WebBookmarksXPCConnection *)connection sendMessage:v9 withReplyHandler:v11];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v8);
  }
}

void __74__WebBookmarksSettingsGateway_importCreditCardsFromURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXImport(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __74__WebBookmarksSettingsGateway_importCreditCardsFromURL_completionHandler___block_invoke_cold_1(v9);
    }
  }

  else if (v5)
  {
    v10 = xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey);
    if (v10)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXImport(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to import credit cards", v13, 2u);
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)importExtensionsFromURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v16 = 0;
  v7 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:l error:&v16];
  v8 = v16;
  v10 = v8;
  if (v7)
  {
    v11 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksImportExtensionsMessageName];
    xpc_dictionary_set_fd(v11, kWebBookmarksImportExtensionsFileDescriptorKey, [v7 fileDescriptor]);
    connection = self->_connection;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__WebBookmarksSettingsGateway_importExtensionsFromURL_completionHandler___block_invoke;
    v14[3] = &unk_279E77D58;
    v15 = handlerCopy;
    [(WebBookmarksXPCConnection *)connection sendMessage:v11 withReplyHandler:v14];
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXImport(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarksSettingsGateway importExtensionsFromURL:v13 completionHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, v10);
  }
}

void __73__WebBookmarksSettingsGateway_importExtensionsFromURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v6)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXImport(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __79__WebBookmarksSettingsGateway_importChromeExtensionsFromURL_completionHandler___block_invoke_cold_1(v9);
    }
  }

  else if (v5)
  {
    v10 = xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey);
    if (v10)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXImport(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_272C20000, v12, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to import extensions", v13, 2u);
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)computeNumberOfItemsToBeImportedFromURL:(id)l exportMetadataDataType:(id)type completionHandler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  v19 = 0;
  v10 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:l error:&v19];
  v11 = v19;
  v13 = v11;
  if (v10)
  {
    v14 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksComputeNumberOfItemsToBeImportedMessageName];
    xpc_dictionary_set_fd(v14, kWebBookmarksComputeNumberOfItemsToBeImportedFileDescriptorKey, [v10 fileDescriptor]);
    xpc_dictionary_set_string(v14, kWebBookmarksComputeNumberOfItemsToBeImportedMetadataDataTypeKey, [typeCopy UTF8String]);
    connection = self->_connection;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __112__WebBookmarksSettingsGateway_computeNumberOfItemsToBeImportedFromURL_exportMetadataDataType_completionHandler___block_invoke;
    v17[3] = &unk_279E77D58;
    v18 = handlerCopy;
    [(WebBookmarksXPCConnection *)connection sendMessage:v14 withReplyHandler:v17];
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXImport(v11, v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarksSettingsGateway computeNumberOfItemsToBeImportedFromURL:v16 exportMetadataDataType:? completionHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

void __112__WebBookmarksSettingsGateway_computeNumberOfItemsToBeImportedFromURL_exportMetadataDataType_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (!v5 || v6)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXImport(v6, v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __112__WebBookmarksSettingsGateway_computeNumberOfItemsToBeImportedFromURL_exportMetadataDataType_completionHandler___block_invoke_cold_1(v14);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, v8);
  }

  else
  {
    v9 = xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey);
    if (v9)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXImport(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to compute the number of items to be imported", v15, 2u);
      }
    }

    v12 = *(a1 + 32);
    uint64 = xpc_dictionary_get_uint64(v5, kWebBookmarksComputeNumberOfItemsToBeImportedResultKey);
    (*(v12 + 16))(v12, uint64, 0);
  }
}

- (void)importChromeHistoryFromURL:(id)l ageLimit:(double)limit profileIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v22 = 0;
  v12 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:l error:&v22];
  v13 = v22;
  v15 = v13;
  if (v12)
  {
    v16 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksImportChromeHistoryMessageName];
    xpc_dictionary_set_fd(v16, kWebBookmarksImportChromeHistoryFileDescriptorKey, [v12 fileDescriptor]);
    xpc_dictionary_set_double(v16, kWebBookmarksImportChromeHistoryAgeLimitKey, limit);
    if (identifierCopy)
    {
      v17 = identifierCopy;
    }

    else
    {
      v17 = *MEMORY[0x277D49BD8];
    }

    xpc_dictionary_set_string(v16, kWebsiteProfileIdentifiersKey, [v17 UTF8String]);
    connection = self->_connection;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __103__WebBookmarksSettingsGateway_importChromeHistoryFromURL_ageLimit_profileIdentifier_completionHandler___block_invoke;
    v20[3] = &unk_279E77D58;
    v21 = handlerCopy;
    [(WebBookmarksXPCConnection *)connection sendMessage:v16 withReplyHandler:v20];
  }

  else
  {
    v19 = WBS_LOG_CHANNEL_PREFIXImport(v13, v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarksSettingsGateway importSafariHistoryFromURL:v19 ageLimit:? profileIdentifier:? completionHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }
}

void __103__WebBookmarksSettingsGateway_importChromeHistoryFromURL_ageLimit_profileIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (!v5 || v6)
  {
    v14 = WBS_LOG_CHANNEL_PREFIXImport(v6, v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __103__WebBookmarksSettingsGateway_importSafariHistoryFromURL_ageLimit_profileIdentifier_completionHandler___block_invoke_cold_1(v14);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, 0);
  }

  else
  {
    v9 = xpc_dictionary_get_BOOL(v5, webBookmarksMessageReceivedAcknowledgementKey);
    if (v9)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXImport(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_272C20000, v11, OS_LOG_TYPE_INFO, "Received acknowledgement that XPC message was delivered to import Safari's history", v15, 2u);
      }
    }

    v12 = *(a1 + 32);
    uint64 = xpc_dictionary_get_uint64(v5, kWebBookmarksImportChromeHistoryItemsCountKey);
    (*(v12 + 16))(v12, uint64, 0);
  }
}

- (void)_enableExtensionWithMessage:(id)message connection:(id)connection
{
  v5 = kWebBookmarksEnableImportedExtensionAdamIdentifierKey;
  messageCopy = message;
  string = xpc_dictionary_get_string(messageCopy, v5);
  v8 = xpc_dictionary_get_string(messageCopy, kWebBookmarksEnableImportedExtensionAlternatePlatformAppBundleIdentifierKey);
  v9 = xpc_dictionary_get_string(messageCopy, kWebBookmarksEnableImportedExtensionAlternatePlatformExtensionBundleIdentifierKey);
  v10 = xpc_dictionary_get_string(messageCopy, kWebBookmarksEnableImportedExtensionComposedIdentifierKey);

  if (string)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  if (v8)
  {
LABEL_3:
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  }

LABEL_4:
  if (v9)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  }

  if (v10)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  }

  WeakRetained = objc_loadWeakRetained(&self->_extensionsImporterDelegate);
  [WeakRetained enableExtensionWithComposedIdentifier:v10 adamIdentifier:v12 alternatePlatformAppBundleIdentifier:v8 alternatePlatformExtensionBundleIdentifier:v9];
}

- (void)_finishedImportingExtensionsWithMessage:(id)message connection:(id)connection
{
  connection = self->_connection;
  v5 = messageReceivedAcknowledgementReply(message);
  [(WebBookmarksXPCConnection *)connection sendMessage:v5];
}

- (void)_saveCreditCardWithMessage:(id)message connection:(id)connection
{
  v5 = MEMORY[0x277CCACA8];
  v6 = kWebBookmarksSaveImportedCreditCardNumberKey;
  messageCopy = message;
  v15 = [v5 stringWithUTF8String:{xpc_dictionary_get_string(messageCopy, v6)}];
  string = xpc_dictionary_get_string(messageCopy, kWebBookmarksSaveImportedCreditCardNameKey);
  v9 = xpc_dictionary_get_string(messageCopy, kWebBookmarksSaveImportedCreditCardHolderNameKey);
  int64 = xpc_dictionary_get_int64(messageCopy, kWebBookmarksSaveImportedCreditCardExpirationMonthKey);
  v11 = xpc_dictionary_get_int64(messageCopy, kWebBookmarksSaveImportedCreditCardExpirationYearKey);
  date = xpc_dictionary_get_date(messageCopy, kWebBookmarksSaveImportedCreditCardLastUsedDateKey);

  if (string)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  if (v9)
  {
LABEL_3:
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  }

LABEL_4:
  if (int64)
  {
    int64 = [MEMORY[0x277CCABB0] numberWithLongLong:int64];
  }

  if (v11)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
  }

  if (date)
  {
    date = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:date];
  }

  WeakRetained = objc_loadWeakRetained(&self->_creditCardImporterDelegate);
  [WeakRetained importCreditCardDataWithCardNumber:v15 cardName:v13 cardholderName:v9 cardExpirationMonth:int64 cardExpirationYear:v11 lastUsedDate:date];
}

- (void)_finishedImportingCreditCardsWithMessage:(id)message connection:(id)connection
{
  connection = self->_connection;
  v5 = messageReceivedAcknowledgementReply(message);
  [(WebBookmarksXPCConnection *)connection sendMessage:v5];
}

- (void)scheduleBookmarksDatabaseMaintenance
{
  v3 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:webBookmarksScheduleBookmarksDatabaseMaintenanceTask];
  [(WebBookmarksXPCConnection *)self->_connection sendMessage:v3];
}

- (void)scheduleBookmarksDatabaseMigrationTask
{
  v3 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:webBookmarksScheduleBookmarksDatabaseMigrationTask];
  [(WebBookmarksXPCConnection *)self->_connection sendMessage:v3];
}

- (void)scheduleHSTSSuperCookieCleanup
{
  v3 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:kWebBookmarksClearHSTSSuperCookiesMessageName];
  [(WebBookmarksXPCConnection *)self->_connection sendMessage:v3];
}

- (void)schedulePasswordIconsCleanup
{
  v3 = [(WebBookmarksXPCConnection *)self->_connection messageWithName:webBookmarksPasswordIconsCleanupMessageName];
  [(WebBookmarksXPCConnection *)self->_connection sendMessage:v3];
}

- (void)connection:(id)connection didCloseWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = WBS_LOG_CHANNEL_PREFIXWebsiteData(errorCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [errorCopy description];
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_272C20000, v8, OS_LOG_TYPE_INFO, "Settings gateway connection closed with error: %{public}@", &v10, 0xCu);
  }

  [(WebBookmarksSettingsGateway *)self _setupConnection];
}

- (WBSCreditCardImporterDelegate)creditCardImporterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_creditCardImporterDelegate);

  return WeakRetained;
}

- (WBSExtensionsImporterDelegate)extensionsImporterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_extensionsImporterDelegate);

  return WeakRetained;
}

void __67__WebBookmarksSettingsGateway_getSafariWebDataUsageWithCompletion___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() localizedDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error obtaining website data from webbookmarksd: %{public}@.", v6, v7, v8, v9);
}

void __104__WebBookmarksSettingsGateway_deleteAllSafariSecurityOriginsForProfileWithIdentifier_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to delete all website data. Error: %{public}@", v6, v7, v8, v9);
}

void __79__WebBookmarksSettingsGateway_deleteSafariWebsiteDataRecord_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to delete individual website data. Error: %{public}@", v6, v7, v8, v9);
}

void __90__WebBookmarksSettingsGateway_deleteSafariPersistentURLCacheStorageWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to delete persistent URL cache storage. Error: %{public}@", v6, v7, v8, v9);
}

void __155__WebBookmarksSettingsGateway_clearHistoryVisitsAddedAfterDate_beforeDate_profileIdentifiers_options_clearAllSpotlightHistoryForProfile_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to delete Safari's history. Error: %{public}@", v6, v7, v8, v9);
}

void __87__WebBookmarksSettingsGateway_exportBookmarksToURL_sandboxExtension_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to export bookmarks. Error: %{public}@", v6, v7, v8, v9);
}

- (void)importBookmarksFromURL:(void *)a1 inFolderWithSuggestedName:completionHandler:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while creating a file handle to import bookmarks from: %{public}@", v6, v7, v8, v9);
}

void __98__WebBookmarksSettingsGateway_importBookmarksFromURL_inFolderWithSuggestedName_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to import bookmarks. Error: %{public}@", v6, v7, v8, v9);
}

void __109__WebBookmarksSettingsGateway_exportSafariHistoryToURL_sandboxExtension_profileIdentifier_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to export Safari's history. Error: %{public}@", v6, v7, v8, v9);
}

- (void)numberOfHistorySitesToBeExportedWithProfileIdentifiers:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Failed to archive the profile identifiers to get the number of history sites for: %{public}@", v6, v7, v8, v9);
}

- (void)importSafariHistoryFromURL:(void *)a1 ageLimit:profileIdentifier:completionHandler:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while creating a file handle to import history from: %{public}@", v6, v7, v8, v9);
}

void __103__WebBookmarksSettingsGateway_importSafariHistoryFromURL_ageLimit_profileIdentifier_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to import Safari's history. Error: %{public}@", v6, v7, v8, v9);
}

- (void)scanImportURLs:(void *)a1 sandboxExtensions:completionHandler:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Failed to archive the import URLs to be scanned: %{public}@", v6, v7, v8, v9);
}

- (void)scanImportURLs:(void *)a1 sandboxExtensions:completionHandler:.cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Failed to archive the sandbox extensions: %{public}@", v6, v7, v8, v9);
}

void __82__WebBookmarksSettingsGateway_scanImportURLs_sandboxExtensions_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Failed to read the reply data from scanning import URLs: %{public}@", v6, v7, v8, v9);
}

void __82__WebBookmarksSettingsGateway_scanImportURLs_sandboxExtensions_completionHandler___block_invoke_cold_2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to scan import URLs. Error: %{public}@", v6, v7, v8, v9);
}

- (void)importChromeExtensionsFromURL:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while creating a file handle to import Chrome extensions from: %{public}@", v6, v7, v8, v9);
}

void __79__WebBookmarksSettingsGateway_importChromeExtensionsFromURL_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to import extensions. Error: %{public}@", v6, v7, v8, v9);
}

void __74__WebBookmarksSettingsGateway_importCreditCardsFromURL_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to import credit cards. Error: %{public}@", v6, v7, v8, v9);
}

- (void)importExtensionsFromURL:(void *)a1 completionHandler:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while creating a file handle to import extensions from: %{public}@", v6, v7, v8, v9);
}

- (void)computeNumberOfItemsToBeImportedFromURL:(void *)a1 exportMetadataDataType:completionHandler:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while creating a file handle for the file to compute the number of items to be imported from %{public}@", v6, v7, v8, v9);
}

void __112__WebBookmarksSettingsGateway_computeNumberOfItemsToBeImportedFromURL_exportMetadataDataType_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_4_0() wb_privacyPreservingDescription];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_3(&dword_272C20000, v4, v5, "Error encountered while delivering XPC message to compute the number of items to be imported. Error: %{public}@", v6, v7, v8, v9);
}

@end