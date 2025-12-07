@interface CSEventListenerManagerDefaultSignposter
- (unint64_t)beginProcessJournalsInterval;
- (void)endProcessJournalsIntervalWithSignpostID:(unint64_t)d stopReason:(id)reason indexType:(int)type taskName:(id)name processedJournalsCount:(unint64_t)count journalQueueCount:(unint64_t)queueCount;
@end

@implementation CSEventListenerManagerDefaultSignposter

- (unint64_t)beginProcessJournalsInterval
{
  v2 = SKGLogUpdaterInit();
  v3 = os_signpost_id_generate(v2);

  v4 = SKGLogUpdaterInit();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "ProcessJournals", "", v7, 2u);
  }

  return v3;
}

- (void)endProcessJournalsIntervalWithSignpostID:(unint64_t)d stopReason:(id)reason indexType:(int)type taskName:(id)name processedJournalsCount:(unint64_t)count journalQueueCount:(unint64_t)queueCount
{
  v27 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  nameCopy = name;
  v15 = SKGLogUpdaterInit();
  v16 = v15;
  if (d - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v17 = 138544386;
    v18 = reasonCopy;
    v19 = 1024;
    typeCopy = type;
    v21 = 2112;
    v22 = nameCopy;
    v23 = 2048;
    countCopy = count;
    v25 = 2048;
    queueCountCopy = queueCount;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v16, OS_SIGNPOST_INTERVAL_END, d, "ProcessJournals", "stopReason=%{public}@ indexType=%d taskName=%@ processedJournalsCount=%lu journalQueueCount=%lu", &v17, 0x30u);
  }
}

@end