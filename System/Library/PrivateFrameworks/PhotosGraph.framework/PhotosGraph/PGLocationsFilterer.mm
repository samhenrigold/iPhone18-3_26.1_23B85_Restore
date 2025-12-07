@interface PGLocationsFilterer
- (NSArray)filteredLocationNodes;
- (PGLocationsFilterer)initWithSortedMomentNodes:(id)nodes locationNodes:(id)locationNodes incompleteLocationResolver:(id)resolver;
- (id)_filteredSignificantLocationNodes;
@end

@implementation PGLocationsFilterer

- (id)_filteredSignificantLocationNodes
{
  v151 = *MEMORY[0x277D85DE8];
  v87 = self->_locationNodes;
  selfCopy = self;
  v82 = self->_sortedMomentNodes;
  firstObject = [(NSArray *)v82 firstObject];
  graph = [firstObject graph];

  v85 = [graph version] >= 0xCE && +[PGUserDefaults useExtendedCurationAssetCountForLocationTitles](PGUserDefaults, "useExtendedCurationAssetCountForLocationTitles");
  v94 = selfCopy->_incompleteLocationResolver;
  if (![(NSArray *)v87 count])
  {
    v49 = v87;
    goto LABEL_94;
  }

  firstObject2 = [(NSArray *)v87 firstObject];
  label = [firstObject2 label];

  v90 = [PGCommonTitleUtility dimensionForLabel:label];
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v91 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSArray count](v87, "count")}];
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  obj = v82;
  v92 = [(NSArray *)obj countByEnumeratingWithState:&v140 objects:v150 count:16];
  if (v92)
  {
    v86 = 0;
    v88 = *v141;
    v6 = 0x277CCA000uLL;
    do
    {
      v7 = 0;
      do
      {
        if (*v141 != v88)
        {
          v8 = v7;
          objc_enumerationMutation(obj);
          v7 = v8;
        }

        v95 = v7;
        v9 = *(*(&v140 + 1) + 8 * v7);
        context = objc_autoreleasePoolPush();
        strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
        v136 = 0;
        v137 = &v136;
        v138 = 0x2020000000;
        v139 = 0;
        v132 = 0;
        v133 = &v132;
        v134 = 0x2020000000;
        v135 = 0;
        v124[0] = MEMORY[0x277D85DD0];
        v124[1] = 3221225472;
        v124[2] = __56__PGLocationsFilterer__filteredSignificantLocationNodes__block_invoke;
        v124[3] = &unk_278882E28;
        v125 = label;
        v126 = v94;
        v131 = v90;
        v11 = v91;
        v127 = v11;
        v129 = &v132;
        v130 = &v136;
        v12 = strongToStrongObjectsMapTable2;
        v128 = v12;
        [v9 enumerateAddressEdgesAndNodesUsingBlock:v124];
        if (v137[3] > 0.0)
        {
          if (v85)
          {
            numberOfAssetsInExtendedCuration = [v9 numberOfAssetsInExtendedCuration];
          }

          else
          {
            numberOfAssetsInExtendedCuration = [v9 numberOfAssets];
          }

          if (!numberOfAssetsInExtendedCuration)
          {
            numberOfAssetsInExtendedCuration = [v9 numberOfAssets];
          }

          v89 = numberOfAssetsInExtendedCuration;
          if (*(v133 + 24) == 1)
          {
            v122 = 0u;
            v123 = 0u;
            v120 = 0u;
            v121 = 0u;
            allValues = [v11 allValues];
            v15 = [allValues countByEnumeratingWithState:&v120 objects:v149 count:16];
            if (v15)
            {
              v97 = allValues;
              v98 = *v121;
              do
              {
                v99 = v15;
                for (i = 0; i != v99; ++i)
                {
                  if (*v121 != v98)
                  {
                    objc_enumerationMutation(v97);
                  }

                  v17 = *(*(&v120 + 1) + 8 * i);
                  if ([v17 count] >= 2)
                  {
                    v118 = 0u;
                    v119 = 0u;
                    v116 = 0u;
                    v117 = 0u;
                    v18 = v17;
                    v19 = [v18 countByEnumeratingWithState:&v116 objects:v148 count:16];
                    if (v19)
                    {
                      v20 = *v117;
                      v21 = 0.0;
                      v22 = 0.0;
                      do
                      {
                        for (j = 0; j != v19; ++j)
                        {
                          if (*v117 != v20)
                          {
                            objc_enumerationMutation(v18);
                          }

                          v24 = [v12 objectForKey:*(*(&v116 + 1) + 8 * j)];
                          [v24 floatValue];
                          v26 = v25;

                          v22 = v22 + v26;
                          if (v21 < v26)
                          {
                            v21 = v26;
                          }
                        }

                        v19 = [v18 countByEnumeratingWithState:&v116 objects:v148 count:16];
                      }

                      while (v19);
                    }

                    else
                    {
                      v21 = 0.0;
                      v22 = 0.0;
                    }

                    v137[3] = v137[3] - (v22 - v21);
                    v27 = [v18 objectAtIndexedSubscript:0];
                    v28 = [*(v6 + 2992) numberWithDouble:v21];
                    [v12 setObject:v28 forKey:v27];

                    v29 = v6;
                    v114 = 0u;
                    v115 = 0u;
                    v112 = 0u;
                    v113 = 0u;
                    v30 = v18;
                    v31 = [v30 countByEnumeratingWithState:&v112 objects:v147 count:16];
                    if (v31)
                    {
                      v32 = *v113;
                      do
                      {
                        for (k = 0; k != v31; ++k)
                        {
                          if (*v113 != v32)
                          {
                            objc_enumerationMutation(v30);
                          }

                          v34 = *(*(&v112 + 1) + 8 * k);
                          if (([v34 isSameNodeAsNode:v27] & 1) == 0)
                          {
                            [v12 removeObjectForKey:v34];
                          }
                        }

                        v31 = [v30 countByEnumeratingWithState:&v112 objects:v147 count:16];
                      }

                      while (v31);
                    }

                    v6 = v29;
                  }
                }

                allValues = v97;
                v15 = [v97 countByEnumeratingWithState:&v120 objects:v149 count:16];
              }

              while (v15);
            }
          }

          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          keyEnumerator = [v12 keyEnumerator];
          v36 = [keyEnumerator countByEnumeratingWithState:&v108 objects:v146 count:16];
          if (v36)
          {
            v37 = *v109;
            do
            {
              for (m = 0; m != v36; ++m)
              {
                if (*v109 != v37)
                {
                  objc_enumerationMutation(keyEnumerator);
                }

                v39 = *(*(&v108 + 1) + 8 * m);
                v40 = [v12 objectForKey:v39];
                [v40 floatValue];
                v42 = v41;

                v43 = v137[3];
                v44 = [strongToStrongObjectsMapTable objectForKey:v39];
                [v44 floatValue];
                v46 = v45;

                v47 = [*(v6 + 2992) numberWithDouble:v42 / v43 * v89 + v46];
                [strongToStrongObjectsMapTable setObject:v47 forKey:v39];
              }

              v36 = [keyEnumerator countByEnumeratingWithState:&v108 objects:v146 count:16];
            }

            while (v36);
          }

          v86 += v89;
        }

        _Block_object_dispose(&v132, 8);
        _Block_object_dispose(&v136, 8);

        objc_autoreleasePoolPop(context);
        v7 = v95 + 1;
      }

      while (v95 + 1 != v92);
      v92 = [(NSArray *)obj countByEnumeratingWithState:&v140 objects:v150 count:16];
    }

    while (v92);
    v48 = v86;
  }

  else
  {
    v48 = 0.0;
  }

  v49 = [(NSArray *)v87 mutableCopy];
  v50 = [strongToStrongObjectsMapTable count];
  v51 = v50;
  if (v50 >= 2)
  {
    if (v50 == 3)
    {
      filteringType = selfCopy->_filteringType;
      v53 = 0.0;
      if (filteringType <= 2)
      {
        v54 = &unk_22F78C43C;
        goto LABEL_67;
      }
    }

    else
    {
      if (v50 != 2)
      {
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        keyEnumerator2 = [strongToStrongObjectsMapTable keyEnumerator];
        v57 = [keyEnumerator2 countByEnumeratingWithState:&v104 objects:v145 count:16];
        v58 = v51;
        v59 = v48 / v51;
        if (v57)
        {
          v60 = *v105;
          v61 = 0.0;
          do
          {
            for (n = 0; n != v57; ++n)
            {
              if (*v105 != v60)
              {
                objc_enumerationMutation(keyEnumerator2);
              }

              v63 = [strongToStrongObjectsMapTable objectForKey:*(*(&v104 + 1) + 8 * n)];
              [v63 floatValue];
              v65 = v64;

              v61 = v61 + ((v65 - v59) * (v65 - v59));
            }

            v57 = [keyEnumerator2 countByEnumeratingWithState:&v104 objects:v145 count:16];
          }

          while (v57);
        }

        else
        {
          v61 = 0.0;
        }

        v66 = sqrtf(v61 / v58);
        v67 = selfCopy->_filteringType;
        v68 = 0.0;
        if (v67 <= 2)
        {
          v68 = flt_22F78C448[v67];
        }

        v69 = v59 - (v68 * v66);
        v70 = v59 + v66;
        if (v69 >= 0.0)
        {
          v70 = v69;
        }

        v55 = floorf(v70);
        goto LABEL_83;
      }

      filteringType = selfCopy->_filteringType;
      v53 = 0.0;
      if (filteringType <= 2)
      {
        v54 = &unk_22F78C430;
LABEL_67:
        v53 = v54[filteringType];
      }
    }

    v55 = ceilf(v53 * v48);
LABEL_83:
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    keyEnumerator3 = [strongToStrongObjectsMapTable keyEnumerator];
    v72 = [keyEnumerator3 countByEnumeratingWithState:&v100 objects:v144 count:16];
    if (v72)
    {
      v73 = *v101;
      v74 = v55;
      do
      {
        for (ii = 0; ii != v72; ++ii)
        {
          if (*v101 != v73)
          {
            objc_enumerationMutation(keyEnumerator3);
          }

          v76 = *(*(&v100 + 1) + 8 * ii);
          v77 = [strongToStrongObjectsMapTable objectForKey:v76];
          [v77 floatValue];
          v79 = v78;

          if (v79 < v74)
          {
            [(NSArray *)v49 removeObject:v76];
          }
        }

        v72 = [keyEnumerator3 countByEnumeratingWithState:&v100 objects:v144 count:16];
      }

      while (v72);
    }
  }

LABEL_94:

  return v49;
}

void __56__PGLocationsFilterer__filteredSignificantLocationNodes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 collection];
  v8 = [v7 nearestDeepParentLocationNodesWithLabel:*(a1 + 32)];
  v9 = [v8 anyNode];

  if (!v9)
  {
    v10 = [*(a1 + 40) resolvedLocationNodeForIncompleteAddressNode:v6 withTargetDimension:*(a1 + 80)];
    if (!v10)
    {
      goto LABEL_17;
    }

    v9 = v10;
  }

  v11 = [v9 name];
  v12 = v11;
  if (v11 && [v11 length])
  {
    v13 = [*(a1 + 48) objectForKeyedSubscript:v12];
    if (([v13 containsObject:v9] & 1) == 0)
    {
      if (!v13)
      {
        v13 = [MEMORY[0x277CBEB18] array];
        [*(a1 + 48) setObject:v13 forKeyedSubscript:v12];
      }

      [v13 addObject:v9];
    }

    if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
    {
      *(*(*(a1 + 64) + 8) + 24) = [v13 count] > 1;
    }

    [v5 relevance];
    v15 = v14;
    *(*(*(a1 + 72) + 8) + 24) = v14 + *(*(*(a1 + 72) + 8) + 24);
    v16 = [*(a1 + 56) objectForKey:v9];
    [v16 floatValue];
    v18 = v17;

    v19 = *(a1 + 56);
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v15 + v18];
    [v19 setObject:v20 forKey:v9];
  }

  else
  {
    v21 = +[PGLogging sharedLogging];
    v22 = [v21 loggingConnection];

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = 138412290;
      v24 = v9;
      _os_log_error_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_ERROR, "Location Node has no name! %@", &v23, 0xCu);
    }
  }

LABEL_17:
}

- (NSArray)filteredLocationNodes
{
  filteredLocationNodes = self->_filteredLocationNodes;
  if (!filteredLocationNodes)
  {
    _filteredSignificantLocationNodes = [(PGLocationsFilterer *)self _filteredSignificantLocationNodes];
    v5 = self->_filteredLocationNodes;
    self->_filteredLocationNodes = _filteredSignificantLocationNodes;

    filteredLocationNodes = self->_filteredLocationNodes;
  }

  return filteredLocationNodes;
}

- (PGLocationsFilterer)initWithSortedMomentNodes:(id)nodes locationNodes:(id)locationNodes incompleteLocationResolver:(id)resolver
{
  nodesCopy = nodes;
  locationNodesCopy = locationNodes;
  resolverCopy = resolver;
  v15.receiver = self;
  v15.super_class = PGLocationsFilterer;
  v12 = [(PGLocationsFilterer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_filteringType = 0;
    objc_storeStrong(&v12->_sortedMomentNodes, nodes);
    objc_storeStrong(&v13->_locationNodes, locationNodes);
    objc_storeStrong(&v13->_incompleteLocationResolver, resolver);
  }

  return v13;
}

@end