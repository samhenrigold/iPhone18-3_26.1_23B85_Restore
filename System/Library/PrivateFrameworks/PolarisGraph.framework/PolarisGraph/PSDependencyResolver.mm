@interface PSDependencyResolver
- (PSDependencyResolver)initWithVertices:(id)vertices withParentToEdgeFetcher:(id)fetcher withChildToEdgeFetcher:(id)edgeFetcher;
- (void)dealloc;
- (void)resolveWithBlock:(id)block;
@end

@implementation PSDependencyResolver

- (PSDependencyResolver)initWithVertices:(id)vertices withParentToEdgeFetcher:(id)fetcher withChildToEdgeFetcher:(id)edgeFetcher
{
  v127 = *MEMORY[0x277D85DE8];
  verticesCopy = vertices;
  fetcherCopy = fetcher;
  edgeFetcherCopy = edgeFetcher;
  v120.receiver = self;
  v120.super_class = PSDependencyResolver;
  v9 = [(PSDependencyResolver *)&v120 init];
  v10 = v9;
  if (v9)
  {
    v89 = v9;
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v95 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v75 = verticesCopy;
    obj = verticesCopy;
    v93 = [obj countByEnumeratingWithState:&v116 objects:v126 count:16];
    if (v93)
    {
      v91 = *v117;
      do
      {
        for (i = 0; i != v93; ++i)
        {
          if (*v117 != v91)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v116 + 1) + 8 * i);
          v114 = 0u;
          v115 = 0u;
          v112 = 0u;
          v113 = 0u;
          v14 = fetcherCopy[2](fetcherCopy, v13);
          v15 = [v14 countByEnumeratingWithState:&v112 objects:v125 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v113;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v113 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v112 + 1) + 8 * j);
                v20 = [v11 objectForKey:{v19, v75}];

                if (!v20)
                {
                  v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
                  [v11 setObject:v21 forKey:v19];
                }

                v22 = [v11 objectForKey:v19];
                [v22 addObject:v13];
              }

              v16 = [v14 countByEnumeratingWithState:&v112 objects:v125 count:16];
            }

            while (v16);
          }

          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v23 = edgeFetcherCopy[2](edgeFetcherCopy, v13);
          v24 = [v23 countByEnumeratingWithState:&v108 objects:v124 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v109;
            do
            {
              for (k = 0; k != v25; ++k)
              {
                if (*v109 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v108 + 1) + 8 * k);
                v29 = [v95 objectForKey:{v28, v75}];

                if (!v29)
                {
                  v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
                  [v95 setObject:v30 forKey:v28];
                }

                v31 = [v95 objectForKey:v28];
                [v31 addObject:v13];
              }

              v25 = [v23 countByEnumeratingWithState:&v108 objects:v124 count:16];
            }

            while (v25);
          }
        }

        v93 = [obj countByEnumeratingWithState:&v116 objects:v126 count:16];
      }

      while (v93);
    }

    v32 = malloc_type_calloc(1uLL, 0x10uLL, 0x10800409227ACB4uLL);
    if (!v32)
    {
      goto LABEL_98;
    }

    v10 = v89;
    v89->graph = v32;
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    parentToSink = v89->parentToSink;
    v89->parentToSink = strongToStrongObjectsMapTable;

    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v35 = v11;
    v36 = v95;
    v77 = [v35 countByEnumeratingWithState:&v104 objects:v123 count:16];
    if (v77)
    {
      v78 = *v105;
      v76 = v35;
      do
      {
        v37 = 0;
        do
        {
          if (*v105 != v78)
          {
            objc_enumerationMutation(v35);
          }

          v79 = v37;
          v38 = *(*(&v104 + 1) + 8 * v37);
          v39 = [v35 objectForKeyedSubscript:{v38, v75}];
          v82 = [v36 objectForKeyedSubscript:v38];
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v80 = v39;
          v83 = [v80 countByEnumeratingWithState:&v100 objects:v122 count:16];
          if (v83)
          {
            v81 = *v101;
            do
            {
              v40 = 0;
              do
              {
                if (*v101 != v81)
                {
                  objc_enumerationMutation(v80);
                }

                obja = v40;
                v41 = *(*(&v100 + 1) + 8 * v40);
                v96 = 0u;
                v97 = 0u;
                v98 = 0u;
                v99 = 0u;
                v88 = v82;
                v94 = [v88 countByEnumeratingWithState:&v96 objects:v121 count:16];
                if (v94)
                {
                  v90 = v41;
                  v92 = *v97;
                  do
                  {
                    for (m = 0; m != v94; ++m)
                    {
                      if (*v97 != v92)
                      {
                        objc_enumerationMutation(v88);
                      }

                      v43 = *(*(&v96 + 1) + 8 * m);
                      vertex_new(v41);
                      v45 = v44;
                      vertex_new(v43);
                      v47 = v46;
                      graph = v10->graph;
                      var1 = graph->var1;
                      if (!var1)
                      {
                        var0 = graph->var0;
                        goto LABEL_63;
                      }

                      LOBYTE(v50) = 0;
                      LOBYTE(v51) = 0;
                      v52 = 0;
                      v53 = 0;
                      v54 = 0;
                      do
                      {
                        if (v50)
                        {
                          v50 = 1;
                          if (v51)
                          {
                            goto LABEL_55;
                          }
                        }

                        else if (*graph->var0[v54] == *v45)
                        {
                          vertex_free(v45);
                          v45 = graph->var0[v54];
                          v50 = 1;
                          v52 = v54;
                          if (v51)
                          {
                            goto LABEL_55;
                          }
                        }

                        else
                        {
                          v50 = 0;
                          if (v51)
                          {
                            goto LABEL_55;
                          }
                        }

                        if (*graph->var0[v54] != *v47)
                        {
                          v51 = 0;
                          goto LABEL_56;
                        }

                        vertex_free(v47);
                        v47 = graph->var0[v54];
                        v53 = v54;
LABEL_55:
                        v51 = 1;
                        if (v50)
                        {
                          break;
                        }

LABEL_56:
                        ++v54;
                      }

                      while (v54 < graph->var1);
                      if ((v50 ^ 1) & 1) != 0 || ((v51 ^ 1))
                      {
                        if ((v51 | v50 ^ 1))
                        {
                          v58 = v50 | v51 ^ 1;
                          var0 = graph->var0;
                          var1 = graph->var1;
                          v10 = v89;
                          if (v58)
                          {
                            v41 = v90;
LABEL_63:
                            v56 = malloc_type_realloc(var0, 8 * (var1 + 2), 0x2004093837F09uLL);
                            graph->var0 = v56;
                            if (v56)
                            {
                              v57 = graph->var1;
                              v56[v57] = v45;
                              graph->var0[(v57 + 1)] = v47;
                              graph->var1 = v57 + 2;
                              goto LABEL_76;
                            }

                            goto LABEL_95;
                          }

                          v61 = malloc_type_realloc(var0, 8 * (var1 + 1), 0x2004093837F09uLL);
                          graph->var0 = v61;
                          if (!v61)
                          {
                            goto LABEL_97;
                          }

                          v60 = graph->var1;
                          v61[v60] = 0;
                          for (n = v60; n > v53; --n)
                          {
                            graph->var0[n] = graph->var0[n - 1];
                          }

                          graph->var0[v53] = v45;
                        }

                        else
                        {
                          v59 = malloc_type_realloc(graph->var0, 8 * (graph->var1 + 1), 0x2004093837F09uLL);
                          graph->var0 = v59;
                          v10 = v89;
                          if (!v59)
                          {
                            goto LABEL_96;
                          }

                          v60 = graph->var1;
                          v59[v60] = v47;
                        }

                        graph->var1 = v60 + 1;
                        goto LABEL_75;
                      }

                      v10 = v89;
                      if (v53 < v52)
                      {
                        do
                        {
                          graph->var0[v52] = graph->var0[v52 - 1];
                          --v52;
                        }

                        while (v52 > v53);
                        graph->var0[v53] = v45;
                      }

LABEL_75:
                      v41 = v90;
LABEL_76:
                      v63 = *(v45 + 8);
                      if (!v63)
                      {
LABEL_80:
                        v66 = malloc_type_realloc(*(v45 + 3), 8 * (v63 + 1), 0x2004093837F09uLL);
                        *(v45 + 3) = v66;
                        if (v66)
                        {
                          v67 = *(v45 + 8);
                          v66[v67] = v47;
                          *(v45 + 8) = v67 + 1;
                          v68 = malloc_type_realloc(*(v47 + 1), 8 * (*(v47 + 4) + 1), 0x2004093837F09uLL);
                          *(v47 + 1) = v68;
                          if (v68)
                          {
                            v69 = *(v47 + 4);
                            v68[v69] = v45;
                            *(v47 + 4) = v69 + 1;
                            goto LABEL_83;
                          }

                          [PSDependencyResolver initWithVertices:withParentToEdgeFetcher:withChildToEdgeFetcher:];
                        }

                        [PSDependencyResolver initWithVertices:withParentToEdgeFetcher:withChildToEdgeFetcher:];
LABEL_95:
                        [PSDependencyResolver initWithVertices:withParentToEdgeFetcher:withChildToEdgeFetcher:];
LABEL_96:
                        [PSDependencyResolver initWithVertices:withParentToEdgeFetcher:withChildToEdgeFetcher:];
LABEL_97:
                        [PSDependencyResolver initWithVertices:withParentToEdgeFetcher:withChildToEdgeFetcher:];
LABEL_98:
                        [PSDependencyResolver initWithVertices:withParentToEdgeFetcher:withChildToEdgeFetcher:];
                      }

                      v64 = *(v45 + 3);
                      v65 = *(v45 + 8);
                      while (**v64 != *v47)
                      {
                        ++v64;
                        if (!--v65)
                        {
                          goto LABEL_80;
                        }
                      }

LABEL_83:
                      v70 = [(NSMapTable *)v10->parentToSink objectForKey:v41];

                      if (!v70)
                      {
                        v71 = v10->parentToSink;
                        v72 = objc_alloc_init(MEMORY[0x277CBEB58]);
                        [(NSMapTable *)v71 setObject:v72 forKey:v41];
                      }

                      v73 = [(NSMapTable *)v10->parentToSink objectForKey:v41];
                      [v73 addObject:v43];
                    }

                    v94 = [v88 countByEnumeratingWithState:&v96 objects:v121 count:16];
                  }

                  while (v94);
                }

                v40 = obja + 1;
              }

              while (obja + 1 != v83);
              v83 = [v80 countByEnumeratingWithState:&v100 objects:v122 count:16];
            }

            while (v83);
          }

          v37 = v79 + 1;
          v35 = v76;
          v36 = v95;
        }

        while (v79 + 1 != v77);
        v77 = [v76 countByEnumeratingWithState:&v104 objects:v123 count:16];
      }

      while (v77);
    }

    verticesCopy = v75;
  }

  return v10;
}

- (void)resolveWithBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  selfCopy = self;
  graph = self->graph;
  var1 = graph->var1;
  if (var1)
  {
    v7 = 0;
    var0 = graph->var0;
    do
    {
      v9 = *var0[v7];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = [(NSMapTable *)selfCopy->parentToSink objectForKey:v9];
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v17;
        do
        {
          v14 = 0;
          do
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(v10);
            }

            blockCopy[2](blockCopy, v9, *(*(&v16 + 1) + 8 * v14++));
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v12);
      }

      ++v7;
    }

    while (v7 != var1);
  }
}

- (void)dealloc
{
  graph = self->graph;
  if (graph->var1)
  {
    v4 = 0;
    do
    {
      vertex_free(graph->var0[v4++]);
    }

    while (v4 < graph->var1);
  }

  free(graph->var0);
  free(graph);
  v5.receiver = self;
  v5.super_class = PSDependencyResolver;
  [(PSDependencyResolver *)&v5 dealloc];
}

- (uint64_t)initWithVertices:withParentToEdgeFetcher:withChildToEdgeFetcher:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  *v1 = 0;
  v2 = asprintf(v1, "OOM");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_2(&dword_25EC85000, v5, v6, "%s:%d OOM", v7, v8, v9, v10);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2_0(&dword_25EC85000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSDependencyResolver initWithVertices:v20 withParentToEdgeFetcher:? withChildToEdgeFetcher:?];
}

- (uint64_t)initWithVertices:withParentToEdgeFetcher:withChildToEdgeFetcher:.cold.2()
{
  OUTLINED_FUNCTION_8_0();
  *v1 = 0;
  v2 = asprintf(v1, "OOM");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_2(&dword_25EC85000, v5, v6, "%s:%d OOM", v7, v8, v9, v10);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2_0(&dword_25EC85000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSDependencyResolver initWithVertices:v20 withParentToEdgeFetcher:? withChildToEdgeFetcher:?];
}

- (uint64_t)initWithVertices:withParentToEdgeFetcher:withChildToEdgeFetcher:.cold.3()
{
  OUTLINED_FUNCTION_8_0();
  *v1 = 0;
  v2 = asprintf(v1, "OOM");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_2(&dword_25EC85000, v5, v6, "%s:%d OOM", v7, v8, v9, v10);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2_0(&dword_25EC85000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSDependencyResolver initWithVertices:v20 withParentToEdgeFetcher:? withChildToEdgeFetcher:?];
}

- (uint64_t)initWithVertices:withParentToEdgeFetcher:withChildToEdgeFetcher:.cold.4()
{
  OUTLINED_FUNCTION_8_0();
  *v1 = 0;
  v2 = asprintf(v1, "OOM");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_2(&dword_25EC85000, v5, v6, "%s:%d OOM", v7, v8, v9, v10);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2_0(&dword_25EC85000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSDependencyResolver initWithVertices:v20 withParentToEdgeFetcher:? withChildToEdgeFetcher:?];
}

- (uint64_t)initWithVertices:withParentToEdgeFetcher:withChildToEdgeFetcher:.cold.5()
{
  OUTLINED_FUNCTION_8_0();
  *v1 = 0;
  v2 = asprintf(v1, "OOM");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_2(&dword_25EC85000, v5, v6, "%s:%d OOM", v7, v8, v9, v10);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2_0(&dword_25EC85000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [PSDependencyResolver initWithVertices:v20 withParentToEdgeFetcher:? withChildToEdgeFetcher:?];
}

- (void)initWithVertices:withParentToEdgeFetcher:withChildToEdgeFetcher:.cold.6()
{
  OUTLINED_FUNCTION_8_0();
  *v1 = 0;
  v2 = asprintf(v1, "OOM");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_2(&dword_25EC85000, v5, v6, "%s:%d OOM", v7, v8, v9, v10);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2_0(&dword_25EC85000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
  vertex_new_cold_1();
}

@end