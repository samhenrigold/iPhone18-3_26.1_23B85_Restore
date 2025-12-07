@interface PGRelationshipAgeAnalyzer
- (PGRelationshipAgeAnalyzer)initWithRelationshipProcessor:(id)processor;
- (void)runAnalysisWithProgressBlock:(id)block;
@end

@implementation PGRelationshipAgeAnalyzer

- (void)runAnalysisWithProgressBlock:(id)block
{
  v52 = *MEMORY[0x277D85DE8];
  aBlock = block;
  WeakRetained = objc_loadWeakRetained(&self->_processor);
  graph = [WeakRetained graph];
  v6 = _Block_copy(aBlock);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if (v6 && (v7 = CFAbsoluteTimeGetCurrent(), v7 - v39[3] >= 0.01) && (v39[3] = v7, LOBYTE(v46[0]) = 0, (*(v6 + 2))(v6, v46, 0.0), v8 = *(v43 + 24) | LOBYTE(v46[0]), *(v43 + 24) = v8, (v8 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0x2704000202;
      LOWORD(v50) = 2080;
      *(&v50 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipAgeAnalyzer.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
    }
  }

  else
  {
    meNode = [graph meNode];
    v10 = meNode;
    if (meNode)
    {
      ageCategory = [meNode ageCategory];
    }

    else
    {
      ageCategory = 0;
    }

    relationshipAnalyzerPropertiesByPersonLocalIdentifier = [WeakRetained relationshipAnalyzerPropertiesByPersonLocalIdentifier];
    v13 = [relationshipAnalyzerPropertiesByPersonLocalIdentifier count];

    if (v13 && ageCategory)
    {
      buf = 0;
      *&v50 = &buf;
      *(&v50 + 1) = 0x2020000000;
      v51 = 0;
      relationshipAnalyzerPropertiesByPersonLocalIdentifier2 = [WeakRetained relationshipAnalyzerPropertiesByPersonLocalIdentifier];
      allKeys = [relationshipAnalyzerPropertiesByPersonLocalIdentifier2 allKeys];
      v15 = [PGGraphPersonNodeCollection personNodesForArrayOfLocalIdentifiers:"personNodesForArrayOfLocalIdentifiers:inGraph:" inGraph:?];
      personNodeByLocalIdentifier = [v15 personNodeByLocalIdentifier];
      v17 = 1.0 / v13;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __58__PGRelationshipAgeAnalyzer_runAnalysisWithProgressBlock___block_invoke;
      v29[3] = &unk_278882558;
      v18 = v6;
      v31 = v18;
      v32 = &v38;
      v35 = 0x3F847AE147AE147BLL;
      p_buf = &buf;
      v34 = &v42;
      v36 = v17;
      v19 = personNodeByLocalIdentifier;
      v30 = v19;
      v37 = ageCategory;
      [relationshipAnalyzerPropertiesByPersonLocalIdentifier2 enumerateKeysAndObjectsUsingBlock:v29];
      if ((ageCategory - 3) <= 2)
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __58__PGRelationshipAgeAnalyzer_runAnalysisWithProgressBlock___block_invoke_2;
        v27[3] = &unk_278882580;
        v28 = relationshipAnalyzerPropertiesByPersonLocalIdentifier2;
        [PGImportantEntitiesChildrenProcessor processUserChildrenInGraph:graph progressBlock:aBlock withProcessInferredChildNodeClosure:v27];
      }

      if (v6)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current - v39[3] >= 0.01)
        {
          v39[3] = Current;
          v26 = 0;
          (*(v18 + 2))(v18, &v26, 1.0);
          v21 = *(v43 + 24) | v26;
          *(v43 + 24) = v21;
          if ((v21 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v46[0] = 67109378;
            v46[1] = 108;
            v47 = 2080;
            v48 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipAgeAnalyzer.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v46, 0x12u);
          }
        }
      }

      _Block_object_dispose(&buf, 8);
    }

    else if (v6)
    {
      v22 = CFAbsoluteTimeGetCurrent();
      if (v22 - v39[3] >= 0.01)
      {
        v39[3] = v22;
        LOBYTE(v46[0]) = 0;
        (*(v6 + 2))(v6, v46, 1.0);
        v23 = *(v43 + 24) | LOBYTE(v46[0]);
        *(v43 + 24) = v23;
        if ((v23 & 1) != 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          buf = 0x2F04000202;
          LOWORD(v50) = 2080;
          *(&v50 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/People Inferences/Relationship/Relationship Analyzers/PGRelationshipAgeAnalyzer.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &buf, 0x12u);
        }
      }
    }
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
}

void __58__PGRelationshipAgeAnalyzer_runAnalysisWithProgressBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (*(a1 + 40) && (Current = CFAbsoluteTimeGetCurrent(), v10 = *(*(a1 + 48) + 8), Current - *(v10 + 24) >= *(a1 + 72)) && (*(v10 + 24) = Current, (*(*(a1 + 40) + 16))(*(*(*(a1 + 56) + 8) + 24)), *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24), *(*(*(a1 + 64) + 8) + 24) == 1))
  {
    *a4 = 1;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = *(a1 + 80) + *(*(*(a1 + 56) + 8) + 24);
    v11 = [*(a1 + 32) objectForKeyedSubscript:v7];
    v12 = [v11 ageCategory];
    if (v12)
    {
      v13 = v12;
      v14 = *(a1 + 88);
      if (v12 != v14)
      {
        [v8 penalizePersonAgeCategoryDifferentThanMeNode];
      }

      if (v13 > 2)
      {
        v15 = 0;
        if (v13 == 4 && v14 != 4)
        {
          v15 = *(a1 + 88) != 5;
        }
      }

      else
      {
        [v8 penalizePersonScoresForChild];
        v15 = 0;
      }

      v16 = v13 != v14 && v13 == 5;
      if (v16 || v15)
      {
        [v8 registerPersonOldEnoughToBeMeNodeParentOrMyGrandparent];
      }
    }
  }
}

void __58__PGRelationshipAgeAnalyzer_runAnalysisWithProgressBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 localIdentifier];
  if (v3)
  {
    v6 = v3;
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    if (v4)
    {
      v5 = [*(a1 + 32) objectForKeyedSubscript:v6];
      [v5 registerPersonAsMeNodeChild];
    }

    v3 = v6;
  }
}

- (PGRelationshipAgeAnalyzer)initWithRelationshipProcessor:(id)processor
{
  processorCopy = processor;
  v8.receiver = self;
  v8.super_class = PGRelationshipAgeAnalyzer;
  v5 = [(PGRelationshipAgeAnalyzer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_processor, processorCopy);
  }

  return v6;
}

@end