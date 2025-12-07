id ComputeDerivedCounters(void *a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = a1;
  v5 = a2;
  v24 = a3;
  v23 = [v5 objectForKeyedSubscript:@"counters"];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [v5 objectForKeyedSubscript:@"AverageSamples"];
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v27;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v27 != v16)
              {
                objc_enumerationMutation(v13);
              }

              [v6 addObjectsFromArray:*(*(&v26 + 1) + 8 * j)];
            }

            v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v15);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v18 = [v25 objectForKeyedSubscript:@"DerivedCounterDictionary"];
  verifyCounterDictionary(v18);
  v19 = [v18 objectForKeyedSubscript:@"DerivedCounters"];
  v20 = [v19 allKeys];

  v21 = GTMTLReplayHost_computeDerivedCountersFromData(v23, v6, v24, v20, v25);

  return v21;
}

id BatchIdFiterableCounters()
{
  if (BatchIdFiterableCounters__once != -1)
  {
    dispatch_once(&BatchIdFiterableCounters__once, &__block_literal_global_516);
  }

  v1 = BatchIdFiterableCounters_filterableCounters;

  return v1;
}

void WriteToCSVFromCounterData(void *a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v25 = a2;
  v4 = [v3 objectForKeyedSubscript:@"counters"];
  v26 = v3;
  v5 = [v3 objectForKeyedSubscript:@"AverageSamples"];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count") + 1}];
  [v6 addObject:@"Index"];
  v24 = v4;
  [v6 addObjectsFromArray:v4];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [v6 componentsJoinedByString:{@", "}];
  [v7 addObject:v8];

  [v7 addObject:@"Frame Start 1"];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v5;
  v29 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v29)
  {
    v9 = 0;
    v28 = *v44;
    do
    {
      v10 = 0;
      do
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v10;
        v11 = *(*(&v43 + 1) + 8 * v10);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v31 = v11;
        v33 = [v31 countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (v33)
        {
          v32 = *v40;
          do
          {
            v12 = 0;
            do
            {
              if (*v40 != v32)
              {
                objc_enumerationMutation(v31);
              }

              v34 = v12;
              v13 = *(*(&v39 + 1) + 8 * v12);
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              v14 = v13;
              v15 = [v14 countByEnumeratingWithState:&v35 objects:v47 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v36;
                do
                {
                  v18 = 0;
                  v19 = v9;
                  do
                  {
                    if (*v36 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v20 = *(*(&v35 + 1) + 8 * v18);
                    [v6 removeAllObjects];
                    v9 = v19 + 1;
                    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
                    [v6 addObject:v21];

                    [v6 addObjectsFromArray:v20];
                    v22 = [v6 componentsJoinedByString:{@", "}];
                    [v7 addObject:v22];

                    ++v18;
                    v19 = v9;
                  }

                  while (v16 != v18);
                  v16 = [v14 countByEnumeratingWithState:&v35 objects:v47 count:16];
                }

                while (v16);
              }

              v12 = v34 + 1;
            }

            while (v34 + 1 != v33);
            v33 = [v31 countByEnumeratingWithState:&v39 objects:v48 count:16];
          }

          while (v33);
        }

        v10 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v29);
  }

  [v7 addObject:@"Frame End 1"];
  v23 = [v7 componentsJoinedByString:@"\n"];
  [v23 writeToURL:v25 atomically:0 encoding:4 error:0];
}

void WriteToPlistFromCounterData(void *a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v30 = a2;
  v4 = [v3 objectForKeyedSubscript:@"counters"];
  v31 = v3;
  v5 = [v3 objectForKeyedSubscript:@"AverageSamples"];
  v34 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v5;
  v35 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v35)
  {
    v6 = 0;
    v33 = *v54;
    do
    {
      v7 = 0;
      v8 = v6;
      do
      {
        v36 = v8;
        if (*v54 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v7;
        v9 = *(*(&v53 + 1) + 8 * v7);
        v40 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v9, "count")}];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v38 = v9;
        v41 = [v38 countByEnumeratingWithState:&v49 objects:v60 count:16];
        if (v41)
        {
          v10 = 0;
          v39 = *v50;
          do
          {
            v11 = 0;
            v12 = v10;
            do
            {
              v42 = v12;
              if (*v50 != v39)
              {
                objc_enumerationMutation(v38);
              }

              v43 = v11;
              v13 = *(*(&v49 + 1) + 8 * v11);
              v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v13, "count")}];
              v45 = 0u;
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v15 = v13;
              v16 = [v15 countByEnumeratingWithState:&v45 objects:v59 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = 0;
                v19 = *v46;
                do
                {
                  v20 = 0;
                  v21 = v18;
                  do
                  {
                    if (*v46 != v19)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v22 = *(*(&v45 + 1) + 8 * v20);
                    v18 = v21 + 1;
                    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Draw Call %llu", v21];
                    v24 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:v22 forKeys:v4];
                    [v14 setObject:v24 forKeyedSubscript:v23];

                    ++v20;
                    v21 = v18;
                  }

                  while (v17 != v20);
                  v17 = [v15 countByEnumeratingWithState:&v45 objects:v59 count:16];
                }

                while (v17);
              }

              v10 = v42 + 1;
              v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Command Encoder %llu", v42];
              [v40 setObject:v14 forKeyedSubscript:v25];

              v11 = v43 + 1;
              v12 = v42 + 1;
            }

            while (v43 + 1 != v41);
            v41 = [v38 countByEnumeratingWithState:&v49 objects:v60 count:16];
          }

          while (v41);
        }

        v6 = v36 + 1;
        v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Command Buffer %llu", v36];
        [v34 setObject:v40 forKeyedSubscript:v26];

        v7 = v37 + 1;
        v8 = v36 + 1;
      }

      while (v37 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v35);
  }

  v27 = MEMORY[0x277CCAC58];
  v57 = @"Frame 0";
  v58 = v34;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  v44 = 0;
  v29 = [v27 dataWithPropertyList:v28 format:100 options:0 error:&v44];

  [v29 writeToURL:v30 atomically:0];
}

void __destructor_8_s0_S_s8_s16_s40_s48_s56_s64_s80_s88_s96_s104_s112_s120_s128_s136_s144_s152_s160_s168_s176(uint64_t a1)
{
  v2 = *(a1 + 176);
}

void __BatchIdFiterableCounters_block_invoke()
{
  v0 = BatchIdFiterableCounters_filterableCounters;
  BatchIdFiterableCounters_filterableCounters = &unk_2860D5B88;
}

void __GenerateThumbnails_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(a1 + 32);
  v22 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v22)
  {
    v21 = *v33;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v32 + 1) + 8 * i);
        if ([v3 length] >= 9)
        {
          v4 = 8;
          do
          {
            v5 = ([v3 bytes] + v4);
            v6 = v5[1];
            if (v6 == -10236 || v6 == -16236)
            {
              v31 = 0;
              v29 = 0u;
              v30 = 0u;
              memset(v28, 0, sizeof(v28));
              DYTraceDecode_MTLTexture_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage(v28, v5, *v5 - 36, 0);
              v8 = *(a1 + 40);
              v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v28[0]];
              v10 = [v8 objectForKeyedSubscript:v9];

              v11 = *(a1 + 48);
              v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(&v29 + 1)];
              v13 = [v11 objectForKeyedSubscript:v12];

              v14 = *(*(a1 + 64) + 8);
              v23[0] = MEMORY[0x277D85DD0];
              v23[1] = 3221225472;
              v23[2] = __GenerateThumbnails_block_invoke_2;
              v23[3] = &unk_2796584B8;
              v24 = *(a1 + 48);
              v15 = *(a1 + 56);
              v26 = v10;
              v27 = v15;
              v25 = v13;
              v16 = v10;
              v17 = v13;
              [v14 addOperationWithBlock:v23];
            }

            v18 = *v5;
            if ((*(v5 + 33) & 0x10) != 0)
            {
              v19 = *v5;
              do
              {
                v5 = (v5 + v18);
                v18 = *v5;
                v19 += v18;
              }

              while ((*(v5 + 33) & 0x20) == 0);
            }

            else
            {
              v19 = *v5;
            }

            v4 += v19;
          }

          while (v4 < [v3 length]);
        }
      }

      v22 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v22);
  }
}

void __GenerateThumbnails_block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) count];
  v2 = *(a1 + 56);
  v3 = *(a1 + 40);
  v5 = [*(a1 + 48) objectAtIndexedSubscript:0];
  v4 = [*(a1 + 48) objectAtIndexedSubscript:1];
  (*(v2 + 16))(v2, v3, v5, v4);
}

void __FetchResourceObject_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __FetchResourceObject_block_invoke_3;
  v2[3] = &unk_279658B28;
  v3[1] = *(a1 + 48);
  objc_copyWeak(v3, (a1 + 40));
  dispatch_async(v1, v2);
  objc_destroyWeak(v3);
}

void __FetchResourceObject_block_invoke_4(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v28 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  [MEMORY[0x277CBEB28] dataWithCapacity:4096];
  v33[0] = &v45;
  v27 = v33[1] = 1024;
  v34 = v27;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained isCancelled];

  if ((v3 & 1) == 0)
  {
    [*(*(a1 + 56) + 312) waitUntilDownloadCapacity];
    v4 = *(*(a1 + 56) + 8);
    [*(v4 + 24) releaseBuffer];
    [*(v4 + 16) waitUntilCapacity];
    v5 = GetAttributes(*(a1 + 56), *(a1 + 32));
    v35 = v33;
    v6 = v28;
    v36 = v6;
    v37 = 0;
    v32 = 0;
    v7 = HarvestResourceObject();
    v8 = 0;
    v9 = v8;
    if ((v7 & 1) == 0)
    {
      (*(*(a1 + 40) + 16))();

      goto LABEL_8;
    }
  }

  v5 = *(*(*(a1 + 56) + 8) + 24);
  v10 = objc_loadWeakRetained((a1 + 48));
  v11 = [v10 isCancelled];

  if (v11)
  {
    (*(*(a1 + 40) + 16))();
    [v5 clearCommandBuffer];
  }

  else
  {
    v12 = objc_loadWeakRetained((a1 + 48));
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    v15 = *(a1 + 40);
    objc_initWeak(&location, v12);
    v16 = v28;
    v17 = v27;
    v18 = v15;
    v19 = MEMORY[0x277CCA8C8];
    v35 = MEMORY[0x277D85DD0];
    v36 = 3221225472;
    v37 = __FetchResourceObjectReplyOperation_block_invoke;
    v38 = &unk_2796585A8;
    objc_copyWeak(v42, &location);
    v20 = v16;
    v39 = v20;
    v42[1] = v13;
    v43 = v14;
    v21 = v17;
    v40 = v21;
    v22 = v18;
    v41 = v22;
    v23 = [v19 blockOperationWithBlock:&v35];

    objc_destroyWeak(v42);
    objc_destroyWeak(&location);

    v24 = objc_loadWeakRetained((a1 + 48));
    [v24 addDependency:v23];

    v25 = [v5 commandBuffer];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __FetchResourceObject_block_invoke_29;
    v29[3] = &unk_2796588A0;
    v31 = *(a1 + 56);
    v26 = v23;
    v30 = v26;
    [v25 addCompletedHandler:v29];

    [v5 commitCommandBuffer];
  }

LABEL_8:
}

void sub_24D95A170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 56));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

id GetAttributes(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"functionIndex"];
  v5 = [v4 unsignedIntValue];

  if (v5 == -1)
  {
    v7 = [v3 objectForKeyedSubscript:@"object"];
    v8 = [v7 unsignedLongLongValue];

    v6 = [*(a1 + 88) objectAtIndexedSubscript:v8];
  }

  else
  {
    v6 = v3;
  }

  v9 = v6;

  return v9;
}

void __FetchResourceObjectReplyOperation_block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained isCancelled];

  if (v3)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = [*(a1 + 32) allKeys];
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v11 = [*(a1 + 32) objectForKeyedSubscript:v10];
          v12 = PreprocessICBData(v11);
          [*(a1 + 32) setObject:v12 forKeyedSubscript:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v7);
    }

    v13 = g_signpostLog;
    v14 = v13;
    v15 = *(a1 + 64);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v16 = *(a1 + 72);
      v17 = [*(a1 + 40) length];
      *buf = 67109376;
      v29 = v16;
      v30 = 2048;
      v31 = v17;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Replayer-5-network", "%u. sendFbufStreamData %{xcode:size-in-bytes}lu", buf, 0x12u);
    }

    v18 = *(a1 + 48);
    v19 = [*(a1 + 40) copy];
    v20 = [*(a1 + 32) copy];
    (*(v18 + 16))(v18, v19, v20);

    v21 = g_signpostLog;
    v22 = v21;
    v23 = *(a1 + 64);
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v22, OS_SIGNPOST_INTERVAL_END, v23, "Replayer-5-network", &unk_24DA93952, buf, 2u);
    }
  }
}

id PreprocessICBData(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v1 count] != 2)
  {
    v8 = v1;
    goto LABEL_240;
  }

  v2 = [v1 objectAtIndexedSubscript:0];
  if (([v2 conformsToProtocol:&unk_2860F89E8] & 1) == 0)
  {
    v8 = v1;
    goto LABEL_239;
  }

  v3 = [v1 objectAtIndexedSubscript:1];
  v4 = 0x277CBE000uLL;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v3 length] != 48)
  {
    v8 = v1;
    goto LABEL_238;
  }

  v5 = [v3 bytes];
  v6 = v2;
  v197 = 0;
  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v184 = 0u;
  GTMTLCreateIndirectCommandEncoder(&v184, v5);
  v7 = *(v5 + 16);
  if ((v7 & 0xFE70) == 0)
  {
    v166 = v6;
    v9 = objc_msgSend_size(v166);
    v160 = v197;
    v168 = [MEMORY[0x277CBEB28] dataWithLength:v197 * v9];
    v164 = v9;
    if (!v9)
    {
      goto LABEL_234;
    }

    v152 = v6;
    v154 = v3;
    v155 = v2;
    v157 = 0;
    v10 = 0;
    context = 0;
    v182 = 0;
    v11 = 0;
    v12 = 0;
    v158 = 0;
    v176 = 0;
    v173 = 16;
    v162 = *(&v184 + 1);
    v13 = v160;
    while (1)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [v166 indirectRenderCommandAtIndex:v12];
      v174 = [v168 mutableBytes];
      v16 = v174 + v13 * v12;
      v17 = [v15 getCommandType];
      *(v16 + v162) = v17;
      if (v17)
      {
        break;
      }

LABEL_196:

      objc_autoreleasePoolPop(v14);
      ++v12;
      v10 += v13;
      v173 += v13;
      if (v12 == v164)
      {
        v3 = v154;
        v2 = v155;
        v4 = 0x277CBE000;
        v6 = v152;
        goto LABEL_234;
      }
    }

    v18 = v17;
    v169 = v14;
    v171 = v11;
    v19 = *(&v196 + 1);
    if (((*(&v196 + 1) - v189) >> 3) >= 1)
    {
      v20 = 0;
      v21 = ((*(&v196 + 1) - v189) >> 3) & 0x7FFFFFFFLL;
      v22 = v174 + v189 + v10;
      do
      {
        *(v22 + 8 * v20) = [v15 getVertexAttributeStrideAtIndex:v20];
        ++v20;
      }

      while (v21 != v20);
    }

    if (v18 <= 7)
    {
      if (v18 != 1)
      {
        v11 = v171;
        if (v18 == 2)
        {
          v26 = [v15 drawIndexedArguments];
          v37 = (v16 + v19);
          *v37 = [v26 primitiveType];
          v37[1] = [v26 indexCount];
          v37[2] = [v26 indexType];
          v37[3] = [v26 indexBufferGPUVirtualAddress];
          v37[4] = [v26 instanceCount];
          v37[5] = [v26 baseVertex];
          v37[6] = [v26 baseInstance];
          if (*(v16 + v19 + 16) == -1)
          {
            v37[2] = *(v157 + 16);
          }

          v157 = v16 + v19;
          goto LABEL_48;
        }

        if (v18 == 4)
        {
          v23 = [v15 getTessellationFactorArguments];
          v24 = v16 + v19;
          *v24 = [v23 virtualAddress];
          *(v24 + 8) = [v23 instanceStride];
          [v23 scale];
          *(v24 + 16) = v25;

          v26 = [v15 drawPatchesArguments];
          *(v24 + 24) = [v26 numberOfPatchControlPoints];
          *(v24 + 32) = [v26 patchStart];
          *(v24 + 40) = [v26 patchCount];
          *(v24 + 48) = [v26 patchIndexBufferVirtualAddress];
          *(v24 + 56) = [v26 instanceCount];
          *(v24 + 64) = [v26 baseInstance];
LABEL_48:
        }

LABEL_49:
        v46 = v184;
        if (!*(v184 + 26))
        {
          v47 = [v15 getPipelineStateUniqueIdentifier];
          v48 = v158;
          if (v47 != -1)
          {
            v48 = v47;
          }

          v158 = v48;
          *(v16 + v185) = v48;
        }

        if (!v46[19])
        {
          v159 = *(&v185 + 1);
          if (v46[38])
          {
            v49 = 0;
            v50 = v174 + *(&v185 + 1) + v10;
            do
            {
              if (objc_opt_respondsToSelector())
              {
                v51 = [v15 getVertexBufferAddressAtIndex:v49];
              }

              else
              {
                v51 = [v15 getVertexBufferAtIndex:v49];
              }

              if (v51 == -1)
              {
                v52 = 0;
              }

              else
              {
                v52 = v51;
              }

              if (v51 == -1 && context)
              {
                v52 = context[v49];
              }

              *(v50 + 8 * v49++) = v52;
            }

            while (v49 < v46[38]);
          }

          v53 = v186;
          if (v46[31])
          {
            v54 = 0;
            v55 = v174 + v186 + v10;
            do
            {
              if (objc_opt_respondsToSelector())
              {
                v56 = [v15 getFragmentBufferAddressAtIndex:v54];
              }

              else
              {
                v56 = [v15 getFragmentBufferAtIndex:v54];
              }

              if (v56 == -1)
              {
                v57 = 0;
              }

              else
              {
                v57 = v56;
              }

              if (v56 == -1 && v182)
              {
                v57 = *(v182 + 8 * v54);
              }

              *(v55 + 8 * v54++) = v57;
            }

            while (v54 < v46[31]);
          }

          v58 = *(&v186 + 1);
          if (v46[35])
          {
            v59 = 0;
            v60 = v174 + *(&v186 + 1) + v10;
            do
            {
              if (objc_opt_respondsToSelector())
              {
                v61 = [v15 getObjectBufferAddressAtIndex:v59];
                if (v61 == -1)
                {
                  v62 = 0;
                }

                else
                {
                  v62 = v61;
                }

                if (v61 == -1 && v176)
                {
                  v62 = *(v176 + 8 * v59);
                }
              }

              else
              {
                if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken != -1)
                {
                  dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken, &__block_literal_global_1606);
                }

                v62 = 0;
              }

              *(v60 + 8 * v59++) = v62;
            }

            while (v59 < v46[35]);
          }

          context = (v16 + v159);
          v182 = v16 + v53;
          v176 = v16 + v58;
          v63 = v16 + v187;
          if (v46[34])
          {
            v64 = 0;
            v65 = v174 + v187 + v10;
            do
            {
              if (objc_opt_respondsToSelector())
              {
                v66 = [v15 getMeshBufferAddressAtIndex:v64];
                if (v66 == -1)
                {
                  v67 = 0;
                }

                else
                {
                  v67 = v66;
                }

                if (v66 == -1 && v171)
                {
                  v67 = *(v171 + 8 * v64);
                }
              }

              else
              {
                if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_41 != -1)
                {
                  dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_41, &__block_literal_global_43);
                }

                v67 = 0;
              }

              *(v65 + 8 * v64++) = v67;
            }

            while (v64 < v46[34]);
          }

          v11 = v63;
        }

        if (!v46[23])
        {
          if (objc_opt_respondsToSelector())
          {
            v68 = [v15 getDepthStencilStateUniqueIdentifier];
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_46 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_46, &__block_literal_global_48);
            }

            v68 = 0;
          }

          *(v16 + v190) = v68;
        }

        if (!v46[22])
        {
          if (objc_opt_respondsToSelector())
          {
            v69 = [v15 getDepthClipMode];
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_51 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_51, &__block_literal_global_53);
            }

            v69 = 0;
          }

          *(v16 + *(&v190 + 1)) = v69;
        }

        if (!v46[20])
        {
          if (objc_opt_respondsToSelector())
          {
            v70 = [v15 getCullMode];
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_56 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_56, &__block_literal_global_58);
            }

            v70 = 0;
          }

          *(v16 + v191) = v70;
        }

        if (!v46[25])
        {
          if (objc_opt_respondsToSelector())
          {
            v71 = [v15 getFrontFacingWinding];
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_61 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_61, &__block_literal_global_63);
            }

            v71 = 0;
          }

          *(v16 + *(&v191 + 1)) = v71;
        }

        if (!v46[29])
        {
          if (objc_opt_respondsToSelector())
          {
            v72 = [v15 getTriangleFillMode];
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_66 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_66, &__block_literal_global_68);
            }

            v72 = 0;
          }

          *(v16 + v192) = v72;
        }

        if (!v46[21])
        {
          if (objc_opt_respondsToSelector())
          {
            v73 = [v15 getDepthBiasInfo];
            [v73 depthBias];
            v75 = v74;
            [v73 slopeScale];
            v77 = v76;
            [v73 clamp];
            v79 = v78;

            v80 = v75 | (v77 << 32);
            v81 = v79;
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_71 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_71, &__block_literal_global_73);
            }

            v81 = 0;
            v80 = 0;
          }

          v82 = (v16 + *(&v192 + 1));
          *v82 = v80;
          v82[1] = v81;
        }

        if (!v46[28])
        {
          if (objc_opt_respondsToSelector())
          {
            v83 = [v15 getStencilReferenceValues];
            v84 = [v83 frontReferenceValue];
            v85 = [v83 backReferenceValue];

            v86 = v84 | (v85 << 32);
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_76 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_76, &__block_literal_global_78);
            }

            v86 = 0;
          }

          *(v16 + v193) = v86;
        }

        if (!v46[24])
        {
          if (objc_opt_respondsToSelector())
          {
            v87 = [v15 getDepthTestBounds];
            [v87 minBounds];
            v89 = v88;
            [v87 maxBounds];
            v91 = v90;
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_81 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_81, &__block_literal_global_83);
            }

            v89 = 0;
            v91 = 0;
          }

          v92 = (v16 + *(&v193 + 1));
          *v92 = v89;
          v92[1] = v91;
        }

        if (!v46[27])
        {
          if (objc_opt_respondsToSelector())
          {
            v93 = [v15 getScissorRects];
            v94 = [v93 count];
            v95 = [v93 scissorRects];
            if (v94)
            {
              v96 = v46[37];
              v97 = (v95 + 16);
              v98 = (v174 + v173 + *(&v194 + 1));
              v99 = v94;
              do
              {
                if (!v96)
                {
                  break;
                }

                *v98 = *v97;
                *(v98 - 1) = *(v97 - 1);
                --v96;
                v97 += 2;
                v98 += 2;
                --v99;
              }

              while (v99);
            }
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_86 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_86, &__block_literal_global_88);
            }

            v94 = 0;
          }

          *(v16 + v194) = v94;
        }

        if (!v46[30])
        {
          if (objc_opt_respondsToSelector())
          {
            v100 = [v15 getViewports];
            v101 = [v100 count];
            v102 = [v100 viewports];
            if (v101)
            {
              v103 = v46[39];
              v104 = (v102 + 32);
              v105 = (v174 + v173 + *(&v195 + 1));
              v106 = v101;
              do
              {
                if (!v103)
                {
                  break;
                }

                *v105 = *(v104 - 1);
                *(v105 - 1) = *(v104 - 2);
                v107 = *v104;
                v104 += 3;
                v105[1] = v107;
                --v103;
                v105 += 3;
                --v106;
              }

              while (v106);
            }
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_91 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_91, &__block_literal_global_93);
            }

            v101 = 0;
          }

          *(v16 + v195) = v101;
        }

        if (!v46[18])
        {
          if (objc_opt_respondsToSelector())
          {
            v108 = [v15 getBlendColor];
            [v108 red];
            v110 = v109;
            [v108 green];
            v112 = v111;
            [v108 blue];
            v114 = v113;
            [v108 alpha];
            v116 = v115;
          }

          else
          {
            if (GTMTLDecodeIndirectRenderCommandBuffer_onceToken_96 != -1)
            {
              dispatch_once(&GTMTLDecodeIndirectRenderCommandBuffer_onceToken_96, &__block_literal_global_98);
            }

            v110 = 0;
            v112 = 0;
            v114 = 0;
            v116 = 0;
          }

          v117 = (v16 + v196);
          *v117 = v110;
          v117[1] = v112;
          v117[2] = v114;
          v117[3] = v116;
        }

        if (v46[36])
        {
          v118 = 0;
          v119 = v174 + v188 + v10;
          do
          {
            *(v119 + 8 * v118) = [v15 getObjectThreadgroupMemoryLengthAtIndex:v118];
            ++v118;
          }

          while (v118 < v46[36]);
        }

        if (v46[42])
        {
          v120 = *(&v189 + 1);
          *(v16 + v120) = [v15 hasBarrier];
        }

        v13 = v160;
        v14 = v169;
        goto LABEL_196;
      }

      v26 = [v15 drawArguments];
      v33 = (v16 + v19);
      *v33 = [v26 primitiveType];
      v33[1] = [v26 vertexStart];
      v33[2] = [v26 vertexCount];
      v33[3] = [v26 instanceCount];
      v33[4] = [v26 baseInstance];
LABEL_30:
      v11 = v171;
      goto LABEL_48;
    }

    switch(v18)
    {
      case 8:
        v34 = [v15 getTessellationFactorArguments];
        v35 = v16 + v19;
        *v35 = [v34 virtualAddress];
        *(v35 + 8) = [v34 instanceStride];
        [v34 scale];
        *(v35 + 16) = v36;

        v26 = [v15 drawIndexedPatchesArguments];
        *(v35 + 24) = [v26 numberOfPatchControlPoints];
        *(v35 + 32) = [v26 patchStart];
        *(v35 + 40) = [v26 patchCount];
        *(v35 + 48) = [v26 patchIndexBufferVirtualAddress];
        *(v35 + 56) = [v26 controlPointIndexBufferVirtualAddress];
        *(v35 + 64) = [v26 instanceCount];
        *(v35 + 72) = [v26 baseInstance];
        goto LABEL_30;
      case 128:
        v27 = v16 + v19;
        v38 = [v15 drawMeshThreadgroupsArguments];
        v26 = v38;
        if (v38)
        {
          objc_msgSend_threadgroupsPerGrid(v38);
          v39 = v199;
          *v27 = *buf;
          *(v27 + 16) = v39;
          objc_msgSend_threadsPerObjectThreadgroup(v26);
          v40 = v199;
          *(v27 + 24) = *buf;
          *(v27 + 40) = v40;
          objc_msgSend_threadsPerMeshThreadgroup(v26);
          v31 = *buf;
          v32 = v199;
          v11 = v171;
          goto LABEL_47;
        }

        if (s_logUsingOsLog != 1)
        {
          v45 = *MEMORY[0x277D85DF8];
          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"fail: Unable to decode MTLIndirectCommandTypeDrawMeshThreadgroups"];
          fprintf(v45, "%s\n", [v41 UTF8String]);
          v11 = v171;
          break;
        }

        v41 = gt_tagged_log(3u);
        v11 = v171;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          v42 = v41;
          v43 = "fail: Unable to decode MTLIndirectCommandTypeDrawMeshThreadgroups";
          goto LABEL_43;
        }

        break;
      case 256:
        v27 = v16 + v19;
        v28 = [v15 drawMeshThreadsArguments];
        v26 = v28;
        v11 = v171;
        if (v28)
        {
          objc_msgSend_threadsPerGrid(v28);
          v29 = v199;
          *v27 = *buf;
          *(v27 + 16) = v29;
          objc_msgSend_threadsPerObjectThreadgroup(v26);
          v30 = v199;
          *(v27 + 24) = *buf;
          *(v27 + 40) = v30;
          objc_msgSend_threadsPerMeshThreadgroup(v26);
          v31 = *buf;
          v32 = v199;
LABEL_47:
          *(v27 + 48) = v31;
          *(v27 + 64) = v32;
          goto LABEL_48;
        }

        if (s_logUsingOsLog != 1)
        {
          v44 = *MEMORY[0x277D85DF8];
          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"fail: Unable to decode MTLIndirectCommandTypeDrawMeshThreads"];
          fprintf(v44, "%s\n", [v41 UTF8String]);
          break;
        }

        v41 = gt_tagged_log(3u);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          v42 = v41;
          v43 = "fail: Unable to decode MTLIndirectCommandTypeDrawMeshThreads";
LABEL_43:
          _os_log_fault_impl(&dword_24D764000, v42, OS_LOG_TYPE_FAULT, v43, buf, 2u);
        }

        break;
      default:
        v11 = v171;
        goto LABEL_49;
    }

    v32 = 0;
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0u;
    v31 = 0uLL;
    *v27 = 0u;
    goto LABEL_47;
  }

  if ((v7 & 0xFFFFFF9F) != 0)
  {

    goto LABEL_236;
  }

  v178 = v6;
  v121 = objc_msgSend_size(v178);
  v122 = v197;
  v168 = [MEMORY[0x277CBEB28] dataWithLength:v197 * v121];
  v123 = [v168 mutableBytes];
  v177 = v121;
  if (!v121)
  {
    goto LABEL_234;
  }

  v153 = v6;
  v156 = v2;
  v183 = 0;
  v124 = 0;
  v165 = *(&v196 + 1);
  v167 = 0;
  v170 = (*(&v196 + 1) - v189) >> 3;
  v172 = v122;
  v125 = v184;
  v175 = v123;
  v126 = v123 + v189;
  v161 = *(&v187 + 1);
  v163 = v185;
  v127 = v123 + *(&v187 + 1);
  v128 = v123 + *(&v188 + 1);
  do
  {
    contexta = objc_autoreleasePoolPush();
    v129 = [v178 indirectComputeCommandAtIndex:v124];
    v130 = [v129 getCommandType];
    v179 = v175 + v122 * v124;
    *(v179 + *(&v125 + 1)) = v130;
    if (!v130)
    {
      goto LABEL_232;
    }

    v131 = v130;
    if (v170 >= 1)
    {
      v132 = 0;
      do
      {
        *(v126 + 8 * v132) = [v129 getKernelAttributeStrideAtIndex:v132];
        ++v132;
      }

      while ((v170 & 0x7FFFFFFF) != v132);
    }

    if (v131 == 32)
    {
      v135 = [v129 dispatchThreadgroupsArguments];
      v134 = v135;
      v203 = 0uLL;
      v204 = 0;
      if (v135)
      {
        objc_msgSend_threadgroupsPerGrid(v135);
        goto LABEL_210;
      }

LABEL_211:
      v139 = 0;
      v137 = 0;
      v202 = 0;
      v136 = 0uLL;
      v201 = 0u;
      v138 = 0uLL;
      goto LABEL_212;
    }

    if (v131 == 64)
    {
      v133 = [v129 dispatchThreadsArguments];
      v134 = v133;
      v203 = 0uLL;
      v204 = 0;
      if (v133)
      {
        objc_msgSend_threadsPerGrid(v133);
LABEL_210:
        v201 = 0uLL;
        v202 = 0;
        objc_msgSend_threadsPerThreadgroup(v134);
        v136 = v203;
        v137 = v204;
        v138 = v201;
        v139 = v202;
LABEL_212:
        v140 = v179 + v165;
        *(v140 + 72) = v136;
        *(v140 + 88) = v137;
        *(v140 + 96) = v138;
        *(v140 + 112) = v139;
        v141 = 0uLL;
        v199 = 0u;
        v200 = 0u;
        *buf = 0u;
        if (v129)
        {
          objc_msgSend_getStageInRegion(v129);
          v141 = *buf;
          v142 = v199;
          v143 = v200;
        }

        else
        {
          v142 = 0uLL;
          v143 = 0uLL;
        }

        *v140 = v141;
        *(v140 + 16) = v142;
        *(v140 + 32) = v143;
        *(v140 + 64) = [v129 hasBarrier];

        goto LABEL_216;
      }

      goto LABEL_211;
    }

LABEL_216:
    if (!*(v125 + 26))
    {
      v144 = [v129 getPipelineStateUniqueIdentifier];
      v145 = v167;
      if (v144 != -1)
      {
        v145 = v144;
      }

      v167 = v145;
      *(v179 + v163) = v145;
    }

    v122 = v172;
    if (!*(v125 + 19))
    {
      if (*(v125 + 32))
      {
        v146 = 0;
        do
        {
          v147 = [v129 getKernelBufferAtIndex:v146];
          if (v147 == -1)
          {
            if (v183)
            {
              v147 = *(v183 + 8 * v146);
            }

            else
            {
              v147 = 0;
            }
          }

          *(v127 + 8 * v146++) = v147;
        }

        while (v146 < *(v125 + 32));
      }

      v183 = v179 + v161;
      v122 = v172;
    }

    if (*(v125 + 33))
    {
      v148 = 0;
      do
      {
        *(v128 + 8 * v148) = [v129 getThreadgroupMemoryLengthAtIndex:v148];
        ++v148;
      }

      while (v148 < *(v125 + 33));
    }

LABEL_232:

    objc_autoreleasePoolPop(contexta);
    ++v124;
    v126 += v122;
    v127 += v122;
    v128 += v122;
  }

  while (v124 != v177);
  v2 = v156;
  v4 = 0x277CBE000;
  v6 = v153;
LABEL_234:
  v149 = [v168 copy];

  if (v149)
  {
    v150 = v149;
    v8 = v150;
    goto LABEL_237;
  }

LABEL_236:
  v8 = [*(v4 + 2704) data];
  v150 = 0;
LABEL_237:

LABEL_238:
LABEL_239:

LABEL_240:

  return v8;
}

void __FetchResourceObject_block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 304);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v1 removeObject:WeakRetained];
}

void FetchResourceObjectBatch(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_signpost_id_make_with_pointer(g_signpostLog, v5);
  v8 = [v5 count];
  v9 = g_signpostLog;
  v10 = v9;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    buf = 67109376;
    v24 = 2048;
    v25 = v8;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v10, OS_SIGNPOST_EVENT, v7, "Replayer-1-serial", "%u. kDYMessageFetchResourceObjectBatch x%lu", &buf, 0x12u);
  }

  v11 = MEMORY[0x277CCA8C8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __FetchResourceObjectBatch_block_invoke;
  v15[3] = &unk_279658580;
  v18 = v6;
  v19 = v8;
  v20 = a1;
  v21 = v7;
  v22 = 0;
  v16 = v5;
  v17 = 0;
  v12 = v6;
  v13 = v5;
  v14 = [v11 blockOperationWithBlock:v15];
  [v14 setQueuePriority:-4];
  [*(a1 + 280) addOperation:v14];
}

void __FetchResourceObjectBatch_block_invoke(uint64_t a1)
{
  v94 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:8 * *(a1 + 56)];
  v59 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 56)];
  v56 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:*(a1 + 56)];
  v55 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:*(a1 + 56)];
  v50 = v2;
  v53 = [v2 mutableBytes];
  [*(*(a1 + 64) + 312) waitUntilDownloadCapacity];
  v3 = *(*(a1 + 64) + 8);
  [*(v3 + 24) releaseBuffer];
  [*(v3 + 16) waitUntilCapacity];
  v60 = a1;
  v61 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v86 objects:v93 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v87;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v87 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = GetAttributes(*(v60 + 64), *(*(&v86 + 1) + 8 * i));
        v9 = [v8 objectForKeyedSubscript:@"functionIndex"];
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v9, "unsignedIntValue")}];
        v11 = [v61 objectForKeyedSubscript:v10];
        if (!v11)
        {
          v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v61 setObject:v11 forKeyedSubscript:v10];
        }

        v12 = [v8 mutableCopy];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
        [v12 setObject:v13 forKeyedSubscript:@"requestStreamIndex"];

        [v11 addObject:v12];
        v14 = [MEMORY[0x277CBEB68] null];
        [v59 addObject:v14];

        ++v5;
      }

      v4 = [obj countByEnumeratingWithState:&v86 objects:v93 count:16];
    }

    while (v4);
  }

  v15 = [v61 allKeys];
  v16 = [v15 sortedArrayUsingSelector:sel_compare_];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(*(v60 + 64) + 8) + 22560)];
  v18 = [v16 indexOfObject:v17 inSortedRange:0 options:objc_msgSend(v16 usingComparator:{"count"), 1024, &__block_literal_global_6390}];

  v19 = [v16 subarrayWithRange:{0, v18}];
  v20 = [v16 subarrayWithRange:{v18, objc_msgSend(v16, "count") - v18}];
  v21 = [v20 arrayByAddingObjectsFromArray:v19];

  v84[0] = &v92;
  v84[1] = 1024;
  v85 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:4096];
  v52 = *(*(*(v60 + 64) + 8) + 24);
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v51 = v21;
  v22 = [v51 countByEnumeratingWithState:&v80 objects:v91 count:16];
  if (v22)
  {
    v23 = *v81;
    v47 = *v81;
    do
    {
      v24 = 0;
      v48 = v22;
      do
      {
        if (*v81 != v23)
        {
          objc_enumerationMutation(v51);
        }

        v49 = v24;
        v54 = *(*(&v80 + 1) + 8 * v24);
        v25 = [v61 objectForKeyedSubscript:?];
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        obja = v25;
        v26 = [obja countByEnumeratingWithState:&v76 objects:v90 count:16];
        if (v26)
        {
          v27 = *v77;
          while (2)
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v77 != v27)
              {
                objc_enumerationMutation(obja);
              }

              v29 = *(*(&v76 + 1) + 8 * j);
              v30 = objc_autoreleasePoolPush();
              [v85 setLength:0];
              v73 = v84;
              v31 = v56;
              v74 = v31;
              v32 = v55;
              v75 = v32;
              v72 = 0;
              v33 = HarvestResourceObject();
              v34 = 0;
              if ((v33 & 1) == 0 && [obja count] == 1 && (objc_msgSend(v29, "objectForKeyedSubscript:", @"object"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "unsignedLongLongValue") == -1026, v35, v36))
              {
                (*(*(v60 + 48) + 16))();
                v37 = 0;
              }

              else
              {
                v38 = [v29 objectForKeyedSubscript:@"requestStreamIndex"];
                v39 = [v38 unsignedIntegerValue];

                v40 = [v85 copy];
                [v59 setObject:v40 atIndexedSubscript:v39];

                *(v53 + 8 * v39) = [v54 unsignedLongLongValue];
                v37 = 1;
              }

              objc_autoreleasePoolPop(v30);
              if (!v37)
              {

                v46 = v51;
                goto LABEL_32;
              }
            }

            v26 = [obja countByEnumeratingWithState:&v76 objects:v90 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"FetchResourceObjectBatch"];
        v42 = [v52 commandBuffer];
        [v42 setLabel:v41];

        [v52 commitCommandBuffer];
        v24 = v49 + 1;
        v23 = v47;
      }

      while (v49 + 1 != v48);
      v22 = [v51 countByEnumeratingWithState:&v80 objects:v91 count:16];
    }

    while (v22);
  }

  v43 = [v52 commandBuffer];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __FetchResourceObjectBatch_block_invoke_3;
  v62[3] = &unk_279658558;
  v69 = *(v60 + 64);
  v71 = *(v60 + 80);
  v70 = *(v60 + 56);
  v63 = v56;
  v64 = v59;
  v65 = v50;
  v66 = v55;
  v67 = *(v60 + 40);
  v68 = *(v60 + 48);
  [v43 addCompletedHandler:v62];

  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"FetchResourceObjectBatchFinish"];
  v45 = [v52 commandBuffer];
  [v45 setLabel:v44];

  [v52 commitCommandBuffer];
  v46 = v63;
LABEL_32:
}

void __FetchResourceObjectBatch_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 88);
  v23 = *(*(a1 + 80) + 288);
  v2 = *(a1 + 104);
  v3 = *(a1 + 96);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 32);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = MEMORY[0x277CCA8C8];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __FetchResourceObjectBatchReplyOperation_block_invoke;
  v24[3] = &unk_2796585D0;
  v33 = v2;
  v31 = v1;
  v32 = v3;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = [v15 blockOperationWithBlock:v24];

  [v23 addOperation:v22];
}

void __FetchResourceObjectBatchReplyOperation_block_invoke(uint64_t a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = g_signpostLog;
  v3 = v2;
  v4 = *(a1 + 80);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(a1 + 96);
    v6 = *(a1 + 88);
    *buf = 67109376;
    *v78 = v5;
    *&v78[4] = 2048;
    *&v78[6] = v6;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Replayer-4-parallel", "%u. kDYMessageFetchResourceObjectBatch x%lu", buf, 0x12u);
  }

  context = objc_autoreleasePoolPush();
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v7 = [*(a1 + 32) allKeys];
  v8 = [v7 countByEnumeratingWithState:&v71 objects:v83 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v72;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v72 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v71 + 1) + 8 * i);
        v13 = [*(a1 + 32) objectForKeyedSubscript:v12];
        v14 = PreprocessICBData(v13);
        [*(a1 + 32) setObject:v14 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v71 objects:v83 count:16];
    }

    while (v9);
  }

  v15 = g_signpostLog;
  v16 = v15;
  v17 = *(a1 + 80);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v18 = *(a1 + 96);
    *buf = 67109120;
    *v78 = v18;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v17, "Replayer-6-high", "%u. archivedDataWithRootObject", buf, 8u);
  }

  v19 = MEMORY[0x277CCAAB0];
  v81[0] = @"stream";
  v81[1] = @"object";
  v20 = *(a1 + 32);
  v82[0] = *(a1 + 40);
  v82[1] = v20;
  v81[2] = @"functionIndex";
  v81[3] = @"requestID";
  v21 = *(a1 + 56);
  v82[2] = *(a1 + 48);
  v82[3] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:4];
  v70 = 0;
  v23 = [v19 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:&v70];
  v67 = v70;

  v24 = g_signpostLog;
  v25 = v24;
  v26 = *(a1 + 80);
  if (v26 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    v27 = [v23 length];
    *buf = 134217984;
    *v78 = v27;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v25, OS_SIGNPOST_INTERVAL_END, v26, "Replayer-6-high", "%{xcode:size-in-bytes}lu", buf, 0xCu);
  }

  v28 = *(a1 + 64);
  v29 = [&unk_2860D6240 objectForKeyedSubscript:v28];
  if (v29)
  {
    v30 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{objc_msgSend(v23, "length")}];
    v31 = g_signpostLog;
    v32 = v31;
    v33 = *(a1 + 80);
    if (v33 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      v34 = *(a1 + 96);
      v35 = [(__CFString *)v28 UTF8String];
      v36 = [v23 length];
      *buf = 67109634;
      *v78 = v34;
      *&v78[4] = 2082;
      *&v78[6] = v35;
      v79 = 2048;
      v80 = v36;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v33, "Replayer-6-high", "%u. %{public}s %{xcode:size-in-bytes}lu", buf, 0x1Cu);
    }

    v37 = compression_encode_buffer([v30 mutableBytes], objc_msgSend(v30, "length"), objc_msgSend(v23, "bytes"), objc_msgSend(v23, "length"), 0, objc_msgSend(v29, "unsignedIntValue"));
    v38 = g_signpostLog;
    v39 = v38;
    v40 = *(a1 + 80);
    if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
    {
      *buf = 134217984;
      *v78 = v37;
      _os_signpost_emit_with_name_impl(&dword_24D764000, v39, OS_SIGNPOST_INTERVAL_END, v40, "Replayer-6-high", "%{xcode:size-in-bytes}zu", buf, 0xCu);
    }

    [v30 setLength:v37];
  }

  else
  {
    v30 = 0;
  }

  if (![v30 length])
  {

    v41 = v23;
    v28 = @"none";
    v30 = v41;
  }

  v42 = g_signpostLog;
  v43 = v42;
  v44 = *(a1 + 80);
  if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
  {
    v45 = *(a1 + 96);
    *buf = 67109120;
    *v78 = v45;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v43, OS_SIGNPOST_INTERVAL_BEGIN, v44, "Replayer-6-high", "%u. archivedDataWithRootObject", buf, 8u);
  }

  v46 = MEMORY[0x277CCAAB0];
  v76[0] = v28;
  v75[0] = @"compressed";
  v75[1] = @"stream";
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v23, "length")}];
  v75[2] = @"object";
  v76[1] = v47;
  v76[2] = v30;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:3];
  v69 = v67;
  v49 = [v46 archivedDataWithRootObject:v48 requiringSecureCoding:1 error:&v69];
  v50 = v69;

  v51 = g_signpostLog;
  v52 = v51;
  v53 = *(a1 + 80);
  if (v53 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
  {
    v54 = [v23 length];
    *buf = 134217984;
    *v78 = v54;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v52, OS_SIGNPOST_INTERVAL_END, v53, "Replayer-6-high", "%{xcode:size-in-bytes}lu", buf, 0xCu);
  }

  v55 = g_signpostLog;
  v56 = v55;
  v57 = *(a1 + 80);
  if (v57 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
  {
    v58 = [v49 length];
    *buf = 134217984;
    *v78 = v58;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v56, OS_SIGNPOST_INTERVAL_END, v57, "Replayer-4-parallel", "%{xcode:size-in-bytes}lu", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);
  v59 = g_signpostLog;
  v60 = v59;
  v61 = *(a1 + 80);
  if (v61 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
  {
    v62 = *(a1 + 96);
    v63 = [v49 length];
    *buf = 67109376;
    *v78 = v62;
    *&v78[4] = 2048;
    *&v78[6] = v63;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v60, OS_SIGNPOST_INTERVAL_BEGIN, v61, "Replayer-5-network", "%u. send compressedData %{xcode:size-in-bytes}lu", buf, 0x12u);
  }

  (*(*(a1 + 72) + 16))();
  v64 = g_signpostLog;
  v65 = v64;
  v66 = *(a1 + 80);
  if (v66 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v64))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v65, OS_SIGNPOST_INTERVAL_END, v66, "Replayer-5-network", &unk_24DA93952, buf, 2u);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void GTMTLReplaySupport_init(void *a1)
{
  v56 = DEVICEOBJECT(a1);
  GT_SUPPORT_0 = 0;
  v1 = NSClassFromString(&cfstr_Mtltilerenderp.isa);
  v2 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFFFELL;
  if (v1)
  {
    ++v2;
  }

  GT_SUPPORT_0 = v2;
  v3 = objc_opt_respondsToSelector();
  v4 = 2;
  if ((v3 & 1) == 0)
  {
    v4 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFFFDLL | v4;
  v5 = objc_alloc_init(MEMORY[0x277CD6D10]);
  v6 = objc_opt_respondsToSelector();
  v7 = 4;
  if ((v6 & 1) == 0)
  {
    v7 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFFFBLL | v7;

  v8 = NSClassFromString(&cfstr_Mtlindirectcom_0.isa);
  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFFF7 | (8 * (v8 != 0));
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CD6E68]);
    v10 = objc_opt_respondsToSelector();
    v11 = 16;
    if ((v10 & 1) == 0)
    {
      v11 = 0;
    }

    GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFFEFLL | v11;
  }

  v12 = objc_alloc_init(MEMORY[0x277CD6F70]);
  if ([v56 supportsTessellation])
  {
    v13 = objc_opt_respondsToSelector();
    v14 = 32;
    if ((v13 & 1) == 0)
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFFDFLL | v14;

  v15 = objc_alloc_init(MEMORY[0x277CD6F48]);
  v16 = objc_opt_respondsToSelector();
  v17 = 64;
  if ((v16 & 1) == 0)
  {
    v17 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFFBFLL | v17;
  v18 = [v56 supportsLayeredRendering];
  v19 = 128;
  if (!v18)
  {
    v19 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFF7FLL | v19;

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFEFFLL | ((NSClassFromString(&cfstr_Mtlrasterizati_0.isa) != 0) << 8);
  v20 = [v56 supportsImageBlocks];
  v21 = 512;
  if (!v20)
  {
    v21 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFDFFLL | v21;
  v22 = objc_opt_respondsToSelector();
  v23 = 1024;
  if ((v22 & 1) == 0)
  {
    v23 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFFBFFLL | v23;
  v24 = objc_opt_respondsToSelector();
  v25 = 2048;
  if ((v24 & 1) == 0)
  {
    v25 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFF7FFLL | v25;
  v26 = qword_27F09CF90;
  v27 = objc_alloc_init(MEMORY[0x277CD6F70]);
  v28 = 0;
  if ((v26 & 0x8000) == 0)
  {
    v29 = objc_opt_respondsToSelector();
    v28 = 0x8000;
    if ((v29 & 1) == 0)
    {
      v28 = 0;
    }
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFF7FFFLL | v28;

  v30 = objc_alloc_init(MEMORY[0x277CD6D28]);
  v31 = objc_opt_respondsToSelector();
  v32 = 0x4000;
  if ((v31 & 1) == 0)
  {
    v32 = 0;
  }

  v33 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFBFFFLL | v32;
  GT_SUPPORT_0 = v33;
  if (v26 < 0)
  {
    v34 = 0;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v34 = 0x10000;
    }

    else
    {
      v34 = 0;
    }

    v33 = GT_SUPPORT_0;
  }

  GT_SUPPORT_0 = v33 & 0xFFFFFFFFFFFEFFFFLL | v34;

  v35 = [v56 argumentBuffersSupport] != 0;
  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFFDFFFLL | (v35 << 13);
  v36 = objc_alloc_init(MEMORY[0x277CD6F70]);
  v37 = objc_opt_respondsToSelector();
  v38 = 0x20000;
  if ((v37 & 1) == 0)
  {
    v38 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFDFFFFLL | v38;

  v39 = objc_opt_respondsToSelector();
  v40 = 0;
  if (v39)
  {
    v41 = [v56 supportsGlobalVariableRelocation];
    v40 = 0x40000;
    if (!v41)
    {
      v40 = 0;
    }
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFFBFFFFLL | v40;
  v42 = NSClassFromString(&cfstr_Mtlbufferdescr.isa);
  v43 = DEVICEOBJECT(v56);
  v44 = objc_opt_respondsToSelector();

  if ((v44 & 1) != 0 && v42)
  {
    v45 = DEVICEOBJECT(v56);
    v46 = [v45 resourcePatchingTypeForResourceType:3] != 2;

    v47 = 0x80000;
    if ((v46 & BYTE1(qword_27F09CF90) & 1) == 0)
    {
      v47 = 0;
    }

    GT_SUPPORT_0 = v47 | GT_SUPPORT_0 & 0xFFFFFFFFFFF7FFFFLL;
  }

  v48 = DEVICEOBJECT(v56);
  v49 = objc_opt_respondsToSelector();

  if (v49)
  {
    v50 = DEVICEOBJECT(v56);
    v51 = [v50 resourcePatchingTypeForResourceType:8] == 1;

    GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFEFFFFFLL | (v51 << 20);
  }

  v52 = [v56 supportsFamily:1006];
  v53 = 0x200000;
  if (!v52)
  {
    v53 = 0;
  }

  GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFDFFFFFLL | v53;
  if (objc_opt_respondsToSelector())
  {
    v54 = [v56 supportsMeshShaders];
    v55 = 0x400000;
    if (!v54)
    {
      v55 = 0;
    }

    GT_SUPPORT_0 = GT_SUPPORT_0 & 0xFFFFFFFFFFBFFFFFLL | v55;
  }
}

unsigned int *ExpectedState(uint64_t **a1)
{
  v2 = **a1;
  FileWithFilename = GTCaptureArchive_getFileWithFilename(v2, "XPState");
  if (FileWithFilename)
  {
    v4 = [MEMORY[0x277CBEB28] dataWithLength:FileWithFilename[2]];
    GTCaptureArchive_fillBufferCompressedDeflate(v2, a1[23], FileWithFilename, [v4 mutableBytes], FileWithFilename[2], 0);
    v5 = MEMORY[0x277CCAAC8];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [v5 unarchivedObjectOfClasses:v11 fromData:v4 error:0];

    if (v12)
    {
      FileWithFilename = [v12 objectForKeyedSubscript:@"XPState"];
    }

    else
    {
      FileWithFilename = 0;
    }
  }

  return FileWithFilename;
}

uint64_t GetIOAccelerator()
{
  v0 = *MEMORY[0x277CD28A0];
  v1 = IOServiceMatching("IOAccelerator");
  result = IOServiceGetMatchingService(v0, v1);
  if (!result)
  {
    v3 = IOServiceMatching("IOAcceleratorES");

    return IOServiceGetMatchingService(v0, v3);
  }

  return result;
}

id GetMetalPluginName(io_registry_entry_t a1, _DWORD *a2)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"MetalPluginName", 0, 0);
  v5 = CFProperty;
  if (CFProperty)
  {
    CFRelease(CFProperty);
    if (a2)
    {
      v6 = IORegistryEntryCreateCFProperty(a1, @"GPUConfigurationVariable", 0, 0);
      v7 = v6;
      if (v6)
      {
        v8 = [v6 objectForKeyedSubscript:@"gpu_gen"];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 intValue];
          if (v10 == 15)
          {
            v11 = [v7 objectForKeyedSubscript:@"num_cores"];
            if ([v11 intValue] < 6)
            {
              v10 = 14;
            }

            else
            {
              v10 = 15;
            }
          }

          *a2 = v10 - 10;
        }
      }
    }
  }

  return v5;
}

id GTProfilerConfigurationVariables(io_registry_entry_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"GPUConfigurationVariable", 0, 0);

  return CFProperty;
}

uint64_t MetalPluginTarget(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 hasPrefix:@"AGXMetal"] & 1) != 0)
  {
    v3 = [v2 substringFromIndex:{objc_msgSend(@"AGXMetal", "length")}];
    v4 = v3;
    if (v3)
    {
      if ([v3 hasPrefix:@"S4"] & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"S5") & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"S6"))
      {
        v5 = 1;
LABEL_18:

        goto LABEL_19;
      }

      if (([v4 hasPrefix:@"G"] & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"A") & 1) != 0 || objc_msgSend(v4, "hasPrefix:", @"1"))
      {
        v6 = [v4 UTF8String];
        v7 = 0;
        v8 = [v4 hasPrefix:@"1"] ^ 1;
        v9 = MEMORY[0x277D85DE0];
        while (v8 < [v4 length])
        {
          v10 = *(v6 + v8);
          if (v10 < 0 || (*(v9 + 4 * v10 + 60) & 0x400) == 0)
          {
            break;
          }

          v7 = v10 + 10 * v7 - 48;
          ++v8;
        }

        if (v7 == 15)
        {
          if (v8 < [v4 length] && objc_msgSend(v4, "characterAtIndex:", v8) == 95 || v8 == objc_msgSend(v4, "length"))
          {
            v7 = 14;
          }

          else
          {
            v7 = 15;
          }
        }

        if ([v4 hasPrefix:@"A"])
        {
          v12 = -11;
        }

        else
        {
          v12 = -10;
        }

        v13 = v12 + v7;
        if (v13 <= -2)
        {
          v5 = 0x80000000;
        }

        else
        {
          v5 = v13;
        }

        goto LABEL_18;
      }
    }

    v5 = 0x80000000;
    goto LABEL_18;
  }

  v5 = 0x80000000;
LABEL_19:

  return v5;
}

id ProcessEncoderTimeData(void *a1, void *a2, void *a3, unint64_t a4)
{
  v75 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v49 = v9;
  if (!v7)
  {
    v7 = objc_opt_new();
  }

  v52 = v8;
  if (!v8)
  {
    v52 = objc_opt_new();
  }

  v58 = [v9 objectForKeyedSubscript:@"activePerEncoderDrawCallCount"];
  v56 = [v9 objectForKeyedSubscript:{@"perEncoderKickCount", v7}];
  v10 = [v7 count];
  __p = 0;
  __b = 0;
  v70 = 0;
  v53 = v8;
  if (v10)
  {
    std::vector<double>::__vallocate[abi:nn200100](&__p, v10);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v12)
  {
    v13 = 0;
    v14 = *v65;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v65 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v13 += [*(*(&v64 + 1) + 8 * i) unsignedLongLongValue];
      }

      v12 = [v11 countByEnumeratingWithState:&v64 objects:v74 count:16];
    }

    while (v12);
    v16 = v13;
  }

  else
  {
    v16 = 0.0;
  }

  if (a4)
  {
    v17 = a4 / v16;
    v18 = __p;
    v19 = v70;
    v20 = -__p;
    v21 = -__p >> 3;
    if (v70 - __p < -__p)
    {
      if (__p)
      {
        operator delete(__p);
        v19 = 0;
        __p = 0;
        __b = 0;
        v70 = 0;
      }

      if (!(v21 >> 61))
      {
        v22 = v19 >> 2;
        if (v19 >> 2 <= v21)
        {
          v22 = v21;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        std::vector<double>::__vallocate[abi:nn200100](&__p, v23);
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    if (__p)
    {
      v24 = 0;
      v25 = vdupq_n_s64(v21 - 1);
      do
      {
        v26 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v24), xmmword_24DA8B910)));
        if (v26.i8[0])
        {
          v18[v24] = v17;
        }

        if (v26.i8[4])
        {
          v18[v24 + 1] = v17;
        }

        v24 += 2;
      }

      while (((v21 + 1) & 0xFFFFFFFFFFFFFFFELL) != v24);
    }

    __b = v18 + v20;
  }

  if (!v56)
  {
    v73[0] = v11;
    v73[1] = v52;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
    v28 = __p;
    goto LABEL_58;
  }

  v55 = objc_opt_new();
  v50 = objc_opt_new();
  v51 = objc_opt_new();
  v54 = objc_opt_new();
  v27 = 0;
  v57 = 0;
  v28 = __p;
  while (1)
  {
    if ([v58 count] <= v27)
    {
      v71[0] = v54;
      v71[1] = v51;
      v71[2] = v55;
      v71[3] = v50;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:4];
      goto LABEL_57;
    }

    v59 = v27;
    v29 = [v58 objectAtIndexedSubscript:?];
    v30 = [v29 unsignedIntValue];

    v31 = [v56 objectAtIndexedSubscript:v27];
    v32 = [v31 unsignedIntValue];

    if (!v30 && v32 == 1)
    {
      [v54 addObject:&unk_2860D68A8];
      [v55 addObject:&unk_2860D68A8];
      if (v53)
      {
        v33 = [MEMORY[0x277CBEA60] arrayWithObject:&unk_2860D68A8];
        [v51 addObject:v33];

        v34 = [MEMORY[0x277CBEA60] arrayWithObject:&unk_2860D68A8];
        [v50 addObject:v34];
      }

      goto LABEL_53;
    }

    if ([v11 count] <= v57)
    {
      break;
    }

    v35 = [v11 objectAtIndexedSubscript:v57];
    [v55 addObject:v35];

    if (v53)
    {
      v36 = objc_opt_new();
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v37 = [v52 objectAtIndexedSubscript:v57];
      v38 = [v37 countByEnumeratingWithState:&v60 objects:v72 count:16];
      if (v38)
      {
        v39 = *v61;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v61 != v39)
            {
              objc_enumerationMutation(v37);
            }

            v41 = [*(*(&v60 + 1) + 8 * j) unsignedLongLongValue];
            v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(v28[v57] * v41)];
            [v36 addObject:v42];
          }

          v38 = [v37 countByEnumeratingWithState:&v60 objects:v72 count:16];
        }

        while (v38);
      }

      [v51 addObject:v36];
      v43 = [v52 objectAtIndexedSubscript:v57];
      [v50 addObject:v43];
    }

    v44 = [v11 objectAtIndexedSubscript:v57];
    v45 = [v44 unsignedLongLongValue];

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(v28[v57] * v45)];
    [v54 addObject:v46];

    ++v57;
LABEL_53:
    v27 = v59 + 1;
  }

  v47 = 0;
LABEL_57:

LABEL_58:
  if (v28)
  {
    operator delete(v28);
  }

  return v47;
}

void sub_24D95DFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id ProcessDerivedCounterDataFromDevice(void *a1, void *a2, void *a3)
{
  v166 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v99 = a2;
  v118 = a3;
  v100 = v5;
  if (!v5)
  {
    goto LABEL_114;
  }

  v97 = objc_opt_new();
  v6 = [v5 objectForKeyedSubscript:@"counters"];
  v129 = [v99 objectForKeyedSubscript:@"NormalizedCounters"];
  if (!v6)
  {
    v5 = 0;
    goto LABEL_113;
  }

  [v6 count];
  v116 = objc_opt_new();
  if (v129)
  {
    v146 = 0u;
    v147 = 0u;
    v144 = 0u;
    v145 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v144 objects:v158 count:16];
    if (v7)
    {
      v8 = *v145;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v145 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v144 + 1) + 8 * i);
          if ([v129 containsObject:v10])
          {
            v11 = [v10 stringByAppendingString:@"_norm"];
            [v116 addObject:v11];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v144 objects:v158 count:16];
      }

      while (v7);
    }
  }

  memset(__p, 0, sizeof(__p));
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  obja = v6;
  v12 = [obja countByEnumeratingWithState:&v139 objects:v157 count:16];
  if (v12)
  {
    v13 = *v140;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v140 != v13)
        {
          objc_enumerationMutation(obja);
        }

        LOBYTE(v163[0]) = [v129 containsObject:*(*(&v139 + 1) + 8 * j)];
        std::vector<BOOL>::push_back(__p, v163);
      }

      v12 = [obja countByEnumeratingWithState:&v139 objects:v157 count:16];
    }

    while (v12);
  }

  v15 = [MEMORY[0x277CBEB98] setWithObjects:{@"MTLStatDataMaster", @"MTLStat_nSec", 0}];
  objb = obja;
  v16 = objc_opt_new();
  v163[0] = MEMORY[0x277D85DD0];
  v163[1] = 3221225472;
  v163[2] = ___ZL28CounterIndicesFromCounterSetP5NSSetP7NSArray_block_invoke;
  v163[3] = &unk_2796585F8;
  v17 = v15;
  v164 = v17;
  v18 = v16;
  v165 = v18;
  [objb enumerateObjectsUsingBlock:v163];
  v19 = v165;
  v98 = v18;

  v20 = [v98 objectForKeyedSubscript:@"MTLStatDataMaster"];
  v132 = CounterIndex(v20);

  v21 = [v98 objectForKeyedSubscript:@"MTLStat_nSec"];
  v130 = CounterIndex(v21);

  v5 = 0;
  if (v132 == -1 || v130 == -1)
  {
    goto LABEL_110;
  }

  v22 = [objb arrayByAddingObjectsFromArray:v116];

  v127 = [v22 count];
  v23 = v22;
  objb = v23;
  v134 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{4 * objc_msgSend(v23, "count")}];
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v24 = [&unk_2860D5BA0 countByEnumeratingWithState:&v152 objects:v163 count:16];
  if (v24)
  {
    v25 = *v153;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v153 != v25)
        {
          objc_enumerationMutation(&unk_2860D5BA0);
        }

        v27 = *(*(&v152 + 1) + 8 * k);
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        v151 = 0u;
        v28 = v23;
        v29 = [v28 countByEnumeratingWithState:&v148 objects:&v159 count:16];
        if (v29)
        {
          v30 = *v149;
          do
          {
            for (m = 0; m != v29; ++m)
            {
              if (*v149 != v30)
              {
                objc_enumerationMutation(v28);
              }

              v32 = [*(*(&v148 + 1) + 8 * m) stringByAppendingString:v27];
              [v134 addObject:v32];
            }

            v29 = [v28 countByEnumeratingWithState:&v148 objects:&v159 count:16];
          }

          while (v29);
        }

        v23 = objb;
      }

      v24 = [&unk_2860D5BA0 countByEnumeratingWithState:&v152 objects:v163 count:16];
    }

    while (v24);
  }

  LODWORD(v152) = 0;
  DWORD1(v152) = v127;
  DWORD2(v152) = 2 * v127;
  HIDWORD(v152) = 3 * v127;
  v93 = [v100 objectForKeyedSubscript:@"AverageSamples"];
  v83 = objc_opt_new();
  v96 = [v99 objectForKeyedSubscript:@"perCommandBufferEncoderCount"];
  v90 = [v99 objectForKeyedSubscript:@"activePerEncoderDrawCallCount"];
  v91 = [v99 objectForKeyedSubscript:@"perEncoderKickCount"];
  v33 = 0;
  v34 = 0;
  v87 = 0;
  v95 = (4 * v127);
  v102 = v132;
  v114 = v130;
  while (1)
  {
    if ([v96 count] <= v33)
    {
      [v97 setObject:v134 forKeyedSubscript:@"counters"];
      [v97 setObject:v83 forKeyedSubscript:@"AverageSamples"];
      v80 = [v100 objectForKeyedSubscript:@"counterLists"];
      v81 = [v80 copy];
      [v97 setObject:v81 forKeyedSubscript:@"counterLists"];

      v5 = v97;
      goto LABEL_109;
    }

    v88 = v33;
    v35 = [v96 objectAtIndexedSubscript:?];
    v36 = [v35 unsignedIntValue];

    if (v36)
    {
      break;
    }

LABEL_104:
    v33 = v88 + 1;
  }

  if ([v93 count] <= v87)
  {
    goto LABEL_108;
  }

  v89 = [v93 objectAtIndexedSubscript:?];
  v85 = objc_opt_new();
  v94 = 0;
  v84 = v34 + v36;
  v86 = 1;
  while (1)
  {
    v111 = v34;
    v37 = [v91 objectAtIndexedSubscript:?];
    v38 = [v37 unsignedIntValue];

    v39 = [v90 objectAtIndexedSubscript:v34];
    v40 = [v39 unsignedIntValue];

    if (v40 || v38 != 1)
    {
      break;
    }

    v105 = objc_opt_new();
LABEL_47:
    v92 = objc_opt_new();
    v104 = [MEMORY[0x277CBEB18] arrayWithCapacity:v95];
    if (v95)
    {
      v41 = v95;
      do
      {
        [v104 addObject:&unk_2860D68F0];
        --v41;
      }

      while (v41);
    }

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v106 = v105;
    v42 = [v106 countByEnumeratingWithState:&v135 objects:v156 count:16];
    if (v42)
    {
      v109 = 0;
      v101 = *v136;
      do
      {
        v110 = 0;
        v103 = v42;
        do
        {
          if (*v136 != v101)
          {
            objc_enumerationMutation(v106);
          }

          v43 = *(*(&v135 + 1) + 8 * v110);
          v128 = v104;
          v117 = v118;
          v44 = v43;
          v115 = v106;
          v107 = objb;
          v108 = v134;
          v122 = v44;
          v45 = [v44 objectAtIndexedSubscript:0];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          [v122 objectAtIndexedSubscript:v102];
          if (isKindOfClass)
            v46 = {;
            v47 = [v46 objectAtIndexedSubscript:0];
          }

          else
            v47 = {;
            v46 = v47;
          }

          v120 = [v47 unsignedLongLongValue];
          if (isKindOfClass)
          {
          }

          if (v120 < 4)
          {
            v112 = [v122 count];
            v113 = v109;
            if (v118 && [v117 count] > v111)
            {
              v48 = [v117 objectAtIndexedSubscript:?];
              v49 = [v48 count];
              if (v49 <= 1)
              {
                v50 = 1;
              }

              else
              {
                v50 = v49;
              }

              v113 = v109 % v50;
            }

            v51 = 0;
            v119 = 0;
            while (v51 < [v122 count])
            {
              v126 = [v122 objectAtIndexedSubscript:v51];
              if (isKindOfClass)
              {
                v131 = [v126 objectAtIndexedSubscript:0];
              }

              else
              {
                v131 = v126;
              }

              if (v118 && v51 == v114 && [v117 count] > v111)
              {
                v52 = [v117 objectAtIndexedSubscript:?];
                v53 = [v52 objectAtIndexedSubscript:v113];

                v131 = v53;
              }

              v54 = MEMORY[0x277CCABB0];
              v55 = [v131 unsignedLongLongValue];
              v56 = HIDWORD(v152);
              v57 = [v128 objectAtIndexedSubscript:v51 + HIDWORD(v152)];
              v58 = [v54 numberWithUnsignedLongLong:{objc_msgSend(v57, "unsignedLongLongValue") + v55}];
              [v128 setObject:v58 atIndexedSubscript:v51 + v56];

              [v128 setObject:v131 atIndexedSubscript:v51 + *(&v152 + v120)];
              if (isKindOfClass & 1) != 0 && ((*(__p[0] + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v51))
              {
                v59 = [v131 unsignedLongLongValue];
                v60 = [v126 objectAtIndexedSubscript:1];
                v61 = [v60 unsignedLongLongValue];

                if (v61 <= 1)
                {
                  v62 = 1;
                }

                else
                {
                  v62 = v61;
                }

                v63 = v59 * 100.0 / v62;
                v64 = [MEMORY[0x277CCABB0] numberWithDouble:v63];
                [v128 setObject:v64 atIndexedSubscript:v119 + (*(&v152 + v120) + v112)];

                v65 = [v115 count];
                if (v113 || v65 < 2)
                {
                  if ([v115 count] == 1)
                  {
                    v79 = [MEMORY[0x277CCABB0] numberWithDouble:v63];
                    [v128 setObject:v79 atIndexedSubscript:v119 + (HIDWORD(v152) + v112)];
                    goto LABEL_97;
                  }
                }

                else
                {
                  v162 = 0u;
                  v161 = 0u;
                  v160 = 0u;
                  v159 = 0u;
                  v133 = v115;
                  v66 = [v133 countByEnumeratingWithState:&v159 objects:v163 count:16];
                  if (!v66)
                  {

                    v78 = 0.0;
                    goto LABEL_95;
                  }

                  v67 = 0;
                  v68 = 0;
                  v69 = *v160;
                  do
                  {
                    for (n = 0; n != v66; ++n)
                    {
                      if (*v160 != v69)
                      {
                        objc_enumerationMutation(v133);
                      }

                      v71 = *(*(&v159 + 1) + 8 * n);
                      v72 = [v71 objectAtIndexedSubscript:v51];
                      v73 = [v72 objectAtIndexedSubscript:0];
                      v74 = [v73 unsignedLongLongValue];

                      v75 = [v71 objectAtIndexedSubscript:v51];
                      v76 = [v75 objectAtIndexedSubscript:1];
                      v77 = [v76 unsignedLongLongValue];

                      v68 += v74;
                      v67 += v77;
                    }

                    v66 = [v133 countByEnumeratingWithState:&v159 objects:v163 count:16];
                  }

                  while (v66);

                  v78 = v68 * 100.0;
                  if (!v67)
                  {
LABEL_95:
                    v67 = 1;
                  }

                  v79 = [MEMORY[0x277CCABB0] numberWithDouble:v78 / v67];
                  [v128 setObject:v79 atIndexedSubscript:v119 + (HIDWORD(v152) + v112)];
LABEL_97:
                }

                ++v119;
              }

              ++v51;
              continue;
            }
          }

          ++v109;
          ++v110;
        }

        while (v110 != v103);
        v42 = [v115 countByEnumeratingWithState:&v135 objects:v156 count:16];
      }

      while (v42);
    }

    [v92 addObject:v104];
    [v85 addObject:v92];

    v34 = v111 + 1;
    if (v111 + 1 == v84)
    {
      [v83 addObject:v85];

      v87 += (v86 & 1) == 0;
      v34 = v84;
      goto LABEL_104;
    }
  }

  if ([v89 count] > v94)
  {
    v105 = [v89 objectAtIndexedSubscript:?];
    v86 = 0;
    ++v94;
    goto LABEL_47;
  }

LABEL_108:
  v5 = 0;
LABEL_109:

LABEL_110:
  if (__p[0])
  {
    operator delete(__p[0]);
  }

LABEL_113:
LABEL_114:

  return v5;
}

void sub_24D95F078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56)
{
  if (STACK[0x208])
  {
    operator delete(STACK[0x208]);
  }

  _Unwind_Resume(a1);
}

void std::vector<BOOL>::push_back(uint64_t *a1, _BYTE *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(a1, v7);
    v4 = a1[1];
  }

  a1[1] = v4 + 1;
  v8 = *a1;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
}

void ___ZL28CounterIndicesFromCounterSetP5NSSetP7NSArray_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

uint64_t CounterIndex(NSNumber *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [(NSNumber *)v1 unsignedIntValue];
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  return v3;
}

BOOL IsGPUPerformanceStateInduced(void *a1)
{
  v6 = 0;
  v4 = 0;
  v5 = 0;
  v1 = [a1 defaultDevice];
  GTAGXPerfStateControl::InitWithDevice(&v4, v1);

  v2 = GTAGXPerfStateControl::IsGPUPerformanceStateInduced(&v4);
  GTAGXPerfStateControl::~GTAGXPerfStateControl(&v4);
  return v2;
}

void sub_24D95F69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  GTAGXPerfStateControl::~GTAGXPerfStateControl(va);
  _Unwind_Resume(a1);
}

id GTShaderProfilerGenerateComputedKey(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%08u%09u%09llu_%@", a1, a2, a3, v7];

  return v8;
}

void GTMTLReplayClient_init(uint64_t a1, uint64_t a2)
{
  v24 = 0u;
  v29 = 0;
  v23 = 0u;
  obj = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  memset(&v11[8], 0, 64);
  *v11 = a2;
  *&v11[72] = 0xFF0000FF00FF00FFLL;
  v12 = 1082130432;
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:128];
  *&v13 = v3;
  v25 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v26 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v27 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
  v4 = *&v11[48];
  *(a1 + 32) = *&v11[32];
  *(a1 + 48) = v4;
  *(a1 + 64) = *&v11[64];
  *(a1 + 80) = v12;
  v5 = *&v11[16];
  *a1 = *v11;
  *(a1 + 16) = v5;
  objc_storeStrong((a1 + 88), v3);
  objc_storeStrong((a1 + 96), 0);
  objc_storeStrong((a1 + 104), 0);
  objc_storeStrong((a1 + 112), 0);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  objc_storeStrong((a1 + 136), 0);
  objc_storeStrong((a1 + 144), 0);
  objc_storeStrong((a1 + 152), 0);
  objc_storeStrong((a1 + 160), 0);
  *(a1 + 168) = 0;
  objc_storeStrong((a1 + 176), 0);
  objc_storeStrong((a1 + 184), 0);
  objc_storeStrong((a1 + 192), 0);
  objc_storeStrong((a1 + 200), 0);
  objc_storeStrong((a1 + 208), 0);
  objc_storeStrong((a1 + 216), 0);
  objc_storeStrong((a1 + 224), 0);
  objc_storeStrong((a1 + 232), obj);
  objc_storeStrong((a1 + 240), *(&obj + 1));
  objc_storeStrong((a1 + 248), v23);
  objc_storeStrong((a1 + 256), *(&v23 + 1));
  objc_storeStrong((a1 + 264), v24);
  objc_storeStrong((a1 + 272), *(&v24 + 1));
  objc_storeStrong((a1 + 280), v25);
  objc_storeStrong((a1 + 288), v26);
  objc_storeStrong((a1 + 296), v27);
  objc_storeStrong((a1 + 304), v28);
  objc_storeStrong((a1 + 312), v29);
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 objectForInfoDictionaryKey:@"CFBundleName"];

  if (!v7)
  {
    v7 = @"MTLReplayController";
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"gputools.%@.parallelQueue", v7];
  [*(a1 + 288) setName:v8];

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"gputools.%@.serialQueue", v7];
  [*(a1 + 280) setName:v9];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"gputools.%@.profilingSerialQueue", v7];
  [*(a1 + 296) setName:v10];

  [*(a1 + 280) setMaxConcurrentOperationCount:1];
  [*(a1 + 296) setMaxConcurrentOperationCount:1];

  __destructor_8_s88_S_s96_S_s104_s112_s136_s144_s152_s160_s176_s184_s192_s200_s208_s216_s224_s232_s240_s248_s256_s264_s272_S_s280_s288_s296_s304_s312(v11);
}

void sub_24D95FA9C(_Unwind_Exception *a1)
{
  __destructor_8_s0_S_s8_s16_s40_s48_s56_s64_s80_s88_s96_s104_s112_s120_s128_s136_s144_s152_s160_s168_s176(v4 + 96);

  _Unwind_Resume(a1);
}

void __destructor_8_s88_S_s96_S_s104_s112_s136_s144_s152_s160_s176_s184_s192_s200_s208_s216_s224_s232_s240_s248_s256_s264_s272_S_s280_s288_s296_s304_s312(uint64_t a1)
{
  __destructor_8_s0_S_s8_s16_s40_s48_s56_s64_s80_s88_s96_s104_s112_s120_s128_s136_s144_s152_s160_s168_s176(a1 + 96);
  __destructor_8_s0_s8_s16(a1 + 280);

  v2 = *(a1 + 312);
}

GTMTLReplayService *GTMTLReplayClient_createNewTransport(uint64_t a1, uint64_t a2, uint64_t a3, apr_allocator_t *a4)
{
  if ((qword_27F09CF90 & 0x800000000) != 0)
  {
    v19 = 0;
  }

  else
  {
    newpool = 0;
    apr_pool_create_ex(&newpool, 0, 0, a4);
    GTMTLReplayClient_init(a1, newpool);
    v5 = dispatch_queue_create("com.apple.gputools.replay", 0);
    dispatch_suspend(v5);
    v6 = GTTransportLaunchedProcessConnectionNew();
    v7 = connection;
    connection = v6;

    objc_initWeak(&location, connection);
    v8 = connection;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __GTMTLReplayClient_createNewTransport_block_invoke;
    v21[3] = &unk_279658620;
    objc_copyWeak(&v22, &location);
    [v8 activateWithMessageHandler:v21 andErrorHandler:&__block_literal_global_6755];
    v9 = objc_alloc_init(MEMORY[0x277D0B508]);
    objc_storeStrong((a1 + 312), v9);
    v10 = [objc_alloc(MEMORY[0x277D0B698]) initWithProtocol:&unk_2860F8A48];
    v11 = [connection connection];
    v12 = registerService();

    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277D0B510]) initWithService:v9 properties:v10];
      [connection registerDispatcher:v13 forPort:{objc_msgSend(v10, "servicePort")}];
      v14 = [[GTMTLReplayService alloc] initWithContext:a1];
      objc_storeStrong(&_observer, v14);
      v15 = [objc_alloc(MEMORY[0x277D0B698]) initWithProtocol:&unk_2860DBC30];
      [v15 setVersion:1];
      v16 = [connection connection];
      v17 = registerService();

      if (v17)
      {
        -[GTMTLReplayService setServicePort:](v14, "setServicePort:", [v15 servicePort]);
        v18 = [objc_alloc(MEMORY[0x277D0B530]) initWithService:v14 properties:v15 bulkDataService:v9 bulkDataServiceProperties:v10];
        [connection registerDispatcher:v18 forPort:{objc_msgSend(v15, "servicePort")}];
        dispatch_resume(v5);
        v19 = v14;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v19;
}

void sub_24D95FE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void GTMTLReplayClient_destroyNewTransport()
{
  [connection cancel];
  v0 = connection;
  connection = 0;
}

id GTMTLReplayHost_computeDerivedCountersFromData(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  exception[16] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = &unk_2860D5B70;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [v14 objectForKeyedSubscript:@"DerivedCounterScript"];
  v16 = v15;
  if (v15)
  {
    v148 = v15;
    v158 = v12;
    v163 = [v14 objectForKeyedSubscript:@"DerivedCounterConfigurationVariables"];
    v159 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count") + objc_msgSend(v13, "count") + objc_msgSend(&unk_2860D5B70, "count")}];
    [v9 count];
    MEMORY[0x28223BE20]();
    v161 = &v146 - v17;
    bzero(&v146 - v17, v18);
    v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v9, "count")}];
    if ([v9 count])
    {
      v20 = 0;
      do
      {
        v21 = [v9 objectAtIndexedSubscript:v20];
        v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
        [v19 setObject:v22 forKeyedSubscript:v21];

        ++v20;
      }

      while (v20 < [v9 count]);
    }

    v149 = v14;
    v23 = [v9 sortedArrayUsingSelector:sel_compare_];
    v24 = [v23 count];
    v25 = v161;
    if (v24)
    {
      v26 = 0;
      do
      {
        v27 = [v23 objectAtIndexedSubscript:v26];
        v28 = [v19 objectForKeyedSubscript:v27];
        *&v25[4 * v26] = [v28 intValue];

        ++v26;
      }

      while (v26 < [v23 count]);
    }

    v29 = v159;
    v150 = v13;
    [v159 addObjectsFromArray:v13];
    [v29 addObjectsFromArray:v23];
    [v29 addObjectsFromArray:&unk_2860D5B70];

    v157 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v30 = objc_alloc(MEMORY[0x277CBEB18]);
    v155 = v10;
    v156 = [v30 initWithCapacity:{objc_msgSend(v10, "count")}];
    v31 = objc_alloc_init(MEMORY[0x277CD4660]);
    v32 = objc_alloc(MEMORY[0x277CD4640]);
    v146 = v31;
    v33 = [v32 initWithVirtualMachine:v31];
    [v33 setObject:&__block_literal_global_6776 forKeyedSubscript:@"ErrorLog"];
    [v33 setExceptionHandler:&__block_literal_global_19];
    v34 = [v33 evaluateScript:v148];
    v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v147 = v9;
    v36 = v9;
    v37 = [v36 countByEnumeratingWithState:&v176 objects:v193 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v177;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v177 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"var %@ = 0", *(*(&v176 + 1) + 8 * i)];;
          [v35 addObject:v41];
        }

        v38 = [v36 countByEnumeratingWithState:&v176 objects:v193 count:16];
      }

      while (v38);
    }

    [v35 addObject:@"function _SetRawCounterValues() {"];
    if ([v36 count])
    {
      v42 = 0;
      do
      {
        v43 = MEMORY[0x277CCACA8];
        v44 = [v36 objectAtIndexedSubscript:v42];
        v45 = [v43 stringWithFormat:@"\t%@ = _RawCounterValues[%lu]", v44, v42];;
        [v35 addObject:v45];

        ++v42;
      }

      while (v42 < [v36 count]);
    }

    v154 = v36;
    [v35 addObject:@"}"];
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v46 = &unk_2860D5B70;
    v47 = [&unk_2860D5B70 countByEnumeratingWithState:&v172 objects:v192 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v173;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v173 != v49)
          {
            objc_enumerationMutation(&unk_2860D5B70);
          }

          v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"var %@ = 0", *(*(&v172 + 1) + 8 * j)];;
          [v35 addObject:v51];
        }

        v48 = [&unk_2860D5B70 countByEnumeratingWithState:&v172 objects:v192 count:16];
      }

      while (v48);
    }

    [v35 addObject:@"function _SetSoftwareCounterValues() {"];
    if ([&unk_2860D5B70 count])
    {
      v52 = 0;
      do
      {
        v53 = MEMORY[0x277CCACA8];
        v54 = [&unk_2860D5B70 objectAtIndexedSubscript:v52];
        v55 = [v53 stringWithFormat:@"\t%@ = _SoftwareCounterValues[%lu]", v54, v52];;
        [v35 addObject:v55];

        ++v52;
      }

      while (v52 < [&unk_2860D5B70 count]);
    }

    [v35 addObject:@"}"];
    [v35 addObject:@"var _DerivedCounterResult = [];"];
    [v35 addObject:@"function _EvaluteDerivedCounters() {"];
    [v35 addObject:@"\t_DerivedCounterResult = [];"];
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v56 = v150;
    v57 = [v56 countByEnumeratingWithState:&v168 objects:v191 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v169;
      do
      {
        for (k = 0; k != v58; ++k)
        {
          if (*v169 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"\ttry { value = %@() if (!isFinite(value)) { value = 0; } _DerivedCounterResult.push(value); } catch(err) { ErrorLog(err); _DerivedCounterResult.push(0); }", *(*(&v168 + 1) + 8 * k)];;
          [v35 addObject:v61];
        }

        v58 = [v56 countByEnumeratingWithState:&v168 objects:v191 count:16];
      }

      while (v58);
    }

    v160 = v56;

    [v35 addObject:@"}"];
    v62 = [v35 componentsJoinedByString:@"\n"];
    v63 = [v33 evaluateScript:v62];

    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v64 = v163;
    v65 = [v64 countByEnumeratingWithState:&v164 objects:v190 count:16];
    v66 = 0x277CD4000uLL;
    v67 = v158;
    v163 = v64;
    if (v65)
    {
      v68 = v65;
      v69 = *v165;
      do
      {
        for (m = 0; m != v68; ++m)
        {
          if (*v165 != v69)
          {
            objc_enumerationMutation(v64);
          }

          v71 = *(*(&v164 + 1) + 8 * m);
          v72 = [v64 objectForKeyedSubscript:v71];
          v73 = [MEMORY[0x277CD4658] valueWithObject:v72 inContext:v33];
          [v33 setObject:v73 forKeyedSubscript:v71];

          v64 = v163;
        }

        v68 = [v163 countByEnumeratingWithState:&v164 objects:v190 count:16];
      }

      while (v68);
    }

    exception[0] = 0;
    v74 = [v33 JSGlobalContextRef];
    v75 = [v33 objectForKeyedSubscript:@"_SetSoftwareCounterValues"];
    v151 = JSValueToObject(v74, [v75 JSValueRef], exception);

    v76 = [v33 JSGlobalContextRef];
    v77 = [v33 objectForKeyedSubscript:@"_SetRawCounterValues"];
    v153 = JSValueToObject(v76, [v77 JSValueRef], exception);

    v78 = [v33 JSGlobalContextRef];
    v79 = [v33 objectForKeyedSubscript:@"_EvaluteDerivedCounters"];
    v152 = JSValueToObject(v78, [v79 JSValueRef], exception);

    v80 = [v33 JSGlobalContextRef];
    LogException(v80, exception[0]);
    v81 = v155;
    v82 = [v155 count];
    v83 = v160;
    if (v82)
    {
      v84 = 0;
      do
      {
        v162 = objc_autoreleasePoolPush();
        if ([v67 count])
        {
          v85 = *(v66 + 1624);
          v86 = [v67 objectAtIndexedSubscript:v84];
          v87 = [v85 valueWithObject:v86 inContext:v33];
          [v33 setObject:v87 forKeyedSubscript:@"_SoftwareCounterValues"];

          v88 = [v33 JSGlobalContextRef];
          JSObjectCallAsFunction(v88, v151, 0, 0, 0, exception);
          v89 = [v33 JSGlobalContextRef];
          LogException(v89, exception[0]);
        }

        v90 = *(v66 + 1624);
        v91 = [v81 objectAtIndexedSubscript:v84];
        v92 = [v90 valueWithObject:v91 inContext:v33];
        [v33 setObject:v92 forKeyedSubscript:@"_RawCounterValues"];

        v93 = [v33 JSGlobalContextRef];
        JSObjectCallAsFunction(v93, v153, 0, 0, 0, exception);
        v94 = [v33 JSGlobalContextRef];
        LogException(v94, exception[0]);
        v95 = [v33 JSGlobalContextRef];
        JSObjectCallAsFunction(v95, v152, 0, 0, 0, exception);
        v96 = [v33 objectForKeyedSubscript:@"_DerivedCounterResult"];
        v97 = [v96 toArray];

        v98 = [v33 JSGlobalContextRef];
        LogException(v98, exception[0]);
        [v157 addObject:v97];
        v99 = [v97 count];
        if (v99 != [v83 count])
        {
          if (g_runningInCI)
          {
            v100 = "#CI_ERROR# ";
          }

          else
          {
            v100 = "";
          }

          GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/launcher/DYJavaScriptHelper.m", "GTMTLReplayHost_computeDerivedCountersFromData", 190, 2, "%s%s %u: derivedCounterResult contains %lu results, %lu expected (derivedCounterNames)\n", v100, "NSDictionary *GTMTLReplayHost_computeDerivedCountersFromData(NSArray *__strong, NSArray *__strong, NSArray *__strong, NSArray *__strong, NSArray *__strong, NSDictionary *__strong)", 190, [v97 count], objc_msgSend(v83, "count"));
        }

        v101 = [v97 mutableCopy];
        v102 = v84;
        v103 = [v81 objectAtIndexedSubscript:v84];
        v104 = v154;
        v105 = [v154 count];
        v106 = v161;
        if (v105)
        {
          v107 = 0;
          do
          {
            v108 = [v103 objectAtIndexedSubscript:*&v106[4 * v107]];
            [v101 addObject:v108];

            ++v107;
          }

          while (v107 < [v104 count]);
        }

        v67 = v158;
        v109 = [v158 objectAtIndexedSubscript:v102];
        [v101 addObjectsFromArray:v109];

        [v156 addObject:v101];
        v110 = [v101 count];
        if (v110 != [v159 count])
        {
          if (g_runningInCI)
          {
            v111 = "#CI_ERROR# ";
          }

          else
          {
            v111 = "";
          }

          v112 = [v97 count];
          v113 = [v159 count];
          v145 = v111;
          v67 = v158;
          GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/launcher/DYJavaScriptHelper.m", "GTMTLReplayHost_computeDerivedCountersFromData", 208, 2, "%s%s %u: resultsForAnalysis contains %lu results, %lu expected (counterNamesForAnalysis)\n", v145, "NSDictionary *GTMTLReplayHost_computeDerivedCountersFromData(NSArray *__strong, NSArray *__strong, NSArray *__strong, NSArray *__strong, NSArray *__strong, NSDictionary *__strong)", 208, v112, v113);
        }

        objc_autoreleasePoolPop(v162);
        v84 = v102 + 1;
        v81 = v155;
        v114 = [v155 count];
        v83 = v160;
        v66 = 0x277CD4000;
      }

      while (v84 < v114);
    }

    if (![v157 count])
    {
      v115 = "";
      if (g_runningInCI)
      {
        v115 = "#CI_ERROR# ";
      }

      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/launcher/DYJavaScriptHelper.m", "GTMTLReplayHost_computeDerivedCountersFromData", 216, 2, "%s%s %u: derivedDataResults contains no results\n", v115, "NSDictionary *GTMTLReplayHost_computeDerivedCountersFromData(NSArray *__strong, NSArray *__strong, NSArray *__strong, NSArray *__strong, NSArray *__strong, NSDictionary *__strong)", 216);
    }

    v116 = [v156 count];
    v117 = v149;
    if (!v116)
    {
      v118 = "";
      if (g_runningInCI)
      {
        v118 = "#CI_ERROR# ";
      }

      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/launcher/DYJavaScriptHelper.m", "GTMTLReplayHost_computeDerivedCountersFromData", 221, 2, "%s%s %u: derivedDataResultsForBottleNeckAnalysis contains no results\n", v118, "NSDictionary *GTMTLReplayHost_computeDerivedCountersFromData(NSArray *__strong, NSArray *__strong, NSArray *__strong, NSArray *__strong, NSArray *__strong, NSDictionary *__strong)", 221);
    }

    v154 = [v117 objectForKeyedSubscript:@"DerivedCounterDictionary"];
    v162 = [v154 objectForKeyedSubscript:@"DerivedCounters"];
    v119 = v83;
    v161 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    v120 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    v121 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    v180 = 0u;
    v181 = 0u;
    v182 = 0u;
    v183 = 0u;
    v160 = v119;
    v122 = [v160 countByEnumeratingWithState:&v180 objects:exception count:16];
    if (v122)
    {
      v123 = v122;
      v124 = *v181;
      do
      {
        for (n = 0; n != v123; ++n)
        {
          if (*v181 != v124)
          {
            objc_enumerationMutation(v160);
          }

          v126 = [v162 objectForKeyedSubscript:*(*(&v180 + 1) + 8 * n)];
          v127 = [v126 objectForKeyedSubscript:@"name"];
          v128 = [v126 objectForKeyedSubscript:@"description"];
          v129 = [v126 objectForKeyedSubscript:@"type"];
          if (v127)
          {
            v130 = v127;
          }

          else
          {
            v130 = @"Unknown";
          }

          [v161 addObject:v130];
          if (v128)
          {
            v131 = v128;
          }

          else
          {
            v131 = &stru_2860BD438;
          }

          [v120 addObject:v131];
          if (v129)
          {
            v132 = v129;
          }

          else
          {
            v132 = @"Value";
          }

          [v121 addObject:v132];
        }

        v123 = [v160 countByEnumeratingWithState:&v180 objects:exception count:16];
      }

      while (v123);
    }

    v133 = v160;

    v134 = v161;
    v194[0] = v133;
    v194[1] = v161;
    v194[2] = v120;
    v194[3] = v121;
    v135 = [MEMORY[0x277CBEA60] arrayWithObjects:v194 count:4];

    v14 = v149;
    v136 = [v149 objectForKeyedSubscript:@"DerivedCounterAnalysis"];
    v137 = [v154 objectForKeyedSubscript:@"Bottlenecks"];
    if (!v137)
    {
      v137 = objc_opt_new();
    }

    v188[0] = @"derivedCounterDataForBottleneckAnalysis";
    v186[0] = @"AverageSamples";
    v186[1] = @"counters";
    v187[0] = v156;
    v187[1] = v159;
    v138 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v187 forKeys:v186 count:2];
    v189[0] = v138;
    v188[1] = @"derivedCounterData";
    v184[0] = @"AverageSamples";
    v184[1] = @"counters";
    v185[0] = v157;
    v185[1] = v135;
    v139 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v185 forKeys:v184 count:2];
    v189[1] = v139;
    v189[2] = v136;
    v188[2] = @"DerivedCounterAnalysis";
    v188[3] = @"DerivedCounterAnalysisFunctions";
    v189[3] = v137;
    v140 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v189 forKeys:v188 count:4];

    v10 = v155;
    v141 = v163;
    if (v163)
    {
      v142 = [v140 mutableCopy];
      [v142 setObject:v141 forKeyedSubscript:@"DerivedCounterConfigurationVariables"];

      v140 = v142;
    }

    v9 = v147;
    v12 = v158;

    v13 = v150;
    v16 = v148;
  }

  else
  {
    if (g_runningInCI)
    {
      v143 = "#CI_ERROR# ";
    }

    else
    {
      v143 = "";
    }

    GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/launcher/DYJavaScriptHelper.m", "GTMTLReplayHost_computeDerivedCountersFromData", 59, 2, "%s%s %u: derivedScriptCode missing\n", v143, "NSDictionary *GTMTLReplayHost_computeDerivedCountersFromData(NSArray *__strong, NSArray *__strong, NSArray *__strong, NSArray *__strong, NSArray *__strong, NSDictionary *__strong)", 59);
    v140 = MEMORY[0x277CBEC10];
  }

  return v140;
}

void LogException(const OpaqueJSContext *a1, const OpaqueJSValue *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = JSValueToStringCopy(a1, a2, 0);
    MaximumUTF8CStringSize = JSStringGetMaximumUTF8CStringSize(v2);
    MEMORY[0x28223BE20]();
    v5 = v7 - v4;
    bzero(v7 - v4, MaximumUTF8CStringSize);
    JSStringGetUTF8CString(v2, v5, MaximumUTF8CStringSize);
    JSStringRelease(v2);
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v5];
    NSLog(&cfstr_Dyjsscripting_0.isa, v6);
  }
}

void sub_24D96151C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose((v21 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_24D961758(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_24D961994(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_24D961CB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_24D961FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id GTMTLReplayClient_loadDerivedCounterInfo(void *a1, void *a2)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEBC0];
  v5 = a1;
  v6 = [v4 alloc];
  v7 = [v5 stringByAppendingString:@"-counters.plist"];

  v8 = [v6 initFileURLWithPath:v7 isDirectory:0];
  v9 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfURL:v8 error:0];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = [v3 stringByAppendingString:@"-derived.js"];
    v12 = [v10 initWithContentsOfFile:v11 encoding:4 error:0];

    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = [v3 stringByAppendingString:@"-analysis.js"];
    v15 = [v13 initWithContentsOfFile:v14 encoding:4 error:0];

    v19[0] = @"DerivedCounterDictionary";
    v19[1] = @"DerivedCounterScript";
    v20[0] = v9;
    v20[1] = v12;
    v19[2] = @"DerivedCounterAnalysis";
    v16 = &stru_2860BD438;
    if (v15)
    {
      v16 = v15;
    }

    v20[2] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id GTMTLReplayClient_mergeDerivedCounterInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 mutableCopy];
  v6 = [v4 objectForKeyedSubscript:@"DerivedCounterDictionary"];
  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"DerivedCounterDictionary"];
    verifyCounterDictionary(v7);
    v8 = MergeDictionaries(v7, v6);
    [v5 setObject:v8 forKeyedSubscript:@"DerivedCounterDictionary"];
  }

  v9 = [v4 objectForKeyedSubscript:@"DerivedCounterScript"];
  if (v9)
  {
    v10 = [v3 objectForKeyedSubscript:@"DerivedCounterScript"];
    v11 = [v10 stringByAppendingString:v9];
    [v5 setObject:v11 forKeyedSubscript:@"DerivedCounterScript"];
  }

  v12 = [v4 objectForKeyedSubscript:@"DerivedCounterAnalysis"];
  if (v12)
  {
    v13 = [v3 objectForKeyedSubscript:@"DerivedCounterAnalysis"];
    v14 = [v13 stringByAppendingString:v12];
    [v5 setObject:v14 forKeyedSubscript:@"DerivedCounterAnalysis"];
  }

  v15 = [v5 copy];

  return v15;
}

uint64_t verifyCounterDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"DerivedCounters"];

  if (!v2)
  {
    if (g_runningInCI)
    {
      v6 = "#CI_ERROR# ";
    }

    else
    {
      v6 = "";
    }

    GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "verifyCounterDictionary", 967, 1, "%s%s %u: %@ missing in plist\n", v6, "_Bool verifyCounterDictionary(NSDictionary *__strong)", 967, @"DerivedCounters");
    goto LABEL_12;
  }

  v3 = [v1 objectForKeyedSubscript:@"DerivedCounters"];
  v4 = [v3 count];

  if (!v4)
  {
    if (g_runningInCI)
    {
      v7 = "#CI_ERROR# ";
    }

    else
    {
      v7 = "";
    }

    GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "verifyCounterDictionary", 972, 1, "%s%s %u: No derived counters in plist\n", v7);
LABEL_12:
    v5 = 0;
    goto LABEL_13;
  }

  v5 = 1;
LABEL_13:

  return v5;
}

id MergeDictionaries(void *a1, void *a2)
{
  v3 = a1;
  v4 = MEMORY[0x277CBEB38];
  v5 = a2;
  v6 = [[v4 alloc] initWithDictionary:v3];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __MergeDictionaries_block_invoke;
  v14 = &unk_279658828;
  v15 = v3;
  v16 = v6;
  v7 = v6;
  v8 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:&v11];

  v9 = [v7 copy];

  return v9;
}

void __MergeDictionaries_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v9];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = MergeDictionaries(v6, v5);
LABEL_6:
      v8 = v7;
      [*(a1 + 40) setObject:v7 forKeyedSubscript:v9];

      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 arrayByAddingObjectsFromArray:v5];
      goto LABEL_6;
    }
  }

  [*(a1 + 40) setObject:v5 forKeyedSubscript:v9];
LABEL_8:
}

void __debugDumpCounterDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (g_runningInCI == 1)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = a2;
    v7 = [a3 objectForKeyedSubscript:@"counters"];
    v8 = [v7 componentsJoinedByString:{@", "}];
    v9 = [v5 stringWithFormat:@"Counter %@:%@", v6, v8];

    v12 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    v10 = *MEMORY[0x277D85E08];
    v11 = v12;
    fprintf(v10, "#CI-INFO# %s\n", [v12 UTF8String]);
  }
}

id DYMTLReplayFrameProfiler_loadAnalysis(void *a1)
{
  v131 = *MEMORY[0x277D85DE8];
  v101 = DEVICEOBJECT(a1);
  v1 = [v101 acceleratorPort];
  CFProperty = IORegistryEntryCreateCFProperty(v1, @"GPUConfigurationVariable", 0, 0);
  v107 = CFProperty;
  if (g_runningInCI == 1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Configuration Variables=%@", CFProperty];
    v4 = [v3 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v4 UTF8String]);
  }

  v5 = IORegistryEntryCreateCFProperty(v1, @"MetalStatisticsName", 0, 0);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFStringGetTypeID())
    {
      v8 = v6;
      v9 = v8;
    }

    else
    {
      if (v7 != CFArrayGetTypeID() || (v19 = MEMORY[0x277CCAC30], v20 = v6, [v19 predicateWithFormat:@"NOT (self BEGINSWITH 'autocorr')"], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "filteredArrayUsingPredicate:", v21), v22 = objc_claimAutoreleasedReturnValue(), v20, objc_msgSend(v22, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v22, v21, CFProperty = v107, !v9))
      {
        if (g_runningInCI)
        {
          v23 = "#CI_ERROR# ";
        }

        else
        {
          v23 = "";
        }

        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "DYMTLReplayFrameProfiler_loadAnalysis", 1003, 1, "%s%s %u: Failed to determine statisticsName\n", v23, "NSDictionary *DYMTLReplayFrameProfiler_loadAnalysis(__strong id<MTLDevice>)", 1003);
        CFRelease(v6);
        v18 = MEMORY[0x277CBEC10];
        goto LABEL_107;
      }

      v8 = v20;
    }

    CFRelease(v8);
LABEL_32:
    v104 = v9;
    if (g_runningInCI == 1)
    {
      v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"statisticsName=%@", v9];
      v30 = [v29 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v30 UTF8String]);
    }

    v108 = IORegistryEntryCreateCFProperty(v1, @"MetalPluginName", 0, 0);
    v31 = [v108 containsString:@"AGXMetal"];
    v32 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    [v32 addObject:v9];
    if (v31)
    {
      v33 = [v9 rangeOfString:@"AGXMetalStatistics"];
      if ([v9 rangeOfString:@"AGXMetalStatisticsExternal"] == 0x7FFFFFFFFFFFFFFFLL && v33 < objc_msgSend(v9, "length"))
      {
        v34 = [v9 substringFromIndex:{objc_msgSend(@"AGXMetalStatistics", "length")}];
        v35 = [@"AGXMetalStatisticsExternal" stringByAppendingString:v34];

        [v32 addObject:v35];
      }
    }

    v36 = IORegistryEntryCreateCFProperty(v1, @"MetalStatisticsScriptName", 0, 0);
    v37 = IORegistryEntryCreateCFProperty(v1, @"AGXInternalPerfCounterResourcesPath", 0, 0);
    if (v37)
    {
      v38 = v37;
      v39 = [v37 stringByAppendingString:@"/%@/%@"];
    }

    else
    {
      v39 = @"/AppleInternal/Library/AGX/Performance/%@/%@";
    }

    v97 = v39;
    v129[0] = v39;
    v129[1] = @"/System/Library/Extensions/%@.bundle/%@";
    v129[2] = @"/System/Library/Extensions/%@.bundle/Contents/Resources/%@";
    v102 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:3];
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    obj = v32;
    v99 = [obj countByEnumeratingWithState:&v113 objects:v128 count:16];
    if (v99)
    {
      v40 = *v114;
      v95 = *v114;
      do
      {
        v41 = 0;
        do
        {
          if (*v114 != v40)
          {
            v42 = v41;
            objc_enumerationMutation(obj);
            v41 = v42;
          }

          v96 = v41;
          v43 = *(*(&v113 + 1) + 8 * v41);
          v109 = 0u;
          v110 = 0u;
          v111 = 0u;
          v112 = 0u;
          v44 = v102;
          v45 = [v44 countByEnumeratingWithState:&v109 objects:v127 count:16];
          if (v45)
          {
            v46 = *v110;
            while (2)
            {
              for (i = 0; i != v45; ++i)
              {
                if (*v110 != v46)
                {
                  objc_enumerationMutation(v44);
                }

                v48 = *(*(&v109 + 1) + 8 * i);
                v49 = [MEMORY[0x277CCACA8] stringWithFormat:v48, v108, v43];
                v50 = v49;
                if (v36)
                {
                  v51 = [MEMORY[0x277CCACA8] stringWithFormat:v48, v108, v36];
                }

                else
                {
                  v51 = v49;
                }

                v52 = v51;
                if (g_runningInCI == 1)
                {
                  v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Checking with plistPrefix=%@, scriptPrefix=%@", v50, v51];
                  v54 = [v53 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

                  v55 = *MEMORY[0x277D85E08];
                  v56 = v54;
                  fprintf(v55, "#CI-INFO# %s\n", [v54 UTF8String]);
                }

                v57 = GTMTLReplayClient_loadDerivedCounterInfo(v50, v52);

                if (v57)
                {

                  goto LABEL_64;
                }
              }

              v45 = [v44 countByEnumeratingWithState:&v109 objects:v127 count:16];
              if (v45)
              {
                continue;
              }

              break;
            }
          }

          v40 = v95;
          v41 = v96 + 1;
        }

        while (v96 + 1 != v99);
        v99 = [obj countByEnumeratingWithState:&v113 objects:v128 count:16];
        v57 = 0;
        v40 = v95;
      }

      while (v99);
    }

    else
    {
      v57 = 0;
    }

LABEL_64:

    if (v36)
    {
      CFRelease(v36);
    }

    if (v57)
    {
      v58 = [v57 objectForKeyedSubscript:@"DerivedCounterScript"];
      v59 = [v58 length] == 0;

      if (v59)
      {
        if (g_runningInCI)
        {
          v93 = "#CI_ERROR# ";
        }

        else
        {
          v93 = "";
        }

        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "DYMTLReplayFrameProfiler_loadAnalysis", 1131, 1, "%s%s %u: Derived counter script missing\n", v93, "NSDictionary *DYMTLReplayFrameProfiler_loadAnalysis(__strong id<MTLDevice>)", 1131);
      }

      else
      {
        v60 = [v57 objectForKeyedSubscript:@"DerivedCounterDictionary"];
        v61 = v60;
        if (g_runningInCI == 1)
        {
          v62 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d counters found", objc_msgSend(v60, "count")];
          v63 = [v62 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

          v64 = *MEMORY[0x277D85E08];
          v65 = v63;
          fprintf(v64, "#CI-INFO# %s\n", [v63 UTF8String]);

          if (![v61 count])
          {
            if (g_runningInCI)
            {
              v66 = "#CI_ERROR# ";
            }

            else
            {
              v66 = "";
            }

            GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "debugDumpCounterDictionary", 952, 1, "%s%s %u: No derivedCounterInfoResult counters present!\n", v66, "void debugDumpCounterDictionary(NSDictionary *__strong)", 952);
          }

          if (g_runningValidationCI == 1)
          {
            v67 = [v61 objectForKeyedSubscript:@"DerivedCounters"];
            [v67 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_170];
          }
        }

        v68 = [v57 objectForKeyedSubscript:@"DerivedCounterDictionary"];
        if (verifyCounterDictionary(v68))
        {
          v125[0] = @"DerivedCounterDictionary";
          v123[0] = @"Version";
          v69 = [v68 objectForKeyedSubscript:?];
          v123[1] = @"DerivedCounters";
          v124[0] = v69;
          v121 = @"GPUToolsGPUTime";
          v122 = &unk_2860D6290;
          v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
          v124[1] = v70;
          v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];
          v125[1] = @"DerivedCounterScript";
          v126[0] = v71;
          v126[1] = @"\nfunction GPUToolsGPUTime()\n{\n   return MTLStat_nSec\n}\n";
          v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v126 forKeys:v125 count:2];

          v100 = GTMTLReplayClient_mergeDerivedCounterInfo(v57, v98);

          v72 = [v100 objectForKeyedSubscript:@"DerivedCounterDictionary"];
          v103 = v68;
          obja = v72;
          if (g_runningInCI == 1)
          {
            v73 = [MEMORY[0x277CCACA8] stringWithFormat:@"Validating merged derived counters"];
            v74 = [v73 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

            v75 = *MEMORY[0x277D85E08];
            v76 = v74;
            fprintf(v75, "#CI-INFO# %s\n", [v74 UTF8String]);
          }

          v77 = [obja objectForKeyedSubscript:@"DerivedCounters"];
          v119 = 0u;
          v120 = 0u;
          v117 = 0u;
          v118 = 0u;
          v78 = [v103 objectForKeyedSubscript:@"DerivedCounters"];
          v79 = [v78 countByEnumeratingWithState:&v117 objects:v130 count:16];
          if (v79)
          {
            v80 = *v118;
            do
            {
              for (j = 0; j != v79; ++j)
              {
                if (*v118 != v80)
                {
                  objc_enumerationMutation(v78);
                }

                v82 = *(*(&v117 + 1) + 8 * j);
                v83 = [v77 objectForKeyedSubscript:v82];
                v84 = v83 == 0;

                if (v84)
                {
                  v85 = "";
                  if (g_runningInCI)
                  {
                    v85 = "#CI_ERROR# ";
                  }

                  GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "validateMergeDerivedCounterInfo", 940, 1, "%s%s %u: Counter %@ is missing from merged counter list\n", v85, "void validateMergeDerivedCounterInfo(NSDictionary *__strong, NSDictionary *__strong)", 940, v82);
                }
              }

              v79 = [v78 countByEnumeratingWithState:&v117 objects:v130 count:16];
            }

            while (v79);
          }

          v86 = [v100 mutableCopy];
          [v86 setObject:v108 forKeyedSubscript:@"MetalPluginName"];
          if (v107)
          {
            v87 = v107;
            if (g_runningInCI == 1)
            {
              v88 = [MEMORY[0x277CCACA8] stringWithFormat:@"Configuration Variables: %@", v107];
              v89 = [v88 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

              v90 = *MEMORY[0x277D85E08];
              v91 = v89;
              fprintf(v90, "#CI-INFO# %s\n", [v89 UTF8String]);

              v87 = v107;
            }

            [v86 setObject:v87 forKeyedSubscript:@"DerivedCounterConfigurationVariables"];
          }

          v18 = [v86 copy];

          v57 = v100;
          goto LABEL_105;
        }
      }
    }

    else
    {
      if (g_runningInCI)
      {
        v92 = "#CI_ERROR# ";
      }

      else
      {
        v92 = "";
      }

      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "DYMTLReplayFrameProfiler_loadAnalysis", 1125, 1, "%s%s %u: Failed to load any derived counters\n", v92, "NSDictionary *DYMTLReplayFrameProfiler_loadAnalysis(__strong id<MTLDevice>)", 1125);
      v57 = 0;
    }

    v18 = MEMORY[0x277CBEC10];
LABEL_105:

    goto LABEL_106;
  }

  if (!CFProperty)
  {
    v9 = 0;
    goto LABEL_32;
  }

  v10 = [CFProperty objectForKeyedSubscript:@"gpu_gen"];
  v11 = [v10 unsignedIntValue];

  v12 = [CFProperty objectForKeyedSubscript:@"num_cores"];
  v13 = [v12 unsignedIntValue];

  v14 = [v107 objectForKeyedSubscript:@"num_mgpus"];
  v15 = [v14 unsignedIntValue];

  v16 = [v107 objectForKeyedSubscript:@"usc_gen"];
  v17 = v16;
  if (!v16 || [v16 unsignedIntValue] <= 2)
  {
    if (v11 < 0xE)
    {
      v9 = 0;
    }

    else
    {
      v24 = [MEMORY[0x277CCAB68] stringWithFormat:@"AGXMetalStatisticsG%u", v11];
      v25 = v24;
      v26 = @"D";
      v27 = @"P";
      if (v13 > 6)
      {
        v27 = @"G";
      }

      if (v15 == 4)
      {
        v27 = @"C";
      }

      if (v15 != 8)
      {
        v26 = v27;
      }

      if (v15 == 2)
      {
        v28 = @"S";
      }

      else
      {
        v28 = v26;
      }

      [v24 appendString:v28];
      v9 = [v25 copy];
    }

    goto LABEL_32;
  }

  v18 = MEMORY[0x277CBEC10];
LABEL_106:
  CFProperty = v107;
LABEL_107:

  return v18;
}

id AddShaderBinary(void *a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = crc32(0, 0, 0);
  v7 = [v5 initWithFormat:@"%0.8x", crc32(v6, objc_msgSend(v4, "bytes"), objc_msgSend(v4, "length"))];
  if (v4)
  {
    v10 = @"binary";
    v11[0] = v4;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v3 setObject:v8 forKeyedSubscript:v7];
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:v7];
  }

  return v7;
}

id GTMTLReplayClient_collectPipelinePerformanceStatistics(uint64_t a1, uint64_t a2)
{
  v60[2] = *MEMORY[0x277D85DE8];
  p = **(a1 + 184);
  v3 = *a1;
  v52 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = v5;
  if (*(a1 + 22560) < *(v3[16] + 3))
  {
    v7 = 0;
    v53 = v5;
    v51 = v4;
    while (1)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = &v3[16][3][64 * *(a1 + 22560)];
      if (GTFenum_isBeginCommandBuffer(*(v9 + 8)))
      {
        GTMTLReplayController_restoreCommandBuffer(a1, v9);
      }

      GTMTLReplayController_updateCommandEncoder(a1, v9);
      GTMTLReplayController_defaultDispatchFunction(a1, v9);
      v10 = *(a1 + 22560);
      v11 = v3[13];
      if (v11 > v10 || v11 + v3[14] <= v10)
      {
        goto LABEL_25;
      }

      v13 = *(v9 + 8);
      if ((GTFenum_isDrawCall(v13) & 1) == 0 && !GTFenum_isComputeCall(v13))
      {
        goto LABEL_25;
      }

      v14 = *(a1 + 11360);
      if (v14 == 28)
      {
        break;
      }

      if (v14 == 70)
      {
        v15 = *(a1 + 8792);
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
        v54 = v7 + 1;
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
        v59[0] = v17;
        v59[1] = v16;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
        [v52 addObject:v18];

        v6 = v53;
        v19 = v16;
        if (([v53 containsObject:v16] & 1) == 0)
        {
          v50 = v16;
          [v53 addObject:v16];
          v47 = v15;
          v20 = GTMTLSMContext_getObject(*v3[5], v15, *v9) + 7;
          v21 = 112;
          v22 = 120;
          goto LABEL_19;
        }

LABEL_17:
        v4 = v51;
        goto LABEL_24;
      }

LABEL_25:
      objc_autoreleasePoolPop(v8);
      v43 = *(a1 + 22560) + 1;
      *(a1 + 22560) = v43;
      if (v43 >= *(v3[16] + 3))
      {
        goto LABEL_26;
      }
    }

    v23 = *(a1 + 8792);
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 256)];
    v54 = v7 + 1;
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
    v58[0] = v25;
    v58[1] = v24;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
    [v52 addObject:v26];

    v6 = v53;
    v19 = v24;
    if ([v53 containsObject:v24])
    {
      goto LABEL_17;
    }

    v50 = v24;
    [v53 addObject:v24];
    v47 = v23;
    v20 = GTMTLSMContext_getObject(*v3[5], v23, *v9) + 8;
    v21 = 56;
    v22 = 64;
LABEL_19:
    v4 = v51;
    v27 = *v20;
    v28 = *(v27 + v21);
    v29 = *(v27 + v22);
    v30 = v51;
    if (v28)
    {
      v49 = v30;
      v31 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v28 length:v29 freeWhenDone:0];
      v46 = MEMORY[0x277CCAAC8];
      v32 = MEMORY[0x277CBEB98];
      v33 = objc_opt_class();
      v34 = objc_opt_class();
      v35 = objc_opt_class();
      v36 = objc_opt_class();
      v37 = [v32 setWithObjects:{v33, v34, v35, v36, objc_opt_class(), 0}];
      v55 = 0;
      v38 = v31;
      v39 = [v46 unarchivedObjectOfClasses:v37 fromData:v31 error:&v55];
      v40 = v55;

      if (v39)
      {
        v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v47];
        v60[0] = v41;
        v60[1] = v39;
        v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
        [v49 addObject:v42];
      }

      v4 = v51;
      v30 = v49;
    }

    apr_pool_clear(p);
    v6 = v53;
    v19 = v50;
LABEL_24:

    v7 = v54;
    goto LABEL_25;
  }

LABEL_26:
  v56[0] = @"Draw ID -> PipelineState ID";
  v56[1] = @"PipelineState ID";
  v57[0] = v52;
  v57[1] = v4;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];

  return v44;
}

void validateSubdividedCounterLists(void *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (g_runningValidationCI == 1)
  {
    if (g_runningInCI == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Required counters: %@, divided list: %@", v3, v4];
      v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v6 UTF8String]);
    }

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = v4;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 addObjectsFromArray:*(*(&v25 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v10);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v3;
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v21 + 1) + 8 * j);
          if (([v7 containsObject:v18] & 1) == 0)
          {
            v19 = "";
            if (g_runningInCI)
            {
              v19 = "#CI_ERROR# ";
            }

            GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "validateSubdividedCounterLists", 1521, 1, "%s%s %u: Counter %@ missing from subdivided counter list\n", v19, "void validateSubdividedCounterLists(NSArray *__strong, NSArray *__strong)", 1521, v18);
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v15);
    }

    v4 = v20;
  }
}

id GTMTLReplayClient_queryShaderInfo(uint64_t a1, id *a2, void *a3)
{
  v85[6] = *MEMORY[0x277D85DE8];
  v44 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCABD0]);
  v85[0] = @"MTLStatCommandBufferIndex";
  v85[1] = @"MTLStatEncoderIndex";
  v85[2] = @"MTLStatCommandIndex";
  v85[3] = @"MTLStat_nSec";
  v85[4] = @"MTLStatVertexCost";
  v85[5] = @"MTLStatFragmentCost";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:6];
  v7 = [v44 objectForKeyedSubscript:@"GPUState"];
  v8 = objc_autoreleasePoolPush();
  if (v7)
  {
    v9 = [GTPMController alloc];
    v10 = [*(a1 + 8) defaultDevice];
    v11 = [v10 name];
    v12 = [(GTPMController *)v9 initWithGPUFamily:v11];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v8);
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  v80 = 0xBFF0000000000000;
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__7224;
  v75 = __Block_byref_object_dispose__7225;
  v76 = 0;
  v13 = objc_alloc_init(MEMORY[0x277CCABD0]);
  v14 = *a2;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __GTMTLReplayClient_queryShaderInfo_block_invoke;
  v63[3] = &unk_2796587D8;
  v15 = v7;
  v64 = v15;
  v16 = v12;
  v65 = v16;
  v69 = a1;
  v43 = v6;
  v66 = v43;
  v68 = &v71;
  v17 = v13;
  v67 = v17;
  v70 = a2;
  [v14 addOperationWithBlock:v63];
  [v5 addDependency:v17];

  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__7224;
  v61 = __Block_byref_object_dispose__7225;
  v62 = 0;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __GTMTLReplayClient_queryShaderInfo_block_invoke_2;
  v56[3] = &unk_279659168;
  v56[4] = &v57;
  v56[5] = a1;
  v18 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v56];
  [v18 setQueuePriority:-8];
  [*a2 addOperation:v18];
  v19 = MEMORY[0x277CCA8C8];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __GTMTLReplayClient_queryShaderInfo_block_invoke_3;
  v52[3] = &unk_279658800;
  v41 = v15;
  v53 = v41;
  v55 = &v77;
  v20 = v16;
  v54 = v20;
  v21 = [v19 blockOperationWithBlock:v52];
  [v21 addDependency:v18];
  [a2[1] addOperation:v21];
  [v5 addDependency:v21];

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__7224;
  v50 = __Block_byref_object_dispose__7225;
  v51 = 0;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __GTMTLReplayClient_queryShaderInfo_block_invoke_4;
  v45[3] = &unk_279659168;
  v45[4] = &v46;
  v45[5] = a1;
  v22 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v45];
  [a2[1] addOperation:v22];
  [v5 addDependency:v22];

  [a2[1] addOperation:v5];
  [v5 waitUntilFinished];
  if (v20)
  {
    [(GTPMController *)v20 tearDown];
  }

  v23 = [v58[5] objectForKeyedSubscript:{@"frametime", v41}];
  v24 = [v47[5] objectForKeyedSubscript:@"MetalPluginName"];
  v25 = objc_opt_new();
  v26 = v25;
  v27 = MEMORY[0x277CBEC28];
  if (v7)
  {
    v28 = [GTPMController stateFromWeightedAverage:v78[3]];
    if (v78[3] <= -2.22044605e-16)
    {
      v29 = v27;
    }

    else
    {
      v29 = MEMORY[0x277CBEC38];
    }

    [v26 setObject:v29 forKeyedSubscript:@"enabled"];
    v30 = MEMORY[0x277CCABB0];
    if ([v28 isEqualToString:@"mixed"])
    {
      v31 = 0;
    }

    else
    {
      v31 = [v28 isEqualToString:@"none"] ^ 1;
    }

    v32 = [v30 numberWithInt:v31];
    [v26 setObject:v32 forKeyedSubscript:@"consistent"];

    [v26 setObject:v42 forKeyedSubscript:@"level"];
  }

  else
  {
    [v25 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"enabled"];
  }

  v33 = objc_alloc(MEMORY[0x277CBEB38]);
  v81[0] = @"frame counters";
  v81[1] = @"frame profile data";
  v34 = v72[5];
  v82[0] = v43;
  v82[1] = v34;
  v83[0] = @"frameProfile";
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
  v84[0] = v35;
  v84[1] = v23;
  v83[1] = @"frametime";
  v83[2] = @"Frame Consistent Perf Info";
  v36 = v47[5];
  v84[2] = v26;
  v84[3] = v36;
  v83[3] = @"derivedCounterData";
  v83[4] = @"BatchingFilteringAvailable";
  v84[4] = v27;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:5];
  v38 = [v33 initWithDictionary:v37];

  v39 = [v58[5] objectForKeyedSubscript:@"frameGPUTime"];
  if (v39)
  {
    [v38 setObject:v39 forKeyedSubscript:@"frameGPUTime"];
  }

  if (v24)
  {
    [v38 setObject:v24 forKeyedSubscript:@"MetalPluginName"];
  }

  [v38 addEntriesFromDictionary:MEMORY[0x277CBEC10]];
  [v38 addEntriesFromDictionary:MEMORY[0x277CBEC10]];

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v77, 8);

  return v38;
}

void sub_24D964784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7224(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __performFrameTimingDesktop_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 GPUStartTime];
  **(a1 + 32) = v4;
  [v3 GPUEndTime];
  v6 = v5;

  *(*(a1 + 32) + 8) = v6;
}

uint64_t CommandBufferTimeInfo_compare(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    v3 = a1[1];
    v4 = a2[1];
    if (v3 < v4)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v3 != v4;
    }
  }

  else if (*a1 >= *a2)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

id CollectFrameCounters(uint64_t a1, id *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v48 = a1;
  v13 = [*(a1 + 8) defaultCommandQueue];
  v14 = [v11 count];
  v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v14];
  if (v14)
  {
    v16 = v14;
    do
    {
      v17 = [MEMORY[0x277CBEB28] dataWithCapacity:0x10000];
      [v15 addObject:v17];

      --v16;
    }

    while (v16);
  }

  v18 = 0x277CCA000uLL;
  v19 = MEMORY[0x277CCA8C8];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __CollectFrameCounters_block_invoke;
  v70[3] = &unk_279658850;
  v42 = v12;
  v71 = v42;
  v44 = v10;
  v72 = v44;
  v20 = v11;
  v73 = v20;
  v21 = v15;
  v74 = v21;
  v22 = [v19 blockOperationWithBlock:v70];
  v23 = v22;
  if (v14)
  {
    v24 = 0;
    v45 = v52;
    v46 = v64;
    v50 = v14;
    v47 = v22;
    do
    {
      v25 = g_signpostLog;
      v26 = [v21 objectAtIndexedSubscript:{v24, v42, v44, v45, v46}];
      v27 = os_signpost_id_make_with_pointer(v25, v26);

      v28 = *(v18 + 2248);
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v64[0] = __CollectFrameCounters_block_invoke_411;
      v64[1] = &unk_279658878;
      v67 = v27;
      v68 = v24;
      v69 = v14;
      v29 = v21;
      v65 = v29;
      v30 = v21;
      v31 = v13;
      v32 = v20;
      v66 = v32;
      v33 = [v28 blockOperationWithBlock:v63];
      [v23 addDependency:v33];
      v34 = v20;
      v35 = MEMORY[0x277CCA8C8];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v52[0] = __CollectFrameCounters_block_invoke_412;
      v52[1] = &unk_2796588C8;
      v36 = v32;
      v13 = v31;
      v21 = v30;
      v53 = v36;
      v57 = v24;
      v58 = a5;
      v59 = v27;
      v60 = v50;
      v61 = v48;
      v54 = v29;
      v37 = v13;
      v62 = a2;
      v55 = v37;
      v56 = v33;
      v38 = v33;
      v39 = v35;
      v20 = v34;
      v23 = v47;
      v40 = [v39 blockOperationWithBlock:v51];
      [v40 setQueuePriority:-8];
      [*a2 addOperation:v40];

      v18 = 0x277CCA000;
      v14 = v50;

      ++v24;
    }

    while (v50 != v24);
  }

  [a2[1] addOperation:{v23, v42}];

  return v23;
}

void __ProfileFrame_block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = os_signpost_id_make_with_pointer(g_signpostLog, *(a1 + 32));
  v3 = g_signpostLog;
  v4 = v3;
  v42 = v2 - 1;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Replayer-4-parallel", "ProcessFrameData", buf, 2u);
  }

  spid = v2;

  v5 = *(a1 + 40);
  v41 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = [*(a1 + 56) count];
  v8 = v5;
  v9 = v6;
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "length") >> 3}];
  v11 = [v8 bytes];
  v12 = [v8 bytes];
  v40 = v8;
  v13 = v12 + [v8 length];
  v39 = v9;
  v14 = [v9 bytes];
  v45 = v13;
  if (&v11[2 * v7] <= v13)
  {
    v15 = 0;
    v16 = 0;
    v43 = 2 * v7;
    v44 = v7;
    v17 = 8 * v7;
    v18 = -1;
    v49 = 8 * v7;
    v53 = v10;
    do
    {
      v19 = 0;
      v20 = 0;
      for (i = v11; *(i + v17) == *i && *(i + v17 + 8) == i[1]; i = (i + v17))
      {
        v19 = *(i + v17 + 24) + v19 - i[3];
        ++v20;
      }

      if (v18 == *v11)
      {
        v23 = v16;
      }

      else
      {
        v23 = 0;
      }

      if (v18 != *v11)
      {
        ++v15;
      }

      v47 = *v11;
      v48 = v15;
      v46 = v14 + 8 * v7;
      if (v20)
      {
        v24 = 0;
        v25 = v19;
        v26 = (*(v14 + 8 * v7 + 24) - *(v14 + 24));
        v50 = v15 - 1;
        v51 = v23;
        v52 = v20;
        do
        {
          v27 = (v11 + v17);
          v28 = (*(v11 + v17 + 24) - v11[3]) / v25 * v26;
          v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{v50, spid}];
          *buf = v29;
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
          v55 = v30;
          v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v24];
          v56 = v31;
          v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v28];
          v57 = v32;
          v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v27[4]];
          v58 = v33;
          v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v27[5]];
          v59 = v34;
          v35 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:6];
          [v53 addObjectsFromArray:v35];

          v23 = v51;
          v17 = v49;
          ++v24;
          v11 = v27;
        }

        while (v52 != v24);
      }

      else
      {
        v27 = v11;
      }

      v7 = v44;
      v14 = v46 + 8 * v44;
      v16 = v23 + 1;
      v11 = &v27[v44];
      v18 = v47;
      v15 = v48;
      v10 = v53;
    }

    while (&v11[v43] <= v45);
  }

  [v41 setArray:v10];
  v36 = g_signpostLog;
  v37 = v36;
  if (v42 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v37, OS_SIGNPOST_INTERVAL_END, spid, "Replayer-4-parallel", &unk_24DA93952, buf, 2u);
  }
}

void __CollectFrameCounters_block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = os_signpost_id_make_with_pointer(g_signpostLog, *(a1 + 32));
  v3 = g_signpostLog;
  v4 = v3;
  v5 = v2 - 1;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Replayer-4-parallel", "MergeCounterData", buf, 2u);
  }

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = v6;
  v11 = v9;
  v40 = v8;
  v38 = [v11 count];
  if (v38 == 1 && ([v11 objectAtIndexedSubscript:0], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToArray:", v10), v12, v13))
  {
    v14 = [v11 objectAtIndexedSubscript:0];
    [v10 objectAtIndexedSubscript:0];

    v39 = [v40 objectAtIndexedSubscript:0];
  }

  else
  {
    v15 = [v40 objectAtIndexedSubscript:0];
    v16 = [v11 objectAtIndexedSubscript:0];
    v17 = [v15 length];
    v35 = 8 * [v16 count];
    v36 = v17;
    v18 = v17 / v35;

    v19 = [v10 count];
    v39 = [MEMORY[0x277CBEB28] dataWithLength:8 * v18 * v19];
    if (v38)
    {
      v37 = v11;
      v33 = v2 - 1;
      v34 = v2;
      for (i = 0; i != v38; ++i)
      {
        v21 = [v37 objectAtIndexedSubscript:i];
        v22 = [v21 count];
        if (v22)
        {
          for (j = 0; j != v22; ++j)
          {
            v24 = [v21 objectAtIndexedSubscript:j];
            *&buf[8 * j] = [v10 indexOfObject:v24];
          }
        }

        v25 = [v40 objectAtIndexedSubscript:i];
        v26 = [v25 bytes];
        v27 = [v39 mutableBytes];
        if (v35 <= v36)
        {
          v28 = 0;
          do
          {
            if (v22)
            {
              for (k = 0; k != v22; ++k)
              {
                v30 = *&buf[8 * k];
                if (v30 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  *(v27 + 8 * v30) = *(v26 + 8 * k);
                }
              }
            }

            v27 += 8 * v19;
            ++v28;
            v26 += 8 * v22;
          }

          while (v28 < v18);
        }
      }

      v5 = v33;
      v2 = v34;
      v11 = v37;
    }
  }

  [v7 setData:v39];
  v31 = g_signpostLog;
  v32 = v31;
  if (v5 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v32, OS_SIGNPOST_INTERVAL_END, v2, "Replayer-4-parallel", &unk_24DA93952, buf, 2u);
  }
}

void __CollectFrameCounters_block_invoke_411(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = g_signpostLog;
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v16 = 134218240;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Replayer-4-parallel", "SortCounterData %lu/%lu", &v16, 0x16u);
  }

  v7 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 56)];
  v8 = [*(a1 + 40) objectAtIndexedSubscript:*(a1 + 56)];
  v9 = 8 * [v8 count];
  v10 = v7;
  v11 = [v10 length] / v9;
  v12 = [v10 mutableBytes];

  qsort(v12, v11, v9, compareSampleData);
  v13 = g_signpostLog;
  v14 = v13;
  v15 = *(a1 + 48);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v14, OS_SIGNPOST_INTERVAL_END, v15, "Replayer-4-parallel", &unk_24DA93952, &v16, 2u);
  }
}

uint64_t __CollectFrameCounters_block_invoke_412()
{
  v0 = MEMORY[0x28223BE20]();
  v86 = *MEMORY[0x277D85DE8];
  v1 = &unk_27F09C000;
  v2 = g_activityLog;
  v68 = v0;
  v3 = [*(v0 + 32) objectAtIndexedSubscript:*(v0 + 64)];
  [v2 enterCollectCounters:v3 statLocations:*(v68 + 72) withIndex:*(v68 + 64)];

  v4 = g_signpostLog;
  v5 = v4;
  v6 = *(v68 + 80);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = *(v68 + 64);
    v8 = *(v68 + 88);
    v85[0] = 134218240;
    *&v85[1] = v7;
    LOWORD(v85[3]) = 2048;
    *(&v85[3] + 2) = v8;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Replayer-1-serial", "CollectCounterData %lu/%lu", v85, 0x16u);
  }

  v9 = *(v68 + 96);
  v10 = [*(v68 + 32) objectAtIndexedSubscript:*(v68 + 64)];
  v11 = *(v68 + 40);
  v12 = *(v68 + 64);
  v62 = *(v68 + 72);
  v65 = v10;
  v61 = v11;
  GTMTLReplayController_prePlayForProfiling(v9);
  [v65 count];
  v60 = [g_commandBufferDescriptor errorOptions];
  [g_commandBufferDescriptor setErrorOptions:0];
  v13 = [*(v9 + 8) defaultCommandQueue];
  [v13 setStatEnabled:1];
  [v13 setStatOptions:1];
  [v13 setStatOptions:0x10000000];
  [v13 setGPUPriority:0];
  [v13 setStatLocations:v62];
  v14 = [v13 requestCounters:v65 withIndex:v12];
  if (v14)
  {
    if (g_runningInCI)
    {
      v15 = "#CI_ERROR# ";
    }

    else
    {
      v15 = "";
    }

    GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_frameProfiler.m", "CollectCounterData", 294, 1, "%s%s %u: CollectCounterData requestCounters on index %d failed with error %d\n", v15, "void CollectCounterData(GTMTLReplayController *, NSArray *__strong, uint64_t, NSArray *__strong, NSUInteger)", 294, v12, v14);
  }

  v16 = [v61 objectAtIndexedSubscript:v12];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __CollectCounterData_block_invoke;
  v75[3] = &unk_2796588F0;
  v76 = v16;
  v17 = v16;
  [v13 addPerfSampleHandler:v75];
  v67 = v13;

  v63 = *v9;
  v71 = v63[14] + v63[13];
  if (v71 > *(v9 + 22560))
  {
    v66 = 0;
    v70 = v63[16];
    while (1)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(v70 + 24) + (*(v9 + 22560) << 6);
      if (GTFenum_isBeginCommandBuffer(*(v19 + 8)))
      {
        GTMTLReplayController_restoreCommandBuffer(v9, v19);
      }

      GTMTLReplayController_updateCommandEncoder(v9, v19);
      v20 = *(v19 + 8);
      if (v20 + 15756 <= 6 && ((1 << (v20 - 116)) & 0x47) != 0 || v20 == -15637)
      {
        goto LABEL_21;
      }

      v24 = v66;
      if (v66)
      {
        ConstructorType = GTFenum_getConstructorType(*(v19 + 8));
        if (GTFenum_isMTLCommandEncoder(ConstructorType))
        {
          v26 = [*(v9 + 8) commandBufferForKey:v66];
          [v26 commit];
          [v67 setStatLocations:v62];
          v27 = [*(v9 + 8) defaultCommandQueue];
          v28 = [v27 commandBuffer];

          [*(v9 + 8) setCommandBuffer:v28 forKey:v66];
          v24 = 0;
          v20 = *(v19 + 8);
        }
      }

      if (v20 == -15673)
      {
        v29 = GTTraceFunc_argumentBytesWithMap(v19, *(v19 + 13), v63[2]);
        v30 = [*(v9 + 8) commandBufferForKey:*v29];
        [v30 commit];
        [v67 setStatLocations:0];
        v31 = [v67 commandBuffer];

        [*(v9 + 8) setCommandBuffer:v31 forKey:*v29];
        v24 = *v29;
        v20 = *(v19 + 8);
      }

      v66 = v24;
      if (v20 + 20474 <= 0x36 && ((0x40000020020001uLL >> (v20 - 6)) & 1) != 0)
      {
        break;
      }

LABEL_42:
      if (v20 >> 2 == 1073737833)
      {
        v40 = *v9;
        p = 0;
        v82 = 0u;
        v80 = 0u;
        memset(v81, 0, sizeof(v81));
        v78 = 0u;
        memset(v79, 0, sizeof(v79));
        v77 = 0u;
        GetExecuteCommandsInBufferArgs(&v77, v19, v40[2]);
        v88.location = *(&v77 + 1);
        v88.length = v78;
        v87.location = 0;
        v87.length = -1;
        v41 = NSIntersectionRange(v87, v88);
        length = v41.length;
        if (v41.length)
        {
          p = **(v9 + 184);
          GTMTLSMContext_indirectCommandBufferResources(v81, v40[5], *v19, p);
          Object = GTMTLSMContext_getObject(*v40[5], v77, *v19);
          GTMTLCreateIndirectCommandEncoder(&v79[1], Object[14]);
          v69 = *(v9 + 8);
          v44 = *(v9 + 11360);
          if (v44 == 28)
          {
            memcpy(v85, (v9 + 192), 0x2BA0uLL);
            if ((GT_SUPPORT_0 & 0x10) != 0)
            {
              v46 = [*(v9 + 8) computeCommandEncoderForKey:*(v9 + 200)];
              v47 = *(&v78 + 1);
              v48 = *(&v80 + 1);
              v49 = v41.location << 32;
              do
              {
                *(&v82 + 1) = v47 + v48 * (v49 >> 32);
                memcpy(__dst, &v85[14], 0x8D0uLL);
                if (GTMTLSMComputeCommandEncoder_loadIndirectCommand(&v85[14], &v79[1], *(&v82 + 1), v81))
                {
                  GTMTLReplayController_restoreComputeCommandEncoder(v46, __dst, &v85[14], v69);
                  DYMTLDispatchComputeCommandEncoder(v46, &v79[1], v47 + v48 * (v49 >> 32));
                }

                v49 += 0x100000000;
                --length;
              }

              while (length);
              v1 = &unk_27F09C000;
              GTMTLReplayController_restoreComputeCommandEncoder(v46, &v85[14], v9 + 248, v69);
            }
          }

          else if (v44 == 70)
          {
            memcpy(v85, (v9 + 192), 0x2BA0uLL);
            v64 = [v69 executeIndirectCommandBufferMap];
            if (*(v9 + 11360))
            {
              v45 = *(v9 + 200);
            }

            else
            {
              v45 = 0;
            }

            v50 = [*(v9 + 8) renderCommandEncoderForKey:v45];
            v51 = *(&v78 + 1);
            v52 = *(&v80 + 1);
            v53 = v41.location << 32;
            do
            {
              *(&v82 + 1) = v51 + v52 * (v53 >> 32);
              memcpy(__dst, &v85[14], sizeof(__dst));
              if (GTMTLSMRenderCommandEncoder_loadIndirectCommand(&v85[14], &v79[1], *(&v82 + 1), v81))
              {
                GTMTLReplayController_restoreRenderCommandEncoder(v50, __dst, &v85[14], v69);
                DYMTLDrawRenderCommandEncoder(v50, &v79[1], v51 + v52 * (v53 >> 32), v81, v64);
              }

              v53 += 0x100000000;
              --length;
            }

            while (length);
            v1 = &unk_27F09C000;
            GTMTLReplayController_restoreRenderCommandEncoder(v50, &v85[14], v9 + 248, v69);
          }

          apr_pool_clear(p);
        }
      }

      else
      {
        GTMTLReplayController_defaultDispatchFunction(v9, v19);
      }

LABEL_21:
      objc_autoreleasePoolPop(v18);
      v23 = (*(v9 + 22560) + 1);
      *(v9 + 22560) = v23;
      if (v71 <= v23)
      {
        goto LABEL_62;
      }
    }

    v32 = GTTraceFunc_argumentBytesWithMap(v19, *(v19 + 13), v63[2]);
    v33 = [*(v9 + 8) commandBufferForKey:*(v32 + 1)];
    [v33 commit];

    v34 = *(v19 + 8);
    if (v34 > -20446)
    {
      if (v34 == -20445)
      {
        v35 = [*(v9 + 8) frameInterpolatorForKey:*v32];
      }

      else
      {
        if (v34 != -20420)
        {
          goto LABEL_41;
        }

        v35 = [*(v9 + 8) temporalDenoisedScalerForKey:*v32];
      }
    }

    else
    {
      if (v34 != -20474)
      {
        if (v34 == -20457)
        {
          v35 = [*(v9 + 8) temporalScalerForKey:*v32];
          goto LABEL_39;
        }

LABEL_41:
        v38 = [*(v9 + 8) defaultCommandQueue];
        v39 = [v38 commandBuffer];

        [*(v9 + 8) setCommandBuffer:v39 forKey:*(v32 + 1)];
        v20 = *(v19 + 8);
        goto LABEL_42;
      }

      v35 = [*(v9 + 8) spatialScalerForKey:*v32];
    }

LABEL_39:
    v36 = v35;
    if (v35)
    {
      [v67 setStatLocations:0];
      v37 = [v67 commandBuffer];
      [v36 encodeToCommandBuffer:v37];
      [v37 commit];
      [v67 setStatLocations:v62];
    }

    goto LABEL_41;
  }

LABEL_62:
  *(v9 + 22564) = 0;
  [v67 finish];
  [v67 setGPUPriority:1];
  [v67 setStatEnabled:0];
  [g_commandBufferDescriptor setErrorOptions:v60];

  v54 = g_signpostLog;
  v55 = v54;
  v56 = *(v68 + 80);
  if (v56 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
  {
    LOWORD(v85[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v55, OS_SIGNPOST_INTERVAL_END, v56, "Replayer-1-serial", &unk_24DA93952, v85, 2u);
  }

  v57 = [*(v68 + 48) commandBufferWithUnretainedReferences];
  v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"CollectFrameCounters"];
  [v57 setLabel:v58];

  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __CollectFrameCounters_block_invoke_416;
  v72[3] = &unk_2796588A0;
  v74 = *(v68 + 104);
  v73 = *(v68 + 56);
  [v57 addCompletedHandler:v72];
  GTMTLReplay_commitCommandBuffer(v57);

  return [v1[451] leaveActivity];
}

id *__CollectCounterData_block_invoke(id *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (a4)
    {
      return [result[4] appendData:?];
    }
  }

  return result;
}

uint64_t compareSampleData(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  while (1)
  {
    v3 = *(a1 + v2);
    v4 = *(a2 + v2);
    if (v3 < v4)
    {
      return 0xFFFFFFFFLL;
    }

    if (v4 < v3)
    {
      break;
    }

    v2 += 8;
    if (v2 == 24)
    {
      return 0;
    }
  }

  return 1;
}

id GTMTLReplayClient_derivedCounterData(id *a1, id *a2, void *a3)
{
  v49[7] = *MEMORY[0x277D85DE8];
  v32 = a3;
  v4 = [v32 objectForKeyedSubscript:@"profileCounters"];
  v49[0] = @"MTLStatCommandBufferIndex";
  v49[1] = @"MTLStatEncoderIndex";
  v49[2] = @"MTLStatCommandIndex";
  v49[3] = @"MTLStatDataMaster";
  v49[4] = @"MTLStatSampleLocation";
  v49[5] = @"MTLStatTotalGPUCycles";
  v49[6] = @"MTLStat_nSec";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:7];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count") + objc_msgSend(v5, "count")}];
  [v6 addObjectsFromArray:v5];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:&v41 count:16];
  if (v8)
  {
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v35 + 1) + 8 * i);
        if (([v5 containsObject:v11] & 1) == 0)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v35 objects:&v41 count:16];
    }

    while (v8);
  }

  v12 = v6;
  *&v35 = 0;
  *(&v35 + 1) = &v35;
  *&v36 = 0x3032000000;
  *(&v36 + 1) = __Block_byref_object_copy__7224;
  *&v37 = __Block_byref_object_dispose__7225;
  *(&v37 + 1) = 0;
  v13 = MEMORY[0x277CCA8C8];
  v41 = MEMORY[0x277D85DD0];
  v42 = 3221225472;
  v43 = __SubdivideCounterList_block_invoke;
  v44 = &unk_279658938;
  v46 = &v35;
  v47 = a1;
  v14 = v12;
  v45 = v14;
  v15 = [v13 blockOperationWithBlock:&v41];
  [v15 setQueuePriority:8];
  [*a2 addOperation:v15];
  [v15 waitUntilFinished];
  v16 = *(*(&v35 + 1) + 40);

  _Block_object_dispose(&v35, 8);
  [a1[1] defaultDevice];

  v33 = objc_alloc_init(MEMORY[0x277CCABD0]);
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = v14;
  v19 = v17;
  v20 = MEMORY[0x277CBEB28];
  v21 = v16;
  v22 = objc_alloc_init(v20);
  v23 = CollectFrameCounters(a1, a2, v18, v21, 63, v22);

  v24 = MEMORY[0x277CCA8C8];
  v41 = MEMORY[0x277D85DD0];
  v42 = 3221225472;
  v43 = __ProfileFrameWithCounterListsForProfileInfo_block_invoke;
  v44 = &unk_279658960;
  v45 = v19;
  v46 = v18;
  v47 = v22;
  v48 = a1;
  v25 = v19;
  v26 = v18;
  v27 = v22;
  v28 = [v24 blockOperationWithBlock:&v41];
  [v28 addDependency:v23];
  [a2[1] addOperation:v28];

  [v33 addDependency:v28];
  [a2[1] addOperation:v33];
  [v33 waitUntilFinished];
  v39[0] = @"numberOfPasses";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
  v40[0] = v29;
  v40[1] = v21;
  v39[1] = @"counterLists";
  v39[2] = @"counters";
  v39[3] = @"AverageSamples";
  v40[2] = v26;
  v40[3] = v25;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:4];

  return v30;
}

void sub_24D967198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SubdivideCounterList_block_invoke(uint64_t a1)
{
  v7 = [*(*(a1 + 48) + 8) defaultCommandQueue];
  if (g_runningInCI == 1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"SubdivideCounterList - subdividing counter list"];
    v3 = [v2 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

    fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v3 UTF8String]);
  }

  v4 = [v7 subdivideCounterList:*(a1 + 32)];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  validateSubdividedCounterLists(*(a1 + 32), *(*(*(a1 + 40) + 8) + 40));
}

void __ProfileFrameWithCounterListsForProfileInfo_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 56) + 8) defaultCommandQueue];
  v3 = os_signpost_id_make_with_pointer(g_signpostLog, *(a1 + 32));
  v4 = g_signpostLog;
  v5 = v4;
  v45 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Replayer-4-parallel", "FormatSampleData", buf, 2u);
  }

  spid = v3;

  v6 = *(a1 + 40);
  v7 = [v2 counterInfo];
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v12 = v10;
  v13 = v11;
  v14 = v8;
  v48 = v9;
  v15 = [v12 count];
  v46 = v14;
  v16 = [v14 length];
  v55 = 0u;
  v56 = 0u;
  *buf = 0u;
  v54 = 0u;
  v51 = v15;
  v52 = v15;
  v47 = v16 / (8 * v15);
  if (v15)
  {
    v17 = 0;
    do
    {
      v18 = [v12 objectAtIndexedSubscript:v17];
      v19 = [v13 objectForKeyedSubscript:v18];
      v20 = [v19 objectForKeyedSubscript:@"type"];
      v21 = [v20 unsignedIntegerValue];

      *&buf[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= (v21 == 1) << v17;
      v15 = v52;
      ++v17;
    }

    while (v52 != v17);
  }

  v44 = v13;
  v22 = [v46 bytes];
  if (v47 >= 2)
  {
    v23 = v22;
    v24 = 0;
    v25 = 0;
    v26 = v15 - 3;
    v27 = 1;
    v28 = 0x277CBE000uLL;
    while (1)
    {
      v29 = v23;
      v23 = (v23 + v51 * 8);
      if (*v23 == *v29)
      {
        break;
      }

      v25 = 0;
      v24 = 0;
      if (v23[2])
      {
        goto LABEL_16;
      }

LABEL_27:
      if (++v27 >= v47)
      {

        goto LABEL_29;
      }
    }

    if (v23[1] != v29[1])
    {

      v25 = 0;
    }

    if (!v23[2])
    {
      goto LABEL_27;
    }

    if (!v24)
    {
LABEL_16:
      v24 = [*(v28 + 2840) array];
      [v48 addObject:v24];
    }

    v49 = v23;
    if (!v25)
    {
      v25 = [*(v28 + 2840) array];
      [v24 addObject:v25];
    }

    [*(v28 + 2840) arrayWithCapacity:v15];
    v31 = v30 = v25;
    [v30 addObject:v31];
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v48, "count") - 1}];
    [v31 addObject:v32];

    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v24, "count") - 1}];
    [v31 addObject:v33];

    v50 = v30;
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v30, "count") - 1}];
    [v31 addObject:v34];

    v23 = v49;
    if (v15 >= 4)
    {
      v35 = 0;
      do
      {
        v36 = v29[v51 + 3 + v35];
        if ((*&buf[((v35 + 3) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v35 + 3)))
        {
          v37 = v29[v35 + 3];
          v38 = v36 >= v37;
          v39 = v36 - v37;
          if (v38)
          {
            v36 = v39;
          }

          else
          {
            v36 = 0;
          }
        }

        v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v36];
        [v31 addObject:v40];

        ++v35;
      }

      while (v26 != v35);
    }

    v15 = v52;
    v25 = v50;
    v28 = 0x277CBE000;
    goto LABEL_27;
  }

LABEL_29:

  v41 = g_signpostLog;
  v42 = v41;
  if (v45 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v42, OS_SIGNPOST_INTERVAL_END, spid, "Replayer-4-parallel", &unk_24DA93952, buf, 2u);
  }
}

id GTShaderDebuggerMakeError(unsigned int a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x277CBEB38];
  v13 = a2;
  v14 = [v12 alloc];
  v15 = [v14 initWithObjectsAndKeys:{v13, *MEMORY[0x277CCA450], 0}];

  if (v9)
  {
    [v15 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA498]];
  }

  if (v10)
  {
    [v15 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (v11)
  {
    [v15 setObject:v11 forKeyedSubscript:@"ErrorInfo"];
  }

  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GTShaderDebuggerErrorDomain" code:a1 userInfo:v15];

  return v16;
}

void GTShaderDebuggerContextDeinit(void *a1)
{
  if (*a1)
  {
    [*(*a1 + 8) commitCommandBuffers];
  }

  v2 = a1[27];
  if (v2)
  {
    apr_pool_destroy(v2);
  }

  *a1 = 0;
  a1[27] = 0;
  v3 = a1[24];
  a1[24] = 0;

  v4 = a1[25];
  a1[25] = 0;

  a1[10] = 0;
  a1[11] = 0;
  v5 = a1[1];
  a1[1] = 0;

  v6 = a1[2];
  a1[2] = 0;

  v7 = a1[3];
  a1[3] = 0;

  v8 = a1[4];
  a1[4] = 0;

  v9 = a1[5];
  a1[5] = 0;

  v10 = a1[6];
  a1[6] = 0;

  v11 = a1[7];
  a1[7] = 0;

  v12 = a1[12];
  a1[12] = 0;

  v13 = a1[13];
  a1[13] = 0;

  v14 = a1[14];
  a1[14] = 0;

  v15 = a1[15];
  a1[15] = 0;

  v16 = a1[16];
  a1[16] = 0;

  v17 = a1[17];
  a1[17] = 0;

  v18 = a1[19];
  a1[19] = 0;

  v19 = a1[21];
  a1[21] = 0;

  v20 = a1[22];
  a1[22] = 0;

  v21 = a1[23];
  a1[23] = 0;
}

id GTShaderDebuggerSanitizeResponse(void *a1, void *a2, _DWORD *a3, void *a4)
{
  v94 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = v7;
  v10 = [v8 objectForKeyedSubscript:@"ProtocolVersion"];
  v11 = [v10 intValue];

  v12 = v11 > 2 || v11 == 2;
  v13 = v9;
  if (v12)
  {
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v73 = v8;
  v74 = a4;
  v72 = v9;
  v15 = v9;
  v70 = [v15 objectForKeyedSubscript:@"TraceData"];
  v69 = [v15 objectForKeyedSubscript:@"TraceMetadata"];
  v71 = v15;
  v16 = [v15 objectForKeyedSubscript:@"ResourceMapping"];
  v67 = [v16 objectForKeyedSubscript:@"Bytes"];
  v17 = [v16 objectForKeyedSubscript:@"Buffers"];
  v66 = [v16 objectForKeyedSubscript:@"Textures"];
  v65 = [v16 objectForKeyedSubscript:@"Samplers"];
  v68 = v16;
  v18 = [v16 objectForKeyedSubscript:@"ConstantSamplers"];
  v19 = 0x277CBE000uLL;
  if ([v17 count])
  {
    v20 = a3[5640];
    v21 = *(*(*a3 + 128) + 24);
    v22 = *(*a3 + 40);
    v75 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v23 = v17;
    v24 = [v23 countByEnumeratingWithState:&v80 objects:v93 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = (v21 + ((v20 - 1) << 6));
      v27 = *v81;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v81 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v80 + 1) + 8 * i);
          Object = GTMTLSMContext_getObject(*v22, [v29 unsignedLongLongValue], *v26);
          if (Object)
          {
            v31 = Object;
            v32 = [v23 objectForKeyedSubscript:v29];
            v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v31[15]];
            [v75 setObject:v32 forKeyedSubscript:v33];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v80 objects:v93 count:16];
      }

      while (v25);
    }

    v19 = 0x277CBE000;
  }

  else
  {
    v75 = v17;
  }

  if ([v18 count])
  {
    v34 = objc_alloc_init(*(v19 + 2872));
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v35 = v18;
    v36 = [v35 countByEnumeratingWithState:&v76 objects:v92 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v77;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v77 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v76 + 1) + 8 * j);
          v91 = 0;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v41 = [v35 objectForKeyedSubscript:v40];
          v42 = [v41 objectForKeyedSubscript:@"borderColor"];
          BYTE6(v90) = [v42 unsignedCharValue];

          v43 = [v41 objectForKeyedSubscript:@"compareFunction"];
          BYTE7(v90) = [v43 unsignedCharValue];

          v44 = [v41 objectForKeyedSubscript:@"lodMinClamp"];
          [v44 floatValue];
          LODWORD(v90) = v45;

          v46 = [v41 objectForKeyedSubscript:@"lodMaxClamp"];
          [v46 floatValue];
          HIDWORD(v89) = v47;

          v48 = [v41 objectForKeyedSubscript:@"lodBias"];
          [v48 floatValue];
          DWORD2(v89) = v49;

          v50 = [v41 objectForKeyedSubscript:@"lodAverage"];
          BYTE10(v90) = [v50 unsignedCharValue];

          v51 = [v41 objectForKeyedSubscript:@"minFilter"];
          BYTE12(v90) = [v51 unsignedCharValue];

          v52 = [v41 objectForKeyedSubscript:@"magFilter"];
          BYTE11(v90) = [v52 unsignedCharValue];

          v53 = [v41 objectForKeyedSubscript:@"mipFilter"];
          BYTE13(v90) = [v53 unsignedCharValue];

          v54 = [v41 objectForKeyedSubscript:@"maxAnisotropy"];
          *(&v87 + 1) = [v54 unsignedCharValue];

          v55 = [v41 objectForKeyedSubscript:@"normalizedCoordinates"];
          BYTE14(v90) = [v55 unsignedCharValue];

          v56 = [v41 objectForKeyedSubscript:@"pixelFormat"];
          WORD2(v90) = [v56 unsignedShortValue];

          v57 = [v41 objectForKeyedSubscript:@"reductionMode"];
          LOBYTE(v91) = [v57 unsignedCharValue];

          v58 = [v41 objectForKeyedSubscript:@"rAddressMode"];
          HIBYTE(v90) = [v58 unsignedCharValue];

          v59 = [v41 objectForKeyedSubscript:@"sAddressMode"];
          BYTE1(v91) = [v59 unsignedCharValue];

          v60 = [v41 objectForKeyedSubscript:@"tAddressMode"];
          BYTE3(v91) = [v60 unsignedCharValue];

          v61 = EncodeDYMTLSamplerDescriptor(&v87, 0, 0);
          v62 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v61];
          EncodeDYMTLSamplerDescriptor(&v87, [v62 mutableBytes], v61);
          v63 = [v62 copy];
          [v34 setObject:v63 forKeyedSubscript:v40];
        }

        v37 = [v35 countByEnumeratingWithState:&v76 objects:v92 count:16];
      }

      while (v37);
    }
  }

  else
  {
    v34 = v18;
  }

  v85[0] = @"DYMTLShaderDebuggerTrace";
  v85[1] = @"DYMTLShaderDebuggerMetadata";
  v86[0] = v70;
  v86[1] = v69;
  v85[2] = @"DYMTLShaderDebuggerResourceResolutionRemappingTables";
  v84[0] = @"DYMTLShaderDebuggerResourceResolutionRemappingTablesBytes";
  v84[1] = @"DYMTLShaderDebuggerResourceResolutionRemappingTablesTextures";
  *&v87 = v67;
  *(&v87 + 1) = v66;
  v84[2] = @"DYMTLShaderDebuggerResourceResolutionRemappingTablesSamplers";
  v84[3] = @"DYMTLShaderDebuggerResourceResolutionRemappingTablesBuffers";
  *&v88 = v65;
  *(&v88 + 1) = v75;
  v84[4] = @"DYMTLShaderDebuggerResourceResolutionRemappingTablesConstantSamplersReflection";
  *&v89 = v34;
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:v84 count:5];
  v86[2] = v64;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:3];

  v8 = v73;
  a4 = v74;
  v9 = v72;
  if (v74)
  {
LABEL_7:
    if (!v13)
    {
      *a4 = GTShaderDebuggerMakeError(1u, @"Internal error: Unexpected response", 0, 0, 0);
    }
  }

LABEL_9:

  return v13;
}

uint64_t __GTShaderDebuggerMakeRuntimeLibrariesFromSources_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [v7 pointerValue];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v10 = [v9 pointerValue];

  v11 = *(v8 + 176);
  v12 = *(v10 + 176);
  if (v11 == v12)
  {
    v13 = [v5 compare:v6];
  }

  else if (v11 > v12)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

uint64_t _FindDylibObjectIDForParentLibrary(void **a1, uint64_t a2, uint64_t a3, apr_allocator_t *a4)
{
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, a4);
  v6 = newpool;
  v7 = apr_array_make(newpool, 32, 8);
  GTMTLSMContext_getObjects(*(*(**a1 + 40) + 120), *a1[11], v7);
  nelts = v7->nelts;
  if (nelts < 1)
  {
LABEL_5:
    v10 = 0;
  }

  else
  {
    elts = v7->elts;
    while (*(*elts + 56) != *(a2 + 8))
    {
      elts += 8;
      if (!--nelts)
      {
        goto LABEL_5;
      }
    }

    v10 = *(*elts + 8);
  }

  apr_pool_destroy(v6);
  return v10;
}

uint64_t GTShaderDebuggerMakeRuntimeLibrariesFromMetallibs(id *a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [*(*a1 + 1) defaultDevice];
  v38 = v37 = a1;
  v35 = a1[11];
  v36 = *(**a1 + 40);
  v6 = [a1[12] mutableCopy];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = v5;
  v32 = [v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v32)
  {
    v8 = 0;
    goto LABEL_20;
  }

  v31 = a3;
  v8 = 0;
  v33 = *v42;
  v34 = v6;
  while (2)
  {
    for (i = 0; i != v32; ++i)
    {
      if (*v42 != v33)
      {
        objc_enumerationMutation(v7);
      }

      v10 = *(*(&v41 + 1) + 8 * i);
      AliasStream = GetAliasStream(*(**v37 + 24), [v10 unsignedIntegerValue], *v37[11]);
      if (AliasStream)
      {
        v12 = *AliasStream;
      }

      else
      {
        v12 = 0;
      }

      Function = GTMTLSMContext_lastFunction(*v36, v12, *v35);
      if (!Function)
      {
        if (v31)
        {
          GTShaderDebuggerMakeError(1u, @"Internal error: Library not found", 0, 0, 0);
          *v31 = v28 = 0;
        }

        else
        {
          v28 = 0;
        }

        v27 = v7;
        v6 = v34;
        goto LABEL_36;
      }

      v14 = Function;
      v15 = v7;
      v16 = [v7 objectForKeyedSubscript:v10];
      v17 = dispatch_data_create([v16 bytes], objc_msgSend(v16, "length"), 0, 0);
      v40 = v8;
      v18 = [v38 newLibraryWithData:v17 error:&v40];
      v19 = v40;

      if (!v18)
      {
        v6 = v34;
        if (v31)
        {
          GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up runtime library", 0, v19, 0);
          *v31 = v18 = 0;
        }

        else
        {
          v18 = 0;
        }

        v8 = v19;
        v7 = v15;
        goto LABEL_35;
      }

      if (*(v14 + 176) == 1)
      {
        v39 = v19;
        v20 = [v38 newDynamicLibrary:v18 error:&v39];
        v8 = v39;

        if (v20)
        {
          DylibObjectIDForParentLibrary = _FindDylibObjectIDForParentLibrary(v37, v14, v21, v22);
          v7 = v15;
          if (DylibObjectIDForParentLibrary)
          {
            v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:DylibObjectIDForParentLibrary];
            [v34 setObject:v20 forKeyedSubscript:v24];

            v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v14 + 8)];
            [v34 setObject:v18 forKeyedSubscript:v25];

            goto LABEL_16;
          }

          v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Failed to resolve dynamic library identifier %@", v10];
          if (v31)
          {
            *v31 = GTShaderDebuggerMakeError(1u, v29, 0, 0, 0);
          }
        }

        else
        {
          v7 = v15;
          if (v31)
          {
            *v31 = GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up runtime dynamic library", 0, v8, 0);
          }
        }

        v6 = v34;
LABEL_35:

        v28 = 0;
        v27 = v7;
        goto LABEL_36;
      }

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v14 + 8)];
      [v34 setObject:v18 forKeyedSubscript:v20];
      v8 = v19;
      v7 = v15;
LABEL_16:
    }

    v6 = v34;
    v32 = [v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v32)
    {
      continue;
    }

    break;
  }

LABEL_20:

  v26 = [v6 copy];
  v27 = v37[12];
  v37[12] = v26;
  v28 = 1;
LABEL_36:

  return v28;
}

uint64_t GTShaderDebuggerMakeRuntimeLibrariesFromDependentLibs(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v35 = a1;
  v5 = [*(*a1 + 8) defaultDevice];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v38 = *v42;
    v34 = *MEMORY[0x277CD6A10];
    v36 = v7;
    obj = v8;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v13 = v6;
        v14 = *(*(&v41 + 1) + 8 * i);
        v15 = dispatch_data_create([v14 bytes], objc_msgSend(v14, "length"), 0, 0);
        v40 = v11;
        v16 = [v5 newLibraryWithData:v15 error:&v40];
        v17 = v40;

        if (!v16)
        {
          if ([v17 code] != 1)
          {
            goto LABEL_23;
          }

          v18 = [v17 domain];
          v19 = [v18 isEqualToString:v34];

          if (!v19)
          {
            goto LABEL_23;
          }

          v20 = GTShaderDebuggerMakeRuntimeLibrariesFromDependentLibs_lib_index++;
          v21 = [@"dylib-" stringByAppendingFormat:@"%llu.metallib", v20];
          v22 = [*(v35 + 200) stringByAppendingPathComponent:v21];
          if (([v14 writeToFile:v22 options:0 error:0] & 1) == 0)
          {

LABEL_23:
            if (a3)
            {
              *a3 = GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up dependent dynamic library", 0, v17, 0);
            }

            v11 = v17;
            v6 = v13;
LABEL_26:
            v7 = v36;
            v8 = obj;

            v31 = 0;
            v30 = obj;
            goto LABEL_27;
          }

          v23 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v22 isDirectory:0];
          v16 = [v5 newLibraryWithURL:v23 error:0];

          if (!v16)
          {
            goto LABEL_23;
          }
        }

        v24 = [v16 installName];
        v25 = [v24 containsString:@"libtracepoint"];

        if ((v25 & 1) == 0)
        {
          [v36 addObject:v16];
        }

        v39 = v17;
        v26 = [v5 newDynamicLibrary:v16 error:&v39];
        v11 = v39;

        if (!v26)
        {
          v6 = v13;
          if (a3)
          {
            *a3 = GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up dependent dynamic library", 0, v11, 0);
          }

          goto LABEL_26;
        }

        v6 = v13;
        [v13 addObject:v26];
      }

      v8 = obj;
      v10 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      v7 = v36;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  v27 = [v6 copy];
  v28 = *(v35 + 112);
  *(v35 + 112) = v27;

  v29 = [v7 copy];
  v30 = *(v35 + 120);
  *(v35 + 120) = v29;
  v31 = 1;
LABEL_27:

  return v31;
}

uint64_t GTShaderDebuggerMakeRuntimeFunctions(uint64_t a1, void *a2, void *a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([v5 count])
  {
    v6 = [*(a1 + 96) mutableCopy];
    v59 = *(**a1 + 40);
    v60 = **(a1 + 88);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    obj = v5;
    v57 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (v57)
    {
      v58 = *v73;
      v53 = a3;
      v54 = v5;
      v56 = a1;
      do
      {
        v7 = 0;
        do
        {
          if (*v73 != v58)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v72 + 1) + 8 * v7);
          v9 = _ObjectUIDsWithAliasID(a1, [v8 unsignedLongLongValue]);
          if (![v9 count] || (objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), Function = GTMTLSMContext_lastFunction(*v59, objc_msgSend(v10, "unsignedLongLongValue"), v60), v10, !Function))
          {
            v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Function '%@' not found", v8];
            v44 = v53;
            v5 = v54;
            v41 = obj;
            if (!v53)
            {
              goto LABEL_58;
            }

            goto LABEL_50;
          }

          v62 = v7;
          v12 = *(a1 + 96);
          v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:Function[5]];
          v14 = [v12 objectForKeyedSubscript:v13];

          if (!v14)
          {
            v45 = GTMTLSMContext_lastFunction(*v59, Function[5], v60);
            if (v45)
            {
              v46 = *(v45 + 177);
              v41 = obj;
              if (v46 > 7)
              {
                v47 = @"Unknown";
              }

              else
              {
                v47 = off_279658A40[v46];
              }
            }

            else
            {
              v47 = @"NULL";
              v41 = obj;
            }

            v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Failed to find runtime library (%@) for function '%@'", v47, v8];
            v44 = v53;
            v5 = v54;
            if (!v53)
            {
              goto LABEL_58;
            }

LABEL_50:
            *v44 = GTShaderDebuggerMakeError(1u, v43, 0, 0, 0);
LABEL_58:

            v42 = 0;
            goto LABEL_59;
          }

          v15 = v14;
          v16 = Function[15];
          v63 = v15;
          if (v16)
          {
            v17 = [*(*a1 + 8) functionMap];
            v18 = MakeMTLIntersectionFunctionDescriptor(v16);
            v71 = 0;
            v19 = [v15 newIntersectionFunctionWithDescriptor:v18 error:&v71];
            v20 = v71;
LABEL_14:
            v61 = v20;

            v21 = *(v16 + 8);
            goto LABEL_15;
          }

          v16 = Function[14];
          if (v16)
          {
            v17 = [*(*a1 + 8) functionMap];
            v18 = MakeMTLFunctionDescriptor(v16, v17);
            v70 = 0;
            v19 = [v15 newFunctionWithDescriptor:v18 error:&v70];
            v20 = v70;
            goto LABEL_14;
          }

          v21 = Function[7];
          if (!v21 || !*v21)
          {
            v48 = GTShaderDebuggerMakeError(1u, @"Capture did not resolve function name", 0, 0, 0);
            goto LABEL_52;
          }

          v31 = Function[9];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:Function[7]];
          if (v31)
          {
            v33 = MakeMTLFunctionConstantValues(Function[9]);
            v69 = 0;
            v19 = [v63 newFunctionWithName:v32 constantValues:v33 error:&v69];
            v61 = v69;
          }

          else
          {
            v34 = [v63 newFunctionWithName:v32];

            v35 = v34;
            if ((objc_opt_respondsToSelector() & 1) != 0 && [v35 needsFunctionConstantValues])
            {
              v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:v21];
              v37 = objc_alloc_init(MEMORY[0x277CD6D68]);
              v68 = 0;
              v38 = [v63 newFunctionWithName:v36 constantValues:v37 error:&v68];
              v61 = v68;

              v19 = v35;
              if (v38)
              {
                v19 = v38;
              }
            }

            else
            {
              v61 = 0;
              v19 = v35;
            }
          }

LABEL_15:
          if (!v19)
          {
            v48 = v61;
LABEL_52:
            v49 = MEMORY[0x277CCACA8];
            if (v21)
            {
              v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:v21];
              v51 = [v49 stringWithFormat:@"Internal error: Failed to set up function '%@' (%@)", v50, v8];
            }

            else
            {
              v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Internal error: Failed to set up function '%@' (%@)", @"NULL", v8];
            }

            v5 = v54;
            v41 = obj;
            if (v53)
            {
              *v53 = GTShaderDebuggerMakeError(2u, v51, 0, v48, 0);
            }

            v43 = v63;
            goto LABEL_58;
          }

          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v22 = v9;
          v23 = [v22 countByEnumeratingWithState:&v64 objects:v76 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v65;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v65 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = [*(*(&v64 + 1) + 8 * i) unsignedLongLongValue];
                v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v27];
                v29 = [v28 stringValue];
                [v19 setLabel:v29];

                v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v27];
                [v6 setObject:v19 forKeyedSubscript:v30];
              }

              v24 = [v22 countByEnumeratingWithState:&v64 objects:v76 count:16];
            }

            while (v24);
          }

          v7 = v62 + 1;
          a1 = v56;
        }

        while (v62 + 1 != v57);
        v39 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
        v5 = v54;
        v57 = v39;
      }

      while (v39);
    }

    v40 = [v6 copy];
    v41 = *(a1 + 96);
    *(a1 + 96) = v40;
    v42 = 1;
LABEL_59:
  }

  else if (a3)
  {
    GTShaderDebuggerMakeError(1u, @"Internal error: Entry function not found", 0, 0, 0);
    *a3 = v42 = 0;
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

id _ObjectUIDsWithAliasID(void **a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  p = 0;
  apr_pool_create_ex(&p, 0, 0, v5);
  v6 = p;
  v7 = apr_array_make(p, 32, 8);
  v8 = *(**a1 + 24);
  v9 = *a1[11];
  v22 = a2;
  entry = find_entry(v8, &v22, 8uLL, 0);
  if (*entry)
  {
    for (i = *(*entry + 32); i; i = i[4])
    {
      if (i[2] <= v9 && i[3] >= v9)
      {
        v12 = i[1];
        *apr_array_push(v7) = v12;
      }
    }
  }

  nelts = v7->nelts;
  if (nelts >= 1)
  {
    v14 = 0;
    v15 = 8 * nelts;
    do
    {
      v16 = *&v7->elts[v14];
      if (v16)
      {
        v17 = *v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v17];
      [v4 addObject:v18];

      v14 += 8;
    }

    while (v15 != v14);
  }

  apr_pool_destroy(v6);
  v19 = [v4 copy];

  return v19;
}

uint64_t GTShaderDebuggerMakeDebugMetadata(uint64_t a1, void *a2, void *a3, void *a4)
{
  v177 = *MEMORY[0x277D85DE8];
  v111 = a2;
  v7 = a3;
  if (*(a1 + 208))
  {
    v109 = a4;
    v110 = v7;
    v118 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v116 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v119 = a1;
    v112 = *(**a1 + 40);
    v113 = **(a1 + 88);
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v9 = v111;
    v10 = [v9 countByEnumeratingWithState:&v131 objects:v161 count:16];
    if (v10)
    {
      v114 = *v132;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v132 != v114)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v131 + 1) + 8 * i);
          AliasStream = GetAliasStream(*(**v119 + 24), [v12 unsignedIntegerValue], **(v119 + 88));
          if (AliasStream)
          {
            v14 = *AliasStream;
          }

          else
          {
            v14 = 0;
          }

          v15 = *(v119 + 96);
          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v14];
          v17 = [v15 objectForKeyedSubscript:v16];

          v18 = [v17 bitcodeData];
          if (!v18)
          {
            if (v109)
            {
              *v109 = GTShaderDebuggerMakeError(1u, @"Internal error: Failed to process executable debug information", 0, 0, 0);
            }

            v8 = 0;
            v7 = v110;
            goto LABEL_92;
          }

          if ((*(v119 + 208) & 8) != 0)
          {
            v19 = [v17 name];
            v160[0] = v19;
            v160[1] = v12;
            v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v160 count:2];
            v21 = [v20 componentsJoinedByString:@"_"];

            v22 = [v21 stringByAppendingPathExtension:@"bc"];
            v23 = [*(v119 + 200) stringByAppendingPathComponent:v22];
            v130 = 0;
            [v18 writeToFile:v23 options:1 error:&v130];
          }

          Function = GTMTLSMContext_lastFunction(*v112, v14, v113);
          if (Function && ((v25 = *(Function + 120)) != 0 || (v25 = *(Function + 112)) != 0) && *(v25 + 8))
          {
            v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
          }

          else
          {
            v26 = [MEMORY[0x277CBEB68] null];
          }

          v27 = v26;
          [v116 addObject:v26];

          [v118 addObject:v18];
        }

        v10 = [v9 countByEnumeratingWithState:&v131 objects:v161 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v129 = 0u;
    v127 = 0u;
    v128 = 0u;
    v126 = 0u;
    v28 = v110;
    v29 = [v28 countByEnumeratingWithState:&v126 objects:v159 count:16];
    if (v29)
    {
      v30 = *v127;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v127 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v126 + 1) + 8 * j);
          v33 = GetAliasStream(*(**v119 + 24), [v32 unsignedIntegerValue], **(v119 + 88));
          if (v33)
          {
            v34 = *v33;
          }

          else
          {
            v34 = 0;
          }

          v35 = *(v119 + 96);
          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v34];
          v37 = [v35 objectForKeyedSubscript:v36];

          if (v37 && [v37 type])
          {
            v38 = [v37 bitcodeData];
            if (v38)
            {
              if ((*(v119 + 208) & 8) != 0)
              {
                v39 = [v37 installName];
                v158[0] = v39;
                v158[1] = v32;
                v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v158 count:2];
                v41 = [v40 componentsJoinedByString:@"_"];

                v42 = [v41 stringByAppendingPathExtension:@"bc"];
                v43 = [*(v119 + 200) stringByAppendingPathComponent:v42];
                v125 = 0;
                [v38 writeToFile:v43 options:1 error:&v125];
              }

              [v118 addObject:v38];
              v44 = [MEMORY[0x277CBEB68] null];
              [v116 addObject:v44];
            }
          }
        }

        v29 = [v28 countByEnumeratingWithState:&v126 objects:v159 count:16];
      }

      while (v29);
    }

    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v45 = *(v119 + 120);
    v46 = [v45 countByEnumeratingWithState:&v121 objects:v157 count:16];
    if (v46)
    {
      v47 = *v122;
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v122 != v47)
          {
            objc_enumerationMutation(v45);
          }

          v49 = *(*(&v121 + 1) + 8 * k);
          v50 = [v49 bitcodeData];
          if (v50)
          {
            if ((*(v119 + 208) & 8) != 0)
            {
              v51 = [v49 installName];
              v52 = [v51 stringByAppendingPathExtension:@"bc"];
              v53 = [*(v119 + 200) stringByAppendingPathComponent:v52];
              v120 = 0;
              [v50 writeToFile:v53 options:1 error:&v120];
            }

            [v118 addObject:v50];
            v54 = [MEMORY[0x277CBEB68] null];
            [v116 addObject:v54];
          }
        }

        v46 = [v45 countByEnumeratingWithState:&v121 objects:v157 count:16];
      }

      while (v46);
    }

    v55 = *(v119 + 104);
    v56 = v118;
    v117 = v116;
    v108 = v55;
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
    v163 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0;
    v172[0] = &v173;
    v172[1] = 0x400000000;
    v115 = v56;
    MEMORY[0x253032D20](v152);
    v150 = 0;
    __src = 0;
    v151 = 0;
    v147 = 0u;
    __p = 0u;
    v148 = 1065353216;
    v57 = [v56 count];
    if (!v57)
    {
LABEL_93:
      v140 = 0;
      v141 = 0;
      v139 = &v140;
      v142 = 0u;
      v143 = 0u;
      v144 = 1065353216;
      v145 = 0;
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      v138 = 0u;
      v86 = v108;
      v87 = [v86 countByEnumeratingWithState:&v135 objects:v162 count:16];
      if (v87)
      {
        v88 = *v136;
        do
        {
          for (m = 0; m != v87; ++m)
          {
            if (*v136 != v88)
            {
              objc_enumerationMutation(v86);
            }

            v90 = *(*(&v135 + 1) + 8 * m);
            v91 = [v86 objectForKeyedSubscript:v90];
            v92 = v90;
            std::string::basic_string[abi:nn200100]<0>(&p_src, [v90 UTF8String]);
            v93 = v91;
            std::string::basic_string[abi:nn200100]<0>(&v155, [v91 UTF8String]);
            ShaderDebugger::Metadata::MDSerializer::addReferencedSourceFile(&v139, &p_src, &v155);
            if (v156 < 0)
            {
              operator delete(v155);
            }

            if ((v175[0] & 0x80000000) != 0)
            {
              operator delete(p_src);
            }
          }

          v87 = [v86 countByEnumeratingWithState:&v135 objects:v162 count:16];
        }

        while (v87);
      }

      std::__tree<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::__map_value_compare<ShaderDebugger::Metadata::MDBase::MetadataType,std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>,std::less<ShaderDebugger::Metadata::MDBase::MetadataType>,true>,std::allocator<std::__value_type<ShaderDebugger::Metadata::MDBase::MetadataType,ShaderDebugger::Metadata::MDSerializer::MetadataTypeContainer>>>::destroy(v140);
      v140 = 0;
      v141 = 0;
      v139 = &v140;
      *&v153 = ShaderDebugger::Metadata::MDSerializerLLVM3XXX::serializeThreadTracePoint;
      *(&v153 + 1) = 0;
      v154 = &v139;
      std::pair<std::string const,std::function<void ()(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *)>>::pair[abi:nn200100]<char const(&)[24],std::__bind<void (ShaderDebugger::Metadata::MDSerializerLLVM3XXX::*)(ShaderDebugger::Metadata::MDSerializerLLVM3XXX::TracepointContext *),ShaderDebugger::Metadata::MDSerializerLLVM3XXX*,std::placeholders::__ph<1> const&>,0>(&p_src, "tracepoint_thread_begin", &v153);
    }

    v58 = 0;
    while (1)
    {
      v59 = [v56 objectAtIndexedSubscript:v58];
      v60 = v59;
      [v59 bytes];
      [v59 length];
      llvm::MemoryBuffer::getMemBuffer();
      llvm::MemoryBuffer::getMemBufferRef(&p_src, v162[0]);
      llvm::parseIR();
      if (!v139)
      {
        break;
      }

      p_src = "llvm.dbg.cu";
      v176 = 259;
      if (!llvm::Module::getNamedMetadata())
      {
        v98 = GTShaderDebuggerMDSerializerError(2u, &cfstr_MetadataSerial.isa);
        v100 = v98;
        goto LABEL_113;
      }

      v61 = v150;
      v62 = __src;
      v63 = v150 - __src;
      if (v150 >= v151)
      {
        v66 = (v63 >> 3) + 1;
        if (v66 >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v67 = v151 - __src;
        if ((v151 - __src) >> 2 > v66)
        {
          v66 = v67 >> 2;
        }

        if (v67 >= 0x7FFFFFFFFFFFFFF8)
        {
          v68 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v68 = v66;
        }

        if (v68)
        {
          if (!(v68 >> 61))
          {
            operator new();
          }

          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v69 = v150 - __src;
        v70 = (8 * (v63 >> 3));
        v71 = v139;
        v139 = 0;
        *v70 = v71;
        v65 = v70 + 1;
        memcpy(0, v62, v69);
        __src = 0;
        v150 = v65;
        v151 = 0;
        if (v62)
        {
          operator delete(v62);
        }
      }

      else
      {
        v64 = v139;
        v139 = 0;
        *v150 = v64;
        v65 = v61 + 1;
      }

      v150 = v65;
      v72 = [v117 objectAtIndexedSubscript:v58];
      v73 = [MEMORY[0x277CBEB68] null];
      v74 = v72 == v73;

      if (!v74)
      {
        v75 = v72;
        v76 = [v72 UTF8String];
        v77 = v63 >> 3;
        v78 = (v63 >> 3);
        if (!*(&__p + 1))
        {
          goto LABEL_84;
        }

        v79 = vcnt_s8(*(&__p + 8));
        v79.i16[0] = vaddlv_u8(v79);
        if (v79.u32[0] > 1uLL)
        {
          v80 = v78;
          if (*(&__p + 1) <= v78)
          {
            v80 = v77 % DWORD2(__p);
          }
        }

        else
        {
          v80 = (DWORD2(__p) - 1) & v78;
        }

        v81 = *(__p + 8 * v80);
        if (!v81 || (v82 = *v81) == 0)
        {
LABEL_84:
          operator new();
        }

        while (1)
        {
          size = v82->__r_.__value_.__l.__size_;
          if (size == v78)
          {
            if (LODWORD(v82->__r_.__value_.__r.__words[2]) == v77)
            {
              std::string::__assign_external(v82 + 1, v76);
              break;
            }
          }

          else
          {
            if (v79.u32[0] > 1uLL)
            {
              if (size >= *(&__p + 1))
              {
                size %= *(&__p + 1);
              }
            }

            else
            {
              size &= *(&__p + 1) - 1;
            }

            if (size != v80)
            {
              goto LABEL_84;
            }
          }

          v82 = v82->__r_.__value_.__r.__words[0];
          if (!v82)
          {
            goto LABEL_84;
          }
        }
      }

      std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](&v139);
      v84 = v162[0];
      v162[0] = 0;
      if (v84)
      {
        (*(*v84 + 8))(v84);
      }

      ++v58;
      v56 = v115;
      if (v58 == v57)
      {
        goto LABEL_93;
      }
    }

    if ((SBYTE7(v168) & 0x80u) == 0)
    {
      v94 = &v167;
    }

    else
    {
      v94 = v167;
    }

    if ((SBYTE7(v168) & 0x80u) == 0)
    {
      v95 = SBYTE7(v168);
    }

    else
    {
      v95 = *(&v167 + 1);
    }

    v96 = objc_alloc(MEMORY[0x277CCACA8]);
    v97 = [v96 initWithBytes:v94 length:v95 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v98 = GTShaderDebuggerMDSerializerError(1u, v97);
    v99 = v98;

LABEL_113:
    std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](&v139);
    v101 = v162[0];
    v162[0] = 0;
    if (v101)
    {
      (*(*v101 + 8))(v101);
    }

    std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(&__p);
    p_src = &__src;
    std::vector<std::unique_ptr<llvm::Module>>::__destroy_vector::operator()[abi:nn200100](&p_src);
    llvm::LLVMContext::~LLVMContext(v152);
    llvm::SmallVector<llvm::SMFixIt,4u>::~SmallVector(v172);
    if (v170)
    {
      *(&v170 + 1) = v170;
      operator delete(v170);
    }

    if (SHIBYTE(v169) < 0)
    {
      operator delete(*(&v168 + 1));
    }

    if (SBYTE7(v168) < 0)
    {
      operator delete(v167);
    }

    if (SBYTE7(v165) < 0)
    {
      operator delete(v164);
    }

    v102 = v98;
    v103 = [v102 localizedDescription];
    v104 = v103;
    v105 = @"Unknown error";
    if (v103)
    {
      v105 = v103;
    }

    v106 = v105;

    v107 = [@"Failed to process debug information: " stringByAppendingString:v106];

    if (v109)
    {
      *v109 = GTShaderDebuggerMakeError(4u, v107, @"Try updating your target device to the latest OS version or try matching your deployment target version to the target device", 0, 0);
    }

    v7 = v110;
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

LABEL_92:

  return v8;
}

void sub_24D96BC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, unint64_t *a62, uint64_t a63)
{
  std::unique_ptr<llvm::Module>::~unique_ptr[abi:nn200100](&a62);
  v67 = STACK[0x590];
  STACK[0x590] = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(&a65);
  a62 = &STACK[0x218];
  std::vector<std::unique_ptr<llvm::Module>>::__destroy_vector::operator()[abi:nn200100](&a62);
  llvm::LLVMContext::~LLVMContext(&STACK[0x230]);
  llvm::SMDiagnostic::~SMDiagnostic(&STACK[0x610]);

  _Unwind_Resume(a1);
}

uint64_t GTShaderDebuggerMakePSOCompute(uint64_t a1, void *a2, uint64_t a3, apr_allocator_t *a4)
{
  v124 = *MEMORY[0x277D85DE8];
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, a4);
  v5 = *a1;
  v98 = *(*a1 + 8);
  v96 = [v98 defaultDevice];
  v6 = *(*v5 + 40);
  v7 = [*(a1 + 96) mutableCopy];
  v8 = v5[2840];
  if (v8 - 95) <= 0xA && ((0x409u >> (v8 - 95)))
  {
    v9 = 14;
LABEL_6:
    v10 = *&v5[v9 + 48];
    goto LABEL_7;
  }

  if (v8)
  {
    v9 = 16;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_7:
  v94 = v10;
  Object = GTMTLSMContext_getObject(**(*v5 + 40), v10, **(a1 + 88));
  memset(v117, 0, 512);
  GTMTLSMComputePipelineState_computePipelineDescriptor(v6, Object, v117, newpool);
  v12 = [v98 computePipelineDescriptorMap];
  v101 = [v12 mutableCopy];

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = v7;
  v13 = [obj countByEnumeratingWithState:&v113 objects:v123 count:16];
  v97 = a1;
  if (v13)
  {
    v14 = *v114;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v114 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v113 + 1) + 8 * i);
        v17 = [obj objectForKeyedSubscript:v16];
        if (([v17 conformsToProtocol:&unk_2860F8DC8] & 1) != 0 || objc_msgSend(v17, "conformsToProtocol:", &unk_2860F8EF0))
        {
          [v101 setObject:v17 forKeyedSubscript:v16];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v113 objects:v123 count:16];
    }

    while (v13);
  }

  v99 = MakeMTLComputePipelineDescriptorWithoutResourceIndex(v117, v101);
  v18 = [v98 computePipelineStateForKey:v94];
  [v99 setMaxTotalThreadsPerThreadgroup:{objc_msgSend(v18, "maxTotalThreadsPerThreadgroup")}];

  v19 = a1;
  if ((GT_SUPPORT_0 & 0x10000) != 0)
  {
    [v99 setDriverCompilerOptions:&unk_2860D62E0 & ((*(a1 + 208) << 59) >> 63)];
  }

  v20 = *(a1 + 208);
  if ((v20 & 4) != 0)
  {
    v21 = [v99 computeFunction];
    v22 = [v99 preloadedLibraries];
    v23 = _GetPreloadedDylibsForGlobalRelocation(a1, v21, v22, a2);

    if (!v23)
    {
      goto LABEL_34;
    }

    [v99 setPreloadedLibraries:v23];
    v24 = [v23 count];
    if (v119 <= 1u)
    {
      v25 = 1;
    }

    else
    {
      v25 = v119;
    }

    [v99 setMaxCallStackDepth:v24 + v25];

    v19 = a1;
    v20 = *(a1 + 208);
  }

  if ((v20 & 2) == 0)
  {
    goto LABEL_31;
  }

  v26 = [v99 preloadedLibraries];
  v23 = _GetPreloadedDylibsForGlobalBinding(v19, v26, a2);

  if (v23)
  {
    [v99 setPreloadedLibraries:v23];
    v27 = [v23 count];
    if (v119 <= 1u)
    {
      v28 = 1;
    }

    else
    {
      v28 = v119;
    }

    [v99 setMaxCallStackDepth:v27 + v28];

    v20 = *(a1 + 208);
LABEL_31:
    if ((v20 & 6) == 0)
    {
      v29 = [v98 computePipelineDescriptorMap];
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v118];
      v31 = [v29 objectForKeyedSubscript:v30];

      if (v31)
      {
        v32 = [v96 loadDynamicLibrariesForFunction:v31 insertLibraries:MEMORY[0x277CBEBF8] error:0];
      }

      else
      {
        v32 = 0;
      }

      if ([v32 count])
      {
        v34 = [v99 preloadedLibraries];
        v35 = [v34 mutableCopy];

        [v35 addObjectsFromArray:v32];
        v36 = [v35 copy];
        [v99 setPreloadedLibraries:v36];

        v37 = [v35 count];
        if (v119 <= 1u)
        {
          v38 = 1;
        }

        else
        {
          v38 = v119;
        }

        [v99 setMaxCallStackDepth:v37 + v38];
      }
    }

    if ([v96 supportsFamily:1009])
    {
      [v99 setMaxCallStackDepth:{objc_msgSend(v99, "maxCallStackDepth") + 1}];
    }

    v93 = [v98 computePipelineDescriptorMap];
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v118];
    v92 = [v93 objectForKeyedSubscript:v39];

    v40 = [v92 stageInputAttributes];
    v91 = v40;
    if ([v40 count])
    {
      v41 = [v99 stageInputDescriptor];
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v100 = v40;
      v42 = [v100 countByEnumeratingWithState:&v109 objects:v122 count:16];
      if (v42)
      {
        v40 = 0;
        v43 = *v110;
        do
        {
          for (j = 0; j != v42; ++j)
          {
            if (*v110 != v43)
            {
              objc_enumerationMutation(v100);
            }

            v45 = *(*(&v109 + 1) + 8 * j);
            if (([v45 isActive] & 1) == 0)
            {
              v46 = [v45 attributeIndex];
              v47 = [v41 attributes];
              v48 = [v47 objectAtIndexedSubscript:v46];
              v49 = [v48 format] == 0;

              if (v49)
              {
                v50 = [v45 attributeType] - 3;
                if (v50 > 0x4A)
                {
                  v51 = 46;
                }

                else
                {
                  v51 = qword_24DA91178[v50];
                }

                v52 = [v41 attributes];
                v53 = [v52 objectAtIndexedSubscript:v46];
                [v53 setFormat:v51];

                v54 = [v41 attributes];
                v55 = [v54 objectAtIndexedSubscript:v46];
                [v55 setBufferIndex:v40];

                v56 = [v41 attributes];
                v57 = [v56 objectAtIndexedSubscript:v46];
                [v57 setOffset:0];

                v58 = [v41 layouts];
                v59 = [v58 objectAtIndexedSubscript:v40];
                [v59 setStride:1];

                ++v40;
              }
            }
          }

          v42 = [v100 countByEnumeratingWithState:&v109 objects:v122 count:16];
        }

        while (v42);
      }
    }

    v107 = 0;
    v108 = 0;
    v60 = [v96 newComputePipelineStateWithDescriptor:v99 options:0x200000 reflection:&v108 error:&v107];
    v61 = v108;
    v62 = v107;
    v33 = v62;
    if (v60 || [v62 code] != 3)
    {
      v63 = 0;
    }

    else
    {
      v40 = [v33 domain];
      if ([v40 containsString:@"CompilerError"])
      {

        goto LABEL_72;
      }

      v63 = 1;
    }

    if ([v33 code] != 4)
    {
      if (v63)
      {
LABEL_75:
      }

LABEL_76:
      if (v60)
      {
        goto LABEL_77;
      }

      if ([v33 code] == 2)
      {
        v81 = [v33 domain];
        if ([v81 containsString:@"AGXMetal"])
        {
          v82 = [v33 description];
          v83 = [v82 localizedCaseInsensitiveContainsString:@"maxTotalThreadsPerThreadgroup"];

          if (v83)
          {
            [v99 setMaxTotalThreadsPerThreadgroup:v120];
            v103 = v33;
            v104 = v61;
            v60 = [v96 newComputePipelineStateWithDescriptor:v99 options:0x200000 reflection:&v104 error:&v103];
            v84 = v104;

            v85 = v103;
            v61 = v84;
            v33 = v85;
            if (v60)
            {
LABEL_77:
              v69 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{v94, v91}];
              [obj setObject:v60 forKeyedSubscript:v69];

              v70 = [v61 traceBufferIndex];
              if (v70 == -1)
              {
                CurrentEncoderFreeBindingSlotIndex = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                CurrentEncoderFreeBindingSlotIndex = v70;
              }

              if ((*(v97 + 208) & 2) != 0)
              {
                CurrentEncoderFreeBindingSlotIndex = _GetCurrentEncoderFreeBindingSlotIndex((v97 + 8));
              }

              if (CurrentEncoderFreeBindingSlotIndex != 0x7FFFFFFFFFFFFFFFLL || (*(v97 + 208) & 4) != 0)
              {
                v72 = [obj copy];
                v73 = *(v97 + 96);
                *(v97 + 96) = v72;

                v74 = [v61 constantSamplerUniqueIdentifiers];
                v75 = [v61 constantSamplerDescriptors];
                v76 = _MakeConstantSamplers(v74, v75);
                v77 = *(v97 + 136);
                *(v97 + 136) = v76;

                v78 = [v61 bindings];
                v79 = _MakeBindings(v78);
                v80 = *(v97 + 128);
                *(v97 + 128) = v79;

                *(v97 + 144) = CurrentEncoderFreeBindingSlotIndex;
                v23 = 1;
                goto LABEL_104;
              }

              if (a2)
              {
                GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up GPU data buffer", 0, 0, 0);
                *a2 = v23 = 0;
LABEL_104:

                goto LABEL_105;
              }

LABEL_103:
              v23 = 0;
              goto LABEL_104;
            }
          }
        }

        else
        {
        }
      }

      if (a2)
      {
        v86 = [v33 description];
        if ([v86 localizedCaseInsensitiveContainsString:@"Undefined symbol"])
        {
          v87 = v33;
          *a2 = v33;
        }

        else
        {
          if ((*(v97 + 208) & 0x10) != 0)
          {
            v88 = 4;
          }

          else
          {
            v88 = 2;
          }

          v89 = GTShaderDebuggerMakeError(v88, @"Failed to set up compute pipeline state for debugging", 0, v33, 0);
          *a2 = v89;
        }
      }

      v60 = 0;
      goto LABEL_103;
    }

    v64 = [v33 domain];
    v65 = [v64 containsString:@"AGXMetal"];

    if (v63)
    {

      if ((v65 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else if (!v65)
    {
      goto LABEL_76;
    }

LABEL_72:
    if ((GT_SUPPORT_0 & 0x4000) != 0 && [v99 maxTotalThreadsPerThreadgroup] == 1024)
    {
      [v99 setMaxTotalThreadsPerThreadgroup:512];
      v105 = v33;
      v106 = v61;
      v66 = [v96 newComputePipelineStateWithDescriptor:v99 options:0x200000 reflection:&v106 error:&v105];
      v67 = v106;

      v68 = v105;
      v40 = v60;
      v33 = v68;
      v61 = v67;
      v60 = v66;
      goto LABEL_75;
    }

    goto LABEL_76;
  }

LABEL_34:
  v33 = 0;
LABEL_105:

  apr_pool_destroy(newpool);
  return v23;
}

id _GetPreloadedDylibsForGlobalRelocation(uint64_t a1, void *a2, void *a3, void *a4)
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(*a1 + 8);
  v10 = [v9 defaultDevice];
  v11 = *(a1 + 112);
  if (![v11 count])
  {
    if (a4)
    {
      if ((*(a1 + 208) & 0x10) != 0)
      {
        v18 = 4;
      }

      else
      {
        v18 = 1;
      }

      GTShaderDebuggerMakeError(v18, @"Internal error: debug dylib not found", 0, 0, 0);
      *a4 = v19 = 0;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_44;
  }

  v50 = a4;
  v51 = a1;
  v53 = 0;
  v12 = v10;
  v13 = objc_alloc_init(MEMORY[0x277CD6D10]);
  [v13 setLibraryType:1];
  [v13 setLanguageVersion:131076];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"@executable_path/%@.metallib", @"libtracebuffer_gr"];
  [v13 setInstallName:v14];

  [v13 setCompileSymbolVisibility:1];
  [v13 setAdditionalCompilerArguments:@"-fexternally-initialized"];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"extern device void * constant trace_buffer [[ clang::externally_initialized ]] __asm(trace.buffer)\nextern C {\n  [[gnu::visibility(default)]] device void *__tracepoint_get_trace_buffer() {\n    return trace_buffer;\n  }\n}\n"];;
  v16 = [v12 newLibraryWithSource:v15 options:v13 error:&v53];

  if (v16)
  {
    v17 = [v12 newDynamicLibrary:v16 error:&v53];
  }

  else
  {
    v17 = 0;
  }

  v20 = v53;
  if (!v17)
  {
    if (v50)
    {
      if ((*(v51 + 208) & 0x10) != 0)
      {
        v39 = 4;
      }

      else
      {
        v39 = 1;
      }

      GTShaderDebuggerMakeError(v39, @"Internal error: debug dylib setup failed", 0, v20, 0);
      *v50 = v19 = 0;
    }

    else
    {
      v19 = 0;
    }

    v37 = v20;
    goto LABEL_43;
  }

  v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v21 addObjectsFromArray:v8];
  [v21 addObjectsFromArray:v11];
  v49 = v17;
  [v21 addObject:v17];
  v22 = [objc_alloc(MEMORY[0x277CD6CB8]) initWithSymbolName:@"trace.buffer" buffer:*(v51 + 184) offset:0];
  v47 = v20;
  v52 = v20;
  v23 = v22;
  v48 = v21;
  v24 = [v12 loadDynamicLibrariesForFunction:v7 insertLibraries:v21 error:&v52];
  v19 = v24;
  if (!v24)
  {
    goto LABEL_27;
  }

  v43 = v11;
  v44 = v10;
  v45 = v9;
  v46 = v8;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v42 = v24;
  v25 = v24;
  v26 = [v25 countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (!v26)
  {
    goto LABEL_26;
  }

  v27 = v26;
  v28 = *v55;
  do
  {
    for (i = 0; i != v27; ++i)
    {
      if (*v55 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v30 = *(*(&v54 + 1) + 8 * i);
      v31 = [v30 installName];
      if ([v31 containsString:@"libtracepoint"])
      {
      }

      else
      {
        v32 = [v30 installName];
        v33 = [v32 containsString:@"libtracebuffer_gr"];

        if (!v33)
        {
          continue;
        }
      }

      v34 = [v30 relocations];
      v35 = v34;
      if (v34)
      {
        [v34 arrayByAddingObject:v23];
      }

      else
      {
        v58 = v23;
        [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
      }
      v36 = ;
      [v30 setRelocations:v36];
    }

    v27 = [v25 countByEnumeratingWithState:&v54 objects:v59 count:16];
  }

  while (v27);
LABEL_26:

  v8 = v46;
  v10 = v44;
  v9 = v45;
  v19 = v42;
  v11 = v43;
LABEL_27:

  v37 = v52;
  if (v19)
  {
    v38 = v19;
  }

  else if (v50)
  {
    if ((*(v51 + 208) & 0x10) != 0)
    {
      v40 = 4;
    }

    else
    {
      v40 = 1;
    }

    *v50 = GTShaderDebuggerMakeError(v40, @"Internal error: could not load debug dylib", 0, v37, 0);
  }

  v17 = v49;
LABEL_43:

LABEL_44:

  return v19;
}

id _GetPreloadedDylibsForGlobalBinding(uint64_t a1, void *a2, void *a3)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(*a1 + 8);
  v7 = [v6 defaultDevice];
  v8 = *(a1 + 112);
  if ([v8 count])
  {
    CurrentEncoderFreeBindingSlotIndex = _GetCurrentEncoderFreeBindingSlotIndex((a1 + 8));
    if (CurrentEncoderFreeBindingSlotIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = CurrentEncoderFreeBindingSlotIndex;
      v26 = 0;
      v14 = v7;
      v15 = objc_alloc_init(MEMORY[0x277CD6D10]);
      [v15 setLibraryType:1];
      [v15 setLanguageVersion:196610];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"@executable_path/%@.metallib", @"libtracebuffer_gb"];
      [v15 setInstallName:v16];

      [v15 setCompileSymbolVisibility:1];
      v27 = @"GLOBAL_BINDING";
      v17 = [MEMORY[0x277CCABB0] numberWithInt:v13];
      v28[0] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      [v15 setPreprocessorMacros:v18];

      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"device void * constant trace_buffer [[ buffer(GLOBAL_BINDING) ]]\nextern C {\n  [[gnu::visibility(default)]] device void *__tracepoint_get_trace_buffer() {\n    return trace_buffer;\n  }\n}\n"];;
      v20 = [v14 newLibraryWithSource:v19 options:v15 error:&v26];

      if (v20)
      {
        v21 = [v14 newDynamicLibrary:v20 error:&v26];
      }

      else
      {
        v21 = 0;
      }

      v22 = v26;
      if (v21)
      {
        v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [v23 addObjectsFromArray:v5];
        [v23 addObjectsFromArray:v8];
        [v23 addObject:v21];
        v12 = [v23 copy];
      }

      else if (a3)
      {
        if ((*(a1 + 208) & 0x10) != 0)
        {
          v24 = 4;
        }

        else
        {
          v24 = 1;
        }

        GTShaderDebuggerMakeError(v24, @"Internal error: debug dylib setup failed", 0, v22, 0);
        *a3 = v12 = 0;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_24;
    }

    if (a3)
    {
      v10 = @"Unable to debug pipeline - no available buffer binding slot";
      v11 = 4;
LABEL_10:
      GTShaderDebuggerMakeError(v11, v10, 0, 0, 0);
      *a3 = v12 = 0;
      goto LABEL_24;
    }
  }

  else if (a3)
  {
    if ((*(a1 + 208) & 0x10) != 0)
    {
      v11 = 4;
    }

    else
    {
      v11 = 1;
    }

    v10 = @"Internal error: debug dylib not found";
    goto LABEL_10;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

uint64_t _GetCurrentEncoderFreeBindingSlotIndex(void *a1)
{
  v2 = 30;
  while (1)
  {
    v3 = a1[3];
    v4 = [MEMORY[0x277CCABB0] numberWithInt:v2];
    v5 = [v3 objectForKeyedSubscript:v4];
    if (!v5)
    {
      break;
    }

LABEL_7:

LABEL_8:
    v2 = (v2 - 1);
    if (v2 == -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v6 = a1[2];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:v2];
  v7 = [v6 objectForKeyedSubscript:v5];
  if (v7)
  {
LABEL_6:

    goto LABEL_7;
  }

  v8 = a1[6];
  v9 = [MEMORY[0x277CCABB0] numberWithInt:v2];
  v10 = [v8 objectForKeyedSubscript:v9];
  if (v10)
  {

    v7 = 0;
    goto LABEL_6;
  }

  v11 = a1[7];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v2];
  v13 = [v11 objectForKeyedSubscript:v12];

  if (v13)
  {
    goto LABEL_8;
  }

  if ((v2 & 0x80000000) == 0)
  {
    return v2;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

id _MakeConstantSamplers(void *a1, void *a2)
{
  v42[16] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v5 == [v4 count])
  {
    v6 = [v4 count];
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v6];
    v8 = v7;
    if (v6)
    {
      v9 = 0;
      v24 = v6;
      v25 = v7;
      do
      {
        v40 = 0;
        v38 = 0u;
        v39 = 0u;
        memset(v37, 0, sizeof(v37));
        v10 = [v4 objectAtIndexedSubscript:v9];
        MakeGTMTLSamplerDescriptor(v37, v10);

        v36 = [v3 objectAtIndexedSubscript:v9];
        v41[0] = @"borderColor";
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE6(v39)];
        v42[0] = v35;
        v41[1] = @"compareFunction";
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE7(v39)];
        v42[1] = v34;
        v41[2] = @"lodMinClamp";
        LODWORD(v11) = v39;
        v33 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
        v42[2] = v33;
        v41[3] = @"lodMaxClamp";
        LODWORD(v12) = HIDWORD(v38);
        v32 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
        v42[3] = v32;
        v41[4] = @"lodAverage";
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE10(v39)];
        v42[4] = v31;
        v41[5] = @"lodBias";
        LODWORD(v13) = DWORD2(v38);
        v30 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
        v42[5] = v30;
        v41[6] = @"minFilter";
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE12(v39)];
        v42[6] = v29;
        v41[7] = @"magFilter";
        v28 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE11(v39)];
        v42[7] = v28;
        v41[8] = @"mipFilter";
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE13(v39)];
        v42[8] = v27;
        v41[9] = @"maxAnisotropy";
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v37[0] + 1)];
        v42[9] = v26;
        v41[10] = @"normalizedCoordinates";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE14(v39)];
        v42[10] = v14;
        v41[11] = @"pixelFormat";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:WORD2(v39)];
        v42[11] = v15;
        v41[12] = @"reductionMode";
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v40];
        v42[12] = v16;
        v41[13] = @"rAddressMode";
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:HIBYTE(v39)];
        v42[13] = v17;
        v41[14] = @"sAddressMode";
        [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE1(v40)];
        v19 = v18 = v4;
        v42[14] = v19;
        v41[15] = @"tAddressMode";
        [MEMORY[0x277CCABB0] numberWithUnsignedChar:BYTE3(v40)];
        v21 = v20 = v3;
        v42[15] = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:16];

        v3 = v20;
        v4 = v18;

        v8 = v25;
        [v25 setObject:v22 forKeyedSubscript:v36];

        ++v9;
      }

      while (v24 != v9);
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

id _MakeBindings(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = @"__resource_tracking_impl_trace_buffer";
    v6 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 name];
        if (([v9 isEqualToString:@"trace.buffer"] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", v5) & 1) == 0)
        {
          v23[0] = @"index";
          v10 = v2;
          v11 = v5;
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "index")}];
          v24[0] = v12;
          v23[1] = @"type";
          v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "type")}];
          v24[1] = v13;
          v23[2] = @"used";
          v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "isUsed")}];
          v23[3] = @"name";
          v24[2] = v14;
          v24[3] = v9;
          v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
          [v18 addObject:v15];

          v5 = v11;
          v2 = v10;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v4);
  }

  v16 = [v18 copy];

  return v16;
}

uint64_t GTShaderDebuggerMakePSORender(id *a1, void *a2)
{
  v242 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(*a1 + 1);
  v217 = [v5 defaultDevice];
  v6 = [a1[24] objectForKeyedSubscript:@"ROI"];
  v7 = [v6 objectForKeyedSubscript:@"Type"];
  v214 = [v7 integerValue];

  v8 = [a1[12] mutableCopy];
  v9 = *(v4 + 11360);
  v216 = a2;
  if (v9 - 95) <= 0xA && ((0x409u >> (v9 - 95)))
  {
    v10 = 112;
LABEL_6:
    v11 = *(v4 + 192 + v10);
    goto LABEL_7;
  }

  if (v9)
  {
    v10 = 8600;
    goto LABEL_6;
  }

  v11 = 0;
LABEL_7:
  v218 = a1;
  v213 = v11;
  Object = GTMTLSMContext_getObject(**(**a1 + 40), v11, *a1[11]);
  v215 = v5;
  v13 = [v5 renderPipelineDescriptorMap];
  v14 = [v13 mutableCopy];

  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v236 objects:v241 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v237;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v237 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v236 + 1) + 8 * i);
        v21 = [v15 objectForKeyedSubscript:v20];
        if (([v21 conformsToProtocol:&unk_2860F8DC8] & 1) != 0 || objc_msgSend(v21, "conformsToProtocol:", &unk_2860F8EF0))
        {
          [v14 setObject:v21 forKeyedSubscript:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v236 objects:v241 count:16];
    }

    while (v17);
  }

  v22 = Object[8];
  if (!v22)
  {
    v42 = Object[9];
    v24 = v215;
    if (v42)
    {
      v43 = MakeMTLMeshRenderPipelineDescriptorWithoutResourceIndex(Object[9], v14);
      [v43 setMaxTotalThreadsPerObjectThreadgroup:*(v42 + 406)];
      [v43 setMaxTotalThreadsPerMeshThreadgroup:*(v42 + 404)];
      v44 = *(v42 + 336);
      v230 = *(v42 + 320);
      v231 = v44;
      v212 = v43;
      [v43 setMaxThreadgroupsPerMeshGrid:&v230];
      if ((GT_SUPPORT_0 & 0x8000) != 0)
      {
        [v43 setDriverCompilerOptions:&unk_2860D6308 & ((v218[26] << 59) >> 63)];
      }

      v45 = [v215 renderPipelineDescriptorMap];
      if (v214 == 2)
      {
        v46 = _ObjectArrayWithMap(*(v42 + 272), *(v42 + 280), v45);
        v47 = [v212 objectLinkedFunctions];
        [v47 setFunctions:v46];

        v48 = _ObjectArrayWithMap(*(v42 + 304), *(v42 + 312), v45);
        v49 = [v212 objectLinkedFunctions];
        [v49 setPrivateFunctions:v48];

        v50 = _ObjectArrayWithMap(*(v42 + 256), *(v42 + 264), v45);
        v51 = [v212 objectLinkedFunctions];
        [v51 setBinaryFunctions:v50];

        v52 = _ObjectArrayWithMap(*(v42 + 208), *(v42 + 216), v45);
        v53 = [v212 meshLinkedFunctions];
        [v53 setFunctions:v52];

        v54 = _ObjectArrayWithMap(*(v42 + 240), *(v42 + 248), v45);
        v55 = [v212 meshLinkedFunctions];
        [v55 setPrivateFunctions:v54];

        v56 = _ObjectArrayWithMap(*(v42 + 192), *(v42 + 200), v45);
        v57 = [v212 meshLinkedFunctions];
        [v57 setBinaryFunctions:v56];

        v59 = v218 + 26;
        v58 = v218[26];
        if ((v58 & 4) == 0)
        {
          v60 = 0;
          if ((v58 & 2) == 0)
          {
            v61 = 344;
            v24 = v215;
            goto LABEL_117;
          }

          goto LABEL_99;
        }

        v84 = v45;
        v85 = [v212 fragmentFunction];
        v86 = [v212 fragmentPreloadedLibraries];
      }

      else
      {
        if (v214 == 6)
        {
          v109 = _ObjectArrayWithMap(*(v42 + 272), *(v42 + 280), v45);
          v110 = [v212 objectLinkedFunctions];
          [v110 setFunctions:v109];

          v111 = _ObjectArrayWithMap(*(v42 + 304), *(v42 + 312), v45);
          v112 = [v212 objectLinkedFunctions];
          [v112 setPrivateFunctions:v111];

          v113 = _ObjectArrayWithMap(*(v42 + 256), *(v42 + 264), v45);
          v114 = [v212 objectLinkedFunctions];
          [v114 setBinaryFunctions:v113];

          v115 = _ObjectArrayWithMap(*(v42 + 144), *(v42 + 152), v45);
          v116 = [v212 fragmentLinkedFunctions];
          [v116 setFunctions:v115];

          v117 = _ObjectArrayWithMap(*(v42 + 176), *(v42 + 184), v45);
          v118 = [v212 fragmentLinkedFunctions];
          [v118 setPrivateFunctions:v117];

          v119 = _ObjectArrayWithMap(*(v42 + 128), *(v42 + 136), v45);
          v120 = [v212 fragmentLinkedFunctions];
          [v120 setBinaryFunctions:v119];

          v59 = v218 + 26;
          v83 = v218[26];
          if ((v83 & 4) == 0)
          {
            v60 = 1;
            goto LABEL_97;
          }

          v84 = v45;
          v85 = [v212 meshFunction];
          v121 = [v212 meshPreloadedLibraries];
          v60 = 1;
          goto LABEL_79;
        }

        if (v214 == 5)
        {
          v71 = _ObjectArrayWithMap(*(v42 + 208), *(v42 + 216), v45);
          v72 = [v212 meshLinkedFunctions];
          [v72 setFunctions:v71];

          v73 = _ObjectArrayWithMap(*(v42 + 240), *(v42 + 248), v45);
          v74 = [v212 meshLinkedFunctions];
          [v74 setPrivateFunctions:v73];

          v75 = _ObjectArrayWithMap(*(v42 + 192), *(v42 + 200), v45);
          v76 = [v212 meshLinkedFunctions];
          [v76 setBinaryFunctions:v75];

          v77 = _ObjectArrayWithMap(*(v42 + 144), *(v42 + 152), v45);
          v78 = [v212 fragmentLinkedFunctions];
          [v78 setFunctions:v77];

          v79 = _ObjectArrayWithMap(*(v42 + 176), *(v42 + 184), v45);
          v80 = [v212 fragmentLinkedFunctions];
          [v80 setPrivateFunctions:v79];

          v81 = _ObjectArrayWithMap(*(v42 + 128), *(v42 + 136), v45);
          v82 = [v212 fragmentLinkedFunctions];
          [v82 setBinaryFunctions:v81];
        }

        v59 = v218 + 26;
        v83 = v218[26];
        if ((v83 & 4) == 0)
        {
          v60 = 0;
          goto LABEL_97;
        }

        v84 = v45;
        v85 = [v212 objectFunction];
        v86 = [v212 objectPreloadedLibraries];
      }

      v121 = v86;
      v60 = 0;
LABEL_79:
      v122 = _GetPreloadedDylibsForGlobalRelocation(v218, v85, v121, v216);
      if (v122)
      {
        v123 = v122;
        if (v214 == 2)
        {
          [v212 setFragmentPreloadedLibraries:v122];
          [v212 setMaxFragmentCallStackDepth:{objc_msgSend(v123, "count") + 1}];
        }

        else if (v60)
        {
          [v212 setMeshPreloadedLibraries:v122];
          [v212 setMaxMeshCallStackDepth:{objc_msgSend(v123, "count") + 1}];
        }

        else
        {
          [v212 setObjectPreloadedLibraries:v122];
          [v212 setMaxObjectCallStackDepth:{objc_msgSend(v123, "count") + 1}];
        }

        v83 = *v59;
        v45 = v84;
LABEL_97:
        if ((v83 & 2) == 0)
        {
LABEL_112:
          v24 = v215;
          if ((v83 & 6) != 0)
          {
LABEL_146:
            if ([v217 supportsFamily:1009])
            {
              if (v214 == 2)
              {
                [v212 setMaxFragmentCallStackDepth:{objc_msgSend(v212, "maxFragmentCallStackDepth") + 1}];
              }

              else if (v60)
              {
                [v212 setMaxMeshCallStackDepth:{objc_msgSend(v212, "maxMeshCallStackDepth") + 1}];
              }

              else
              {
                [v212 setMaxObjectCallStackDepth:{objc_msgSend(v212, "maxObjectCallStackDepth") + 1}];
              }
            }

            v228 = 0;
            v229 = 0;
            v100 = &v228;
            v92 = [v217 newRenderPipelineStateWithMeshDescriptor:v212 options:0x200000 reflection:&v229 error:&v228];
            v150 = v229;
            goto LABEL_199;
          }

          v61 = 368;
          if (v60)
          {
            v61 = 360;
          }

          if (v214 == 2)
          {
            v61 = 344;
          }

LABEL_117:
          v132 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v42 + v61)];
          v133 = [v45 objectForKeyedSubscript:v132];

          if (v133)
          {
            v134 = [v217 loadDynamicLibrariesForFunction:v133 insertLibraries:MEMORY[0x277CBEBF8] error:0];
          }

          else
          {
            v134 = 0;
          }

          if ([v134 count])
          {
            v135 = v45;
            if (v214 == 2)
            {
              v136 = [v212 fragmentPreloadedLibraries];
              v137 = [v136 mutableCopy];

              [v137 addObjectsFromArray:v134];
              v138 = [v137 copy];
              [v212 setFragmentPreloadedLibraries:v138];

              [v212 setMaxFragmentCallStackDepth:{objc_msgSend(v137, "count") + 1}];
            }

            else if (v60)
            {
              v139 = [v212 meshPreloadedLibraries];
              v137 = [v139 mutableCopy];

              [v137 addObjectsFromArray:v134];
              v140 = [v137 copy];
              [v212 setMeshPreloadedLibraries:v140];

              [v212 setMaxMeshCallStackDepth:{objc_msgSend(v137, "count") + 1}];
            }

            else
            {
              v148 = [v212 objectPreloadedLibraries];
              v137 = [v148 mutableCopy];

              [v137 addObjectsFromArray:v134];
              v149 = [v137 copy];
              [v212 setObjectPreloadedLibraries:v149];

              [v212 setMaxObjectCallStackDepth:{objc_msgSend(v137, "count") + 1}];
            }

            v45 = v135;
          }

          goto LABEL_146;
        }

        if (v214 != 2)
        {
          if (v60)
          {
            v85 = [v212 meshPreloadedLibraries];
            v60 = 1;
LABEL_104:
            v130 = _GetPreloadedDylibsForGlobalBinding(v218, v85, v216);
            if (v130)
            {
              v131 = v130;
              if (v214 == 2)
              {
                [v212 setFragmentPreloadedLibraries:v130];
                [v212 setMaxFragmentCallStackDepth:{objc_msgSend(v131, "count") + 1}];
              }

              else if (v60)
              {
                [v212 setMeshPreloadedLibraries:v130];
                [v212 setMaxMeshCallStackDepth:{objc_msgSend(v131, "count") + 1}];
              }

              else
              {
                [v212 setObjectPreloadedLibraries:v130];
                [v212 setMaxObjectCallStackDepth:{objc_msgSend(v131, "count") + 1}];
              }

              v83 = *v59;
              goto LABEL_112;
            }

            v24 = v215;
            goto LABEL_140;
          }

          v129 = [v212 objectPreloadedLibraries];
LABEL_103:
          v85 = v129;
          goto LABEL_104;
        }

LABEL_99:
        v129 = [v212 fragmentPreloadedLibraries];
        goto LABEL_103;
      }

      v24 = v215;
LABEL_93:

      v128 = v212;
      v45 = v84;
LABEL_141:

      goto LABEL_142;
    }

    v62 = Object[6];
    if (!v62)
    {
      v96 = 0;
      goto LABEL_68;
    }

    v63 = MakeMTLRenderPipelineDescriptorWithoutResourceIndex(Object[6], v14);
    v45 = [v215 renderPipelineDescriptorMap];
    v212 = v63;
    if (v214 == 2)
    {
      v64 = _ObjectArrayWithMap(*(v62 + 135), *(v62 + 136), v45);
      v65 = [v63 vertexLinkedFunctions];
      [v65 setFunctions:v64];

      v66 = _ObjectArrayWithMap(*(v62 + 139), *(v62 + 140), v45);
      v67 = [v63 vertexLinkedFunctions];
      [v67 setPrivateFunctions:v66];

      v68 = _ObjectArrayWithMap(*(v62 + 133), *(v62 + 134), v45);
      v69 = [v63 vertexLinkedFunctions];
      [v69 setBinaryFunctions:v68];

      v70 = _ObjectArrayWithMap(*(v62 + 163), *(v62 + 164), v45);
      [v63 setVertexPreloadedLibraries:v70];
    }

    else
    {
      v102 = _ObjectArrayWithMap(*(v62 + 111), *(v62 + 112), v45);
      v103 = [v63 fragmentLinkedFunctions];
      [v103 setFunctions:v102];

      v104 = _ObjectArrayWithMap(*(v62 + 115), *(v62 + 116), v45);
      v105 = [v63 fragmentLinkedFunctions];
      [v105 setPrivateFunctions:v104];

      v106 = _ObjectArrayWithMap(*(v62 + 109), *(v62 + 110), v45);
      v107 = [v63 fragmentLinkedFunctions];
      [v107 setBinaryFunctions:v106];

      v70 = _ObjectArrayWithMap(*(v62 + 148), *(v62 + 149), v45);
      [v63 setFragmentPreloadedLibraries:v70];
    }

    if ((GT_SUPPORT_0 & 0x8000) != 0)
    {
      [v63 setDriverCompilerOptions:&unk_2860D6330 & ((v218[26] << 59) >> 63)];
    }

    v108 = v218[26];
    if ((v108 & 4) != 0)
    {
      v84 = v45;
      if (v214 == 2)
      {
        v85 = [v63 fragmentFunction];
        [v63 fragmentPreloadedLibraries];
      }

      else
      {
        v85 = [v63 vertexFunction];
        [v63 vertexPreloadedLibraries];
      }
      v121 = ;
      v124 = _GetPreloadedDylibsForGlobalRelocation(v218, v85, v121, v216);
      if (!v124)
      {
        goto LABEL_93;
      }

      v125 = v124;
      if (v214 == 2)
      {
        [v63 setFragmentPreloadedLibraries:v124];
        v126 = [v125 count];
        if (v62[672] <= 1u)
        {
          v127 = 1;
        }

        else
        {
          v127 = v62[672];
        }

        [v63 setMaxFragmentCallStackDepth:v126 + v127];
      }

      else
      {
        [v63 setVertexPreloadedLibraries:v124];
        v141 = [v125 count];
        if (v62[675] <= 1u)
        {
          v142 = 1;
        }

        else
        {
          v142 = v62[675];
        }

        [v63 setMaxVertexCallStackDepth:v141 + v142];
      }

      v108 = v218[26];
      v45 = v84;
    }

    if ((v108 & 2) != 0)
    {
      if (v214 == 2)
      {
        [v63 fragmentPreloadedLibraries];
      }

      else
      {
        [v63 vertexPreloadedLibraries];
      }
      v85 = ;
      v143 = _GetPreloadedDylibsForGlobalBinding(v218, v85, v216);
      if (!v143)
      {
LABEL_140:
        v128 = v212;
        goto LABEL_141;
      }

      v144 = v143;
      if (v214 == 2)
      {
        [v63 setFragmentPreloadedLibraries:v143];
        v145 = [v144 count];
        if (v62[672] <= 1u)
        {
          v146 = 1;
        }

        else
        {
          v146 = v62[672];
        }

        [v63 setMaxFragmentCallStackDepth:v145 + v146];
      }

      else
      {
        [v63 setVertexPreloadedLibraries:v143];
        v151 = [v144 count];
        if (v62[675] <= 1u)
        {
          v152 = 1;
        }

        else
        {
          v152 = v62[675];
        }

        [v63 setMaxVertexCallStackDepth:v151 + v152];
      }

      v108 = v218[26];
    }

    if ((v108 & 6) == 0)
    {
      v153 = 648;
      if (v214 == 2)
      {
        v153 = 588;
      }

      v154 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*&v62[v153]];
      v155 = v45;
      v156 = [v45 objectForKeyedSubscript:v154];

      if (v156)
      {
        v157 = [v217 loadDynamicLibrariesForFunction:v156 insertLibraries:MEMORY[0x277CBEBF8] error:0];
      }

      else
      {
        v157 = 0;
      }

      if ([v157 count])
      {
        if (v214 == 2)
        {
          v158 = [v63 fragmentPreloadedLibraries];
          v159 = [v158 mutableCopy];

          [v159 addObjectsFromArray:v157];
          v160 = [v157 copy];
          [v63 setFragmentPreloadedLibraries:v160];

          v161 = [v157 count];
          if (v62[672] <= 1u)
          {
            v162 = 1;
          }

          else
          {
            v162 = v62[672];
          }

          [v63 setMaxFragmentCallStackDepth:v161 + v162];
        }

        else
        {
          v163 = [v63 vertexPreloadedLibraries];
          v159 = [v163 mutableCopy];

          [v159 addObjectsFromArray:v157];
          v164 = [v157 copy];
          [v63 setVertexPreloadedLibraries:v164];

          v165 = [v157 count];
          if (v62[675] <= 1u)
          {
            v166 = 1;
          }

          else
          {
            v166 = v62[675];
          }

          [v63 setMaxVertexCallStackDepth:v165 + v166];
        }

        v24 = v215;
      }

      v45 = v155;
    }

    if ([v217 supportsFamily:1009])
    {
      if (v214 == 2)
      {
        [v63 setMaxFragmentCallStackDepth:{objc_msgSend(v63, "maxFragmentCallStackDepth") + 1}];
LABEL_198:
        v222 = 0;
        v223 = 0;
        v100 = &v222;
        v92 = [v217 newRenderPipelineStateWithDescriptor:v212 options:0x200000 reflection:&v223 error:{&v222, v209}];
        v150 = v223;
LABEL_199:
        v62 = v150;
        goto LABEL_200;
      }

      [v63 setMaxVertexCallStackDepth:{objc_msgSend(v63, "maxVertexCallStackDepth") + 1}];
    }

    if (v214 == 1)
    {
      v167 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v62 + 162)];
      v168 = [v45 objectForKeyedSubscript:v167];

      v169 = [v168 stageInputAttributes];
      if ([v169 count])
      {
        v210 = v168;
        v211 = v45;
        v221 = [v63 vertexDescriptor];
        v224 = 0u;
        v225 = 0u;
        v226 = 0u;
        v227 = 0u;
        v209 = v169;
        obj = v169;
        v170 = [obj countByEnumeratingWithState:&v224 objects:v240 count:16];
        if (v170)
        {
          v171 = v170;
          v172 = 0;
          v173 = *v225;
          do
          {
            v174 = 0;
            v219 = v171;
            do
            {
              if (*v225 != v173)
              {
                objc_enumerationMutation(obj);
              }

              v175 = *(*(&v224 + 1) + 8 * v174);
              if (([v175 isActive] & 1) == 0)
              {
                v176 = [v175 attributeIndex];
                v177 = [v221 attributes];
                v178 = [v177 objectAtIndexedSubscript:v176];
                v179 = [v178 format];

                if (!v179)
                {
                  v180 = [v175 attributeType];
                  if ((v180 - 3) > 0x4A)
                  {
                    v181 = 46;
                  }

                  else
                  {
                    v181 = qword_24DA91178[v180 - 3];
                  }

                  v182 = [v221 attributes];
                  v183 = [v182 objectAtIndexedSubscript:v176];
                  [v183 setFormat:v181];

                  v184 = [v221 attributes];
                  v185 = [v184 objectAtIndexedSubscript:v176];
                  [v185 setBufferIndex:v172];

                  v186 = [v221 attributes];
                  v187 = [v186 objectAtIndexedSubscript:v176];
                  [v187 setOffset:0];

                  v188 = [v221 layouts];
                  v189 = [v188 objectAtIndexedSubscript:v172];
                  [v189 setStride:1];

                  ++v172;
                }

                v171 = v219;
              }

              ++v174;
            }

            while (v171 != v174);
            v171 = [obj countByEnumeratingWithState:&v224 objects:v240 count:16];
          }

          while (v171);
        }

        v24 = v215;
        v168 = v210;
        v45 = v211;
        v169 = v209;
      }
    }

    goto LABEL_198;
  }

  v23 = MakeMTLTileRenderPipelineDescriptor(Object[8], v14);
  v24 = v215;
  v25 = [v215 renderPipelineStateForKey:v213];
  [v23 setMaxTotalThreadsPerThreadgroup:{objc_msgSend(v25, "maxTotalThreadsPerThreadgroup")}];

  v26 = v218[26];
  if ((v26 & 4) != 0)
  {
    v27 = [v23 tileFunction];
    [v23 preloadedLibraries];
    v29 = v28 = v23;
    v30 = _GetPreloadedDylibsForGlobalRelocation(v218, v27, v29, v216);

    v23 = v28;
    if (!v30)
    {
LABEL_40:

LABEL_142:
      v147 = 0;
      v62 = 0;
      goto LABEL_230;
    }

    [v28 setPreloadedLibraries:v30];
    v31 = [v30 count];
    if (*(v22 + 146) <= 1u)
    {
      v32 = 1;
    }

    else
    {
      v32 = *(v22 + 146);
    }

    [v28 setMaxCallStackDepth:v31 + v32];

    v26 = v218[26];
  }

  if ((v26 & 2) == 0)
  {
    goto LABEL_30;
  }

  v33 = [v23 preloadedLibraries];
  v34 = _GetPreloadedDylibsForGlobalBinding(v218, v33, v216);

  if (!v34)
  {
    goto LABEL_40;
  }

  [v23 setPreloadedLibraries:v34];
  v35 = [v34 count];
  if (*(v22 + 146) <= 1u)
  {
    v36 = 1;
  }

  else
  {
    v36 = *(v22 + 146);
  }

  [v23 setMaxCallStackDepth:v35 + v36];

  v26 = v218[26];
LABEL_30:
  if ((v26 & 6) == 0)
  {
    v37 = v23;
    v38 = [v215 renderPipelineDescriptorMap];
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v22 + 136)];
    v40 = [v38 objectForKeyedSubscript:v39];

    if (v40)
    {
      v41 = [v217 loadDynamicLibrariesForFunction:v40 insertLibraries:MEMORY[0x277CBEBF8] error:0];
    }

    else
    {
      v41 = 0;
    }

    if ([v41 count])
    {
      v87 = [v37 preloadedLibraries];
      v88 = [v87 mutableCopy];

      [v88 addObjectsFromArray:v41];
      v89 = [v88 copy];
      [v37 setPreloadedLibraries:v89];

      v24 = v215;
      v90 = [v88 count];
      if (*(v22 + 146) <= 1u)
      {
        v91 = 1;
      }

      else
      {
        v91 = *(v22 + 146);
      }

      [v37 setMaxCallStackDepth:v90 + v91];
    }

    v23 = v37;
  }

  if ([v217 supportsFamily:1009])
  {
    [v23 setMaxCallStackDepth:{objc_msgSend(v23, "maxCallStackDepth") + 1}];
  }

  v234 = 0;
  v235 = 0;
  v92 = [v217 newRenderPipelineStateWithTileDescriptor:v23 options:0x200000 reflection:&v235 error:&v234];
  v93 = v23;
  v62 = v235;
  v94 = v234;
  v95 = v94;
  if (v92)
  {
    v96 = v94;

    goto LABEL_202;
  }

  v212 = v93;
  if ([v94 code] == 2)
  {
    v97 = [v95 domain];
    if (![v97 containsString:@"AGXMetal"])
    {
      v96 = v95;
      v92 = 0;
      v24 = v215;
      goto LABEL_201;
    }

    v98 = [v95 description];
    v99 = [v98 localizedCaseInsensitiveContainsString:@"maxTotalThreadsPerThreadgroup"];

    if (v99)
    {
      [v212 setMaxTotalThreadsPerThreadgroup:*(v22 + 148)];
      v232 = v95;
      v233 = v62;
      v100 = &v232;
      v92 = [v217 newRenderPipelineStateWithTileDescriptor:v212 options:0x200000 reflection:&v233 error:&v232];
      v101 = v233;

      v62 = v101;
      v24 = v215;
      v45 = v95;
LABEL_200:
      v97 = v45;
      v96 = *v100;
LABEL_201:

      if (v92)
      {
LABEL_202:
        v190 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v213];
        [v15 setObject:v92 forKeyedSubscript:v190];

        v191 = [v62 traceBufferIndex];
        if (v191 == -1)
        {
          CurrentEncoderFreeBindingSlotIndex = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          CurrentEncoderFreeBindingSlotIndex = v191;
        }

        if ((v218[26] & 2) != 0)
        {
          CurrentEncoderFreeBindingSlotIndex = _GetCurrentEncoderFreeBindingSlotIndex(v218 + 1);
        }

        if (CurrentEncoderFreeBindingSlotIndex == 0x7FFFFFFFFFFFFFFFLL && (v218[26] & 4) == 0)
        {
          if (v216)
          {
            GTShaderDebuggerMakeError(1u, @"Internal error: Failed to set up GPU data buffer", 0, 0, 0);
            *v216 = v193 = 0;
LABEL_236:
            v147 = v96;
            goto LABEL_237;
          }

LABEL_224:
          v193 = 0;
          goto LABEL_236;
        }

        v194 = 0;
        if (v214 > 3)
        {
          if (v214 == 6)
          {
            v195 = [v62 meshBindings];
            goto LABEL_234;
          }

          if (v214 == 5)
          {
            v195 = [v62 objectBindings];
            goto LABEL_234;
          }

          if (v214 != 4)
          {
            goto LABEL_235;
          }
        }

        else if (v214 != 1)
        {
          if (v214 == 2)
          {
            v195 = [v62 fragmentBindings];
            goto LABEL_234;
          }

          if (v214 == 3)
          {
            v195 = [v62 tileBindings];
LABEL_234:
            v194 = v195;
          }

LABEL_235:
          v200 = [v15 copy];
          v201 = v218[12];
          v218[12] = v200;

          v202 = [v62 constantSamplerUniqueIdentifiers];
          v203 = [v62 constantSamplerDescriptors];
          v204 = _MakeConstantSamplers(v202, v203);
          v205 = v218[17];
          v218[17] = v204;

          v206 = _MakeBindings(v194);
          v207 = v218[16];
          v218[16] = v206;

          v218[18] = CurrentEncoderFreeBindingSlotIndex;
          v193 = 1;
          goto LABEL_236;
        }

        v195 = [v62 vertexBindings];
        goto LABEL_234;
      }

      goto LABEL_216;
    }
  }

  v96 = v95;

  v24 = v215;
LABEL_68:

LABEL_216:
  if (!v216)
  {
    v92 = 0;
    goto LABEL_224;
  }

  v147 = v96;
  v196 = [v96 description];
  if ([v196 localizedCaseInsensitiveContainsString:@"Undefined symbol"])
  {
    v197 = v96;
    *v216 = v96;
  }

  else
  {
    if ((v218[26] & 0x10) != 0)
    {
      v198 = 4;
    }

    else
    {
      v198 = 2;
    }

    v199 = GTShaderDebuggerMakeError(v198, @"Failed to set up render pipeline state for debugging", 0, v96, 0);
    *v216 = v199;
  }

LABEL_230:
  v92 = 0;
  v193 = 0;
LABEL_237:

  return v193;
}