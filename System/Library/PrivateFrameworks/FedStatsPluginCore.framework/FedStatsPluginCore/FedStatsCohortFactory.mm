@interface FedStatsCohortFactory
+ (id)cohortQueryFieldByName:(id)name;
+ (id)sharedInstance;
- (FedStatsCohortFactory)init;
@end

@implementation FedStatsCohortFactory

- (FedStatsCohortFactory)init
{
  v123[115] = *MEMORY[0x277D85DE8];
  v121.receiver = self;
  v121.super_class = FedStatsCohortFactory;
  result = [(FedStatsCohortFactory *)&v121 init];
  if (result)
  {
    v122[0] = @"locale";
    v120 = result;
    v119 = +[FedStatsCohortQueryLocale cohortInstance];
    v123[0] = v119;
    v122[1] = @"deviceType";
    v118 = +[FedStatsCohortQueryDeviceType cohortInstance];
    v123[1] = v118;
    v122[2] = @"numOfMediaApps";
    v117 = +[FedStatsCohortQueryInstalledAppsMedia cohortInstance];
    v123[2] = v117;
    v122[3] = @"numOfPhoneApps";
    v116 = +[FedStatsCohortQueryInstalledAppsPhone cohortInstance];
    v123[3] = v116;
    v122[4] = @"userSetDeviceRegion";
    v115 = +[FedStatsCohortQueryUserSetDeviceRegion cohortInstance];
    v123[4] = v115;
    v122[5] = @"bundleID";
    v114 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[5] = v114;
    v122[6] = @"sessionType";
    v113 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[6] = v113;
    v122[7] = @"sessionState";
    v112 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[7] = v112;
    v122[8] = @"supportsBackgrounding";
    v111 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[8] = v111;
    v122[9] = @"supportsStateRestoration";
    v110 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[9] = v110;
    v122[10] = @"eventName";
    v109 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[10] = v109;
    v122[11] = @"measure";
    v108 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[11] = v108;
    v122[12] = @"extra";
    v107 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[12] = v107;
    v122[13] = @"issuer";
    v106 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[13] = v106;
    v122[14] = @"dayOfWeek";
    v105 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[14] = v105;
    v122[15] = @"hourOfDay";
    v104 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[15] = v104;
    v122[16] = @"geohash";
    v103 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[16] = v103;
    v122[17] = @"country";
    v102 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[17] = v102;
    v122[18] = @"timeZone";
    v101 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[18] = v101;
    v122[19] = @"interfaceType";
    v100 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[19] = v100;
    v122[20] = @"radioType";
    v99 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[20] = v99;
    v122[21] = @"radioBand";
    v98 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[21] = v98;
    v122[22] = @"addressFamily";
    v97 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[22] = v97;
    v122[23] = @"lang";
    v96 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[23] = v96;
    v122[24] = @"platform";
    v95 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[24] = v95;
    v122[25] = @"performanceEvent";
    v94 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[25] = v94;
    v122[26] = @"signal";
    v93 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[26] = v93;
    v122[27] = @"userAgent";
    v92 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[27] = v92;
    v122[28] = @"countryCode";
    v91 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[28] = v91;
    v122[29] = @"error";
    v90 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[29] = v90;
    v122[30] = @"localeIdentifier";
    v89 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[30] = v89;
    v122[31] = @"contentType";
    v88 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[31] = v88;
    v122[32] = @"ageGroup";
    v87 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[32] = v87;
    v122[33] = @"eventDirection";
    v86 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[33] = v86;
    v122[34] = @"clientBundleID";
    v85 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[34] = v85;
    v122[35] = @"origin";
    v84 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[35] = v84;
    v122[36] = @"isNativeArchitecture";
    v83 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[36] = v83;
    v122[37] = @"dyldPlatform";
    v82 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[37] = v82;
    v122[38] = @"type";
    v81 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[38] = v81;
    v122[39] = @"screenDistance";
    v80 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[39] = v80;
    v122[40] = @"action";
    v79 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[40] = v79;
    v122[41] = @"gestureAssessment";
    v78 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[41] = v78;
    v122[42] = @"livenessAssessment";
    v77 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[42] = v77;
    v122[43] = @"passiveGestureAssessment";
    v76 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[43] = v76;
    v122[44] = @"passiveLivenessAssessment";
    v75 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[44] = v75;
    v122[45] = @"property";
    v74 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[45] = v74;
    v122[46] = @"accessedPropertyDirectly";
    v73 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[46] = v73;
    v122[47] = @"geohash1";
    v72 = [FedStatsCohortGeohash cohortInstanceWithPrecision:1];
    v123[47] = v72;
    v122[48] = @"geohash2";
    v71 = [FedStatsCohortGeohash cohortInstanceWithPrecision:2];
    v123[48] = v71;
    v122[49] = @"geohash3";
    v70 = [FedStatsCohortGeohash cohortInstanceWithPrecision:3];
    v123[49] = v70;
    v122[50] = @"geohash4";
    v69 = [FedStatsCohortGeohash cohortInstanceWithPrecision:4];
    v123[50] = v69;
    v122[51] = @"suggestionType";
    v68 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[51] = v68;
    v122[52] = @"footprint";
    v67 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[52] = v67;
    v122[53] = @"pageCount";
    v66 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[53] = v66;
    v122[54] = @"bitsOfURL";
    v65 = [FedStatsCohortQueryURLBits cohortQueryFieldWithKey:?];
    v123[54] = v65;
    v122[55] = @"protocol";
    v64 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[55] = v64;
    v122[56] = @"MCC";
    v63 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[56] = v63;
    v122[57] = @"MNC";
    v62 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[57] = v62;
    v122[58] = @"matchedEmNumSource";
    v61 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[58] = v61;
    v122[59] = @"sip380Procedure";
    v60 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[59] = v60;
    v122[60] = @"sip380RedirectedURN";
    v59 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[60] = v59;
    v122[61] = @"category";
    v58 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[61] = v58;
    v122[62] = @"previous";
    v57 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[62] = v57;
    v122[63] = @"scope";
    v56 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[63] = v56;
    v122[64] = @"language";
    v55 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[64] = v55;
    v122[65] = @"memoryGenerated";
    v54 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[65] = v54;
    v122[66] = @"memoryShared";
    v53 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[66] = v53;
    v122[67] = @"memoryWatched";
    v52 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[67] = v52;
    v122[68] = @"focusRegionType";
    v51 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[68] = v51;
    v122[69] = @"styleSelectionType";
    v50 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[69] = v50;
    v122[70] = @"userLibraryAgeInDays";
    v49 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[70] = v49;
    v122[71] = @"cardShownOrEngaged";
    v48 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[71] = v48;
    v122[72] = @"advertisedItemID";
    v47 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[72] = v47;
    v122[73] = @"conversionType";
    v46 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[73] = v46;
    v122[74] = @"adNetworkID";
    v45 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[74] = v45;
    v122[75] = @"publisherItemID";
    v44 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[75] = v44;
    v122[76] = @"marketplaceID";
    v43 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[76] = v43;
    v122[77] = @"storefrontID";
    v42 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[77] = v42;
    v122[78] = @"sourceDomain";
    v41 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[78] = v41;
    v122[79] = @"inAppPurchaseType";
    v40 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[79] = v40;
    v122[80] = @"currencyCode";
    v39 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[80] = v39;
    v122[81] = @"inAppPurchaseSubscriptionISO8601Duration";
    v38 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[81] = v38;
    v122[82] = @"tokenLength";
    v37 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[82] = v37;
    v122[83] = @"usage";
    v36 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[83] = v36;
    v122[84] = @"userInterfaceLanguage";
    v35 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[84] = v35;
    v122[85] = @"userSetRegionFormat";
    v34 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[85] = v34;
    v122[86] = @"result";
    v33 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[86] = v33;
    v122[87] = @"feature";
    v32 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[87] = v32;
    v122[88] = @"usecaseId";
    v31 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[88] = v31;
    v122[89] = @"modelName";
    v30 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[89] = v30;
    v122[90] = @"modelVersion";
    v29 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[90] = v29;
    v122[91] = @"portType";
    v28 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[91] = v28;
    v122[92] = @"blockingReason";
    v27 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[92] = v27;
    v122[93] = @"region";
    v26 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[93] = v26;
    v122[94] = @"memoryPromptSuggestionSource";
    v25 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[94] = v25;
    v122[95] = @"mechanisms";
    v24 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[95] = v24;
    v122[96] = @"actions";
    v23 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[96] = v23;
    v122[97] = @"failingAction";
    v22 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[97] = v22;
    v122[98] = @"successfulMechanism";
    v21 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[98] = v21;
    v122[99] = @"failedMechanisms";
    v20 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[99] = v20;
    v122[100] = @"taxonomy";
    v19 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[100] = v19;
    v122[101] = @"shootingCategory";
    v18 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[101] = v18;
    v122[102] = @"shootingMode";
    v17 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[102] = v17;
    v122[103] = @"cohort1";
    v16 = [FedStatsCohortQueryLengthCappedField cohortQueryFieldWithKey:"cohortQueryFieldWithKey:cap:" cap:?];
    v123[103] = v16;
    v122[104] = @"cohort2";
    v15 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[104] = v15;
    v122[105] = @"cohort3";
    v3 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[105] = v3;
    v122[106] = @"cohort4";
    v4 = [FedStatsCohortQueryLengthCappedField cohortQueryFieldWithKey:"cohortQueryFieldWithKey:cap:" cap:?];
    v123[106] = v4;
    v122[107] = @"eventCount";
    v5 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[107] = v5;
    v122[108] = @"assetVersion";
    v6 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[108] = v6;
    v122[109] = @"safetyDataVersion";
    v7 = [FedStatsCohortQueryLengthCappedField cohortQueryFieldWithKey:"cohortQueryFieldWithKey:cap:" cap:?];
    v123[109] = v7;
    v122[110] = @"uafVersion";
    v8 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[110] = v8;
    v122[111] = @"eventLocale";
    v9 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[111] = v9;
    v122[112] = @"recordZone";
    v10 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[112] = v10;
    v122[113] = @"nemesisErrors";
    v11 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[113] = v11;
    v122[114] = @"filteringNemesisErrors";
    v12 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v123[114] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:115];
    cohortObjects = v120->_cohortObjects;
    v120->_cohortObjects = v13;

    return v120;
  }

  return result;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__FedStatsCohortFactory_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

uint64_t __39__FedStatsCohortFactory_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (id)cohortQueryFieldByName:(id)name
{
  nameCopy = name;
  v4 = +[FedStatsCohortFactory sharedInstance];
  cohortObjects = [v4 cohortObjects];

  v6 = [cohortObjects objectForKey:nameCopy];

  if (v6)
  {
    [cohortObjects objectForKey:nameCopy];
  }

  else
  {
    [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:nameCopy];
  }
  v7 = ;

  return v7;
}

@end