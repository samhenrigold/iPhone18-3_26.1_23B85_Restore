@interface PGGraphHighlightCollectionEnrichmentProcessor
- (PGGraphHighlightCollectionEnrichmentProcessor)initWithOptions:(id)options;
- (void)_enrichYearHighlights:(id)highlights monthsHighlights:(id)monthsHighlights withManager:(id)manager curationContext:(id)context enrichmentprogressBlock:(id)block;
- (void)enrichDataModelWithManager:(id)manager curationContext:(id)context graphUpdateInventory:(id)inventory progressReporter:(id)reporter;
@end

@implementation PGGraphHighlightCollectionEnrichmentProcessor

- (void)_enrichYearHighlights:(id)highlights monthsHighlights:(id)monthsHighlights withManager:(id)manager curationContext:(id)context enrichmentprogressBlock:(id)block
{
  *(&v193[2] + 4) = *MEMORY[0x277D85DE8];
  highlightsCopy = highlights;
  monthsHighlightsCopy = monthsHighlights;
  managerCopy = manager;
  contextCopy = context;
  blockCopy = block;
  v13 = _Block_copy(blockCopy);
  v189 = &v188;
  v190 = 0x2020000000;
  v191 = 0;
  v184 = 0;
  v185 = &v184;
  v186 = 0x2020000000;
  v187 = 0;
  v188 = 0;
  if (!v13 || (v14 = CFAbsoluteTimeGetCurrent(), v14 - v185[3] < 0.01) || (v185[3] = v14, LOBYTE(info.numer) = 0, (*(v13 + 2))(v13, &info, 0.0), v15 = *(v189 + 24) | LOBYTE(info.numer), *(v189 + 24) = v15, (v15 & 1) == 0))
  {
    photoLibrary = [managerCopy photoLibrary];
    enrichmentLoggingConnection = [managerCopy enrichmentLoggingConnection];
    v17 = [[PGHighlightItemModelManager alloc] initWithLibrary:photoLibrary];
    v132 = [[PGMonthEnrichmentRule alloc] initWithModelReader:v17 loggingConnection:enrichmentLoggingConnection];
    v131 = [[PGYearEnrichmentRule alloc] initWithModelReader:v17 loggingConnection:enrichmentLoggingConnection];
    v128 = [[PGHighlightItemEnrichment alloc] initWithRule:v132 modelWriter:v17];
    v126 = [[PGHighlightItemEnrichment alloc] initWithRule:v131 modelWriter:v17];
    v18 = enrichmentLoggingConnection;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [highlightsCopy count];
      buf = 134217984;
      v193[0] = v19;
      _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "Extracting existing clusters from (%ld) backing year", &buf, 0xCu);
    }

    v179[0] = MEMORY[0x277D85DD0];
    v179[1] = 3221225472;
    v179[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke;
    v179[3] = &unk_27888A188;
    v20 = v13;
    v180 = v20;
    v181 = &v184;
    v182 = &v188;
    v183 = 0x3F847AE147AE147BLL;
    v127 = [PGHighlightItemRestorer restoreExistingHighlightItemListsFromBackingHighlightItems:highlightsCopy usingModelReader:v17 progressBlock:v179];
    if (*(v189 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_131:

        goto LABEL_132;
      }

      buf = 67109378;
      LODWORD(v193[0]) = 145;
      WORD2(v193[0]) = 2080;
      *(v193 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
      v21 = MEMORY[0x277D86220];
LABEL_11:
      _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      goto LABEL_131;
    }

    if (v13)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v185[3] >= 0.01)
      {
        v185[3] = Current;
        LOBYTE(info.numer) = 0;
        (*(v20 + 2))(v20, &info, 0.1);
        v23 = *(v189 + 24) | LOBYTE(info.numer);
        *(v189 + 24) = v23;
        if (v23)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_131;
          }

          buf = 67109378;
          LODWORD(v193[0]) = 147;
          WORD2(v193[0]) = 2080;
          *(v193 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
          v21 = MEMORY[0x277D86220];
          goto LABEL_11;
        }
      }
    }

    v24 = v18;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [monthsHighlightsCopy count];
      buf = 134217984;
      v193[0] = v25;
      _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "Extracting existing clusters from (%ld) backing months", &buf, 0xCu);
    }

    v174[0] = MEMORY[0x277D85DD0];
    v174[1] = 3221225472;
    v174[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_224;
    v174[3] = &unk_27888A188;
    v26 = v20;
    v175 = v26;
    v176 = &v184;
    v177 = &v188;
    v178 = 0x3F847AE147AE147BLL;
    v27 = [PGHighlightItemRestorer restoreExistingHighlightItemListsFromBackingHighlightItems:monthsHighlightsCopy usingModelReader:v17 progressBlock:v174];
    if (*(v189 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_130:

        goto LABEL_131;
      }

      buf = 67109378;
      LODWORD(v193[0]) = 154;
      WORD2(v193[0]) = 2080;
      *(v193 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
      v28 = MEMORY[0x277D86220];
LABEL_22:
      _os_log_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      goto LABEL_130;
    }

    if (v13)
    {
      v29 = CFAbsoluteTimeGetCurrent();
      if (v29 - v185[3] >= 0.01)
      {
        v185[3] = v29;
        LOBYTE(info.numer) = 0;
        (*(v26 + 2))(v26, &info, 0.2);
        v30 = *(v189 + 24) | LOBYTE(info.numer);
        *(v189 + 24) = v30;
        if (v30)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_130;
          }

          buf = 67109378;
          LODWORD(v193[0]) = 156;
          WORD2(v193[0]) = 2080;
          *(v193 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
          v28 = MEMORY[0x277D86220];
          goto LABEL_22;
        }
      }
    }

    v121 = v27;
    v31 = v24;
    v32 = os_signpost_id_generate(v31);
    v33 = v31;
    v34 = v33;
    if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v34, OS_SIGNPOST_INTERVAL_BEGIN, v32, "MonthEventsSelection", "", &buf, 2u);
    }

    v120 = v34;

    info = 0;
    mach_timebase_info(&info);
    v118 = mach_absolute_time();
    v168[0] = MEMORY[0x277D85DD0];
    v168[1] = 3221225472;
    v168[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_225;
    v168[3] = &unk_27888A188;
    v35 = v26;
    v169 = v35;
    v170 = &v184;
    v171 = &v188;
    v172 = 0x3F847AE147AE147BLL;
    [(PGHighlightItemEnrichment *)v128 updateVisibilityStateForHighlightItemLists:v121 withManager:managerCopy progressBlock:v168];
    if (*(v189 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_129:

        v27 = v121;
        goto LABEL_130;
      }

      buf = 67109378;
      LODWORD(v193[0]) = 164;
      WORD2(v193[0]) = 2080;
      *(v193 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
      v36 = MEMORY[0x277D86220];
LABEL_34:
      _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      goto LABEL_129;
    }

    if (v13)
    {
      v37 = CFAbsoluteTimeGetCurrent();
      if (v37 - v185[3] >= 0.01)
      {
        v185[3] = v37;
        LOBYTE(v162.numer) = 0;
        (*(v35 + 2))(v35, &v162, 0.3);
        v38 = *(v189 + 24) | LOBYTE(v162.numer);
        *(v189 + 24) = v38;
        if (v38)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_129;
          }

          buf = 67109378;
          LODWORD(v193[0]) = 166;
          WORD2(v193[0]) = 2080;
          *(v193 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
          v36 = MEMORY[0x277D86220];
          goto LABEL_34;
        }
      }
    }

    v163[0] = MEMORY[0x277D85DD0];
    v163[1] = 3221225472;
    v163[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_226;
    v163[3] = &unk_27888A188;
    v115 = v35;
    v164 = v115;
    v165 = &v184;
    v166 = &v188;
    v167 = 0x3F847AE147AE147BLL;
    [(PGHighlightItemEnrichment *)v126 updateVisibilityStateForHighlightItemLists:v127 withManager:managerCopy progressBlock:v163];
    if (*(v189 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_128:

        goto LABEL_129;
      }

      buf = 67109378;
      LODWORD(v193[0]) = 171;
      WORD2(v193[0]) = 2080;
      *(v193 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
      v39 = MEMORY[0x277D86220];
LABEL_43:
      _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      goto LABEL_128;
    }

    v40 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v43 = v34;
    v44 = v43;
    if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v44, OS_SIGNPOST_INTERVAL_END, v32, "MonthEventsSelection", "", &buf, 2u);
    }

    v45 = v44;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      buf = 136315394;
      v193[0] = "MonthEventsSelection";
      LOWORD(v193[1]) = 2048;
      *(&v193[1] + 2) = ((((v40 - v118) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v45, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &buf, 0x16u);
    }

    if (v13)
    {
      v46 = CFAbsoluteTimeGetCurrent();
      if (v46 - v185[3] >= 0.01)
      {
        v185[3] = v46;
        LOBYTE(v162.numer) = 0;
        (*(v115 + 2))(v115, &v162, 0.4);
        v47 = *(v189 + 24) | LOBYTE(v162.numer);
        *(v189 + 24) = v47;
        if (v47)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_128;
          }

          buf = 67109378;
          LODWORD(v193[0]) = 175;
          WORD2(v193[0]) = 2080;
          *(v193 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
          v39 = MEMORY[0x277D86220];
          goto LABEL_43;
        }
      }
    }

    v48 = v45;
    v49 = os_signpost_id_generate(v48);
    v50 = v48;
    v51 = v50;
    if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v51, OS_SIGNPOST_INTERVAL_BEGIN, v49, "MonthAndYearContextualKeyAssetsComputation", "", &buf, 2u);
    }

    v119 = v51;

    v162 = 0;
    mach_timebase_info(&v162);
    v52 = mach_absolute_time();
    options = self->_options;
    v157[0] = MEMORY[0x277D85DD0];
    v157[1] = 3221225472;
    v157[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_228;
    v157[3] = &unk_27888A188;
    v123 = v115;
    v158 = v123;
    v159 = &v184;
    v160 = &v188;
    v161 = 0x3F847AE147AE147BLL;
    [(PGHighlightItemEnrichment *)v126 contextualKeyAssetForYearHighlightItemLists:v127 withManager:managerCopy curationContext:contextCopy options:options progressBlock:v157];
    if (*(v189 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_127:

        goto LABEL_128;
      }

      buf = 67109378;
      LODWORD(v193[0]) = 183;
      WORD2(v193[0]) = 2080;
      *(v193 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
      v54 = MEMORY[0x277D86220];
LABEL_60:
      _os_log_impl(&dword_22F0FC000, v54, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      goto LABEL_127;
    }

    v55 = v52;
    v116 = mach_absolute_time();
    v57 = v162.numer;
    v56 = v162.denom;
    v58 = v119;
    v59 = v58;
    if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v59, OS_SIGNPOST_INTERVAL_END, v49, "MonthAndYearContextualKeyAssetsComputation", "", &buf, 2u);
    }

    v60 = v59;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      buf = 136315394;
      v193[0] = "MonthAndYearContextualKeyAssetsComputation";
      LOWORD(v193[1]) = 2048;
      *(&v193[1] + 2) = ((((v116 - v55) * v57) / v56) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v60, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &buf, 0x16u);
    }

    if (v13)
    {
      v61 = CFAbsoluteTimeGetCurrent();
      if (v61 - v185[3] >= 0.01)
      {
        v185[3] = v61;
        LOBYTE(v156.numer) = 0;
        (*(v123 + 2))(v123, &v156, 0.6);
        v62 = *(v189 + 24) | LOBYTE(v156.numer);
        *(v189 + 24) = v62;
        if (v62)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_127;
          }

          buf = 67109378;
          LODWORD(v193[0]) = 187;
          WORD2(v193[0]) = 2080;
          *(v193 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
          v54 = MEMORY[0x277D86220];
          goto LABEL_60;
        }
      }
    }

    v63 = v60;
    v64 = os_signpost_id_generate(v63);
    v65 = v63;
    v66 = v65;
    if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v66, OS_SIGNPOST_INTERVAL_BEGIN, v64, "MonthsEnrichment", "", &buf, 2u);
    }

    v117 = v66;

    v156 = 0;
    mach_timebase_info(&v156);
    v67 = mach_absolute_time();
    v151[0] = MEMORY[0x277D85DD0];
    v151[1] = 3221225472;
    v151[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_230;
    v151[3] = &unk_27888A188;
    v124 = v123;
    v152 = v124;
    v153 = &v184;
    v154 = &v188;
    v155 = 0x3F847AE147AE147BLL;
    [(PGHighlightItemEnrichment *)v128 enrichHighlightItemLists:v121 progressBlock:v151];
    if (*(v189 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_126:

        goto LABEL_127;
      }

      buf = 67109378;
      LODWORD(v193[0]) = 195;
      WORD2(v193[0]) = 2080;
      *(v193 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
      v68 = MEMORY[0x277D86220];
LABEL_77:
      _os_log_impl(&dword_22F0FC000, v68, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      goto LABEL_126;
    }

    v113 = mach_absolute_time();
    v70 = v156.numer;
    v69 = v156.denom;
    v71 = v117;
    v72 = v71;
    if (v64 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v72, OS_SIGNPOST_INTERVAL_END, v64, "MonthsEnrichment", "", &buf, 2u);
    }

    v73 = v72;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      buf = 136315394;
      v193[0] = "MonthsEnrichment";
      LOWORD(v193[1]) = 2048;
      *(&v193[1] + 2) = ((((v113 - v67) * v70) / v69) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v73, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &buf, 0x16u);
    }

    [PGHighlightItemList updateParentHighlightItemLists:v127 withChildHighlightItems:v121];
    if (v13)
    {
      v74 = CFAbsoluteTimeGetCurrent();
      if (v74 - v185[3] >= 0.01)
      {
        v185[3] = v74;
        LOBYTE(v150.numer) = 0;
        (*(v124 + 2))(v124, &v150, 0.7);
        v75 = *(v189 + 24) | LOBYTE(v150.numer);
        *(v189 + 24) = v75;
        if (v75)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_126;
          }

          buf = 67109378;
          LODWORD(v193[0]) = 202;
          WORD2(v193[0]) = 2080;
          *(v193 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
          v68 = MEMORY[0x277D86220];
          goto LABEL_77;
        }
      }
    }

    v76 = v73;
    v77 = os_signpost_id_generate(v76);
    v78 = v76;
    v79 = v78;
    if (v77 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v78))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v79, OS_SIGNPOST_INTERVAL_BEGIN, v77, "YearsEnrichment", "", &buf, 2u);
    }

    v114 = v79;

    v150 = 0;
    mach_timebase_info(&v150);
    v80 = mach_absolute_time();
    v145[0] = MEMORY[0x277D85DD0];
    v145[1] = 3221225472;
    v145[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_233;
    v145[3] = &unk_27888A188;
    v125 = v124;
    v146 = v125;
    v147 = &v184;
    v148 = &v188;
    v149 = 0x3F847AE147AE147BLL;
    [(PGHighlightItemEnrichment *)v126 enrichHighlightItemLists:v127 progressBlock:v145];
    if (*(v189 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        LODWORD(v193[0]) = 210;
        WORD2(v193[0]) = 2080;
        *(v193 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
        v81 = MEMORY[0x277D86220];
LABEL_94:
        _os_log_impl(&dword_22F0FC000, v81, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
      }
    }

    else
    {
      v111 = mach_absolute_time();
      v83 = v150.numer;
      v82 = v150.denom;
      v84 = v79;
      v85 = v84;
      if (v77 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v85, OS_SIGNPOST_INTERVAL_END, v77, "YearsEnrichment", "", &buf, 2u);
      }

      v86 = v85;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
      {
        buf = 136315394;
        v193[0] = "YearsEnrichment";
        LOWORD(v193[1]) = 2048;
        *(&v193[1] + 2) = ((((v111 - v80) * v83) / v82) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v86, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &buf, 0x16u);
      }

      if (!v13 || (v87 = CFAbsoluteTimeGetCurrent(), v87 - v185[3] < 0.01) || (v185[3] = v87, LOBYTE(v144.numer) = 0, (*(v125 + 2))(v125, &v144, 0.8), v88 = *(v189 + 24) | LOBYTE(v144.numer), *(v189 + 24) = v88, (v88 & 1) == 0))
      {
        v89 = v86;
        v90 = os_signpost_id_generate(v89);
        v91 = v89;
        v92 = v91;
        if (v90 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v91))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v92, OS_SIGNPOST_INTERVAL_BEGIN, v90, "HighlightCollectionEnrichmentCommit", "", &buf, 2u);
        }

        v144 = 0;
        mach_timebase_info(&v144);
        v112 = v90 - 1;
        spid = v90;
        v110 = mach_absolute_time();
        v93 = dispatch_group_create();
        dispatch_group_enter(v93);
        v139[0] = MEMORY[0x277D85DD0];
        v139[1] = 3221225472;
        v139[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_235;
        v139[3] = &unk_278889470;
        v140 = v127;
        v141 = v17;
        v142 = v121;
        v143 = photoLibrary;
        v136[0] = MEMORY[0x277D85DD0];
        v136[1] = 3221225472;
        v136[2] = __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_2;
        v136[3] = &unk_278889498;
        v94 = v92;
        v137 = v94;
        v95 = v93;
        v138 = v95;
        [v143 performChanges:v139 completionHandler:v136];
        while (1)
        {
          v96 = dispatch_time(0, 100000000);
          if (!dispatch_group_wait(v95, v96))
          {
            break;
          }

          if (v13)
          {
            v97 = CFAbsoluteTimeGetCurrent();
            if (v97 - v185[3] >= 0.01)
            {
              v185[3] = v97;
              LOBYTE(buf) = 0;
              (*(v125 + 2))(v125, &buf, 0.9);
              v98 = *(v189 + 24) | buf;
              *(v189 + 24) = v98;
              if (v98)
              {
                break;
              }
            }
          }
        }

        v99 = mach_absolute_time();
        v100 = v144.numer;
        v101 = v144.denom;
        v102 = v94;
        v103 = v102;
        if (v112 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v102))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v103, OS_SIGNPOST_INTERVAL_END, spid, "HighlightCollectionEnrichmentCommit", "", &buf, 2u);
        }

        v104 = v103;
        if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
        {
          buf = 136315394;
          v193[0] = "HighlightCollectionEnrichmentCommit";
          LOWORD(v193[1]) = 2048;
          *(&v193[1] + 2) = ((((v99 - v110) * v100) / v101) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v104, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", &buf, 0x16u);
        }

        if (v13)
        {
          v105 = CFAbsoluteTimeGetCurrent();
          if (v105 - v185[3] >= 0.01)
          {
            v185[3] = v105;
            v135 = 0;
            (*(v125 + 2))(v125, &v135, 1.0);
            v106 = *(v189 + 24) | v135;
            *(v189 + 24) = v106;
            if (v106)
            {
              v107 = MEMORY[0x277D86220];
              v108 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
              {
                buf = 67109378;
                LODWORD(v193[0]) = 279;
                WORD2(v193[0]) = 2080;
                *(v193 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
              }
            }
          }
        }

        goto LABEL_125;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        buf = 67109378;
        LODWORD(v193[0]) = 214;
        WORD2(v193[0]) = 2080;
        *(v193 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
        v81 = MEMORY[0x277D86220];
        goto LABEL_94;
      }
    }

LABEL_125:

    goto LABEL_126;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    buf = 67109378;
    LODWORD(v193[0]) = 127;
    WORD2(v193[0]) = 2080;
    *(v193 + 6) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
  }

LABEL_132:
  _Block_object_dispose(&v184, 8);
  _Block_object_dispose(&v188, 8);
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.0);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_224(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_225(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.2);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_226(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.3);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_228(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.2 + 0.4);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_230(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.6);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_233(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1 + 0.7);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_235(id *a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v48;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v48 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v47 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        [a1[5] consumeHighlightItemList:v7];
        objc_autoreleasePoolPop(v8);
      }

      v4 = [v2 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v4);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = a1[6];
  v10 = [v9 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v44;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v43 + 1) + 8 * j);
        v15 = objc_autoreleasePoolPush();
        [a1[5] consumeHighlightItemList:v14];
        objc_autoreleasePoolPop(v15);
      }

      v11 = [v9 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v11);
  }

  v16 = [a1[5] highlightUUIDsWithVisibilityStateChange];
  v17 = [a1[5] highlightUUIDsWithContextualKeyAssetChange];
  v18 = [v16 setByAddingObjectsFromSet:v17];
  v19 = [a1[7] librarySpecificFetchOptions];
  v36 = v18;
  v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(kind == %d || kind == %d) && uuid in %@", 0, 3, v18];
  [v19 setPredicate:v20];

  v35 = v19;
  [MEMORY[0x277CD9958] fetchHighlightsWithOptions:v19];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v42 = 0u;
  v21 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v40;
    v24 = 0x277CD9000uLL;
    do
    {
      v25 = 0;
      v37 = v22;
      do
      {
        if (*v40 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v39 + 1) + 8 * v25);
        v27 = [*(v24 + 2400) changeRequestForPhotosHighlight:v26];
        v28 = [v26 uuid];
        if ([v16 containsObject:v28])
        {
          [v27 setVisibilityState:{objc_msgSend(a1[5], "visibilityStateForHighlightItem:sharingFilter:", v26, 0)}];
          [v27 setVisibilityStateShared:{objc_msgSend(a1[5], "visibilityStateForHighlightItem:sharingFilter:", v26, 1)}];
          [v27 setVisibilityStateMixed:{objc_msgSend(a1[5], "visibilityStateForHighlightItem:sharingFilter:", v26, 2)}];
        }

        if ([v17 containsObject:v28])
        {
          v29 = v23;
          v30 = v17;
          v31 = v16;
          v32 = v24;
          v33 = [a1[5] contextualKeyAssetForHighlightItem:v26 sharingFilter:0];
          if (v33)
          {
            [v27 setKeyAssetPrivate:v33];
          }

          v34 = [a1[5] contextualKeyAssetForHighlightItem:v26 sharingFilter:1];
          if (v34)
          {
            [v27 setKeyAssetShared:v34];
            if (v33)
            {
              [v27 setMixedSharingCompositionKeyAssetRelationship:{+[PGHighlightEnrichmentUtilities mixedSharingCompositionKeyAssetRelationshipForKeyAssetPrivate:keyAssetShared:shouldCompareHighlight:](PGHighlightEnrichmentUtilities, "mixedSharingCompositionKeyAssetRelationshipForKeyAssetPrivate:keyAssetShared:shouldCompareHighlight:", v33, v34, 1)}];
            }
          }

          v24 = v32;
          v16 = v31;
          v17 = v30;
          v23 = v29;
          v22 = v37;
        }

        ++v25;
      }

      while (v22 != v25);
      v22 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v22);
  }
}

void __140__PGGraphHighlightCollectionEnrichmentProcessor__enrichYearHighlights_monthsHighlights_withManager_curationContext_enrichmentprogressBlock___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *(a1 + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_error_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_ERROR, "Failed to persist years and months enrichments: %@", &v7, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)enrichDataModelWithManager:(id)manager curationContext:(id)context graphUpdateInventory:(id)inventory progressReporter:(id)reporter
{
  v76[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  contextCopy = context;
  inventoryCopy = inventory;
  reporterCopy = reporter;
  enrichmentLoggingConnection = [managerCopy enrichmentLoggingConnection];
  v12 = os_signpost_id_generate(enrichmentLoggingConnection);
  v13 = enrichmentLoggingConnection;
  v14 = v13;
  v61 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PGGraphHighlightCollectionEnrichmentProcessor", "", buf, 2u);
  }

  spid = v12;

  info = 0;
  mach_timebase_info(&info);
  v60 = mach_absolute_time();
  updateType = [inventoryCopy updateType];
  isResumingFullAnalysis = [inventoryCopy isResumingFullAnalysis];
  v17 = [(NSDictionary *)self->_options objectForKeyedSubscript:*MEMORY[0x277D3AE20]];
  if ([v17 count])
  {
    photoLibrary = [managerCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v20 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid IN %@", v17];
    [librarySpecificFetchOptions setPredicate:v20];

    v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
    v76[0] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:1];
    [librarySpecificFetchOptions setSortDescriptors:v22];

    v23 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000302 options:librarySpecificFetchOptions];
    fetchedObjects = [v23 fetchedObjects];

    v25 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000303 options:librarySpecificFetchOptions];
    fetchedObjects2 = [v25 fetchedObjects];
LABEL_11:
    allObjects = fetchedObjects2;
LABEL_12:

    goto LABEL_13;
  }

  if (updateType == 4)
  {
    v27 = 1;
  }

  else
  {
    v27 = isResumingFullAnalysis;
  }

  if (v27 == 1)
  {
    photoLibrary2 = [managerCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary2 librarySpecificFetchOptions];

    v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
    v75 = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
    [librarySpecificFetchOptions setSortDescriptors:v30];

    v31 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000302 options:librarySpecificFetchOptions];
    fetchedObjects = [v31 fetchedObjects];

    v25 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:6 subtype:1000000303 options:librarySpecificFetchOptions];
    fetchedObjects2 = [v25 fetchedObjects];
    goto LABEL_11;
  }

  if (updateType == 2)
  {
    photoLibrary3 = [managerCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary3 librarySpecificFetchOptions];

    v25 = [inventoryCopy highlightsToProcessForKind:0 withHighlightUpdateTypes:127 includeHighlightsToIngest:1];
    v56 = [inventoryCopy highlightsToProcessForKind:3 withHighlightUpdateTypes:127 includeHighlightsToIngest:1];
    v58 = [MEMORY[0x277CBEB58] set];
    [v58 unionSet:v25];
    [v58 unionSet:v56];
    v40 = [inventoryCopy highlightsToProcessForKind:1 withHighlightUpdateTypes:127 includeHighlightsToIngest:1];
    v57 = [v40 mutableCopy];

    if ([v58 count])
    {
      v41 = [MEMORY[0x277CD9958] fetchParentHighlightsForHighlights:v58 options:librarySpecificFetchOptions];
      fetchedObjects3 = [v41 fetchedObjects];

      [v57 addObjectsFromArray:fetchedObjects3];
    }

    fetchedObjects = [v57 allObjects];
    v43 = [inventoryCopy highlightsToProcessForKind:2 withHighlightUpdateTypes:127 includeHighlightsToIngest:1];
    v44 = [v43 mutableCopy];

    if ([v57 count])
    {
      v45 = [MEMORY[0x277CD9958] fetchParentHighlightsForHighlights:v57 options:librarySpecificFetchOptions];
      fetchedObjects4 = [v45 fetchedObjects];

      [v44 addObjectsFromArray:fetchedObjects4];
    }

    allObjects = [v44 allObjects];

    goto LABEL_12;
  }

  allObjects = 0;
  fetchedObjects = 0;
LABEL_13:
  v33 = [fetchedObjects count];
  v34 = [allObjects count] + v33;
  if (v34)
  {
    v35 = reporterCopy;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v74 = 0;
    v36 = [v35 isCancelledWithProgress:0.0];
    *(*&buf[8] + 24) = v36;
    if (v36)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v69 = 67109378;
        v70 = 106;
        v71 = 2080;
        v72 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v69, 0x12u);
      }

      _Block_object_dispose(buf, 8);

      goto LABEL_43;
    }

    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __130__PGGraphHighlightCollectionEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke;
    v65[3] = &unk_278889448;
    v67 = buf;
    v37 = v35;
    v66 = v37;
    [(PGGraphHighlightCollectionEnrichmentProcessor *)self _enrichYearHighlights:allObjects monthsHighlights:fetchedObjects withManager:managerCopy curationContext:contextCopy enrichmentprogressBlock:v65];
    if (*(*&buf[8] + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v69 = 67109378;
        v70 = 112;
        v71 = 2080;
        v72 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
        v38 = MEMORY[0x277D86220];
LABEL_35:
        _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v69, 0x12u);
        goto LABEL_36;
      }

      goto LABEL_36;
    }

    throughputReportBlock = [v37 throughputReportBlock];
    v48 = throughputReportBlock == 0;

    if (!v48)
    {
      throughputReportBlock2 = [v37 throughputReportBlock];
      throughputReportBlock2[2](throughputReportBlock2, v34, 0);
    }

    if (*(*&buf[8] + 24))
    {
      *(*&buf[8] + 24) = 1;
      goto LABEL_33;
    }

    v50 = [v37 isCancelledWithProgress:1.0];
    *(*&buf[8] + 24) = v50;
    if (v50)
    {
LABEL_33:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v69 = 67109378;
        v70 = 118;
        v71 = 2080;
        v72 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphHighlightCollectionEnrichmentProcessor.m";
        v38 = MEMORY[0x277D86220];
        goto LABEL_35;
      }

LABEL_36:

      _Block_object_dispose(buf, 8);
      goto LABEL_43;
    }

    _Block_object_dispose(buf, 8);
  }

  v51 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v54 = v14;
  v55 = v54;
  if (v61 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v54))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v55, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphHighlightCollectionEnrichmentProcessor", "", buf, 2u);
  }

  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "PGGraphHighlightCollectionEnrichmentProcessor";
    *&buf[12] = 2048;
    *&buf[14] = ((((v51 - v60) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v55, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

LABEL_43:
}

uint64_t __130__PGGraphHighlightCollectionEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:?];
    v4 = *(*(a1 + 40) + 8);
  }

  *(v4 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (PGGraphHighlightCollectionEnrichmentProcessor)initWithOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = PGGraphHighlightCollectionEnrichmentProcessor;
  v6 = [(PGGraphHighlightCollectionEnrichmentProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, options);
  }

  return v7;
}

@end