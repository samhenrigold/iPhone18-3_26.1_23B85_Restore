uint64_t ResizeFormat(uint64_t result)
{
  v1 = result + 6;
  if ((result - 250) > 0xC)
  {
    goto LABEL_6;
  }

  if (((1 << v1) & 0x425) != 0)
  {
    return 252;
  }

  if (((1 << v1) & 0x1808) != 0)
  {
    return 253;
  }

LABEL_6:
  v2 = 10;
  v3 = 90;
  if ((result - 2) < 0x7C)
  {
    v3 = result;
  }

  if (result != 1)
  {
    v2 = v3;
  }

  if ((result - 552) >= 4)
  {
    return v2;
  }

  return result;
}

id _processThumbnailAttachments(void *a1, void *a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a2;
  v25 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v23 = *v27;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * v9);
        v12 = [v11 objectForKeyedSubscript:@"DependencyGraphRequestedTextureAttachmentIndex"];
        v13 = [v11 objectForKeyedSubscript:@"format"];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
        v32[0] = @"object";
        v32[1] = @"format";
        v33[0] = v14;
        v33[1] = v13;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

        v15 = [&unk_2860D5B40 objectAtIndexedSubscript:{objc_msgSend(v12, "unsignedIntegerValue")}];
        [v25 setObject:v8 forKeyedSubscript:v15];

        v16 = [v11 mutableCopy];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3 + 1];
        [v16 setObject:v17 forKeyedSubscript:@"functionIndex"];

        [v16 setObject:v14 forKeyedSubscript:@"DependencyGraphRequestedThumbnailTextureID"];
        [v4 addObject:v16];

        ++v9;
        v10 = v8;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v18 = [v8 objectForKeyedSubscript:@"object"];
  v19 = [v8 objectForKeyedSubscript:@"format"];
  v30[0] = @"object";
  v30[1] = @"format";
  v31[0] = v18;
  v31[1] = v19;
  v30[2] = @"target";
  v31[2] = v25;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];

  return v20;
}

id GTMTLReplay_dictionaryFromCommandBuffer(void *a1)
{
  v152[4] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v73 = [v1 error];
  v104[0] = @"retainedReferences";
  v2 = 0x277CCA000uLL;
  v105[0] = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v1, "retainedReferences")}];
  v104[1] = @"label";
  v71 = [v1 label];
  v72 = v105[0];
  if (v71)
  {
    [v1 label];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v70 = ;
  v105[1] = v70;
  v104[2] = @"kernelStartTime";
  v3 = MEMORY[0x277CCABB0];
  [v1 kernelStartTime];
  v69 = [v3 numberWithDouble:?];
  v105[2] = v69;
  v104[3] = @"kernelEndTime";
  v4 = MEMORY[0x277CCABB0];
  [v1 kernelEndTime];
  v106 = [v4 numberWithDouble:?];
  v104[4] = @"GPUStartTime";
  v5 = MEMORY[0x277CCABB0];
  [v1 GPUStartTime];
  v107 = [v5 numberWithDouble:?];
  v104[5] = @"GPUEndTime";
  v6 = MEMORY[0x277CCABB0];
  [v1 GPUEndTime];
  v108 = [v6 numberWithDouble:?];
  v104[6] = @"status";
  v74 = v1;
  v109 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v1, "status")}];
  v104[7] = @"error";
  v67 = v107;
  v68 = v106;
  v65 = v109;
  v66 = v108;
  if (v73)
  {
    v7 = v73;
    v8 = [v7 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"MTLCommandBufferEncoderInfoErrorKey"];

    v113 = @"domain";
    v10 = [v7 domain];
    v124 = v10;
    v114 = @"code";
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "code")}];
    v125 = v11;
    v115 = @"localizedDescription";
    v12 = [v7 localizedDescription];
    v13 = v12;
    v126 = v12;
    v116 = @"commandBufferEncoderInfo";
    if (v9)
    {
      v92 = v12;
      v94 = v11;
      v96 = v10;
      v98 = v9;
      v100 = v7;
      v14 = v9;
      v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v14, "count")}];
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      v138 = 0u;
      obj = v14;
      v16 = [obj countByEnumeratingWithState:&v135 objects:&v143 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v136;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v136 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v135 + 1) + 8 * i);
            *&v139 = @"label";
            v21 = [v20 label];
            if (v21)
            {
              [v20 label];
            }

            else
            {
              [MEMORY[0x277CBEB68] null];
            }
            v22 = ;
            *&v147 = v22;
            *(&v139 + 1) = @"debugSignposts";
            v23 = [v20 debugSignposts];
            if (v23)
            {
              [v20 debugSignposts];
            }

            else
            {
              [MEMORY[0x277CBEB68] null];
            }
            v24 = ;
            *(&v147 + 1) = v24;
            *&v140 = @"errorState";
            v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "errorState")}];
            *&v148 = v25;
            v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v147 forKeys:&v139 count:3];
            [v15 addObject:v26];
          }

          v17 = [obj countByEnumeratingWithState:&v135 objects:&v143 count:16];
        }

        while (v17);
      }

      v27 = [v15 copy];
      v2 = 0x277CCA000;
      v9 = v98;
      v7 = v100;
      v11 = v94;
      v10 = v96;
      v13 = v92;
    }

    else
    {
      v27 = [MEMORY[0x277CBEB68] null];
    }

    v127 = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v124 forKeys:&v113 count:4];
  }

  else
  {
    v28 = [MEMORY[0x277CBEB68] null];
  }

  v64 = v28;
  v110 = v28;
  v104[8] = @"errorOptions";
  v63 = [*(v2 + 2992) numberWithUnsignedInteger:{objc_msgSend(v74, "errorOptions")}];
  v111 = v63;
  v104[9] = @"logs";
  v29 = [v74 logs];
  v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v75 = v29;
  v78 = [v75 countByEnumeratingWithState:&v139 objects:&v135 count:16];
  if (v78)
  {
    v76 = *v140;
    do
    {
      v30 = 0;
      do
      {
        if (*v140 != v76)
        {
          objc_enumerationMutation(v75);
        }

        v31 = *(*(&v139 + 1) + 8 * v30);
        v32 = [v31 function];
        v33 = [v31 buffer];
        v90 = v30;
        if (objc_opt_respondsToSelector())
        {
          [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v31, "performSelector:", sel_encoderIdentifier)}];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v93 = ;
        if (objc_opt_respondsToSelector())
        {
          v34 = [v31 performSelector:sel_encoderLabel];
        }

        else
        {
          v34 = [MEMORY[0x277CBEB68] null];
        }

        v35 = v34;
        v88 = v34;
        v113 = @"type";
        v87 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v31, "type")}];
        v124 = v87;
        v114 = @"encoderMethodIdentifier";
        v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v31, "encoderMethodIdentifier")}];
        v125 = v86;
        v126 = v35;
        v115 = @"encoderLabel";
        v116 = @"encoderIdentifier";
        v127 = v93;
        v117 = @"function";
        v89 = v32;
        v91 = v33;
        if (v32)
        {
          v36 = v32;
          *&v147 = @"label";
          v37 = [v36 label];
          if (v37)
          {
            [v36 label];
          }

          else
          {
            [MEMORY[0x277CBEB68] null];
          }
          v39 = ;
          v143 = v39;
          *(&v147 + 1) = @"functionType";
          v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v36, "functionType")}];
          v144 = v40;
          *&v148 = @"name";
          v41 = [v36 name];
          v145 = v41;
          v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v143 forKeys:&v147 count:3];

          v33 = v91;
        }

        else
        {
          v38 = [MEMORY[0x277CBEB68] null];
        }

        v85 = v38;
        v128 = v38;
        v118 = @"logMessage";
        v84 = [v31 description];
        if (v84)
        {
          [v31 description];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v83 = ;
        v129 = v83;
        v119 = @"addressSpace";
        v82 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v31, "addressSpace")}];
        v130 = v82;
        v120 = @"buffer";
        if (v33)
        {
          v42 = v33;
          *&v147 = @"length";
          v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v42, "length")}];
          v143 = v43;
          *(&v147 + 1) = @"label";
          v44 = [v42 label];
          if (v44)
          {
            [v42 label];
          }

          else
          {
            [MEMORY[0x277CBEB68] null];
          }
          v33 = ;
          v144 = v33;
          *&v148 = @"resourceOptions";
          v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v42, "resourceOptions")}];
          v145 = v46;
          *(&v148 + 1) = @"allocatedSize";
          v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v42, "allocatedSize")}];
          v146 = v47;
          v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v143 forKeys:&v147 count:4];
        }

        else
        {
          v45 = [MEMORY[0x277CBEB68] null];
        }

        v81 = v45;
        v131 = v45;
        v121 = @"offset";
        v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v31, "offset")}];
        v132 = v80;
        v122 = @"operation";
        v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v31, "operation")}];
        v133 = v79;
        v123 = @"errorStackTrace";
        v48 = [v31 errorStackTrace];
        v99 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v48, "count")}];
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        v95 = v48;
        v101 = [v95 countByEnumeratingWithState:&v147 objects:&v143 count:16];
        if (v101)
        {
          v97 = *v148;
          do
          {
            for (j = 0; j != v101; ++j)
            {
              if (*v148 != v97)
              {
                objc_enumerationMutation(v95);
              }

              v50 = *(*(&v147 + 1) + 8 * j);
              v151[0] = @"functionName";
              obja = [v50 functionName];
              if (obja)
              {
                [v50 functionName];
              }

              else
              {
                [MEMORY[0x277CBEB68] null];
              }
              v51 = ;
              v152[0] = v51;
              v151[1] = @"URL";
              v52 = [v50 URL];
              v53 = [v52 path];
              if (v53)
              {
                v33 = [v50 URL];
                [v33 path];
              }

              else
              {
                [MEMORY[0x277CBEB68] null];
              }
              v54 = ;
              v152[1] = v54;
              v151[2] = @"line";
              v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v50, "line")}];
              v152[2] = v55;
              v151[3] = @"column";
              v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v50, "column")}];
              v152[3] = v56;
              v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v152 forKeys:v151 count:4];

              if (v53)
              {

                v54 = v33;
              }

              [v99 addObject:v57];
            }

            v101 = [v95 countByEnumeratingWithState:&v147 objects:&v143 count:16];
          }

          while (v101);
        }

        v58 = [v99 copy];
        v134 = v58;
        v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v124 forKeys:&v113 count:11];
        [v77 addObject:v59];

        v30 = v90 + 1;
      }

      while (v90 + 1 != v78);
      v78 = [v75 countByEnumeratingWithState:&v139 objects:&v135 count:16];
    }

    while (v78);
  }

  v60 = [v77 copy];
  v112 = v60;
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:10];

  return v61;
}

id GTMTLReplay_dictionaryFromCommitFeedback(void *a1)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 error];
  v16[0] = @"GPUStartTime";
  v3 = MEMORY[0x277CCABB0];
  [v1 GPUStartTime];
  v4 = [v3 numberWithDouble:?];
  v17[0] = v4;
  v16[1] = @"GPUEndTime";
  v5 = MEMORY[0x277CCABB0];
  [v1 GPUEndTime];
  v7 = v6;

  v8 = [v5 numberWithDouble:v7];
  v17[1] = v8;
  v16[2] = @"error";
  if (v2)
  {
    v18[0] = @"domain";
    v9 = v2;
    v10 = [v9 domain];
    v19[0] = v10;
    v18[1] = @"code";
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "code")}];
    v19[1] = v11;
    v18[2] = @"localizedDescription";
    v12 = [v9 localizedDescription];

    v19[2] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  }

  else
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v17[2] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

  return v14;
}

void GTMTLReplay_handleError(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, ...)
{
  va_start(va, a6);
  v11 = a1;
  v26[4] = *MEMORY[0x277D85DE8];
  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:a6];
  v14 = [v12 initWithFormat:v13 arguments:va];

  v15 = strstr(a2, "gputools");
  if (a5 == 1)
  {
    goto LABEL_20;
  }

  if (a5 <= 15)
  {
    switch(a5)
    {
      case 2:
        v16 = "Shader Profiler";
        goto LABEL_19;
      case 4:
        v16 = "Shader Debugger";
        goto LABEL_19;
      case 8:
        v16 = "Thumbnails";
        goto LABEL_19;
    }

LABEL_15:
    v16 = "Internal";
    goto LABEL_19;
  }

  if (a5 > 63)
  {
    if (a5 == 64)
    {
      v16 = "Access tracking";
      goto LABEL_19;
    }

    if (a5 == 128)
    {
      v16 = "Post vertex";
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  if (a5 == 16)
  {
    v16 = "Wireframe";
    goto LABEL_19;
  }

  if (a5 != 32)
  {
    goto LABEL_15;
  }

  v16 = "Fetch resource";
LABEL_19:
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %@", v16, v14];

  v14 = v17;
LABEL_20:
  if (v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = a2;
  }

  v19 = *MEMORY[0x277CCA450];
  v26[0] = v14;
  v25[0] = v19;
  v25[1] = @"GTErrorKeyFile";
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
  v26[1] = v20;
  v25[2] = @"GTErrorKeyFunction";
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  v26[2] = v21;
  v25[3] = @"GTErrorKeyLine";
  v22 = [MEMORY[0x277CCABB0] numberWithInt:a4];
  v26[3] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v24 = MakeNSError(v11, v23);

  GTMTLReplay_handleNSError(v24);
}

id MakeNSError(int a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v23}];
        [v4 setObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x277CCACC8] callStackSymbols];
  if (v12)
  {
    [v4 setObject:v12 forKey:@"GTErrorKeyCallStack"];
  }

  if (a1 == 100)
  {
    goto LABEL_11;
  }

  v14 = pthread_self();
  pthread_rwlock_rdlock(&rwlock);
  v15 = threadLocalLogs;
  v16 = 7;
  while (!pthread_equal(v14, *v15))
  {
    v15 += 2;
    if (!--v16)
    {
      v13 = 0;
      goto LABEL_18;
    }
  }

  v13 = v15[1];
LABEL_18:
  pthread_rwlock_unlock(&rwlock);
  if (!v13)
  {
    label = dispatch_queue_get_label(0);
    if (strncmp(label, "gputools.MTLReplayer.serialQueue", 0x20uLL))
    {
      goto LABEL_26;
    }

LABEL_11:
    v13 = g_activityLog;
    if (!v13)
    {
      goto LABEL_26;
    }
  }

  v17 = [v13 getBreadcrumbSummary];
  if ([v17 count])
  {
    [v4 setObject:v17 forKey:@"GTErrorKeyReplayerContext"];
  }

  v18 = [v13 getBreadcrumbsAsJSON];
  if (v18)
  {
    [v4 setObject:v18 forKey:@"GTErrorKeyReplayerBreadcrumbs"];
  }

  v19 = [v13 gputracePath];
  if (v19)
  {
    [v4 setObject:v19 forKey:@"GTErrorKeyGputracePath"];
  }

LABEL_26:
  v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.gputools.MTLReplayer" code:a1 userInfo:{v4, v23}];

  return v20;
}

void GTMTLReplay_handleNSError(void *a1)
{
  v56 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 domain];

  if (v2 != @"com.apple.gputools.MTLReplayer" || (([v1 userInfo], v3 = objc_claimAutoreleasedReturnValue(), v4 = *MEMORY[0x277CCA450], objc_msgSend(v3, "objectForKeyedSubscript:", *MEMORY[0x277CCA450]), v5 = objc_claimAutoreleasedReturnValue(), v5, v3, objc_msgSend(v1, "userInfo"), v6 = objc_claimAutoreleasedReturnValue(), v7 = *MEMORY[0x277CCA470], objc_msgSend(v6, "objectForKeyedSubscript:", *MEMORY[0x277CCA470]), v8 = objc_claimAutoreleasedReturnValue(), v8, v6, v5) ? (v9 = v8 == 0) : (v9 = 1), !v9))
  {
    v13 = v1;
    goto LABEL_11;
  }

  v10 = objc_alloc(MEMORY[0x277CBEB38]);
  v11 = [v1 userInfo];
  v12 = [v10 initWithDictionary:v11];

  if (!v5)
  {
    v31 = v1;
    v32 = [v31 domain];
    v33 = [v32 isEqualToString:@"com.apple.gputools.MTLReplayer"];

    if (v33)
    {
      v34 = [v31 code];
      if (v34 == 201)
      {
        v36 = objc_alloc_init(MEMORY[0x277CCAB68]);
        [(__CFString *)v36 appendString:@"The replayer encountered an error during command buffer"];
        v44 = [v31 userInfo];
        v45 = [v44 objectForKeyedSubscript:@"GTErrorKeyMTLCommandBuffer"];
        v46 = [v45 objectForKeyedSubscript:@"label"];

        if (v46)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(__CFString *)v36 appendFormat:@" %@", v46];
          }
        }

        [(__CFString *)v36 appendString:@" execution."];
      }

      else
      {
        v35 = @"The replayer encountered an internal error.";
        if (v34 != 101)
        {
          v35 = 0;
        }

        if (v34 == 102)
        {
          v36 = @"The replayer could not harvest a resource.";
        }

        else
        {
          v36 = v35;
        }
      }
    }

    else
    {
      v36 = 0;
    }

    [v12 setObject:v36 forKeyedSubscript:v4];
    if (v8)
    {
      goto LABEL_46;
    }

    goto LABEL_34;
  }

  if (!v8)
  {
LABEL_34:
    v37 = v1;
    v38 = [v37 domain];
    v39 = [v38 isEqualToString:@"com.apple.gputools.MTLReplayer"];

    if (v39 && [v37 code] == 201)
    {
      v40 = [v37 userInfo];
      v41 = [v40 objectForKeyedSubscript:@"GTErrorKeyMTLCommandBuffer"];
      v42 = [v41 objectForKeyedSubscript:@"error"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = [v42 objectForKeyedSubscript:@"localizedDescription"];
      }

      else
      {
        v43 = 0;
      }
    }

    else
    {
      v43 = 0;
    }

    [v12 setObject:v43 forKeyedSubscript:v7];
  }

LABEL_46:
  v47 = MEMORY[0x277CCA9B8];
  v48 = [v1 domain];
  v13 = [v47 errorWithDomain:v48 code:objc_msgSend(v1 userInfo:{"code"), v12}];

LABEL_11:
  v14 = v13;
  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v16 = [v14 domain];
    v17 = [v14 code];
    v18 = [v14 localizedDescription];
    v19 = [v14 localizedFailureReason];
    [v15 appendFormat:@"Replayer error\nDomain: %@\nCode: %d\nDescription: %@\nReason: %@\n", v16, v17, v18, v19];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v20 = [v14 userInfo];
    v21 = [v20 countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v50;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v50 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v49 + 1) + 8 * i);
          v26 = [v14 userInfo];
          v27 = [v26 objectForKeyedSubscript:v25];
          [v15 appendFormat:@"%@: %@\n", v25, v27];
        }

        v22 = [v20 countByEnumeratingWithState:&v49 objects:v55 count:16];
      }

      while (v22);
    }

    if (s_logUsingOsLog == 1)
    {
      v28 = gt_tagged_log(0xAu);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        v29 = [v15 UTF8String];
        *buf = 136315138;
        v54 = v29;
        _os_log_fault_impl(&dword_24D764000, v28, OS_LOG_TYPE_FAULT, "fail: %s", buf, 0xCu);
      }
    }

    else
    {
      v30 = *MEMORY[0x277D85DF8];
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"fail: %s", objc_msgSend(v15, "UTF8String")];
      fprintf(v30, "%s\n", [v28 UTF8String]);
    }
  }

  [_observer notifyError:v14];
}

void GTMTLReplay_handleUnderlyingNSError(void *a1, void *a2)
{
  v7 = a2;
  v3 = MEMORY[0x277CBEB38];
  v4 = a1;
  v5 = [v3 dictionary];
  [v5 setObject:v4 forKeyedSubscript:*MEMORY[0x277CCA450]];

  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  v6 = MakeNSError(101, v5);
  GTMTLReplay_handleNSError(v6);
}

void *GTMTLReplay_fillError(void *result, int a2, void *a3)
{
  if (result)
  {
    v3 = result;
    result = MakeNSError(a2, a3);
    *v3 = result;
  }

  return result;
}

void GTMTLReplay_handleCommandBufferError(uint64_t a1)
{
  v1 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.gputools.MTLReplayer" code:201 userInfo:a1];
  GTMTLReplay_handleNSError(v1);
}

void GTMTLReplay_handleMTL4CommitFeedbackError(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCA9B8];
  v4 = a1;
  v6 = [v3 errorWithDomain:@"com.apple.gputools.MTLReplayer" code:201 userInfo:a2];
  GTMTLReplay_handleNSError(v6);
  v5 = [v4 error];

  [v5 code];
}

void HandleCrashSignal(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = *MEMORY[0x277CCA450];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:strsignal(a1)];
  v10[1] = @"GTErrorKeyProcessSignal";
  v11[0] = v2;
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(MEMORY[0x277D85EC0] + 8 * a1)];
  v5 = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"SIG%@", v5];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = MakeNSError(100, v7);

  GTMTLReplay_handleNSError(v8);
  v9 = *&oldHandlers[2 * a1];
  sigaction(a1, &v9, 0);
  if (v9.__sigaction_u.__sa_handler != 1)
  {
    if (v9.__sigaction_u.__sa_handler)
    {
      (v9.__sigaction_u.__sa_handler)(a1);
    }

    else
    {
      raise(a1);
    }
  }
}

id SerializeMTLTextureDescriptorToDictionary(void *a1)
{
  v22[14] = *MEMORY[0x277D85DE8];
  v21[0] = @"textureType";
  v1 = MEMORY[0x277CCABB0];
  v2 = a1;
  v20 = [v1 numberWithUnsignedInteger:{objc_msgSend(v2, "textureType")}];
  v22[0] = v20;
  v21[1] = @"pixelFormat";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "pixelFormat")}];
  v22[1] = v19;
  v21[2] = @"width";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "width")}];
  v22[2] = v18;
  v21[3] = @"height";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "height")}];
  v22[3] = v17;
  v21[4] = @"depth";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "depth")}];
  v22[4] = v16;
  v21[5] = @"mipmapLevelCount";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "mipmapLevelCount")}];
  v22[5] = v15;
  v21[6] = @"sampleCount";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "sampleCount")}];
  v22[6] = v3;
  v21[7] = @"arrayLength";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "arrayLength")}];
  v22[7] = v4;
  v21[8] = @"cpuCacheMode";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "cpuCacheMode")}];
  v22[8] = v5;
  v21[9] = @"storageMode";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "storageMode")}];
  v22[9] = v6;
  v21[10] = @"hazardTrackingMode";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "hazardTrackingMode")}];
  v22[10] = v7;
  v21[11] = @"allowGPUOptimizedContents";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v2, "allowGPUOptimizedContents")}];
  v22[11] = v8;
  v21[12] = @"usage";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "usage")}];
  v22[12] = v9;
  v21[13] = @"swizzleKey";
  v10 = MEMORY[0x277CCABB0];
  v11 = [v2 swizzleKey];

  v12 = [v10 numberWithUnsignedInt:v11];
  v22[13] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:14];

  return v13;
}

id GTAGXProfilingSupportHelper::RemappedCSV(GTAGXProfilingSupportHelper *this)
{
  RemappingCSVPath(&__p);
  v1 = MEMORY[0x277CBEA90];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:p_p];
  v4 = [v1 dataWithContentsOfFile:v3];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_24D91A2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *RemappingCSVPath(std::string *a1)
{
  v2 = std::string::basic_string[abi:nn200100]<0>(a1, "/Apple");
  std::string::append(v2, "Internal/", 9uLL);
  std::string::append(a1, "Library/", 8uLL);
  std::string::append(a1, "AGX/", 4uLL);
  std::string::append(a1, "AGXRawCounterMapping", 0x14uLL);

  return std::string::append(a1, ".csv", 4uLL);
}

void GTAGXProfilingSupportHelper::Initialize(GTAGXProfilingSupportHelper *this, NSDictionary *a2)
{
  v88 = *MEMORY[0x277D85DE8];
  v60 = this;
  v2 = [(GTAGXProfilingSupportHelper *)v60 objectForKeyedSubscript:@"gpu_gen"];
  v3 = [v2 unsignedIntValue];

  v4 = [(GTAGXProfilingSupportHelper *)v60 objectForKeyedSubscript:@"num_cores"];
  v5 = [v4 unsignedIntValue];

  v6 = [(GTAGXProfilingSupportHelper *)v60 objectForKeyedSubscript:@"num_mgpus"];
  v7 = [v6 unsignedIntValue];

  v8 = [(GTAGXProfilingSupportHelper *)v60 objectForKeyedSubscript:@"gpu_var"];
  v9 = v8;
  if (!v8 || [v8 length] != 1)
  {
    goto LABEL_14;
  }

  v10 = __tolower([v9 characterAtIndex:0]);
  if (v10 <= 102)
  {
    if (v10 != 97)
    {
      if (v10 == 99)
      {
LABEL_17:
        v11 = 6;
        goto LABEL_27;
      }

      if (v10 == 100)
      {
        goto LABEL_18;
      }

LABEL_14:
      if (v7 != 2)
      {
        if (v7 != 8)
        {
          if (v7 == 4)
          {
            goto LABEL_17;
          }

          if (v5 <= 6)
          {
            if (v5 <= 1)
            {
              v11 = 1;
            }

            else
            {
              v11 = 3;
            }

            goto LABEL_27;
          }

          goto LABEL_21;
        }

LABEL_18:
        v11 = 7;
        goto LABEL_27;
      }

LABEL_19:
      v11 = 5;
      goto LABEL_27;
    }

    v11 = 2;
  }

  else
  {
    if (v10 <= 111)
    {
      if (v10 == 103)
      {
LABEL_21:
        v11 = 4;
        goto LABEL_27;
      }

      if (v10 == 109)
      {
        v11 = 1;
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v10 != 112)
    {
      if (v10 == 115)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    v11 = 3;
  }

LABEL_27:

  v12 = [(GTAGXProfilingSupportHelper *)v60 objectForKeyedSubscript:@"gpu_rev"];
  if ([v12 isEqualToString:@"A0"])
  {
    v13 = 1;
  }

  else if ([v12 isEqualToString:@"A1"])
  {
    v13 = 2;
  }

  else if ([v12 isEqualToString:@"B0"])
  {
    v13 = 3;
  }

  else if ([v12 isEqualToString:@"B1"])
  {
    v13 = 4;
  }

  else if ([v12 isEqualToString:@"C0"])
  {
    v13 = 5;
  }

  else if ([v12 isEqualToString:@"C1"])
  {
    v13 = 6;
  }

  else
  {
    v13 = 5;
  }

  v63 = agxps_gpu_create(v3, v11, v13, 0);
  v86 = agxps_derived_counter_gpu_descriptor_create(v3, v11, 0, 0, 0, 0, 0, 0);
  agxps_initialize(&v86, 1, 0, 0);
  RemappingCSVPath(&v85);
  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v85;
  }

  else
  {
    v14 = v85.__r_.__value_.__r.__words[0];
  }

  agxps_load_counter_obfuscation_map(v14);
  std::string::basic_string[abi:nn200100]<0>(&v87, "AF Bandwidth");
  memset(v83, 0, sizeof(v83));
  v84 = 1065353216;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v83, &v87, &v87);
  if (SHIBYTE(v87.__end_) < 0)
  {
    operator delete(v87.__first_);
  }

  v81 = 0u;
  *v82 = 0u;
  v82[4] = 1065353216;
  v79 = 0u;
  *v80 = 0u;
  v80[4] = 1065353216;
  v77 = 0u;
  *v78 = 0u;
  v78[4] = 1065353216;
  v75 = 0u;
  *v76 = 0u;
  v76[4] = 1065353216;
  v73 = 0u;
  *v74 = 0u;
  v74[4] = 1065353216;
  v71 = 3735928559;
  v72 = 1;
  if (v3 > 17 || v3 == 17 && v11 > 3)
  {
    goto LABEL_48;
  }

  if (v3 == 17)
  {
    v15 = 1;
    goto LABEL_49;
  }

  if (v3 == 16)
  {
    v59 = v11 != 3 || v13 > 2;
    goto LABEL_160;
  }

  if (v3 != 15)
  {
    goto LABEL_48;
  }

  if ((v11 - 5) < 2)
  {
    v59 = v13 > 2;
    goto LABEL_160;
  }

  if (v11 == 7)
  {
    v59 = v13 > 1;
LABEL_160:
    v15 = v59;
    goto LABEL_49;
  }

  if (v11 == 4)
  {
    v59 = v13 > 4;
    goto LABEL_160;
  }

LABEL_48:
  v15 = 0;
LABEL_49:
  v16 = 0;
  byte_27F09C7D0 = v15;
  v17 = 1;
  do
  {
    v62 = v17;
    derived_counters = agxps_counter_group_get_derived_counters(v63, off_2796582E0[v16], &v72, &v71);
    if (v71)
    {
      v19 = derived_counters;
    }

    else
    {
      v19 = 0;
    }

    if (v19 == 1)
    {
      v20 = 0;
      do
      {
        name = agxps_counter_get_name(*(v72 + 8 * v20));
        std::string::basic_string[abi:nn200100]<0>(&v87, name);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v83[0], v83[1], &v87);
        if (SHIBYTE(v87.__end_) < 0)
        {
          operator delete(v87.__first_);
        }

        __p = 1;
        v70 = 3735928559;
        if (agxps_counter_get_raw_counters_used_by_derived_counters(v63, (v72 + 8 * v20), 1, &__p, &v70))
        {
          memset(&v87, 0, 24);
          std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_impl<char const*&,std::vector<std::string>>(&xmmword_27F09C7A8, &name, &v87);
        }

        ++v20;
      }

      while (v20 < v71);
    }

    v17 = 0;
    v16 = 1;
  }

  while ((v62 & 1) != 0);
  size = HIBYTE(v85.__r_.__value_.__r.__words[2]);
  if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v85.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v22 = [MEMORY[0x277CCAA00] defaultManager];
    v23 = (v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v85 : v85.__r_.__value_.__r.__words[0];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:v23];
    v25 = [v22 fileExistsAtPath:v24];

    if (v25)
    {
      v26 = agxps_counter_deobfuscate_name("_3a44d3ac845ba763709a81d9ebfe1682780127650594e9ce4f2a50abfd030008");
      std::string::basic_string[abi:nn200100]<0>(&v87, v26);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(&v81, &v87, &v87);
      if (SHIBYTE(v87.__end_) < 0)
      {
        operator delete(v87.__first_);
      }

      v27 = [(GTAGXProfilingSupportHelper *)v60 objectForKeyedSubscript:@"device_state"];
      v28 = v27 == 0;

      if (!v28)
      {
        v29 = agxps_counter_deobfuscate_name("_1aee9428fdbe36067f4e285f5d84812f2f4a8a3ff8f9316ca9f443e6a8d72f85");
        std::string::basic_string[abi:nn200100]<0>(&v87, v29);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(&v81, &v87, &v87);
        if (SHIBYTE(v87.__end_) < 0)
        {
          operator delete(v87.__first_);
        }

        v30 = agxps_counter_deobfuscate_name("_df3a8796e4c9960564543461607c8c201c2ea4c255c96231d0e7d1b50510f2cc");
        std::string::basic_string[abi:nn200100]<0>(&v87, v30);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(&v81, &v87, &v87);
        if (SHIBYTE(v87.__end_) < 0)
        {
          operator delete(v87.__first_);
        }

        v31 = agxps_counter_deobfuscate_name("_a4f903620ff46e28df2781497c6c8f6ac0fd5b00fa1c47f44ddcab3defabb016");
        std::string::basic_string[abi:nn200100]<0>(&v87, v31);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(&v81, &v87, &v87);
        if (SHIBYTE(v87.__end_) < 0)
        {
          operator delete(v87.__first_);
        }
      }
    }
  }

  if (*v82)
  {
    v32 = 0;
    v33 = *v82;
    do
    {
      ++v32;
      v33 = *v33;
    }

    while (v33);
  }

  else
  {
    v32 = 0;
  }

  std::vector<std::string>::__assign_with_size[abi:nn200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(&xmmword_27F09C718, *v82, v32);
  v34 = agxps_counter_deobfuscate_name("_ae23bde9704f5d8ed4f6fe1bd07d71d94edccfc3853db7d008dce330be2b3844");
  std::string::basic_string[abi:nn200100]<0>(&v87, v34);
  std::vector<std::string>::push_back[abi:nn200100](&xmmword_27F09C778, &v87);
  if (SHIBYTE(v87.__end_) < 0)
  {
    operator delete(v87.__first_);
  }

  if (*v80)
  {
    v35 = 0;
    v36 = *v80;
    do
    {
      ++v35;
      v36 = *v36;
    }

    while (v36);
  }

  else
  {
    v35 = 0;
  }

  std::vector<std::string>::__assign_with_size[abi:nn200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(&qword_27F09C760, *v80, v35);
  v37 = 0;
  memset(v68, 0, sizeof(v68));
  v69 = 1065353216;
  do
  {
    v61 = v37;
    v38 = agxps_counter_group_get_derived_counters(v63, off_2796582F0[v37], &v72, &v71);
    if (v71)
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    if (v39 == 1)
    {
      v40 = 0;
      do
      {
        v70 = agxps_counter_get_name(*(v72 + 8 * v40));
        v66 = 3735928559;
        v67 = 1;
        if (agxps_counter_get_raw_counters_used_by_derived_counters(v63, (v72 + 8 * v40), 1, &v67, &v66))
        {
          memset(&v87, 0, 24);
          std::__hash_table<std::__hash_value_type<std::string,std::vector<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::string>>>>::__emplace_unique_impl<char const*&,std::vector<std::string>>(&xmmword_27F09C7A8, &v70, &v87);
        }

        ++v40;
      }

      while (v40 < v71);
    }

    v37 = v61 + 1;
  }

  while (v61 != 3);
  v41 = *v76;
  if (*v76)
  {
    while (1)
    {
      v42 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v81, *(&v81 + 1), (v41 + 2));
      v43 = *v41;
      if (v42)
      {
        break;
      }

LABEL_128:
      v41 = v43;
      if (!v43)
      {
        goto LABEL_129;
      }
    }

    v44 = *(&v75 + 1);
    v45 = v41[1];
    v46 = vcnt_s8(*(&v75 + 8));
    v46.i16[0] = vaddlv_u8(v46);
    if (v46.u32[0] > 1uLL)
    {
      if (v45 >= *(&v75 + 1))
      {
        v45 %= *(&v75 + 1);
      }
    }

    else
    {
      v45 &= *(&v75 + 1) - 1;
    }

    v47 = *(v75 + 8 * v45);
    do
    {
      v48 = v47;
      v47 = *v47;
    }

    while (v47 != v41);
    if (v48 == v76)
    {
      goto LABEL_165;
    }

    v49 = *(v48 + 1);
    if (v46.u32[0] > 1uLL)
    {
      if (v49 >= *(&v75 + 1))
      {
        v49 %= *(&v75 + 1);
      }
    }

    else
    {
      v49 &= *(&v75 + 1) - 1;
    }

    v50 = *v41;
    if (v49 != v45)
    {
LABEL_165:
      if (v43)
      {
        v51 = v43[1];
        if (v46.u32[0] > 1uLL)
        {
          if (v51 >= *(&v75 + 1))
          {
            v51 %= *(&v75 + 1);
          }
        }

        else
        {
          v51 &= *(&v75 + 1) - 1;
        }

        v50 = *v41;
        if (v51 == v45)
        {
          goto LABEL_121;
        }
      }

      *(v75 + 8 * v45) = 0;
      v50 = *v41;
    }

    if (!v50)
    {
LABEL_127:
      *v48 = v50;
      *v41 = 0;
      --*&v76[2];
      std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:nn200100](1, v41);
      goto LABEL_128;
    }

LABEL_121:
    v52 = v50[1];
    if (v46.u32[0] > 1uLL)
    {
      if (v52 >= v44)
      {
        v52 %= v44;
      }
    }

    else
    {
      v52 &= v44 - 1;
    }

    if (v52 != v45)
    {
      *(v75 + 8 * v52) = v48;
      v50 = *v41;
    }

    goto LABEL_127;
  }

LABEL_129:
  if (*v78)
  {
    v53 = 0;
    v54 = *v78;
    do
    {
      ++v53;
      v54 = *v54;
    }

    while (v54);
  }

  else
  {
    v53 = 0;
  }

  std::vector<std::string>::__assign_with_size[abi:nn200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(&qword_27F09C730, *v78, v53);
  if (*v76)
  {
    v55 = 0;
    v56 = *v76;
    do
    {
      ++v55;
      v56 = *v56;
    }

    while (v56);
  }

  else
  {
    v55 = 0;
  }

  std::vector<std::string>::__assign_with_size[abi:nn200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(&xmmword_27F09C748, *v76, v55);
  if (*v74)
  {
    v57 = 0;
    v58 = *v74;
    do
    {
      ++v57;
      v58 = *v58;
    }

    while (v58);
  }

  else
  {
    v57 = 0;
  }

  std::vector<std::string>::__assign_with_size[abi:nn200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(&qword_27F09C790, *v74, v57);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v68);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v73);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v75);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v77);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v79);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v81);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v83);
  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }
}

void sub_24D91B380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  if (*(v56 - 121) < 0)
  {
    operator delete(*(v56 - 144));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a33);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a39);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a45);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a51);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v56 - 224);
  if (*(v56 - 153) < 0)
  {
    operator delete(*(v56 - 176));
  }

  _Unwind_Resume(a1);
}

void sub_24D91BAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(void *a1, uint64_t a2, uint64_t a3)
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
  v10 = a1[1];
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
}

uint64_t std::vector<std::string>::__emplace_back_slow_path<char const*&>(uint64_t a1, char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v12.__end_cap_.__value_ = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v5);
  }

  v12.__first_ = 0;
  v12.__begin_ = (24 * v2);
  v12.__end_ = (24 * v2);
  v12.__end_cap_.__value_ = 0;
  std::string::basic_string[abi:nn200100]<0>((24 * v2), *a2);
  v6 = 24 * v2 + 24;
  v7 = *(a1 + 8) - *a1;
  v8 = 24 * v2 - v7;
  memcpy(v12.__begin_ - v7, *a1, v7);
  v9 = *a1;
  *a1 = v8;
  *(a1 + 8) = v6;
  v10 = *(a1 + 16);
  *(a1 + 16) = v12.__end_cap_.__value_;
  v12.__end_ = v9;
  v12.__end_cap_.__value_ = v10;
  v12.__first_ = v9;
  v12.__begin_ = v9;
  std::__split_buffer<std::string>::~__split_buffer(&v12);
  return v6;
}

void std::vector<std::string>::__assign_with_size[abi:nn200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>>(std::vector<std::string> *this, void *a2, unint64_t a3)
{
  v4 = a2;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < a3)
  {
    std::vector<std::string>::__vdeallocate(this);
    if (a3 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0x5555555555555556 * ((this->__end_cap_.__value_ - this->__begin_) >> 3);
      if (v7 <= a3)
      {
        v7 = a3;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) >= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<std::string>::__vallocate[abi:nn200100](this, v8);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  end = this->__end_;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v10 >= a3)
  {
    if (a2)
    {
      do
      {
        std::string::operator=(begin, (v4 + 2));
        v4 = *v4;
        ++begin;
      }

      while (v4);
      end = this->__end_;
    }

    while (end != begin)
    {
      v13 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v13 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    this->__end_ = begin;
  }

  else
  {
    if (end - begin >= 1)
    {
      v11 = v10 + 1;
      v12 = a2;
      do
      {
        v12 = *v12;
        --v11;
      }

      while (v11 > 1);
      if (v12 != a2)
      {
        do
        {
          std::string::operator=(begin, (v4 + 2));
          v4 = *v4;
          ++begin;
        }

        while (v4 != v12);
        end = this->__end_;
        v4 = v12;
      }
    }

    this->__end_ = std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<std::string>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::string*>(v4, end);
  }
}

void std::vector<std::string>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v17.__end_cap_.__value_ = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy((v11 - v13), *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    v16 = *(a1 + 16);
    *(a1 + 16) = 0;
    v17.__end_ = v15;
    v17.__end_cap_.__value_ = v16;
    v17.__first_ = v15;
    v17.__begin_ = v15;
    std::__split_buffer<std::string>::~__split_buffer(&v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = v3 + 24;
  }

  *(a1 + 8) = v6;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

std::string *std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<std::string>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::string*>(uint64_t *a1, std::string *this)
{
  if (a1)
  {
    v3 = a1;
    do
    {
      if (*(v3 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(this, v3[2], v3[3]);
      }

      else
      {
        v4 = *(v3 + 1);
        this->__r_.__value_.__r.__words[2] = v3[4];
        *&this->__r_.__value_.__l.__data_ = v4;
      }

      v3 = *v3;
      ++this;
    }

    while (v3);
  }

  return this;
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:nn200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<std::string>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *GTAGXProfilingSupportHelper::GetCountersForDerivedCounter(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](a1, v3);
  v5 = *(&xmmword_27F09C7A8 + 1);
  if (!*(&xmmword_27F09C7A8 + 1))
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(*(&xmmword_27F09C7A8 + 8));
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *(&xmmword_27F09C7A8 + 1))
    {
      v9 = v4 % *(&xmmword_27F09C7A8 + 1);
    }
  }

  else
  {
    v9 = (*(&xmmword_27F09C7A8 + 1) - 1) & v4;
  }

  v10 = *(xmmword_27F09C7A8 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (!*v10)
  {
    return 0;
  }

  do
  {
    v12 = v11[1];
    if (v6 == v12)
    {
      if (std::equal_to<std::string>::operator()[abi:nn200100](v11 + 2, v1))
      {
        break;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= v5)
        {
          v12 %= v5;
        }
      }

      else
      {
        v12 &= v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }

    v11 = *v11;
  }

  while (v11);
  if (v11)
  {
    return v11 + 5;
  }

  else
  {
    return 0;
  }
}

id GTShaderDebuggerMDSerializerError(unsigned int a1, NSString *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = MEMORY[0x277CCA9B8];
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = &stru_2860BD438;
  }

  v10 = *MEMORY[0x277CCA450];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v5 errorWithDomain:@"GTShaderDebuggerMDSerializerErrorDomain" code:a1 userInfo:v7];

  return v8;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

uint64_t *std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x253032E30]();
    MEMORY[0x2530332C0](v3, 0x10B2C407FF26C1CLL);
  }

  return a1;
}

void std::vector<std::unique_ptr<llvm::Module>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 40 * v3 - 24;
    v5 = -40 * v3;
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 -= 40;
      v5 += 40;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void llvm::SMDiagnostic::~SMDiagnostic(llvm::SMDiagnostic *this)
{
  llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(this + 128);
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *>>>::operator()[abi:nn200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

apr_array_header_t *GetQueueForRef(apr_pool_t **a1, uint64_t a2)
{
  v8 = a2;
  v3 = *find_entry(a1, &v8, 8uLL, 0);
  if (!v3 || (v4 = *(v3 + 32)) == 0)
  {
    v5 = *a1;
    v4 = apr_array_make(*a1, 4, 8);
    v6 = apr_palloc(v5, 8uLL);
    *v6 = v8;
    apr_hash_set(a1, v6, 8, v4);
  }

  return v4;
}

void GTMTLReplayController_restoreMTLBufferContents(const char ****a1, void *a2)
{
  v92 = *MEMORY[0x277D85DE8];
  v68 = **a1;
  v70 = a1[23];
  v4 = a2[3];
  v69 = a1[1];
  if (*a2 == 50)
  {
    v14 = [v69 bufferForHeapKey:a2[1]];
    v6 = v14;
    if (s_logUsingOsLog != 1)
    {
      v26 = *MEMORY[0x277D85E08];
      v27 = MEMORY[0x277CCACA8];
      v28 = a2[1];
      v7 = [v14 heap];
      v29 = [v7 label];
      v30 = [v27 stringWithFormat:@"Restoring heap %llu '%s' from file '%s' [length = %llu, offset = %llu]", v28, objc_msgSend(v29, "UTF8String"), a2[3], a2[5], a2[4]];
      fprintf(v26, "%s\n", [v30 UTF8String]);

      goto LABEL_13;
    }

    v7 = gt_tagged_log(0xEu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = a2[1];
      v9 = [v6 heap];
      v16 = [v9 label];
      v17 = [v16 UTF8String];
      v19 = a2[4];
      v18 = a2[5];
      v20 = a2[3];
      *buf = 134219010;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = v17;
      *&buf[22] = 2080;
      *&buf[24] = v20;
      *v91 = 2048;
      *&v91[2] = v18;
      *&v91[10] = 2048;
      *&v91[12] = v19;
      _os_log_impl(&dword_24D764000, v7, OS_LOG_TYPE_DEFAULT, "Restoring heap %llu '%s' from file '%s' [length = %llu, offset = %llu]", buf, 0x34u);

      goto LABEL_9;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (*a2 == 22)
  {
    v5 = [v69 bufferForKey:a2[1]];
    v6 = v5;
    if (s_logUsingOsLog == 1)
    {
      v7 = gt_tagged_log(0xEu);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a2[1];
        v9 = [v6 label];
        v10 = [v9 UTF8String];
        v12 = a2[4];
        v11 = a2[5];
        v13 = a2[3];
        *buf = 134219010;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = v10;
        *&buf[22] = 2080;
        *&buf[24] = v13;
        *v91 = 2048;
        *&v91[2] = v11;
        *&v91[10] = 2048;
        *&v91[12] = v12;
        _os_log_impl(&dword_24D764000, v7, OS_LOG_TYPE_DEFAULT, "Restoring buffer %llu '%s' from file '%s' [length = %llu, offset = %llu]", buf, 0x34u);
LABEL_9:

        goto LABEL_13;
      }

      goto LABEL_13;
    }

    v21 = *MEMORY[0x277D85E08];
    v22 = MEMORY[0x277CCACA8];
    v23 = a2[1];
    v24 = [v5 label];
    v25 = [v22 stringWithFormat:@"Restoring buffer %llu '%s' from file '%s' [length = %llu, offset = %llu]", v23, objc_msgSend(v24, "UTF8String"), a2[3], a2[5], a2[4]];
    fprintf(v21, "%s\n", [v25 UTF8String]);
  }

  else
  {
    v6 = 0;
  }

LABEL_14:
  v31 = a1[3];
  v32 = [v31 bufferWithLength:a2[5] alignment:1];
  *v91 = 0u;
  memset(buf, 0, sizeof(buf));
  GTCaptureArchive_fillBuffer(v68, v70, v4, [v32 contents], a2[5], buf);
  v33 = [v31 blitCommandEncoder];
  v34 = [v32 heapBuffer];
  [v33 copyFromBuffer:v34 sourceOffset:objc_msgSend(v32 toBuffer:"heapLocation") destinationOffset:v6 size:{a2[4], a2[5]}];

  if ((qword_27F09CF90 & 0x200000000) != 0 && *a2 == 50)
  {
    v35 = [(*a1)[6] heapTextureRestoreOverrides];

    if (v35)
    {
      v36 = [(*a1)[6] heapTextureRestoreOverrides];
      v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2[3]];
      v38 = [v36 objectForKeyedSubscript:v37];

      if (v38)
      {
        v61 = v32;
        v62 = v6;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v60 = v38;
        obj = v38;
        v64 = [obj countByEnumeratingWithState:&v84 objects:v89 count:16];
        if (v64)
        {
          v63 = *v85;
          v67 = v31;
          do
          {
            v39 = 0;
            do
            {
              if (*v85 != v63)
              {
                objc_enumerationMutation(obj);
              }

              v66 = v39;
              v72 = *(*(&v84 + 1) + 8 * v39);
              v40 = [obj objectForKeyedSubscript:?];
              v80 = 0u;
              v81 = 0u;
              v82 = 0u;
              v83 = 0u;
              v73 = [v40 countByEnumeratingWithState:&v80 objects:v88 count:16];
              if (v73)
              {
                v71 = *v81;
                do
                {
                  for (i = 0; i != v73; ++i)
                  {
                    if (*v81 != v71)
                    {
                      objc_enumerationMutation(v40);
                    }

                    v42 = *(*(&v80 + 1) + 8 * i);
                    v43 = [v40 objectForKeyedSubscript:v42];
                    v44 = [v31 bufferWithLength:objc_msgSend(v43 alignment:{"fileSize"), 16}];
                    v45 = [v43 filename];
                    GTCaptureArchive_fillBuffer(v68, v70, [v45 UTF8String], objc_msgSend(v44, "contents"), objc_msgSend(v43, "fileSize"), buf);

                    v46 = [v42 plane];

                    if (v46)
                    {
                      v47 = [v42 plane];
                      v48 = [v47 unsignedIntegerValue];

                      if (v48)
                      {
                        v49 = 2 * (v48 == 1);
                      }

                      else
                      {
                        v49 = 1;
                      }
                    }

                    else
                    {
                      v49 = 0;
                    }

                    v50 = [v69 textureForKey:{objc_msgSend(v72, "unsignedLongLongValue")}];
                    if (v50)
                    {
                      [v31 blitCommandEncoder];
                      v51 = v76 = v49;
                      v52 = [v44 heapBuffer];
                      v77 = [v44 heapLocation];
                      v75 = [v43 bytesPerRow];
                      v74 = [v43 bytesPerImage];
                      v53 = [v43 width];
                      v54 = [v43 height];
                      v79[0] = v53;
                      v79[1] = v54;
                      v79[2] = 1;
                      v55 = objc_msgSend_slice(v42);
                      v56 = v40;
                      v57 = [v42 mipLevel];
                      v58 = [v42 depthPlane];
                      v78[0] = 0;
                      v78[1] = 0;
                      v78[2] = v58;
                      v59 = v57;
                      v40 = v56;
                      v31 = v67;
                      [v51 copyFromBuffer:v52 sourceOffset:v77 sourceBytesPerRow:v75 sourceBytesPerImage:v74 sourceSize:v79 toTexture:v50 destinationSlice:v55 destinationLevel:v59 destinationOrigin:v78 options:v76];
                    }
                  }

                  v73 = [v40 countByEnumeratingWithState:&v80 objects:v88 count:16];
                }

                while (v73);
              }

              v39 = v66 + 1;
            }

            while (v66 + 1 != v64);
            v64 = [obj countByEnumeratingWithState:&v84 objects:v89 count:16];
          }

          while (v64);
        }

        v32 = v61;
        v6 = v62;
        v38 = v60;
      }
    }
  }

  apr_pool_clear(*v70);
}

void GTMTLReplayController_restoreMTLTensor(const char ****a1, uint64_t a2)
{
  v90[1] = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v5 = a1[23];
  v6 = *(a2 + 24);
  v78 = a1[1];
  v7 = [v78 tensorForKey:*(a2 + 8)];
  v79 = v7;
  if (s_logUsingOsLog == 1)
  {
    v8 = gt_tagged_log(0xEu);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a2 + 8);
      v10 = [v79 label];
      v11 = [v10 UTF8String];
      v12 = *(a2 + 24);
      *buf = 134218498;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = v11;
      *&buf[22] = 2080;
      *&buf[24] = v12;
      _os_log_impl(&dword_24D764000, v8, OS_LOG_TYPE_DEFAULT, "Restoring tensor %llu '%s' from file '%s'", buf, 0x20u);
    }
  }

  else
  {
    v13 = *MEMORY[0x277D85E08];
    v14 = MEMORY[0x277CCACA8];
    v15 = *(a2 + 8);
    v16 = [v7 label];
    v17 = [v14 stringWithFormat:@"Restoring tensor %llu '%s' from file '%s'", v15, objc_msgSend(v16, "UTF8String"), *(a2 + 24)];
    fprintf(v13, "%s\n", [v17 UTF8String]);
  }

  v18 = a1[3];
  v19 = RequestSize(a2);
  v20 = [v18 bufferWithLength:v19 alignment:RequestAlignment(a2)];
  memset(v80, 0, sizeof(v80));
  GTCaptureArchive_fillBuffer(v4, v5, v6, [v20 contents], v19, v80);
  if (DWORD1(v80[0]))
  {
    v89 = *MEMORY[0x277CCA450];
    v76 = MEMORY[0x277CCACA8];
    if (GTError_initialize_onceToken != -1)
    {
      dispatch_once(&GTError_initialize_onceToken, &__block_literal_global_10851);
    }

    v21 = 0;
    v22 = "";
    v23 = v80;
    v24 = "Assertion failed: ";
    while (1)
    {
      if (!v23)
      {
LABEL_42:
        v45 = [v76 stringWithUTF8String:v22];
        v90[0] = v45;
        v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:&v89 count:1];

        v47 = MakeNSError(101, v46);
        GTMTLReplay_handleNSError(v47);
        goto LABEL_47;
      }

      v25 = *(v23 + 1);
      if (v25 > 501)
      {
        if (v25 == 502)
        {
          v33 = s_errorPool;
          if ((*v23 & 2) != 0)
          {
            v42 = apr_itoa(s_errorPool, v21);
            v43 = *(v23 + 1);
            if (!v43)
            {
              v43 = "(none)";
            }

            if (*(v23 + 5))
            {
              v44 = "\n";
            }

            else
            {
              v44 = 0;
            }

            v28 = apr_pstrcat(v33, v22, "Error #", v42, " Archive data:\n\tFilename: ", v43, "\n\tReason: ", *(v23 + 2), " is false", v44, 0, v73, v74, v75);
          }

          else
          {
            v34 = *(v23 + 1);
            if (!v34)
            {
              v34 = "(none)";
            }

            v28 = apr_pstrcat(s_errorPool, v22, "Archive data error: \n", "\tFilename: ", v34, "\n", "\tReason: ", *(v23 + 2), " is false", 0, v72, v73, v74, v75);
          }

          goto LABEL_40;
        }

        if (v25 == 503)
        {
          v29 = s_errorPool;
          if ((*v23 & 2) != 0)
          {
            v77 = apr_itoa(s_errorPool, v21);
            v38 = v24;
            v39 = apr_ltoa(s_errorPool, *(v23 + 1));
            v40 = apr_ltoa(s_errorPool, *(v23 + 2));
            if (*(v23 + 5))
            {
              v41 = "\n";
            }

            else
            {
              v41 = 0;
            }

            v67 = v39;
            v24 = v38;
            v28 = apr_pstrcat(v29, v22, "Error #", v77, " GetStream:\n\tDevice object: ", v67, "\n\tFunc index: ", v40, "\n", "\tReason: ", *(v23 + 3), " is false", v41, 0);
          }

          else
          {
            v30 = apr_ltoa(s_errorPool, *(v23 + 1));
            v31 = apr_ltoa(s_errorPool, *(v23 + 2));
            v28 = apr_pstrcat(v29, v22, "GetStream failed: \n", "\tDevice object: ", v30, "\n", "\tFunc index: ", v31, "\n", "\tReason: ", *(v23 + 3), " is false", 0, v75);
          }

          goto LABEL_40;
        }
      }

      else
      {
        if (v25 == 500)
        {
          v28 = apr_pstrcat(s_errorPool, v22, v24, *(v23 + 1), 0, v66, v68, v69, v70, v71, v72, v73, v74, v75);
          goto LABEL_40;
        }

        if (v25 == 501)
        {
          v26 = s_errorPool;
          if ((*v23 & 2) != 0)
          {
            v35 = apr_itoa(s_errorPool, v21);
            v36 = apr_itoa(s_errorPool, *(v23 + 2));
            if (*(v23 + 5))
            {
              v37 = "\n";
            }

            else
            {
              v37 = 0;
            }

            v28 = apr_pstrcat(v26, v22, "Error #", v35, " DYDecode:\n\tFunc index: ", v36, "\n\tFenum: ", *(v23 + 2), "\n\tReason: ", *(v23 + 3), " is false", v37, 0, v75);
          }

          else
          {
            v27 = apr_ltoa(s_errorPool, *(v23 + 1));
            v28 = apr_pstrcat(v26, v22, "DYDecode failed: \n", "\tFunc index: ", v27, "\n", "\tFenum: ", *(v23 + 2), "\n", "\tReason: ", *(v23 + 3), " is false", 0, v75);
          }

          goto LABEL_40;
        }
      }

      v32 = s_errorPool;
      v65 = apr_itoa(s_errorPool, v25);
      v28 = apr_pstrcat(v32, v22, "Code: ", v65, 0, v66, v68, v69, v70, v71, v72, v73, v74, v75);
LABEL_40:
      v22 = v28;
      ++v21;
      v23 = *(v23 + 5);
      if (v21 == 50)
      {
        v22 = apr_pstrcat(s_errorPool, v28, "and more...\n", 0);
        goto LABEL_42;
      }
    }
  }

  v48 = *(a2 + 144);
  v86 = *(a2 + 128);
  v87 = v48;
  v88 = *(a2 + 160);
  v49 = *(a2 + 80);
  v82 = *(a2 + 64);
  v83 = v49;
  v50 = *(a2 + 112);
  v84 = *(a2 + 96);
  v85 = v50;
  v51 = *(a2 + 48);
  *buf = *(a2 + 32);
  *&buf[16] = v51;
  v46 = MakeMTLTensorExtents(buf);
  v52 = *(a2 + 248);
  v53 = *(a2 + 280);
  v86 = *(a2 + 264);
  v87 = v53;
  v88 = *(a2 + 296);
  v54 = *(a2 + 184);
  v55 = *(a2 + 216);
  v82 = *(a2 + 200);
  v83 = v55;
  v84 = *(a2 + 232);
  v85 = v52;
  *buf = *(a2 + 168);
  *&buf[16] = v54;
  v47 = MakeMTLTensorExtents(buf);
  v56 = *(a2 + 416);
  v86 = *(a2 + 400);
  v87 = v56;
  v88 = *(a2 + 432);
  v57 = *(a2 + 352);
  v82 = *(a2 + 336);
  v83 = v57;
  v58 = *(a2 + 384);
  v84 = *(a2 + 368);
  v85 = v58;
  v59 = *(a2 + 320);
  *buf = *(a2 + 304);
  *&buf[16] = v59;
  v60 = MakeMTLTensorExtents(buf);
  v61 = objc_alloc_init(MEMORY[0x277CD7038]);
  [v61 setDimensions:v47];
  [v61 setDataType:*(a2 + 440)];
  [v61 setUsage:1];
  [v61 setStrides:v60];
  v62 = [v20 tensorAlias:v61];
  if (v62)
  {
    v63 = [v18 blitCommandEncoder];
    [v63 copyFromTensor:v62 sourceOrigin:v46 sourceDimensions:v47 toTensor:v79 destinationOrigin:v46 destinationDimensions:v47];

    apr_pool_clear(*v5);
  }

  else
  {
    v64 = MakeNSError(101, MEMORY[0x277CBEC10]);
    GTMTLReplay_handleNSError(v64);
  }

LABEL_47:
}

uint64_t RequestSize(uint64_t a1)
{
  v3 = 0;
  v4 = *a1;
  if (*a1 > 79)
  {
    switch(v4)
    {
      case 'P':
        return *(a1 + 56);
      case 'V':
        return *(a1 + 32);
      case 'e':
        v19 = v1;
        v20 = v2;
        v5 = *(a1 + 440);
        v6 = *(a1 + 248);
        v7 = *(a1 + 280);
        v17[6] = *(a1 + 264);
        v17[7] = v7;
        v18 = *(a1 + 296);
        v8 = *(a1 + 184);
        v9 = *(a1 + 216);
        v17[2] = *(a1 + 200);
        v17[3] = v9;
        v17[4] = *(a1 + 232);
        v17[5] = v6;
        v17[0] = *(a1 + 168);
        v17[1] = v8;
        v10 = *(a1 + 416);
        v15[6] = *(a1 + 400);
        v15[7] = v10;
        v16 = *(a1 + 432);
        v11 = *(a1 + 352);
        v15[2] = *(a1 + 336);
        v15[3] = v11;
        v12 = *(a1 + 384);
        v15[4] = *(a1 + 368);
        v15[5] = v12;
        v13 = *(a1 + 320);
        v15[0] = *(a1 + 304);
        v15[1] = v13;
        return GTMTLTensorExtents_bytesLength(v17, v15, v5);
    }
  }

  else if (v4 == 16)
  {
    return *(a1 + 32);
  }

  else if (v4 == 22 || v4 == 50)
  {
    return *(a1 + 40);
  }

  return v3;
}

uint64_t RequestAlignment(uint64_t a1)
{
  v2 = *a1;
  result = 1;
  if (v2 <= 56)
  {
    if (v2 == 16)
    {
      return 32;
    }

    if (v2 != 22 && v2 != 50)
    {
      return 0;
    }
  }

  else
  {
    if (v2 <= 85)
    {
      if (v2 != 57)
      {
        if (v2 == 80)
        {
          return *(a1 + 60);
        }

        return 0;
      }

      return result;
    }

    if (v2 == 86)
    {
      return 256;
    }

    if (v2 != 101)
    {
      return 0;
    }
  }

  return result;
}

void GTMTLReplayController_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage(const char ****a1, uint64_t a2)
{
  v125 = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v5 = a1[23];
  v6 = a1[1];
  v7 = v6;
  if (!*(a2 + 8))
  {
    v9 = MakeNSError(101, MEMORY[0x277CBEC10]);
    GTMTLReplay_handleNSError(v9);
    goto LABEL_64;
  }

  v8 = [v6 textureForKey:?];
  v9 = v8;
  if (!v8)
  {
    v13 = MakeNSError(101, MEMORY[0x277CBEC10]);
    GTMTLReplay_handleNSError(v13);
    goto LABEL_63;
  }

  v10 = [v8 device];
  v11 = [v9 pixelFormat];
  v101 = [v9 sampleCount];
  v117 = 0;
  memset(v116, 0, sizeof(v116));
  v92 = v11;
  GTMTLPixelFormatGetInfoForDevice(v116, v10, v11);
  *&v124 = 0;
  v86 = v7;
  v89 = v5;
  if ((~DWORD2(v116[0]) & 0x60) != 0)
  {
    if ((WORD4(v116[0]) & 0x2000) != 0)
    {
      v12 = 4;
      *&v124 = 4;
    }

    else
    {
      v12 = 0;
    }

    v96 = 1;
  }

  else
  {
    v124 = xmmword_24DA8BC50;
    v96 = 2;
    v12 = 1;
  }

  v95 = *(a2 + 36);
  v94 = *(a2 + 38);
  v93 = *(a2 + 40);
  v14 = *(a2 + 42);
  v15 = *(a2 + 44);
  v16 = *(a2 + 46);
  v115 = 0;
  v113 = 0u;
  *size = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v17 = v10;
  v18 = v14;
  v98 = v15;
  v91 = v16;
  GTMTLGetTextureLevelInfoForDeviceWithOptions(&v109, v10, v11, v14, v15, v16, v101, 0, v12);
  v19 = *(GTCaptureArchive_getFileWithFilename(v4, *(a2 + 24)) + 8);
  v88 = a1[3];
  v20 = [v88 bufferWithLength:v19 alignment:*(&v113 + 1)];
  GTCaptureArchive_fillBuffer(v4, v89, *(a2 + 24), [v20 contents], v19, 0);
  v21 = [v20 contents];
  v103 = v20;
  v22 = [v20 length];
  v23 = 0;
  v24 = 0;
  if (v21)
  {
    v25 = v18;
    v26 = v89;
    if (v22 >= 0x10)
    {
      if (*v21 == 0x63617074757265)
      {
        if (*(v21 + 8) == 1)
        {
          v24 = *(v21 + 12) + 16;
        }

        else
        {
          v24 = *(v21 + 12);
        }

        v23 = v21;
      }

      else
      {
        v23 = 0;
        v24 = 0;
      }
    }
  }

  else
  {
    v25 = v18;
    v26 = v89;
  }

  if ((BYTE9(v116[0]) & 0x20) != 0 && (((*a1)[44] & 1) != 0 || strncmp(*(a2 + 24), "MTLTexture-", 0xBuLL)))
  {
    v27 = ([v103 contents] + v24);
    v28 = size[1];
    v29 = apr_palloc(*v26, size[1]);
    if (v111 >= 1)
    {
      v30 = 0;
      v31 = DWORD2(v110);
      v32 = DWORD2(v110);
      v33 = v111 & 0x7FFFFFFF;
      v34 = 8 * DWORD2(v110);
      v35 = v29;
      do
      {
        if (v31 >= 1)
        {
          v36 = 0;
          do
          {
            v37 = *&vorr_s8(vshl_n_s32(__PAIR64__(v36, v30), 8uLL), vand_s8(__PAIR64__(v36, v30), 0xFFFF0000FFFFLL)) & 0xFF00FF00FF00FFLL;
            v38 = *&vorr_s8(vshl_n_s32(v37, 4uLL), v37) & 0xFF0FFF0FFF0FFF0FLL;
            v39 = vand_s8(vorr_s8(vshl_n_s32(v38, 2uLL), v38), 0x3333333333333333);
            v40 = vshl_u32(v39, 0x200000001);
            v39.i32[1] *= 2;
            v41 = vand_s8(vorr_s8(v40, v39), 0xAAAAAAAA55555555);
            *&v35[8 * v36++] = v27[vorr_s8(v41, vdup_lane_s32(v41, 1)).i32[0]];
          }

          while (v32 != v36);
        }

        ++v30;
        v35 += v34;
      }

      while (v30 != v33);
    }

    memcpy(v27, v29, v28);
  }

  v104 = v17;
  v122 = v92;
  v123 = v92;
  v120[0] = v25;
  v120[1] = v98;
  v120[2] = v91;
  v121[0] = v25;
  v121[1] = v98;
  v121[2] = v91;
  v85 = v9;
  v118 = v9;
  v102 = v118;
  v119 = v102;
  v97 = v23;
  PlanePixelFormat = GetPlanePixelFormat(v92, 0);
  if (PlanePixelFormat)
  {
    v42 = MakeMTLTextureDescriptorFromTextureWithoutResourceIndex(v102);
    v43.i64[0] = v25;
    v43.i64[1] = v98;
    v99 = v43;
    *v43.i8 = vrhadd_u32(vmovn_s64(v43), 0);
    v44 = &v122;
    v45.i64[0] = v43.u32[0];
    v45.i64[1] = v43.u32[1];
    v90 = v45;
    v46 = v120;
    v47 = &v118;
    v48 = 1;
    v49 = PlanePixelFormat;
    v50 = v92;
    while (1)
    {
      *v44 = v49;
      if (v50 == 543 || (v51 = v99, v50 == 540))
      {
        if (v48)
        {
          v52 = -1;
        }

        else
        {
          v52 = 0;
        }

        v51 = vbslq_s8(vdupq_n_s64(v52), v99, v90);
      }

      *v46 = v51;
      v46[1].i64[0] = v91;
      [v42 setWidth:v51.i64[0]];
      [v42 setHeight:v46->i64[1]];
      [v42 setPixelFormat:v49];
      v53 = [v17 newTextureWithDescriptor:v42];
      v54 = *v47;
      *v47 = v53;

      if ((v48 & 1) == 0)
      {
        break;
      }

      v50 = v92;
      v49 = GetPlanePixelFormat(v92, 1);
      v48 = 0;
      v47 = &v119;
      v46 = v121;
      v44 = &v123;
    }

    v96 = 2;
  }

  v100 = [v88 blitCommandEncoder];
  v55 = 0;
  v56 = (v23 + 64);
  v57 = v120;
  do
  {
    v58 = *(&v124 + v55);
    *&v59 = GTMTLGetTextureLevelInfoForDeviceWithOptions(&v109, v104, *(&v122 + v55), *v57, v57[1], v57[2], v101, 0, v58).n128_u64[0];
    if (v23 && *(v23 + 10) == 1 && *(v23 + 16) >= v55)
    {
      v60 = *(v56 - 1);
      v61 = *v56;
    }

    else
    {
      v60 = *(a2 + 48);
      v61 = *(a2 + 52);
    }

    v62 = [v102 textureType];
    if (v62 < 2)
    {
      goto LABEL_47;
    }

    if (v62 != 7)
    {
      if (!v60)
      {
LABEL_47:
        v60 = size[0];
      }

      v61 = v111 * v60;
      goto LABEL_55;
    }

    if (!v60)
    {
      v60 = size[0];
    }

    if (!v61)
    {
      v61 = v60 * v111;
    }

LABEL_55:
    v63 = [v103 heapBuffer];
    v64 = [v103 heapLocation];
    v65 = *(&v118 + v55);
    v66 = *(a2 + 32);
    v67 = *(a2 + 34);
    v107 = *v57;
    v108 = v57[2];
    v106[0] = v95;
    v106[1] = v94;
    v106[2] = v93;
    [v100 copyFromBuffer:v63 sourceOffset:v64 + v24 sourceBytesPerRow:v60 sourceBytesPerImage:v61 sourceSize:&v107 toTexture:v65 destinationSlice:v66 destinationLevel:v67 destinationOrigin:v106 options:v58];

    v24 += v115;
    ++v55;
    v56 += 6;
    v57 += 3;
    v23 = v97;
  }

  while (v96 != v55);
  v13 = v104;
  if (PlanePixelFormat)
  {
    v68 = GTMTLReplayController_defaultLibrary(v104);
    v69 = objc_alloc_init(MEMORY[0x277CD6F70]);
    v70 = [v69 colorAttachments];
    v71 = [v70 objectAtIndexedSubscript:0];
    [v71 setPixelFormat:v92];

    v72 = [v68 newFunctionWithName:@"Harvest2PVertexForDownloader"];
    [v69 setVertexFunction:v72];

    v73 = [v68 newFunctionWithName:@"Harvest2PFragmentUpload"];
    [v69 setFragmentFunction:v73];

    v105 = 0;
    v74 = [v104 newRenderPipelineStateWithDescriptor:v69 error:&v105];
    v75 = v105;
    v76 = objc_alloc_init(MEMORY[0x277CD6F48]);
    v77 = [v76 colorAttachments];
    v78 = [v77 objectAtIndexedSubscript:0];
    [v78 setTexture:v102];

    v79 = [v76 colorAttachments];
    v80 = [v79 objectAtIndexedSubscript:0];
    [v80 setLoadAction:0];

    v81 = [v76 colorAttachments];
    v82 = [v81 objectAtIndexedSubscript:0];
    [v82 setStoreAction:1];

    v83 = [v88 renderCommandEncoderWithDescriptor:v76];
    [v83 setRenderPipelineState:v74];
    [v83 setFragmentTexture:v118 atIndex:0];
    [v83 setFragmentTexture:v119 atIndex:1];

    [v83 drawPrimitives:3 vertexStart:0 vertexCount:3];
  }

  apr_pool_clear(*v89);

  v84 = 8;
  v9 = v85;
  do
  {

    v84 -= 8;
  }

  while (v84 != -8);

  v7 = v86;
LABEL_63:

LABEL_64:
}

char *GTMTLReplayController_makeDataSource(const char *a1, apr_pool_t *a2)
{
  v895 = *MEMORY[0x277D85DE8];
  v3 = &unk_27F09B000;
  v4 = g_signpostLog;
  if (os_signpost_enabled(v4))
  {
    buf[0].i32[0] = 136446210;
    *(buf[0].i64 + 4) = a1;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "LoadArchive %{public}s", buf, 0xCu);
  }

  bzero(buf, 0x400uLL);
  v5 = realpath_DARWIN_EXTSN(a1, buf[0].i8);
  memset(&v889.st_blksize, 0, 32);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a1;
  }

  memset(&v889, 0, 112);
  v7 = gt_filepath_merge(v6, "index", a2);
  v8 = open(v7, 0);
  if (v8 < 0)
  {
    goto LABEL_21;
  }

  v9 = v8;
  fstat(v8, &v889);
  v10 = mmap(0, v889.st_size, 1, 2, v9, 0);
  close(v9);
  if (v10 == -1 || v889.st_size < 0x14uLL || *v10 != 1667851384 && v10[1])
  {
    goto LABEL_21;
  }

  v11 = v10[2];
  if (v889.st_size - 20 < (12 * v11))
  {
    goto LABEL_21;
  }

  v12 = &v10[3 * v11 + 5];
  v13 = v10[3];
  if (v889.st_size - (12 * v11 + 20) < 24 * v13)
  {
    goto LABEL_21;
  }

  v14 = v12 + 24 * v13;
  v15 = v10[4];
  if (v10 + v889.st_size - v14 < 2 * v15)
  {
    goto LABEL_21;
  }

  arr = apr_array_make(a2, v15, 8);
  v16 = v10[4];
  if (!v16)
  {
LABEL_18:
    v20 = gt_filepath_merge(v6, "store0", a2);
    v21 = open(v20, 0);
    v3 = &unk_27F09B000;
    if ((v21 & 0x80000000) == 0)
    {
      v22 = v21;
      memset(&v893, 0, sizeof(v893));
      fstat(v21, &v893);
      if (v893.st_size < 1)
      {
        st_size = 0;
        v839 = 0;
      }

      else
      {
        v23 = mmap(0, v893.st_size, 1, 2, v22, 0);
        st_size = v893.st_size;
        v839 = v23;
      }

      close(v22);
      v791 = apr_palloc(a2, 0xA0uLL);
      v24 = v791;
      if (v791)
      {
        v791[8] = 0u;
        v791[9] = 0u;
        v791[6] = 0u;
        v791[7] = 0u;
        v791[4] = 0u;
        v791[5] = 0u;
        v791[2] = 0u;
        v791[3] = 0u;
        *v791 = 0u;
        v791[1] = 0u;
      }

      *v791 = apr_pstrdup(a2, v6);
      *(v24 + 8) = a2;
      pthread_mutex_init((v24 + 16), 0);
      *(v24 + 80) = apr_array_make(a2, v10[2], 32);
      *(v24 + 88) = apr_hash_make(a2);
      v792 = v10[2];
      if (v792)
      {
        v793 = 0;
        v794 = v10 + 6;
        v845 = v12;
        do
        {
          v795 = *(v794 - 1);
          if (v795 != -1)
          {
            v796 = v12 + 24 * v795;
            v797 = *(v796 + 4);
            v868 = *v796;
            v798 = *(v796 + 8);
            v799 = *(v796 + 16);
            v860 = v799;
            v800 = apr_pstrdup(a2, *&arr->elts[8 * *v794]);
            v801 = v800;
            if ((v799 & 2) != 0)
            {
              v802 = 0;
            }

            else
            {
              v802 = v797;
            }

            hid = v802;
            if ((v799 & 2) != 0)
            {
              v803 = 0;
            }

            else
            {
              v803 = v798;
            }

            v849 = v803;
            v804 = *(v24 + 88);
            v805 = a1;
            v806 = *(*(v24 + 80) + 12);
            v807 = strlen(v800);
            v808 = apr_palloc(*(v24 + 8), 8uLL);
            *v808 = v806;
            a1 = v805;
            v809 = v804;
            v3 = &unk_27F09B000;
            v810 = v807;
            v12 = v845;
            apr_hash_set(v809, v801, v810, v808);
            v811 = apr_array_push(*(v24 + 80));
            *v811 = v801;
            v811[2] = v868;
            v811[3] = hid;
            *(v811 + 2) = v849;
            v811[6] = v860;
            v811[7] = 0;
            v792 = v10[2];
          }

          ++v793;
          v794 += 3;
        }

        while (v793 < v792);
      }

      *(v24 + 96) = v839;
      *(v24 + 104) = st_size;
      *(v24 + 112) = st_size;
      *(v24 + 128) = 0;
      v812 = compression_encode_scratch_buffer_size(0x505u);
      v813 = compression_decode_scratch_buffer_size(COMPRESSION_ZLIB);
      if (v812 <= v813)
      {
        v814 = v813;
      }

      else
      {
        v814 = v812;
      }

      *(v24 + 120) = apr_palloc(a2, v814);
      *(v24 + 136) = apr_hash_make(a2);
      munmap(v10, v889.st_size);
      v815 = v6;
      v25 = a2;
      GetUUIDFromMetadata((v24 + 144), v815, a2, v816);
      apr_pool_cleanup_register(a2, v24, GTCaptureArchive_cleanup, apr_pool_cleanup_null);
      goto LABEL_22;
    }

LABEL_21:
    v24 = 0;
    v25 = a2;
    goto LABEL_22;
  }

  v17 = 0;
  v18 = v10 + v889.st_size;
  v19 = v14 + 2 * v16;
  while (v18 > v19)
  {
    *apr_array_push(arr) = v19;
    v19 += *(v14 + 2 * v17++);
    if (v17 >= v10[4])
    {
      goto LABEL_18;
    }
  }

  v24 = 0;
  v25 = a2;
  v3 = &unk_27F09B000;
LABEL_22:
  v26 = v3[262];
  if (os_signpost_enabled(v26))
  {
    buf[0].i16[0] = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v26, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", &unk_24DA93952, buf, 2u);
  }

  if (!v24)
  {
    return 0;
  }

  v817 = a1;
  newpool = 0;
  apr_pool_create_ex(&newpool, v25, 0, v27);
  v891 = 0;
  v890 = 0u;
  memset(&v889, 0, sizeof(v889));
  v28 = v25;
  v29 = newpool;
  *&v893.st_dev = 0;
  apr_pool_create_ex(&v893, v28, 0, v30);
  *&v889.st_dev = v24;
  v889.st_ino = GTCaptureArchiveDecompressor_create(v29);
  buf[0].i64[0] = 0;
  apr_pool_create_ex(buf, 0, 0, v31);
  v32 = buf[0].i64[0];
  v33 = apr_palloc(buf[0].i64[0], 0x208uLL);
  v34 = v33;
  if (v33)
  {
    *(v33 + 8) = 0u;
    *(v33 + 488) = 0u;
    *(v33 + 504) = 0u;
    *(v33 + 456) = 0u;
    *(v33 + 472) = 0u;
    *(v33 + 424) = 0u;
    *(v33 + 440) = 0u;
    *(v33 + 392) = 0u;
    *(v33 + 408) = 0u;
    *(v33 + 360) = 0u;
    *(v33 + 376) = 0u;
    *(v33 + 328) = 0u;
    *(v33 + 344) = 0u;
    *(v33 + 296) = 0u;
    *(v33 + 312) = 0u;
    *(v33 + 264) = 0u;
    *(v33 + 280) = 0u;
    *(v33 + 232) = 0u;
    *(v33 + 248) = 0u;
    *(v33 + 200) = 0u;
    *(v33 + 216) = 0u;
    *(v33 + 168) = 0u;
    *(v33 + 184) = 0u;
    *(v33 + 136) = 0u;
    *(v33 + 152) = 0u;
    *(v33 + 104) = 0u;
    *(v33 + 120) = 0u;
    *(v33 + 72) = 0u;
    *(v33 + 88) = 0u;
    *(v33 + 40) = 0u;
    *(v33 + 56) = 0u;
    *(v33 + 24) = 0u;
  }

  *v33 = 0;
  pthread_mutex_init((v33 + 8), 0);
  *(v34 + 96) = apr_hash_make(v32);
  v35 = GTCoreAlloc(0x148uLL);
  pthread_mutex_init((v35 + 264), 0);
  *(v34 + 72) = v35;
  *(v34 + 120) = GTTraceContext_openStream(v34, 0);
  atomic_store(0, (v34 + 128));
  atomic_store(0, (v34 + 112));
  *&v889.st_uid = v34;
  *&v889.st_rdev = apr_hash_make(a2);
  v889.st_atimespec.tv_sec = apr_hash_make(a2);
  v889.st_atimespec.tv_nsec = apr_hash_make(a2);
  v889.st_mtimespec.tv_sec = a2;
  v889.st_mtimespec.tv_nsec = *&v893.st_dev;
  memset(&v889.st_ctimespec, 0, 80);
  v890 = 0u;
  v889.st_blksize = 4;
  v891 = 0;
  v36 = *&v889.st_uid;
  st_ino = v889.st_ino;
  v37 = apr_palloc(a2, 0x168uLL);
  v38 = v37;
  if (v37)
  {
    *(v37 + 8) = 0u;
    *(v37 + 328) = 0u;
    *(v37 + 344) = 0u;
    *(v37 + 296) = 0u;
    *(v37 + 312) = 0u;
    *(v37 + 264) = 0u;
    *(v37 + 280) = 0u;
    *(v37 + 232) = 0u;
    *(v37 + 248) = 0u;
    *(v37 + 200) = 0u;
    *(v37 + 216) = 0u;
    *(v37 + 168) = 0u;
    *(v37 + 184) = 0u;
    *(v37 + 136) = 0u;
    *(v37 + 152) = 0u;
    *(v37 + 104) = 0u;
    *(v37 + 120) = 0u;
    *(v37 + 72) = 0u;
    *(v37 + 88) = 0u;
    *(v37 + 40) = 0u;
    *(v37 + 56) = 0u;
    *(v37 + 24) = 0u;
  }

  *v37 = v24;
  *(v37 + 24) = *&v889.st_rdev;
  memset(v888, 0, sizeof(v888));
  v39 = GTCaptureArchive_mapData(v24, st_ino, "environment", a2, v888);
  v844 = v38;
  v829 = v36;
  v840 = v24;
  if (v39 && v40)
  {
    v41 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v39 length:v40 freeWhenDone:0];
    v42 = MEMORY[0x277CBEB98];
    buf[0].i64[0] = objc_opt_class();
    buf[0].i64[1] = objc_opt_class();
    buf[1].i64[0] = objc_opt_class();
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:3];
    v44 = [v42 setWithArray:v43];

    *&v893.st_dev = 0;
    v45 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v44 fromData:v41 error:&v893];
    v46 = *&v893.st_dev;
    v47 = apr_palloc(a2, 0x30uLL);
    v48 = v47;
    if (v47)
    {
      v47[1] = 0u;
      v47[2] = 0u;
      *v47 = 0u;
    }

    v49 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_PRESENT_DOWNLOAD"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFFFFFE | [v49 unsignedLongLongValue] & 1;

    v50 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_PRESENT_DOWNLOAD_SIZE"];
    *(v48 + 4) = [v50 unsignedLongLongValue];

    v51 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_LOG_ERRORS"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFFFFFD | (2 * ([v51 unsignedLongLongValue] & 1));

    v52 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_HASH_DUPLICATE_FILES"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFFFFDF | (32 * ([v52 unsignedLongLongValue] & 1));

    v53 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_WAIT_EVENT_TIMEOUT"];
    *v48 = [v53 unsignedLongLongValue];

    v54 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_WAIT_SHARED_EVENT_TIMEOUT_CPU"];
    *(v48 + 1) = [v54 unsignedLongLongValue];

    v55 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_DESTINATION_DEVELOPER_TOOLS_ENABLE"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFFF7FF | (([v55 unsignedLongLongValue] & 1) << 11);

    v56 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_WAIT_FOR_SIGNAL"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFFFFBF | (([v56 unsignedLongLongValue] & 1) << 6);

    v57 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_NO_METALFX_CAPTURE"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFFFEFF | (([v57 unsignedLongLongValue] & 1) << 8);

    v58 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_DISABLE_HEAP_TEXTURE_COMPRESSION"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFFFDFF | (([v58 unsignedLongLongValue] & 1) << 9);

    v59 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_CAPTURE_ADS_BUFFER_SPI"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFFFFFB | (4 * ([v59 unsignedLongLongValue] & 1));

    v60 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_ADS_EXTRA_BUFFERS"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFFFFEF | (16 * ([v60 unsignedLongLongValue] & 1));

    v61 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_MAX_DOWNLOAD_COMMAND_BUFFERS"];
    *(v48 + 2) = [v61 unsignedLongLongValue];

    v62 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_FORCE_RAYTRACING_ENABLE"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFFFFF7 | (8 * ([v62 unsignedLongLongValue] & 1));

    v63 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_IS_COMPOSITOR"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFFFF7F | (([v63 unsignedLongLongValue] & 1) << 7);

    v64 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_ENABLE_DOWNLOADS_AT_EVENTS"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFFFBFF | (([v64 unsignedLongLongValue] & 1) << 10);

    v65 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_ENABLE_MPROTECT"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFFEFFF | (([v65 unsignedLongLongValue] & 1) << 12);

    v66 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_ENABLE_MPROTECT_BUFFER_SPLITTING"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFFDFFF | (([v66 unsignedLongLongValue] & 1) << 13);

    v67 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_DISABLE_HEAPS"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFFBFFF | (([v67 unsignedLongLongValue] & 1) << 14);

    v68 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_DISABLE_PLACEMENT_HEAPS"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFF7FFF | (([v68 unsignedLongLongValue] & 1) << 15);

    v69 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_FORCE_WAIT_UNTIL_COMPLETED_ON_COMMIT"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFEFFFF | (([v69 unsignedLongLongValue] & 1) << 16);

    v70 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_REDIRECT_LOGGING_TO_STREAMS"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFDFFFF | (([v70 unsignedLongLongValue] & 1) << 17);

    v71 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_WITH_F12"];
    *(v48 + 10) = *(v48 + 10) & 0xFFFBFFFF | (([v71 unsignedLongLongValue] & 1) << 18);

    v72 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_SUPPORT_SUPERSEDING_LAYERS"];
    *(v48 + 10) = *(v48 + 10) & 0xFFF7FFFF | (([v72 unsignedLongLongValue] & 1) << 19);

    v73 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_DOWNLOADER_ENHANCED_COMMAND_BUFFER_ERRORS"];
    *(v48 + 10) = *(v48 + 10) & 0xFFEFFFFF | (([v73 unsignedLongLongValue] & 1) << 20);

    v74 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_DOWNLOADER_FORCE_SPLIT_COMMAND_ENCODERS"];
    *(v48 + 10) = *(v48 + 10) & 0xFFDFFFFF | (([v74 unsignedLongLongValue] & 1) << 21);

    v75 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_ENABLE_DOWNLOADER_FULL_HEAPS"];
    *(v48 + 10) = *(v48 + 10) & 0xFFBFFFFF | (([v75 unsignedLongLongValue] & 1) << 22);

    v76 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_FORCE_WAIT_SHARED_EVENT_TIMEOUT_CPU"];
    *(v48 + 10) = *(v48 + 10) & 0xFBFFFFFF | (([v76 unsignedLongLongValue] & 1) << 26);

    v77 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_ENABLE_EVENT_BUFFER"];
    *(v48 + 10) = *(v48 + 10) & 0xF7FFFFFF | (([v77 unsignedLongLongValue] & 1) << 27);

    v78 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_ENABLE_STREAMREF_AS_OBJECT_ID"];
    *(v48 + 10) = *(v48 + 10) & 0xEFFFFFFF | (([v78 unsignedLongLongValue] & 1) << 28);

    v79 = [v45 objectForKeyedSubscript:@"MTLCAPTURE_DISABLE_CADISPLAY"];
    *(v48 + 10) = *(v48 + 10) & 0xDFFFFFFF | (([v79 unsignedLongLongValue] & 1) << 29);

    *(v844 + 43) = v48;
    v29 = newpool;
    v3 = &unk_27F09B000;
    v24 = v840;
  }

  v80 = apr_array_make(a2, 128, 448);
  atomic_store(1u, (*&v889.st_uid + 112));
  v887 = 0;
  apr_pool_create_ex(&v887, v29, 0, v81);
  v82 = v3[262];
  if (os_signpost_enabled(v82))
  {
    buf[0].i16[0] = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v82, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "SortArchiveStrings", buf, 2u);
  }

  v83 = v887;
  pthread_mutex_lock((v24 + 16));
  v84 = apr_array_make(v83, *(*(v24 + 80) + 12), 8);
  v85 = *(v24 + 80);
  if (*(v85 + 12) >= 1)
  {
    v86 = 0;
    v87 = 0;
    do
    {
      v88 = *(*(v85 + 24) + v86);
      if (v88)
      {
        *apr_array_push(v84) = v88;
        v85 = *(v24 + 80);
      }

      ++v87;
      v86 += 32;
    }

    while (v87 < *(v85 + 12));
  }

  qsort(v84->elts, v84->nelts, v84->elt_size, GTCaptureArchive_strcmp);
  pthread_mutex_unlock((v24 + 16));
  v89 = v3[262];
  if (os_signpost_enabled(v89))
  {
    nelts = v84->nelts;
    buf[0].i32[0] = 67109120;
    buf[0].i32[1] = nelts;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v89, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "x%d", buf, 8u);
  }

  v91 = apr_array_make(newpool, 4, 8);
  GTCaptureArchive_filenamesWithPrefix(v84->nelts, v84->elts, "startup", v91);
  GTCaptureArchive_filenamesWithPrefix(v84->nelts, v84->elts, "device-resources", v91);
  v92 = v844;
  if ((qword_27F09CF90 & 0x1000) == 0)
  {
    GTCaptureArchive_filenamesWithPrefix(v84->nelts, v84->elts, "unused-device-resources", v91);
  }

  v837 = v80;
  if (v91->nelts >= 1)
  {
    v93 = 0;
    arra = 0;
    v833 = v91;
    while (1)
    {
      v94 = *&v91->elts[8 * v93];
      v95 = v887;
      v96 = GTCaptureArchive_mapData(v24, st_ino, v94, v887, 0);
      v98 = v97;
      v99 = strncmp(v94, "unused-device-resources", 0x17uLL);
      v855 = qword_27F09CF90;
      v100 = apr_array_make(v95, 16, 8);
      v101 = v3[262];
      if (os_signpost_enabled(v101))
      {
        buf[0].i32[0] = 136446466;
        *(buf[0].i64 + 4) = v94;
        buf[0].i16[6] = 2048;
        *(&buf[0].i64[1] + 6) = v98;
        _os_signpost_emit_with_name_impl(&dword_24D764000, v101, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "ReadTrace %{public}s (%{xcode:size-in-bytes}zu)", buf, 0x16u);
      }

      v102 = atomic_load((*&v889.st_uid + 80));
      v861 = v99;
      hi = v102;
      if (v98 >= 9)
      {
        break;
      }

      v110 = arra;
LABEL_89:
      arra = v110;
      v80 = v837;
      if (v100->nelts)
      {
        v121 = 0;
        do
        {
          AddResourceRestoreRequest(v837, &v889, *&v100->elts[8 * v121++], 0xFFFFFFFFFFFFFFFFLL);
        }

        while (v121 < v100->nelts);
      }

      v3 = &unk_27F09B000;
      v122 = g_signpostLog;
      v24 = v840;
      v91 = v833;
      if (os_signpost_enabled(v122))
      {
        buf[0].i16[0] = 0;
        _os_signpost_emit_with_name_impl(&dword_24D764000, v122, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", &unk_24DA93952, buf, 2u);
      }

      apr_pool_clear(v887);
      v92 = v844;
      if (!v861)
      {
        v123 = atomic_load((*&v889.st_uid + 80));
        *(v844 + 9) = hi;
        *(v844 + 10) = v123 - hi;
      }

      if (++v93 >= v833->nelts)
      {
        goto LABEL_100;
      }
    }

    v103 = arra;
    for (i = 8; i < v98; i += v107)
    {
      v105 = &v96[i];
      GTTraceFbufToFunc_createStream(&v889, &v96[i], v103);
      v106 = *&v96[i];
      if ((v96[i + 33] & 0x10) != 0)
      {
        v107 = *v105;
        do
        {
          v105 += v106;
          v106 = *v105;
          v107 += v106;
        }

        while ((v105[33] & 0x20) == 0);
      }

      else
      {
        v107 = *v105;
      }

      ++v103;
    }

    if (v99)
    {
      v108 = 1;
    }

    else
    {
      v108 = (v855 >> 10) & 1;
    }

    v109 = 8;
    v110 = arra;
    while (1)
    {
      v111 = &v96[v109];
      v112 = v110;
      GTTraceFbufToFunc(&v889, &v96[v109]);
      v113 = *&v96[v109 + 4];
      if (v113 <= -14804)
      {
        if (v113 == -16313 || v113 == -16236 || v113 == -16234)
        {
LABEL_80:
          if (v108)
          {
            *apr_array_push(v100) = v111;
          }
        }
      }

      else
      {
        v114 = (v113 + 10240) > 0x32 || ((1 << v113) & 0x440000020011DLL) == 0;
        if (!v114 || v113 == -10142 || v113 == -14803)
        {
          goto LABEL_80;
        }
      }

      v119 = *v111;
      if ((v111[33] & 0x10) != 0)
      {
        v120 = *v111;
        do
        {
          v111 += v119;
          v119 = *v111;
          v120 += v119;
        }

        while ((v111[33] & 0x20) == 0);
      }

      else
      {
        v120 = *v111;
      }

      v110 = (&v112->pool + 1);
      v109 += v120;
      if (v109 >= v98)
      {
        goto LABEL_89;
      }
    }
  }

  arra = 0;
LABEL_100:
  qsort(v80->elts, v80->nelts, v80->elt_size, GTMTLDataSource_compareRestores);
  v124 = atomic_load((*&v889.st_uid + 80));
  if (!(*(v92 + 9) + *(v92 + 10)))
  {
    *(v92 + 9) = v124;
  }

  v125 = v80->nelts;
  if (v125 >= 1)
  {
    elts = v80->elts;
    v127 = (v125 + 1) & 0xFFFFFFFE;
    v128 = xmmword_24DA8B910;
    v129 = vdupq_n_s64(v125 - 1);
    v130 = vdupq_n_s64(2uLL);
    do
    {
      v131 = vmovn_s64(vcgeq_u64(v129, v128));
      if (v131.i8[0])
      {
        *(elts + 2) = v124;
      }

      if (v131.i8[4])
      {
        *(elts + 58) = v124;
      }

      v128 = vaddq_s64(v128, v130);
      elts += 896;
      v127 -= 2;
    }

    while (v127);
  }

  v823 = v124;
  LODWORD(v884[0]) = 1;
  *(v884 + 4) = 0u;
  *(&v884[1] + 4) = 0u;
  v884[2] = 0u;
  v886 = apr_array_make(a2, 15, 8);
  v885 = apr_array_make(a2, 2048, 24);
  *(v844 + 17) = apr_array_make(a2, 128, 8);
  *(v844 + 19) = apr_hash_make(a2);
  *(v844 + 22) = apr_hash_make(a2);
  v132 = apr_hash_make(a2);
  *(v844 + 23) = v132;
  v827 = *(v844 + 22);
  v828 = v132;
  v133 = v887;
  v824 = GTCaptureArchive_mapData(v24, st_ino, "capture", v887, 0);
  v135 = v134;
  v832 = apr_hash_make(v133);
  v834 = apr_hash_make(v133);
  v136 = v3[262];
  if (os_signpost_enabled(v136))
  {
    buf[0].i32[0] = 136446466;
    *(buf[0].i64 + 4) = "capture";
    buf[0].i16[6] = 2048;
    *(&buf[0].i64[1] + 6) = v135;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v136, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Replayer-2-restore", "ReadTrace %{public}s (%{xcode:size-in-bytes}zu)", buf, 0x16u);
  }

  v137 = a2;
  v138 = v824;
  if (v135 >= 9)
  {
    v847 = 0;
    v139 = 8;
    hia = v823;
    v830 = v823;
    v831 = v135;
    while (1)
    {
      v140 = &v138[v139];
      v141 = *&v138[v139 + 4];
      v841 = v139;
      if (v141 + 15345) <= 0x38 && ((0x17C40BE00017E7FuLL >> (v141 - 15)))
      {
        if (v847)
        {
          isBeginCommandBuffer = v141 != -15343;
        }

        else
        {
          isBeginCommandBuffer = GTFenum_getConstructorType(v141) == 51;
        }
      }

      else if (v847)
      {
        isBeginCommandBuffer = GTFenum_isEndCommandBuffer(v141) ^ 1;
      }

      else
      {
        isBeginCommandBuffer = GTFenum_isBeginCommandBuffer(v141);
      }

      v847 = isBeginCommandBuffer;
      if (GTFenum_isDestructor(v141))
      {
        v143 = *(v140 + 5);
        v144 = *&v889.st_rdev;
        v145 = atomic_load((*&v889.st_uid + 80));
        if (GetAliasStream(v144, v143, v145))
        {
          GTTraceFbufToFunc_createStream(&v889, v140, arra);
          v146 = (&arra->pool + 1);
          GTTraceFbufToFunc(&v889, v140);
          goto LABEL_301;
        }
      }

      if ((v140[32] & 2) != 0 || isBeginCommandBuffer && AddResourceRestoreRequest(v80, &v889, v140, hia))
      {
        atomic_fetch_add((v829 + 80), 1uLL);
        v147 = *(v140 + 1);
        if (!GTFenum_getConstructorType(v147) && !GTFenum_isBeginCommandBuffer(v147))
        {
          v146 = arra;
          goto LABEL_302;
        }

        atomic_fetch_add((v829 + 88), 1uLL);
        goto LABEL_300;
      }

      if (*(v140 + 1) == -10229)
      {
        v148 = strcmp(v140 + 36, "CUUUU");
        v149 = *(v140 + 44);
        v883 = 0;
        v879 = v149;
        buf[0].i64[0] = 16;
        appended = AppendString_13794(&appended, (v140 + 36), buf[0].i64);
        v881 = AppendString_13794(&v881, (v140 + 36), buf[0].i64);
        v882 = AppendString_13794(&v882, (v140 + 36), buf[0].i64);
        if (!v148)
        {
          v883 = AppendString_13794(&v883, (v140 + 36), buf[0].i64);
        }

        v822 = v140;
        v150 = *(v844 + 19);
        v151 = *v150;
        v152 = apr_palloc(*v150, 0x90uLL);
        if (v152)
        {
          *(v152 + 17) = 0;
          *(v152 + 120) = 0u;
          *(v152 + 104) = 0u;
          *(v152 + 88) = 0u;
          *(v152 + 72) = 0u;
          *(v152 + 56) = 0u;
          *(v152 + 40) = 0u;
          *(v152 + 24) = 0u;
          *(v152 + 8) = 0u;
        }

        *v152 = v879;
        v826 = v152;
        apr_hash_set(v150, v152, 8, v152);
        v825 = *v889.st_ino;
        Data = GTCaptureArchive_readData(*&v889.st_dev, v889.st_ino, appended, *v889.st_ino, 0);
        v856 = *(Data + 1);
        v862 = apr_array_make(v151, v856, 8);
        if (v856)
        {
          v154 = 0;
          v155 = (Data + 16);
          do
          {
            v157 = *v155++;
            v156 = v157;
            v158 = apr_hash_make(v151);
            *apr_array_push(v862) = v158;
            if (v157)
            {
              v159 = 0;
              do
              {
                v160 = apr_palloc(v151, 8uLL);
                AliasStream2 = GetAliasStream2(&v889, *v155);
                if (AliasStream2)
                {
                  v162 = *AliasStream2;
                }

                else
                {
                  v162 = 0;
                }

                *v160 = v162;
                v163 = v155[1];
                v164 = apr_array_make(v151, v163, 16);
                apr_hash_set(v158, v160, 8, v164);
                for (v155 += 2; v163; --v163)
                {
                  v165 = GetAliasStream2(&v889, *v155);
                  if (v165)
                  {
                    v166 = *v165;
                    if (*v165)
                    {
                      v167 = v155[1];
                      v168 = apr_array_push(v164);
                      *v168 = v166;
                      v168[1] = v167;
                    }
                  }

                  v155 += 2;
                }

                qsort(v164->elts, v164->nelts, v164->elt_size, DYMTLMutableBufferAncestor_compare);
                ++v159;
              }

              while (v159 != v156);
            }

            ++v154;
          }

          while (v154 != v856);
        }

        *(v826 + 14) = v862;
        apr_pool_clear(v825);
        v169 = GTCaptureArchive_readData(*&v889.st_dev, v889.st_ino, v881, v825, 0);
        v170 = *(v169 + 2);
        v171 = apr_array_make(v151, 32, 40);
        v863 = apr_array_make(v151, v170, 16);
        if (v170 >= 1)
        {
          v172 = 0;
          v173 = (v169 + 16);
          do
          {
            v174 = v171->nelts;
            v176 = *v173++;
            v175 = v176;
            v177 = apr_array_push(v863);
            *v177 = v174;
            v177[1] = v176;
            v178 = v176;
            if (v176)
            {
              do
              {
                v179 = apr_array_push(v171);
                v180 = v173 + 5;
                v181 = GetAliasStream2(&v889, *v173);
                if (v181)
                {
                  v182 = *v181;
                }

                else
                {
                  v182 = 0;
                }

                *v179 = v182;
                v179[1] = v173[1];
                v179[2] = v173[2];
                v183 = GetAliasStream2(&v889, v173[3]);
                if (v183)
                {
                  v184 = *v183;
                }

                else
                {
                  v184 = 0;
                }

                v179[3] = v184;
                v179[4] = v173[4];
                v173 += 5;
                --v178;
              }

              while (v178);
              v173 = v180;
            }

            qsort(&v171->elts[40 * v174], v175, v171->elt_size, GTTrackerIndirectArgumentBufferInfo_compare);
            ++v172;
          }

          while (v172 != v170);
        }

        *(v826 + 15) = v171;
        *(v826 + 16) = v863;
        apr_pool_clear(v825);
        v185 = GTCaptureArchive_readData(*&v889.st_dev, v889.st_ino, v882, v825, 0);
        memset(&v893.st_ino, 0, 88);
        v186 = *v185;
        v187 = v185 + 4;
        v188 = v185[2];
        v189 = apr_array_make(v151, v188, 32);
        if (v188 >= 1)
        {
          do
          {
            v190 = apr_array_push(v189);
            v190[2] = *v187;
            *v190 = v187[1];
            v191 = v187[2];
            v187 += 3;
            v190[1] = v191;
            *(v190 + 24) = 0;
            --v188;
          }

          while (v188);
        }

        buf[0].i64[0] = v187;
        *&v893.st_dev = v189;
        UniqueIdentifierResourceGroup = LoadUniqueIdentifierResourceGroup(buf, v186, v151);
        *&v893.st_uid = UniqueIdentifierResourceGroup;
        v193 = LoadUniqueIdentifierResourceGroup(buf, v186, v151);
        *&v893.st_rdev = v193;
        if (v186 <= 0x16)
        {
          v194 = apr_array_make(v151, 0, 32);
          v893.st_atimespec.tv_sec = v194;
          v195 = apr_array_make(v151, 0, 32);
          v893.st_atimespec.tv_nsec = v195;
          tv_sec = apr_array_make(v151, 0, 32);
          v893.st_mtimespec.tv_sec = tv_sec;
        }

        else
        {
          v194 = LoadUniqueIdentifierResourceGroup(buf, v186, v151);
          v893.st_atimespec.tv_sec = v194;
          v195 = LoadUniqueIdentifierResourceGroup(buf, v186, v151);
          v893.st_atimespec.tv_nsec = v195;
          v893.st_mtimespec.tv_sec = LoadUniqueIdentifierResourceGroup(buf, v186, v151);
          tv_sec = v893.st_mtimespec.tv_sec;
          if (v186 > 0x2E)
          {
            v893.st_mtimespec.tv_nsec = LoadUniqueIdentifierResourceGroup(buf, v186, v151);
            tv_nsec = v893.st_mtimespec.tv_nsec;
            if (v186 > 0x35)
            {
              v196 = LoadUniqueIdentifierResourceGroup(buf, v186, v151);
              v893.st_ctimespec.tv_sec = v196;
              v818 = LoadUniqueIdentifierResourceGroup(buf, v186, v151);
              v893.st_ctimespec.tv_nsec = v818;
              if (v186 > 0x64)
              {
                v820 = LoadUniqueIdentifierResourceGroup(buf, v186, v151);
                v893.st_birthtimespec.tv_sec = v820;
                if (v186 > 0x67)
                {
                  v893.st_ino = LoadUniqueIdentifierResourceGroup(buf, v186, v151);
                  v821 = v893.st_ino;
                  if (v186 >= 0x6E)
                  {
                    v197 = buf[0].i64[0];
                    v198 = *buf[0].i64[0];
                    v199 = apr_array_make(v151, *buf[0].i64[0], 24);
                    if (v198 >= 1)
                    {
                      v200 = v198;
                      v201 = v199;
                      v202 = (v197 + 8);
                      v203 = v200;
                      do
                      {
                        v204 = apr_array_push(v201);
                        *v204 = *v202;
                        v204[1] = v202[1];
                        v205 = v202[2];
                        v202 += 3;
                        v204[2] = v205;
                        --v203;
                      }

                      while (v203);
                      v199 = v201;
                    }

                    goto LABEL_184;
                  }

LABEL_183:
                  v199 = apr_array_make(v151, 0, 24);
LABEL_184:
                  v819 = v199;
                  v893.st_birthtimespec.tv_nsec = v199;
                  if (v189->nelts >= 1)
                  {
                    v211 = 0;
                    v212 = 16;
                    do
                    {
                      v213 = v189->elts;
                      v214 = GetAliasStream2(&v889, *&v213[v212]);
                      if (v214)
                      {
                        v215 = *v214;
                      }

                      else
                      {
                        v215 = 0;
                      }

                      *&v213[v212] = v215;
                      ++v211;
                      v212 += 32;
                    }

                    while (v211 < v189->nelts);
                  }

                  if (UniqueIdentifierResourceGroup->nelts >= 1)
                  {
                    v216 = 0;
                    v217 = 8;
                    do
                    {
                      v218 = UniqueIdentifierResourceGroup->elts;
                      v219 = GetAliasStream2(&v889, *&v218[v217]);
                      if (v219)
                      {
                        v220 = *v219;
                      }

                      else
                      {
                        v220 = 0;
                      }

                      *&v218[v217] = v220;
                      ++v216;
                      v217 += 32;
                    }

                    while (v216 < UniqueIdentifierResourceGroup->nelts);
                  }

                  v3 = &unk_27F09B000;
                  if (v193->nelts >= 1)
                  {
                    v221 = 0;
                    v222 = 8;
                    do
                    {
                      v223 = v193->elts;
                      v224 = GetAliasStream2(&v889, *&v223[v222]);
                      if (v224)
                      {
                        v225 = *v224;
                      }

                      else
                      {
                        v225 = 0;
                      }

                      *&v223[v222] = v225;
                      ++v221;
                      v222 += 32;
                    }

                    while (v221 < v193->nelts);
                  }

                  if (v194->nelts >= 1)
                  {
                    v226 = 0;
                    v227 = 8;
                    do
                    {
                      v228 = v194->elts;
                      v229 = GetAliasStream2(&v889, *&v228[v227]);
                      if (v229)
                      {
                        v230 = *v229;
                      }

                      else
                      {
                        v230 = 0;
                      }

                      *&v228[v227] = v230;
                      ++v226;
                      v227 += 32;
                    }

                    while (v226 < v194->nelts);
                  }

                  if (v195->nelts >= 1)
                  {
                    v231 = 0;
                    v232 = 8;
                    do
                    {
                      v233 = v195->elts;
                      v234 = GetAliasStream2(&v889, *&v233[v232]);
                      if (v234)
                      {
                        v235 = *v234;
                      }

                      else
                      {
                        v235 = 0;
                      }

                      *&v233[v232] = v235;
                      ++v231;
                      v232 += 32;
                    }

                    while (v231 < v195->nelts);
                  }

                  v236 = tv_sec;
                  v140 = v822;
                  if (*(tv_sec + 12) >= 1)
                  {
                    v237 = 0;
                    v238 = 8;
                    do
                    {
                      v239 = *(v236 + 24);
                      v240 = GetAliasStream2(&v889, *(v239 + v238));
                      if (v240)
                      {
                        v241 = *v240;
                      }

                      else
                      {
                        v241 = 0;
                      }

                      *(v239 + v238) = v241;
                      ++v237;
                      v236 = tv_sec;
                      v238 += 32;
                    }

                    while (v237 < *(tv_sec + 12));
                  }

                  v242 = tv_nsec;
                  if (tv_nsec->nelts >= 1)
                  {
                    v243 = 0;
                    v244 = 8;
                    do
                    {
                      v245 = v242->elts;
                      v246 = GetAliasStream2(&v889, *&v245[v244]);
                      if (v246)
                      {
                        v247 = *v246;
                      }

                      else
                      {
                        v247 = 0;
                      }

                      *&v245[v244] = v247;
                      ++v243;
                      v242 = tv_nsec;
                      v244 += 32;
                    }

                    while (v243 < tv_nsec->nelts);
                  }

                  if (v196->nelts >= 1)
                  {
                    v248 = v196;
                    v249 = 0;
                    v250 = 8;
                    do
                    {
                      v251 = v248->elts;
                      v252 = GetAliasStream2(&v889, *&v251[v250]);
                      if (v252)
                      {
                        v253 = *v252;
                      }

                      else
                      {
                        v253 = 0;
                      }

                      *&v251[v250] = v253;
                      ++v249;
                      v248 = v196;
                      v250 += 32;
                    }

                    while (v249 < v196->nelts);
                  }

                  if (v818->nelts >= 1)
                  {
                    v254 = 0;
                    v255 = 8;
                    do
                    {
                      v256 = v818->elts;
                      v257 = GetAliasStream2(&v889, *&v256[v255]);
                      if (v257)
                      {
                        v258 = *v257;
                      }

                      else
                      {
                        v258 = 0;
                      }

                      *&v256[v255] = v258;
                      ++v254;
                      v255 += 32;
                    }

                    while (v254 < v818->nelts);
                  }

                  if (v820->nelts >= 1)
                  {
                    v259 = 0;
                    v260 = 8;
                    do
                    {
                      v261 = v820->elts;
                      v262 = GetAliasStream2(&v889, *&v261[v260]);
                      if (v262)
                      {
                        v263 = *v262;
                      }

                      else
                      {
                        v263 = 0;
                      }

                      *&v261[v260] = v263;
                      ++v259;
                      v260 += 32;
                    }

                    while (v259 < v820->nelts);
                  }

                  if (*(v821 + 12) >= 1)
                  {
                    v264 = 0;
                    v265 = 8;
                    do
                    {
                      v266 = *(v821 + 24);
                      v267 = GetAliasStream2(&v889, *(v266 + v265));
                      if (v267)
                      {
                        v268 = *v267;
                      }

                      else
                      {
                        v268 = 0;
                      }

                      *(v266 + v265) = v268;
                      ++v264;
                      v265 += 32;
                    }

                    while (v264 < *(v821 + 12));
                  }

                  if (v819->nelts >= 1)
                  {
                    v269 = 0;
                    v270 = 0;
                    do
                    {
                      v271 = v819->elts;
                      v272 = GetAliasStream2(&v889, *&v271[v269]);
                      if (v272)
                      {
                        v273 = *v272;
                      }

                      else
                      {
                        v273 = 0;
                      }

                      *&v271[v269] = v273;
                      ++v270;
                      v269 += 24;
                    }

                    while (v270 < v819->nelts);
                  }

                  GTMTLIndirectResources_optimizeByKey(buf[0].i64, &v893.st_dev, 0, v151);
                  *(v826 + 56) = buf[3];
                  *(v826 + 72) = buf[4];
                  *(v826 + 88) = buf[5];
                  *(v826 + 13) = buf[6].i64[0];
                  *(v826 + 8) = buf[0];
                  *(v826 + 24) = buf[1];
                  *(v826 + 40) = buf[2];
                  apr_pool_clear(v825);
                  v138 = v824;
                  if (v883)
                  {
                    v274 = GTCaptureArchive_readData(*&v889.st_dev, v889.st_ino, v883, v151, 0);
                    v276 = dispatch_data_create(v274, v275, 0, &__block_literal_global_2642);
                    v277 = *(v826 + 17);
                    *(v826 + 17) = v276;

                    if (v151)
                    {
                      v278 = *(v151 + 5);
                      if (v278)
                      {
                        *(v151 + 5) = *v278;
                      }

                      else
                      {
                        v278 = apr_palloc(v151, 0x20uLL);
                      }

                      v278[1] = v826;
                      v278[2] = DYMTLIndirectArgumentBufferManager_cleanup;
                      v278[3] = apr_pool_cleanup_null;
                      *v278 = *(v151 + 4);
                      *(v151 + 4) = v278;
                    }
                  }

                  atomic_fetch_add((v829 + 80), 1uLL);
                  v80 = v837;
LABEL_300:
                  v146 = arra;
                  goto LABEL_301;
                }

LABEL_182:
                v821 = apr_array_make(v151, 0, 32);
                v893.st_ino = v821;
                goto LABEL_183;
              }

LABEL_181:
              v820 = apr_array_make(v151, 0, 32);
              v893.st_birthtimespec.tv_sec = v820;
              goto LABEL_182;
            }

LABEL_180:
            v196 = apr_array_make(v151, 0, 32);
            v893.st_ctimespec.tv_sec = v196;
            v818 = apr_array_make(v151, 0, 32);
            v893.st_ctimespec.tv_nsec = v818;
            goto LABEL_181;
          }
        }

        tv_nsec = apr_array_make(v151, 0, 32);
        v893.st_mtimespec.tv_nsec = tv_nsec;
        goto LABEL_180;
      }

      GTTraceFbufToFunc_createStream(&v889, v140, arra);
      GTTraceFbufToFunc(&v889, v140);
      v206 = *(v140 + 1);
      if ((GTFenum_isBeginCommandBuffer(v206) & 1) != 0 || GTFenum_getConstructorType(v206) == 51)
      {
        v207 = (*v140 - 36);
        *&v893.st_dev = 0;
        FBDecoder_DecodeArguments(&v893, (v140 + 36), v207, buf, 0x10uLL);
        *&v893.st_mode = 0;
        FBDecoder_DecodeArguments(&v893, (v140 + 36), v207, buf, 0x10uLL);
        *&v893.st_dev = *buf[0].i64[0];
        v208 = *(v844 + 19);
        v209 = *(*(*find_entry(*(v844 + 3), &v893, 8uLL, 0) + 32) + 8);
        if (v209)
        {
          v210 = *v209;
        }

        else
        {
          v210 = 0;
        }

        entry = find_entry(v208, &v893, 8uLL, 0);
        if (*entry)
        {
          v280 = *(*entry + 32);
          if (v280)
          {
            buf[0].i64[0] = *v280;
            apr_hash_set(v208, buf, 8, 0);
            *v280 = v210;
            apr_hash_set(v208, v280, 8, v280);
          }
        }

        v206 = *(v140 + 1);
      }

      v281 = (hia - v823);
      if (v206 == -12281 || (GTFenum_isPushDebugGroup(v206) & 1) != 0 || (ConstructorType = GTFenum_getConstructorType(v206), GTFenum_isMTLCommandEncoder(ConstructorType)) || ConstructorType == 51 || (ConstructorType - 95) <= 0xA && ((0x409u >> (ConstructorType - 95)) & 1) != 0 || GTFenum_isBeginCommandBuffer(v206))
      {
        v282 = v886->nelts;
        if (v282)
        {
          v283 = &v886->elts[8 * v282 - 8];
        }

        else
        {
          v283 = 0;
        }

        v284 = apr_array_push(v886);
        v285 = v885;
        *v284 = v885->nelts;
        v284[1] = v206;
        v286 = apr_array_push(v285);
        v286[5] = v284[1];
        if (v283)
        {
          v287 = *v284 - *v283;
        }

        else
        {
          v287 = 0;
        }

        v286[2] = v287;
        *v286 = v281;
        goto LABEL_274;
      }

      if (v206 == -12280 || (GTFenum_isPopDebugGroup(v206) & 1) != 0 || (GTFenum_isEndEncoding(v206) & 1) != 0 || v206 == -15104 || v206 == -15047 || v206 == -14892 || (GTFenum_isEndCommandBuffer(v206) & 1) != 0 || v206 == -15343)
      {
        break;
      }

LABEL_274:
      arrb = (&arra->pool + 1);
      v147 = *(v140 + 1);
      if ((GTFenum_isGPUCommandCall(v147) & 1) == 0 && (v147 & 0xFFFFFFFC) != 0xFFFFC1A4)
      {
        v146 = arrb;
        v138 = v824;
        goto LABEL_302;
      }

      *apr_array_push(*(v844 + 17)) = v281;
      v146 = arrb;
      v138 = v824;
LABEL_301:
      v147 = *(v140 + 1);
LABEL_302:
      arra = v146;
      if (v147 == -15597)
      {
        buf[0].i64[0] = *(v140 + 44);
        *&v893.st_dev = 16;
        AppendString_13794(&buf[0].i64[1], (v140 + 36), &v893.st_dev);
        v289 = buf[0].i64[0];
      }

      else
      {
        if (v147 != -15598)
        {
          goto LABEL_307;
        }

        v289 = *(v140 + 44);
      }

      DeviceObjectStreamRef = GetDeviceObjectStreamRef(&v889, v289);
      v291 = apr_palloc(*v832, 8uLL);
      *v291 = DeviceObjectStreamRef;
      apr_hash_set(v832, v291, 8, &RecordVisibleFunctionTableMutation_sValue);
      v147 = *(v140 + 1);
LABEL_307:
      if (v147 > -15531)
      {
        if (v147 > -15259)
        {
          if (v147 == -15258)
          {
LABEL_327:
            v296 = GetDeviceObjectStreamRef(&v889, *(v140 + 44));
            v297 = apr_palloc(*v834, 8uLL);
            *v297 = v296;
            apr_hash_set(v834, v297, 8, &RecordIntersectionFunctionTableMutation_sValue);
            v137 = a2;
            goto LABEL_328;
          }

          v292 = -15257;
        }

        else
        {
          if (v147 == -15530)
          {
            goto LABEL_327;
          }

          v292 = -15529;
        }

        v114 = v147 == v292;
        v137 = a2;
        if (!v114)
        {
          goto LABEL_328;
        }

        v293 = *(v140 + 44);
      }

      else
      {
        if (v147 > -15546)
        {
          if (v147 == -15545)
          {
            goto LABEL_327;
          }

          v114 = v147 == -15544;
          v137 = a2;
          if (!v114)
          {
            goto LABEL_328;
          }

          memset(buf, 0, 40);
          DYTraceDecode_MTLIntersectionFunctionTable_setBuffers_offsets_withRange(buf, v140, (*v140 - 36), 0);
        }

        else
        {
          if (v147 == -15559)
          {
            goto LABEL_327;
          }

          v114 = v147 == -15558;
          v137 = a2;
          if (!v114)
          {
            goto LABEL_328;
          }

          memset(buf, 0, 32);
          DYTraceDecode_MTLIntersectionFunctionTable_setFunctions_withRange(buf, v140, (*v140 - 36), 0);
        }

        v293 = buf[0].i64[0];
      }

      v294 = GetDeviceObjectStreamRef(&v889, v293);
      v295 = apr_palloc(*v834, 8uLL);
      *v295 = v294;
      apr_hash_set(v834, v295, 8, &RecordIntersectionFunctionTableMutation_sValue);
LABEL_328:
      if (GTFenum_isEndCommandBuffer(*(v140 + 1)))
      {
        GenerateRestores(v832, v827, hia, v830, v137);
        GenerateRestores(v834, v828, hia, v830, v137);
        apr_hash_clear(v832);
        apr_hash_clear(v834);
        v830 = hia;
      }

      v298 = *v140;
      if ((v140[33] & 0x10) != 0)
      {
        v299 = *v140;
        do
        {
          v140 += v298;
          v298 = *v140;
          v299 += v298;
        }

        while ((v140[33] & 0x20) == 0);
      }

      else
      {
        v299 = *v140;
      }

      v139 = v841 + v299;
      hia = (hia + 1);
      if (v139 >= v831)
      {
        goto LABEL_354;
      }
    }

    if (GTFenum_isEndEncoding(v206))
    {
      goto LABEL_343;
    }

    if (v206 <= -15344)
    {
      if (v206 == -16361 || v206 == -16202)
      {
LABEL_343:
        while (1)
        {
          v301 = v886;
          if (!v886)
          {
            goto LABEL_352;
          }

          v302 = v886->nelts;
          if (!v302 || !GTFenum_isPushDebugGroup(*&v886->elts[8 * v302 - 4]))
          {
            goto LABEL_348;
          }

          GroupBuilder_popGroup(v884, v281);
        }
      }

      v300 = -15908;
    }

    else
    {
      if (v206 <= -15105)
      {
        if ((v206 + 15343) <= 0x1B && ((1 << (v206 - 17)) & 0xA000001) != 0)
        {
          goto LABEL_343;
        }

LABEL_347:
        v301 = v886;
        if (v886)
        {
LABEL_348:
          v303 = v301->nelts;
          isPopDebugGroup = GTFenum_isPopDebugGroup(v206);
          v305 = isPopDebugGroup;
          if (v303)
          {
            if (!isPopDebugGroup || GTFenum_isPushDebugGroup(*&v301->elts[8 * v303 - 4]))
            {
              GroupBuilder_popGroup(v884, v281);
            }

            goto LABEL_274;
          }

          goto LABEL_353;
        }

LABEL_352:
        v305 = GTFenum_isPopDebugGroup(v206);
LABEL_353:
        gt_error_assert_add_error(v884, v305, "GTFenum_isPopDebugGroup(fenum)");
        goto LABEL_274;
      }

      if (v206 == -15104 || v206 == -14892)
      {
        goto LABEL_343;
      }

      v300 = -15047;
    }

    if (v206 == v300)
    {
      goto LABEL_343;
    }

    goto LABEL_347;
  }

LABEL_354:
  v306 = v3[262];
  if (os_signpost_enabled(v306))
  {
    buf[0].i16[0] = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v306, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Replayer-2-restore", &unk_24DA93952, buf, 2u);
  }

  apr_pool_clear(v887);
  v307 = atomic_load((*&v889.st_uid + 80));
  *(v844 + 11) = v823;
  *(v844 + 12) = v307 - v823;
  buf[0] = v884[0];
  buf[1] = v884[1];
  buf[2] = v884[2];
  GTError_addError(v888, buf);
  while (v886 && v886->nelts)
  {
    GroupBuilder_popGroup(v884, v307);
  }

  *(v844 + 15) = v885;
  apr_pool_destroy(v887);
  v308 = v3[262];
  if (os_signpost_enabled(v308))
  {
    buf[0].i16[0] = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v308, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "BuildMemoryMap", buf, 2u);
  }

  v309 = *&v889.st_uid;
  pthread_mutex_lock((*&v889.st_uid + 8));
  v310 = v137;
  v311 = apr_hash_copy(v137, *(v309 + 96));
  pthread_mutex_unlock((v309 + 8));
  *(v844 + 1) = v311;
  v312 = apr_hash_make(v310);
  *(v311 + 3) = 0;
  *(v311 + 4) = 0;
  *(v311 + 2) = v311;
  *(v311 + 10) = 0;
  v313 = apr_hash_next((v311 + 16));
  if (v313)
  {
    v314 = v313;
    do
    {
      for (j = *(*(*(*(v314 + 1) + 32) + 24) + 8); j; j = *(j + 40))
      {
        v316 = atomic_load((j + 4));
        v317 = v316 - 64;
        if ((v316 - 64) >= 1)
        {
          v318 = (j + 64);
          do
          {
            apr_hash_set(v312, v318, 9, v318);
            v319 = (v318[3] + 23) & 0xFFFFFFF8;
            v318 = (v318 + v319);
            v320 = __OFSUB__(v317, v319);
            v317 -= v319;
          }

          while (!((v317 < 0) ^ v320 | (v317 == 0)));
        }
      }

      v314 = apr_hash_next(v314);
    }

    while (v314);
  }

  *(v844 + 2) = v312;
  v321 = v3[262];
  if (os_signpost_enabled(v321))
  {
    v322 = *(*(v844 + 2) + 48);
    buf[0].i32[0] = 67109120;
    buf[0].i32[1] = v322;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v321, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "%d", buf, 8u);
  }

  hib = *(v844 + 11);
  v323 = v3[262];
  v324 = v844;
  if (os_signpost_enabled(v323))
  {
    buf[0].i16[0] = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v323, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "OrderDispatchCommandBuffers", buf, 2u);
  }

  v325 = *(v844 + 1);
  v327 = *(v844 + 11);
  v326 = *(v844 + 12);
  v328 = apr_array_make(a2, v326, 64);
  v328->nelts = v326;
  *(v325 + 40) = 0;
  *(v325 + 16) = v325;
  *(v325 + 24) = 0;
  *(v325 + 32) = 0;
  v329 = apr_hash_next((v325 + 16));
  if (v329)
  {
    v330 = v326 + v327;
    do
    {
      for (k = *(*(*(v329 + 1) + 32) + 32); k; k = *(k + 40))
      {
        v332 = atomic_load((k + 4));
        v333 = (v332 >> 6) - 1;
        if (v332 >> 6 == 1)
        {
          v334 = 0;
        }

        else
        {
          v334 = v333;
          v335 = (k + (v332 & 0xFFFFFFC0) - 49);
          do
          {
            v336 = *v335;
            v335 -= 64;
            if ((v336 & 8) != 0)
            {
              break;
            }

            --v334;
          }

          while (v334);
        }

        if (v332 < 0x80)
        {
          v337 = k + 64;
        }

        else
        {
          v337 = k + 64;
          do
          {
            v338 = v333 >> 1;
            v339 = (v337 + (v333 >> 1 << 6));
            v341 = *v339;
            v340 = v339 + 8;
            v333 += ~(v333 >> 1);
            if (v341 < v327)
            {
              v337 = v340;
            }

            else
            {
              v333 = v338;
            }
          }

          while (v333 > 0);
        }

        v342 = k + 64 + (v334 << 6);
        while (v337 < v342)
        {
          if (*v337 < v327 || *v337 >= v330)
          {
            goto LABEL_400;
          }

          v344 = &v328->elts[64 * (*v337 - v327)];
          v345 = *v337;
          v346 = *(v337 + 16);
          v347 = *(v337 + 48);
          *(v344 + 2) = *(v337 + 32);
          *(v344 + 3) = v347;
          *v344 = v345;
          *(v344 + 1) = v346;
          v337 += 64;
        }
      }

LABEL_400:
      v329 = apr_hash_next(v329);
    }

    while (v329);
  }

  *(v844 + 16) = v328;
  v348 = *(v844 + 1);
  v349 = *(v844 + 2);
  v842 = apr_array_make(a2, 8, 8);
  if (v328->nelts)
  {
    v351 = *v328->elts;
    buf[0].i64[0] = 0;
    apr_pool_create_ex(buf, a2, 0, v350);
    v352 = buf[0].i64[0];
    arrc = apr_hash_make(buf[0].i64[0]);
    if (v328->nelts >= 1)
    {
      v353 = 0;
      do
      {
        v354 = v328->elts;
        v355 = &v354[64 * v353];
        v356 = *(v355 + 8);
        if (v356 == -16362)
        {
          *&v893.st_dev = GTTraceFunc_targetContext(&v354[64 * v353], v349);
          v357 = find_entry(v348, &v893, 8uLL, 0);
          if (*v357 && (v358 = *(*v357 + 32)) != 0 && (v359 = *(v358 + 32)) != 0 && (*(v359 + 79) & 8) != 0)
          {
            v360 = (v359 + 64);
          }

          else
          {
            v360 = 0;
          }

          if (v351 <= *v360)
          {
            v361 = GTTraceFunc_targetContext(v360, v349);
            QueueForRef = GetQueueForRef(&arrc->pool, v361);
            v363 = *&v893.st_dev;
            *apr_array_push(QueueForRef) = v363;
          }
        }

        else if ((GTFenum_isEndCommandBuffer(*(v355 + 8)) & 1) != 0 || v356 == -15343)
        {
          *&v893.st_dev = GTTraceFunc_targetContext(v355, v349);
          v364 = find_entry(v348, &v893, 8uLL, 0);
          if (*v364 && (v365 = *(*v364 + 32)) != 0 && (v366 = *(v365 + 32)) != 0 && (*(v366 + 79) & 8) != 0)
          {
            v367 = (v366 + 64);
          }

          else
          {
            v367 = 0;
          }

          if (v351 <= *v367)
          {
            v368 = GTTraceFunc_targetContext(v367, v349);
            v369 = GetQueueForRef(&arrc->pool, v368);
            v370 = v369;
            v371 = *&v893.st_dev;
            v372 = v369->nelts;
            if (v372 < 1)
            {
              goto LABEL_427;
            }

            v373 = 0;
            v374 = v369->elts;
            while (*&v374[8 * v373] != *&v893.st_dev)
            {
              if (v372 == ++v373)
              {
                goto LABEL_427;
              }
            }

            if (v372 == v373)
            {
LABEL_427:
              *apr_array_push(v370) = v371;
              v374 = v370->elts;
              LODWORD(v375) = v370->nelts;
            }

            else
            {
              LODWORD(v375) = v372;
              LODWORD(v372) = v373;
            }

            *&v374[8 * v372] |= 0x8000000000000000;
            if (v375 >= 1 && (v376 = *v374, (*v374 & 0x8000000000000000) != 0))
            {
              v379 = 1;
              do
              {
                v377 = v379;
                *apr_array_push(v842) = v376 & 0x7FFFFFFFFFFFFFFFLL;
                v375 = v370->nelts;
                v374 = v370->elts;
                if (v377 >= v375)
                {
                  break;
                }

                v376 = *&v374[8 * v377];
                v379 = v377 + 1;
              }

              while (v376 < 0);
            }

            else
            {
              LODWORD(v377) = 0;
            }

            v378 = v375 - v377;
            v370->nelts = v378;
            memmove(v374, &v374[8 * v377], v370->elt_size * v378);
          }
        }

        ++v353;
      }

      while (v353 < v328->nelts);
      v352 = buf[0].i64[0];
      v80 = v837;
    }

    apr_pool_destroy(v352);
    v3 = &unk_27F09B000;
  }

  v380 = v3[262];
  if (os_signpost_enabled(v380))
  {
    v381 = *(*(v844 + 16) + 12);
    buf[0].i32[0] = 67109120;
    buf[0].i32[1] = v381;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v380, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "%d", buf, 8u);
  }

  v382 = v3[262];
  if (os_signpost_enabled(v382))
  {
    buf[0].i16[0] = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v382, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "BuildDeviceMirror", buf, 2u);
  }

  *(v844 + 5) = GTMTLSMContext_buildDeviceMirrorWithIgnoreFlags(*(v844 + 1), *(v844 + 2), *(v844 + 16), *(v844 + 11), *(v844 + 12), a2);
  v383 = v3[262];
  if (os_signpost_enabled(v383))
  {
    buf[0].i16[0] = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v383, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", &unk_24DA93952, buf, 2u);
  }

  if (v80->nelts >= 1)
  {
    v384 = 0;
    v385 = *(v844 + 5);
    v386 = 440;
    do
    {
      v387 = v80->elts;
      if (*&v387[v386 - 440] == 101)
      {
        buf[0].i64[0] = *&v387[v386 - 432];
        v388 = find_entry(*v385, buf, 8uLL, 0);
        if (*v388)
        {
          v389 = *(*v388 + 32);
          if (v389)
          {
            v390 = *(v389 + 112);
            if (v390)
            {
              v387[v386] = *(v390 + 283);
            }
          }
        }
      }

      ++v384;
      v386 += 448;
    }

    while (v384 < v80->nelts);
  }

  *(v844 + 13) = 0;
  v391 = *(v844 + 15);
  v392 = *(v844 + 16);
  *(v844 + 14) = *(v392 + 12);
  v393 = *(v391 + 12);
  if (v393 >= 1)
  {
    arrd = 0;
    v394 = 0;
    v395 = 0;
    v396 = 0;
    v397 = 0;
    v398 = *(v391 + 24);
    while (1)
    {
      v399 = (v398 + 24 * v397);
      v400 = v399[5];
      if (GTFenum_isBeginCommandBuffer(v400))
      {
        break;
      }

      if (GTFenum_getConstructorType(v400) == 51)
      {
        v401 = *v399;
        if ((*(*(v392 + 24) + (v401 << 6) + 15) & 0x40) != 0 && v400 != -12543)
        {
          goto LABEL_466;
        }

        if (v395 & 1 | (v396 == 0))
        {
LABEL_462:
          *(v844 + 14) = v399[1] - v394 + 1;
          v395 = 1;
LABEL_466:
          v397 += v399[3];
          ++v396;
          goto LABEL_467;
        }

LABEL_461:
        *(v844 + 13) = v401;
        arrd = v401;
        v394 = v401;
        goto LABEL_462;
      }

LABEL_467:
      if (++v397 >= v393)
      {
        goto LABEL_471;
      }
    }

    v401 = *v399;
    if ((*(*(v392 + 24) + (v401 << 6) + 15) & 0x40) != 0 && v400 != -12544)
    {
      goto LABEL_466;
    }

    v394 = arrd;
    if (v395 & 1 | (v396 == 0))
    {
      goto LABEL_462;
    }

    goto LABEL_461;
  }

LABEL_471:
  v402 = g_signpostLog;
  if (os_signpost_enabled(v402))
  {
    buf[0].i16[0] = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v402, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "Delta", buf, 2u);
  }

  v403 = apr_array_make(a2, 128, 8);
  *(v844 + 28) = v403;
  GTMTLSMContext_getObjects(*(*(v844 + 5) + 216), hib, v403);
  v404 = v403->nelts;
  if (v404 >= 1)
  {
    v405 = v404 - 1;
    do
    {
      v406 = v403->elts;
      if (*(*&v406[8 * v405] + 60) != 1)
      {
        LODWORD(v404) = v404 - 1;
        v403->nelts = v404;
        *&v406[8 * v405] = *&v406[8 * v404];
      }

      v407 = v405-- + 1;
    }

    while (v407 > 1);
  }

  v408 = 0;
  v409 = *(v844 + 28);
  v410 = *(v844 + 11);
  v411 = *(v844 + 5) + 8;
  v412 = v410 + *(v844 + 12);
  do
  {
    v413 = *(v411 + 8 * v408);
    v414 = *(v413 + 12);
    if (v414 >= 1)
    {
      for (m = 0; m < v414; ++m)
      {
        v416 = *(*(v413 + 24) + 8 * m);
        v417 = *(v416 + 16);
        if (v410 > v417 || v412 <= v417)
        {
          v419 = *(v416 + 24);
          if (v410 <= v419 && v412 > v419)
          {
            *apr_array_push(v409) = v416;
            v414 = *(v413 + 12);
          }
        }
      }
    }

    ++v408;
  }

  while (v408 != 50);
  v421 = *(v844 + 9);
  v422 = *(v844 + 10);
  v423 = v409->nelts;
  v409->nelts = 0;
  if (v423 < 1)
  {
    v433 = 0;
    v428 = hib;
  }

  else
  {
    v424 = 0;
    v425 = 0;
    v426 = v422 + v421;
    v427 = 8 * v423;
    v428 = hib;
    do
    {
      v429 = v409->elts;
      v430 = *&v429[v424];
      v431 = *(v430 + 16);
      if (v421 > v431 || v426 <= v431)
      {
        v409->nelts = v425 + 1;
        *&v429[v424] = *&v429[8 * v425];
        *&v409->elts[8 * v425++] = v430;
      }

      v424 += 8;
    }

    while (v427 != v424);
    v433 = v425;
  }

  qsort(v409->elts, v433, 8uLL, GTMTLSMObject_compare);
  GTMTLSMContext_getObjects(*(*(v844 + 5) + 144), v428, v409);
  GTMTLSMContext_getObjects(*(*(v844 + 5) + 160), v428, v409);
  GTMTLSMContext_getObjects(*(*(v844 + 5) + 152), v428, v409);
  v434 = apr_array_make(a2, 128, 8);
  v435 = 0;
  *(v844 + 27) = v434;
  v436 = *(v844 + 11);
  v437 = *(v844 + 5) + 8;
  v438 = v436 + *(v844 + 12);
  do
  {
    v439 = *(v437 + 8 * v435);
    v440 = *(v439 + 12);
    if (v440 >= 1)
    {
      for (n = 0; n < v440; ++n)
      {
        v442 = *(*(v439 + 24) + 8 * n);
        v443 = *(v442 + 16);
        if (v436 <= v443 && v438 > v443)
        {
          *apr_array_push(v434) = v442;
          v440 = *(v439 + 12);
        }
      }
    }

    ++v435;
  }

  while (v435 != 50);
  v445 = g_signpostLog;
  if (os_signpost_enabled(v445))
  {
    buf[0].i16[0] = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v445, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", &unk_24DA93952, buf, 2u);
  }

  v446 = newpool;
  v447 = apr_array_make(newpool, 128, 8);
  GTMTLSMContext_getObjects(*(*(v844 + 5) + 64), hib, v447);
  if (v447->nelts >= 1)
  {
    v448 = 0;
    v449 = *(v844 + 22);
    do
    {
      buf[0].i64[0] = *(*&v447->elts[8 * v448] + 8);
      v450 = *find_entry(v449, buf, 8uLL, 0);
      if (!v450 || (v451 = *(v450 + 32)) == 0)
      {
        v451 = apr_array_make(a2, 8, 16);
        v452 = apr_palloc(a2, 8uLL);
        *v452 = buf[0].i64[0];
        apr_hash_set(v449, v452, 8, v451);
      }

      v453 = apr_array_push(v451);
      v454 = *(v844 + 11);
      *v453 = 0;
      v453[1] = v454;
      ++v448;
    }

    while (v448 < v447->nelts);
  }

  v455 = apr_array_make(v446, 128, 8);
  GTMTLSMContext_getObjects(*(*(v844 + 5) + 72), hib, v455);
  if (v455->nelts >= 1)
  {
    v456 = 0;
    v457 = *(v844 + 23);
    do
    {
      buf[0].i64[0] = *(*&v455->elts[8 * v456] + 8);
      v458 = *find_entry(v457, buf, 8uLL, 0);
      if (!v458 || (v459 = *(v458 + 32)) == 0)
      {
        v459 = apr_array_make(a2, 8, 16);
        v460 = apr_palloc(a2, 8uLL);
        *v460 = buf[0].i64[0];
        apr_hash_set(v457, v460, 8, v459);
      }

      v461 = apr_array_push(v459);
      v462 = *(v844 + 11);
      *v461 = 0;
      v461[1] = v462;
      ++v456;
    }

    while (v456 < v455->nelts);
  }

  v463 = apr_hash_make(a2);
  v464 = *(*(v844 + 5) + 216);
  v465 = v464->nelts;
  if (v465 >= 1)
  {
    v466 = 0;
    v467 = *(*(v844 + 15) + 24) + 24 * *(*(v844 + 15) + 12);
    arre = *(*(v844 + 5) + 216);
    do
    {
      v468 = *&v464->elts[8 * v466];
      if (*(v468 + 60) == 1)
      {
        v470 = (v468 + 32);
        v469 = *(v468 + 32);
        if (v469)
        {
          v471 = 0;
          do
          {
            v472 = *(v324 + 15);
            v473 = *(v472 + 24);
            v474 = *(v472 + 12);
            if (v474 >= 1)
            {
              do
              {
                v475 = v474 >> 1;
                v476 = &v473[6 * (v474 >> 1)];
                v478 = *v476;
                v477 = v476 + 6;
                v474 += ~(v474 >> 1);
                if (*(v469 + 24) - *(v324 + 22) >= v478)
                {
                  v473 = v477;
                }

                else
                {
                  v474 = v475;
                }
              }

              while (v474 > 0);
            }

            if (v473 != v467 && v473 != v471)
            {
              v480 = *(*(v324 + 16) + 24) + (*v473 << 6);
              buf[0].i64[0] = *(GTTraceFunc_argumentBytesWithMap(v480, *(v480 + 13), *(v324 + 2)) + 1);
              v481 = *find_entry(v463, buf, 8uLL, 0);
              if (!v481 || (v482 = *(v481 + 32)) == 0)
              {
                v482 = apr_array_make(a2, 1, 8);
                v324 = v844;
                v483 = apr_palloc(a2, 8uLL);
                *v483 = buf[0].i64[0];
                apr_hash_set(v463, v483, 8, v482);
              }

              *apr_array_push(v482) = v468;
              v469 = *v470;
              v471 = v473;
            }

            v468 = v469;
            v470 = (v469 + 32);
            v469 = *(v469 + 32);
          }

          while (v469);
          v464 = arre;
          v465 = arre->nelts;
        }
      }

      ++v466;
    }

    while (v466 < v465);
  }

  *(v324 + 24) = v463;
  v865 = *(v324 + 1);
  arrf = *(v324 + 2);
  v484 = *(v324 + 16);
  v485 = a2;
  v486 = apr_hash_make(a2);
  if (*(v484 + 12) >= 1)
  {
    v487 = 0;
    v858 = v484;
    do
    {
      v488 = *(v484 + 24) + (v487 << 6);
      v489 = *(v488 + 8);
      if (v489 > -15344)
      {
        if ((v489 + 15343) <= 0x1B && ((1 << (v489 - 17)) & 0xA000001) != 0)
        {
LABEL_577:
          buf[0] = 0uLL;
          v500 = GTTraceFunc_targetContext(v488, arrf);
          *&v893.st_dev = v500;
          v501 = *(*(*find_entry(v865, &v893, 8uLL, 0) + 32) + 32);
          if (v501)
          {
            v502 = 0;
            while (1)
            {
              v503 = atomic_load((v501 + 4));
              v504 = v502 + (v503 >> 6) - 1;
              if (v504 > 0)
              {
                break;
              }

              v501 = *(v501 + 40);
              v502 = v504;
              if (!v501)
              {
                v502 = v504;
LABEL_584:
                v505 = v502 | (v504 << 32);
                goto LABEL_585;
              }
            }

            v504 = 0;
            goto LABEL_584;
          }

          v505 = 0;
          while (1)
          {
LABEL_585:
            if (!v501 || (v506 = v501 + 64 + ((HIDWORD(v505) - v505) << 6), (*(v506 + 15) & 8) == 0))
            {
              v512 = -1;
              goto LABEL_595;
            }

            v507 = GTFenum_getConstructorType(*(v506 + 8));
            if (v507 == 51 || v507 == 25)
            {
              break;
            }

            v509 = atomic_load((v501 + 4));
            v510 = v505 + (v509 >> 6);
            v511 = (HIDWORD(v505) + 1);
            v505 = (v511 << 32) | v505;
            if (v511 == v510 - 1)
            {
              v505 = (v511 << 32) | v511;
              v501 = *(v501 + 40);
            }
          }

          v512 = *GTTraceFunc_argumentBytesWithMap((v501 + 64 + ((HIDWORD(v505) - v505) << 6)), *(v506 + 13), arrf);
LABEL_595:
          buf[0].i64[1] = v512;
          buf[0].i64[0] = *v488;
          GTTraceDump_setCommandBufferInfo(v486, v500, buf);
          v485 = a2;
          v484 = v858;
          goto LABEL_596;
        }

        if ((v489 + 14847) <= 0xE && ((1 << (v489 - 1)) & 0x4003) != 0 || v489 == -15158)
        {
          v495 = GTTraceFunc_targetContext(*(v484 + 24) + (v487 << 6), arrf);
          *&v893.st_dev = 0;
          Mtl4Commits = GTTraceFuncArgs_getMtl4Commits(v488, arrf, &v893);
          if (Mtl4Commits)
          {
            v497 = Mtl4Commits;
            v498 = *&v893.st_dev;
            do
            {
              buf[0] = 0uLL;
              buf[0].i64[0] = *v488;
              buf[0].i64[1] = v495;
              v499 = *v498++;
              GTTraceDump_setCommandBufferInfo(v486, v499, buf);
              --v497;
            }

            while (v497);
          }

          v485 = a2;
        }
      }

      else if (v489 == -16361 || v489 == -16202 || v489 == -15908)
      {
        goto LABEL_577;
      }

LABEL_596:
      ++v487;
    }

    while (v487 < *(v484 + 12));
  }

  *(v324 + 25) = v486;
  v513 = apr_hash_make(v485);
  *(v324 + 18) = v513;
  buf[0].i64[0] = 0;
  v514 = hib;
  if (v837->nelts >= 1)
  {
    v515 = 0;
    LODWORD(v516) = 0;
    v517 = 0;
    while (1)
    {
      v518 = &v837->elts[448 * v515];
      v520 = *(v518 + 16);
      v519 = (v518 + 16);
      if (v514 < v520)
      {
        break;
      }

      if (!v517)
      {
        goto LABEL_604;
      }

LABEL_605:
      v525 = v517[3] + 1;
      v517[3] = v525;
      v517[4] = v525;
      if (++v515 >= v837->nelts)
      {
        goto LABEL_606;
      }
    }

    v516 = v516;
    do
    {
      v521 = *&v842->elts[8 * v516++];
      buf[0].i64[0] = v521;
      CommandBufferCommitIndex = GTTraceDump_getCommandBufferCommitIndex(*(v324 + 25), v521);
    }

    while (CommandBufferCommitIndex < *v519);
    v514 = CommandBufferCommitIndex;
LABEL_604:
    v517 = apr_palloc(a2, 0x20uLL);
    *v517 = a2;
    elt_size = v837->elt_size;
    v517[3] = 0;
    v517[4] = 0;
    v517[2] = elt_size;
    *(v517 + 3) = &v837->elts[v515 * elt_size];
    v324 = v844;
    v524 = apr_palloc(a2, 8uLL);
    *v524 = buf[0].i64[0];
    apr_hash_set(v513, v524, 8, v517);
    goto LABEL_605;
  }

LABEL_606:
  buf[0].i64[0] = 0;
  v526 = *find_entry(v513, buf, 8uLL, 0);
  v527 = v842;
  if (!v526)
  {
    *(v324 + 29) = 0;
    v529 = (v324 + 232);
    v530 = a2;
LABEL_610:
    *v529 = apr_array_make(v530, 0, 448);
    goto LABEL_611;
  }

  v528 = *(v526 + 32);
  *(v324 + 29) = v528;
  v529 = (v324 + 232);
  v530 = a2;
  if (!v528)
  {
    goto LABEL_610;
  }

LABEL_611:
  v835 = v529;
  buf[0] = *(v324 + 8);
  buf[1] = newpool;
  v532 = GTResourceTrackerMakeWithDescriptor(buf);
  if (v842->nelts < 1)
  {
    goto LABEL_698;
  }

  v533 = 0;
  do
  {
    v838 = v533;
    v534 = *&v527->elts[8 * v533];
    v535 = *(v844 + 25);
    buf[0].i64[0] = v534;
    v536 = *(*find_entry(v535, buf, 8uLL, 0) + 32);
    v538 = *v536;
    v537 = v536[1];
    GTResourceTrackerProcessCommandBuffer(v532, v534);
    v539 = *v532;
    buf[0].i64[0] = v537;
    v540 = *find_entry(v539, buf, 8uLL, 0);
    if (v540)
    {
      v541 = *(v540 + 32);
      if (v541)
      {
        buf[0].i64[0] = 0;
        apr_pool_create_ex(buf, 0, 0, v531);
        v542 = buf[0].i64[0];
        v543 = apr_hash_make(buf[0].i64[0]);
        GatherCommandQueueResidencySetsUpToIndex(v543, v541, v532[1], v538, 2);
        for (ii = apr_hash_first(v542, v543); ; ii = apr_hash_next(v545))
        {
          v545 = ii;
          if (!ii)
          {
            break;
          }

          GTResourceTrackerUsingResidencySet(v532, **(*(ii + 1) + 16));
        }

        apr_pool_destroy(v542);
      }
    }

    if (!*(v532[6] + 48))
    {
      goto LABEL_697;
    }

    *&v893.st_dev = 0;
    apr_pool_create_ex(&v893, 0, 0, v531);
    v546 = *&v893.st_dev;
    v547 = apr_hash_make(*&v893.st_dev);
    v548 = apr_hash_make(v546);
    v549 = apr_hash_first(v546, v532[6]);
    if (!v549)
    {
      goto LABEL_696;
    }

    do
    {
      hic = v549;
      v550 = **(*(v549 + 1) + 16);
      v551 = *v532;
      buf[0].i64[0] = v550;
      v552 = *find_entry(v551, buf, 8uLL, 0);
      if (v552)
      {
        v552 = *(v552 + 32);
      }

      v553 = v532[1];
      v554 = *(v552 + 32);
      if (v554)
      {
        v555 = 0;
        while (1)
        {
          v556 = atomic_load((v554 + 4));
          v557 = v555 + (v556 >> 6) - 1;
          if (v557 > 0)
          {
            break;
          }

          v554 = *(v554 + 40);
          v555 = v557;
          if (!v554)
          {
            v555 = v557;
            goto LABEL_630;
          }
        }

        v557 = 0;
LABEL_630:
        v558 = v555 | (v557 << 32);
      }

      else
      {
        v558 = 0;
      }

      v559 = 0;
      while (v554)
      {
        v560 = v554 + 64 + ((HIDWORD(v558) - v558) << 6);
        if ((*(v560 + 15) & 8) == 0 || *v560 >= v538)
        {
          break;
        }

        if (*(v560 + 8) == -15208 && *(v560 + 15) < 0)
        {
          v559 = *v560;
        }

        v561 = atomic_load((v554 + 4));
        v562 = (HIDWORD(v558) + 1);
        v563 = v558 + (v561 >> 6) - 1;
        v558 = (v562 << 32) | v558;
        if (v562 == v563)
        {
          v558 = (v562 << 32) | v562;
          v554 = *(v554 + 40);
        }
      }

      v859 = v547;
      v564 = *(v552 + 32);
      if (v564)
      {
        v565 = 0;
        while (1)
        {
          v566 = atomic_load((v564 + 4));
          v567 = v565 + (v566 >> 6) - 1;
          if (v567 > 0)
          {
            break;
          }

          v564 = *(v564 + 40);
          v565 = v567;
          if (!v564)
          {
            v565 = v567;
            goto LABEL_647;
          }
        }

        v567 = 0;
LABEL_647:
        v568 = v565 | (v567 << 32);
      }

      else
      {
        v568 = 0;
      }

      v866 = v559;
LABEL_649:
      v569 = v564 + 64;
      while (v564)
      {
        v570 = v569 + ((HIDWORD(v568) - v568) << 6);
        if ((*(v570 + 15) & 8) == 0)
        {
          break;
        }

        if (*v570 >= v559)
        {
          if (*v570 >= v538)
          {
            if (*(v570 + 15) < 0)
            {
              break;
            }

            goto LABEL_680;
          }

          v571 = *(v570 + 8);
          if (v571 <= -15212)
          {
            if (v571 == -15220)
            {
              v586 = apr_hash_copy(*v548, v548);
              v569 = v564 + 64;
              v859 = v586;
              goto LABEL_680;
            }

            if (v571 != -15212)
            {
              goto LABEL_680;
            }

LABEL_676:
            v580 = GTTraceFunc_argumentBytesWithMap((v569 + ((HIDWORD(v568) - v568) << 6)), *(v570 + 13), v553);
            v581 = *find_entry(v548, v580 + 8, 8uLL, 0);
            if (!v581 || !*(v581 + 32))
            {
              v582 = apr_palloc(*v548, 8uLL);
              *v582 = *(v580 + 1);
              apr_hash_set(v548, v582, 8, v582);
            }

LABEL_679:
            v559 = v866;
            v569 = v564 + 64;
            goto LABEL_680;
          }

          if (v571 == -15211 || v571 == -15206)
          {
            v573 = GTTraceFunc_argumentBytesWithMap((v569 + ((HIDWORD(v568) - v568) << 6)), *(v570 + 13), v553);
            v574 = GTTraceFunc_argumentBytesWithMap(v570, v573[16], v553);
            if (*(v573 + 1))
            {
              v575 = v574;
              v848 = v553;
              v576 = 0;
              v577 = 0;
              do
              {
                v578 = *find_entry(v548, &v575[v576], 8uLL, 0);
                if (!v578 || !*(v578 + 32))
                {
                  if (v575)
                  {
                    v579 = apr_palloc(*v548, 8uLL);
                    *v579 = *&v575[8 * v577];
                  }

                  else
                  {
                    v579 = 0;
                  }

                  apr_hash_set(v548, v579, 8, v579);
                }

                ++v577;
                v576 += 8;
              }

              while (*(v573 + 1) > v577);
              v553 = v848;
            }

            goto LABEL_679;
          }

          if (v571 == -15207)
          {
            goto LABEL_676;
          }
        }

LABEL_680:
        v583 = atomic_load((v564 + 4));
        v584 = v568 + (v583 >> 6);
        v585 = (HIDWORD(v568) + 1);
        v568 = (v585 << 32) | v568;
        if (v585 == v584 - 1)
        {
          v568 = (v585 << 32) | v585;
          v564 = *(v564 + 40);
          goto LABEL_649;
        }
      }

      v587 = 1;
      v547 = v859;
      do
      {
        v588 = v587;
        if (v587)
        {
          v589 = v859;
        }

        else
        {
          v589 = v548;
        }

        for (jj = apr_hash_first(*&v893.st_dev, v589); ; jj = apr_hash_next(v591))
        {
          v591 = jj;
          if (!jj)
          {
            break;
          }

          v592 = *(*(jj + 1) + 16);
          if (GTResourceTrackerGetResourceType(*v592, *v532) == 50)
          {
            GTResourceTrackerUsingResourceHeap(v532, *v592, v538);
          }

          else
          {
            v593 = v532[3];
            ResourceType = GTResourceTrackerGetResourceType(*v592, *v532);
            GTResourceTrackerUsingResource(v593, ResourceType, *v592, *v532, v532[1]);
            v595 = GTResourceTrackerGetResourceType(*v592, *v532);
            GTResourceTrackerResourceUsage(v532, v595, *v592, v538, 3);
          }
        }

        v587 = 0;
      }

      while ((v588 & 1) != 0);
      apr_hash_clear(v859);
      apr_hash_clear(v548);
      v549 = apr_hash_next(hic);
    }

    while (v549);
    v546 = *&v893.st_dev;
LABEL_696:
    apr_pool_destroy(v546);
    apr_hash_clear(v532[6]);
LABEL_697:
    v527 = v842;
    v533 = v838 + 1;
  }

  while (v838 + 1 < v842->nelts);
LABEL_698:
  if (*(v532[4] + 48))
  {
    v596 = *v532;
    *(v596 + 24) = 0;
    *(v596 + 32) = 0;
    *(v596 + 16) = v596;
    *(v596 + 40) = 0;
    v597 = apr_hash_next((v596 + 16));
    if (v597)
    {
      v598 = v597;
      do
      {
        v599 = *(*(v598 + 1) + 32);
        if (!v599)
        {
          goto LABEL_704;
        }

        v600 = *(v599 + 32);
        if (!v600 || (*(v600 + 79) & 8) == 0)
        {
          goto LABEL_704;
        }

        v601 = GTFenum_getConstructorType(*(v600 + 72));
        switch(v601)
        {
          case 16:
            memset(buf, 0, 24);
            memset(&buf[6], 0, 120);
            memset(&buf[2], 0, 48);
            buf[0].i32[0] = 16;
            buf[1].i64[1] = -1;
            buf[6].i16[5] = 2;
            buf[5] = 0xFFFFFFFFFFFFFFFFLL;
            GTMTLSMAccelerationStructure_processTraceFuncWithMap(buf[0].i8, v532[1], (v600 + 64));
            if (!buf[3].i64[0])
            {
              goto LABEL_704;
            }

            v610 = *find_entry(v532[4], buf[3].i8, 8uLL, 0);
            if (!v610)
            {
              goto LABEL_704;
            }

            v611 = *(v610 + 32);
            if (!v611)
            {
              goto LABEL_704;
            }

            v604 = *(v611 + 8);
            v605 = buf[0].i64[1];
            if (v604 > IsHeapResourceMadeAliasable(v596, buf[0].i64[1], v604))
            {
              goto LABEL_704;
            }

            v606 = v532;
            v607 = 16;
            break;
          case 80:
            memset(buf, 0, 24);
            memset(&buf[6], 0, 128);
            memset(&buf[2], 0, 48);
            buf[0].i32[0] = 80;
            buf[1].i64[1] = -1;
            buf[6].i16[5] = 2;
            buf[5] = 0xFFFFFFFFFFFFFFFFLL;
            buf[14].i64[0] = 0xFFFFFFFFLL;
            GTMTLSMTexture_processTraceFuncWithMap(buf, v532[1], v600 + 64);
            if (!buf[3].i64[0])
            {
              goto LABEL_704;
            }

            v608 = *find_entry(v532[4], buf[3].i8, 8uLL, 0);
            if (!v608)
            {
              goto LABEL_704;
            }

            v609 = *(v608 + 32);
            if (!v609)
            {
              goto LABEL_704;
            }

            v604 = *(v609 + 8);
            v605 = buf[0].i64[1];
            if (v604 > IsHeapResourceMadeAliasable(v596, buf[0].i64[1], v604))
            {
              goto LABEL_704;
            }

            v606 = v532;
            v607 = 80;
            break;
          case 22:
            memset(buf, 0, 24);
            memset(&buf[6], 0, 24);
            memset(&buf[8], 0, 40);
            memset(&buf[2], 0, 48);
            buf[0].i32[0] = 22;
            buf[1].i64[1] = -1;
            buf[6].i16[5] = 2;
            buf[5] = 0xFFFFFFFFFFFFFFFFLL;
            buf[7].i64[1] = -1;
            GTMTLSMBuffer_processTraceFuncWithMap(buf[0].i8, v532[1], (v600 + 64));
            if (!buf[3].i64[0])
            {
              goto LABEL_704;
            }

            v602 = *find_entry(v532[4], buf[3].i8, 8uLL, 0);
            if (!v602)
            {
              goto LABEL_704;
            }

            v603 = *(v602 + 32);
            if (!v603)
            {
              goto LABEL_704;
            }

            v604 = *(v603 + 8);
            v605 = buf[0].i64[1];
            if (v604 > IsHeapResourceMadeAliasable(v596, buf[0].i64[1], v604))
            {
              goto LABEL_704;
            }

            v606 = v532;
            v607 = 22;
            break;
          default:
            goto LABEL_704;
        }

        GTResourceTrackerResourceRead(v606, v607, v605, v604);
LABEL_704:
        v598 = apr_hash_next(v598);
      }

      while (v598);
    }

    apr_hash_clear(v532[4]);
  }

  *&v893.st_dev = 0;
  apr_pool_create_ex(&v893, *v532[5], 0, v531);
  v612 = *&v893.st_dev;
  v613 = apr_array_make(*&v893.st_dev, 16, 8);
  v614 = v532[5];
  *(v614 + 40) = 0;
  *(v614 + 16) = v614;
  *(v614 + 24) = 0;
  *(v614 + 32) = 0;
  v615 = apr_hash_next((v614 + 16));
  if (v615)
  {
    v616 = v615;
    do
    {
      v617 = *(*(v616 + 1) + 32);
      if (*(v617 + 40) == 16)
      {
        v618 = *(v617 + 8);
        *apr_array_push(v613) = v618;
      }

      v616 = apr_hash_next(v616);
    }

    while (v616);
  }

  if (v532[7])
  {
    if (*(v532[4] + 48))
    {
      v619 = *v532;
      *(v619 + 24) = 0;
      *(v619 + 32) = 0;
      *(v619 + 16) = v619;
      *(v619 + 40) = 0;
      v620 = apr_hash_next((v619 + 16));
      if (v620)
      {
        v621 = v620;
        do
        {
          v622 = *(*(v621 + 1) + 32);
          if (v622)
          {
            v623 = *(v622 + 32);
            if (v623)
            {
              if ((*(v623 + 79) & 8) != 0)
              {
                v624 = *(v623 + 72);
                if (GTFenum_getConstructorType(v624) == 16 && GTFenum_getReceiverType(v624) == 50)
                {
                  memset(buf, 0, 24);
                  memset(&buf[6], 0, 120);
                  memset(&buf[2], 0, 48);
                  buf[0].i32[0] = 16;
                  buf[1].i64[1] = -1;
                  buf[6].i16[5] = 2;
                  buf[5] = 0xFFFFFFFFFFFFFFFFLL;
                  GTMTLSMAccelerationStructure_processTraceFuncWithMap(buf[0].i8, v532[1], (v623 + 64));
                  if (buf[3].i64[0])
                  {
                    v625 = *find_entry(v532[4], buf[3].i8, 8uLL, 0);
                    if (v625)
                    {
                      if (*(v625 + 32))
                      {
                        v626 = buf[0].i64[1];
                        *apr_array_push(v613) = v626;
                      }
                    }
                  }
                }
              }
            }
          }

          v621 = apr_hash_next(v621);
        }

        while (v621);
      }
    }
  }

  if (v613->nelts >= 1)
  {
    v627 = 0;
    do
    {
      *&v884[0] = *&v613->elts[8 * v627];
      memset(buf, 0, 24);
      memset(&buf[6], 0, 120);
      memset(&buf[2], 0, 48);
      buf[0].i32[0] = 16;
      buf[1].i64[1] = -1;
      buf[6].i16[5] = 2;
      buf[5] = 0xFFFFFFFFFFFFFFFFLL;
      v628 = *(*(*find_entry(*v532, v884, 8uLL, 0) + 32) + 32);
      if (v628)
      {
        v629 = 0;
        while (1)
        {
          v630 = atomic_load((v628 + 4));
          v631 = v629 + (v630 >> 6) - 1;
          if (v631 > 0)
          {
            break;
          }

          v628 = *(v628 + 40);
          v629 = v631;
          if (!v628)
          {
            v629 = v631;
            goto LABEL_754;
          }
        }

        v631 = 0;
LABEL_754:
        v632 = v629 | (v631 << 32);
      }

      else
      {
        v632 = 0;
      }

LABEL_755:
      v633 = v628 + 64;
      while (v628)
      {
        v634 = v633 + ((HIDWORD(v632) - v632) << 6);
        if ((*(v634 + 15) & 8) == 0)
        {
          break;
        }

        GTMTLSMAccelerationStructure_processTraceFuncWithMap(buf[0].i8, v532[1], (v633 + ((HIDWORD(v632) - v632) << 6)));
        if (*(v634 + 8) == -15552 && buf[7].i64[1] != 0)
        {
          GTResourceTrackerUsingAccelerationStructureDescriptor(v532, buf[7].i64[1], 1, *v634);
        }

        v636 = atomic_load((v628 + 4));
        v637 = v632 + (v636 >> 6);
        v638 = (HIDWORD(v632) + 1);
        v632 = (v638 << 32) | v632;
        if (v638 == v637 - 1)
        {
          v632 = (v638 << 32) | v638;
          v628 = *(v628 + 40);
          goto LABEL_755;
        }
      }

      ++v627;
    }

    while (v627 < v613->nelts);
    v612 = *&v893.st_dev;
  }

  apr_pool_destroy(v612);
  *&v893.st_dev = 0;
  apr_pool_create_ex(&v893, *v532[5], 0, v639);
  v640 = *&v893.st_dev;
  v867 = apr_array_make(*&v893.st_dev, 16, 16);
  arrg = apr_hash_make(v640);
  v641 = v532[3];
  *(v641 + 40) = 0;
  *(v641 + 16) = v641;
  *(v641 + 24) = 0;
  *(v641 + 32) = 0;
  v642 = apr_hash_next((v641 + 16));
  if (v642)
  {
    v643 = v642;
    do
    {
      v644 = *(*(v643 + 1) + 32);
      v645 = v644[2];
      if (v645 == 2)
      {
        v649 = *(*find_entry(*v532, *(*(v643 + 1) + 32), 8uLL, 0) + 32);
        memset(buf, 0, 24);
        memset(&buf[2], 0, 24);
        buf[0].i32[0] = 2;
        buf[1].i64[1] = -1;
        v650 = *(v649 + 32);
        if (v650)
        {
          v651 = 0;
          while (1)
          {
            v652 = atomic_load((v650 + 4));
            v653 = v651 + (v652 >> 6) - 1;
            if (v653 > 0)
            {
              break;
            }

            v650 = *(v650 + 40);
            v651 = v653;
            if (!v650)
            {
              v651 = v653;
              goto LABEL_784;
            }
          }

          v653 = 0;
LABEL_784:
          v654 = v651 | (v653 << 32);
        }

        else
        {
          v654 = 0;
        }

        while (v650)
        {
          v655 = v650 + 64 + ((HIDWORD(v654) - v654) << 6);
          if ((*(v655 + 15) & 8) == 0)
          {
            break;
          }

          GTMTLSMDrawable_processTraceFuncWithMap(buf[0].i8, v532[1], (v650 + 64 + ((HIDWORD(v654) - v654) << 6)));
          if (*(v655 + 8) == -7167)
          {
            break;
          }

          v656 = atomic_load((v650 + 4));
          v657 = v654 + (v656 >> 6);
          v658 = (HIDWORD(v654) + 1);
          v654 = (v658 << 32) | v654;
          if (v658 == v657 - 1)
          {
            v654 = (v658 << 32) | v658;
            v650 = *(v650 + 40);
          }
        }

        v640 = *&v893.st_dev;
        v659 = apr_palloc(*&v893.st_dev, 8uLL);
        *v659 = buf[3].i64[0];
        apr_hash_set(arrg, v659, 8, v644);
      }

      else if (v645 == 80)
      {
        v646 = *find_entry(*v532, *(*(v643 + 1) + 32), 8uLL, 0);
        if (v646)
        {
          v647 = *(v646 + 32);
          if (v647)
          {
            v648 = *(v647 + 32);
            if (v648)
            {
              if ((*(v648 + 79) & 8) != 0)
              {
                memset(buf, 0, 24);
                memset(&buf[6], 0, 128);
                memset(&buf[2], 0, 48);
                buf[0].i32[0] = 80;
                buf[1].i64[1] = -1;
                buf[6].i16[5] = 2;
                buf[5] = 0xFFFFFFFFFFFFFFFFLL;
                buf[14].i64[0] = 0xFFFFFFFFLL;
                GTMTLSMTexture_processTraceFuncWithMap(buf, v532[1], v648 + 64);
                if (buf[12].i64[1] || buf[7].i64[0] && *(buf[7].i64[0] + 44))
                {
                  *apr_array_push(v867) = *v644;
                }
              }
            }
          }
        }
      }

      v643 = apr_hash_next(v643);
    }

    while (v643);
  }

  if (v867->nelts)
  {
    v660 = *v532;
    *(v660 + 24) = 0;
    *(v660 + 32) = 0;
    *(v660 + 16) = v660;
    *(v660 + 40) = 0;
    v661 = apr_hash_next((v660 + 16));
    if (v661)
    {
      v662 = v661;
      do
      {
        v663 = *(*(v662 + 1) + 32);
        if (v663)
        {
          v664 = *(v663 + 32);
          if (v664)
          {
            if ((*(v664 + 79) & 8) != 0 && GTFenum_getConstructorType(*(v664 + 72)) == 2)
            {
              memset(buf, 0, 24);
              memset(&buf[2], 0, 24);
              buf[0].i32[0] = 2;
              buf[1].i64[1] = -1;
              GTMTLSMDrawable_processTraceFuncWithMap(buf[0].i8, v532[1], (v664 + 64));
              v665 = *(v663 + 32);
              if (v665)
              {
                v666 = 0;
                while (1)
                {
                  v667 = atomic_load((v665 + 4));
                  v668 = v666 + (v667 >> 6) - 1;
                  if (v668 > 1)
                  {
                    break;
                  }

                  v665 = *(v665 + 40);
                  v666 = v668;
                  if (!v665)
                  {
                    v666 = v668;
                    goto LABEL_810;
                  }
                }

                v668 = 1;
LABEL_810:
                v669 = v666 | (v668 << 32);
              }

              else
              {
                v669 = 0;
              }

              while (v665)
              {
                v670 = v665 + 64 + ((HIDWORD(v669) - v669) << 6);
                if ((*(v670 + 15) & 8) == 0)
                {
                  break;
                }

                GTMTLSMDrawable_processTraceFuncWithMap(buf[0].i8, v532[1], (v665 + 64 + ((HIDWORD(v669) - v669) << 6)));
                if (*(v670 + 8) == -7167)
                {
                  break;
                }

                v671 = atomic_load((v665 + 4));
                v672 = v669 + (v671 >> 6);
                v673 = (HIDWORD(v669) + 1);
                v669 = (v673 << 32) | v669;
                if (v673 == v672 - 1)
                {
                  v669 = (v673 << 32) | v673;
                  v665 = *(v665 + 40);
                }
              }

              v674 = v867->nelts;
              if (v674 >= 1)
              {
                v675 = v867->elts;
                while (1)
                {
                  v676 = *v675;
                  v675 += 16;
                  if (v676 == buf[3].i64[0])
                  {
                    break;
                  }

                  if (!--v674)
                  {
                    goto LABEL_822;
                  }
                }

                GTResourceTrackerUsingResource(v532[3], 2, buf[0].i64[1], *v532, v532[1]);
              }
            }
          }
        }

LABEL_822:
        v662 = apr_hash_next(v662);
      }

      while (v662);
      v640 = *&v893.st_dev;
    }
  }

  apr_pool_destroy(v640);
  v677 = *v835;
  v678 = (*v835)->nelts;
  (*v835)->nelts = 0;
  if (v678 < 1)
  {
    v683 = 0;
  }

  else
  {
    v679 = 0;
    do
    {
      v680 = v677->elts;
      v681 = *&v680[v679];
      if (v681 != 16 && v681 != 57)
      {
        v682 = v677->nelts;
        v677->nelts = v682 + 1;
        memcpy(buf, &v680[v679], 0x1C0uLL);
        v682 *= 448;
        memcpy(&v680[v679], &v680[v682], 0x1C0uLL);
        memcpy(&v677->elts[v682], buf, 0x1C0uLL);
      }

      v679 += 448;
    }

    while (448 * v678 != v679);
    v683 = v677->nelts;
  }

  v677->nalloc = v683;
  v684 = v678 - v683;
  v685 = apr_palloc(a2, 0x20uLL);
  *v685 = a2;
  v686 = v677->elt_size;
  v685[3] = v684;
  v685[4] = v684;
  v685[2] = v686;
  *(v685 + 3) = &v677->elts[v686 * v683];
  *(v844 + 33) = v685;
  v687 = *(v844 + 28);
  if (*(v687 + 12) >= 1)
  {
    v688 = 0;
    do
    {
      v689 = find_entry(v532[5], (*(*(v687 + 24) + 8 * v688) + 8), 8uLL, 0);
      if (*v689)
      {
        v690 = *(*v689 + 32);
        if (v690)
        {
          *(v690 + 32) = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      ++v688;
      v687 = *(v844 + 28);
    }

    while (v688 < *(v687 + 12));
  }

  v691 = v677->nelts;
  v677->nelts = 0;
  if (v691 >= 1)
  {
    v692 = 0;
    while (1)
    {
      v693 = &v677->elts[v692];
      v694 = *find_entry(v532[5], v693 + 8, 8uLL, 0);
      if (v694)
      {
        v695 = *(v694 + 32);
        if (v695)
        {
          if (*v693 == 80)
          {
            goto LABEL_847;
          }

          if (*v693 == 22)
          {
            break;
          }
        }
      }

LABEL_854:
      v692 += 448;
      if (448 * v691 == v692)
      {
        v703 = v677->nelts;
        goto LABEL_857;
      }
    }

    Object = GTMTLSMContext_getObject(**(v844 + 5), *(v693 + 1), *(v844 + 11));
    v697 = *(Object + 52);
    if ((GTFenum_isSharedResourceConstructor(*(Object + 1)) & 1) != 0 || (v697 & 0xE0) == 0)
    {
      *(v695 + 32) = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_847:
    v698 = *(v695 + 32);
    if (v698 != -1)
    {
      v699 = *(v695 + 24);
      if (v699 != -1 && v699 <= v698)
      {
        v701 = v677->nelts;
        v677->nelts = v701 + 1;
        v702 = v677->elts;
        memcpy(buf, &v702[v692], 0x1C0uLL);
        v701 *= 448;
        memcpy(&v702[v692], &v702[v701], 0x1C0uLL);
        memcpy(&v677->elts[v701], buf, 0x1C0uLL);
      }
    }

    goto LABEL_854;
  }

  v703 = 0;
LABEL_857:
  v677->nalloc = v703;
  v704 = v691 - v703;
  v705 = apr_palloc(a2, 0x20uLL);
  *v705 = a2;
  v706 = v677->elt_size;
  v705[3] = v704;
  v705[4] = v704;
  v705[2] = v706;
  *(v705 + 3) = &v677->elts[v706 * v703];
  *(v844 + 30) = v705;
  v707 = *(*(v844 + 5) + 296);
  v708 = *(v707 + 24);
  *(v844 + 35) = apr_array_make(a2, *(v707 + 12), 8);
  LODWORD(v709) = *(v707 + 12);
  if (v709 >= 1)
  {
    v710 = 0;
    do
    {
      v711 = *(v708 + 8 * v710);
      if (v711)
      {
        v712 = *(v711 + 8);
      }

      else
      {
        v712 = 0;
      }

      v713 = *(v844 + 1);
      buf[0].i64[0] = v712;
      v714 = *find_entry(v713, buf, 8uLL, 0);
      if (v714)
      {
        v715 = *(v714 + 32);
      }

      else
      {
        v715 = 0;
      }

      if (*GTTraceStream_lastFunc(v715) >= *(v844 + 11))
      {
        *apr_array_push(*(v844 + 35)) = v711;
      }

      ++v710;
      v709 = *(v707 + 12);
    }

    while (v710 < v709);
  }

  v716 = v844;
  *(v844 + 36) = apr_array_make(a2, v709, 8);
  v717 = *(*(v844 + 5) + 200);
  v718 = apr_hash_make(a2);
  if (*(v717 + 12) >= 1)
  {
    v719 = 0;
    do
    {
      v720 = *(v716 + 1);
      buf[0].i64[0] = *(*(*(v717 + 24) + 8 * v719) + 8);
      v721 = find_entry(v720, buf, 8uLL, 0);
      if (*v721)
      {
        v722 = *(*v721 + 32);
      }

      else
      {
        v722 = 0;
      }

      v716 = v844;
      GatherCommandQueueResidencySetsUpToIndex(v718, v722, *(v844 + 2), *(v844 + 12) + *(v844 + 11), 0);
      ++v719;
    }

    while (v719 < *(v717 + 12));
  }

  v723 = apr_hash_first(*v718, v718);
  if (v723)
  {
    v724 = v723;
    do
    {
      v725 = **(*(v724 + 1) + 16);
      *apr_array_push(*(v716 + 36)) = v725;
      v724 = apr_hash_next(v724);
    }

    while (v724);
  }

  *(v716 + 21) = apr_hash_make(a2);
  v726 = *(v716 + 43);
  v727 = v716;
  v728 = v842;
  if (v726 && (*(v726 + 42) & 0x40) != 0)
  {
    if ((qword_27F09CF90 & 0x100000) == 0)
    {
      qword_27F09CF90 |= 0x100000uLL;
    }

    v729 = 1;
  }

  else
  {
    v729 = 0;
  }

  if (v842->nelts >= 1)
  {
    v730 = 0;
    do
    {
      buf[0] = *(v727 + 8);
      buf[1].i64[0] = a2;
      buf[1].i8[8] = v729;
      *(&buf[1].i32[2] + 1) = 0;
      buf[1].i32[3] = 0;
      v731 = GTResourceTrackerMakeWithDescriptor(buf);
      v732 = *&v728->elts[8 * v730];
      GTResourceTrackerProcessCommandBuffer(v731, v732);
      v733 = *(v844 + 21);
      v734 = apr_palloc(a2, 8uLL);
      *v734 = v732;
      v728 = v842;
      v735 = v731;
      v727 = v844;
      apr_hash_set(v733, v734, 8, v735);
      ++v730;
    }

    while (v730 < v842->nelts);
  }

  v736 = *(v727 + 5);
  v737 = *(v727 + 11);
  v738 = newpool;
  v739 = apr_hash_make(newpool);
  v740 = apr_array_make(v738, 8, 8);
  GTMTLSMContext_getObjects(*(v736 + 104), v737, v740);
  if (v740->nelts >= 1)
  {
    v741 = 0;
    v742 = 0;
    do
    {
      v743 = *&v740->elts[8 * v741];
      if (*(*(v743 + 48) + 20) == 2)
      {
        if (!v742)
        {
          v742 = apr_hash_make(v738);
          GTMTLSMContext_buildResourceChildrenMap(v736, v737, v742, v744);
        }

        v745 = find_entry(v742, (v743 + 8), 8uLL, 0);
        if (*v745)
        {
          v746 = *(*v745 + 32);
          if (v746)
          {
            if (*(v746 + 12) >= 1)
            {
              v747 = 0;
              do
              {
                v748 = *(*(v746 + 24) + 8 * v747);
                apr_hash_set(v739, (v748 + 8), 8, v748);
                ++v747;
              }

              while (v747 < *(v746 + 12));
            }
          }
        }
      }

      ++v741;
    }

    while (v741 < v740->nelts);
  }

  v749 = apr_array_make(a2, v739[12], 448);
  v750 = v844;
  *(v844 + 32) = v749;
  PushSparseDownloadRequests(*(v844 + 30), v749, v739);
  qsort(*(*(v750 + 32) + 24), *(*(v750 + 32) + 12), *(*(v750 + 32) + 8), CompareRequestByTextureLevel);
  v751 = apr_array_make(a2, v739[12], 448);
  *(v844 + 31) = v751;
  PushSparseDownloadRequests(*(v844 + 29), v751, v739);
  qsort(*(*(v750 + 31) + 24), *(*(v750 + 31) + 12), *(*(v750 + 31) + 8), CompareRequestByTextureLevel);
  if (GTCaptureArchive_getFileWithFilename(*v844, "gttrace-dump"))
  {
    v752 = *(v844 + 44) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v752 = (*(v844 + 44) & 0xFFFFFFFFFFFFFFFELL) + 1;
  }

  *(v844 + 44) = v752;
  v753 = *(v844 + 5);
  if (*(v753[10] + 12) > 0)
  {
    goto LABEL_901;
  }

  v768 = *(v844 + 16);
  v769 = v753[5];
  v770 = *(v769 + 12);
  if (v770 >= 1)
  {
    v771 = *(v769 + 24);
    do
    {
      v772 = *v771;
      if (*(*v771 + 192) || v772[31] || v772[38] || v772[45] || v772[52])
      {
        goto LABEL_901;
      }

      v771 += 8;
    }

    while (--v770);
  }

  v773 = v753[6];
  v774 = *(v773 + 12);
  if (v774 >= 1)
  {
    v775 = *(v773 + 24);
    while (!*(*v775 + 192))
    {
      v775 += 8;
      if (!--v774)
      {
        goto LABEL_922;
      }
    }

    goto LABEL_901;
  }

LABEL_922:
  v776 = *(v768 + 12);
  if (v776 >= 1)
  {
    v777 = (*(v768 + 24) + 8);
    do
    {
      v779 = *v777;
      v777 += 16;
      v778 = v779;
      if (GTFenum_isUseResourceCall(v779))
      {
        goto LABEL_901;
      }

      v780 = (v778 + 15171) > 6 || ((1 << (v778 + 67)) & 0x61) == 0;
      if (!v780 || v778 == -14884)
      {
        goto LABEL_901;
      }

      v782 = GTFenum_getReceiverType(v778) - 95;
      if (v782 <= 0xA && ((0x409u >> v782) & 1) != 0)
      {
        goto LABEL_901;
      }
    }

    while (--v776);
  }

  v783 = v753[3];
  v784 = *(v783 + 12);
  if (v784 >= 1)
  {
    v785 = *(v783 + 24);
    v786 = v784 - 1;
    do
    {
      v787 = *v785++;
      v788 = *(v787 + 4) + 15690;
    }

    while (v788 >= 3 && v786-- != 0);
    if (v788 < 3)
    {
LABEL_901:
      *(v844 + 44) = v752 | 2;
      v754 = GTMTLSMContext_getDevice(*v753, *(v844 + 11))[5];
      v755 = *(v754 + 72);
      if (!v755 || !strcmp(v755, "Apple"))
      {
        v756 = 4 * (*(v754 + 32) != 0);
      }

      else
      {
        v756 = 0;
      }

      v757 = v817;
      v758 = v844;
      goto LABEL_906;
    }
  }

  v756 = 0;
  v758 = v844;
  *(v844 + 44) = v752 & 0xFFFFFFFFFFFFFFFDLL;
  v757 = v817;
LABEL_906:
  *(v758 + 44) = *(v758 + 44) & 0xFFFFFFFFFFFFFFFBLL | v756;
  v759 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s/overrides/database", v757];
  v760 = [MEMORY[0x277CCAA00] defaultManager];
  v761 = [v760 fileExistsAtPath:v759];

  if (v761)
  {
    v878 = 0;
    v762 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v759 options:0 error:&v878];
    v763 = v878;
    if (v762)
    {
      v764 = MEMORY[0x277CCAAC8];
      v765 = +[GTCaptureArchiveOverrides allowedClasses];
      v877 = v763;
      v766 = [v764 unarchivedObjectOfClasses:v765 fromData:v762 error:&v877];
      v767 = v877;

      v763 = v767;
    }

    else
    {
      v766 = 0;
    }
  }

  else
  {
    v766 = 0;
  }

  objc_storeStrong(v844 + 6, v766);
  apr_pool_destroy(newpool);

  return v844;
}

uint64_t GetDeviceObjectStreamRef(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  entry = find_entry(*(a1 + 24), &v7, 8uLL, 0);
  if (*entry && (v4 = *(*entry + 32)) != 0 && (v5 = atomic_load((*(a1 + 16) + 80)), v5 < *(v4 + 24)))
  {
    return **(v4 + 8);
  }

  else
  {
    return 0;
  }
}

apr_hash_index_t *GenerateRestores(uint64_t a1, apr_hash_t *a2, uint64_t a3, uint64_t a4, apr_pool_t *a5)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = a1;
  *(a1 + 40) = 0;
  result = apr_hash_next((a1 + 16));
  if (result)
  {
    v10 = result;
    v11 = a4 + 1;
    v12 = a3 - a4 + 1;
    do
    {
      v17 = **(*(v10 + 1) + 16);
      v13 = *find_entry(a2, &v17, 8uLL, 0);
      if (!v13 || (v14 = *(v13 + 32)) == 0)
      {
        v14 = apr_array_make(a5, 8, 16);
        v15 = apr_palloc(a5, 8uLL);
        *v15 = v17;
        apr_hash_set(a2, v15, 8, v14);
      }

      v16 = apr_array_push(v14);
      *v16 = v11;
      v16[1] = v12;
      result = apr_hash_next(v10);
      v10 = result;
    }

    while (result);
  }

  return result;
}

int *PushSparseDownloadRequests(int *result, apr_array_header_t *a2, uint64_t a3)
{
  if (result[3] >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (*(v5 + 3) + v6);
      if (*v8 == 80)
      {
        result = find_entry(a3, v8 + 8, 8uLL, 0);
        if (*result)
        {
          if (*(*result + 32))
          {
            v9 = apr_array_push(a2);
            result = memcpy(v9, v8, 0x1C0uLL);
          }
        }
      }

      ++v7;
      v6 += 448;
    }

    while (v7 < v5[3]);
  }

  return result;
}

uint64_t CompareRequestByTextureLevel(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    v4 = *(a1 + 34);
    v5 = *(a2 + 34);
    v6 = v4 >= v5;
    v7 = v4 != v5;
    if (v6)
    {
      return v7;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

id GTMTLReplayController_dumpLibrary(uint64_t a1, char *a2, const char *a3)
{
  v57[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  if ([v6 hasPrefix:@"/"])
  {
    v7 = [v6 substringFromIndex:1];

    v6 = v7;
  }

  v8 = [*(a1 + 22648) URLByAppendingPathComponent:v6];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v8 path];
  v11 = [v9 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = v8;
    goto LABEL_28;
  }

  v13 = **a1;
  FileWithFilename = GTCaptureArchive_getFileWithFilename(v13, a2);
  if (!FileWithFilename)
  {
    v20 = MakeNSError(101, MEMORY[0x277CBEC10]);
    GTMTLReplay_handleNSError(v20);

    goto LABEL_27;
  }

  v15 = FileWithFilename;
  if (!GTString_isMetalPackageURL(v5))
  {
    if ((*(v15 + 24) & 2) != 0)
    {
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:*v13];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
      v19 = [v29 stringByAppendingPathComponent:v30];

      v31 = [MEMORY[0x277CCAA00] defaultManager];
      v32 = [v8 URLByDeletingLastPathComponent];
      v48 = 0;
      v33 = [v31 createDirectoryAtURL:v32 withIntermediateDirectories:1 attributes:0 error:&v48];
      v24 = v48;

      if (v33)
      {
        v34 = [MEMORY[0x277CCAA00] defaultManager];
        v35 = [v8 path];
        v47 = v24;
        v36 = [v34 copyItemAtPath:v19 toPath:v35 error:&v47];
        v18 = v47;

        if (v36)
        {
LABEL_20:

          goto LABEL_21;
        }

        v54 = *MEMORY[0x277CCA7E8];
        v55 = v18;
        v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
        v46 = 0;
        GTMTLReplay_fillError(&v46, 101, v38);
        v39 = v46;
        v24 = v18;
      }

      else
      {
        v56 = *MEMORY[0x277CCA7E8];
        v57[0] = v24;
        v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
        v39 = MakeNSError(101, v38);
      }

      v40 = v39;
      GTMTLReplay_handleNSError(v40);
    }

    else
    {
      v21 = [MEMORY[0x277CCAA00] defaultManager];
      v22 = [v8 URLByDeletingLastPathComponent];
      v45 = 0;
      v23 = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v45];
      v24 = v45;

      if (v23)
      {
        v25 = *(a1 + 184);
        v19 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:*(v15 + 8)];
        GTCaptureArchive_fillBufferCompressedDeflate(v13, v25, v15, [v19 mutableBytes], *(v15 + 8), 0);
        v43 = v24;
        v26 = [v19 writeToURL:v8 options:1 error:&v43];
        v18 = v43;

        if ((v26 & 1) == 0)
        {
          v50 = *MEMORY[0x277CCA7E8];
          v51 = v18;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
          v42 = 0;
          GTMTLReplay_fillError(&v42, 101, v27);
          v28 = v42;
          GTMTLReplay_handleNSError(v28);

          goto LABEL_12;
        }

        goto LABEL_20;
      }

      v52 = *MEMORY[0x277CCA7E8];
      v53 = v24;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      v44 = 0;
      GTMTLReplay_fillError(&v44, 101, v19);
      v37 = v44;
      GTMTLReplay_handleNSError(v37);
    }

    goto LABEL_27;
  }

  v16 = *(a1 + 184);
  v49 = 0;
  v17 = DumpDirectoryTree(v13, v16, a2, v8, &v49);
  v18 = v49;
  if (v17)
  {
LABEL_21:
    v12 = v8;

    goto LABEL_28;
  }

  v19 = MakeNSError(101, MEMORY[0x277CBEC10]);
  GTMTLReplay_handleNSError(v19);
LABEL_12:

LABEL_27:
  v12 = 0;
LABEL_28:

  return v12;
}

uint64_t DumpDirectoryTree(uint64_t a1, uint64_t a2, char *a3, void *a4, void **a5)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, v10);
  v11 = newpool;
  v12 = GTCaptureArchive_mapData(a1, a2, a3, newpool, 0);
  if (v12)
  {
    v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v12 length:v13 freeWhenDone:0];
    v15 = MEMORY[0x277CCAAC8];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
    v20 = [v15 unarchivedObjectOfClasses:v19 fromData:v14 error:a5];

    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(v9, "fileSystemRepresentation")}];
    v22 = DumpDirectory(v20, v21);

    if ((v22 & 1) == 0)
    {
      GTMTLReplay_fillError(a5, 101, MEMORY[0x277CBEC10]);
      if (a5)
      {
        v23 = *a5;
      }

      else
      {
        v23 = 0;
      }

      GTMTLReplay_handleNSError(v23);
    }
  }

  else
  {
    v27 = *MEMORY[0x277CCA450];
    v28[0] = @"File not found in archive";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    GTMTLReplay_fillError(a5, 101, v14);
    if (a5)
    {
      v24 = *a5;
    }

    else
    {
      v24 = 0;
    }

    GTMTLReplay_handleNSError(v24);
    v22 = 0;
  }

  apr_pool_destroy(v11);
  return v22;
}

uint64_t DumpDirectory(void *a1, void *a2)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  [MEMORY[0x277CCAA00] defaultManager];
  v23 = v28 = 0;
  v5 = [v23 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v28];
  v6 = v28;
  v7 = v6;
  if (v5)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (!v9)
    {
      v17 = 1;
      goto LABEL_24;
    }

    v10 = v9;
    v21 = v7;
    v22 = v3;
    v11 = *v25;
LABEL_4:
    v12 = 0;
    while (1)
    {
      if (*v25 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v24 + 1) + 8 * v12);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v14 = [v4 stringByAppendingPathComponent:v13];
      v15 = [v8 objectForKeyedSubscript:v13];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
        if ((DumpDirectory(v16, v14) & 1) == 0)
        {
          v18 = MakeNSError(101, MEMORY[0x277CBEC10]);
          GTMTLReplay_handleNSError(v18);
          v15 = v16;
          goto LABEL_21;
        }
      }

      else
      {
        v16 = [v8 objectForKeyedSubscript:v13];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = MakeNSError(101, MEMORY[0x277CBEC10]);
          GTMTLReplay_handleNSError(v18);
          goto LABEL_21;
        }

        if (([v23 createFileAtPath:v14 contents:v16 attributes:0] & 1) == 0)
        {
          v29 = *MEMORY[0x277CCA450];
          v30 = @"Failed to create temporary metal library file";
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          v19 = MakeNSError(101, v18);
          GTMTLReplay_handleNSError(v19);

LABEL_21:
LABEL_22:
          v7 = v21;
          v3 = v22;
          goto LABEL_23;
        }
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v24 objects:v31 count:16];
        v17 = 1;
        if (v10)
        {
          goto LABEL_4;
        }

        v7 = v21;
        v3 = v22;
        goto LABEL_24;
      }
    }

    v14 = MakeNSError(101, MEMORY[0x277CBEC10]);
    GTMTLReplay_handleNSError(v14);
    goto LABEL_22;
  }

  v32 = *MEMORY[0x277CCA7E8];
  v33[0] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  v14 = MakeNSError(101, v8);
  GTMTLReplay_handleNSError(v14);
LABEL_23:

  v17 = 0;
LABEL_24:

  return v17;
}

id GTMTLReplayController_dumpPipelineLibrary(uint64_t a1, char *a2, char *a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    a3 = a2;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  if ([v5 hasPrefix:@"/"])
  {
    v6 = [v5 substringFromIndex:1];

    v5 = v6;
  }

  v7 = [*(a1 + 22648) URLByAppendingPathComponent:v5];
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = 0;
  v9 = [v7 path];
  v10 = [v8 fileExistsAtPath:v9 isDirectory:&v21];

  if (v10)
  {
    if (v21)
    {
      v11 = v7;
    }

    else
    {
      v16 = MakeNSError(101, MEMORY[0x277CBEC10]);
      GTMTLReplay_handleNSError(v16);

      v11 = 0;
    }
  }

  else
  {
    v12 = **a1;
    v13 = *(a1 + 184);
    v20 = 0;
    v14 = DumpDirectoryTree(v12, v13, a2, v7, &v20);
    v15 = v20;
    if (v14)
    {
      v11 = v7;
    }

    else
    {
      v22 = *MEMORY[0x277CCA450];
      v23[0] = @"Failed to serialize pipeline library directory.";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v18 = MakeNSError(101, v17);
      GTMTLReplay_handleNSError(v18);

      v11 = 0;
    }
  }

  return v11;
}

uint64_t GTMTLReplayController_makeController(uint64_t a1, apr_pool_t *a2, void *a3, void *a4, void *a5, void *a6)
{
  p[16] = *MEMORY[0x277D85DE8];
  v11 = a3;
  obj = a4;
  v228 = a4;
  v225 = a5;
  v221 = a5;
  context = a6;
  v222 = a6;
  newpool = 0;
  pool = a2;
  apr_pool_create_ex(&newpool, a2, 0, v12);
  v13 = 88;
  if ((qword_27F09CF90 & 0x400) == 0)
  {
    v13 = 72;
  }

  v14 = *(a1 + v13);
  v15 = apr_hash_make(newpool);
  GTMTLSMContext_buildResourceChildrenMap(*(a1 + 40), v14, v15, v16);
  ht = v15;
  v233 = a1;
  v17 = *(a1 + 40);
  p[0] = 0;
  v18 = *v15;
  apr_pool_create_ex(p, v18, 0, v19);
  v20 = apr_array_make(p[0], *(*(v17 + 240) + 12), 8);
  GTMTLSMContext_getObjects(*(v17 + 240), v14, v20);
  if (v20->nelts >= 1)
  {
    v21 = 0;
    do
    {
      v22 = *&v20->elts[8 * v21];
      v23 = *find_entry(ht, (v22 + 40), 8uLL, 0);
      if (!v23 || (v24 = *(v23 + 32)) == 0)
      {
        v24 = apr_array_make(v18, 1, 8);
        apr_hash_set(ht, (v22 + 40), 8, v24);
      }

      *apr_array_push(v24) = v22;
      ++v21;
    }

    while (v21 < v20->nelts);
  }

  v229 = v14;
  v25 = GT_ENV;
  v26 = v11;
  v27 = insertBinaryArchives;
  insertBinaryArchives = 0;

  if (v25)
  {
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:v25];
    v29 = [v28 componentsSeparatedByString:@":"];
    v30 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v29, "count")}];
    v31 = objc_alloc_init(MEMORY[0x277CD6C90]);
    *v241 = 0u;
    v242 = 0u;
    v243 = 0u;
    v244 = 0u;
    v32 = v29;
    v33 = [v32 countByEnumeratingWithState:v241 objects:p count:16];
    if (v33)
    {
      v34 = *v242;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v242 != v34)
          {
            objc_enumerationMutation(v32);
          }

          v36 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:*(v241[1] + i) isDirectory:0];
          [v31 setUrl:v36];

          v240 = 0;
          v37 = [v26 newBinaryArchiveWithDescriptor:v31 error:&v240];
          [v30 addObject:v37];
        }

        v33 = [v32 countByEnumeratingWithState:v241 objects:p count:16];
      }

      while (v33);
    }

    v38 = [v30 copy];
    v39 = insertBinaryArchives;
    insertBinaryArchives = v38;
  }

  v40 = *(*(v233 + 40) + 200);
  v41 = *(v40 + 12);
  if (v41 < 1)
  {
    v43 = 64;
  }

  else
  {
    v42 = *(v40 + 24);
    v43 = 64;
    do
    {
      v44 = *v42++;
      v43 += *(v44 + 64);
      --v41;
    }

    while (v41);
  }

  if ((qword_27F09CF90 & 0x40000000) != 0)
  {
    v45 = objc_opt_new();
    [v45 setMaxCommandBufferCount:v43];
    [v45 setLockParameterBufferSizeToMax:1];
    v46 = v26;
    v47 = [v46 newCommandQueueWithDescriptor:v45];
    [v228 setDefaultCommandQueue:v47];
  }

  else
  {
    v45 = [v26 newCommandQueueWithMaxCommandBufferCount:v43];
    [v228 setDefaultCommandQueue:v45];
  }

  if ([v26 supportsFamily:5002])
  {
    v48 = [v26 newMTL4CommandQueue];
    [v228 setDefaultCommandQueue4:v48];

    v49 = objc_opt_new();
    [v49 setLabel:@"com.apple.gputools.Compiler"];
    v238 = 0;
    v50 = [v26 newCompilerWithDescriptor:v49 error:&v238];
    v51 = v238;
    [v228 setDefaultCompiler:v50];

    v52 = [v228 defaultCompiler];
    v53 = v52 == 0;

    if (v53)
    {
      GTMTLReplay_handleUnderlyingNSError(@"Failed to create MTL4Compiler", v51);
    }
  }

  if ((qword_27F09CF90 & 0x800) != 0)
  {
    v54 = objc_opt_new();
    v55 = [v26 newResidencySetWithDescriptor:v54 error:0];
    [v228 setGlobalResourceResidencySet:v55];

    v56 = [v228 defaultCommandQueue];
    v57 = [v228 globalResourceResidencySet];
    [v56 addResidencySet:v57];
  }

  [v228 defaultCommandQueue];

  v220 = byte_27F09CF8F;
  if (byte_27F09CF8F >= 7u)
  {
    v58 = 7;
  }

  else
  {
    v58 = byte_27F09CF8F;
  }

  v59 = (24 * v58);
  v60 = apr_palloc(pool, v59 + 22664);
  v61 = v60;
  if (v60)
  {
    bzero(v60, v59 + 22664);
  }

  v62 = pool;
  v63 = *(pool + 5);
  if (v63)
  {
    *(pool + 5) = *v63;
  }

  else
  {
    v63 = apr_palloc(pool, 0x20uLL);
    v62 = pool;
  }

  v63[1] = v61;
  v63[2] = GTMTLReplayController_cleanup;
  v63[3] = apr_pool_cleanup_null;
  *v63 = *(v62 + 4);
  *(v62 + 4) = v63;
  *v61 = v233;
  objc_storeStrong((v61 + 8), obj);
  v64 = [[GTMTLReplaySharedResourcePool alloc] initWithDevice:v26 bufferCapacity:0x2000000];
  v65 = *(v61 + 16);
  *(v61 + 16) = v64;

  [*(v61 + 16) setMaxPooledBuffers:(v58 + 2)];
  v66 = [GTMTLReplaySharedBlitBuffer alloc];
  v67 = [v228 defaultCommandQueue];
  v68 = [(GTMTLReplaySharedBlitBuffer *)v66 initWithCommandQueue:v67 resourcePool:*(v61 + 16) sync:v61 + 40];
  v69 = *(v61 + 24);
  *(v61 + 24) = v68;

  *(v61 + 184) = GTCaptureArchiveDecompressor_create(pool);
  objc_storeStrong((v61 + 168), v225);
  objc_storeStrong((v61 + 160), context);
  v70 = objc_opt_new();
  v71 = *(v61 + 64);
  *(v61 + 64) = v70;

  if ((GT_SUPPORT_0 & 0x200000) != 0)
  {
    v72 = objc_opt_new();
    [v72 setInitialCapacity:100];
    v73 = [v228 defaultDevice];
    v237 = 0;
    v74 = [v73 newResidencySetWithDescriptor:v72 error:&v237];
    v226 = v237;
    v75 = *(v61 + 144);
    *(v61 + 144) = v74;

    if (!*(v61 + 144))
    {
      GTMTLReplay_handleUnderlyingNSError(@"Failed to create indirect resource usage residency set", v226);

      v61 = 0;
      goto LABEL_182;
    }
  }

  else
  {
    v226 = 0;
  }

  v76 = [v26 newSharedEvent];
  v77 = *(v61 + 40);
  *(v61 + 40) = v76;

  atomic_store(1uLL, (v61 + 48));
  v78 = [v228 defaultDevice];
  v79 = [v78 supportsRaytracing];

  if (v79)
  {
    v80 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v81 = [v228 defaultDevice];
    v236 = v226;
    v82 = [v81 newDefaultLibraryWithBundle:v80 error:&v236];
    v83 = v236;

    v84 = [v82 newFunctionWithName:@"RestoreMTLIntersectionFunctionTable"];
    if (v84)
    {
      v85 = [v228 defaultDevice];
      v235 = v83;
      v86 = [v85 newComputePipelineStateWithFunction:v84 error:&v235];
      v226 = v235;

      if (v86)
      {
        objc_storeStrong((v61 + 152), v86);
      }

      else
      {
        GTMTLReplay_handleUnderlyingNSError(@"Failed to create IFT restore pipeline", v226);
      }
    }

    else
    {
      v226 = v83;
    }
  }

  contexta = objc_autoreleasePoolPush();
  v87 = [MEMORY[0x277CCAC38] processInfo];
  obja = [v87 globallyUniqueString];

  v88 = NSTemporaryDirectory();
  v89 = [v88 stringByAppendingPathComponent:obja];

  v90 = [MEMORY[0x277CBEBC0] fileURLWithPath:v89 isDirectory:1];
  v91 = *(v61 + 22640);
  *(v61 + 22640) = v90;

  v92 = [MEMORY[0x277CCAA00] defaultManager];
  v93 = *(v61 + 22640);
  v234 = 0;
  v94 = [v92 createDirectoryAtURL:v93 withIntermediateDirectories:1 attributes:0 error:&v234];
  v95 = v234;

  if (v94)
  {
    v96 = [*(v61 + 22640) URLByAppendingPathComponent:@"lib_root" isDirectory:1];
    v97 = *(v61 + 22648);
    *(v61 + 22648) = v96;

    v98 = *v61;
    v99 = *(*v61 + 40);
    v100 = *(v99 + 48);
    v101 = *(v100 + 12);
    if (v101 < 1)
    {
      v103 = &unk_27F09C000;
    }

    else
    {
      v102 = 0;
      v103 = &unk_27F09C000;
      do
      {
        v104 = *(*(v100 + 24) + 8 * v102);
        if ((v103[3985] & 4) != 0 || ((v105 = v104[2], v106 = v98[9], v106 <= v105) ? (v107 = v98[10] + v106 > v105) : (v107 = 0), !v107))
        {
          if (!v104[9])
          {
            v108 = v104[8];
            if (*(v108 + 96))
            {
              v109 = 0;
              do
              {
                v110 = GTMTLReplayController_dumpLibrary(v61, *(*(v108 + 40) + 8 * v109), *(*(v108 + 48) + 8 * v109));
                ++v109;
              }

              while (v109 < *(v108 + 96));
              v101 = *(v100 + 12);
              v103 = &unk_27F09C000;
            }
          }
        }

        ++v102;
      }

      while (v102 < v101);
      v99 = v98[5];
    }

    v111 = *(v99 + 40);
    v112 = *(v111 + 12);
    if (v112 >= 1)
    {
      for (j = 0; j < v112; ++j)
      {
        v114 = *(*(v111 + 24) + 8 * j);
        if ((v103[3985] & 4) == 0)
        {
          v115 = v114[2];
          v116 = v98[9];
          if (v116 <= v115 && v98[10] + v116 > v115)
          {
            continue;
          }
        }

        if (!v114[11])
        {
          v118 = v114[7];
          if (*(v118 + 214))
          {
            v119 = 0;
            do
            {
              v120 = GTMTLReplayController_dumpLibrary(v61, *(*(v118 + 96) + 8 * v119), *(*(v118 + 104) + 8 * v119));
              ++v119;
            }

            while (v119 < *(v118 + 214));
            v112 = *(v111 + 12);
            v103 = &unk_27F09C000;
          }
        }
      }
    }
  }

  else
  {
    GTMTLReplay_handleUnderlyingNSError(@"Failed to create replay controller temporary directory", v95);
  }

  objc_autoreleasePoolPop(contexta);
  *(v61 + 22584) = apr_array_make(pool, 128, 16);
  v121 = dispatch_semaphore_create(0);
  v122 = *(v61 + 22600);
  *(v61 + 22600) = v121;

  v123 = dispatch_group_create();
  v124 = *(v61 + 22608);
  *(v61 + 22608) = v123;

  *(v61 + 22656) = v58;
  if (v220)
  {
    v125 = v61 + 22664;
    do
    {
      *(v125 + 8) = v61;
      pthread_create(v125, 0, StartLoadingThread, v125);
      v125 += 24;
      --v58;
    }

    while (v58);
  }

  v126 = g_activityLog;
  v127 = [MEMORY[0x277CCACA8] stringWithUTF8String:**v233];
  [v126 enterLoadArchiveWithPath:v127];

  v128 = g_signpostLog;
  if (os_signpost_enabled(v128))
  {
    LOWORD(p[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v128, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "CreateDeviceResources", p, 2u);
  }

  v129 = *(v233 + 40);
  v130 = *v61;
  v241[0] = 0;
  apr_pool_create_ex(v241, 0, 0, v131);
  v132 = v241[0];
  v133 = apr_array_make(v241[0], 128, 8);
  v134 = apr_array_make(v132, 128, 8);
  GTMTLSMContext_getObjects(v129[13], v229, v134);
  if (v134->nelts >= 1)
  {
    v135 = 0;
    do
    {
      ExpandChildren(v133, *&v134->elts[8 * v135++], ht);
    }

    while (v135 < v134->nelts);
  }

  v134->nelts = 0;
  GTMTLSMContext_getObjects(v129[3], v229, v134);
  nelts = v134->nelts;
  if (nelts >= 1)
  {
    for (k = 0; k < nelts; ++k)
    {
      v138 = *&v134->elts[8 * k];
      if (!v138[6] && !v138[18] && !v138[19])
      {
        ExpandChildren(v133, v138, ht);
        nelts = v134->nelts;
      }
    }
  }

  v134->nelts = 0;
  GTMTLSMContext_getObjects(v129[1], v229, v134);
  v139 = v134->nelts;
  if (v139 >= 1)
  {
    for (m = 0; m < v139; ++m)
    {
      v141 = *&v134->elts[8 * m];
      if (!*(v141 + 48))
      {
        ExpandChildren(v133, v141, ht);
        v139 = v134->nelts;
      }
    }
  }

  GTMTLSMContext_getObjects(v129[2], v229, v133);
  GTMTLSMContext_getObjects(v129[10], v229, v133);
  v142 = *(v130 + 8);
  v143 = *(*v61 + 8);
  p[0] = 0;
  v144 = *(*(*find_entry(v143, p, 8uLL, 0) + 32) + 32);
  if (v144)
  {
    v145 = 0;
    while (1)
    {
      v146 = atomic_load((v144 + 4));
      v147 = v145 + (v146 >> 6) - 1;
      if (v147 > 0)
      {
        break;
      }

      v144 = *(v144 + 40);
      v145 = v147;
      if (!v144)
      {
        v145 = v147;
        goto LABEL_110;
      }
    }

    v147 = 0;
LABEL_110:
    v148 = v145 | (v147 << 32);
  }

  else
  {
    v148 = 0;
  }

  while (v144)
  {
    v149 = v144 + 64 + ((HIDWORD(v148) - v148) << 6);
    if ((*(v149 + 15) & 8) == 0 || *v149 >= v229)
    {
      break;
    }

    v150 = objc_autoreleasePoolPush();
    if (*(v149 + 8) == -7155)
    {
      GTMTLReplayController_defaultDispatchFunction(v61, (v144 + 64 + ((HIDWORD(v148) - v148) << 6)));
    }

    objc_autoreleasePoolPop(v150);
    v151 = atomic_load((v144 + 4));
    v152 = v148 + (v151 >> 6);
    v153 = (HIDWORD(v148) + 1);
    v148 = (v153 << 32) | v148;
    if (v153 == v152 - 1)
    {
      v148 = (v153 << 32) | v153;
      v144 = *(v144 + 40);
    }
  }

  for (n = 1; ; ++n)
  {
    p[0] = n;
    v155 = *find_entry(v142, p, 8uLL, 0);
    if (!v155)
    {
      break;
    }

    v156 = *(v155 + 32);
    if (!v156)
    {
      break;
    }

    v157 = *(v156 + 32);
    if (!v157 || (*(v157 + 79) & 8) == 0)
    {
      break;
    }

    v158 = *(v157 + 72);
    if (v158 != -7163 && v158 != -10239)
    {
      break;
    }

    CreateResourceFromStream(v61, v156, v229);
  }

  LODWORD(v160) = v133->nelts;
  if (v160 >= 1)
  {
    v161 = 0;
    do
    {
      v162 = *&v133->elts[8 * v161];
      if (v162)
      {
        v162 = *(v162 + 1);
      }

      p[0] = v162;
      v163 = *find_entry(v142, p, 8uLL, 0);
      if (v163)
      {
        v164 = *(v163 + 32);
      }

      else
      {
        v164 = 0;
      }

      CreateResourceFromStream(v61, v164, v229);
      ++v161;
      v160 = v133->nelts;
    }

    while (v161 < v160);
  }

  apr_pool_destroy(v241[0]);
  v165 = g_signpostLog;
  if (os_signpost_enabled(v165))
  {
    LODWORD(p[0]) = 67109120;
    HIDWORD(p[0]) = v160;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v165, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "%d", p, 8u);
  }

  if ((GT_SUPPORT_0 & 0x800) != 0 && (*(*(v233 + 256) + 12) || *(*(v233 + 248) + 12)))
  {
    v166 = objc_autoreleasePoolPush();
    v167 = [v228 defaultCommandQueue];
    v168 = InternalCommandBuffer(v167, @"MapSparseTextureRegions", v61 + 40);

    v169 = [v168 resourceStateCommandEncoder];
    v170 = **(v61 + 184);
    MapSparseTextureRegions(v169, *(v61 + 8), *(v233 + 256), v170);
    MapSparseTextureRegions(v169, *(v61 + 8), *(v233 + 248), v170);
    apr_pool_clear(v170);
    [v169 endEncoding];
    GTMTLReplay_commitCommandBuffer(v168);

    objc_autoreleasePoolPop(v166);
  }

  FillRequestsAlignment(*(v233 + 240), *(v233 + 40), v26);
  GroupRequestsByCapacity(*(v233 + 240), v171, v172, v173);
  v174 = *(v233 + 144);
  *(v174 + 24) = 0;
  *(v174 + 32) = 0;
  *(v174 + 16) = v174;
  *(v174 + 40) = 0;
  for (ii = apr_hash_next((v174 + 16)); ii; ii = apr_hash_next(ii))
  {
    v176 = *(*(ii + 1) + 32);
    FillRequestsAlignment(v176, *(v233 + 40), v26);
    GroupRequestsByCapacity(v176, v177, v178, v179);
  }

  AppendRestoreJobsToLoadQueue(v61, *(v233 + 240));
  AppendRestoreJobsToLoadQueue(v61, *(v233 + 232));
  SignalLoadQueueThreads(v61, *(*(v61 + 22584) + 12));
  v180 = os_signpost_id_make_with_pointer(g_signpostLog, v61);
  v181 = apr_array_make(newpool, 128, 8);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 360), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 120), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 112), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 240), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 128), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 40), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 48), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 368), v229, v181);
  qsort(v181->elts, v181->nelts, 8uLL, GTMTLSMObject_compare);
  v182 = g_signpostLog;
  v183 = v182;
  v184 = v180 - 1;
  if (v180 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v182))
  {
    v185 = v181->nelts;
    LODWORD(p[0]) = 67109120;
    HIDWORD(p[0]) = v185;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v183, OS_SIGNPOST_INTERVAL_BEGIN, v180, "Replayer-1-serial", "CreatePipelineStates %d", p, 8u);
  }

  if (v181->nelts >= 1)
  {
    v186 = 0;
    do
    {
      v187 = *&v181->elts[8 * v186];
      if (v187)
      {
        v187 = *(v187 + 1);
      }

      v188 = *(v233 + 8);
      p[0] = v187;
      v189 = *find_entry(v188, p, 8uLL, 0);
      if (v189)
      {
        v190 = *(v189 + 32);
      }

      else
      {
        v190 = 0;
      }

      CreateResourceFromStream(v61, v190, v229);
      ++v186;
    }

    while (v186 < v181->nelts);
  }

  v191 = g_signpostLog;
  v192 = v191;
  if (v184 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v191))
  {
    LOWORD(p[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v192, OS_SIGNPOST_INTERVAL_END, v180, "Replayer-1-serial", &unk_24DA93952, p, 2u);
  }

  v181->nelts = 0;
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 88), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 144), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 136), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 232), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 56), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 216), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 32), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 160), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 152), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 272), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 64), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 72), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 280), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 288), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 352), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 344), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 296), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 200), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 208), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 312), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 320), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 328), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 336), v229, v181);
  GTMTLSMContext_getObjects(*(*(v233 + 40) + 96), v229, v181);
  v193 = g_signpostLog;
  v194 = v193;
  if (v184 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v193))
  {
    v195 = v181->nelts;
    LODWORD(p[0]) = 67109120;
    HIDWORD(p[0]) = v195;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v194, OS_SIGNPOST_INTERVAL_BEGIN, v180, "Replayer-1-serial", "CreateOtherStates %d", p, 8u);
  }

  if (v181->nelts >= 1)
  {
    v196 = 0;
    do
    {
      v197 = *&v181->elts[8 * v196];
      if (v197)
      {
        v197 = *(v197 + 1);
      }

      v198 = *(v233 + 8);
      p[0] = v197;
      v199 = *find_entry(v198, p, 8uLL, 0);
      if (v199)
      {
        v200 = *(v199 + 32);
      }

      else
      {
        v200 = 0;
      }

      CreateResourceFromStream(v61, v200, v229);
      ++v196;
    }

    while (v196 < v181->nelts);
  }

  v201 = g_signpostLog;
  v202 = v201;
  if (v184 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v201))
  {
    LOWORD(p[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v202, OS_SIGNPOST_INTERVAL_END, v180, "Replayer-1-serial", &unk_24DA93952, p, 2u);
  }

  v203 = [GTMTLReplayActivityLog alloc];
  v204 = [(GTMTLReplayActivityLog *)v203 initWithLog:g_activityLog];
  RestoreOrderedResourcesFromArchive(v61, *(*(v233 + 264) + 24), *(*(v233 + 264) + 12), v204);
  RestoreVisibleFunctionTablesForFunctionIndex(v61, v229 - 1);
  RestoreIntersectionFunctionTablesForFunctionIndex(v61, v229 - 1);
  add = atomic_fetch_add((v61 + 22592), 1u);
  v206 = *(v61 + 22584);
  if (add >= *(v206 + 12))
  {
    v207 = 0;
  }

  else
  {
    v207 = *(v206 + 24) + 16 * add;
  }

  while (v207)
  {
    v208 = objc_autoreleasePoolPush();
    DoLoadJob(v61, v207, v204, 0);
    v209 = atomic_fetch_add((v61 + 22592), 1u);
    v210 = *(v61 + 22584);
    if (v209 >= *(v210 + 12))
    {
      v207 = 0;
    }

    else
    {
      v207 = *(v210 + 24) + 16 * v209;
    }

    objc_autoreleasePoolPop(v208);
  }

  dispatch_group_wait(*(v61 + 22608), 0xFFFFFFFFFFFFFFFFLL);
  *(*(v61 + 22584) + 12) = 0;
  apr_pool_destroy(newpool);
  v211 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
  v212 = *(v61 + 56);
  *(v61 + 56) = v211;

  v213 = dispatch_semaphore_create(1);
  v214 = *(v61 + 72);
  *(v61 + 72) = v213;

  v215 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v216 = *(v61 + 80);
  *(v61 + 80) = v215;

  v217 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v218 = *(v61 + 176);
  *(v61 + 176) = v217;

  *(v61 + 22576) = apr_hash_make(pool);
  *(v61 + 22624) = apr_hash_make(pool);
  *(v61 + 22632) = *(v233 + 144);
  [g_activityLog leaveActivity];
LABEL_182:

  return v61;
}

uint64_t ExpandChildren(apr_array_header_t *a1, uint64_t a2, uint64_t a3)
{
  *apr_array_push(a1) = a2;
  result = find_entry(a3, (a2 + 8), 8uLL, 0);
  if (*result)
  {
    v7 = *(*result + 32);
    if (v7)
    {
      if (*(v7 + 12) >= 1)
      {
        v8 = 0;
        do
        {
          result = ExpandChildren(a1, *(*(v7 + 24) + 8 * v8++), a3);
        }

        while (v8 < *(v7 + 12));
      }
    }
  }

  return result;
}

void CreateResourceFromStream(const char ****a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = (*a1)[2];
  v31 = a1[1];
  v7 = *(a2 + 32);
  ConstructorType = GTFenum_getConstructorType(*(v7 + 72));
  v8 = 0;
  while (1)
  {
    v9 = atomic_load((v7 + 4));
    v10 = v8 + (v9 >> 6) - 1;
    if (v10 > 0)
    {
      break;
    }

    v7 = *(v7 + 40);
    v8 = v10;
    if (!v7)
    {
      v8 = v10;
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = v8 | (v10 << 32);
  v12 = v31;
  while (v7)
  {
    v13 = v7 + 64;
    v14 = v7 + 64 + ((HIDWORD(v11) - v11) << 6);
    if ((*(v14 + 15) & 8) == 0 || *v14 >= a3)
    {
      break;
    }

    if (*(v14 + 8) != -16120 || (GT_SUPPORT_0 & 0x80000) == 0)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(v14 + 8);
      if (v16 <= -14803)
      {
        if (v16 == -16313)
        {
          goto LABEL_23;
        }

        if (v16 != -16236)
        {
          v18 = -14969;
LABEL_20:
          if (v16 != v18 || ConstructorType != 80)
          {
            GTMTLReplayController_defaultDispatchFunction(v5, (v13 + ((HIDWORD(v11) - v11) << 6)));
          }
        }
      }

      else
      {
        v17 = (v16 + 10238);
        if (v17 > 0x30)
        {
          goto LABEL_16;
        }

        if (((1 << (v16 - 2)) & 0x1100000000005) == 0)
        {
          if (v17 != 1)
          {
LABEL_16:
            v18 = -14802;
            goto LABEL_20;
          }

LABEL_23:
          if ((GT_SUPPORT_0 & 0x80000) == 0)
          {
            v28 = v5;
            v19 = GTTraceFunc_argumentBytesWithMap((v13 + ((HIDWORD(v11) - v11) << 6)), *(v14 + 13), v6);
            v20 = [v31 deviceForKey:*v19];
            v21 = v20;
            if ((qword_27F09CF90 & 4) != 0)
            {
              v22 = 32;
            }

            else
            {
              v22 = *(v19 + 3) & 0xFFFFFFFFFFEFFFFFLL;
            }

            v23 = [v20 newBufferWithLength:*(v19 + 2) options:{v22, v6, v28}];
            if (v23)
            {
              [v31 setBuffer:v23 forKey:*(v19 + 1)];
            }

            v6 = v27;
            v5 = v29;
          }
        }
      }

      objc_autoreleasePoolPop(v15);
      v12 = v31;
    }

    v24 = atomic_load((v7 + 4));
    v25 = v11 + (v24 >> 6);
    v26 = (HIDWORD(v11) + 1);
    v11 = (v26 << 32) | v11;
    if (v26 == v25 - 1)
    {
      v11 = (v26 << 32) | v26;
      v7 = *(v7 + 40);
    }
  }
}

void MapSparseTextureRegions(void *a1, void *a2, uint64_t a3, apr_pool_t *a4)
{
  v7 = a1;
  v35 = a2;
  v8 = apr_array_make(a4, 8, 48);
  arr = apr_array_make(a4, 8, 48);
  v37 = apr_array_make(a4, 8, 8);
  v36 = apr_array_make(a4, 8, 8);
  v34 = v7;
  v33 = [v7 device];
  if (*(a3 + 12) < 1)
  {
    v12 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *(a3 + 24);
      v15 = v14 + v9;
      v16 = *(v14 + v9 + 8);
      if (v16 != v11)
      {
        if (v8->nelts >= 1)
        {
          v41 = 0uLL;
          v42 = 0;
          [v12 textureType];
          [v12 pixelFormat];
          [v12 sampleCount];
          if (v33)
          {
            objc_msgSend_sparseTileSizeWithTextureType_pixelFormat_sampleCount_(v33);
          }

          else
          {
            v41 = 0uLL;
            v42 = 0;
          }

          elts = v8->elts;
          v18 = arr->elts;
          nelts = v8->nelts;
          v39 = v41;
          v40 = v42;
          [v33 convertSparsePixelRegions:elts toTileRegions:v18 withTileSize:&v39 alignmentMode:0 numRegions:{nelts, v33}];
          [v34 updateTextureMappings:v12 mode:0 regions:arr->elts mipLevels:v37->elts slices:v36->elts numRegions:v8->nelts];
          arr->nelts = 0;
          v8->nelts = 0;
          v37->nelts = 0;
          v36->nelts = 0;
          v16 = *(v15 + 8);
        }

        v20 = [v35 textureForKey:{v16, v33}];

        v13 = [v20 firstMipmapInTail];
        v11 = *(v15 + 8);
        v12 = v20;
      }

      if (v13 >= *(v15 + 34))
      {
        apr_array_push(arr);
        v21 = apr_array_push(v8);
        v22 = *(v14 + v9 + 44);
        v23 = *(v14 + v9 + 46);
        v24 = vmovl_u16(*(v14 + v9 + 36));
        *&v25 = v24.u32[0];
        *(&v25 + 1) = v24.u32[1];
        v26 = v25;
        *&v25 = v24.u32[2];
        *(&v25 + 1) = v24.u32[3];
        *v21 = v26;
        v21[1] = v25;
        *(v21 + 4) = v22;
        *(v21 + 5) = v23;
        v27 = *(v15 + 34);
        *apr_array_push(v37) = v27;
        v28 = *(v14 + v9 + 32);
        *apr_array_push(v36) = v28;
      }

      ++v10;
      v9 += 448;
    }

    while (v10 < *(a3 + 12));
  }

  v29 = v33;
  if (v8->nelts > 0)
  {
    v41 = 0uLL;
    v42 = 0;
    [v12 textureType];
    [v12 pixelFormat];
    [v12 sampleCount];
    if (v33)
    {
      objc_msgSend_sparseTileSizeWithTextureType_pixelFormat_sampleCount_(v33);
    }

    else
    {
      v41 = 0uLL;
      v42 = 0;
    }

    v30 = v8->elts;
    v31 = arr->elts;
    v32 = v8->nelts;
    v39 = v41;
    v40 = v42;
    [v33 convertSparsePixelRegions:v30 toTileRegions:v31 withTileSize:&v39 alignmentMode:0 numRegions:{v32, v33}];
    [v34 updateTextureMappings:v12 mode:0 regions:arr->elts mipLevels:v37->elts slices:v36->elts numRegions:v8->nelts];
  }
}

void FillRequestsAlignment(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 12);
  if (v6 >= 1)
  {
    v7 = 0;
    for (i = 0; i < v6; ++i)
    {
      v9 = *(a1 + 24);
      if (*(v9 + v7) == 80)
      {
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v10 = v9 + v7;
        GTMTLSMContext_getTextureDescriptor(a2, *(v9 + v7 + 8), *(v9 + v7 + 16), &v25);
        v11 = WORD1(v27);
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        GTMTLPixelFormatGetInfoForDevice(v23, v5, WORD1(v27));
        v13 = xmmword_24DA8BC50;
        if ((~DWORD2(v23[0]) & 0x60) != 0)
        {
          v12.i32[0] = 0;
          v14.i64[1] = v18;
          v14.i64[0] = 0;
          v13.i32[0] = WORD4(v23[0]) & 0x2000;
          v15 = vdupq_lane_s32(*&vceqq_s32(v13, v12), 0);
          v16.i64[1] = v18;
          v16.i64[0] = 4;
          v13 = vbslq_s8(v15, v14, v16);
        }

        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        v18 = v13.i64[1];
        memset(v19, 0, sizeof(v19));
        v17 = v13.i8[0];
        GTMTLGetTextureLevelInfoForDeviceWithOptions(v19, v5, v11, DWORD2(v26), v27, HIWORD(v26), HIBYTE(v27), *(v10 + 34), v13.i64[0]);
        *(v10 + 60) = WORD4(v20);
        *(v10 + 62) = v17;
        v6 = *(a1 + 12);
      }

      v7 += 448;
    }
  }
}

void GroupRequestsByCapacity(apr_array_header_t *a1, uint64_t a2, uint64_t a3, apr_allocator_t *a4)
{
  newpool = 0;
  apr_pool_create_ex(&newpool, a1->pool, 0, a4);
  v5 = newpool;
  v6 = apr_array_copy(newpool, a1);
  qsort(v6->elts, v6->nelts, v6->elt_size, CompareRequestsBySize);
  a1->nelts = 0;
  while (v6->nelts)
  {
    elts = v6->elts;
    v8 = apr_array_push(a1);
    memcpy(v8, elts, 0x1C0uLL);
    v9 = RequestSize(elts);
    nelts = v6->nelts;
    v6->nelts = 0;
    if (nelts < 2)
    {
      break;
    }

    v11 = v9;
    v12 = 448 * nelts;
    v13 = 448;
    do
    {
      v14 = v6->elts;
      v15 = RequestAlignment(&v14[v13]);
      v16 = (v11 + v15 - 1) & -v15;
      v17 = v16 + RequestSize(&v14[v13]);
      v18 = v6;
      if (v17 <= 0x2000000)
      {
        v11 = v16 + RequestSize(&v14[v13]);
        v18 = a1;
      }

      v19 = apr_array_push(v18);
      memcpy(v19, &v14[v13], 0x1C0uLL);
      v13 += 448;
    }

    while (v12 != v13);
  }

  apr_pool_destroy(v5);
}

uint64_t AppendRestoreJobsToLoadQueue(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 12) >= 1)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = apr_array_push(*(v3 + 22584));
      *v5 = 0;
      v6 = *(a2 + 24) + 448 * v4;
      v5[1] = v6;
      v7 = *(a2 + 12);
      result = CountRequestsWithinCapacity(v6, (v7 - v4));
      *(v5 + 1) = result;
      v4 += result;
    }

    while (v4 < v7);
  }

  return result;
}

intptr_t SignalLoadQueueThreads(intptr_t result, int a2)
{
  atomic_store(0, (result + 22592));
  if (*(result + 22656) >= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = *(result + 22656);
  }

  if (v2 >= 1)
  {
    v3 = result;
    do
    {
      dispatch_group_enter(*(v3 + 22608));
      result = dispatch_semaphore_signal(*(v3 + 22600));
      --v2;
    }

    while (v2);
  }

  return result;
}

void RestoreOrderedResourcesFromArchive(const char ****a1, uint64_t a2, uint64_t a3, void *a4)
{
  v131 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (s_logUsingOsLog == 1)
  {
    v6 = gt_tagged_log(0xEu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "s";
      if (a3 == 1)
      {
        v7 = "";
      }

      *buf = 67109378;
      *&buf[4] = a3;
      *&buf[8] = 2080;
      *&buf[10] = v7;
      _os_log_impl(&dword_24D764000, v6, OS_LOG_TYPE_DEFAULT, "Restoring %d ordered resource%s", buf, 0x12u);
    }
  }

  else
  {
    v8 = *MEMORY[0x277D85E08];
    v9 = "s";
    if (a3 == 1)
    {
      v9 = "";
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Restoring %d ordered resource%s", a3, v9];
    fprintf(v8, "%s\n", [v10 UTF8String]);
  }

  v11 = os_signpost_id_make_with_pointer(g_signpostLog, a1);
  [v5 enterRestoreResources:a2 count:a3];
  v109 = a1[3];
  v104 = [a1[1] defaultDevice];
  v12 = [v104 sharedMemorySize];
  v13 = g_signpostLog;
  v14 = v13;
  spid = v11;
  v15 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 67109120;
    *&buf[4] = a3;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Replayer-2-restore", "RestoreOrderedResourcesFromArchive x%d", buf, 8u);
  }

  v105 = v5;

  if (a3 >= 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = a3;
    v19 = 0;
    v119 = v18;
    v120 = 4 * v12 / 0xAuLL;
    v20 = MEMORY[0x277D86228];
    v112 = v15;
    while (1)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = a2 + 448 * v16;
      v23 = RequestSize(v22);
      v24 = v20;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        v25 = *(v22 + 8);
        v26 = *(v22 + 24);
        *buf = 134218498;
        *&buf[4] = v25;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        *&buf[22] = 2082;
        *&buf[24] = v26;
        _os_signpost_emit_with_name_impl(&dword_24D764000, v20, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Replayer-6-high", "%llu. %{xcode:size-in-bytes}zu %{public}s", buf, 0x20u);
      }

      if (*v22 == 16)
      {
        v123 = v16;
        v124 = v23;
        v113 = v21;
        v45 = **a1;
        v46 = a1[23];
        v47 = a1[1];
        v48 = *(v22 + 24);
        v111 = v47;
        v49 = [v47 accelerationStructureForKey:*(v22 + 8)];
        v50 = a1[3];
        FileWithFilename = GTCaptureArchive_getFileWithFilename(v45, v48);
        v117 = v50;
        v52 = v50;
        v53 = v46;
        v54 = [v52 bufferWithLength:*(FileWithFilename + 8) alignment:32];
        GTCaptureArchive_fillBuffer(v45, v53, v48, [v54 contents], *(FileWithFilename + 8), 0);
        v55 = v54;
        v56 = [a1[1] defaultDevice];
        v110 = v56;
        v115 = v55;
        if ([v55 length] > 0x17)
        {
          v107 = v53;
          v57 = v19;
          v58 = [v55 contents];
          v59 = *v58;
          v60 = v58[1];
          v61 = v58[2];
          v62 = *(FileWithFilename + 8);
          v63 = objc_msgSend_size(v49);
          v64 = [v56 isCompatibleWithAccelerationStructure:v59];
          v65 = v60 > v62 || v61 > v63;
          if (v65 || (v64 & 1) == 0)
          {
            apr_pool_clear(*v107);
            v15 = v112;
            v21 = v113;
            v20 = MEMORY[0x277D86228];
            v19 = v57;
            v42 = v111;
            v16 = v123;
            v23 = v124;
          }

          else
          {
            v106 = [v117 accelerationStructureCommandEncoder];
            v21 = v113;
            v19 = v57;
            if (*(v22 + 40))
            {
              if (s_logUsingOsLog)
              {
                v66 = gt_tagged_log(0xEu);
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
                {
                  v67 = *(v22 + 8);
                  v68 = [v49 label];
                  v69 = [v68 UTF8String];
                  v70 = *(v22 + 24);
                  v71 = *(v22 + 32);
                  v72 = *(v22 + 48);
                  *buf = 134219010;
                  *&buf[4] = v67;
                  *&buf[12] = 2080;
                  *&buf[14] = v69;
                  *&buf[22] = 2080;
                  *&buf[24] = v70;
                  LOWORD(v126) = 2048;
                  *(&v126 + 2) = v71;
                  WORD5(v126) = 1024;
                  HIDWORD(v126) = v72;
                  _os_log_impl(&dword_24D764000, v66, OS_LOG_TYPE_DEFAULT, "Restoring instance acceleration structure %llu '%s' from file '%s' [serializedSize = %llu, primitiveAccelerationStructuresCount = %d]", buf, 0x30u);
                }
              }

              else
              {
                v79 = *MEMORY[0x277D85E08];
                v80 = MEMORY[0x277CCACA8];
                v81 = *(v22 + 8);
                v66 = [v49 label];
                v82 = [v80 stringWithFormat:@"Restoring instance acceleration structure %llu '%s' from file '%s' [serializedSize = %llu, primitiveAccelerationStructuresCount = %d]", v81, -[NSObject UTF8String](v66, "UTF8String"), *(v22 + 24), *(v22 + 32), *(v22 + 48)];
                fprintf(v79, "%s\n", [v82 UTF8String]);
              }

              v42 = v111;

              v83 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(v22 + 48)];
              v16 = v123;
              if (*(v22 + 48))
              {
                v84 = 0;
                do
                {
                  v85 = [v111 accelerationStructureForKey:*(*(v22 + 40) + 8 * v84)];
                  [v83 addObject:v85];

                  ++v84;
                }

                while (v84 < *(v22 + 48));
              }

              v86 = [MEMORY[0x277CCACA8] stringWithFormat:@"deserializeInstanceAccelerationStructure %llu", *(v22 + 8)];
              v87 = v106;
              [v106 insertDebugSignpost:v86];

              v88 = [v115 heapBuffer];
              [v106 deserializeInstanceAccelerationStructure:v49 primitiveAccelerationStructures:v83 fromBuffer:v88 serializedBufferOffset:{objc_msgSend(v115, "heapLocation")}];

              v15 = v112;
              v21 = v113;
              v23 = v124;
            }

            else
            {
              if (s_logUsingOsLog)
              {
                v73 = gt_tagged_log(0xEu);
                v23 = v124;
                if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                {
                  v74 = *(v22 + 8);
                  v75 = [v49 label];
                  v76 = [v75 UTF8String];
                  v77 = *(v22 + 24);
                  v78 = *(v22 + 32);
                  *buf = 134218754;
                  *&buf[4] = v74;
                  *&buf[12] = 2080;
                  *&buf[14] = v76;
                  *&buf[22] = 2080;
                  *&buf[24] = v77;
                  LOWORD(v126) = 2048;
                  *(&v126 + 2) = v78;
                  _os_log_impl(&dword_24D764000, v73, OS_LOG_TYPE_DEFAULT, "Restoring primitive acceleration structure %llu '%s' from file '%s' [serializedSize = %llu]", buf, 0x2Au);
                }

                v15 = v112;
              }

              else
              {
                v89 = *MEMORY[0x277D85E08];
                v90 = MEMORY[0x277CCACA8];
                v91 = *(v22 + 8);
                v73 = [v49 label];
                v92 = [v90 stringWithFormat:@"Restoring primitive acceleration structure %llu '%s' from file '%s' [serializedSize = %llu]", v91, -[NSObject UTF8String](v73, "UTF8String"), *(v22 + 24), *(v22 + 32)];
                fprintf(v89, "%s\n", [v92 UTF8String]);

                v15 = v112;
                v23 = v124;
              }

              v42 = v111;

              v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"deserializePrimitiveAccelerationStructure %llu", *(v22 + 8)];
              v87 = v106;
              [v106 insertDebugSignpost:v93];

              v83 = [v115 heapBuffer];
              [v106 deserializePrimitiveAccelerationStructure:v49 fromBuffer:v83 serializedBufferOffset:{objc_msgSend(v115, "heapLocation")}];
              v16 = v123;
            }

            apr_pool_clear(*v107);
            v20 = MEMORY[0x277D86228];
          }
        }

        else
        {
          apr_pool_clear(*v53);
          v15 = v112;
          v21 = v113;
          v20 = MEMORY[0x277D86228];
          v16 = v123;
          v23 = v124;
          v42 = v111;
        }
      }

      else
      {
        if (*v22 != 57)
        {
          goto LABEL_47;
        }

        v27 = *a1;
        Object = GTMTLSMContext_getObject(*(*a1)[5], *(v22 + 8), *(v22 + 16));
        v29 = *(Object + 36);
        v114 = v29;
        v116 = v19;
        v30 = Object[14];
        v31 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(v30);
        v32 = [a1[1] defaultDevice];
        v122 = v16;
        v33 = [v32 newIndirectCommandBufferWithDescriptor:v31 maxCommandCount:v29 options:256];

        v34 = a1[23];
        v35 = *v34;
        Data = GTCaptureArchive_readData(*v27, v34, *(v22 + 24), *v34, 0);
        v130 = 0;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        memset(buf, 0, sizeof(buf));
        GTMTLSMContext_indirectCommandBufferResources(buf, v27[5], v27[11], v35);
        v37 = objc_msgSend_size(v33);
        [a1[1] restoreIndirectCommandBufferDataMap];
        v38 = v17;
        v40 = v39 = v21;
        v41 = v37;
        v15 = v112;
        GTMTLEncodeIndirectCommandBufferWithRange(v33, 0, v41, v30, Data, buf, v40);

        v21 = v39;
        v17 = v38;
        v42 = v33;
        v16 = v122;
        v43 = [a1[1] indirectCommandBufferForKey:*(v22 + 8)];
        v44 = [a1[3] blitCommandEncoder];
        [v44 copyIndirectCommandBuffer:v42 sourceRange:0 destination:v114 destinationIndex:{v43, 0}];

        v20 = MEMORY[0x277D86228];
        apr_pool_clear(v35);

        v19 = v116;
      }

LABEL_47:
      v94 = g_signpostLog;
      v95 = v94;
      if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v94))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_24D764000, v95, OS_SIGNPOST_INTERVAL_END, spid, "Replayer-6-high", &unk_24DA93952, buf, 2u);
      }

      v19 += v23;

      if (v19 >= v120)
      {
        if (s_logUsingOsLog == 1)
        {
          v96 = gt_tagged_log(0xEu);
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_24D764000, v96, OS_LOG_TYPE_DEFAULT, "RestoreOrderedResourcesFromArchive ran over the shared blit buffer usage limit, flushing shared blit buffer", buf, 2u);
          }
        }

        else
        {
          v97 = *MEMORY[0x277D85E08];
          v96 = [MEMORY[0x277CCACA8] stringWithFormat:@"RestoreOrderedResourcesFromArchive ran over the shared blit buffer usage limit, flushing shared blit buffer"];
          fprintf(v97, "%s\n", [v96 UTF8String]);
        }

        v98 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"RestoreOrderedResourcesFromArchive"];
        v99 = [v109 commandBuffer];
        [v99 setLabel:v98];

        [v109 commitCommandBuffer];
        v19 = 0;
      }

      v17 += v23;
      objc_autoreleasePoolPop(v21);
      if (++v16 == v119)
      {
        goto LABEL_59;
      }
    }
  }

  v17 = 0;
LABEL_59:
  v100 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"RestoreOrderedResourcesFromArchive"];
  v101 = [v109 commandBuffer];
  [v101 setLabel:v100];

  [v109 commitCommandBuffer];
  v102 = g_signpostLog;
  v103 = v102;
  if (v15 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v102))
  {
    *buf = 134217984;
    *&buf[4] = v17;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v103, OS_SIGNPOST_INTERVAL_END, spid, "Replayer-2-restore", "%{xcode:size-in-bytes}zu", buf, 0xCu);
  }

  [v105 leaveActivity];
}