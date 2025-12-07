@interface NFLPCDStatisticsCALogger
+ (void)postAnalyticsLPCDStatistic:(id)statistic;
@end

@implementation NFLPCDStatisticsCALogger

+ (void)postAnalyticsLPCDStatistic:(id)statistic
{
  v39[8] = *MEMORY[0x277D85DE8];
  statisticCopy = statistic;
  v6 = objc_msgSend_sharedCALogger(NFCALogger, v4, v5);
  v9 = objc_msgSend_generateDailyUUIDForCA(v6, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(statisticCopy, v10, @"falseDetectionCount");

  if (v11)
  {
    v38[0] = @"falseDetectionCount";
    v14 = objc_msgSend_objectForKeyedSubscript_(statisticCopy, v12, @"falseDetectionCount");
    v39[0] = v14;
    v39[1] = &unk_2843B4C98;
    v38[1] = @"tagType1ReadSuccessCount";
    v38[2] = @"tagType2ReadSuccessCount";
    v39[2] = &unk_2843B4C98;
    v39[3] = &unk_2843B4C98;
    v38[3] = @"tagType3ReadSuccessCount";
    v38[4] = @"tagType4ReadSuccessCount";
    v39[4] = &unk_2843B4C98;
    v39[5] = &unk_2843B4C98;
    v38[5] = @"tagType5ReadSuccessCount";
    v38[6] = @"notNDEFFormatedTagCount";
    v38[7] = @"dailyDeviceUUID";
    v15 = @"noUUID";
    if (v9)
    {
      v15 = v9;
    }

    v39[6] = &unk_2843B4C98;
    v39[7] = v15;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v39, v38, 8);
    v21 = LABEL_9:;
    goto LABEL_10;
  }

  v16 = objc_msgSend_objectForKeyedSubscript_(statisticCopy, v12, @"notNDEFFormatedTagCount");

  if (v16)
  {
    v36[0] = @"falseDetectionCount";
    v36[1] = @"tagType1ReadSuccessCount";
    v37[0] = &unk_2843B4C98;
    v37[1] = &unk_2843B4C98;
    v36[2] = @"tagType2ReadSuccessCount";
    v36[3] = @"tagType3ReadSuccessCount";
    v37[2] = &unk_2843B4C98;
    v37[3] = &unk_2843B4C98;
    v36[4] = @"tagType4ReadSuccessCount";
    v36[5] = @"tagType5ReadSuccessCount";
    v37[4] = &unk_2843B4C98;
    v37[5] = &unk_2843B4C98;
    v36[6] = @"notNDEFFormatedTagCount";
    v18 = objc_msgSend_objectForKeyedSubscript_(statisticCopy, v17, @"notNDEFFormatedTagCount");
    v14 = v18;
    v36[7] = @"dailyDeviceUUID";
    v20 = @"noUUID";
    if (v9)
    {
      v20 = v9;
    }

    v37[6] = v18;
    v37[7] = v20;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v37, v36, 8);
    goto LABEL_9;
  }

  v35[0] = &unk_2843B4C98;
  v14 = objc_msgSend_objectForKeyedSubscript_(statisticCopy, v17, @"tagType1ReadSuccessCount", @"falseDetectionCount", @"tagType1ReadSuccessCount");
  v35[1] = v14;
  v34[2] = @"tagType2ReadSuccessCount";
  v25 = objc_msgSend_objectForKeyedSubscript_(statisticCopy, v24, @"tagType2ReadSuccessCount");
  v35[2] = v25;
  v34[3] = @"tagType3ReadSuccessCount";
  v27 = objc_msgSend_objectForKeyedSubscript_(statisticCopy, v26, @"tagType3ReadSuccessCount");
  v35[3] = v27;
  v34[4] = @"tagType4ReadSuccessCount";
  v29 = objc_msgSend_objectForKeyedSubscript_(statisticCopy, v28, @"tagType4ReadSuccessCount");
  v35[4] = v29;
  v34[5] = @"tagType5ReadSuccessCount";
  v32 = objc_msgSend_objectForKeyedSubscript_(statisticCopy, v30, @"tagType5ReadSuccessCount");
  v35[5] = v32;
  v35[6] = &unk_2843B4C98;
  v34[6] = @"notNDEFFormatedTagCount";
  v34[7] = @"dailyDeviceUUID";
  if (v9)
  {
    v33 = v9;
  }

  else
  {
    v33 = @"noUUID";
  }

  v35[7] = v33;
  v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v35, v34, 8);

LABEL_10:
  v22 = objc_autoreleasePoolPush();
  objc_msgSend_postCAEventFor_eventInput_(v6, v23, @"com.apple.nfcd.lpcdStatistic", v21);
  objc_autoreleasePoolPop(v22);
}

@end