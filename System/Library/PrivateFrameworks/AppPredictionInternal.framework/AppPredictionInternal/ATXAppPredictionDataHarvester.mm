@interface ATXAppPredictionDataHarvester
+ (id)_generateLoggingDictionaryFromPredictionItem:(id)item itemIndex:(unint64_t)index sessionUUID:(id)d numItemsInSession:(unint64_t)session;
+ (void)harvestDataFromActionPredictionItem:(id)item isMenuItem:(BOOL)menuItem itemIndex:(unint64_t)index itemOutcome:(unint64_t)outcome sessionOutcome:(unint64_t)sessionOutcome sessionUUID:(id)d numItemsInSession:(unint64_t)session;
+ (void)harvestDataFromDocumentPredictionItem:(const ATXPredictionItem *)item itemIndex:(unint64_t)index itemOutcome:(unint64_t)outcome sessionOutcome:(unint64_t)sessionOutcome sessionUUID:(id)d numItemsInSession:(unint64_t)session;
+ (void)harvestDataFromPredictionItem:(id)item itemIndex:(unint64_t)index itemOutcome:(unint64_t)outcome sessionOutcome:(unint64_t)sessionOutcome sessionUUID:(id)d numItemsInSession:(unint64_t)session;
@end

@implementation ATXAppPredictionDataHarvester

+ (void)harvestDataFromPredictionItem:(id)item itemIndex:(unint64_t)index itemOutcome:(unint64_t)outcome sessionOutcome:(unint64_t)sessionOutcome sessionUUID:(id)d numItemsInSession:(unint64_t)session
{
  itemCopy = item;
  dCopy = d;
  v15 = __atxlog_handle_default(dCopy);
  v16 = os_signpost_id_generate(v15);

  v18 = __atxlog_handle_default(v17);
  v19 = v18;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v16, "ATXAppPredictionDataHarvester.dataCollection", " enableTelemetry=YES ", buf, 2u);
  }

  v20 = [ATXAppPredictionDataHarvester _generateLoggingDictionaryFromPredictionItem:itemCopy itemIndex:index sessionUUID:dCopy numItemsInSession:session];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:outcome];
  [v20 setObject:v21 forKeyedSubscript:@"itemOutcome"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sessionOutcome];
  [v20 setObject:v22 forKeyedSubscript:@"sessionOutcome"];

  v23 = AnalyticsSendEvent();
  v24 = __atxlog_handle_default(v23);
  v25 = v24;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *v26 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v25, OS_SIGNPOST_INTERVAL_END, v16, "ATXAppPredictionDataHarvester.dataCollection", " enableTelemetry=YES ", v26, 2u);
  }
}

+ (id)_generateLoggingDictionaryFromPredictionItem:(id)item itemIndex:(unint64_t)index sessionUUID:(id)d numItemsInSession:(unint64_t)session
{
  itemCopy = item;
  dCopy = d;
  v10 = objc_opt_new();
  for (i = 0; i != 828; ++i)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = MEMORY[0x277CCABB0];
    LODWORD(v14) = *([itemCopy scoreInputs] + 4 * i);
    v15 = [v13 numberWithFloat:v14];
    v16 = [_ATXScoreTypes aggdStringForScoreInput:i];
    [v10 setObject:v15 forKeyedSubscript:v16];

    objc_autoreleasePoolPop(v12);
  }

  v17 = MEMORY[0x277CCABB0];
  [itemCopy totalScore];
  v18 = [v17 numberWithFloat:?];
  [v10 setObject:v18 forKeyedSubscript:@"score"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  [v10 setObject:v19 forKeyedSubscript:@"itemIndex"];

  [v10 setObject:dCopy forKeyedSubscript:@"sessionUUID"];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:session];
  [v10 setObject:v20 forKeyedSubscript:@"numItemsInSession"];

  return v10;
}

+ (void)harvestDataFromActionPredictionItem:(id)item isMenuItem:(BOOL)menuItem itemIndex:(unint64_t)index itemOutcome:(unint64_t)outcome sessionOutcome:(unint64_t)sessionOutcome sessionUUID:(id)d numItemsInSession:(unint64_t)session
{
  menuItemCopy = menuItem;
  itemCopy = item;
  dCopy = d;
  v16 = __atxlog_handle_default(dCopy);
  v17 = os_signpost_id_generate(v16);

  v19 = __atxlog_handle_default(v18);
  v20 = v19;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v17, "ATXAppPredictionDataHarvester.action.dataCollection", " enableTelemetry=YES ", buf, 2u);
  }

  v21 = [ATXAppPredictionDataHarvester _generateLoggingDictionaryFromPredictionItem:itemCopy itemIndex:index sessionUUID:dCopy numItemsInSession:session];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:outcome];
  [v21 setObject:v22 forKeyedSubscript:@"actionItemOutcome"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sessionOutcome];
  [v21 setObject:v23 forKeyedSubscript:@"actionSessionOutcome"];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:menuItemCopy];
  [v21 setObject:v24 forKeyedSubscript:@"isMenuItem"];

  v25 = AnalyticsSendEvent();
  v26 = __atxlog_handle_default(v25);
  v27 = v26;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *v28 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v27, OS_SIGNPOST_INTERVAL_END, v17, "ATXAppPredictionDataHarvester.action.dataCollection", " enableTelemetry=YES ", v28, 2u);
  }
}

+ (void)harvestDataFromDocumentPredictionItem:(const ATXPredictionItem *)item itemIndex:(unint64_t)index itemOutcome:(unint64_t)outcome sessionOutcome:(unint64_t)sessionOutcome sessionUUID:(id)d numItemsInSession:(unint64_t)session
{
  dCopy = d;
  v13 = __atxlog_handle_default(dCopy);
  v14 = os_signpost_id_generate(v13);

  v16 = __atxlog_handle_default(v15);
  v17 = v16;
  v34 = v14 - 1;
  sessionCopy = session;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v14, "ATXAppPredictionDataHarvester.document.dataCollection", " enableTelemetry=YES ", buf, 2u);
  }

  v18 = objc_opt_new();
  spid = v14;
  for (i = 0; i != 828; ++i)
  {
    v20 = objc_autoreleasePoolPush();
    *&v21 = item->inputSignals[i];
    v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
    v23 = [_ATXScoreTypes aggdStringForScoreInput:i];
    [v18 setObject:v22 forKeyedSubscript:v23];

    objc_autoreleasePoolPop(v20);
  }

  *&v24 = item->score;
  v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
  [v18 setObject:v25 forKeyedSubscript:@"score"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  [v18 setObject:v26 forKeyedSubscript:@"itemIndex"];

  [v18 setObject:dCopy forKeyedSubscript:@"sessionUUID"];
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:outcome];
  [v18 setObject:v27 forKeyedSubscript:@"documentItemOutcome"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sessionOutcome];
  [v18 setObject:v28 forKeyedSubscript:@"documentSessionOutcome"];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:sessionCopy];
  [v18 setObject:v29 forKeyedSubscript:@"numItemsInSession"];

  v30 = AnalyticsSendEvent();
  v31 = __atxlog_handle_default(v30);
  v32 = v31;
  if (v34 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *v37 = 0;
    _os_signpost_emit_with_name_impl(&dword_2263AA000, v32, OS_SIGNPOST_INTERVAL_END, spid, "ATXAppPredictionDataHarvester.document.dataCollection", " enableTelemetry=YES ", v37, 2u);
  }
}

@end