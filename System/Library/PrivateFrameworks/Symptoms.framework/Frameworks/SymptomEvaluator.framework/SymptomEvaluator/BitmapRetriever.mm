@interface BitmapRetriever
+ (id)sharedInstance;
- (id)_getActivityBitmapsWithNames:(id)names startTime:(unint64_t)time endTime:(unint64_t)endTime format:(int)format interface:(unsigned __int8)interface;
- (id)_getActivityBitmapsWithNames:(id)names startTime:(unint64_t)time endTime:(unint64_t)endTime options:(id)options interface:(unsigned __int8)interface;
- (id)_rolledActivityBitmapsWithNames:(id)names startTime:(unint64_t)time endTime:(unint64_t)endTime format:(int)format interface:(unsigned __int8)interface;
- (void)dumpActivityBitmap;
- (void)enumerateActivityBitmapsOnInterface:(unsigned __int8)interface usingBlock:(id)block;
- (void)getActivityBitmapsWithNames:(id)names currMachAbsTime:(unint64_t)time startTime:(unint64_t)startTime endTime:(unint64_t)endTime options:(id)options reply:(id)reply;
- (void)tallyUpActivityBitmapsForInterface:(unsigned __int8)interface queue:(id)queue replyQueue:(id)replyQueue reply:(id)reply;
@end

@implementation BitmapRetriever

- (id)_rolledActivityBitmapsWithNames:(id)names startTime:(unint64_t)time endTime:(unint64_t)endTime format:(int)format interface:(unsigned __int8)interface
{
  interfaceCopy = interface;
  v64 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__BitmapRetriever__rolledActivityBitmapsWithNames_startTime_endTime_format_interface___block_invoke;
  aBlock[3] = &unk_27898B600;
  timeCopy = time;
  endTimeCopy = endTime;
  v42 = namesCopy;
  v57 = v42;
  v43 = v12;
  v58 = v43;
  formatCopy = format;
  v13 = _Block_copy(aBlock);
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:interfaceCopy];
  +[FlowScrutinizer sharedInstance];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v41 = v55 = 0u;
  originLedgers = [v41 originLedgers];
  allValues = [originLedgers allValues];

  obj = allValues;
  v46 = [allValues countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v46)
  {
    v45 = *v53;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v53 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v52 + 1) + 8 * i);
        activityBitmaps = [v18 activityBitmaps];

        if (activityBitmaps)
        {
          activityBitmaps2 = [v18 activityBitmaps];
          v21 = [activityBitmaps2 objectForKeyedSubscript:v14];

          if (v21)
          {
            name = [v18 name];
            activityBitmaps3 = [v18 activityBitmaps];
            v24 = [activityBitmaps3 objectForKeyedSubscript:v14];
            v13[2](v13, name, v24);
          }
        }

        appExtensions = [v18 appExtensions];

        if (appExtensions)
        {
          v47 = i;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          appExtensions2 = [v18 appExtensions];
          allValues2 = [appExtensions2 allValues];

          v28 = [allValues2 countByEnumeratingWithState:&v48 objects:v62 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v49;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v49 != v30)
                {
                  objc_enumerationMutation(allValues2);
                }

                v32 = *(*(&v48 + 1) + 8 * j);
                activityBitmaps4 = [v32 activityBitmaps];

                if (activityBitmaps4)
                {
                  activityBitmaps5 = [v32 activityBitmaps];
                  v35 = [activityBitmaps5 objectForKeyedSubscript:v14];

                  if (v35)
                  {
                    name2 = [v18 name];
                    activityBitmaps6 = [v32 activityBitmaps];
                    v38 = [activityBitmaps6 objectForKeyedSubscript:v14];
                    v13[2](v13, name2, v38);
                  }
                }
              }

              v29 = [allValues2 countByEnumeratingWithState:&v48 objects:v62 count:16];
            }

            while (v29);
          }

          i = v47;
        }
      }

      v46 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v46);
  }

  v39 = v43;
  return v43;
}

void __86__BitmapRetriever__rolledActivityBitmapsWithNames_startTime_endTime_format_interface___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  v6 = [v5 getWrappedBitmapsFromTime:*(a1 + 48) toTime:*(a1 + 56)];
  if (v22)
  {
    if (v6)
    {
      if (![*(a1 + 32) count] || (v7 = *(a1 + 32), objc_msgSend(v5, "appName"), v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = objc_msgSend(v7, "containsObject:", v8), v8, v7))
      {
        v9 = [*(a1 + 40) objectForKeyedSubscript:v22];

        v10 = *(a1 + 64);
        if (v9)
        {
          v11 = [*(a1 + 40) objectForKeyedSubscript:v22];
          v12 = v11;
          if (v10 != 1)
          {
            v13 = [v11 objectForKeyedSubscript:@"Bitmap"];

            v12 = v13;
          }

          if (v12)
          {
            v14 = [v12 bytes];
            v15 = [v6 bytes];
            if ([v12 length])
            {
              v16 = 0;
              do
              {
                *(v14 + v16) |= *(v15 + v16);
                ++v16;
              }

              while (v16 < [v12 length]);
            }

            if (!*(a1 + 64))
            {
              v17 = [*(a1 + 40) objectForKeyedSubscript:v22];
              v18 = [v17 objectForKeyedSubscript:@"BitmapActualStartTime"];
              v19 = [v5 startTime];
              if (v19 < [v18 unsignedLongLongValue])
              {
                v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "startTime")}];
                [v17 setObject:v20 forKeyedSubscript:@"BitmapActualStartTime"];
              }
            }
          }
        }

        else
        {
          if (v10 == 1)
          {
            [*(a1 + 40) setObject:v6 forKeyedSubscript:v22];
            goto LABEL_22;
          }

          v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [v12 setObject:v6 forKeyedSubscript:@"Bitmap"];
          if (!*(a1 + 64))
          {
            v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v5, "startTime")}];
            [v12 setObject:v21 forKeyedSubscript:@"BitmapActualStartTime"];
          }

          [*(a1 + 40) setObject:v12 forKeyedSubscript:v22];
        }
      }
    }
  }

LABEL_22:
}

- (id)_getActivityBitmapsWithNames:(id)names startTime:(unint64_t)time endTime:(unint64_t)endTime format:(int)format interface:(unsigned __int8)interface
{
  interfaceCopy = interface;
  namesCopy = names;
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__BitmapRetriever__getActivityBitmapsWithNames_startTime_endTime_format_interface___block_invoke;
  v19[3] = &unk_27898B628;
  timeCopy = time;
  endTimeCopy = endTime;
  v20 = namesCopy;
  formatCopy = format;
  v14 = v13;
  v21 = v14;
  v15 = namesCopy;
  [(BitmapRetriever *)self enumerateActivityBitmapsOnInterface:interfaceCopy usingBlock:v19];
  v16 = v21;
  v17 = v14;

  return v14;
}

void __83__BitmapRetriever__getActivityBitmapsWithNames_startTime_endTime_format_interface___block_invoke(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 getWrappedBitmapsFromTime:*(a1 + 48) toTime:*(a1 + 56)];
  if (v4)
  {
    if (![*(a1 + 32) count] || (v5 = *(a1 + 32), objc_msgSend(v3, "appName"), v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = objc_msgSend(v5, "containsObject:", v6), v6, v5))
    {
      v7 = *(a1 + 64);
      switch(v7)
      {
        case 2:
          v14 = @"Bitmap";
          v15 = v4;
          v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
          v13 = *(a1 + 40);
          v9 = [v3 appName];
          [v13 setObject:v8 forKeyedSubscript:v9];
          goto LABEL_10;
        case 1:
          v12 = *(a1 + 40);
          v8 = [v3 appName];
          [v12 setObject:v4 forKeyedSubscript:v8];
LABEL_11:

          break;
        case 0:
          v16[0] = @"Bitmap";
          v16[1] = @"BitmapActualStartTime";
          v17[0] = v4;
          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v3, "startTime")}];
          v17[1] = v8;
          v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
          v10 = *(a1 + 40);
          v11 = [v3 appName];
          [v10 setObject:v9 forKeyedSubscript:v11];

LABEL_10:
          goto LABEL_11;
      }
    }
  }
}

- (id)_getActivityBitmapsWithNames:(id)names startTime:(unint64_t)time endTime:(unint64_t)endTime options:(id)options interface:(unsigned __int8)interface
{
  interfaceCopy = interface;
  namesCopy = names;
  optionsCopy = options;
  v14 = optionsCopy;
  if (optionsCopy)
  {
    v26 = interfaceCopy;
    v15 = [optionsCopy objectForKeyedSubscript:@"ShowExtensionBitmaps"];
    v16 = v15;
    if (v15)
    {
      bOOLValue = [v15 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v19 = [v14 objectForKeyedSubscript:@"ShowConciseFormat"];
    v20 = v19;
    if (v19)
    {
      bOOLValue2 = [v19 BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
    }

    v21 = [v14 objectForKeyedSubscript:@"ShowIntermediateFormat"];
    v22 = v21;
    if (v21)
    {
      if ([v21 BOOLValue])
      {
        bOOLValue2 = 2;
      }

      else
      {
        bOOLValue2 = bOOLValue2;
      }
    }

    if (bOOLValue)
    {
      v23 = [(BitmapRetriever *)self _getActivityBitmapsWithNames:namesCopy startTime:time endTime:endTime format:bOOLValue2 interface:v26];
      goto LABEL_17;
    }

    interfaceCopy = v26;
  }

  else
  {
    bOOLValue2 = 0;
  }

  v23 = [(BitmapRetriever *)self _rolledActivityBitmapsWithNames:namesCopy startTime:time endTime:endTime format:bOOLValue2 interface:interfaceCopy];
LABEL_17:
  v24 = v23;

  return v24;
}

- (void)getActivityBitmapsWithNames:(id)names currMachAbsTime:(unint64_t)time startTime:(unint64_t)startTime endTime:(unint64_t)endTime options:(id)options reply:(id)reply
{
  v26[7] = *MEMORY[0x277D85DE8];
  endTimeCopy = endTime;
  startTimeCopy = startTime;
  replyCopy = reply;
  optionsCopy = options;
  namesCopy = names;
  [SFActivityBitmaps adjustStartTime:&startTimeCopy endTime:&endTimeCopy currMachAbsTime:time];
  v15 = [(BitmapRetriever *)self _getActivityBitmapsWithNames:namesCopy startTime:startTimeCopy endTime:endTimeCopy options:optionsCopy interface:3];
  v16 = [(BitmapRetriever *)self _getActivityBitmapsWithNames:namesCopy startTime:startTimeCopy endTime:endTimeCopy options:optionsCopy interface:4];
  v17 = [(BitmapRetriever *)self _getActivityBitmapsWithNames:namesCopy startTime:startTimeCopy endTime:endTimeCopy options:optionsCopy interface:5];
  v18 = [(BitmapRetriever *)self _getActivityBitmapsWithNames:namesCopy startTime:startTimeCopy endTime:endTimeCopy options:optionsCopy interface:7];

  v25[0] = @"StartTime";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:startTimeCopy];
  v26[0] = v19;
  v25[1] = @"EndTime";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:endTimeCopy];
  v26[1] = v20;
  v25[2] = @"CurrentMachAbsTime";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:time];
  v26[2] = v21;
  v26[3] = v15;
  v25[3] = @"WiFi";
  v25[4] = @"WiFiNonInfra";
  v26[4] = v16;
  v26[5] = v17;
  v25[5] = @"Cellular";
  v25[6] = @"IPSec";
  v26[6] = v18;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];

  replyCopy[2](replyCopy, v22);
}

- (void)enumerateActivityBitmapsOnInterface:(unsigned __int8)interface usingBlock:(id)block
{
  interfaceCopy = interface;
  v47 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    +[FlowScrutinizer sharedInstance];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = v44 = 0u;
    originLedgers = [v32 originLedgers];
    allValues = [originLedgers allValues];

    obj = allValues;
    v35 = [allValues countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v35)
    {
      v34 = *v42;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v42 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v41 + 1) + 8 * i);
          activityBitmaps = [v9 activityBitmaps];

          if (activityBitmaps)
          {
            activityBitmaps2 = [v9 activityBitmaps];
            v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:interfaceCopy];
            v13 = [activityBitmaps2 objectForKeyedSubscript:v12];

            if (v13)
            {
              activityBitmaps3 = [v9 activityBitmaps];
              v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:interfaceCopy];
              v16 = [activityBitmaps3 objectForKeyedSubscript:v15];
              blockCopy[2](blockCopy, v16);
            }
          }

          appExtensions = [v9 appExtensions];

          if (appExtensions)
          {
            v36 = i;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            appExtensions2 = [v9 appExtensions];
            allValues2 = [appExtensions2 allValues];

            v20 = [allValues2 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v38;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v38 != v22)
                  {
                    objc_enumerationMutation(allValues2);
                  }

                  v24 = *(*(&v37 + 1) + 8 * j);
                  activityBitmaps4 = [v24 activityBitmaps];

                  if (activityBitmaps4)
                  {
                    activityBitmaps5 = [v24 activityBitmaps];
                    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:interfaceCopy];
                    v28 = [activityBitmaps5 objectForKeyedSubscript:v27];

                    if (v28)
                    {
                      activityBitmaps6 = [v24 activityBitmaps];
                      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:interfaceCopy];
                      v31 = [activityBitmaps6 objectForKeyedSubscript:v30];
                      blockCopy[2](blockCopy, v31);
                    }
                  }
                }

                v21 = [allValues2 countByEnumeratingWithState:&v37 objects:v45 count:16];
              }

              while (v21);
            }

            i = v36;
          }
        }

        v35 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v35);
    }
  }
}

- (void)tallyUpActivityBitmapsForInterface:(unsigned __int8)interface queue:(id)queue replyQueue:(id)replyQueue reply:(id)reply
{
  replyQueueCopy = replyQueue;
  replyCopy = reply;
  v12 = replyCopy;
  if (queue && replyQueueCopy && replyCopy)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __77__BitmapRetriever_tallyUpActivityBitmapsForInterface_queue_replyQueue_reply___block_invoke;
    v13[3] = &unk_27898B6A0;
    v13[4] = self;
    interfaceCopy = interface;
    v14 = replyQueueCopy;
    v15 = v12;
    dispatch_async(queue, v13);
  }
}

void __77__BitmapRetriever_tallyUpActivityBitmapsForInterface_queue_replyQueue_reply___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__BitmapRetriever_tallyUpActivityBitmapsForInterface_queue_replyQueue_reply___block_invoke_2;
  v12[3] = &unk_27898B650;
  v5 = v2;
  v13 = v5;
  [v3 enumerateActivityBitmapsOnInterface:v4 usingBlock:v12];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__BitmapRetriever_tallyUpActivityBitmapsForInterface_queue_replyQueue_reply___block_invoke_3;
  block[3] = &unk_27898B678;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)dumpActivityBitmap
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "=========================== Start of NetworkActivityBitmap Dump ===========================", &v8, 2u);
  }

  v4 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"WiFi";
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "[%@]", &v8, 0xCu);
  }

  [(BitmapRetriever *)self enumerateActivityBitmapsOnInterface:3 usingBlock:&__block_literal_global_7];
  v5 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"Cellular";
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "[%@]", &v8, 0xCu);
  }

  [(BitmapRetriever *)self enumerateActivityBitmapsOnInterface:5 usingBlock:&__block_literal_global_9];
  v6 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = @"IPSec";
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "[%@]", &v8, 0xCu);
  }

  [(BitmapRetriever *)self enumerateActivityBitmapsOnInterface:7 usingBlock:&__block_literal_global_12];
  v7 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "=========================== End of NetworkActivityBitmap Dump ===========================", &v8, 2u);
  }
}

void __37__BitmapRetriever_dumpActivityBitmap__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [v2 appName];
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "  %@: %@", &v6, 0x16u);
  }
}

void __37__BitmapRetriever_dumpActivityBitmap__block_invoke_7(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [v2 appName];
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "  %@: %@", &v6, 0x16u);
  }
}

void __37__BitmapRetriever_dumpActivityBitmap__block_invoke_10(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [v2 appName];
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "  %@: %@", &v6, 0x16u);
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__BitmapRetriever_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_8 != -1)
  {
    dispatch_once(&sharedInstance_pred_8, block);
  }

  v2 = sharedInstance_sharedInstance_8;

  return v2;
}

uint64_t __33__BitmapRetriever_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_8;
  sharedInstance_sharedInstance_8 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end