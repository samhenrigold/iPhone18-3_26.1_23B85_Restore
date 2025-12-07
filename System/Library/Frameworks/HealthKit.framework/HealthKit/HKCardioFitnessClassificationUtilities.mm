@interface HKCardioFitnessClassificationUtilities
+ (id)_cardioFitnessLevelTransitionDatesForDateInterval:(id)interval biologicalSex:(int64_t)sex dateOfBirth:(id)birth;
+ (id)_cardioFitnessLevels;
+ (id)_flattenedThresholdsForLevelData:(id)data;
+ (id)_parseCoreMotionClassificationData:(id)data;
+ (id)_queryCoreMotionClassifications;
+ (id)_queryCoreMotionClassificationsForBiologicalSex:(int64_t)sex age:(int64_t)age;
+ (id)_stubbedCardioFitnessLevelData;
+ (id)analyticsStringForLevel:(int64_t)level;
+ (id)cardioFitnessDataForBiologicalSex:(int64_t)sex;
+ (id)cardioFitnessDataForBiologicalSex:(int64_t)sex age:(int64_t)age;
+ (id)cardioFitnessDataForLevel:(int64_t)level biologicalSex:(int64_t)sex age:(int64_t)age;
+ (id)cardioFitnessDataForLevel:(int64_t)level date:(id)date healthStore:(id)store;
+ (id)cardioFitnessDataForVO2Max:(double)max biologicalSex:(int64_t)sex age:(int64_t)age;
+ (id)cardioFitnessLevelDateIntervalsWithDateInterval:(id)interval healthStore:(id)store;
+ (id)cardioFitnessPropertiesForDate:(id)date healthStore:(id)store;
+ (id)flattenedCardioFitnessDataForBiologicalSex:(int64_t)sex;
+ (int64_t)cardioFitnessLevelForVO2Max:(double)max biologicalSex:(int64_t)sex age:(int64_t)age;
+ (int64_t)cardioFitnessLevelForVO2MaxSample:(id)sample inHealthStore:(id)store;
+ (void)_cardioFitnessLevels;
@end

@implementation HKCardioFitnessClassificationUtilities

+ (id)_cardioFitnessLevels
{
  v3 = _cardioFitnessLookupTable;
  if (!_cardioFitnessLookupTable)
  {
    _queryCoreMotionClassifications = [self _queryCoreMotionClassifications];
    if (_queryCoreMotionClassifications)
    {
      objc_storeStrong(&_cardioFitnessLookupTable, _queryCoreMotionClassifications);
    }

    else
    {
      _HKInitializeLogging(0, v4);
      v6 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
      {
        +[(HKCardioFitnessClassificationUtilities *)self];
      }

      _stubbedCardioFitnessLevelData = [self _stubbedCardioFitnessLevelData];
      v8 = _cardioFitnessLookupTable;
      _cardioFitnessLookupTable = _stubbedCardioFitnessLevelData;
    }

    v3 = _cardioFitnessLookupTable;
  }

  return v3;
}

+ (id)_stubbedCardioFitnessLevelData
{
  v119[3] = *MEMORY[0x1E69E9840];
  v118[0] = &unk_1F0684650;
  v116[0] = &unk_1F0684668;
  v114[0] = &unk_1F0684680;
  v67 = [HKCardioFitnessLevelData initWithCardioFitnessLevel:"initWithCardioFitnessLevel:biologicalSex:ageLowerBound:ageUpperBound:vo2MaxLowerBound:vo2MaxUpperBound:" biologicalSex:0 ageLowerBound:1 ageUpperBound:20 vo2MaxLowerBound:29 vo2MaxUpperBound:?];
  v115[0] = v67;
  v114[1] = &unk_1F0684650;
  v66 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:1 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:45.0 vo2MaxUpperBound:?];
  v115[1] = v66;
  v114[2] = &unk_1F0684698;
  v65 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:1 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:55.0 vo2MaxUpperBound:?];
  v115[2] = v65;
  v114[3] = &unk_1F06846B0;
  v64 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:1 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:65.0 vo2MaxUpperBound:?];
  v115[3] = v64;
  v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:v114 count:4];
  v117[0] = v63;
  v116[1] = &unk_1F06846C8;
  v112[0] = &unk_1F0684680;
  v62 = [HKCardioFitnessLevelData initWithCardioFitnessLevel:"initWithCardioFitnessLevel:biologicalSex:ageLowerBound:ageUpperBound:vo2MaxLowerBound:vo2MaxUpperBound:" biologicalSex:0 ageLowerBound:1 ageUpperBound:30 vo2MaxLowerBound:39 vo2MaxUpperBound:?];
  v113[0] = v62;
  v112[1] = &unk_1F0684650;
  v61 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:1 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:44.0 vo2MaxUpperBound:?];
  v113[1] = v61;
  v112[2] = &unk_1F0684698;
  v60 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:1 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:54.0 vo2MaxUpperBound:?];
  v113[2] = v60;
  v112[3] = &unk_1F06846B0;
  v59 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:1 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:64.0 vo2MaxUpperBound:?];
  v113[3] = v59;
  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v113 forKeys:v112 count:4];
  v117[1] = v58;
  v116[2] = &unk_1F06846E0;
  v110[0] = &unk_1F0684680;
  v57 = [HKCardioFitnessLevelData initWithCardioFitnessLevel:"initWithCardioFitnessLevel:biologicalSex:ageLowerBound:ageUpperBound:vo2MaxLowerBound:vo2MaxUpperBound:" biologicalSex:0 ageLowerBound:1 ageUpperBound:40 vo2MaxLowerBound:49 vo2MaxUpperBound:?];
  v111[0] = v57;
  v110[1] = &unk_1F0684650;
  v56 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:1 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:43.0 vo2MaxUpperBound:53.0];
  v111[1] = v56;
  v110[2] = &unk_1F0684698;
  v55 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:1 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:53.0 vo2MaxUpperBound:63.0];
  v111[2] = v55;
  v110[3] = &unk_1F06846B0;
  v54 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:1 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:63.0 vo2MaxUpperBound:?];
  v111[3] = v54;
  v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:4];
  v117[2] = v53;
  v116[3] = &unk_1F06846F8;
  v108[0] = &unk_1F0684680;
  v52 = [HKCardioFitnessLevelData initWithCardioFitnessLevel:"initWithCardioFitnessLevel:biologicalSex:ageLowerBound:ageUpperBound:vo2MaxLowerBound:vo2MaxUpperBound:" biologicalSex:0 ageLowerBound:1 ageUpperBound:50 vo2MaxLowerBound:59 vo2MaxUpperBound:?];
  v109[0] = v52;
  v108[1] = &unk_1F0684650;
  v51 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:1 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:42.0 vo2MaxUpperBound:52.0];
  v109[1] = v51;
  v108[2] = &unk_1F0684698;
  v50 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:1 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:52.0 vo2MaxUpperBound:62.0];
  v109[2] = v50;
  v108[3] = &unk_1F06846B0;
  v49 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:1 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:62.0 vo2MaxUpperBound:?];
  v109[3] = v49;
  v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:4];
  v117[3] = v48;
  v116[4] = &unk_1F0684710;
  v106[0] = &unk_1F0684680;
  v47 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:1 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:31.0 vo2MaxUpperBound:41.0];
  v107[0] = v47;
  v106[1] = &unk_1F0684650;
  v46 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:1 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:41.0 vo2MaxUpperBound:51.0];
  v107[1] = v46;
  v106[2] = &unk_1F0684698;
  v45 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:1 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:51.0 vo2MaxUpperBound:61.0];
  v107[2] = v45;
  v106[3] = &unk_1F06846B0;
  v44 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:1 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:61.0 vo2MaxUpperBound:?];
  v107[3] = v44;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:4];
  v117[4] = v43;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v117 forKeys:v116 count:5];
  v119[0] = v42;
  v118[1] = &unk_1F0684698;
  v104[0] = &unk_1F0684668;
  v102[0] = &unk_1F0684680;
  v41 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:2 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:35.0 vo2MaxUpperBound:45.0];
  v103[0] = v41;
  v102[1] = &unk_1F0684650;
  v40 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:2 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:45.0 vo2MaxUpperBound:55.0];
  v103[1] = v40;
  v102[2] = &unk_1F0684698;
  v39 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:2 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:55.0 vo2MaxUpperBound:65.0];
  v103[2] = v39;
  v102[3] = &unk_1F06846B0;
  v38 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:2 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:65.0 vo2MaxUpperBound:75.0];
  v103[3] = v38;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:4];
  v105[0] = v37;
  v104[1] = &unk_1F06846C8;
  v100[0] = &unk_1F0684680;
  v36 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:2 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:34.0 vo2MaxUpperBound:44.0];
  v101[0] = v36;
  v100[1] = &unk_1F0684650;
  v35 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:2 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:44.0 vo2MaxUpperBound:54.0];
  v101[1] = v35;
  v100[2] = &unk_1F0684698;
  v34 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:2 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:54.0 vo2MaxUpperBound:64.0];
  v101[2] = v34;
  v100[3] = &unk_1F06846B0;
  v33 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:2 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:64.0 vo2MaxUpperBound:74.0];
  v101[3] = v33;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:4];
  v105[1] = v32;
  v104[2] = &unk_1F06846E0;
  v98[0] = &unk_1F0684680;
  v31 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:2 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:33.0 vo2MaxUpperBound:43.0];
  v99[0] = v31;
  v98[1] = &unk_1F0684650;
  v30 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:2 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:43.0 vo2MaxUpperBound:53.0];
  v99[1] = v30;
  v98[2] = &unk_1F0684698;
  v29 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:2 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:53.0 vo2MaxUpperBound:63.0];
  v99[2] = v29;
  v98[3] = &unk_1F06846B0;
  v28 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:2 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:63.0 vo2MaxUpperBound:73.0];
  v99[3] = v28;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:v98 count:4];
  v105[2] = v27;
  v104[3] = &unk_1F06846F8;
  v96[0] = &unk_1F0684680;
  v26 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:2 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:32.0 vo2MaxUpperBound:42.0];
  v97[0] = v26;
  v96[1] = &unk_1F0684650;
  v25 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:2 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:42.0 vo2MaxUpperBound:52.0];
  v97[1] = v25;
  v96[2] = &unk_1F0684698;
  v24 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:2 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:52.0 vo2MaxUpperBound:62.0];
  v97[2] = v24;
  v96[3] = &unk_1F06846B0;
  v23 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:2 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:62.0 vo2MaxUpperBound:72.0];
  v97[3] = v23;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:4];
  v105[3] = v22;
  v104[4] = &unk_1F0684710;
  v94[0] = &unk_1F0684680;
  v21 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:2 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:31.0 vo2MaxUpperBound:41.0];
  v95[0] = v21;
  v94[1] = &unk_1F0684650;
  v20 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:2 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:41.0 vo2MaxUpperBound:51.0];
  v95[1] = v20;
  v94[2] = &unk_1F0684698;
  v19 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:2 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:51.0 vo2MaxUpperBound:61.0];
  v95[2] = v19;
  v94[3] = &unk_1F06846B0;
  v18 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:2 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:61.0 vo2MaxUpperBound:71.0];
  v95[3] = v18;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v95 forKeys:v94 count:4];
  v105[4] = v17;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:5];
  v119[1] = v16;
  v118[2] = &unk_1F06846B0;
  v92[0] = &unk_1F0684668;
  v90[0] = &unk_1F0684680;
  v81 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:3 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:35.0 vo2MaxUpperBound:45.0];
  v91[0] = v81;
  v90[1] = &unk_1F0684650;
  v15 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:3 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:45.0 vo2MaxUpperBound:55.0];
  v91[1] = v15;
  v90[2] = &unk_1F0684698;
  v74 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:3 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:55.0 vo2MaxUpperBound:65.0];
  v91[2] = v74;
  v90[3] = &unk_1F06846B0;
  v80 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:3 ageLowerBound:20 ageUpperBound:29 vo2MaxLowerBound:65.0 vo2MaxUpperBound:75.0];
  v91[3] = v80;
  v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:4];
  v93[0] = v73;
  v92[1] = &unk_1F06846C8;
  v88[0] = &unk_1F0684680;
  v79 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:3 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:34.0 vo2MaxUpperBound:44.0];
  v89[0] = v79;
  v88[1] = &unk_1F0684650;
  v72 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:3 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:44.0 vo2MaxUpperBound:54.0];
  v89[1] = v72;
  v88[2] = &unk_1F0684698;
  v71 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:3 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:54.0 vo2MaxUpperBound:64.0];
  v89[2] = v71;
  v88[3] = &unk_1F06846B0;
  v78 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:3 ageLowerBound:30 ageUpperBound:39 vo2MaxLowerBound:64.0 vo2MaxUpperBound:74.0];
  v89[3] = v78;
  v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:4];
  v93[1] = v70;
  v92[2] = &unk_1F06846E0;
  v86[0] = &unk_1F0684680;
  v77 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:3 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:33.0 vo2MaxUpperBound:43.0];
  v87[0] = v77;
  v86[1] = &unk_1F0684650;
  v69 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:3 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:43.0 vo2MaxUpperBound:53.0];
  v87[1] = v69;
  v86[2] = &unk_1F0684698;
  v68 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:3 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:53.0 vo2MaxUpperBound:63.0];
  v87[2] = v68;
  v86[3] = &unk_1F06846B0;
  v76 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:3 ageLowerBound:40 ageUpperBound:49 vo2MaxLowerBound:63.0 vo2MaxUpperBound:73.0];
  v87[3] = v76;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:4];
  v93[2] = v14;
  v92[3] = &unk_1F06846F8;
  v84[0] = &unk_1F0684680;
  v75 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:3 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:32.0 vo2MaxUpperBound:42.0];
  v85[0] = v75;
  v84[1] = &unk_1F0684650;
  v13 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:3 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:42.0 vo2MaxUpperBound:52.0];
  v85[1] = v13;
  v84[2] = &unk_1F0684698;
  v2 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:3 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:52.0 vo2MaxUpperBound:62.0];
  v85[2] = v2;
  v84[3] = &unk_1F06846B0;
  v3 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:3 ageLowerBound:50 ageUpperBound:59 vo2MaxLowerBound:62.0 vo2MaxUpperBound:72.0];
  v85[3] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:4];
  v93[3] = v4;
  v92[4] = &unk_1F0684710;
  v82[0] = &unk_1F0684680;
  v5 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:0 biologicalSex:3 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:31.0 vo2MaxUpperBound:41.0];
  v83[0] = v5;
  v82[1] = &unk_1F0684650;
  v6 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:1 biologicalSex:3 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:41.0 vo2MaxUpperBound:51.0];
  v83[1] = v6;
  v82[2] = &unk_1F0684698;
  v7 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:2 biologicalSex:3 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:51.0 vo2MaxUpperBound:61.0];
  v83[2] = v7;
  v82[3] = &unk_1F06846B0;
  v8 = [[HKCardioFitnessLevelData alloc] initWithCardioFitnessLevel:3 biologicalSex:3 ageLowerBound:60 ageUpperBound:0x7FFFFFFFFFFFFFFFLL vo2MaxLowerBound:61.0 vo2MaxUpperBound:71.0];
  v83[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:4];
  v93[4] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:v92 count:5];
  v119[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v119 forKeys:v118 count:3];

  return v11;
}

+ (id)_parseCoreMotionClassificationData:(id)data
{
  v61 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if ([dataCopy count])
  {
    firstObject = [dataCopy firstObject];
    biologicalSex = [firstObject biologicalSex];
    v8 = biologicalSex - 4;
    if ((biologicalSex - 4) >= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = biologicalSex;
    }

    else
    {
      v9 = 0;
    }

    firstObject2 = [dataCopy firstObject];
    ageLowerBound = [firstObject2 ageLowerBound];
    if (ageLowerBound <= 59)
    {
      if (ageLowerBound <= 49)
      {
        if (ageLowerBound <= 39)
        {
          if (ageLowerBound <= 29)
          {
            if (ageLowerBound >= 20)
            {
              v12 = 20;
            }

            else
            {
              v12 = 0x7FFFFFFFFFFFFFFFLL;
            }
          }

          else
          {
            v12 = 30;
          }
        }

        else
        {
          v12 = 40;
        }
      }

      else
      {
        v12 = 50;
      }
    }

    else
    {
      v12 = 60;
    }

    v13 = 0;
    if (v8 >= 0xFFFFFFFFFFFFFFFDLL && v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v49 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
      v53 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:6];
      v55 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v48 = dataCopy;
      obj = dataCopy;
      v14 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (v14)
      {
        v15 = v14;
        selfCopy = self;
        v47 = a2;
        v52 = *v57;
        do
        {
          v16 = 0;
          v17 = v12;
          v50 = v15;
          do
          {
            if (*v57 != v52)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v56 + 1) + 8 * v16);
            context = objc_autoreleasePoolPush();
            biologicalSex2 = [v18 biologicalSex];
            if ((biologicalSex2 - 1) >= 3)
            {
              v20 = 0;
            }

            else
            {
              v20 = biologicalSex2;
            }

            ageLowerBound2 = [v18 ageLowerBound];
            v22 = 20;
            if (ageLowerBound2 < 20)
            {
              v22 = 0x7FFFFFFFFFFFFFFFLL;
            }

            if (ageLowerBound2 > 29)
            {
              v22 = 30;
            }

            if (ageLowerBound2 > 39)
            {
              v22 = 40;
            }

            if (ageLowerBound2 > 49)
            {
              v22 = 50;
            }

            if (ageLowerBound2 <= 59)
            {
              v12 = v22;
            }

            else
            {
              v12 = 60;
            }

            if (v20 != v9)
            {
              if (v20 <= v9)
              {
                [(HKCardioFitnessClassificationUtilities *)v47 _parseCoreMotionClassificationData:selfCopy];
              }

              v23 = [v55 copy];
              v24 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
              [v53 setObject:v23 forKeyedSubscript:v24];

              [v55 removeAllObjects];
              v25 = [v53 copy];
              v26 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
              [v49 setObject:v25 forKeyedSubscript:v26];

              [v53 removeAllObjects];
              v17 = v12;
              v9 = v20;
              v15 = v50;
            }

            if (v12 != v17)
            {
              if (v12 <= v17)
              {
                [(HKCardioFitnessClassificationUtilities *)v47 _parseCoreMotionClassificationData:selfCopy];
              }

              v27 = [v55 copy];
              v28 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
              [v53 setObject:v27 forKeyedSubscript:v28];

              [v55 removeAllObjects];
            }

            classificationType = [v18 classificationType];
            if (classificationType >= 4)
            {
              v30 = -1;
            }

            else
            {
              v30 = classificationType;
            }

            v31 = [HKCardioFitnessLevelData alloc];
            v32 = v9;
            ageLowerBound3 = [v18 ageLowerBound];
            ageUpperBound = [v18 ageUpperBound];
            [v18 vo2MaxLowerBound];
            v36 = v35;
            [v18 vo2MaxUpperBound];
            v37 = ageLowerBound3;
            v9 = v32;
            v39 = [(HKCardioFitnessLevelData *)v31 initWithCardioFitnessLevel:v30 biologicalSex:v20 ageLowerBound:v37 ageUpperBound:ageUpperBound vo2MaxLowerBound:v36 vo2MaxUpperBound:v38];
            v40 = [MEMORY[0x1E696AD98] numberWithInteger:v30];
            [v55 setObject:v39 forKeyedSubscript:v40];

            objc_autoreleasePoolPop(context);
            ++v16;
            v17 = v12;
          }

          while (v15 != v16);
          v15 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
        }

        while (v15);
      }

      v41 = [v55 copy];
      v42 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
      [v53 setObject:v41 forKeyedSubscript:v42];

      v43 = [v53 copy];
      v44 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
      [v49 setObject:v43 forKeyedSubscript:v44];

      v13 = [v49 copy];
      dataCopy = v48;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_queryCoreMotionClassifications
{
  v3 = objc_alloc_init(MEMORY[0x1E6963508]);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__35;
  v11 = __Block_byref_object_dispose__35;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__HKCardioFitnessClassificationUtilities__queryCoreMotionClassifications__block_invoke;
  v6[3] = &unk_1E7380B28;
  v6[4] = &v7;
  v6[5] = self;
  [v3 queryAllClassificationsWithHandler:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __73__HKCardioFitnessClassificationUtilities__queryCoreMotionClassifications__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v5 && (v6 = [v5 count]) != 0)
  {
    _HKInitializeLogging(v6, v7);
    v9 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_INFO, "%{public}@: Retrieved all cardio fitness classifications", &v15, 0xCu);
    }

    v11 = [*(a1 + 40) _parseCoreMotionClassificationData:v5];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    _HKInitializeLogging(v6, v7);
    v14 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      __73__HKCardioFitnessClassificationUtilities__queryCoreMotionClassifications__block_invoke_cold_1(a1, v14, v8);
    }
  }
}

+ (id)_queryCoreMotionClassificationsForBiologicalSex:(int64_t)sex age:(int64_t)age
{
  v7 = objc_alloc_init(MEMORY[0x1E6963508]);
  v8 = v7;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__35;
  v17 = __Block_byref_object_dispose__35;
  v18 = 0;
  if ((sex - 1) >= 3)
  {
    sexCopy = 0;
  }

  else
  {
    sexCopy = sex;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __94__HKCardioFitnessClassificationUtilities__queryCoreMotionClassificationsForBiologicalSex_age___block_invoke;
  v12[3] = &unk_1E7380B50;
  v12[6] = sex;
  v12[7] = age;
  v12[4] = &v13;
  v12[5] = self;
  [v7 queryClassificationForBiologicalSex:sexCopy age:age handler:v12];
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __94__HKCardioFitnessClassificationUtilities__queryCoreMotionClassificationsForBiologicalSex_age___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (v5 && (v6 = [v5 count]) != 0)
  {
    _HKInitializeLogging(v6, v7);
    v9 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v17 = 138543875;
      v18 = v10;
      v19 = 2049;
      v20 = v11;
      v21 = 2049;
      v22 = v12;
      _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_INFO, "%{public}@: Retrieved cardio fitness classifications for biological sex: %{private}ld, age: %{private}ld", &v17, 0x20u);
    }

    v13 = [*(a1 + 40) _parseCoreMotionClassificationData:v5];
    v14 = *(*(a1 + 32) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    _HKInitializeLogging(v6, v7);
    v16 = HKLogDefault;
    if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
    {
      __73__HKCardioFitnessClassificationUtilities__queryCoreMotionClassifications__block_invoke_cold_1(a1, v16, v8);
    }
  }
}

+ (id)_flattenedThresholdsForLevelData:(id)data
{
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  allKeys = [dataCopy allKeys];
  v6 = [v4 initWithCapacity:{objc_msgSend(allKeys, "count") + 1}];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  hk_sortedKeys = [dataCopy hk_sortedKeys];
  v8 = [hk_sortedKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(hk_sortedKeys);
        }

        v12 = [dataCopy objectForKeyedSubscript:*(*(&v18 + 1) + 8 * i)];
        if (![v12 cardioFitnessLevel])
        {
          v13 = MEMORY[0x1E696AD98];
          [v12 vo2MaxLowerBound];
          v14 = [v13 numberWithDouble:?];
          [v6 addObject:v14];
        }

        v15 = MEMORY[0x1E696AD98];
        [v12 vo2MaxUpperBound];
        v16 = [v15 numberWithDouble:?];
        [v6 addObject:v16];
      }

      v9 = [hk_sortedKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)flattenedCardioFitnessDataForBiologicalSex:(int64_t)sex
{
  v31 = *MEMORY[0x1E69E9840];
  _cardioFitnessLevels = [self _cardioFitnessLevels];
  if (sex)
  {
    sexCopy = sex;
  }

  else
  {
    sexCopy = 3;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:sexCopy];
  v7 = [_cardioFitnessLevels objectForKeyedSubscript:v6];

  hk_sortedKeys = [v7 hk_sortedKeys];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __85__HKCardioFitnessClassificationUtilities_flattenedCardioFitnessDataForBiologicalSex___block_invoke;
  v28[3] = &unk_1E7380B78;
  v9 = v7;
  v29 = v9;
  v10 = [hk_sortedKeys hk_map:v28];

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = objc_opt_class();
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "rangeValue", v24)}];
        v20 = [v9 objectForKeyedSubscript:v19];
        v21 = [v18 _flattenedThresholdsForLevelData:v20];
        [v11 addObject:v21];
      }

      v14 = [v12 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v14);
  }

  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v12];

  return v22;
}

id __85__HKCardioFitnessClassificationUtilities_flattenedCardioFitnessDataForBiologicalSex___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = [v2 objectForKeyedSubscript:&unk_1F0684680];

  v4 = [MEMORY[0x1E696B098] valueWithRange:{objc_msgSend(v3, "ageLowerBound"), objc_msgSend(v3, "ageUpperBound") - objc_msgSend(v3, "ageLowerBound")}];

  return v4;
}

+ (id)cardioFitnessDataForBiologicalSex:(int64_t)sex
{
  v23 = *MEMORY[0x1E69E9840];
  _cardioFitnessLevels = [self _cardioFitnessLevels];
  if (sex)
  {
    sexCopy = sex;
  }

  else
  {
    sexCopy = 3;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:sexCopy];
  v7 = [_cardioFitnessLevels objectForKeyedSubscript:v6];

  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [v7 allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v7 objectForKeyedSubscript:v14];
        hk_allValuesBySortedKeys = [v15 hk_allValuesBySortedKeys];
        [v8 setObject:hk_allValuesBySortedKeys forKeyedSubscript:v14];
      }

      v11 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v8;
}

+ (id)_cardioFitnessLevelTransitionDatesForDateInterval:(id)interval biologicalSex:(int64_t)sex dateOfBirth:(id)birth
{
  v20 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  birthCopy = birth;
  [intervalCopy duration];
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  else
  {
    year = [birthCopy year];
    v11 = birthCopy;
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v17 = xmmword_191DCD130;
    v18 = xmmword_191DCD140;
    v19 = 60;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    for (i = 0; i != 40; i += 8)
    {
      [v11 setYear:{*(&v17 + i) + year, v17, v18, v19, v20}];
      v15 = [currentCalendar dateFromComponents:v11];
      if ([intervalCopy containsDate:v15])
      {
        [v13 addObject:v15];
      }
    }

    v9 = [v13 sortedArrayUsingSelector:sel_compare_];
  }

  return v9;
}

+ (id)cardioFitnessPropertiesForDate:(id)date healthStore:(id)store
{
  dateCopy = date;
  storeCopy = store;
  v20 = 0;
  v7 = [storeCopy biologicalSexWithError:&v20];
  v8 = v20;
  v10 = v8;
  if (!v7)
  {
    _HKInitializeLogging(v8, v9);
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
    {
      +[HKCardioFitnessClassificationUtilities cardioFitnessPropertiesForDate:healthStore:];
    }
  }

  v19 = v10;
  v11 = [storeCopy dateOfBirthComponentsWithError:&v19];
  v12 = v19;

  if (v11)
  {
    if (v7)
    {
      biologicalSex = [v7 biologicalSex];
      v16 = [v11 hk_ageWithCurrentDate:dateCopy];
      v17 = objc_alloc_init(HKCardioFitnessLookupProperties);
      [(HKCardioFitnessLookupProperties *)v17 setAge:v16];
      [(HKCardioFitnessLookupProperties *)v17 setBiologicalSex:biologicalSex];
      goto LABEL_10;
    }
  }

  else
  {
    _HKInitializeLogging(v13, v14);
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
    {
      +[HKCardioFitnessClassificationUtilities cardioFitnessPropertiesForDate:healthStore:];
    }
  }

  v17 = 0;
LABEL_10:

  return v17;
}

+ (id)cardioFitnessDataForBiologicalSex:(int64_t)sex age:(int64_t)age
{
  if (age <= 59)
  {
    if (age <= 49)
    {
      if (age <= 39)
      {
        if (age <= 29)
        {
          v5 = 20;
          if (age <= 19)
          {
            v11 = 0;
            goto LABEL_15;
          }
        }

        else
        {
          v5 = 30;
        }
      }

      else
      {
        v5 = 40;
      }
    }

    else
    {
      v5 = 50;
    }
  }

  else
  {
    v5 = 60;
  }

  _cardioFitnessLevels = [self _cardioFitnessLevels];
  if (sex)
  {
    sexCopy = sex;
  }

  else
  {
    sexCopy = 3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:sexCopy];
  v9 = [_cardioFitnessLevels objectForKeyedSubscript:v8];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v11)
  {
    v12 = v11;
  }

LABEL_15:

  return v11;
}

+ (id)cardioFitnessDataForVO2Max:(double)max biologicalSex:(int64_t)sex age:(int64_t)age
{
  v6 = [self cardioFitnessDataForBiologicalSex:sex age:age];
  v7 = v6;
  if (v6)
  {
    v8 = &unk_1F0684680;
    v9 = [v6 objectForKeyedSubscript:&unk_1F0684680];
    [v9 vo2MaxUpperBound];
    v11 = v10;

    if (v11 <= max)
    {
      v8 = &unk_1F0684650;
      v12 = [v7 objectForKeyedSubscript:&unk_1F0684650];
      [v12 vo2MaxUpperBound];
      v14 = v13;

      if (v14 <= max)
      {
        v8 = &unk_1F0684698;
        v15 = [v7 objectForKeyedSubscript:&unk_1F0684698];
        [v15 vo2MaxUpperBound];
        v17 = v16;

        if (v17 <= max)
        {
          v8 = &unk_1F06846B0;
          v18 = [v7 objectForKeyedSubscript:&unk_1F06846B0];
          [v18 vo2MaxUpperBound];
        }
      }
    }

    v19 = [v7 objectForKeyedSubscript:v8];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)cardioFitnessDataForLevel:(int64_t)level biologicalSex:(int64_t)sex age:(int64_t)age
{
  v6 = [self cardioFitnessDataForBiologicalSex:sex age:age];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:level];
  v8 = [v6 objectForKeyedSubscript:v7];

  return v8;
}

+ (id)cardioFitnessDataForLevel:(int64_t)level date:(id)date healthStore:(id)store
{
  v7 = [self cardioFitnessPropertiesForDate:date healthStore:store];
  v8 = v7;
  if (v7)
  {
    v9 = [self cardioFitnessDataForLevel:level biologicalSex:objc_msgSend(v7 age:{"biologicalSex"), objc_msgSend(v7, "age")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (int64_t)cardioFitnessLevelForVO2Max:(double)max biologicalSex:(int64_t)sex age:(int64_t)age
{
  v5 = [self cardioFitnessDataForVO2Max:sex biologicalSex:age age:max];
  v6 = v5;
  if (v5)
  {
    cardioFitnessLevel = [v5 cardioFitnessLevel];
  }

  else
  {
    cardioFitnessLevel = -1;
  }

  return cardioFitnessLevel;
}

+ (int64_t)cardioFitnessLevelForVO2MaxSample:(id)sample inHealthStore:(id)store
{
  sampleCopy = sample;
  storeCopy = store;
  endDate = [sampleCopy endDate];
  v9 = [self cardioFitnessPropertiesForDate:endDate healthStore:storeCopy];

  if (v9)
  {
    quantity = [sampleCopy quantity];
    quantityType = [sampleCopy quantityType];
    canonicalUnit = [quantityType canonicalUnit];
    [quantity doubleValueForUnit:canonicalUnit];
    v14 = [self cardioFitnessLevelForVO2Max:objc_msgSend(v9 biologicalSex:"biologicalSex") age:{objc_msgSend(v9, "age"), v13}];
  }

  else
  {
    v14 = -1;
  }

  return v14;
}

+ (id)cardioFitnessLevelDateIntervalsWithDateInterval:(id)interval healthStore:(id)store
{
  v41 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  storeCopy = store;
  v39 = 0;
  v8 = [storeCopy biologicalSexWithError:&v39];
  v9 = v39;
  v11 = v9;
  if (!v8)
  {
    _HKInitializeLogging(v9, v10);
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
    {
      +[HKCardioFitnessClassificationUtilities cardioFitnessPropertiesForDate:healthStore:];
    }
  }

  v38 = v11;
  v12 = [storeCopy dateOfBirthComponentsWithError:&v38];
  v13 = v38;

  if (!v12)
  {
    _HKInitializeLogging(v14, v15);
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
    {
      +[HKCardioFitnessClassificationUtilities cardioFitnessPropertiesForDate:healthStore:];
    }

    goto LABEL_16;
  }

  if (!v8)
  {
LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v33 = storeCopy;
  v31 = v12;
  v16 = [self _cardioFitnessLevelTransitionDatesForDateInterval:intervalCopy biologicalSex:objc_msgSend(v8 dateOfBirth:{"biologicalSex"), v12}];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  startDate = [intervalCopy startDate];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = v16;
  v20 = [v19 countByEnumeratingWithState:&v34 objects:v40 count:16];
  v32 = v13;
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      v23 = 0;
      v24 = startDate;
      do
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v34 + 1) + 8 * v23);
        v26 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v24 endDate:v25];
        [v17 addObject:v26];
        startDate = v25;

        ++v23;
        v24 = startDate;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v21);
  }

  v27 = objc_alloc(MEMORY[0x1E696AB80]);
  endDate = [intervalCopy endDate];
  v29 = [v27 initWithStartDate:startDate endDate:endDate];

  [v17 addObject:v29];
  v13 = v32;
  storeCopy = v33;
  v12 = v31;
LABEL_17:

  return v17;
}

+ (id)analyticsStringForLevel:(int64_t)level
{
  if ((level + 1) > 4)
  {
    return &stru_1F05FF230;
  }

  else
  {
    return off_1E7380B98[level + 1];
  }
}

+ (void)_cardioFitnessLevels
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "%{public}@: falling back to stubbed cardio fitness level data", &v2, 0xCu);
}

+ (void)_parseCoreMotionClassificationData:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCardioFitnessClassificationUtilities.m" lineNumber:303 description:@"HKCardioFitnessUtilities: CMVO2MaxClassificationData array must be sorted by biological sex ascending"];
}

+ (void)_parseCoreMotionClassificationData:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKCardioFitnessClassificationUtilities.m" lineNumber:320 description:@"HKCardioFitnessUtilities: CMVO2MaxClassificationData array must be sorted by age ascending: item != current"];
}

void __73__HKCardioFitnessClassificationUtilities__queryCoreMotionClassifications__block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 localizedDescription];
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_3_3(&dword_19197B000, v6, v7, "%{public}@: Error retrieving cardio fitness classifications from Core Motion: %{public}@", v8, v9, v10, v11);
}

@end