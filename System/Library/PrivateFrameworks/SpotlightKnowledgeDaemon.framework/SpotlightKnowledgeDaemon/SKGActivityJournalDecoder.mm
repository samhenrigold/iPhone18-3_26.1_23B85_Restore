@interface SKGActivityJournalDecoder
+ (void)SKGActivityJournalPlayback:(const char *)playback block:(id)block;
+ (void)_SKGActivityDump:(id)dump format:(unint64_t)format dst:(__sFILE *)dst;
+ (void)_SKGEmbeddingTimeline:(id)timeline includePerf:(BOOL)perf block:(id)block;
+ (void)_SKGEmbeddingTimelineDump:(id)dump includePerf:(BOOL)perf dst:(__sFILE *)dst;
+ (void)_SKGEmbeddingXPCTimeline:(id)timeline updater:(id)updater block:(id)block;
+ (void)_dumpNDJSONForDictionary:(id)dictionary dst:(__sFILE *)dst;
@end

@implementation SKGActivityJournalDecoder

+ (void)SKGActivityJournalPlayback:(const char *)playback block:(id)block
{
  blockCopy = block;
  v6 = open(playback, 0);
  if (v6 == -1)
  {
    fwrite("### file open failed", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  else
  {
    v7 = v6;
    v43 = 0;
    if (read(v6, &v43, 4uLL) == 4 && v43 == -559038737)
    {
      v33 = blockCopy + 16;
      v34 = blockCopy;
      v8 = 0x277CBE000uLL;
      while (1)
      {
        v42 = 0;
        if (read(v7, &v42, 4uLL) != 4)
        {
          goto LABEL_34;
        }

        v9 = [*(v8 + 2856) dataWithLength:v42];
        mutableBytes = [v9 mutableBytes];
        v11 = read(v7, mutableBytes, v42);
        if (v11 != v42)
        {
          break;
        }

        v41 = 0;
        if (read(v7, &v41, 4uLL) != 4)
        {
          break;
        }

        bytes = [v9 bytes];
        v13 = crc32(0, bytes, v42);
        if (v41 == v13)
        {
          bytes2 = [v9 bytes];
          v36 = *bytes2;
          v35 = *(bytes2 + 1);
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
          if (v42 >= 0xA)
          {
            v17 = 9;
            do
            {
              v18 = *(bytes2 + v17);
              v19 = v17 + 4;
              DataTypeForParamType = getDataTypeForParamType(*(bytes2 + v17));
              if (DataTypeForParamType <= 2)
              {
                if (DataTypeForParamType == 1)
                {
                  v28 = *(bytes2 + v19);
                  v19 = v17 + 8;
                  v25 = [MEMORY[0x277CCABB0] numberWithInt:v28];
LABEL_22:
                  v23 = v25;
LABEL_23:
                  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{v18, v33}];
                  [dictionary setObject:v23 forKeyedSubscript:v29];

                  goto LABEL_24;
                }

                if (DataTypeForParamType == 2)
                {
                  v24 = *(bytes2 + v19);
                  v19 = v17 + 12;
                  v25 = [MEMORY[0x277CCABB0] numberWithLongLong:v24];
                  goto LABEL_22;
                }
              }

              else
              {
                switch(DataTypeForParamType)
                {
                  case 3:
                    v26 = *(bytes2 + v19);
                    v19 = v17 + 8;
                    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v26];
                    goto LABEL_22;
                  case 4:
                    v27 = *(bytes2 + v19);
                    v19 = v17 + 12;
                    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v27];
                    goto LABEL_22;
                  case 5:
                    v21 = *(bytes2 + v19);
                    v22 = v17 + 8;
                    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:bytes2 + v17 + 8 length:v21 encoding:4];
                    v19 = v22 + v21;
                    goto LABEL_23;
                }
              }

LABEL_24:
              v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{v18, v33}];
              [v16 addObject:v30];

              v17 = v19;
            }

            while (v19 < v42);
          }

          v39 = 0;
          v40 = 0;
          v37[0] = v36;
          v38 = v35;
          v31 = [dictionary copy];
          blockCopy = v34;
          v32 = v39;
          v39 = v31;

          objc_storeStrong(&v40, v16);
          if (v34)
          {
            (*(v34 + 2))(v34, v37);
          }

          v8 = 0x277CBE000;
        }

        else
        {
          NSLog(&cfstr_ChecksumMismat.isa);
        }

        v43 = 0;
        if (read(v7, &v43, 4uLL) != 4 || v43 != -559038737)
        {
          goto LABEL_34;
        }
      }
    }
  }

LABEL_34:
}

+ (void)_SKGEmbeddingTimeline:(id)timeline includePerf:(BOOL)perf block:(id)block
{
  v87 = *MEMORY[0x277D85DE8];
  timelineCopy = timeline;
  blockCopy = block;
  v76 = 0;
  v77 = &v76;
  v78 = 0x7810000000;
  v79 = &unk_231C4157F;
  v83 = 0u;
  v84 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v85 = 0;
  LOBYTE(v84) = 1;
  v66 = 0;
  v67 = &v66;
  v68 = 0x7810000000;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v69 = &unk_231C4157F;
  v75 = 0;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v12 = objc_alloc_init(EventCollector);
  v13 = objc_alloc_init(EventCollector);
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 1;
  v14 = (blockCopy + 16);
  (*(blockCopy + 2))(blockCopy, "Type, from_date_time, to_date_time, elapsed_time_secs, handled, skipped, processed, indexed, index_error, index_timeout, efficiency(max 36k/h), cancelFlag");
  v15 = timelineCopy;
  uTF8String = [timelineCopy UTF8String];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __69__SKGActivityJournalDecoder__SKGEmbeddingTimeline_includePerf_block___block_invoke;
  v32[3] = &unk_27893E488;
  v38 = &v76;
  v39 = &v66;
  v17 = v10;
  v33 = v17;
  v40 = &v58;
  v41 = &v62;
  v18 = blockCopy;
  v37 = v18;
  perfCopy = perf;
  v19 = v12;
  v34 = v19;
  v42 = &v46;
  v20 = v11;
  v35 = v20;
  v43 = &v50;
  v44 = &v54;
  v21 = v13;
  v36 = v21;
  [self SKGActivityJournalPlayback:uTF8String block:v32];
  if ((v47[3] & 1) == 0)
  {
    bzero(v86, 0x400uLL);
    createReportLine((v77 + 4), v86);
    (*v14)(v18, v86);
    createReportLine((v67 + 4), v86);
    (*v14)(v18, v86);
  }

  collectedData = [(EventCollector *)v19 collectedData];
  v23 = [collectedData count] == 0;

  if (!v23)
  {
    (*v14)(v18, "---------------Profiling---------------");
    [(EventCollector *)v19 printResultsWithBlock:v18];
    (*v14)(v18, "------------------end------------------");
  }

  (*v14)(v18, "");
  collectedData2 = [(EventCollector *)v21 collectedData];
  v25 = [collectedData2 count] == 0;

  if (!v25)
  {
    (*v14)(v18, "---------------Profiling---------------");
    [(EventCollector *)v21 printResultsWithBlock:v18];
    (*v14)(v18, "------------------end------------------");
  }

  (*v14)(v18, "");
  bzero(v86, 0x400uLL);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  NewAggregateStats(v17, v30);
  (*v14)(v18, "---------------BG Task Emb Efficiency---------------");
  __sprintf_chk(v86, 0, 0x400uLL, "Total BG embeddings generated: %llu", v63[3]);
  (*v14)(v18, v86);
  __sprintf_chk(v86, 0, 0x400uLL, "Total BG runtime granted: %fs", v59[3]);
  (*v14)(v18, v86);
  v26 = v63[3] / v59[3] * 60.0 * 60.0;
  __sprintf_chk(v86, 0, 0x400uLL, "Overall BG emb throughput(items/hr): %.2f", v26);
  (*v14)(v18, v86);
  __sprintf_chk(v86, 0, 0x400uLL, "Overall BG emb efficiency(max 36k): %.2f", v26 / 36000.0);
  (*v14)(v18, v86);
  (*v14)(v18, "");
  PrintAggregateStats(v30, v18);
  (*v14)(v18, "---------------BG Task Emb Efficiency End---------------\n");
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  NewAggregateStats(v20, v28);
  (*v14)(v18, "---------------PRI Task Emb Efficiency---------------");
  __sprintf_chk(v86, 0, 0x400uLL, "Total PRI embeddings generated: %llu", v55[3]);
  (*v14)(v18, v86);
  __sprintf_chk(v86, 0, 0x400uLL, "Total PRI runtime granted: %fs", v51[3]);
  (*v14)(v18, v86);
  v27 = v55[3] / v51[3] * 60.0 * 60.0;
  __sprintf_chk(v86, 0, 0x400uLL, "Overall PRI emb throughput(items/hr): %.2f", v27);
  (*v14)(v18, v86);
  __sprintf_chk(v86, 0, 0x400uLL, "Overall PRI emb efficiency(max 36k): %.2f", v27 / 36000.0);
  (*v14)(v18, v86);
  (*v14)(v18, "");
  PrintAggregateStats(v28, v18);
  (*v14)(v18, "---------------PRI Task Emb Efficiency End---------------\n");

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v54, 8);

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v62, 8);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(&v76, 8);
}

void __69__SKGActivityJournalDecoder__SKGEmbeddingTimeline_includePerf_block___block_invoke(uint64_t a1, unint64_t *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  bzero(v37, 0x400uLL);
  v4 = *a2;
  if (v4 > 0x2C)
  {
    if (v4 != 45)
    {
      if (v4 == 46)
      {
        *(*(*(a1 + 80) + 8) + 88) = a2[1];
        v14 = *(*(a1 + 80) + 8);
        v15 = *(v14 + 88) - *(v14 + 80);
        *(v14 + 112) = v15;
        v16 = 0.0;
        if (v15 > 0.0)
        {
          v17 = *(v14 + 48);
          if (v17)
          {
            v16 = v17 / v15 * 60.0 * 60.0;
          }
        }

        *(v14 + 104) = v16;
        v18 = *(a1 + 48);
        v19 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(*(a1 + 80) + 8) + 104) / 36000.0];
        [v18 addObject:v19];

        *(*(*(a1 + 112) + 8) + 24) = *(*(*(a1 + 80) + 8) + 112) + *(*(*(a1 + 112) + 8) + 24);
        *(*(*(a1 + 120) + 8) + 24) += *(*(*(a1 + 80) + 8) + 48);
        createReportLine(*(*(a1 + 80) + 8) + 32, v37);
        (*(*(a1 + 64) + 16))();
        if (*(a1 + 128) == 1)
        {
          v20 = [*(a1 + 56) collectedData];
          v21 = [v20 count];

          if (v21)
          {
            (*(*(a1 + 64) + 16))();
            [*(a1 + 56) printResultsWithBlock:*(a1 + 64)];
            (*(*(a1 + 64) + 16))();
          }

          (*(*(a1 + 64) + 16))();
          [*(a1 + 56) clear];
        }

        v13 = *(a1 + 80);
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    v24 = a2[1];
    v25 = *(a1 + 80);
LABEL_27:
    *(*(v25 + 8) + 80) = v24;
    return;
  }

  if (v4 == 43)
  {
    v24 = a2[1];
    v25 = *(a1 + 72);
    goto LABEL_27;
  }

  if (v4 == 44)
  {
    *(*(*(a1 + 72) + 8) + 88) = a2[1];
    v5 = *(*(a1 + 72) + 8);
    v6 = *(v5 + 88) - *(v5 + 80);
    *(v5 + 112) = v6;
    v7 = 0.0;
    if (v6 > 0.0)
    {
      v8 = *(v5 + 48);
      if (v8)
      {
        v7 = v8 / v6 * 60.0 * 60.0;
      }
    }

    *(v5 + 104) = v7;
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(*(a1 + 72) + 8) + 104) / 36000.0];
    [v9 addObject:v10];

    *(*(*(a1 + 88) + 8) + 24) = *(*(*(a1 + 72) + 8) + 112) + *(*(*(a1 + 88) + 8) + 24);
    *(*(*(a1 + 96) + 8) + 24) += *(*(*(a1 + 72) + 8) + 48);
    createReportLine(*(*(a1 + 72) + 8) + 32, v37);
    (*(*(a1 + 64) + 16))();
    if (*(a1 + 128) == 1)
    {
      v11 = [*(a1 + 40) collectedData];
      v12 = [v11 count];

      if (v12)
      {
        (*(*(a1 + 64) + 16))();
        [*(a1 + 40) printResultsWithBlock:*(a1 + 64)];
        (*(*(a1 + 64) + 16))();
      }

      (*(*(a1 + 64) + 16))();
      [*(a1 + 40) clear];
    }

    v13 = *(a1 + 72);
LABEL_22:
    v22 = *(v13 + 8);
    *(v22 + 104) = 0;
    *(v22 + 97) = 0;
    *(v22 + 32) = 0u;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 80) = 0u;
    *(*(*(a1 + 104) + 8) + 24) = 1;
    return;
  }

LABEL_23:
  *(*(*(a1 + 104) + 8) + 24) = 0;
  switch(v4)
  {
    case 0xDu:
      v28 = *(a1 + 72);
      goto LABEL_37;
    case 0xFu:
      v27 = *(a1 + 72);
      goto LABEL_39;
    case 0x10u:
      v27 = *(a1 + 80);
LABEL_39:
      ++*(*(v27 + 8) + 32);
      return;
    case 0x13u:
      v28 = *(a1 + 80);
LABEL_37:
      ++*(*(v28 + 8) + 56);
      return;
    case 0x14u:
      v23 = *(a1 + 80);
      goto LABEL_31;
    case 0x15u:
      v26 = *(a1 + 80);
      goto LABEL_34;
    case 0x17u:
      v29 = *(a1 + 80);
      goto LABEL_48;
    case 0x18u:
      v30 = *(a1 + 80);
      goto LABEL_46;
    case 0x19u:
      v29 = *(a1 + 72);
LABEL_48:
      ++*(*(v29 + 8) + 72);
      return;
    case 0x1Au:
      v30 = *(a1 + 72);
LABEL_46:
      ++*(*(v30 + 8) + 64);
      return;
    case 0x1Bu:
      v26 = *(a1 + 72);
LABEL_34:
      ++*(*(v26 + 8) + 48);
      return;
    case 0x1Du:
    case 0x1Eu:
    case 0x1Fu:
      v23 = *(a1 + 72);
LABEL_31:
      ++*(*(v23 + 8) + 40);
      return;
    case 0x20u:
      v31 = *(a1 + 72);
      goto LABEL_44;
    case 0x21u:
      v31 = *(a1 + 80);
LABEL_44:
      *(*(v31 + 8) + 97) = 1;
      return;
    case 0x29u:
      if (*(a1 + 128) != 1)
      {
        return;
      }

      UInt64FromParam = getUInt64FromParam(a2[2], 8);
      v33 = getUInt64FromParam(a2[2], 9);
      if (UInt64FromParam == 2)
      {
        v34 = *(a1 + 56);
      }

      else
      {
        if (UInt64FromParam != 1)
        {
          return;
        }

        v34 = *(a1 + 40);
      }

      v36 = getStringFromParam(a2[2], 6);
      v35 = getStringFromParam(a2[2], 7);
      [v34 handleEventWithStr1:v36 str2:v35 num:v33];

      break;
    default:
      return;
  }
}

+ (void)_SKGEmbeddingXPCTimeline:(id)timeline updater:(id)updater block:(id)block
{
  timelineCopy = timeline;
  updaterCopy = updater;
  blockCopy = block;
  Calendar = getCalendar();
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 1;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%20s %10s %10s %10s %10s %10s", "timestamp", "cp_a", "cp_b", "cp_c", "cp_cx", "Priority"];
  blockCopy[2](blockCopy, v13);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__14;
  v23[4] = __Block_byref_object_dispose__14;
  v24 = 0;
  uTF8String = [timelineCopy UTF8String];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__SKGActivityJournalDecoder__SKGEmbeddingXPCTimeline_updater_block___block_invoke;
  v17[3] = &unk_27893E4B0;
  v22 = Calendar;
  v15 = dictionary;
  v18 = v15;
  v20 = v23;
  v16 = blockCopy;
  v19 = v16;
  v21 = v25;
  [self SKGActivityJournalPlayback:uTF8String block:v17];

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);
}

void __68__SKGActivityJournalDecoder__SKGEmbeddingXPCTimeline_updater_block___block_invoke(uint64_t a1, void **a2)
{
  v4 = *a2;
  if ((v4 - 35) >= 3)
  {
    if (v4 != 38)
    {
      return;
    }

    v25 = getStringFromParam(a2[2], 12);
    v14 = getStringFromParam(a2[2], 13);
    UInt32FromParam = getUInt32FromParam(a2[2], 10);
    v21 = *(a1 + 32);
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:UInt32FromParam];
    [v21 setValue:v19 forKey:v14];
    goto LABEL_7;
  }

  v25 = getDateString(*(a1 + 64), a2[1]);
  v23 = MEMORY[0x277CCACA8];
  v24 = [*(a1 + 32) objectForKeyedSubscript:@"cs_pc_a"];
  v22 = [v24 unsignedIntValue];
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"cs_pc_b"];
  v6 = [v5 unsignedIntValue];
  v7 = [*(a1 + 32) objectForKeyedSubscript:@"cs_pc_c"];
  v8 = [v7 unsignedIntValue];
  v9 = [*(a1 + 32) objectForKeyedSubscript:@"cs_pc_cx"];
  v10 = [v9 unsignedIntValue];
  v11 = [*(a1 + 32) objectForKeyedSubscript:@"cs_priority"];
  v12 = [v11 unsignedIntValue];
  v13 = [*(a1 + 32) objectForKeyedSubscript:@"cs_mail"];
  v14 = [v23 stringWithFormat:@"%10u %10u %10u %10u %10u %10u", v22, v6, v8, v10, v12, objc_msgSend(v13, "unsignedIntValue")];

  if (!*(*(*(a1 + 48) + 8) + 40) || ([v14 isEqualToString:?] & 1) == 0)
  {
    v15 = *(a1 + 40);
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%20s %@", objc_msgSend(v25, "UTF8String"), v14];
    (*(v15 + 16))(v15, v16);

    v17 = [v14 copy];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
LABEL_7:
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
}

+ (void)_SKGEmbeddingTimelineDump:(id)dump includePerf:(BOOL)perf dst:(__sFILE *)dst
{
  perfCopy = perf;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__SKGActivityJournalDecoder__SKGEmbeddingTimelineDump_includePerf_dst___block_invoke;
  v11[3] = &__block_descriptor_40_e8_v16__0_8l;
  v11[4] = dst;
  dumpCopy = dump;
  [self _SKGEmbeddingTimeline:dumpCopy includePerf:perfCopy block:v11];
  fwrite("------------------------- Embedding Journal Queue Timeline -------------------------------\n", 0x5BuLL, 1uLL, dst);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__SKGActivityJournalDecoder__SKGEmbeddingTimelineDump_includePerf_dst___block_invoke_2;
  v10[3] = &__block_descriptor_40_e18_v16__0__NSString_8l;
  v10[4] = dst;
  [self _SKGEmbeddingXPCTimeline:dumpCopy updater:@"embedding" block:v10];
  fwrite("------------------------- Priority Journal Queue Timeline -------------------------------\n", 0x5AuLL, 1uLL, dst);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__SKGActivityJournalDecoder__SKGEmbeddingTimelineDump_includePerf_dst___block_invoke_3;
  v9[3] = &__block_descriptor_40_e18_v16__0__NSString_8l;
  v9[4] = dst;
  [self _SKGEmbeddingXPCTimeline:dumpCopy updater:@"priority" block:v9];
}

uint64_t __71__SKGActivityJournalDecoder__SKGEmbeddingTimelineDump_includePerf_dst___block_invoke(uint64_t a1, char *a2)
{
  fputs(a2, *(a1 + 32));
  v3 = *(a1 + 32);

  return fputc(10, v3);
}

uint64_t __71__SKGActivityJournalDecoder__SKGEmbeddingTimelineDump_includePerf_dst___block_invoke_2(uint64_t a1, id a2)
{
  v4 = *(a1 + 32);
  v5 = a2;
  fputs([a2 UTF8String], v4);
  v6 = *(a1 + 32);

  return fputc(10, v6);
}

uint64_t __71__SKGActivityJournalDecoder__SKGEmbeddingTimelineDump_includePerf_dst___block_invoke_3(uint64_t a1, id a2)
{
  v4 = *(a1 + 32);
  v5 = a2;
  fputs([a2 UTF8String], v4);
  v6 = *(a1 + 32);

  return fputc(10, v6);
}

+ (void)_SKGActivityDump:(id)dump format:(unint64_t)format dst:(__sFILE *)dst
{
  v41[4] = *MEMORY[0x277D85DE8];
  dumpCopy = dump;
  Calendar = getCalendar();
  v10 = objc_alloc_init(MEMORY[0x277CCAA68]);
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  [v10 setTimeZone:systemTimeZone];

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v12 = dumpCopy;
  uTF8String = [dumpCopy UTF8String];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__SKGActivityJournalDecoder__SKGActivityDump_format_dst___block_invoke;
  v19[3] = &unk_27893E518;
  formatCopy = format;
  v25 = Calendar;
  dstCopy = dst;
  v14 = v10;
  selfCopy = self;
  v20 = v14;
  v21 = &v36;
  v22 = &v28;
  v23 = &v32;
  [self SKGActivityJournalPlayback:uTF8String block:v19];
  if (format)
  {
    if (format == 1)
    {
      v41[0] = @"totals";
      v40[0] = @"type";
      v40[1] = @"embCountFromPriorityUpdater";
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v37[3]];
      v41[1] = v15;
      v40[2] = @"priorityCountFromPriorityUpdater";
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v33[3]];
      v41[2] = v16;
      v40[3] = @"skipCountFromPriorityUpdater";
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v29[3]];
      v41[3] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4];

      [self _dumpNDJSONForDictionary:v18 dst:dst];
    }
  }

  else
  {
    fprintf(dst, "Total: embCountFromPriorityUpdater:%llu priorityCountFromPriorityUpdater:%llu skipCountFromPriorityUpdater:%llu \n", v37[3], v33[3], v29[3]);
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
}

void __57__SKGActivityJournalDecoder__SKGActivityDump_format_dst___block_invoke(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2;
  v56 = *MEMORY[0x277D85DE8];
  v4 = eventTypeToStr(*a2);
  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 == 1)
  {
    v53[0] = @"type";
    v53[1] = @"eventType";
    v54[0] = @"event";
    v54[1] = v4;
    v53[2] = @"timestamp";
    v24 = *(a1 + 32);
    v25 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(v2 + 1)];
    v26 = [v24 stringFromDate:v25];
    v54[2] = v26;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];
    v23 = [v27 mutableCopy];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v28 = *(v2 + 3);
    v29 = [v28 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v45;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v45 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v44 + 1) + 8 * i);
          v34 = [*(v2 + 2) objectForKeyedSubscript:v33];
          v35 = paramTypeToStr([v33 unsignedIntValue]);
          [v23 setObject:v34 forKeyedSubscript:v35];
        }

        v30 = [v28 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v30);
    }

    [*(a1 + 88) _dumpNDJSONForDictionary:v23 dst:*(a1 + 80)];
  }

  else
  {
    if (v6)
    {
      goto LABEL_22;
    }

    v7 = getDateString(*(a1 + 72), *(v2 + 1));
    v43 = *(v2 + 2);
    v42 = v5;
    v40 = v7;
    v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ %@", v7, v5];
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v41 = v2;
    v9 = *(v2 + 3);
    v10 = [v9 countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v49;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v49 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v48 + 1) + 8 * j);
          v15 = objc_alloc(MEMORY[0x277CCACA8]);
          v16 = paramTypeToStr([v14 unsignedIntValue]);
          v17 = [v43 objectForKeyedSubscript:v14];
          v18 = [v15 initWithFormat:@"%@: %@", v16, v17];
          [v8 addObject:v18];
        }

        v11 = [v9 countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v11);
    }

    v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@", v39];
    if ([v8 count])
    {
      v20 = objc_alloc(MEMORY[0x277CCACA8]);
      v21 = [v8 componentsJoinedByString:@" "];
      v22 = [v20 initWithFormat:@"%@ - %@", v39, v21];

      v19 = v22;
    }

    v23 = v40;
    fprintf(*(a1 + 80), "%s\n", [v19 UTF8String]);

    v2 = v41;
    v5 = v42;
  }

LABEL_22:
  v36 = *v2;
  switch(v36)
  {
    case 20:
      UInt32FromParam = 1;
      v37 = 48;
      goto LABEL_29;
    case 21:
      v37 = 40;
      goto LABEL_27;
    case 22:
      v37 = 56;
LABEL_27:
      UInt32FromParam = getUInt32FromParam(*(v2 + 2), 10);
LABEL_29:
      *(*(*(a1 + v37) + 8) + 24) += UInt32FromParam;
      break;
  }
}

+ (void)_dumpNDJSONForDictionary:(id)dictionary dst:(__sFILE *)dst
{
  v8 = 0;
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionary options:0 error:&v8];
  v6 = v8;
  if (v5)
  {
    fwrite([v5 bytes], objc_msgSend(v5, "length"), 1uLL, dst);
    fputs("\n", dst);
  }

  else if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v7 = SKGLogJournalInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SKGActivityJournalDecoder _dumpNDJSONForDictionary:v6 dst:v7];
    }
  }
}

+ (void)_dumpNDJSONForDictionary:(uint64_t)a1 dst:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_231B25000, a2, OS_LOG_TYPE_ERROR, "Couldn't encode activity journal JSON: %@", &v2, 0xCu);
}

@end