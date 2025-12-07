@interface LNSpotlightCascadeTranslator
- (BOOL)isAllowedClientBundleIdentifier:(id)identifier;
- (LNSpotlightCascadeTranslator)init;
- (id)disabledAppEntityTypeIdentifiersForBundleIdentifier:(id)identifier;
- (id)lookupAssistantSchemasForTypeIdentifier:(id)identifier fromBundleId:(id)id;
- (id)translateItem:(id)item fromBundleId:(id)id error:(id *)error;
- (unsigned)assistantSchemaTypeFromIdentifier:(id)identifier;
@end

@implementation LNSpotlightCascadeTranslator

- (id)translateItem:(id)item fromBundleId:(id)id error:(id *)error
{
  v105 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  idCopy = id;
  attributeSet = [itemCopy attributeSet];
  v11 = [attributeSet attributeForKey:@"_kMDItemAppEntityInstanceIdentifier"];

  if (v11)
  {
    attributeSet2 = [itemCopy attributeSet];
    v13 = [attributeSet2 attributeForKey:@"_kMDItemAppEntityTypeIdentifier"];

    if (!v13)
    {
      v29 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LNSpotlightCascadeTranslator" code:2 userInfo:0];
      if (error && v29)
      {
        v29 = v29;
        *error = v29;
      }

      v28 = 0;
      goto LABEL_106;
    }

    v81 = [(LNSpotlightCascadeTranslator *)self lookupAssistantSchemasForTypeIdentifier:v13 fromBundleId:idCopy];
    attributeSet3 = [itemCopy attributeSet];
    v15 = [attributeSet3 attributeForKey:@"kMDItemAppEntityTitle"];

    if (!v15)
    {
      v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LNSpotlightCascadeTranslator" code:3 userInfo:0];
      if (error && v30)
      {
        v30 = v30;
        *error = v30;
      }

      v28 = 0;
      goto LABEL_105;
    }

    attributeSet4 = [itemCopy attributeSet];
    v80 = [attributeSet4 attributeForKey:@"kMDItemAppEntitySubtitle"];

    attributeSet5 = [itemCopy attributeSet];
    v79 = [attributeSet5 attributeForKey:@"kMDItemAppEntityDisplayRepresentationSynonyms"];

    v87 = 0;
    v88 = &v87;
    v89 = 0x2050000000;
    v18 = getCCAppEntityDisplayRepresentationClass_softClass;
    v90 = getCCAppEntityDisplayRepresentationClass_softClass;
    if (!getCCAppEntityDisplayRepresentationClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v102 = __getCCAppEntityDisplayRepresentationClass_block_invoke;
      v103 = &unk_1E74B26D0;
      v104 = &v87;
      __getCCAppEntityDisplayRepresentationClass_block_invoke(&buf);
      v18 = v88[3];
    }

    v19 = v18;
    _Block_object_dispose(&v87, 8);
    if (!v18)
    {
      v31 = MEMORY[0x1E696ABC0];
      v99 = *MEMORY[0x1E696A278];
      v100 = @"Cannot load class CCAppEntityDisplayRepresentation";
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      v26 = [v31 errorWithDomain:@"LNSpotlightCascadeTranslator" code:4 userInfo:v32];

      v33 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
        _os_log_impl(&dword_19763D000, v33, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
      }

      v28 = 0;
      if (error && v26)
      {
        v34 = v26;
        v28 = 0;
        *error = v26;
      }

      goto LABEL_104;
    }

    v86 = 0;
    v78 = [[v18 alloc] initWithTitle:v15 subtitle:v80 synonyms:v79 error:&v86];
    v20 = v86;
    if (!v78)
    {
      v35 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v20;
        _os_log_impl(&dword_19763D000, v35, OS_LOG_TYPE_ERROR, "Cannot create CCAppEntityDisplayRepresentation. Error: %@", &buf, 0xCu);
      }

      v28 = 0;
      if (error && v20)
      {
        v36 = v20;
        v28 = 0;
        *error = v20;
      }

      v26 = v20;
      goto LABEL_103;
    }

    v87 = 0;
    v88 = &v87;
    v89 = 0x2050000000;
    v21 = getCCAppEntityTypeDisplayRepresentationClass_softClass;
    v90 = getCCAppEntityTypeDisplayRepresentationClass_softClass;
    if (!getCCAppEntityTypeDisplayRepresentationClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v102 = __getCCAppEntityTypeDisplayRepresentationClass_block_invoke;
      v103 = &unk_1E74B26D0;
      v104 = &v87;
      __getCCAppEntityTypeDisplayRepresentationClass_block_invoke(&buf);
      v21 = v88[3];
    }

    v22 = v21;
    _Block_object_dispose(&v87, 8);
    if (!v21)
    {
      v37 = MEMORY[0x1E696ABC0];
      v97 = *MEMORY[0x1E696A278];
      v98 = @"Cannot load class CCAppEntityTypeDisplayRepresentation";
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
      v26 = [v37 errorWithDomain:@"LNSpotlightCascadeTranslator" code:4 userInfo:v38];

      v39 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
        _os_log_impl(&dword_19763D000, v39, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
      }

      v28 = 0;
      if (error && v26)
      {
        v40 = v26;
        v28 = 0;
        *error = v26;
      }

      goto LABEL_103;
    }

    attributeSet6 = [itemCopy attributeSet];
    v77 = [attributeSet6 attributeForKey:@"_kMDItemAppEntityTypeDisplayRepresentationName"];

    if (v77)
    {
      attributeSet7 = [itemCopy attributeSet];
      v25 = [attributeSet7 attributeForKey:@"_kMDItemAppEntityTypeDisplayRepresentationSynonyms"];

      v85 = v20;
      v76 = [[v21 alloc] initWithName:v77 synonyms:v25 error:&v85];
      v26 = v85;

      if (!v76)
      {
        v50 = getLNLogCategoryVocabulary();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v26;
          _os_log_impl(&dword_19763D000, v50, OS_LOG_TYPE_ERROR, "Cannot create CCAppEntityTypeDisplayRepresentation. Error: %@", &buf, 0xCu);
        }

        if (error && v26)
        {
          v51 = v26;
          *error = v26;
        }

        v28 = 0;
        goto LABEL_102;
      }

      v20 = v26;
    }

    else
    {
      v76 = 0;
    }

    v87 = 0;
    v88 = &v87;
    v89 = 0x2050000000;
    v41 = getCCAppIntentsIndexedEntityContentClass_softClass;
    v90 = getCCAppIntentsIndexedEntityContentClass_softClass;
    if (!getCCAppIntentsIndexedEntityContentClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v102 = __getCCAppIntentsIndexedEntityContentClass_block_invoke;
      v103 = &unk_1E74B26D0;
      v104 = &v87;
      __getCCAppIntentsIndexedEntityContentClass_block_invoke(&buf);
      v41 = v88[3];
    }

    v42 = v41;
    _Block_object_dispose(&v87, 8);
    if (!v41)
    {
      v46 = MEMORY[0x1E696ABC0];
      v95 = *MEMORY[0x1E696A278];
      v96 = @"Cannot load class CCAppIntentsIndexedEntityContent";
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
      v26 = [v46 errorWithDomain:@"LNSpotlightCascadeTranslator" code:4 userInfo:v47];

      v48 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
        _os_log_impl(&dword_19763D000, v48, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
      }

      v28 = 0;
      if (error && v26)
      {
        v49 = v26;
        v28 = 0;
        *error = v26;
      }

      goto LABEL_101;
    }

    v84 = v20;
    v75 = [[v41 alloc] initWithTypeIdentifier:v13 displayRepresentation:v78 typeDisplayRepresentation:v76 assistantDefinedSchemas:v81 error:&v84];
    v74 = v84;

    if (v75)
    {
      v87 = 0;
      v88 = &v87;
      v89 = 0x2050000000;
      v43 = getCCAppIntentsIndexedEntityMetaContentClass_softClass;
      v90 = getCCAppIntentsIndexedEntityMetaContentClass_softClass;
      if (!getCCAppIntentsIndexedEntityMetaContentClass_softClass)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v102 = __getCCAppIntentsIndexedEntityMetaContentClass_block_invoke;
        v103 = &unk_1E74B26D0;
        v104 = &v87;
        __getCCAppIntentsIndexedEntityMetaContentClass_block_invoke(&buf);
        v43 = v88[3];
      }

      v44 = v43;
      _Block_object_dispose(&v87, 8);
      if (v43)
      {
        attributeSet8 = [itemCopy attributeSet];
        v73 = [attributeSet8 attributeForKey:@"_kMDItemAppEntityPriority"];

        if (v73)
        {
          if ([v73 isEqual:&unk_1F0BD71C8])
          {

            v73 = &unk_1F0BD7240;
          }
        }

        else
        {
          v73 = 0;
        }

        v58 = [v43 alloc];
        uniqueIdentifier = [itemCopy uniqueIdentifier];
        v83 = v74;
        v60 = [v58 initWithSourceItemIdentifier:uniqueIdentifier saliency:v73 error:&v83];
        v61 = v83;

        if (v60)
        {
          CCItemInstanceClass = getCCItemInstanceClass();
          if (CCItemInstanceClass)
          {
            v82 = v61;
            v28 = [[CCItemInstanceClass alloc] initWithContent:v75 metaContent:v60 error:&v82];
            v26 = v82;

            if (v28)
            {
              v63 = v28;
            }

            else
            {
              v70 = getLNLogCategoryVocabulary();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = 138412290;
                *(&buf + 4) = v26;
                _os_log_impl(&dword_19763D000, v70, OS_LOG_TYPE_ERROR, "Cannot create CCItemInstance. Error: %@", &buf, 0xCu);
              }

              if (error && v26)
              {
                v71 = v26;
                *error = v26;
              }
            }
          }

          else
          {
            v66 = MEMORY[0x1E696ABC0];
            v91 = *MEMORY[0x1E696A278];
            v92 = @"Cannot load class CCItemInstance";
            v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
            v26 = [v66 errorWithDomain:@"LNSpotlightCascadeTranslator" code:4 userInfo:v67];

            v68 = getLNLogCategoryVocabulary();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v26;
              _os_log_impl(&dword_19763D000, v68, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
            }

            v28 = 0;
            if (error && v26)
            {
              v69 = v26;
              v28 = 0;
              *error = v26;
            }
          }
        }

        else
        {
          v64 = getLNLogCategoryVocabulary();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v61;
            _os_log_impl(&dword_19763D000, v64, OS_LOG_TYPE_ERROR, "Cannot create CCAppIntentsIndexedEntityMetaContent. Error: %@", &buf, 0xCu);
          }

          v28 = 0;
          if (error && v61)
          {
            v65 = v61;
            v28 = 0;
            *error = v61;
          }

          v26 = v61;
        }

        goto LABEL_100;
      }

      v54 = MEMORY[0x1E696ABC0];
      v93 = *MEMORY[0x1E696A278];
      v94 = @"Cannot load class CCAppIntentsIndexedEntityMetaContent";
      v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
      v26 = [v54 errorWithDomain:@"LNSpotlightCascadeTranslator" code:4 userInfo:v55];

      v56 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
        _os_log_impl(&dword_19763D000, v56, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
      }

      v28 = 0;
      if (!error || !v26)
      {
        goto LABEL_100;
      }

      v57 = v26;
      v28 = 0;
    }

    else
    {
      v52 = getLNLogCategoryVocabulary();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v74;
        _os_log_impl(&dword_19763D000, v52, OS_LOG_TYPE_ERROR, "Cannot create CCAppIntentsIndexedEntityContent. Error: %@", &buf, 0xCu);
      }

      v28 = 0;
      if (!error)
      {
        v26 = v74;
        goto LABEL_100;
      }

      if (!v74)
      {
        v26 = 0;
        goto LABEL_100;
      }

      v53 = v74;
      v28 = 0;
      v26 = v74;
    }

    *error = v26;
LABEL_100:

LABEL_101:
LABEL_102:

LABEL_103:
LABEL_104:

LABEL_105:
LABEL_106:

    goto LABEL_107;
  }

  v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"LNSpotlightCascadeTranslator" code:1 userInfo:0];
  if (error && v27)
  {
    v27 = v27;
    *error = v27;
  }

  v28 = 0;
LABEL_107:

  return v28;
}

- (id)lookupAssistantSchemasForTypeIdentifier:(id)identifier fromBundleId:(id)id
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  idCopy = id;
  os_unfair_lock_lock(&self->_lock);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v8 = getCCAssistantSchemaClass_softClass;
  v32 = getCCAssistantSchemaClass_softClass;
  if (!getCCAssistantSchemaClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCCAssistantSchemaClass_block_invoke;
    v34 = &unk_1E74B26D0;
    v35 = &v29;
    __getCCAssistantSchemaClass_block_invoke(buf);
    v8 = v30[3];
  }

  v9 = v8;
  _Block_object_dispose(&v29, 8);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v10 = getCCAssistantSchemaVersionClass_softClass;
  v32 = getCCAssistantSchemaVersionClass_softClass;
  if (!getCCAssistantSchemaVersionClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCCAssistantSchemaVersionClass_block_invoke;
    v34 = &unk_1E74B26D0;
    v35 = &v29;
    __getCCAssistantSchemaVersionClass_block_invoke(buf);
    v10 = v30[3];
  }

  v11 = v10;
  _Block_object_dispose(&v29, 8);
  if (v8 && v10)
  {
    v12 = [(NSMutableDictionary *)self->_typeIdentifierToAssistantSchemasCache objectForKeyedSubscript:identifierCopy];
    if (v12)
    {
      v13 = v12;
      v14 = v13;
    }

    else
    {
      v15 = objc_opt_new();
      metadataProvider = self->_metadataProvider;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __85__LNSpotlightCascadeTranslator_lookupAssistantSchemasForTypeIdentifier_fromBundleId___block_invoke;
      v23[3] = &unk_1E74B1638;
      v17 = identifierCopy;
      v24 = v17;
      selfCopy = self;
      v27 = v10;
      v28 = v8;
      v18 = v15;
      v26 = v18;
      v22 = 0;
      [(LNMetadataProvider *)metadataProvider enumerateEntitiesForBundleIdentifier:idCopy usingBlock:v23 error:&v22];
      v19 = v22;
      if (v19)
      {
        v20 = getLNLogCategoryVocabulary();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = idCopy;
          *&buf[12] = 2112;
          *&buf[14] = v19;
          _os_log_impl(&dword_19763D000, v20, OS_LOG_TYPE_ERROR, "Failed to lookup entity metadata for bundle %@ with error %@", buf, 0x16u);
        }

        v14 = 0;
      }

      else
      {
        [(NSMutableDictionary *)self->_typeIdentifierToAssistantSchemasCache setObject:v18 forKeyedSubscript:v17];
        v14 = v18;
      }

      v13 = 0;
    }
  }

  else
  {
    v13 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v13, OS_LOG_TYPE_ERROR, "Cannot load class CCAssistantSchema, CCAssistantSchemaVersion", buf, 2u);
    }

    v14 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v14;
}

void __85__LNSpotlightCascadeTranslator_lookupAssistantSchemasForTypeIdentifier_fromBundleId___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v39 = a2;
  v5 = [v39 identifier];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    v38 = a3;
    v7 = getLNLogCategoryVocabulary();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v39 assistantDefinedSchemas];
      v9 = *(a1 + 32);
      *buf = 138412546;
      v52 = v8;
      v53 = 2112;
      v54 = v9;
      _os_log_impl(&dword_19763D000, v7, OS_LOG_TYPE_DEBUG, "Found conforming assistant schemas %@ for type identifier %@", buf, 0x16u);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = [v39 assistantDefinedSchemas];
    v42 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v42)
    {
      v10 = *v47;
      v40 = *v47;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v47 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v46 + 1) + 8 * i);
          v13 = [v12 version];
          v14 = [v13 componentsSeparatedByString:@"."];
          v43 = v13;
          if ([v14 count] == 3)
          {
            v15 = MEMORY[0x1E696AD98];
            v16 = [v14 objectAtIndexedSubscript:0];
            v17 = [v15 numberWithInteger:{objc_msgSend(v16, "integerValue")}];

            v18 = MEMORY[0x1E696AD98];
            v19 = [v14 objectAtIndexedSubscript:1];
            v20 = [v18 numberWithInteger:{objc_msgSend(v19, "integerValue")}];

            v21 = MEMORY[0x1E696AD98];
            [v14 objectAtIndexedSubscript:1];
            v23 = v22 = a1;
            v24 = [v21 numberWithInteger:{objc_msgSend(v23, "integerValue")}];

            a1 = v22;
            v25 = objc_alloc(*(v22 + 56));
            v45 = 0;
            v26 = [v25 initWithMajor:v17 minor:v20 patch:v24 error:&v45];
            v27 = v45;
            if (v27)
            {
              v28 = getLNLogCategoryVocabulary();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v52 = v43;
                v53 = 2112;
                v54 = v27;
                _os_log_impl(&dword_19763D000, v28, OS_LOG_TYPE_ERROR, "Failed to build CCAssistantSchemaVersion from version %@ with error %@", buf, 0x16u);
              }

              a1 = v22;
            }

            v10 = v40;
          }

          else
          {
            v17 = getLNLogCategoryVocabulary();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v52 = v13;
              _os_log_impl(&dword_19763D000, v17, OS_LOG_TYPE_ERROR, "Failed to parse version components from version string %@", buf, 0xCu);
            }

            v26 = 0;
          }

          v29 = *(a1 + 40);
          v30 = [v12 name];
          v31 = [v29 assistantSchemaTypeFromIdentifier:v30];

          v32 = objc_alloc(*(a1 + 64));
          v44 = 0;
          v33 = [v32 initWithType:v31 version:v26 error:&v44];
          v34 = v44;
          v35 = v34;
          if (v33)
          {
            v36 = v34 == 0;
          }

          else
          {
            v36 = 0;
          }

          if (v36)
          {
            [*(a1 + 48) addObject:v33];
          }

          else
          {
            v37 = getLNLogCategoryVocabulary();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v52 = v35;
              _os_log_impl(&dword_19763D000, v37, OS_LOG_TYPE_ERROR, "Failed to build CCAssistantSchema with error %@", buf, 0xCu);
            }
          }
        }

        v42 = [obj countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v42);
    }

    *v38 = 1;
  }
}

- (unsigned)assistantSchemaTypeFromIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqual:@"AudioBookEntity"])
  {
    v4 = 1;
  }

  else if ([identifierCopy isEqual:@"BookEntity"])
  {
    v4 = 2;
  }

  else if ([identifierCopy isEqual:@"BookSettingsEntity"])
  {
    v4 = 3;
  }

  else if ([identifierCopy isEqual:@"BookmarkEntity"])
  {
    v4 = 4;
  }

  else if ([identifierCopy isEqual:@"HistoryEntity"])
  {
    v4 = 5;
  }

  else if ([identifierCopy isEqual:@"TabEntity"])
  {
    v4 = 6;
  }

  else if ([identifierCopy isEqual:@"WindowEntity"])
  {
    v4 = 7;
  }

  else if ([identifierCopy isEqual:@"FileEntity"])
  {
    v4 = 8;
  }

  else if ([identifierCopy isEqual:@"JournalEntity"])
  {
    v4 = 9;
  }

  else if ([identifierCopy isEqual:@"MailAccountEntity"])
  {
    v4 = 10;
  }

  else if ([identifierCopy isEqual:@"MailDraftEntity"])
  {
    v4 = 11;
  }

  else if ([identifierCopy isEqual:@"MailMessageEntity"])
  {
    v4 = 12;
  }

  else if ([identifierCopy isEqual:@"MailboxEntity"])
  {
    v4 = 13;
  }

  else if ([identifierCopy isEqual:@"AccountEntity"])
  {
    v4 = 14;
  }

  else if ([identifierCopy isEqual:@"AllowDarkBackgroundsEntity"])
  {
    v4 = 15;
  }

  else if ([identifierCopy isEqual:@"AttachmentEntity"])
  {
    v4 = 16;
  }

  else if ([identifierCopy isEqual:@"AutoConvertToTagEntity"])
  {
    v4 = 17;
  }

  else if ([identifierCopy isEqual:@"AutoSortCheckedItemsEntity"])
  {
    v4 = 18;
  }

  else if ([identifierCopy isEqual:@"ChecklistItemEntity"])
  {
    v4 = 19;
  }

  else if ([identifierCopy isEqual:@"DateHeadersEntity"])
  {
    v4 = 20;
  }

  else if ([identifierCopy isEqual:@"DefaultParagraphStyleEntity"])
  {
    v4 = 21;
  }

  else if ([identifierCopy isEqual:@"FolderEntity"])
  {
    v4 = 22;
  }

  else if ([identifierCopy isEqual:@"LinesAndGridsEntity"])
  {
    v4 = 23;
  }

  else if ([identifierCopy isEqual:@"MentionNotificationsEntity"])
  {
    v4 = 24;
  }

  else if ([identifierCopy isEqual:@"NoteEntity"])
  {
    v4 = 25;
  }

  else if ([identifierCopy isEqual:@"NoteListSortTypeEntity"])
  {
    v4 = 26;
  }

  else if ([identifierCopy isEqual:@"NotesSettingsEntity"])
  {
    v4 = 27;
  }

  else if ([identifierCopy isEqual:@"SavePhotosEntity"])
  {
    v4 = 28;
  }

  else if ([identifierCopy isEqual:@"TableEntity"])
  {
    v4 = 29;
  }

  else if ([identifierCopy isEqual:@"TagEntity"])
  {
    v4 = 30;
  }

  else if ([identifierCopy isEqual:@"PhotoAlbumEntity"])
  {
    v4 = 31;
  }

  else if ([identifierCopy isEqual:@"PhotoEntity"])
  {
    v4 = 32;
  }

  else if ([identifierCopy isEqual:@"PhotoPersonEntity"])
  {
    v4 = 33;
  }

  else if ([identifierCopy isEqual:@"PresentationEntity"])
  {
    v4 = 34;
  }

  else if ([identifierCopy isEqual:@"PresentationSlideEntity"])
  {
    v4 = 35;
  }

  else if ([identifierCopy isEqual:@"PresentationTemplateEntity"])
  {
    v4 = 36;
  }

  else if ([identifierCopy isEqual:@"ReaderDocumentEntity"])
  {
    v4 = 37;
  }

  else if ([identifierCopy isEqual:@"SheetEntity"])
  {
    v4 = 39;
  }

  else if ([identifierCopy isEqual:@"SpreadsheetEntity"])
  {
    v4 = 40;
  }

  else if ([identifierCopy isEqual:@"SpreadsheetTemplateEntity"])
  {
    v4 = 41;
  }

  else if ([identifierCopy isEqual:@"CanvasEntity"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqual:", @"CanvasItemEntity"))
  {
    v4 = 42;
  }

  else if ([identifierCopy isEqual:@"WordProcessorDocumentEntity"])
  {
    v4 = 44;
  }

  else if ([identifierCopy isEqual:@"WordProcessorDocumentTemplateEntity"])
  {
    v4 = 45;
  }

  else if ([identifierCopy isEqual:@"WordProcessPageEntity"])
  {
    v4 = 46;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)disabledAppEntityTypeIdentifiersForBundleIdentifier:(id)identifier
{
  if ([identifier isEqualToString:@"com.apple.mobileslideshow"])
  {
    return &unk_1F0BD7228;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isAllowedClientBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  if ([(NSArray *)self->_disabledBundles containsObject:identifierCopy])
  {
    bOOLValue = 0;
  }

  else if ([identifierCopy hasPrefix:@"com.apple."])
  {
    bOOLValue = 1;
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_bundleIDsWithAssistantSchemaConformanceCache objectForKeyedSubscript:identifierCopy];
    v7 = v6;
    if (v6)
    {
      if ([v6 BOOLValue])
      {
        bOOLValue = [v7 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy__8763;
      v17 = __Block_byref_object_dispose__8764;
      v18 = &unk_1F0BD71C8;
      metadataProvider = self->_metadataProvider;
      v11 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __64__LNSpotlightCascadeTranslator_isAllowedClientBundleIdentifier___block_invoke;
      v12[3] = &unk_1E74B1610;
      v12[4] = &v13;
      [(LNMetadataProvider *)metadataProvider enumerateEntitiesForBundleIdentifier:identifierCopy usingBlock:v12 error:&v11];
      v9 = v11;
      [(NSMutableDictionary *)self->_bundleIDsWithAssistantSchemaConformanceCache setObject:v14[5] forKeyedSubscript:identifierCopy];
      bOOLValue = [v14[5] BOOLValue];
      _Block_object_dispose(&v13, 8);
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return bOOLValue;
}

void __64__LNSpotlightCascadeTranslator_isAllowedClientBundleIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 assistantDefinedSchemas];
  v6 = [v5 count];

  if (v6)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = &unk_1F0BD71E0;

    *a3 = 1;
  }
}

- (LNSpotlightCascadeTranslator)init
{
  v12.receiver = self;
  v12.super_class = LNSpotlightCascadeTranslator;
  v2 = [(LNSpotlightCascadeTranslator *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [[LNMetadataProvider alloc] initWithOptions:0];
    metadataProvider = v3->_metadataProvider;
    v3->_metadataProvider = v4;

    v6 = objc_opt_new();
    bundleIDsWithAssistantSchemaConformanceCache = v3->_bundleIDsWithAssistantSchemaConformanceCache;
    v3->_bundleIDsWithAssistantSchemaConformanceCache = v6;

    v8 = objc_opt_new();
    typeIdentifierToAssistantSchemasCache = v3->_typeIdentifierToAssistantSchemasCache;
    v3->_typeIdentifierToAssistantSchemasCache = v8;

    disabledBundles = v3->_disabledBundles;
    v3->_disabledBundles = &unk_1F0BD7210;
  }

  return v3;
}

@end