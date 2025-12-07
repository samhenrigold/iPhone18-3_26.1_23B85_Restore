@interface PSTransitionBlock
+ (const)stringWithGraphFrequencyType:(unint64_t)type;
+ (id)generateTransitionBlockWithAddedGraphs:(id)graphs withRemovedGraphs:(id)removedGraphs withDashboard:(id)dashboard withStopOption:(BOOL)option;
- (void)printGraph:(id)graph context:(id)context printResolvedFieldsOnly:(BOOL)only;
- (void)printGraphsSummary;
- (void)printLogsWithContext:(id)context printResolvedFieldsOnly:(BOOL)only;
@end

@implementation PSTransitionBlock

- (void)printGraphsSummary
{
  selfCopy = self;
  v57 = *MEMORY[0x277D85DE8];
  v3 = __PLSLogSharedInstance(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "----------------------- Added Graphs -----------------------", buf, 2u);
  }

  if ([(NSSet *)selfCopy->_addedGraphs count])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v4 = selfCopy->_addedGraphs;
    v5 = [v4 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v5)
    {
      v6 = v5;
      v35 = selfCopy;
      v7 = *v47;
      do
      {
        v8 = 0;
        do
        {
          if (*v47 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v46 + 1) + 8 * v8);
          v10 = __PLSLogSharedInstance(v5);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            name = [v9 name];
            *buf = 138478083;
            v53 = name;
            v54 = 2048;
            v55 = v9;
            _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEFAULT, "%{private}@: %p", buf, 0x16u);
          }

          ++v8;
        }

        while (v6 != v8);
        v5 = [v4 countByEnumeratingWithState:&v46 objects:v56 count:16];
        v6 = v5;
      }

      while (v5);
      selfCopy = v35;
    }
  }

  else
  {
    v4 = __PLSLogSharedInstance(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "None", buf, 2u);
    }
  }

  v13 = __PLSLogSharedInstance(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_DEFAULT, "---------------------- Removed Graphs ----------------------", buf, 2u);
  }

  if ([(NSSet *)selfCopy->_removedGraphs count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v14 = selfCopy->_removedGraphs;
    v15 = [v14 countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v15)
    {
      v16 = v15;
      v36 = selfCopy;
      v17 = *v43;
      do
      {
        v18 = 0;
        do
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v42 + 1) + 8 * v18);
          v20 = __PLSLogSharedInstance(v15);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            name2 = [v19 name];
            *buf = 138478083;
            v53 = name2;
            v54 = 2048;
            v55 = v19;
            _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_DEFAULT, "%{private}@: %p", buf, 0x16u);
          }

          ++v18;
        }

        while (v16 != v18);
        v15 = [v14 countByEnumeratingWithState:&v42 objects:v51 count:16];
        v16 = v15;
      }

      while (v15);
      selfCopy = v36;
    }
  }

  else
  {
    v14 = __PLSLogSharedInstance(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_DEFAULT, "None", buf, 2u);
    }
  }

  v23 = __PLSLogSharedInstance(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEFAULT, "----------------------- Common Graphs ----------------------", buf, 2u);
  }

  v24 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:selfCopy->_preTransitionGraphs];
  [v24 intersectSet:selfCopy->_postTransitionGraphs];
  if ([v24 count])
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v26)
    {
      v27 = v26;
      v37 = v24;
      v28 = *v39;
      do
      {
        v29 = 0;
        do
        {
          if (*v39 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v38 + 1) + 8 * v29);
          v31 = __PLSLogSharedInstance(v26);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            name3 = [v30 name];
            *buf = 138478083;
            v53 = name3;
            v54 = 2048;
            v55 = v30;
            _os_log_impl(&dword_25EA3A000, v31, OS_LOG_TYPE_DEFAULT, "%{private}@: %p", buf, 0x16u);
          }

          ++v29;
        }

        while (v27 != v29);
        v26 = [v25 countByEnumeratingWithState:&v38 objects:v50 count:16];
        v27 = v26;
      }

      while (v26);
      v24 = v37;
    }
  }

  else
  {
    v25 = __PLSLogSharedInstance(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v25, OS_LOG_TYPE_DEFAULT, "None", buf, 2u);
    }
  }

  v34 = __PLSLogSharedInstance(v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v34, OS_LOG_TYPE_DEFAULT, "------------------------------------------------------------", buf, 2u);
  }
}

+ (const)stringWithGraphFrequencyType:(unint64_t)type
{
  if (type < 4)
  {
    return off_279A48780[type];
  }

  v11[1] = v3;
  v11[2] = v4;
  v6 = [(PSTransitionBlock *)v11 stringWithGraphFrequencyType:type];
  [(PSTransitionBlock *)v6 printGraph:v7 context:v8 printResolvedFieldsOnly:v9, v10];
  return result;
}

- (void)printGraph:(id)graph context:(id)context printResolvedFieldsOnly:(BOOL)only
{
  onlyCopy = only;
  v287 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  contextCopy = context;
  v9 = contextCopy;
  v195 = graphCopy;
  if (onlyCopy)
  {
    graphFrequency = [graphCopy graphFrequency];
    type = [graphFrequency type];

    log = __PLSLogSharedInstance(v12);
    v13 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
    if (type)
    {
      if (v13)
      {
        name = [v195 name];
        resolvedDomain = [v195 resolvedDomain];
        v16 = [resolvedDomain key];
        graphFrequency2 = [v195 graphFrequency];
        *buf = 138413314;
        *v280 = name;
        *&v280[8] = 2048;
        *&v280[10] = v195;
        *&v280[18] = 2112;
        *&v280[20] = v16;
        v281 = 2080;
        frequency = +[PSTransitionBlock stringWithGraphFrequencyType:](PSTransitionBlock, "stringWithGraphFrequencyType:", [graphFrequency2 type]);
        v283 = 2048;
        resolvedFrequency = [v195 resolvedFrequency];
        _os_log_impl(&dword_25EA3A000, log, OS_LOG_TYPE_DEFAULT, "Graph %@: %p (domain: %@) [Frequency: %s (%lu fps)]", buf, 0x34u);

        v18 = v195;
LABEL_200:

        goto LABEL_202;
      }
    }

    else if (v13)
    {
      name = [v195 name];
      resolvedDomain2 = [v195 resolvedDomain];
      v190 = [resolvedDomain2 key];
      *buf = 138412802;
      *v280 = name;
      *&v280[8] = 2048;
      *&v280[10] = v195;
      *&v280[18] = 2112;
      *&v280[20] = v190;
      _os_log_impl(&dword_25EA3A000, log, OS_LOG_TYPE_DEFAULT, "Graph %@: %p (domain: %@)", buf, 0x20u);

      v18 = v195;
      goto LABEL_200;
    }

    v18 = v195;
    goto LABEL_202;
  }

  v19 = __PLSLogSharedInstance(contextCopy);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    name2 = [graphCopy name];
    graphFrequency3 = [v195 graphFrequency];
    *buf = 138413571;
    *v280 = name2;
    *&v280[8] = 2048;
    *&v280[10] = v195;
    *&v280[18] = 2080;
    *&v280[20] = +[PSTransitionBlock stringWithGraphFrequencyType:](PSTransitionBlock, "stringWithGraphFrequencyType:", [graphFrequency3 type]);
    v281 = 2049;
    frequency = [v195 frequency];
    v283 = 2049;
    resolvedFrequency = [v195 criticalityCPU];
    v285 = 2048;
    resolvedThreadPoolSize = [v195 resolvedThreadPoolSize];
    _os_log_impl(&dword_25EA3A000, v19, OS_LOG_TYPE_DEFAULT, "Graph %@: %p [Frequency Type: %s] [FPS: %{private}lu] [CPU Criticality: %{private}lu] [Thread Pool Size: %lu]", buf, 0x3Eu);

    graphCopy = v195;
  }

  v264 = 0u;
  v265 = 0u;
  v262 = 0u;
  v263 = 0u;
  obj = [graphCopy tasks];
  v22 = [obj countByEnumeratingWithState:&v262 objects:v278 count:16];
  v194 = v22;
  if (v22)
  {
    v193 = *v263;
    *&v23 = 138412290;
    v191 = v23;
    do
    {
      v24 = 0;
      do
      {
        if (*v263 != v193)
        {
          objc_enumerationMutation(obj);
        }

        loga = v24;
        v25 = *(*(&v262 + 1) + 8 * v24);
        v26 = __PLSLogSharedInstance(v22);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          name3 = [v25 name];
          *buf = v191;
          *v280 = name3;
          _os_log_impl(&dword_25EA3A000, v26, OS_LOG_TYPE_DEFAULT, "    Task %@", buf, 0xCu);
        }

        v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v258 = 0u;
        v259 = 0u;
        v260 = 0u;
        v261 = 0u;
        v198 = v25;
        inputs = [v25 inputs];
        v33 = [inputs countByEnumeratingWithState:&v258 objects:v277 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v259;
          do
          {
            for (i = 0; i != v34; i = i + 1)
            {
              if (*v259 != v35)
              {
                objc_enumerationMutation(inputs);
              }

              v37 = *(*(&v258 + 1) + 8 * i);
              type2 = [v37 type];
              if (type2 > 1)
              {
                v39 = v30;
                if (type2 != 2)
                {
                  v39 = v31;
                  if (type2 != 3)
                  {
LABEL_203:
                    [PSTransitionBlock printGraph:buf context:v37 printResolvedFieldsOnly:?];
LABEL_204:
                    [PSTransitionBlock printGraph:buf context:v34 printResolvedFieldsOnly:?];
                  }
                }
              }

              else
              {
                v39 = v28;
                if (type2)
                {
                  v39 = v29;
                  if (type2 != 1)
                  {
                    goto LABEL_203;
                  }
                }
              }

              [v39 addObject:v37];
            }

            v34 = [inputs countByEnumeratingWithState:&v258 objects:v277 count:16];
          }

          while (v34);
        }

        v40 = [v28 count];
        v205 = v29;
        v208 = v28;
        v202 = v30;
        v200 = v31;
        if (v40)
        {
          v41 = __PLSLogSharedInstance(v40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v41, OS_LOG_TYPE_DEFAULT, "        Wait Inputs:", buf, 2u);
          }

          v256 = 0u;
          v257 = 0u;
          v254 = 0u;
          v255 = 0u;
          v42 = v28;
          v43 = [v42 countByEnumeratingWithState:&v254 objects:v276 count:16];
          if (v43)
          {
            v44 = v43;
            v45 = *v255;
            do
            {
              for (j = 0; j != v44; ++j)
              {
                if (*v255 != v45)
                {
                  objc_enumerationMutation(v42);
                }

                v47 = *(*(&v254 + 1) + 8 * j);
                resolvedResourceKey = [v47 resolvedResourceKey];
                v49 = [v9 resourceStreamForKey:resolvedResourceKey];

                if (v49)
                {
                  resourceClass = [v49 resourceClass];
                  v51 = resourceClass;
                }

                else
                {
                  v51 = -1;
                }

                v52 = __PLSLogSharedInstance(resourceClass);
                if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                {
                  resolvedResourceKey2 = [v47 resolvedResourceKey];
                  *buf = 67109378;
                  *v280 = v51;
                  *&v280[4] = 2112;
                  *&v280[6] = resolvedResourceKey2;
                  _os_log_impl(&dword_25EA3A000, v52, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@", buf, 0x12u);
                }
              }

              v44 = [v42 countByEnumeratingWithState:&v254 objects:v276 count:16];
            }

            while (v44);
          }

          v29 = v205;
          v30 = v202;
          v31 = v200;
        }

        v54 = [v29 count];
        if (v54)
        {
          v55 = __PLSLogSharedInstance(v54);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v55, OS_LOG_TYPE_DEFAULT, "        Pull Inputs:", buf, 2u);
          }

          v252 = 0u;
          v253 = 0u;
          v250 = 0u;
          v251 = 0u;
          v56 = v29;
          v57 = [v56 countByEnumeratingWithState:&v250 objects:v275 count:16];
          if (v57)
          {
            v58 = v57;
            v59 = *v251;
            do
            {
              for (k = 0; k != v58; ++k)
              {
                if (*v251 != v59)
                {
                  objc_enumerationMutation(v56);
                }

                v61 = *(*(&v250 + 1) + 8 * k);
                resolvedResourceKey3 = [v61 resolvedResourceKey];
                v63 = [v9 resourceStreamForKey:resolvedResourceKey3];

                if (v63)
                {
                  resourceClass2 = [v63 resourceClass];
                  v65 = resourceClass2;
                }

                else
                {
                  v65 = -1;
                }

                v66 = __PLSLogSharedInstance(resourceClass2);
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                {
                  resolvedResourceKey4 = [v61 resolvedResourceKey];
                  *buf = 67109378;
                  *v280 = v65;
                  *&v280[4] = 2112;
                  *&v280[6] = resolvedResourceKey4;
                  _os_log_impl(&dword_25EA3A000, v66, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@", buf, 0x12u);
                }
              }

              v58 = [v56 countByEnumeratingWithState:&v250 objects:v275 count:16];
            }

            while (v58);
          }

          v29 = v205;
          v30 = v202;
          v31 = v200;
        }

        v68 = [v30 count];
        v69 = v198;
        if (v68)
        {
          v70 = __PLSLogSharedInstance(v68);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v70, OS_LOG_TYPE_DEFAULT, "        PullOptional Inputs:", buf, 2u);
          }

          v248 = 0u;
          v249 = 0u;
          v246 = 0u;
          v247 = 0u;
          v71 = v30;
          v72 = [v71 countByEnumeratingWithState:&v246 objects:v274 count:16];
          if (v72)
          {
            v73 = v72;
            v74 = *v247;
            do
            {
              for (m = 0; m != v73; ++m)
              {
                if (*v247 != v74)
                {
                  objc_enumerationMutation(v71);
                }

                v76 = *(*(&v246 + 1) + 8 * m);
                resolvedResourceKey5 = [v76 resolvedResourceKey];
                v78 = [v9 resourceStreamForKey:resolvedResourceKey5];

                if (v78)
                {
                  resourceClass3 = [v78 resourceClass];
                  v80 = resourceClass3;
                }

                else
                {
                  v80 = -1;
                }

                v81 = __PLSLogSharedInstance(resourceClass3);
                if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                {
                  resolvedResourceKey6 = [v76 resolvedResourceKey];
                  *buf = 67109378;
                  *v280 = v80;
                  *&v280[4] = 2112;
                  *&v280[6] = resolvedResourceKey6;
                  _os_log_impl(&dword_25EA3A000, v81, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@", buf, 0x12u);
                }
              }

              v73 = [v71 countByEnumeratingWithState:&v246 objects:v274 count:16];
            }

            while (v73);
          }

          v29 = v205;
          v30 = v202;
          v69 = v198;
          v31 = v200;
        }

        v83 = [v31 count];
        if (v83)
        {
          v84 = __PLSLogSharedInstance(v83);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v84, OS_LOG_TYPE_DEFAULT, "        Synced Inputs:", buf, 2u);
          }

          v244 = 0u;
          v245 = 0u;
          v242 = 0u;
          v243 = 0u;
          v85 = v31;
          v86 = [v85 countByEnumeratingWithState:&v242 objects:v273 count:16];
          if (v86)
          {
            v87 = v86;
            v88 = *v243;
            do
            {
              for (n = 0; n != v87; ++n)
              {
                if (*v243 != v88)
                {
                  objc_enumerationMutation(v85);
                }

                v90 = *(*(&v242 + 1) + 8 * n);
                resolvedResourceKey7 = [v90 resolvedResourceKey];
                v92 = [v9 resourceStreamForKey:resolvedResourceKey7];

                if (v92)
                {
                  resourceClass4 = [v92 resourceClass];
                  v94 = resourceClass4;
                }

                else
                {
                  v94 = -1;
                }

                v95 = __PLSLogSharedInstance(resourceClass4);
                if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                {
                  resolvedResourceKey8 = [v90 resolvedResourceKey];
                  sourceInputResourceKey = [v90 sourceInputResourceKey];
                  *buf = 67109634;
                  *v280 = v94;
                  *&v280[4] = 2112;
                  *&v280[6] = resolvedResourceKey8;
                  *&v280[14] = 2112;
                  *&v280[16] = sourceInputResourceKey;
                  _os_log_impl(&dword_25EA3A000, v95, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@, synced to %@", buf, 0x1Cu);
                }
              }

              v87 = [v85 countByEnumeratingWithState:&v242 objects:v273 count:16];
            }

            while (v87);
          }

          v29 = v205;
          v28 = v208;
          v30 = v202;
          v69 = v198;
          v31 = v200;
        }

        outputs = [v69 outputs];
        v99 = [outputs count];

        if (v99)
        {
          v101 = __PLSLogSharedInstance(v100);
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v101, OS_LOG_TYPE_DEFAULT, "        Outputs:", buf, 2u);
          }

          v240 = 0u;
          v241 = 0u;
          v238 = 0u;
          v239 = 0u;
          outputs2 = [v69 outputs];
          v103 = [outputs2 countByEnumeratingWithState:&v238 objects:v272 count:16];
          if (v103)
          {
            v104 = v103;
            v105 = *v239;
            do
            {
              for (ii = 0; ii != v104; ++ii)
              {
                if (*v239 != v105)
                {
                  objc_enumerationMutation(outputs2);
                }

                v107 = *(*(&v238 + 1) + 8 * ii);
                resourceKey = [v107 resourceKey];
                v109 = [v9 resourceStreamForKey:resourceKey];

                if (v109)
                {
                  resourceClass5 = [v109 resourceClass];
                  v111 = resourceClass5;
                }

                else
                {
                  v111 = -1;
                }

                v112 = __PLSLogSharedInstance(resourceClass5);
                if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
                {
                  resourceKey2 = [v107 resourceKey];
                  *buf = 67109378;
                  *v280 = v111;
                  *&v280[4] = 2112;
                  *&v280[6] = resourceKey2;
                  _os_log_impl(&dword_25EA3A000, v112, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@", buf, 0x12u);
                }
              }

              v104 = [outputs2 countByEnumeratingWithState:&v238 objects:v272 count:16];
            }

            while (v104);
          }

          v29 = v205;
          v28 = v208;
          v30 = v202;
          v31 = v200;
        }

        v24 = (&loga->isa + 1);
      }

      while ((&loga->isa + 1) != v194);
      v22 = [obj countByEnumeratingWithState:&v262 objects:v278 count:16];
      v194 = v22;
    }

    while (v22);
  }

  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v114 = v195;
  sourceTasks = [v195 sourceTasks];
  v115 = [sourceTasks countByEnumeratingWithState:&v234 objects:v271 count:16];
  v209 = v115;
  if (v115)
  {
    v206 = *v235;
    do
    {
      v116 = 0;
      do
      {
        if (*v235 != v206)
        {
          objc_enumerationMutation(sourceTasks);
        }

        v117 = *(*(&v234 + 1) + 8 * v116);
        v118 = __PLSLogSharedInstance(v115);
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          name4 = [v117 name];
          *buf = 138412290;
          *v280 = name4;
          _os_log_impl(&dword_25EA3A000, v118, OS_LOG_TYPE_DEFAULT, "    SourceTask %@", buf, 0xCu);
        }

        outputs3 = [v117 outputs];
        v121 = [outputs3 count];

        if (v121)
        {
          v211 = v116;
          v122 = __PLSLogSharedInstance(v115);
          if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v122, OS_LOG_TYPE_DEFAULT, "        Outputs:", buf, 2u);
          }

          v232 = 0u;
          v233 = 0u;
          v230 = 0u;
          v231 = 0u;
          outputs4 = [v117 outputs];
          v124 = [outputs4 countByEnumeratingWithState:&v230 objects:v270 count:16];
          if (v124)
          {
            v125 = v124;
            v126 = *v231;
            do
            {
              for (jj = 0; jj != v125; ++jj)
              {
                if (*v231 != v126)
                {
                  objc_enumerationMutation(outputs4);
                }

                v128 = *(*(&v230 + 1) + 8 * jj);
                resourceKey3 = [v128 resourceKey];
                v130 = [v9 resourceStreamForKey:resourceKey3];

                if (v130)
                {
                  resourceClass6 = [v130 resourceClass];
                  v132 = resourceClass6;
                }

                else
                {
                  v132 = -1;
                }

                v133 = __PLSLogSharedInstance(resourceClass6);
                if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
                {
                  resourceKey4 = [v128 resourceKey];
                  *buf = 67109378;
                  *v280 = v132;
                  *&v280[4] = 2112;
                  *&v280[6] = resourceKey4;
                  _os_log_impl(&dword_25EA3A000, v133, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@", buf, 0x12u);
                }
              }

              v125 = [outputs4 countByEnumeratingWithState:&v230 objects:v270 count:16];
            }

            while (v125);
          }

          v114 = v195;
          v116 = v211;
        }

        ++v116;
      }

      while (v116 != v209);
      v115 = [sourceTasks countByEnumeratingWithState:&v234 objects:v271 count:16];
      v209 = v115;
    }

    while (v115);
  }

  v228 = 0u;
  v229 = 0u;
  v226 = 0u;
  v227 = 0u;
  writers = [v114 writers];
  v135 = [writers countByEnumeratingWithState:&v226 objects:v269 count:16];
  if (v135)
  {
    v136 = v135;
    v137 = *v227;
    do
    {
      v138 = 0;
      do
      {
        if (*v227 != v137)
        {
          objc_enumerationMutation(writers);
        }

        v139 = *(*(&v226 + 1) + 8 * v138);
        v140 = __PLSLogSharedInstance(v135);
        if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
        {
          name5 = [v139 name];
          *buf = 138412290;
          *v280 = name5;
          _os_log_impl(&dword_25EA3A000, v140, OS_LOG_TYPE_DEFAULT, "    Writer %@", buf, 0xCu);
        }

        output = [v139 output];

        if (output)
        {
          v143 = __PLSLogSharedInstance(v135);
          if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v143, OS_LOG_TYPE_DEFAULT, "        Output:", buf, 2u);
          }

          output2 = [v139 output];
          resourceKey5 = [output2 resourceKey];
          v146 = [v9 resourceStreamForKey:resourceKey5];

          if (v146)
          {
            resourceClass7 = [v146 resourceClass];
            v148 = resourceClass7;
          }

          else
          {
            v148 = -1;
          }

          v149 = __PLSLogSharedInstance(resourceClass7);
          if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
          {
            resourceKey6 = [output2 resourceKey];
            *buf = 67109378;
            *v280 = v148;
            *&v280[4] = 2112;
            *&v280[6] = resourceKey6;
            _os_log_impl(&dword_25EA3A000, v149, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@", buf, 0x12u);
          }
        }

        ++v138;
      }

      while (v136 != v138);
      v135 = [writers countByEnumeratingWithState:&v226 objects:v269 count:16];
      v136 = v135;
    }

    while (v135);
  }

  v224 = 0u;
  v225 = 0u;
  v222 = 0u;
  v223 = 0u;
  v18 = v195;
  log = [v195 readers];
  v151 = [log countByEnumeratingWithState:&v222 objects:v268 count:16];
  v201 = v151;
  if (v151)
  {
    v199 = *v223;
    do
    {
      v152 = 0;
      do
      {
        if (*v223 != v199)
        {
          objc_enumerationMutation(log);
        }

        v153 = *(*(&v222 + 1) + 8 * v152);
        v154 = __PLSLogSharedInstance(v151);
        if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
        {
          name6 = [v153 name];
          *buf = 138412290;
          *v280 = name6;
          _os_log_impl(&dword_25EA3A000, v154, OS_LOG_TYPE_DEFAULT, "    Reader %@", buf, 0xCu);
        }

        v156 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v157 = objc_alloc_init(MEMORY[0x277CBEB18]);
        input = [v153 input];
        v34 = input;
        if (input)
        {
          type3 = [input type];
          v160 = v156;
          if (type3 != 1)
          {
            v160 = v157;
            if (type3 != 2)
            {
              goto LABEL_204;
            }
          }

          [v160 addObject:v34];
        }

        v161 = [v156 count];
        v212 = v152;
        v207 = v157;
        v210 = v156;
        v204 = v34;
        if (v161)
        {
          v162 = __PLSLogSharedInstance(v161);
          if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v162, OS_LOG_TYPE_DEFAULT, "        Pull Inputs:", buf, 2u);
          }

          v220 = 0u;
          v221 = 0u;
          v218 = 0u;
          v219 = 0u;
          v163 = v156;
          v164 = [v163 countByEnumeratingWithState:&v218 objects:v267 count:16];
          if (v164)
          {
            v165 = v164;
            v166 = *v219;
            do
            {
              for (kk = 0; kk != v165; ++kk)
              {
                if (*v219 != v166)
                {
                  objc_enumerationMutation(v163);
                }

                v168 = *(*(&v218 + 1) + 8 * kk);
                resolvedResourceKey9 = [v168 resolvedResourceKey];
                v170 = [v9 resourceStreamForKey:resolvedResourceKey9];

                if (v170)
                {
                  resourceClass8 = [v170 resourceClass];
                  v172 = resourceClass8;
                }

                else
                {
                  v172 = -1;
                }

                v173 = __PLSLogSharedInstance(resourceClass8);
                if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
                {
                  resolvedResourceKey10 = [v168 resolvedResourceKey];
                  *buf = 67109378;
                  *v280 = v172;
                  *&v280[4] = 2112;
                  *&v280[6] = resolvedResourceKey10;
                  _os_log_impl(&dword_25EA3A000, v173, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@", buf, 0x12u);
                }
              }

              v165 = [v163 countByEnumeratingWithState:&v218 objects:v267 count:16];
            }

            while (v165);
          }

          v18 = v195;
          v152 = v212;
          v157 = v207;
          v156 = v210;
          v34 = v204;
        }

        v175 = [v157 count];
        if (v175)
        {
          v176 = __PLSLogSharedInstance(v175);
          if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25EA3A000, v176, OS_LOG_TYPE_DEFAULT, "        PullOptional Inputs:", buf, 2u);
          }

          v216 = 0u;
          v217 = 0u;
          v214 = 0u;
          v215 = 0u;
          v177 = v157;
          v178 = [v177 countByEnumeratingWithState:&v214 objects:v266 count:16];
          if (v178)
          {
            v179 = v178;
            v180 = *v215;
            do
            {
              for (mm = 0; mm != v179; ++mm)
              {
                if (*v215 != v180)
                {
                  objc_enumerationMutation(v177);
                }

                v182 = *(*(&v214 + 1) + 8 * mm);
                resolvedResourceKey11 = [v182 resolvedResourceKey];
                v184 = [v9 resourceStreamForKey:resolvedResourceKey11];

                if (v184)
                {
                  resourceClass9 = [v184 resourceClass];
                  v186 = resourceClass9;
                }

                else
                {
                  v186 = -1;
                }

                v187 = __PLSLogSharedInstance(resourceClass9);
                if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
                {
                  resolvedResourceKey12 = [v182 resolvedResourceKey];
                  *buf = 67109378;
                  *v280 = v186;
                  *&v280[4] = 2112;
                  *&v280[6] = resolvedResourceKey12;
                  _os_log_impl(&dword_25EA3A000, v187, OS_LOG_TYPE_DEFAULT, "            - (Stream Class: %d) %@", buf, 0x12u);
                }
              }

              v179 = [v177 countByEnumeratingWithState:&v214 objects:v266 count:16];
            }

            while (v179);
          }

          v18 = v195;
          v152 = v212;
          v157 = v207;
          v156 = v210;
          v34 = v204;
        }

        ++v152;
      }

      while (v152 != v201);
      v151 = [log countByEnumeratingWithState:&v222 objects:v268 count:16];
      v201 = v151;
    }

    while (v151);
  }

LABEL_202:
}

- (void)printLogsWithContext:(id)context printResolvedFieldsOnly:(BOOL)only
{
  onlyCopy = only;
  v22 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (!onlyCopy)
  {
    [(PSTransitionBlock *)self printGraphsSummary];
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (has_internal_diagnostics)
  {
    v8 = __PLSLogSharedInstance(has_internal_diagnostics);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "---------------------- Added graph detail ------------------", buf, 2u);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = self->_addedGraphs;
    v10 = [(NSSet *)v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(PSTransitionBlock *)self printGraph:*(*(&v16 + 1) + 8 * v13++) context:contextCopy printResolvedFieldsOnly:onlyCopy, v16];
        }

        while (v11 != v13);
        v11 = [(NSSet *)v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }

    v15 = __PLSLogSharedInstance(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_DEFAULT, "------------------------------------------------------------", buf, 2u);
    }
  }
}

+ (id)generateTransitionBlockWithAddedGraphs:(id)graphs withRemovedGraphs:(id)removedGraphs withDashboard:(id)dashboard withStopOption:(BOOL)option
{
  optionCopy = option;
  graphsCopy = graphs;
  removedGraphsCopy = removedGraphs;
  dashboardCopy = dashboard;
  v12 = objc_alloc_init(PSTransitionBlock);
  if (optionCopy)
  {
    if (graphsCopy && [graphsCopy count] || removedGraphsCopy && objc_msgSend(removedGraphsCopy, "count"))
    {
      [PSTransitionBlock generateTransitionBlockWithAddedGraphs:? withRemovedGraphs:? withDashboard:? withStopOption:?];
      return [(PSTransitionBlock *)v28 addedGraphs];
    }

    getRunningGraphs = [dashboardCopy getRunningGraphs];
    [(PSTransitionBlock *)v12 setPreTransitionGraphs:getRunningGraphs];

    v14 = objc_alloc_init(MEMORY[0x277CBEB98]);
    [(PSTransitionBlock *)v12 setAddedGraphs:v14];

    v15 = objc_alloc(MEMORY[0x277CBEB98]);
    preTransitionGraphs = [(PSTransitionBlock *)v12 preTransitionGraphs];
    v17 = [v15 initWithSet:preTransitionGraphs];
    [(PSTransitionBlock *)v12 setRemovedGraphs:v17];
  }

  else
  {
    getRunningGraphs2 = [dashboardCopy getRunningGraphs];
    [(PSTransitionBlock *)v12 setPreTransitionGraphs:getRunningGraphs2];

    if (graphsCopy)
    {
      v19 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:graphsCopy];
    }

    else
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    v20 = v19;
    [(PSTransitionBlock *)v12 setAddedGraphs:v19];

    if (removedGraphsCopy)
    {
      v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:removedGraphsCopy];
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    preTransitionGraphs = v21;
    [(PSTransitionBlock *)v12 setRemovedGraphs:v21];
  }

  v22 = objc_alloc(MEMORY[0x277CBEB58]);
  preTransitionGraphs2 = [(PSTransitionBlock *)v12 preTransitionGraphs];
  v24 = [v22 initWithSet:preTransitionGraphs2];

  addedGraphs = [(PSTransitionBlock *)v12 addedGraphs];
  [v24 unionSet:addedGraphs];

  removedGraphs = [(PSTransitionBlock *)v12 removedGraphs];
  [v24 minusSet:removedGraphs];

  [(PSTransitionBlock *)v12 setPostTransitionGraphs:v24];

  return v12;
}

+ (uint64_t)stringWithGraphFrequencyType:(char *)a1 .cold.1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Malformed input found. Received %lu", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Malformed input found. Received %lu", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [PSTransitionBlock printGraph:v19 context:v20 printResolvedFieldsOnly:?];
}

- (uint64_t)printGraph:(char *)a1 context:(void *)a2 printResolvedFieldsOnly:.cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = asprintf(a1, "Found an unspecified input type %lu", [a2 type]);
  v5 = __PLSLogSharedInstance(v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 type];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Found an unspecified input type %lu", v8, v9, v10, v11, v23, v24);
  }

  v12 = OSLogFlushBuffers();
  if (v12)
  {
    v13 = __PLSLogSharedInstance(v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSTransitionBlock printGraph:v20 context:v21 printResolvedFieldsOnly:?];
}

- (void)printGraph:(char *)a1 context:(void *)a2 printResolvedFieldsOnly:.cold.2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = asprintf(a1, "Found an unsupported input type %lu for reader", [a2 type]);
  v5 = __PLSLogSharedInstance(v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    [a2 type];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Found an unsupported input type %lu for reader", v8, v9, v10, v11, v21, v22);
  }

  v12 = OSLogFlushBuffers();
  if (v12)
  {
    v13 = __PLSLogSharedInstance(v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  [PSTransitionBlock generateTransitionBlockWithAddedGraphs:v20 withRemovedGraphs:? withDashboard:? withStopOption:?];
}

+ (void)generateTransitionBlockWithAddedGraphs:(char *)a1 withRemovedGraphs:withDashboard:withStopOption:.cold.1(char **a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "Stop was requested with non-zero added / removed graphs.");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    v10 = 136315394;
    v11 = "+[PSTransitionBlock generateTransitionBlockWithAddedGraphs:withRemovedGraphs:withDashboard:withStopOption:]";
    v12 = 1024;
    v13 = 273;
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d Stop was requested with non-zero added / removed graphs.", &v10, 0x12u);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = v4;
    v6 = __PLSLogSharedInstance(v4);
    if (OUTLINED_FUNCTION_6(v6))
    {
      v10 = 136315394;
      v11 = "+[PSTransitionBlock generateTransitionBlockWithAddedGraphs:withRemovedGraphs:withDashboard:withStopOption:]";
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v10, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v7 = OUTLINED_FUNCTION_0();
  [(PSTransitionManager *)v7 setupCoreAnalyticsForAddedGraphs:v8, v9];
}

@end