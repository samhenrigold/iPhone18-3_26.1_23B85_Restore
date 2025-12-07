@interface WCM_SacManager
+ (__TelephonyBasebandControllerHandle_tag)basebandController;
- (BOOL)isEqualFreqList:(id)list List2:(id)list2;
- (WCM_SacManager)initWithPlatformId:(unint64_t)id;
- (id)getInsertObjIndex:(id)index fromOther:(id)other;
- (id)getRemoveObjIndex:(id)index fromOther:(id)other;
- (id)printPlistParam;
- (unsigned)sacCreateRawFreqList:(id)list bufferSize:(unsigned int)size buffer:(__AppleBasebandVictimFreq *)buffer;
- (unsigned)sacGetPlatformPlistIdx:(int64_t)idx;
- (void)dealloc;
- (void)freqAscendSort:(id)sort;
- (void)frequencyToolAddCellularFreq:(unint64_t)freq bandwidth:(unint64_t)bandwidth freqType:(int)type;
- (void)frequencyToolAddClientFreq:(int)freq centerFreq:(unint64_t)centerFreq bandwidth:(unint64_t)bandwidth celluarCarrierType:(int)type;
- (void)frequencyToolClearFreq:(int)freq;
- (void)frequencyToolGetJasperResult:(id)result generalSacResult:(id)sacResult client:(int)client;
- (void)frequencyToolRemoveFreq:(int)freq centerFreq:(unint64_t)centerFreq bandwidth:(unint64_t)bandwidth;
- (void)removeFreqFromArray:(id)array centerFreq:(unint64_t)freq bandwidth:(unint64_t)bandwidth;
- (void)sacMergeFreqInterval:(id)interval;
- (void)sacProcessCellularMeasFreqInfo:(id)info onSubId:(unsigned int)id;
- (void)sacProcessCellularPrimaryFreqInfo:(id)info onSubId:(unsigned int)id;
- (void)sacProcessCellularSecondaryFreqInfo:(id)info onSubId:(unsigned int)id;
- (void)sacProcessGnssFreqInfo:(id)info;
- (void)sacProcessWiFiFreqInfo:(id)info;
- (void)sacRemoveAllCellularFreqOnSubId0:(BOOL)id0 andSubId1:(BOOL)id1;
- (void)sacRemoveAllGnssFreq;
- (void)sacRemoveAllWifiFreq;
- (void)sacReportCellularVictimFreqListOnTargetSac:(unsigned int)sac action:(unsigned int)action;
- (void)sacReportGnssVictimFreqListOnTargetSac:(unsigned int)sac action:(unsigned int)action;
- (void)sacReportWifiVictimFreqListOnTargetSac:(unsigned int)sac action:(unsigned int)action;
- (void)sacScreenAllFreq:(id)freq;
- (void)sacScreenFreq:(id)freq freqRangeObj:(id)obj;
- (void)sacSetCellularSubActiveState:(BOOL)state onSubId:(unsigned int)id;
- (void)sacSortFreqByPriority:(id)priority;
- (void)sacUpdateCellularDownlinkFreqInfo:(id)info onSubId:(unsigned int)id;
- (void)sacUpdateCellularHoppingFreqInfo:(id)info onSubId:(unsigned int)id;
- (void)sacUpdateCellularNeighborFreqInfo:(id)info onSubId:(unsigned int)id;
- (void)sacUpdateCellularRPLMNFreqInfo:(id)info onSubId:(unsigned int)id;
- (void)sacUpdateCellularSearchFreqInfo:(id)info onSubId:(unsigned int)id;
- (void)sacUpdateGnssFreqInfo:(id)info L5Freq:(id)freq;
- (void)sacUpdateWiFiFreqInfo:(unint64_t)info Bandwidth:(unint64_t)bandwidth;
- (void)setTestMode:(BOOL)mode;
@end

@implementation WCM_SacManager

- (void)sacRemoveAllGnssFreq
{
  [WCM_Logging logLevel:2 message:@"SAC Coex Manager removed all GNSS frequency from SAC and local cache"];
  [(WCM_SacManager *)self sacReportGnssVictimFreqListOnTargetSac:1 action:0];
  [(WCM_SacManager *)self sacReportGnssVictimFreqListOnTargetSac:2 action:0];
  mGnssL1FreqList = [(WCM_SacManager *)self mGnssL1FreqList];
  v4 = [mGnssL1FreqList count];

  if (v4)
  {
    mGnssL1FreqList2 = [(WCM_SacManager *)self mGnssL1FreqList];
    [mGnssL1FreqList2 removeAllObjects];
  }

  mGnssL5FreqList = [(WCM_SacManager *)self mGnssL5FreqList];
  v7 = [mGnssL5FreqList count];

  if (v7)
  {
    mGnssL5FreqList2 = [(WCM_SacManager *)self mGnssL5FreqList];
    [mGnssL5FreqList2 removeAllObjects];
  }

  self->mGnssState = 0;
}

+ (__TelephonyBasebandControllerHandle_tag)basebandController
{
  result = qword_1002B7DB8;
  if (!qword_1002B7DB8)
  {
    result = TelephonyBasebandCreateController();
    qword_1002B7DB8 = result;
    if (!result)
    {
      [WCM_Logging logLevel:0 message:@"SAC Manager: Failed TelephonyBasebandCreateController()"];
      return qword_1002B7DB8;
    }
  }

  return result;
}

- (WCM_SacManager)initWithPlatformId:(unint64_t)id
{
  v100.receiver = self;
  v100.super_class = WCM_SacManager;
  v4 = [(WCM_SacManager *)&v100 init];
  v5 = dispatch_queue_create("com.apple.WirelessRadioManager.SacManager", 0);
  mQueue = v4->mQueue;
  v4->mQueue = v5;

  v4->mTestMode = 0;
  v4->mGnssState = 0;
  v4->mGnssL1StateChanged = 0;
  v4->mActiveSubId_bitmap = 0;
  v7 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMCellularFreqSet:v7];

  v8 = objc_alloc_init(SacCellularFreqInfoSet);
  v9 = objc_alloc_init(SacCellularFreqInfoSet);
  mCellularFreqSet = [(WCM_SacManager *)v4 mCellularFreqSet];
  [mCellularFreqSet addObject:v8];

  mCellularFreqSet2 = [(WCM_SacManager *)v4 mCellularFreqSet];
  [mCellularFreqSet2 addObject:v9];

  v12 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMWifiFreqList:v12];

  v13 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMGnssL1FreqList:v13];

  v14 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMGnssL5FreqList:v14];

  v15 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMCacheCellularReportedFullList:v15];

  v16 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMCacheCellularReportedReducedList:v16];

  v17 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMCacheWifiReportedFullList:v17];

  v18 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMCacheWifiReportedReducedList:v18];

  v19 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMCacheGnssReportedFullList:v19];

  v20 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMCacheGnssReportedReducedList:v20];

  v21 = objc_alloc_init(NSMutableArray);
  [(WCM_SacManager *)v4 setMCellularFreqInclusionList:v21];

  v99 = 0;
  v22 = sub_10009D018(@"coex_sac", @"plist");
  v98 = 0;
  v23 = [NSPropertyListSerialization propertyListWithData:v22 options:2 format:&v99 error:&v98];
  if (v23)
  {
    [WCM_Logging logLevel:3 message:@"init SAC Configuration Plist File Found"];
    v24 = [(WCM_SacManager *)v4 sacGetPlatformPlistIdx:id];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"Config count = %lu, platformID=%llu, SAC plist index=%d", [v23 count], id, v24);
    [WCM_Logging logLevel:3 message:@"SAC Configuration from plist: "];
    v25 = v24;
    v26 = [v23 objectAtIndex:v24];
    v27 = [v26 objectForKey:@"GNSS_L1"];
    v4->mReportGnssL1 = [v27 BOOLValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: GNSS_L1 = %d", v4->mReportGnssL1];
    v28 = [v23 objectAtIndex:v25];
    v29 = [v28 objectForKey:@"GNSS_L5"];
    v4->mReportGnssL5 = [v29 BOOLValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: GNSS_L5 = %d", v4->mReportGnssL5];
    v30 = [v23 objectAtIndex:v25];
    v31 = [v30 objectForKey:@"WiFi_2p4"];
    v4->mReportWiFi2G = [v31 BOOLValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: WiFi_2p4 = %d", v4->mReportWiFi2G];
    v32 = [v23 objectAtIndex:v25];
    v33 = [v32 objectForKey:@"WiFi_5p0"];
    v4->mReportWiFi5G = [v33 BOOLValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: WiFi_5p0 = %d", v4->mReportWiFi5G];
    v34 = [v23 objectAtIndex:v25];
    v35 = [v34 objectForKey:@"WiFi_enh"];
    v4->mReportWiFiEnh = [v35 BOOLValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: WiFi_enh = %d", v4->mReportWiFiEnh];
    v36 = [v23 objectAtIndex:v25];
    v37 = [v36 objectForKey:@"Cell_Include_Measurement"];
    v4->mMeasurementFreqIncluded = [v37 BOOLValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: Cell_Include_Measurement = %d", v4->mMeasurementFreqIncluded];
    v38 = [v23 objectAtIndex:v25];
    v39 = [v38 objectForKey:@"Cell_PCC_BW_L1ON"];
    v4->mPccBwL1On = 1000 * [v39 unsignedIntValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: Cell_PCC_BW_L1ON = %llu (%lluMHz)", v4->mPccBwL1On, v4->mPccBwL1On / 0xF4240];
    v40 = [v23 objectAtIndex:v25];
    v41 = [v40 objectForKey:@"Cell_SCC_BW_L1ON"];
    v4->mSccBwL1On = 1000 * [v41 unsignedIntValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: Cell_SCC_BW_L1ON = %llu (%lluMHz)", v4->mSccBwL1On, v4->mSccBwL1On / 0xF4240];
    v42 = [v23 objectAtIndex:v25];
    v43 = [v42 objectForKey:@"Cell_SCC_Channels_L1ON"];
    v4->mAllowedSccNumL1On = [v43 unsignedIntValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: Cell_SCC_Channels_L1ON = %d", v4->mAllowedSccNumL1On];
    v44 = [v23 objectAtIndex:v25];
    v45 = [v44 objectForKey:@"Cell_PCC_BW_L1OFF"];
    v4->mPccBwL1Off = 1000 * [v45 unsignedIntValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: Cell_PCC_BW_L1OFF = %llu (%lluMHz)", v4->mPccBwL1Off, v4->mPccBwL1Off / 0xF4240];
    v46 = [v23 objectAtIndex:v25];
    v47 = [v46 objectForKey:@"Cell_SCC_BW_L1OFF"];
    v4->mSccBwL1Off = 1000 * [v47 unsignedIntValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: Cell_SCC_BW_L1OFF = %llu (%lluMHz)", v4->mSccBwL1Off, v4->mSccBwL1Off / 0xF4240];
    v48 = [v23 objectAtIndex:v25];
    v49 = [v48 objectForKey:@"Cell_SCC_Channels_L1OFF"];
    v4->mAllowedSccNumL1Off = [v49 unsignedIntValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: Cell_SCC_Channels_L1OFF = %d", v4->mAllowedSccNumL1Off];
    v50 = [v23 objectAtIndex:v25];
    v51 = [v50 objectForKey:@"Cell_Aggregate_BW"];
    v4->mMaxCellAggregateBw = 1000 * [v51 unsignedIntValue];

    [WCM_Logging logLevel:3 message:@"SAC Configuration: Cell_Aggregate_BW = %llu (%lluMHz)", v4->mMaxCellAggregateBw, v4->mMaxCellAggregateBw / 0xF4240];
    v52 = [v23 objectAtIndex:v25];
    v53 = [v52 objectForKey:@"Cell_priority_1_Fmin"];
    v102[0] = 1000 * [v53 unsignedIntValue];

    v54 = [v23 objectAtIndex:v25];
    v55 = [v54 objectForKey:@"Cell_priority_1_Fmax"];
    v101[0] = 1000 * [v55 unsignedIntValue];

    v56 = [v23 objectAtIndex:v25];
    v57 = [v56 objectForKey:@"Cell_priority_2_Fmin"];
    v102[1] = 1000 * [v57 unsignedIntValue];

    v58 = [v23 objectAtIndex:v25];
    v59 = [v58 objectForKey:@"Cell_priority_2_Fmax"];
    v101[1] = 1000 * [v59 unsignedIntValue];

    v60 = [v23 objectAtIndex:v25];
    v61 = [v60 objectForKey:@"Cell_priority_3_Fmin"];
    v102[2] = 1000 * [v61 unsignedIntValue];

    v62 = [v23 objectAtIndex:v25];
    v63 = [v62 objectForKey:@"Cell_priority_3_Fmax"];
    v101[2] = 1000 * [v63 unsignedIntValue];

    v64 = [v23 objectAtIndex:v25];
    v65 = [v64 objectForKey:@"Cell_priority_4_Fmin"];
    v102[3] = 1000 * [v65 unsignedIntValue];

    v66 = [v23 objectAtIndex:v25];
    v67 = [v66 objectForKey:@"Cell_priority_4_Fmax"];
    v101[3] = 1000 * [v67 unsignedIntValue];

    v68 = [v23 objectAtIndex:v25];
    v69 = [v68 objectForKey:@"Cell_priority_5_Fmin"];
    v102[4] = 1000 * [v69 unsignedIntValue];

    v70 = [v23 objectAtIndex:v25];
    v71 = [v70 objectForKey:@"Cell_priority_5_Fmax"];
    v101[4] = 1000 * [v71 unsignedIntValue];

    v72 = [v23 objectAtIndex:v25];
    v73 = [v72 objectForKey:@"Cell_priority_6_Fmin"];
    v102[5] = 1000 * [v73 unsignedIntValue];

    v74 = [v23 objectAtIndex:v25];
    v75 = [v74 objectForKey:@"Cell_priority_6_Fmax"];
    v101[5] = 1000 * [v75 unsignedIntValue];

    v76 = [v23 objectAtIndex:v25];
    v77 = [v76 objectForKey:@"Cell_priority_7_Fmin"];
    v102[6] = 1000 * [v77 unsignedIntValue];

    v78 = [v23 objectAtIndex:v25];
    v79 = [v78 objectForKey:@"Cell_priority_7_Fmax"];
    v101[6] = 1000 * [v79 unsignedIntValue];

    v80 = [v23 objectAtIndex:v25];
    v81 = [v80 objectForKey:@"Cell_priority_8_Fmin"];
    v102[7] = 1000 * [v81 unsignedIntValue];

    v82 = [v23 objectAtIndex:v25];
    v83 = [v82 objectForKey:@"Cell_priority_8_Fmax"];
    v101[7] = 1000 * [v83 unsignedIntValue];

    v84 = [v23 objectAtIndex:v25];
    v85 = [v84 objectForKey:@"Cell_priority_9_Fmin"];
    v102[8] = 1000 * [v85 unsignedIntValue];

    v86 = [v23 objectAtIndex:v25];
    v87 = [v86 objectForKey:@"Cell_priority_9_Fmax"];
    v101[8] = 1000 * [v87 unsignedIntValue];

    v88 = [v23 objectAtIndex:v25];
    v89 = [v88 objectForKey:@"Cell_priority_10_Fmin"];
    v102[9] = 1000 * [v89 unsignedIntValue];

    v90 = [v23 objectAtIndex:v25];
    v91 = [v90 objectForKey:@"Cell_priority_10_Fmax"];
    v101[9] = 1000 * [v91 unsignedIntValue];

    for (i = 0; i != 10; ++i)
    {
      v93 = v102[i];
      [WCM_Logging logLevel:3 message:@"SAC Configuration: freq_min[%d] = %llu (%lluMHz)", i, v93, v93 / 0xF4240];
      v94 = v101[i];
      [WCM_Logging logLevel:3 message:@"SAC Configuration: freq_max[%d] = %llu (%lluMHz)", i, v94, v94 / 0xF4240];
      v95 = [[FreqRangeInfo alloc] initWithStartFreq:v93 EndFreq:v94];
      [(FreqRangeInfo *)v95 setPriority:i];
      mCellularFreqInclusionList = [(WCM_SacManager *)v4 mCellularFreqInclusionList];
      [mCellularFreqInclusionList addObject:v95];
    }

    v4->mGnssState = 0;
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"init: No SAC Configuration Plist File Found"];
  }

  return v4;
}

- (id)printPlistParam
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"SAC Configuration: GNSS_L1 = %d\n", self->mReportGnssL1];
  [v3 appendFormat:@"SAC Configuration: GNSS_L5 = %d\n", self->mReportGnssL5];
  [v3 appendFormat:@"SAC Configuration: WiFi_2p4 = %d\n", self->mReportWiFi2G];
  [v3 appendFormat:@"SAC Configuration: WiFi_5p0 = %d\n", self->mReportWiFi5G];
  [v3 appendFormat:@"SAC Configuration: WiFi_enh = %d\n", self->mReportWiFiEnh];
  for (i = 0; i != 10; ++i)
  {
    mCellularFreqInclusionList = [(WCM_SacManager *)self mCellularFreqInclusionList];
    v6 = [mCellularFreqInclusionList objectAtIndex:i];

    [v3 appendFormat:@"SAC Configuration: freq_min[%d] = %llu (%lluMHz)\n", i, objc_msgSend(v6, "FreqStart"), objc_msgSend(v6, "FreqStart") / 0xF4240];
    [v3 appendFormat:@"SAC Configuration: freq_max[%d] = %llu (%lluMHz)\n", i, objc_msgSend(v6, "FreqEnd"), objc_msgSend(v6, "FreqEnd") / 0xF4240];
  }

  [v3 appendFormat:@"SAC Configuration: Cell_Aggregate_BW = %llu (%lluMHz)\n", self->mMaxCellAggregateBw, self->mMaxCellAggregateBw / 0xF4240];
  [v3 appendFormat:@"SAC Configuration: Cell_Include_Measurement = %d\n", self->mMeasurementFreqIncluded];
  [v3 appendFormat:@"SAC Configuration: Cell_PCC_BW_L1ON = %llu (%lluMHz)\n", self->mPccBwL1On, self->mPccBwL1On / 0xF4240];
  [v3 appendFormat:@"SAC Configuration: Cell_SCC_BW_L1ON = %llu (%lluMHz)\n", self->mSccBwL1On, self->mSccBwL1On / 0xF4240];
  [v3 appendFormat:@"SAC Configuration: Cell_SCC_Channels_L1ON = %d\n", self->mAllowedSccNumL1On];
  [v3 appendFormat:@"SAC Configuration: Cell_PCC_BW_L1OFF = %llu (%lluMHz)\n", self->mPccBwL1Off, self->mPccBwL1Off / 0xF4240];
  [v3 appendFormat:@"SAC Configuration: Cell_SCC_BW_L1OFF = %llu (%lluMHz)\n", self->mSccBwL1Off, self->mSccBwL1Off / 0xF4240];
  [v3 appendFormat:@"SAC Configuration: Cell_SCC_Channels_L1OFF = %d\n", self->mAllowedSccNumL1Off];

  return v3;
}

- (unsigned)sacGetPlatformPlistIdx:(int64_t)idx
{
  if (idx <= 0x3B)
  {
    if (((1 << idx) & 0xF30000000000000) != 0)
    {
      return 5;
    }

    if (idx == 21)
    {
      return 1;
    }

    if (idx == 22)
    {
      return 2;
    }
  }

  if ((idx - 154) <= 0x18)
  {
    if (((1 << (idx + 102)) & 0x1540000) != 0)
    {
      return 5;
    }

    if (idx == 154)
    {
      return 3;
    }

    if (idx == 157)
    {
      return 4;
    }
  }

  return 0;
}

- (void)sacSetCellularSubActiveState:(BOOL)state onSubId:(unsigned int)id
{
  if (id <= 1)
  {
    v4 = 1 << id;
    if (!state)
    {
      v4 = self->mActiveSubId_bitmap & ~v4;
    }

    self->mActiveSubId_bitmap = v4;
  }
}

- (BOOL)isEqualFreqList:(id)list List2:(id)list2
{
  listCopy = list;
  list2Copy = list2;
  v8 = list2Copy;
  if (listCopy | list2Copy)
  {
    v9 = 0;
    if (listCopy && list2Copy)
    {
      v11 = [listCopy count];
      if (v11 == [v8 count])
      {
        v12 = [[NSMutableArray alloc] initWithArray:listCopy];
        v13 = [[NSMutableArray alloc] initWithArray:v8];
        [(WCM_SacManager *)self freqAscendSort:v12];
        [(WCM_SacManager *)self freqAscendSort:v13];
        if ([v12 count])
        {
          v14 = 0;
          v15 = 1;
          do
          {
            v16 = [v12 objectAtIndex:v14];
            v17 = [v13 objectAtIndex:v14];
            v9 = [v16 isEqual:v17];

            if ((v9 & 1) == 0)
            {
              break;
            }

            v14 = v15;
          }

          while ([v12 count] > v15++);
        }

        else
        {
          v9 = 1;
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)freqAscendSort:(id)sort
{
  sortCopy = sort;
  v4 = sortCopy;
  if (sortCopy)
  {
    v5 = sortCopy;
    sortCopy = [sortCopy count];
    v4 = v5;
    if (sortCopy)
    {
      sortCopy = [v5 sortUsingComparator:&stru_10023ECC8];
      v4 = v5;
    }
  }

  _objc_release_x1(sortCopy, v4);
}

- (void)sacSortFreqByPriority:(id)priority
{
  priorityCopy = priority;
  v4 = priorityCopy;
  if (priorityCopy)
  {
    v5 = priorityCopy;
    priorityCopy = [priorityCopy count];
    v4 = v5;
    if (priorityCopy)
    {
      priorityCopy = [v5 sortUsingComparator:&stru_10023ECE8];
      v4 = v5;
    }
  }

  _objc_release_x1(priorityCopy, v4);
}

- (id)getRemoveObjIndex:(id)index fromOther:(id)other
{
  indexCopy = index;
  otherCopy = other;
  v7 = objc_alloc_init(NSMutableIndexSet);
  if (indexCopy && otherCopy)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [indexCopy differenceFromArray:otherCopy withOptions:1 usingEquivalenceTest:&stru_10023ED28];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    removals = [v9 removals];
    v11 = [removals countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(removals);
          }

          [v7 addIndex:{objc_msgSend(*(*(&v16 + 1) + 8 * i), "index")}];
        }

        v12 = [removals countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    objc_autoreleasePoolPop(v8);
  }

  return v7;
}

- (id)getInsertObjIndex:(id)index fromOther:(id)other
{
  indexCopy = index;
  otherCopy = other;
  v7 = objc_alloc_init(NSMutableIndexSet);
  if (indexCopy && otherCopy)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [indexCopy differenceFromArray:otherCopy withOptions:2 usingEquivalenceTest:&stru_10023ED48];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    insertions = [v9 insertions];
    v11 = [insertions countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(insertions);
          }

          [v7 addIndex:{objc_msgSend(*(*(&v16 + 1) + 8 * i), "index")}];
        }

        v12 = [insertions countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    objc_autoreleasePoolPop(v8);
  }

  return v7;
}

- (void)sacMergeFreqInterval:(id)interval
{
  intervalCopy = interval;
  v5 = intervalCopy;
  if (intervalCopy)
  {
    v15 = intervalCopy;
    intervalCopy = [intervalCopy count];
    v5 = v15;
    if (intervalCopy)
    {
      [(WCM_SacManager *)self freqAscendSort:v15];
      v6 = objc_alloc_init(NSMutableArray);
      if ([v15 count])
      {
        v7 = 0;
        v8 = 1;
        do
        {
          v9 = [v15 objectAtIndex:v7];
          if ([v6 count])
          {
            lastObject = [v6 lastObject];
            freqStart = [v9 FreqStart];
            if (freqStart >= [lastObject FreqEnd])
            {
              [v6 addObject:v9];
            }

            else
            {
              freqStart2 = [v9 FreqStart];
              if (freqStart2 < [lastObject FreqEnd])
              {
                freqEnd = [v9 FreqEnd];
                if (freqEnd > [lastObject FreqEnd])
                {
                  [lastObject setEndFreqOnly:{objc_msgSend(v9, "FreqEnd")}];
                }
              }
            }
          }

          else
          {
            [v6 addObject:v9];
          }

          v7 = v8;
        }

        while ([v15 count] > v8++);
      }

      [v15 removeAllObjects];
      [v15 addObjectsFromArray:v6];

      v5 = v15;
    }
  }

  _objc_release_x1(intervalCopy, v5);
}

- (void)sacScreenFreq:(id)freq freqRangeObj:(id)obj
{
  freqCopy = freq;
  objCopy = obj;
  if (freqCopy)
  {
    if (objCopy)
    {
      mCellularFreqInclusionList = [(WCM_SacManager *)self mCellularFreqInclusionList];
      v8 = [mCellularFreqInclusionList count];

      if (v8)
      {
        v9 = 0;
        v10 = 1;
        do
        {
          mCellularFreqInclusionList2 = [(WCM_SacManager *)self mCellularFreqInclusionList];
          v12 = [mCellularFreqInclusionList2 objectAtIndex:v9];

          freqEnd = [objCopy FreqEnd];
          if (freqEnd > [v12 FreqStart])
          {
            freqStart = [objCopy FreqStart];
            if (freqStart < [v12 FreqEnd])
            {
              if ((v15 = [objCopy FreqStart], v15 <= objc_msgSend(v12, "FreqStart")) && (v16 = objc_msgSend(objCopy, "FreqEnd"), v17 = objc_msgSend(v12, "FreqEnd"), v18 = v12, v19 = v12, v16 >= v17) || (v20 = objc_msgSend(objCopy, "FreqStart"), v20 >= objc_msgSend(v12, "FreqStart")) && (v21 = objc_msgSend(objCopy, "FreqEnd"), v22 = objc_msgSend(v12, "FreqEnd"), v18 = objCopy, v19 = objCopy, v21 <= v22) || (v23 = objc_msgSend(objCopy, "FreqStart"), v24 = objc_msgSend(v12, "FreqStart"), v18 = objCopy, v19 = v12, v23 >= v24) || (v25 = objc_msgSend(objCopy, "FreqEnd"), v26 = objc_msgSend(v12, "FreqEnd"), v18 = v12, v19 = objCopy, v25 <= v26))
              {
                freqStart2 = [v18 FreqStart];
                freqEnd2 = [v19 FreqEnd];
                if (freqStart2)
                {
                  if (freqEnd2)
                  {
                    v29 = [[FreqRangeInfo alloc] initWithStartFreq:freqStart2 EndFreq:freqEnd2];
                    [(FreqRangeInfo *)v29 setPriority:v10 - 1];
                    [freqCopy addObject:v29];
                  }
                }
              }
            }
          }

          v9 = v10;
        }

        while (v8 > v10++);
      }
    }
  }
}

- (void)sacScreenAllFreq:(id)freq
{
  freqCopy = freq;
  v5 = freqCopy;
  if (freqCopy)
  {
    v11 = freqCopy;
    freqCopy = [freqCopy count];
    v5 = v11;
    if (freqCopy)
    {
      v6 = objc_alloc_init(NSMutableArray);
      if ([v11 count])
      {
        v7 = 0;
        v8 = 1;
        do
        {
          v9 = [v11 objectAtIndex:v7];
          [(WCM_SacManager *)self sacScreenFreq:v6 freqRangeObj:v9];

          v7 = v8;
        }

        while ([v11 count] > v8++);
      }

      [v11 removeAllObjects];
      [v11 setArray:v6];
      [(WCM_SacManager *)self sacSortFreqByPriority:v11];

      v5 = v11;
    }
  }

  _objc_release_x1(freqCopy, v5);
}

- (void)sacUpdateCellularDownlinkFreqInfo:(id)info onSubId:(unsigned int)id
{
  infoCopy = info;
  if (!infoCopy || id > 1)
  {
    goto LABEL_15;
  }

  v20 = infoCopy;
  mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
  idCopy = id;
  v9 = [mCellularFreqSet objectAtIndex:id];
  mCellularPccFreq = [v9 mCellularPccFreq];

  mCellularFreqSet2 = [(WCM_SacManager *)self mCellularFreqSet];
  v12 = [mCellularFreqSet2 objectAtIndex:idCopy];
  mCellularSccFreqList = [v12 mCellularSccFreqList];

  if (!mCellularPccFreq)
  {
    mCellularPccFreq = objc_alloc_init(NSMutableArray);
    if (mCellularSccFreqList)
    {
      goto LABEL_5;
    }

LABEL_7:
    mCellularSccFreqList = objc_alloc_init(NSMutableArray);
    goto LABEL_8;
  }

  [mCellularPccFreq removeAllObjects];
  if (!mCellularSccFreqList)
  {
    goto LABEL_7;
  }

LABEL_5:
  [mCellularSccFreqList removeAllObjects];
LABEL_8:
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"SAC update cellular downlink frequency, count=%lu", [v20 count]);
  if ([v20 count])
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = objc_alloc_init(FreqRangeInfo);
      v17 = [v20 objectAtIndex:v14];
      [(FreqRangeInfo *)v16 setFreqWithObj:v17];

      logPrint = [(FreqRangeInfo *)v16 logPrint];
      [WCM_Logging logLevel:3 message:@"    SAC cellular dl_freq[%d] = %@", v15, logPrint];

      if (v15)
      {
        v19 = mCellularSccFreqList;
      }

      else
      {
        v19 = mCellularPccFreq;
      }

      [v19 addObject:v16];

      v14 = (v15 + 1);
      v15 = v14;
    }

    while ([v20 count] > v14);
  }

  infoCopy = v20;
LABEL_15:
}

- (void)sacUpdateCellularHoppingFreqInfo:(id)info onSubId:(unsigned int)id
{
  infoCopy = info;
  if (infoCopy && id <= 1)
  {
    v23 = infoCopy;
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    v8 = [mCellularFreqSet objectAtIndex:id];
    mCellularHoppingFreq = [v8 mCellularHoppingFreq];

    if (mCellularHoppingFreq)
    {
      [mCellularHoppingFreq removeAllObjects];
    }

    else
    {
      mCellularHoppingFreq = objc_alloc_init(NSMutableArray);
    }

    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"SAC update cellular hopping frequency, count=%lu", [v23 count]);
    if ([v23 count])
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = -1;
      v14 = v23;
      do
      {
        v15 = [v14 objectAtIndex:v10];
        logPrint = [v15 logPrint];
        [WCM_Logging logLevel:3 message:@"    SAC cellular hopping_freq[%d] = %@", v11, logPrint];

        centerFreq = [v15 centerFreq];
        if (v13 > &centerFreq[-([v15 bw] >> 1)])
        {
          centerFreq2 = [v15 centerFreq];
          v13 = centerFreq2 - ([v15 bw] >> 1);
        }

        centerFreq3 = [v15 centerFreq];
        if (v12 < &centerFreq3[[v15 bw] >> 1])
        {
          centerFreq4 = [v15 centerFreq];
          v12 = &centerFreq4[[v15 bw] >> 1];
        }

        v10 = (v11 + 1);
        v11 = v10;
        v21 = [v23 count] > v10;
        v14 = v23;
      }

      while (v21);
      if (v12 > v13)
      {
        v22 = [[FreqRangeInfo alloc] initWithStartFreq:v13 EndFreq:v12];
        [mCellularHoppingFreq addObject:v22];
      }
    }

    infoCopy = v23;
  }
}

- (void)sacUpdateCellularNeighborFreqInfo:(id)info onSubId:(unsigned int)id
{
  infoCopy = info;
  if (infoCopy && id <= 1)
  {
    v15 = infoCopy;
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    v8 = [mCellularFreqSet objectAtIndex:id];
    mCellularNeighborFreqList = [v8 mCellularNeighborFreqList];

    if (mCellularNeighborFreqList)
    {
      [mCellularNeighborFreqList removeAllObjects];
    }

    else
    {
      mCellularNeighborFreqList = objc_alloc_init(NSMutableArray);
    }

    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"SAC update cellular neighbor frequency, count=%lu", [v15 count]);
    if ([v15 count])
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = objc_alloc_init(FreqRangeInfo);
        v13 = [v15 objectAtIndex:v10];
        [(FreqRangeInfo *)v12 setFreqWithObj:v13];

        logPrint = [(FreqRangeInfo *)v12 logPrint];
        [WCM_Logging logLevel:3 message:@"    SAC cellular neighbor_freq[%d] = %@", v11, logPrint];

        [mCellularNeighborFreqList addObject:v12];
        v10 = (v11 + 1);
        v11 = v10;
      }

      while ([v15 count] > v10);
    }

    infoCopy = v15;
  }
}

- (void)sacUpdateCellularSearchFreqInfo:(id)info onSubId:(unsigned int)id
{
  infoCopy = info;
  if (infoCopy && id <= 1)
  {
    v15 = infoCopy;
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    v8 = [mCellularFreqSet objectAtIndex:id];
    mCellularSearchFreqList = [v8 mCellularSearchFreqList];

    if (mCellularSearchFreqList)
    {
      [mCellularSearchFreqList removeAllObjects];
    }

    else
    {
      mCellularSearchFreqList = objc_alloc_init(NSMutableArray);
    }

    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"SAC update cellular search frequency, count=%lu", [v15 count]);
    if ([v15 count])
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = objc_alloc_init(FreqRangeInfo);
        v13 = [v15 objectAtIndex:v10];
        [(FreqRangeInfo *)v12 setFreqWithObj:v13];

        logPrint = [(FreqRangeInfo *)v12 logPrint];
        [WCM_Logging logLevel:3 message:@"    SAC cellular search_freq[%d] = %@", v11, logPrint];

        [mCellularSearchFreqList addObject:v12];
        v10 = (v11 + 1);
        v11 = v10;
      }

      while ([v15 count] > v10);
    }

    infoCopy = v15;
  }
}

- (void)sacUpdateCellularRPLMNFreqInfo:(id)info onSubId:(unsigned int)id
{
  infoCopy = info;
  if (infoCopy && id <= 1)
  {
    v15 = infoCopy;
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    v8 = [mCellularFreqSet objectAtIndex:id];
    mCellularRPLMNFreqList = [v8 mCellularRPLMNFreqList];

    if (mCellularRPLMNFreqList)
    {
      [mCellularRPLMNFreqList removeAllObjects];
    }

    else
    {
      mCellularRPLMNFreqList = objc_alloc_init(NSMutableArray);
    }

    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"SAC update cellular RPLMN frequency, count=%lu", [v15 count]);
    if ([v15 count])
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = objc_alloc_init(FreqRangeInfo);
        v13 = [v15 objectAtIndex:v10];
        [(FreqRangeInfo *)v12 setFreqWithObj:v13];

        logPrint = [(FreqRangeInfo *)v12 logPrint];
        [WCM_Logging logLevel:3 message:@"    SAC cellular rplmn_freq[%d] = %@", v11, logPrint];

        [mCellularRPLMNFreqList addObject:v12];
        v10 = (v11 + 1);
        v11 = v10;
      }

      while ([v15 count] > v10);
    }

    infoCopy = v15;
  }
}

- (void)sacProcessCellularPrimaryFreqInfo:(id)info onSubId:(unsigned int)id
{
  infoCopy = info;
  if (infoCopy && id <= 1)
  {
    v22 = infoCopy;
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    idCopy = id;
    v9 = [mCellularFreqSet objectAtIndex:id];
    mCellularPccFreq = [v9 mCellularPccFreq];

    mCellularFreqSet2 = [(WCM_SacManager *)self mCellularFreqSet];
    v12 = [mCellularFreqSet2 objectAtIndex:idCopy];
    mCellularHoppingFreq = [v12 mCellularHoppingFreq];

    v14 = [[FreqRangeInfo alloc] initWithStartFreq:0 EndFreq:0];
    v15 = 48;
    if (!self->mGnssState)
    {
      v15 = 72;
    }

    v16 = *(&self->super.isa + v15);
    if (mCellularHoppingFreq && (v17 = [mCellularHoppingFreq count], v18 = mCellularHoppingFreq, v17) || mCellularPccFreq && (v19 = objc_msgSend(mCellularPccFreq, "count"), v18 = mCellularPccFreq, v19))
    {
      v20 = [v18 objectAtIndex:0];
      [(FreqRangeInfo *)v14 setFreqWithObj:v20];
    }

    if ([(FreqRangeInfo *)v14 FreqStart])
    {
      v21 = objc_alloc_init(NSMutableArray);
      [(FreqRangeInfo *)v14 applyBwLimitFromRight:v16];
      [v21 addObject:v14];
      [(WCM_SacManager *)self sacScreenAllFreq:v21];
      [v22 addObjectsFromArray:v21];
    }

    infoCopy = v22;
  }
}

- (void)sacProcessCellularSecondaryFreqInfo:(id)info onSubId:(unsigned int)id
{
  infoCopy = info;
  if (infoCopy && id <= 1)
  {
    v31 = infoCopy;
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    v8 = [mCellularFreqSet objectAtIndex:id];
    mCellularSccFreqList = [v8 mCellularSccFreqList];

    v10 = 56;
    if (!self->mGnssState)
    {
      v10 = 80;
    }

    v11 = 64;
    if (!self->mGnssState)
    {
      v11 = 88;
    }

    v12 = *(&self->super.isa + v11);
    v13 = *(&self->super.isa + v10);
    if ([v31 count])
    {
      v14 = 0;
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = [v31 objectAtIndex:v14];
        v15 += [v17 bw];

        v14 = v16;
        v18 = [v31 count] > v16++;
      }

      while (v18);
    }

    else
    {
      v15 = 0;
    }

    if (v15 < self->mMaxCellAggregateBw)
    {
      v19 = objc_alloc_init(NSMutableArray);
      if ([mCellularSccFreqList count])
      {
        v20 = 0;
        v21 = 1;
        do
        {
          v22 = objc_alloc_init(FreqRangeInfo);
          v23 = [mCellularSccFreqList objectAtIndex:v20];
          [(FreqRangeInfo *)v22 setFreqWithObj:v23];

          [(FreqRangeInfo *)v22 applyBwLimitFromRight:v13];
          [v19 addObject:v22];

          v20 = v21;
          v18 = [mCellularSccFreqList count] > v21++;
        }

        while (v18);
      }

      [(WCM_SacManager *)self sacScreenAllFreq:v19];
      if ([v19 count])
      {
        v24 = 0;
        while (1)
        {
          v25 = [v19 objectAtIndex:v24];
          v26 = [v25 bw];
          mMaxCellAggregateBw = self->mMaxCellAggregateBw;
          v28 = mMaxCellAggregateBw - v15;
          if (mMaxCellAggregateBw == v15 || v24 >= v12)
          {
            break;
          }

          v30 = v26;
          if (v26 > v28)
          {
            [v25 applyBwLimitFromRight:mMaxCellAggregateBw - v15];
            v30 = v28;
          }

          [v31 addObject:v25];
          v15 += v30;

          if ([v19 count] <= ++v24)
          {
            goto LABEL_27;
          }
        }
      }

LABEL_27:
    }

    infoCopy = v31;
  }
}

- (void)sacProcessCellularMeasFreqInfo:(id)info onSubId:(unsigned int)id
{
  infoCopy = info;
  if (infoCopy && id <= 1)
  {
    v41 = infoCopy;
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    idCopy = id;
    v9 = [mCellularFreqSet objectAtIndex:id];
    mCellularNeighborFreqList = [v9 mCellularNeighborFreqList];

    mCellularFreqSet2 = [(WCM_SacManager *)self mCellularFreqSet];
    v12 = [mCellularFreqSet2 objectAtIndex:idCopy];
    mCellularSearchFreqList = [v12 mCellularSearchFreqList];

    mCellularFreqSet3 = [(WCM_SacManager *)self mCellularFreqSet];
    v15 = [mCellularFreqSet3 objectAtIndex:idCopy];
    mCellularRPLMNFreqList = [v15 mCellularRPLMNFreqList];

    if (self->mMeasurementFreqIncluded)
    {
      if ([v41 count])
      {
        v17 = 0;
        v18 = 0;
        v19 = 1;
        do
        {
          v20 = [v41 objectAtIndex:v17];
          v18 += [v20 bw];

          v17 = v19;
          v21 = [v41 count] > v19++;
        }

        while (v21);
      }

      else
      {
        v18 = 0;
      }

      if (v18 < self->mMaxCellAggregateBw)
      {
        v22 = objc_alloc_init(NSMutableArray);
        if ([mCellularNeighborFreqList count])
        {
          v23 = 0;
          v24 = 1;
          do
          {
            v25 = [mCellularNeighborFreqList objectAtIndex:v23];
            v26 = objc_alloc_init(FreqRangeInfo);
            [(FreqRangeInfo *)v26 setFreqWithObj:v25];
            [(FreqRangeInfo *)v26 applyBwLimitFromCenter:5000000];
            [v22 addObject:v26];

            v23 = v24;
            v21 = [mCellularNeighborFreqList count] > v24++;
          }

          while (v21);
        }

        if ([mCellularSearchFreqList count])
        {
          v27 = 0;
          v28 = 1;
          do
          {
            v29 = [mCellularSearchFreqList objectAtIndex:v27];
            v30 = objc_alloc_init(FreqRangeInfo);
            [(FreqRangeInfo *)v30 setFreqWithObj:v29];
            [(FreqRangeInfo *)v30 applyBwLimitFromCenter:5000000];
            [v22 addObject:v30];

            v27 = v28;
            v21 = [mCellularSearchFreqList count] > v28++;
          }

          while (v21);
        }

        if ([mCellularRPLMNFreqList count])
        {
          v31 = 0;
          v32 = 1;
          do
          {
            v33 = [mCellularRPLMNFreqList objectAtIndex:v31];
            v34 = objc_alloc_init(FreqRangeInfo);
            [(FreqRangeInfo *)v34 setFreqWithObj:v33];
            [(FreqRangeInfo *)v34 applyBwLimitFromCenter:5000000];
            [v22 addObject:v34];

            v31 = v32;
            v21 = [mCellularRPLMNFreqList count] > v32++;
          }

          while (v21);
        }

        [(WCM_SacManager *)self sacScreenAllFreq:v22];
        if ([v22 count])
        {
          v35 = 0;
          v36 = 1;
          while (1)
          {
            v37 = [v22 objectAtIndex:v35];
            v38 = [v37 bw];
            mMaxCellAggregateBw = self->mMaxCellAggregateBw;
            v40 = mMaxCellAggregateBw - v18;
            if (mMaxCellAggregateBw == v18)
            {
              break;
            }

            if (v38 > v40)
            {
              [v37 applyBwLimitFromCenter:mMaxCellAggregateBw - v18];
              v38 = v40;
            }

            v18 += v38;
            [v41 addObject:v37];

            v35 = v36;
            v21 = [v22 count] > v36++;
            if (!v21)
            {
              goto LABEL_27;
            }
          }
        }

LABEL_27:
      }
    }

    infoCopy = v41;
  }
}

- (void)sacUpdateWiFiFreqInfo:(unint64_t)info Bandwidth:(unint64_t)bandwidth
{
  mWifiFreqList = [(WCM_SacManager *)self mWifiFreqList];
  if (mWifiFreqList)
  {
    v8 = mWifiFreqList;
    mWifiFreqList2 = [(WCM_SacManager *)self mWifiFreqList];
    v10 = [mWifiFreqList2 count];

    if (v10)
    {
      mWifiFreqList3 = [(WCM_SacManager *)self mWifiFreqList];
      [mWifiFreqList3 removeAllObjects];
    }
  }

  v14 = [[FreqRangeInfo alloc] initWithFreq:info Bw:bandwidth];
  logPrint = [(FreqRangeInfo *)v14 logPrint];
  [WCM_Logging logLevel:3 message:@"SAC Update WiFi Freq:%@", logPrint];

  if (info && bandwidth)
  {
    mWifiFreqList4 = [(WCM_SacManager *)self mWifiFreqList];
    [mWifiFreqList4 addObject:v14];
  }
}

- (void)sacProcessWiFiFreqInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v8 = infoCopy;
    mWifiFreqList = [(WCM_SacManager *)self mWifiFreqList];
    v6 = [mWifiFreqList objectAtIndex:0];

    if ([v6 centerFreq] <= 0x94B6ADC0 && self->mReportWiFi2G || objc_msgSend(v6, "centerFreq") >= 0x12BCFB580 && objc_msgSend(v6, "centerFreq") < 0x162F216C0 && self->mReportWiFi5G || objc_msgSend(v6, "centerFreq") > 0x162F216BFLL && self->mReportWiFiEnh)
    {
      v7 = objc_alloc_init(FreqRangeInfo);
      [(FreqRangeInfo *)v7 setFreqWithObj:v6];
      [(FreqRangeInfo *)v7 applyBwLimitFromCenter:20000000];
      [v8 addObject:v7];
    }

    infoCopy = v8;
  }
}

- (void)sacUpdateGnssFreqInfo:(id)info L5Freq:(id)freq
{
  infoCopy = info;
  freqCopy = freq;
  if (infoCopy)
  {
    v7 = [infoCopy count] != 0;
    if (freqCopy)
    {
LABEL_3:
      v8 = [freqCopy count] != 0;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (freqCopy)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  mGnssL1FreqList = [(WCM_SacManager *)self mGnssL1FreqList];
  [mGnssL1FreqList removeAllObjects];

  mGnssL5FreqList = [(WCM_SacManager *)self mGnssL5FreqList];
  [mGnssL5FreqList removeAllObjects];

  if (!v7)
  {
    v15 = 0;
    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if ([infoCopy count])
  {
    v11 = 0;
    do
    {
      v12 = [infoCopy objectAtIndex:v11];
      logPrint = [v12 logPrint];
      [WCM_Logging logLevel:3 message:@"SAC receive update of GNSS L1 Freq[%d]:%@", v11, logPrint];

      ++v11;
    }

    while ([infoCopy count] > v11);
  }

  mGnssL1FreqList2 = [(WCM_SacManager *)self mGnssL1FreqList];
  [mGnssL1FreqList2 addObjectsFromArray:infoCopy];

  v15 = 1;
  if (v8)
  {
LABEL_13:
    if ([freqCopy count])
    {
      v16 = 0;
      do
      {
        v17 = [freqCopy objectAtIndex:v16];
        logPrint2 = [v17 logPrint];
        [WCM_Logging logLevel:3 message:@"SAC receive update of GNSS L5 Freq[%d]:%@", v16, logPrint2];

        ++v16;
      }

      while ([freqCopy count] > v16);
    }

    v15 |= 2u;
    mGnssL5FreqList2 = [(WCM_SacManager *)self mGnssL5FreqList];
    [mGnssL5FreqList2 addObjectsFromArray:freqCopy];
  }

LABEL_17:
  self->mGnssL1StateChanged = (self->mGnssState ^ v15) & 1;
  self->mGnssState = v15;
}

- (void)sacProcessGnssFreqInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    if (self->mGnssState)
    {
      if (!self->mReportGnssL1 || (v7 = infoCopy, -[WCM_SacManager mGnssL1FreqList](self, "mGnssL1FreqList"), v5 = objc_claimAutoreleasedReturnValue(), [v7 addObjectsFromArray:v5], v5, infoCopy = v7, (self->mGnssState & 1) != 0))
      {
        if (self->mReportGnssL5)
        {
          v8 = infoCopy;
          mGnssL5FreqList = [(WCM_SacManager *)self mGnssL5FreqList];
          [v8 addObjectsFromArray:mGnssL5FreqList];

          infoCopy = v8;
        }
      }
    }
  }
}

- (unsigned)sacCreateRawFreqList:(id)list bufferSize:(unsigned int)size buffer:(__AppleBasebandVictimFreq *)buffer
{
  listCopy = list;
  v8 = listCopy;
  LODWORD(sizeCopy) = 0;
  if (listCopy && buffer)
  {
    v10 = [listCopy count];
    if (v10 >= size)
    {
      sizeCopy = size;
    }

    else
    {
      sizeCopy = v10;
    }

    if (sizeCopy)
    {
      v11 = 0;
      p_var2 = &buffer->var2;
      do
      {
        v13 = [v8 objectAtIndex:v11];
        *(p_var2 - 3) = [v13 centerFreq];
        *(p_var2 - 1) = ([v13 bw] >> 1);

        ++v11;
        p_var2 += 4;
      }

      while (sizeCopy != v11);
    }
  }

  return sizeCopy;
}

- (void)sacReportCellularVictimFreqListOnTargetSac:(unsigned int)sac action:(unsigned int)action
{
  v5 = *&sac;
  v7 = +[WCM_SacManager basebandController];
  if (v7)
  {
    v8 = v7;
    if (v5 == 2)
    {
      [(WCM_SacManager *)self mCacheCellularReportedReducedList];
    }

    else
    {
      [(WCM_SacManager *)self mCacheCellularReportedFullList];
    }
    v9 = ;
    v10 = v9;
    if (action == 1)
    {
      v19 = objc_alloc_init(NSMutableArray);
      v83 = v8;
      if (v5 == 2)
      {
        if (self->mActiveSubId_bitmap)
        {
          [(WCM_SacManager *)self sacProcessCellularPrimaryFreqInfo:v19 onSubId:1];
          [(WCM_SacManager *)self sacProcessCellularPrimaryFreqInfo:v19 onSubId:0];
          [(WCM_SacManager *)self sacProcessCellularSecondaryFreqInfo:v19 onSubId:1];
          [(WCM_SacManager *)self sacProcessCellularSecondaryFreqInfo:v19 onSubId:0];
          [(WCM_SacManager *)self sacProcessCellularMeasFreqInfo:v19 onSubId:1];
          selfCopy2 = self;
          v21 = v19;
          v22 = 0;
        }

        else
        {
          [(WCM_SacManager *)self sacProcessCellularPrimaryFreqInfo:v19 onSubId:0];
          [(WCM_SacManager *)self sacProcessCellularPrimaryFreqInfo:v19 onSubId:1];
          [(WCM_SacManager *)self sacProcessCellularSecondaryFreqInfo:v19 onSubId:0];
          [(WCM_SacManager *)self sacProcessCellularSecondaryFreqInfo:v19 onSubId:1];
          [(WCM_SacManager *)self sacProcessCellularMeasFreqInfo:v19 onSubId:0];
          selfCopy2 = self;
          v21 = v19;
          v22 = 1;
        }

        [(WCM_SacManager *)selfCopy2 sacProcessCellularMeasFreqInfo:v21 onSubId:v22];
      }

      else
      {
        mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
        v24 = [mCellularFreqSet objectAtIndex:0];
        mCellularHoppingFreq = [v24 mCellularHoppingFreq];
        v26 = [mCellularHoppingFreq count];

        mCellularFreqSet2 = [(WCM_SacManager *)self mCellularFreqSet];
        v28 = [mCellularFreqSet2 objectAtIndex:0];
        v29 = v28;
        if (v26)
        {
          [v28 mCellularHoppingFreq];
        }

        else
        {
          [v28 mCellularPccFreq];
        }
        v30 = ;
        [v19 addObjectsFromArray:v30];

        mCellularFreqSet3 = [(WCM_SacManager *)self mCellularFreqSet];
        v32 = [mCellularFreqSet3 objectAtIndex:1];
        mCellularHoppingFreq2 = [v32 mCellularHoppingFreq];
        v34 = [mCellularHoppingFreq2 count];

        mCellularFreqSet4 = [(WCM_SacManager *)self mCellularFreqSet];
        v36 = [mCellularFreqSet4 objectAtIndex:1];
        v37 = v36;
        if (v34)
        {
          [v36 mCellularHoppingFreq];
        }

        else
        {
          [v36 mCellularPccFreq];
        }
        v38 = ;
        [v19 addObjectsFromArray:v38];

        mCellularFreqSet5 = [(WCM_SacManager *)self mCellularFreqSet];
        v40 = [mCellularFreqSet5 objectAtIndex:0];
        mCellularSccFreqList = [v40 mCellularSccFreqList];
        [v19 addObjectsFromArray:mCellularSccFreqList];

        mCellularFreqSet6 = [(WCM_SacManager *)self mCellularFreqSet];
        v43 = [mCellularFreqSet6 objectAtIndex:1];
        mCellularSccFreqList2 = [v43 mCellularSccFreqList];
        [v19 addObjectsFromArray:mCellularSccFreqList2];

        mCellularFreqSet7 = [(WCM_SacManager *)self mCellularFreqSet];
        v46 = [mCellularFreqSet7 objectAtIndex:0];
        mCellularSearchFreqList = [v46 mCellularSearchFreqList];
        [v19 addObjectsFromArray:mCellularSearchFreqList];

        mCellularFreqSet8 = [(WCM_SacManager *)self mCellularFreqSet];
        v49 = [mCellularFreqSet8 objectAtIndex:1];
        mCellularSearchFreqList2 = [v49 mCellularSearchFreqList];
        [v19 addObjectsFromArray:mCellularSearchFreqList2];

        mCellularFreqSet9 = [(WCM_SacManager *)self mCellularFreqSet];
        v52 = [mCellularFreqSet9 objectAtIndex:0];
        mCellularNeighborFreqList = [v52 mCellularNeighborFreqList];
        [v19 addObjectsFromArray:mCellularNeighborFreqList];

        mCellularFreqSet10 = [(WCM_SacManager *)self mCellularFreqSet];
        v55 = [mCellularFreqSet10 objectAtIndex:1];
        mCellularNeighborFreqList2 = [v55 mCellularNeighborFreqList];
        [v19 addObjectsFromArray:mCellularNeighborFreqList2];

        mCellularFreqSet11 = [(WCM_SacManager *)self mCellularFreqSet];
        v58 = [mCellularFreqSet11 objectAtIndex:0];
        mCellularRPLMNFreqList = [v58 mCellularRPLMNFreqList];
        [v19 addObjectsFromArray:mCellularRPLMNFreqList];

        mCellularFreqSet12 = [(WCM_SacManager *)self mCellularFreqSet];
        v61 = [mCellularFreqSet12 objectAtIndex:1];
        mCellularRPLMNFreqList2 = [v61 mCellularRPLMNFreqList];
        [v19 addObjectsFromArray:mCellularRPLMNFreqList2];
      }

      v63 = [(WCM_SacManager *)self getRemoveObjIndex:v19 fromOther:v10];
      v64 = [(WCM_SacManager *)self getInsertObjIndex:v19 fromOther:v10];
      v82 = v63;
      v65 = [v10 objectsAtIndexes:v63];
      v81 = v64;
      v66 = [v19 objectsAtIndexes:v64];
      [v10 removeAllObjects];
      [v10 setArray:v19];
      selfCopy3 = self;
      if ([v65 count])
      {
        if ([v65 count])
        {
          v67 = 0;
          v68 = 1;
          do
          {
            v69 = [v65 objectAtIndex:v67];
            logPrint = [v69 logPrint];
            [WCM_Logging logLevel:3 message:@"SAC%d client_cellular : Remove Frequency %@:", v5, logPrint];

            v67 = v68;
            v15 = [v65 count] > v68++;
          }

          while (v15);
        }

        v71 = [v65 copy];
        v72 = dispatch_get_global_queue(0, 0);
        v89[0] = _NSConcreteStackBlock;
        v89[1] = 3221225472;
        v89[2] = sub_10005A0F0;
        v89[3] = &unk_10023ED70;
        v89[4] = selfCopy3;
        v90 = v71;
        v91 = v83;
        v92 = v5;
        v73 = v71;
        dispatch_async(v72, v89);
      }

      if ([v66 count])
      {
        if ([v66 count])
        {
          v74 = 0;
          v75 = 1;
          do
          {
            v76 = [v66 objectAtIndex:v74];
            logPrint2 = [v76 logPrint];
            [WCM_Logging logLevel:3 message:@"SAC%d client_cellular : Add Frequency %@:", v5, logPrint2];

            v74 = v75;
            v15 = [v66 count] > v75++;
          }

          while (v15);
        }

        v78 = [v66 copy];
        v79 = dispatch_get_global_queue(0, 0);
        v85[0] = _NSConcreteStackBlock;
        v85[1] = 3221225472;
        v85[2] = sub_10005A170;
        v85[3] = &unk_10023ED70;
        v85[4] = selfCopy3;
        v86 = v78;
        v87 = v83;
        v88 = v5;
        v80 = v78;
        dispatch_async(v79, v85);
      }
    }

    else if (!action)
    {
      if ([v9 count])
      {
        v11 = 0;
        v12 = 1;
        do
        {
          v13 = [v10 objectAtIndex:v11];
          logPrint3 = [v13 logPrint];
          [WCM_Logging logLevel:3 message:@"SAC%d client_cellular : Remove Frequency %@:", v5, logPrint3];

          v11 = v12;
          v15 = [v10 count] > v12++;
        }

        while (v15);
      }

      v16 = [v10 copy];
      v17 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10005A070;
      block[3] = &unk_10023ED70;
      block[4] = self;
      v94 = v16;
      v95 = v8;
      v96 = v5;
      v18 = v16;
      dispatch_async(v17, block);

      [v10 removeAllObjects];
    }
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"YYDebug_ sacReportCellularVictimFreqListOnTargetSac failed to get baseband controller "];
    v10 = 0;
  }
}

- (void)sacReportWifiVictimFreqListOnTargetSac:(unsigned int)sac action:(unsigned int)action
{
  v5 = *&sac;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = +[WCM_SacManager basebandController];
  if (v8)
  {
    v9 = v8;
    if (v5 == 2)
    {
      [(WCM_SacManager *)self mCacheWifiReportedReducedList];
    }

    else
    {
      [(WCM_SacManager *)self mCacheWifiReportedFullList];
    }
    v10 = ;
    v34 = v9;
    if (action == 1)
    {
      mWifiFreqList = [(WCM_SacManager *)self mWifiFreqList];
      if (mWifiFreqList)
      {
        v12 = mWifiFreqList;
        mWifiFreqList2 = [(WCM_SacManager *)self mWifiFreqList];
        v14 = [mWifiFreqList2 count];

        if (v14)
        {
          if (v5 == 2)
          {
            [(WCM_SacManager *)self sacProcessWiFiFreqInfo:v7];
          }

          else
          {
            mWifiFreqList3 = [(WCM_SacManager *)self mWifiFreqList];
            [v7 addObjectsFromArray:mWifiFreqList3];
          }

          if ([(WCM_SacManager *)self isEqualFreqList:v7 List2:v10])
          {
            [WCM_Logging logLevel:3 message:@"SAC[%d] Action=%d(0:remove, 1:add) : WiFi Frequency has no change. Action skipped:", v5, 1];
            goto LABEL_27;
          }
        }
      }
    }

    else if (action)
    {
      goto LABEL_27;
    }

    selfCopy = self;
    if ([v10 count])
    {
      v16 = 0;
      v17 = 1;
      do
      {
        v18 = [v10 objectAtIndex:v16];
        logPrint = [v18 logPrint];
        [WCM_Logging logLevel:3 message:@"SAC%d client_wifi : Remove Frequency %@:", v5, logPrint];

        v16 = v17;
        v20 = [v10 count] > v17++;
      }

      while (v20);
    }

    v21 = [v10 copy];
    v22 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005A5E0;
    block[3] = &unk_10023ED70;
    block[4] = selfCopy;
    v40 = v21;
    v41 = v34;
    v42 = v5;
    v23 = v21;
    dispatch_async(v22, block);

    [v10 removeAllObjects];
    if (action == 1)
    {
      mWifiFreqList4 = [(WCM_SacManager *)selfCopy mWifiFreqList];
      if (mWifiFreqList4)
      {
        v25 = mWifiFreqList4;
        mWifiFreqList5 = [(WCM_SacManager *)selfCopy mWifiFreqList];
        v27 = [mWifiFreqList5 count];

        if (v27)
        {
          if ([v7 count])
          {
            [v10 addObjectsFromArray:v7];
            if ([v7 count])
            {
              v28 = 0;
              v29 = 1;
              do
              {
                v30 = [v7 objectAtIndex:v28];
                logPrint2 = [v30 logPrint];
                [WCM_Logging logLevel:3 message:@"SAC%d client_wifi : Add Frequency %@:", v5, logPrint2];

                v28 = v29;
                v20 = [v7 count] > v29++;
              }

              while (v20);
            }

            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v35[2] = sub_10005A660;
            v35[3] = &unk_10023ED70;
            v35[4] = selfCopy;
            v36 = [v7 copy];
            v37 = v34;
            v38 = v5;
            v32 = v36;
            dispatch_async(v22, v35);
          }
        }
      }
    }
  }

  else
  {
    [WCM_Logging logLevel:0 message:@" sacReportWifiVicsltimFreqListOnTargetSac failed to get baseband controller "];
    v10 = 0;
  }

LABEL_27:
}

- (void)sacReportGnssVictimFreqListOnTargetSac:(unsigned int)sac action:(unsigned int)action
{
  v5 = *&sac;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = +[WCM_SacManager basebandController];
  if (!v8)
  {
    [WCM_Logging logLevel:0 message:@" sacReportGnssVictimFreqListOnTargetSac failed to get baseband controller "];
    mCacheGnssReportedReducedList = 0;
    goto LABEL_25;
  }

  v9 = v8;
  if (v5 == 2)
  {
    mCacheGnssReportedReducedList = [(WCM_SacManager *)self mCacheGnssReportedReducedList];
    if (action == 1)
    {
      [(WCM_SacManager *)self sacProcessGnssFreqInfo:v7];
LABEL_8:
      if ([(WCM_SacManager *)self isEqualFreqList:v7 List2:mCacheGnssReportedReducedList])
      {
        [WCM_Logging logLevel:3 message:@"SAC[%d] Action=%d(0:remove, 1:add) : GNSS Frequency has no change. Action skipped:", v5, 1];
        goto LABEL_25;
      }

      v29 = v9;
      v28 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    mCacheGnssReportedReducedList = [(WCM_SacManager *)self mCacheGnssReportedFullList];
    if (action == 1)
    {
      mGnssL1FreqList = [(WCM_SacManager *)self mGnssL1FreqList];
      [v7 addObjectsFromArray:mGnssL1FreqList];

      mGnssL5FreqList = [(WCM_SacManager *)self mGnssL5FreqList];
      [v7 addObjectsFromArray:mGnssL5FreqList];

      goto LABEL_8;
    }
  }

  if (action <= 1)
  {
    v29 = v9;
    v28 = 0;
LABEL_13:
    if ([mCacheGnssReportedReducedList count])
    {
      v13 = 0;
      v14 = 1;
      do
      {
        v15 = [mCacheGnssReportedReducedList objectAtIndex:v13];
        logPrint = [v15 logPrint];
        [WCM_Logging logLevel:3 message:@"SAC%d client_GNSS : Remove Frequency %@:", v5, logPrint];

        v13 = v14;
        v17 = [mCacheGnssReportedReducedList count] > v14++;
      }

      while (v17);
    }

    v18 = [mCacheGnssReportedReducedList copy];
    v19 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005AAE8;
    block[3] = &unk_10023ED70;
    block[4] = self;
    v35 = v18;
    v36 = v29;
    v37 = v5;
    v20 = v18;
    dispatch_async(v19, block);

    [mCacheGnssReportedReducedList removeAllObjects];
    if (v28)
    {
      [mCacheGnssReportedReducedList addObjectsFromArray:v7];
      if ([v7 count])
      {
        if ([v7 count])
        {
          v21 = 0;
          v22 = 1;
          do
          {
            v23 = [v7 objectAtIndex:v21];
            logPrint2 = [v23 logPrint];
            [WCM_Logging logLevel:3 message:@"SAC%d client_GNSS : Add Frequency %@:", v5, logPrint2];

            v21 = v22;
            v17 = [v7 count] > v22++;
          }

          while (v17);
        }

        v25 = [v7 copy];
        v26 = dispatch_get_global_queue(0, 0);
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_10005AB68;
        v30[3] = &unk_10023ED70;
        v30[4] = self;
        v31 = v25;
        v32 = v29;
        v33 = v5;
        v27 = v25;
        dispatch_async(v26, v30);
      }
    }
  }

  if (v5 == 2 && self->mGnssL1StateChanged)
  {
    [WCM_Logging logLevel:3 message:@"GNSS L1 state changed, recalculate cellular victim freq list for reduced list"];
    self->mGnssL1StateChanged = 0;
    [(WCM_SacManager *)self sacReportCellularVictimFreqListOnTargetSac:2 action:1];
  }

LABEL_25:
}

- (void)sacRemoveAllCellularFreqOnSubId0:(BOOL)id0 andSubId1:(BOOL)id1
{
  id1Copy = id1;
  id0Copy = id0;
  [WCM_Logging logLevel:2 message:@"SAC Coex Manager removed cellular frequency[subId0=%d, subId1=%d] from SAC and local cache", id0, id1];
  if (id0Copy || id1Copy)
  {
    [(WCM_SacManager *)self sacReportCellularVictimFreqListOnTargetSac:1 action:0];
    [(WCM_SacManager *)self sacReportCellularVictimFreqListOnTargetSac:2 action:0];
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    v8 = mCellularFreqSet;
    if (id0Copy && id1Copy)
    {
      v9 = [mCellularFreqSet objectAtIndex:0];
      [v9 removeAllFreq];

      mCellularFreqSet2 = [(WCM_SacManager *)self mCellularFreqSet];
      v10 = [mCellularFreqSet2 objectAtIndex:1];
      [v10 removeAllFreq];
    }

    else
    {
      v11 = [mCellularFreqSet objectAtIndex:!id0Copy];
      [v11 removeAllFreq];

      [(WCM_SacManager *)self sacReportCellularVictimFreqListOnTargetSac:1 action:1];

      [(WCM_SacManager *)self sacReportCellularVictimFreqListOnTargetSac:2 action:1];
    }
  }
}

- (void)sacRemoveAllWifiFreq
{
  [WCM_Logging logLevel:2 message:@"SAC Coex Manager removed all Wifi frequency from SAC and local cache"];
  [(WCM_SacManager *)self sacReportWifiVictimFreqListOnTargetSac:1 action:0];
  [(WCM_SacManager *)self sacReportWifiVictimFreqListOnTargetSac:2 action:0];
  mWifiFreqList = [(WCM_SacManager *)self mWifiFreqList];
  [mWifiFreqList removeAllObjects];
}

- (void)setTestMode:(BOOL)mode
{
  [WCM_Logging logLevel:2 message:@"Frequency tool set test mode = %d", mode];
  [(WCM_SacManager *)self frequencyToolClearFreq:0];
  [(WCM_SacManager *)self frequencyToolClearFreq:1];
  [(WCM_SacManager *)self frequencyToolClearFreq:2];
  self->mTestMode = mode;
}

- (void)frequencyToolClearFreq:(int)freq
{
  [WCM_Logging logLevel:2 message:@"Frequency tool clear frequency on client %d", *&freq];
  if (freq > 1)
  {
    if (freq != 2)
    {
      if (freq != 3)
      {
        return;
      }

      [(WCM_SacManager *)self sacRemoveAllCellularFreqOnSubId0:1 andSubId1:1];
      [(WCM_SacManager *)self sacRemoveAllWifiFreq];
    }

    [(WCM_SacManager *)self sacRemoveAllGnssFreq];
  }

  else if (freq)
  {
    if (freq == 1)
    {

      [(WCM_SacManager *)self sacRemoveAllWifiFreq];
    }
  }

  else
  {

    [(WCM_SacManager *)self sacRemoveAllCellularFreqOnSubId0:1 andSubId1:1];
  }
}

- (void)removeFreqFromArray:(id)array centerFreq:(unint64_t)freq bandwidth:(unint64_t)bandwidth
{
  arrayCopy = array;
  v7 = arrayCopy;
  if (arrayCopy)
  {
    v12 = arrayCopy;
    arrayCopy = [arrayCopy count];
    v7 = v12;
    if (arrayCopy)
    {
      v8 = 0;
      v9 = 1;
      while (1)
      {
        v10 = [v7 objectAtIndex:v8];
        if ([v10 centerFreq] == freq)
        {
          break;
        }

        v8 = v9;
        arrayCopy = [v12 count];
        v11 = arrayCopy > v9++;
        v7 = v12;
        if (!v11)
        {
          goto LABEL_8;
        }
      }

      [v12 removeObjectAtIndex:v8];

      v7 = v12;
    }
  }

LABEL_8:

  _objc_release_x1(arrayCopy, v7);
}

- (void)frequencyToolRemoveFreq:(int)freq centerFreq:(unint64_t)centerFreq bandwidth:(unint64_t)bandwidth
{
  if (freq)
  {
    if (freq == 2)
    {
      [WCM_Logging logLevel:*&freq message:@"Frequency tool client(GNSS) remove freq=%llu, bw=%llu", centerFreq, bandwidth];
      v9 = [NSMutableArray alloc];
      mGnssL1FreqList = [(WCM_SacManager *)self mGnssL1FreqList];
      v23 = [v9 initWithArray:mGnssL1FreqList];

      v11 = [NSMutableArray alloc];
      mGnssL5FreqList = [(WCM_SacManager *)self mGnssL5FreqList];
      v13 = [v11 initWithArray:mGnssL5FreqList];

      [(WCM_SacManager *)self removeFreqFromArray:v23 centerFreq:centerFreq bandwidth:bandwidth];
      [(WCM_SacManager *)self removeFreqFromArray:v13 centerFreq:centerFreq bandwidth:bandwidth];
      [(WCM_SacManager *)self sacUpdateGnssFreqInfo:v23 L5Freq:v13];
      [(WCM_SacManager *)self sacReportGnssVictimFreqListOnTargetSac:1 action:1];
      [(WCM_SacManager *)self sacReportGnssVictimFreqListOnTargetSac:2 action:1];
    }

    else if (freq == 1)
    {
      [WCM_Logging logLevel:2 message:@"Frequency tool client(WiFi) remove freq=%llu, bw=%llu", centerFreq, bandwidth];
      mWifiFreqList = [(WCM_SacManager *)self mWifiFreqList];
      [(WCM_SacManager *)self removeFreqFromArray:mWifiFreqList centerFreq:centerFreq bandwidth:bandwidth];

      [(WCM_SacManager *)self sacReportWifiVictimFreqListOnTargetSac:1 action:1];

      [(WCM_SacManager *)self sacReportWifiVictimFreqListOnTargetSac:2 action:1];
    }
  }

  else
  {
    [WCM_Logging logLevel:2 message:@"Frequency tool client(Cellular) remove freq=%llu, bw=%llu", centerFreq, bandwidth];
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    v15 = [mCellularFreqSet objectAtIndex:0];
    mCellularPccFreq = [v15 mCellularPccFreq];
    [(WCM_SacManager *)self removeFreqFromArray:mCellularPccFreq centerFreq:centerFreq bandwidth:bandwidth];

    mCellularFreqSet2 = [(WCM_SacManager *)self mCellularFreqSet];
    v18 = [mCellularFreqSet2 objectAtIndex:0];
    mCellularSccFreqList = [v18 mCellularSccFreqList];
    [(WCM_SacManager *)self removeFreqFromArray:mCellularSccFreqList centerFreq:centerFreq bandwidth:bandwidth];

    mCellularFreqSet3 = [(WCM_SacManager *)self mCellularFreqSet];
    v21 = [mCellularFreqSet3 objectAtIndex:0];
    mCellularSearchFreqList = [v21 mCellularSearchFreqList];
    [(WCM_SacManager *)self removeFreqFromArray:mCellularSearchFreqList centerFreq:centerFreq bandwidth:bandwidth];

    [(WCM_SacManager *)self sacReportCellularVictimFreqListOnTargetSac:1 action:1];

    [(WCM_SacManager *)self sacReportCellularVictimFreqListOnTargetSac:2 action:1];
  }
}

- (void)frequencyToolAddClientFreq:(int)freq centerFreq:(unint64_t)centerFreq bandwidth:(unint64_t)bandwidth celluarCarrierType:(int)type
{
  if (freq)
  {
    if (freq == 2)
    {
      [WCM_Logging logLevel:*&freq message:@"Frequency tool client(GNSS) add freq=%llu, bw=%llu", bandwidth, *&type, centerFreq, bandwidth];
      v9 = [NSMutableArray alloc];
      mGnssL1FreqList = [(WCM_SacManager *)self mGnssL1FreqList];
      v16 = [v9 initWithArray:mGnssL1FreqList];

      v11 = [NSMutableArray alloc];
      mGnssL5FreqList = [(WCM_SacManager *)self mGnssL5FreqList];
      v13 = [v11 initWithArray:mGnssL5FreqList];

      v14 = [[FreqRangeInfo alloc] initWithFreq:centerFreq Bw:bandwidth];
      v15 = v16;
      if (centerFreq - 1567747500 < 0xEA2569 || (v15 = v13, centerFreq - 1170200000 <= 0xBEBC20))
      {
        [v15 addObject:v14];
      }

      [(WCM_SacManager *)self sacUpdateGnssFreqInfo:v16 L5Freq:v13];
      [(WCM_SacManager *)self sacReportGnssVictimFreqListOnTargetSac:1 action:1];
      [(WCM_SacManager *)self sacReportGnssVictimFreqListOnTargetSac:2 action:1];
    }

    else if (freq == 1)
    {
      [WCM_Logging logLevel:2 message:@"Frequency tool client(WiFi) add freq=%llu, bw=%llu", bandwidth, *&type, centerFreq, bandwidth];
      [(WCM_SacManager *)self sacUpdateWiFiFreqInfo:centerFreq Bandwidth:bandwidth];
      [(WCM_SacManager *)self sacReportWifiVictimFreqListOnTargetSac:1 action:1];

      [(WCM_SacManager *)self sacReportWifiVictimFreqListOnTargetSac:2 action:1];
    }
  }

  else
  {
    [(WCM_SacManager *)self frequencyToolAddCellularFreq:centerFreq bandwidth:bandwidth freqType:*&type];
    [(WCM_SacManager *)self sacReportCellularVictimFreqListOnTargetSac:1 action:1];

    [(WCM_SacManager *)self sacReportCellularVictimFreqListOnTargetSac:2 action:1];
  }
}

- (void)frequencyToolAddCellularFreq:(unint64_t)freq bandwidth:(unint64_t)bandwidth freqType:(int)type
{
  v5 = *&type;
  v17 = [[FreqRangeInfo alloc] initWithFreq:freq Bw:bandwidth];
  [WCM_Logging logLevel:2 message:@"Frequency tool client(Cellular) add freq=%llu, bw=%llu, type=%d", freq, bandwidth, v5];
  if (v5 == 3)
  {
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    v14 = [mCellularFreqSet objectAtIndex:0];
    mCellularSearchFreqList = [v14 mCellularSearchFreqList];
  }

  else if (v5 == 2)
  {
    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    v14 = [mCellularFreqSet objectAtIndex:0];
    mCellularSearchFreqList = [v14 mCellularSccFreqList];
  }

  else
  {
    v9 = v17;
    if (v5 != 1)
    {
      goto LABEL_8;
    }

    mCellularFreqSet2 = [(WCM_SacManager *)self mCellularFreqSet];
    v11 = [mCellularFreqSet2 objectAtIndex:0];
    mCellularPccFreq = [v11 mCellularPccFreq];
    [mCellularPccFreq removeAllObjects];

    mCellularFreqSet = [(WCM_SacManager *)self mCellularFreqSet];
    v14 = [mCellularFreqSet objectAtIndex:0];
    mCellularSearchFreqList = [v14 mCellularPccFreq];
  }

  v16 = mCellularSearchFreqList;
  [mCellularSearchFreqList addObject:v17];

  v9 = v17;
LABEL_8:
}

- (void)frequencyToolGetJasperResult:(id)result generalSacResult:(id)sacResult client:(int)client
{
  resultCopy = result;
  sacResultCopy = sacResult;
  if (resultCopy && sacResultCopy)
  {
    [resultCopy removeAllObjects];
    [sacResultCopy removeAllObjects];
    if (client)
    {
      if (client == 2)
      {
        mCacheGnssReportedReducedList = [(WCM_SacManager *)self mCacheGnssReportedReducedList];
        v12 = resultCopy;
      }

      else
      {
        if (client == 1)
        {
          mCacheWifiReportedReducedList = [(WCM_SacManager *)self mCacheWifiReportedReducedList];
          [resultCopy addObjectsFromArray:mCacheWifiReportedReducedList];

          mCacheWifiReportedFullList = [(WCM_SacManager *)self mCacheWifiReportedFullList];
LABEL_11:
          v18 = mCacheWifiReportedFullList;
          [sacResultCopy addObjectsFromArray:mCacheWifiReportedFullList];

          goto LABEL_12;
        }

        mCacheCellularReportedReducedList = [(WCM_SacManager *)self mCacheCellularReportedReducedList];
        [resultCopy addObjectsFromArray:mCacheCellularReportedReducedList];

        mCacheWifiReportedReducedList2 = [(WCM_SacManager *)self mCacheWifiReportedReducedList];
        [resultCopy addObjectsFromArray:mCacheWifiReportedReducedList2];

        mCacheGnssReportedReducedList2 = [(WCM_SacManager *)self mCacheGnssReportedReducedList];
        [resultCopy addObjectsFromArray:mCacheGnssReportedReducedList2];

        mCacheCellularReportedFullList = [(WCM_SacManager *)self mCacheCellularReportedFullList];
        [sacResultCopy addObjectsFromArray:mCacheCellularReportedFullList];

        mCacheGnssReportedReducedList = [(WCM_SacManager *)self mCacheWifiReportedFullList];
        v12 = sacResultCopy;
      }

      [v12 addObjectsFromArray:mCacheGnssReportedReducedList];

      mCacheWifiReportedFullList = [(WCM_SacManager *)self mCacheGnssReportedFullList];
      goto LABEL_11;
    }

    mCacheCellularReportedReducedList2 = [(WCM_SacManager *)self mCacheCellularReportedReducedList];
    [resultCopy addObjectsFromArray:mCacheCellularReportedReducedList2];

    mCacheWifiReportedFullList = [(WCM_SacManager *)self mCacheCellularReportedFullList];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WCM_SacManager;
  [(WCM_SacManager *)&v2 dealloc];
}

@end