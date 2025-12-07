@interface PGMovieDeduper
- (id)deduplicatedItemsWithItems:(id)items debugInfo:(id)info progressBlock:(id)block;
@end

@implementation PGMovieDeduper

- (id)deduplicatedItemsWithItems:(id)items debugInfo:(id)info progressBlock:(id)block
{
  v136 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  infoCopy = info;
  blockCopy = block;
  v10 = 0.0;
  v112 = _Block_copy(blockCopy);
  if (v112)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v129 = 0;
      v112[2](v112, &v129, 0.0);
      if (v129 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v132 = 30;
          *&v132[4] = 2080;
          *&v132[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGMovieDeduper.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v12 = MEMORY[0x277CBEBF8];
        goto LABEL_115;
      }

      v10 = Current;
    }
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v13 = itemsCopy;
  v14 = [v13 countByEnumeratingWithState:&v125 objects:v135 count:16];
  if (!v14)
  {
LABEL_16:

    v12 = v13;
    goto LABEL_115;
  }

  v15 = v14;
  v16 = *v126;
LABEL_10:
  v17 = 0;
  while (1)
  {
    if (*v126 != v16)
    {
      objc_enumerationMutation(v13);
    }

    if ([*(*(&v125 + 1) + 8 * v17) isVideo])
    {
      break;
    }

    if (v15 == ++v17)
    {
      v15 = [v13 countByEnumeratingWithState:&v125 objects:v135 count:16];
      if (!v15)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }
  }

  v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v134[0] = v18;
  v19 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v134[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:2];

  v21 = [v13 sortedArrayUsingDescriptors:v20];
  v99 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v21, "count")}];
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  lastObject = [v21 lastObject];
  mEMORY[0x277D267F0] = [MEMORY[0x277D267F0] sharedMediaAnalyzer];
  identifiersOfRequiredItems = [(PGDeduper *)self identifiersOfRequiredItems];
  v25 = [v21 count];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = v21;
  v90 = [obj countByEnumeratingWithState:&v121 objects:v133 count:16];
  v27 = 0;
  if (!v90)
  {
LABEL_101:

    if (v112 && CFAbsoluteTimeGetCurrent() - v10 >= 0.01 && (v129 = 0, v112[2](v112, &v129, 1.0), v129))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v132 = 205;
        *&v132[4] = 2080;
        *&v132[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGMovieDeduper.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v12 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v12 = v99;
    }

    v77 = obj;
    goto LABEL_114;
  }

  v97 = 1.0 / v25;
  v91 = *v122;
  v106 = *MEMORY[0x277D26790];
  v104 = *MEMORY[0x277D26770];
  v105 = *MEMORY[0x277D267C0];
  v100 = *MEMORY[0x277D267A0];
  v101 = *MEMORY[0x277D26798];
  v28 = 0.0;
  v29 = MEMORY[0x277D86220];
  *&v26 = 134218242;
  v79 = v26;
  v30 = 0.5;
LABEL_19:
  v31 = 0;
  while (2)
  {
    v95 = v27;
    if (*v122 != v91)
    {
      v32 = v31;
      objc_enumerationMutation(obj);
      v31 = v32;
    }

    v92 = v31;
    v96 = *(*(&v121 + 1) + 8 * v31);
    creationDate = [v96 creationDate];
    v34 = creationDate;
    if (v95)
    {
      [creationDate timeIntervalSinceDate:?];
      v36 = v35 >= 180.0;
    }

    else
    {
      v36 = 0;
    }

    v37 = v96;
    v94 = v34;
    if (!v36 && v96 != lastObject)
    {
      goto LABEL_93;
    }

    v89 = v36;
    if (v96 != lastObject)
    {
      v36 = 1;
    }

    if (!v36)
    {
      [v22 addObject:v96];
    }

    if ([v22 count] == 1)
    {
      [v99 addObjectsFromArray:v22];
      goto LABEL_89;
    }

    context = objc_autoreleasePoolPush();
    v120 = 0;
    v109 = [mEMORY[0x277D267F0] requestAnalysis:66560 forAssets:v22 withOptions:0 andProgressHandler:0 andError:&v120];
    v87 = v120;
    if (v112)
    {
      v38 = CFAbsoluteTimeGetCurrent();
      if (v38 - v10 >= 0.01)
      {
        v129 = 0;
        v112[2](v112, &v129, v28 + v97 * v30);
        if (v129)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v132 = 84;
            *&v132[4] = 2080;
            *&v132[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGMovieDeduper.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v46 = v87;
          v77 = obj;
LABEL_110:

          objc_autoreleasePoolPop(context);
          v27 = v95;
          goto LABEL_111;
        }

        v10 = v38;
      }
    }

    if (!v109 || v87)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = v79;
        *v132 = 66560;
        *&v132[8] = 2112;
        *&v132[10] = v87;
        _os_log_error_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_ERROR, "Error requesting analysis types 0x%llx from MediaAnalyzer. %@", buf, 0x16u);
      }

      [v99 addObjectsFromArray:v22];
      goto LABEL_88;
    }

    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v40 = [v22 count];
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v41 = v22;
    v108 = [v41 countByEnumeratingWithState:&v116 objects:v130 count:16];
    if (!v108)
    {

      v46 = 0;
      v34 = v94;
      goto LABEL_87;
    }

    v98 = v41;
    v80 = mEMORY[0x277D267F0];
    v81 = lastObject;
    v82 = v22;
    v83 = v20;
    v84 = blockCopy;
    v85 = itemsCopy;
    v42 = 0;
    isFavorite = 0;
    isVideo = 0;
    v45 = 0;
    v46 = 0;
    v47 = v30 / v40;
    v102 = *v117;
    v103 = v39;
    v48 = 0.5;
    v49 = -1.79769313e308;
    while (2)
    {
      for (i = 0; i != v108; ++i)
      {
        v51 = isVideo;
        v110 = isFavorite;
        if (*v117 != v102)
        {
          objc_enumerationMutation(v98);
        }

        v52 = *(*(&v116 + 1) + 8 * i);
        v53 = [v109 objectAtIndexedSubscript:v45];
        v54 = [v53 objectForKeyedSubscript:v106];
        v114 = v54;
        if (v54)
        {
          [v54 doubleValue];
          v56 = v55;
        }

        else
        {
          v56 = 0.5;
        }

        v111 = v42;
        v115 = v53;
        v57 = [v53 objectForKeyedSubscript:v105];
        v58 = [v57 objectForKeyedSubscript:v104];

        v113 = v58;
        v59 = v46;
        if (v58)
        {
          firstObject = [v58 firstObject];
          v61 = [firstObject objectForKeyedSubscript:v101];
          v62 = [v61 objectForKeyedSubscript:v100];
          [v62 doubleValue];
          v64 = v63 < 0.1;
        }

        else
        {
          v64 = 0;
        }

        isVideo = [v52 isVideo];
        isFavorite = [v52 isFavorite];
        clsIdentifier = [v52 clsIdentifier];
        v66 = [identifiersOfRequiredItems containsObject:clsIdentifier];

        v46 = v59;
        if (!v59 || !v64 || ((v51 | isVideo) & 1) == 0)
        {
          v39 = v103;
          if (v59)
          {
            [v99 addObject:v59];
            if ([v103 count])
            {
              [infoCopy dedupItems:v103 toItem:v59 withDedupingType:3];
              [v103 removeAllObjects];
            }
          }

LABEL_68:
          v46 = v52;

          v42 = v66;
          v49 = v56;
          goto LABEL_73;
        }

        v67 = v110 & (isFavorite ^ 1);
        v68 = v67 ^ 1;
        if (v67)
        {
          v69 = v111;
        }

        else
        {
          v69 = v111;
          if (((v51 ^ 1) & 1) == 0)
          {
            if (v56 > v49)
            {
              v68 = isVideo;
            }

            else
            {
              v68 = 0;
            }
          }
        }

        v39 = v103;
        if ((v69 & 1) == 0)
        {
          if (((v66 | v68) & 1) == 0)
          {
            [v103 addObject:v52];
            v42 = 0;
            goto LABEL_73;
          }

          [v103 addObject:v59];
          goto LABEL_68;
        }

        if (!v66)
        {
          v71 = v103;
LABEL_72:
          [v71 addObject:v52];
          v42 = 1;
          goto LABEL_73;
        }

        if (!v68)
        {
          v71 = v99;
          goto LABEL_72;
        }

        [v99 addObject:v59];
        v70 = v52;

        v42 = 1;
        v49 = v56;
        v46 = v70;
LABEL_73:
        v48 = v47 + v48;
        if (v112)
        {
          v72 = CFAbsoluteTimeGetCurrent();
          if (v72 - v10 >= 0.01)
          {
            v129 = 0;
            v112[2](v112, &v129, v28 + v97 * v48);
            if (v129)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v132 = 171;
                *&v132[4] = 2080;
                *&v132[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGMovieDeduper.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              blockCopy = v84;
              itemsCopy = v85;
              v22 = v82;
              v20 = v83;
              mEMORY[0x277D267F0] = v80;
              lastObject = v81;
              v77 = obj;
              goto LABEL_110;
            }

            v10 = v72;
          }
        }

        ++v45;
      }

      v108 = [v98 countByEnumeratingWithState:&v116 objects:v130 count:16];
      if (v108)
      {
        continue;
      }

      break;
    }

    lastObject = v81;
    v34 = v94;
    if (v46)
    {
      [v99 addObject:v46];
      v73 = [v39 count];
      v22 = v82;
      v20 = v83;
      mEMORY[0x277D267F0] = v80;
      v29 = MEMORY[0x277D86220];
      v30 = 0.5;
      if (v73)
      {
        [infoCopy dedupItems:v39 toItem:v46 withDedupingType:3];
        [v39 removeAllObjects];
      }

      blockCopy = v84;
      itemsCopy = v85;
    }

    else
    {
      blockCopy = v84;
      itemsCopy = v85;
      v22 = v82;
      v20 = v83;
      mEMORY[0x277D267F0] = v80;
      v29 = MEMORY[0x277D86220];
      v30 = 0.5;
    }

LABEL_87:

LABEL_88:
    objc_autoreleasePoolPop(context);
LABEL_89:
    [v22 removeAllObjects];
    v37 = v96;
    v74 = !v89;
    if (v96 != lastObject)
    {
      v74 = 1;
    }

    if ((v74 & 1) == 0)
    {
      [v99 addObject:v96];
      v37 = v96;
    }

LABEL_93:
    [v22 addObject:v37];
    [v37 duration];
    v27 = [v34 dateByAddingTimeInterval:?];

    v28 = v97 + v28;
    if (!v112 || (v75 = CFAbsoluteTimeGetCurrent(), v75 - v10 < 0.01))
    {
LABEL_97:

      v31 = v92 + 1;
      if (v92 + 1 != v90)
      {
        continue;
      }

      v76 = [obj countByEnumeratingWithState:&v121 objects:v133 count:16];
      v90 = v76;
      if (!v76)
      {
        goto LABEL_101;
      }

      goto LABEL_19;
    }

    break;
  }

  v129 = 0;
  v112[2](v112, &v129, v28);
  if (!v129)
  {
    v10 = v75;
    goto LABEL_97;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v132 = 199;
    *&v132[4] = 2080;
    *&v132[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGMovieDeduper.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v77 = obj;
LABEL_111:

  v12 = MEMORY[0x277CBEBF8];
LABEL_114:

LABEL_115:

  return v12;
}

@end