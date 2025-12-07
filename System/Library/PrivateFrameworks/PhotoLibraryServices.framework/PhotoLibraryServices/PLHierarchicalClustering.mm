@interface PLHierarchicalClustering
- (PLHierarchicalClustering)init;
- (double)_createRelativeDistanceCacheForDataset:(id)dataset;
- (id)performWithDataset:(id)dataset progressBlock:(id)block;
- (unint64_t)_clustroidIndexForClusters:(unint64_t *)clusters numberOfObjects:(unint64_t)objects distances:(double *)distances relativeDistanceCache:(double *)cache;
@end

@implementation PLHierarchicalClustering

- (id)performWithDataset:(id)dataset progressBlock:(id)block
{
  datasetCopy = dataset;
  blockCopy = block;
  v208 = 0;
  v209 = &v208;
  v210 = 0x2020000000;
  v211 = 0;
  v7 = MEMORY[0x1E696AE38];
  v204 = datasetCopy;
  v8 = objc_msgSend_count(datasetCopy);
  if (v8 - self->_k + 2 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 - self->_k + 2;
  }

  v193 = [v7 progressWithTotalUnitCount:v9];
  totalUnitCount = [v193 totalUnitCount];
  distanceBlock = [(PLDataClustering *)self distanceBlock];
  if (blockCopy && self->_reportsProgressInDistancesMatrixCalculation)
  {
    v11 = 1.0 / totalUnitCount;
    v12 = v206;
    v206[0] = MEMORY[0x1E69E9820];
    v206[1] = 3221225472;
    v206[2] = __61__PLHierarchicalClustering_performWithDataset_progressBlock___block_invoke;
    v206[3] = &unk_1E7573D00;
    v185 = v207;
    v13 = blockCopy;
    *&v207[2] = v11;
    v207[0] = v13;
    v207[1] = &v208;
    v187 = 1;
  }

  else
  {
    v187 = 0;
    v12 = 0;
  }

  v14 = _Block_copy(v12);
  selfCopy = self;
  usesSortedDataRelativeDistanceCache = self->_usesSortedDataRelativeDistanceCache;
  v186 = v14;
  if (!self->_usesSortedDataRelativeDistanceCache)
  {
    v16 = [(PLDataClustering *)self createDistancesMatrixForDataset:v204 progressBlock:v14];
    if ((v209[3] & 1) == 0)
    {
      goto LABEL_16;
    }

    [(PLDataClustering *)self freeDistancesMatrix:v16 forDataset:v204];
LABEL_14:
    v17 = MEMORY[0x1E695E0F0];
    goto LABEL_338;
  }

  if (v209[3])
  {
    goto LABEL_14;
  }

  if (self->_usesSortedDataRelativeDistanceCache)
  {
    v15 = [(PLHierarchicalClustering *)self _createRelativeDistanceCacheForDataset:v204];
    v16 = 0;
    goto LABEL_17;
  }

  v16 = 0;
LABEL_16:
  v15 = 0;
LABEL_17:
  v18 = objc_msgSend_count(v204);
  v19 = malloc_type_calloc(8uLL, v18, 0x28A69A72uLL);
  v20 = objc_msgSend_count(v204);
  for (i = 0; i < objc_msgSend_count(v204); ++i)
  {
    v22 = malloc_type_calloc(8uLL, 1uLL, 0xF4F853D3uLL);
    v19[i] = v22;
    *v22 = i;
  }

  v23 = objc_msgSend_count(v204);
  v24 = malloc_type_calloc(8uLL, v23, 0x4440960EuLL);
  for (j = 0; j < objc_msgSend_count(v204); ++j)
  {
    v24[j] = 1;
  }

  v26 = objc_msgSend_count(v204);
  v194 = malloc_type_calloc(8uLL, v26, 0x8972D4FFuLL);
  for (k = 0; k < objc_msgSend_count(v204); ++k)
  {
    v194[k] = k;
  }

  v28 = objc_msgSend_count(v204);
  v29 = malloc_type_calloc(1uLL, v28, 0xAD614587uLL);
  v190 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v204];
  [v193 setCompletedUnitCount:{objc_msgSend(v193, "completedUnitCount") + 1}];
  if (blockCopy)
  {
    [v193 fractionCompleted];
    (*(blockCopy + 2))(blockCopy, v209 + 3);
  }

  if (v209[3])
  {
    if (v20)
    {
      v30 = v19;
      do
      {
        if (*v30)
        {
          free(*v30);
        }

        ++v30;
        --v20;
      }

      while (v20);
    }

    else if (!v19)
    {
      goto LABEL_252;
    }

    free(v19);
LABEL_252:
    if (v24)
    {
      free(v24);
    }

    if (v194)
    {
      free(v194);
    }

    if (v29)
    {
      free(v29);
    }

    if (!usesSortedDataRelativeDistanceCache)
    {
      goto LABEL_282;
    }

    goto LABEL_283;
  }

  v31 = v20 - 1;
  v197 = v29;
  while (1)
  {
    v188 = v31;
    v32 = selfCopy;
    v205 = v20;
    v33 = v20 > selfCopy->_k;
    v201 = v24;
    v202 = v19;
    v34 = v29;
    if (!v33)
    {
      goto LABEL_286;
    }

    linkage = selfCopy->_linkage;
    if (linkage <= 2)
    {
      break;
    }

    if (linkage == 3)
    {
      if (usesSortedDataRelativeDistanceCache)
      {
        v71 = 0;
        v110 = 0;
        v68 = 0;
        v111 = 3.40282347e38;
        v112 = v188;
        v113 = v205;
        do
        {
          v114 = v110++;
          if (v110 < v113)
          {
            v115 = v112;
            v116 = v110;
            do
            {
              v117 = v15[v194[v114]] - v15[v194[v116]];
              if (v117 < 0.0)
              {
                v117 = -v117;
              }

              if (v117 < v111)
              {
                v68 = v116;
                v71 = v114;
                v111 = v117;
              }

              ++v116;
              --v115;
            }

            while (v115);
          }

          --v112;
          v113 = v205;
        }

        while (v110 != v205);
      }

      else
      {
        v71 = 0;
        v68 = 0;
        v118 = 0;
        v111 = 3.40282347e38;
        v119 = v205;
        do
        {
          v120 = v118++;
          if (v118 < v119)
          {
            v122 = v31;
            v123 = v118;
            do
            {
              v121 = v16[v194[v120]];
              if (v121[v194[v123]] < v111)
              {
                v68 = v123;
                v71 = v120;
                v111 = v121[v194[v123]];
              }

              ++v123;
              --v122;
            }

            while (v122);
          }

          --v31;
          v119 = v205;
        }

        while (v118 != v205);
      }

      v124 = v19[v71];
      if (v124 && (v125 = v19[v68]) != 0)
      {
        v126 = v68;
        v127 = v71;
        v128 = v201[v71];
        v129 = v126;
        v130 = v201[v126];
        if (v130 + v128)
        {
          v131 = malloc_type_calloc(8uLL, v130 + v128, 0x2CC347CAuLL);
          memcpy(v131, v124, 8 * v128);
          memcpy(&v131[8 * v128], v125, 8 * v130);
        }

        else
        {
          v131 = 0;
        }

        v19 = v202;
        v71 = v127;
        v68 = v129;
      }

      else
      {
        v131 = 0;
      }

      v24 = v201;
      v111 = [(PLHierarchicalClustering *)selfCopy _clustroidIndexForClusters:v131 numberOfObjects:v201[v68] + v201[v71] distances:v16 relativeDistanceCache:v15, v111];
      if (v111 == 0x7FFFFFFF)
      {
        v32 = selfCopy;
        if (v131)
        {
          free(v131);
        }

        goto LABEL_286;
      }

      v194[v71] = v111;
      if (v205 < 2)
      {
        v134 = 0;
        v137 = v194;
      }

      else
      {
        v133 = malloc_type_calloc(8uLL, v205 - 1, 0x80AA52DDuLL);
        v134 = v133;
        v135 = 0;
        v136 = 0;
        do
        {
          if (v68 != v135)
          {
            v133[v136++] = v194[v135];
          }

          ++v135;
        }

        while (v205 != v135);
        v137 = v194;
        if (!v194)
        {
          if (v131)
          {
            goto LABEL_202;
          }

          goto LABEL_203;
        }
      }

      free(v137);
      if (v131)
      {
LABEL_202:
        free(v131);
      }

LABEL_203:
      v194 = v134;
      goto LABEL_204;
    }

    if (linkage != 4)
    {
      if (linkage == 5)
      {
        clusterKeyElementBlock = [(PLDataClustering *)selfCopy clusterKeyElementBlock];
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v58 = clusterKeyElementBlock + 2;
        v59 = 3.40282347e38;
        v60 = v188;
        do
        {
          if (!v19[v57])
          {
            __assert_rtn("[PLHierarchicalClustering performWithDataset:progressBlock:]", "PLHierarchicalClustering.m", 190, "clustersIndices[i] != NULL");
          }

          v61 = v57;
          v62 = v57 + 1;
          v195 = v57 + 1;
          v196 = v60;
          if (v57 + 1 < v205)
          {
            v63 = v60;
            v198 = v57;
            do
            {
              if (v202[v62])
              {
                if (usesSortedDataRelativeDistanceCache)
                {
                  v64 = 3.40282347e38;
                }

                else
                {
                  v199 = v55;
                  v200 = v56;
                  v65 = v58;
                  v66 = (clusterKeyElementBlock)[2](clusterKeyElementBlock, v202, v61, v201[v61], v204);
                  v67 = v65;
                  v64 = v16[v66][(clusterKeyElementBlock)[2](clusterKeyElementBlock, v202, v62, v201[v62], v204)];
                  v34 = v197;
                  v61 = v198;
                  v55 = v199;
                  v56 = v200;
                  v58 = v67;
                }

                if (v64 < v59)
                {
                  v56 = v62;
                  v55 = v61;
                  v59 = v64;
                }
              }

              ++v62;
              --v63;
            }

            while (v63);
          }

          v57 = v195;
          v60 = v196 - 1;
          v19 = v202;
        }

        while (v195 != v205);
        v68 = v56;
        v69 = v55;
        v32 = selfCopy;
        threshold = selfCopy->_threshold;

        v24 = v201;
        if (v59 <= threshold)
        {
          v71 = v69;
          goto LABEL_204;
        }

        goto LABEL_286;
      }

LABEL_350:
      __assert_rtn("[PLHierarchicalClustering performWithDataset:progressBlock:]", "PLHierarchicalClustering.m", 474, "idx1 != idx2");
    }

    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 3.40282347e38;
    while (v88 < objc_msgSend_count(v204))
    {
      if (!v19[v88])
      {
        __assert_rtn("[PLHierarchicalClustering performWithDataset:progressBlock:]", "PLHierarchicalClustering.m", 222, "clustersIndices[i] != NULL");
      }

      for (m = v88 + 1; m < objc_msgSend_count(v204); ++m)
      {
        if (v19[m] && !v34[v88] && !v34[m])
        {
          v93 = usesSortedDataRelativeDistanceCache ? 3.40282347e38 : v16[v88][m];
          if (v93 < v91)
          {
            v89 = m;
            v90 = v88;
            v91 = v93;
          }
        }
      }

      ++v88;
    }

    v32 = selfCopy;
    if (v91 > selfCopy->_threshold)
    {
      goto LABEL_286;
    }

    v71 = v90;
    v68 = v89;
LABEL_204:
    if (v71 == v68)
    {
      goto LABEL_350;
    }

    v138 = v19[v71];
    if (!v138)
    {
      v145 = 0;
      goto LABEL_214;
    }

    v139 = v19[v68];
    if (!v139)
    {
      v145 = 0;
      v24 = v201;
LABEL_213:
      free(v138);
      goto LABEL_214;
    }

    v140 = v68;
    v141 = v71;
    v142 = v201[v71];
    v143 = v140;
    v144 = v201[v140];
    if (!(v144 + v142))
    {
      v145 = 0;
      v24 = v201;
      v19 = v202;
      v71 = v141;
      v68 = v140;
      goto LABEL_213;
    }

    v145 = malloc_type_calloc(8uLL, v144 + v142, 0x2CC347CAuLL);
    memcpy(v145, v138, 8 * v142);
    memcpy(&v145[8 * v142], v139, 8 * v144);
    v24 = v201;
    v19 = v202;
    v71 = v141;
    v138 = v202[v141];
    v68 = v143;
    if (v138)
    {
      goto LABEL_213;
    }

LABEL_214:
    v19[v71] = v145;
    v24[v71] += v24[v68];
    if (selfCopy->_linkage == 4)
    {
      v34[v68] = 1;
      clusterConsolidationBlock = [(PLDataClustering *)selfCopy clusterConsolidationBlock];
      v147 = (clusterConsolidationBlock)[2](clusterConsolidationBlock, v19, v71, v24[v71], v204);
      [v190 setObject:v147 atIndexedSubscript:v71];
      for (n = 0; n < objc_msgSend_count(v204); ++n)
      {
        if (v71 != n && !(v34[n] | usesSortedDataRelativeDistanceCache))
        {
          v149 = [v190 objectAtIndexedSubscript:n];
          v150 = (distanceBlock)[2](distanceBlock, v147, v149);
          v16[v71][n] = v150;
          v16[n][v71] = v150;
        }
      }

      goto LABEL_241;
    }

    v151 = v19[v68];
    if (v151)
    {
      free(v151);
    }

    if (v205 < 2)
    {
      v153 = 0;
LABEL_232:
      free(v19);
      goto LABEL_233;
    }

    v152 = malloc_type_calloc(8uLL, v205 - 1, 0x1E3F0657uLL);
    v153 = v152;
    v154 = 0;
    v155 = 0;
    v24 = v201;
    v19 = v202;
    do
    {
      if (v68 != v154)
      {
        v152[v155++] = v202[v154];
      }

      ++v154;
    }

    while (v205 != v154);
    if (v202)
    {
      goto LABEL_232;
    }

LABEL_233:
    if (v205 < 2)
    {
      v157 = 0;
      if (!v24)
      {
        goto LABEL_240;
      }
    }

    else
    {
      v156 = malloc_type_calloc(8uLL, v205 - 1, 0x80AA52DDuLL);
      v157 = v156;
      v158 = 0;
      v159 = 0;
      v24 = v201;
      do
      {
        if (v68 != v158)
        {
          v156[v159++] = v201[v158];
        }

        ++v158;
      }

      while (v205 != v158);
      if (!v201)
      {
        goto LABEL_240;
      }
    }

    free(v24);
LABEL_240:
    v201 = v157;
    v202 = v153;
LABEL_241:
    [v193 setCompletedUnitCount:{objc_msgSend(v193, "completedUnitCount") + 1}];
    if (blockCopy)
    {
      [v193 fractionCompleted];
      (*(blockCopy + 2))(blockCopy, v209 + 3);
    }

    v29 = v34;
    v20 = v205 - 1;
    v31 = v188 - 1;
    v24 = v201;
    v19 = v202;
    if (*(v209 + 24) == 1)
    {
      if (selfCopy->_linkage == 4)
      {
        v160 = objc_msgSend_count(v204);
        if (v160)
        {
          v161 = v202;
          do
          {
            if (*v161)
            {
              free(*v161);
            }

            ++v161;
            --v160;
          }

          while (v160);
          goto LABEL_274;
        }

LABEL_273:
        if (v202)
        {
          goto LABEL_274;
        }
      }

      else
      {
        if (v205 == 1)
        {
          goto LABEL_273;
        }

        v162 = v202;
        v163 = v188;
        do
        {
          if (*v162)
          {
            free(*v162);
          }

          ++v162;
          --v163;
        }

        while (v163);
LABEL_274:
        free(v202);
      }

      if (v201)
      {
        free(v201);
      }

      if (v194)
      {
        free(v194);
      }

      if (v29)
      {
        free(v29);
      }

      if (!usesSortedDataRelativeDistanceCache)
      {
LABEL_282:
        [(PLDataClustering *)selfCopy freeDistancesMatrix:v16 forDataset:v204];
      }

LABEL_283:
      v17 = MEMORY[0x1E695E0F0];
      goto LABEL_335;
    }
  }

  if (linkage)
  {
    if (linkage != 1)
    {
      if (linkage != 2)
      {
        goto LABEL_350;
      }

      linkage = 0;
      v36 = 0;
      v37 = 0;
      v38 = 3.40282347e38;
      while (1)
      {
        v39 = v19[v37];
        if (!v39)
        {
          __assert_rtn("[PLHierarchicalClustering performWithDataset:progressBlock:]", "PLHierarchicalClustering.m", 366, "clustersIndices[i] != NULL");
        }

        v40 = v37++;
        if (v37 < v205)
        {
          break;
        }

LABEL_72:
        if (v37 == v205)
        {
          goto LABEL_165;
        }
      }

      v41 = v37;
      while (2)
      {
        if (v19[v41])
        {
          v42 = v24[v40];
          if (usesSortedDataRelativeDistanceCache)
          {
            if (v42)
            {
              v43 = 0;
              v44 = 3.40282347e38;
              do
              {
                if (v24[v41])
                {
                  v45 = v19[v41];
                  v46 = v24[v41];
                  do
                  {
                    v47 = *v45++;
                    v48 = v15[v39[v43]] - v15[v47];
                    if (v48 < 0.0)
                    {
                      v48 = -v48;
                    }

                    if (v48 < v44)
                    {
                      v44 = v48;
                    }

                    --v46;
                  }

                  while (v46);
                }

                ++v43;
              }

              while (v43 != v42);
              goto LABEL_69;
            }

LABEL_68:
            v44 = 3.40282347e38;
            goto LABEL_69;
          }

          if (!v42)
          {
            goto LABEL_68;
          }

          v49 = 0;
          v44 = 3.40282347e38;
          do
          {
            if (v24[v41])
            {
              v50 = v19[v41];
              v51 = v24[v41];
              do
              {
                v52 = *v50++;
                v53 = v16[v39[v49]][v52];
                if (v53 < v44)
                {
                  v44 = v53;
                }

                --v51;
              }

              while (v51);
            }

            ++v49;
          }

          while (v49 != v42);
LABEL_69:
          if (v44 < v38)
          {
            v36 = v41;
            linkage = v40;
            v38 = v44;
          }
        }

        if (++v41 == v205)
        {
          goto LABEL_72;
        }

        continue;
      }
    }

    linkage = 0;
    v36 = 0;
    v72 = 0;
    v38 = 3.40282347e38;
    while (1)
    {
      v73 = v19[v72];
      if (!v73)
      {
        __assert_rtn("[PLHierarchicalClustering performWithDataset:progressBlock:]", "PLHierarchicalClustering.m", 317, "clustersIndices[i] != NULL");
      }

      v74 = v72++;
      if (v72 < v205)
      {
        break;
      }

LABEL_117:
      if (v72 == v205)
      {
        goto LABEL_165;
      }
    }

    v75 = v72;
    while (2)
    {
      if (v19[v75])
      {
        v76 = v24[v74];
        if (usesSortedDataRelativeDistanceCache)
        {
          if (v76)
          {
            v77 = 0;
            v78 = 0.0;
            do
            {
              if (v24[v75])
              {
                v79 = v19[v75];
                v80 = v24[v75];
                do
                {
                  v81 = *v79++;
                  v82 = v15[v73[v77]] - v15[v81];
                  if (v82 < 0.0)
                  {
                    v82 = -v82;
                  }

                  v78 = v78 + v82;
                  --v80;
                }

                while (v80);
              }

              ++v77;
            }

            while (v77 != v76);
            goto LABEL_114;
          }

LABEL_113:
          v78 = 0.0;
          goto LABEL_114;
        }

        if (!v76)
        {
          goto LABEL_113;
        }

        v83 = 0;
        v78 = 0.0;
        do
        {
          if (v24[v75])
          {
            v84 = v19[v75];
            v85 = v24[v75];
            do
            {
              v86 = *v84++;
              v78 = v78 + v16[v73[v83]][v86];
              --v85;
            }

            while (v85);
          }

          ++v83;
        }

        while (v83 != v76);
LABEL_114:
        v87 = v78 / (v24[v75] * v76);
        if (v87 < v38)
        {
          v36 = v75;
          linkage = v74;
          v38 = v87;
        }
      }

      if (++v75 == v205)
      {
        goto LABEL_117;
      }

      continue;
    }
  }

  v38 = 3.40282347e38;
  v36 = 0;
  v94 = 0;
  while (2)
  {
    v95 = v19[v94];
    if (!v95)
    {
      __assert_rtn("[PLHierarchicalClustering performWithDataset:progressBlock:]", "PLHierarchicalClustering.m", 255, "clustersIndices[i] != NULL");
    }

    v96 = v94++;
    if (v94 < v205)
    {
      v97 = v94;
      while (!v19[v97])
      {
LABEL_163:
        if (++v97 == v205)
        {
          goto LABEL_164;
        }
      }

      v98 = v24[v96];
      if (usesSortedDataRelativeDistanceCache)
      {
        if (v98)
        {
          v99 = 0;
          v100 = 0.0;
          do
          {
            if (v24[v97])
            {
              v101 = v19[v97];
              v102 = v24[v97];
              do
              {
                v103 = *v101++;
                v104 = v15[v95[v99]] - v15[v103];
                if (v104 < 0.0)
                {
                  v104 = -v104;
                }

                if (v104 > v100)
                {
                  v100 = v104;
                }

                --v102;
              }

              while (v102);
            }

            ++v99;
          }

          while (v99 != v98);
          goto LABEL_161;
        }
      }

      else if (v98)
      {
        v105 = 0;
        v100 = 0.0;
        do
        {
          if (v24[v97])
          {
            v106 = v19[v97];
            v107 = v24[v97];
            do
            {
              v108 = *v106++;
              v109 = v16[v95[v105]][v108];
              if (v109 > v100)
              {
                v100 = v109;
              }

              --v107;
            }

            while (v107);
          }

          ++v105;
        }

        while (v105 != v98);
        goto LABEL_161;
      }

      v100 = 0.0;
LABEL_161:
      if (v100 < v38)
      {
        v36 = v97;
        linkage = v96;
        v38 = v100;
      }

      goto LABEL_163;
    }

LABEL_164:
    if (v94 != v205)
    {
      continue;
    }

    break;
  }

LABEL_165:
  v32 = selfCopy;
  if (v38 <= selfCopy->_threshold)
  {
    v71 = linkage;
    v68 = v36;
    goto LABEL_204;
  }

LABEL_286:
  v164 = v34;
  if (v32->_linkage == 4)
  {
    v165 = objc_msgSend_count(v204);
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:v165];
    if (v165)
    {
      for (ii = 0; ii != v165; ++ii)
      {
        if (!v197[ii])
        {
          v167 = v19[ii];
          if (!v167)
          {
            __assert_rtn("[PLHierarchicalClustering performWithDataset:progressBlock:]", "PLHierarchicalClustering.m", 551, "clustersIndicesIndex != NULL");
          }

          v168 = [MEMORY[0x1E695DF70] arrayWithCapacity:v201[ii]];
          if (v201[ii])
          {
            v169 = 0;
            do
            {
              v170 = [v204 objectAtIndexedSubscript:v167[v169]];
              [v168 addObject:v170];

              ++v169;
            }

            while (v169 < v201[ii]);
          }

          v171 = [PLDataCluster clusterWithObjects:v168];
          [v17 addObject:v171];

          v19 = v202;
        }
      }

      v24 = v201;
      goto LABEL_304;
    }

    v24 = v201;
  }

  else
  {
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:v205];
    if (v205)
    {
      for (jj = 0; jj != v205; ++jj)
      {
        v173 = v19[jj];
        if (!v173)
        {
          __assert_rtn("[PLHierarchicalClustering performWithDataset:progressBlock:]", "PLHierarchicalClustering.m", 568, "clustersIndicesIndex != NULL");
        }

        v174 = [MEMORY[0x1E695DF70] arrayWithCapacity:v24[jj]];
        if (v24[jj])
        {
          v175 = 0;
          do
          {
            v176 = [v204 objectAtIndexedSubscript:v173[v175]];
            [v174 addObject:v176];

            ++v175;
          }

          while (v175 < v201[jj]);
        }

        v177 = [PLDataCluster clusterWithObjects:v174];
        [v17 addObject:v177];

        v24 = v201;
        v19 = v202;
      }

LABEL_304:
      v164 = v197;
    }
  }

  if (selfCopy->_linkage == 3)
  {
    for (kk = 0; kk < objc_msgSend_count(v17); ++kk)
    {
      v179 = [v17 objectAtIndexedSubscript:kk];
      v180 = [v204 objectAtIndexedSubscript:v194[kk]];
      [v179 setClustroid:v180];
    }
  }

  [v193 setCompletedUnitCount:{objc_msgSend(v193, "totalUnitCount")}];
  if (blockCopy)
  {
    [v193 fractionCompleted];
    (*(blockCopy + 2))(blockCopy, v209 + 3);
  }

  if (selfCopy->_linkage == 4)
  {
    v181 = objc_msgSend_count(v204);
    if (v181)
    {
      v182 = v19;
      do
      {
        if (*v182)
        {
          free(*v182);
        }

        ++v182;
        --v181;
      }

      while (v181);
      goto LABEL_326;
    }

LABEL_325:
    if (v19)
    {
      goto LABEL_326;
    }
  }

  else
  {
    if (!v205)
    {
      goto LABEL_325;
    }

    v183 = v19;
    do
    {
      if (*v183)
      {
        free(*v183);
      }

      ++v183;
      --v205;
    }

    while (v205);
LABEL_326:
    free(v19);
  }

  if (v24)
  {
    free(v24);
  }

  if (v194)
  {
    free(v194);
  }

  if (v164)
  {
    free(v164);
  }

  if (!usesSortedDataRelativeDistanceCache)
  {
    [(PLDataClustering *)selfCopy freeDistancesMatrix:v16 forDataset:v204];
  }

LABEL_335:
  if (v15)
  {
    free(v15);
  }

LABEL_338:
  if (v187)
  {
  }

  _Block_object_dispose(&v208, 8);

  return v17;
}

uint64_t __61__PLHierarchicalClustering_performWithDataset_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  result = (*(*(a1 + 32) + 16))(*(a1 + 48) * a3);
  *(*(*(a1 + 40) + 8) + 24) = *a2;
  return result;
}

- (double)_createRelativeDistanceCacheForDataset:(id)dataset
{
  datasetCopy = dataset;
  v5 = objc_msgSend_count(datasetCopy);
  v6 = malloc_type_calloc(v5, 8uLL, 0x100004000313F17uLL);
  *v6 = 0.0;
  if (v5 >= 2)
  {
    for (i = 1; i != v5; ++i)
    {
      distanceBlock = [(PLDataClustering *)self distanceBlock];
      v9 = [datasetCopy objectAtIndexedSubscript:0];
      v10 = [datasetCopy objectAtIndexedSubscript:i];
      v6[i] = (distanceBlock)[2](distanceBlock, v9, v10);
    }
  }

  return v6;
}

- (unint64_t)_clustroidIndexForClusters:(unint64_t *)clusters numberOfObjects:(unint64_t)objects distances:(double *)distances relativeDistanceCache:(double *)cache
{
  if (!clusters)
  {
    return 0x7FFFFFFFLL;
  }

  v6 = 0;
  if (objects)
  {
    v7 = 0;
    v8 = 0.0;
    v9 = 3.40282347e38;
    do
    {
      v10 = clusters[v7];
      if (self->_usesSortedDataRelativeDistanceCache)
      {
        v11 = 0.0;
        clustersCopy = clusters;
        objectsCopy = objects;
        do
        {
          v14 = *clustersCopy++;
          v15 = cache[v10] - cache[v14];
          if (v15 < 0.0)
          {
            v15 = -v15;
          }

          if (v15 > v8)
          {
            v8 = v15;
          }

          v11 = v11 + v15;
          --objectsCopy;
        }

        while (objectsCopy);
      }

      else
      {
        v11 = 0.0;
        clustersCopy2 = clusters;
        objectsCopy2 = objects;
        do
        {
          v18 = *clustersCopy2++;
          v19 = distances[v10][v18];
          if (v19 > v8)
          {
            v8 = v19;
          }

          v11 = v11 + v19;
          --objectsCopy2;
        }

        while (objectsCopy2);
      }

      v20 = v11 / objects;
      if (v20 < v9)
      {
        v9 = v20;
        v6 = clusters[v7];
      }

      ++v7;
    }

    while (v7 != objects);
  }

  else
  {
    v8 = 0.0;
  }

  if (v8 <= self->_threshold)
  {
    return v6;
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

- (PLHierarchicalClustering)init
{
  v3.receiver = self;
  v3.super_class = PLHierarchicalClustering;
  result = [(PLHierarchicalClustering *)&v3 init];
  if (result)
  {
    result->_threshold = 0.5;
    result->_k = 2;
    result->_linkage = 0;
    result->_usesSortedDataRelativeDistanceCache = 0;
    result->_reportsProgressInDistancesMatrixCalculation = 0;
  }

  return result;
}

@end