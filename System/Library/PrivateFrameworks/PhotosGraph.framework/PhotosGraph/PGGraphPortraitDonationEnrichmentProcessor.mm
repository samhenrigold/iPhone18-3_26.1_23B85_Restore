@interface PGGraphPortraitDonationEnrichmentProcessor
- (id)_knowledgeToDonateFromAccumulatedNodesWithProgressBlock:(id)block;
- (id)_locationNamedEntitiesFromAddressNodes:(id)nodes dates:(id)dates currentProgress:(double *)progress progressFraction:(double)fraction progressBlock:(id)block;
- (id)_namedEntitiesFromNamedEntityNodes:(id)nodes currentProgress:(double *)progress progressFraction:(double)fraction progressBlock:(id)block;
- (id)_topicsFromTopicNodes:(id)nodes currentProgress:(double *)progress progressFraction:(double)fraction progressBlock:(id)block;
- (void)_accumulateKnowledgeNodesFromMomentNodes:(id)nodes progressBlock:(id)block;
- (void)_donateKnowledge:(id)knowledge donationDate:(id)date loggingConnection:(id)connection;
- (void)_donateKnowledgeWithManager:(id)manager progressBlock:(id)block;
- (void)_prepareForKnowledgeDonation;
- (void)enrichDataModelWithManager:(id)manager curationContext:(id)context graphUpdateInventory:(id)inventory progressReporter:(id)reporter;
@end

@implementation PGGraphPortraitDonationEnrichmentProcessor

- (id)_namedEntitiesFromNamedEntityNodes:(id)nodes currentProgress:(double *)progress progressFraction:(double)fraction progressBlock:(id)block
{
  v46 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  blockCopy = block;
  if (!progress)
  {
    v40 = 0;
    progress = &v40;
  }

  v11 = [nodesCopy count];
  if (!v11)
  {
    v18 = MEMORY[0x277CBEBF8];
    goto LABEL_31;
  }

  v12 = v11;
  pg_accumulatedCount = [nodesCopy pg_accumulatedCount];
  v14 = *progress;
  v15 = _Block_copy(blockCopy);
  v16 = 0.0;
  if (!v15)
  {
    goto LABEL_12;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current < 0.01)
  {
    goto LABEL_12;
  }

  v39 = 0;
  v15[2](v15, &v39, v14);
  if (v39 != 1)
  {
    v16 = Current;
LABEL_12:
    progressCopy = progress;
    array = [MEMORY[0x277CBEB18] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v20 = nodesCopy;
    v21 = [v20 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = fraction / v12;
      v24 = *v36;
      v25 = pg_accumulatedCount;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v35 + 1) + 8 * i);
          v28 = [v20 countForObject:v27];
          pg_namedEntity = [v27 pg_namedEntity];
          if (pg_namedEntity)
          {
            v30 = pg_namedEntity;
            v31 = [objc_alloc(MEMORY[0x277D3A498]) initWithItem:pg_namedEntity score:v28 / v25];
            [array addObject:v31];
            v14 = v23 + v14;
            if (v15)
            {
              v32 = CFAbsoluteTimeGetCurrent();
              if (v32 - v16 >= 0.01)
              {
                v39 = 0;
                v15[2](v15, &v39, v14);
                if (v39)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    v43 = 517;
                    v44 = 2080;
                    v45 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  v18 = MEMORY[0x277CBEBF8];
                  goto LABEL_29;
                }

                v16 = v32;
              }
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v35 objects:v41 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    *progressCopy = v14;
    v18 = array;
LABEL_29:

    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v43 = 499;
    v44 = 2080;
    v45 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v18 = MEMORY[0x277CBEBF8];
LABEL_30:

LABEL_31:

  return v18;
}

- (id)_locationNamedEntitiesFromAddressNodes:(id)nodes dates:(id)dates currentProgress:(double *)progress progressFraction:(double)fraction progressBlock:(id)block
{
  v64 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  datesCopy = dates;
  blockCopy = block;
  if (!progress)
  {
    v57 = 0;
    progress = &v57;
  }

  v13 = [nodesCopy count];
  if (!v13)
  {
    v20 = MEMORY[0x277CBEBF8];
    goto LABEL_39;
  }

  v14 = v13;
  pg_accumulatedCount = [nodesCopy pg_accumulatedCount];
  v16 = *progress;
  v17 = _Block_copy(blockCopy);
  v18 = 0.0;
  if (!v17)
  {
    goto LABEL_12;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current < 0.01)
  {
    goto LABEL_12;
  }

  v56 = 0;
  v17[2](v17, &v56, v16);
  if (v56 != 1)
  {
    v18 = Current;
LABEL_12:
    progressCopy = progress;
    v41 = blockCopy;
    array = [MEMORY[0x277CBEB18] array];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v42 = nodesCopy;
    v22 = nodesCopy;
    v46 = [v22 countByEnumeratingWithState:&v52 objects:v59 count:16];
    if (v46)
    {
      v23 = fraction / v14;
      v45 = *v53;
      v24 = pg_accumulatedCount;
      v43 = v22;
      v44 = v17;
      while (2)
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v53 != v45)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v52 + 1) + 8 * i);
          v27 = [v22 countForObject:v26];
          v28 = [datesCopy objectForKeyedSubscript:v26];
          if ([v28 count])
          {
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v29 = v28;
            v30 = [v29 countByEnumeratingWithState:&v48 objects:v58 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = v27 / v24;
              v33 = *v49;
LABEL_20:
              v34 = 0;
              while (1)
              {
                if (*v49 != v33)
                {
                  objc_enumerationMutation(v29);
                }

                v35 = *(*(&v48 + 1) + 8 * v34);
                pg_locationNamedEntity = [v26 pg_locationNamedEntity];
                if (!pg_locationNamedEntity)
                {
                  break;
                }

                v37 = pg_locationNamedEntity;
                [pg_locationNamedEntity setScore:v32];
                [v37 setDate:v35];
                [array addObject:v37];

                if (v31 == ++v34)
                {
                  v31 = [v29 countByEnumeratingWithState:&v48 objects:v58 count:16];
                  if (v31)
                  {
                    goto LABEL_20;
                  }

                  break;
                }
              }
            }

            v22 = v43;
            v17 = v44;
          }

          v16 = v23 + v16;
          if (v17)
          {
            v38 = CFAbsoluteTimeGetCurrent();
            if (v38 - v18 >= 0.01)
            {
              v56 = 0;
              v17[2](v17, &v56, v16);
              if (v56)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v61 = 473;
                  v62 = 2080;
                  v63 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v20 = MEMORY[0x277CBEBF8];
                goto LABEL_37;
              }

              v18 = v38;
            }
          }
        }

        v46 = [v22 countByEnumeratingWithState:&v52 objects:v59 count:16];
        if (v46)
        {
          continue;
        }

        break;
      }
    }

    *progressCopy = v16;
    v20 = array;
LABEL_37:
    nodesCopy = v42;

    blockCopy = v41;
    goto LABEL_38;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v61 = 447;
    v62 = 2080;
    v63 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v20 = MEMORY[0x277CBEBF8];
LABEL_38:

LABEL_39:

  return v20;
}

- (id)_topicsFromTopicNodes:(id)nodes currentProgress:(double *)progress progressFraction:(double)fraction progressBlock:(id)block
{
  v45 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  blockCopy = block;
  if (!progress)
  {
    v39 = 0;
    progress = &v39;
  }

  v11 = [nodesCopy count];
  if (!v11)
  {
    v18 = MEMORY[0x277CBEC10];
    goto LABEL_30;
  }

  v12 = v11;
  pg_accumulatedCount = [nodesCopy pg_accumulatedCount];
  v14 = *progress;
  v15 = _Block_copy(blockCopy);
  v16 = 0.0;
  if (!v15)
  {
    goto LABEL_12;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current < 0.01)
  {
    goto LABEL_12;
  }

  v38 = 0;
  v15[2](v15, &v38, v14);
  if (v38 != 1)
  {
    v16 = Current;
LABEL_12:
    progressCopy = progress;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v20 = nodesCopy;
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = fraction / v12;
      v24 = *v35;
      v25 = pg_accumulatedCount;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v27 = *(*(&v34 + 1) + 8 * i);
          v28 = [v20 countForObject:v27];
          pg_topic = [v27 pg_topic];
          if (pg_topic)
          {
            v30 = [MEMORY[0x277CCABB0] numberWithDouble:v28 / v25];
            [dictionary setObject:v30 forKeyedSubscript:pg_topic];

            v14 = v23 + v14;
            if (v15)
            {
              v31 = CFAbsoluteTimeGetCurrent();
              if (v31 - v16 >= 0.01)
              {
                v38 = 0;
                v15[2](v15, &v38, v14);
                if (v38)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    v42 = 421;
                    v43 = 2080;
                    v44 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  v18 = MEMORY[0x277CBEC10];
                  goto LABEL_28;
                }

                v16 = v31;
              }
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    *progressCopy = v14;
    v18 = dictionary;
LABEL_28:

    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v42 = 404;
    v43 = 2080;
    v44 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v18 = MEMORY[0x277CBEC10];
LABEL_29:

LABEL_30:

  return v18;
}

- (void)_donateKnowledge:(id)knowledge donationDate:(id)date loggingConnection:(id)connection
{
  knowledgeCopy = knowledge;
  dateCopy = date;
  connectionCopy = connection;
  graphDonationBundleId = [objc_opt_class() graphDonationBundleId];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __94__PGGraphPortraitDonationEnrichmentProcessor__donateKnowledge_donationDate_loggingConnection___block_invoke;
  v17[3] = &unk_278889470;
  v18 = knowledgeCopy;
  v19 = graphDonationBundleId;
  v20 = dateCopy;
  v21 = connectionCopy;
  v11 = connectionCopy;
  v12 = dateCopy;
  v13 = graphDonationBundleId;
  v14 = knowledgeCopy;
  v15 = dispatch_block_create(0, v17);
  v16 = dispatch_get_global_queue(0, 0);
  dispatch_async(v16, v15);

  dispatch_block_wait(v15, 0x2540BE400uLL);
}

void __94__PGGraphPortraitDonationEnrichmentProcessor__donateKnowledge_donationDate_loggingConnection___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) topics];
  if (![v2 count])
  {
    v6 = 0;
    goto LABEL_7;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v24 = 0;
  v5 = [MEMORY[0x277D3A388] donatePhotosTopics:v2 bundleId:v3 date:v4 error:&v24];
  v6 = v24;
  if (v5)
  {
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v7 = *(a1 + 56);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "PortraitEnrichment - Failed to donate topics with error: %@", buf, 0xCu);
  }

  v8 = 0;
LABEL_8:
  v9 = [*(a1 + 32) locationNamedEntities];
  v10 = [v9 count];
  if (v8 && v10)
  {
    v11 = *(a1 + 40);
    v23 = v6;
    v12 = [MEMORY[0x277D3A388] donatePhotosLocationNamedEntities:v9 bundleId:v11 error:&v23];
    v13 = v23;

    if (v12)
    {
      v8 = 1;
    }

    else
    {
      v14 = *(a1 + 56);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v13;
        _os_log_error_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_ERROR, "PortraitEnrichment - Failed to donate location named entities with error: %@", buf, 0xCu);
      }

      v8 = 0;
    }
  }

  else
  {
    v13 = v6;
  }

  v15 = [*(a1 + 32) namedEntities];
  v16 = [v15 count];
  if (v8 && v16)
  {
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v22 = v13;
    v19 = [MEMORY[0x277D3A388] donatePhotosNamedEntities:v15 bundleId:v17 date:v18 error:&v22];
    v20 = v22;

    if ((v19 & 1) == 0)
    {
      v21 = *(a1 + 56);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v20;
        _os_log_error_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_ERROR, "PortraitEnrichment - Failed to donate named entities with error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v20 = v13;
  }
}

- (id)_knowledgeToDonateFromAccumulatedNodesWithProgressBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = _Block_copy(blockCopy);
  v29 = 0.5;
  v6 = [(PGGraphPortraitDonationEnrichmentProcessor *)self _locationNamedEntitiesFromAddressNodes:self->_addressNodes dates:self->_datesByAddressNode currentProgress:&v29 progressFraction:blockCopy progressBlock:0.0714285714];
  v7 = 0.0;
  if (!v5 || (v8 = CFAbsoluteTimeGetCurrent(), v8 < 0.01))
  {
LABEL_8:
    v10 = [(PGGraphPortraitDonationEnrichmentProcessor *)self _topicsFromTopicNodes:self->_meaningNodes currentProgress:&v29 progressFraction:blockCopy progressBlock:0.0714285714];
    if (v5)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v7 >= 0.01)
      {
        v28 = 0;
        v5[2](v5, &v28, v29);
        if (v28)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v31 = 310;
            v32 = 2080;
            v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v9 = 0;
          goto LABEL_55;
        }

        v7 = Current;
      }
    }

    v12 = [(PGGraphPortraitDonationEnrichmentProcessor *)self _topicsFromTopicNodes:self->_roiNodes currentProgress:&v29 progressFraction:blockCopy progressBlock:0.0714285714];
    if (v5)
    {
      v13 = CFAbsoluteTimeGetCurrent();
      if (v13 - v7 >= 0.01)
      {
        v28 = 0;
        v5[2](v5, &v28, v29);
        if (v28)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v31 = 313;
            v32 = 2080;
            v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v9 = 0;
          goto LABEL_54;
        }

        v7 = v13;
      }
    }

    v14 = [(PGGraphPortraitDonationEnrichmentProcessor *)self _topicsFromTopicNodes:self->_poiNodes currentProgress:&v29 progressFraction:blockCopy progressBlock:0.0714285714];
    if (v5)
    {
      v15 = CFAbsoluteTimeGetCurrent();
      if (v15 - v7 >= 0.01)
      {
        v28 = 0;
        v5[2](v5, &v28, v29);
        if (v28)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v31 = 316;
            v32 = 2080;
            v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v9 = 0;
          goto LABEL_53;
        }

        v7 = v15;
      }
    }

    v16 = [(PGGraphPortraitDonationEnrichmentProcessor *)self _namedEntitiesFromNamedEntityNodes:self->_businessNodes currentProgress:&v29 progressFraction:blockCopy progressBlock:0.0714285714];
    v26 = v16;
    if (v5)
    {
      v17 = CFAbsoluteTimeGetCurrent();
      if (v17 - v7 >= 0.01)
      {
        v28 = 0;
        v5[2](v5, &v28, v29);
        if (v28)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v31 = 319;
            v32 = 2080;
            v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v9 = 0;
          goto LABEL_52;
        }

        v7 = v17;
      }
    }

    v27 = [(PGGraphPortraitDonationEnrichmentProcessor *)self _namedEntitiesFromNamedEntityNodes:self->_publicEventNodes currentProgress:&v29 progressFraction:blockCopy progressBlock:0.0714285714, v16];
    if (v5)
    {
      v18 = CFAbsoluteTimeGetCurrent();
      if (v18 - v7 >= 0.01)
      {
        v28 = 0;
        v5[2](v5, &v28, v29);
        if (v28)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v31 = 322;
            v32 = 2080;
            v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v9 = 0;
LABEL_51:

LABEL_52:
LABEL_53:

LABEL_54:
LABEL_55:

          goto LABEL_56;
        }

        v7 = v18;
      }
    }

    v19 = v6;
    v20 = v10;
    v21 = v12;
    v22 = [(PGGraphPortraitDonationEnrichmentProcessor *)self _namedEntitiesFromNamedEntityNodes:self->_performerNodes currentProgress:&v29 progressFraction:blockCopy progressBlock:0.0714285714];
    if (v5 && CFAbsoluteTimeGetCurrent() - v7 >= 0.01 && (v28 = 0, v5[2](v5, &v28, v29), v28))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v31 = 325;
        v32 = 2080;
        v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v9 = 0;
    }

    else
    {
      v23 = [MEMORY[0x277CBEB18] arrayWithArray:v16];
      [v23 addObjectsFromArray:v27];
      [v23 addObjectsFromArray:v22];
      v24 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v20];
      [v24 addEntriesFromDictionary:v14];
      [v24 addEntriesFromDictionary:v21];
      v9 = [[PGGraphPortraitKnowledgeToDonate alloc] initWithTopics:v24 namedEntities:v23 locationNamedEntities:v19];

      v12 = v21;
    }

    v10 = v20;
    v6 = v19;
    goto LABEL_51;
  }

  v28 = 0;
  v5[2](v5, &v28, v29);
  if (v28 != 1)
  {
    v7 = v8;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v31 = 307;
    v32 = 2080;
    v33 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v9 = 0;
LABEL_56:

  return v9;
}

- (void)_accumulateKnowledgeNodesFromMomentNodes:(id)nodes progressBlock:(id)block
{
  v70 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  blockCopy = block;
  v8 = [nodesCopy count];
  if (v8)
  {
    v9 = v8;
    v35 = blockCopy;
    v10 = _Block_copy(blockCopy);
    v43 = self->_meaningNodes;
    v37 = self->_poiNodes;
    v38 = self->_roiNodes;
    v42 = self->_businessNodes;
    v40 = self->_publicEventNodes;
    v39 = self->_performerNodes;
    v44 = self->_datesByAddressNode;
    v11 = self->_addressNodes;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v36 = nodesCopy;
    obj = nodesCopy;
    v12 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (!v12)
    {
      goto LABEL_63;
    }

    v13 = v12;
    v14 = 0;
    v15 = 0.3 / v9 / 7.0;
    v16 = 0.2;
    v17 = *v62;
    v18 = 0.0;
    while (1)
    {
      v19 = 0;
      v20 = v18;
      do
      {
        if (*v62 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v61 + 1) + 8 * v19);
        v22 = objc_autoreleasePoolPush();
        localStartDate = [v21 localStartDate];
        [localStartDate timeIntervalSince1970];
        v25 = v24;

        universalStartDate = [v21 universalStartDate];
        [universalStartDate timeIntervalSince1970];
        v28 = v27;

        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke;
        v57[3] = &unk_278880D60;
        v60 = v25 - v28;
        v58 = v44;
        v59 = v11;
        [v21 enumerateAddressEdgesAndNodesUsingBlock:v57];
        v16 = v15 + v16;
        if (!v10 || (v18 = CFAbsoluteTimeGetCurrent(), v18 - v20 < 0.01))
        {
          v18 = v20;
LABEL_10:
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke_321;
          v54[3] = &unk_2788877E0;
          v55 = v43;
          [v21 enumerateMeaningNodesUsingBlock:v54];
          v16 = v15 + v16;
          if (v10 && (v29 = CFAbsoluteTimeGetCurrent(), v29 - v18 >= 0.01))
          {
            v56 = 0;
            v10[2](v10, &v56, v16);
            if (!(v56 | v14 & 1))
            {
              v14 = 0;
              goto LABEL_13;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v66 = 266;
              v67 = 2080;
              v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v34 = 0;
            v14 = 1;
          }

          else
          {
            v29 = v18;
LABEL_13:
            v52[0] = MEMORY[0x277D85DD0];
            v52[1] = 3221225472;
            v52[2] = __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke_323;
            v52[3] = &unk_278887620;
            v53 = v42;
            [v21 enumerateBusinessNodesUsingBlock:v52];
            v16 = v15 + v16;
            if (v10 && (v30 = CFAbsoluteTimeGetCurrent(), v30 - v29 >= 0.01))
            {
              v56 = 0;
              v10[2](v10, &v56, v16);
              if (!(v56 | v14 & 1))
              {
                v14 = 0;
                goto LABEL_16;
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v66 = 272;
                v67 = 2080;
                v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              v34 = 0;
              v14 = 1;
            }

            else
            {
              v30 = v29;
LABEL_16:
              v49[0] = MEMORY[0x277D85DD0];
              v49[1] = 3221225472;
              v49[2] = __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke_325;
              v49[3] = &unk_278888E90;
              v50 = v40;
              v51 = v39;
              [v21 enumeratePublicEventNodesUsingBlock:v49];
              v16 = v15 + v16;
              if (v10 && (v31 = CFAbsoluteTimeGetCurrent(), v31 - v30 >= 0.01))
              {
                v56 = 0;
                v10[2](v10, &v56, v16);
                if (!(v56 | v14 & 1))
                {
                  v14 = 0;
                  goto LABEL_19;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v66 = 282;
                  v67 = 2080;
                  v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                v34 = 0;
                v14 = 1;
              }

              else
              {
                v31 = v30;
LABEL_19:
                v47[0] = MEMORY[0x277D85DD0];
                v47[1] = 3221225472;
                v47[2] = __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke_328;
                v47[3] = &unk_2788875F8;
                v48 = v38;
                [v21 enumerateROINodesUsingBlock:v47];
                v16 = v15 + v16;
                if (v10 && (v32 = CFAbsoluteTimeGetCurrent(), v32 - v31 >= 0.01))
                {
                  v56 = 0;
                  v10[2](v10, &v56, v16);
                  if (!(v56 | v14 & 1))
                  {
                    v14 = 0;
                    goto LABEL_22;
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    v66 = 288;
                    v67 = 2080;
                    v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  v34 = 0;
                  v14 = 1;
                }

                else
                {
                  v32 = v31;
LABEL_22:
                  v45[0] = MEMORY[0x277D85DD0];
                  v45[1] = 3221225472;
                  v45[2] = __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke_330;
                  v45[3] = &unk_2788875D0;
                  v46 = v37;
                  [v21 enumeratePOINodesUsingBlock:v45];
                  v16 = v15 + v16;
                  if (v10 && (Current = CFAbsoluteTimeGetCurrent(), Current - v32 >= 0.01))
                  {
                    v56 = 0;
                    v10[2](v10, &v56, v16);
                    if (v56 | v14 & 1)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                      {
                        *buf = 67109378;
                        v66 = 294;
                        v67 = 2080;
                        v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
                        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                      }

                      v34 = 0;
                      v14 = 1;
                    }

                    else
                    {
                      v14 = 0;
                      v34 = 1;
                    }
                  }

                  else
                  {
                    v34 = 1;
                    Current = v32;
                  }

                  v32 = Current;
                }

                v31 = v32;
              }

              v30 = v31;
            }

            v29 = v30;
          }

          v18 = v29;
          goto LABEL_60;
        }

        v56 = 0;
        v10[2](v10, &v56, v16);
        if (!(v56 | v14 & 1))
        {
          v14 = 0;
          goto LABEL_10;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v66 = 260;
          v67 = 2080;
          v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v34 = 0;
        v14 = 1;
LABEL_60:

        objc_autoreleasePoolPop(v22);
        if (!v34)
        {
          goto LABEL_63;
        }

        ++v19;
        v20 = v18;
      }

      while (v13 != v19);
      v13 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
      if (!v13)
      {
LABEL_63:

        blockCopy = v35;
        nodesCopy = v36;
        break;
      }
    }
  }
}

void __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  [a2 timestampUTCStart];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v5 + *(a1 + 48)];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v8];
  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }

  [v7 addObject:v6];
  [*(a1 + 40) addObject:v8];
}

void __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke_325(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:v4];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __101__PGGraphPortraitDonationEnrichmentProcessor__accumulateKnowledgeNodesFromMomentNodes_progressBlock___block_invoke_2;
  v5[3] = &unk_278882490;
  v6 = *(a1 + 40);
  [v4 enumeratePerformerNodesUsingBlock:v5];
}

- (void)_prepareForKnowledgeDonation
{
  v3 = [MEMORY[0x277CCA940] set];
  meaningNodes = self->_meaningNodes;
  self->_meaningNodes = v3;

  v5 = [MEMORY[0x277CCA940] set];
  poiNodes = self->_poiNodes;
  self->_poiNodes = v5;

  v7 = [MEMORY[0x277CCA940] set];
  roiNodes = self->_roiNodes;
  self->_roiNodes = v7;

  v9 = [MEMORY[0x277CCA940] set];
  businessNodes = self->_businessNodes;
  self->_businessNodes = v9;

  v11 = [MEMORY[0x277CCA940] set];
  publicEventNodes = self->_publicEventNodes;
  self->_publicEventNodes = v11;

  v13 = [MEMORY[0x277CCA940] set];
  performerNodes = self->_performerNodes;
  self->_performerNodes = v13;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  datesByAddressNode = self->_datesByAddressNode;
  self->_datesByAddressNode = dictionary;

  v17 = [MEMORY[0x277CCA940] set];
  addressNodes = self->_addressNodes;
  self->_addressNodes = v17;
}

- (void)_donateKnowledgeWithManager:(id)manager progressBlock:(id)block
{
  v40 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  blockCopy = block;
  enrichmentLoggingConnection = [managerCopy enrichmentLoggingConnection];
  v9 = os_signpost_id_generate(enrichmentLoggingConnection);
  v10 = enrichmentLoggingConnection;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SiriPortraitDonation", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v12 = mach_absolute_time();
  *buf = 0;
  v30 = buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__17296;
  v33 = __Block_byref_object_dispose__17297;
  v34 = 0;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __88__PGGraphPortraitDonationEnrichmentProcessor__donateKnowledgeWithManager_progressBlock___block_invoke;
  v24 = &unk_278880D38;
  v13 = v11;
  v25 = v13;
  v14 = blockCopy;
  selfCopy = self;
  v27 = v14;
  v28 = buf;
  [managerCopy performSynchronousConcurrentGraphReadUsingBlock:&v21];
  if (*(v30 + 5))
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(PGGraphPortraitDonationEnrichmentProcessor *)self _donateKnowledge:*(v30 + 5) donationDate:date loggingConnection:v13];
  }

  v16 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v19 = v13;
  v20 = v19;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *v36 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_END, v9, "SiriPortraitDonation", "", v36, 2u);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v36 = 136315394;
    v37 = "SiriPortraitDonation";
    v38 = 2048;
    v39 = ((((v16 - v12) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v36, 0x16u);
  }

  _Block_object_dispose(buf, 8);
}

void __88__PGGraphPortraitDonationEnrichmentProcessor__donateKnowledgeWithManager_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [a2 graph];
  v4 = *(a1 + 32);
  if (v3)
  {
    if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22F0FC000, v4, OS_LOG_TYPE_DEBUG, "PortraitEnrichment - Will donate graph knowledge to Portrait", buf, 2u);
    }

    v5 = _Block_copy(*(a1 + 48));
    v6 = 0.0;
    if (v5)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current >= 0.01)
      {
        v18 = 0;
        v5[2](v5, &v18, 0.0);
        if (v18 == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 161;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_33;
        }

        v6 = Current;
      }
    }

    [*(a1 + 40) _prepareForKnowledgeDonation];
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-31557600.0];
    v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v8];
    v11 = [v3 momentNodesOverlappingLocalDateInterval:v10];
    if (v5)
    {
      v12 = CFAbsoluteTimeGetCurrent();
      if (v12 - v6 >= 0.01)
      {
        v18 = 0;
        v5[2](v5, &v18, 0.2);
        if (v18)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v20 = 171;
            v21 = 2080;
            v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
            v13 = MEMORY[0x277D86220];
LABEL_31:
            _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_32;
          }

          goto LABEL_32;
        }

        v6 = v12;
      }
    }

    if ([v11 count])
    {
      [*(a1 + 40) _accumulateKnowledgeNodesFromMomentNodes:v11 progressBlock:*(a1 + 48)];
      if (v5)
      {
        v14 = CFAbsoluteTimeGetCurrent();
        if (v14 - v6 >= 0.01)
        {
          v18 = 0;
          v5[2](v5, &v18, 0.5);
          if (v18)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v20 = 177;
              v21 = 2080;
              v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
              v13 = MEMORY[0x277D86220];
              goto LABEL_31;
            }

LABEL_32:

LABEL_33:
            goto LABEL_34;
          }

          v6 = v14;
        }
      }

      v15 = [*(a1 + 40) _knowledgeToDonateFromAccumulatedNodesWithProgressBlock:*(a1 + 48)];
      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    if (!v5)
    {
      goto LABEL_32;
    }

    if (CFAbsoluteTimeGetCurrent() - v6 < 0.01)
    {
      goto LABEL_32;
    }

    v18 = 0;
    v5[2](v5, &v18, 1.0);
    if (!v18 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }

    *buf = 67109378;
    v20 = 182;
    v21 = 2080;
    v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
    v13 = MEMORY[0x277D86220];
    goto LABEL_31;
  }

  if (os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_22F0FC000, v4, OS_LOG_TYPE_FAULT, "PortraitEnrichment - portrait donation can not run because the graph is nil", buf, 2u);
  }

LABEL_34:
}

- (void)enrichDataModelWithManager:(id)manager curationContext:(id)context graphUpdateInventory:(id)inventory progressReporter:(id)reporter
{
  v40 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  contextCopy = context;
  inventoryCopy = inventory;
  reporterCopy = reporter;
  enrichmentLoggingConnection = [managerCopy enrichmentLoggingConnection];
  v15 = os_signpost_id_generate(enrichmentLoggingConnection);
  v16 = enrichmentLoggingConnection;
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PGGraphPortraitDonationEnrichmentProcessor", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v18 = mach_absolute_time();
  v19 = reporterCopy;
  *buf = 0;
  v34 = buf;
  v35 = 0x2020000000;
  v36 = 0;
  v20 = [v19 isCancelledWithProgress:0.0];
  v34[24] = v20;
  if (v20)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v38 = 67109378;
      *v39 = 112;
      *&v39[4] = 2080;
      *&v39[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
      v21 = MEMORY[0x277D86220];
      v22 = "Cancelled at line %d in file %s";
LABEL_18:
      v24 = 18;
LABEL_19:
      _os_log_impl(&dword_22F0FC000, v21, OS_LOG_TYPE_INFO, v22, v38, v24);
    }
  }

  else
  {
    if ([(PGGraphPortraitDonationEnrichmentProcessor *)self _shouldProcessGraphUpdate:inventoryCopy])
    {
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __127__PGGraphPortraitDonationEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke;
      v30[3] = &unk_278889448;
      v32 = buf;
      v31 = v19;
      [(PGGraphPortraitDonationEnrichmentProcessor *)self _donateKnowledgeWithManager:managerCopy progressBlock:v30];
      if (v34[24] == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v38 = 67109378;
          *v39 = 120;
          *&v39[4] = 2080;
          *&v39[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v38, 0x12u);
        }

        goto LABEL_20;
      }
    }

    if (v34[24])
    {
      v34[24] = 1;
    }

    else
    {
      v23 = [v19 isCancelledWithProgress:1.0];
      v34[24] = v23;
      if ((v23 & 1) == 0)
      {
        v25 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v28 = v17;
        v29 = v28;
        if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
        {
          *v38 = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, v15, "PGGraphPortraitDonationEnrichmentProcessor", "", v38, 2u);
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *v38 = 136315394;
          *v39 = "PGGraphPortraitDonationEnrichmentProcessor";
          *&v39[8] = 2048;
          *&v39[10] = ((((v25 - v18) * numer) / denom) / 1000000.0);
          v22 = "[Performance] %s: %f ms";
          v21 = v29;
          v24 = 22;
          goto LABEL_19;
        }

        goto LABEL_20;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v38 = 67109378;
      *v39 = 123;
      *&v39[4] = 2080;
      *&v39[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphPortraitDonationEnrichmentProcessor.m";
      v21 = MEMORY[0x277D86220];
      v22 = "Cancelled at line %d in file %s";
      goto LABEL_18;
    }
  }

LABEL_20:
  _Block_object_dispose(buf, 8);
}

uint64_t __127__PGGraphPortraitDonationEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke(uint64_t a1, _BYTE *a2)
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

@end