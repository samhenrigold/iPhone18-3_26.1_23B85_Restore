@interface AppHistoryScreenerEpisodeFixed
- (AppHistoryScreenerEpisodeFixed)initWithLabel:(id)label toValue:(BOOL)value;
@end

@implementation AppHistoryScreenerEpisodeFixed

- (AppHistoryScreenerEpisodeFixed)initWithLabel:(id)label toValue:(BOOL)value
{
  valueCopy = value;
  v17 = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = AppHistoryScreenerEpisodeFixed;
  v7 = [(AppHistoryScreenerEpisodeFixed *)&v12 init];
  v8 = v7;
  if (v7)
  {
    [(AppHistoryScreenerEpisode *)v7 setScreenIn:valueCopy];
    v9 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      v10 = "OUT";
      if (valueCopy)
      {
        v10 = "IN";
      }

      *buf = 136315394;
      v14 = v10;
      v15 = 2112;
      v16 = labelCopy;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "App episode FIXED %s created for label: %@", buf, 0x16u);
    }
  }

  return v8;
}

@end