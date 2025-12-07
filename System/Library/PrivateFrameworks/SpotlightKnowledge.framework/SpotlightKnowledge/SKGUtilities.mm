@interface SKGUtilities
+ (SKGUtilities)sharedSKGUtilities;
- (SKGUtilities)init;
- (id)getSKGDictionary:(id)dictionary filterBundle:(id)bundle protectionClasses:(id)classes processorFlags:(unint64_t)flags;
@end

@implementation SKGUtilities

+ (SKGUtilities)sharedSKGUtilities
{
  if (sharedSKGUtilities_onceToken != -1)
  {
    +[SKGUtilities sharedSKGUtilities];
  }

  v3 = sharedSKGUtilities_sSharedSKGUtilities;

  return v3;
}

uint64_t __34__SKGUtilities_sharedSKGUtilities__block_invoke()
{
  sharedSKGUtilities_sSharedSKGUtilities = objc_alloc_init(SKGUtilities);

  return MEMORY[0x1EEE66BB8]();
}

- (SKGUtilities)init
{
  v3.receiver = self;
  v3.super_class = SKGUtilities;
  return [(SKGUtilities *)&v3 init];
}

- (id)getSKGDictionary:(id)dictionary filterBundle:(id)bundle protectionClasses:(id)classes processorFlags:(unint64_t)flags
{
  v210 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  classesCopy = classes;
  v11 = objc_opt_new();
  v203 = 0;
  v204 = &v203;
  v205 = 0x3032000000;
  v206 = __Block_byref_object_copy_;
  v207 = __Block_byref_object_dispose_;
  v208 = 0;
  v197 = 0;
  v198 = &v197;
  v199 = 0x3032000000;
  v200 = __Block_byref_object_copy_;
  v201 = __Block_byref_object_dispose_;
  v202 = 0;
  v191 = 0;
  v192 = &v191;
  v193 = 0x3032000000;
  v194 = __Block_byref_object_copy_;
  v195 = __Block_byref_object_dispose_;
  v196 = 0;
  v185 = 0;
  v186 = &v185;
  v187 = 0x3032000000;
  v188 = __Block_byref_object_copy_;
  v189 = __Block_byref_object_dispose_;
  v190 = 0;
  v179 = 0;
  v180 = &v179;
  v181 = 0x3032000000;
  v182 = __Block_byref_object_copy_;
  v183 = __Block_byref_object_dispose_;
  v184 = 0;
  v173 = 0;
  v174 = &v173;
  v175 = 0x3032000000;
  v176 = __Block_byref_object_copy_;
  v177 = __Block_byref_object_dispose_;
  v178 = 0;
  v167 = 0;
  v168 = &v167;
  v169 = 0x3032000000;
  v170 = __Block_byref_object_copy_;
  v171 = __Block_byref_object_dispose_;
  v172 = 0;
  v161 = 0;
  v162 = &v161;
  v163 = 0x3032000000;
  v164 = __Block_byref_object_copy_;
  v165 = __Block_byref_object_dispose_;
  v166 = 0;
  v155 = 0;
  v156 = &v155;
  v157 = 0x3032000000;
  v158 = __Block_byref_object_copy_;
  v159 = __Block_byref_object_dispose_;
  v160 = 0;
  v149 = 0;
  v150 = &v149;
  v151 = 0x3032000000;
  v152 = __Block_byref_object_copy_;
  v153 = __Block_byref_object_dispose_;
  v154 = 0;
  v143 = 0;
  v144 = &v143;
  v145 = 0x3032000000;
  v146 = __Block_byref_object_copy_;
  v147 = __Block_byref_object_dispose_;
  v148 = 0;
  v137 = 0;
  v138 = &v137;
  v139 = 0x3032000000;
  v140 = __Block_byref_object_copy_;
  v141 = __Block_byref_object_dispose_;
  v142 = 0;
  v131 = 0;
  v132 = &v131;
  v133 = 0x3032000000;
  v134 = __Block_byref_object_copy_;
  v135 = __Block_byref_object_dispose_;
  v136 = 0;
  v125 = 0;
  v126 = &v125;
  v127 = 0x3032000000;
  v128 = __Block_byref_object_copy_;
  v129 = __Block_byref_object_dispose_;
  v130 = 0;
  v119 = 0;
  v120 = &v119;
  v121 = 0x3032000000;
  v122 = __Block_byref_object_copy_;
  v123 = __Block_byref_object_dispose_;
  v124 = 0;
  v113 = 0;
  v114 = &v113;
  v115 = 0x3032000000;
  v116 = __Block_byref_object_copy_;
  v117 = __Block_byref_object_dispose_;
  v118 = 0;
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy_;
  v111 = __Block_byref_object_dispose_;
  v112 = 0;
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = __Block_byref_object_copy_;
  v105 = __Block_byref_object_dispose_;
  v106 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = __Block_byref_object_copy_;
  v99 = __Block_byref_object_dispose_;
  v100 = 0;
  v12 = objc_opt_new();
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v14 = +[SKGAttributeProcessor sharedProcessor];
  allObjects = [classesCopy allObjects];
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __79__SKGUtilities_getSKGDictionary_filterBundle_protectionClasses_processorFlags___block_invoke;
  v94[3] = &unk_1E74B7E60;
  v94[4] = &v107;
  v94[5] = &v113;
  v94[6] = &v203;
  v94[7] = &v197;
  v94[8] = &v191;
  v94[9] = &v185;
  v94[10] = &v179;
  v94[11] = &v173;
  v94[12] = &v167;
  v94[13] = &v161;
  v94[14] = &v155;
  v94[15] = &v149;
  v94[16] = &v143;
  v94[17] = &v137;
  v94[18] = &v131;
  v94[19] = &v125;
  v94[20] = &v119;
  v94[21] = &v101;
  v94[22] = &v95;
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __79__SKGUtilities_getSKGDictionary_filterBundle_protectionClasses_processorFlags___block_invoke_2;
  v92[3] = &unk_1E74B7E88;
  group = v13;
  v93 = group;
  [v14 getGenerationProgressReportForProtectionClasses:allObjects processorFlags:flags reportHandler:v94 completionHandler:v92];

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  v16 = v108[5];
  if (v16)
  {
    for (i = 0; i < xpc_array_get_count(v16); ++i)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_array_get_string(v108[5], i)}];
      if (!bundleCopy || [bundleCopy isEqualToString:v18])
      {
        [v12 addObject:v18];
      }

      v16 = v108[5];
    }
  }

  [v12 sortUsingSelector:sel_caseInsensitiveCompare_];
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v12;
  v19 = [obj countByEnumeratingWithState:&v88 objects:v209 count:16];
  if (v19)
  {
    v20 = *v89;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v89 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v88 + 1) + 8 * j);
        v23 = objc_alloc_init(SKGBundleStatus);
        if ((flags & 4) != 0)
        {
          v24 = v114[5];
          v25 = v22;
          -[SKGBundleStatus setCount:](v23, "setCount:", xpc_dictionary_get_uint64(v24, [v22 UTF8String]));
          v26 = v204[5];
          v27 = v22;
          -[SKGBundleStatus setProcessedCount:](v23, "setProcessedCount:", xpc_dictionary_get_uint64(v26, [v22 UTF8String]));
          v28 = v198[5];
          v29 = v22;
          -[SKGBundleStatus setNeedProcessCount:](v23, "setNeedProcessCount:", xpc_dictionary_get_uint64(v28, [v22 UTF8String]));
          v30 = v192[5];
          v31 = v22;
          -[SKGBundleStatus setNeedEmbedCount:](v23, "setNeedEmbedCount:", xpc_dictionary_get_uint64(v30, [v22 UTF8String]));
          v32 = v186[5];
          v33 = v22;
          -[SKGBundleStatus setAwaitingRedonationCount:](v23, "setAwaitingRedonationCount:", xpc_dictionary_get_uint64(v32, [v22 UTF8String]));
          v34 = v180[5];
          v35 = v22;
          -[SKGBundleStatus setItemsRedonationRequestCapReachedCount:](v23, "setItemsRedonationRequestCapReachedCount:", xpc_dictionary_get_uint64(v34, [v22 UTF8String]));
          v36 = v174[5];
          v37 = v22;
          -[SKGBundleStatus setPrimaryEmbeddingCount:](v23, "setPrimaryEmbeddingCount:", xpc_dictionary_get_uint64(v36, [v22 UTF8String]));
          v38 = v168[5];
          v39 = v22;
          -[SKGBundleStatus setSecondaryEmbeddingCount:](v23, "setSecondaryEmbeddingCount:", xpc_dictionary_get_uint64(v38, [v22 UTF8String]));
          v40 = v102[5];
          v41 = v22;
          string = xpc_dictionary_get_string(v40, [v22 UTF8String]);
          if (string)
          {
            v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
            v43 = v6;
          }

          else
          {
            v43 = &stru_1F0BD7AF0;
          }

          [(SKGBundleStatus *)v23 setBundleQuery:v43];
          if (string)
          {
          }

          v44 = v96[5];
          v45 = v22;
          v46 = xpc_dictionary_get_string(v44, [v22 UTF8String]);
          if (v46)
          {
            v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v46];
            v47 = v7;
          }

          else
          {
            v47 = &stru_1F0BD7AF0;
          }

          [(SKGBundleStatus *)v23 setBundleFileQuery:v47];
          if (v46)
          {
          }
        }

        if ((flags & 0x20) != 0)
        {
          v48 = v114[5];
          v49 = v22;
          -[SKGBundleStatus setCount:](v23, "setCount:", xpc_dictionary_get_uint64(v48, [v22 UTF8String]));
          v50 = v204[5];
          v51 = v22;
          -[SKGBundleStatus setProcessedCount:](v23, "setProcessedCount:", xpc_dictionary_get_uint64(v50, [v22 UTF8String]));
          v52 = v198[5];
          v53 = v22;
          -[SKGBundleStatus setNeedProcessCount:](v23, "setNeedProcessCount:", xpc_dictionary_get_uint64(v52, [v22 UTF8String]));
          v54 = v162[5];
          v55 = v22;
          -[SKGBundleStatus setNeedSuggestedEventsCount:](v23, "setNeedSuggestedEventsCount:", xpc_dictionary_get_uint64(v54, [v22 UTF8String]));
          v56 = v156[5];
          v57 = v22;
          -[SKGBundleStatus setSuggestedEventsCount:](v23, "setSuggestedEventsCount:", xpc_dictionary_get_uint64(v56, [v22 UTF8String]));
        }

        if ((flags & 0x40) != 0)
        {
          v58 = v114[5];
          v59 = v22;
          -[SKGBundleStatus setCount:](v23, "setCount:", xpc_dictionary_get_uint64(v58, [v22 UTF8String]));
          v60 = v204[5];
          v61 = v22;
          -[SKGBundleStatus setProcessedCount:](v23, "setProcessedCount:", xpc_dictionary_get_uint64(v60, [v22 UTF8String]));
          v62 = v198[5];
          v63 = v22;
          -[SKGBundleStatus setNeedProcessCount:](v23, "setNeedProcessCount:", xpc_dictionary_get_uint64(v62, [v22 UTF8String]));
          v64 = v150[5];
          v65 = v22;
          -[SKGBundleStatus setNeedDocumentUnderstandingCount:](v23, "setNeedDocumentUnderstandingCount:", xpc_dictionary_get_uint64(v64, [v22 UTF8String]));
          v66 = v144[5];
          v67 = v22;
          -[SKGBundleStatus setDocumentUnderstandingCount:](v23, "setDocumentUnderstandingCount:", xpc_dictionary_get_uint64(v66, [v22 UTF8String]));
        }

        if ((flags & 8) != 0)
        {
          v68 = v114[5];
          v69 = v22;
          -[SKGBundleStatus setCount:](v23, "setCount:", xpc_dictionary_get_uint64(v68, [v22 UTF8String]));
          v70 = v204[5];
          v71 = v22;
          -[SKGBundleStatus setProcessedCount:](v23, "setProcessedCount:", xpc_dictionary_get_uint64(v70, [v22 UTF8String]));
          v72 = v198[5];
          v73 = v22;
          -[SKGBundleStatus setNeedProcessCount:](v23, "setNeedProcessCount:", xpc_dictionary_get_uint64(v72, [v22 UTF8String]));
          v74 = v138[5];
          v75 = v22;
          -[SKGBundleStatus setNeedKeyphrasesCount:](v23, "setNeedKeyphrasesCount:", xpc_dictionary_get_uint64(v74, [v22 UTF8String]));
          v76 = v132[5];
          v77 = v22;
          -[SKGBundleStatus setKeyphrasesCount:](v23, "setKeyphrasesCount:", xpc_dictionary_get_uint64(v76, [v22 UTF8String]));
          v78 = v126[5];
          v79 = v22;
          -[SKGBundleStatus setBreadcrumbsCount:](v23, "setBreadcrumbsCount:", xpc_dictionary_get_uint64(v78, [v22 UTF8String]));
          v80 = v120[5];
          v81 = v22;
          -[SKGBundleStatus setLocationsCount:](v23, "setLocationsCount:", xpc_dictionary_get_uint64(v80, [v22 UTF8String]));
        }

        [v11 setObject:v23 forKeyedSubscript:v22];
      }

      v19 = [obj countByEnumeratingWithState:&v88 objects:v209 count:16];
    }

    while (v19);
  }

  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v101, 8);

  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v113, 8);

  _Block_object_dispose(&v119, 8);
  _Block_object_dispose(&v125, 8);

  _Block_object_dispose(&v131, 8);
  _Block_object_dispose(&v137, 8);

  _Block_object_dispose(&v143, 8);
  _Block_object_dispose(&v149, 8);

  _Block_object_dispose(&v155, 8);
  _Block_object_dispose(&v161, 8);

  _Block_object_dispose(&v167, 8);
  _Block_object_dispose(&v173, 8);

  _Block_object_dispose(&v179, 8);
  _Block_object_dispose(&v185, 8);

  _Block_object_dispose(&v191, 8);
  _Block_object_dispose(&v197, 8);

  _Block_object_dispose(&v203, 8);

  return v11;
}

void __79__SKGUtilities_getSKGDictionary_filterBundle_protectionClasses_processorFlags___block_invoke(void *a1, void *a2, void *a3)
{
  xdict = a2;
  v5 = a3;
  v6 = *(a1[4] + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = v7;
    v9 = *(v6 + 40);
    *(v6 + 40) = v8;
  }

  else
  {
    v10 = xpc_dictionary_get_array(xdict, "bundleIDs");
    v11 = *(a1[4] + 8);
    v9 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  if (v13)
  {
    v14 = v13;
    v15 = *(v12 + 40);
    *(v12 + 40) = v14;
  }

  else
  {
    v16 = xpc_dictionary_get_value(xdict, "totalItemsDict");
    v17 = *(a1[5] + 8);
    v15 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  v18 = *(a1[6] + 8);
  v19 = *(v18 + 40);
  if (v19)
  {
    v20 = v19;
    v21 = *(v18 + 40);
    *(v18 + 40) = v20;
  }

  else
  {
    v22 = xpc_dictionary_get_value(xdict, "itemsProcessedDict");
    v23 = *(a1[6] + 8);
    v21 = *(v23 + 40);
    *(v23 + 40) = v22;
  }

  v24 = *(a1[7] + 8);
  v25 = *(v24 + 40);
  if (v25)
  {
    v26 = v25;
    v27 = *(v24 + 40);
    *(v24 + 40) = v26;
  }

  else
  {
    v28 = xpc_dictionary_get_value(xdict, "itemsNeedProcessingDict");
    v29 = *(a1[7] + 8);
    v27 = *(v29 + 40);
    *(v29 + 40) = v28;
  }

  v30 = *(a1[8] + 8);
  v31 = *(v30 + 40);
  if (v31)
  {
    v32 = v31;
    v33 = *(v30 + 40);
    *(v30 + 40) = v32;
  }

  else
  {
    v34 = xpc_dictionary_get_value(xdict, "itemsNeedEmbedDict");
    v35 = *(a1[8] + 8);
    v33 = *(v35 + 40);
    *(v35 + 40) = v34;
  }

  v36 = *(a1[9] + 8);
  v37 = *(v36 + 40);
  if (v37)
  {
    v38 = v37;
    v39 = *(v36 + 40);
    *(v36 + 40) = v38;
  }

  else
  {
    v40 = xpc_dictionary_get_value(xdict, "itemsAwaitingRedonationDict");
    v41 = *(a1[9] + 8);
    v39 = *(v41 + 40);
    *(v41 + 40) = v40;
  }

  v42 = *(a1[10] + 8);
  v43 = *(v42 + 40);
  if (v43)
  {
    v44 = v43;
    v45 = *(v42 + 40);
    *(v42 + 40) = v44;
  }

  else
  {
    v46 = xpc_dictionary_get_value(xdict, "itemsRedonationRequestCapReachedDict");
    v47 = *(a1[10] + 8);
    v45 = *(v47 + 40);
    *(v47 + 40) = v46;
  }

  v48 = *(a1[11] + 8);
  v49 = *(v48 + 40);
  if (v49)
  {
    v50 = v49;
    v51 = *(v48 + 40);
    *(v48 + 40) = v50;
  }

  else
  {
    v52 = xpc_dictionary_get_value(xdict, "itemsWithPrimaryTextEmbeddingDict");
    v53 = *(a1[11] + 8);
    v51 = *(v53 + 40);
    *(v53 + 40) = v52;
  }

  v54 = *(a1[12] + 8);
  v55 = *(v54 + 40);
  if (v55)
  {
    v56 = v55;
    v57 = *(v54 + 40);
    *(v54 + 40) = v56;
  }

  else
  {
    v58 = xpc_dictionary_get_value(xdict, "itemsWithSecondaryTextEmbeddingDict");
    v59 = *(a1[12] + 8);
    v57 = *(v59 + 40);
    *(v59 + 40) = v58;
  }

  v60 = *(a1[13] + 8);
  v61 = *(v60 + 40);
  if (v61)
  {
    v62 = v61;
    v63 = *(v60 + 40);
    *(v60 + 40) = v62;
  }

  else
  {
    v64 = xpc_dictionary_get_value(xdict, "itemsNeedSuggestedEventsDict");
    v65 = *(a1[13] + 8);
    v63 = *(v65 + 40);
    *(v65 + 40) = v64;
  }

  v66 = *(a1[14] + 8);
  v67 = *(v66 + 40);
  if (v67)
  {
    v68 = v67;
    v69 = *(v66 + 40);
    *(v66 + 40) = v68;
  }

  else
  {
    v70 = xpc_dictionary_get_value(xdict, "itemsWithSuggestedEventsDict");
    v71 = *(a1[14] + 8);
    v69 = *(v71 + 40);
    *(v71 + 40) = v70;
  }

  v72 = *(a1[15] + 8);
  v73 = *(v72 + 40);
  if (v73)
  {
    v74 = v73;
    v75 = *(v72 + 40);
    *(v72 + 40) = v74;
  }

  else
  {
    v76 = xpc_dictionary_get_value(xdict, "itemsNeedDocumentUnderstandingDict");
    v77 = *(a1[15] + 8);
    v75 = *(v77 + 40);
    *(v77 + 40) = v76;
  }

  v78 = *(a1[16] + 8);
  v79 = *(v78 + 40);
  if (v79)
  {
    v80 = v79;
    v81 = *(v78 + 40);
    *(v78 + 40) = v80;
  }

  else
  {
    v82 = xpc_dictionary_get_value(xdict, "itemsWithDocumentUnderstandingDict");
    v83 = *(a1[16] + 8);
    v81 = *(v83 + 40);
    *(v83 + 40) = v82;
  }

  v84 = *(a1[17] + 8);
  v85 = *(v84 + 40);
  if (v85)
  {
    v86 = v85;
    v87 = *(v84 + 40);
    *(v84 + 40) = v86;
  }

  else
  {
    v88 = xpc_dictionary_get_value(xdict, "itemsNeedKeyphrasesDict");
    v89 = *(a1[17] + 8);
    v87 = *(v89 + 40);
    *(v89 + 40) = v88;
  }

  v90 = *(a1[18] + 8);
  v91 = *(v90 + 40);
  if (v91)
  {
    v92 = v91;
    v93 = *(v90 + 40);
    *(v90 + 40) = v92;
  }

  else
  {
    v94 = xpc_dictionary_get_value(xdict, "itemsWithKeyphrasesDict");
    v95 = *(a1[18] + 8);
    v93 = *(v95 + 40);
    *(v95 + 40) = v94;
  }

  v96 = *(a1[19] + 8);
  v97 = *(v96 + 40);
  if (v97)
  {
    v98 = v97;
    v99 = *(v96 + 40);
    *(v96 + 40) = v98;
  }

  else
  {
    v100 = xpc_dictionary_get_value(xdict, "itemsWithBreadcrumbsDict");
    v101 = *(a1[19] + 8);
    v99 = *(v101 + 40);
    *(v101 + 40) = v100;
  }

  v102 = *(a1[20] + 8);
  v103 = *(v102 + 40);
  if (v103)
  {
    v104 = v103;
    v105 = *(v102 + 40);
    *(v102 + 40) = v104;
  }

  else
  {
    v106 = xpc_dictionary_get_value(xdict, "itemsWithLocationsDict");
    v107 = *(a1[20] + 8);
    v105 = *(v107 + 40);
    *(v107 + 40) = v106;
  }

  v108 = *(a1[21] + 8);
  v109 = *(v108 + 40);
  if (v109)
  {
    v110 = v109;
    v111 = *(v108 + 40);
    *(v108 + 40) = v110;
  }

  else
  {
    v112 = xpc_dictionary_get_value(xdict, "bundleQueriesDict");
    v113 = *(a1[21] + 8);
    v111 = *(v113 + 40);
    *(v113 + 40) = v112;
  }

  v114 = *(a1[22] + 8);
  v115 = *(v114 + 40);
  if (v115)
  {
    v116 = v115;
    v117 = *(v114 + 40);
    *(v114 + 40) = v116;
  }

  else
  {
    v118 = xpc_dictionary_get_value(xdict, "bundleFileQueriesDict");
    v119 = *(a1[22] + 8);
    v117 = *(v119 + 40);
    *(v119 + 40) = v118;
  }
}

@end