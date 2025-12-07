@interface PGPhotoChangeToGraphChangeConverter
+ (id)managedEntityNamesToTranslate;
- (PGPhotoChangeToGraphChangeConverter)initWithPhotoLibrary:(id)library loggingConnection:(id)connection;
- (id)graphChangesWithPhotoChange:(id)change progressBlock:(id)block;
- (void)_registerTranslatorsWithPhotoLibrary:(id)library;
@end

@implementation PGPhotoChangeToGraphChangeConverter

- (id)graphChangesWithPhotoChange:(id)change progressBlock:(id)block
{
  v39 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  blockCopy = block;
  v8 = _Block_copy(blockCopy);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (v8 && (v9 = CFAbsoluteTimeGetCurrent(), v9 - v30[3] >= 0.01) && (v30[3] = v9, v28 = 0, (*(v8 + 2))(v8, &v28, 0.0), v10 = *(v34 + 24) | v28, *(v34 + 24) = v10, (v10 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v38 = 70;
      *&v38[4] = 2080;
      *&v38[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGPhotoChangeToGraphChangeConverter.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v38 = changeCopy;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "PGPhotoChangeToGraphChangeConverter: handling change %@", buf, 0xCu);
    }

    array = [MEMORY[0x277CBEB18] array];
    entityTranslatorByEntityClassName = self->_entityTranslatorByEntityClassName;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __81__PGPhotoChangeToGraphChangeConverter_graphChangesWithPhotoChange_progressBlock___block_invoke;
    v20[3] = &unk_278884218;
    v20[4] = self;
    v21 = changeCopy;
    v23 = blockCopy;
    v15 = array;
    v22 = v15;
    v16 = v8;
    v24 = v16;
    v25 = &v29;
    v27 = xmmword_22F78C070;
    v26 = &v33;
    [(NSMutableDictionary *)entityTranslatorByEntityClassName enumerateKeysAndObjectsUsingBlock:v20];
    if (v8 && (Current = CFAbsoluteTimeGetCurrent(), Current - v30[3] >= 0.01) && (v30[3] = Current, v28 = 0, (*(v16 + 2))(v16, &v28, 1.0), v18 = *(v34 + 24) | v28, *(v34 + 24) = v18, (v18 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v38 = 172;
        *&v38[4] = 2080;
        *&v38[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Core/PGPhotoChangeToGraphChangeConverter.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v11 = v15;
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  return v11;
}

void __81__PGPhotoChangeToGraphChangeConverter_graphChangesWithPhotoChange_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v117 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v90 = v6;
  v8 = NSClassFromString(v6);
  v9 = *(*(a1 + 32) + 16);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v112 = v6;
    _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "PGPhotoChangeToGraphChangeConverter: handling entity %@", buf, 0xCu);
  }

  v88 = v7;

  v10 = *(*(a1 + 32) + 16);
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ChangedLocalIdentifiersForEntityClass", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v14 = mach_absolute_time();
  v89 = [*(a1 + 40) changedLocalIdentifiersForEntityClass:v8];
  v15 = mach_absolute_time();
  v16 = info;
  v17 = v13;
  v18 = v17;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v18, OS_SIGNPOST_INTERVAL_END, v11, "ChangedLocalIdentifiersForEntityClass", "", buf, 2u);
  }

  v19 = v18;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *v112 = "ChangedLocalIdentifiersForEntityClass";
    *&v112[8] = 2048;
    v113 = ((((v15 - v14) * v16.numer) / v16.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v20 = v89;
  v21 = [v89 objectForKeyedSubscript:*MEMORY[0x277CD9C18]];
  v22 = [v89 objectForKeyedSubscript:*MEMORY[0x277CD9BB8]];
  v23 = [v89 objectForKeyedSubscript:*MEMORY[0x277CD9CB0]];
  v92 = v21;
  v24 = [v21 count];
  v91 = v22;
  v25 = [v22 count];
  v87 = v23;
  v26 = [v23 count];
  v27 = *(*(a1 + 32) + 16);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    *v112 = v24;
    *&v112[4] = 1024;
    *&v112[6] = v25;
    LOWORD(v113) = 1024;
    *(&v113 + 2) = v26;
    _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "PGPhotoChangeToGraphChangeConverter: %d insertions, %d deletions, %d updates", buf, 0x14u);
  }

  v28 = v88;
  if (v24)
  {
    v29 = [v88 graphChangesForInsertedLocalIdentifiers:v92 progressBlock:*(a1 + 56)];
    if (v29)
    {
      [*(a1 + 48) addObjectsFromArray:v29];
    }
  }

  if (*(a1 + 64))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v31 = *(*(a1 + 72) + 8);
    if (Current - *(v31 + 24) >= *(a1 + 88))
    {
      *(v31 + 24) = Current;
      buf[0] = 0;
      (*(*(a1 + 64) + 16))(*(a1 + 96));
      *(*(*(a1 + 80) + 8) + 24) |= buf[0];
      v32 = *(*(*(a1 + 80) + 8) + 24);
      if (v32 == 1)
      {
        goto LABEL_82;
      }
    }
  }

  if (v25)
  {
    v33 = [v88 graphChangesForDeletedLocalIdentifiers:v91 progressBlock:*(a1 + 56)];
    if (v33)
    {
      [*(a1 + 48) addObjectsFromArray:v33];
    }
  }

  if (*(a1 + 64))
  {
    v34 = CFAbsoluteTimeGetCurrent();
    v35 = *(*(a1 + 72) + 8);
    if (v34 - *(v35 + 24) >= *(a1 + 88))
    {
      *(v35 + 24) = v34;
      buf[0] = 0;
      (*(*(a1 + 64) + 16))(*(a1 + 96));
      *(*(*(a1 + 80) + 8) + 24) |= buf[0];
      v32 = *(*(*(a1 + 80) + 8) + 24);
      if (v32 == 1)
      {
        goto LABEL_82;
      }
    }
  }

  if (!v26)
  {
    goto LABEL_86;
  }

  v85 = v19;
  v93 = [MEMORY[0x277CBEB98] set];
  v36 = [MEMORY[0x277CBEB38] dictionary];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__PGPhotoChangeToGraphChangeConverter_graphChangesWithPhotoChange_progressBlock___block_invoke_199;
  aBlock[3] = &unk_2788841F0;
  v105 = v88;
  v37 = v36;
  v106 = v37;
  v107 = *(a1 + 40);
  v109 = *(a1 + 56);
  v108 = *(a1 + 48);
  v97 = _Block_copy(aBlock);
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = v87;
  v38 = [obj countByEnumeratingWithState:&v100 objects:v116 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v101;
    v95 = v8;
    v94 = *v101;
    while (2)
    {
      v41 = 0;
      v96 = v39;
      do
      {
        if (*v101 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v100 + 1) + 8 * v41);
        v43 = [*(a1 + 40) changedPropertyNamesForLocalIdentifier:v42 entityClass:v8];
        v44 = [v43 count];
        v45 = v43;
        if (v44 || [objc_opt_class() includesRelationshipChanges] && (v46 = objc_msgSend(*(a1 + 40), "hasRelationshipChangesForLocalIdentifier:", v42), v45 = v93, v46))
        {
          [v37 setObject:v45 forKeyedSubscript:v42];
        }

        v47 = [v37 count];
        if (v47 >= 0xC8)
        {
          v48 = v47;
          if (*(a1 + 64))
          {
            v49 = CFAbsoluteTimeGetCurrent();
            v50 = *(*(a1 + 72) + 8);
            if (v49 - *(v50 + 24) >= *(a1 + 88))
            {
              *(v50 + 24) = v49;
              buf[0] = 0;
              (*(*(a1 + 64) + 16))(*(a1 + 96));
              *(*(*(a1 + 80) + 8) + 24) |= buf[0];
              if (*(*(*(a1 + 80) + 8) + 24) == 1)
              {
                *a4 = 1;
LABEL_62:

                v69 = 0;
                goto LABEL_77;
              }
            }
          }

          v51 = a1;
          v52 = *(*(a1 + 32) + 16);
          v53 = os_signpost_id_generate(v52);
          v54 = v52;
          v55 = v54;
          if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v55, OS_SIGNPOST_INTERVAL_BEGIN, v53, "ProcessChangedPropertyNames", "", buf, 2u);
          }

          v99 = 0;
          mach_timebase_info(&v99);
          v56 = mach_absolute_time();
          v97[2]();
          v57 = mach_absolute_time();
          v58 = v99;
          v59 = v55;
          v60 = v59;
          if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
          {
            *buf = 67109120;
            *v112 = v48;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v60, OS_SIGNPOST_INTERVAL_END, v53, "ProcessChangedPropertyNames", "%d entities", buf, 8u);
          }

          v61 = v60;
          if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"%d entities", v48];
            v62 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 136315650;
            *v112 = "ProcessChangedPropertyNames";
            *&v112[8] = 2112;
            v113 = v62;
            v114 = 2048;
            v115 = ((((v57 - v56) * v58.numer) / v58.denom) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v61, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
          }

          a1 = v51;
          v8 = v95;
          if (*(v51 + 64))
          {
            v63 = CFAbsoluteTimeGetCurrent();
            v64 = *(*(v51 + 72) + 8);
            if (v63 - *(v64 + 24) >= *(v51 + 88))
            {
              *(v64 + 24) = v63;
              buf[0] = 0;
              (*(*(v51 + 64) + 16))(*(v51 + 96));
              *(*(*(v51 + 80) + 8) + 24) |= buf[0];
              if (*(*(*(v51 + 80) + 8) + 24) == 1)
              {
                *a4 = 1;

                goto LABEL_62;
              }
            }
          }

          v39 = v96;
          v40 = v94;
        }

        ++v41;
      }

      while (v39 != v41);
      v39 = [obj countByEnumeratingWithState:&v100 objects:v116 count:16];
      if (v39)
      {
        continue;
      }

      break;
    }
  }

  v65 = [v37 count];
  if (v65)
  {
    v66 = v65;
    if (*(a1 + 64) && (v67 = CFAbsoluteTimeGetCurrent(), v68 = *(*(a1 + 72) + 8), v67 - *(v68 + 24) >= *(a1 + 88)) && (*(v68 + 24) = v67, buf[0] = 0, (*(*(a1 + 64) + 16))(*(a1 + 96)), *(*(*(a1 + 80) + 8) + 24) |= buf[0], v20 = v89, v19 = v85, *(*(*(a1 + 80) + 8) + 24) == 1))
    {
      v69 = 0;
      *a4 = 1;
    }

    else
    {
      v70 = *(*(a1 + 32) + 16);
      v71 = os_signpost_id_generate(v70);
      v72 = v70;
      v73 = v72;
      if (v71 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v72))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v73, OS_SIGNPOST_INTERVAL_BEGIN, v71, "ProcessChangedPropertyNames", "", buf, 2u);
      }

      v99 = 0;
      mach_timebase_info(&v99);
      v74 = mach_absolute_time();
      v97[2]();
      v75 = mach_absolute_time();
      v76 = v99;
      v77 = v73;
      v78 = v77;
      if (v71 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
      {
        *buf = 67109120;
        *v112 = v66;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v78, OS_SIGNPOST_INTERVAL_END, v71, "ProcessChangedPropertyNames", "%d entities", buf, 8u);
      }

      v79 = v78;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%d entities", v66];
        v80 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 136315650;
        *v112 = "ProcessChangedPropertyNames";
        *&v112[8] = 2112;
        v113 = v80;
        v114 = 2048;
        v115 = ((((v75 - v74) * v76.numer) / v76.denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v79, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
      }

      v20 = v89;
      v19 = v85;
      if (*(a1 + 64) && (v81 = CFAbsoluteTimeGetCurrent(), v82 = *(*(a1 + 72) + 8), v81 - *(v82 + 24) >= *(a1 + 88)) && (*(v82 + 24) = v81, buf[0] = 0, (*(*(a1 + 64) + 16))(*(a1 + 96)), *(*(*(a1 + 80) + 8) + 24) |= buf[0], *(*(*(a1 + 80) + 8) + 24) == 1))
      {
        *a4 = 1;

        v69 = 0;
      }

      else
      {

        v69 = 1;
      }
    }
  }

  else
  {
    v69 = 1;
LABEL_77:
    v20 = v89;
    v19 = v85;
  }

  v28 = v88;
  if (v69)
  {
LABEL_86:
    if (*(a1 + 64))
    {
      v83 = CFAbsoluteTimeGetCurrent();
      v84 = *(*(a1 + 72) + 8);
      if (v83 - *(v84 + 24) >= *(a1 + 88))
      {
        *(v84 + 24) = v83;
        buf[0] = 0;
        (*(*(a1 + 64) + 16))(*(a1 + 96));
        *(*(*(a1 + 80) + 8) + 24) |= buf[0];
        v32 = *(*(*(a1 + 80) + 8) + 24);
        if (v32 == 1)
        {
LABEL_82:
          *a4 = v32;
        }
      }
    }
  }
}

void __81__PGPhotoChangeToGraphChangeConverter_graphChangesWithPhotoChange_progressBlock___block_invoke_199(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) graphChangesForChangedPropertyNamesByLocalIdentifier:*(a1 + 40) change:*(a1 + 48) progressBlock:*(a1 + 64)];
  [*(a1 + 56) addObjectsFromArray:v3];
  [*(a1 + 40) removeAllObjects];

  objc_autoreleasePoolPop(v2);
}

- (void)_registerTranslatorsWithPhotoLibrary:(id)library
{
  v4 = MEMORY[0x277CBEB38];
  libraryCopy = library;
  dictionary = [v4 dictionary];
  entityTranslatorByEntityClassName = self->_entityTranslatorByEntityClassName;
  self->_entityTranslatorByEntityClassName = dictionary;

  v8 = [(PGGraphEntityTranslator *)[PGGraphAssetTranslator alloc] initWithPhotoLibrary:libraryCopy];
  v9 = self->_entityTranslatorByEntityClassName;
  v10 = +[(PGGraphEntityTranslator *)PGGraphAssetTranslator];
  [(NSMutableDictionary *)v9 setObject:v8 forKeyedSubscript:v10];

  v11 = [(PGGraphEntityTranslator *)[PGGraphMomentTranslator alloc] initWithPhotoLibrary:libraryCopy];
  v12 = self->_entityTranslatorByEntityClassName;
  v13 = +[(PGGraphEntityTranslator *)PGGraphMomentTranslator];
  [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:v13];

  v14 = [(PGGraphEntityTranslator *)[PGGraphHighlightTranslator alloc] initWithPhotoLibrary:libraryCopy];
  v15 = self->_entityTranslatorByEntityClassName;
  v16 = +[(PGGraphEntityTranslator *)PGGraphHighlightTranslator];
  [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v16];

  v17 = [(PGGraphEntityTranslator *)[PGGraphFaceTranslator alloc] initWithPhotoLibrary:libraryCopy];
  v18 = self->_entityTranslatorByEntityClassName;
  v19 = +[(PGGraphEntityTranslator *)PGGraphFaceTranslator];
  [(NSMutableDictionary *)v18 setObject:v17 forKeyedSubscript:v19];

  v20 = [(PGGraphEntityTranslator *)[PGGraphPersonTranslator alloc] initWithPhotoLibrary:libraryCopy];
  v21 = self->_entityTranslatorByEntityClassName;
  v22 = +[(PGGraphEntityTranslator *)PGGraphPersonTranslator];
  [(NSMutableDictionary *)v21 setObject:v20 forKeyedSubscript:v22];

  v25 = [(PGGraphEntityTranslator *)[PGGraphSocialGroupTranslator alloc] initWithPhotoLibrary:libraryCopy];
  v23 = self->_entityTranslatorByEntityClassName;
  v24 = +[(PGGraphEntityTranslator *)PGGraphSocialGroupTranslator];
  [(NSMutableDictionary *)v23 setObject:v25 forKeyedSubscript:v24];
}

- (PGPhotoChangeToGraphChangeConverter)initWithPhotoLibrary:(id)library loggingConnection:(id)connection
{
  libraryCopy = library;
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = PGPhotoChangeToGraphChangeConverter;
  v8 = [(PGPhotoChangeToGraphChangeConverter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(PGPhotoChangeToGraphChangeConverter *)v8 _registerTranslatorsWithPhotoLibrary:libraryCopy];
    objc_storeStrong(&v9->_loggingConnection, connection);
  }

  return v9;
}

+ (id)managedEntityNamesToTranslate
{
  if (managedEntityNamesToTranslate_onceToken != -1)
  {
    dispatch_once(&managedEntityNamesToTranslate_onceToken, &__block_literal_global_40082);
  }

  v3 = managedEntityNamesToTranslate_managedEntityNamesToTranslate;

  return v3;
}

void __68__PGPhotoChangeToGraphChangeConverter_managedEntityNamesToTranslate__block_invoke()
{
  v10[6] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = +[(PGGraphEntityTranslator *)PGGraphAssetTranslator];
  v10[0] = v1;
  v2 = +[(PGGraphEntityTranslator *)PGGraphMomentTranslator];
  v10[1] = v2;
  v3 = +[(PGGraphEntityTranslator *)PGGraphHighlightTranslator];
  v10[2] = v3;
  v4 = +[(PGGraphEntityTranslator *)PGGraphFaceTranslator];
  v10[3] = v4;
  v5 = +[(PGGraphEntityTranslator *)PGGraphPersonTranslator];
  v10[4] = v5;
  v6 = +[(PGGraphEntityTranslator *)PGGraphSocialGroupTranslator];
  v10[5] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:6];
  v8 = [v0 setWithArray:v7];
  v9 = managedEntityNamesToTranslate_managedEntityNamesToTranslate;
  managedEntityNamesToTranslate_managedEntityNamesToTranslate = v8;
}

@end