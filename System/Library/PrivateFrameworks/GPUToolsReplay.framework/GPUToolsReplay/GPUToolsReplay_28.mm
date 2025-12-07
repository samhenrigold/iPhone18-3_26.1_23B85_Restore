id _ObjectArrayWithMap(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  for (i = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a2]; a2; --a2)
  {
    v7 = *a1++;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
    v9 = [v5 objectForKeyedSubscript:v8];

    if (v9)
    {
      [i addObject:v9];
    }
  }

  v10 = [i copy];

  return v10;
}

void GTShaderDebuggerJITResources(void *a1)
{
  v1 = a1;
  v184 = *MEMORY[0x277D85DE8];
  v123 = *(*a1 + 8);
  v122 = [v123 defaultDevice];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v141 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = v1[3];
  v4 = v1[16];
  v130 = v1;
  v125 = v2;
  if ([v3 count] && objc_msgSend(v4, "count"))
  {
    [*(*v1 + 8) defaultDevice];
    v139 = v137 = v3;
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v166 objects:&v170 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v167;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v167 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v166 + 1) + 8 * i);
          v11 = [v5 objectForKeyedSubscript:v10];
          v12 = [v11 firstObject];
          v13 = [v12 unsignedLongLongValue];

          if (v13)
          {
            v14 = [v11 lastObject];
            v15 = [v14 unsignedLongLongValue];

            if (v15)
            {
              *&v159 = MEMORY[0x277D85DD0];
              *(&v159 + 1) = 3221225472;
              *&v160 = ___MakeBytesBufferReplacementsForPipeline_block_invoke;
              *(&v160 + 1) = &unk_2796589C8;
              *&v161 = v10;
              v16 = [v4 gt_firstObjectPassingTest:&v159];
              if (v16)
              {
                v17 = [v139 newBufferWithBytes:v13 length:v15 options:0];
                [v141 setObject:v17 forKeyedSubscript:v10];
              }
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v166 objects:&v170 count:16];
      }

      while (v7);
    }

    v1 = v130;
    v2 = v125;
    v3 = v137;
  }

  v18 = [v141 copy];

  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v150 objects:v165 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v151;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v151 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v150 + 1) + 8 * j);
        v25 = [v19 objectForKeyedSubscript:v24];
        [v2 setObject:v25 forKeyedSubscript:v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v150 objects:v165 count:16];
    }

    while (v21);
  }

  v124 = v19;

  v142 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = v1[4];
  v27 = v1[16];
  v28 = *(v1 + 72);
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v29 = [v26 countByEnumeratingWithState:&v159 objects:&v170 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v160;
    v144 = v28 & 1;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v160 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = *(*(&v159 + 1) + 8 * k);
        v34 = [v26 objectForKeyedSubscript:v33];
        v35 = [v34 unsignedLongLongValue];

        if (!v35)
        {
          v158[0] = MEMORY[0x277D85DD0];
          v158[1] = 3221225472;
          v158[2] = ___MakeDummyBufferReplacementsForPipeline_block_invoke;
          v158[3] = &unk_2796589C8;
          v158[4] = v33;
          v36 = [v27 gt_firstObjectPassingTest:v158];
          v37 = v36;
          if (v36)
          {
            v38 = [v36 objectForKeyedSubscript:@"used"];
            v39 = [v38 BOOLValue];

            if (!v39 || v144)
            {
              v40 = [v37 objectForKeyedSubscript:@"index"];
              [v142 addObject:v40];
            }
          }
        }
      }

      v30 = [v26 countByEnumeratingWithState:&v159 objects:&v170 count:16];
    }

    while (v30);
  }

  if ([v142 count])
  {
    v41 = v130;
    v42 = *(*v130 + 8);
    v43 = [v42 defaultDevice];
    v44 = [v43 newBufferWithLength:1024 options:0];
    if (v44)
    {
      v45 = v44;
      v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v154 = 0u;
      v155 = 0u;
      v156 = 0u;
      v157 = 0u;
      v47 = v142;
      v48 = [v47 countByEnumeratingWithState:&v154 objects:&v166 count:16];
      if (v48)
      {
        v49 = v48;
        v50 = *v155;
        do
        {
          for (m = 0; m != v49; ++m)
          {
            if (*v155 != v50)
            {
              objc_enumerationMutation(v47);
            }

            [v46 setObject:v45 forKeyedSubscript:*(*(&v154 + 1) + 8 * m)];
          }

          v49 = [v47 countByEnumeratingWithState:&v154 objects:&v166 count:16];
        }

        while (v49);
      }

      v52 = [v46 copy];
      v53 = v124;
    }

    else
    {
      v52 = 0;
      v53 = v124;
    }

    v54 = v125;
  }

  else
  {
    v52 = 0;
    v41 = v130;
    v53 = v124;
    v54 = v125;
  }

  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v55 = v52;
  v56 = [v55 countByEnumeratingWithState:&v146 objects:v164 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v147;
    do
    {
      for (n = 0; n != v57; ++n)
      {
        if (*v147 != v58)
        {
          objc_enumerationMutation(v55);
        }

        v60 = *(*(&v146 + 1) + 8 * n);
        v61 = [v53 objectForKeyedSubscript:v60];

        if (!v61)
        {
          v62 = [v55 objectForKeyedSubscript:v60];
          [v54 setObject:v62 forKeyedSubscript:v60];
        }
      }

      v57 = [v55 countByEnumeratingWithState:&v146 objects:v164 count:16];
    }

    while (v57);
  }

  v63 = [v54 copy];
  v64 = v41[21];
  v41[21] = v63;

  v131 = *v41[11];
  v132 = *(**v41 + 40);
  v65 = v41[16];
  v66 = v41[7];
  v127 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v67 = v66;
  v140 = [v67 countByEnumeratingWithState:&v159 objects:&v166 count:16];
  if (v140)
  {
    v138 = *v160;
    v128 = v67;
    v129 = v55;
    v126 = v65;
    do
    {
      for (ii = 0; ii != v140; ++ii)
      {
        if (*v160 != v138)
        {
          objc_enumerationMutation(v67);
        }

        v69 = *(*(&v159 + 1) + 8 * ii);
        v70 = [v67 objectForKeyedSubscript:v69];
        v71 = [v70 unsignedLongLongValue];

        if (v71)
        {
          *&v154 = MEMORY[0x277D85DD0];
          *(&v154 + 1) = 3221225472;
          *&v155 = ___MakeVisibleFunctionTablesForPipeline_block_invoke;
          *(&v155 + 1) = &unk_2796589C8;
          v135 = v69;
          *&v156 = v69;
          v72 = [v65 gt_firstObjectPassingTest:&v154];
          if (v72)
          {
            Object = GTMTLSMContext_getObject(*v132, v71, v131);
            if (Object)
            {
              v74 = Object;
              if (*Object == 83)
              {
                v75 = v65;
                v133 = v72;
                v76 = v41;
                v77 = [v41[12] mutableCopy];
                v78 = v74[14];
                v79 = objc_alloc_init(MEMORY[0x277CD70A8]);
                [v79 setFunctionCount:*v78];
                v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v74[17]];
                v81 = [v77 objectForKeyedSubscript:v80];

                v143 = v77;
                if (v81)
                {
                  v82 = [v81 newVisibleFunctionTableWithDescriptor:v79 stage:*(v74 + 176)];
                  v41 = v76;
                  v65 = v75;
                }

                else
                {
                  v83 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v74[16]];
                  v84 = [v77 objectForKeyedSubscript:v83];

                  if (v84)
                  {
                    v85 = [v84 newVisibleFunctionTableWithDescriptor:v79];
                  }

                  else
                  {
                    v85 = 0;
                  }

                  v41 = v76;

                  v55 = v129;
                  v65 = v75;
                  v82 = v85;
                }

                v87 = v82;
                if (v82)
                {
                  v88 = **v41;
                  v145 = *v41[11];
                  newpool = 0;
                  apr_pool_create_ex(&newpool, 0, 0, v86);
                  v170 = 0u;
                  v171 = 0;
                  v183 = 0;
                  v182 = 0u;
                  v181 = 0u;
                  v179 = 0u;
                  v180 = 0u;
                  v177 = 0u;
                  v178 = 0u;
                  v175 = 0u;
                  v173 = 0u;
                  v174 = 0u;
                  LODWORD(v170) = 83;
                  v172 = -1;
                  WORD5(v177) = 2;
                  v176 = 0xFFFFFFFFFFFFFFFFLL;
                  v183 = *v74[14];
                  v89 = 8 * v183;
                  v90 = apr_palloc(newpool, 8 * v183);
                  v91 = v90;
                  if (v90)
                  {
                    bzero(v90, v89);
                  }

                  *(&v182 + 1) = v91;
                  v92 = *(v88 + 8);
                  v158[0] = v74[1];
                  v93 = *(*(*find_entry(v92, v158, 8uLL, 0) + 32) + 32);
                  v136 = v87;
                  if (v93)
                  {
                    v94 = 0;
                    while (1)
                    {
                      v95 = atomic_load((v93 + 4));
                      v96 = v94 + (v95 >> 6) - 1;
                      if (v96 > 0)
                      {
                        break;
                      }

                      v93 = *(v93 + 40);
                      v94 = v96;
                      if (!v93)
                      {
                        v94 = v96;
                        goto LABEL_84;
                      }
                    }

                    v96 = 0;
LABEL_84:
                    v97 = v94 | (v96 << 32);
                  }

                  else
                  {
                    v97 = 0;
                  }

                  while (v93)
                  {
                    v98 = v93 + 64 + ((HIDWORD(v97) - v97) << 6);
                    if ((*(v98 + 15) & 8) == 0 || *v98 >= v145)
                    {
                      break;
                    }

                    GTMTLSMVisibleFunctionTableStateful_processTraceFuncWithMap(&v170, *(v88 + 16), v98);
                    v99 = atomic_load((v93 + 4));
                    v100 = v97 + (v99 >> 6);
                    v101 = (HIDWORD(v97) + 1);
                    v97 = (v101 << 32) | v97;
                    if (v101 == v100 - 1)
                    {
                      v97 = (v101 << 32) | v101;
                      v93 = *(v93 + 40);
                    }
                  }

                  v72 = v133;
                  if (v183)
                  {
                    for (jj = 0; v183 > jj; ++jj)
                    {
                      v103 = *(*(&v182 + 1) + 8 * jj);
                      if (!v103)
                      {
                        continue;
                      }

                      v104 = GTMTLSMContext_getObject(**(v88 + 40), *(*(&v182 + 1) + 8 * jj), v145);
                      if (!v104)
                      {
                        continue;
                      }

                      v105 = v104;
                      v106 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v103];
                      v107 = [v143 objectForKeyedSubscript:v106];
                      if (v107)
                      {
                        v108 = v107;
                      }

                      else
                      {
                        v109 = v143;
                        v110 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v105[6]];
                        v108 = [v109 objectForKeyedSubscript:v110];

                        v134 = v108;
                        if (v108)
                        {
                          v111 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v105[9]];
                          v112 = [v109 objectForKeyedSubscript:v111];

                          if (v112)
                          {
                            v113 = *(v105 + 96);
                            v114 = v134;
                            v108 = [v112 functionHandleWithFunction:v134 stage:v113];
                          }

                          else
                          {
                            v115 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v105[8]];
                            v116 = [v109 objectForKeyedSubscript:v115];

                            if (v116)
                            {
                              v108 = [v116 functionHandleWithFunction:v134];
                            }

                            else
                            {
                              v108 = 0;
                            }

                            v114 = v134;
                          }
                        }

                        else
                        {
                          v114 = 0;
                        }

                        v72 = v133;
                        if (!v108)
                        {
                          v108 = [*(*v130 + 8) functionHandleForKey:v103];
                          if (!v108)
                          {
                            continue;
                          }

                          goto LABEL_107;
                        }
                      }

                      v117 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v103];
                      [v143 setObject:v108 forKeyedSubscript:v117];

LABEL_107:
                      [v136 setFunction:v108 atIndex:jj];
                    }
                  }

                  apr_pool_destroy(newpool);
                  v118 = [v143 copy];
                  v41 = v130;
                  v119 = v130[12];
                  v130[12] = v118;

                  v87 = v136;
                  [v127 setObject:v136 forKeyedSubscript:v135];
                  v55 = v129;
                  v65 = v126;
                }

                else
                {

                  v72 = v133;
                }

                v67 = v128;
              }
            }
          }
        }
      }

      v140 = [v67 countByEnumeratingWithState:&v159 objects:&v166 count:16];
    }

    while (v140);
  }

  v120 = [v127 copy];
  v121 = v41[22];
  v41[22] = v120;
}

uint64_t GTShaderDebuggerEncodeResourcesRender(void *a1, void *a2)
{
  v113 = *MEMORY[0x277D85DE8];
  v4 = a1[12];
  v5 = *(*a1 + 11360);
  if (v5 - 95) <= 0xA && ((0x409u >> (v5 - 95)))
  {
    v6 = 112;
LABEL_6:
    v7 = *(*a1 + 192 + v6);
    goto LABEL_7;
  }

  if (v5)
  {
    v6 = 8600;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
  v9 = [v4 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = *(*a1 + 8);
    v11 = v10;
    if (*(*a1 + 11360))
    {
      v12 = *(*a1 + 200);
    }

    else
    {
      v12 = 0;
    }

    v14 = [v10 renderCommandEncoderForKey:v12];
    v13 = v14 != 0;
    if (!v14)
    {
      if (a2)
      {
        *a2 = GTShaderDebuggerMakeError(1u, @"Internal error: Failed to resolve render encoder", 0, 0, 0);
      }

      goto LABEL_99;
    }

    v15 = a1[18];
    v16 = [a1[24] objectForKeyedSubscript:@"ROI"];
    v17 = [v16 objectForKeyedSubscript:@"Type"];
    v18 = [v17 integerValue];

    if (v18 <= 3)
    {
      if (v18 != 1)
      {
        if (v18 == 2)
        {
          v72 = v14 != 0;
          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v14 setFragmentBuffer:a1[23] offset:0 atIndex:v15];
          }

          v71 = v11;
          v19 = a1[21];
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v52 = [v19 countByEnumeratingWithState:&v93 objects:v110 count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v94;
            do
            {
              for (i = 0; i != v53; ++i)
              {
                if (*v94 != v54)
                {
                  objc_enumerationMutation(v19);
                }

                v56 = *(*(&v93 + 1) + 8 * i);
                v57 = [v19 objectForKeyedSubscript:{v56, v71}];
                [v14 setFragmentBuffer:v57 offset:0 atIndex:{objc_msgSend(v56, "unsignedIntegerValue")}];
              }

              v53 = [v19 countByEnumeratingWithState:&v93 objects:v110 count:16];
            }

            while (v53);
          }

          v26 = a1[22];
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v58 = [v26 countByEnumeratingWithState:&v89 objects:v109 count:16];
          if (v58)
          {
            v59 = v58;
            v60 = *v90;
            do
            {
              for (j = 0; j != v59; ++j)
              {
                if (*v90 != v60)
                {
                  objc_enumerationMutation(v26);
                }

                v62 = *(*(&v89 + 1) + 8 * j);
                v63 = [v26 objectForKeyedSubscript:{v62, v71}];
                [v14 setFragmentVisibleFunctionTable:v63 atBufferIndex:{objc_msgSend(v62, "unsignedIntegerValue")}];
              }

              v59 = [v26 countByEnumeratingWithState:&v89 objects:v109 count:16];
            }

            while (v59);
          }

          goto LABEL_86;
        }

        if (v18 == 3)
        {
          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v14 setTileBuffer:a1[23] offset:0 atIndex:v15];
          }

          v72 = v14 != 0;
          v71 = v11;
          v19 = a1[21];
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v20 = [v19 countByEnumeratingWithState:&v85 objects:v108 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v86;
            do
            {
              for (k = 0; k != v21; ++k)
              {
                if (*v86 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v85 + 1) + 8 * k);
                v25 = [v19 objectForKeyedSubscript:{v24, v71}];
                [v14 setTileBuffer:v25 offset:0 atIndex:{objc_msgSend(v24, "unsignedIntegerValue")}];
              }

              v21 = [v19 countByEnumeratingWithState:&v85 objects:v108 count:16];
            }

            while (v21);
          }

          v26 = a1[22];
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v27 = [v26 countByEnumeratingWithState:&v81 objects:v107 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v82;
            do
            {
              for (m = 0; m != v28; ++m)
              {
                if (*v82 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v81 + 1) + 8 * m);
                v32 = [v26 objectForKeyedSubscript:{v31, v71}];
                [v14 setTileVisibleFunctionTable:v32 atBufferIndex:{objc_msgSend(v31, "unsignedIntegerValue")}];
              }

              v28 = [v26 countByEnumeratingWithState:&v81 objects:v107 count:16];
            }

            while (v28);
          }

LABEL_86:

          v11 = v71;
LABEL_97:
          v13 = v72;
          goto LABEL_98;
        }

LABEL_69:
        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_shaderDebugger_internal.m", "GTShaderDebuggerEncodeResourcesRender", 4209, 4, "Unreachable");
LABEL_98:
        [v14 useResource:a1[23] usage:{2, v71}];
        [v14 setRenderPipelineState:v9];
LABEL_99:

        goto LABEL_100;
      }

LABEL_40:
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v14 setVertexBuffer:a1[23] offset:0 atIndex:v15];
      }

      v72 = v14 != 0;
      v71 = v11;
      v19 = a1[21];
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v33 = [v19 countByEnumeratingWithState:&v101 objects:v112 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v102;
        do
        {
          for (n = 0; n != v34; ++n)
          {
            if (*v102 != v35)
            {
              objc_enumerationMutation(v19);
            }

            v37 = *(*(&v101 + 1) + 8 * n);
            v38 = [v19 objectForKeyedSubscript:{v37, v71}];
            [v14 setVertexBuffer:v38 offset:0 atIndex:{objc_msgSend(v37, "unsignedIntegerValue")}];
          }

          v34 = [v19 countByEnumeratingWithState:&v101 objects:v112 count:16];
        }

        while (v34);
      }

      v26 = a1[22];
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v39 = [v26 countByEnumeratingWithState:&v97 objects:v111 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v98;
        do
        {
          for (ii = 0; ii != v40; ++ii)
          {
            if (*v98 != v41)
            {
              objc_enumerationMutation(v26);
            }

            v43 = *(*(&v97 + 1) + 8 * ii);
            v44 = [v26 objectForKeyedSubscript:{v43, v71}];
            [v14 setVertexVisibleFunctionTable:v44 atBufferIndex:{objc_msgSend(v43, "unsignedIntegerValue")}];
          }

          v40 = [v26 countByEnumeratingWithState:&v97 objects:v111 count:16];
        }

        while (v40);
      }

      goto LABEL_86;
    }

    switch(v18)
    {
      case 6:
        v72 = v14 != 0;
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v14 setMeshBuffer:a1[23] offset:0 atIndex:v15];
        }

        v45 = a1[21];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v46 = [v45 countByEnumeratingWithState:&v77 objects:v106 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v78;
          do
          {
            for (jj = 0; jj != v47; ++jj)
            {
              if (*v78 != v48)
              {
                objc_enumerationMutation(v45);
              }

              v50 = *(*(&v77 + 1) + 8 * jj);
              v51 = [v45 objectForKeyedSubscript:v50];
              [v14 setMeshBuffer:v51 offset:0 atIndex:{objc_msgSend(v50, "unsignedIntegerValue")}];
            }

            v47 = [v45 countByEnumeratingWithState:&v77 objects:v106 count:16];
          }

          while (v47);
        }

        break;
      case 5:
        v72 = v14 != 0;
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v14 setObjectBuffer:a1[23] offset:0 atIndex:v15];
        }

        v45 = a1[21];
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v64 = [v45 countByEnumeratingWithState:&v73 objects:v105 count:16];
        if (v64)
        {
          v65 = v64;
          v66 = *v74;
          do
          {
            for (kk = 0; kk != v65; ++kk)
            {
              if (*v74 != v66)
              {
                objc_enumerationMutation(v45);
              }

              v68 = *(*(&v73 + 1) + 8 * kk);
              v69 = [v45 objectForKeyedSubscript:v68];
              [v14 setObjectBuffer:v69 offset:0 atIndex:{objc_msgSend(v68, "unsignedIntegerValue")}];
            }

            v65 = [v45 countByEnumeratingWithState:&v73 objects:v105 count:16];
          }

          while (v65);
        }

        break;
      case 4:
        goto LABEL_40;
      default:
        goto LABEL_69;
    }

    goto LABEL_97;
  }

  if (a2)
  {
    GTShaderDebuggerMakeError(1u, @"Internal error: Failed to resolve render pipeline", 0, 0, 0);
    *a2 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

LABEL_100:

  return v13;
}

uint64_t GTShaderDebuggerEncodeResourcesCompute(void *a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a1[12];
  v5 = *(*a1 + 11360);
  if (v5 - 95) <= 0xA && ((0x409u >> (v5 - 95)))
  {
    v6 = 56;
LABEL_6:
    v7 = *(*a1 + 192 + v6);
    goto LABEL_7;
  }

  if (v5)
  {
    v6 = 64;
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v7];
  v9 = [v4 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = *(*a1 + 8);
    v11 = v10;
    if (*(*a1 + 11360))
    {
      v12 = *(*a1 + 200);
    }

    else
    {
      v12 = 0;
    }

    v14 = [v10 computeCommandEncoderForKey:v12];
    v15 = v14;
    v13 = v14 != 0;
    if (v14)
    {
      if (a1[18] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v14 setBuffer:a1[23] offset:0 atIndex:?];
      }

      v32 = v11;
      v16 = a1[21];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v17 = [v16 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v38;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v38 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v37 + 1) + 8 * i);
            v22 = [v16 objectForKeyedSubscript:v21];
            [v15 setBuffer:v22 offset:0 atIndex:{objc_msgSend(v21, "unsignedIntegerValue")}];
          }

          v18 = [v16 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v18);
      }

      v31 = v13;
      v23 = a1[22];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v24 = [v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v34;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v34 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v33 + 1) + 8 * j);
            v29 = [v23 objectForKeyedSubscript:v28];
            [v15 setVisibleFunctionTable:v29 atBufferIndex:{objc_msgSend(v28, "unsignedIntegerValue")}];
          }

          v25 = [v23 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v25);
      }

      [v15 useResource:a1[23] usage:2];
      [v15 setComputePipelineState:v9];

      v11 = v32;
      v13 = v31;
    }

    else if (a2)
    {
      *a2 = GTShaderDebuggerMakeError(1u, @"Internal error: Failed to resolve compute encoder", 0, 0, 0);
    }
  }

  else if (a2)
  {
    GTShaderDebuggerMakeError(1u, @"Internal error: Failed to resolve compute pipeleine", 0, 0, 0);
    *a2 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t GTShaderDebuggerExecuteEncoder(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 80);
  if (v3)
  {
    v5 = *(v2 + 2840);
    v6 = v2[1];
    v7 = v6;
    if (*(v2 + 2840))
    {
      v8 = v2[25];
    }

    else
    {
      v8 = 0;
    }

    if (v5 == 70)
    {
      v10 = [v6 renderCommandEncoderForKey:v8];
      v11 = *(v3 + 320);
      v12 = [v7 executeIndirectCommandBufferMap];
      v9 = DYMTLDrawRenderCommandEncoder(v10, v3, v11, v3 + 216, v12);

      v7 = v12;
    }

    else
    {
      v10 = [v6 computeCommandEncoderForKey:v8];
      v9 = DYMTLDispatchComputeCommandEncoder(v10, v3, *(v3 + 320));
    }

    if (a2 && (v9 & 1) == 0)
    {
      GTShaderDebuggerMakeError(1u, @"Internal error: Problem encountered during execution", 0, 0, 0);
      *a2 = v9 = 0;
    }
  }

  else
  {
    GTMTLReplayController_defaultDispatchFunction(*a1, *(a1 + 88));
    return 1;
  }

  return v9;
}

uint64_t GTShaderDebuggerValidateUserComputeDispatch(void *a1, void *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 11360);
  if (v5 == 70)
  {
    v6 = [*(v4 + 8) renderPipelineStateForKey:*(v4 + 8792)];
    v15 = [v6 maxTotalThreadsPerThreadgroup];
    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = v15;
    v17 = a1[11];
    if (*(v17 + 8) != -16137)
    {
      goto LABEL_25;
    }

    v18 = GTTraceFunc_argumentBytesWithMap(v17, *(v17 + 13), *(**a1 + 16));
    v19 = *(v18 + 1);
    v20 = *(v18 + 2);
    v21 = *(v18 + 3);
    v22 = v20 * v19 * v21;
    if (!v22)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dispatched total threads per tile (width(%llu) * height(%llu) * depth(%llu)) must not be 0", v19, v20, v21];
      if (a2)
      {
        v24 = @"Failed to launch tile kernel: Dispatched total threads per tile is 0";
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    if (v22 <= v16)
    {
      goto LABEL_25;
    }

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dispatched total threads per tile (%llu: (width(%llu) * height(%llu) * depth(%llu))) must not be greater than the pipeline's maximum total threads per threadgroup (%llu)", v20 * v19 * v21, v19, v20, v21, v16];
    if (!a2)
    {
      goto LABEL_31;
    }

    v24 = @"Failed to launch tile kernel: Maximum total threads per threadgroup size limit exceeded";
    goto LABEL_30;
  }

  if (v5 == 28)
  {
    v6 = [*(v4 + 8) computePipelineStateForKey:*(v4 + 256)];
    v7 = [v6 maxTotalThreadsPerThreadgroup];
    if (!v7)
    {
      goto LABEL_25;
    }

    v8 = v7;
    v9 = a1[11];
    v10 = *(**a1 + 16);
    v11 = *(v9 + 8);
    if (v11 == -16327)
    {
      v12 = 48;
      v13 = 40;
      v14 = 32;
LABEL_20:
      v31 = GTTraceFunc_argumentBytesWithMap(v9, *(v9 + 13), v10);
      v28 = *&v31[v14];
      v29 = *&v31[v13];
      v30 = *&v31[v12];
LABEL_21:
      v32 = v29 * v30 * v28;
      if (!v32)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dispatched total threads per threadgroup (width(%llu) * height(%llu) * depth(%llu)) must not be 0", v28, v29, v30];
        if (a2)
        {
          v24 = @"Failed to launch compute kernel: Dispatched total threads per threadgroup is 0";
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if (v32 > v8)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dispatched total threads per threadgroup (%llu: (width(%llu) * height(%llu) * depth(%llu))) must not be greater than the pipeline's maximum total threads per threadgroup (%llu)", v29 * v30 * v28, v28, v29, v30, v8];
        if (a2)
        {
          v24 = @"Failed to launch compute kernel: Maximum total threads per threadgroup size limit exceeded";
          goto LABEL_30;
        }

LABEL_31:

        v25 = 0;
        goto LABEL_32;
      }

LABEL_25:
      v25 = 1;
LABEL_32:

      return v25;
    }

    if (v11 != -16078)
    {
      if (v11 != -16220)
      {
        goto LABEL_25;
      }

      v12 = 40;
      v13 = 32;
      v14 = 24;
      goto LABEL_20;
    }

    v26 = GTTraceFunc_argumentBytesWithMap(v9, *(v9 + 13), v10);
    v27 = *(v26 + 1);
    v28 = *(v26 + 4);
    v29 = *(v26 + 5);
    v30 = *(v26 + 6);
    if (v27 == -1 || *(v26 + 3) * v27 * *(v26 + 2))
    {
      goto LABEL_21;
    }

    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dispatched total threads per grid (width(%llu) * height(%llu) * depth(%llu)) must not be 0", v28, v29, v30];
    if (!a2)
    {
      goto LABEL_31;
    }

    v24 = @"Failed to launch compute kernel: Dispatched total threads per grid size is 0";
LABEL_30:
    *a2 = GTShaderDebuggerMakeError(4u, v24, v23, 0, 0);
    goto LABEL_31;
  }

  return 1;
}

BOOL GTShaderDebuggerValidateUserEncoderBindings(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 128);
  if ([v4 count])
  {
    v25 = a2;
    v27 = *(a1 + 24);
    v41 = *(a1 + 32);
    v40[0] = &unk_2860D6920;
    v40[1] = &unk_2860D6938;
    v40[2] = &unk_2860D6950;
    v42 = *(a1 + 48);
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:v40 count:3];
    v38[0] = &unk_2860D6920;
    v38[1] = &unk_2860D6938;
    v39[0] = @"buffer";
    v39[1] = @"texture";
    v38[2] = &unk_2860D6950;
    v39[2] = @"sampler";
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = @"used";
      v8 = *v34;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:v7];
          v12 = [v11 BOOLValue];

          if (v12)
          {
            v13 = [v10 objectForKeyedSubscript:@"type"];
            v14 = [v31 objectForKeyedSubscript:v13];
            if (v14)
            {
              v15 = v7;
              v16 = [v10 objectForKeyedSubscript:@"index"];
              v17 = [v14 objectForKeyedSubscript:v16];
              if (![v17 unsignedIntegerValue])
              {
                if ([v13 integerValue] || (objc_msgSend(v27, "objectForKeyedSubscript:", v16), v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
                {
                  v30 = [v29 objectForKeyedSubscript:v13];
                  v18 = [v10 objectForKeyedSubscript:@"name"];
                  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Function argument '%@' does not have a valid %@ binding at index '%@'", v18, v30, v16];
                  [v28 addObject:v19];
                }
              }

              v7 = v15;
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v6);
    }

    v21 = [v28 count];
    v22 = v21 == 0;
    v4 = v26;
    if (v21)
    {
      v23 = [v28 componentsJoinedByString:@"\n"];
      if (v25)
      {
        *v25 = GTShaderDebuggerMakeError(4u, v23, @"Ensure all function arguments have valid resource bindings", 0, 0);
      }
    }
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

uint64_t GTShaderDebuggerMakeTraceBuffer(uint64_t a1, void *a2)
{
  v4 = [*(*a1 + 8) defaultDevice];
  v5 = [v4 maxBufferLength];
  v6 = v5;
  if (v5 >= 0x10000000)
  {
    v7 = 0x10000000;
  }

  else
  {
    v7 = v5;
  }

  v8 = [*(a1 + 192) objectForKeyedSubscript:@"Options"];
  v9 = [v8 objectForKeyedSubscript:@"TraceBufferSize"];
  v10 = [v9 unsignedIntegerValue];

  if (v6 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v11 >= 0xFFFFFFFF)
  {
    v11 = 0xFFFFFFFFLL;
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  v13 = [v4 newBufferWithLength:v12 options:0];
  v14 = v13;
  if (v13)
  {
    v15 = *(a1 + 160);
    v16 = [v13 contents];
    *v16 = 1;
    *(v16 + 4) = [v14 length];
    v17 = [*(a1 + 192) objectForKeyedSubscript:@"ROI"];
    v18 = [(__CFString *)v17 objectForKeyedSubscript:@"Type"];
    v19 = [v18 integerValue];

    if (v19 > 3)
    {
      if (v19 != 4)
      {
        if (v19 == 5)
        {
          v48 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionX"];
          v20 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionY"];
          v21 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionZ"];
          v49 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionX"];
          v72 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionY"];
          v50 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionZ"];
          *&v51 = -1;
          *(&v51 + 1) = -1;
          *(v16 + 12) = v51;
          *(v16 + 28) = v51;
          *(v16 + 44) = -1;
          v73 = v48;
          *(v16 + 16) = [v48 unsignedIntValue];
          *(v16 + 20) = [v20 unsignedIntValue];
          *(v16 + 24) = [v21 unsignedIntValue];
          *(v16 + 32) = [v49 unsignedIntValue];
          *(v16 + 36) = [v72 unsignedIntValue];
          *(v16 + 40) = [v50 unsignedIntValue];
          *(v16 + 8) = 48;

          goto LABEL_54;
        }

        if (v19 == 6)
        {
          v73 = [(__CFString *)v17 objectForKeyedSubscript:@"AmplificationID"];
          v70 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionX"];
          v21 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionY"];
          v65 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionZ"];
          v63 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionX"];
          v67 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionY"];
          v27 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionZ"];
          v62 = [(__CFString *)v17 objectForKeyedSubscript:@"ObjectThreadgroupPosX"];
          v61 = [(__CFString *)v17 objectForKeyedSubscript:@"ObjectThreadgroupPosY"];
          v60 = [(__CFString *)v17 objectForKeyedSubscript:@"ObjectThreadgroupPosZ"];
          *&v28 = -1;
          *(&v28 + 1) = -1;
          *(v16 + 12) = v28;
          *(v16 + 28) = v28;
          *(v16 + 44) = v28;
          *(v16 + 60) = -1;
          *(v16 + 16) = [v70 unsignedIntValue];
          *(v16 + 20) = [v21 unsignedIntValue];
          *(v16 + 24) = [v65 unsignedIntValue];
          *(v16 + 32) = [v63 unsignedIntValue];
          *(v16 + 36) = [v67 unsignedIntValue];
          v29 = v27;
          *(v16 + 40) = [v27 unsignedIntValue];
          *(v16 + 48) = [v62 unsignedIntValue];
          *(v16 + 52) = [v61 unsignedIntValue];
          *(v16 + 56) = [v60 unsignedIntValue];
          *(v16 + 64) = [v73 unsignedIntValue];
          *(v16 + 8) = 68;

          v20 = v70;
          goto LABEL_54;
        }

LABEL_35:
        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_shaderDebugger_internal.m", "GTShaderDebuggerMakeTraceBuffer", 4898, 4, "Unreachable");
        if (a2)
        {
          v25 = @"Error encountered while setting up GPU data buffer";
          goto LABEL_20;
        }

LABEL_37:
        v26 = 0;
        goto LABEL_55;
      }

      v73 = [(__CFString *)v17 objectForKeyedSubscript:@"InstanceID"];
      v20 = [(__CFString *)v17 objectForKeyedSubscript:@"AmplificationID"];
      v21 = [(__CFString *)v17 objectForKeyedSubscript:@"PatchIDs"];
      if (v15)
      {
        *(v16 + 12) = -1;
        *(v16 + 20) = -1;
        *(v16 + 12) = [v73 unsignedIntValue];
        *(v16 + 16) = [v20 unsignedIntValue];
        v34 = [v21 count];
        *(v16 + 20) = v34;
        if (!v34)
        {
          v33 = 24;
          goto LABEL_53;
        }

        v71 = v20;
        v35 = 0;
        do
        {
          v36 = [v21 objectAtIndexedSubscript:v35];
          *(v16 + 24 + 4 * v35) = [v36 unsignedIntValue];

          ++v35;
          v37 = *(v16 + 20);
        }

        while (v35 < v37);
        v33 = 4 * v37 + 24;
        goto LABEL_50;
      }

      *(v16 + 12) = -1;
      *(v16 + 12) = [v73 unsignedIntValue];
      v56 = [v21 count];
      *(v16 + 16) = v56;
      if (v56)
      {
        v71 = v20;
        v57 = 0;
        do
        {
          v58 = [v21 objectAtIndexedSubscript:v57];
          *(v16 + 20 + 4 * v57) = [v58 unsignedIntValue];

          ++v57;
          v55 = *(v16 + 16);
        }

        while (v57 < v55);
        goto LABEL_49;
      }
    }

    else
    {
      if (v19 != 1)
      {
        if (v19 == 2)
        {
          v38 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionX"];
          v39 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionY"];
          v21 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionX"];
          v64 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionY"];
          v40 = [(__CFString *)v17 objectForKeyedSubscript:@"MinSampleID"];
          v66 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxSampleID"];
          v68 = [(__CFString *)v17 objectForKeyedSubscript:@"RenderTargetArrayIndex"];
          *&v41 = -1;
          *(&v41 + 1) = -1;
          *(v16 + 12) = v41;
          *(v16 + 28) = v41;
          *(v16 + 44) = v41;
          *(v16 + 60) = -1;
          v73 = v38;
          [v38 floatValue];
          *(v16 + 16) = v42;
          [v39 floatValue];
          v43 = vdupq_n_s32(0xCE6E6B28);
          v43.i32[0] = *(v16 + 16);
          v43.i32[1] = v44;
          *(v16 + 16) = v43;
          [v21 floatValue];
          *(v16 + 32) = v45;
          [v64 floatValue];
          v46 = vdupq_n_s32(0x4E6E6B28u);
          v46.i32[0] = *(v16 + 32);
          v46.i32[1] = v47;
          *(v16 + 32) = v46;
          *(v16 + 48) = [v40 unsignedIntValue];
          *(v16 + 52) = [v66 unsignedIntValue];
          if (v15 >= 2)
          {
            *(v16 + 56) = [v68 unsignedIntValue];
          }

          *(v16 + 8) = 64;

          v20 = v39;
          goto LABEL_54;
        }

        if (v19 == 3)
        {
          v73 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionX"];
          v20 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionY"];
          v21 = [(__CFString *)v17 objectForKeyedSubscript:@"MinPositionZ"];
          v22 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionX"];
          v69 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionY"];
          v23 = [(__CFString *)v17 objectForKeyedSubscript:@"MaxPositionZ"];
          *&v24 = -1;
          *(&v24 + 1) = -1;
          *(v16 + 12) = v24;
          *(v16 + 28) = v24;
          *(v16 + 44) = -1;
          *(v16 + 16) = [v73 unsignedIntValue];
          *(v16 + 20) = [v20 unsignedIntValue];
          *(v16 + 24) = [v21 unsignedIntValue];
          *(v16 + 32) = [v22 unsignedIntValue];
          *(v16 + 36) = [v69 unsignedIntValue];
          *(v16 + 40) = [v23 unsignedIntValue];
          *(v16 + 8) = 48;

LABEL_54:
          objc_storeStrong((a1 + 184), v14);
          v26 = 1;
          goto LABEL_55;
        }

        goto LABEL_35;
      }

      v73 = [(__CFString *)v17 objectForKeyedSubscript:@"InstanceID"];
      v20 = [(__CFString *)v17 objectForKeyedSubscript:@"AmplificationID"];
      v21 = [(__CFString *)v17 objectForKeyedSubscript:@"VertexIDs"];
      if (v15)
      {
        *(v16 + 12) = -1;
        *(v16 + 20) = -1;
        *(v16 + 12) = [v73 unsignedIntValue];
        v30 = [v21 count];
        *(v16 + 20) = v30;
        if (v30)
        {
          v31 = 0;
          do
          {
            v32 = [v21 objectAtIndexedSubscript:v31];
            *(v16 + 24 + 4 * v31) = [v32 unsignedIntValue];

            ++v31;
          }

          while (v31 < *(v16 + 20));
        }

        *(v16 + 16) = [v20 unsignedIntValue];
        v33 = 4 * *(v16 + 20) + 24;
        goto LABEL_53;
      }

      *(v16 + 12) = -1;
      *(v16 + 12) = [v73 unsignedIntValue];
      v52 = [v21 count];
      *(v16 + 16) = v52;
      if (v52)
      {
        v71 = v20;
        v53 = 0;
        do
        {
          v54 = [v21 objectAtIndexedSubscript:v53];
          *(v16 + 20 + 4 * v53) = [v54 unsignedIntValue];

          ++v53;
          v55 = *(v16 + 16);
        }

        while (v53 < v55);
LABEL_49:
        v33 = 4 * v55 + 20;
LABEL_50:
        v20 = v71;
LABEL_53:
        *(v16 + 8) = v33;
        goto LABEL_54;
      }
    }

    v33 = 20;
    goto LABEL_53;
  }

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to create GPU data buffer [%llu]", v12];
  if (!a2)
  {
    goto LABEL_37;
  }

  v25 = v17;
LABEL_20:
  GTShaderDebuggerMakeError(1u, v25, 0, 0, 0);
  *a2 = v26 = 0;
LABEL_55:

  return v26;
}

id GTShaderDebuggerMakeTraceData(uint64_t a1, void *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 184);
  v5 = [*(a1 + 192) objectForKeyedSubscript:@"ROI"];
  v6 = [v4 contents];
  v7 = [v4 length];
  v8 = [v5 objectForKeyedSubscript:@"Type"];
  v9 = [v8 integerValue];

  if (*v6 == 1)
  {
    v10 = GTFenum_isComputeCall(*(*(a1 + 88) + 8));
    v11 = @"draw";
    if (v10)
    {
      v11 = @"dispatch";
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"No thread execution data for the %@ call", v11];
    if (!a2)
    {
      goto LABEL_26;
    }

    if (v9 == 3)
    {
      v13 = @"Select a different threadgroup to debug and try again";
    }

    else
    {
      v13 = 0;
    }

    if ((*(a1 + 208) & 0x10) != 0)
    {
      v14 = 4;
    }

    else
    {
      v14 = 3;
    }

    v15 = v12;
    goto LABEL_25;
  }

  if (v7 != v6[1])
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Corrupt GPU data buffer [%u:%llu]", v6[1], v7];
    if (!a2)
    {
LABEL_26:

LABEL_27:
      v20 = 0;
      goto LABEL_28;
    }

    if ((*(a1 + 208) & 0x10) != 0)
    {
      v14 = 4;
    }

    else
    {
      v14 = 1;
    }

    v15 = v12;
    v13 = 0;
LABEL_25:
    *a2 = GTShaderDebuggerMakeError(v14, v15, v13, 0, 0);
    goto LABEL_26;
  }

  if (v7 < v6[2])
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPU data buffer limits exceeded [%u]", v6[2]];
    if (a2)
    {
      if ((*(a1 + 208) & 0x10) != 0)
      {
        v17 = 4;
      }

      else
      {
        v17 = 3;
      }

      v24 = @"RequiredTraceBufferSize";
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6[2]];
      v25[0] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      *a2 = GTShaderDebuggerMakeError(v17, v16, 0, 0, v19);
    }

    goto LABEL_27;
  }

  v23 = v9 - 1;
  v22 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&v23 length:4];
  [v22 appendBytes:v6 length:v6[2]];
  v20 = [v22 copy];

LABEL_28:

  return v20;
}

id GTShaderDebuggerMakeResourceMappings(uint64_t **a1)
{
  v186[3] = *MEMORY[0x277D85DE8];
  v2 = (*a1)[1];
  v3 = **a1;
  v126 = *(v3 + 40);
  v127 = v2;
  v125 = *(v3 + 8);
  v128 = *a1[11];
  v151 = 0u;
  v152 = 0u;
  v115 = a1;
  v133 = a1[16];
  if ([v133 count])
  {
    v120 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v121 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v116 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v114 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v185[0] = &unk_2860D6920;
    v185[1] = &unk_2860D6938;
    v186[0] = v121;
    v186[1] = v116;
    v185[2] = &unk_2860D6950;
    v186[2] = v114;
    v130 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v186 forKeys:v185 count:3];
    v183 = *(a1 + 2);
    v182[0] = &unk_2860D6920;
    v182[1] = &unk_2860D6938;
    v182[2] = &unk_2860D6950;
    v184 = a1[6];
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v183 forKeys:v182 count:3];
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    obj = v169 = 0u;
    v118 = [obj countByEnumeratingWithState:&v168 objects:v181 count:16];
    if (v118)
    {
      v117 = *v169;
      do
      {
        for (p = 0; p != v118; p = (p + 1))
        {
          if (*v169 != v117)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v168 + 1) + 8 * p);
          v5 = [obj objectForKeyedSubscript:v4];
          v166 = 0u;
          v167 = 0u;
          v164 = 0u;
          v165 = 0u;
          v6 = [v5 countByEnumeratingWithState:&v164 objects:v180 count:16];
          if (v6)
          {
            v7 = *v165;
            do
            {
              for (i = 0; i != v6; ++i)
              {
                if (*v165 != v7)
                {
                  objc_enumerationMutation(v5);
                }

                v9 = *(*(&v164 + 1) + 8 * i);
                v10 = [v5 objectForKeyedSubscript:v9];
                v11 = [v10 unsignedLongLongValue];

                if (v11)
                {
                  v163[0] = MEMORY[0x277D85DD0];
                  v163[1] = 3221225472;
                  v163[2] = ___GetCurrentEncoderBoundResources_block_invoke;
                  v163[3] = &unk_2796589F0;
                  v163[4] = v4;
                  v163[5] = v9;
                  v12 = [v133 gt_firstObjectPassingTest:v163];
                  if (v12)
                  {
                    v13 = [v130 objectForKeyedSubscript:v4];
                    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
                    [v13 addObject:v14];
                  }
                }
              }

              v6 = [v5 countByEnumeratingWithState:&v164 objects:v180 count:16];
            }

            while (v6);
          }
        }

        v118 = [obj countByEnumeratingWithState:&v168 objects:v181 count:16];
      }

      while (v118);
    }

    v15 = v115[3];
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v159 objects:v179 count:16];
    if (v16)
    {
      v17 = *v160;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v160 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v159 + 1) + 8 * j);
          v158[0] = MEMORY[0x277D85DD0];
          v158[1] = 3221225472;
          v158[2] = ___GetCurrentEncoderBoundResources_block_invoke_2;
          v158[3] = &unk_2796589C8;
          v158[4] = v19;
          v20 = [v133 gt_firstObjectPassingTest:v158];
          if (v20)
          {
            [v120 addObject:v19];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v159 objects:v179 count:16];
      }

      while (v16);
    }

    v21 = *v115[11];
    v22 = *(**v115 + 40);
    v23 = v115[2];
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v24 = [v23 countByEnumeratingWithState:&v154 objects:v178 count:16];
    if (v24)
    {
      v25 = *v155;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v155 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v154 + 1) + 8 * k);
          Object = GTMTLSMContext_getObject(*v22, [v27 unsignedLongLongValue], v21);
          if (Object)
          {
            v29 = *Object;
            v30 = v121;
            if (v29 != 22)
            {
              if (v29 != 80)
              {
                continue;
              }

              v30 = v116;
            }

            [v30 addObject:v27];
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v154 objects:v178 count:16];
      }

      while (v24);
    }

    v131 = v115[1];
    if ([v131 count])
    {
      newpool = 0;
      apr_pool_create_ex(&newpool, 0, 0, v31);
      pa = newpool;
      v32 = apr_array_make(newpool, 32, 8);
      GTMTLSMContext_getObjects(*(v22 + 8), v21, v32);
      if (v32->nelts >= 1)
      {
        v33 = 0;
        do
        {
          v34 = *&v32->elts[8 * v33];
          if (v34)
          {
            if (*(v34 + 48))
            {
              v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
              v36 = [v131 containsObject:v35];

              if (v36)
              {
                v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v34 + 8)];
                [v121 addObject:v37];
              }
            }
          }

          ++v33;
        }

        while (v33 < v32->nelts);
      }

      v32->nelts = 0;
      GTMTLSMContext_getObjects(*(v22 + 24), v21, v32);
      if (v32->nelts >= 1)
      {
        v38 = 0;
        do
        {
          v39 = *&v32->elts[8 * v38];
          if (v39)
          {
            if (*(v39 + 48))
            {
              v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
              v41 = [v131 containsObject:v40];

              if (v41)
              {
                v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v39 + 8)];
                [v116 addObject:v42];
              }
            }
          }

          ++v38;
        }

        while (v38 < v32->nelts);
      }

      apr_pool_destroy(pa);
    }

    *(&v152 + 1) = [v120 copy];
    v43 = [v121 copy];
    *&v151 = v43;
    *(&v151 + 1) = [v116 copy];
    *&v152 = [v114 copy];
  }

  else
  {
    v43 = 0;
  }

  v134 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v43, "count")}];
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v44 = v43;
  v45 = [v44 countByEnumeratingWithState:&v147 objects:v177 count:16];
  if (v45)
  {
    v46 = *v148;
    do
    {
      for (m = 0; m != v45; ++m)
      {
        if (*v148 != v46)
        {
          objc_enumerationMutation(v44);
        }

        v48 = [*(*(&v147 + 1) + 8 * m) unsignedLongLongValue];
        v49 = [v127 bufferForKey:v48];
        v50 = DEVICEOBJECT(v49);

        if (v50)
        {
          v51 = GTMTLSMContext_getObject(*v126, v48, v128);
          if (v51)
          {
            v52 = v51;
            v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v50, "gpuAddress")}];
            v54 = MEMORY[0x277CCABB0];
            v181[0] = v52[1];
            entry = find_entry(v125, v181, 8uLL, 0);
            if (*entry && (v56 = *(*entry + 32)) != 0)
            {
              v57 = atomic_load((v56 + 56));
              v58 = v56 + (~(v57 >> 2) & 8);
            }

            else
            {
              v58 = 8;
            }

            v59 = [v54 numberWithUnsignedLongLong:*v58];
            [v134 setObject:v53 forKeyedSubscript:v59];
          }
        }
      }

      v45 = [v44 countByEnumeratingWithState:&v147 objects:v177 count:16];
    }

    while (v45);
  }

  v60 = objc_alloc(MEMORY[0x277CBEB38]);
  v61 = *(&v151 + 1);
  v132 = [v60 initWithCapacity:{objc_msgSend(*(&v151 + 1), "count")}];
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v62 = v61;
  v63 = [v62 countByEnumeratingWithState:&v143 objects:v176 count:16];
  if (v63)
  {
    v64 = *v144;
    do
    {
      for (n = 0; n != v63; ++n)
      {
        if (*v144 != v64)
        {
          objc_enumerationMutation(v62);
        }

        v66 = [*(*(&v143 + 1) + 8 * n) unsignedLongLongValue];
        v67 = [v127 textureForKey:v66];
        v68 = DEVICEOBJECT(v67);

        if (v68)
        {
          v181[0] = v66;
          v69 = find_entry(*v126, v181, 8uLL, 0);
          if (*v69)
          {
            v70 = *(*v69 + 32);
            if (v70)
            {
              v71 = 0;
              do
              {
                if (v70[2] > v128 || (v72 = v70, v70[3] <= v128))
                {
                  if (v71)
                  {
                    v72 = v71;
                    goto LABEL_90;
                  }

                  v72 = 0;
                }

                v70 = v70[4];
                v71 = v72;
              }

              while (v70);
              if (!v72)
              {
                goto LABEL_95;
              }

LABEL_90:
              v73 = MEMORY[0x277CCABB0];
              v181[0] = v72[1];
              v74 = find_entry(v125, v181, 8uLL, 0);
              if (*v74 && (v75 = *(*v74 + 32)) != 0)
              {
                v76 = atomic_load((v75 + 56));
                v77 = v75 + (~(v76 >> 2) & 8);
              }

              else
              {
                v77 = 8;
              }

              v78 = [v73 numberWithUnsignedLongLong:*v77];
              v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v68, "uniqueIdentifier")}];
              [v132 setObject:v78 forKeyedSubscript:v79];
            }
          }
        }

LABEL_95:
      }

      v63 = [v62 countByEnumeratingWithState:&v143 objects:v176 count:16];
    }

    while (v63);
  }

  v80 = objc_alloc(MEMORY[0x277CBEB38]);
  v81 = v152;
  pb = [v80 initWithCapacity:{objc_msgSend(v152, "count")}];
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v82 = v81;
  v83 = [v82 countByEnumeratingWithState:&v139 objects:v175 count:16];
  if (v83)
  {
    v84 = *v140;
    do
    {
      for (ii = 0; ii != v83; ++ii)
      {
        if (*v140 != v84)
        {
          objc_enumerationMutation(v82);
        }

        v86 = [*(*(&v139 + 1) + 8 * ii) unsignedLongLongValue];
        v87 = [v127 samplerStateForKey:v86];
        v88 = DEVICEOBJECT(v87);

        if (v88)
        {
          v181[0] = v86;
          v89 = find_entry(*v126, v181, 8uLL, 0);
          if (*v89)
          {
            v90 = *(*v89 + 32);
            if (v90)
            {
              v91 = 0;
              do
              {
                if (v90[2] > v128 || (v92 = v90, v90[3] <= v128))
                {
                  if (v91)
                  {
                    v92 = v91;
                    goto LABEL_114;
                  }

                  v92 = 0;
                }

                v90 = v90[4];
                v91 = v92;
              }

              while (v90);
              if (!v92)
              {
                goto LABEL_119;
              }

LABEL_114:
              v93 = MEMORY[0x277CCABB0];
              v181[0] = v92[1];
              v94 = find_entry(v125, v181, 8uLL, 0);
              if (*v94 && (v95 = *(*v94 + 32)) != 0)
              {
                v96 = atomic_load((v95 + 56));
                v97 = v95 + (~(v96 >> 2) & 8);
              }

              else
              {
                v97 = 8;
              }

              v98 = [v93 numberWithUnsignedLongLong:*v97];
              v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v88, "uniqueIdentifier")}];
              [(apr_pool_t *)pb setObject:v98 forKeyedSubscript:v99];
            }
          }
        }

LABEL_119:
      }

      v83 = [v82 countByEnumeratingWithState:&v139 objects:v175 count:16];
    }

    while (v83);
  }

  v129 = v115[17];
  v100 = objc_alloc(MEMORY[0x277CBEB38]);
  v101 = *(&v152 + 1);
  v102 = [v100 initWithCapacity:{objc_msgSend(*(&v152 + 1), "count")}];
  v103 = v115[21];
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v104 = v101;
  v105 = [v104 countByEnumeratingWithState:&v135 objects:v174 count:16];
  if (v105)
  {
    v106 = *v136;
    do
    {
      for (jj = 0; jj != v105; ++jj)
      {
        if (*v136 != v106)
        {
          objc_enumerationMutation(v104);
        }

        v108 = *(*(&v135 + 1) + 8 * jj);
        v109 = [v103 objectForKeyedSubscript:v108];
        v110 = DEVICEOBJECT(v109);

        if (v110)
        {
          v111 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v110, "gpuAddress")}];
          [v102 setObject:v111 forKeyedSubscript:v108];
        }
      }

      v105 = [v104 countByEnumeratingWithState:&v135 objects:v174 count:16];
    }

    while (v105);
  }

  v172[0] = @"Bytes";
  v172[1] = @"Buffers";
  v173[0] = v102;
  v173[1] = v134;
  v172[2] = @"Textures";
  v172[3] = @"Samplers";
  v173[2] = v132;
  v173[3] = pb;
  v172[4] = @"ConstantSamplers";
  v173[4] = v129;
  v112 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:5];

  __destructor_8_s0_s8_s16_s24(&v151);

  return v112;
}

void sub_24D973374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  __destructor_8_s0_s8_s16_s24(va);
  _Unwind_Resume(a1);
}

void __destructor_8_s0_s8_s16_s24(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void ShaderDebugger::Metadata::MDSerializer::~MDSerializer(ShaderDebugger::Metadata::MDSerializer *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 63) < 0)
      {
        operator delete(v2[5]);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::destroy(*(this + 1));
}

void ShaderDebugger::Metadata::MDSerializer::addReferencedSourceFile(int8x8_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v7, v8);
  v10 = a1[4];
  if (v10)
  {
    v11 = v9;
    v12 = vcnt_s8(v10);
    v12.i16[0] = vaddlv_u8(v12);
    v13 = v12.u32[0];
    if (v12.u32[0] > 1uLL)
    {
      v14 = v9;
      if (v9 >= *&v10)
      {
        v14 = v9 % *&v10;
      }
    }

    else
    {
      v14 = (*&v10 - 1) & v9;
    }

    v15 = *(*&a1[3] + 8 * v14);
    if (v15)
    {
      v16 = *v15;
      if (*v15)
      {
        do
        {
          v17 = v16[1];
          if (v17 == v11)
          {
            if (std::equal_to<std::string>::operator()[abi:nn200100](v16 + 2, a2))
            {
              return;
            }
          }

          else
          {
            if (v13 > 1)
            {
              if (v17 >= *&v10)
              {
                v17 %= *&v10;
              }
            }

            else
            {
              v17 &= *&v10 - 1;
            }

            if (v17 != v14)
            {
              break;
            }
          }

          v16 = *v16;
        }

        while (v16);
      }
    }
  }

  v18 = *(a3 + 23);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a3 + 8);
  }

  if (v18)
  {
    *&v30.st_dev = a2;
    v19 = (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1[3], a2, &v30) + 5);

    std::string::operator=(v19, a3);
  }

  else
  {
    memset(&v24, 0, sizeof(v24));
    v25 = -1;
    v27 = 0;
    v28 = 0;
    __n = 0;
    std::string::operator=(&v24, a2);
    if (*(a2 + 23) >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    if (!stat(v20, &v30) && (v30.st_mode & 0xF000) == 0x8000)
    {
      __n = v30.st_size;
      if (*(a2 + 23) >= 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = *a2;
      }

      v25 = open(v21, 0, 0);
      v27 = mmap(0, __n, 1, 2, v25, 0);
      v28 = v27;
    }

    if (v25 != -1)
    {
      memset(&v30, 0, 24);
      if (__n)
      {
        std::string::resize(&v30, __n, 0);
        if ((v30.st_gid & 0x80000000) == 0)
        {
          v22 = &v30;
        }

        else
        {
          v22 = *&v30.st_dev;
        }

        memcpy(v22, v27, __n);
      }

      v29 = a2;
      v23 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1[3], a2, &v29);
      std::string::operator=((v23 + 5), &v30);
      if (SHIBYTE(v30.st_gid) < 0)
      {
        operator delete(*&v30.st_dev);
      }

      if (v25 != -1)
      {
        munmap(v27, __n);
        close(v25);
        v25 = -1;
      }
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }
}

void *std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(float *a1, uint64_t a2, __int128 **a3)
{
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v6, v7);
  v9 = v8;
  v10 = *(a1 + 2);
  if (!*&v10)
  {
    goto LABEL_24;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v8;
    if (v8 >= *&v10)
    {
      v13 = v8 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v9)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_24;
    }

LABEL_23:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v15 + 2, a2))
  {
    goto LABEL_23;
  }

  return v15;
}

void std::vector<unsigned char>::reserve(void *a1, unint64_t a2)
{
  if (a1[2] - *a1 < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }
}

void ShaderDebugger::Metadata::MDSerializer::write<std::string>(void **a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  v27 = v4;
  v5 = a1[1];
  v6 = a1[2] - *a1;
  if (v6 < v5 - *a1 + 8)
  {
    std::vector<unsigned char>::reserve(a1, (2 * v6) | 1);
    v5 = a1[1];
  }

  for (i = 0; i != 8; ++i)
  {
    v8 = a1[2];
    if (v5 >= v8)
    {
      v9 = *a1;
      v10 = (v5 - *a1);
      v11 = (v10 + 1);
      if ((v10 + 1) < 0)
      {
LABEL_43:
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v12 = v8 - v9;
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        operator new();
      }

      v14 = v5 - *a1;
      *v10 = *(&v27 + i);
      v5 = v10 + 1;
      memcpy(0, v9, v14);
      *a1 = 0;
      a1[1] = v10 + 1;
      a1[2] = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v5++ = *(&v27 + i);
    }

    a1[1] = v5;
  }

  v15 = *(a2 + 23);
  if (v15 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  if (v15 >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = *(a2 + 8);
  }

  v18 = a1[2] - *a1;
  if (v18 < &v5[v17 - *a1])
  {
    std::vector<unsigned char>::reserve(a1, (2 * v18) | 1);
  }

  if (v17)
  {
    v19 = a1[1];
    do
    {
      v20 = a1[2];
      if (v19 >= v20)
      {
        v21 = *a1;
        v22 = (v19 - *a1);
        v23 = (v22 + 1);
        if ((v22 + 1) < 0)
        {
          goto LABEL_43;
        }

        v24 = v20 - v21;
        if (2 * v24 > v23)
        {
          v23 = 2 * v24;
        }

        if (v24 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v23;
        }

        if (v25)
        {
          operator new();
        }

        v26 = v19 - *a1;
        *v22 = *v16;
        v19 = v22 + 1;
        memcpy(0, v21, v26);
        *a1 = 0;
        a1[1] = v22 + 1;
        a1[2] = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v19++ = *v16;
      }

      ++v16;
      a1[1] = v19;
      --v17;
    }

    while (v17);
  }
}

unint64_t ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(void *a1, uint64_t a2)
{
  v11 = a2;
  isMetadataIdReserved = ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(a1, a2);
  v5 = a1[1];
  v6 = *a1;
  if (*a1 != v5)
  {
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        v6 = a1[1];
        break;
      }
    }
  }

  if (v5 == v6)
  {
    v8 = -1;
    if (!isMetadataIdReserved)
    {
LABEL_8:
      std::vector<unsigned long>::push_back[abi:nn200100](a1, &v11);
      v10 = 0;
      std::vector<BOOL>::push_back(a1 + 3, &v10);
      return ((a1[1] - *a1) >> 3) - 1;
    }
  }

  else
  {
    v7 = v6 - *a1;
    if (!((v7 == -8) | isMetadataIdReserved & 1))
    {
      return -1;
    }

    v8 = v7 >> 3;
    if (!isMetadataIdReserved)
    {
      goto LABEL_8;
    }
  }

  if (a1[4] <= v8)
  {
    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  *(a1[3] + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v8);
  return v8;
}

uint64_t ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  if (*a1 != v2)
  {
    while (*v3 != a2)
    {
      if (++v3 == v2)
      {
        v3 = *(a1 + 8);
        break;
      }
    }
  }

  if (v2 == v3)
  {
    return 0;
  }

  v4 = v3 - *a1;
  if (*(a1 + 32) <= (v4 >> 3))
  {
    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  return (*(*(a1 + 24) + (((v4 >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v4 >> 3)) & 1;
}

unint64_t ShaderDebugger::Metadata::MDSerializer::serializeLocation(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v85 = *MEMORY[0x277D85DE8];
  v81 = a6;
  v82 = a5;
  v78.__r_.__value_.__r.__words[0] = 1;
  __str.__r_.__value_.__r.__words[0] = &v78;
  v10 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 1uLL, &__str);
  v11 = v10;
  v13 = v10 + 5;
  v12 = v10[5];
  v14 = v10[6];
  v15 = v12;
  if (v12 != v14)
  {
    while (*v15 != a2)
    {
      v15 += 8;
      if (v15 == v14)
      {
        v15 = v10[6];
        break;
      }
    }
  }

  if (v14 != v15)
  {
    v16 = v15 - v12;
    if (v15 - v12 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v10 + 5), a2))
    {
      return v16 >> 3;
    }
  }

  v80 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v13, a2);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a3, *(a3 + 8));
  }

  else
  {
    __str = *a3;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v78, *a4, *(a4 + 8));
  }

  else
  {
    v78 = *a4;
  }

  v17 = *(a3 + 23);
  if ((v17 & 0x80000000) == 0)
  {
    v77 = *a3;
    goto LABEL_17;
  }

  std::string::__init_copy_ctor_external(&v77, *a3, *(a3 + 8));
  v17 = *(a3 + 23);
  if ((v17 & 0x80000000) == 0)
  {
LABEL_17:
    v18 = v17;
    v19 = a3;
    if (!v18)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v19 = *a3;
  v18 = *(a3 + 8);
  if (!v18)
  {
    goto LABEL_27;
  }

LABEL_18:
  v20 = (v19 + v18);
  v21 = v19;
  while (*v21 != 47)
  {
    ++v21;
    if (!--v18)
    {
      goto LABEL_27;
    }
  }

  if (v21 == v20 || v21 != v19)
  {
LABEL_27:
    v23 = *(a4 + 23);
    if (v23 < 0)
    {
      if (*(a4 + 8) != 1)
      {
LABEL_36:
        if (v23 >= 0)
        {
          v25 = *(a4 + 23);
        }

        else
        {
          v25 = *(a4 + 8);
        }

        std::string::basic_string[abi:nn200100](&v76, v25 + 1);
        if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &v76;
        }

        else
        {
          v26 = v76.__r_.__value_.__r.__words[0];
        }

        if (v25)
        {
          if (*(a4 + 23) >= 0)
          {
            v27 = a4;
          }

          else
          {
            v27 = *a4;
          }

          memmove(v26, v27, v25);
        }

        *(&v26->__r_.__value_.__l.__data_ + v25) = 47;
        v28 = *(a3 + 23);
        if (v28 >= 0)
        {
          v29 = a3;
        }

        else
        {
          v29 = *a3;
        }

        if (v28 >= 0)
        {
          v30 = *(a3 + 23);
        }

        else
        {
          v30 = *(a3 + 8);
        }

        v31 = std::string::append(&v76, v29, v30);
        v32 = v31->__r_.__value_.__r.__words[0];
        *&v83 = v31->__r_.__value_.__l.__size_;
        *(&v83 + 7) = *(&v31->__r_.__value_.__r.__words[1] + 7);
        v33 = HIBYTE(v31->__r_.__value_.__r.__words[2]);
        v31->__r_.__value_.__l.__size_ = 0;
        v31->__r_.__value_.__r.__words[2] = 0;
        v31->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str.__r_.__value_.__r.__words[0] = v32;
        __str.__r_.__value_.__l.__size_ = v83;
        *(&__str.__r_.__value_.__r.__words[1] + 7) = *(&v83 + 7);
        *(&__str.__r_.__value_.__s + 23) = v33;
        if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v76.__r_.__value_.__l.__data_);
        }

        goto LABEL_57;
      }

      v24 = *a4;
    }

    else
    {
      v24 = a4;
      if (v23 != 1)
      {
        goto LABEL_36;
      }
    }

    if (*v24 == 47)
    {
      std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v76, a4, a3);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v76;
      goto LABEL_57;
    }

    goto LABEL_36;
  }

LABEL_57:
  size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  p_str = &__str;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v36 = p_str + size;
  while (size)
  {
    v37 = *--v36;
    --size;
    if (v37 == 47)
    {
      v38 = v36 - p_str;
      if (v36 - p_str != -1)
      {
        std::string::basic_string(&v76, &__str, 0, v38 + 1, &v83);
        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        v78 = v76;
        std::string::basic_string(&v76, &__str, v38 + 1, 0xFFFFFFFFFFFFFFFFLL, &v83);
        if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v77.__r_.__value_.__l.__data_);
        }

        v77 = v76;
      }

      break;
    }
  }

  v39 = SHIBYTE(v78.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v39 = v78.__r_.__value_.__l.__size_;
    if (!v78.__r_.__value_.__l.__size_)
    {
      goto LABEL_77;
    }

    v40 = v78.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&v78.__r_.__value_.__s + 23))
    {
      goto LABEL_77;
    }

    v40 = &v78;
  }

  if (v40->__r_.__value_.__s.__data_[v39 - 1] != 47)
  {
    std::string::append(&v78, "/", 1uLL);
  }

LABEL_77:
  v41 = v11[12];
  v42 = v11[11];
  v43 = v11[13] - v42;
  if (v43 < v41 - v42 + 8)
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v43) | 1);
    v41 = v11[12];
  }

  for (i = 0; i != 8; ++i)
  {
    v45 = v11[13];
    if (v41 >= v45)
    {
      v46 = v11[11];
      v47 = (v41 - v46);
      v48 = v41 - v46 + 1;
      if (v48 < 0)
      {
LABEL_140:
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v49 = v45 - v46;
      if (2 * v49 > v48)
      {
        v48 = 2 * v49;
      }

      if (v49 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v50 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        operator new();
      }

      v51 = v41 - v46;
      *v47 = *(&v80 + i);
      v41 = v47 + 1;
      memcpy(0, v46, v51);
      v11[11] = 0;
      v11[12] = v47 + 1;
      v11[13] = 0;
      if (v46)
      {
        operator delete(v46);
      }
    }

    else
    {
      *v41++ = *(&v80 + i);
    }

    v11[12] = v41;
  }

  ShaderDebugger::Metadata::MDSerializer::write<std::string>(v11 + 11, &v77);
  ShaderDebugger::Metadata::MDSerializer::write<std::string>(v11 + 11, &v78);
  v52 = v11[12];
  v53 = v11[11];
  v54 = v11[13] - v53;
  if (v54 < v52 - v53 + 8)
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v54) | 1);
    v52 = v11[12];
  }

  for (j = 0; j != 8; ++j)
  {
    v56 = v11[13];
    if (v52 >= v56)
    {
      v57 = v11[11];
      v58 = (v52 - v57);
      v59 = v52 - v57 + 1;
      if (v59 < 0)
      {
        goto LABEL_140;
      }

      v60 = v56 - v57;
      if (2 * v60 > v59)
      {
        v59 = 2 * v60;
      }

      if (v60 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v61 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v61 = v59;
      }

      if (v61)
      {
        operator new();
      }

      v62 = v52 - v57;
      *v58 = *(&v82 + j);
      v52 = v58 + 1;
      memcpy(0, v57, v62);
      v11[11] = 0;
      v11[12] = v58 + 1;
      v11[13] = 0;
      if (v57)
      {
        operator delete(v57);
      }
    }

    else
    {
      *v52++ = *(&v82 + j);
    }

    v11[12] = v52;
  }

  v63 = v11[11];
  v64 = v11[13] - v63;
  if (v64 < v52 - v63 + 8)
  {
    std::vector<unsigned char>::reserve(v11 + 11, (2 * v64) | 1);
    v52 = v11[12];
  }

  for (k = 0; k != 8; ++k)
  {
    v66 = v11[13];
    if (v52 >= v66)
    {
      v67 = v11[11];
      v68 = (v52 - v67);
      v69 = v52 - v67 + 1;
      if (v69 < 0)
      {
        goto LABEL_140;
      }

      v70 = v66 - v67;
      if (2 * v70 > v69)
      {
        v69 = 2 * v70;
      }

      if (v70 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v71 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v71 = v69;
      }

      if (v71)
      {
        operator new();
      }

      v72 = v52 - v67;
      *v68 = *(&v81 + k);
      v52 = v68 + 1;
      memcpy(0, v67, v72);
      v11[11] = 0;
      v11[12] = v68 + 1;
      v11[13] = 0;
      if (v67)
      {
        operator delete(v67);
      }
    }

    else
    {
      *v52++ = *(&v81 + k);
    }

    v11[12] = v52;
  }

  std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v76, &v78.__r_.__value_.__l.__data_, &v77.__r_.__value_.__l.__data_);
  v73 = HIBYTE(v76.__r_.__value_.__r.__words[2]);
  v74 = HIBYTE(v76.__r_.__value_.__r.__words[2]);
  if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v73 = v76.__r_.__value_.__l.__size_;
  }

  if (v73)
  {
    v83 = 0uLL;
    v84 = 0;
    ShaderDebugger::Metadata::MDSerializer::addReferencedSourceFile(a1, &v76, &v83);
    if (SHIBYTE(v84) < 0)
    {
      operator delete(v83);
    }

    v74 = HIBYTE(v76.__r_.__value_.__r.__words[2]);
  }

  v22 = v80;
  if (v74 < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v22;
}

char *std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(uint64_t a1, const void **a2, const void **a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  result = std::string::basic_string[abi:nn200100](a1, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t *ShaderDebugger::Metadata::MDSerializer::serializeSubprogram(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = 0;
  v39 = a4;
  v40 = &v38;
  v6 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 0, &v40);
  v7 = v6;
  v9 = v6 + 5;
  v8 = v6[5];
  v10 = v6[6];
  v11 = v8;
  if (v8 != v10)
  {
    while (*v11 != a2)
    {
      v11 += 8;
      if (v11 == v10)
      {
        v11 = v6[6];
        break;
      }
    }
  }

  if (v10 != v11)
  {
    v12 = v11 - v8;
    if (v11 - v8 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v6 + 5), a2))
    {
      return (v12 >> 3);
    }
  }

  v37 = a3;
  v40 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v9, a2);
  v14 = v7 + 11;
  v13 = v7[11];
  v15 = v7[12];
  v16 = v7[13] - v13;
  if (v16 < v15 - v13 + 8)
  {
    std::vector<unsigned char>::reserve(v7 + 11, (2 * v16) | 1);
    v15 = v7[12];
  }

  for (i = 0; i != 8; ++i)
  {
    v18 = v7[13];
    if (v15 >= v18)
    {
      v19 = *v14;
      v20 = (v15 - *v14);
      v21 = (v20 + 1);
      if ((v20 + 1) < 0)
      {
LABEL_43:
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v22 = v18 - v19;
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      if (v23)
      {
        operator new();
      }

      v24 = v15 - *v14;
      *v20 = *(&v40 + i);
      v15 = v20 + 1;
      memcpy(0, v19, v24);
      v7[11] = 0;
      v7[12] = v20 + 1;
      v7[13] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v15++ = *(&v40 + i);
    }

    v7[12] = v15;
  }

  ShaderDebugger::Metadata::MDSerializer::write<std::string>(v7 + 11, v37);
  v25 = v7[12];
  v26 = v7[11];
  v27 = v7[13] - v26;
  if (v27 < v25 - v26 + 8)
  {
    std::vector<unsigned char>::reserve(v7 + 11, (2 * v27) | 1);
    v25 = v7[12];
  }

  for (j = 0; j != 8; ++j)
  {
    v29 = v7[13];
    if (v25 >= v29)
    {
      v30 = *v14;
      v31 = (v25 - *v14);
      v32 = (v31 + 1);
      if ((v31 + 1) < 0)
      {
        goto LABEL_43;
      }

      v33 = v29 - v30;
      if (2 * v33 > v32)
      {
        v32 = 2 * v33;
      }

      if (v33 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        operator new();
      }

      v35 = v25 - *v14;
      *v31 = *(&v39 + j);
      v25 = v31 + 1;
      memcpy(0, v30, v35);
      v7[11] = 0;
      v7[12] = v31 + 1;
      v7[13] = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *v25++ = *(&v39 + j);
    }

    v7[12] = v25;
  }

  return v40;
}

void ShaderDebugger::Metadata::MDSerializer::serializeFunctionTracepoint(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v79 = a5;
  v80 = a3;
  v77 = -1;
  v78 = a6;
  v76 = 6;
  v81 = &v76;
  v8 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 6uLL, &v81);
  v9 = v8;
  v11 = v8 + 5;
  v10 = v8[5];
  v12 = v8[6];
  v13 = v10;
  if (v10 != v12)
  {
    while (*v13 != a2)
    {
      v13 += 8;
      if (v13 == v12)
      {
        v13 = v8[6];
        break;
      }
    }
  }

  if (v12 == v13 || v13 - v10 == -8 || ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v8 + 5), a2))
  {
    v81 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v11, a2);
    v15 = (v9 + 11);
    v14 = v9[11];
    v16 = v9[12];
    v17 = v9[13] - v14;
    if (v17 < &v16[-v14 + 8])
    {
      std::vector<unsigned char>::reserve(v9 + 11, (2 * v17) | 1);
      v16 = v9[12];
    }

    for (i = 0; i != 8; ++i)
    {
      v19 = v9[13];
      if (v16 >= v19)
      {
        v20 = *v15;
        v21 = (v16 - *v15);
        v22 = (v21 + 1);
        if ((v21 + 1) < 0)
        {
LABEL_105:
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v23 = v19 - v20;
        if (2 * v23 > v22)
        {
          v22 = 2 * v23;
        }

        if (v23 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v24 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          operator new();
        }

        v25 = v16 - *v15;
        *v21 = *(&v81 + i);
        v16 = v21 + 1;
        memcpy(0, v20, v25);
        v9[11] = 0;
        v9[12] = (v21 + 1);
        v9[13] = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v16++ = *(&v81 + i);
      }

      v9[12] = v16;
    }

    v26 = v9[11];
    v27 = v9[13] - v26;
    if (v27 < &v16[-v26 + 8])
    {
      std::vector<unsigned char>::reserve(v9 + 11, (2 * v27) | 1);
      v16 = v9[12];
    }

    for (j = 0; j != 8; ++j)
    {
      v29 = v9[13];
      if (v16 >= v29)
      {
        v30 = *v15;
        v31 = (v16 - *v15);
        v32 = (v31 + 1);
        if ((v31 + 1) < 0)
        {
          goto LABEL_105;
        }

        v33 = v29 - v30;
        if (2 * v33 > v32)
        {
          v32 = 2 * v33;
        }

        if (v33 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v34 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v34 = v32;
        }

        if (v34)
        {
          operator new();
        }

        v35 = v16 - *v15;
        *v31 = *(&v80 + j);
        v16 = v31 + 1;
        memcpy(0, v30, v35);
        v9[11] = 0;
        v9[12] = (v31 + 1);
        v9[13] = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v16++ = *(&v80 + j);
      }

      v9[12] = v16;
    }

    v76 = a4;
    v36 = v9[11];
    v37 = v9[13] - v36;
    if (v37 < &v16[-v36 + 8])
    {
      std::vector<unsigned char>::reserve(v9 + 11, (2 * v37) | 1);
      v16 = v9[12];
    }

    for (k = 0; k != 8; ++k)
    {
      v39 = v9[13];
      if (v16 >= v39)
      {
        v40 = *v15;
        v41 = (v16 - *v15);
        v42 = (v41 + 1);
        if ((v41 + 1) < 0)
        {
          goto LABEL_105;
        }

        v43 = v39 - v40;
        if (2 * v43 > v42)
        {
          v42 = 2 * v43;
        }

        if (v43 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v44 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v44 = v42;
        }

        if (v44)
        {
          operator new();
        }

        v45 = v16 - *v15;
        *v41 = *(&v76 + k);
        v16 = v41 + 1;
        memcpy(0, v40, v45);
        v9[11] = 0;
        v9[12] = (v41 + 1);
        v9[13] = 0;
        if (v40)
        {
          operator delete(v40);
        }
      }

      else
      {
        *v16++ = *(&v76 + k);
      }

      v9[12] = v16;
    }

    v46 = v9[11];
    v47 = v9[13] - v46;
    if (v47 < &v16[-v46 + 8])
    {
      std::vector<unsigned char>::reserve(v9 + 11, (2 * v47) | 1);
      v16 = v9[12];
    }

    for (m = 0; m != 8; ++m)
    {
      v49 = v9[13];
      if (v16 >= v49)
      {
        v50 = *v15;
        v51 = (v16 - *v15);
        v52 = (v51 + 1);
        if ((v51 + 1) < 0)
        {
          goto LABEL_105;
        }

        v53 = v49 - v50;
        if (2 * v53 > v52)
        {
          v52 = 2 * v53;
        }

        if (v53 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v54 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v54 = v52;
        }

        if (v54)
        {
          operator new();
        }

        v55 = v16 - *v15;
        *v51 = *(&v79 + m);
        v16 = v51 + 1;
        memcpy(0, v50, v55);
        v9[11] = 0;
        v9[12] = (v51 + 1);
        v9[13] = 0;
        if (v50)
        {
          operator delete(v50);
        }
      }

      else
      {
        *v16++ = *(&v79 + m);
      }

      v9[12] = v16;
    }

    v56 = v9[11];
    v57 = v9[13] - v56;
    if (v57 < &v16[-v56 + 8])
    {
      std::vector<unsigned char>::reserve(v9 + 11, (2 * v57) | 1);
      v16 = v9[12];
    }

    for (n = 0; n != 8; ++n)
    {
      v59 = v9[13];
      if (v16 >= v59)
      {
        v60 = *v15;
        v61 = (v16 - *v15);
        v62 = (v61 + 1);
        if ((v61 + 1) < 0)
        {
          goto LABEL_105;
        }

        v63 = v59 - v60;
        if (2 * v63 > v62)
        {
          v62 = 2 * v63;
        }

        if (v63 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v64 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v64 = v62;
        }

        if (v64)
        {
          operator new();
        }

        v65 = v16 - *v15;
        *v61 = *(&v78 + n);
        v16 = v61 + 1;
        memcpy(0, v60, v65);
        v9[11] = 0;
        v9[12] = (v61 + 1);
        v9[13] = 0;
        if (v60)
        {
          operator delete(v60);
        }
      }

      else
      {
        *v16++ = *(&v78 + n);
      }

      v9[12] = v16;
    }

    v66 = v9[11];
    v67 = v9[13] - v66;
    if (v67 < &v16[-v66 + 8])
    {
      std::vector<unsigned char>::reserve(v9 + 11, (2 * v67) | 1);
      v16 = v9[12];
    }

    for (ii = 0; ii != 8; ++ii)
    {
      v69 = v9[13];
      if (v16 >= v69)
      {
        v70 = *v15;
        v71 = (v16 - *v15);
        v72 = (v71 + 1);
        if ((v71 + 1) < 0)
        {
          goto LABEL_105;
        }

        v73 = v69 - v70;
        if (2 * v73 > v72)
        {
          v72 = 2 * v73;
        }

        if (v73 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v74 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v74 = v72;
        }

        if (v74)
        {
          operator new();
        }

        v75 = v16 - *v15;
        *v71 = *(&v77 + ii);
        v16 = v71 + 1;
        memcpy(0, v70, v75);
        v9[11] = 0;
        v9[12] = (v71 + 1);
        v9[13] = 0;
        if (v70)
        {
          operator delete(v70);
        }
      }

      else
      {
        *v16++ = *(&v77 + ii);
      }

      v9[12] = v16;
    }
  }
}

void ShaderDebugger::Metadata::MDSerializer::serializeVariableBase(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a4;
  v50 = a2;
  v48 = a5;
  v7 = a1[1];
  v8 = a1[2] - *a1;
  if (v8 < v7 - *a1 + 8)
  {
    std::vector<unsigned char>::reserve(a1, (2 * v8) | 1);
    v7 = a1[1];
  }

  for (i = 0; i != 8; ++i)
  {
    v10 = a1[2];
    if (v7 >= v10)
    {
      v11 = *a1;
      v12 = (v7 - *a1);
      v13 = (v12 + 1);
      if ((v12 + 1) < 0)
      {
LABEL_66:
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v14 = v10 - v11;
      if (2 * v14 > v13)
      {
        v13 = 2 * v14;
      }

      if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        operator new();
      }

      v16 = v7 - *a1;
      *v12 = *(&v50 + i);
      v7 = v12 + 1;
      memcpy(0, v11, v16);
      *a1 = 0;
      a1[1] = v12 + 1;
      a1[2] = 0;
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v7++ = *(&v50 + i);
    }

    a1[1] = v7;
  }

  ShaderDebugger::Metadata::MDSerializer::write<std::string>(a1, a3);
  v17 = a1[1];
  v18 = a1[2] - *a1;
  if (v18 < v17 - *a1 + 8)
  {
    std::vector<unsigned char>::reserve(a1, (2 * v18) | 1);
    v17 = a1[1];
  }

  for (j = 0; j != 8; ++j)
  {
    v20 = a1[2];
    if (v17 >= v20)
    {
      v21 = *a1;
      v22 = (v17 - *a1);
      v23 = (v22 + 1);
      if ((v22 + 1) < 0)
      {
        goto LABEL_66;
      }

      v24 = v20 - v21;
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        operator new();
      }

      v26 = v17 - *a1;
      *v22 = *(&v49 + j);
      v17 = v22 + 1;
      memcpy(0, v21, v26);
      *a1 = 0;
      a1[1] = v22 + 1;
      a1[2] = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v17++ = *(&v49 + j);
    }

    a1[1] = v17;
  }

  v27 = a1[2] - *a1;
  if (v27 < v17 - *a1 + 8)
  {
    std::vector<unsigned char>::reserve(a1, (2 * v27) | 1);
    v17 = a1[1];
  }

  for (k = 0; k != 8; ++k)
  {
    v29 = a1[2];
    if (v17 >= v29)
    {
      v30 = *a1;
      v31 = (v17 - *a1);
      v32 = (v31 + 1);
      if ((v31 + 1) < 0)
      {
        goto LABEL_66;
      }

      v33 = v29 - v30;
      if (2 * v33 > v32)
      {
        v32 = 2 * v33;
      }

      if (v33 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v34 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v32;
      }

      if (v34)
      {
        operator new();
      }

      v35 = v17 - *a1;
      *v31 = *(&v48 + k);
      v17 = v31 + 1;
      memcpy(0, v30, v35);
      *a1 = 0;
      a1[1] = v31 + 1;
      a1[2] = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *v17++ = *(&v48 + k);
    }

    a1[1] = v17;
  }

  v47 = a6;
  v36 = a1[2] - *a1;
  if (v36 < v17 - *a1 + 8)
  {
    std::vector<unsigned char>::reserve(a1, (2 * v36) | 1);
    v17 = a1[1];
  }

  for (m = 0; m != 8; ++m)
  {
    v38 = a1[2];
    if (v17 >= v38)
    {
      v39 = *a1;
      v40 = (v17 - *a1);
      v41 = (v40 + 1);
      if ((v40 + 1) < 0)
      {
        goto LABEL_66;
      }

      v42 = v38 - v39;
      if (2 * v42 > v41)
      {
        v41 = 2 * v42;
      }

      if (v42 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v43 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v41;
      }

      if (v43)
      {
        operator new();
      }

      v44 = v17 - *a1;
      *v40 = *(&v47 + m);
      v17 = v40 + 1;
      memcpy(0, v39, v44);
      *a1 = 0;
      a1[1] = v40 + 1;
      a1[2] = 0;
      if (v39)
      {
        operator delete(v39);
      }
    }

    else
    {
      *v17++ = *(&v47 + m);
    }

    a1[1] = v17;
  }
}

unint64_t ShaderDebugger::Metadata::MDSerializer::serializeLocalVariable(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v30 = 2;
  v31 = &v30;
  v11 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 2uLL, &v31);
  v12 = v11;
  v14 = v11 + 5;
  v13 = v11[5];
  v15 = v11[6];
  v16 = v13;
  if (v13 != v15)
  {
    while (*v16 != a2)
    {
      v16 += 8;
      if (v16 == v15)
      {
        v16 = v11[6];
        break;
      }
    }
  }

  if (v15 != v16)
  {
    v17 = v16 - v13;
    if (v16 - v13 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v11 + 5), a2))
    {
      return v17 >> 3;
    }
  }

  v18 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v14, a2);
  ShaderDebugger::Metadata::MDSerializer::serializeVariableBase(v12 + 11, v18, a3, a4, a5, 0);
  v20 = v12[12];
  v19 = v12[13];
  v21 = v12[11];
  if (v19 - v21 < &v20[-v21 + 1])
  {
    std::vector<unsigned char>::reserve(v12 + 11, (2 * (v19 - v21)) | 1);
    v20 = v12[12];
    v19 = v12[13];
  }

  if (v20 >= v19)
  {
    v23 = v12[11];
    v24 = (v20 - v23);
    v25 = v20 - v23 + 1;
    if (v25 < 0)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v26 = v19 - v23;
    if (2 * v26 > v25)
    {
      v25 = 2 * v26;
    }

    if (v26 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v27 = v25;
    }

    if (v27)
    {
      operator new();
    }

    v28 = v20 - v23;
    *v24 = a6;
    v22 = v24 + 1;
    memcpy(0, v23, v28);
    v12[11] = 0;
    v12[12] = (v24 + 1);
    v12[13] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v20 = a6;
    v22 = v20 + 1;
  }

  v12[12] = v22;
  return v18;
}

unint64_t ShaderDebugger::Metadata::MDSerializer::serializeGlobalVariable(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = 2;
  v19 = &v18;
  v9 = std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::__emplace_unique_key_args<ShaderDebugger::Metadata::MDBase::MetadataType,std::piecewise_construct_t const&,std::tuple<ShaderDebugger::Metadata::MDBase::MetadataType&&>,std::tuple<>>(a1, 2uLL, &v19);
  v10 = v9;
  v12 = v9 + 5;
  v11 = v9[5];
  v13 = v9[6];
  v14 = v11;
  if (v11 != v13)
  {
    while (*v14 != a2)
    {
      v14 += 8;
      if (v14 == v13)
      {
        v14 = v9[6];
        break;
      }
    }
  }

  if (v13 != v14)
  {
    v15 = v14 - v11;
    if (v14 - v11 != -8 && !ShaderDebugger::Metadata::MDSerializer::isMetadataIdReserved((v9 + 5), a2))
    {
      return v15 >> 3;
    }
  }

  v16 = ShaderDebugger::Metadata::MDSerializer::addAndLinearizeMetadataId(v12, a2);
  ShaderDebugger::Metadata::MDSerializer::serializeVariableBase(v10 + 11, v16, a3, a4, a5, 1);
  return v16;
}

void ShaderDebugger::Metadata::MDSerializer::serializeTypeBase(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9)
{
  v81 = a4;
  v82 = a2;
  v79 = a6;
  v80 = a5;
  v78 = a7;
  v10 = a1[1];
  v11 = a1[2] - *a1;
  if (v11 < v10 - *a1 + 8)
  {
    std::vector<unsigned char>::reserve(a1, (2 * v11) | 1);
    v10 = a1[1];
  }

  for (i = 0; i != 8; ++i)
  {
    v13 = a1[2];
    if (v10 >= v13)
    {
      v14 = *a1;
      v15 = (v10 - *a1);
      v16 = (v15 + 1);
      if ((v15 + 1) < 0)
      {
LABEL_114:
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v17 = v13 - v14;
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        operator new();
      }

      v19 = v10 - *a1;
      *v15 = *(&v82 + i);
      v10 = v15 + 1;
      memcpy(0, v14, v19);
      *a1 = 0;
      a1[1] = v15 + 1;
      a1[2] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v10++ = *(&v82 + i);
    }

    a1[1] = v10;
  }

  ShaderDebugger::Metadata::MDSerializer::write<std::string>(a1, a3);
  v20 = a1[1];
  v21 = a1[2] - *a1;
  if (v21 < v20 - *a1 + 8)
  {
    std::vector<unsigned char>::reserve(a1, (2 * v21) | 1);
    v20 = a1[1];
  }

  for (j = 0; j != 8; ++j)
  {
    v23 = a1[2];
    if (v20 >= v23)
    {
      v24 = *a1;
      v25 = (v20 - *a1);
      v26 = (v25 + 1);
      if ((v25 + 1) < 0)
      {
        goto LABEL_114;
      }

      v27 = v23 - v24;
      if (2 * v27 > v26)
      {
        v26 = 2 * v27;
      }

      if (v27 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v26;
      }

      if (v28)
      {
        operator new();
      }

      v29 = v20 - *a1;
      *v25 = *(&v81 + j);
      v20 = v25 + 1;
      memcpy(0, v24, v29);
      *a1 = 0;
      a1[1] = v25 + 1;
      a1[2] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v20++ = *(&v81 + j);
    }

    a1[1] = v20;
  }

  v30 = a1[2] - *a1;
  if (v30 < v20 - *a1 + 8)
  {
    std::vector<unsigned char>::reserve(a1, (2 * v30) | 1);
    v20 = a1[1];
  }

  for (k = 0; k != 8; ++k)
  {
    v32 = a1[2];
    if (v20 >= v32)
    {
      v33 = *a1;
      v34 = (v20 - *a1);
      v35 = (v34 + 1);
      if ((v34 + 1) < 0)
      {
        goto LABEL_114;
      }

      v36 = v32 - v33;
      if (2 * v36 > v35)
      {
        v35 = 2 * v36;
      }

      if (v36 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v37 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        operator new();
      }

      v38 = v20 - *a1;
      *v34 = *(&v80 + k);
      v20 = v34 + 1;
      memcpy(0, v33, v38);
      *a1 = 0;
      a1[1] = v34 + 1;
      a1[2] = 0;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      *v20++ = *(&v80 + k);
    }

    a1[1] = v20;
  }

  v39 = a1[2] - *a1;
  if (v39 < v20 - *a1 + 8)
  {
    std::vector<unsigned char>::reserve(a1, (2 * v39) | 1);
    v20 = a1[1];
  }

  for (m = 0; m != 8; ++m)
  {
    v41 = a1[2];
    if (v20 >= v41)
    {
      v42 = *a1;
      v43 = (v20 - *a1);
      v44 = (v43 + 1);
      if ((v43 + 1) < 0)
      {
        goto LABEL_114;
      }

      v45 = v41 - v42;
      if (2 * v45 > v44)
      {
        v44 = 2 * v45;
      }

      if (v45 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v46 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v46 = v44;
      }

      if (v46)
      {
        operator new();
      }

      v47 = v20 - *a1;
      *v43 = *(&v79 + m);
      v20 = v43 + 1;
      memcpy(0, v42, v47);
      *a1 = 0;
      a1[1] = v43 + 1;
      a1[2] = 0;
      if (v42)
      {
        operator delete(v42);
      }
    }

    else
    {
      *v20++ = *(&v79 + m);
    }

    a1[1] = v20;
  }

  v48 = a1[2] - *a1;
  if (v48 < v20 - *a1 + 8)
  {
    std::vector<unsigned char>::reserve(a1, (2 * v48) | 1);
    v20 = a1[1];
  }

  for (n = 0; n != 8; ++n)
  {
    v50 = a1[2];
    if (v20 >= v50)
    {
      v51 = *a1;
      v52 = (v20 - *a1);
      v53 = (v52 + 1);
      if ((v52 + 1) < 0)
      {
        goto LABEL_114;
      }

      v54 = v50 - v51;
      if (2 * v54 > v53)
      {
        v53 = 2 * v54;
      }

      if (v54 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v55 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v53;
      }

      if (v55)
      {
        operator new();
      }

      v56 = v20 - *a1;
      *v52 = *(&v78 + n);
      v20 = v52 + 1;
      memcpy(0, v51, v56);
      *a1 = 0;
      a1[1] = v52 + 1;
      a1[2] = 0;
      if (v51)
      {
        operator delete(v51);
      }
    }

    else
    {
      *v20++ = *(&v78 + n);
    }

    a1[1] = v20;
  }

  v77 = a8;
  v57 = a1[2] - *a1;
  if (v57 < v20 - *a1 + 8)
  {
    std::vector<unsigned char>::reserve(a1, (2 * v57) | 1);
    v20 = a1[1];
  }

  for (ii = 0; ii != 8; ++ii)
  {
    v59 = a1[2];
    if (v20 >= v59)
    {
      v60 = *a1;
      v61 = (v20 - *a1);
      v62 = (v61 + 1);
      if ((v61 + 1) < 0)
      {
        goto LABEL_114;
      }

      v63 = v59 - v60;
      if (2 * v63 > v62)
      {
        v62 = 2 * v63;
      }

      if (v63 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v64 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v64 = v62;
      }

      if (v64)
      {
        operator new();
      }

      v65 = v20 - *a1;
      *v61 = *(&v77 + ii);
      v20 = v61 + 1;
      memcpy(0, v60, v65);
      *a1 = 0;
      a1[1] = v61 + 1;
      a1[2] = 0;
      if (v60)
      {
        operator delete(v60);
      }
    }

    else
    {
      *v20++ = *(&v77 + ii);
    }

    a1[1] = v20;
  }

  v77 = a9;
  v66 = a1[2] - *a1;
  if (v66 < v20 - *a1 + 8)
  {
    std::vector<unsigned char>::reserve(a1, (2 * v66) | 1);
    v20 = a1[1];
  }

  for (jj = 0; jj != 8; ++jj)
  {
    v68 = a1[2];
    if (v20 >= v68)
    {
      v69 = *a1;
      v70 = (v20 - *a1);
      v71 = (v70 + 1);
      if ((v70 + 1) < 0)
      {
        goto LABEL_114;
      }

      v72 = v68 - v69;
      if (2 * v72 > v71)
      {
        v71 = 2 * v72;
      }

      if (v72 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v73 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v73 = v71;
      }

      if (v73)
      {
        operator new();
      }

      v74 = v20 - *a1;
      *v70 = *(&v77 + jj);
      v20 = v70 + 1;
      memcpy(0, v69, v74);
      *a1 = 0;
      a1[1] = v70 + 1;
      a1[2] = 0;
      if (v69)
      {
        operator delete(v69);
      }
    }

    else
    {
      *v20++ = *(&v77 + jj);
    }

    a1[1] = v20;
  }
}

void std::vector<GTShaderProfilerCommandBufferInfo>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = v8 >> 5;
    v10 = (v8 >> 5) + 1;
    if (v10 >> 59)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v6 = 32 * v9 + 32;
    v15 = &v13[-2 * (v8 >> 5)];
    memcpy(v15, v7, v8);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void _GTShaderProfilerStreamDataFromReplayDataSource(GTMTLReplayDataSource const*,apr_pool_t *)::$_0::operator()(unint64_t **a1, int a2, uint64_t a3)
{
  v6 = **a1;
  v7 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(a1[2], v6);
  if (v6 == -1 || v7 != 0)
  {
    *a1[1] = v7[3];
    return;
  }

  v9 = *a1[4];
  v10 = *(v9 + 88) + a2;
  v51 = *a1[3];
  v52 = a1[3][1];
  if (a3 == 4294950959)
  {
    Object = GTMTLSMContext_getObject(**(v9 + 40), v6, v10);
    AddFunctionIfExist(*a1[4], a1[3], Object[6], v10, *a1[5], 3);
    v22 = Object[7];
    if (!v22)
    {
      goto LABEL_17;
    }

    v15 = a1[3];
    v16 = *a1[4];
    v17 = *(v22 + 848);
    v18 = *a1[5];
    v19 = v10;
    v20 = 3;
    goto LABEL_16;
  }

  if (a3 == 4294951017)
  {
    v11 = GTMTLSMContext_getObject(**(v9 + 40), v6, v10);
    v12 = v11[6];
    if (v12)
    {
      AddFunctionIfExist(*a1[4], a1[3], *(v12 + 1296), v10, *a1[5], 1);
      AddFunctionIfExist(*a1[4], a1[3], *(v11[6] + 1176), v10, *a1[5], 2);
    }

    v13 = v11[8];
    if (v13)
    {
      AddFunctionIfExist(*a1[4], a1[3], *(v13 + 136), v10, *a1[5], 3);
    }

    v14 = v11[9];
    if (v14)
    {
      AddFunctionIfExist(*a1[4], a1[3], *(v14 + 360), v10, *a1[5], 7);
      v15 = a1[3];
      v16 = *a1[4];
      v17 = *(v11[9] + 368);
      v18 = *a1[5];
      v19 = v10;
      v20 = 8;
LABEL_16:
      AddFunctionIfExist(v16, v15, v17, v19, v18, v20);
    }
  }

LABEL_17:
  v49 = **a1;
  v23 = 8;
  entry = find_entry(*(*a1[4] + 8), *a1, 8uLL, 0);
  if (*entry)
  {
    v25 = *(*entry + 32);
    if (v25)
    {
      v26 = atomic_load((v25 + 56));
      v23 = v25 + (~(v26 >> 2) & 8);
    }

    else
    {
      v23 = 8;
    }
  }

  v27 = a1[6];
  v29 = *v27;
  v28 = v27[1];
  v30 = v28 - *v27;
  v50 = 0xCCCCCCCCCCCCCCCDLL * (v30 >> 3);
  v31 = a1[2];
  v32 = **a1;
  v33 = v31[1];
  v48 = *v23;
  if (!*&v33)
  {
    goto LABEL_38;
  }

  v34 = vcnt_s8(v33);
  v34.i16[0] = vaddlv_u8(v34);
  if (v34.u32[0] > 1uLL)
  {
    v35 = **a1;
    if (v32 >= *&v33)
    {
      v35 = v32 % *&v33;
    }
  }

  else
  {
    v35 = (*&v33 - 1) & v32;
  }

  v36 = *(*v31 + 8 * v35);
  if (!v36 || (v37 = *v36) == 0)
  {
LABEL_38:
    operator new();
  }

  while (1)
  {
    v38 = v37[1];
    if (v38 == v32)
    {
      break;
    }

    if (v34.u32[0] > 1uLL)
    {
      if (v38 >= *&v33)
      {
        v38 %= *&v33;
      }
    }

    else
    {
      v38 &= *&v33 - 1;
    }

    if (v38 != v35)
    {
      goto LABEL_38;
    }

LABEL_37:
    v37 = *v37;
    if (!v37)
    {
      goto LABEL_38;
    }
  }

  if (v37[2] != v32)
  {
    goto LABEL_37;
  }

  v39 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v51) >> 4);
  v40 = -1431655765 * ((a1[3][1] - *a1[3]) >> 4) - v39;
  v37[3] = v50;
  *a1[1] = v50;
  v41 = v27[2];
  if (v28 >= v41)
  {
    v43 = v50 + 1;
    if (v50 + 1 > 0x666666666666666)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v44 = 0xCCCCCCCCCCCCCCCDLL * ((v41 - v29) >> 3);
    if (2 * v44 > v43)
    {
      v43 = 2 * v44;
    }

    if (v44 >= 0x333333333333333)
    {
      v45 = 0x666666666666666;
    }

    else
    {
      v45 = v43;
    }

    if (v45)
    {
      if (v45 <= 0x666666666666666)
      {
        operator new();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v46 = 8 * (v30 >> 3);
    *v46 = v49;
    *(v46 + 8) = v48;
    *(v46 + 16) = a2;
    *(v46 + 24) = v50;
    *(v46 + 32) = v39;
    *(v46 + 36) = v40;
    v42 = v46 + 40;
    v47 = v46 - v30;
    memcpy((v46 - v30), v29, v30);
    *v27 = v47;
    v27[1] = v42;
    v27[2] = 0;
    if (v29)
    {
      operator delete(v29);
    }
  }

  else
  {
    *v28 = v49;
    *(v28 + 8) = v48;
    *(v28 + 16) = a2;
    *(v28 + 24) = v50;
    v42 = v28 + 40;
    *(v28 + 32) = v39;
    *(v28 + 36) = v40;
  }

  v27[1] = v42;
}

void AddFunctionIfExist(uint64_t a1, void **a2, uint64_t a3, unint64_t a4, void *a5, int a6)
{
  v42 = a5;
  Object = GTMTLSMContext_getObject(**(a1 + 40), a3, a4);
  if (!Object)
  {
    goto LABEL_34;
  }

  v12 = Object;
  v13 = Object + 1;
  v41 = Object[1];
  v14 = *(a1 + 8);
  v15 = 8;
  entry = find_entry(v14, v13, 8uLL, 0);
  if (*entry)
  {
    v17 = *(*entry + 32);
    if (v17)
    {
      v18 = atomic_load((v17 + 56));
      v15 = v17 + (~(v18 >> 2) & 8);
    }

    else
    {
      v15 = 8;
    }
  }

  v19 = *v15;
  v40 = v12[5];
  v20 = *a2;
  v21 = a2[1];
  v22 = v12[7];
  if (v22)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12[7]];
  }

  else
  {
    v23 = &stru_2860BD438;
  }

  v24 = [v42 addString:v23];
  if (v22)
  {
  }

  v25 = v12[10];
  if (v25)
  {
    if (*(v25 + 8))
    {
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
      v27 = [v42 addString:v26];
    }

    else
    {
      v28 = *(v25 + 16);
      if (v28)
      {
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v25 + 16)];
      }

      else
      {
        v26 = &stru_2860BD438;
      }

      v27 = [v42 addString:v26];
      if (!v28)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v27 = 0;
  }

LABEL_20:
  v29 = -1431655765 * ((v21 - v20) >> 4);
  v30 = a2[1];
  v31 = a2[2];
  if (v30 >= v31)
  {
    v33 = *a2;
    v34 = v30 - *a2;
    v35 = 0xAAAAAAAAAAAAAAABLL * (v34 >> 4) + 1;
    if (v35 > 0x555555555555555)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v36 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v33) >> 4);
    if (2 * v36 > v35)
    {
      v35 = 2 * v36;
    }

    if (v36 >= 0x2AAAAAAAAAAAAAALL)
    {
      v37 = 0x555555555555555;
    }

    else
    {
      v37 = v35;
    }

    if (v37)
    {
      if (v37 <= 0x555555555555555)
      {
        operator new();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v38 = 16 * (v34 >> 4);
    *v38 = v41;
    *(v38 + 8) = v19;
    *(v38 + 16) = v40;
    *(v38 + 24) = v29;
    *(v38 + 28) = v24;
    *(v38 + 32) = v27;
    *(v38 + 36) = a6;
    *(v38 + 40) = 0;
    v32 = (v38 + 48);
    v39 = (v38 - v34);
    memcpy((v38 - v34), v33, v34);
    *a2 = v39;
    a2[1] = v32;
    a2[2] = 0;
    if (v33)
    {
      operator delete(v33);
    }
  }

  else
  {
    *v30 = v41;
    *(v30 + 1) = v19;
    *(v30 + 2) = v40;
    *(v30 + 6) = v29;
    *(v30 + 7) = v24;
    *(v30 + 8) = v27;
    *(v30 + 9) = a6;
    v32 = v30 + 48;
    *(v30 + 5) = 0;
  }

  a2[1] = v32;
LABEL_34:
}

void sub_24D9797A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  if (v13)
  {
  }

  _Unwind_Resume(a1);
}

id GTShaderProfilerStreamDataFromReplayDataSource()
{
  v101 = MEMORY[0x28223BE20]();
  v159 = *MEMORY[0x277D85DE8];
  if (shared_initialized)
  {
    goto LABEL_11;
  }

  if (initialized++)
  {
    goto LABEL_11;
  }

  if ((apr_pools_shared_initialized & 1) != 0 || (v2 = apr_pools_initialized, ++apr_pools_initialized, v2))
  {
LABEL_5:
    *&v154 = 0;
    if (!apr_pool_create_ex(&v154, 0, 0, v0))
    {
      *(v154 + 80) = "apr_initialize";
    }

    goto LABEL_11;
  }

  global_allocator = 0;
  v3 = GTCoreAlloc(0xC8uLL);
  if (!v3)
  {
LABEL_10:
    apr_pools_initialized = 0;
    goto LABEL_11;
  }

  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 192) = 0;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  global_allocator = v3;
  *(v3 + 8) = vdupq_n_s64(0x8000uLL);
  if (apr_pool_create_ex(&global_pool, 0, v3, v0))
  {
    apr_allocator_destroy(global_allocator);
    global_allocator = 0;
    goto LABEL_10;
  }

  v95 = global_pool;
  *(global_pool + 80) = "apr_global_pool";
  if (hash_mutex)
  {
LABEL_185:
    *&v154 = 0;
    if (apr_thread_mutex_create(&v154, v95, v4))
    {
      goto LABEL_11;
    }

    v99 = global_allocator;
    v100 = global_pool;
    *(global_allocator + 24) = v154;
    *(v99 + 32) = v100;
    goto LABEL_5;
  }

  v96 = apr_palloc(v95, 0x38uLL);
  hash_mutex = v96;
  v97 = *(v95 + 5);
  if (v97)
  {
    *(v95 + 5) = *v97;
  }

  else
  {
    v97 = apr_palloc(v95, 0x20uLL);
  }

  v98 = 0;
  v97[1] = v96;
  v97[2] = atomic_cleanup;
  v97[3] = apr_pool_cleanup_null;
  *v97 = *(v95 + 4);
  *(v95 + 4) = v97;
  while (!apr_thread_mutex_create((hash_mutex + v98), v95, v4))
  {
    v98 += 8;
    if (v98 == 56)
    {
      LODWORD(v95) = global_pool;
      goto LABEL_185;
    }
  }

LABEL_11:
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, v0);
  v5 = v101;
  v149 = v101;
  v148 = 0;
  apr_pool_create_ex(&v148, newpool, 0, v6);
  v104 = GTCaptureArchiveDecompressor_create(v148);
  v7 = objc_opt_new();
  v147 = v7;
  v8 = **v101;
  if (v8)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:**v101];
    v9 = [v5 lastPathComponent];
    v7 = v147;
  }

  else
  {
    v9 = 0;
  }

  [v7 setTraceName:v9];
  if (v8)
  {
  }

  v10 = v149;
  Device = GTMTLSMContext_getDevice(*v149[5], v149[11]);
  if (Device)
  {
    v12 = Device[5];
    if (v12)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v12 + 64)];
      [v147 setMetalDeviceName:v13];

      v10 = v149;
    }
  }

  v108 = v10[2];
  v14 = v10[15];
  v15 = v10[16];
  memset(v145, 0, sizeof(v145));
  v146 = 1065353216;
  memset(v143, 0, sizeof(v143));
  v144 = 1065353216;
  v141 = 0;
  v140 = 0;
  v142 = 0;
  v138 = 0;
  v137 = 0;
  v139 = 0;
  v135 = 0;
  v134 = 0;
  v136 = 0;
  v133 = 0;
  v132 = 0;
  __p = 0;
  if (*(v14 + 3) >= 1)
  {
    v16 = 0;
    v17 = 0;
    v107 = v15;
    v18 = 0;
    v103 = 0;
    v102 = v14;
    while (1)
    {
      v19 = (v14[3] + 24 * v18);
      v20 = v15[3] + (*v19 << 6);
      if ((*(v20 + 15) & 0x40) != 0 && (v19[5] + 12542) < 0xFFFFFFFE)
      {
        goto LABEL_154;
      }

      v112 = v17;
      v113 = (v14[3] + 24 * v18);
      v109 = v15[3] + (*v19 << 6);
      v21 = *(v20 + 8);
      ConstructorType = GTFenum_getConstructorType(*(v20 + 8));
      if (ConstructorType == 25)
      {
        break;
      }

      if (ConstructorType == 51)
      {
        v158 = 0u;
        v157 = 0u;
        v156 = 0u;
        v155 = 0u;
        v154 = 0u;
        v23 = *(v109 + 8);
        if (v23 == -15343)
        {
          v26 = 0;
          *(&v155 + 1) = *v109;
        }

        else
        {
          v24 = v149[2];
          if (v23 == -15313)
          {
            v79 = GTTraceFunc_argumentBytesWithMap(v109, *(v109 + 13), v149[2]);
            *(&v157 + 1) = GTTraceFunc_argumentBytesWithMap(v109, v79[8], v24);
            v26 = *(&v154 + 1);
          }

          else if (v23 == -15333)
          {
            v25 = GTTraceFunc_argumentBytesWithMap(v109, *(v109 + 13), v149[2]);
            v154 = 0u;
            v155 = 0u;
            v156 = 0u;
            v157 = 0u;
            v158 = 0u;
            v26 = *(v25 + 1);
            if (v26)
            {
              LODWORD(v154) = 51;
              *(&v154 + 1) = v26;
              *&v155 = *v109;
              *(&v155 + 1) = -1;
              BYTE9(v158) = 1;
              *&v157 = *v25;
            }
          }

          else
          {
            v26 = 0;
          }
        }

        v152 = 0;
        v153 = 0;
        v151 = v26;
        entry = find_entry(v149[1], &v154 + 8, 8uLL, 0);
        v81 = 8;
        if (!*entry)
        {
          goto LABEL_152;
        }

        v82 = *(*entry + 32);
        if (!v82)
        {
          v81 = 8;
          goto LABEL_152;
        }

        goto LABEL_150;
      }

      if (GTMTLReplayHost_IsFuncEnumSampledEncoder(v21, 1, 0))
      {
        bzero(&v154, 0x2BA0uLL);
        bzero(&v151, 0x2BA0uLL);
        ++*(v135 - 4);
        v130 = 0;
        v129 = 0;
        v128[0] = &v130;
        v128[1] = &v129;
        v128[2] = v145;
        v128[3] = &__p;
        v128[4] = &v149;
        v128[5] = &v147;
        v128[6] = &v137;
        v31 = v113;
        v32 = *v113;
        v105 = v18;
        if (v32 >= v113[1])
        {
          goto LABEL_127;
        }

        while (1)
        {
          v33 = v15[3] + (v32 << 6);
          if (GTFenum_isParallelCommandEncoderCall(*(v33 + 8)))
          {
            v34 = &v154;
          }

          else
          {
            v34 = &v151;
          }

          GTMTLSMCommandEncoder_processTraceFunc(v34, v33, v149[2]);
          v35 = *(v34 + 1);
          v36 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v143, v35);
          if (v36)
          {
            LODWORD(v37) = *(v36 + 6);
            goto LABEL_80;
          }

          if (v16 != v112 && *(v112 - 3) == *v31)
          {
            LODWORD(v37) = -1 - 858993459 * ((v112 - v16) >> 3);
            goto LABEL_80;
          }

          v38 = find_entry(v149[1], v34 + 8, 8uLL, 0);
          v39 = 8;
          if (*v38)
          {
            v40 = *(*v38 + 32);
            if (v40)
            {
              v41 = atomic_load((v40 + 56));
              v39 = v40 + (~(v41 >> 2) & 8);
            }

            else
            {
              v39 = 8;
            }
          }

          __src = v16;
          v42 = *v39;
          v43 = *(v34 + 1);
          v106 = *v31;
          if (!v143[1])
          {
            goto LABEL_67;
          }

          v44 = vcnt_s8(v143[1]);
          v44.i16[0] = vaddlv_u8(v44);
          if (v44.u32[0] > 1uLL)
          {
            v45 = *(v34 + 1);
            if (v43 >= v143[1])
            {
              v45 = v43 % v143[1];
            }
          }

          else
          {
            v45 = (v143[1] - 1) & v43;
          }

          v46 = *(v143[0] + 8 * v45);
          if (!v46 || (v47 = *v46) == 0)
          {
LABEL_67:
            operator new();
          }

          while (1)
          {
            v48 = v47[1];
            if (v48 == v43)
            {
              break;
            }

            if (v44.u32[0] > 1uLL)
            {
              if (v48 >= v143[1])
              {
                v48 %= v143[1];
              }
            }

            else
            {
              v48 &= v143[1] - 1;
            }

            if (v48 != v45)
            {
              goto LABEL_67;
            }

LABEL_66:
            v47 = *v47;
            if (!v47)
            {
              goto LABEL_67;
            }
          }

          if (v47[2] != v43)
          {
            goto LABEL_66;
          }

          v49 = v112 - v16;
          v37 = 0xCCCCCCCCCCCCCCCDLL * ((v112 - v16) >> 3);
          v50 = (v141 - v140) >> 5;
          v51 = ((v135 - v134) >> 5) - 1;
          v47[3] = v37;
          v52 = v37 + 1;
          if (v37 + 1 > 0x666666666666666)
          {
            std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
          }

          if (0x999999999999999ALL * (-__src >> 3) > v52)
          {
            v52 = 0x999999999999999ALL * (-__src >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * (-__src >> 3) >= 0x333333333333333)
          {
            v53 = 0x666666666666666;
          }

          else
          {
            v53 = v52;
          }

          if (v53)
          {
            if (v53 <= 0x666666666666666)
            {
              operator new();
            }

            std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
          }

          v54 = 8 * (&v112[-__src] >> 3);
          *v54 = v35;
          *(v54 + 8) = v42;
          *(v54 + 16) = v106;
          *(v54 + 24) = v37;
          *(v54 + 28) = v50;
          *(v54 + 32) = v51;
          *(v54 + 36) = 0;
          v112 = (v54 + 40);
          memcpy((40 * v37 + 40 * (v49 / -40)), __src, v49);
          if (__src)
          {
            operator delete(__src);
          }

          v16 = (40 * v37 + 40 * (v49 / -40));
          v15 = v107;
          v18 = v105;
LABEL_80:
          v55 = *(v33 + 8);
          if (v55 == -16279 || v55 == -16337)
          {
            v130 = *(GTTraceFunc_argumentBytesWithMap(v33, *(v33 + 13), v108) + 1);
            _GTShaderProfilerStreamDataFromReplayDataSource(GTMTLReplayDataSource const*,apr_pool_t *)::$_0::operator()(v128, v32, *(v33 + 8));
            v55 = *(v33 + 8);
          }

          if (GTFenum_isGPUCommandCall(v55))
          {
            v56 = GTFenum_isDrawCall(v55);
            v57 = 0;
            if (v56)
            {
              v58 = 1;
              goto LABEL_120;
            }

            v58 = 3;
            if (v55 > -15298)
            {
              if (v55 != -15297)
              {
                v67 = -15059;
                goto LABEL_102;
              }
            }

            else if (v55 != -16137)
            {
              v67 = -15486;
LABEL_102:
              if (v55 != v67)
              {
                if (GTFenum_isComputeCall(v55))
                {
                  v57 = 0;
                  v58 = 2;
                }

                else if (GTFenum_isSampledBlitCallAGX(v55) || GTFenum_isSampledBlitCall(v55))
                {
                  ++v103;
                  v58 = 4;
                  v57 = 1;
                }

                else
                {
                  v75 = GTFenum_isMeshCall(v55);
                  v57 = 0;
                  if (v75)
                  {
                    v58 = 5;
                  }

                  else
                  {
                    v58 = 0;
                  }
                }
              }
            }

LABEL_120:
            LODWORD(__dst[0]) = (v141 - v140) >> 5;
            DWORD1(__dst[0]) = v37;
            if (v57)
            {
              v76 = -1;
            }

            else
            {
              v76 = v129;
            }

            DWORD2(__dst[0]) = ((v135 - v134) >> 5) - 1;
            HIDWORD(__dst[0]) = v76;
            *&__dst[1] = v32;
            *(&__dst[1] + 1) = v58 | 0xFFFFFFFF00000000;
            std::vector<GTShaderProfilerCommandBufferInfo>::push_back[abi:nn200100](&v140, __dst);
            if (v76 != -1)
            {
              ++*(v137 + 10 * v76 + 7);
            }

            ++*&v16[40 * v37 + 36];
          }

          else if (v55 >> 2 == 1073737833)
          {
            __srca = v16;
            p = *v104;
            GTMTLSMContext_indirectCommandBufferResources(v125, v149[5], *v109, p);
            GetExecuteCommandsInBufferArgs(&v119, v15[3] + (v32 << 6), v149[2]);
            Object = GTMTLSMContext_getObject(*v149[5], v119, *v109);
            GTMTLCreateIndirectCommandEncoder(v123, Object[14]);
            memcpy(__dst, v34, sizeof(__dst));
            if (*v34 == 28)
            {
              if ((GT_SUPPORT_0 & 0x10) != 0)
              {
                v68 = v121;
                if (v121)
                {
                  v69 = v120;
                  v70 = v122;
                  v71 = v124;
                  v72 = ((v135 - v134) >> 5) - 1;
                  v73 = &v16[40 * v37];
                  do
                  {
                    v126 = v70 + v71 * v69;
                    if (GTMTLSMComputeCommandEncoder_loadIndirectCommand(&__dst[3] + 8, v123, v126, v125))
                    {
                      v130 = *&__dst[4];
                      _GTShaderProfilerStreamDataFromReplayDataSource(GTMTLReplayDataSource const*,apr_pool_t *)::$_0::operator()(v128, v32, 4294950959);
                      LODWORD(v115) = (v141 - v140) >> 5;
                      *(&v115 + 4) = __PAIR64__(v72, v37);
                      v74 = v129;
                      HIDWORD(v115) = v129;
                      v116 = v32;
                      v117 = 2;
                      v118 = v69;
                      std::vector<GTShaderProfilerCommandBufferInfo>::push_back[abi:nn200100](&v140, &v115);
                      if (v74 != -1)
                      {
                        ++*(v137 + 10 * v74 + 7);
                      }

                      ++*(v73 + 9);
                    }

                    ++v69;
                    --v68;
                  }

                  while (v68);
                }
              }
            }

            else if (*v34 == 70)
            {
              v60 = v121;
              if (v121)
              {
                v61 = v120;
                v62 = v122;
                v63 = v124;
                v64 = ((v135 - v134) >> 5) - 1;
                v65 = &v16[40 * v37];
                do
                {
                  v126 = v62 + v63 * v61;
                  if (GTMTLSMRenderCommandEncoder_loadIndirectCommand(&__dst[3] + 8, v123, v126, v125))
                  {
                    v130 = *(&__dst[537] + 1);
                    _GTShaderProfilerStreamDataFromReplayDataSource(GTMTLReplayDataSource const*,apr_pool_t *)::$_0::operator()(v128, v32, 4294951017);
                    LODWORD(v115) = (v141 - v140) >> 5;
                    *(&v115 + 4) = __PAIR64__(v64, v37);
                    v66 = v129;
                    HIDWORD(v115) = v129;
                    v116 = v32;
                    v117 = 1;
                    v118 = v61;
                    std::vector<GTShaderProfilerCommandBufferInfo>::push_back[abi:nn200100](&v140, &v115);
                    if (v66 != -1)
                    {
                      ++*(v137 + 10 * v66 + 7);
                    }

                    ++*(v65 + 9);
                  }

                  ++v61;
                  --v60;
                }

                while (v60);
              }
            }

            apr_pool_clear(p);
            v16 = __srca;
            v15 = v107;
          }

          ++v32;
          v31 = v113;
          if (v32 >= v113[1])
          {
LABEL_127:
            v18 += v31[3];
            v14 = v102;
            v17 = v112;
            goto LABEL_154;
          }
        }
      }

LABEL_153:
      v17 = v112;
LABEL_154:
      if (++v18 >= *(v14 + 3))
      {
        v91 = v17;
        goto LABEL_164;
      }
    }

    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v154 = 0u;
    v27 = v149[2];
    v28 = *(v109 + 8);
    if (v28 > -16203)
    {
      if (v28 <= -15702)
      {
        v77 = v28 == -16202;
        v78 = -15908;
      }

      else
      {
        if (v28 == -15701)
        {
          v87 = GTTraceFunc_argumentBytesWithMap(v109, *(v109 + 13), v149[2]);
          v154 = 0u;
          v155 = 0u;
          v156 = 0u;
          v157 = 0u;
          v158 = 0u;
          v88 = *(v87 + 1);
          if (v88)
          {
            LODWORD(v154) = 25;
            *(&v154 + 1) = v88;
            *&v155 = *v109;
            *(&v155 + 1) = -1;
            *&v157 = *v87;
            v89 = GTTraceFunc_argumentBytesWithMap(v109, v87[16], v27);
            *&v158 = v89;
            if (v89)
            {
              BYTE9(v158) = v89[9];
            }
          }

          goto LABEL_148;
        }

        v77 = v28 == -15318;
        v78 = -15316;
      }

      if (!v77 && v28 != v78)
      {
        goto LABEL_148;
      }
    }

    else
    {
      if (v28 <= -16362)
      {
        if (v28 == -16365)
        {
          v86 = GTTraceFunc_argumentBytesWithMap(v109, *(v109 + 13), v149[2]);
          *(&v157 + 1) = GTTraceFunc_argumentBytesWithMap(v109, v86[8], v27);
        }

        else if (v28 == -16364)
        {
          BYTE8(v158) = *(GTTraceFunc_argumentBytesWithMap(v109, *(v109 + 13), v149[2]) + 2);
        }

        goto LABEL_148;
      }

      if (v28 != -16361)
      {
        if (v28 != -16343)
        {
          if (v28 != -16342)
          {
            goto LABEL_148;
          }

          v29 = GTTraceFunc_argumentBytesWithMap(v109, *(v109 + 13), v149[2]);
          v154 = 0u;
          v155 = 0u;
          v156 = 0u;
          v157 = 0u;
          v158 = 0u;
          v30 = *(v29 + 1);
          if (!v30)
          {
            goto LABEL_148;
          }

          LODWORD(v154) = 25;
          *(&v154 + 1) = v30;
          *&v155 = *v109;
          *(&v155 + 1) = -1;
          goto LABEL_162;
        }

        v29 = GTTraceFunc_argumentBytesWithMap(v109, *(v109 + 13), v149[2]);
        v154 = 0u;
        v155 = 0u;
        v156 = 0u;
        v157 = 0u;
        v158 = 0u;
        v90 = *(v29 + 1);
        if (v90)
        {
          LODWORD(v154) = 25;
          *(&v154 + 1) = v90;
          *&v155 = *v109;
          *(&v155 + 1) = -1;
          BYTE9(v158) = 1;
LABEL_162:
          *&v157 = *v29;
        }

LABEL_148:
        v152 = 0;
        v153 = 0;
        v151 = *(&v154 + 1);
        v84 = find_entry(v149[1], &v154 + 8, 8uLL, 0);
        v81 = 8;
        if (!*v84)
        {
LABEL_152:
          *(&v151 + 1) = *v81;
          v152 = *v113;
          v153 = ((v135 - v134) >> 5);
          std::vector<GTShaderProfilerCommandBufferInfo>::push_back[abi:nn200100](&v134, &v151);
          goto LABEL_153;
        }

        v82 = *(*v84 + 32);
        if (!v82)
        {
          v81 = 8;
          goto LABEL_152;
        }

LABEL_150:
        v85 = atomic_load((v82 + 56));
        v81 = v82 + (~(v85 >> 2) & 8);
        goto LABEL_152;
      }
    }

    *(&v155 + 1) = *v109;
    goto LABEL_148;
  }

  v16 = 0;
  v91 = 0;
  v103 = 0;
LABEL_164:
  [v147 addGPUCommands:? count:?];
  [v147 addEncoders:v16 count:0xCCCCCCCCCCCCCCCDLL * ((v91 - v16) >> 3)];
  [v147 addPipelineStates:? count:?];
  v92 = v134;
  [v147 addCommandBuffers:v134 count:(v135 - v134) >> 5];
  [v147 addShaderFunctionInfo:? count:?];
  [v147 setNumBlitCalls:v103];
  apr_pool_destroy(v148);
  v93 = v147;
  if (__p)
  {
    v132 = __p;
    operator delete(__p);
  }

  if (v92)
  {
    operator delete(v92);
  }

  if (v137)
  {
    v138 = v137;
    operator delete(v137);
  }

  if (v16)
  {
    operator delete(v16);
  }

  if (v140)
  {
    operator delete(v140);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v143);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v145);

  [v93 setDataSourceHasUnusedResources:0 captureRange:{v101[11], v101[12]}];
  apr_pool_destroy(newpool);

  return v93;
}

void GTMTLReplayController_tileMemoryFree(uint64_t a1)
{
  [*(a1 + 56) removeAllObjects];
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;

  v3 = *(a1 + 88);
  *(a1 + 88) = 0;

  v4 = *(a1 + 96);
  *(a1 + 96) = 0;

  v5 = *(a1 + 104);
  *(a1 + 104) = 0;

  v6 = *(a1 + 136);
  *(a1 + 136) = 0;

  v7 = *(a1 + 112);
  *(a1 + 112) = 0;

  v8 = *(a1 + 120);
  *(a1 + 120) = 0;
}

void GTMTLReplayController_tileMemoryLoad(uint64_t a1)
{
  if (GT_SUPPORT_0)
  {
    v2 = *(a1 + 11360);
    v3 = *(a1 + 8);
    if (v2 - 95) <= 0xA && ((0x409u >> (v2 - 95)))
    {
      v4 = GTMTLReplayController_renderPassDescriptor4(a1);
      v5 = [v3 defaultDevice];
      v6 = objc_opt_new();
      [v6 setMaxBufferBindCount:1];
      v7 = [v5 newArgumentTableWithDescriptor:v6 error:0];
      if (*(a1 + 11360))
      {
        v8 = *(a1 + 200);
      }

      else
      {
        v8 = 0;
      }

      v13 = [*(a1 + 8) mtl4RenderCommandEncoderForKey:v8];
      v14 = v13;
      if (*(a1 + 136))
      {
        [v13 setRenderPipelineState:*(a1 + 120)];
        [v7 setAddress:objc_msgSend(*(a1 + 136) atIndex:{"gpuAddress"), 0}];
        [v14 setArgumentTable:v7 atStages:4];
        v15 = *(v4 + 628);
        v16.i64[0] = *(v4 + 630);
        v16.i64[1] = v15;
        v17 = 1;
        [v14 dispatchThreadsPerTile:&v16];
      }

      if (*(a1 + 128))
      {
        [v14 setRenderPipelineState:*(a1 + 96)];
        [v14 setThreadgroupMemoryLength:*(v4 + 616) offset:0 atIndex:0];
        [v7 setAddress:objc_msgSend(*(a1 + 128) atIndex:{"gpuAddress"), 0}];
        [v14 setArgumentTable:v7 atStages:4];
        v16 = vdupq_n_s64(1uLL);
        v17 = 1;
        [v14 dispatchThreadsPerTile:&v16];
      }
    }

    else
    {
      v9 = GTMTLReplayController_renderPassDescriptor(a1);
      if (v2)
      {
        v10 = *(a1 + 200);
      }

      else
      {
        v10 = 0;
      }

      v11 = [v3 renderCommandEncoderForKey:v10];
      v5 = v11;
      if (*(a1 + 136))
      {
        [v11 setRenderPipelineState:*(a1 + 120)];
        [v5 setTileBuffer:*(a1 + 136) offset:0 atIndex:0];
        v12 = *(v9 + 812);
        v16.i64[0] = *(v9 + 814);
        v16.i64[1] = v12;
        v17 = 1;
        [v5 dispatchThreadsPerTile:&v16];
      }

      if (*(a1 + 128))
      {
        [v5 setRenderPipelineState:*(a1 + 96)];
        [v5 setThreadgroupMemoryLength:*(v9 + 800) offset:0 atIndex:0];
        [v5 setTileBuffer:*(a1 + 128) offset:0 atIndex:0];
        v16 = vdupq_n_s64(1uLL);
        v17 = 1;
        [v5 dispatchThreadsPerTile:&v16];
      }
    }
  }
}

void AddMemorylessTexture(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v14 = a1[7];
  Object = GTMTLSMContext_getObject(**(v6 + 40), a2, a3);
  if (Object && *Object == 80)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    GTMTLSMContext_getTextureDescriptor(*(v6 + 40), a2, a3, &v15);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
    v9 = WORD2(v17);
    if ((BYTE4(v17) & 0xF0) == 0x30)
    {
      v10 = [v14 objectForKeyedSubscript:v8];

      if (!v10)
      {
        v11 = [a1[1] defaultDevice];
        WORD2(v17) = v9 & 0xFF2F;
        DWORD1(v16) |= 1u;
        v12 = MakeMTLTextureDescriptorWithoutResourceIndex(&v15);
        v13 = [v11 newTextureWithDescriptor:v12];
        [v14 setObject:v13 forKeyedSubscript:v8];
      }
    }
  }
}

void sub_24D97B124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::unique_ptr<GRCCurrentFrameStream>::reset[abi:nn200100]((v10 + 488));
  std::__hash_table<std::__hash_value_type<unsigned int,RingBufferSampledData>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RingBufferSampledData>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RingBufferSampledData>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RingBufferSampledData>>>::~__hash_table(v10 + 448);
  v12 = *(v10 + 424);
  if (v12)
  {
    *(v10 + 432) = v12;
    operator delete(v12);
  }

  a10 = v10 + 328;
  std::vector<std::pair<unsigned int,SampleInfoWithPayload>>::__destroy_vector::operator()[abi:nn200100](&a10);
  a10 = v10 + 304;
  std::vector<std::tuple<unsigned int,SampleInfoWithPayload,unsigned long long>>::__destroy_vector::operator()[abi:nn200100](&a10);
  ProgramAddressHelper::~ProgramAddressHelper(v10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<GRCCurrentFrameStream>::reset[abi:nn200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    v2 = *(v1 + 256);
    if (v2)
    {
      *(v1 + 264) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 232);
    if (v3)
    {
      *(v1 + 240) = v3;
      operator delete(v3);
    }

    v4 = *(v1 + 208);
    if (v4)
    {
      operator delete(v4);
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v1 + 168);
    v5 = *(v1 + 144);
    if (v5)
    {
      do
      {
        v6 = *v5;
        v7 = v5[3];
        if (v7)
        {
          v5[4] = v7;
          operator delete(v7);
        }

        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    v8 = *(v1 + 128);
    *(v1 + 128) = 0;
    if (v8)
    {
      operator delete(v8);
    }

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v1 + 88);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v1 + 48);
    v9 = *(v1 + 24);
    if (v9)
    {
      do
      {
        v10 = *v9;
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    v11 = *(v1 + 8);
    *(v1 + 8) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    JUMPOUT(0x2530332C0);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,RingBufferSampledData>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,RingBufferSampledData>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,RingBufferSampledData>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,RingBufferSampledData>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 11);
      *(v2 + 11) = 0;

      v5 = *(v2 + 12);
      *(v2 + 12) = 0;

      v6 = *(v2 + 14);
      if (v6)
      {
        *(v2 + 15) = v6;
        operator delete(v6);
      }

      v7 = *(v2 + 4);
      if (v7)
      {
        *(v2 + 5) = v7;
        operator delete(v7);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return a1;
}

void std::vector<std::pair<unsigned int,SampleInfoWithPayload>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v4 -= 96;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::tuple<unsigned int,SampleInfoWithPayload,unsigned long long>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 4);
        if (v6)
        {
          *(v4 - 3) = v6;
          operator delete(v6);
        }

        v4 -= 104;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::set<ProgramAddressHelper::ProgramAddressInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<ProgramAddressHelper::ProgramAddressInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<ProgramAddressHelper::ProgramAddressInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<ProgramAddressHelper::ProgramAddressInfo>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(v2[4]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<ProgramAddressHelper::PerRingBufferProgramInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(*(v4 - 5));
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((v4 - 88));
        v4 -= 88;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ProgramAddressHelper::~ProgramAddressHelper(void **this)
{
  for (i = 33; i != 18; i -= 5)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&this[i]);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((this + 18));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((this + 13));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table((this + 8));
  std::__hash_table<std::__hash_value_type<unsigned int,std::set<ProgramAddressHelper::ProgramAddressInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<ProgramAddressHelper::ProgramAddressInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<ProgramAddressHelper::ProgramAddressInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<ProgramAddressHelper::ProgramAddressInfo>>>>::~__hash_table((this + 3));
  v3 = this;
  std::vector<ProgramAddressHelper::PerRingBufferProgramInfo>::__destroy_vector::operator()[abi:nn200100](&v3);
}

void FillAttachmentPixelFormats(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  v16 = a4;
  v7 = 0;
  v8 = 0;
  v9 = (a1 + 8);
  do
  {
    v11 = *v9;
    v9 += 8;
    v10 = v11;
    if (v11)
    {
      v19 = 0;
      v18 = 0u;
      memset(v17, 0, sizeof(v17));
      GTMTLSMContext_getTextureDescriptor(a2, v10, a3, v17);
      v12 = WORD1(v18);
      v13 = [v16 colorAttachments];
      v14 = [v13 objectAtIndexedSubscript:v7];
      [v14 setPixelFormat:v12];

      v8 = HIBYTE(v18);
    }

    ++v7;
  }

  while (v7 != 8);
  if (v8 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v8;
  }

  [v16 setRasterSampleCount:v15];
}

id HarvestTileImageBlockMemory(uint64_t *a1, uint64_t a2, void **a3)
{
  v98[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 2840) != 70)
  {
    GTMTLReplay_fillError(a3, 101, MEMORY[0x277CBEC10]);
    if (a3)
    {
      v15 = *a3;
    }

    else
    {
      v15 = 0;
    }

    GTMTLReplay_handleNSError(v15);
    v16 = 0;
    goto LABEL_86;
  }

  v6 = *a1[23];
  v86 = *a1;
  v87 = *(*a1 + 88);
  v85 = *(a1 + 5640);
  v7 = GTMTLSMContext_getObject(**(*a1 + 40), a1[1099], v87 + v85)[7];
  v8 = *(v7 + 64);
  LODWORD(v9) = *(v7 + 200);
  v10 = 56;
  if (*(v7 + 200))
  {
    v10 = 32;
  }

  else
  {
    LODWORD(v9) = *(v7 + 202);
  }

  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (!v11)
  {
    v12 = 0;
    v13 = *(v7 + v10);
    v9 = v9;
    v8 = v13;
    do
    {
      v14 = *(v8 + 16);
      if (v14 == 17)
      {
        if (*(v8 + 38) == 1)
        {
          goto LABEL_20;
        }
      }

      else if (v14 == 16)
      {
        v8 = v13 + 56 * v12;
        goto LABEL_20;
      }

      ++v12;
      v8 += 56;
      --v9;
    }

    while (v9);
    v8 = 0;
  }

LABEL_20:
  v17 = *(v8 + 24);
  if (!v17)
  {
    v17 = *(v8 + 8);
  }

  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 8);
    do
    {
      countStructMember(v19);
      v19 += 32;
      --v18;
    }

    while (v18);
  }

  v20 = apr_array_make(v6, 8, 8);
  nameStructType1(v20, v17, a2);
  v22 = v21;
  v92[1] = v21;
  v24 = apr_array_pstrcat(v6, v20, v23);
  p = v6;
  v25 = apr_psprintf(v6, v24, a2);
  v92[0] = v25;
  v26 = a1[1];
  v27 = [v26 defaultDevice];
  v28 = objc_alloc_init(MEMORY[0x277CD7050]);
  v29 = v28;
  v30 = HIDWORD(v22);
  if (v22)
  {
    [v28 setTextureType:3];
    [v29 setArrayLength:v22];
    v31 = 19;
  }

  else
  {
    v31 = 3;
  }

  [v29 setUsage:v31];
  [v29 setWidth:a1[2818]];
  [v29 setHeight:a1[2819]];
  if ((v22 & 0xFFFF00000000) == 0)
  {
    if ((BYTE6(v22) - 3) > 0x35u)
    {
      LOWORD(v30) = 0;
    }

    else
    {
      LOWORD(v30) = word_24DA913D0[4 * (BYTE6(v22) - 3)];
    }
  }

  [v29 setPixelFormat:v30];
  [v29 setStorageMode:2];
  v32 = [v27 newTextureWithDescriptor:v29];
  if (!v32)
  {
    v97 = @"GTErrorKeyMTLTextureDescriptor";
    v98[0] = v29;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:&v97 count:1];
    GTMTLReplay_fillError(a3, 101, v34);
    if (a3)
    {
      v35 = *a3;
    }

    else
    {
      v35 = 0;
    }

    GTMTLReplay_handleNSError(v35);

    goto LABEL_84;
  }

  v33 = p;
  if (GT_SUPPORT_0)
  {
    v79 = a3;
    v36 = MEMORY[0x277CCACA8];
    v37 = apr_array_make(p, 8, 8);
    *apr_array_push(v37) = "#include <metal_stdlib>\n#include <metal_imageblocks>\n#include <simd/simd.h>\nusing namespace metal;\n\nstruct ImageblockMaster {\n";
    v38 = *(v8 + 16);
    v83 = v27;
    v84 = v26;
    v81 = v25;
    v82 = v32;
    v80 = v36;
    if (v38 == 17 || v38 == 16)
    {
      v39 = *(v8 + 24);
      if (!v39)
      {
        v39 = *(v8 + 8);
      }
    }

    else
    {
      v39 = 0;
    }

    v40 = apr_array_make(p, 8, 8);
    if (*(v39 + 16))
    {
      v41 = v40;
      v42 = 0;
      v43 = 0;
      do
      {
        v41->nelts = 0;
        processStructMember(v41, *(v39 + 8) + v42, 1, 0);
        v45 = apr_array_pstrcat(v37->pool, v41, v44);
        *apr_array_push(v37) = v45;
        ++v43;
        v42 += 32;
      }

      while (v43 < *(v39 + 16));
    }

    *apr_array_push(v37) = "};\n\n";
    v46 = *(v8 + 16);
    if (v46 == 16)
    {
      v52 = *(v8 + 37);
      v49 = *(v8 + 36);
      *apr_array_push(v37) = "kernel void dumpImageBlockData(imageblock<ImageblockMaster, imageblock_layout_explicit> imageBlock";
      v26 = v84;
      v47 = p;
      if (v52)
      {
LABEL_50:
        v50 = apr_array_push(v37);
        v51 = " [[ alias_implicit_imageblock ]]";
        goto LABEL_54;
      }
    }

    else
    {
      v47 = p;
      if (v46 != 17)
      {
        *apr_array_push(v37) = "kernel void dumpImageBlockData(imageblock<ImageblockMaster, imageblock_layout_explicit> imageBlock";
        v26 = v84;
        goto LABEL_56;
      }

      v48 = *(v8 + 37);
      v49 = *(v8 + 36);
      *apr_array_push(v37) = "kernel void dumpImageBlockData(imageblock<ImageblockMaster, imageblock_layout_explicit> imageBlock";
      v26 = v84;
      if (v48)
      {
        goto LABEL_50;
      }
    }

    if (v49 > 7)
    {
LABEL_56:
      *apr_array_push(v37) = ",\n\tuint2 gid [[ thread_position_in_grid ]],\n\tushort2 lid [[ thread_position_in_threadgroup ]],\n\t";
      if (v22)
      {
        v54 = "texture2d_array";
      }

      else
      {
        v54 = "texture2d";
      }

      *apr_array_push(v37) = v54;
      *apr_array_push(v37) = "<";
      if ((BYTE6(v22) - 3) > 0x35u)
      {
        v55 = 0;
      }

      else
      {
        v55 = off_279658B48[(BYTE6(v22) - 3)];
      }

      *apr_array_push(v37) = v55;
      *apr_array_push(v37) = ", access::write> imageBlockData [[ texture(0) ]])\n";
      *apr_array_push(v37) = "{\n";
      *apr_array_push(v37) = "\tthreadgroup_imageblock ImageblockMaster* ib = imageBlock.data(lid);\n";
      v56 = apr_array_push(v37);
      if (v22)
      {
        *v56 = "\tfor (int i = 0; i < ";
        v57 = apr_psprintf(v37->pool, "%u", v22);
        *apr_array_push(v37) = v57;
        *apr_array_push(v37) = "; i++) {\n";
        *apr_array_push(v37) = "\t\t";
        if ((BYTE6(v22) - 3) > 0x35u)
        {
          v58 = 0;
        }

        else
        {
          v58 = off_279658CF8[(BYTE6(v22) - 3)];
        }

        v27 = v83;
        *apr_array_push(v37) = v58;
        *apr_array_push(v37) = " currData = ib->";
        *apr_array_push(v37) = v81;
        *apr_array_push(v37) = "[i];\n";
        *apr_array_push(v37) = "\t\timageBlockData.write(";
        GenerateStringForWritingDataToTexture(v37, v92);
        *apr_array_push(v37) = ", gid, i);\n";
        v60 = apr_array_push(v37);
        v61 = "\t}\n";
      }

      else
      {
        *v56 = "\t";
        if ((BYTE6(v22) - 3) > 0x35u)
        {
          v59 = 0;
        }

        else
        {
          v59 = off_279658CF8[(BYTE6(v22) - 3)];
        }

        v27 = v83;
        *apr_array_push(v37) = v59;
        *apr_array_push(v37) = " currData = ib->";
        *apr_array_push(v37) = v81;
        *apr_array_push(v37) = ";\n";
        *apr_array_push(v37) = "\timageBlockData.write(";
        GenerateStringForWritingDataToTexture(v37, v92);
        v60 = apr_array_push(v37);
        v61 = ", gid);\n";
      }

      *v60 = v61;
      *apr_array_push(v37) = "}\n";
      v63 = [v80 stringWithUTF8String:{apr_array_pstrcat(v47, v37, v62)}];
      v91 = 0;
      v64 = [v27 newLibraryWithSource:v63 options:0 error:&v91];
      v65 = v91;
      if (v65)
      {
        v66 = v65;
        v95 = *MEMORY[0x277CCA7E8];
        v96 = v65;
        v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
        GTMTLReplay_fillError(v79, 101, v67);
        v32 = v82;
        if (v79)
        {
          v68 = *v79;
        }

        else
        {
          v68 = 0;
        }

        GTMTLReplay_handleNSError(v68);
      }

      else
      {
        v67 = objc_alloc_init(MEMORY[0x277CD7070]);
        [v67 setLabel:@"Tile Pipeline for dumping Image Block data"];
        v69 = [v64 newFunctionWithName:@"dumpImageBlockData"];
        [v67 setTileFunction:v69];

        [v67 setThreadgroupSizeMatchesTileSize:1];
        v70 = GTMTLReplayController_renderPassDescriptor(a1);
        FillAttachmentPixelFormats(v70, *(v86 + 40), v87 + v85, v67);
        v90 = 0;
        v71 = [v27 newRenderPipelineStateWithTileDescriptor:v67 error:&v90];
        v72 = v90;
        v32 = v82;
        if (!v72)
        {

          if (*(a1 + 2840))
          {
            v76 = a1[25];
          }

          else
          {
            v76 = 0;
          }

          v33 = p;
          v78 = [v26 renderCommandEncoderForKey:v76];
          [v78 pushDebugGroup:@"Dump Tile Data"];
          [v78 setRenderPipelineState:v71];
          [v78 setTileTexture:v82 atIndex:0];
          v89[0] = [v78 tileWidth];
          v89[1] = [v78 tileHeight];
          v89[2] = 1;
          [v78 dispatchThreadsPerTile:v89];
          [v78 popDebugGroup];

          goto LABEL_34;
        }

        v73 = v72;
        v93 = *MEMORY[0x277CCA7E8];
        v94 = v72;
        v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
        GTMTLReplay_fillError(v79, 101, v74);
        if (v79)
        {
          v75 = *v79;
        }

        else
        {
          v75 = 0;
        }

        GTMTLReplay_handleNSError(v75);

        v66 = v63;
        v63 = v71;
      }

LABEL_84:
      v16 = 0;
      goto LABEL_85;
    }

    *apr_array_push(v37) = " [[ alias_implicit_imageblock_color";
    v53 = apr_psprintf(v37->pool, "(%u)", v49);
    *apr_array_push(v37) = v53;
    v50 = apr_array_push(v37);
    v51 = " ]]";
LABEL_54:
    *v50 = v51;
    goto LABEL_56;
  }

LABEL_34:
  apr_pool_clear(v33);
  v16 = v32;
LABEL_85:

LABEL_86:

  return v16;
}

uint64_t countStructMember(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == 1)
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 16);
    if (!v5)
    {
      return 0;
    }

    LODWORD(v6) = 0;
    v7 = *(v4 + 8);
    do
    {
      v6 = countStructMember(v7) + v6;
      v7 += 32;
      --v5;
    }

    while (v5);
    return v6;
  }

  if (v1 != 2)
  {
    return 1;
  }

  v2 = *(a1 + 8);

  return countArrayType(v2);
}

uint64_t nameStructType1(apr_array_header_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  for (i = *(a2 + 8); ; i += 32)
  {
    v7 = countStructMember(i);
    if (a3 < v7)
    {
      break;
    }

    a3 = (a3 - v7);
    if (!--v3)
    {
      return 0;
    }
  }

  v9 = *i;
  if (!strncmp(*i, "user(", 5uLL))
  {
    v9 = "fragmentMember%d";
  }

  *apr_array_push(a1) = v9;
  v10 = *(i + 24);
  if (v10 == 1)
  {
    v11 = *(i + 8);
    *apr_array_push(a1) = ".";
    return nameStructType1(a1, v11, a3);
  }

  else if (v10 == 2)
  {
    return nameArrayType(a1, *(i + 8), a3);
  }

  else
  {
    return 0;
  }
}

uint64_t processStructMember(apr_array_header_t *a1, uint64_t a2, uint64_t a3, apr_allocator_t *a4)
{
  v8 = *a2;
  if (!strncmp(*a2, "user(", 5uLL))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v8 = apr_psprintf(a1->pool, "fragmentMember%d", a4);
  }

  *apr_array_push(a1) = v8;
  v10 = *(a2 + 24);
  switch(v10)
  {
    case 1:
      v11 = processStructType(a1, *(a2 + 8), a3, a4);
      break;
    case 60:
      v11 = processPointerType(a1, *(a2 + 8), a3, a4);
      break;
    case 2:
      v11 = processArrayType(a1, *(a2 + 8), a3, a4);
      break;
    default:
      processDataType(a1, *(a2 + 25), v10, a3);
      v12 = 1;
      if (!v9)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
  }

  v12 = v11;
  if (v9)
  {
LABEL_13:
    *apr_array_push(a1) = "[[ ";
    *apr_array_push(a1) = v9;
    *apr_array_push(a1) = " ]]";
  }

LABEL_14:
  *apr_array_push(a1) = ";\n";
  return v12;
}

void *GenerateStringForWritingDataToTexture(apr_array_header_t *arr, uint64_t a2)
{
  if (*(a2 + 14) - 3 > 0x35)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_279658B48[(*(a2 + 14) - 3)];
  }

  *apr_array_push(arr) = v4;
  if (*(a2 + 14) - 4 > 0x34)
  {
    v5 = "4(currData, 0, 0, 0)";
  }

  else
  {
    v5 = off_279658EA8[(*(a2 + 14) - 4)];
  }

  result = apr_array_push(arr);
  *result = v5;
  return result;
}

uint64_t processArrayType(apr_array_header_t *a1, uint64_t a2, uint64_t a3, apr_allocator_t *a4)
{
  for (i = 1; ; i *= v11)
  {
    v9 = apr_psprintf(a1->pool, "[%u]", *(a2 + 20));
    *apr_array_push(a1) = v9;
    v10 = *(a2 + 24);
    v11 = *(a2 + 20);
    if (v10 != 2)
    {
      break;
    }

    a2 = *(a2 + 8);
  }

  if (v10 == 1)
  {
    v12 = processStructType(a1, *(a2 + 8), a3, a4);
  }

  else
  {
    if (v10 != 60)
    {
      processDataType(a1, *(a2 + 25), v10, a3);
      return (v11 * i);
    }

    v12 = processPointerType(a1, *(a2 + 8), a3, a4);
  }

  v11 *= v12;
  return (v11 * i);
}

uint64_t processStructType(apr_array_header_t *a1, uint64_t a2, int a3, apr_allocator_t *a4)
{
  v4 = a4;
  newpool = 0;
  apr_pool_create_ex(&newpool, a1->pool, 0, a4);
  p = newpool;
  v8 = apr_array_make(newpool, 8, 8);
  nelts = a1->nelts;
  if (nelts > 1)
  {
    v10 = 0;
    v11 = nelts - 1;
    v12 = nelts - 2;
    do
    {
      elts = a1->elts;
      v14 = *&elts[8 * v10];
      *&elts[8 * v10] = *&elts[8 * v11];
      *&a1->elts[8 * v11] = v14;
      ++v10;
      --v11;
      v15 = v12-- <= v10;
    }

    while (!v15);
  }

  *apr_array_push(a1) = "} ";
  if (a3 >= 1)
  {
    v16 = a3;
    do
    {
      *apr_array_push(a1) = "\t";
      --v16;
    }

    while (v16);
  }

  v17 = *(a2 + 16);
  if (v17 < 1)
  {
    v18 = 0;
  }

  else
  {
    LODWORD(v18) = 0;
    v19 = v17 + 1;
    v20 = 32 * v17 - 32;
    do
    {
      v8->nelts = 0;
      v18 = processStructMember(v8, *(a2 + 8) + v20, (a3 + 1), (v18 + v4)) + v18;
      v22 = apr_array_pstrcat(a1->pool, v8, v21);
      *apr_array_push(a1) = v22;
      --v19;
      v20 -= 32;
    }

    while (v19 > 1);
  }

  *apr_array_push(a1) = "struct {\n";
  if (a3 >= 1)
  {
    do
    {
      *apr_array_push(a1) = "\t";
      --a3;
    }

    while (a3);
  }

  v23 = a1->nelts;
  if (v23 > 1)
  {
    v24 = 0;
    v25 = v23 - 1;
    v26 = v23 - 2;
    do
    {
      v27 = a1->elts;
      v28 = *&v27[8 * v24];
      *&v27[8 * v24] = *&v27[8 * v25];
      *&a1->elts[8 * v25] = v28;
      ++v24;
      --v25;
      v15 = v26-- <= v24;
    }

    while (!v15);
  }

  apr_pool_destroy(p);
  return v18;
}

uint64_t processPointerType(apr_array_header_t *arr, uint64_t a2, uint64_t a3, apr_allocator_t *a4)
{
  v5 = a3;
  v8 = *(a2 + 22);
  if (v8 == 1)
  {
    nelts = arr->nelts;
    if (nelts >= 2)
    {
      v24 = 0;
      v25 = nelts - 1;
      v26 = nelts - 2;
      do
      {
        elts = arr->elts;
        v28 = *&elts[8 * v24];
        *&elts[8 * v24] = *&elts[8 * v25];
        *&arr->elts[8 * v25] = v28;
        ++v24;
        --v25;
        v16 = v26-- <= v24;
      }

      while (!v16);
    }

    *apr_array_push(arr) = "*";
    v29 = arr->nelts;
    if (v29 >= 2)
    {
      v30 = 0;
      v31 = v29 - 1;
      v32 = v29 - 2;
      do
      {
        v33 = arr->elts;
        v34 = *&v33[8 * v30];
        *&v33[8 * v30] = *&v33[8 * v31];
        *&arr->elts[8 * v31] = v34;
        ++v30;
        --v31;
        v16 = v32-- <= v30;
      }

      while (!v16);
    }

    if (*(a2 + 22) == 1)
    {
      v35 = *(a2 + 8);
    }

    else
    {
      v35 = 0;
    }

    return processStructType(arr, v35, v5, a4);
  }

  else
  {
    if (v8 != 2)
    {
      return 1;
    }

    v9 = processArrayType(arr, *(a2 + 8), a3, a4);
    v10 = arr->nelts;
    if (v10 >= 2)
    {
      v11 = 0;
      v12 = v10 - 1;
      v13 = v10 - 2;
      do
      {
        v14 = arr->elts;
        v15 = *&v14[8 * v11];
        *&v14[8 * v11] = *&v14[8 * v12];
        *&arr->elts[8 * v12] = v15;
        ++v11;
        --v12;
        v16 = v13-- <= v11;
      }

      while (!v16);
    }

    *apr_array_push(arr) = "(*";
    v17 = arr->nelts;
    if (v17 >= 2)
    {
      v18 = 0;
      v19 = v17 - 1;
      v20 = v17 - 2;
      do
      {
        v21 = arr->elts;
        v22 = *&v21[8 * v18];
        *&v21[8 * v18] = *&v21[8 * v19];
        *&arr->elts[8 * v19] = v22;
        ++v18;
        --v19;
        v16 = v20-- <= v18;
      }

      while (!v16);
    }

    *apr_array_push(arr) = ")";
    return v9;
  }
}

void *processDataType(apr_array_header_t *arr, int a2, int a3, int a4)
{
  nelts = arr->nelts;
  if (nelts >= 2)
  {
    v7 = 0;
    v8 = nelts - 1;
    v9 = nelts - 2;
    do
    {
      elts = arr->elts;
      v11 = *&elts[8 * v7];
      *&elts[8 * v7] = *&elts[8 * v8];
      *&arr->elts[8 * v8] = v11;
      ++v7;
      --v8;
      v12 = v9-- <= v7;
    }

    while (!v12);
  }

  if ((a3 - 62) > 0xFu)
  {
    v13 = 0;
    v15 = 1;
    goto LABEL_46;
  }

  v13 = 0;
  v14 = word_24DA91F80[(a3 - 62)];
  v15 = 1;
  if (v14 > 0x45)
  {
    if (word_24DA91F80[(a3 - 62)] > 0x5Bu)
    {
      if (word_24DA91F80[(a3 - 62)] > 0x6Du)
      {
        if (v14 == 110)
        {
          v13 = "rgba16unorm";
        }

        else
        {
          if (v14 != 112)
          {
            goto LABEL_46;
          }

          v13 = "rgba16snorm";
        }
      }

      else if (v14 == 92)
      {
        v13 = "rg11b10f";
      }

      else
      {
        if (v14 != 93)
        {
          goto LABEL_46;
        }

        v13 = "rgb9e5";
      }
    }

    else if (word_24DA91F80[(a3 - 62)] > 0x47u)
    {
      if (v14 == 72)
      {
        v13 = "rgba8snorm";
      }

      else
      {
        if (v14 != 90)
        {
          goto LABEL_46;
        }

        v13 = "rgb10a2";
      }
    }

    else if (v14 == 70)
    {
      v13 = "rgba8unorm";
    }

    else
    {
      v13 = "srgba8unorm";
    }
  }

  else if (word_24DA91F80[(a3 - 62)] > 0x1Du)
  {
    if (word_24DA91F80[(a3 - 62)] > 0x3Bu)
    {
      if (v14 == 60)
      {
        v13 = "rg16unorm";
      }

      else
      {
        if (v14 != 62)
        {
          goto LABEL_46;
        }

        v13 = "rg16snorm";
      }
    }

    else if (v14 == 30)
    {
      v13 = "rg8unorm";
    }

    else
    {
      if (v14 != 32)
      {
        goto LABEL_46;
      }

      v13 = "rg8snorm";
    }
  }

  else if (word_24DA91F80[(a3 - 62)] > 0x13u)
  {
    if (v14 == 20)
    {
      v13 = "r16unorm";
    }

    else
    {
      if (v14 != 22)
      {
        goto LABEL_46;
      }

      v13 = "r16snorm";
    }
  }

  else if (v14 == 10)
  {
    v13 = "r8unorm";
  }

  else
  {
    if (v14 != 12)
    {
      goto LABEL_46;
    }

    v13 = "r8snorm";
  }

  v15 = 0;
  a3 = a2;
LABEL_46:
  if ((a3 - 3) > 0x35)
  {
    v16 = 0;
  }

  else
  {
    v16 = off_279658CF8[(a3 - 3)];
  }

  *apr_array_push(arr) = " ";
  result = apr_array_push(arr);
  if (v15)
  {
    *result = v16;
  }

  else
  {
    *result = ">";
    *apr_array_push(arr) = v16;
    *apr_array_push(arr) = "<";
    result = apr_array_push(arr);
    *result = v13;
  }

  if (a4 >= 1)
  {
    do
    {
      result = apr_array_push(arr);
      *result = "\t";
      --a4;
    }

    while (a4);
  }

  v18 = arr->nelts;
  if (v18 > 1)
  {
    v19 = 0;
    v20 = v18 - 1;
    v21 = v18 - 2;
    do
    {
      v22 = arr->elts;
      v23 = *&v22[8 * v19];
      *&v22[8 * v19] = *&v22[8 * v20];
      *&arr->elts[8 * v20] = v23;
      ++v19;
      --v20;
      v12 = v21-- <= v19;
    }

    while (!v12);
  }

  return result;
}

uint64_t nameArrayType(apr_array_header_t *a1, uint64_t a2, int a3)
{
  v6 = countArrayType(a2);
  v7 = *(a2 + 24);
  v8 = v6 / *(a2 + 20);
  if (v7 == 1)
  {
    v11 = apr_psprintf(a1->pool, "[%u]", a3 / v8);
    *apr_array_push(a1) = v11;
    if (*(a2 + 24) == 1)
    {
      v12 = *(a2 + 8);
    }

    else
    {
      v12 = 0;
    }

    *apr_array_push(a1) = ".";
    return nameStructType1(a1, v12, (a3 % v8));
  }

  else if (v7 == 2)
  {
    v9 = apr_psprintf(a1->pool, "[%u]", a3 / v8);
    *apr_array_push(a1) = v9;
    if (*(a2 + 24) == 2)
    {
      v10 = *(a2 + 8);
    }

    else
    {
      v10 = 0;
    }

    return nameArrayType(a1, v10, a3 % v8);
  }

  else
  {
    return 0;
  }
}

uint64_t countArrayType(uint64_t a1)
{
  for (i = 1; ; i *= v3)
  {
    v2 = *(a1 + 24);
    v3 = *(a1 + 20);
    if (v2 != 2)
    {
      break;
    }

    a1 = *(a1 + 8);
  }

  if (v2 == 1)
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = *(v4 + 8);
      do
      {
        v6 += countStructMember(v7);
        v7 += 32;
        --v5;
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v3 *= v6;
  }

  return (v3 * i);
}

id GTUpdateShaderMakeError(unsigned int a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x277CBEB38];
  v10 = a2;
  v11 = [v9 alloc];
  v12 = [v11 initWithObjectsAndKeys:{v10, *MEMORY[0x277CCA450], 0}];

  if (v7)
  {
    [v12 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  if (v8)
  {
    [v12 setObject:v8 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GTUpdateShaderErrorDomain" code:a1 userInfo:v12];

  return v13;
}

id GTCreateMTLLibrary(id *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  if ([v7 length])
  {
    v8 = [a1[1] defaultDevice];
    if (!*(a2 + 152))
    {
      goto LABEL_15;
    }

    v35 = a4;
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    v11 = [v10 substringToIndex:8];

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a2 + 152)];
    v33 = v11;
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"tmp-%@", v11];
    v14 = [v12 stringByAppendingPathExtension:v13];

    v15 = [a1[2831] URLByAppendingPathComponent:v14];
    v38 = 0;
    v16 = [v7 writeToURL:v15 options:1 error:&v38];
    v17 = v38;
    v18 = v17;
    v34 = v8;
    if (v16)
    {
      v37 = v17;
      v11 = [v8 newLibraryWithURL:v15 error:&v37];
      v19 = v37;

      v20 = [MEMORY[0x277CCAA00] defaultManager];
      [v20 removeItemAtURL:v15 error:0];

      if (v11)
      {
        v21 = v11;
      }

      else
      {
        v31 = MEMORY[0x277CCACA8];
        v22 = _GTMTLSMLibraryDisplayLabel(a2, *(*a1 + 1));
        v32 = [v31 stringWithFormat:@"Failed to instantiate library <url> '%@'", v22];

        if (v35)
        {
          *v35 = GTUpdateShaderMakeError(3u, v32, 0, v19);
        }
      }
    }

    else
    {
      v19 = v17;
    }

    v8 = v34;
    a4 = v35;
    if ((v16 & 1) == 0)
    {
LABEL_15:
      v23 = dispatch_data_create([v7 bytes], objc_msgSend(v7, "length"), 0, 0);
      v36 = 0;
      v11 = [v8 newLibraryWithData:v23 error:&v36];
      v24 = v36;
      if (v11)
      {
        v25 = v11;
      }

      else
      {
        v26 = v8;
        v27 = MEMORY[0x277CCACA8];
        v28 = _GTMTLSMLibraryDisplayLabel(a2, *(*a1 + 1));
        v29 = [v27 stringWithFormat:@"Failed to instantiate library <data> '%@'", v28];

        if (a4)
        {
          *a4 = GTUpdateShaderMakeError(3u, v29, 0, v24);
        }

        v8 = v26;
      }
    }
  }

  else if (a4)
  {
    GTUpdateShaderMakeError(1u, @"Internal error: No library data", 0, 0);
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id GTCreateMTLFunction(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2[5]];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = a2[15];
    if (v10)
    {
      v11 = MakeMTLIntersectionFunctionDescriptor(v10);
      v24 = 0;
      v12 = [v9 newIntersectionFunctionWithDescriptor:v11 error:&v24];
      v13 = v24;
    }

    else
    {
      v14 = a2[14];
      if (!v14)
      {
        v20 = a2[7];
        if (!v20 || !*v20)
        {
          v15 = GTUpdateShaderMakeError(1u, @"Internal error: empty function name", 0, 0);
          goto LABEL_10;
        }

        v15 = a2[9];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        if (v15)
        {
          v21 = MakeMTLFunctionConstantValues(a2[9]);
          v22 = 0;
          v12 = [v9 newFunctionWithName:v11 constantValues:v21 error:&v22];
          v15 = v22;
        }

        else
        {
          v12 = [v9 newFunctionWithName:v11];
        }

LABEL_9:

        if (v12)
        {
LABEL_13:

          goto LABEL_14;
        }

LABEL_10:
        v16 = MEMORY[0x277CCACA8];
        v17 = _GTMTLSMFunctionDisplayLabel(a2, *(*a1 + 8));
        v18 = [v16 stringWithFormat:@"Failed to instantiate function '%@'", v17];

        if (a4)
        {
          *a4 = GTUpdateShaderMakeError(3u, v18, 0, v15);
        }

        v12 = 0;
        goto LABEL_13;
      }

      v11 = MakeMTLFunctionDescriptor(v14, v7);
      v23 = 0;
      v12 = [v9 newFunctionWithDescriptor:v11 error:&v23];
      v13 = v23;
    }

    v15 = v13;
    goto LABEL_9;
  }

  if (a4)
  {
    GTUpdateShaderMakeError(1u, @"Internal error: Failed to find runtime library for function", 0, 0);
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_14:

  return v12;
}

__CFString *_GTMTLSMFunctionDisplayLabel(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1[8];
    if (!v4 || !*v4 || ([MEMORY[0x277CCACA8] stringWithUTF8String:?], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = a1[15];
      if (!v6 || (v7 = *(v6 + 8)) == 0)
      {
        v8 = a1[14];
        if (!v8 || (v7 = *(v8 + 8)) == 0)
        {
          v7 = a1[7];
        }
      }

      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
      if (v9)
      {
        v5 = v9;
      }

      else
      {
        v5 = @"MTLFunction";
      }
    }

    v16 = a1[1];
    entry = find_entry(a2, &v16, 8uLL, 0);
    if (*entry && (v11 = *(*entry + 32)) != 0)
    {
      v12 = atomic_load((v11 + 56));
      v13 = v11 + (~(v12 >> 2) & 8);
    }

    else
    {
      v13 = 8;
    }

    v14 = [(__CFString *)v5 stringByAppendingFormat:@" 0x%llx", *v13];
  }

  else
  {
    v14 = &stru_2860BD438;
  }

  return v14;
}

uint64_t GTUpdateShaderPipelines(id *a1, uint64_t a2, void *a3)
{
  v312 = *MEMORY[0x277D85DE8];
  v219 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v220 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v214 = a1[2];
  v237 = a1[1];
  v224 = [v237 defaultDevice];
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, v4);
  v5 = apr_array_make(newpool, 128, 8);
  GTMTLSMContext_getObjects(*(*a1 + 6), a1[5], v5);
  nelts = v5->nelts;
  v234 = v5;
  if (nelts < 1)
  {
LABEL_48:
    v227 = [v220 copy];
    goto LABEL_49;
  }

  v6 = 0;
  while (1)
  {
    v7 = *&v234->elts[8 * v6];
    if (v7)
    {
      v243 = *(v7 + 8);
    }

    else
    {
      v243 = 0;
    }

    v8 = [v237 unusedResourceKeys];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v243];
    v10 = [v8 containsObject:v9];

    if (v10)
    {
      goto LABEL_47;
    }

    v257 = 0;
    v258 = 0;
    v12 = *(v7 + 64);
    if (v12)
    {
      v13 = *(v12 + 40);
      v14 = *(v12 + 96);
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v15 = *a1;
    v264 = 0;
    apr_pool_create_ex(&v264, 0, 0, v11);
    v298 = 0u;
    v299 = 0u;
    v296 = 0u;
    v297 = 0u;
    v294 = 0u;
    v295 = 0u;
    v292 = 0u;
    v293 = 0u;
    v290 = 0u;
    v291 = 0u;
    v288 = 0u;
    v289 = 0u;
    v286 = 0u;
    v287 = 0u;
    v284 = 0u;
    v285 = 0u;
    v282 = 0u;
    v283 = 0u;
    v280 = 0u;
    v281 = 0u;
    v278 = 0u;
    v279 = 0u;
    v276 = 0u;
    v277 = 0u;
    v274 = 0u;
    v275 = 0u;
    v272 = 0u;
    v273 = 0u;
    v270 = 0u;
    v271 = 0u;
    v268 = 0u;
    v269 = 0u;
    v16 = v264;
    GTMTLSMComputePipelineState_computePipelineDescriptor(v15, v7, &v268, v264);
    *&v259 = v300[12];
    *(&v259 + 1) = v300;
    v260 = v302;
    *&v252 = &v259;
    *(&v252 + 1) = 1;
    *&v253 = v13;
    *(&v253 + 1) = v14;
    LOBYTE(v15) = GetProgramUpdateObjectMapForPipelineObjects(&v252, a1, &v258, &v257);
    apr_pool_destroy(v16);
    v240 = v258;
    v17 = v257;
    if (v15)
    {
      break;
    }

LABEL_47:
    if (++v6 == nelts)
    {
      goto LABEL_48;
    }
  }

  v228 = v17;
  v18 = [v237 computePipelineDescriptorMap];
  v19 = [v18 mutableCopy];

  if ([v240 count])
  {
    v306 = 0u;
    v307 = 0u;
    v304 = 0u;
    v305 = 0u;
    v20 = v240;
    v21 = [v20 countByEnumeratingWithState:&v304 objects:p count:16];
    if (v21)
    {
      v22 = *v305;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v305 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v304 + 1) + 8 * i);
          v25 = [v20 objectForKeyedSubscript:v24];
          [v19 setObject:v25 forKeyedSubscript:v24];
        }

        v21 = [v20 countByEnumeratingWithState:&v304 objects:p count:16];
      }

      while (v21);
    }
  }

  v298 = 0u;
  v299 = 0u;
  v296 = 0u;
  v297 = 0u;
  v294 = 0u;
  v295 = 0u;
  v292 = 0u;
  v293 = 0u;
  v290 = 0u;
  v291 = 0u;
  v288 = 0u;
  v289 = 0u;
  v286 = 0u;
  v287 = 0u;
  v284 = 0u;
  v285 = 0u;
  v282 = 0u;
  v283 = 0u;
  v280 = 0u;
  v281 = 0u;
  v278 = 0u;
  v279 = 0u;
  v276 = 0u;
  v277 = 0u;
  v274 = 0u;
  v275 = 0u;
  v272 = 0u;
  v273 = 0u;
  v270 = 0u;
  v271 = 0u;
  v268 = 0u;
  v269 = 0u;
  GTMTLSMComputePipelineState_computePipelineDescriptor(*a1, v7, &v268, newpool);
  v26 = MakeMTLComputePipelineDescriptor(&v268, v19);
  if ([v228 count])
  {
    v27 = [v26 preloadedLibraries];
    v28 = v27;
    if (v27)
    {
      v222 = [v27 arrayByAddingObjectsFromArray:v228];
      v29 = v222;
    }

    else
    {
      v216 = [v228 copy];
      v29 = v216;
    }

    [v26 setPreloadedLibraries:v29];
    v30 = v216;
    if (v28)
    {
      v30 = v222;
    }
  }

  v256 = 0;
  v251 = 0;
  v31 = [v224 newComputePipelineStateWithDescriptor:v26 options:0x40000 reflection:&v256 error:&v251];
  v32 = v256;
  v33 = v251;
  if (!v31)
  {
    if (v301)
    {
      v37 = [MEMORY[0x277CCACA8] stringWithFormat:@": '%s'", v301];
    }

    else
    {
      v37 = &stru_2860BD438;
    }

    v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to recreate compute pipeline%@", v37];
    if (a3)
    {
      *a3 = GTUpdateShaderMakeError(4u, v46, 0, v33);
    }

    goto LABEL_44;
  }

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v243];
  [v220 setObject:v31 forKeyedSubscript:v34];

  if (!v32)
  {
    goto LABEL_46;
  }

  v35 = [v32 performanceStatistics];
  if (v7)
  {
    v36 = *(v7 + 8);
  }

  else
  {
    v36 = 0;
  }

  v38 = MEMORY[0x277CCABB0];
  v39 = a1[3];
  *&v259 = v36;
  entry = find_entry(v39, &v259, 8uLL, 0);
  if (*entry && (v41 = *(*entry + 32)) != 0)
  {
    v42 = atomic_load((v41 + 56));
    v43 = v41 + (~(v42 >> 2) & 8);
  }

  else
  {
    v43 = 8;
  }

  v44 = [v38 numberWithUnsignedLongLong:*v43];
  [v219 setObject:v35 forKeyedSubscript:v44];

  v37 = [v32 performanceStatistics];
  if (v37)
  {
    v45 = *(v214 + 64);
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v7 + 8)];
    [v45 setObject:v37 forKeyedSubscript:v46];
LABEL_44:
  }

LABEL_46:
  if (v31)
  {
    goto LABEL_47;
  }

  v227 = 0;
LABEL_49:
  apr_pool_destroy(newpool);

  if (!v227)
  {
    v201 = 0;
    goto LABEL_225;
  }

  v221 = v219;
  v229 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v217 = a1[2];
  v241 = a1[1];
  v223 = [v241 defaultDevice];
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, v47);
  v48 = apr_array_make(newpool, 128, 8);
  GTMTLSMContext_getObjects(*(*a1 + 5), a1[5], v48);
  v235 = v48->nelts;
  v238 = v48;
  if (v235 < 1)
  {
LABEL_165:
    v238->nelts = 0;
    v226 = [v229 copy];
    goto LABEL_166;
  }

  v49 = 0;
  while (2)
  {
    v50 = *&v238->elts[8 * v49];
    if (v50)
    {
      v51 = *(v50 + 8);
    }

    else
    {
      v51 = 0;
    }

    v244 = *&v238->elts[8 * v49];
    v52 = [v241 unusedResourceKeys];
    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v51];
    v54 = [v52 containsObject:v53];

    if (v54)
    {
LABEL_105:
      if (++v49 == v235)
      {
        goto LABEL_165;
      }

      continue;
    }

    break;
  }

  v55 = v244[10];
  if (!v55)
  {
    v256 = 0;
    v257 = 0;
    v69 = v244[7];
    if (v69)
    {
      v70 = *(v69 + 96);
      v69 = *(v69 + 214);
    }

    else
    {
      v70 = 0;
    }

    v264 = 0;
    v265 = 0;
    v266 = v70;
    v267 = v69;
    v90 = v244[6];
    if (v90)
    {
      *&v304 = *(v90 + 1296);
      *(&v304 + 1) = v90 + 1064;
      v305 = *(v90 + 1304);
      *&v306 = *(v90 + 1176);
      *(&v306 + 1) = v90 + 872;
      v91 = *(v90 + 1184);
      v92 = *(v90 + 1192);
      *&v307 = v91;
      *(&v307 + 1) = v92;
      v264 = &v304;
      v265 = 2;
      ProgramUpdateObjectMapForPipelineObjects = GetProgramUpdateObjectMapForPipelineObjects(&v264, a1, &v257, &v256);
    }

    else
    {
      v94 = v244[9];
      if (v94)
      {
        v95 = v94[45];
        *&v304 = v94[46];
        *(&v304 + 1) = v94 + 32;
        v305 = 0uLL;
        *&v306 = v95;
        *(&v306 + 1) = v94 + 24;
        v307 = 0uLL;
        v308 = v94[43];
        v309 = v94 + 16;
        v310 = 0;
        v311 = 0;
        v264 = &v304;
        v265 = 3;
        ProgramUpdateObjectMapForPipelineObjects = GetProgramUpdateObjectMapForPipelineObjects(&v264, a1, &v257, &v256);
      }

      else
      {
        v96 = v244[8];
        if (!v96)
        {
          v99 = 0;
LABEL_91:
          v76 = v257;
          v100 = v256;
          if (!v99)
          {
            v75 = v100;
            goto LABEL_104;
          }

          v225 = v244 + 6;
          v232 = v100;
          v101 = [v241 renderPipelineDescriptorMap];
          v82 = [v101 mutableCopy];

          v254 = 0u;
          v255 = 0u;
          v252 = 0u;
          v253 = 0u;
          v75 = v76;
          v102 = [v75 countByEnumeratingWithState:&v252 objects:p count:16];
          if (v102)
          {
            v103 = *v253;
            do
            {
              for (j = 0; j != v102; ++j)
              {
                if (*v253 != v103)
                {
                  objc_enumerationMutation(v75);
                }

                v105 = *(*(&v252 + 1) + 8 * j);
                v106 = [v75 objectForKeyedSubscript:v105];
                [v82 setObject:v106 forKeyedSubscript:v105];
              }

              v102 = [v75 countByEnumeratingWithState:&v252 objects:p count:16];
            }

            while (v102);
          }

          if (*v225)
          {
            v107 = MakeMTLRenderPipelineDescriptor(*v225, v82);
            if ([v232 count])
            {
              v108 = [v107 vertexPreloadedLibraries];
              v109 = v108;
              if (v108)
              {
                v214 = [v108 arrayByAddingObjectsFromArray:v232];
                v110 = v214;
              }

              else
              {
                v212 = [v232 copy];
                v110 = v212;
              }

              [v107 setVertexPreloadedLibraries:v110];
              v115 = v212;
              if (v109)
              {
                v115 = v214;
              }

              v116 = [v107 fragmentPreloadedLibraries];

              if (v116)
              {
                v213 = [v116 arrayByAddingObjectsFromArray:v232];
                v117 = v213;
              }

              else
              {
                v211 = [v232 copy];
                v117 = v211;
              }

              [v107 setFragmentPreloadedLibraries:v117];
              v118 = v211;
              if (v116)
              {
                v118 = v213;
              }
            }

            v250 = 0;
            v251 = 0;
            v119 = &v250;
            v120 = &v251;
            v87 = [v223 newRenderPipelineStateWithDescriptor:v107 options:0x40000 reflection:&v251 error:&v250];
            v121 = 1200;
          }

          else
          {
            v111 = v244[9];
            v225 = v244 + 9;
            if (v111)
            {
              v107 = MakeMTLMeshRenderPipelineDescriptor(v111, v82);
              if ([v232 count])
              {
                v112 = [v107 objectPreloadedLibraries];
                v113 = v112;
                if (v112)
                {
                  v210 = [v112 arrayByAddingObjectsFromArray:v232];
                  v114 = v210;
                }

                else
                {
                  v207 = [v232 copy];
                  v114 = v207;
                }

                [v107 setObjectPreloadedLibraries:v114];
                v126 = v207;
                if (v113)
                {
                  v126 = v210;
                }

                v127 = [v107 meshPreloadedLibraries];

                if (v127)
                {
                  v209 = [v127 arrayByAddingObjectsFromArray:v232];
                  v128 = v209;
                }

                else
                {
                  v206 = [v232 copy];
                  v128 = v206;
                }

                [v107 setMeshPreloadedLibraries:v128];
                v129 = v206;
                if (v127)
                {
                  v129 = v209;
                }

                v130 = [v107 fragmentPreloadedLibraries];

                if (v130)
                {
                  v208 = [v130 arrayByAddingObjectsFromArray:v232];
                  v131 = v208;
                }

                else
                {
                  v205 = [v232 copy];
                  v131 = v205;
                }

                [v107 setFragmentPreloadedLibraries:v131];
                v132 = v205;
                if (v130)
                {
                  v132 = v208;
                }
              }

              v248 = 0;
              v249 = 0;
              v119 = &v248;
              v120 = &v249;
              v87 = [v223 newRenderPipelineStateWithMeshDescriptor:v107 options:0x40000 reflection:&v249 error:&v248];
              v121 = 352;
            }

            else
            {
              v122 = v244[8];
              v225 = v244 + 8;
              if (!v122)
              {
                v133 = 0;
                v76 = 0;
                goto LABEL_157;
              }

              v107 = MakeMTLTileRenderPipelineDescriptor(v122, v82);
              if ([v232 count])
              {
                v123 = [v107 preloadedLibraries];
                v124 = v123;
                if (v123)
                {
                  v204 = [v123 arrayByAddingObjectsFromArray:v232];
                  v125 = v204;
                }

                else
                {
                  v203 = [v232 copy];
                  v125 = v203;
                }

                [v107 setPreloadedLibraries:v125];
                v134 = v203;
                if (v124)
                {
                  v134 = v204;
                }
              }

              v246 = 0;
              v247 = 0;
              v119 = &v246;
              v120 = &v247;
              v87 = [v223 newRenderPipelineStateWithTileDescriptor:v107 options:0x40000 reflection:&v247 error:&v246];
              v121 = 112;
            }
          }

          v135 = *v120;
          v76 = *v119;
          v136 = *(*v225 + v121);

          v133 = v135;
          if (v87)
          {
            v137 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v51];
            [v229 setObject:v87 forKeyedSubscript:v137];

            if (v135)
            {
              v138 = [v135 performanceStatistics];
              v139 = MEMORY[0x277CCABB0];
              v140 = a1[3];
              *&v304 = v244[1];
              v141 = find_entry(v140, &v304, 8uLL, 0);
              if (*v141 && (v142 = *(*v141 + 32)) != 0)
              {
                v143 = atomic_load((v142 + 56));
                v144 = v142 + (~(v143 >> 2) & 8);
              }

              else
              {
                v144 = 8;
              }

              v146 = [v139 numberWithUnsignedLongLong:*v144];
              [v221 setObject:v138 forKeyedSubscript:v146];

              v145 = [v135 performanceStatistics];
              if (!v145)
              {
                v149 = 1;
LABEL_162:

                if ((v149 & 1) == 0)
                {
                  goto LABEL_212;
                }

                goto LABEL_105;
              }

              v147 = v217[8];
              v148 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v244[1]];
              [v147 setObject:v145 forKeyedSubscript:v148];
              v149 = 1;
LABEL_161:

              goto LABEL_162;
            }

LABEL_82:

LABEL_104:
            goto LABEL_105;
          }

          if (v136)
          {
            v145 = [MEMORY[0x277CCACA8] stringWithFormat:@": '%s'", v136];
            goto LABEL_158;
          }

LABEL_157:
          v145 = &stru_2860BD438;
LABEL_158:
          v148 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to recreate render pipeline%@", v145];
          if (a3)
          {
            GTUpdateShaderMakeError(4u, v148, 0, v76);
            v87 = 0;
            *a3 = v149 = 0;
          }

          else
          {
            v87 = 0;
            v149 = 0;
          }

          goto LABEL_161;
        }

        *&v304 = v96[17];
        *(&v304 + 1) = v96;
        v98 = v96[15];
        v97 = v96[16];
        *&v305 = v98;
        *(&v305 + 1) = v97;
        v264 = &v304;
        v265 = 1;
        ProgramUpdateObjectMapForPipelineObjects = GetProgramUpdateObjectMapForPipelineObjects(&v264, a1, &v257, &v256);
      }
    }

    v99 = ProgramUpdateObjectMapForPipelineObjects;
    goto LABEL_91;
  }

  if (!v244[5])
  {
    v71 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v244[5]];
    v72 = [v229 objectForKeyedSubscript:v71];
    v73 = v72 == 0;

    if (!v73)
    {
      v68 = 0;
      goto LABEL_70;
    }

    goto LABEL_105;
  }

  v56 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v57 = 0;
  v58 = v55[9];
  *&v304 = v55[8];
  DWORD2(v304) = v58;
  *&v305 = *v55;
  DWORD2(v305) = v55[1];
  v59 = v55[7];
  *&v306 = v55[6];
  DWORD2(v306) = v59;
  *&v307 = v55[4];
  DWORD2(v307) = v55[5];
  v308 = v55[2];
  LODWORD(v309) = v55[3];
  do
  {
    v60 = &v304 + v57;
    v61 = *v60;
    if (*v60)
    {
      v62 = *(v60 + 2);
      if (v62 >= 1)
      {
        do
        {
          v63 = *v61++;
          v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v63];
          v65 = [a1[10] objectForKeyedSubscript:v64];
          if (v65)
          {
            [v56 setObject:v65 forKeyedSubscript:v64];
          }

          --v62;
        }

        while (v62);
      }
    }

    ++v57;
  }

  while (v57 != 5);
  v66 = [v56 copy];
  v67 = v66;

  v68 = v66;
LABEL_70:
  v74 = [v241 functionMap];
  v75 = [v74 mutableCopy];

  v261 = 0u;
  v262 = 0u;
  v259 = 0u;
  v260 = 0u;
  v76 = v68;
  v77 = [v76 countByEnumeratingWithState:&v259 objects:&v268 count:16];
  if (v77)
  {
    v78 = *v260;
    do
    {
      for (k = 0; k != v77; ++k)
      {
        if (*v260 != v78)
        {
          objc_enumerationMutation(v76);
        }

        v80 = *(*(&v259 + 1) + 8 * k);
        v81 = [v76 objectForKeyedSubscript:v80];
        [v75 setObject:v81 forKeyedSubscript:v80];
      }

      v77 = [v76 countByEnumeratingWithState:&v259 objects:&v268 count:16];
    }

    while (v77);
  }

  v82 = MakeMTLRenderPipelineFunctionsDescriptor(v244[10], v75);
  v83 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v244[5]];
  v84 = [v229 objectForKeyedSubscript:v83];
  v85 = v84;
  if (v84)
  {
    v86 = v84;
  }

  else
  {
    v86 = [v241 renderPipelineStateForKey:v244[5]];
  }

  v87 = v86;

  v258 = 0;
  v88 = [v87 newRenderPipelineStateWithAdditionalBinaryFunctions:v82 error:&v258];
  v232 = v258;
  if (v88)
  {
    v89 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v51];
    [v229 setObject:v88 forKeyedSubscript:v89];

    goto LABEL_82;
  }

  if (a3)
  {
    *a3 = GTUpdateShaderMakeError(4u, @"Failed to recreate render pipeline with additional shaders", 0, v232);
  }

LABEL_212:
  v226 = 0;
LABEL_166:
  apr_pool_destroy(newpool);

  if (!v226)
  {
    v201 = 0;
    goto LABEL_224;
  }

  v150 = [v221 copy];
  v151 = *(a2 + 40);
  *(a2 + 40) = v150;

  v152 = [v226 copy];
  v153 = *a2;
  *a2 = v152;

  v154 = [v227 copy];
  v155 = *(a2 + 8);
  *(a2 + 8) = v154;

  v236 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v230 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v239 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v245 = *a2;
  v233 = *(a2 + 8);
  p[0] = 0;
  apr_pool_create_ex(p, 0, 0, v156);
  v157 = apr_array_make(p[0], 128, 8);
  v157->nelts = 0;
  GTMTLSMContext_getObjects(*(*a1 + 34), a1[5], v157);
  v158 = v157;
  if (v157->nelts >= 1)
  {
    v159 = 0;
    while (1)
    {
      v160 = *&v157->elts[8 * v159];
      v242 = v160 ? *(v160 + 8) : 0;
      v161 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v160 + 72)];
      v162 = [v245 objectForKey:v161];

      if (v162)
      {
        break;
      }

      v168 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v160 + 64)];
      v167 = [v233 objectForKey:v168];

      if (v167)
      {
        v169 = a1[10];
        v170 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v160 + 48)];
        v171 = [v169 objectForKeyedSubscript:v170];
        v172 = v171;
        if (v171)
        {
          v173 = v171;
        }

        else
        {
          v177 = [a1[1] functionMap];
          v178 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v160 + 48)];
          v173 = [v177 objectForKeyedSubscript:v178];
        }

        v176 = [v167 functionHandleWithFunction:v173];
        v179 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v242];
        [v239 setObject:v176 forKeyedSubscript:v179];

        goto LABEL_182;
      }

LABEL_183:

      ++v159;
      v157 = v158;
      if (v159 >= v158->nelts)
      {
        goto LABEL_184;
      }
    }

    v163 = a1[10];
    v164 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v160 + 48)];
    v165 = [v163 objectForKeyedSubscript:v164];
    v166 = v165;
    if (v165)
    {
      v167 = v165;
    }

    else
    {
      v174 = [a1[1] functionMap];
      v175 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v160 + 48)];
      v167 = [v174 objectForKeyedSubscript:v175];
    }

    v173 = [v162 functionHandleWithFunction:v167 stage:*(v160 + 96)];
    v176 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v242];
    [v239 setObject:v173 forKeyedSubscript:v176];
LABEL_182:

    goto LABEL_183;
  }

LABEL_184:
  v157->nelts = 0;
  GTMTLSMContext_getObjects(*(*a1 + 8), a1[5], v157);
  if (v157->nelts >= 1)
  {
    v180 = 0;
    while (1)
    {
      v181 = *&v157->elts[8 * v180];
      v182 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v181 + 136)];
      v183 = [v245 objectForKey:v182];

      if (v183)
      {
        break;
      }

      v186 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v181 + 128)];
      v183 = [v233 objectForKey:v186];

      if (v183)
      {
        v184 = MakeMTLVisibleFunctionTableDescriptor(*(v181 + 112));
        v185 = [v183 newVisibleFunctionTableWithDescriptor:v184];
        if ((UpdateVisibleFunctionTable(a1, v185, v181, v239) & 1) == 0)
        {
          if (a3)
          {
            *a3 = GTUpdateShaderMakeError(1u, @"Internal: Could not update visiable function table for compute pipeline", 0, 0);
          }

          goto LABEL_218;
        }

        goto LABEL_191;
      }

LABEL_192:
      ++v180;
      v157 = v158;
      if (v180 >= v158->nelts)
      {
        goto LABEL_193;
      }
    }

    v184 = MakeMTLVisibleFunctionTableDescriptor(*(v181 + 112));
    v185 = [v183 newVisibleFunctionTableWithDescriptor:v184 stage:*(v181 + 176)];
    if ((UpdateVisibleFunctionTable(a1, v185, v181, v239) & 1) == 0)
    {
      if (a3)
      {
        *a3 = GTUpdateShaderMakeError(1u, @"Internal: Could not update visiable function table for render pipeline", 0, 0);
      }

LABEL_218:

      v201 = 0;
      goto LABEL_223;
    }

LABEL_191:
    v187 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v181 + 8)];
    [v236 setObject:v185 forKeyedSubscript:v187];

    goto LABEL_192;
  }

LABEL_193:
  v157->nelts = 0;
  GTMTLSMContext_getObjects(*(*a1 + 9), a1[5], v157);
  *&v274 = 0;
  v272 = 0u;
  v273 = 0u;
  v270 = 0u;
  v271 = 0u;
  v268 = 0u;
  v269 = 0u;
  GTMTLIndirectResources_allResourcesByKey(&v268, *a1, a1[5], 1, p[0]);
  if (v157->nelts < 1)
  {
LABEL_202:
    v196 = [v239 copy];
    v197 = *(a2 + 16);
    *(a2 + 16) = v196;

    v198 = [v236 copy];
    v199 = *(a2 + 24);
    *(a2 + 24) = v198;

    v200 = [v230 copy];
    v191 = *(a2 + 32);
    *(a2 + 32) = v200;
    v201 = 1;
    goto LABEL_222;
  }

  v188 = 0;
  while (1)
  {
    v189 = *&v157->elts[8 * v188];
    v190 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v189 + 136)];
    v191 = [v245 objectForKey:v190];

    if (v191)
    {
      v192 = MakeMTLIntersectionFunctionTableDescriptor(*(v189 + 112));
      v193 = [v191 newIntersectionFunctionTableWithDescriptor:v192 stage:*(v189 + 168)];
      if ((UpdateIntersectionFunctionTable(a1, v193, v189, v239, v236, &v268) & 1) == 0)
      {
        if (a3)
        {
          *a3 = GTUpdateShaderMakeError(1u, @"Internal: Could not update intersection function table for render pipeline", 0, 0);
        }

        goto LABEL_221;
      }

      goto LABEL_200;
    }

    v194 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v189 + 128)];
    v191 = [v233 objectForKey:v194];

    if (v191)
    {
      break;
    }

LABEL_201:
    ++v188;
    v157 = v158;
    if (v188 >= v158->nelts)
    {
      goto LABEL_202;
    }
  }

  v192 = MakeMTLIntersectionFunctionTableDescriptor(*(v189 + 112));
  v193 = [v191 newIntersectionFunctionTableWithDescriptor:v192];
  if (UpdateIntersectionFunctionTable(a1, v193, v189, v239, v236, &v268))
  {
LABEL_200:
    v195 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v189 + 8)];
    [v230 setObject:v193 forKeyedSubscript:v195];

    goto LABEL_201;
  }

  if (a3)
  {
    *a3 = GTUpdateShaderMakeError(1u, @"Internal: Could not update intersection function table for compute pipeline", 0, 0);
  }

LABEL_221:

  v201 = 0;
LABEL_222:

LABEL_223:
  apr_pool_destroy(p[0]);

LABEL_224:
LABEL_225:

  return v201;
}

void __destructor_8_s8_S_s56_s64_s72_s80_s88(uint64_t a1)
{
  __destructor_8_s0_s8_s16_s24(a1 + 56);
  v2 = *(a1 + 88);
}

BOOL GetProgramUpdateObjectMapForPipelineObjects(void *a1, id *a2, void *a3, void *a4)
{
  v33 = a3;
  v45 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a1[1] >= 1)
  {
    v7 = 0;
    v36 = a1[1] & 0x7FFFFFFFLL;
    do
    {
      v38 = v7;
      v8 = (*a1 + 32 * v7);
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{*v8, v33}];
      v10 = [a2[10] objectForKeyedSubscript:v9];
      if (v10)
      {
        [v6 setObject:v10 forKeyedSubscript:v9];
        v11 = 1;
      }

      else
      {
        v11 = 0;
      }

      v12 = 0;
      v37 = v8;
      v13 = v8[1];
      v14 = v13[3];
      v39 = v13[2];
      v40 = v14;
      v15 = v13[1];
      v41 = *v13;
      v42 = v15;
      v17 = v13[6];
      v16 = v13[7];
      v43 = v17;
      v44 = v16;
      do
      {
        v18 = &v39 + 2 * v12;
        v19 = *v18;
        if (*v18)
        {
          v20 = *(v18 + 2);
          if (v20 >= 1)
          {
            do
            {
              v21 = *v19++;
              v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
              v23 = [a2[10] objectForKeyedSubscript:v22];
              if (v23)
              {
                [v6 setObject:v23 forKeyedSubscript:v22];
                ++v11;
              }

              --v20;
            }

            while (v20);
          }
        }

        ++v12;
      }

      while (v12 != 3);
      v24 = v37[2];
      if (v24 && v37[3] >= 1)
      {
        v25 = v37[3] & 0x7FFFFFFFLL;
        do
        {
          v26 = *v24++;
          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v26];
          v28 = [a2[8] objectForKeyedSubscript:v27];
          if (v28)
          {
            [v6 setObject:v28 forKeyedSubscript:v27];
          }

          --v25;
        }

        while (v25);
      }

      if (v11 && [a2[9] count])
      {
        v29 = [a2[9] allValues];
        [v35 addObjectsFromArray:v29];
      }

      v7 = v38 + 1;
    }

    while (v38 + 1 != v36);
  }

  if (v33)
  {
    *v33 = [v6 copy];
  }

  if (a4)
  {
    *a4 = [v35 copy];
  }

  v30 = [v6 count];
  v31 = v30 + [v35 count] != 0;

  return v31;
}