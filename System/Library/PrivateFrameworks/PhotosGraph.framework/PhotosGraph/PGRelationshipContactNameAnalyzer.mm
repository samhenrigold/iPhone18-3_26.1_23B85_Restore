@interface PGRelationshipContactNameAnalyzer
- (PGRelationshipContactNameAnalyzer)initWithRelationshipProcessor:(id)processor;
- (void)runAnalysisWithProgressBlock:(id)block;
@end

@implementation PGRelationshipContactNameAnalyzer

- (void)runAnalysisWithProgressBlock:(id)block
{
  v48 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = _Block_copy(blockCopy);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  if (v5 && (v6 = CFAbsoluteTimeGetCurrent(), v6 - v35[3] >= 0.01) && (v35[3] = v6, LOBYTE(v42[0]) = 0, (*(v5 + 2))(v5, v42, 0.0), v7 = *(v39 + 24) | LOBYTE(v42[0]), *(v39 + 24) = v7, (v7 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x2604000202;
      LOWORD(v46) = 2080;
      *(&v46 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipContactNameAnalyzer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    graph = [WeakRetained graph];
    inferredUserLocales = [graph inferredUserLocales];
    serviceManager = [WeakRetained serviceManager];
    mePerson = [serviceManager mePerson];
    personNodes = [WeakRetained personNodes];
    v14 = [personNodes count];
    buf = 0;
    *&v46 = &buf;
    *(&v46 + 1) = 0x2020000000;
    v47 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __66__PGRelationshipContactNameAnalyzer_runAnalysisWithProgressBlock___block_invoke;
    v23[3] = &unk_278889A50;
    p_buf = &buf;
    v32 = 1.0 / v14;
    v15 = v5;
    v28 = v15;
    v30 = &v34;
    v33 = 0x3F847AE147AE147BLL;
    v31 = &v38;
    v16 = serviceManager;
    v24 = v16;
    v17 = inferredUserLocales;
    v25 = v17;
    v18 = WeakRetained;
    v26 = v18;
    v19 = mePerson;
    v27 = v19;
    [personNodes enumerateNodesUsingBlock:v23];
    if (v5)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v35[3] >= 0.01)
      {
        v35[3] = Current;
        v22 = 0;
        (*(v15 + 2))(v15, &v22, 1.0);
        v21 = *(v39 + 24) | v22;
        *(v39 + 24) = v21;
        if ((v21 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v42[0] = 67109378;
          v42[1] = 105;
          v43 = 2080;
          v44 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipContactNameAnalyzer.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v42, 0x12u);
        }
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
}

void __66__PGRelationshipContactNameAnalyzer_runAnalysisWithProgressBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  *(*(*(a1 + 72) + 8) + 24) = *(a1 + 96) + *(*(*(a1 + 72) + 8) + 24);
  if (!*(a1 + 64) || (Current = CFAbsoluteTimeGetCurrent(), v7 = *(*(a1 + 80) + 8), Current - *(v7 + 24) < *(a1 + 104)) || (*(v7 + 24) = Current, (*(*(a1 + 64) + 16))(*(*(*(a1 + 72) + 8) + 24)), *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 88) + 8) + 24), *(*(*(a1 + 88) + 8) + 24) != 1))
  {
    v8 = [v5 name];
    if (![v8 length])
    {
LABEL_20:

      goto LABEL_21;
    }

    v9 = [v5 contactIdentifier];
    if ([v9 length] && (objc_msgSend(*(a1 + 32), "personForIdentifier:", v9), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = v10;
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277D27760]);
      [v11 setFullName:v8];
      if (!v11)
      {
LABEL_19:

        goto LABEL_20;
      }
    }

    if (([*(a1 + 32) relationshipHintForPerson:v11 usingLocales:*(a1 + 40)] - 8) <= 2)
    {
      v12 = *(a1 + 48);
      v13 = [v5 localIdentifier];
      v14 = [v12 relationshipAnalyzerPropertiesForPersonLocalIdentifier:v13];

      if (v14)
      {
        [v14 registerParentContactName];
      }
    }

    if (*(a1 + 56) && [v11 hasSameFamilyNameAsPerson:?])
    {
      v15 = *(a1 + 48);
      v16 = [v5 localIdentifier];
      v17 = [v15 relationshipAnalyzerPropertiesForPersonLocalIdentifier:v16];

      if (v17)
      {
        [v17 registerSameFamilyNameAsMePerson];
      }
    }

    goto LABEL_19;
  }

  *a3 = 1;
LABEL_21:
}

- (PGRelationshipContactNameAnalyzer)initWithRelationshipProcessor:(id)processor
{
  processorCopy = processor;
  v8.receiver = self;
  v8.super_class = PGRelationshipContactNameAnalyzer;
  v5 = [(PGRelationshipContactNameAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, processorCopy);
  }

  return v6;
}

@end