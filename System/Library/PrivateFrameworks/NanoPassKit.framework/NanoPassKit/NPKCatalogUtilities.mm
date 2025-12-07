@interface NPKCatalogUtilities
+ (id)catalogByMergingCompanionCatalog:(id)catalog intoWatchCatalog:(id)watchCatalog watchPasses:(id)passes;
@end

@implementation NPKCatalogUtilities

+ (id)catalogByMergingCompanionCatalog:(id)catalog intoWatchCatalog:(id)watchCatalog watchPasses:(id)passes
{
  v181 = *MEMORY[0x277D85DE8];
  catalogCopy = catalog;
  watchCatalogCopy = watchCatalog;
  passesCopy = passes;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v10 = passesCopy;
  v11 = [v10 countByEnumeratingWithState:&v165 objects:v180 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v166;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v166 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v165 + 1) + 8 * i);
        uniqueID = [v15 uniqueID];
        if (uniqueID)
        {
          [dictionary setObject:v15 forKey:uniqueID];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v165 objects:v180 count:16];
    }

    while (v12);
  }

  v99 = v10;

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v100 = watchCatalogCopy;
  obj = [watchCatalogCopy groups];
  v17 = [obj countByEnumeratingWithState:&v161 objects:v179 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v162;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v162 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v161 + 1) + 8 * j);
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        uniqueIDs = [v21 uniqueIDs];
        v23 = [uniqueIDs countByEnumeratingWithState:&v157 objects:v178 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v158;
          while (2)
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v158 != v25)
              {
                objc_enumerationMutation(uniqueIDs);
              }

              v27 = [dictionary objectForKey:*(*(&v157 + 1) + 8 * k)];
              if (v27)
              {
                v28 = v27;
                passType = [v27 passType];
                if ([v28 style] == 6 && passType == 1)
                {
                  v31 = array;
                }

                else
                {
                  v31 = array2;
                }

                [v31 addObject:v21];

                goto LABEL_31;
              }
            }

            v24 = [uniqueIDs countByEnumeratingWithState:&v157 objects:v178 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

LABEL_31:
      }

      v18 = [obj countByEnumeratingWithState:&v161 objects:v179 count:16];
    }

    while (v18);
  }

  array3 = [MEMORY[0x277CBEB18] array];
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  obja = [catalogCopy groups];
  v32 = [obja countByEnumeratingWithState:&v153 objects:v177 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v154;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v154 != v34)
        {
          objc_enumerationMutation(obja);
        }

        v36 = *(*(&v153 + 1) + 8 * m);
        v149 = 0u;
        v150 = 0u;
        v151 = 0u;
        v152 = 0u;
        uniqueIDs2 = [v36 uniqueIDs];
        v38 = [uniqueIDs2 countByEnumeratingWithState:&v149 objects:v176 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v150;
          while (2)
          {
            for (n = 0; n != v39; ++n)
            {
              if (*v150 != v40)
              {
                objc_enumerationMutation(uniqueIDs2);
              }

              v42 = [dictionary objectForKey:*(*(&v149 + 1) + 8 * n)];
              if (v42)
              {
                v43 = v42;
                passType2 = [v42 passType];
                style = [v43 style];
                if (passType2 != 1 || style != 6)
                {
                  v47 = [v36 copy];
                  [array3 addObject:v47];
                }

                goto LABEL_53;
              }
            }

            v39 = [uniqueIDs2 countByEnumeratingWithState:&v149 objects:v176 count:16];
            if (v39)
            {
              continue;
            }

            break;
          }
        }

LABEL_53:
      }

      v33 = [obja countByEnumeratingWithState:&v153 objects:v177 count:16];
    }

    while (v33);
  }

  v48 = [MEMORY[0x277CBEB58] set];
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v112 = array2;
  v49 = [v112 countByEnumeratingWithState:&v145 objects:v175 count:16];
  if (v49)
  {
    v50 = v49;
    v118 = *v146;
    do
    {
      for (ii = 0; ii != v50; ++ii)
      {
        if (*v146 != v118)
        {
          objc_enumerationMutation(v112);
        }

        v52 = *(*(&v145 + 1) + 8 * ii);
        v141 = 0u;
        v142 = 0u;
        v143 = 0u;
        v144 = 0u;
        uniqueIDs3 = [v52 uniqueIDs];
        v54 = [uniqueIDs3 countByEnumeratingWithState:&v141 objects:v174 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v142;
          do
          {
            for (jj = 0; jj != v55; ++jj)
            {
              if (*v142 != v56)
              {
                objc_enumerationMutation(uniqueIDs3);
              }

              v58 = *(*(&v141 + 1) + 8 * jj);
              v59 = [dictionary objectForKey:v58];
              if (v59)
              {
                [v48 addObject:v58];
              }
            }

            v55 = [uniqueIDs3 countByEnumeratingWithState:&v141 objects:v174 count:16];
          }

          while (v55);
        }
      }

      v50 = [v112 countByEnumeratingWithState:&v145 objects:v175 count:16];
    }

    while (v50);
  }

  v60 = [MEMORY[0x277CBEB58] set];
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v106 = array3;
  v119 = [v106 countByEnumeratingWithState:&v137 objects:v173 count:16];
  if (v119)
  {
    objb = *v138;
    do
    {
      for (kk = 0; kk != v119; kk = kk + 1)
      {
        if (*v138 != objb)
        {
          objc_enumerationMutation(v106);
        }

        v62 = *(*(&v137 + 1) + 8 * kk);
        v133 = 0u;
        v134 = 0u;
        v135 = 0u;
        v136 = 0u;
        uniqueIDs4 = [v62 uniqueIDs];
        v64 = [uniqueIDs4 countByEnumeratingWithState:&v133 objects:v172 count:16];
        if (v64)
        {
          v65 = v64;
          v66 = *v134;
          do
          {
            for (mm = 0; mm != v65; ++mm)
            {
              if (*v134 != v66)
              {
                objc_enumerationMutation(uniqueIDs4);
              }

              v68 = *(*(&v133 + 1) + 8 * mm);
              v69 = [dictionary objectForKey:v68];
              if (v69)
              {
                [v60 addObject:v68];
              }
            }

            v65 = [uniqueIDs4 countByEnumeratingWithState:&v133 objects:v172 count:16];
          }

          while (v65);
        }
      }

      v119 = [v106 countByEnumeratingWithState:&v137 objects:v173 count:16];
    }

    while (v119);
  }

  v70 = [v48 mutableCopy];
  [v70 minusSet:v60];
  array4 = [MEMORY[0x277CBEB18] array];
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v104 = v70;
  v108 = [v104 countByEnumeratingWithState:&v129 objects:v171 count:16];
  if (v108)
  {
    v107 = *v130;
    do
    {
      v71 = 0;
      do
      {
        if (*v130 != v107)
        {
          objc_enumerationMutation(v104);
        }

        v72 = *(*(&v129 + 1) + 8 * v71);
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        v120 = v112;
        v73 = [v120 countByEnumeratingWithState:&v125 objects:v170 count:16];
        if (v73)
        {
          v74 = v73;
          v109 = v71;
          v75 = *v126;
LABEL_94:
          v76 = 0;
          while (1)
          {
            if (*v126 != v75)
            {
              objc_enumerationMutation(v120);
            }

            v77 = *(*(&v125 + 1) + 8 * v76);
            uniqueIDs5 = [v77 uniqueIDs];
            v79 = [uniqueIDs5 containsObject:v72];

            if (v79)
            {
              break;
            }

            if (v74 == ++v76)
            {
              v74 = [v120 countByEnumeratingWithState:&v125 objects:v170 count:16];
              if (v74)
              {
                goto LABEL_94;
              }

              v80 = 0;
              v71 = v109;
              goto LABEL_115;
            }
          }

          v80 = v77;

          if (!v80)
          {
            v71 = v109;
            goto LABEL_117;
          }

          v71 = v109;
          if ([array4 containsObject:v80])
          {
            goto LABEL_117;
          }

          v81 = [v60 mutableCopy];
          v82 = MEMORY[0x277CBEB98];
          uniqueIDs6 = [v80 uniqueIDs];
          v84 = [v82 setWithArray:uniqueIDs6];
          [v81 intersectSet:v84];

          v120 = v81;
          if ([v81 count])
          {
            v102 = v80;
            objc = [v81 anyObject];
            v121 = 0u;
            v122 = 0u;
            v123 = 0u;
            v124 = 0u;
            v111 = v106;
            v85 = [v111 countByEnumeratingWithState:&v121 objects:v169 count:16];
            if (v85)
            {
              v86 = v85;
              v87 = *v122;
              while (2)
              {
                for (nn = 0; nn != v86; ++nn)
                {
                  if (*v122 != v87)
                  {
                    objc_enumerationMutation(v111);
                  }

                  v89 = *(*(&v121 + 1) + 8 * nn);
                  uniqueIDs7 = [v89 uniqueIDs];
                  v91 = [uniqueIDs7 containsObject:objc];

                  if (v91)
                  {
                    uniqueIDs8 = [v89 uniqueIDs];
                    [uniqueIDs8 addObject:v72];

                    v71 = v109;
                    v80 = v102;
                    goto LABEL_115;
                  }
                }

                v86 = [v111 countByEnumeratingWithState:&v121 objects:v169 count:16];
                if (v86)
                {
                  continue;
                }

                break;
              }
            }

            v71 = v109;
            v80 = v102;
          }

          [array4 addObject:v80];
        }

        else
        {
          v80 = 0;
        }

LABEL_115:

LABEL_117:
        ++v71;
      }

      while (v71 != v108);
      v93 = [v104 countByEnumeratingWithState:&v129 objects:v171 count:16];
      v108 = v93;
    }

    while (v93);
  }

  v94 = objc_alloc_init(MEMORY[0x277D37E10]);
  groups = [v94 groups];
  [groups addObjectsFromArray:array];

  groups2 = [v94 groups];
  [groups2 addObjectsFromArray:array4];

  groups3 = [v94 groups];
  [groups3 addObjectsFromArray:v106];

  return v94;
}

@end