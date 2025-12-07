@interface CRHungarianTrackingAssociator
+ (id)performAssociationOnCandidates:(id)candidates useRegionsAtOCRDispatchTime:(BOOL)time existingRegions:(id)regions fineGrainedResults:(id)results newRegionHandler:(id)handler matchedRegionHandler:(id)regionHandler;
@end

@implementation CRHungarianTrackingAssociator

+ (id)performAssociationOnCandidates:(id)candidates useRegionsAtOCRDispatchTime:(BOOL)time existingRegions:(id)regions fineGrainedResults:(id)results newRegionHandler:(id)handler matchedRegionHandler:(id)regionHandler
{
  timeCopy = time;
  v214[16] = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  regionsCopy = regions;
  resultsCopy = results;
  handlerCopy = handler;
  regionHandlerCopy = regionHandler;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  v204 = 0;
  v205 = &v204;
  v206 = 0x2050000000;
  v12 = _MergedGlobals_26;
  v207 = _MergedGlobals_26;
  if (!_MergedGlobals_26)
  {
    v203[0] = MEMORY[0x1E69E9820];
    v203[1] = 3221225472;
    v203[2] = __getFTBipartiteMatcherClass_block_invoke;
    v203[3] = &unk_1E7BC2EF0;
    v203[4] = &v204;
    __getFTBipartiteMatcherClass_block_invoke(v203);
    v12 = v205[3];
  }

  v13 = v12;
  _Block_object_dispose(&v204, 8);
  v155 = objc_alloc_init(v12);
  [regionsCopy count];
  v14 = [candidatesCopy count];
  v153 = &v153;
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v153 - v16;
  if ([candidatesCopy count])
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = [candidatesCopy objectAtIndexedSubscript:v19];
      if ([regionsCopy count])
      {
        v21 = 0;
        do
        {
          v22 = [regionsCopy objectAtIndexedSubscript:v21];
          v23 = v22;
          if (timeCopy)
          {
            [v22 boundingQuadAtOCRDispatch];
          }

          else
          {
            [v22 boundingQuad];
          }
          v24 = ;
          boundingQuad = [v20 boundingQuad];
          [v24 boundingBoxClippedIOUWithQuad:boundingQuad];
          v27 = v26;

          v28 = [regionsCopy count];
          v29 = 1.0 - v27;
          *&v17[4 * v21 + v18 * v28] = v29;

          ++v21;
        }

        while (v21 < [regionsCopy count]);
      }

      ++v19;
      v18 += 4;
    }

    while (v19 < [candidatesCopy count]);
  }

  if ([candidatesCopy count])
  {
    v30 = [candidatesCopy count];
    v31 = [regionsCopy count];
    v163 = [v155 computeMatchingForCostMatrix:v17 withRowCount:v30 columnCount:v31];
  }

  else
  {
    v163 = 0;
  }

  v165 = objc_opt_new();
  v166 = objc_opt_new();
  v32 = 0.0;
  if (v163 && [v163 count])
  {
    v33 = 0;
    v164 = regionHandlerCopy + 16;
    do
    {
      v34 = [candidatesCopy objectAtIndexedSubscript:v33];
      v35 = [v163 objectAtIndexedSubscript:v33];
      v36 = [v35 isEqual:&unk_1F2BF85F0];

      if (v36)
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
        [v34 setTrackingID:uUID];

        LOBYTE(v203[0]) = 1;
        handlerCopy[2](handlerCopy, v34, v203);
        if (LOBYTE(v203[0]) == 1)
        {
          trackingID = [v34 trackingID];
          [array4 addObject:trackingID];

          [array addObject:v34];
          [v165 addObject:v34];
          boundingQuad2 = [v34 boundingQuad];
          denormalizedQuad = [boundingQuad2 denormalizedQuad];
          [denormalizedQuad area];
          v42 = v41;

          v32 = v32 + v42;
        }
      }

      else
      {
        v43 = [regionsCopy count];
        v44 = [v163 objectAtIndexedSubscript:v33];
        v45 = *&v17[4 * v43 * v33 + 4 * [v44 intValue]] < 0.55;

        v46 = [v163 objectAtIndexedSubscript:v33];
        intValue = [v46 intValue];
        v173 = [regionsCopy objectAtIndexedSubscript:intValue];

        if (v45)
        {
          trackingID2 = [v173 trackingID];
          [v34 setTrackingID:trackingID2];

          LOBYTE(v203[0]) = 1;
          (*(regionHandlerCopy + 2))(regionHandlerCopy, v173, v34, v203);
          if ((v203[0] & 1) == 0)
          {
            originalBoundingQuad = [v34 originalBoundingQuad];
            [v173 setOriginalBoundingQuad:originalBoundingQuad];

            boundingQuad3 = [v34 boundingQuad];
            [v173 setBoundingQuad:boundingQuad3];

            [v34 boundingQuadHomography];
            v52 = v51;
            HIDWORD(v52) = HIDWORD(v167);
            HIDWORD(v53) = HIDWORD(v168);
            HIDWORD(v54) = HIDWORD(v172);
            v167 = v52;
            v168 = v53;
            v172 = v54;
            [v173 setBoundingQuadHomography:*&v51];
          }

          trackingID3 = [v173 trackingID];
          [array2 addObject:trackingID3];

          [array addObject:v173];
          v56 = [regionsCopy count];
          v57 = [v163 objectAtIndexedSubscript:v33];
          v58 = *&v17[4 * v56 * v33 + 4 * [v57 intValue]];
          boundingQuad4 = [v173 boundingQuad];
          denormalizedQuad2 = [boundingQuad4 denormalizedQuad];
          [denormalizedQuad2 area];
          v62 = v61;
          boundingQuad5 = [v34 boundingQuad];
          denormalizedQuad3 = [boundingQuad5 denormalizedQuad];
          [denormalizedQuad3 area];
          v66 = v65;
        }

        else
        {
          uUID2 = [MEMORY[0x1E696AFB0] UUID];
          [v34 setTrackingID:uUID2];

          LOBYTE(v203[0]) = 1;
          handlerCopy[2](handlerCopy, v34, v203);
          if (LOBYTE(v203[0]) == 1)
          {
            [v165 addObject:v34];
            trackingID4 = [v34 trackingID];
            [array4 addObject:trackingID4];

            [array addObject:v34];
          }

          [v166 addObject:v173];
          trackingID5 = [v173 trackingID];
          [array3 addObject:trackingID5];

          v70 = [regionsCopy count];
          v71 = [v163 objectAtIndexedSubscript:v33];
          v58 = *&v17[4 * v70 * v33 + 4 * [v71 intValue]];
          boundingQuad6 = [v173 boundingQuad];
          denormalizedQuad4 = [boundingQuad6 denormalizedQuad];
          [denormalizedQuad4 area];
          v62 = v74;
          boundingQuad7 = [v34 boundingQuad];
          denormalizedQuad5 = [boundingQuad7 denormalizedQuad];
          [denormalizedQuad5 area];
          v66 = v77;
        }

        v32 = v32 + (v62 + v66) * v58 * 0.5;
      }

      ++v33;
    }

    while (v33 < [v163 count]);
  }

  if ([regionsCopy count])
  {
    v78 = 0;
    do
    {
      v79 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v78];
      v80 = [v163 containsObject:v79];

      if ((v80 & 1) == 0)
      {
        v81 = [regionsCopy objectAtIndexedSubscript:v78];
        trackingID6 = [v81 trackingID];
        [array3 addObject:trackingID6];

        v83 = [regionsCopy objectAtIndexedSubscript:v78];
        boundingQuad8 = [v83 boundingQuad];
        denormalizedQuad6 = [boundingQuad8 denormalizedQuad];
        [denormalizedQuad6 area];
        v87 = v86;

        v32 = v32 + v87;
      }

      ++v78;
    }

    while (v78 < [regionsCopy count]);
  }

  v160 = objc_opt_new();
  v159 = objc_opt_new();
  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  v200 = 0u;
  *&v167 = v166;
  v166 = [v167 countByEnumeratingWithState:&v199 objects:v214 count:16];
  if (v166)
  {
    v164 = *v200;
    do
    {
      *&v168 = 0;
      do
      {
        if (*v200 != v164)
        {
          objc_enumerationMutation(v167);
        }

        v173 = *(*(&v199 + 1) + 8 * v168);
        *&v172 = objc_opt_new();
        v197 = 0u;
        v198 = 0u;
        v195 = 0u;
        v196 = 0u;
        v88 = v165;
        v89 = 0;
        v90 = [v88 countByEnumeratingWithState:&v195 objects:v213 count:16];
        if (v90)
        {
          v91 = *v196;
          do
          {
            for (i = 0; i != v90; ++i)
            {
              if (*v196 != v91)
              {
                objc_enumerationMutation(v88);
              }

              v93 = *(*(&v195 + 1) + 8 * i);
              if (timeCopy)
              {
                [v173 boundingQuadAtOCRDispatch];
              }

              else
              {
                [v173 boundingQuad];
              }
              v94 = ;
              boundingQuad9 = [v93 boundingQuad];
              v96 = [v94 overlapsNormalizedQuad:boundingQuad9];

              if (v96)
              {
                [v172 addObject:v93];
                boundingQuad10 = [v93 boundingQuad];
                v98 = boundingQuad10;
                if (v89)
                {
                  [v89 baselineAngle];
                  *&v99 = v99;
                  v100 = [v89 unionWithNormalizedQuad:v98 baselineAngle:v99];

                  v89 = v100;
                }

                else
                {
                  v89 = boundingQuad10;
                }
              }
            }

            v90 = [v88 countByEnumeratingWithState:&v195 objects:v213 count:16];
          }

          while (v90);
        }

        if ([v172 count] >= 2)
        {
          boundingQuad11 = [v173 boundingQuad];
          [boundingQuad11 boundingBoxClippedIOUWithQuad:v89];
          v103 = v102;

          if (1.0 - v103 <= 0.550000012)
          {
            boundingQuad12 = [v173 boundingQuad];
            denormalizedQuad7 = [boundingQuad12 denormalizedQuad];
            [denormalizedQuad7 area];
            v107 = v106;

            v193 = 0u;
            v194 = 0u;
            v191 = 0u;
            v192 = 0u;
            v108 = v172;
            v109 = [v108 countByEnumeratingWithState:&v191 objects:v212 count:16];
            v32 = v32 - v107;
            if (v109)
            {
              v110 = *v192;
              do
              {
                for (j = 0; j != v109; ++j)
                {
                  if (*v192 != v110)
                  {
                    objc_enumerationMutation(v108);
                  }

                  boundingQuad13 = [*(*(&v191 + 1) + 8 * j) boundingQuad];
                  denormalizedQuad8 = [boundingQuad13 denormalizedQuad];
                  [denormalizedQuad8 area];
                  v115 = v114;

                  v32 = v32 - v115;
                }

                v109 = [v108 countByEnumeratingWithState:&v191 objects:v212 count:16];
              }

              while (v109);
            }

            [v160 addObject:v173];
            [array addObject:v173];
            [v159 addObjectsFromArray:v108];
            trackingID7 = [v173 trackingID];
            [array3 removeObject:trackingID7];

            v189 = 0u;
            v190 = 0u;
            v187 = 0u;
            v188 = 0u;
            v117 = v108;
            v118 = [v117 countByEnumeratingWithState:&v187 objects:v211 count:16];
            if (v118)
            {
              v119 = *v188;
              do
              {
                for (k = 0; k != v118; ++k)
                {
                  if (*v188 != v119)
                  {
                    objc_enumerationMutation(v117);
                  }

                  v121 = *(*(&v187 + 1) + 8 * k);
                  [array removeObject:v121];
                  trackingID8 = [v121 trackingID];
                  [array4 removeObject:trackingID8];
                }

                v118 = [v117 countByEnumeratingWithState:&v187 objects:v211 count:16];
              }

              while (v118);
            }
          }
        }

        *&v168 = v168 + 1;
      }

      while (v168 != v166);
      v166 = [v167 countByEnumeratingWithState:&v199 objects:v214 count:16];
    }

    while (v166);
  }

  [v167 removeObjectsInArray:v160];
  [v165 removeObjectsInArray:v159];
  [v160 removeAllObjects];
  [v159 removeAllObjects];
  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v164 = v165;
  v166 = [v164 countByEnumeratingWithState:&v183 objects:v210 count:16];
  if (v166)
  {
    v165 = *v184;
    do
    {
      *&v168 = 0;
      do
      {
        if (*v184 != v165)
        {
          objc_enumerationMutation(v164);
        }

        v173 = *(*(&v183 + 1) + 8 * v168);
        *&v172 = objc_opt_new();
        v181 = 0u;
        v182 = 0u;
        v179 = 0u;
        v180 = 0u;
        v123 = v167;
        boundingQuad15 = 0;
        v125 = [v123 countByEnumeratingWithState:&v179 objects:v209 count:16];
        if (v125)
        {
          v126 = *v180;
          do
          {
            for (m = 0; m != v125; ++m)
            {
              if (*v180 != v126)
              {
                objc_enumerationMutation(v123);
              }

              v128 = *(*(&v179 + 1) + 8 * m);
              if (timeCopy)
              {
                [*(*(&v179 + 1) + 8 * m) boundingQuadAtOCRDispatch];
              }

              else
              {
                [*(*(&v179 + 1) + 8 * m) boundingQuad];
              }
              v129 = ;
              boundingQuad14 = [v173 boundingQuad];
              v131 = [v129 overlapsNormalizedQuad:boundingQuad14];

              if (v131)
              {
                [v172 addObject:v128];
                if (boundingQuad15)
                {
                  [boundingQuad15 baselineAngle];
                  *&v132 = v132;
                  v133 = [boundingQuad15 unionWithNormalizedQuad:v129 baselineAngle:v132];

                  boundingQuad15 = v133;
                }

                else
                {
                  boundingQuad15 = [v128 boundingQuad];
                }
              }
            }

            v125 = [v123 countByEnumeratingWithState:&v179 objects:v209 count:16];
          }

          while (v125);
        }

        if ([v172 count] >= 2)
        {
          boundingQuad16 = [v173 boundingQuad];
          [boundingQuad16 boundingBoxClippedIOUWithQuad:boundingQuad15];
          v136 = v135;

          if (1.0 - v136 <= 0.550000012)
          {
            boundingQuad17 = [v173 boundingQuad];
            denormalizedQuad9 = [boundingQuad17 denormalizedQuad];
            [denormalizedQuad9 area];
            v140 = v139;

            v177 = 0u;
            v178 = 0u;
            v175 = 0u;
            v176 = 0u;
            v141 = v172;
            v142 = [v141 countByEnumeratingWithState:&v175 objects:v208 count:16];
            v32 = v32 - v140;
            if (v142)
            {
              v143 = *v176;
              do
              {
                for (n = 0; n != v142; ++n)
                {
                  if (*v176 != v143)
                  {
                    objc_enumerationMutation(v141);
                  }

                  boundingQuad18 = [*(*(&v175 + 1) + 8 * n) boundingQuad];
                  denormalizedQuad10 = [boundingQuad18 denormalizedQuad];
                  [denormalizedQuad10 area];
                  v148 = v147;

                  v32 = v32 - v148;
                }

                v142 = [v141 countByEnumeratingWithState:&v175 objects:v208 count:16];
              }

              while (v142);
            }

            [array addObjectsFromArray:v141];
            [array3 removeObjectsInArray:v141];
            [array removeObject:v173];
            trackingID9 = [v173 trackingID];
            [array4 removeObject:trackingID9];
          }
        }

        *&v168 = v168 + 1;
      }

      while (v168 != v166);
      v166 = [v164 countByEnumeratingWithState:&v183 objects:v210 count:16];
    }

    while (v166);
  }

  v150 = [CRTrackingAssociatorResults alloc];
  v151 = [(CRTrackingAssociatorResults *)v150 initWithTotalError:array tracked:array2 updatedRegionIDs:array3 removedRegionIDs:array4 addedRegionIDs:v32];

  return v151;
}

@end