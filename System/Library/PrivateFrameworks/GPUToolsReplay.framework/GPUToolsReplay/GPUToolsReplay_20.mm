id MTLDevice_newLibraryWithData(void *a1, uint64_t a2, void *a3)
{
  v9 = 0;
  v4 = [a1 newLibraryWithData:a2 error:&v9];
  v5 = v9;
  v6 = v5;
  if (a3)
  {
    v7 = v5;
    *a3 = v6;
  }

  ValidateLibrary(v4);
  objc_claimAutoreleasedReturnValue();

  return v4;
}

void GTMTLReplay_commitCommandBuffer(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    LogCommandBuffer(@"Committed", v1);
    AddHandlers(v2);
    [v2 commit];
    v1 = v2;
    if ((qword_27F09CF90 & 2) != 0)
    {
      [v2 waitUntilCompleted];
      v1 = v2;
    }
  }
}

void LogCommandBuffer(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a2;
  v6 = v5;
  if (s_logUsingOsLog == 1)
  {
    v7 = gt_tagged_log(0xBu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 label];
      if (v8)
      {
        v2 = [v6 label];
        v9 = [v2 UTF8String];
      }

      else
      {
        v9 = "no label";
      }

      *buf = 138412802;
      v15 = v4;
      v16 = 2048;
      v17 = v6;
      v18 = 2080;
      v19 = v9;
      _os_log_impl(&dword_24D764000, v7, OS_LOG_TYPE_INFO, "%@: %lx (%s)", buf, 0x20u);
      if (v8)
      {
      }
    }
  }

  else
  {
    v10 = *MEMORY[0x277D85E08];
    v11 = MEMORY[0x277CCACA8];
    v7 = [v5 label];
    if (v7)
    {
      v2 = [v6 label];
      v12 = [v2 UTF8String];
    }

    else
    {
      v12 = "no label";
    }

    v13 = [v11 stringWithFormat:@"%@: %lx (%s)", v4, v6, v12];
    fprintf(v10, "%s\n", [v13 UTF8String]);

    if (v7)
    {
    }
  }
}

void AddHandlers(void *a1)
{
  v1 = a1;
  if (GTMTLReplayDefaults_logCommandBufferHandlers())
  {
    [v1 addScheduledHandler:&__block_literal_global_722];
  }

  [v1 addCompletedHandler:&__block_literal_global_55];
}

void __AddHandlers_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status] == 5)
  {
    v2 = GTMTLReplay_dictionaryFromCommandBuffer(v3);
    GTMTLReplay_handleCommandBufferError(v2);
  }

  if (GTMTLReplayDefaults_logCommandBufferHandlers())
  {
    LogCommandBuffer(@"Completed", v3);
  }
}

void GTMTLReplay_commitCommandBufferAndWaitUntilSubmitted(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1;
    LogCommandBuffer(@"Commit and wait until submitted", v1);
    AddHandlers(v2);
    [v2 commitAndWaitUntilSubmitted];
    v1 = v2;
    if ((qword_27F09CF90 & 2) != 0)
    {
      [v2 waitUntilCompleted];
      v1 = v2;
    }
  }
}

id GTMTLReplayClient_preferDevice(uint64_t a1)
{
  Device = GTMTLSMContext_getDevice(**(a1 + 40), *(a1 + 88));
  v3 = (qword_27F09CF90 >> 21) & 1;
  if (*(Device[5] + 102) != 1)
  {
    LODWORD(v3) = 1;
  }

  v4 = v3 == 0;
  v5 = 0x200000;
  if (v4)
  {
    v5 = 0;
  }

  qword_27F09CF90 = v5 | qword_27F09CF90 & 0xFFFFFFFFFFDFFFFFLL;
  qword_27F09CF90 = qword_27F09CF90 & 0xFFFFFFFFFFDFFFFFLL | (((GTCaptureArchive_getFileWithFilename(*a1, "is_almond") | qword_27F09CF90 & 0x200000) != 0) << 21);
  v6 = MTLCreateSystemDefaultDevice();
  v7 = DEVICEOBJECT(v6);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    [v6 setShaderDebugInfoCaching:1];
  }

  if ((qword_27F09CF90 & 0x200000) != 0)
  {
    v9 = DEVICEOBJECT(v6);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      [v6 allowLibrariesFromOtherPlatforms];
    }
  }

  return v6;
}

void __BeginDebugArchivePath_block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x253033EF0]();
  v3 = v2 - 0x10000000;
  if (v2 - 0x10000000 >= 0x18000000)
  {
    v3 = 402653184;
  }

  if (v2 >> 28)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(*(a1 + 32) + 8);

  GTMTLReplayController_optimizeRestores(v5, v4);
}

uint64_t CleanupSandboxExtensionURL(void *a1)
{
  [a1 stopAccessingSecurityScopedResource];

  return 0;
}

uint64_t __Block_byref_object_copy__827(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24D8A0038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

dispatch_data_t NewResourceData(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v200[1] = *MEMORY[0x277D85DE8];
  v12 = a1;
  v148 = a2;
  v147 = a3;
  v142 = a4;
  v13 = a9;
  concat = MEMORY[0x277D85CC8];
  v15 = MEMORY[0x277D85CC8];
  v128 = v13;
  size = dispatch_data_get_size(v13);
  v16 = [v12 bytes];
  v129 = v12;
  v17 = [v12 length];
  if (v17 < 9)
  {
LABEL_56:
    concat = concat;
    v124 = concat;
    goto LABEL_57;
  }

  v18 = v17;
  v19 = 8;
  v20 = 0x277CCA000uLL;
  v146 = v16;
  v143 = v17;
  while (1)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v21;
    v23 = (v16 + v19);
    v24 = *(v16 + v19 + 4);
    if (v24 > -10237)
    {
      if (v24 != -10236)
      {
        if (v24 == -10142)
        {
          v172[0] = *(v23 + 15);
          *&v172[11] = *(v23 + 37);
          *&v172[13] = *(v23 + 41);
          *&v172[15] = *(v23 + 45);
          v172[17] = *(v23 + 49);
          *&v172[3] = *(v23 + 21);
          *&v172[5] = *(v23 + 25);
          *&v172[7] = *(v23 + 29);
          *&v172[9] = *(v23 + 33);
          *&v172[1] = *(v23 + 17);
          v31 = *(v23 + 79);
          v179 = *(v23 + 75);
          v180 = v31;
          v181 = *(v23 + 83);
          v32 = *(v23 + 55);
          v33 = *(v23 + 63);
          v175 = *(v23 + 59);
          v176 = v33;
          v34 = *(v23 + 71);
          v177 = *(v23 + 67);
          v178 = v34;
          v173 = *(v23 + 51);
          v174 = v32;
          v198 = 304;
          appended = AppendString_13794(&appended, (v23 + 9), &v198);
          v35 = v23 + ((v198 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 36;
          v36 = *(v35 + 112);
          v189 = *(v35 + 96);
          v190 = v36;
          v191 = *(v35 + 128);
          v37 = *(v35 + 48);
          v185 = *(v35 + 32);
          v186 = v37;
          v38 = *(v35 + 80);
          v187 = *(v35 + 64);
          v188 = v38;
          v39 = *(v35 + 16);
          v183 = *v35;
          v184 = v39;
          v40 = [*(v20 + 3240) stringWithUTF8String:appended];
          v41 = [v148 objectForKeyedSubscript:v40];
          v42 = [v147 objectForKeyedSubscript:v40];
          v43 = v22;
          v44 = concat;
          v45 = [v42 unsignedLongLongValue];

          v46 = (*a7)++;
          v47 = a6 + 80 * v46;
          v48 = v172[0];
          v49 = [v41 length];
          *v47 = v45;
          *(v47 + 8) = v48;
          v20 = 0x277CCA000;
          *(v47 + 16) = a8;
          *(v47 + 24) = size;
          *(v47 + 28) = v49;
          *(v47 + 32) = 0;
          *(v47 + 34) = 49;
          *(v47 + 35) = 0u;
          *(v47 + 51) = 0u;
          *(v47 + 64) = 0u;
          v50 = [v41 bytes];
          v51 = [v41 length];
          destructor[0] = MEMORY[0x277D85DD0];
          destructor[1] = 3221225472;
          destructor[2] = __NewResourceData_block_invoke_3;
          destructor[3] = &unk_279657CF8;
          v171 = v41;
          v52 = v41;
          v53 = dispatch_data_create(v50, v51, 0, destructor);
          concat = dispatch_data_create_concat(v44, v53);

          v22 = v43;
          v18 = v143;
          size = size + dispatch_data_get_size(v53);

          v16 = v146;
        }

        goto LABEL_25;
      }

LABEL_12:
      v144 = v21;
      memset(v172, 0, 104);
      DYTraceDecode_MTLTexture_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage(v172, v16 + v19, *v23 - 36, 0);
      v54 = v172[9];
      v55 = [*(v20 + 3240) stringWithUTF8String:v172[9]];
      v56 = [v148 objectForKeyedSubscript:v55];

      v57 = [*(v20 + 3240) stringWithUTF8String:v54];
      v58 = [v147 objectForKeyedSubscript:v57];
      v59 = [v58 unsignedLongLongValue];

      v156 = v59;
      v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v59];
      v161 = [v142 objectForKeyedSubscript:v60];

      v61 = [v56 bytes];
      v163 = v56;
      v62 = [v56 length];
      v150 = v19;
      if (v61 && v62 >= 0x10 && *v61 == 0x63617074757265)
      {
        if (*(v61 + 10) == 1)
        {
          v154 = *(v61 + 16);
        }

        else
        {
          v154 = 0;
        }

        if (*v61 == 0x63617074757265)
        {
          v96 = *(v61 + 12);
          if (*(v61 + 8) == 1)
          {
            v96 += 16;
          }

          v153 = v96 + v61;
        }

        else
        {
          v153 = v61;
        }

        v63 = size;
        if (v154)
        {
          v97 = 0;
          v98 = 0;
          v99 = (v61 + 64);
          do
          {
            data1a = concat;
            *(a5 + 34) = *(v99 - 5);
            v100 = [v161 objectForKeyedSubscript:@"DependencyGraphRequestedTextureSlice"];
            v101 = [v100 unsignedLongLongValue];
            v102 = v172[8];
            if (v101)
            {
              v102 = v101;
            }

            v166 = v102;

            v103 = [v161 objectForKeyedSubscript:@"DependencyGraphRequestedTextureLevel"];
            v104 = [v103 unsignedLongLongValue];
            if (v104)
            {
              v105 = v104;
            }

            else
            {
              v105 = v172[7];
            }

            v106 = [v161 objectForKeyedSubscript:@"DependencyGraphRequestedTextureDepthPlane"];
            v107 = [v106 unsignedLongLongValue];
            v108 = v172[3];

            v109 = [v161 objectForKeyedSubscript:@"DependencyGraphRequestedTextureAttachmentIndex"];
            v110 = [v109 unsignedLongLongValue];
            if (v110)
            {
              v111 = v110;
            }

            else
            {
              v111 = v98;
            }

            v112 = (*a7)++;
            if (v107)
            {
              v113 = v107;
            }

            else
            {
              v113 = v108;
            }

            v114 = *(v99 - 5);
            if (v114 == 255 || v114 == 260)
            {
              LOWORD(v114) = 252;
              if (v111)
              {
                LOWORD(v114) = 253;
              }
            }

            v115 = v172[0];
            v116 = *v99;
            v117 = a6 + 80 * v112;
            v118 = v172[4];
            v119 = v172[5];
            v120 = v172[6];
            *v117 = v156;
            *(v117 + 8) = v115;
            *(v117 + 16) = a8;
            *(v117 + 24) = v63;
            *(v117 + 28) = v116;
            *(v117 + 32) = 0;
            *(v117 + 34) = 1;
            *(v117 + 35) = 0;
            *(v117 + 42) = 0;
            *(v117 + 46) = v113;
            *(v117 + 48) = v118;
            *(v117 + 52) = v119;
            *(v117 + 54) = v120;
            *(v117 + 56) = v114;
            *(v117 + 64) = vmovn_s64(*&v172[10]);
            *(v117 + 72) = 0;
            *(v117 + 74) = v166;
            *(v117 + 76) = v105;
            *(v117 + 77) = v111;
            *(v117 + 78) = 0;
            v121 = *v99;
            v192[0] = MEMORY[0x277D85DD0];
            v192[1] = 3221225472;
            v192[2] = __NewResourceData_block_invoke_2;
            v192[3] = &unk_279657CF8;
            v193 = v163;
            v122 = dispatch_data_create((v153 + v97), v121, 0, v192);
            v64 = dispatch_data_create_concat(data1a, v122);

            v123 = dispatch_data_get_size(v122);
            v97 += v123;
            v63 = (v63 + v123);

            ++v98;
            v99 += 12;
            concat = v64;
          }

          while (v154 != v98);
          goto LABEL_19;
        }
      }

      else
      {
        v63 = size;
      }

      v64 = concat;
LABEL_19:
      size = v63;

      concat = v64;
      v22 = v144;
      v16 = v146;
      v18 = v143;
      v19 = v150;
      v20 = 0x277CCA000;
      goto LABEL_25;
    }

    if (v24 == -16236)
    {
      goto LABEL_12;
    }

    if (v24 == -10240)
    {
      break;
    }

LABEL_25:
    objc_autoreleasePoolPop(v22);
    v94 = *v23;
    if ((*(v23 + 33) & 0x10) != 0)
    {
      v95 = *v23;
      do
      {
        v23 = (v23 + v94);
        v94 = *v23;
        v95 += v94;
      }

      while ((*(v23 + 33) & 0x20) == 0);
    }

    else
    {
      v95 = *v23;
    }

    v19 += v95;
    if (v19 >= v18)
    {
      goto LABEL_56;
    }
  }

  v149 = v19;
  *v172 = *(v23 + 3);
  v198 = 28;
  v172[2] = AppendString_13794(&v172[2], (v23 + 9), &v198);
  *data1 = *(v23 + ((v198 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 36);
  *&v172[3] = *data1;
  v25 = [*(v20 + 3240) stringWithUTF8String:v172[2]];
  if (![v25 hasPrefix:@"MLIntermediateData"])
  {
    v29 = [v148 objectForKeyedSubscript:v25];
    goto LABEL_21;
  }

  v26 = MEMORY[0x277CCAAB0];
  v27 = v25;
  v28 = [v148 objectForKeyedSubscript:v25];
  v197 = 0;
  v29 = [v26 archivedDataWithRootObject:v28 requiringSecureCoding:0 error:&v197];
  v30 = v197;

  if (v29)
  {

    v25 = v27;
LABEL_21:
    v65 = [*(v20 + 3240) stringWithFormat:@"%@-Offsets", v25];
    [v148 objectForKeyedSubscript:v65];
    v164 = v162 = v25;
    if (v164)
    {
      v66 = MEMORY[0x277CCAAC8];
      v67 = v25;
      v68 = MEMORY[0x277CBEB98];
      v69 = objc_opt_class();
      v70 = objc_opt_class();
      data1b = concat;
      v71 = [v68 setWithObjects:{v69, v70, objc_opt_class(), 0}];
      v196 = 0;
      v72 = [v66 unarchivedObjectOfClasses:v71 fromData:v164 error:&v196];
      v73 = v196;

      v74 = [v147 objectForKeyedSubscript:v67];
      v141 = [v74 unsignedLongLongValue];

      v75 = (*a7)++;
      v157 = v65;
      v76 = a6 + 80 * v75;
      v77 = v172[1];
      v139 = [v29 length];

      v155 = [v72 objectForKeyedSubscript:@"version"];
      v138 = [v155 unsignedLongLongValue];
      v152 = [v72 objectForKeyedSubscript:@"headerBufferOffset"];
      v136 = [v152 unsignedLongLongValue];
      v145 = [v72 objectForKeyedSubscript:@"innerNodeBufferOffset"];
      v135 = [v145 unsignedLongLongValue];
      v140 = [v72 objectForKeyedSubscript:@"leafNodeBufferOffset"];
      v133 = [v140 unsignedLongLongValue];
      v137 = [v72 objectForKeyedSubscript:@"primitiveBufferOffset"];
      v132 = [v137 unsignedLongLongValue];
      v134 = [v72 objectForKeyedSubscript:@"geometryBufferOffset"];
      v131 = [v134 unsignedLongLongValue];
      [v72 objectForKeyedSubscript:@"instanceTransformBufferOffset"];
      v79 = v78 = v22;
      v130 = [v79 unsignedLongLongValue];
      v80 = [v72 objectForKeyedSubscript:@"perPrimitiveDataBufferOffset"];
      LODWORD(v74) = [v80 unsignedLongLongValue];
      v81 = [v72 objectForKeyedSubscript:@"controlPointBufferOffset"];
      v82 = [v81 unsignedLongLongValue];
      *v76 = v141;
      *(v76 + 8) = v77;
      v20 = 0x277CCA000;
      *(v76 + 16) = a8;
      *(v76 + 24) = size;
      *(v76 + 28) = v139;
      *(v76 + 32) = 0;
      *(v76 + 34) = 3;
      *(v76 + 35) = 0;
      *(v76 + 39) = 0;
      *(v76 + 40) = v138;
      *(v76 + 44) = v136;
      *(v76 + 48) = v135;
      *(v76 + 52) = v133;
      *(v76 + 56) = v132;
      *(v76 + 60) = v131;
      *(v76 + 64) = v130;
      *(v76 + 68) = v74;
      *(v76 + 72) = v82;
      v65 = v157;

      concat = data1b;
      v22 = v78;
      v18 = v143;
    }

    else
    {
      v83 = [v147 objectForKeyedSubscript:v25];
      v84 = [v83 unsignedLongLongValue];

      v85 = (*a7)++;
      v86 = a6 + 80 * v85;
      v87 = v172[1];
      v88 = [v29 length];
      *v86 = v84;
      *(v86 + 8) = v87;
      *(v86 + 16) = a8;
      *(v86 + 24) = size;
      *(v86 + 28) = v88;
      *(v86 + 32) = 0;
      *(v86 + 34) = 2;
      *(v86 + 35) = 0;
      *(v86 + 39) = 0;
      *(v86 + 40) = data1[0];
      *(v86 + 44) = 0u;
      *(v86 + 60) = 0u;
      *(v86 + 76) = 0;
    }

    v89 = [v29 bytes];
    v90 = [v29 length];
    v194[0] = MEMORY[0x277D85DD0];
    v194[1] = 3221225472;
    v194[2] = __NewResourceData_block_invoke;
    v194[3] = &unk_279657CF8;
    v195 = v29;
    v91 = v29;
    v92 = dispatch_data_create(v89, v90, 0, v194);
    v93 = dispatch_data_create_concat(concat, v92);

    size = size + dispatch_data_get_size(v92);
    concat = v93;
    v19 = v149;
    v16 = v146;
    goto LABEL_25;
  }

  v199 = *MEMORY[0x277CCA450];
  v200[0] = @"failed to serialize ML intermediate data";
  v126 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v200 forKeys:&v199 count:1];
  v127 = MakeNSError(101, v126);
  GTMTLReplay_handleNSError(v127);

  objc_autoreleasePoolPop(v22);
  v124 = 0;
LABEL_57:

  return v124;
}

void sub_24D8A3038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id location)
{
  objc_destroyWeak((v45 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24D8A337C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24D8A49B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, apr_pool_t *p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  apr_pool_destroy(p);
  __destructor_8_s8_S_s56_s64_s72_s80_s88(va);
  _Unwind_Resume(a1);
}

uint64_t CleanupSandboxExtensionURL_884(void *a1)
{
  [a1 stopAccessingSecurityScopedResource];

  return 0;
}

void UpdateDebugFileCache(void *a1, void *a2, void *a3, void *a4)
{
  v43[2] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v27 = a4;
  v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v27 isDirectory:1];
  v26 = v7;
  v28 = v8;
  v29 = v9;
  if (v7)
  {
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2020000000;
    v36 = 1;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __UpdateDebugFileCache_block_invoke;
    v30[3] = &unk_279657520;
    v11 = v10;
    v31 = v10;
    v34 = v35;
    v32 = v9;
    v33 = v8;
    [v7 enumerateKeysAndObjectsUsingBlock:v30];

    _Block_object_dispose(v35, 8);
  }

  else
  {
    v25 = v10;
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = *MEMORY[0x277CBE868];
    v43[0] = *MEMORY[0x277CBE8E8];
    v43[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v15 = [v12 enumeratorAtURL:v25 includingPropertiesForKeys:v14 options:4 errorHandler:0];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v17)
    {
      v18 = *v39;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v38 + 1) + 8 * i);
          v37 = 0;
          [v20 getResourceValue:&v37 forKey:v13 error:0];
          v21 = v37;
          if (([v21 BOOLValue] & 1) == 0)
          {
            v22 = [v20 lastPathComponent];
            v23 = [v22 stringByDeletingPathExtension];
            v24 = [v29 objectForKeyedSubscript:v23];

            if (v24)
            {
              [v28 setObject:v20 forKeyedSubscript:v24];
            }
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v17);
    }

    v11 = v25;
  }
}

void sub_24D8A5020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __StoreDebugFileCache_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEBC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.metallib", v7];

  v10 = [v8 initFileURLWithPath:v9 relativeToURL:*(a1 + 32)];
  v12 = 0;
  [v6 writeToURL:v10 options:0 error:&v12];

  v11 = v12;
  if (v11)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void __UpdateDebugFileCache_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x277CBEBC0];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.metallib", v5];
  v10 = [v8 initFileURLWithPath:v9 relativeToURL:*(a1 + 32)];

  v13 = 0;
  [v7 writeToURL:v10 options:0 error:&v13];

  v11 = v13;
  if (v11)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    v12 = [*(a1 + 40) objectForKeyedSubscript:v5];
    if (v12)
    {
      [*(a1 + 48) setObject:v10 forKeyedSubscript:v12];
    }
  }
}

void sub_24D8A5C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24D8A8CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id *location, uint64_t a15)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v15 - 200));
  _Unwind_Resume(a1);
}

void sub_24D8A9870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  GTAGXPerfStateControl::~GTAGXPerfStateControl(va);

  _Unwind_Resume(a1);
}

void sub_24D8AA0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_24D8ABE2C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id GTMTLReplayClient_embeddedQueryShaderInfo(uint64_t a1, id *a2, void *a3)
{
  v48[22] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v9 = 0;
    goto LABEL_26;
  }

  v7 = [v5 objectForKeyedSubscript:@"gpuTarget"];
  v32 = v7;
  if (v7)
  {
    v8 = [v7 intValue];
  }

  else
  {
    v8 = 0x7FFFFFFF;
  }

  v10 = [v6 objectForKeyedSubscript:@"MetalPluginName"];
  v11 = v10;
  if (v8 == 0x7FFFFFFF)
  {
    if (!v10)
    {
      v8 = 0x7FFFFFFF;
LABEL_12:
      v44 = v8;
      v28 = v6;
      v12 = [v28 objectForKeyedSubscript:@"MetalPluginName"];
      if (!v12)
      {
        IOAccelerator = GetIOAccelerator();
        v12 = GetMetalPluginName(IOAccelerator, &v44);
      }

      v30 = v12;
      v14 = objc_alloc(MEMORY[0x277CBEB38]);
      v47 = @"MetalPluginName";
      v48[0] = v30;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      [v14 initWithDictionary:v15];

      v33 = objc_alloc_init(MEMORY[0x277CCABD0]);
      v43[0] = 0;
      v43[1] = v43;
      v43[2] = 0x3032000000;
      v43[3] = __Block_byref_object_copy__74;
      v43[4] = __Block_byref_object_dispose__75;
      v43[5] = 0;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = ___ZL29EmbeddedQueryShaderInfoLegacyP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP12NSDictionaryi_block_invoke;
      v42[3] = &unk_279659168;
      v42[4] = v43;
      v42[5] = a1;
      v16 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v42];
      [v16 setQueuePriority:-8];
      [*a2 addOperation:v16];
      [v33 addDependency:v16];

      v41[0] = 0;
      v41[1] = v41;
      v41[2] = 0x3032000000;
      v41[3] = __Block_byref_object_copy__74;
      v41[4] = __Block_byref_object_dispose__75;
      v41[5] = 0;
      v17 = MEMORY[0x277CCA8C8];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = ___ZL29EmbeddedQueryShaderInfoLegacyP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP12NSDictionaryi_block_invoke_2;
      v37[3] = &unk_279658938;
      v39 = v41;
      v40 = a1;
      v29 = v28;
      v38 = v29;
      v18 = [v17 blockOperationWithBlock:v37];
      [v18 setQueuePriority:-8];
      [*a2 addOperation:v18];
      [v33 addDependency:v18];
      [v18 waitUntilFinished];

      *v36 = 0;
      v35 = 0;
      v34 = 1.0;
      GetConsistentPStates(v29, &v36[1], v36, &v34, &v35);
      v19 = [*(a1 + 8) defaultDevice];
      v31 = DYMTLReplayFrameProfiler_loadAnalysis(v19);

      if (v31)
      {
        v20 = [v31 objectForKeyedSubscript:@"DerivedCounterDictionary"];
        v21 = v20;
        if (v20)
        {
          v22 = [v20 objectForKeyedSubscript:@"DerivedCounters"];
          v23 = v22;
          if (v22)
          {
            v24 = [v22 objectForKeyedSubscript:@"ParameterBufferBytesUsed"];
            v25 = v24;
            if (v24)
            {
              v45 = @"ParameterBufferBytesUsed";
              v46 = v24;
              v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
              GTMTLReplayHost_rawCounters(v26);
              objc_claimAutoreleasedReturnValue();
            }
          }
        }
      }

      operator new();
    }

    v8 = MetalPluginTarget(v10);
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  v9 = &unk_2860D6060;

LABEL_26:

  return v9;
}

void sub_24D8AD794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, void *a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  _Block_object_dispose(&a46, 8);

  _Block_object_dispose(&a58, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZL29EmbeddedQueryShaderInfoLegacyP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP12NSDictionaryi_block_invoke(uint64_t a1)
{
  v32[2] = *MEMORY[0x277D85DE8];
  GTMTLReplayController_prePlayForProfiling(*(a1 + 40));
  v22 = a1;
  v2 = *(a1 + 40);
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = *(v2 + 8);
  v5 = v4;
  v6 = *v2;
  if (*(*v2 + 112) + *(*v2 + 104) > *(v2 + 22560))
  {
    v23 = v4;
    while (1)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = &v6[16][3][64 * *(v2 + 22560)];
      if (GTFenum_isBeginCommandBuffer(*(v8 + 8)))
      {
        GTMTLReplayController_restoreCommandBuffer(v2, v8);
      }

      GTMTLReplayController_updateCommandEncoder(v2, v8);
      GTMTLReplayController_defaultDispatchFunction(v2, v8);
      v9 = *(v8 + 8);
      if ((GTFenum_isDrawCall(v9) & 1) == 0 && !GTFenum_isComputeCall(v9))
      {
        goto LABEL_14;
      }

      v10 = *(v2 + 11360);
      if (v10 == 28)
      {
        break;
      }

      if (v10 == 70)
      {
        v11 = [v5 renderPipelineStateForKey:*(v2 + 8792)];
        if (GTFenum_isDrawCall(*(v8 + 8)))
        {
          v31[0] = @"vertex shader key";
          v12 = [v11 newVertexShaderDebugInfo];
          v13 = AddShaderBinary(v25, v12);
          v31[1] = @"fragment shader key";
          v32[0] = v13;
          v14 = [v11 newFragmentShaderDebugInfo];
          v15 = AddShaderBinary(v24, v14);
          v32[1] = v15;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
          v17 = v16 = v3;
          [v26 addObject:v17];

          v3 = v16;
          v5 = v23;

          goto LABEL_12;
        }

        goto LABEL_13;
      }

LABEL_14:
      objc_autoreleasePoolPop(v7);
      v18 = (*(v2 + 22560) + 1);
      *(v2 + 22560) = v18;
      if (v6[13] + v6[14] <= v18)
      {
        goto LABEL_15;
      }
    }

    v11 = [v5 computeCommandEncoderForKey:*(v2 + 200)];
    v29 = @"compute kernel key";
    v12 = [v11 newKernelDebugInfo];
    v13 = AddShaderBinary(v3, v12);
    v30 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    [v26 addObject:v14];
LABEL_12:

LABEL_13:
    goto LABEL_14;
  }

LABEL_15:
  v27[0] = @"draw call info";
  v27[1] = @"vertex fetch shader info";
  v28[0] = v26;
  v28[1] = MEMORY[0x277CBEC10];
  v27[2] = @"vertex shader info";
  v27[3] = @"fragment shader info";
  v28[2] = v25;
  v28[3] = v24;
  v27[4] = @"compute kernel info";
  v28[4] = v3;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:5];

  v20 = *(*(v22 + 32) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;
}

void ___ZL29EmbeddedQueryShaderInfoLegacyP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP12NSDictionaryi_block_invoke_2(uint64_t a1)
{
  v83[3] = *MEMORY[0x277D85DE8];
  v73 = *(a1 + 48);
  v2 = *(a1 + 32);
  address = 0;
  v58 = v2;
  v3 = [v2 objectForKeyedSubscript:@"uscBufferSize"];
  v53 = a1;
  v4 = [v3 unsignedIntegerValue] << 20;

  if (v4 - 1 >= 0x1FFFFFF)
  {
    v4 = 0x2000000;
  }

  vm_allocate(*MEMORY[0x277D85F48], &address, v4, 1);
  memset(address, 255, v4);
  v54 = *(v73 + 8);
  [v54 defaultDevice];
  v56 = v55 = v4;
  [v56 mapShaderSampleBufferWithBuffer:address capacity:v4 / 0xC size:v4];
  mach_timebase_info(&info);
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v60 = mach_absolute_time();
  v63 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:2097144];
  v5 = v63;
  memset([v63 mutableBytes], 255, objc_msgSend(v63, "length"));
  v6 = v63;
  v7 = [v63 mutableBytes];
  v61 = [v58 objectForKeyedSubscript:@"perEncoderDrawCallCount"];
  memset(v75, 0, sizeof(v75));
  v76 = 1065353216;
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  queue = dispatch_queue_create("com.apple.MTLReplayer.memoryPresure", v8);

  v9 = dispatch_source_create(MEMORY[0x277D85D18], 0, 2uLL, queue);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = ___ZL18PerformUSCSamplingP21GTMTLReplayControllerP12NSDictionary_block_invoke;
  handler[3] = &unk_279657A08;
  handler[4] = &v77;
  dispatch_source_set_event_handler(v9, handler);
  source = v9;
  dispatch_activate(v9);
  v62 = objc_alloc_init(ProgramAddressTableCollector);
  v69 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    v64 = v11;
    GTMTLReplayController_prePlayForProfiling(v73);
    v68 = v61;
    v65 = v63;
    v66 = v62;
    v71 = *(v73 + 8);
    if (*(*v73 + 112) + *(*v73 + 104) > *(v73 + 22560))
    {
      v67 = 0;
      v72 = *v73;
      v70 = *(*v73 + 16);
      while (1)
      {
        v12 = objc_autoreleasePoolPush();
        v13 = *(v72[16] + 24) + (*(v73 + 22560) << 6);
        v14 = *(v13 + 8);
        if (GTFenum_isBeginCommandBuffer(v14))
        {
          GTMTLReplayController_restoreCommandBuffer(v73, v13);
          v14 = *(v13 + 8);
        }

        if (v14 <= -16287)
        {
          break;
        }

        if (v14 <= -16247)
        {
          if (v14 == -16286)
          {
            v37 = GTTraceFunc_argumentBytesWithMap(v13, *(v13 + 13), v70);
            v16 = [v71 parallelRenderCommandEncoderForKey:*v37];
            [v71 setRenderCommandEncoder:v16 forKey:*(v37 + 1)];
            goto LABEL_29;
          }

          if (v14 == -16285)
          {
LABEL_25:
            GTMTLReplayController_dispatchForUSCSampling(v73, v13, v71, v70, v66, (v10 - 1));
            v67 = 0;
            goto LABEL_30;
          }

          goto LABEL_21;
        }

        if (v14 != -16246)
        {
          if (v14 == -16014)
          {
            v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v73 + 22560)];
            v16 = [v68 objectForKeyedSubscript:v26];

            v27 = [v16 unsignedIntegerValue];
            *v7 = *v7 | (v10 << 8);
            v28 = v7 + 6;
            v29 = GTTraceFunc_argumentBytesWithMap(v13, *(v13 + 13), v70);
            v21 = [v71 commandBufferForKey:*v29];
            v23 = [v21 sampledComputeCommandEncoderWithDispatchType:*(v29 + 2) programInfoBuffer:v28 capacity:v27];
            LODWORD(v82[0]) = [v23 globalTraceObjectID];
            v83[0] = v82;
            *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v75, v82[0], v83) + 5) = v10++;
            [v71 setComputeCommandEncoder:v23 forKey:*(v29 + 1)];
            goto LABEL_27;
          }

LABEL_21:
          GTMTLReplayController_dispatchForUSCSampling(v73, v13, v71, v70, v66, (v10 - 1));
          goto LABEL_30;
        }

        if ((v67 & 1) == 0)
        {
          goto LABEL_25;
        }

        [v71 removeRenderCommandEncoderForKey:{*GTTraceFunc_argumentBytesWithMap(v13, *(v13 + 13), v70)}];
        v67 = 1;
LABEL_30:
        objc_autoreleasePoolPop(v12);
        v40 = (*(v73 + 22560) + 1);
        *(v73 + 22560) = v40;
        if (v72[14] + v72[13] <= v40)
        {
          goto LABEL_31;
        }
      }

      switch(v14)
      {
        case -16353:
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v73 + 22560)];
          v16 = [v68 objectForKeyedSubscript:v30];

          v31 = [v16 unsignedIntegerValue];
          *v7 = *v7 | (v10 << 8);
          v32 = v7 + 6;
          v33 = GTTraceFunc_argumentBytesWithMap(v13, *(v13 + 13), v70);
          RenderPassDescriptor = GetRenderPassDescriptor();
          v21 = [v71 commandBufferForKey:*v33];
          v35 = [v71 renderPassDescriptorMap];
          v23 = MakeMTLRenderPassDescriptor(RenderPassDescriptor, v35);

          v36 = [v21 sampledRenderCommandEncoderWithDescriptor:v23 programInfoBuffer:v32 capacity:2 * v31 + 2];
          LODWORD(v82[0]) = [v36 globalTraceObjectID];
          v83[0] = v82;
          *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v75, v82[0], v83) + 5) = v10++;
          [v71 setRenderCommandEncoder:v36 forKey:*(v33 + 1)];

          v7 = &v32[12 * v31 + 12];
          v25 = 48 * v31 + 72;
          goto LABEL_28;
        case -16352:
          v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v73 + 22560)];
          v16 = [v68 objectForKeyedSubscript:v38];

          v27 = [v16 unsignedIntegerValue];
          *v7 = *v7 | (v10 << 8);
          v28 = v7 + 6;
          v39 = GTTraceFunc_argumentBytesWithMap(v13, *(v13 + 13), v70);
          v21 = [v71 commandBufferForKey:*v39];
          v23 = [v21 sampledComputeCommandEncoderWithProgramInfoBuffer:v28 capacity:v27];
          LODWORD(v82[0]) = [v23 globalTraceObjectID];
          v83[0] = v82;
          *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v75, v82[0], v83) + 5) = v10++;
          [v71 setComputeCommandEncoder:v23 forKey:*(v39 + 1)];
LABEL_27:
          v7 = &v28[6 * v27];
          v25 = 24 * v27 + 24;
LABEL_28:

          v69 += v25;
LABEL_29:

          goto LABEL_30;
        case -16351:
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v73 + 22560)];
          v16 = [v68 objectForKeyedSubscript:v15];

          v17 = [v16 unsignedIntegerValue];
          *v7 = *v7 | (v10 << 8);
          v18 = v7 + 6;
          v19 = GTTraceFunc_argumentBytesWithMap(v13, *(v13 + 13), v70);
          v20 = GetRenderPassDescriptor();
          v21 = [v71 commandBufferForKey:*v19];
          v22 = [v71 renderPassDescriptorMap];
          v23 = MakeMTLRenderPassDescriptor(v20, v22);

          v24 = [v21 sampledRenderCommandEncoderWithDescriptor:v23 programInfoBuffer:v18 capacity:2 * v17 + 2];
          LODWORD(v82[0]) = [v24 globalTraceObjectID];
          v83[0] = v82;
          *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v75, v82[0], v83) + 5) = v10++;
          [v71 setParallelRenderCommandEncoder:v24 forKey:*(v19 + 1)];

          v7 = &v18[12 * v17 + 12];
          v25 = 48 * v17 + 72;
          v67 = 1;
          goto LABEL_28;
      }

      goto LABEL_21;
    }

LABEL_31:

    v41 = (mach_absolute_time() - v60) * info.numer / info.denom;
    v42 = atomic_load(v78 + 24);
    v44 = (v42 & 1) == 0 && v41 > 0x3B9AC9FF;
    v45 = v78 + 24;
    atomic_store(v44, v78 + 24);
    if (v64 == 1199)
    {
      break;
    }

    v11 = v64 + 1;
    v46 = atomic_load(v45);
  }

  while ((v46 & 1) == 0);
  dispatch_source_cancel(source);
  [v56 unmapShaderSampleBuffer];
  [v65 setLength:v69];
  v82[0] = @"usc sampling sample data";
  v47 = objc_alloc(MEMORY[0x277CBEA90]);
  v48 = [v47 initWithBytesNoCopy:address length:v55 deallocator:&__block_literal_global_1480];
  v83[0] = v48;
  v82[1] = @"usc sampling address mappings";
  v49 = [(ProgramAddressTableCollector *)v66 mappings];
  v82[2] = @"usc sampling address data";
  v83[1] = v49;
  v83[2] = v65;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:3];

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v75);
  _Block_object_dispose(&v77, 8);

  v51 = *(*(v53 + 40) + 8);
  v52 = *(v51 + 40);
  *(v51 + 40) = v50;
}

void sub_24D8AE98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Block_object_dispose((v36 - 192), 8);

  _Unwind_Resume(a1);
}

void GetConsistentPStates(NSDictionary *a1, unsigned int *a2, unsigned int *a3, double *a4, unsigned int *a5)
{
  v16 = a1;
  v9 = [(NSDictionary *)v16 objectForKeyedSubscript:@"GPUState"];
  v10 = v9;
  if (!v9 || (v11 = [v9 unsignedIntValue], (*a5 = v11) == 0))
  {
    v12 = [(NSDictionary *)v16 objectForKeyedSubscript:@"XPState"];
    v13 = v12;
    if (v12)
    {
      [v12 doubleValue];
      v15 = floor(v14);
      *a2 = (v15 * 100.0);
      *a3 = (ceil(v14) * 100.0);
      *a4 = v14 - v15;
    }

    else
    {
      *a3 = 3;
      *a2 = 3;
    }
  }
}

id ProfilingTimingDataLegacy(uint64_t a1, id *a2, void *a3, void *a4, void *a5, int a6, int a7, int a8, uint64_t a9)
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__74;
  v41[4] = __Block_byref_object_dispose__75;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"MTLStatCommandBufferIndex", @"MTLStatEncoderIndex", @"MTLStatCommandIndex", @"MTLStat_nSec", @"MTLStatDataMaster", @"MTLStatSampleLocation", @"MTLStatTotalGPUCycles", 0}];
  v42 = [v19 mutableCopy];

  v20 = objc_alloc_init(MEMORY[0x277CCABD0]);
  v21 = MEMORY[0x277CCA8C8];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZL25ProfilingTimingDataLegacyP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP12NSDictionaryP19NSMutableDictionaryS6_P14NSMutableArrayIP8NSNumberEjjjP21GTAGXPerfStateControl_block_invoke;
  v29[3] = &unk_279657A50;
  v34 = v41;
  v35 = a1;
  v22 = v20;
  v30 = v22;
  v36 = a2;
  v38 = a6;
  v23 = v18;
  v31 = v23;
  v37 = a9;
  v39 = a8;
  v40 = a7;
  v24 = v16;
  v32 = v24;
  v25 = v17;
  v33 = v25;
  v26 = [v21 blockOperationWithBlock:v29];
  [v26 setQueuePriority:-8];
  [*a2 addOperation:v26];
  [v22 addDependency:v26];
  [a2[1] addOperation:v22];
  v27 = v22;

  _Block_object_dispose(v41, 8);

  return v27;
}

void sub_24D8AEF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23)
{
  _Block_object_dispose((v27 - 136), 8);

  _Unwind_Resume(a1);
}

void GRCInfo::GRCInfo(GRCInfo *this, GTMTLReplayController *a2, int a3, GTAGXPerfStateControl *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  *this = a2;
  *(this + 1) = a4;
  *(this + 1) = 0u;
  v5 = (this + 16);
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = a3;
  *(this + 34) = 0;
  GRCReleaseAllCounterSourceGroup();
  context = objc_autoreleasePoolPush();
  v6 = GRCCopyAllCounterSourceGroup();
  v7 = *v5;
  *v5 = v6;

  if (*v5 && [*v5 count])
  {
    v25 = [*v5 firstObject];
    v26 = [v25 sourceList];
    if (!v26 || ![v26 count])
    {
      goto LABEL_21;
    }

    obj = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = v26;
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = *v30;
LABEL_7:
      v11 = 0;
      while (1)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v29 + 1) + 8 * v11);
        if (![v12 ringBufferNum])
        {
          break;
        }

        v13 = [v12 name];
        v14 = [v13 hasPrefix:@"Firmware"];

        if (v14)
        {
          [obj addObject:v12];
        }

        if (v9 == ++v11)
        {
          v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v9)
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:

      if (![obj count])
      {
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      objc_storeStrong(this + 3, obj);
      *(this + 4) = [v25 sampleMarker];
      v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:7];
      v16 = *(this + 6);
      *(this + 6) = v15;

      for (i = 0; i != 7; ++i)
      {
        v18 = *(this + 6);
        v19 = MEMORY[0x277D0AF28];
        v20 = [&unk_2860D5AE0 objectAtIndexedSubscript:i];
        v21 = [v19 selectWithName:v20 options:0];
        [v18 addObject:v21];
      }

      v22 = MEMORY[0x277CBEB18];
      v8 = [MEMORY[0x277D0AF30] selectWithName:@"KickBoundary" options:0];
      v23 = [v22 arrayWithObject:v8];
      v24 = *(this + 5);
      *(this + 5) = v23;
    }

    goto LABEL_20;
  }

LABEL_22:
  objc_autoreleasePoolPop(context);
}

void DisableComputeEncoderCoalescing(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v4 = [v2 defaultDevice];
      v5 = DEVICEOBJECT(v4);

      if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v5 setDisableComputeEncoderCoalescing:a2];
      }
    }
  }
}

__n128 __Block_byref_object_copy__130(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__131(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZL14GPUTimeDataGRCP26GTMTLReplayOperationQueuesP14NSMutableArrayIP8NSNumberEjR7GRCInfo_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v5 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,false>(v3, v4, v6, 1);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *v8;
      v13 = v8[1];
      v8 += 3;
      if (v11 <= v12)
      {
        v11 = v12;
      }

      v14 = v13 >= v11;
      v15 = v13 - v11;
      if (v13 > v11)
      {
        v11 = v13;
      }

      if (!v14)
      {
        v15 = 0;
      }

      v10 += v15;
    }

    while (v8 != v9);
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
  [*(a1 + 32) setObject:? atIndexedSubscript:?];
  [*(a1 + 32) setObject:v16 atIndexedSubscript:0];
}

void ___ZL14GPUTimeDataGRCP26GTMTLReplayOperationQueuesP14NSMutableArrayIP8NSNumberEjR7GRCInfo_block_invoke_2(uint64_t a1)
{
  v1 = a1;
  GTMTLReplayController_prePlayForProfiling(**(a1 + 40));
  GRCInfo::SetupSource(*(v1 + 40), *(v1 + 48), 0, 0);
  v2 = [*(*(v1 + 40) + 16) firstObject];
  [v2 startSampling];

  v3 = objc_autoreleasePoolPush();
  v4 = *(v1 + 40);
  v5 = *(*(v1 + 32) + 8);
  v26[1] = *v4;
  v27 = 0;
  v26[0] = [g_commandBufferDescriptor errorOptions];
  [g_commandBufferDescriptor setErrorOptions:0];
  v23 = (*v4)[1];
  v6 = *v4;
  v7 = **v4;
  v25 = 0;
  if (v7[14] + v7[13] > *(v6 + 5640))
  {
    v21 = v3;
    v22 = v1;
    v8 = v7[16];
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *v4;
      v11 = *(v8 + 24) + (*(*v4 + 5640) << 6);
      isBeginCommandBuffer = GTFenum_isBeginCommandBuffer(*(v11 + 8));
      if (isBeginCommandBuffer)
      {
        GTMTLReplayController_restoreCommandBuffer(v10, v11);
        v10 = *v4;
      }

      GTMTLReplayController_updateCommandEncoder(v10, v11);
      DispatchFunction(*v4, v11, &v25);
      if (isBeginCommandBuffer)
      {
        v13 = [v23 commandBufferForKey:{*(GTTraceFunc_argumentBytesWithMap(v11, *(v11 + 13), v7[2]) + 1)}];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = ___ZN7GRCInfo23ReplayForTimingCountersERNSt3__16vectorINS0_5tupleIJyyyEEENS0_9allocatorIS3_EEEE_block_invoke;
        v24[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
        v24[4] = v5 + 48;
        [v13 addCompletedHandler:v24];
      }

      objc_autoreleasePoolPop(v9);
      v6 = *v4;
      v14 = (*(*v4 + 5640) + 1);
      *(*v4 + 5640) = v14;
    }

    while (v7[14] + v7[13] > v14);
    v3 = v21;
    v1 = v22;
  }

  *(v6 + 5641) = 0;
  v15 = [v6[1] defaultCommandQueue];
  [v15 finish];

  GRCInfo::ScopedReplayConfiguration::~ScopedReplayConfiguration(v26);
  v16 = *(v1 + 40);
  v17 = GRCInfo::DrainRawFrameData(v16);
  v18 = GRCInfo::PostProcessFrameData(v16, v17);

  objc_autoreleasePoolPop(v3);
  v19 = [*(*(v1 + 40) + 16) firstObject];
  [v19 stopSampling];

  GRCInfo::AddConsistencyInfo(*(v1 + 40));
  v20 = *(*(v1 + 40) + 8);

  GTAGXPerfStateControl::DisableConsistentGPUPerfState(v20);
}

uint64_t __Block_byref_object_copy__236(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

__n128 __Block_byref_object_copy__239(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__240(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZL15KickTimeDataGRCP26GTMTLReplayOperationQueuesP19NSMutableDictionaryjR7GRCInfoP7NSArray_block_invoke(uint64_t a1)
{
  v1 = a1;
  v46 = [*(*(*(a1 + 48) + 8) + 40) firstObject];
  if (!v46)
  {
    goto LABEL_50;
  }

  v2 = *(*(v1 + 56) + 8);
  v3 = *(*(*(v1 + 64) + 8) + 72);
  v4 = v2[6];
  v5 = v2[7];
  v6 = 0x8E38E38E38E38E39 * (&v5[-v4] >> 3);
  v7 = v3 - v6;
  v41 = v1;
  if (v3 > v6)
  {
    v8 = v2[8];
    if (0x8E38E38E38E38E39 * ((v8 - v5) >> 3) < v7)
    {
      if (v3 <= 0x38E38E38E38E38ELL)
      {
        v9 = 0x8E38E38E38E38E39 * ((v8 - v4) >> 3);
        if (2 * v9 > v3)
        {
          v3 = 2 * v9;
        }

        if (v9 >= 0x1C71C71C71C71C7)
        {
          v10 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v10 = v3;
        }

        if (v10 <= 0x38E38E38E38E38ELL)
        {
          operator new();
        }

        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    bzero(v5, 72 * ((72 * v7 - 72) / 0x48) + 72);
    v11 = &v5[72 * ((72 * v7 - 72) / 0x48) + 72];
    goto LABEL_15;
  }

  if (v3 < v6)
  {
    v11 = (v4 + 72 * v3);
LABEL_15:
    v2[7] = v11;
  }

  v12 = [v46 bytes];
  v13 = 0;
  v14 = 0;
  while (1)
  {
    NextMarker = GRCInfo::FindNextMarker(v46, v14, *(*(v1 + 72) + 32));
    v16 = NextMarker;
    if (NextMarker == -1)
    {
      break;
    }

    v17 = v12 + 8 * NextMarker;
    v18 = std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>((*(*(v1 + 64) + 8) + 48), *(v17 + 32));
    v14 = (v16 + 8);
    if (v18)
    {
      v19 = *(v17 + 24) > 5uLL || (*(v17 + 24) & 1) == 0;
      if (v19 || (v20 = *(v18 + 6), v21 = *(*(*(v1 + 56) + 8) + 48), 0x8E38E38E38E38E39 * ((*(*(*(v1 + 56) + 8) + 56) - v21) >> 3) <= v20))
      {
        v22 = (v17 + 8);
      }

      else
      {
        v22 = (v17 + 8);
        v23 = 125 * (*(v17 + 8) - v13);
        v24 = (v23 * 0xAAAAAAAAAAAAAAABLL) >> 64;
        v25 = v21 + 72 * v20;
        *v25 += v23 / 3;
        if ([*(v1 + 32) count] && *v17)
        {
          *(v25 + 56) += *(v17 + 64);
        }

        v26 = v24 >> 1;
        v27 = *(v17 + 24);
        switch(v27)
        {
          case 5:
            *(v25 + 24) += 2 * v26;
            v28 = 4;
            break;
          case 3:
            *(v25 + 16) += v26;
            *(v25 + 40) += *(v17 + 16);
            v28 = 2;
            break;
          case 1:
            *(v25 + 8) += v26;
            *(v25 + 32) += *(v17 + 16);
            v28 = 1;
            break;
          default:
            goto LABEL_32;
        }

        *(v25 + 64) |= v28;
      }

LABEL_32:
      v13 = *v22;
    }
  }

  v29 = 0x277CBE000uLL;
  v44 = objc_opt_new();
  v43 = objc_opt_new();
  v42 = objc_opt_new();
  v40 = objc_opt_new();
  v30 = *(*(v1 + 56) + 8);
  v31 = *(v30 + 48);
  for (i = *(v30 + 56); v31 != i; v31 += 72)
  {
    if (*(v31 + 64))
    {
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v31];
      [v44 addObject:v32];

      if ([*(v1 + 32) count])
      {
        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v31 + 56)];
        [v40 addObject:v33];
      }

      v34 = [*(v29 + 2840) arrayWithCapacity:3];
      v35 = [*(v29 + 2840) arrayWithCapacity:3];
      if (*(v31 + 64))
      {
        v36 = *(v31 + 64);
      }

      else
      {
        v36 = 2;
      }

      do
      {
        v37 = v36 & -v36;
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v31 + 8 + 8 * (v37 >> 1))];
        [v34 addObject:v38];

        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v31 + 32 + 8 * (v37 >> 1))];
        [v35 addObject:v39];

        v19 = v37 == v36;
        v36 ^= v37;
      }

      while (!v19);
      [v43 addObject:v34];
      [v42 addObject:v35];

      v1 = v41;
      v29 = 0x277CBE000;
    }
  }

  [*(v1 + 40) setObject:v44 forKeyedSubscript:@"encoder time data"];
  [*(v1 + 40) setObject:v43 forKeyedSubscript:@"kick time data"];
  [*(v1 + 40) setObject:v42 forKeyedSubscript:@"kick cycle data"];
  if ([v40 count])
  {
    [*(v1 + 40) setObject:v40 forKeyedSubscript:@"tilerParamBufBytesUsedArray"];
  }

LABEL_50:
}

void ___ZL15KickTimeDataGRCP26GTMTLReplayOperationQueuesP19NSMutableDictionaryjR7GRCInfoP7NSArray_block_invoke_2(uint64_t a1)
{
  GTMTLReplayController_prePlayForProfiling(**(a1 + 56));
  GRCInfo::SetupSource(*(a1 + 56), *(a1 + 64), 1, *(a1 + 32));
  v2 = [*(*(a1 + 56) + 16) firstObject];
  [v2 startSampling];

  v3 = objc_autoreleasePoolPush();
  GRCInfo::ReplayForKickCounters(*(a1 + 56), (*(*(a1 + 40) + 8) + 48));
  v4 = GRCInfo::DrainRawFrameData(*(a1 + 56));
  v5 = GRCInfo::PostProcessFrameData(*(a1 + 56), v4);
  if (v5)
  {
    [*(*(*(a1 + 48) + 8) + 40) setArray:v5];
  }

  objc_autoreleasePoolPop(v3);
  v6 = [*(*(a1 + 56) + 16) firstObject];
  [v6 stopSampling];

  GRCInfo::AddConsistencyInfo(*(a1 + 56));
  v7 = *(*(a1 + 56) + 8);

  GTAGXPerfStateControl::DisableConsistentGPUPerfState(v7);
}

uint64_t __Block_byref_object_copy__242(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

__n128 __Block_byref_object_copy__245(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__246(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZL20BlitSplitTimeDataGRCP26GTMTLReplayOperationQueuesP19NSMutableDictionaryjR7GRCInfo_block_invoke(uint64_t a1)
{
  v40 = [*(*(*(a1 + 40) + 8) + 40) firstObject];
  if (!v40)
  {
    goto LABEL_55;
  }

  v2 = *(*(a1 + 48) + 8);
  v3 = *(*(*(a1 + 56) + 8) + 72);
  v5 = v2[6];
  v4 = v2[7];
  v6 = (v4 - v5) >> 3;
  if (v3 <= v6)
  {
    if (v3 >= v6)
    {
      goto LABEL_21;
    }

    v12 = v5 + 8 * v3;
  }

  else
  {
    v7 = v3 - v6;
    v8 = v2[8];
    if (v7 > (v8 - v4) >> 3)
    {
      if (!(v3 >> 61))
      {
        v9 = v8 - v5;
        v10 = (v8 - v5) >> 2;
        if (v10 <= v3)
        {
          v10 = *(*(*(a1 + 56) + 8) + 72);
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v11);
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v13 = 0;
    v14 = (v7 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v15 = vdupq_n_s64(v14);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v13), xmmword_24DA8B910)));
      if (v16.i8[0])
      {
        *(v4 + 8 * v13) = 0;
      }

      if (v16.i8[4])
      {
        *(v4 + 8 * v13 + 8) = 0;
      }

      v13 += 2;
    }

    while (v14 - ((v7 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v13);
    v12 = v4 + 8 * v7;
  }

  v2[7] = v12;
LABEL_21:
  v17 = [v40 bytes];
  v18 = 0;
  v19 = 0;
  while (1)
  {
    NextMarker = GRCInfo::FindNextMarker(v40, v19, *(*(a1 + 64) + 32));
    if (NextMarker == -1)
    {
      break;
    }

    v21 = (v17 + 8 * NextMarker);
    v22 = *(*(a1 + 56) + 8);
    v23 = *(v22 + 56);
    if (v23)
    {
      v24 = v21[4];
      v25 = vcnt_s8(v23);
      v25.i16[0] = vaddlv_u8(v25);
      if (v25.u32[0] > 1uLL)
      {
        v26 = v24;
        if (v23 <= v24)
        {
          v26 = v24 % v23;
        }
      }

      else
      {
        v26 = (v23 - 1) & v21[4];
      }

      i = *(*(v22 + 48) + 8 * v26);
      if (i)
      {
        for (i = *i; i; i = *i)
        {
          v28 = i[1];
          if (v28 == v24)
          {
            if (*(i + 4) == v24)
            {
              break;
            }
          }

          else
          {
            if (v25.u32[0] > 1uLL)
            {
              if (v28 >= v23)
              {
                v28 %= v23;
              }
            }

            else
            {
              v28 &= v23 - 1;
            }

            if (v28 != v26)
            {
              goto LABEL_40;
            }
          }
        }
      }
    }

    else
    {
LABEL_40:
      i = 0;
    }

    v19 = (NextMarker + 8);
    if (i)
    {
      v29 = v21[3] > 5uLL || (v21[3] & 1) == 0;
      if (v29 || (v30 = *(i + 5), v31 = *(*(*(a1 + 48) + 8) + 48), v30 >= (*(*(*(a1 + 48) + 8) + 56) - v31) >> 3))
      {
        v32 = v21 + 1;
      }

      else
      {
        v33 = v21[1];
        v32 = v21 + 1;
        *(v31 + 8 * v30) += 125 * (v33 - v18) / 3uLL;
      }

      v18 = *v32;
    }
  }

  v34 = objc_opt_new();
  v35 = *(*(a1 + 48) + 8);
  v36 = *(v35 + 48);
  for (j = *(v35 + 56); v36 != j; ++v36)
  {
    if (*v36)
    {
      v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
      [v34 addObject:v38];
    }
  }

  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v34 forKey:@"PerDrawNsecTimes"];
  [*(a1 + 32) setObject:v39 forKeyedSubscript:@"SplitEncoderData"];

LABEL_55:
}

void ___ZL20BlitSplitTimeDataGRCP26GTMTLReplayOperationQueuesP19NSMutableDictionaryjR7GRCInfo_block_invoke_2(uint64_t a1)
{
  v1 = a1;
  GTMTLReplayController_prePlayForProfiling(**(a1 + 48));
  GRCInfo::SetupSource(*(v1 + 48), *(v1 + 56), 1, 0);
  v2 = [*(*(v1 + 48) + 16) firstObject];
  [v2 startSampling];

  v38 = objc_autoreleasePoolPush();
  v3 = *(v1 + 48);
  v41 = *(*(v1 + 32) + 8);
  GRCInfo::ScopedReplayConfiguration::ScopedReplayConfiguration(v47, *v3);
  v4 = (*v3)[1];
  v5 = **v3;
  v39 = v5[16];
  v40 = v5[15];
  v6 = [v4 defaultDevice];
  v7 = [v6 newEvent];

  v8 = *v3;
  if (v5[14] + v5[13] > *(*v3 + 5640))
  {
    v43 = v7;
    v44 = 0;
    v37 = v1;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v42 = v4;
    do
    {
      context = objc_autoreleasePoolPush();
      v12 = *v3;
      v13 = *(v5[16] + 24) + (*(*v3 + 5640) << 6);
      v14 = *(v13 + 8);
      if (GTFenum_isBeginCommandBuffer(v14))
      {
        GTMTLReplayController_restoreCommandBuffer(v12, v13);
        v44 = *(GTTraceFunc_argumentBytesWithMap(v13, *(v13 + 13), v5[2]) + 1);
        v14 = *(v13 + 8);
      }

      if (v14 == -16354)
      {
        v15 = [v4 commandBufferForKey:v44];
        ++GRCInfo::ReplayFrameWithBlitSyncEvents(std::unordered_map<unsigned int,unsigned int> &,BOOL)::signalCounter;
        [v15 encodeSignalEvent:v43 value:?];
        [v15 encodeWaitForEvent:v43 value:{GRCInfo::ReplayFrameWithBlitSyncEvents(std::unordered_map<unsigned int, unsigned int> &, BOOL)::signalCounter}];
        v9 = *(GTTraceFunc_argumentBytesWithMap(v13, *(v13 + 13), v5[2]) + 1);
        InclusiveRange = GroupBuilder_findInclusiveRange(*(v40 + 12), *(v40 + 24), *(*v3 + 5640));
        v17 = *InclusiveRange;
        v18 = InclusiveRange[1];
        if (v17 < v18)
        {
          v19 = (*(v39 + 24) + (v17 << 6) + 8);
          do
          {
            v21 = *v19;
            v19 += 16;
            v20 = v21;
            if (GTFenum_isSampledBlitCall(v21) || GTFenum_isSampledBlitCallAGX(v20))
            {
              ++v10;
            }

            ++v17;
          }

          while (v17 < v18);
        }

        v22 = v10;
        v4 = v42;
      }

      else
      {
        v22 = v11;
      }

      GTMTLReplayController_updateCommandEncoder(*v3, v13);
      v23 = *(v13 + 8);
      if (GTFenum_isSampledBlitCall(v23) || GTFenum_isSampledBlitCallAGX(v23))
      {
        v11 = v22 - 1;
        if (v22 && v10 != v22)
        {
          v24 = [v4 blitCommandEncoderForKey:v9];
          [v24 endEncoding];
          v25 = [v4 commandBufferForKey:v44];
          ++GRCInfo::ReplayFrameWithBlitSyncEvents(std::unordered_map<unsigned int,unsigned int> &,BOOL)::signalCounter;
          [v25 encodeSignalEvent:v43 value:?];
          [v25 encodeWaitForEvent:v43 value:{GRCInfo::ReplayFrameWithBlitSyncEvents(std::unordered_map<unsigned int, unsigned int> &, BOOL)::signalCounter}];
          v26 = [v25 blitCommandEncoder];
          [v42 setBlitCommandEncoder:v26 forKey:v9];
          v46 = [v42 globalTraceIdForEncoder:v9 ofType:0];
          v27 = *(v41 + 72);
          v48 = &v46;
          *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v41 + 48), v46, &v48) + 5) = v27;

          v4 = v42;
        }
      }

      else
      {
        v11 = v22;
      }

      GTMTLReplayController_defaultDispatchFunction(*v3, v13);
      v28 = *(v13 + 8);
      if (v28 == -16354)
      {
        v46 = [v4 globalTraceIdForEncoder:v9 ofType:0];
        v29 = *(v41 + 72);
        v48 = &v46;
        *(std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v41 + 48), v46, &v48) + 5) = v29;
        v28 = *(v13 + 8);
      }

      if (v28 == -16376)
      {
        v30 = [v4 commandBufferForKey:v44];
        ++GRCInfo::ReplayFrameWithBlitSyncEvents(std::unordered_map<unsigned int,unsigned int> &,BOOL)::signalCounter;
        [v30 encodeSignalEvent:v43 value:?];
        [v30 encodeWaitForEvent:v43 value:{GRCInfo::ReplayFrameWithBlitSyncEvents(std::unordered_map<unsigned int, unsigned int> &, BOOL)::signalCounter}];
      }

      objc_autoreleasePoolPop(context);
      v8 = *v3;
      v31 = (*(*v3 + 5640) + 1);
      *(*v3 + 5640) = v31;
    }

    while (v5[14] + v5[13] > v31);
    v1 = v37;
    v7 = v43;
  }

  v32 = [v8[1] defaultCommandQueue];
  [v32 finish];

  GRCInfo::ScopedReplayConfiguration::~ScopedReplayConfiguration(v47);
  v33 = GRCInfo::DrainRawFrameData(*(v1 + 48));
  v34 = GRCInfo::PostProcessFrameData(*(v1 + 48), v33);
  if (v34)
  {
    [*(*(*(v1 + 40) + 8) + 40) setArray:v34];
  }

  objc_autoreleasePoolPop(v38);
  v35 = [*(*(v1 + 48) + 16) firstObject];
  [v35 stopSampling];

  GRCInfo::AddConsistencyInfo(*(v1 + 48));
  v36 = *(*(v1 + 48) + 8);

  GTAGXPerfStateControl::DisableConsistentGPUPerfState(v36);
}

void GRCInfo::~GRCInfo(id *this)
{
  GRCReleaseAllCounterSourceGroup();
}

id **std::unique_ptr<GTAGXPerfStateControl>::~unique_ptr[abi:nn200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    GTAGXPerfStateControl::~GTAGXPerfStateControl(v2);
    MEMORY[0x2530332C0]();
  }

  return a1;
}

void GRCInfo::SetupSource(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [*(a1 + 16) firstObject];
  v9 = *(a1 + 48);
  if (v7)
  {
    v10 = [v9 arrayByAddingObjectsFromArray:v7];
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;
  if ([*(a1 + 24) count])
  {
    v12 = *(*a1 + 8);
    if (a3)
    {
      if (IsGPUPerformanceStateInduced(v12))
      {
        v13 = [*(a1 + 16) firstObject];
        [v13 setOptions:&unk_2860D60D8];

        goto LABEL_14;
      }

      v14 = *(a1 + 64);
      if (!v14)
      {
        v26[0] = @"DisableOverlap";
        v26[1] = @"LockGPUPerfState";
        v27[0] = MEMORY[0x277CBEC38];
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
        v27[1] = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
        v19 = [*(a1 + 16) firstObject];
        [v19 setOptions:v18];

LABEL_14:
        v20 = [*(a1 + 24) firstObject];
        if (([v20 requestTriggers:*(a1 + 40) firstErrorIndex:0] & 1) == 0)
        {
          v21 = [v20 name];
          NSLog(&cfstr_FailErrorWhile.isa, v21);
        }

        [v20 setOptions:0];
        if ([v20 requestCounters:v11 firstErrorIndex:0])
        {
          if ([v20 setEnabled:1])
          {
LABEL_21:

            goto LABEL_22;
          }

          v22 = [v20 name];
          NSLog(&cfstr_FailErrorWhile_1.isa, v22);
        }

        else
        {
          v23 = [*(a1 + 48) count];
          v22 = [v20 name];
          NSLog(&cfstr_FailErrorWhile_0.isa, v23, v22);
        }

        goto LABEL_21;
      }
    }

    else
    {
      if (IsGPUPerformanceStateInduced(v12))
      {
        goto LABEL_14;
      }

      v14 = *(a1 + 64);
      if (!v14)
      {
        v24 = @"LockGPUPerfState";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
        v25 = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        [v8 setOptions:v16];

        goto LABEL_14;
      }
    }

    GTAGXPerfStateControl::EnableConsistentGPUPerfState(*(a1 + 8), v14);
    goto LABEL_14;
  }

LABEL_22:
}

id GRCInfo::DrainRawFrameData(id *this)
{
  if ([this[3] count])
  {
    v2 = MEMORY[0x277CBEB18];
    v3 = [this[3] firstObject];
    v4 = [v2 arrayWithCapacity:{objc_msgSend(v3, "ringBufferNum")}];

    v5 = [this[3] lastObject];
    if ([v5 isEnabled])
    {
      for (i = 0; ; i = (i + 1))
      {
        if (i >= [v5 ringBufferNum])
        {
          v13 = v4;
          goto LABEL_16;
        }

        v17 = 0;
        v18 = 0;
        v16 = 0;
        if (([v5 ringBufferInfoAtIndex:i base:&v18 size:&v17 + 4 dataOffset:&v17 dataSize:&v16] & 1) == 0)
        {
          break;
        }

        v7 = [MEMORY[0x277CBEB28] dataWithCapacity:v16];
        v8 = v7;
        v9 = v16;
        if (v16 + v17 <= HIDWORD(v17))
        {
          [v7 appendBytes:v18 + v17 length:v16];
        }

        else
        {
          v10 = HIDWORD(v17) - v17;
          [v7 appendBytes:v18 + v17 length:(HIDWORD(v17) - v17)];
          [v8 appendBytes:v18 length:v9 - v10];
        }

        v11 = [v5 drainRingBufferAtIndex:i dataSize:v16];
        if (v11 != v16)
        {
          v12 = [v5 name];
          NSLog(&cfstr_FailUnexpected.isa, v12);
        }

        [v4 addObject:v8];
      }

      v14 = [v5 name];
      NSLog(&cfstr_FailUnableToRe.isa, v14);
    }

    v13 = 0;
LABEL_16:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id GRCInfo::PostProcessFrameData(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = a2;
  if ([v20 count])
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v20, "count")}];
    v4 = [*(a1 + 24) lastObject];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v20;
    v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v5)
    {
      v6 = *v25;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v24 + 1) + 8 * i);
          [v4 resetRawDataPostProcessor];
          v22 = 0;
          v23 = 0;
          v9 = MEMORY[0x277CBEB28];
          v10 = [v8 length];
          if ((4 * v10) <= 0x4000)
          {
            v11 = 0x4000;
          }

          else
          {
            v11 = 4 * v10;
          }

          v12 = [v9 dataWithLength:v11];
          if ([v8 length])
          {
            v13 = v8;
            v14 = [v8 bytes];
            v15 = [v8 length];
            v16 = v12;
            LOBYTE(v19) = 1;
            if (([v4 postProcessRawDataWithSource:v14 sourceSize:v15 sourceRead:&v23 output:objc_msgSend(v12 outputSize:"mutableBytes") outputWritten:objc_msgSend(v12 isLast:{"length"), &v22, v19}] & 1) == 0)
            {

              v17 = 0;
              goto LABEL_17;
            }
          }

          [v12 setLength:v22];
          [v3 addObject:v12];
        }

        v5 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v17 = v3;
LABEL_17:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void GRCInfo::AddConsistencyInfo(GRCInfo *this)
{
  if (!*(this + 16))
  {
    return;
  }

  v2 = GTAGXPerfStateControl::ConsistentGPUPerfStateLevel(*(this + 1), 0);
  if (v2)
  {
    v9 = v2;
    if (*(this + 7))
    {
      if (*(this + 68) == 1)
      {
        v3 = [v2 objectForKeyedSubscript:@"enabled"];
        *(this + 68) = [v3 BOOLValue];

        v2 = v9;
      }

      else
      {
        *(this + 68) = 0;
      }

      if (*(this + 69) != 1)
      {
        *(this + 69) = 0;
        goto LABEL_13;
      }

      v7 = [v2 objectForKeyedSubscript:@"consistent"];
      v8 = [v7 BOOLValue];
    }

    else
    {
      v4 = [v2 objectForKeyedSubscript:@"level"];
      v5 = *(this + 7);
      *(this + 7) = v4;

      v6 = [v9 objectForKeyedSubscript:@"enabled"];
      *(this + 68) = [v6 BOOLValue];

      v7 = [v9 objectForKeyedSubscript:@"consistent"];
      v8 = [v7 BOOLValue];
    }

    *(this + 69) = v8;

    v2 = v9;
  }

LABEL_13:
}

GRCInfo::ScopedReplayConfiguration *GRCInfo::ScopedReplayConfiguration::ScopedReplayConfiguration(GRCInfo::ScopedReplayConfiguration *this, id *a2)
{
  *(this + 1) = a2;
  *(this + 16) = 1;
  v3 = [a2[1] defaultCommandQueue];
  [v3 setGPUPriority:0];

  *this = [g_commandBufferDescriptor errorOptions];
  [g_commandBufferDescriptor setErrorOptions:0];
  return this;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void GRCInfo::ScopedReplayConfiguration::~ScopedReplayConfiguration(GRCInfo::ScopedReplayConfiguration *this)
{
  if (*(this + 16) == 1)
  {
    v2 = [*(*(this + 1) + 8) defaultCommandQueue];
    [v2 setGPUPriority:1];
  }

  [g_commandBufferDescriptor setErrorOptions:*this];
}

uint64_t GRCInfo::FindNextMarker(GRCInfo *this, NSData *a2, uint64_t a3)
{
  LODWORD(v4) = a2;
  v5 = this;
  v6 = [(GRCInfo *)v5 length];
  v7 = [(GRCInfo *)v5 bytes];
  v8 = (v6 - 64) >> 3;
  v9 = v8 >= v4;
  v10 = v8 - v4;
  if (v9)
  {
    v4 = v4;
    v11 = v10 + 1;
    while (*(v7 + 8 * v4) != a3)
    {
      ++v4;
      if (!--v11)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
}

void GRCInfo::ReplayForKickCounters(id **a1, uint64_t *a2)
{
  GRCInfo::ScopedReplayConfiguration::ScopedReplayConfiguration(v24, *a1);
  v21 = (*a1)[1];
  v4 = *a1;
  v5 = **a1;
  v23 = 0;
  if (v5[14] + v5[13] > *(v4 + 5640))
  {
    v20 = a2 + 2;
    v6 = -1;
    v22 = v5[16];
    do
    {
      v7 = objc_autoreleasePoolPush();
      v8 = *(v22 + 24) + (*(*a1 + 5640) << 6);
      GTMTLReplayController_updateCommandEncoder(*a1, v8);
      DispatchFunction(*a1, v8, &v23);
      v9 = *(v8 + 8);
      v6 += GTFenum_isBeginCommandBuffer(*(v8 + 8));
      if (GTMTLReplayHost_IsFuncEnumSampledEncoder(v9, 1, 0))
      {
        ConstructorType = GTFenum_getConstructorType(v9);
        if (v23 == (ConstructorType == 65))
        {
          v11 = [v21 globalTraceIdForEncoder:*(GTTraceFunc_argumentBytesWithMap(v8 ofType:{*(v8 + 13), v5[2]) + 1), ConstructorType == 65, v20}];
          v12 = a2[1];
          if (v12)
          {
            v13 = vcnt_s8(v12);
            v13.i16[0] = vaddlv_u8(v13);
            if (v13.u32[0] > 1uLL)
            {
              v14 = v11;
              if (v12 <= v11)
              {
                v14 = v11 % v12;
              }
            }

            else
            {
              v14 = (v12 - 1) & v11;
            }

            v15 = *(*a2 + 8 * v14);
            if (v15)
            {
              for (i = *v15; i; i = *i)
              {
                v17 = i[1];
                if (v17 == v11)
                {
                  if (*(i + 4) == v11)
                  {
                    goto LABEL_22;
                  }
                }

                else
                {
                  if (v13.u32[0] > 1uLL)
                  {
                    if (v17 >= v12)
                    {
                      v17 %= v12;
                    }
                  }

                  else
                  {
                    v17 &= v12 - 1;
                  }

                  if (v17 != v14)
                  {
                    break;
                  }
                }
              }
            }
          }

          operator new();
        }
      }

LABEL_22:
      objc_autoreleasePoolPop(v7);
      v4 = *a1;
      v18 = (*(*a1 + 5640) + 1);
      *(*a1 + 5640) = v18;
    }

    while (v5[14] + v5[13] > v18);
  }

  *(v4 + 5641) = 0;
  v19 = [v4[1] defaultCommandQueue];
  [v19 finish];

  GRCInfo::ScopedReplayConfiguration::~ScopedReplayConfiguration(v24);
}

void sub_24D8B1E70(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  GRCInfo::ScopedReplayConfiguration::~ScopedReplayConfiguration(va);
  _Unwind_Resume(a1);
}

void DispatchFunction(const char ****a1, uint64_t a2, _BYTE *a3)
{
  v15 = a1[1];
  v6 = (*a1)[2];
  v7 = *(a2 + 8);
  if (v7 > -16286)
  {
    if (v7 == -16285)
    {
      *a3 = 0;
    }

    else if (v7 == -16246 && *a3 == 1)
    {
      [v15 removeRenderCommandEncoderForKey:{*GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), (*a1)[2])}];
      goto LABEL_13;
    }
  }

  else
  {
    if (v7 == -16351)
    {
      *a3 = 1;
      v10 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v6);
      RenderPassDescriptor = GetRenderPassDescriptor();
      v9 = [v15 commandBufferForKey:*v10];
      v12 = [v15 renderPassDescriptorMap];
      v13 = MakeMTLRenderPassDescriptor(RenderPassDescriptor, v12);

      v14 = [v9 renderCommandEncoderWithDescriptor:v13];
      [v15 setParallelRenderCommandEncoder:v14 forKey:*(v10 + 1)];

      goto LABEL_10;
    }

    if (v7 == -16286)
    {
      v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), (*a1)[2]);
      v9 = [v15 parallelRenderCommandEncoderForKey:*v8];
      [v15 setRenderCommandEncoder:v9 forKey:*(v8 + 1)];
LABEL_10:

      goto LABEL_13;
    }
  }

  GTMTLReplayController_defaultDispatchFunction(a1, a2);
LABEL_13:
}

void ___ZN7GRCInfo23ReplayForTimingCountersERNSt3__16vectorINS0_5tupleIJyyyEEENS0_9allocatorIS3_EEEE_block_invoke(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = [v23 label];
  v4 = [v3 hasPrefix:@"com.apple.gputools.replay"];

  v5 = v23;
  if ((v4 & 1) == 0)
  {
    [v23 GPUStartTime];
    v7 = v6;
    [v23 GPUEndTime];
    v8 = (v7 * 1000000000.0);
    v10 = (v9 * 1000000000.0);
    v11 = *(a1 + 32);
    v13 = *(v11 + 8);
    v12 = *(v11 + 16);
    if (v13 >= v12)
    {
      v15 = *v11;
      v16 = v13 - *v11;
      v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3) + 1;
      if (v17 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v18 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v15) >> 3);
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x555555555555555)
      {
        v19 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long>>>(v19);
      }

      v20 = (8 * (v16 >> 3));
      *v20 = v8;
      v20[1] = v10;
      v20[2] = v23;
      v14 = v20 + 3;
      v21 = v20 - v16;
      memcpy(v20 - v16, v15, v16);
      v22 = *v11;
      *v11 = v21;
      *(v11 + 8) = v14;
      *(v11 + 16) = 0;
      if (v22)
      {
        operator delete(v22);
      }

      v5 = v23;
    }

    else
    {
      *v13 = v8;
      v13[1] = v10;
      v14 = v13 + 3;
      v5 = v23;
      v13[2] = v23;
    }

    *(v11 + 8) = v14;
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,false>(uint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = (a2 - 3);
    v9 = (a2 - 6);
    v10 = (a2 - 9);
    i = v7;
    v146 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = i;
          v12 = a2 - i;
          v13 = 0xAAAAAAAAAAAAAAABLL * ((a2 - i) >> 3);
          v14 = v13 - 2;
          if (v13 > 2)
          {
            switch(v13)
            {
              case 3:

                return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,0>(v7, v7 + 3, v8);
              case 4:

                return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,0>(v7, v7 + 3, v7 + 6, v8);
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,0>(v7, v7 + 3, v7 + 6, v7 + 9, v8);
            }
          }

          else
          {
            if (v13 < 2)
            {
              return result;
            }

            if (v13 == 2)
            {
              result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(v8, v7);
              if ((result & 0x80) != 0)
              {
                v72 = *v7;
                *v7 = *(a2 - 3);
                *(a2 - 3) = v72;
                v73 = v7[1];
                v7[1] = *(a2 - 2);
                *(a2 - 2) = v73;
                v74 = v7[2];
                v7[2] = *(a2 - 1);
                *(a2 - 1) = v74;
              }

              return result;
            }
          }

          if (v12 <= 575)
          {
            v75 = (v7 + 3);
            v76 = v7 == a2 || v75 == a2;
            v77 = v76;
            if (a4)
            {
              if ((v77 & 1) == 0)
              {
                v78 = 0;
                v79 = v7;
                do
                {
                  v80 = v75;
                  result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(v75, v79);
                  if ((result & 0x80) != 0)
                  {
                    v81 = *v80;
                    v82 = v79[4];
                    v83 = v79[5];
                    v84 = v78;
                    v85 = *v79;
                    while (1)
                    {
                      v86 = (v7 + v84);
                      v87 = *(v7 + v84 + 8);
                      v88 = *(v7 + v84 + 16);
                      v86[3] = v85;
                      v86[4] = v87;
                      v86[5] = v88;
                      if (!v84)
                      {
                        v89 = v7;
                        goto LABEL_151;
                      }

                      v89 = v79;
                      v85 = *(v86 - 3);
                      v90 = v81 < v85;
                      if (v81 == v85)
                      {
                        v91 = *(v7 + v84 - 16);
                        v76 = v82 == v91;
                        v90 = v82 < v91;
                        if (v76)
                        {
                          v92 = *(v7 + v84 - 8);
                          v76 = v83 == v92;
                          v90 = v83 < v92;
                          if (v76)
                          {
                            break;
                          }
                        }
                      }

                      v79 -= 3;
                      v84 -= 24;
                      if (!v90)
                      {
                        goto LABEL_151;
                      }
                    }

                    v89 = (v7 + v84);
LABEL_151:
                    *v89 = v81;
                    v89[1] = v82;
                    v89[2] = v83;
                  }

                  v75 = v80 + 3;
                  v78 += 24;
                  v79 = v80;
                }

                while (v80 + 3 != a2);
              }
            }

            else if ((v77 & 1) == 0)
            {
              do
              {
                v128 = v75;
                result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(v75, v7);
                if ((result & 0x80) != 0)
                {
                  v129 = *v128;
                  v130 = v7[4];
                  v131 = v7[5];
                  v132 = *v7;
                  do
                  {
                    v133 = v7;
                    v134 = v132;
                    v135 = *(v7 - 3);
                    v7 -= 3;
                    v132 = v135;
                    v136 = v7[4];
                    v137 = v7[5];
                    v7[6] = v134;
                    v7[7] = v136;
                    v7[8] = v137;
                    v138 = v129 < v135;
                    if (v129 == v135)
                    {
                      v139 = *(v133 - 2);
                      v76 = v130 == v139;
                      v138 = v130 < v139;
                      if (v76)
                      {
                        v140 = *(v133 - 1);
                        v76 = v131 == v140;
                        v138 = v131 < v140;
                        if (v76)
                        {
                          break;
                        }
                      }
                    }
                  }

                  while (v138);
                  *v133 = v129;
                  v133[1] = v130;
                  v133[2] = v131;
                }

                v75 = v128 + 3;
                v7 = v128;
              }

              while (v128 + 3 != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v7 != a2)
            {
              v93 = v14 >> 1;
              v94 = v14 >> 1;
              do
              {
                v95 = v94;
                if (v93 >= v94)
                {
                  v96 = (2 * v94) | 1;
                  v97 = &v7[3 * v96];
                  v98 = 2 * v94 + 2;
                  v142 = v94;
                  if (v98 < v13)
                  {
                    v99 = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(&v7[3 * v96], v97 + 3);
                    v95 = v142;
                    if (v99 < 0)
                    {
                      v97 += 3;
                      v96 = v98;
                    }
                  }

                  v100 = &v7[3 * v95];
                  result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(v97, v100);
                  v95 = v142;
                  a2 = v146;
                  if ((result & 0x80) == 0)
                  {
                    v101 = *v100;
                    v144 = v100[1];
                    v141 = v100[2];
                    *v100 = *v97;
                    v100[1] = v97[1];
                    v100[2] = v97[2];
                    if (v93 >= v96)
                    {
                      do
                      {
                        v103 = 2 * v96;
                        v96 = (2 * v96) | 1;
                        v102 = &v7[3 * v96];
                        v104 = v103 + 2;
                        if (v103 + 2 < v13)
                        {
                          result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(&v7[3 * v96], v102 + 3);
                          if ((result & 0x80u) != 0)
                          {
                            v102 += 3;
                            v96 = v104;
                          }
                        }

                        v105 = *v102 < v101;
                        if (*v102 == v101 && (v106 = v102[1], v76 = v106 == v144, v105 = v106 < v144, v76))
                        {
                          if (v102[2] < v141)
                          {
                            goto LABEL_163;
                          }
                        }

                        else if (v105)
                        {
                          goto LABEL_163;
                        }

                        *v97 = *v102;
                        v97[1] = v102[1];
                        v97[2] = v102[2];
                        v97 = v102;
                      }

                      while (v93 >= v96);
                    }

                    else
                    {
LABEL_163:
                      v102 = v97;
                    }

                    a2 = v146;
                    *v102 = v101;
                    v102[1] = v144;
                    v95 = v142;
                    v102[2] = v141;
                  }
                }

                v94 = v95 - 1;
              }

              while (v95);
              v107 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
              do
              {
                v108 = a2;
                v109 = 0;
                v145 = v7[1];
                v147 = *v7;
                v143 = v7[2];
                v110 = v7;
                do
                {
                  v111 = &v110[3 * v109];
                  v112 = v111 + 3;
                  v113 = (2 * v109) | 1;
                  v114 = 2 * v109 + 2;
                  if (v114 < v107)
                  {
                    v115 = v111 + 6;
                    result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(v111 + 3, v111 + 6);
                    if ((result & 0x80u) != 0)
                    {
                      v112 = v115;
                      v113 = v114;
                    }
                  }

                  *v110 = *v112;
                  v110[1] = v112[1];
                  v110[2] = v112[2];
                  v110 = v112;
                  v109 = v113;
                }

                while (v113 <= (v107 - 2) / 2);
                if (v112 == (v108 - 3))
                {
                  *v112 = v147;
                  v112[1] = v145;
                  v112[2] = v143;
                }

                else
                {
                  *v112 = *(v108 - 3);
                  v112[1] = *(v108 - 2);
                  v112[2] = *(v108 - 1);
                  *(v108 - 3) = v147;
                  *(v108 - 2) = v145;
                  *(v108 - 1) = v143;
                  v116 = v112 - v7 + 24;
                  if (v116 >= 25)
                  {
                    v117 = (-2 - 0x5555555555555555 * (v116 >> 3)) >> 1;
                    v118 = &v7[3 * v117];
                    result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(v118, v112);
                    if ((result & 0x80) != 0)
                    {
                      v119 = *v112;
                      v120 = v112[1];
                      v121 = v112[2];
                      v122 = *v118;
                      do
                      {
                        v123 = v112;
                        v112 = v118;
                        *v123 = v122;
                        v123[1] = v118[1];
                        v123[2] = v118[2];
                        if (!v117)
                        {
                          break;
                        }

                        v117 = (v117 - 1) >> 1;
                        v118 = &v7[3 * v117];
                        v122 = *v118;
                        v124 = *v118 < v119;
                        if (*v118 == v119)
                        {
                          v125 = v118[1];
                          v76 = v125 == v120;
                          v124 = v125 < v120;
                          if (v76)
                          {
                            v126 = v118[2];
                            v76 = v126 == v121;
                            v124 = v126 < v121;
                            if (v76)
                            {
                              break;
                            }
                          }
                        }
                      }

                      while (v124);
                      *v112 = v119;
                      v112[1] = v120;
                      v112[2] = v121;
                    }
                  }
                }

                a2 = v108 - 3;
              }

              while (v107-- > 2);
            }

            return result;
          }

          v15 = v13 >> 1;
          v16 = &v7[3 * (v13 >> 1)];
          if (v12 < 0xC01)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,0>(v16, v7, v8);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,0>(v7, v16, v8);
            v17 = 3 * v15;
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,0>(v7 + 3, &v7[v17 - 3], v9);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,0>(v7 + 6, &v7[v17 + 3], v10);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,0>(&v7[v17 - 3], v16, &v7[v17 + 3]);
            v18 = *v7;
            *v7 = *v16;
            *v16 = v18;
            v19 = v7[2];
            v7[2] = v16[2];
            v16[2] = v19;
          }

          --a3;
          a2 = v146;
          if (a4)
          {
            break;
          }

          result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(v7 - 3, v7);
          if ((result & 0x80) != 0)
          {
            break;
          }

          v48 = *v7;
          v47 = v7[1];
          v49 = v7[2];
          v50 = *v7 < *v8;
          if (*v7 == *v8 && (v51 = *(v146 - 2), v76 = v47 == v51, v50 = v47 < v51, v76))
          {
            if (v49 < *(v146 - 1))
            {
              goto LABEL_83;
            }
          }

          else if (v50)
          {
LABEL_83:
            for (i = v7 + 3; ; i += 3)
            {
              v54 = v48 < *i;
              if (v48 == *i && (v55 = i[1], v76 = v47 == v55, v54 = v47 < v55, v76))
              {
                if (v49 < i[2])
                {
                  goto LABEL_91;
                }
              }

              else if (v54)
              {
                goto LABEL_91;
              }
            }
          }

          for (i = v7 + 3; i < v146; i += 3)
          {
            v52 = v48 < *i;
            if (v48 == *i && (v53 = i[1], v76 = v47 == v53, v52 = v47 < v53, v76))
            {
              if (v49 < i[2])
              {
                break;
              }
            }

            else if (v52)
            {
              break;
            }
          }

LABEL_91:
          v56 = v146;
          if (i < v146)
          {
            v57 = v8;
            do
            {
              v56 = v57;
              v58 = v48 < *v57;
              if (v48 == *v57)
              {
                v59 = v57[1];
                v76 = v47 == v59;
                v58 = v47 < v59;
                if (v76)
                {
                  v60 = v57[2];
                  v76 = v49 == v60;
                  v58 = v49 < v60;
                  if (v76)
                  {
                    break;
                  }
                }
              }

              v57 -= 3;
            }

            while (v58);
          }

          if (i < v56)
          {
            v61 = *i;
            v62 = *v56;
            do
            {
              *i = v62;
              *v56 = v61;
              v63 = i[1];
              i[1] = v56[1];
              v56[1] = v63;
              v64 = i[2];
              i[2] = v56[2];
              v56[2] = v64;
              do
              {
                while (1)
                {
                  v65 = i[3];
                  i += 3;
                  v61 = v65;
                  v66 = v48 < v65;
                  if (v48 == v65)
                  {
                    v67 = i[1];
                    v76 = v47 == v67;
                    v66 = v47 < v67;
                    if (v76)
                    {
                      break;
                    }
                  }

                  if (v66)
                  {
                    goto LABEL_107;
                  }
                }
              }

              while (v49 >= i[2]);
              v61 = v48;
LABEL_107:
              v68 = (v56 - 3);
              while (1)
              {
                v56 = v68;
                v62 = *v68;
                v69 = v48 < *v68;
                if (v48 == *v68)
                {
                  v70 = v68[1];
                  v76 = v47 == v70;
                  v69 = v47 < v70;
                  if (v76)
                  {
                    v71 = v68[2];
                    v76 = v49 == v71;
                    v69 = v49 < v71;
                    if (v76)
                    {
                      break;
                    }
                  }
                }

                v68 -= 3;
                if (!v69)
                {
                  goto LABEL_115;
                }
              }

              v62 = v48;
LABEL_115:
              ;
            }

            while (i < v56);
          }

          if (i - 3 != v7)
          {
            *v7 = *(i - 3);
            v7[1] = *(i - 2);
            v7[2] = *(i - 1);
          }

          a4 = 0;
          *(i - 3) = v48;
          *(i - 2) = v47;
          *(i - 1) = v49;
        }

        v20 = *v7;
        v21 = v7[1];
        v22 = v7 + 3;
        v23 = v7[2];
        while (1)
        {
          v24 = v22;
          v25 = *v22;
          v26 = *v22 < v20;
          if (*v22 == v20)
          {
            v27 = v22[1];
            v76 = v27 == v21;
            v26 = v27 < v21;
            if (v76)
            {
              v28 = v22[2];
              v76 = v28 == v23;
              v26 = v28 < v23;
              if (v76)
              {
                break;
              }
            }
          }

          v22 += 3;
          if (!v26)
          {
            v29 = v24 - 3;
            goto LABEL_25;
          }
        }

        v29 = v22 - 3;
        v25 = *v7;
LABEL_25:
        j = v8;
        if (v29 != v7)
        {
          while (1)
          {
            v31 = *j < v20;
            if (*j == v20 && (v32 = j[1], v76 = v32 == v21, v31 = v32 < v21, v76))
            {
              if (j[2] < v23)
              {
                goto LABEL_47;
              }
            }

            else if (v31)
            {
              goto LABEL_47;
            }

            j -= 3;
          }
        }

        j = v146;
        if (v24 < v146)
        {
          for (j = v8; ; j -= 3)
          {
            v33 = *j < v20;
            if (*j == v20 && (v34 = j[1], v76 = v34 == v21, v33 = v34 < v21, v76))
            {
              if (j[2] < v23 || v24 >= j)
              {
                break;
              }
            }

            else if (v24 >= j || v33)
            {
              break;
            }
          }
        }

LABEL_47:
        i = v24;
        if (v24 < j)
        {
          v36 = *j;
          i = v24;
          v37 = j;
          do
          {
            *i = v36;
            *v37 = v25;
            v38 = i[1];
            i[1] = v37[1];
            v37[1] = v38;
            v39 = i[2];
            i[2] = v37[2];
            v37[2] = v39;
            do
            {
              while (1)
              {
                v40 = i[3];
                i += 3;
                v25 = v40;
                v41 = v40 < v20;
                if (v40 == v20)
                {
                  v42 = i[1];
                  v76 = v42 == v21;
                  v41 = v42 < v21;
                  if (v76)
                  {
                    break;
                  }
                }

                if (!v41)
                {
                  goto LABEL_56;
                }
              }
            }

            while (i[2] < v23);
            v25 = v20;
            do
            {
LABEL_56:
              while (1)
              {
                v43 = *(v37 - 3);
                v37 -= 3;
                v36 = v43;
                v44 = v43 < v20;
                if (v43 == v20)
                {
                  v45 = v37[1];
                  v76 = v45 == v21;
                  v44 = v45 < v21;
                  if (v76)
                  {
                    break;
                  }
                }

                if (v44)
                {
                  goto LABEL_62;
                }
              }
            }

            while (v37[2] >= v23);
            v36 = v20;
LABEL_62:
            ;
          }

          while (i < v37);
        }

        if (i - 3 != v7)
        {
          *v7 = *(i - 3);
          v7[1] = *(i - 2);
          v7[2] = *(i - 1);
        }

        *(i - 3) = v20;
        *(i - 2) = v21;
        *(i - 1) = v23;
        if (v24 >= j)
        {
          break;
        }

LABEL_68:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,false>(v7, i - 3, a3, a4 & 1);
        a4 = 0;
      }

      v46 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *>(v7, i - 3);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *>(i, v146);
      if (result)
      {
        break;
      }

      if (!v46)
      {
        goto LABEL_68;
      }
    }

    a2 = (i - 3);
    if (!v46)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(void *a1, void *a2)
{
  v3 = *a1 == *a2;
  if (*a1 < *a2)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

  if (v3)
  {
    v5 = a1[1];
    v6 = a2[1];
    result = v5 < v6 ? 0xFFFFFFFFLL : 1;
    if (v5 == v6)
    {
      v7 = a1[2];
      v8 = a2[2];
      v9 = v7 == v8;
      if (v7 < v8)
      {
        v10 = -1;
      }

      else
      {
        v10 = 1;
      }

      if (v9)
      {
        return 0;
      }

      else
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(a2, a1);
  result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(a3, a2);
  if (v6 < 0)
  {
    v14 = a1 + 2;
    v15 = *a1;
    if (result < 0)
    {
      *a1 = *a3;
      *a3 = v15;
      v19 = a1[1];
      a1[1] = a3[1];
    }

    else
    {
      *a1 = *a2;
      *a2 = v15;
      v16 = a1[1];
      a1[1] = a2[1];
      a2[1] = v16;
      v14 = a2 + 2;
      v17 = a1[2];
      a1[2] = a2[2];
      a2[2] = v17;
      result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(a3, a2);
      if ((result & 0x80) == 0)
      {
        return result;
      }

      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = a2[1];
      a2[1] = a3[1];
    }

    a3[1] = v19;
    v11 = a3 + 2;
    goto LABEL_10;
  }

  if (result < 0)
  {
    v8 = *a2;
    *a2 = *a3;
    *a3 = v8;
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = a2 + 2;
    v10 = a2[2];
    a2[2] = a3[2];
    a3[2] = v10;
    result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(a2, a1);
    if ((result & 0x80) != 0)
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
      v13 = a1[1];
      a1[1] = a2[1];
      a2[1] = v13;
      v14 = a1 + 2;
LABEL_10:
      v20 = *v14;
      *v14 = *v11;
      *v11 = v20;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,0>(a1, a2, a3);
  result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(a4, a3);
  if ((result & 0x80) != 0)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    v10 = a3[1];
    a3[1] = a4[1];
    a4[1] = v10;
    v11 = a3[2];
    a3[2] = a4[2];
    a4[2] = v11;
    result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(a3, a2);
    if ((result & 0x80) != 0)
    {
      v12 = *a2;
      *a2 = *a3;
      *a3 = v12;
      v13 = a2[1];
      a2[1] = a3[1];
      a3[1] = v13;
      v14 = a2[2];
      a2[2] = a3[2];
      a3[2] = v14;
      result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(a2, a1);
      if ((result & 0x80) != 0)
      {
        v15 = *a1;
        *a1 = *a2;
        *a2 = v15;
        v16 = a1[1];
        a1[1] = a2[1];
        a2[1] = v16;
        v17 = a1[2];
        a1[2] = a2[2];
        a2[2] = v17;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,0>(a1, a2, a3, a4);
  result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(a5, a4);
  if ((result & 0x80) != 0)
  {
    v11 = *a4;
    *a4 = *a5;
    *a5 = v11;
    v12 = a4[1];
    a4[1] = a5[1];
    a5[1] = v12;
    v13 = a4[2];
    a4[2] = a5[2];
    a5[2] = v13;
    result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(a4, a3);
    if ((result & 0x80) != 0)
    {
      v14 = *a3;
      *a3 = *a4;
      *a4 = v14;
      v15 = a3[1];
      a3[1] = a4[1];
      a4[1] = v15;
      v16 = a3[2];
      a3[2] = a4[2];
      a4[2] = v16;
      result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(a3, a2);
      if ((result & 0x80) != 0)
      {
        v17 = *a2;
        *a2 = *a3;
        *a3 = v17;
        v18 = a2[1];
        a2[1] = a3[1];
        a3[1] = v18;
        v19 = a2[2];
        a2[2] = a3[2];
        a3[2] = v19;
        result = std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(a2, a1);
        if ((result & 0x80) != 0)
        {
          v20 = *a1;
          *a1 = *a2;
          *a2 = v20;
          v21 = a1[1];
          a1[1] = a2[1];
          a2[1] = v21;
          v22 = a1[2];
          a1[2] = a2[2];
          a2[2] = v22;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *>(uint64_t *a1, uint64_t *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        if ((std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(a2 - 3, a1) & 0x80) != 0)
        {
          v5 = *a1;
          *a1 = *(a2 - 3);
          *(a2 - 3) = v5;
          v6 = a1[1];
          a1[1] = *(a2 - 2);
          *(a2 - 2) = v6;
          v7 = a1[2];
          a1[2] = *(a2 - 1);
          *(a2 - 1) = v7;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,0>(a1, a1 + 3, a2 - 3);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,0>(a1, a1 + 3, a1 + 6, a2 - 3);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
      return 1;
  }

LABEL_11:
  v8 = a1 + 6;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,0>(a1, a1 + 3, a1 + 6);
  v9 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    if ((std::__tuple_compare_three_way[abi:nn200100]<unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,0ul,1ul,2ul>(v9, v8) & 0x80) != 0)
    {
      v12 = *v9;
      v13 = v9[1];
      v14 = v9[2];
      v15 = v10;
      v16 = *v8;
      while (1)
      {
        v17 = v15;
        v18 = (a1 + v15);
        v19 = *(a1 + v15 + 56);
        v20 = v18[8];
        v18[9] = v16;
        v18[10] = v19;
        v18[11] = v20;
        if (v17 == -48)
        {
          break;
        }

        v16 = v18[3];
        v21 = v12 < v16;
        if (v12 != v16 || (v22 = *(a1 + v17 + 32), v23 = v13 == v22, v21 = v13 < v22, !v23) || (v24 = *(a1 + v17 + 40), v23 = v14 == v24, v21 = v14 < v24, !v23))
        {
          v15 = v17 - 24;
          if (v21)
          {
            continue;
          }
        }

        v25 = (a1 + v17 + 48);
        goto LABEL_23;
      }

      v25 = a1;
LABEL_23:
      *v25 = v12;
      v25[1] = v13;
      v25[2] = v14;
      if (++v11 == 8)
      {
        return v9 + 3 == a2;
      }
    }

    v8 = v9;
    v10 += 24;
    v9 += 3;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

void ___ZL25ProfilingTimingDataLegacyP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP12NSDictionaryP19NSMutableDictionaryS6_P14NSMutableArrayIP8NSNumberEjjjP21GTAGXPerfStateControl_block_invoke(uint64_t a1)
{
  v1 = a1;
  v2 = [*(*(a1 + 72) + 8) defaultCommandQueue];
  [v2 setStatEnabled:1];
  v3 = [v2 availableCounters];
  if (IsCounterAvailable(v3, &cfstr_SwPbused.isa))
  {
    v4 = @"SW_PBUsed";
  }

  else
  {
    if (!IsCounterAvailable(v3, &cfstr_Fedf2c59.isa))
    {
      goto LABEL_6;
    }

    v4 = @"_fedf2c59";
  }

  [*(*(*(v1 + 64) + 8) + 40) addObject:v4];
LABEL_6:
  v5 = [v2 subdivideCounterList:*(*(*(v1 + 64) + 8) + 40)];
  [v2 setStatEnabled:0];
  v6 = *(v1 + 32);
  v7 = CalculateFrameTimeLegacy(*(v1 + 72), *(v1 + 80), v5, *(v1 + 96), *(v1 + 40), 0, *(v1 + 100), *(v1 + 88));
  [v6 addDependency:v7];

  v8 = *(v1 + 32);
  v9 = CalculateFrameTimeLegacy(*(v1 + 72), *(v1 + 80), v5, *(v1 + 104), *(v1 + 40), 1, *(v1 + 100), *(v1 + 88));
  [v8 addDependency:v9];

  v10 = CollectCounters(*(v1 + 72), *(v1 + 80), *(*(*(v1 + 64) + 8) + 40), v5, *(v1 + 48), *(v1 + 104), *(v1 + 100), *(v1 + 88), v41);
  v11 = *(v1 + 48);
  v12 = *(*(*(v1 + 64) + 8) + 40);
  v13 = v11;
  v14 = MEMORY[0x277CCA8C8];
  v57 = MEMORY[0x277D85DD0];
  v58 = 3221225472;
  v59 = ___ZL17TimeDataOperationP7NSArrayP19NSMutableDictionaryP26GTMTLReplayOperationQueues_block_invoke;
  v60 = &unk_279657D20;
  v61 = v12;
  v62 = v13;
  v15 = v12;
  v16 = v13;
  v17 = [v14 blockOperationWithBlock:&v57];

  [v17 addDependency:v10];
  [*(*(v1 + 80) + 8) addOperation:v17];
  [*(v1 + 32) addDependency:v17];
  v18 = *(v1 + 72);
  v19 = *(v1 + 56);
  v20 = *(v1 + 100);
  v53 = *(v1 + 80);
  v49 = *(*(*(v1 + 64) + 8) + 40);
  v21 = v5;
  v48 = v19;
  v50 = v18;
  v54 = [*(v18 + 8) defaultCommandQueue];
  v22 = [(NSArray *)v21 count];
  v55 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v22];
  v56 = v22;
  if (v22)
  {
    v23 = v22;
    do
    {
      v24 = [MEMORY[0x277CBEB28] dataWithCapacity:0x10000];
      [v55 addObject:v24];

      --v23;
    }

    while (v23);
  }

  v25 = 0x277CCA000uLL;
  v26 = MEMORY[0x277CCA8C8];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = ___ZL21CollectBlitSplitTimesP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yP19NSMutableDictionaryjjP21GTAGXPerfStateControl_block_invoke;
  v74[3] = &unk_279657B18;
  v47 = v49;
  v75 = v47;
  v27 = v55;
  v76 = v27;
  v46 = v48;
  v77 = v46;
  v28 = [v26 blockOperationWithBlock:v74];
  v29 = v28;
  v52 = v21;
  if (v56)
  {
    v51 = v28;
    v42 = v1;
    v43 = v10;
    v44 = v3;
    v45 = v2;
    v30 = 0;
    v31 = MEMORY[0x277D85DD0];
    v32 = vrev64_s32(v20);
    v33 = v53;
    do
    {
      v34 = *(v25 + 2248);
      v70[0] = v31;
      v70[1] = 3221225472;
      v70[2] = ___ZL21CollectBlitSplitTimesP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yP19NSMutableDictionaryjjP21GTAGXPerfStateControl_block_invoke_2;
      v70[3] = &unk_279658B00;
      v35 = v27;
      v71 = v35;
      v73 = v30;
      v36 = v52;
      v72 = v36;
      v37 = [v34 blockOperationWithBlock:v70];
      [v51 addDependency:v37];
      v38 = *(v25 + 2248);
      v57 = MEMORY[0x277D85DD0];
      v58 = 3221225472;
      v59 = ___ZL21CollectBlitSplitTimesP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yP19NSMutableDictionaryjjP21GTAGXPerfStateControl_block_invoke_3;
      v60 = &unk_2796588C8;
      v65 = v50;
      v61 = v36;
      v66 = v30;
      v67 = 12;
      v62 = v35;
      v39 = v37;
      v63 = v39;
      v69 = v32;
      v68 = v53;
      v64 = v54;
      v40 = [v38 blockOperationWithBlock:&v57];
      [v40 setQueuePriority:-8];
      [*v53 addOperation:v40];

      ++v30;
      v25 = 0x277CCA000;
    }

    while (v56 != v30);
    v3 = v44;
    v2 = v45;
    v10 = v43;
    v1 = v42;
    v29 = v51;
  }

  else
  {
    v33 = v53;
  }

  [*(v33 + 8) addOperation:v29];

  [*(v1 + 32) addDependency:v29];
}

uint64_t IsCounterAvailable(NSArray *a1, NSString *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([(NSString *)v4 isEqualToString:*(*(&v10 + 1) + 8 * i), v10])
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

id CalculateFrameTimeLegacy(uint64_t *a1, id *a2, void *a3, int a4, void *a5, uint64_t a6, int a7, uint64_t a8)
{
  v27 = a3;
  v28 = a5;
  v26 = [a1[1] defaultCommandQueue];
  [v27 count];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x4812000000;
  v45[3] = __Block_byref_object_copy__130;
  v45[4] = __Block_byref_object_dispose__131;
  v45[5] = &unk_24DB95716;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  std::vector<std::tuple<unsigned long long,unsigned long long,unsigned long long>>::reserve(&v46, 0x80uLL);
  v15 = MEMORY[0x277CCA8C8];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = ___ZL24CalculateFrameTimeLegacyP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yjP14NSMutableArrayIP8NSNumberEmjP21GTAGXPerfStateControl_block_invoke;
  v41[3] = &unk_279658938;
  v43 = v45;
  v16 = v28;
  v42 = v16;
  v44 = a6;
  v17 = [v15 blockOperationWithBlock:v41];
  v18 = *a1;
  v19 = MEMORY[0x277CCA8C8];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = ___ZL24CalculateFrameTimeLegacyP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yjP14NSMutableArrayIP8NSNumberEmjP21GTAGXPerfStateControl_block_invoke_2;
  v29[3] = &unk_279657AA0;
  v34 = a1;
  v20 = v26;
  v30 = v20;
  v35 = a8;
  v36 = 0;
  v39 = a7;
  v40 = a4;
  v21 = v27;
  v31 = v21;
  v33 = v45;
  v37 = v18;
  v38 = a2;
  v22 = v17;
  v32 = v22;
  v23 = [v19 blockOperationWithBlock:v29];
  [v23 setQueuePriority:-8];
  [*a2 addOperation:v23];
  v24 = v22;

  _Block_object_dispose(v45, 8);
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  return v24;
}

void sub_24D8B3E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  _Block_object_dispose((v31 - 176), 8);
  v33 = *(v31 - 128);
  if (v33)
  {
    *(v31 - 120) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

id CollectCounters(id *a1, GTMTLReplayOperationQueues *a2, NSArray *a3, NSArray *a4, void *a5, NSMutableDictionary *a6, int a7, uint64_t a8, GTAGXPerfStateControl *a9)
{
  v37 = a6;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v36 = a1;
  v42 = [a1[1] defaultCommandQueue];
  v16 = [(NSArray *)v14 count];
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v16];
  if (v16)
  {
    v18 = v16;
    do
    {
      v19 = [MEMORY[0x277CBEB28] dataWithCapacity:0x10000];
      [v17 addObject:v19];

      --v18;
    }

    while (v18);
  }

  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v76 = 0;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2020000000;
  v74 = 0;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x3032000000;
  v71[3] = __Block_byref_object_copy__74;
  v71[4] = __Block_byref_object_dispose__75;
  v72 = objc_opt_new();
  v20 = MEMORY[0x277CCA8C8];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = ___ZL15CollectCountersP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yP19NSMutableDictionaryjjP21GTAGXPerfStateControl_block_invoke;
  v62[3] = &unk_279657AC8;
  v33 = v15;
  v63 = v33;
  v34 = v13;
  v64 = v34;
  v41 = v14;
  v65 = v41;
  v69 = v71;
  v70 = v16;
  v40 = v17;
  v66 = v40;
  v67 = v75;
  v68 = v73;
  v21 = [v20 blockOperationWithBlock:{v62, v15, v14, v13}];
  if (v16)
  {
    v22 = 0;
    v35 = MEMORY[0x277D85DD0];
    do
    {
      v23 = v16;
      v24 = MEMORY[0x277CCA8C8];
      v58[0] = v35;
      v58[1] = 3221225472;
      v58[2] = ___ZL15CollectCountersP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yP19NSMutableDictionaryjjP21GTAGXPerfStateControl_block_invoke_2;
      v58[3] = &unk_279658B00;
      v25 = v40;
      v59 = v25;
      v61 = v22;
      v26 = v41;
      v60 = v26;
      v27 = [v24 blockOperationWithBlock:v58];
      v28 = v21;
      [v21 addDependency:v27];
      v29 = MEMORY[0x277CCA8C8];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = ___ZL15CollectCountersP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yP19NSMutableDictionaryjjP21GTAGXPerfStateControl_block_invoke_3;
      v43[3] = &unk_279657AF0;
      v51 = v36;
      v44 = v26;
      v52 = v22;
      v53 = 63;
      v45 = v25;
      v54 = a2;
      v30 = v27;
      v56 = v37;
      v57 = a7;
      v46 = v30;
      v55 = a8;
      v47 = v42;
      v48 = v71;
      v49 = v75;
      v50 = v73;
      v31 = [v29 blockOperationWithBlock:v43];
      [v31 setQueuePriority:-8];
      v16 = v23;
      [a2->var0 addOperation:v31];

      ++v22;
      v21 = v28;
    }

    while (v23 != v22);
  }

  [a2->var1 addOperation:v21];

  _Block_object_dispose(v71, 8);
  _Block_object_dispose(v73, 8);
  _Block_object_dispose(v75, 8);

  return v21;
}

void sub_24D8B437C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, void *a51, void *a52, void *a53)
{
  _Block_object_dispose((v54 - 216), 8);

  _Block_object_dispose((v54 - 168), 8);
  _Block_object_dispose((v54 - 136), 8);

  _Unwind_Resume(a1);
}

void ___ZL17TimeDataOperationP7NSArrayP19NSMutableDictionaryP26GTMTLReplayOperationQueues_block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) lastObject];
  if ([@"SW_PBUsed" isEqualToString:v1])
  {

LABEL_4:
    v4 = a1;
    v40 = [*(a1 + 32) count] - 1;
    goto LABEL_6;
  }

  v2 = [*(a1 + 32) lastObject];
  v3 = [@"_fedf2c59" isEqualToString:v2];

  if (v3)
  {
    goto LABEL_4;
  }

  v40 = -1;
  v4 = a1;
LABEL_6:
  v27 = [*(v4 + 40) objectForKeyedSubscript:@"AverageSamples"];
  v34 = objc_opt_new();
  v35 = objc_opt_new();
  v36 = objc_opt_new();
  v32 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v27;
  v25 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v25)
  {
    v26 = *v52;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v52 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v51 + 1) + 8 * i);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v31 = v5;
        v37 = [v31 countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v37)
        {
          v33 = *v48;
          do
          {
            for (j = 0; j != v37; ++j)
            {
              if (*v48 != v33)
              {
                objc_enumerationMutation(v31);
              }

              v6 = *(*(&v47 + 1) + 8 * j);
              v42 = objc_opt_new();
              v41 = objc_opt_new();
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v39 = v6;
              v7 = [v39 countByEnumeratingWithState:&v43 objects:v55 count:16];
              if (v7)
              {
                v8 = *v44;
                v9 = &unk_2860D66C8;
                v10 = &unk_2860D66C8;
                do
                {
                  for (k = 0; k != v7; ++k)
                  {
                    if (*v44 != v8)
                    {
                      objc_enumerationMutation(v39);
                    }

                    v12 = *(*(&v43 + 1) + 8 * k);
                    v13 = MEMORY[0x277CCABB0];
                    v14 = [v12 objectAtIndexedSubscript:3];
                    v15 = [v14 objectAtIndexedSubscript:0];
                    v16 = [v13 numberWithUnsignedLongLong:{objc_msgSend(v10, "unsignedLongLongValue") + objc_msgSend(v15, "unsignedLongLongValue")}];

                    v10 = v16;
                    v17 = [v12 objectAtIndexedSubscript:3];
                    v18 = [v17 objectAtIndexedSubscript:0];
                    [v42 addObject:v18];

                    v19 = [v12 objectAtIndexedSubscript:6];
                    v20 = [v19 objectAtIndexedSubscript:0];
                    [v41 addObject:v20];

                    if (v40 != -1)
                    {
                      v21 = MEMORY[0x277CCABB0];
                      v22 = [v12 objectAtIndexedSubscript:v40];
                      v23 = [v22 objectAtIndexedSubscript:0];
                      v24 = [v21 numberWithUnsignedLongLong:{objc_msgSend(v9, "unsignedLongLongValue") + objc_msgSend(v23, "unsignedLongLongValue")}];

                      v9 = v24;
                    }
                  }

                  v7 = [v39 countByEnumeratingWithState:&v43 objects:v55 count:16];
                }

                while (v7);
              }

              else
              {
                v9 = &unk_2860D66C8;
                v10 = &unk_2860D66C8;
              }

              [v34 addObject:v10];
              [v35 addObject:v42];
              [v36 addObject:v41];
              if (v40 != -1)
              {
                [v32 addObject:v9];
              }
            }

            v37 = [v31 countByEnumeratingWithState:&v47 objects:v56 count:16];
          }

          while (v37);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v25);
  }

  [*(a1 + 40) setObject:v34 forKeyedSubscript:@"encoder time data"];
  [*(a1 + 40) setObject:v35 forKeyedSubscript:@"kick time data"];
  [*(a1 + 40) setObject:v36 forKeyedSubscript:@"kick cycle data"];
  if (v40 != -1)
  {
    [*(a1 + 40) setObject:v32 forKeyedSubscript:@"tilerParamBufBytesUsedArray"];
  }
}

void ___ZL21CollectBlitSplitTimesP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yP19NSMutableDictionaryjjP21GTAGXPerfStateControl_block_invoke(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectAtIndexedSubscript:0];
  v4 = v2;
  v5 = v3;
  v6 = [v5 length];
  v7 = [v4 count];
  v8 = [v4 count];
  v9 = [v5 bytes];
  v10 = 8 * v7;
  if (8 * v7 <= v6)
  {
    v14 = v9;
    v33 = v5;
    v34 = v1;
    v32 = v4;
    v11 = 0;
    v12 = 0;
    v15 = 0;
    v16 = 8 * v8;
    v17 = -1;
    v18 = -1;
    v19 = v6 / v10;
    do
    {
      v20 = v17;
      v17 = *v14;
      if (*v14 == v20)
      {
        v21 = v18;
      }

      else
      {
        v21 = -1;
      }

      v18 = v14[1];
      if (v18 == v21)
      {
        v18 = v21;
      }

      else
      {
        v22 = v12 - v11;
        v23 = (v12 - v11) >> 3;
        v24 = v23 + 1;
        if ((v23 + 1) >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        if (-v11 >> 2 > v24)
        {
          v24 = -v11 >> 2;
        }

        if (-v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v25);
        }

        v26 = (v12 - v11) >> 3;
        v27 = (8 * v23);
        v28 = (8 * v23 - 8 * v26);
        *v27 = 0;
        v12 = v27 + 1;
        memcpy(v28, v11, v22);
        if (v11)
        {
          operator delete(v11);
        }

        v11 = v28;
      }

      *(v12 - 1) += v14[3];
      ++v15;
      v14 = (v14 + v16);
    }

    while (v15 < v19);
    v13 = (v12 - v11) >> 3;
    v4 = v32;
    v5 = v33;
    v1 = v34;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  v35 = [MEMORY[0x277CBEB18] arrayWithCapacity:v13];
  if (v11 != v12)
  {
    v29 = v11;
    do
    {
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v29];
      [v35 addObject:v30];

      ++v29;
    }

    while (v29 != v12);
  }

  if (v11)
  {
    operator delete(v11);
  }

  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v35 forKey:@"PerDrawNsecTimes"];
  [*(v1 + 48) setObject:v31 forKeyedSubscript:@"SplitEncoderData"];
}

void ___ZL21CollectBlitSplitTimesP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yP19NSMutableDictionaryjjP21GTAGXPerfStateControl_block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 48)];
  v2 = [*(a1 + 40) objectAtIndexedSubscript:*(a1 + 48)];
  SortCounterData(v3, [v2 count]);
}

uint64_t ___ZL21CollectBlitSplitTimesP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yP19NSMutableDictionaryjjP21GTAGXPerfStateControl_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 72)];
  CollectCounterData(v2, v3, *(a1 + 80), *(a1 + 40), *(a1 + 72), *(a1 + 88), *(a1 + 48), *(a1 + 104), 1, *(a1 + 108), *(a1 + 96));

  [*(a1 + 56) finish];
  [*(a1 + 56) setStatEnabled:0];
  [*(a1 + 56) setGPUPriority:1];
  v4 = *(*(a1 + 88) + 8);
  v5 = *(a1 + 48);

  return [v4 addOperation:v5];
}

void CollectCounterData(id *a1, NSArray *a2, uint64_t a3, NSArray *a4, uint64_t a5, GTMTLReplayOperationQueues *a6, NSOperation *a7, uint64_t a8, BOOL a9, unsigned int a10, GTAGXPerfStateControl *a11)
{
  v99 = *MEMORY[0x277D85DE8];
  v17 = a2;
  v71 = a4;
  v69 = a7;
  if (a9)
  {
    v18 = 0;
  }

  else
  {
    v18 = 4;
  }

  v19 = [(NSArray *)v17 count];
  v85 = a1;
  v20 = [a1[1] defaultCommandQueue];
  v72 = v20;
  [v20 setStatEnabled:1];
  [v20 setGPUPriority:0];
  if (*(a11 + 2) || *(a11 + 1) == 1)
  {
    if (!GTAGXPerfStateControl::IsGPUPerformanceStateInduced(a11))
    {
      GTAGXPerfStateControl::EnableConsistentGPUPerfState(a11, a10);
    }

    goto LABEL_8;
  }

  if (!a8)
  {
LABEL_8:
    [v20 setStatOptions:0x10000000];
    goto LABEL_9;
  }

  v65 = [v85[1] defaultDevice];
  if (objc_opt_respondsToSelector())
  {
    [v65 setConsistentGPUPerfStateTo:a8];
  }

  [v20 setStatOptions:2415919104];

LABEL_9:
  [v20 setStatLocations:a3];
  [v20 requestCounters:v17 withIndex:a5];
  v21 = [v20 counterInfo];
  v78 = v19;
  v81 = v18;
  v83 = a5;
  v74 = a6;
  v97 = 0;
  std::vector<BOOL>::vector(v96, [(NSArray *)v17 count], &v97);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v22 = v17;
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v92 objects:v98 count:16];
  if (v23)
  {
    v24 = 0;
    v25 = *v93;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v93 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [v21 objectForKeyedSubscript:*(*(&v92 + 1) + 8 * i)];
        v28 = [v27 objectForKeyedSubscript:@"type"];

        v29 = [v28 characterAtIndex:0];
        v30 = v24 >> 6;
        v31 = 1 << v24;
        if (v29 == 68)
        {
          v32 = *(v96[0] + v30) | v31;
        }

        else
        {
          v32 = *(v96[0] + v30) & ~v31;
        }

        *(v96[0] + v30) = v32;

        ++v24;
      }

      v23 = [(NSArray *)v22 countByEnumeratingWithState:&v92 objects:v98 count:16];
    }

    while (v23);
  }

  v68 = [(NSArray *)v71 objectAtIndexedSubscript:v83];
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3321888768;
  v86[2] = ___ZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS2_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControl_block_invoke;
  v86[3] = &unk_2860BBE18;
  v89 = v81;
  v90 = v78;
  std::vector<BOOL>::vector(__p, v96);
  v67 = v68;
  v87 = v67;
  v66 = v69;
  v88 = v66;
  __p[3] = v74;
  [v20 addPerfSampleHandler:v86];
  v33 = v85[1];
  v34 = *v85;
  v82 = v33;
  if (a9)
  {
    v73 = v34[15];
    v84 = [v33 defaultCommandQueue];
    if (v34[14] + v34[13] > *(v85 + 5640))
    {
      v75 = 0;
      v79 = 0;
      v35 = 0;
      v36 = 0;
      v70 = v34[16];
      do
      {
        v37 = objc_autoreleasePoolPush();
        v38 = *(v34[16] + 24) + (*(v85 + 5640) << 6);
        v39 = *(v38 + 8);
        if (GTFenum_isBeginCommandBuffer(v39))
        {
          [v84 setStatLocations:0];
          GTMTLReplayController_restoreCommandBuffer(v85, v38);
          [v84 setStatLocations:a3];
          v75 = *(GTTraceFunc_argumentBytesWithMap(v38, *(v38 + 13), v34[2]) + 2);
          v39 = *(v38 + 8);
        }

        if (GTFenum_getConstructorType(v39) == 21)
        {
          v79 = *(GTTraceFunc_argumentBytesWithMap(v38, *(v38 + 13), v34[2]) + 2);
          InclusiveRange = GroupBuilder_findInclusiveRange(*(v73 + 12), *(v73 + 24), *(v85 + 5640));
          v41 = *InclusiveRange;
          v42 = InclusiveRange[1];
          if (v41 >= v42)
          {
            v47 = v35;
          }

          else
          {
            v43 = v34;
            v44 = (*(v70 + 24) + (v41 << 6) + 8);
            do
            {
              v46 = *v44;
              v44 += 16;
              v45 = v46;
              if (GTFenum_isSampledBlitCall(v46) || GTFenum_isSampledBlitCallAGX(v45))
              {
                ++v35;
              }

              ++v41;
            }

            while (v41 < v42);
            v47 = v35;
            v34 = v43;
          }
        }

        else
        {
          v47 = v36;
        }

        GTMTLReplayController_updateCommandEncoder(v85, v38);
        v48 = *(v38 + 8);
        if (GTFenum_isSampledBlitCall(v48) || GTFenum_isSampledBlitCallAGX(v48))
        {
          v36 = v47 - 1;
          if (v47 && v35 != v47)
          {
            v49 = [v82 blitCommandEncoderForKey:v79];
            [v49 endEncoding];
            v50 = [v82 commandBufferForKey:v75];
            v51 = [v50 blitCommandEncoder];
            [v82 setBlitCommandEncoder:v51 forKey:v79];
          }
        }

        else
        {
          v36 = v47;
        }

        GTMTLReplayController_defaultDispatchFunction(v85, v38);
        objc_autoreleasePoolPop(v37);
        v52 = (*(v85 + 5640) + 1);
        *(v85 + 5640) = v52;
      }

      while (v34[14] + v34[13] > v52);
    }
  }

  else
  {
    v84 = [v33 defaultCommandQueue];
    v97 = 0;
    for (j = *(v85 + 5640); v34[14] + v34[13] > j; *(v85 + 5640) = j)
    {
      v54 = objc_autoreleasePoolPush();
      v55 = *(v34[16] + 24) + (*(v85 + 5640) << 6);
      isBeginCommandBuffer = GTFenum_isBeginCommandBuffer(*(v55 + 8));
      if (isBeginCommandBuffer)
      {
        [v84 setStatLocations:0];
        GTMTLReplayController_restoreCommandBuffer(v85, v55);
        [v84 setStatLocations:a3];
      }

      GTMTLReplayController_updateCommandEncoder(v85, v55);
      DispatchFunction(v85, v55, &v97);
      if (isBeginCommandBuffer)
      {
        v57 = *(GTTraceFunc_argumentBytesWithMap(v55, *(v55 + 13), v34[2]) + 1);
        v58 = [v85[1] defaultCommandQueue];
        if ([v58 isStatEnabled])
        {
          v80 = [v85[1] defaultDevice];
          v59 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:70 width:16 height:16 mipmapped:0];
          [v59 setUsage:4];
          v76 = [v80 newTextureWithDescriptor:v59];
          v60 = [MEMORY[0x277CD6F48] renderPassDescriptor];
          v61 = objc_opt_new();
          [v61 setTexture:v76];
          [v61 setLoadAction:2];
          [v61 setStoreAction:1];
          [v61 setClearColor:{0.0, 0.0, 0.0, 1.0}];
          v62 = [v60 colorAttachments];
          [v62 setObject:v61 atIndexedSubscript:0];

          v63 = [v85[1] commandBufferForKey:v57];
          v64 = [v63 renderCommandEncoderWithDescriptor:v60];
          [v64 setLabel:@"GPUToolsCounterProfilingEmptyRender"];
          [v64 endEncoding];
        }
      }

      objc_autoreleasePoolPop(v54);
      j = (*(v85 + 5640) + 1);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v96[0])
  {
    operator delete(v96[0]);
  }
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:nn200100](a1, a2);
  }

  return a1;
}

void ___ZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS2_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControl_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v8 && a4)
  {
    v10 = [v8 copy];
    v11 = MEMORY[0x277CCA8C8];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3321888768;
    v16 = ___ZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS2_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControl_block_invoke_2;
    v17 = &unk_2860BBDE0;
    v20 = a4;
    v21 = *(a1 + 48);
    v12 = v10;
    v18 = v12;
    std::vector<BOOL>::vector(&__p, a1 + 64);
    v19 = *(a1 + 32);
    v13 = [v11 blockOperationWithBlock:&v14];
    [*(a1 + 40) addDependency:{v13, v14, v15, v16, v17}];
    [*(*(a1 + 88) + 8) addOperation:v13];

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_24D8B5C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:nn200100](a1, v2);
  }

  return a1;
}

void __destroy_helper_block_ea8_64c39_ZTSNSt3__16vectorIbNS_9allocatorIbEEEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    operator delete(v1);
  }
}

void ___ZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS2_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControl_block_invoke_2(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  v3 = a1[8];
  if (v3)
  {
    if (!(v3 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(a1[8]);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  memset(v5, 0, sizeof(v5));
  if ((v1 - v2) >= 2)
  {
    if ((v1 - v2) < 0x1555555555555556)
    {
      operator new();
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  v4 = v5;
  std::vector<std::vector<DYMTLEncoderInfo>>::__destroy_vector::operator()[abi:nn200100](&v4);
}

void sub_24D8B6158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_72c39_ZTSNSt3__16vectorIbNS_9allocatorIbEEEE(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    operator delete(v1);
  }
}

void std::vector<unsigned long long>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(a2);
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELb0EEEvT1_SJ_T0_NS_15iterator_traitsISJ_E15difference_typeEb(char *a1, char *a2, uint64_t a3, char a4)
{
LABEL_1:
  v203 = (a2 - 24);
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = &a2[-v8];
    v10 = 0xAAAAAAAAAAAAAAABLL * (&a2[-v8] >> 3);
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELi0EEEbT1_SJ_SJ_T0_(v8, (v8 + 24), v203);
          return;
        case 4:

          _ZNSt3__17__sort4B8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELi0EEEvT1_SJ_SJ_SJ_T0_(v8, (v8 + 24), (v8 + 48), v203);
          return;
        case 5:

          _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELi0EEEvT1_SJ_SJ_SJ_SJ_T0_(v8, (v8 + 24), (v8 + 48), (v8 + 72), v203);
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v102 = 0;
        v103 = *v203;
        v104 = *v8;
        while (1)
        {
          v105 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v102];
          v106 = *(v103 + 8 * v105);
          v107 = *(v104 + 8 * v105);
          if (v106 != v107)
          {
            break;
          }

          if (++v102 == 4)
          {
            return;
          }
        }

        if (v106 < v107)
        {
          *v8 = v103;
          *(a2 - 3) = v104;
          v182 = *(v8 + 8);
          *(v8 + 8) = *(a2 - 2);
          *(a2 - 2) = v182;
          v183 = *(v8 + 16);
          *(v8 + 16) = *(a2 - 1);
          *(a2 - 1) = v183;
        }

        return;
      }
    }

    if (v9 <= 575)
    {
      break;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return;
      }

      v126 = (v10 - 2) >> 1;
      v127 = v126;
      do
      {
        v128 = v127;
        if (v126 < v127)
        {
          goto LABEL_195;
        }

        v129 = (2 * v127) | 1;
        v130 = (v8 + 24 * v129);
        if (2 * v128 + 2 < v10)
        {
          v131 = 0;
          while (1)
          {
            v132 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v131];
            v133 = *(*v130 + 8 * v132);
            v134 = *(v130[3] + 8 * v132);
            if (v133 != v134)
            {
              break;
            }

            if (++v131 == 4)
            {
              goto LABEL_174;
            }
          }

          if (v133 < v134)
          {
            v130 += 3;
            v129 = 2 * v128 + 2;
          }
        }

LABEL_174:
        v135 = 0;
        v136 = v8 + 24 * v128;
        v137 = *v136;
        while (1)
        {
          v138 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v135];
          v139 = *(*v130 + 8 * v138);
          v140 = *(v137 + 8 * v138);
          if (v139 != v140)
          {
            break;
          }

          if (++v135 == 4)
          {
            goto LABEL_179;
          }
        }

        if (v139 < v140)
        {
          goto LABEL_195;
        }

LABEL_179:
        v141 = *(v136 + 8);
        *v136 = 0;
        *(v136 + 8) = 0;
        *(v136 + 16) = 0;
LABEL_180:
        do
        {
          v142 = v130;
          *v136 = *v130;
          *(v136 + 16) = v130[2];
          *v130 = 0;
          v130[1] = 0;
          v130[2] = 0;
          if (v126 < v129)
          {
            break;
          }

          v143 = (2 * v129) | 1;
          v130 = (v8 + 24 * v143);
          v129 = 2 * v129 + 2;
          if (v129 >= v10)
          {
LABEL_185:
            v129 = v143;
          }

          else
          {
            v144 = 0;
            while (1)
            {
              v145 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v144];
              v146 = *(*v130 + 8 * v145);
              v147 = *(v130[3] + 8 * v145);
              if (v146 != v147)
              {
                break;
              }

              if (++v144 == 4)
              {
                goto LABEL_185;
              }
            }

            if (v146 >= v147)
            {
              v129 = v143;
            }

            else
            {
              v130 += 3;
            }
          }

          v148 = 0;
          while (1)
          {
            v149 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v148];
            v150 = *(*v130 + 8 * v149);
            v151 = *(v137 + 8 * v149);
            if (v150 != v151)
            {
              break;
            }

            if (++v148 == 4)
            {
              v136 = v142;
              goto LABEL_180;
            }
          }

          v136 = v142;
        }

        while (v150 >= v151);
        *v142 = v137;
        *(v142 + 1) = v141;
LABEL_195:
        v127 = v128 - 1;
      }

      while (v128);
      v152 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      while (1)
      {
        v153 = 0;
        v154 = *v8;
        v155 = *(v8 + 8);
        *(v8 + 8) = 0;
        *(v8 + 16) = 0;
        v156 = v8;
        *v8 = 0;
        do
        {
          v157 = v156;
          v158 = &v156[24 * v153];
          v156 = v158 + 24;
          v159 = 2 * v153;
          v153 = (2 * v153) | 1;
          v160 = v159 + 2;
          if (v159 + 2 < v152)
          {
            v161 = 0;
            v164 = *(v158 + 6);
            v163 = v158 + 48;
            v162 = v164;
            while (1)
            {
              v165 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v161];
              v166 = *(*(v163 - 3) + 8 * v165);
              v167 = *(v162 + 8 * v165);
              if (v166 != v167)
              {
                break;
              }

              if (++v161 == 4)
              {
                goto LABEL_205;
              }
            }

            if (v166 < v167)
            {
              v156 = v163;
              v153 = v160;
            }
          }

LABEL_205:
          *v157 = *v156;
          *(v157 + 2) = *(v156 + 2);
          *v156 = 0;
          *(v156 + 1) = 0;
          *(v156 + 2) = 0;
        }

        while (v153 <= ((v152 - 2) >> 1));
        if (v156 == a2 - 24)
        {
          *v156 = v154;
        }

        else
        {
          *v156 = *(a2 - 24);
          *(v156 + 2) = *(a2 - 1);
          *(a2 - 3) = v154;
          *(a2 - 1) = v155;
          v168 = &v156[-v8 + 24];
          if (v168 < 25)
          {
            goto LABEL_214;
          }

          v169 = 0;
          v170 = (0xAAAAAAAAAAAAAAABLL * (v168 >> 3) - 2) >> 1;
          v171 = (v8 + 24 * v170);
          v172 = *v156;
          while (1)
          {
            v173 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v169];
            v174 = *(*v171 + 8 * v173);
            v175 = *(v172 + 8 * v173);
            if (v174 != v175)
            {
              break;
            }

            if (++v169 == 4)
            {
              goto LABEL_214;
            }
          }

          if (v174 >= v175)
          {
            goto LABEL_214;
          }

          v155 = *(v156 + 8);
          *v156 = 0;
          *(v156 + 1) = 0;
          v177 = v156;
          *(v156 + 2) = 0;
          do
          {
            v156 = v171;
            *v177 = *v171;
            *(v177 + 2) = *(v171 + 2);
            *v171 = 0;
            *(v171 + 1) = 0;
            *(v171 + 2) = 0;
            if (!v170)
            {
              break;
            }

            v178 = 0;
            v170 = (v170 - 1) >> 1;
            v171 = (v8 + 24 * v170);
            while (1)
            {
              v179 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v178];
              v180 = *(*v171 + 8 * v179);
              v181 = *(v172 + 8 * v179);
              if (v180 != v181)
              {
                break;
              }

              if (++v178 == 4)
              {
                goto LABEL_225;
              }
            }

            v177 = v156;
          }

          while (v180 < v181);
LABEL_225:
          *v156 = v172;
        }

        *(v156 + 8) = v155;
LABEL_214:
        a2 -= 24;
        if (v152-- <= 2)
        {
          return;
        }
      }
    }

    v11 = v10 >> 1;
    v12 = (v8 + 24 * (v10 >> 1));
    if (v9 < 0xC01)
    {
      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELi0EEEbT1_SJ_SJ_T0_(&a1[24 * v11], a1, v203);
    }

    else
    {
      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELi0EEEbT1_SJ_SJ_T0_(a1, &a1[24 * v11], v203);
      v13 = 3 * v11;
      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELi0EEEbT1_SJ_SJ_T0_(a1 + 3, &a1[8 * v13 - 24], a2 - 6);
      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELi0EEEbT1_SJ_SJ_T0_(a1 + 6, &a1[8 * v13 + 24], a2 - 9);
      _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELi0EEEbT1_SJ_SJ_T0_(&a1[8 * v13 - 24], v12, &a1[8 * v13 + 24]);
      v17 = *a1;
      *a1 = *v12;
      *v12 = v17;
      v18 = *(a1 + 2);
      *(a1 + 2) = v12[2];
      v12[2] = v18;
    }

    --a3;
    v19 = *a1;
    if (a4)
    {
LABEL_23:
      v29 = *(a1 + 8);
      *a1 = 0;
      *(a1 + 1) = 0;
      v30 = a1;
      *(a1 + 2) = 0;
      do
      {
        v31 = 0;
        v32 = v30;
        v34 = *(v30 + 3);
        v30 += 24;
        v33 = v34;
        while (1)
        {
          v35 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v31];
          v36 = *(v33 + 8 * v35);
          v37 = *(v19 + 8 * v35);
          if (v36 != v37)
          {
            break;
          }

          if (++v31 == 4)
          {
            goto LABEL_29;
          }
        }
      }

      while (v36 < v37);
LABEL_29:
      v38 = a2;
      if (v32 == a1)
      {
        v38 = a2;
        do
        {
          if (v30 >= v38)
          {
            break;
          }

          v45 = 0;
          v47 = *(v38 - 3);
          v38 -= 24;
          v46 = v47;
          while (1)
          {
            v48 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v45];
            v49 = *(v46 + 8 * v48);
            v50 = *(v19 + 8 * v48);
            if (v49 != v50)
            {
              break;
            }

            if (++v45 == 4)
            {
              goto LABEL_45;
            }
          }

          LOBYTE(v15) = v49 < v50;
LABEL_45:
          ;
        }

        while (v49 == v50 || (v15 & 1) == 0);
      }

      else
      {
        do
        {
          v39 = 0;
          v41 = *(v38 - 3);
          v38 -= 24;
          v40 = v41;
          while (1)
          {
            v42 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v39];
            v43 = *(v40 + 8 * v42);
            v44 = *(v19 + 8 * v42);
            if (v43 != v44)
            {
              break;
            }

            if (++v39 == 4)
            {
              goto LABEL_35;
            }
          }

          LOBYTE(v15) = v43 < v44;
LABEL_35:
          ;
        }

        while (v43 == v44 || (v15 & 1) == 0);
      }

      if (v30 >= v38)
      {
        v8 = v30;
      }

      else
      {
        v51 = *v38;
        v8 = v30;
        v52 = v38;
        do
        {
          *v8 = v51;
          *v52 = v33;
          v53 = *(v8 + 8);
          *(v8 + 8) = *(v52 + 1);
          *(v52 + 1) = v53;
          v54 = *(v8 + 16);
          *(v8 + 16) = *(v52 + 2);
          *(v52 + 2) = v54;
          do
          {
            v55 = 0;
            v56 = *(v8 + 24);
            v8 += 24;
            v33 = v56;
            while (1)
            {
              v57 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v55];
              v58 = *(v33 + 8 * v57);
              v59 = *(v19 + 8 * v57);
              if (v58 != v59)
              {
                break;
              }

              if (++v55 == 4)
              {
                goto LABEL_55;
              }
            }
          }

          while (v58 < v59);
          do
          {
LABEL_55:
            v60 = 0;
            v61 = *(v52 - 3);
            v52 -= 24;
            v51 = v61;
            while (1)
            {
              v62 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v60];
              v63 = *(v51 + 8 * v62);
              v64 = *(v19 + 8 * v62);
              if (v63 != v64)
              {
                break;
              }

              if (++v60 == 4)
              {
                goto LABEL_60;
              }
            }

            v16 = v63 < v64;
LABEL_60:
            ;
          }

          while (v63 == v64 || !v16);
        }

        while (v8 < v52);
      }

      v65 = (v8 - 24);
      if ((v8 - 24) == a1)
      {
        v67 = *v65;
        if (*v65)
        {
          *(v8 - 16) = v67;
          v200 = v29;
          operator delete(v67);
          v29 = v200;
        }
      }

      else
      {
        v66 = *a1;
        if (*a1)
        {
          *(a1 + 1) = v66;
          v199 = v29;
          operator delete(v66);
          v29 = v199;
          *a1 = 0;
          *(a1 + 1) = 0;
          *(a1 + 2) = 0;
        }

        *a1 = *(v8 - 24);
        *(a1 + 2) = *(v8 - 8);
        *v65 = 0;
        *(v8 - 16) = 0;
        *(v8 - 8) = 0;
      }

      *(v8 - 24) = v19;
      *(v8 - 16) = v29;
      if (v30 < v38)
      {
LABEL_74:
        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELb0EEEvT1_SJ_T0_NS_15iterator_traitsISJ_E15difference_typeEb(a1, (v8 - 24), a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v68 = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEEEEbT1_SJ_T0_(a1, (v8 - 24));
        if (_ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEEEEbT1_SJ_T0_(v8, a2))
        {
          a2 = (v8 - 24);
          if (v68)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v68)
        {
          goto LABEL_74;
        }
      }
    }

    else
    {
      v20 = 0;
      while (1)
      {
        v21 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v20];
        v22 = *(*(a1 - 3) + 8 * v21);
        v23 = *(v19 + 8 * v21);
        if (v22 != v23)
        {
          break;
        }

        if (++v20 == 4)
        {
          goto LABEL_18;
        }
      }

      if (v22 < v23)
      {
        goto LABEL_23;
      }

LABEL_18:
      v24 = 0;
      v25 = *(a1 + 8);
      *a1 = 0;
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      while (1)
      {
        v26 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v24];
        v27 = *(v19 + 8 * v26);
        v28 = *(*v203 + 8 * v26);
        if (v27 != v28)
        {
          break;
        }

        if (++v24 == 4)
        {
          v8 = a1;
          do
          {
LABEL_84:
            v8 += 24;
            if (v8 >= a2)
            {
              break;
            }

            v75 = 0;
            while (1)
            {
              v76 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v75];
              v77 = *(v19 + 8 * v76);
              v78 = *(*v8 + 8 * v76);
              if (v77 != v78)
              {
                break;
              }

              if (++v75 == 4)
              {
                goto LABEL_90;
              }
            }

            v14 = v77 < v78;
LABEL_90:
            ;
          }

          while (v77 == v78 || !v14);
          goto LABEL_92;
        }
      }

      v8 = a1;
      if (v27 >= v28)
      {
        goto LABEL_84;
      }

      do
      {
        v69 = 0;
        v71 = *(v8 + 24);
        v8 += 24;
        v70 = v71;
        while (1)
        {
          v72 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v69];
          v73 = *(v19 + 8 * v72);
          v74 = *(v70 + 8 * v72);
          if (v73 != v74)
          {
            break;
          }

          if (++v69 == 4)
          {
            goto LABEL_81;
          }
        }

        v14 = v73 < v74;
LABEL_81:
        ;
      }

      while (v73 == v74 || !v14);
LABEL_92:
      v79 = a2;
      if (v8 < a2)
      {
        v79 = a2;
        do
        {
          v80 = 0;
          v82 = *(v79 - 3);
          v79 -= 24;
          v81 = v82;
          while (1)
          {
            v83 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v80];
            v84 = *(v19 + 8 * v83);
            v85 = *(v81 + 8 * v83);
            if (v84 != v85)
            {
              break;
            }

            if (++v80 == 4)
            {
              goto LABEL_99;
            }
          }
        }

        while (v84 < v85);
      }

LABEL_99:
      if (v8 < v79)
      {
        v86 = *v8;
        v87 = *v79;
        do
        {
          *v8 = v87;
          *v79 = v86;
          v88 = *(v8 + 8);
          *(v8 + 8) = *(v79 + 1);
          *(v79 + 1) = v88;
          v89 = *(v8 + 16);
          *(v8 + 16) = *(v79 + 2);
          *(v79 + 2) = v89;
          do
          {
            v90 = 0;
            v91 = *(v8 + 24);
            v8 += 24;
            v86 = v91;
            while (1)
            {
              v92 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v90];
              v93 = *(v19 + 8 * v92);
              v94 = *(v86 + 8 * v92);
              if (v93 != v94)
              {
                break;
              }

              if (++v90 == 4)
              {
                goto LABEL_107;
              }
            }

            LOBYTE(v15) = v93 < v94;
LABEL_107:
            ;
          }

          while (v93 == v94 || (v15 & 1) == 0);
          do
          {
            v95 = 0;
            v96 = *(v79 - 3);
            v79 -= 24;
            v87 = v96;
            while (1)
            {
              v97 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v95];
              v15 = *(v19 + 8 * v97);
              v98 = *(v87 + 8 * v97);
              if (v15 != v98)
              {
                break;
              }

              if (++v95 == 4)
              {
                goto LABEL_114;
              }
            }
          }

          while (v15 < v98);
LABEL_114:
          ;
        }

        while (v8 < v79);
      }

      v99 = (v8 - 24);
      if ((v8 - 24) == a1)
      {
        v101 = *v99;
        if (*v99)
        {
          *(v8 - 16) = v101;
          v202 = v25;
          operator delete(v101);
          v25 = v202;
        }
      }

      else
      {
        v100 = *a1;
        if (*a1)
        {
          *(a1 + 1) = v100;
          v201 = v25;
          operator delete(v100);
          v25 = v201;
          *a1 = 0;
          *(a1 + 1) = 0;
          *(a1 + 2) = 0;
        }

        *a1 = *(v8 - 24);
        *(a1 + 2) = *(v8 - 8);
        *v99 = 0;
        *(v8 - 16) = 0;
        *(v8 - 8) = 0;
      }

      a4 = 0;
      *(v8 - 24) = v19;
      *(v8 - 16) = v25;
    }
  }

  v108 = (v8 + 24);
  v110 = v8 == a2 || v108 == a2;
  if (a4)
  {
    if (!v110)
    {
      v111 = v8;
      do
      {
        v112 = 0;
        v113 = v111;
        v111 = v108;
        v114 = *(v113 + 24);
        while (1)
        {
          v115 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v112];
          v116 = *(v114 + 8 * v115);
          v117 = *(*v113 + 8 * v115);
          if (v116 != v117)
          {
            break;
          }

          if (++v112 == 4)
          {
            goto LABEL_162;
          }
        }

        if (v116 < v117)
        {
          v118 = *(v113 + 32);
          *v108 = 0;
          *(v108 + 1) = 0;
          v119 = v108;
          *(v108 + 2) = 0;
          while (1)
          {
            v120 = v119;
            v119 = v113;
            *v120 = *v113;
            *(v120 + 16) = *(v113 + 16);
            *v113 = 0;
            *(v113 + 8) = 0;
            *(v113 + 16) = 0;
            if (v113 == v8)
            {
              break;
            }

            v121 = 0;
            v113 -= 24;
            while (1)
            {
              v122 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v121];
              v123 = *(v114 + 8 * v122);
              v124 = *(*(v119 - 24) + 8 * v122);
              if (v123 != v124)
              {
                break;
              }

              if (++v121 == 4)
              {
                goto LABEL_159;
              }
            }

            if (v123 >= v124)
            {
              goto LABEL_159;
            }
          }

          v119 = v8;
LABEL_159:
          v125 = *v119;
          if (*v119)
          {
            *(v119 + 8) = v125;
            v204 = v118;
            operator delete(v125);
            v118 = v204;
          }

          *v119 = v114;
          *(v119 + 8) = v118;
        }

LABEL_162:
        v108 = (v111 + 24);
      }

      while ((v111 + 24) != a2);
    }
  }

  else if (!v110)
  {
    do
    {
      v184 = 0;
      v185 = a1;
      a1 = v108;
      v186 = *(v185 + 3);
      while (1)
      {
        v187 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v184];
        v188 = *(v186 + 8 * v187);
        v189 = *(*v185 + 8 * v187);
        if (v188 != v189)
        {
          break;
        }

        if (++v184 == 4)
        {
          goto LABEL_241;
        }
      }

      if (v188 < v189)
      {
        v190 = *(v185 + 2);
        *a1 = 0;
        *(a1 + 1) = 0;
        v191 = a1;
        *(a1 + 2) = 0;
        do
        {
          v192 = 0;
          v193 = v191;
          v191 = v185;
          *v193 = *v185;
          *(v193 + 2) = *(v185 + 2);
          *v185 = 0;
          *(v185 + 1) = 0;
          *(v185 + 2) = 0;
          v195 = *(v185 - 3);
          v185 -= 24;
          v194 = v195;
          while (1)
          {
            v196 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v192];
            v197 = *(v186 + 8 * v196);
            v198 = *(v194 + 8 * v196);
            if (v197 != v198)
            {
              break;
            }

            if (++v192 == 4)
            {
              goto LABEL_240;
            }
          }
        }

        while (v197 < v198);
LABEL_240:
        *v191 = v186;
        *(v191 + 8) = v190;
      }

LABEL_241:
      v108 = a1 + 24;
    }

    while (a1 + 24 != a2);
  }
}

void std::vector<unsigned long long>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(a2);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<unsigned long long>::__insert_with_size[abi:nn200100]<std::__wrap_iter<unsigned long long *>,std::__wrap_iter<unsigned long long *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = (__dst - v11) >> 3;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v14);
    }

    v32 = 8 * v15;
    v33 = 8 * a5;
    v34 = (8 * v15);
    do
    {
      v35 = *v6;
      v6 += 8;
      *v34++ = v35;
      v33 -= 8;
    }

    while (v33);
    memcpy((v32 + 8 * a5), __dst, *(a1 + 8) - __dst);
    v36 = *a1;
    v37 = v32 + 8 * a5 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v38 = (__dst - v36);
    v39 = (v32 - (__dst - v36));
    memcpy(v39, v36, v38);
    v40 = *a1;
    *a1 = v39;
    *(a1 + 8) = v37;
    *(a1 + 16) = 0;
    if (v40)
    {

      operator delete(v40);
    }

    return;
  }

  v16 = v10 - __dst;
  v17 = (v10 - __dst) >> 3;
  if (v17 >= a5)
  {
    v28 = &__dst[8 * a5];
    v29 = &v10[-8 * a5];
    v30 = *(a1 + 8);
    while (v29 < v10)
    {
      v31 = *v29;
      v29 += 8;
      *v30++ = v31;
    }

    *(a1 + 8) = v30;
    if (v10 != v28)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v28);
    }

    v27 = 8 * a5;
    v25 = __dst;
    v26 = v6;
    goto LABEL_29;
  }

  v19 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v20 = &v10[v19];
  *(a1 + 8) = &v10[v19];
  if (v17 >= 1)
  {
    v21 = &__dst[8 * a5];
    v22 = &v10[v19];
    if (&v20[-8 * a5] < v10)
    {
      v23 = &__dst[a4];
      v24 = &__dst[a4 + -8 * a5];
      do
      {
        *(v23 - v6) = *(v24 - v6);
        v24 += 8;
        v23 += 8;
      }

      while (v24 - v6 < v10);
      v22 = (v23 - v6);
    }

    *(a1 + 8) = v22;
    if (v20 != v21)
    {
      memmove(&__dst[8 * a5], __dst, v20 - v21);
    }

    if (v10 != __dst)
    {
      v25 = __dst;
      v26 = v6;
      v27 = v10 - __dst;
LABEL_29:

      memmove(v25, v26, v27);
    }
  }
}

uint64_t *_ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELi0EEEbT1_SJ_SJ_T0_(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = 0;
  v4 = *a2;
  v5 = *result;
  while (1)
  {
    v6 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v3];
    v7 = *(v4 + 8 * v6);
    v8 = *(v5 + 8 * v6);
    if (v7 != v8)
    {
      break;
    }

    if (++v3 == 4)
    {
      goto LABEL_10;
    }
  }

  if (v7 >= v8)
  {
LABEL_10:
    v14 = 0;
    v15 = *a3;
    while (1)
    {
      v16 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v14];
      v17 = *(v15 + 8 * v16);
      v18 = *(v4 + 8 * v16);
      if (v17 != v18)
      {
        break;
      }

      if (++v14 == 4)
      {
        return result;
      }
    }

    if (v17 < v18)
    {
      v19 = 0;
      *a2 = v15;
      *a3 = v4;
      v20 = a2[1];
      a2[1] = a3[1];
      a3[1] = v20;
      v22 = a2 + 2;
      v21 = a2[2];
      a2[2] = a3[2];
      a3[2] = v21;
      v23 = *a2;
      v24 = *result;
      while (1)
      {
        v25 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v19];
        v26 = *(v23 + 8 * v25);
        v27 = *(v24 + 8 * v25);
        if (v26 != v27)
        {
          break;
        }

        if (++v19 == 4)
        {
          return result;
        }
      }

      if (v26 < v27)
      {
        *result = v23;
        *a2 = v24;
        v39 = result[1];
        result[1] = a2[1];
        a2[1] = v39;
        v29 = result + 2;
LABEL_30:
        v41 = *v29;
        *v29 = *v22;
        *v22 = v41;
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = *a3;
    while (1)
    {
      v11 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v9];
      v12 = *(v10 + 8 * v11);
      v13 = *(v4 + 8 * v11);
      if (v12 != v13)
      {
        break;
      }

      if (++v9 == 4)
      {
        goto LABEL_21;
      }
    }

    if (v12 < v13)
    {
      *result = v10;
      *a3 = v5;
      v28 = result[1];
      result[1] = a3[1];
      a3[1] = v28;
      v29 = result + 2;
LABEL_29:
      v22 = a3 + 2;
      goto LABEL_30;
    }

LABEL_21:
    v30 = 0;
    *result = v4;
    *a2 = v5;
    v31 = result[1];
    result[1] = a2[1];
    v29 = a2 + 2;
    v32 = a2[2];
    a2[1] = v31;
    v33 = result[2];
    result[2] = v32;
    a2[2] = v33;
    v34 = *a3;
    v35 = *a2;
    while (1)
    {
      v36 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v30];
      v37 = *(v34 + 8 * v36);
      v38 = *(v35 + 8 * v36);
      if (v37 != v38)
      {
        break;
      }

      if (++v30 == 4)
      {
        return result;
      }
    }

    if (v37 < v38)
    {
      *a2 = v34;
      *a3 = v35;
      v40 = a2[1];
      a2[1] = a3[1];
      a3[1] = v40;
      goto LABEL_29;
    }
  }

  return result;
}

uint64_t *_ZNSt3__17__sort4B8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELi0EEEvT1_SJ_SJ_SJ_T0_(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  result = _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELi0EEEbT1_SJ_SJ_T0_(a1, a2, a3);
  v9 = 0;
  v10 = *a4;
  v11 = *a3;
  while (1)
  {
    v12 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v9];
    v13 = *(v10 + 8 * v12);
    v14 = *(v11 + 8 * v12);
    if (v13 != v14)
    {
      break;
    }

    if (++v9 == 4)
    {
      return result;
    }
  }

  if (v13 < v14)
  {
    v15 = 0;
    *a3 = v10;
    *a4 = v11;
    v16 = a3[1];
    a3[1] = a4[1];
    a4[1] = v16;
    v17 = a3[2];
    a3[2] = a4[2];
    a4[2] = v17;
    v18 = *a3;
    v19 = *a2;
    while (1)
    {
      v20 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v15];
      v21 = *(v18 + 8 * v20);
      v22 = *(v19 + 8 * v20);
      if (v21 != v22)
      {
        break;
      }

      if (++v15 == 4)
      {
        return result;
      }
    }

    if (v21 < v22)
    {
      v23 = 0;
      *a2 = v18;
      *a3 = v19;
      v24 = a2[1];
      a2[1] = a3[1];
      a3[1] = v24;
      v25 = a2[2];
      a2[2] = a3[2];
      a3[2] = v25;
      v26 = *a2;
      v27 = *a1;
      while (1)
      {
        v28 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v23];
        v29 = *(v26 + 8 * v28);
        v30 = *(v27 + 8 * v28);
        if (v29 != v30)
        {
          break;
        }

        if (++v23 == 4)
        {
          return result;
        }
      }

      if (v29 < v30)
      {
        *a1 = v26;
        *a2 = v27;
        v31 = a1[1];
        a1[1] = a2[1];
        a2[1] = v31;
        v32 = a1[2];
        a1[2] = a2[2];
        a2[2] = v32;
      }
    }
  }

  return result;
}

uint64_t *_ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELi0EEEvT1_SJ_SJ_SJ_SJ_T0_(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = _ZNSt3__17__sort4B8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELi0EEEvT1_SJ_SJ_SJ_T0_(a1, a2, a3, a4);
  v11 = 0;
  v12 = *a5;
  v13 = *a4;
  while (1)
  {
    v14 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v11];
    v15 = *(v12 + 8 * v14);
    v16 = *(v13 + 8 * v14);
    if (v15 != v16)
    {
      break;
    }

    if (++v11 == 4)
    {
      return result;
    }
  }

  if (v15 < v16)
  {
    v17 = 0;
    *a4 = v12;
    *a5 = v13;
    v18 = a4[1];
    a4[1] = a5[1];
    a5[1] = v18;
    v19 = a4[2];
    a4[2] = a5[2];
    a5[2] = v19;
    v20 = *a4;
    v21 = *a3;
    while (1)
    {
      v22 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v17];
      v23 = *(v20 + 8 * v22);
      v24 = *(v21 + 8 * v22);
      if (v23 != v24)
      {
        break;
      }

      if (++v17 == 4)
      {
        return result;
      }
    }

    if (v23 < v24)
    {
      v25 = 0;
      *a3 = v20;
      *a4 = v21;
      v26 = a3[1];
      a3[1] = a4[1];
      a4[1] = v26;
      v27 = a3[2];
      a3[2] = a4[2];
      a4[2] = v27;
      v28 = *a3;
      v29 = *a2;
      while (1)
      {
        v30 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v25];
        v31 = *(v28 + 8 * v30);
        v32 = *(v29 + 8 * v30);
        if (v31 != v32)
        {
          break;
        }

        if (++v25 == 4)
        {
          return result;
        }
      }

      if (v31 < v32)
      {
        v33 = 0;
        *a2 = v28;
        *a3 = v29;
        v34 = a2[1];
        a2[1] = a3[1];
        a3[1] = v34;
        v35 = a2[2];
        a2[2] = a3[2];
        a3[2] = v35;
        v36 = *a2;
        v37 = *a1;
        while (1)
        {
          v38 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v33];
          v39 = *(v36 + 8 * v38);
          v40 = *(v37 + 8 * v38);
          if (v39 != v40)
          {
            break;
          }

          if (++v33 == 4)
          {
            return result;
          }
        }

        if (v39 < v40)
        {
          *a1 = v36;
          *a2 = v37;
          v41 = a1[1];
          a1[1] = a2[1];
          a2[1] = v41;
          v42 = a1[2];
          a1[2] = a2[2];
          a2[2] = v42;
        }
      }
    }
  }

  return result;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEEEEbT1_SJ_T0_(uint64_t *a1, uint64_t *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELi0EEEbT1_SJ_SJ_T0_(a1, a1 + 3, a2 - 3);
        return 1;
      case 4:
        _ZNSt3__17__sort4B8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELi0EEEvT1_SJ_SJ_SJ_T0_(a1, a1 + 3, a1 + 6, a2 - 3);
        return 1;
      case 5:
        _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELi0EEEvT1_SJ_SJ_SJ_SJ_T0_(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = 0;
      v6 = *(a2 - 3);
      v7 = *a1;
      while (1)
      {
        v8 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v5];
        v9 = *(v6 + 8 * v8);
        v10 = *(v7 + 8 * v8);
        if (v9 != v10)
        {
          break;
        }

        if (++v5 == 4)
        {
          return 1;
        }
      }

      if (v9 < v10)
      {
        *a1 = v6;
        *(a2 - 3) = v7;
        v28 = a1[1];
        a1[1] = *(a2 - 2);
        *(a2 - 2) = v28;
        v29 = a1[2];
        a1[2] = *(a2 - 1);
        *(a2 - 1) = v29;
      }

      return 1;
    }
  }

  v11 = a1 + 6;
  _ZNSt3__17__sort3B8nn200100INS_17_ClassicAlgPolicyERZZZL18CollectCounterDataP21GTMTLReplayControllerP7NSArrayyS5_mP26GTMTLReplayOperationQueuesP11NSOperationjbjP21GTAGXPerfStateControlEUb_EUb0_E3__0PNS_6vectorIyNS_9allocatorIyEEEELi0EEEbT1_SJ_SJ_T0_(a1, a1 + 3, a1 + 6);
  v12 = a1 + 9;
  if (a1 + 9 != a2)
  {
    v13 = 0;
    while (2)
    {
      v14 = 0;
      v15 = *v12;
      while (1)
      {
        v16 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v14];
        v17 = *(v15 + 8 * v16);
        v18 = *(*v11 + 8 * v16);
        if (v17 != v18)
        {
          break;
        }

        if (++v14 == 4)
        {
          goto LABEL_32;
        }
      }

      if (v17 < v18)
      {
        v19 = *(v12 + 1);
        *v12 = 0;
        v12[1] = 0;
        v20 = v12;
        v12[2] = 0;
        while (1)
        {
          *v20 = *v11;
          v20[2] = v11[2];
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
          if (v11 == a1)
          {
            break;
          }

          v20 = v11;
          v21 = 0;
          v23 = *(v11 - 3);
          v11 -= 3;
          v22 = v23;
          while (1)
          {
            v24 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v21];
            v25 = *(v15 + 8 * v24);
            v26 = *(v22 + 8 * v24);
            if (v25 != v26)
            {
              break;
            }

            if (++v21 == 4)
            {
              goto LABEL_29;
            }
          }

          if (v25 >= v26)
          {
            goto LABEL_29;
          }
        }

        v20 = a1;
LABEL_29:
        v27 = *v20;
        if (*v20)
        {
          v20[1] = v27;
          v31 = v19;
          operator delete(v27);
          v19 = v31;
        }

        *v20 = v15;
        *(v20 + 1) = v19;
        if (++v13 == 8)
        {
          return v12 + 3 == a2;
        }
      }

LABEL_32:
      v11 = v12;
      v12 += 3;
      if (v12 != a2)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

uint64_t *std::vector<unsigned long long>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 3);
  }

  return a1;
}

void SortCounterData(NSMutableData *a1, uint64_t a2)
{
  v3 = a1;
  qsort([(NSMutableData *)v3 mutableBytes], [(NSMutableData *)v3 length]/ (8 * a2), 8 * a2, compareSampleData);
}

uint64_t compareSampleData(void *a1, void *a2)
{
  v2 = 0;
  while (1)
  {
    v3 = CollectCounterData(GTMTLReplayController *,NSArray *,unsigned long long,NSArray *,unsigned long,GTMTLReplayOperationQueues *,NSOperation *,unsigned int,BOOL,unsigned int,GTAGXPerfStateControl *)::kCounterCompare[v2];
    v4 = a1[v3];
    v5 = a2[v3];
    if (v4 < v5)
    {
      return 0xFFFFFFFFLL;
    }

    if (v5 < v4)
    {
      break;
    }

    if (++v2 == 4)
    {
      return 0;
    }
  }

  return 1;
}

void ___ZL15CollectCountersP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yP19NSMutableDictionaryjjP21GTAGXPerfStateControl_block_invoke(uint64_t a1)
{
  v57[128] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  v37 = *(a1 + 40);
  v42 = v1;
  v40 = v2;
  v49 = [v42 count];
  v3 = [v40 objectAtIndexedSubscript:0];
  v4 = [v42 objectAtIndexedSubscript:0];
  v51 = [v3 length];
  v5 = [v4 count];

  v6 = [v37 count];
  v47 = 8 * v5;
  v7 = v51 / (8 * v5);
  v41 = [MEMORY[0x277CBEB28] dataWithLength:16 * v7 * v6];
  v46 = v6;
  v8 = 16 * v6;
  if (v49)
  {
    for (i = 0; i != v49; ++i)
    {
      v10 = [v42 objectAtIndexedSubscript:i];
      v11 = [v10 count];
      if (v11)
      {
        for (j = 0; j != v11; ++j)
        {
          v13 = [v10 objectAtIndexedSubscript:j];
          v57[j] = [v37 indexOfObject:v13];
        }
      }

      v14 = [v40 objectAtIndexedSubscript:i];
      v15 = [v14 bytes];
      v16 = [v41 mutableBytes];
      if (v47 <= v51)
      {
        v17 = 0;
        do
        {
          if (v11)
          {
            for (k = 0; k != v11; ++k)
            {
              v19 = v57[k];
              if (v19 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v20 = (v16 + 16 * v19);
                *v20 = *(v15 + 8 * k);
                v20[1] = *(v15 + 48);
              }
            }
          }

          v15 += 8 * v11;
          v16 += v8;
          ++v17;
        }

        while (v17 < v7);
      }
    }
  }

  v43 = objc_opt_new();
  v21 = [v41 bytes];
  v22 = [v41 bytes];
  if (v47 <= v51)
  {
    v45 = 0;
    v50 = 0;
    v52 = 0;
    v48 = v22 + 5;
    while (1)
    {
      v44 = v22;
      if (*v22 == *v21)
      {
        if (v22[2] != v21[2])
        {

          v52 = 0;
        }

        if (v50)
        {
          goto LABEL_24;
        }
      }

      else
      {

        v52 = 0;
      }

      v50 = [MEMORY[0x277CBEB18] array];
      [v43 addObject:v50];
LABEL_24:
      if (!v52)
      {
        v52 = [MEMORY[0x277CBEB18] array];
        [v50 addObject:v52];
      }

      v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:v46];
      [v52 addObject:v23];
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v43, "count") - 1}];
      v57[0] = v24;
      v57[1] = &unk_2860D66E0;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
      [v23 addObject:v25];

      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v50, "count") - 1}];
      v56[0] = v26;
      v56[1] = &unk_2860D66E0;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
      [v23 addObject:v27];

      v28 = v48;
      v29 = v46 - 2;
      if (v46 > 2)
      {
        do
        {
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v28 - 1)];
          v55[0] = v30;
          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v28];
          v55[1] = v31;
          v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
          [v23 addObject:v32];

          v28 += 2;
          --v29;
        }

        while (v29);
      }

      v21 = v44;
      v22 = &v44[v8 / 8];
      v48 = (v48 + v8);
      if (++v45 >= v7)
      {
        goto LABEL_29;
      }
    }
  }

  v50 = 0;
  v52 = 0;
LABEL_29:
  v33 = v43;

  [*(a1 + 32) setObject:v33 forKeyedSubscript:@"AverageSamples"];
  [*(a1 + 32) setObject:*(a1 + 48) forKeyedSubscript:@"counterLists"];
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"counters"];
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 88)];
  [*(a1 + 32) setObject:v38 forKeyedSubscript:@"numberOfPasses"];

  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v53[0] = @"enabled";
    v39 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v54[0] = v39;
    v53[1] = @"consistent";
    v34 = [MEMORY[0x277CCABB0] numberWithBool:*(*(*(a1 + 72) + 8) + 24)];
    v54[1] = v34;
    v53[2] = @"level";
    v54[2] = *(*(*(a1 + 80) + 8) + 40);
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];
    [*(a1 + 32) setObject:v35 forKeyedSubscript:@"Frame Consistent Perf Info"];
  }

  else
  {
    [*(a1 + 32) setObject:&unk_2860D6088 forKeyedSubscript:@"Frame Consistent Perf Info"];
  }
}

void ___ZL15CollectCountersP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yP19NSMutableDictionaryjjP21GTAGXPerfStateControl_block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 48)];
  v2 = [*(a1 + 40) objectAtIndexedSubscript:*(a1 + 48)];
  SortCounterData(v3, [v2 count]);
}

uint64_t ___ZL15CollectCountersP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yP19NSMutableDictionaryjjP21GTAGXPerfStateControl_block_invoke_3(uint64_t a1)
{
  GTMTLReplayController_prePlayForProfiling(*(a1 + 88));
  v2 = *(a1 + 88);
  v3 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 96)];
  CollectCounterData(v2, v3, *(a1 + 104), *(a1 + 40), *(a1 + 96), *(a1 + 112), *(a1 + 48), *(a1 + 128), 0, *(a1 + 132), *(a1 + 120));

  [*(a1 + 56) finish];
  [*(a1 + 56) setStatEnabled:0];
  [*(a1 + 56) setGPUPriority:1];
  v4 = *(a1 + 120);
  if (*(v4 + 16) || *(v4 + 4) == 1)
  {
    v5 = GTAGXPerfStateControl::ConsistentGPUPerfStateLevel(v4, 0);
    if (v5)
    {
      if ([*(*(*(a1 + 64) + 8) + 40) length])
      {
        v6 = *(*(a1 + 72) + 8);
        if (*(v6 + 24) == 1)
        {
          v7 = [v5 objectForKeyedSubscript:@"enabled"];
          *(*(*(a1 + 72) + 8) + 24) = [v7 BOOLValue];
        }

        else
        {
          *(v6 + 24) = 0;
        }

        if (*(*(*(a1 + 72) + 8) + 24) != 1)
        {
          *(*(*(a1 + 80) + 8) + 24) = 0;
          goto LABEL_13;
        }

        v11 = [v5 objectForKeyedSubscript:@"consistent"];
        v12 = [v11 BOOLValue];
      }

      else
      {
        v8 = *(*(*(a1 + 64) + 8) + 40);
        v9 = [v5 objectForKeyedSubscript:@"level"];
        [v8 setString:v9];

        v10 = [v5 objectForKeyedSubscript:@"enabled"];
        *(*(*(a1 + 72) + 8) + 24) = [v10 BOOLValue];

        v11 = [v5 objectForKeyedSubscript:@"consistent"];
        v12 = [v11 BOOLValue];
      }

      *(*(*(a1 + 80) + 8) + 24) = v12;
    }

LABEL_13:

    v4 = *(a1 + 120);
  }

  GTAGXPerfStateControl::DisableConsistentGPUPerfState(v4);
  v13 = *(*(a1 + 112) + 8);
  v14 = *(a1 + 48);

  return [v13 addOperation:v14];
}

void ___ZL24CalculateFrameTimeLegacyP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yjP14NSMutableArrayIP8NSNumberEmjP21GTAGXPerfStateControl_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v5 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3));
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::tuple<unsigned long long,unsigned long long,unsigned long long> *,false>(v3, v4, v6, 1);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *v8;
      v13 = v8[1];
      v8 += 3;
      if (v11 <= v12)
      {
        v11 = v12;
      }

      v14 = v13 >= v11;
      v15 = v13 - v11;
      if (v13 > v11)
      {
        v11 = v13;
      }

      if (!v14)
      {
        v15 = 0;
      }

      v10 += v15;
    }

    while (v8 != v9);
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
  [*(a1 + 32) setObject:? atIndexedSubscript:?];
}

uint64_t ___ZL24CalculateFrameTimeLegacyP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yjP14NSMutableArrayIP8NSNumberEmjP21GTAGXPerfStateControl_block_invoke_2(uint64_t a1)
{
  GTMTLReplayController_prePlayForProfiling(*(a1 + 64));
  [*(a1 + 32) setStatEnabled:1];
  [*(a1 + 32) isStatEnabled];
  [*(a1 + 32) setGPUPriority:0];
  v2 = *(a1 + 72);
  if (*(v2 + 16) || *(v2 + 4) == 1)
  {
    if (!GTAGXPerfStateControl::IsGPUPerformanceStateInduced(v2))
    {
      GTAGXPerfStateControl::EnableConsistentGPUPerfState(*(a1 + 72), *(a1 + 104));
    }

    [*(a1 + 32) setStatOptions:805306368];
  }

  else if (*(a1 + 108))
  {
    v7 = [*(*(a1 + 64) + 8) defaultDevice];
    if (objc_opt_respondsToSelector())
    {
      [v7 setConsistentGPUPerfStateTo:*(a1 + 108)];
    }

    [*(a1 + 32) setStatOptions:2952790016];
  }

  [*(a1 + 32) setStatLocations:*(a1 + 80)];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectAtIndexedSubscript:0];
  [v3 requestCounters:v4 withIndex:0];

  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___ZL24CalculateFrameTimeLegacyP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yjP14NSMutableArrayIP8NSNumberEmjP21GTAGXPerfStateControl_block_invoke_3;
  v8[3] = &unk_279657A78;
  v8[4] = *(a1 + 56);
  [v5 addPerfSampleHandler:v8];
  GTMTLReplayController_playTo(*(a1 + 64), *(*(a1 + 88) + 112) + *(*(a1 + 88) + 104));
  [*(a1 + 32) finish];
  [*(a1 + 32) setGPUPriority:1];
  [*(a1 + 32) setStatEnabled:0];
  GTAGXPerfStateControl::DisableConsistentGPUPerfState(*(a1 + 72));
  return [*(*(a1 + 96) + 8) addOperation:*(a1 + 48)];
}

void ___ZL24CalculateFrameTimeLegacyP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayS4_yjP14NSMutableArrayIP8NSNumberEmjP21GTAGXPerfStateControl_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v26 = a2;
  v5 = a3;
  v6 = [v26 label];
  v7 = [v6 hasPrefix:@"com.apple.gputools.replay"];

  if ((v7 & 1) == 0)
  {
    [v26 GPUStartTime];
    v9 = v8;
    [v26 GPUEndTime];
    v10 = (v9 * 1000000000.0);
    v12 = (v11 * 1000000000.0);
    v13 = *(*(a1 + 32) + 8);
    v15 = v13[7];
    v14 = v13[8];
    if (v15 >= v14)
    {
      v17 = v13[6];
      v18 = v15 - v17;
      v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v17) >> 3);
      v20 = v19 + 1;
      if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v21 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v17) >> 3);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x555555555555555)
      {
        v22 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::tuple<unsigned long long,unsigned long long,unsigned long long>>>(v22);
      }

      v23 = 24 * v19;
      *v23 = v10;
      *(v23 + 8) = v12;
      *(v23 + 16) = v26;
      v16 = 24 * v19 + 24;
      v24 = 24 * v19 - v18;
      memcpy((v23 - v18), v17, v18);
      v25 = v13[6];
      v13[6] = v24;
      v13[7] = v16;
      v13[8] = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v15 = v10;
      v15[1] = v12;
      v16 = (v15 + 3);
      v15[2] = v26;
    }

    v13[7] = v16;
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(void *a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void GTMTLReplayClient_embeddedDerivedCounterData(uint64_t a1, id *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v9 = objc_opt_new();
  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:@"profileCounters"];
    [v9 setObject:v4 forKeyedSubscript:@"profileCounters"];
  }

  else
  {
    v5 = [*(a1 + 8) defaultDevice];
    v4 = DYMTLReplayFrameProfiler_loadAnalysis(v5);

    [v9 addEntriesFromDictionary:v4];
  }

  v11 = 0x7FFFFFFF;
  [v3 objectForKeyedSubscript:@"MetalPluginName"];
  if (objc_claimAutoreleasedReturnValue())
  {
    v6 = [v3 objectForKeyedSubscript:@"gpuTarget"];
    v7 = v6;
    if (v6)
    {
      v11 = [v6 intValue];
    }
  }

  else
  {
    IOAccelerator = GetIOAccelerator();
    GetMetalPluginName(IOAccelerator, &v11);
    objc_claimAutoreleasedReturnValue();
  }

  operator new();
}

void sub_24D8BA47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, void *a24, uint64_t a25, void *a26, void *a27, void *a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, void *a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, _Unwind_Exception *exception_objecta, uint64_t a43, void *a44, id *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  STACK[0x2E0] = a18;
  std::vector<std::unordered_map<unsigned int,GTEncoderSampleIndexInfo>>::__destroy_vector::operator()[abi:nn200100](&STACK[0x2E0]);

  _Block_object_dispose(&STACK[0x208], 8);
  GRCInfo::~GRCInfo(&STACK[0x238]);

  std::unique_ptr<GTAGXPerfStateControl>::~unique_ptr[abi:nn200100](&a45);
  _Unwind_Resume(a1);
}

void ___ZL31CollectDerivedCounterDataLegacyP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP12NSDictionaryP21GTAGXPerfStateControl_block_invoke(uint64_t a1)
{
  v36[7] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"profileCounters"];
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v25 = *(a1 + 64);
  v6 = v2;
  v24 = v5;
  v36[0] = @"MTLStatCommandBufferIndex";
  v36[1] = @"MTLStatEncoderIndex";
  v36[2] = @"MTLStatCommandIndex";
  v36[3] = @"MTLStat_nSec";
  v36[4] = @"MTLStatDataMaster";
  v36[5] = @"MTLStatSampleLocation";
  v36[6] = @"MTLStatTotalGPUCycles";
  v22 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:7];
  v8 = [MEMORY[0x277CBEB98] setWithArray:v7];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v22, "count") + objc_msgSend(v7, "count")}];
  v23 = v4;
  [v9 addObjectsFromArray:v7];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v22;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if (([v8 containsObject:v14] & 1) == 0)
        {
          [v9 addObject:v14];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v15 = objc_opt_new();
  v16 = MEMORY[0x277CCA8C8];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = ___ZL18DerivedCounterDataP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP7NSArrayP19NSMutableDictionaryjP21GTAGXPerfStateControl_block_invoke;
  v30[3] = &unk_279657C30;
  v34 = v3;
  v17 = v9;
  v31 = v17;
  v18 = v24;
  v32 = v18;
  v35 = v25;
  v19 = v15;
  v33 = v19;
  v20 = [v16 blockOperationWithBlock:v30];
  [v20 setQueuePriority:-8];
  [*v25 addOperation:v20];
  v21 = v19;

  [v23 addDependency:v21];
  [*(*(a1 + 64) + 8) addOperation:*(a1 + 40)];
}

id __Block_byref_object_copy__258(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 72);
  v5 = *(a2 + 80);
  v6 = *(a2 + 88);
  *(a1 + 72) = v4;
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  *(a1 + 96) = *(a2 + 96);
  result = *(a2 + 104);
  *(a1 + 104) = result;
  *(a1 + 112) = *(a2 + 112);
  return result;
}

__n128 __Block_byref_object_copy__264(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void ___ZL28CollectDerivedCounterDataGRCP21GTMTLReplayControllerP26GTMTLReplayOperationQueuesP12NSDictionaryP21GTAGXPerfStateControl_block_invoke(uint64_t a1)
{
  v39[2] = *MEMORY[0x277D85DE8];
  GTMTLReplayController_prePlayForProfiling(*(*(*(a1 + 48) + 8) + 48));
  v2 = *(*(a1 + 48) + 8);
  v3 = *(a1 + 64);
  v4 = *(a1 + 68);
  v5 = *(a1 + 32);
  v6 = [*(v2 + 64) firstObject];
  if (v6)
  {
    if (!v4)
    {
      if (IsGPUPerformanceStateInduced(*(*(v2 + 48) + 8)))
      {
        v7 = [*(v2 + 64) firstObject];
        [v7 setOptions:&unk_2860D6100];
      }

      else
      {
        v8 = *(v2 + 112);
        if (v8)
        {
          GTAGXPerfStateControl::EnableConsistentGPUPerfState(*(v2 + 56), v8);
        }

        else
        {
          v38[0] = @"DisableOverlap";
          v38[1] = @"LockGPUPerfState";
          v39[0] = MEMORY[0x277CBEC38];
          v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
          v39[1] = v9;
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
          v11 = [*(v2 + 64) firstObject];
          [v11 setOptions:v10];
        }
      }
    }

    v12 = [v5 objectForKeyedSubscript:@"passList"];
    v13 = [v12 objectAtIndexedSubscript:v4];

    if (v13)
    {
      for (i = 0; i < [*(v2 + 72) count]; ++i)
      {
        v15 = [*(v2 + 72) objectAtIndexedSubscript:i];
        v16 = v15;
        if (!v4)
        {
          [v15 setOptions:0];
          if (([v16 requestTriggers:*(v2 + 88) firstErrorIndex:0] & 1) == 0)
          {
            v17 = *(v2 + 88);
            v18 = [v16 name];
            NSLog(&cfstr_FailedToSetTri.isa, v17, v18);
          }
        }

        v19 = [v13 objectAtIndexedSubscript:i];
        if (![v19 count])
        {
          v20 = *(v2 + 96);

          v19 = v20;
        }

        v37 = 0;
        if (([v16 requestCounters:v19 firstErrorIndex:&v37] & 1) == 0)
        {
          v36 = v37;
          v35 = [v19 count];
          v29 = v37;
          v30 = [v19 count];
          if (v29 >= v30)
          {
            v31 = &stru_2860BD438;
          }

          else
          {
            v34 = [v19 objectAtIndexedSubscript:v37];
            v31 = [v34 name];
          }

          v33 = [v16 name];
          NSLog(&cfstr_FailErrorWhile_2.isa, v36, v35, v31, v33, v4);

          if (v29 < v30)
          {
          }

          NSLog(&stru_2860C0D58.isa, v19);
          goto LABEL_34;
        }

        if (([v16 setEnabled:1] & 1) == 0)
        {
          v32 = [v16 name];
          NSLog(&cfstr_FailErrorWhile_3.isa, v32, v4);

LABEL_34:
          goto LABEL_35;
        }
      }

      v21 = [*(*(*(a1 + 48) + 8) + 64) firstObject];
      v22 = [v21 startSampling];

      if (v22)
      {
        GRCInfo::ReplayForKickCounters((*(*(a1 + 48) + 8) + 48), (*(*(*(a1 + 56) + 8) + 48) + 40 * *(a1 + 68)));
        v23 = objc_autoreleasePoolPush();
        v24 = *(*(a1 + 48) + 8);
        v25 = GRCInfo::DrainRawFrameData((v24 + 48));
        v26 = GRCInfo::PostProcessFrameData(v24 + 48, v25);

        if (v26)
        {
          [*(a1 + 40) addObject:v26];
        }

        objc_autoreleasePoolPop(v23);
        v27 = [*(*(*(a1 + 48) + 8) + 64) firstObject];
        [v27 stopSampling];

        if (*(a1 + 68) + 1 == *(a1 + 72))
        {
          GRCInfo::AddConsistencyInfo((*(*(a1 + 48) + 8) + 48));
          v28 = *(*(*(a1 + 48) + 8) + 56);

          GTAGXPerfStateControl::DisableConsistentGPUPerfState(v28);
        }
      }
    }

    else
    {
LABEL_35:
    }
  }

  else
  {
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,GRCInfo::MergeCounterData(NSArray *,NSArray*<NSArray*<NSString *>>,NSArray *,std::vector<std::unordered_map<unsigned int,GRCInfo::EncoderCounterInfo>> &,NSMutableDictionary<NSArray*,NSNumber *> *)::{lambda(GRCInfo::EncoderCounterInfo const&,GRCInfo::EncoderCounterInfo const&)#1} &,GRCInfo::EncoderCounterInfo*,false>(uint64_t result, uint32x2_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = a2 - v9;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      v147 = a2[-1].u32[0];
      v148 = v147 == v9->i32[0];
      v149 = v147 < v9->i32[0];
      if (v148)
      {
        v149 = a2[-1].i32[1] < v9->i32[1];
      }

      if (v149)
      {
        v150 = *v9;
        goto LABEL_192;
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v157 = v9 + 1;
      v159 = v9 == a2 || v157 == a2;
      if (a4)
      {
        if (!v159)
        {
          v160 = 0;
          v161 = v9;
          do
          {
            v162 = v161[1].u32[0];
            v163 = v161[1].u32[1];
            v164 = v161->i32[0];
            v165 = v161->u32[1];
            v161 = v157;
            v166 = v163 < v165;
            v148 = v162 == v164;
            v167 = v162 < v164;
            if (!v148)
            {
              v166 = v167;
            }

            if (v166)
            {
              v168 = *v161;
              v169 = HIDWORD(*v161);
              v170 = v160;
              while (1)
              {
                v171 = v9 + v170;
                *(&v9[1] + v170) = *(v9 + v170);
                if (!v170)
                {
                  break;
                }

                v172 = *(v171 - 2);
                v173 = *(v171 - 1) > v169;
                v148 = v172 == v168.i32[0];
                v174 = v172 > v168.i32[0];
                if (!v148)
                {
                  v173 = v174;
                }

                v170 -= 8;
                if (!v173)
                {
                  v175 = (v9 + v170 + 8);
                  goto LABEL_216;
                }
              }

              v175 = v9;
LABEL_216:
              *v175 = v168;
            }

            v157 = v161 + 1;
            v160 += 8;
          }

          while (&v161[1] != a2);
        }
      }

      else if (!v159)
      {
        do
        {
          v220 = v7[1].u32[0];
          v221 = v7[1].u32[1];
          v222 = v7->i32[0];
          v223 = v7->u32[1];
          v7 = v157;
          v224 = v221 < v223;
          v148 = v220 == v222;
          v225 = v220 < v222;
          if (v148)
          {
            v225 = v224;
          }

          if (v225)
          {
            v226 = *v157;
            v227 = HIDWORD(*v157);
            do
            {
              v228 = v157;
              v229 = v157[-1];
              --v157;
              *v228 = v229;
              v230 = v228[-2].u32[0];
              v231 = v228[-2].i32[1] > v227;
              v148 = v230 == v226.i32[0];
              v232 = v230 > v226.i32[0];
              if (!v148)
              {
                v231 = v232;
              }
            }

            while (v231);
            *v157 = v226;
          }

          v157 = v7 + 1;
        }

        while (&v7[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v176 = (v10 - 2) >> 1;
        v177 = v176;
        do
        {
          v178 = v177;
          if (v176 >= v177)
          {
            v179 = (2 * v177) | 1;
            v180 = &v9[v179];
            if (2 * v178 + 2 >= v10)
            {
              v183 = v180->i32[0];
            }

            else
            {
              v181 = v180[1];
              v182 = vcgt_u32(v181, *v180);
              v183 = *v180;
              v184 = v182.i8[4];
              result = v182.u32[0];
              if (v183 != v181.i32[0])
              {
                v184 = v182.i8[0];
              }

              if (v184)
              {
                v183 = v180[1];
                ++v180;
                v179 = 2 * v178 + 2;
              }
            }

            v185 = &v9[v178];
            v148 = v183 == v185->i32[0];
            v186 = v183 < v185->i32[0];
            if (v148)
            {
              v186 = v180->i32[1] < v185->i32[1];
            }

            if (!v186)
            {
              v187 = *v185;
              v188 = HIDWORD(*v185);
              do
              {
                v189 = v185;
                v185 = v180;
                *v189 = *v180;
                if (v176 < v179)
                {
                  break;
                }

                v190 = (2 * v179) | 1;
                v180 = &v9[v190];
                v179 = 2 * v179 + 2;
                if (v179 >= v10)
                {
                  v193 = v180->i32[0];
                  v179 = v190;
                }

                else
                {
                  result = &v180[1];
                  v191 = v180[1];
                  v192 = vcgt_u32(v191, *v180);
                  v193 = *v180;
                  v194 = v192.i8[4];
                  if (v193 != v191.i32[0])
                  {
                    v194 = v192.i8[0];
                  }

                  if (v194)
                  {
                    v193 = v180[1];
                    ++v180;
                  }

                  else
                  {
                    v179 = v190;
                  }
                }

                v195 = v180->i32[1] < v188;
                v148 = v193 == v187.i32[0];
                v196 = v193 < v187.i32[0];
                if (!v148)
                {
                  v195 = v196;
                }
              }

              while (!v195);
              *v185 = v187;
            }
          }

          v177 = v178 - 1;
        }

        while (v178);
        do
        {
          v197 = 0;
          v198 = *v9;
          v199 = v9;
          do
          {
            v200 = &v199[v197];
            v201 = v200 + 1;
            v202 = (2 * v197) | 1;
            v197 = 2 * v197 + 2;
            if (v197 >= v10)
            {
              v197 = v202;
            }

            else
            {
              v204 = v200[2].u32[0];
              v203 = v200 + 2;
              v205 = v203[-1].u32[0];
              result = v203[-1].i32[1] < v203->i32[1];
              v206 = v205 < v204;
              if (v205 == v204)
              {
                v206 = v203[-1].i32[1] < v203->i32[1];
              }

              if (v206)
              {
                v201 = v203;
              }

              else
              {
                v197 = v202;
              }
            }

            *v199 = *v201;
            v199 = v201;
          }

          while (v197 <= (v10 - 2) / 2);
          if (v201 == --a2)
          {
            *v201 = v198;
          }

          else
          {
            *v201 = *a2;
            *a2 = v198;
            v207 = (v201 - v9 + 8) >> 3;
            v208 = v207 < 2;
            v209 = v207 - 2;
            if (!v208)
            {
              v210 = v209 >> 1;
              v211 = &v9[v210];
              v212 = *v201;
              v213 = vcgt_u32(*v201, *v211);
              v214 = (vceq_s32(*v211, *v201).u8[0] & 1) != 0 ? v213.i8[4] : v213.i8[0];
              if (v214)
              {
                do
                {
                  v215 = v201;
                  v201 = v211;
                  *v215 = *v211;
                  if (!v210)
                  {
                    break;
                  }

                  v210 = (v210 - 1) >> 1;
                  v211 = &v9[v210];
                  v216 = vcgt_u32(v212, *v211);
                  v217 = (vceq_s32(*v211, v212).u8[0] & 1) != 0 ? v216.i8[4] : v216.i8[0];
                }

                while ((v217 & 1) != 0);
                *v201 = v212;
              }
            }
          }

          v208 = v10-- <= 2;
        }

        while (!v208);
      }

      return result;
    }

    v11 = &v9[v10 >> 1];
    v12 = a2[-1].u32[0];
    v13 = a2[-1].u32[1];
    if (v10 >= 0x81)
    {
      v14 = v11->i32[0];
      v15 = v11->u32[1];
      v16 = v11->i32[0] < v9->i32[0];
      if (v11->i32[0] == v9->i32[0])
      {
        v16 = v15 < v9->i32[1];
      }

      v17 = v13 < v15;
      v148 = v12 == v14;
      v18 = v12 < v14;
      if (v148)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      if (v16)
      {
        v20 = *v9;
        if (v19)
        {
          *v9 = *v8;
          goto LABEL_43;
        }

        *v9 = *v11;
        *v11 = v20;
        v34 = a2[-1].u32[0];
        v148 = v34 == v20.i32[0];
        v35 = v34 < v20.i32[0];
        if (v148)
        {
          v35 = a2[-1].i32[1] < v20.i32[1];
        }

        if (v35)
        {
          *v11 = *v8;
LABEL_43:
          *v8 = v20;
        }
      }

      else if (v19)
      {
        v28 = *v11;
        *v11 = *v8;
        *v8 = v28;
        v29 = v11->i32[0] < v9->i32[0];
        if (v11->i32[0] == v9->i32[0])
        {
          v29 = v11->i32[1] < v9->i32[1];
        }

        if (v29)
        {
          v30 = *v9;
          *v9 = *v11;
          *v11 = v30;
        }
      }

      v37 = v11[-1].u32[0];
      v38 = v11[-1].u32[1];
      v36 = v11 - 1;
      v39 = v9[1].u32[0];
      v148 = v37 == v39;
      v40 = v37 < v39;
      if (v148)
      {
        v40 = v38 < v9[1].i32[1];
      }

      v41 = a2[-2].u32[0];
      v42 = a2[-2].i32[1] < v38;
      v148 = v41 == v37;
      v43 = v41 < v37;
      if (!v148)
      {
        v42 = v43;
      }

      if (v40)
      {
        v44 = v9[1];
        if (v42)
        {
          v9[1] = a2[-2];
          goto LABEL_65;
        }

        v9[1] = *v36;
        *v36 = v44;
        v51 = a2[-2].u32[0];
        v148 = v51 == v44.i32[0];
        v52 = v51 < v44.i32[0];
        if (v148)
        {
          v52 = a2[-2].i32[1] < v44.i32[1];
        }

        if (v52)
        {
          *v36 = a2[-2];
LABEL_65:
          a2[-2] = v44;
        }
      }

      else if (v42)
      {
        v45 = *v36;
        *v36 = a2[-2];
        a2[-2] = v45;
        v46 = v9[1].u32[0];
        v47 = v36->i32[0] < v46;
        if (v36->i32[0] == v46)
        {
          v47 = v11[-1].i32[1] < v9[1].i32[1];
        }

        if (v47)
        {
          v48 = v9[1];
          v9[1] = *v36;
          *v36 = v48;
        }
      }

      v54 = v11[1].u32[0];
      v55 = v11[1].u32[1];
      v53 = v11 + 1;
      v56 = v9[2].u32[0];
      v148 = v54 == v56;
      v57 = v54 < v56;
      if (v148)
      {
        v57 = v55 < v9[2].i32[1];
      }

      v58 = a2[-3].u32[0];
      v59 = a2[-3].i32[1] < v55;
      v148 = v58 == v54;
      v60 = v58 < v54;
      if (!v148)
      {
        v59 = v60;
      }

      if (v57)
      {
        v61 = v9[2];
        if (v59)
        {
          v9[2] = a2[-3];
          goto LABEL_82;
        }

        v9[2] = *v53;
        *v53 = v61;
        v66 = a2[-3].u32[0];
        v148 = v66 == v61.i32[0];
        v67 = v66 < v61.i32[0];
        if (v148)
        {
          v67 = a2[-3].i32[1] < v61.i32[1];
        }

        if (v67)
        {
          *v53 = a2[-3];
LABEL_82:
          a2[-3] = v61;
        }
      }

      else if (v59)
      {
        v62 = *v53;
        *v53 = a2[-3];
        a2[-3] = v62;
        v63 = v9[2].u32[0];
        v64 = v53->i32[0] < v63;
        if (v53->i32[0] == v63)
        {
          v64 = v11[1].i32[1] < v9[2].i32[1];
        }

        if (v64)
        {
          v65 = v9[2];
          v9[2] = *v53;
          *v53 = v65;
        }
      }

      v68 = v11->i32[0];
      v69 = v11->u32[1];
      v70 = v36->i32[0];
      v71 = v11[-1].u32[1];
      if (v11->i32[0] == v36->i32[0])
      {
        v72 = v69 < v71;
      }

      else
      {
        v72 = v11->i32[0] < v36->i32[0];
      }

      v73 = v53->i32[0];
      v74 = v11[1].u32[1];
      v75 = v74 < v69;
      v148 = v53->i32[0] == v68;
      v76 = v53->i32[0] < v68;
      if (!v148)
      {
        v75 = v76;
      }

      if (v72)
      {
        v77 = *v36;
        if (v75)
        {
          *v36 = *v53;
          *v53 = v77;
          v77 = *v11;
        }

        else
        {
          *v36 = *v11;
          *v11 = v77;
          v80 = v74 < v77.i32[1];
          if (v73 != v77.i32[0])
          {
            v80 = v73 < v77.i32[0];
          }

          if (v80)
          {
            v81 = *v53;
            *v11 = *v53;
            *v53 = v77;
            v77 = v81;
          }
        }
      }

      else
      {
        v77 = *v11;
        if (v75)
        {
          v78 = *v53;
          *v11 = *v53;
          *v53 = v77;
          v79 = v71 > v78.i32[1];
          if (v70 != v78.i32[0])
          {
            v79 = v70 > v78.i32[0];
          }

          if (v79)
          {
            v77 = *v36;
            *v36 = v78;
            *v11 = v77;
          }

          else
          {
            v77 = v78;
          }
        }
      }

      v82 = *v9;
      *v9 = v77;
      *v11 = v82;
      goto LABEL_102;
    }

    v21 = v9->i32[0];
    v22 = v9->u32[1];
    v23 = v9->i32[0] < v11->i32[0];
    if (v9->i32[0] == v11->i32[0])
    {
      v23 = v22 < v11->i32[1];
    }

    v24 = v13 < v22;
    v148 = v12 == v21;
    v25 = v12 < v21;
    if (v148)
    {
      v26 = v24;
    }

    else
    {
      v26 = v25;
    }

    if (!v23)
    {
      if (v26)
      {
        v31 = *v9;
        *v9 = *v8;
        *v8 = v31;
        v32 = v9->i32[0] < v11->i32[0];
        if (v9->i32[0] == v11->i32[0])
        {
          v32 = v9->i32[1] < v11->i32[1];
        }

        if (v32)
        {
          v33 = *v11;
          *v11 = *v9;
          *v9 = v33;
        }
      }

      goto LABEL_102;
    }

    v27 = *v11;
    if (v26)
    {
      *v11 = *v8;
    }

    else
    {
      *v11 = *v9;
      *v9 = v27;
      v49 = a2[-1].u32[0];
      v148 = v49 == v27.i32[0];
      v50 = v49 < v27.i32[0];
      if (v148)
      {
        v50 = a2[-1].i32[1] < v27.i32[1];
      }

      if (!v50)
      {
        goto LABEL_102;
      }

      *v9 = *v8;
    }

    *v8 = v27;
LABEL_102:
    --a3;
    if (a4)
    {
      v83 = *v9;
LABEL_108:
      v86 = v9;
      do
      {
        v87 = v86;
        v88 = v86[1].u32[0];
        ++v86;
        v89 = v88 < v83.i32[0];
        if (v88 == v83.i32[0])
        {
          v89 = v87[1].i32[1] < v83.i32[1];
        }
      }

      while (v89);
      v90 = a2;
      if (v87 == v9)
      {
        v90 = a2;
        do
        {
          if (v86 >= v90)
          {
            break;
          }

          v95 = v90[-1].u32[0];
          v96 = v90[-1].u32[1];
          --v90;
          v97 = v96 < v83.i32[1];
          v148 = v95 == v83.i32[0];
          v98 = v95 < v83.i32[0];
          if (v148)
          {
            v98 = v97;
          }
        }

        while (!v98);
      }

      else
      {
        do
        {
          v91 = v90[-1].u32[0];
          v92 = v90[-1].u32[1];
          --v90;
          v93 = v92 < v83.i32[1];
          v148 = v91 == v83.i32[0];
          v94 = v91 < v83.i32[0];
          if (v148)
          {
            v94 = v93;
          }
        }

        while (!v94);
      }

      if (v86 < v90)
      {
        v99 = v86;
        v100 = v90;
        do
        {
          v101 = *v99;
          *v99 = *v100;
          *v100 = v101;
          do
          {
            v87 = v99;
            v102 = *(v99 + 8);
            v99 += 8;
            v103 = v102 < v83.i32[0];
            if (v102 == v83.i32[0])
            {
              v103 = v87[1].i32[1] < v83.i32[1];
            }
          }

          while (v103);
          do
          {
            v104 = v100[-1].u32[0];
            v105 = v100[-1].u32[1];
            --v100;
            v106 = v105 < v83.i32[1];
            v148 = v104 == v83.i32[0];
            v107 = v104 < v83.i32[0];
            if (v148)
            {
              v107 = v106;
            }
          }

          while (!v107);
        }

        while (v99 < v100);
      }

      if (v87 != v9)
      {
        *v9 = *v87;
      }

      *v87 = v83;
      if (v86 < v90)
      {
        goto LABEL_137;
      }

      v108 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,GRCInfo::MergeCounterData(NSArray *,NSArray*<NSArray*<NSString *>>,NSArray *,std::vector<std::unordered_map<unsigned int,GRCInfo::EncoderCounterInfo>> &,NSMutableDictionary<NSArray*,NSNumber *> *)::{lambda(GRCInfo::EncoderCounterInfo const&,GRCInfo::EncoderCounterInfo const&)#1} &,GRCInfo::EncoderCounterInfo*>(v9, v87);
      v9 = v87 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,GRCInfo::MergeCounterData(NSArray *,NSArray*<NSArray*<NSString *>>,NSArray *,std::vector<std::unordered_map<unsigned int,GRCInfo::EncoderCounterInfo>> &,NSMutableDictionary<NSArray*,NSNumber *> *)::{lambda(GRCInfo::EncoderCounterInfo const&,GRCInfo::EncoderCounterInfo const&)#1} &,GRCInfo::EncoderCounterInfo*>(&v87[1], a2);
      if (result)
      {
        a2 = v87;
        if (!v108)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v108)
      {
LABEL_137:
        result = std::__introsort<std::_ClassicAlgPolicy,GRCInfo::MergeCounterData(NSArray *,NSArray*<NSArray*<NSString *>>,NSArray *,std::vector<std::unordered_map<unsigned int,GRCInfo::EncoderCounterInfo>> &,NSMutableDictionary<NSArray*,NSNumber *> *)::{lambda(GRCInfo::EncoderCounterInfo const&,GRCInfo::EncoderCounterInfo const&)#1} &,GRCInfo::EncoderCounterInfo*,false>(v7, v87, a3, a4 & 1);
        a4 = 0;
        v9 = v87 + 1;
      }
    }

    else
    {
      v84 = v9[-1].u32[0];
      if (v84 == v9->i32[0])
      {
        v85 = v9[-1].i32[1] < v9->i32[1];
      }

      else
      {
        v85 = v84 < v9->i32[0];
      }

      v83 = *v9;
      if (v85)
      {
        goto LABEL_108;
      }

      v109 = a2[-1].u32[0];
      v148 = v109 == v83.i32[0];
      v110 = v109 > v83.i32[0];
      if (v148)
      {
        v110 = a2[-1].i32[1] > v83.i32[1];
      }

      if (v110)
      {
        do
        {
          v111 = v9[1].u32[0];
          v112 = v9[1].u32[1];
          ++v9;
          v113 = v112 > v83.i32[1];
          v148 = v111 == v83.i32[0];
          v114 = v111 > v83.i32[0];
          if (v148)
          {
            v114 = v113;
          }
        }

        while (!v114);
      }

      else
      {
        v115 = v9 + 1;
        do
        {
          v9 = v115;
          if (v115 >= a2)
          {
            break;
          }

          v116 = v115->i32[0];
          v117 = v9->i32[1] > v83.i32[1];
          v148 = v116 == v83.i32[0];
          v118 = v116 > v83.i32[0];
          if (!v148)
          {
            v117 = v118;
          }

          v115 = v9 + 1;
        }

        while (!v117);
      }

      v119 = a2;
      if (v9 < a2)
      {
        v119 = a2;
        do
        {
          v120 = v119[-1].u32[0];
          v121 = v119[-1].u32[1];
          --v119;
          v122 = v121 > v83.i32[1];
          v148 = v120 == v83.i32[0];
          v123 = v120 > v83.i32[0];
          if (v148)
          {
            v123 = v122;
          }
        }

        while (v123);
      }

      while (v9 < v119)
      {
        v124 = *v9;
        *v9 = *v119;
        *v119 = v124;
        do
        {
          v125 = v9[1].u32[0];
          v126 = v9[1].u32[1];
          ++v9;
          v127 = v126 > v83.i32[1];
          v148 = v125 == v83.i32[0];
          v128 = v125 > v83.i32[0];
          if (v148)
          {
            v128 = v127;
          }
        }

        while (!v128);
        do
        {
          v129 = v119[-1].u32[0];
          v130 = v119[-1].u32[1];
          --v119;
          v131 = v130 > v83.i32[1];
          v148 = v129 == v83.i32[0];
          v132 = v129 > v83.i32[0];
          if (v148)
          {
            v132 = v131;
          }
        }

        while (v132);
      }

      v133 = v9 - 1;
      if (&v9[-1] != v7)
      {
        *v7 = *v133;
      }

      a4 = 0;
      *v133 = v83;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,GRCInfo::MergeCounterData(NSArray *,NSArray*<NSArray*<NSString *>>,NSArray *,std::vector<std::unordered_map<unsigned int,GRCInfo::EncoderCounterInfo>> &,NSMutableDictionary<NSArray*,NSNumber *> *)::{lambda(GRCInfo::EncoderCounterInfo const&,GRCInfo::EncoderCounterInfo const&)#1} &,GRCInfo::EncoderCounterInfo*,0>(v9, &v9[1], &v9[2], &a2[-1]);
    }

    if (v10 == 5)
    {
      result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,GRCInfo::MergeCounterData(NSArray *,NSArray*<NSArray*<NSString *>>,NSArray *,std::vector<std::unordered_map<unsigned int,GRCInfo::EncoderCounterInfo>> &,NSMutableDictionary<NSArray*,NSNumber *> *)::{lambda(GRCInfo::EncoderCounterInfo const&,GRCInfo::EncoderCounterInfo const&)#1} &,GRCInfo::EncoderCounterInfo*,0>(v9, &v9[1], &v9[2], &v9[3]);
      v134 = a2[-1].u32[0];
      v135 = v9[3].u32[0];
      v148 = v134 == v135;
      v136 = v134 < v135;
      if (v148)
      {
        v136 = a2[-1].i32[1] < v9[3].i32[1];
      }

      if (v136)
      {
        v137 = v9[3];
        v9[3] = *v8;
        *v8 = v137;
        v137.i32[0] = v9[3].i32[0];
        v138 = v9[2].u32[0];
        v148 = v137.i32[0] == v138;
        v139 = v137.i32[0] < v138;
        if (v148)
        {
          v139 = v9[3].i32[1] < v9[2].i32[1];
        }

        if (v139)
        {
          v141 = v9[2];
          v140 = v9[3];
          v9[2] = v140;
          v9[3] = v141;
          v142 = v9[1].u32[0];
          v148 = v142 == v140.i32[0];
          v143 = v142 > v140.i32[0];
          if (v148)
          {
            v143 = v9[1].i32[1] > v140.i32[1];
          }

          if (v143)
          {
            v144 = v9[1];
            v9[1] = v140;
            v9[2] = v144;
            v145 = v9->i32[1] > v140.i32[1];
            if (v9->i32[0] != v140.i32[0])
            {
              v145 = v9->i32[0] > v140.i32[0];
            }

            if (v145)
            {
              v146 = *v9;
              *v9 = v140;
              v9[1] = v146;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_10;
  }

  v151 = v9[1].u32[0];
  v152 = v9[1].u32[1];
  v153 = v151 < v9->i32[0];
  if (v151 == v9->i32[0])
  {
    v153 = v152 < v9->i32[1];
  }

  v154 = a2[-1].u32[0];
  v155 = a2[-1].i32[1] < v152;
  v148 = v154 == v151;
  v156 = v154 < v151;
  if (!v148)
  {
    v155 = v156;
  }

  if (v153)
  {
    v150 = *v9;
    if (v155)
    {
LABEL_192:
      *v9 = *v8;
    }

    else
    {
      *v9 = v9[1];
      v9[1] = v150;
      v233 = a2[-1].u32[0];
      v148 = v233 == v150.i32[0];
      v234 = v233 < v150.i32[0];
      if (v148)
      {
        v234 = a2[-1].i32[1] < v150.i32[1];
      }

      if (!v234)
      {
        return result;
      }

      v9[1] = *v8;
    }

    *v8 = v150;
    return result;
  }

  if (v155)
  {
    v218 = v9[1];
    v9[1] = *v8;
    *v8 = v218;
    v218.i32[0] = v9[1].i32[0];
    v148 = v218.i32[0] == v9->i32[0];
    v219 = v218.i32[0] < v9->i32[0];
    if (v148)
    {
      v219 = v9[1].i32[1] < v9->i32[1];
    }

    if (v219)
    {
      *v9->i8 = vextq_s8(*v9->i8, *v9->i8, 8uLL);
    }
  }

  return result;
}

void std::vector<unsigned long>::push_back[abi:nn200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}