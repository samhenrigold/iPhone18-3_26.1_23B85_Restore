@interface PPCustomDonation
+ (BOOL)donateLabeledStrings:(id)strings bundleId:(id)id groupId:(id)groupId documentId:(id)documentId error:(id *)error;
+ (BOOL)donateNotification:(id)notification error:(id *)error;
+ (BOOL)donateParsecNamedEntitiesAndTopics:(id)topics rawQuery:(id)query reformulatedQuery:(id)reformulatedQuery source:(id)source error:(id *)error;
+ (BOOL)donatePhotosLocationNamedEntities:(id)entities bundleId:(id)id error:(id *)error;
+ (BOOL)donatePhotosNamedEntities:(id)entities bundleId:(id)id date:(id)date error:(id *)error;
+ (BOOL)donatePhotosOneUpLocationNamedEntities:(id)entities bundleId:(id)id error:(id *)error;
+ (BOOL)donatePhotosTopics:(id)topics bundleId:(id)id date:(id)date error:(id *)error;
+ (BOOL)donateSiriQuery:(id)query results:(id)results error:(id *)error;
@end

@implementation PPCustomDonation

+ (BOOL)donateLabeledStrings:(id)strings bundleId:(id)id groupId:(id)groupId documentId:(id)documentId error:(id *)error
{
  stringsCopy = strings;
  idCopy = id;
  groupIdCopy = groupId;
  documentIdCopy = documentId;
  v15 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.suggestd.PersonalizationPortrait.StringDonation" options:0];
  v16 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1B561D8];
  [v15 setRemoteObjectInterface:v16];

  [v15 resume];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__6734;
  v26 = __Block_byref_object_dispose__6735;
  v27 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __75__PPCustomDonation_donateLabeledStrings_bundleId_groupId_documentId_error___block_invoke;
  v21[3] = &unk_1E77F7B20;
  v21[4] = &v22;
  v17 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v21];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __75__PPCustomDonation_donateLabeledStrings_bundleId_groupId_documentId_error___block_invoke_117;
  v20[3] = &unk_1E77F7B20;
  v20[4] = &v22;
  [v17 donateLabeledStrings:stringsCopy bundleId:idCopy groupId:groupIdCopy documentId:documentIdCopy completion:v20];
  [v15 invalidate];
  if (error)
  {
    *error = v23[5];
  }

  v18 = v23[5] == 0;

  _Block_object_dispose(&v22, 8);
  return v18;
}

void __75__PPCustomDonation_donateLabeledStrings_bundleId_groupId_documentId_error___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = pp_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412290;
    v8 = @"com.apple.suggestd.PersonalizationPortrait.StringDonation";
    _os_log_error_impl(&dword_1A7FD3000, v4, OS_LOG_TYPE_ERROR, "PPStringDonation: connection to %@ interrupted.", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

+ (BOOL)donateParsecNamedEntitiesAndTopics:(id)topics rawQuery:(id)query reformulatedQuery:(id)reformulatedQuery source:(id)source error:(id *)error
{
  v61 = *MEMORY[0x1E69E9840];
  topicsCopy = topics;
  queryCopy = query;
  reformulatedQueryCopy = reformulatedQuery;
  sourceCopy = source;
  v15 = pp_default_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [topicsCopy count];
    _os_log_impl(&dword_1A7FD3000, v15, OS_LOG_TYPE_DEFAULT, "Received donation of %tu entity groups(s) from parsec", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__6734;
  v59 = __Block_byref_object_dispose__6735;
  v60 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__6734;
  v50 = __Block_byref_object_dispose__6735;
  v51 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if ([topicsCopy count])
  {
    v16 = pp_entities_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *v54 = 138739971;
      v55 = queryCopy;
      _os_log_debug_impl(&dword_1A7FD3000, v16, OS_LOG_TYPE_DEBUG, "Raw Parsec query: %{sensitive}@", v54, 0xCu);
    }

    v17 = pp_entities_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *v54 = 138739971;
      v55 = reformulatedQueryCopy;
      _os_log_debug_impl(&dword_1A7FD3000, v17, OS_LOG_TYPE_DEBUG, "Reformulated Parsec query: %{sensitive}@", v54, 0xCu);
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __95__PPCustomDonation_donateParsecNamedEntitiesAndTopics_rawQuery_reformulatedQuery_source_error___block_invoke;
    v32[3] = &unk_1E77F7A80;
    v34 = &v42;
    v33 = sourceCopy;
    p_buf = &buf;
    v36 = &v38;
    v37 = &v46;
    [topicsCopy enumerateKeysAndObjectsUsingBlock:v32];
    if (v43[3])
    {
      if (v39[3])
      {
        v18 = objc_opt_new();
        v31 = 0;
        v19 = [v18 flushDonationsWithError:&v31];
        v20 = v31;

        if ((v19 & 1) == 0)
        {
          v21 = pp_default_log_handle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *v54 = 138412290;
            v55 = v20;
            _os_log_impl(&dword_1A7FD3000, v21, OS_LOG_TYPE_DEFAULT, "PPCustomDonation: donateParsecNamedEntitiesAndTopics: Warning: failed to flush: %@", v54, 0xCu);
          }
        }

        if (*(v43 + 24) == 1)
        {
          v22 = *(v39 + 24);
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_31;
      }

      if (error)
      {
        v29 = v47[5];
        if (v29)
        {
          *error = v29;
          v28 = v39;
          goto LABEL_26;
        }
      }
    }

    else if (error)
    {
      v27 = *(*(&buf + 1) + 40);
      if (v27)
      {
        *error = v27;
        v28 = v43;
LABEL_26:
        v22 = *(v28 + 24);
LABEL_31:
        v25 = v33;
        goto LABEL_32;
      }
    }

    v22 = 0;
    goto LABEL_31;
  }

  v23 = pp_default_log_handle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *v54 = 138412290;
    v55 = @"No entity groups donated by parsec";
    _os_log_error_impl(&dword_1A7FD3000, v23, OS_LOG_TYPE_ERROR, "%@", v54, 0xCu);
  }

  if (error)
  {
    v24 = objc_alloc(MEMORY[0x1E696ABC0]);
    v52 = @"PPErrorInfoKey";
    v53 = @"No entity groups donated by parsec";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v26 = [v24 initWithDomain:@"PPErrorDomain" code:5 userInfo:v25];
    v22 = 0;
    *error = v26;
LABEL_32:

    goto LABEL_33;
  }

  v22 = 0;
LABEL_33:
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&buf, 8);
  return v22 & 1;
}

void __95__PPCustomDonation_donateParsecNamedEntitiesAndTopics_rawQuery_reformulatedQuery_source_error___block_invoke(void *a1, void *a2, void *a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 item];
  v8 = [v7 name];
  v9 = [v8 length];

  if (!v9)
  {
    v15 = pp_entities_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7FD3000, v15, OS_LOG_TYPE_DEFAULT, "Skipping empty named entity received from Parsec donation", buf, 2u);
    }

    goto LABEL_7;
  }

  v10 = objc_opt_new();
  v28[0] = v5;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v12 = a1[4];
  v13 = *(a1[6] + 8);
  obj = *(v13 + 40);
  v14 = [v10 donateNamedEntities:v11 source:v12 algorithm:12 cloudSync:1 sentimentScore:&obj error:0.0];
  objc_storeStrong((v13 + 40), obj);
  *(*(a1[5] + 8) + 24) = v14;

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(a1[6] + 8) + 40);
      *buf = 138412290;
      v27 = v16;
      _os_log_error_impl(&dword_1A7FD3000, v15, OS_LOG_TYPE_ERROR, "Error donating named entities from Parsec query: %@", buf, 0xCu);
    }

LABEL_7:
  }

  v17 = [v6 _pas_filteredArrayWithTest:&__block_literal_global_108];
  if ([v17 count])
  {
    v18 = objc_opt_new();
    v19 = a1[4];
    v20 = *(a1[8] + 8);
    v24 = *(v20 + 40);
    v21 = [v18 donateTopics:v17 source:v19 algorithm:7 cloudSync:1 sentimentScore:0 exactMatchesInSourceText:&v24 error:0.0];
    objc_storeStrong((v20 + 40), v24);
    *(*(a1[7] + 8) + 24) = v21;

    if ((*(*(a1[7] + 8) + 24) & 1) == 0)
    {
      v22 = pp_default_log_handle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(*(a1[8] + 8) + 40);
        *buf = 138412290;
        v27 = v23;
        _os_log_error_impl(&dword_1A7FD3000, v22, OS_LOG_TYPE_ERROR, "Error donating topics from Parsec query: %@", buf, 0xCu);
      }
    }
  }
}

BOOL __95__PPCustomDonation_donateParsecNamedEntitiesAndTopics_rawQuery_reformulatedQuery_source_error___block_invoke_105(uint64_t a1, void *a2)
{
  v2 = [a2 item];
  v3 = [v2 topicIdentifier];

  if ([v3 hasPrefix:@"Q"])
  {
    v4 = [v3 substringFromIndex:1];
    v5 = [v4 intValue] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)donatePhotosTopics:(id)topics bundleId:(id)id date:(id)date error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  topicsCopy = topics;
  idCopy = id;
  dateCopy = date;
  v12 = pp_topics_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v32 = [topicsCopy count];
    v33 = 2112;
    v34 = idCopy;
    _os_log_impl(&dword_1A7FD3000, v12, OS_LOG_TYPE_DEFAULT, "Received donation of %tu topic(s) from %@", buf, 0x16u);
  }

  if ([topicsCopy count])
  {
    v13 = objc_opt_new();
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __59__PPCustomDonation_donatePhotosTopics_bundleId_date_error___block_invoke;
    v27[3] = &unk_1E77F7A30;
    v28 = v13;
    idCopy = v13;
    [topicsCopy enumerateKeysAndObjectsUsingBlock:v27];
    v15 = [PPSource alloc];
    v16 = objc_alloc(MEMORY[0x1E696AEC0]);
    [dateCopy timeIntervalSinceReferenceDate];
    v18 = [v16 initWithFormat:@"%@-%f", @"photos-unmapped", v17];
    v19 = [(PPSource *)v15 initWithBundleId:idCopy groupId:@"com.apple.proactive.PersonalizationPortrait.PhotosGraphDonation" documentId:v18 date:dateCopy];

    v20 = objc_opt_new();
    v21 = [v20 donateTopics:idCopy source:v19 algorithm:5 cloudSync:0 sentimentScore:0 exactMatchesInSourceText:error error:0.0];

    v22 = v28;
  }

  else
  {
    idCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"No topics donated by %@", idCopy];
    v23 = pp_default_log_handle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = idCopy;
      _os_log_error_impl(&dword_1A7FD3000, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (!error)
    {
      v21 = 0;
      goto LABEL_10;
    }

    v24 = objc_alloc(MEMORY[0x1E696ABC0]);
    v29 = @"PPErrorInfoKey";
    v30 = idCopy;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v25 = [v24 initWithDomain:@"PPErrorDomain" code:5 userInfo:v22];
    v21 = 0;
    *error = v25;
  }

LABEL_10:
  return v21;
}

void __59__PPCustomDonation_donatePhotosTopics_bundleId_date_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v11 = [[PPTopic alloc] initWithTopicIdentifier:v6];

  v7 = [PPScoredItem alloc];
  [v5 doubleValue];
  v9 = v8;

  v10 = [(PPScoredItem *)v7 initWithItem:v11 score:v9];
  [*(a1 + 32) addObject:v10];
}

+ (BOOL)donatePhotosNamedEntities:(id)entities bundleId:(id)id date:(id)date error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  idCopy = id;
  dateCopy = date;
  v12 = pp_entities_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v27 = [entitiesCopy count];
    v28 = 2112;
    v29 = idCopy;
    _os_log_impl(&dword_1A7FD3000, v12, OS_LOG_TYPE_DEFAULT, "Received donation of %tu named entities(s) from %@", buf, 0x16u);
  }

  v13 = [PPSource alloc];
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  [dateCopy timeIntervalSinceReferenceDate];
  v16 = [v14 initWithFormat:@"photos-%f", v15];
  v17 = [(PPSource *)v13 initWithBundleId:idCopy groupId:@"com.apple.proactive.PersonalizationPortrait.PhotosGraphDonation" documentId:v16 date:dateCopy];

  v18 = objc_opt_new();
  v19 = [v18 donateNamedEntities:entitiesCopy source:v17 algorithm:11 cloudSync:0 sentimentScore:error error:0.0];

  if (v19)
  {
    v20 = objc_opt_new();
    v25 = 0;
    v21 = [v20 flushDonationsWithError:&v25];
    v22 = v25;

    if ((v21 & 1) == 0)
    {
      v23 = pp_default_log_handle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v22;
        _os_log_impl(&dword_1A7FD3000, v23, OS_LOG_TYPE_DEFAULT, "PPCustomDonation: donatePhotosNamedEntities: Warning: failed to flush: %@", buf, 0xCu);
      }
    }
  }

  return v19;
}

+ (BOOL)donatePhotosLocationNamedEntities:(id)entities bundleId:(id)id error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  idCopy = id;
  v9 = pp_entities_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218242;
    v15 = [entitiesCopy count];
    v16 = 2112;
    v17 = idCopy;
    _os_log_impl(&dword_1A7FD3000, v9, OS_LOG_TYPE_DEFAULT, "Received donation of %tu graph location named entities(s) from %@", &v14, 0x16u);
  }

  v10 = [entitiesCopy _pas_mappedArrayWithTransform:&__block_literal_global_6780];

  v11 = objc_opt_new();
  v12 = [v11 donateLocationNamedEntities:v10 bundleId:idCopy groupId:@"com.apple.proactive.PersonalizationPortrait.PhotosGraphDonation" error:error];

  return v12;
}

id __69__PPCustomDonation_donatePhotosLocationNamedEntities_bundleId_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 documentId];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = objc_opt_new();
    [v5 timeIntervalSinceReferenceDate];
    v7 = [v4 initWithFormat:@"photos-%f", floor(v6)];
    [v2 setDocumentId:v7];
  }

  return v2;
}

+ (BOOL)donatePhotosOneUpLocationNamedEntities:(id)entities bundleId:(id)id error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  entitiesCopy = entities;
  idCopy = id;
  v9 = pp_entities_log_handle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218242;
    v14 = [entitiesCopy count];
    v15 = 2112;
    v16 = idCopy;
    _os_log_impl(&dword_1A7FD3000, v9, OS_LOG_TYPE_DEFAULT, "Received donation of %tu one-up location named entities(s) from %@", &v13, 0x16u);
  }

  v10 = objc_opt_new();
  v11 = [v10 donateLocationNamedEntities:entitiesCopy bundleId:idCopy groupId:@"com.apple.proactive.PersonalizationPortrait.PhotosOneUpDonation" error:error];

  return v11;
}

+ (BOOL)donateNotification:(id)notification error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v7 = pp_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = notificationCopy;
    v28 = 2112;
    v29 = @"com.apple.proactive.PersonalizationPortrait.Notifications";
    _os_log_impl(&dword_1A7FD3000, v7, OS_LOG_TYPE_DEFAULT, "PPCustomDonation: received notification: %@ groupId: %@", buf, 0x16u);
  }

  v8 = objc_opt_new();
  uUIDString = [v8 UUIDString];

  v24[0] = @"textContent";
  message = [notificationCopy message];
  v25[0] = message;
  v24[1] = @"title";
  title = [notificationCopy title];
  v12 = title;
  if (title)
  {
    v13 = title;
  }

  else
  {
    v13 = &stru_1F1B327D8;
  }

  v25[1] = v13;
  v24[2] = @"contentDescription";
  subtitle = [notificationCopy subtitle];
  v15 = subtitle;
  if (subtitle)
  {
    v16 = subtitle;
  }

  else
  {
    v16 = &stru_1F1B327D8;
  }

  v25[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
  bundleId = [notificationCopy bundleId];
  v23 = 0;
  [self donateLabeledStrings:v17 bundleId:bundleId groupId:@"com.apple.proactive.PersonalizationPortrait.Notifications" documentId:uUIDString error:&v23];
  v19 = v23;

  if (v19)
  {
    v20 = pp_default_log_handle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v19;
      _os_log_error_impl(&dword_1A7FD3000, v20, OS_LOG_TYPE_ERROR, "Error donating notification to PersonalizationPortrait: %@", buf, 0xCu);
    }

    if (error)
    {
      v21 = v19;
      *error = v19;
    }
  }

  return v19 == 0;
}

+ (BOOL)donateSiriQuery:(id)query results:(id)results error:(id *)error
{
  v71 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  resultsCopy = results;
  v10 = pp_default_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v70 = [resultsCopy count];
    _os_log_impl(&dword_1A7FD3000, v10, OS_LOG_TYPE_DEFAULT, "Received donation of %tu result(s) from Siri", buf, 0xCu);
  }

  v11 = objc_opt_new();
  uUIDString = [v11 UUIDString];

  v67 = @"textContent";
  v68 = queryCopy;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v65 = 0;
  [self donateLabeledStrings:v13 bundleId:@"com.apple.siri.assistant_service" groupId:@"com.apple.proactive.PersonalizationPortrait.SiriDonation" documentId:uUIDString error:&v65];
  v14 = v65;

  if (v14)
  {
    v15 = pp_default_log_handle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v70 = v14;
      _os_log_error_impl(&dword_1A7FD3000, v15, OS_LOG_TYPE_ERROR, "Error piping Siri query into suggestd: %@", buf, 0xCu);
    }

    if (error)
    {
      v16 = v14;
      v17 = 0;
      *error = v14;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    errorCopy = error;
    v18 = objc_opt_new();
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    languageCode = [currentLocale languageCode];

    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
    v22 = [preferredLanguages count];

    v59 = queryCopy;
    if (v22 >= 2)
    {
      v23 = uUIDString;
      v24 = resultsCopy;
      v25 = MEMORY[0x1E69BDC58];
      v26 = objc_alloc(MEMORY[0x1E695DFD8]);
      preferredLanguages2 = [MEMORY[0x1E695DF58] preferredLanguages];
      v28 = [v26 initWithArray:preferredLanguages2];
      v29 = [v25 detectLanguageFromTextHeuristicallyWithLanguages:queryCopy languages:v28 defaultLanguage:0];
      v30 = v29;
      if (v29)
      {
        languageCode2 = v29;
      }

      else
      {
        currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
        languageCode2 = [currentLocale2 languageCode];

        languageCode = currentLocale2;
      }

      languageCode = languageCode2;
      queryCopy = v59;
      resultsCopy = v24;
      uUIDString = v23;
    }

    v33 = [MEMORY[0x1E695DF58] componentsFromLocaleIdentifier:languageCode];
    v34 = [v33 objectForKeyedSubscript:*MEMORY[0x1E695D9B0]];

    v35 = -[PPSourceMetadata initWithDwellTimeSeconds:lengthSeconds:lengthCharacters:donationCount:contactHandleCount:flags:]([PPSourceMetadata alloc], "initWithDwellTimeSeconds:lengthSeconds:lengthCharacters:donationCount:contactHandleCount:flags:", 0, 0, [queryCopy length], 0, 0, 0);
    v36 = [PPSource alloc];
    v37 = objc_opt_new();
    v56 = v35;
    v57 = v34;
    v55 = [(PPSource *)v36 initWithBundleId:@"com.apple.siri.assistant_service" groupId:@"com.apple.proactive.PersonalizationPortrait.SiriDonation" documentId:uUIDString date:v37 relevanceDate:0 contactHandles:0 language:v34 metadata:v35];

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v38 = resultsCopy;
    v39 = [v38 countByEnumeratingWithState:&v61 objects:v66 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v62;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v62 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v61 + 1) + 8 * i);
          v44 = [v43 qid];

          if (v44)
          {
            v45 = [PPTopic alloc];
            v46 = [v43 qid];
            v47 = [(PPTopic *)v45 initWithTopicIdentifier:v46];

            v48 = [PPScoredItem alloc];
            confidence = [v43 confidence];
            [confidence doubleValue];
            v50 = [(PPScoredItem *)v48 initWithItem:v47 score:?];
            [v18 addObject:v50];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v61 objects:v66 count:16];
      }

      while (v40);
    }

    v51 = objc_opt_new();
    v60 = 0;
    v17 = [v51 donateTopics:v18 source:v55 algorithm:2 cloudSync:1 sentimentScore:0 exactMatchesInSourceText:&v60 error:0.0];
    v52 = v60;

    if (errorCopy && v52)
    {
      v53 = v52;
      *errorCopy = v52;
    }

    queryCopy = v59;
    v14 = 0;
  }

  return v17;
}

@end