@interface HMMRTCReportingFactory
- (id)sessionWithServiceName:(id)name samplingUUID:(id)d containsRealtime:(BOOL)realtime;
@end

@implementation HMMRTCReportingFactory

- (id)sessionWithServiceName:(id)name samplingUUID:(id)d containsRealtime:(BOOL)realtime
{
  realtimeCopy = realtime;
  v34 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v8 = *MEMORY[0x277D44040];
  v20 = *MEMORY[0x277D44030];
  v21 = v8;
  v27 = &unk_283EF3CD8;
  v28 = &unk_283EF3D38;
  v9 = *MEMORY[0x277D44010];
  v22 = *MEMORY[0x277D44080];
  v23 = v9;
  v10 = MEMORY[0x277CBEC38];
  if (realtimeCopy)
  {
    v10 = MEMORY[0x277CBEC28];
  }

  v29 = &unk_283EF3CF0;
  v30 = v10;
  v24 = *MEMORY[0x277D44070];
  uUIDString = [d UUIDString];
  v31 = uUIDString;
  v25 = *MEMORY[0x277D44050];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:realtimeCopy];
  v26 = *MEMORY[0x277D44028];
  v32 = v12;
  v33 = @"com.apple.HomeKitDaemon";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v20 count:7];

  v14 = *MEMORY[0x277D44098];
  v20 = *MEMORY[0x277D44090];
  v21 = v14;
  v27 = @"home";
  v28 = nameCopy;
  v15 = MEMORY[0x277CBEAC0];
  v16 = nameCopy;
  v17 = [v15 dictionaryWithObjects:&v27 forKeys:&v20 count:2];

  v18 = [objc_alloc(MEMORY[0x277D43FE0]) initWithSessionInfo:v13 userInfo:v17 frameworksToCheck:0];

  return v18;
}

@end