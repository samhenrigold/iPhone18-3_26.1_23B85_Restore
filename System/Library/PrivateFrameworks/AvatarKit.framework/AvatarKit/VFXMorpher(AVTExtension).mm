@interface VFXMorpher(AVTExtension)
- (void)avt_buildInternalSupportForCorrectivesWithBlock:()AVTExtension;
@end

@implementation VFXMorpher(AVTExtension)

- (void)avt_buildInternalSupportForCorrectivesWithBlock:()AVTExtension
{
  v164 = *MEMORY[0x1E69E9840];
  v4 = a3;
  correctiveDriverCounts = [self correctiveDriverCounts];

  if (!correctiveDriverCounts)
  {
    targets = [self targets];
    targetsAndInBetween = [self targetsAndInBetween];
    inBetweenCounts = [self inBetweenCounts];
    selfCopy = self;
    inBetweenWeights = [self inBetweenWeights];
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v144 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v149 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = [targets count];
    v146 = targets;
    v138 = inBetweenWeights;
    v139 = targetsAndInBetween;
    v148 = inBetweenCounts;
    v157 = v10;
    if (v11)
    {
      v12 = v11;
      v150 = 0;
      v151 = 0;
      v141 = 0;
      v142 = 0;
      v155 = 0;
      v140 = 0;
      v145 = 0;
      v13 = 0;
      v137 = 0;
      v14 = 0;
      v15 = 0;
      v147 = v11;
      while (1)
      {
        v154 = v14;
        v16 = [targets objectAtIndexedSubscript:?];
        name = [v16 name];
        v18 = [name containsString:?];

        if (!v18)
        {
          v152 = v15;
          v23 = [inBetweenCounts objectAtIndexedSubscript:?];
          unsignedIntegerValue = [v23 unsignedIntegerValue];

          if (unsignedIntegerValue < 2)
          {
            v14 = v154;
            v33 = v157;
            if (v150)
            {
              [v150 addObject:?];
            }

            else
            {
              v150 = 0;
            }
          }

          else
          {
            v14 = v154;
            if (!v150)
            {
              v150 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v25 = objc_alloc_init(MEMORY[0x1E695DF70]);

              if ([v157 count])
              {
                v26 = 0;
                do
                {
                  [v150 addObject:?];
                  ++v26;
                }

                while (v26 < [v157 count]);
              }

              v142 = v25;
              v14 = v154;
            }

            v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
            [v150 addObject:?];

            v28 = unsignedIntegerValue - 1;
            v29 = v151;
            do
            {
              v30 = v14;
              ++v29;
              v31 = [v139 objectAtIndexedSubscript:?];
              [v149 addObject:?];

              v14 = v30 + 1;
              v32 = [v138 objectAtIndexedSubscript:?];
              [v142 addObject:?];

              --v28;
            }

            while (v28);
            v151 = v29;
            targets = v146;
            v12 = v147;
            inBetweenCounts = v148;
            v33 = v157;
          }

          [v149 addObject:?];
          ++v151;
          [selfCopy weightForTargetAtIndex:?];
          v61 = [MEMORY[0x1E696AD98] numberWithFloat:?];
          [v144 addObject:?];

          v15 = v152;
          [v33 addObject:?];
          goto LABEL_60;
        }

        name2 = [v16 name];
        v20 = [name2 componentsSeparatedByString:?];

        v21 = [v20 count];
        if (v21 == 1)
        {
          v22 = avt_default_log(1);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v161 = v20;
            _os_log_error_impl(&dword_1BB472000, v22, OS_LOG_TYPE_ERROR, "Error: Failed to create corrective with only one target: %@", buf, 0xCu);
          }
        }

        else
        {
          v34 = v21;
          v153 = v15;
          v156 = v13;
          v35 = v20;
          v36 = [v35 countByEnumeratingWithState:? objects:? count:?];
          v143 = v20;
          if (!v36)
          {

LABEL_37:
            v48 = v141;
            if (!v155)
            {
              v155 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            v49 = [v148 objectAtIndexedSubscript:?];
            unsignedIntegerValue2 = [v49 unsignedIntegerValue];

            v51 = v154;
            if (unsignedIntegerValue2 < 2)
            {
              if (v145)
              {
                [v145 addObject:?];
              }

              else
              {
                v145 = 0;
              }

              v60 = v148;
              v56 = v151;
            }

            else
            {
              if (!v145)
              {
                v145 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v52 = objc_alloc_init(MEMORY[0x1E695DF70]);

                if ([v140 count])
                {
                  v53 = 0;
                  do
                  {
                    [v145 addObject:?];
                    ++v53;
                  }

                  while (v53 < [v140 count]);
                }

                v156 = v52;
                v51 = v154;
              }

              v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
              [v145 addObject:?];

              v55 = unsignedIntegerValue2 - 1;
              v56 = v151;
              do
              {
                v57 = v51;
                ++v56;
                v58 = [v139 objectAtIndexedSubscript:?];
                [v155 addObject:?];

                v51 = v57 + 1;
                v59 = [v138 objectAtIndexedSubscript:?];
                [v156 addObject:?];

                --v55;
              }

              while (v55);
              v154 = v51;
              v60 = v148;
              v48 = v141;
            }

            [v155 addObject:?];
            v62 = v140;
            if (!v140)
            {
              v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v63 = objc_alloc_init(MEMORY[0x1E695DF70]);

              v48 = v63;
            }

            v151 = v56 + 1;
            v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
            v140 = v62;
            [v62 addObject:?];

            v141 = v48;
            [v48 addObjectsFromArray:?];
            v13 = v156;
            v15 = v153;
            targets = v146;
            inBetweenCounts = v60;
            v20 = v143;
            goto LABEL_59;
          }

          v37 = v36;
          v38 = MEMORY[0];
          v39 = 1;
          v40 = selfCopy;
          do
          {
            for (i = 0; i != v37; i = (i + 1))
            {
              if (MEMORY[0] != v38)
              {
                objc_enumerationMutation(v35);
              }

              v42 = *(8 * i);
              if ([v40 _weightIndexForTargetNamed:?] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v43 = avt_default_log(0x7FFFFFFFFFFFFFFFLL);
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  name3 = [v16 name];
                  *buf = 138412546;
                  v161 = v42;
                  v162 = 2112;
                  v163 = name3;
                  _os_log_error_impl(&dword_1BB472000, v43, OS_LOG_TYPE_ERROR, "Error: Failed to find index of driving target %@ for corrective %@", buf, 0x16u);
                }

                if (v4)
                {
                  name4 = [v16 name];
                  v4[2](v4, name4, v42, v34);
                }

                v39 = 0;
                v40 = selfCopy;
              }
            }

            v37 = [v35 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v37);

          targets = v146;
          v20 = v143;
          if (v39)
          {
            goto LABEL_37;
          }

          inBetweenCounts = v148;
          if (v148)
          {
            v46 = [v148 objectAtIndexedSubscript:?];
            unsignedIntegerValue3 = [v46 unsignedIntegerValue];
          }

          else
          {
            unsignedIntegerValue3 = 1;
          }

          v15 = v153;
          v137 += unsignedIntegerValue3;
          v13 = v156;
        }

LABEL_59:

        v14 = v154;
        v12 = v147;
LABEL_60:

        if (++v15 == v12)
        {
          goto LABEL_63;
        }
      }
    }

    v137 = 0;
    v13 = 0;
    v145 = 0;
    v140 = 0;
    v141 = 0;
    v155 = 0;
    v142 = 0;
    v150 = 0;
LABEL_63:
    v65 = objc_alloc(MEMORY[0x1E695DF70]);
    [v141 count];
    v66 = [v65 initWithCapacity:?];
    obj = v141;
    v67 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v67)
    {
      v68 = v67;
      v69 = MEMORY[0];
      do
      {
        for (j = 0; j != v68; j = (j + 1))
        {
          v71 = v66;
          if (MEMORY[0] != v69)
          {
            objc_enumerationMutation(obj);
          }

          v72 = *(8 * j);
          if ([v157 indexOfObjectPassingTest:?] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v73 = avt_default_log(0x7FFFFFFFFFFFFFFFLL);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v161 = v72;
              _os_log_error_impl(&dword_1BB472000, v73, OS_LOG_TYPE_ERROR, "Error: Failed to find index for driving target %@", buf, 0xCu);
            }

            v66 = v71;
          }

          else
          {
            v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
            v66 = v71;
            [v71 addObject:?];
          }
        }

        v68 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v68);
    }

    v74 = [v149 count];
    v75 = [v150 count];
    if (v74 < v75)
    {
      v76 = avt_default_log(v75);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        [(VFXMorpher(AVTExtension) *)v76 avt_buildInternalSupportForCorrectivesWithBlock:v77, v78, v79, v80, v81, v82, v83];
      }
    }

    v84 = [v155 count];
    v85 = [v145 count];
    if (v84 < v85)
    {
      v86 = avt_default_log(v85);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        [(VFXMorpher(AVTExtension) *)v86 avt_buildInternalSupportForCorrectivesWithBlock:v87, v88, v89, v90, v91, v92, v93];
      }
    }

    v94 = [v149 count];
    v95 = v94 + [v155 count];
    v96 = [v139 count];
    if (v95 != v96 - v137)
    {
      v97 = avt_default_log(v96);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        [(SCNMorpher(AVTExtension) *)v97 avt_buildInternalSupportForCorrectivesWithBlock:v98, v99, v100, v101, v102, v103, v104];
      }
    }

    if ([v145 count])
    {
      v105 = [v150 count];
      v106 = v105 + [v145 count];
      v107 = [v148 count];
      if (v106 != v107)
      {
        v108 = avt_default_log(v107);
        if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
        {
          [(SCNMorpher(AVTExtension) *)v108 avt_buildInternalSupportForCorrectivesWithBlock:v109, v110, v111, v112, v113, v114, v115];
        }
      }

      v116 = [v142 count];
      v117 = v116 + [v13 count];
      v118 = [v138 count];
      if (v117 != v118)
      {
        v119 = avt_default_log(v118);
        if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          [(SCNMorpher(AVTExtension) *)v119 avt_buildInternalSupportForCorrectivesWithBlock:v120, v121, v122, v123, v124, v125, v126];
        }
      }

      v127 = [v145 count];
      v128 = [v140 count];
      if (v127 != v128)
      {
        v129 = avt_default_log(v128);
        if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
        {
          [(SCNMorpher(AVTExtension) *)v129 avt_buildInternalSupportForCorrectivesWithBlock:v130, v131, v132, v133, v134, v135, v136];
        }
      }
    }

    if (v140)
    {
      [selfCopy setTargetsAndInBetweens:v145 inBetweenCounts:v13 inBetweenWeights:? correctives:? driverCounts:? driverIndices:? inBetweenCounts:? inBetweenWeights:?];
    }
  }
}

- (void)avt_buildInternalSupportForCorrectivesWithBlock:()AVTExtension .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "newTargetsAndInBetweens.count >= newInBetweenCounts.count";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Failed to correctly separate correctives", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)avt_buildInternalSupportForCorrectivesWithBlock:()AVTExtension .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "newCorrectivesAndInBetweens.count >= newCorrectiveInBetweenCounts.count";
  OUTLINED_FUNCTION_0(&dword_1BB472000, a1, a3, "Error: Condition '%s' failed. Failed to correctly separate correctives", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end