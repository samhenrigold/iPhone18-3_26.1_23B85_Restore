@interface PGRelationshipAnniversaryAnalyzer
- (PGRelationshipAnniversaryAnalyzer)initWithRelationshipProcessor:(id)processor;
- (void)runAnalysisWithProgressBlock:(id)block;
@end

@implementation PGRelationshipAnniversaryAnalyzer

- (void)runAnalysisWithProgressBlock:(id)block
{
  v39 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = _Block_copy(blockCopy);
  v28 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  if (v5 && (v6 = CFAbsoluteTimeGetCurrent(), v6 - v26[3] >= 0.01) && (v26[3] = v6, LOBYTE(v33[0]) = 0, (*(v5 + 2))(v5, v33, 0.0), v7 = *(v30 + 24) | LOBYTE(v33[0]), *(v30 + 24) = v7, (v7 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x2104000202;
      LOWORD(v37) = 2080;
      *(&v37 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipAnniversaryAnalyzer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    personNodes = [WeakRetained personNodes];
    v10 = [personNodes count];
    buf = 0;
    *&v37 = &buf;
    *(&v37 + 1) = 0x2020000000;
    v38 = 0;
    v11 = 1.0 / v10;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__PGRelationshipAnniversaryAnalyzer_runAnalysisWithProgressBlock___block_invoke;
    v17[3] = &unk_27887FBD0;
    v12 = WeakRetained;
    v18 = v12;
    p_buf = &buf;
    v23 = v11;
    v13 = v5;
    v19 = v13;
    v21 = &v25;
    v24 = 0x3F847AE147AE147BLL;
    v22 = &v29;
    [personNodes enumerateNodesUsingBlock:v17];
    if (v5)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v26[3] >= 0.01)
      {
        v26[3] = Current;
        v16 = 0;
        (*(v13 + 2))(v13, &v16, 1.0);
        v15 = *(v30 + 24) | v16;
        *(v30 + 24) = v15;
        if ((v15 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v33[0] = 67109378;
          v33[1] = 54;
          v34 = 2080;
          v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipAnniversaryAnalyzer.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v33, 0x12u);
        }
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
}

void __66__PGRelationshipAnniversaryAnalyzer_runAnalysisWithProgressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 anniversaryDate];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v5 localIdentifier];
    v9 = [v7 relationshipAnalyzerPropertiesForPersonLocalIdentifier:v8];

    if (v9)
    {
      [v9 registerAnniversaryDate];
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = *(a1 + 72) + *(*(*(a1 + 48) + 8) + 24);
  if (*(a1 + 40))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v11 = *(*(a1 + 56) + 8);
    if (Current - *(v11 + 24) >= *(a1 + 80))
    {
      *(v11 + 24) = Current;
      (*(*(a1 + 40) + 16))(*(*(*(a1 + 48) + 8) + 24));
      *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
      if (*(*(*(a1 + 64) + 8) + 24) == 1)
      {
        *a3 = 1;
      }
    }
  }
}

- (PGRelationshipAnniversaryAnalyzer)initWithRelationshipProcessor:(id)processor
{
  processorCopy = processor;
  v8.receiver = self;
  v8.super_class = PGRelationshipAnniversaryAnalyzer;
  v5 = [(PGRelationshipAnniversaryAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, processorCopy);
  }

  return v6;
}

@end