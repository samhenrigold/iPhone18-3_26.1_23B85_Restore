@interface BMDeviceAdaptiveVolume
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceAdaptiveVolume)initWithControllerVersion:(id)version refMicdBA:(id)a refMicdBC:(id)c drumdBA:(id)bA drumdBK:(id)k drumdBAPredicted:(id)predicted downlinkdBA:(id)downlinkdBA currentVolumePrct:(id)self0 lastUserVolChangeType:(id)self1 headphoneMode:(id)self2 streamType:(id)self3 windSpeechAggressorFlag:(id)self4 volumeChangeFlag:(id)self5 speechPresenceProbability:(id)self6 personalizationParamSnr:(id)self7 personalizationParamMistakes:(id)self8 lastEMediadBA:(id)self9 lastVolMediaPrct:(id)mediaPrct lastETelephonydBA:(id)telephonydBA lastVolTelephonyPrct:(id)telephonyPrct lastESiridBA:(id)siridBA lastVolSiriPrct:(id)siriPrct smoothEae:(id)eae desiredDeltaE:(id)e predVolMediaPrct:(id)volMediaPrct predVolTelephonyPrct:(id)volTelephonyPrct predVolSiriPrct:(id)volSiriPrct onStartPredictionFlag:(id)version0 guardrailsAvoidFlag:(id)version1 minMaxCutFlag:(id)version2 manualVolumeChangeFlag:(id)version3 bigWindowSize:(id)version4 smallWindowSize:(id)version5 activeAppName:(id)version6 activeAirpodsSerialNumber:(id)version7;
- (BMDeviceAdaptiveVolume)initWithControllerVersion:(void *)version refMicdBA:(void *)a refMicdBC:(void *)c drumdBA:(void *)bA drumdBK:(void *)k drumdBAPredicted:(void *)predicted downlinkdBA:(id)downlinkdBA currentVolumePrct:(id)self0 lastUserVolChangeType:(id)self1 headphoneMode:(id)self2 streamType:(id)self3 windSpeechAggressorFlag:(id)self4 volumeChangeFlag:(id)self5 speechPresenceProbability:(id)self6 personalizationParamSnr:(id)self7 personalizationParamMistakes:(id)self8 lastEMediadBA:(id)self9 lastVolMediaPrct:(id)mediaPrct lastETelephonydBA:(id)telephonydBA lastVolTelephonyPrct:(id)telephonyPrct lastESiridBA:(id)siridBA lastVolSiriPrct:(id)siriPrct smoothEae:(id)eae desiredDeltaE:(id)e predVolMediaPrct:(id)volMediaPrct predVolTelephonyPrct:(id)volTelephonyPrct predVolSiriPrct:(id)volSiriPrct onStartPredictionFlag:(id)version0 guardrailsAvoidFlag:(id)version1 minMaxCutFlag:(id)version2 manualVolumeChangeFlag:(id)version3 bigWindowSize:(id)version4 smallWindowSize:(id)version5 activeAppName:(id)version6 activeAirpodsSerialNumber:(id)version7 anchorVol:(id)version8 anchorEnv:(id)version9 personalizationCoeff:(id)a0 unsignedPredVolMediaPrct:(id)a1 unsignedPredVolTelephonyPrct:(id)a2 unsignedPredVolSiriPrct:(id)a3 singleBudFlag:(id)a4 cdEngagementFlag:(id)c activeStreamFlag:(id)bA pvFeatureEnableFlag:(id)k envSpectralData32B:(id)predicted windStrength:(id)downlinkdBA windProb:(id)c0 mediaType:(id)c1 sourceActivity:(id)c2 budActivity:(id)c3 location:(id)c4 locationType:(id)c5 focusMode:(id)c6 streamingAppBundleId:(id)c7 noiseType4B:(id)c8 instdBA:(id)c9 instdBC:(id)bA0 nonCAListeningMode:(id)bA1 fit:(id)bA2 fixedAutoAncGain:(id)bA3 adjustedAutoAncGain:timestamp:DRCenablementBit:DRCwindFlag:DRCappSelfVoiceFlag:drumDRC:routedDRCGain:;
- (BMDeviceAdaptiveVolume)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_envSpectralData32BJSONArray;
- (id)_noiseType4BJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)initWithControllerVersion:(void *)version refMicdBA:refMicdBC:drumdBA:drumdBK:drumdBAPredicted:downlinkdBA:currentVolumePrct:lastUserVolChangeType:headphoneMode:streamType:windSpeechAggressorFlag:volumeChangeFlag:speechPresenceProbability:personalizationParamSnr:personalizationParamMistakes:lastEMediadBA:lastVolMediaPrct:lastETelephonydBA:lastVolTelephonyPrct:lastESiridBA:lastVolSiriPrct:smoothEae:desiredDeltaE:predVolMediaPrct:predVolTelephonyPrct:predVolSiriPrct:onStartPredictionFlag:guardrailsAvoidFlag:minMaxCutFlag:manualVolumeChangeFlag:bigWindowSize:smallWindowSize:activeAppName:activeAirpodsSerialNumber:anchorVol:anchorEnv:personalizationCoeff:unsignedPredVolMediaPrct:unsignedPredVolTelephonyPrct:unsignedPredVolSiriPrct:singleBudFlag:cdEngagementFlag:activeStreamFlag:pvFeatureEnableFlag:envSpectralData_32B:wind_strength:wind_prob:mediaType:sourceActivity:budActivity:location:locationType:focusMode:streamingAppBundleId:noiseType_4B:instdBA:instdBC:nonCAListeningMode:fit:fixedAutoAncGain:adjustedAutoAncGain:timestamp:DRCenablementBit:DRCwindFlag:DRCappSelfVoiceFlag:drumDRC:routedDRCGain:;
- (void)writeTo:(id)to;
@end

@implementation BMDeviceAdaptiveVolume

+ (id)columns
{
  v76[72] = *MEMORY[0x1E69E9840];
  v75 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"controllerVersion" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v74 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"refMicdBA" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v73 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"refMicdBC" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v72 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"drumdBA" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v71 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"drumdBK" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v70 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"drumdBAPredicted" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v69 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"downlinkdBA" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v68 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"currentVolumePrct" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
  v67 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastUserVolChangeType" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
  v66 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"headphoneMode" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v65 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"streamType" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v64 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"windSpeechAggressorFlag" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:4 convertedType:0];
  v63 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"volumeChangeFlag" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:4 convertedType:0];
  v62 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"speechPresenceProbability" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:4 convertedType:0];
  v61 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personalizationParamSnr" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:2 convertedType:0];
  v60 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personalizationParamMistakes" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:2 convertedType:0];
  v58 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastEMediadBA" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:4 convertedType:0];
  v59 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastVolMediaPrct" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:4 convertedType:0];
  v56 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastETelephonydBA" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:4 convertedType:0];
  v57 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastVolTelephonyPrct" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v55 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastESiridBA" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:4 convertedType:0];
  v54 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lastVolSiriPrct" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:4 convertedType:0];
  v53 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smoothEae" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:4 convertedType:0];
  v52 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"desiredDeltaE" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:2 convertedType:0];
  v51 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predVolMediaPrct" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:2 convertedType:0];
  v50 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predVolTelephonyPrct" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:2 convertedType:0];
  v49 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"predVolSiriPrct" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:2 convertedType:0];
  v48 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"onStartPredictionFlag" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:4 convertedType:0];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"guardrailsAvoidFlag" dataType:0 requestOnly:0 fieldNumber:29 protoDataType:4 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"minMaxCutFlag" dataType:0 requestOnly:0 fieldNumber:30 protoDataType:4 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"manualVolumeChangeFlag" dataType:0 requestOnly:0 fieldNumber:31 protoDataType:4 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bigWindowSize" dataType:0 requestOnly:0 fieldNumber:32 protoDataType:4 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smallWindowSize" dataType:0 requestOnly:0 fieldNumber:33 protoDataType:4 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activeAppName" dataType:2 requestOnly:0 fieldNumber:34 protoDataType:13 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activeAirpodsSerialNumber" dataType:2 requestOnly:0 fieldNumber:35 protoDataType:13 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"anchorVol" dataType:0 requestOnly:0 fieldNumber:36 protoDataType:4 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"anchorEnv" dataType:0 requestOnly:0 fieldNumber:37 protoDataType:4 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personalizationCoeff" dataType:0 requestOnly:0 fieldNumber:38 protoDataType:4 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"unsignedPredVolMediaPrct" dataType:0 requestOnly:0 fieldNumber:39 protoDataType:4 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"unsignedPredVolTelephonyPrct" dataType:0 requestOnly:0 fieldNumber:40 protoDataType:4 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"unsignedPredVolSiriPrct" dataType:0 requestOnly:0 fieldNumber:41 protoDataType:4 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"singleBudFlag" dataType:0 requestOnly:0 fieldNumber:42 protoDataType:4 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cdEngagementFlag" dataType:0 requestOnly:0 fieldNumber:43 protoDataType:4 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"activeStreamFlag" dataType:0 requestOnly:0 fieldNumber:44 protoDataType:4 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pvFeatureEnableFlag" dataType:0 requestOnly:0 fieldNumber:45 protoDataType:4 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"envSpectralData32B_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_5721];
  v29 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"envSpectralData_32B_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_251];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"windStrength" dataType:0 requestOnly:0 fieldNumber:47 protoDataType:4 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wind_strength" dataType:0 requestOnly:0 fieldNumber:47 protoDataType:4 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"windProb" dataType:0 requestOnly:0 fieldNumber:48 protoDataType:4 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wind_prob" dataType:0 requestOnly:0 fieldNumber:48 protoDataType:4 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mediaType" dataType:0 requestOnly:0 fieldNumber:49 protoDataType:4 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sourceActivity" dataType:0 requestOnly:0 fieldNumber:50 protoDataType:4 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"budActivity" dataType:0 requestOnly:0 fieldNumber:51 protoDataType:4 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"location" dataType:0 requestOnly:0 fieldNumber:52 protoDataType:4 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"locationType" dataType:0 requestOnly:0 fieldNumber:53 protoDataType:4 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"focusMode" dataType:0 requestOnly:0 fieldNumber:54 protoDataType:4 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"streamingAppBundleId" dataType:0 requestOnly:0 fieldNumber:55 protoDataType:4 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"noiseType4B_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_253];
  v16 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"noiseType_4B_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_258];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"instdBA" dataType:0 requestOnly:0 fieldNumber:57 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"instdBC" dataType:0 requestOnly:0 fieldNumber:58 protoDataType:4 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nonCAListeningMode" dataType:0 requestOnly:0 fieldNumber:59 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fit" dataType:0 requestOnly:0 fieldNumber:60 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fixedAutoAncGain" dataType:0 requestOnly:0 fieldNumber:61 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"adjustedAutoAncGain" dataType:0 requestOnly:0 fieldNumber:62 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:0 requestOnly:0 fieldNumber:63 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"DRCenablementBit" dataType:0 requestOnly:0 fieldNumber:64 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"DRCwindFlag" dataType:0 requestOnly:0 fieldNumber:65 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"DRCappSelfVoiceFlag" dataType:0 requestOnly:0 fieldNumber:66 protoDataType:4 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"drumDRC" dataType:0 requestOnly:0 fieldNumber:67 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"routedDRCGain" dataType:0 requestOnly:0 fieldNumber:68 protoDataType:4 convertedType:0];
  v76[0] = v75;
  v76[1] = v74;
  v76[2] = v73;
  v76[3] = v72;
  v76[4] = v71;
  v76[5] = v70;
  v76[6] = v69;
  v76[7] = v68;
  v76[8] = v67;
  v76[9] = v66;
  v76[10] = v65;
  v76[11] = v64;
  v76[12] = v63;
  v76[13] = v62;
  v76[14] = v61;
  v76[15] = v60;
  v76[16] = v58;
  v76[17] = v59;
  v76[18] = v56;
  v76[19] = v57;
  v76[20] = v55;
  v76[21] = v54;
  v76[22] = v53;
  v76[23] = v52;
  v76[24] = v51;
  v76[25] = v50;
  v76[26] = v49;
  v76[27] = v48;
  v76[28] = v47;
  v76[29] = v46;
  v76[30] = v45;
  v76[31] = v44;
  v76[32] = v43;
  v76[33] = v42;
  v76[34] = v41;
  v76[35] = v40;
  v76[36] = v39;
  v76[37] = v38;
  v76[38] = v37;
  v76[39] = v36;
  v76[40] = v35;
  v76[41] = v34;
  v76[42] = v33;
  v76[43] = v32;
  v76[44] = v31;
  v76[45] = v30;
  v76[46] = v29;
  v76[47] = v28;
  v76[48] = v27;
  v76[49] = v26;
  v76[50] = v25;
  v76[51] = v24;
  v76[52] = v23;
  v76[53] = v22;
  v76[54] = v21;
  v76[55] = v20;
  v76[56] = v19;
  v76[57] = v18;
  v76[58] = v17;
  v76[59] = v16;
  v76[60] = v15;
  v76[61] = v14;
  v76[62] = v2;
  v76[63] = v3;
  v76[64] = v4;
  v76[65] = v13;
  v76[66] = v5;
  v76[67] = v6;
  v76[68] = v7;
  v76[69] = v8;
  v76[70] = v12;
  v76[71] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:72];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMDeviceAdaptiveVolume hasControllerVersion](self, "hasControllerVersion") || [v5 hasControllerVersion])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasControllerVersion])
      {
        goto LABEL_339;
      }

      if (![v5 hasControllerVersion])
      {
        goto LABEL_339;
      }

      controllerVersion = [(BMDeviceAdaptiveVolume *)self controllerVersion];
      if (controllerVersion != [v5 controllerVersion])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasRefMicdBA](self, "hasRefMicdBA") || [v5 hasRefMicdBA])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasRefMicdBA])
      {
        goto LABEL_339;
      }

      if (![v5 hasRefMicdBA])
      {
        goto LABEL_339;
      }

      refMicdBA = [(BMDeviceAdaptiveVolume *)self refMicdBA];
      if (refMicdBA != [v5 refMicdBA])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasRefMicdBC](self, "hasRefMicdBC") || [v5 hasRefMicdBC])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasRefMicdBC])
      {
        goto LABEL_339;
      }

      if (![v5 hasRefMicdBC])
      {
        goto LABEL_339;
      }

      refMicdBC = [(BMDeviceAdaptiveVolume *)self refMicdBC];
      if (refMicdBC != [v5 refMicdBC])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasDrumdBA](self, "hasDrumdBA") || [v5 hasDrumdBA])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasDrumdBA])
      {
        goto LABEL_339;
      }

      if (![v5 hasDrumdBA])
      {
        goto LABEL_339;
      }

      drumdBA = [(BMDeviceAdaptiveVolume *)self drumdBA];
      if (drumdBA != [v5 drumdBA])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasDrumdBK](self, "hasDrumdBK") || [v5 hasDrumdBK])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasDrumdBK])
      {
        goto LABEL_339;
      }

      if (![v5 hasDrumdBK])
      {
        goto LABEL_339;
      }

      drumdBK = [(BMDeviceAdaptiveVolume *)self drumdBK];
      if (drumdBK != [v5 drumdBK])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasDrumdBAPredicted](self, "hasDrumdBAPredicted") || [v5 hasDrumdBAPredicted])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasDrumdBAPredicted])
      {
        goto LABEL_339;
      }

      if (![v5 hasDrumdBAPredicted])
      {
        goto LABEL_339;
      }

      drumdBAPredicted = [(BMDeviceAdaptiveVolume *)self drumdBAPredicted];
      if (drumdBAPredicted != [v5 drumdBAPredicted])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasDownlinkdBA](self, "hasDownlinkdBA") || [v5 hasDownlinkdBA])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasDownlinkdBA])
      {
        goto LABEL_339;
      }

      if (![v5 hasDownlinkdBA])
      {
        goto LABEL_339;
      }

      downlinkdBA = [(BMDeviceAdaptiveVolume *)self downlinkdBA];
      if (downlinkdBA != [v5 downlinkdBA])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasCurrentVolumePrct](self, "hasCurrentVolumePrct") || [v5 hasCurrentVolumePrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasCurrentVolumePrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasCurrentVolumePrct])
      {
        goto LABEL_339;
      }

      currentVolumePrct = [(BMDeviceAdaptiveVolume *)self currentVolumePrct];
      if (currentVolumePrct != [v5 currentVolumePrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLastUserVolChangeType](self, "hasLastUserVolChangeType") || [v5 hasLastUserVolChangeType])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLastUserVolChangeType])
      {
        goto LABEL_339;
      }

      if (![v5 hasLastUserVolChangeType])
      {
        goto LABEL_339;
      }

      lastUserVolChangeType = [(BMDeviceAdaptiveVolume *)self lastUserVolChangeType];
      if (lastUserVolChangeType != [v5 lastUserVolChangeType])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasHeadphoneMode](self, "hasHeadphoneMode") || [v5 hasHeadphoneMode])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasHeadphoneMode])
      {
        goto LABEL_339;
      }

      if (![v5 hasHeadphoneMode])
      {
        goto LABEL_339;
      }

      headphoneMode = [(BMDeviceAdaptiveVolume *)self headphoneMode];
      if (headphoneMode != [v5 headphoneMode])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasStreamType](self, "hasStreamType") || [v5 hasStreamType])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasStreamType])
      {
        goto LABEL_339;
      }

      if (![v5 hasStreamType])
      {
        goto LABEL_339;
      }

      streamType = [(BMDeviceAdaptiveVolume *)self streamType];
      if (streamType != [v5 streamType])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasWindSpeechAggressorFlag](self, "hasWindSpeechAggressorFlag") || [v5 hasWindSpeechAggressorFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasWindSpeechAggressorFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasWindSpeechAggressorFlag])
      {
        goto LABEL_339;
      }

      windSpeechAggressorFlag = [(BMDeviceAdaptiveVolume *)self windSpeechAggressorFlag];
      if (windSpeechAggressorFlag != [v5 windSpeechAggressorFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasVolumeChangeFlag](self, "hasVolumeChangeFlag") || [v5 hasVolumeChangeFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasVolumeChangeFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasVolumeChangeFlag])
      {
        goto LABEL_339;
      }

      volumeChangeFlag = [(BMDeviceAdaptiveVolume *)self volumeChangeFlag];
      if (volumeChangeFlag != [v5 volumeChangeFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasSpeechPresenceProbability](self, "hasSpeechPresenceProbability") || [v5 hasSpeechPresenceProbability])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasSpeechPresenceProbability])
      {
        goto LABEL_339;
      }

      if (![v5 hasSpeechPresenceProbability])
      {
        goto LABEL_339;
      }

      speechPresenceProbability = [(BMDeviceAdaptiveVolume *)self speechPresenceProbability];
      if (speechPresenceProbability != [v5 speechPresenceProbability])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasPersonalizationParamSnr](self, "hasPersonalizationParamSnr") || [v5 hasPersonalizationParamSnr])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasPersonalizationParamSnr])
      {
        goto LABEL_339;
      }

      if (![v5 hasPersonalizationParamSnr])
      {
        goto LABEL_339;
      }

      personalizationParamSnr = [(BMDeviceAdaptiveVolume *)self personalizationParamSnr];
      if (personalizationParamSnr != [v5 personalizationParamSnr])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasPersonalizationParamMistakes](self, "hasPersonalizationParamMistakes") || [v5 hasPersonalizationParamMistakes])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasPersonalizationParamMistakes])
      {
        goto LABEL_339;
      }

      if (![v5 hasPersonalizationParamMistakes])
      {
        goto LABEL_339;
      }

      personalizationParamMistakes = [(BMDeviceAdaptiveVolume *)self personalizationParamMistakes];
      if (personalizationParamMistakes != [v5 personalizationParamMistakes])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLastEMediadBA](self, "hasLastEMediadBA") || [v5 hasLastEMediadBA])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLastEMediadBA])
      {
        goto LABEL_339;
      }

      if (![v5 hasLastEMediadBA])
      {
        goto LABEL_339;
      }

      lastEMediadBA = [(BMDeviceAdaptiveVolume *)self lastEMediadBA];
      if (lastEMediadBA != [v5 lastEMediadBA])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLastVolMediaPrct](self, "hasLastVolMediaPrct") || [v5 hasLastVolMediaPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLastVolMediaPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasLastVolMediaPrct])
      {
        goto LABEL_339;
      }

      lastVolMediaPrct = [(BMDeviceAdaptiveVolume *)self lastVolMediaPrct];
      if (lastVolMediaPrct != [v5 lastVolMediaPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLastETelephonydBA](self, "hasLastETelephonydBA") || [v5 hasLastETelephonydBA])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLastETelephonydBA])
      {
        goto LABEL_339;
      }

      if (![v5 hasLastETelephonydBA])
      {
        goto LABEL_339;
      }

      lastETelephonydBA = [(BMDeviceAdaptiveVolume *)self lastETelephonydBA];
      if (lastETelephonydBA != [v5 lastETelephonydBA])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLastVolTelephonyPrct](self, "hasLastVolTelephonyPrct") || [v5 hasLastVolTelephonyPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLastVolTelephonyPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasLastVolTelephonyPrct])
      {
        goto LABEL_339;
      }

      lastVolTelephonyPrct = [(BMDeviceAdaptiveVolume *)self lastVolTelephonyPrct];
      if (lastVolTelephonyPrct != [v5 lastVolTelephonyPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLastESiridBA](self, "hasLastESiridBA") || [v5 hasLastESiridBA])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLastESiridBA])
      {
        goto LABEL_339;
      }

      if (![v5 hasLastESiridBA])
      {
        goto LABEL_339;
      }

      lastESiridBA = [(BMDeviceAdaptiveVolume *)self lastESiridBA];
      if (lastESiridBA != [v5 lastESiridBA])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLastVolSiriPrct](self, "hasLastVolSiriPrct") || [v5 hasLastVolSiriPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLastVolSiriPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasLastVolSiriPrct])
      {
        goto LABEL_339;
      }

      lastVolSiriPrct = [(BMDeviceAdaptiveVolume *)self lastVolSiriPrct];
      if (lastVolSiriPrct != [v5 lastVolSiriPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasSmoothEae](self, "hasSmoothEae") || [v5 hasSmoothEae])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasSmoothEae])
      {
        goto LABEL_339;
      }

      if (![v5 hasSmoothEae])
      {
        goto LABEL_339;
      }

      smoothEae = [(BMDeviceAdaptiveVolume *)self smoothEae];
      if (smoothEae != [v5 smoothEae])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasDesiredDeltaE](self, "hasDesiredDeltaE") || [v5 hasDesiredDeltaE])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasDesiredDeltaE])
      {
        goto LABEL_339;
      }

      if (![v5 hasDesiredDeltaE])
      {
        goto LABEL_339;
      }

      desiredDeltaE = [(BMDeviceAdaptiveVolume *)self desiredDeltaE];
      if (desiredDeltaE != [v5 desiredDeltaE])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasPredVolMediaPrct](self, "hasPredVolMediaPrct") || [v5 hasPredVolMediaPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasPredVolMediaPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasPredVolMediaPrct])
      {
        goto LABEL_339;
      }

      predVolMediaPrct = [(BMDeviceAdaptiveVolume *)self predVolMediaPrct];
      if (predVolMediaPrct != [v5 predVolMediaPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasPredVolTelephonyPrct](self, "hasPredVolTelephonyPrct") || [v5 hasPredVolTelephonyPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasPredVolTelephonyPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasPredVolTelephonyPrct])
      {
        goto LABEL_339;
      }

      predVolTelephonyPrct = [(BMDeviceAdaptiveVolume *)self predVolTelephonyPrct];
      if (predVolTelephonyPrct != [v5 predVolTelephonyPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasPredVolSiriPrct](self, "hasPredVolSiriPrct") || [v5 hasPredVolSiriPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasPredVolSiriPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasPredVolSiriPrct])
      {
        goto LABEL_339;
      }

      predVolSiriPrct = [(BMDeviceAdaptiveVolume *)self predVolSiriPrct];
      if (predVolSiriPrct != [v5 predVolSiriPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasOnStartPredictionFlag](self, "hasOnStartPredictionFlag") || [v5 hasOnStartPredictionFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasOnStartPredictionFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasOnStartPredictionFlag])
      {
        goto LABEL_339;
      }

      onStartPredictionFlag = [(BMDeviceAdaptiveVolume *)self onStartPredictionFlag];
      if (onStartPredictionFlag != [v5 onStartPredictionFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasGuardrailsAvoidFlag](self, "hasGuardrailsAvoidFlag") || [v5 hasGuardrailsAvoidFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasGuardrailsAvoidFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasGuardrailsAvoidFlag])
      {
        goto LABEL_339;
      }

      guardrailsAvoidFlag = [(BMDeviceAdaptiveVolume *)self guardrailsAvoidFlag];
      if (guardrailsAvoidFlag != [v5 guardrailsAvoidFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasMinMaxCutFlag](self, "hasMinMaxCutFlag") || [v5 hasMinMaxCutFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasMinMaxCutFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasMinMaxCutFlag])
      {
        goto LABEL_339;
      }

      minMaxCutFlag = [(BMDeviceAdaptiveVolume *)self minMaxCutFlag];
      if (minMaxCutFlag != [v5 minMaxCutFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasManualVolumeChangeFlag](self, "hasManualVolumeChangeFlag") || [v5 hasManualVolumeChangeFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasManualVolumeChangeFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasManualVolumeChangeFlag])
      {
        goto LABEL_339;
      }

      manualVolumeChangeFlag = [(BMDeviceAdaptiveVolume *)self manualVolumeChangeFlag];
      if (manualVolumeChangeFlag != [v5 manualVolumeChangeFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasBigWindowSize](self, "hasBigWindowSize") || [v5 hasBigWindowSize])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasBigWindowSize])
      {
        goto LABEL_339;
      }

      if (![v5 hasBigWindowSize])
      {
        goto LABEL_339;
      }

      bigWindowSize = [(BMDeviceAdaptiveVolume *)self bigWindowSize];
      if (bigWindowSize != [v5 bigWindowSize])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasSmallWindowSize](self, "hasSmallWindowSize") || [v5 hasSmallWindowSize])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasSmallWindowSize])
      {
        goto LABEL_339;
      }

      if (![v5 hasSmallWindowSize])
      {
        goto LABEL_339;
      }

      smallWindowSize = [(BMDeviceAdaptiveVolume *)self smallWindowSize];
      if (smallWindowSize != [v5 smallWindowSize])
      {
        goto LABEL_339;
      }
    }

    activeAppName = [(BMDeviceAdaptiveVolume *)self activeAppName];
    activeAppName2 = [v5 activeAppName];
    v41 = activeAppName2;
    if (activeAppName == activeAppName2)
    {
    }

    else
    {
      activeAppName3 = [(BMDeviceAdaptiveVolume *)self activeAppName];
      activeAppName4 = [v5 activeAppName];
      v44 = [activeAppName3 isEqual:activeAppName4];

      if (!v44)
      {
        goto LABEL_339;
      }
    }

    activeAirpodsSerialNumber = [(BMDeviceAdaptiveVolume *)self activeAirpodsSerialNumber];
    activeAirpodsSerialNumber2 = [v5 activeAirpodsSerialNumber];
    v48 = activeAirpodsSerialNumber2;
    if (activeAirpodsSerialNumber == activeAirpodsSerialNumber2)
    {
    }

    else
    {
      activeAirpodsSerialNumber3 = [(BMDeviceAdaptiveVolume *)self activeAirpodsSerialNumber];
      activeAirpodsSerialNumber4 = [v5 activeAirpodsSerialNumber];
      v51 = [activeAirpodsSerialNumber3 isEqual:activeAirpodsSerialNumber4];

      if (!v51)
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasAnchorVol](self, "hasAnchorVol") || [v5 hasAnchorVol])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasAnchorVol])
      {
        goto LABEL_339;
      }

      if (![v5 hasAnchorVol])
      {
        goto LABEL_339;
      }

      anchorVol = [(BMDeviceAdaptiveVolume *)self anchorVol];
      if (anchorVol != [v5 anchorVol])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasAnchorEnv](self, "hasAnchorEnv") || [v5 hasAnchorEnv])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasAnchorEnv])
      {
        goto LABEL_339;
      }

      if (![v5 hasAnchorEnv])
      {
        goto LABEL_339;
      }

      anchorEnv = [(BMDeviceAdaptiveVolume *)self anchorEnv];
      if (anchorEnv != [v5 anchorEnv])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasPersonalizationCoeff](self, "hasPersonalizationCoeff") || [v5 hasPersonalizationCoeff])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasPersonalizationCoeff])
      {
        goto LABEL_339;
      }

      if (![v5 hasPersonalizationCoeff])
      {
        goto LABEL_339;
      }

      personalizationCoeff = [(BMDeviceAdaptiveVolume *)self personalizationCoeff];
      if (personalizationCoeff != [v5 personalizationCoeff])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasUnsignedPredVolMediaPrct](self, "hasUnsignedPredVolMediaPrct") || [v5 hasUnsignedPredVolMediaPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasUnsignedPredVolMediaPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasUnsignedPredVolMediaPrct])
      {
        goto LABEL_339;
      }

      unsignedPredVolMediaPrct = [(BMDeviceAdaptiveVolume *)self unsignedPredVolMediaPrct];
      if (unsignedPredVolMediaPrct != [v5 unsignedPredVolMediaPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasUnsignedPredVolTelephonyPrct](self, "hasUnsignedPredVolTelephonyPrct") || [v5 hasUnsignedPredVolTelephonyPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasUnsignedPredVolTelephonyPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasUnsignedPredVolTelephonyPrct])
      {
        goto LABEL_339;
      }

      unsignedPredVolTelephonyPrct = [(BMDeviceAdaptiveVolume *)self unsignedPredVolTelephonyPrct];
      if (unsignedPredVolTelephonyPrct != [v5 unsignedPredVolTelephonyPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasUnsignedPredVolSiriPrct](self, "hasUnsignedPredVolSiriPrct") || [v5 hasUnsignedPredVolSiriPrct])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasUnsignedPredVolSiriPrct])
      {
        goto LABEL_339;
      }

      if (![v5 hasUnsignedPredVolSiriPrct])
      {
        goto LABEL_339;
      }

      unsignedPredVolSiriPrct = [(BMDeviceAdaptiveVolume *)self unsignedPredVolSiriPrct];
      if (unsignedPredVolSiriPrct != [v5 unsignedPredVolSiriPrct])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasSingleBudFlag](self, "hasSingleBudFlag") || [v5 hasSingleBudFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasSingleBudFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasSingleBudFlag])
      {
        goto LABEL_339;
      }

      singleBudFlag = [(BMDeviceAdaptiveVolume *)self singleBudFlag];
      if (singleBudFlag != [v5 singleBudFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasCdEngagementFlag](self, "hasCdEngagementFlag") || [v5 hasCdEngagementFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasCdEngagementFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasCdEngagementFlag])
      {
        goto LABEL_339;
      }

      cdEngagementFlag = [(BMDeviceAdaptiveVolume *)self cdEngagementFlag];
      if (cdEngagementFlag != [v5 cdEngagementFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasActiveStreamFlag](self, "hasActiveStreamFlag") || [v5 hasActiveStreamFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasActiveStreamFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasActiveStreamFlag])
      {
        goto LABEL_339;
      }

      activeStreamFlag = [(BMDeviceAdaptiveVolume *)self activeStreamFlag];
      if (activeStreamFlag != [v5 activeStreamFlag])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasPvFeatureEnableFlag](self, "hasPvFeatureEnableFlag") || [v5 hasPvFeatureEnableFlag])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasPvFeatureEnableFlag])
      {
        goto LABEL_339;
      }

      if (![v5 hasPvFeatureEnableFlag])
      {
        goto LABEL_339;
      }

      pvFeatureEnableFlag = [(BMDeviceAdaptiveVolume *)self pvFeatureEnableFlag];
      if (pvFeatureEnableFlag != [v5 pvFeatureEnableFlag])
      {
        goto LABEL_339;
      }
    }

    envSpectralData32B = [(BMDeviceAdaptiveVolume *)self envSpectralData32B];
    envSpectralData32B2 = [v5 envSpectralData32B];
    v64 = envSpectralData32B2;
    if (envSpectralData32B == envSpectralData32B2)
    {
    }

    else
    {
      envSpectralData32B3 = [(BMDeviceAdaptiveVolume *)self envSpectralData32B];
      envSpectralData32B4 = [v5 envSpectralData32B];
      v67 = [envSpectralData32B3 isEqual:envSpectralData32B4];

      if (!v67)
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasWindStrength](self, "hasWindStrength") || [v5 hasWindStrength])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasWindStrength])
      {
        goto LABEL_339;
      }

      if (![v5 hasWindStrength])
      {
        goto LABEL_339;
      }

      windStrength = [(BMDeviceAdaptiveVolume *)self windStrength];
      if (windStrength != [v5 windStrength])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasWindProb](self, "hasWindProb") || [v5 hasWindProb])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasWindProb])
      {
        goto LABEL_339;
      }

      if (![v5 hasWindProb])
      {
        goto LABEL_339;
      }

      windProb = [(BMDeviceAdaptiveVolume *)self windProb];
      if (windProb != [v5 windProb])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasMediaType](self, "hasMediaType") || [v5 hasMediaType])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasMediaType])
      {
        goto LABEL_339;
      }

      if (![v5 hasMediaType])
      {
        goto LABEL_339;
      }

      mediaType = [(BMDeviceAdaptiveVolume *)self mediaType];
      if (mediaType != [v5 mediaType])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasSourceActivity](self, "hasSourceActivity") || [v5 hasSourceActivity])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasSourceActivity])
      {
        goto LABEL_339;
      }

      if (![v5 hasSourceActivity])
      {
        goto LABEL_339;
      }

      sourceActivity = [(BMDeviceAdaptiveVolume *)self sourceActivity];
      if (sourceActivity != [v5 sourceActivity])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasBudActivity](self, "hasBudActivity") || [v5 hasBudActivity])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasBudActivity])
      {
        goto LABEL_339;
      }

      if (![v5 hasBudActivity])
      {
        goto LABEL_339;
      }

      budActivity = [(BMDeviceAdaptiveVolume *)self budActivity];
      if (budActivity != [v5 budActivity])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLocation](self, "hasLocation") || [v5 hasLocation])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLocation])
      {
        goto LABEL_339;
      }

      if (![v5 hasLocation])
      {
        goto LABEL_339;
      }

      location = [(BMDeviceAdaptiveVolume *)self location];
      if (location != [v5 location])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasLocationType](self, "hasLocationType") || [v5 hasLocationType])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasLocationType])
      {
        goto LABEL_339;
      }

      if (![v5 hasLocationType])
      {
        goto LABEL_339;
      }

      locationType = [(BMDeviceAdaptiveVolume *)self locationType];
      if (locationType != [v5 locationType])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasFocusMode](self, "hasFocusMode") || [v5 hasFocusMode])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasFocusMode])
      {
        goto LABEL_339;
      }

      if (![v5 hasFocusMode])
      {
        goto LABEL_339;
      }

      focusMode = [(BMDeviceAdaptiveVolume *)self focusMode];
      if (focusMode != [v5 focusMode])
      {
        goto LABEL_339;
      }
    }

    if (-[BMDeviceAdaptiveVolume hasStreamingAppBundleId](self, "hasStreamingAppBundleId") || [v5 hasStreamingAppBundleId])
    {
      if (![(BMDeviceAdaptiveVolume *)self hasStreamingAppBundleId])
      {
        goto LABEL_339;
      }

      if (![v5 hasStreamingAppBundleId])
      {
        goto LABEL_339;
      }

      streamingAppBundleId = [(BMDeviceAdaptiveVolume *)self streamingAppBundleId];
      if (streamingAppBundleId != [v5 streamingAppBundleId])
      {
        goto LABEL_339;
      }
    }

    noiseType4B = [(BMDeviceAdaptiveVolume *)self noiseType4B];
    noiseType4B2 = [v5 noiseType4B];
    v79 = noiseType4B2;
    if (noiseType4B == noiseType4B2)
    {
    }

    else
    {
      noiseType4B3 = [(BMDeviceAdaptiveVolume *)self noiseType4B];
      noiseType4B4 = [v5 noiseType4B];
      v82 = [noiseType4B3 isEqual:noiseType4B4];

      if (!v82)
      {
        goto LABEL_339;
      }
    }

    if (!-[BMDeviceAdaptiveVolume hasInstdBA](self, "hasInstdBA") && ![v5 hasInstdBA] || -[BMDeviceAdaptiveVolume hasInstdBA](self, "hasInstdBA") && objc_msgSend(v5, "hasInstdBA") && (v83 = -[BMDeviceAdaptiveVolume instdBA](self, "instdBA"), v83 == objc_msgSend(v5, "instdBA")))
    {
      if (!-[BMDeviceAdaptiveVolume hasInstdBC](self, "hasInstdBC") && ![v5 hasInstdBC] || -[BMDeviceAdaptiveVolume hasInstdBC](self, "hasInstdBC") && objc_msgSend(v5, "hasInstdBC") && (v84 = -[BMDeviceAdaptiveVolume instdBC](self, "instdBC"), v84 == objc_msgSend(v5, "instdBC")))
      {
        if (!-[BMDeviceAdaptiveVolume hasNonCAListeningMode](self, "hasNonCAListeningMode") && ![v5 hasNonCAListeningMode] || -[BMDeviceAdaptiveVolume hasNonCAListeningMode](self, "hasNonCAListeningMode") && objc_msgSend(v5, "hasNonCAListeningMode") && (v85 = -[BMDeviceAdaptiveVolume nonCAListeningMode](self, "nonCAListeningMode"), v85 == objc_msgSend(v5, "nonCAListeningMode")))
        {
          if (!-[BMDeviceAdaptiveVolume hasFit](self, "hasFit") && ![v5 hasFit] || -[BMDeviceAdaptiveVolume hasFit](self, "hasFit") && objc_msgSend(v5, "hasFit") && (v86 = -[BMDeviceAdaptiveVolume fit](self, "fit"), v86 == objc_msgSend(v5, "fit")))
          {
            if (!-[BMDeviceAdaptiveVolume hasFixedAutoAncGain](self, "hasFixedAutoAncGain") && ![v5 hasFixedAutoAncGain] || -[BMDeviceAdaptiveVolume hasFixedAutoAncGain](self, "hasFixedAutoAncGain") && objc_msgSend(v5, "hasFixedAutoAncGain") && (v87 = -[BMDeviceAdaptiveVolume fixedAutoAncGain](self, "fixedAutoAncGain"), v87 == objc_msgSend(v5, "fixedAutoAncGain")))
            {
              if (!-[BMDeviceAdaptiveVolume hasAdjustedAutoAncGain](self, "hasAdjustedAutoAncGain") && ![v5 hasAdjustedAutoAncGain] || -[BMDeviceAdaptiveVolume hasAdjustedAutoAncGain](self, "hasAdjustedAutoAncGain") && objc_msgSend(v5, "hasAdjustedAutoAncGain") && (v88 = -[BMDeviceAdaptiveVolume adjustedAutoAncGain](self, "adjustedAutoAncGain"), v88 == objc_msgSend(v5, "adjustedAutoAncGain")))
              {
                if (!-[BMDeviceAdaptiveVolume hasTimestamp](self, "hasTimestamp") && ![v5 hasTimestamp] || -[BMDeviceAdaptiveVolume hasTimestamp](self, "hasTimestamp") && objc_msgSend(v5, "hasTimestamp") && (v89 = -[BMDeviceAdaptiveVolume timestamp](self, "timestamp"), v89 == objc_msgSend(v5, "timestamp")))
                {
                  if (!-[BMDeviceAdaptiveVolume hasDRCenablementBit](self, "hasDRCenablementBit") && ![v5 hasDRCenablementBit] || -[BMDeviceAdaptiveVolume hasDRCenablementBit](self, "hasDRCenablementBit") && objc_msgSend(v5, "hasDRCenablementBit") && (v90 = -[BMDeviceAdaptiveVolume DRCenablementBit](self, "DRCenablementBit"), v90 == objc_msgSend(v5, "DRCenablementBit")))
                  {
                    if (!-[BMDeviceAdaptiveVolume hasDRCwindFlag](self, "hasDRCwindFlag") && ![v5 hasDRCwindFlag] || -[BMDeviceAdaptiveVolume hasDRCwindFlag](self, "hasDRCwindFlag") && objc_msgSend(v5, "hasDRCwindFlag") && (v91 = -[BMDeviceAdaptiveVolume DRCwindFlag](self, "DRCwindFlag"), v91 == objc_msgSend(v5, "DRCwindFlag")))
                    {
                      if (!-[BMDeviceAdaptiveVolume hasDRCappSelfVoiceFlag](self, "hasDRCappSelfVoiceFlag") && ![v5 hasDRCappSelfVoiceFlag] || -[BMDeviceAdaptiveVolume hasDRCappSelfVoiceFlag](self, "hasDRCappSelfVoiceFlag") && objc_msgSend(v5, "hasDRCappSelfVoiceFlag") && (v92 = -[BMDeviceAdaptiveVolume DRCappSelfVoiceFlag](self, "DRCappSelfVoiceFlag"), v92 == objc_msgSend(v5, "DRCappSelfVoiceFlag")))
                      {
                        if (!-[BMDeviceAdaptiveVolume hasDrumDRC](self, "hasDrumDRC") && ![v5 hasDrumDRC] || -[BMDeviceAdaptiveVolume hasDrumDRC](self, "hasDrumDRC") && objc_msgSend(v5, "hasDrumDRC") && (v93 = -[BMDeviceAdaptiveVolume drumDRC](self, "drumDRC"), v93 == objc_msgSend(v5, "drumDRC")))
                        {
                          if (!-[BMDeviceAdaptiveVolume hasRoutedDRCGain](self, "hasRoutedDRCGain") && ![v5 hasRoutedDRCGain])
                          {
                            v45 = 1;
                            goto LABEL_340;
                          }

                          if (-[BMDeviceAdaptiveVolume hasRoutedDRCGain](self, "hasRoutedDRCGain") && [v5 hasRoutedDRCGain])
                          {
                            routedDRCGain = [(BMDeviceAdaptiveVolume *)self routedDRCGain];
                            v45 = routedDRCGain == [v5 routedDRCGain];
LABEL_340:

                            goto LABEL_341;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_339:
    v45 = 0;
    goto LABEL_340;
  }

  v45 = 0;
LABEL_341:

  return v45;
}

- (id)jsonDictionary
{
  v269 = *MEMORY[0x1E69E9840];
  if ([(BMDeviceAdaptiveVolume *)self hasControllerVersion])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume controllerVersion](self, "controllerVersion")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasRefMicdBA])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume refMicdBA](self, "refMicdBA")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasRefMicdBC])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume refMicdBC](self, "refMicdBC")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDrumdBA])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume drumdBA](self, "drumdBA")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDrumdBK])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume drumdBK](self, "drumdBK")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDrumdBAPredicted])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume drumdBAPredicted](self, "drumdBAPredicted")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDownlinkdBA])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume downlinkdBA](self, "downlinkdBA")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasCurrentVolumePrct])
  {
    v212 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume currentVolumePrct](self, "currentVolumePrct")}];
  }

  else
  {
    v212 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLastUserVolChangeType])
  {
    v211 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastUserVolChangeType](self, "lastUserVolChangeType")}];
  }

  else
  {
    v211 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasHeadphoneMode])
  {
    v210 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume headphoneMode](self, "headphoneMode")}];
  }

  else
  {
    v210 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasStreamType])
  {
    v209 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume streamType](self, "streamType")}];
  }

  else
  {
    v209 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasWindSpeechAggressorFlag])
  {
    v208 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume windSpeechAggressorFlag](self, "windSpeechAggressorFlag")}];
  }

  else
  {
    v208 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasVolumeChangeFlag])
  {
    v207 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume volumeChangeFlag](self, "volumeChangeFlag")}];
  }

  else
  {
    v207 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasSpeechPresenceProbability])
  {
    v206 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume speechPresenceProbability](self, "speechPresenceProbability")}];
  }

  else
  {
    v206 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasPersonalizationParamSnr])
  {
    v205 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume personalizationParamSnr](self, "personalizationParamSnr")}];
  }

  else
  {
    v205 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasPersonalizationParamMistakes])
  {
    v204 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume personalizationParamMistakes](self, "personalizationParamMistakes")}];
  }

  else
  {
    v204 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLastEMediadBA])
  {
    v203 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastEMediadBA](self, "lastEMediadBA")}];
  }

  else
  {
    v203 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLastVolMediaPrct])
  {
    v202 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastVolMediaPrct](self, "lastVolMediaPrct")}];
  }

  else
  {
    v202 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLastETelephonydBA])
  {
    v201 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastETelephonydBA](self, "lastETelephonydBA")}];
  }

  else
  {
    v201 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLastVolTelephonyPrct])
  {
    v200 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastVolTelephonyPrct](self, "lastVolTelephonyPrct")}];
  }

  else
  {
    v200 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLastESiridBA])
  {
    v199 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastESiridBA](self, "lastESiridBA")}];
  }

  else
  {
    v199 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLastVolSiriPrct])
  {
    v198 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastVolSiriPrct](self, "lastVolSiriPrct")}];
  }

  else
  {
    v198 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasSmoothEae])
  {
    v197 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume smoothEae](self, "smoothEae")}];
  }

  else
  {
    v197 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDesiredDeltaE])
  {
    v196 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume desiredDeltaE](self, "desiredDeltaE")}];
  }

  else
  {
    v196 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasPredVolMediaPrct])
  {
    v195 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume predVolMediaPrct](self, "predVolMediaPrct")}];
  }

  else
  {
    v195 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasPredVolTelephonyPrct])
  {
    v194 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume predVolTelephonyPrct](self, "predVolTelephonyPrct")}];
  }

  else
  {
    v194 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasPredVolSiriPrct])
  {
    v193 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume predVolSiriPrct](self, "predVolSiriPrct")}];
  }

  else
  {
    v193 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasOnStartPredictionFlag])
  {
    v192 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume onStartPredictionFlag](self, "onStartPredictionFlag")}];
  }

  else
  {
    v192 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasGuardrailsAvoidFlag])
  {
    v191 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume guardrailsAvoidFlag](self, "guardrailsAvoidFlag")}];
  }

  else
  {
    v191 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasMinMaxCutFlag])
  {
    v190 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume minMaxCutFlag](self, "minMaxCutFlag")}];
  }

  else
  {
    v190 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasManualVolumeChangeFlag])
  {
    v189 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume manualVolumeChangeFlag](self, "manualVolumeChangeFlag")}];
  }

  else
  {
    v189 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasBigWindowSize])
  {
    v188 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume bigWindowSize](self, "bigWindowSize")}];
  }

  else
  {
    v188 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasSmallWindowSize])
  {
    v187 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume smallWindowSize](self, "smallWindowSize")}];
  }

  else
  {
    v187 = 0;
  }

  activeAppName = [(BMDeviceAdaptiveVolume *)self activeAppName];
  activeAirpodsSerialNumber = [(BMDeviceAdaptiveVolume *)self activeAirpodsSerialNumber];
  if ([(BMDeviceAdaptiveVolume *)self hasAnchorVol])
  {
    v184 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume anchorVol](self, "anchorVol")}];
  }

  else
  {
    v184 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasAnchorEnv])
  {
    v183 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume anchorEnv](self, "anchorEnv")}];
  }

  else
  {
    v183 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasPersonalizationCoeff])
  {
    v182 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume personalizationCoeff](self, "personalizationCoeff")}];
  }

  else
  {
    v182 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasUnsignedPredVolMediaPrct])
  {
    v181 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume unsignedPredVolMediaPrct](self, "unsignedPredVolMediaPrct")}];
  }

  else
  {
    v181 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasUnsignedPredVolTelephonyPrct])
  {
    v180 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume unsignedPredVolTelephonyPrct](self, "unsignedPredVolTelephonyPrct")}];
  }

  else
  {
    v180 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasUnsignedPredVolSiriPrct])
  {
    v179 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume unsignedPredVolSiriPrct](self, "unsignedPredVolSiriPrct")}];
  }

  else
  {
    v179 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasSingleBudFlag])
  {
    v178 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume singleBudFlag](self, "singleBudFlag")}];
  }

  else
  {
    v178 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasCdEngagementFlag])
  {
    v177 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume cdEngagementFlag](self, "cdEngagementFlag")}];
  }

  else
  {
    v177 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasActiveStreamFlag])
  {
    v176 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume activeStreamFlag](self, "activeStreamFlag")}];
  }

  else
  {
    v176 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasPvFeatureEnableFlag])
  {
    v175 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume pvFeatureEnableFlag](self, "pvFeatureEnableFlag")}];
  }

  else
  {
    v175 = 0;
  }

  _envSpectralData32BJSONArray = [(BMDeviceAdaptiveVolume *)self _envSpectralData32BJSONArray];
  if ([(BMDeviceAdaptiveVolume *)self hasWindStrength])
  {
    v154 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume windStrength](self, "windStrength")}];
  }

  else
  {
    v154 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasWindProb])
  {
    v153 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume windProb](self, "windProb")}];
  }

  else
  {
    v153 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasMediaType])
  {
    v174 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume mediaType](self, "mediaType")}];
  }

  else
  {
    v174 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasSourceActivity])
  {
    v173 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume sourceActivity](self, "sourceActivity")}];
  }

  else
  {
    v173 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasBudActivity])
  {
    v172 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume budActivity](self, "budActivity")}];
  }

  else
  {
    v172 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLocation])
  {
    v171 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume location](self, "location")}];
  }

  else
  {
    v171 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasLocationType])
  {
    v170 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume locationType](self, "locationType")}];
  }

  else
  {
    v170 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasFocusMode])
  {
    v169 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume focusMode](self, "focusMode")}];
  }

  else
  {
    v169 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasStreamingAppBundleId])
  {
    v168 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume streamingAppBundleId](self, "streamingAppBundleId")}];
  }

  else
  {
    v168 = 0;
  }

  _noiseType4BJSONArray = [(BMDeviceAdaptiveVolume *)self _noiseType4BJSONArray];
  if ([(BMDeviceAdaptiveVolume *)self hasInstdBA])
  {
    v166 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume instdBA](self, "instdBA")}];
  }

  else
  {
    v166 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasInstdBC])
  {
    v165 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume instdBC](self, "instdBC")}];
  }

  else
  {
    v165 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasNonCAListeningMode])
  {
    v164 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume nonCAListeningMode](self, "nonCAListeningMode")}];
  }

  else
  {
    v164 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasFit])
  {
    v163 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume fit](self, "fit")}];
  }

  else
  {
    v163 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasFixedAutoAncGain])
  {
    v162 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume fixedAutoAncGain](self, "fixedAutoAncGain")}];
  }

  else
  {
    v162 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasAdjustedAutoAncGain])
  {
    v161 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume adjustedAutoAncGain](self, "adjustedAutoAncGain")}];
  }

  else
  {
    v161 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasTimestamp])
  {
    v160 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume timestamp](self, "timestamp")}];
  }

  else
  {
    v160 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDRCenablementBit])
  {
    v159 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume DRCenablementBit](self, "DRCenablementBit")}];
  }

  else
  {
    v159 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDRCwindFlag])
  {
    v158 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume DRCwindFlag](self, "DRCwindFlag")}];
  }

  else
  {
    v158 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDRCappSelfVoiceFlag])
  {
    v157 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume DRCappSelfVoiceFlag](self, "DRCappSelfVoiceFlag")}];
  }

  else
  {
    v157 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasDrumDRC])
  {
    v156 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume drumDRC](self, "drumDRC")}];
  }

  else
  {
    v156 = 0;
  }

  if ([(BMDeviceAdaptiveVolume *)self hasRoutedDRCGain])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume routedDRCGain](self, "routedDRCGain")}];
  }

  else
  {
    v10 = 0;
  }

  v214[0] = @"controllerVersion";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v146 = null;
  v241[0] = null;
  v214[1] = @"refMicdBA";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v145 = null2;
  v241[1] = null2;
  v214[2] = @"refMicdBC";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v144 = null3;
  v241[2] = null3;
  v214[3] = @"drumdBA";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v143 = null4;
  v241[3] = null4;
  v214[4] = @"drumdBK";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v142 = null5;
  v241[4] = null5;
  v214[5] = @"drumdBAPredicted";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v141 = null6;
  v241[5] = null6;
  v214[6] = @"downlinkdBA";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v140 = null7;
  v241[6] = null7;
  v214[7] = @"currentVolumePrct";
  null8 = v212;
  if (!v212)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v139 = null8;
  v241[7] = null8;
  v214[8] = @"lastUserVolChangeType";
  null9 = v211;
  if (!v211)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v138 = null9;
  v241[8] = null9;
  v214[9] = @"headphoneMode";
  null10 = v210;
  if (!v210)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v137 = null10;
  v241[9] = null10;
  v214[10] = @"streamType";
  null11 = v209;
  if (!v209)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v136 = null11;
  v241[10] = null11;
  v214[11] = @"windSpeechAggressorFlag";
  null12 = v208;
  if (!v208)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v135 = null12;
  v241[11] = null12;
  v214[12] = @"volumeChangeFlag";
  null13 = v207;
  if (!v207)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v134 = null13;
  v241[12] = null13;
  v214[13] = @"speechPresenceProbability";
  null14 = v206;
  if (!v206)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v133 = null14;
  v241[13] = null14;
  v214[14] = @"personalizationParamSnr";
  null15 = v205;
  if (!v205)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v132 = null15;
  v241[14] = null15;
  v214[15] = @"personalizationParamMistakes";
  null16 = v204;
  if (!v204)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v131 = null16;
  v241[15] = null16;
  v214[16] = @"lastEMediadBA";
  null17 = v203;
  if (!v203)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v130 = null17;
  v241[16] = null17;
  v214[17] = @"lastVolMediaPrct";
  null18 = v202;
  if (!v202)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v129 = null18;
  v241[17] = null18;
  v214[18] = @"lastETelephonydBA";
  null19 = v201;
  if (!v201)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v128 = null19;
  v241[18] = null19;
  v214[19] = @"lastVolTelephonyPrct";
  null20 = v200;
  if (!v200)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v127 = null20;
  v241[19] = null20;
  v214[20] = @"lastESiridBA";
  null21 = v199;
  if (!v199)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v126 = null21;
  v241[20] = null21;
  v214[21] = @"lastVolSiriPrct";
  null22 = v198;
  if (!v198)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v125 = null22;
  v241[21] = null22;
  v214[22] = @"smoothEae";
  null23 = v197;
  if (!v197)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v124 = null23;
  v241[22] = null23;
  v214[23] = @"desiredDeltaE";
  null24 = v196;
  if (!v196)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v123 = null24;
  v241[23] = null24;
  v214[24] = @"predVolMediaPrct";
  null25 = v195;
  if (!v195)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v122 = null25;
  v241[24] = null25;
  v214[25] = @"predVolTelephonyPrct";
  null26 = v194;
  if (!v194)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v121 = null26;
  v241[25] = null26;
  v214[26] = @"predVolSiriPrct";
  null27 = v193;
  if (!v193)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v120 = null27;
  v241[26] = null27;
  v214[27] = @"onStartPredictionFlag";
  null28 = v192;
  if (!v192)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v119 = null28;
  v241[27] = null28;
  v214[28] = @"guardrailsAvoidFlag";
  null29 = v191;
  if (!v191)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v118 = null29;
  v241[28] = null29;
  v214[29] = @"minMaxCutFlag";
  null30 = v190;
  if (!v190)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v117 = null30;
  v241[29] = null30;
  v214[30] = @"manualVolumeChangeFlag";
  null31 = v189;
  if (!v189)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v116 = null31;
  v241[30] = null31;
  v214[31] = @"bigWindowSize";
  null32 = v188;
  if (!v188)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v115 = null32;
  v241[31] = null32;
  v214[32] = @"smallWindowSize";
  null33 = v187;
  if (!v187)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v114 = null33;
  v241[32] = null33;
  v214[33] = @"activeAppName";
  null34 = activeAppName;
  if (!activeAppName)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = null34;
  v241[33] = null34;
  v214[34] = @"activeAirpodsSerialNumber";
  null35 = activeAirpodsSerialNumber;
  if (!activeAirpodsSerialNumber)
  {
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = null35;
  v241[34] = null35;
  v214[35] = @"anchorVol";
  null36 = v184;
  if (!v184)
  {
    null36 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = null36;
  v241[35] = null36;
  v214[36] = @"anchorEnv";
  null37 = v183;
  if (!v183)
  {
    null37 = [MEMORY[0x1E695DFB0] null];
  }

  v110 = null37;
  v241[36] = null37;
  v214[37] = @"personalizationCoeff";
  null38 = v182;
  if (!v182)
  {
    null38 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = null38;
  v241[37] = null38;
  v214[38] = @"unsignedPredVolMediaPrct";
  null39 = v181;
  if (!v181)
  {
    null39 = [MEMORY[0x1E695DFB0] null];
  }

  v108 = null39;
  v241[38] = null39;
  v214[39] = @"unsignedPredVolTelephonyPrct";
  null40 = v180;
  if (!v180)
  {
    null40 = [MEMORY[0x1E695DFB0] null];
  }

  v107 = null40;
  v241[39] = null40;
  v214[40] = @"unsignedPredVolSiriPrct";
  null41 = v179;
  if (!v179)
  {
    null41 = [MEMORY[0x1E695DFB0] null];
  }

  v106 = null41;
  v241[40] = null41;
  v214[41] = @"singleBudFlag";
  null42 = v178;
  if (!v178)
  {
    null42 = [MEMORY[0x1E695DFB0] null];
  }

  v105 = null42;
  v241[41] = null42;
  v214[42] = @"cdEngagementFlag";
  null43 = v177;
  if (!v177)
  {
    null43 = [MEMORY[0x1E695DFB0] null];
  }

  v104 = null43;
  v241[42] = null43;
  v214[43] = @"activeStreamFlag";
  null44 = v176;
  if (!v176)
  {
    null44 = [MEMORY[0x1E695DFB0] null];
  }

  v103 = null44;
  v152 = v10;
  v241[43] = null44;
  v214[44] = @"pvFeatureEnableFlag";
  null45 = v175;
  if (!v175)
  {
    null45 = [MEMORY[0x1E695DFB0] null];
  }

  v102 = null45;
  v241[44] = null45;
  v214[45] = @"envSpectralData32B";
  if (_envSpectralData32BJSONArray)
  {
    v242 = _envSpectralData32BJSONArray;
    v215 = @"envSpectralData_32B";
    null47 = _envSpectralData32BJSONArray;
  }

  else
  {
    null46 = [MEMORY[0x1E695DFB0] null];
    v242 = null46;
    v215 = @"envSpectralData_32B";
    null47 = [MEMORY[0x1E695DFB0] null];
  }

  v101 = null47;
  v243 = null47;
  v216 = @"windStrength";
  if (v154)
  {
    v244 = v154;
    v217 = @"wind_strength";
    null49 = v154;
  }

  else
  {
    null48 = [MEMORY[0x1E695DFB0] null];
    v244 = null48;
    v217 = @"wind_strength";
    null49 = [MEMORY[0x1E695DFB0] null];
  }

  v100 = null49;
  v245 = null49;
  v218 = @"windProb";
  if (v153)
  {
    v246 = v153;
    v219 = @"wind_prob";
    null51 = v153;
  }

  else
  {
    null50 = [MEMORY[0x1E695DFB0] null];
    v246 = null50;
    v219 = @"wind_prob";
    null51 = [MEMORY[0x1E695DFB0] null];
  }

  v99 = null51;
  v247 = null51;
  v220 = @"mediaType";
  null52 = v174;
  if (!v174)
  {
    null52 = [MEMORY[0x1E695DFB0] null];
  }

  v248 = null52;
  v221 = @"sourceActivity";
  null53 = v173;
  if (!v173)
  {
    null53 = [MEMORY[0x1E695DFB0] null];
  }

  v249 = null53;
  v222 = @"budActivity";
  null54 = v172;
  if (!v172)
  {
    null54 = [MEMORY[0x1E695DFB0] null];
  }

  v250 = null54;
  v223 = @"location";
  null55 = v171;
  if (!v171)
  {
    null55 = [MEMORY[0x1E695DFB0] null];
  }

  v95 = null55;
  v251 = null55;
  v224 = @"locationType";
  null56 = v170;
  if (!v170)
  {
    null56 = [MEMORY[0x1E695DFB0] null];
  }

  v94 = null56;
  v252 = null56;
  v225 = @"focusMode";
  null57 = v169;
  if (!v169)
  {
    null57 = [MEMORY[0x1E695DFB0] null];
  }

  v93 = null57;
  v98 = null52;
  v253 = null57;
  v226 = @"streamingAppBundleId";
  null58 = v168;
  if (!v168)
  {
    null58 = [MEMORY[0x1E695DFB0] null];
  }

  v92 = null58;
  v254 = null58;
  v227 = @"noiseType4B";
  v96 = null54;
  if (_noiseType4BJSONArray)
  {
    v255 = _noiseType4BJSONArray;
    v228 = @"noiseType_4B";
    null60 = _noiseType4BJSONArray;
  }

  else
  {
    null59 = [MEMORY[0x1E695DFB0] null];
    v255 = null59;
    v228 = @"noiseType_4B";
    null60 = [MEMORY[0x1E695DFB0] null];
  }

  v91 = null60;
  v256 = null60;
  v229 = @"instdBA";
  null61 = v166;
  if (!v166)
  {
    null61 = [MEMORY[0x1E695DFB0] null];
  }

  v257 = null61;
  v230 = @"instdBC";
  null62 = v165;
  if (!v165)
  {
    null62 = [MEMORY[0x1E695DFB0] null];
  }

  v258 = null62;
  v231 = @"nonCAListeningMode";
  null63 = v164;
  if (!v164)
  {
    null63 = [MEMORY[0x1E695DFB0] null];
  }

  v213 = null63;
  v259 = null63;
  v232 = @"fit";
  null64 = v163;
  if (!v163)
  {
    null64 = [MEMORY[0x1E695DFB0] null];
  }

  v148 = v9;
  v89 = null64;
  v260 = null64;
  v233 = @"fixedAutoAncGain";
  null65 = v162;
  if (!v162)
  {
    null65 = [MEMORY[0x1E695DFB0] null];
  }

  v97 = null53;
  v88 = null65;
  v261 = null65;
  v234 = @"adjustedAutoAncGain";
  null66 = v161;
  if (!v161)
  {
    null66 = [MEMORY[0x1E695DFB0] null];
  }

  v150 = v7;
  v151 = v6;
  v87 = null66;
  v262 = null66;
  v235 = @"timestamp";
  null67 = v160;
  if (!v160)
  {
    null67 = [MEMORY[0x1E695DFB0] null];
  }

  v149 = v4;
  v263 = null67;
  v236 = @"DRCenablementBit";
  null68 = v159;
  if (!v159)
  {
    null68 = [MEMORY[0x1E695DFB0] null];
  }

  v90 = null61;
  v75 = v8;
  v264 = null68;
  v237 = @"DRCwindFlag";
  null69 = v158;
  if (!v158)
  {
    null69 = [MEMORY[0x1E695DFB0] null];
  }

  v77 = v3;
  v265 = null69;
  v238 = @"DRCappSelfVoiceFlag";
  null70 = v157;
  if (!v157)
  {
    null70 = [MEMORY[0x1E695DFB0] null];
  }

  v266 = null70;
  v239 = @"drumDRC";
  null71 = v156;
  if (!v156)
  {
    null71 = [MEMORY[0x1E695DFB0] null];
  }

  v267 = null71;
  v240 = @"routedDRCGain";
  null72 = v152;
  if (!v152)
  {
    null72 = [MEMORY[0x1E695DFB0] null];
  }

  v268 = null72;
  v147 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v241 forKeys:v214 count:72];
  if (!v152)
  {
  }

  v81 = v213;
  if (!v156)
  {

    v81 = v213;
  }

  if (!v157)
  {

    v81 = v213;
  }

  if (!v158)
  {

    v81 = v213;
  }

  if (!v159)
  {

    v81 = v213;
  }

  if (!v160)
  {

    v81 = v213;
  }

  if (!v161)
  {

    v81 = v213;
  }

  if (!v162)
  {

    v81 = v213;
  }

  if (!v163)
  {

    v81 = v213;
  }

  if (!v164)
  {
  }

  if (!v165)
  {
  }

  if (!v166)
  {
  }

  if (!_noiseType4BJSONArray)
  {
  }

  if (!v168)
  {
  }

  if (!v169)
  {
  }

  if (!v170)
  {
  }

  if (!v171)
  {
  }

  if (!v172)
  {
  }

  if (!v173)
  {
  }

  if (v174)
  {
    if (v153)
    {
      goto LABEL_373;
    }
  }

  else
  {

    if (v153)
    {
LABEL_373:
      if (v154)
      {
        goto LABEL_374;
      }

LABEL_462:

      if (_envSpectralData32BJSONArray)
      {
        goto LABEL_375;
      }

      goto LABEL_463;
    }
  }

  if (!v154)
  {
    goto LABEL_462;
  }

LABEL_374:
  if (_envSpectralData32BJSONArray)
  {
    goto LABEL_375;
  }

LABEL_463:

LABEL_375:
  if (!v175)
  {
  }

  if (!v176)
  {
  }

  if (!v177)
  {
  }

  if (!v178)
  {
  }

  if (!v179)
  {
  }

  if (!v180)
  {
  }

  if (!v181)
  {
  }

  if (!v182)
  {
  }

  if (!v183)
  {
  }

  if (!v184)
  {
  }

  if (!activeAirpodsSerialNumber)
  {
  }

  if (!activeAppName)
  {
  }

  if (!v187)
  {
  }

  if (!v188)
  {
  }

  if (!v189)
  {
  }

  if (!v190)
  {
  }

  if (!v191)
  {
  }

  if (!v192)
  {
  }

  if (!v193)
  {
  }

  if (!v194)
  {
  }

  if (!v195)
  {
  }

  if (!v196)
  {
  }

  if (!v197)
  {
  }

  if (!v198)
  {
  }

  if (!v199)
  {
  }

  if (!v200)
  {
  }

  if (!v201)
  {
  }

  if (!v202)
  {
  }

  if (!v203)
  {
  }

  if (!v204)
  {
  }

  if (!v205)
  {
  }

  if (!v206)
  {
  }

  if (!v207)
  {
  }

  if (!v208)
  {
  }

  if (!v209)
  {
  }

  if (!v210)
  {
  }

  if (!v211)
  {
  }

  if (v212)
  {
    if (v148)
    {
      goto LABEL_451;
    }
  }

  else
  {

    if (v148)
    {
LABEL_451:
      if (v75)
      {
        goto LABEL_452;
      }

      goto LABEL_466;
    }
  }

  if (v75)
  {
LABEL_452:
    if (v150)
    {
      goto LABEL_453;
    }

    goto LABEL_467;
  }

LABEL_466:

  if (v150)
  {
LABEL_453:
    if (v151)
    {
      goto LABEL_454;
    }

    goto LABEL_468;
  }

LABEL_467:

  if (v151)
  {
LABEL_454:
    if (v5)
    {
      goto LABEL_455;
    }

    goto LABEL_469;
  }

LABEL_468:

  if (v5)
  {
LABEL_455:
    if (v149)
    {
      goto LABEL_456;
    }

LABEL_470:

    if (v77)
    {
      goto LABEL_457;
    }

    goto LABEL_471;
  }

LABEL_469:

  if (!v149)
  {
    goto LABEL_470;
  }

LABEL_456:
  if (v77)
  {
    goto LABEL_457;
  }

LABEL_471:

LABEL_457:

  return v147;
}

- (id)_noiseType4BJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  noiseType4B = [(BMDeviceAdaptiveVolume *)self noiseType4B];
  v5 = [noiseType4B countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(noiseType4B);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [noiseType4B countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_envSpectralData32BJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  envSpectralData32B = [(BMDeviceAdaptiveVolume *)self envSpectralData32B];
  v5 = [envSpectralData32B countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(envSpectralData32B);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [envSpectralData32B countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMDeviceAdaptiveVolume)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v790[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"controllerVersion"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"refMicdBA"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
LABEL_7:
      v636 = [dictionaryCopy objectForKeyedSubscript:@"refMicdBC"];
      v632 = v8;
      if (!v636 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = v10;
        selfCopy2 = self;
        errorCopy2 = error;
        v635 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        selfCopy2 = self;
        errorCopy2 = error;
        v635 = v636;
LABEL_10:
        v14 = [dictionaryCopy objectForKeyedSubscript:@"drumdBA"];
        if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v628 = v14;
          v629 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v628 = v14;
          v629 = v14;
LABEL_13:
          v15 = [dictionaryCopy objectForKeyedSubscript:@"drumdBK"];
          v633 = v15;
          if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v630 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v630 = v16;
LABEL_16:
            v17 = [dictionaryCopy objectForKeyedSubscript:@"drumdBAPredicted"];
            v627 = v17;
            if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v625 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v625 = v18;
LABEL_19:
              v19 = [dictionaryCopy objectForKeyedSubscript:@"downlinkdBA"];
              v624 = v19;
              if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v622 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v622 = v20;
LABEL_22:
                v21 = [dictionaryCopy objectForKeyedSubscript:@"currentVolumePrct"];
                v610 = v21;
                if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v608 = 0;
                  goto LABEL_25;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v608 = v22;
LABEL_25:
                  v23 = [dictionaryCopy objectForKeyedSubscript:@"lastUserVolChangeType"];
                  v607 = v23;
                  if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v605 = 0;
                    goto LABEL_28;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v605 = v24;
LABEL_28:
                    v25 = [dictionaryCopy objectForKeyedSubscript:@"headphoneMode"];
                    v604 = v25;
                    if (!v25 || (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v602 = 0;
                      goto LABEL_31;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v602 = v26;
LABEL_31:
                      v27 = [dictionaryCopy objectForKeyedSubscript:@"streamType"];
                      v601 = v27;
                      if (!v27 || (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v599 = 0;
                        goto LABEL_34;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v599 = v28;
LABEL_34:
                        v29 = [dictionaryCopy objectForKeyedSubscript:@"windSpeechAggressorFlag"];
                        v586 = v29;
                        if (!v29 || (v30 = v29, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v585 = 0;
                          goto LABEL_37;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v585 = v30;
LABEL_37:
                          v31 = [dictionaryCopy objectForKeyedSubscript:@"volumeChangeFlag"];
                          v584 = v31;
                          if (!v31 || (v32 = v31, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v583 = 0;
                            goto LABEL_40;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v583 = v32;
LABEL_40:
                            v33 = [dictionaryCopy objectForKeyedSubscript:@"speechPresenceProbability"];
                            v582 = v33;
                            if (!v33 || (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v581 = 0;
                              goto LABEL_43;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v581 = v34;
LABEL_43:
                              v35 = [dictionaryCopy objectForKeyedSubscript:@"personalizationParamSnr"];
                              v580 = v35;
                              if (!v35 || (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v579 = 0;
                                goto LABEL_46;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v579 = v36;
LABEL_46:
                                v37 = [dictionaryCopy objectForKeyedSubscript:@"personalizationParamMistakes"];
                                v578 = v37;
                                if (!v37 || (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v577 = 0;
                                  goto LABEL_49;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v577 = v38;
LABEL_49:
                                  v39 = [dictionaryCopy objectForKeyedSubscript:@"lastEMediadBA"];
                                  v576 = v39;
                                  if (!v39 || (v40 = v39, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v572 = 0;
LABEL_52:
                                    v41 = [dictionaryCopy objectForKeyedSubscript:@"lastVolMediaPrct"];
                                    v611 = errorCopy2;
                                    v573 = v41;
                                    if (!v41)
                                    {
                                      v574 = 0;
                                      self = selfCopy2;
                                      goto LABEL_119;
                                    }

                                    v42 = v41;
                                    objc_opt_class();
                                    self = selfCopy2;
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v574 = 0;
LABEL_119:
                                      v10 = v11;
                                      goto LABEL_120;
                                    }

                                    objc_opt_class();
                                    v10 = v11;
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v574 = v42;
LABEL_120:
                                      v62 = v629;
                                      v125 = [dictionaryCopy objectForKeyedSubscript:@"lastETelephonydBA"];
                                      v571 = v125;
                                      if (!v125 || (v126 = v125, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v569 = 0;
                                        goto LABEL_123;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v569 = v126;
LABEL_123:
                                        v127 = [dictionaryCopy objectForKeyedSubscript:@"lastVolTelephonyPrct"];
                                        v568 = v127;
                                        if (!v127 || (v128 = v127, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v129 = v10;
                                          selfCopy4 = self;
                                          v566 = 0;
                                          goto LABEL_126;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v129 = v10;
                                          selfCopy4 = self;
                                          v566 = v128;
LABEL_126:
                                          v131 = [dictionaryCopy objectForKeyedSubscript:@"lastESiridBA"];
                                          v565 = v131;
                                          if (!v131 || (v132 = v131, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v563 = 0;
                                            goto LABEL_129;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v563 = v132;
LABEL_129:
                                            v133 = [dictionaryCopy objectForKeyedSubscript:@"lastVolSiriPrct"];
                                            v562 = v133;
                                            if (!v133 || (v134 = v133, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v560 = 0;
                                              goto LABEL_132;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v560 = v134;
LABEL_132:
                                              v135 = [dictionaryCopy objectForKeyedSubscript:@"smoothEae"];
                                              v559 = v135;
                                              if (!v135 || (v136 = v135, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v557 = 0;
                                                goto LABEL_135;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v557 = v136;
LABEL_135:
                                                v137 = [dictionaryCopy objectForKeyedSubscript:@"desiredDeltaE"];
                                                v556 = v137;
                                                if (!v137 || (v138 = v137, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v554 = 0;
                                                  goto LABEL_138;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v554 = v138;
LABEL_138:
                                                  v139 = [dictionaryCopy objectForKeyedSubscript:@"predVolMediaPrct"];
                                                  v553 = v139;
                                                  if (!v139 || (v140 = v139, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v551 = 0;
                                                    goto LABEL_141;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v551 = v140;
LABEL_141:
                                                    v141 = [dictionaryCopy objectForKeyedSubscript:@"predVolTelephonyPrct"];
                                                    v550 = v141;
                                                    if (!v141 || (v142 = v141, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v547 = 0;
                                                      goto LABEL_144;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v547 = v142;
LABEL_144:
                                                      v143 = [dictionaryCopy objectForKeyedSubscript:@"predVolSiriPrct"];
                                                      v539 = v129;
                                                      v546 = v143;
                                                      if (!v143 || (v144 = v143, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v544 = 0;
                                                        goto LABEL_147;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v544 = v144;
LABEL_147:
                                                        v145 = [dictionaryCopy objectForKeyedSubscript:@"onStartPredictionFlag"];
                                                        v543 = v145;
                                                        if (!v145 || (v146 = v145, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v541 = 0;
                                                          goto LABEL_150;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v541 = v146;
LABEL_150:
                                                          v147 = [dictionaryCopy objectForKeyedSubscript:@"guardrailsAvoidFlag"];
                                                          v538 = v147;
                                                          if (!v147 || (v148 = v147, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v537 = 0;
                                                            goto LABEL_153;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v537 = v148;
LABEL_153:
                                                            v149 = [dictionaryCopy objectForKeyedSubscript:@"minMaxCutFlag"];
                                                            v535 = v149;
                                                            if (!v149 || (v150 = v149, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                            {
                                                              v536 = 0;
                                                              goto LABEL_156;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v536 = v150;
LABEL_156:
                                                              v151 = [dictionaryCopy objectForKeyedSubscript:@"manualVolumeChangeFlag"];
                                                              v533 = v151;
                                                              if (!v151 || (v152 = v151, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v534 = 0;
                                                                goto LABEL_159;
                                                              }

                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v534 = v152;
LABEL_159:
                                                                v153 = [dictionaryCopy objectForKeyedSubscript:@"bigWindowSize"];
                                                                v532 = v153;
                                                                if (!v153 || (v154 = v153, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v531 = 0;
                                                                  goto LABEL_162;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v531 = v154;
LABEL_162:
                                                                  v155 = [dictionaryCopy objectForKeyedSubscript:@"smallWindowSize"];
                                                                  self = selfCopy4;
                                                                  v526 = v155;
                                                                  if (!v155 || (v156 = v155, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                  {
                                                                    v525 = 0;
                                                                    goto LABEL_165;
                                                                  }

                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    v525 = v156;
LABEL_165:
                                                                    v157 = [dictionaryCopy objectForKeyedSubscript:@"activeAppName"];
                                                                    v524 = v157;
                                                                    if (!v157 || (v158 = v157, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                    {
                                                                      v523 = 0;
LABEL_168:
                                                                      v159 = [dictionaryCopy objectForKeyedSubscript:@"activeAirpodsSerialNumber"];
                                                                      v521 = v159;
                                                                      if (v159 && (v160 = v159, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                      {
                                                                        objc_opt_class();
                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                        {
                                                                          if (!v611)
                                                                          {
                                                                            v522 = 0;
                                                                            v47 = 0;
                                                                            v10 = v129;
                                                                            v65 = v628;
                                                                            v62 = v629;
                                                                            v199 = v572;
LABEL_564:
                                                                            v287 = v521;
                                                                            goto LABEL_565;
                                                                          }

                                                                          v288 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v289 = *MEMORY[0x1E698F240];
                                                                          v721 = *MEMORY[0x1E696A578];
                                                                          v520 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"activeAirpodsSerialNumber"];
                                                                          v722 = v520;
                                                                          v290 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v722 forKeys:&v721 count:1];
                                                                          v522 = 0;
                                                                          v47 = 0;
                                                                          v611->super.super.isa = [v288 initWithDomain:v289 code:2 userInfo:v290];
                                                                          v291 = v290;
                                                                          v10 = v539;
                                                                          v65 = v628;
                                                                          v62 = v629;
                                                                          v199 = v572;
LABEL_563:

                                                                          goto LABEL_564;
                                                                        }

                                                                        v522 = v160;
                                                                        v10 = v129;
                                                                      }

                                                                      else
                                                                      {
                                                                        v522 = 0;
                                                                        v10 = v129;
                                                                      }

                                                                      v62 = v629;
                                                                      v161 = [dictionaryCopy objectForKeyedSubscript:@"anchorVol"];
                                                                      v519 = v161;
                                                                      if (!v161 || (v162 = v161, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                      {
                                                                        v520 = 0;
LABEL_174:
                                                                        v163 = [dictionaryCopy objectForKeyedSubscript:@"anchorEnv"];
                                                                        v514 = v163;
                                                                        if (v163 && (v164 = v163, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                        {
                                                                          objc_opt_class();
                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                          {
                                                                            if (!v611)
                                                                            {
                                                                              v518 = 0;
                                                                              v47 = 0;
                                                                              v65 = v628;
                                                                              v199 = v572;
                                                                              goto LABEL_560;
                                                                            }

                                                                            v298 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v299 = *MEMORY[0x1E698F240];
                                                                            v717 = *MEMORY[0x1E696A578];
                                                                            v593 = dictionaryCopy;
                                                                            v300 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                            v453 = objc_opt_class();
                                                                            v301 = v300;
                                                                            v10 = v539;
                                                                            dictionaryCopy = v593;
                                                                            v511 = [v301 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v453, @"anchorEnv"];
                                                                            v718 = v511;
                                                                            v165 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v718 forKeys:&v717 count:1];
                                                                            v302 = v298;
                                                                            v8 = v632;
                                                                            v518 = 0;
                                                                            v47 = 0;
                                                                            v611->super.super.isa = [v302 initWithDomain:v299 code:2 userInfo:v165];
                                                                            goto LABEL_375;
                                                                          }

                                                                          v518 = v164;
                                                                        }

                                                                        else
                                                                        {
                                                                          v518 = 0;
                                                                        }

                                                                        v165 = [dictionaryCopy objectForKeyedSubscript:@"personalizationCoeff"];
                                                                        if (!v165 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v508 = v165;
                                                                          v511 = 0;
LABEL_180:
                                                                          v166 = [dictionaryCopy objectForKeyedSubscript:@"unsignedPredVolMediaPrct"];
                                                                          v510 = v166;
                                                                          if (v166 && (v167 = v166, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              if (v611)
                                                                              {
                                                                                v309 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v310 = *MEMORY[0x1E698F240];
                                                                                v713 = *MEMORY[0x1E696A578];
                                                                                v595 = dictionaryCopy;
                                                                                v311 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                                v455 = objc_opt_class();
                                                                                v312 = v311;
                                                                                v165 = v508;
                                                                                v10 = v539;
                                                                                dictionaryCopy = v595;
                                                                                v506 = [v312 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v455, @"unsignedPredVolMediaPrct"];
                                                                                v714 = v506;
                                                                                v313 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v714 forKeys:&v713 count:1];
                                                                                v314 = v309;
                                                                                v8 = v632;
                                                                                v507 = v313;
                                                                                v509 = 0;
                                                                                v47 = 0;
                                                                                v611->super.super.isa = [v314 initWithDomain:v310 code:2 userInfo:?];
                                                                                v65 = v628;
                                                                                v199 = v572;
                                                                                goto LABEL_557;
                                                                              }

                                                                              v509 = 0;
                                                                              v47 = 0;
                                                                              v65 = v628;
                                                                              v199 = v572;
                                                                              v165 = v508;
                                                                              goto LABEL_558;
                                                                            }

                                                                            v509 = v167;
                                                                          }

                                                                          else
                                                                          {
                                                                            v509 = 0;
                                                                          }

                                                                          v168 = [dictionaryCopy objectForKeyedSubscript:@"unsignedPredVolTelephonyPrct"];
                                                                          v507 = v168;
                                                                          if (v168 && (v169 = v168, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              if (v611)
                                                                              {
                                                                                v328 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v329 = *MEMORY[0x1E698F240];
                                                                                v711 = *MEMORY[0x1E696A578];
                                                                                v596 = dictionaryCopy;
                                                                                v330 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                                v456 = objc_opt_class();
                                                                                v331 = v330;
                                                                                v165 = v508;
                                                                                v10 = v539;
                                                                                dictionaryCopy = v596;
                                                                                v504 = [v331 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v456, @"unsignedPredVolTelephonyPrct"];
                                                                                v712 = v504;
                                                                                v332 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v712 forKeys:&v711 count:1];
                                                                                v333 = v328;
                                                                                v8 = v632;
                                                                                v505 = v332;
                                                                                v506 = 0;
                                                                                v47 = 0;
                                                                                v611->super.super.isa = [v333 initWithDomain:v329 code:2 userInfo:?];
                                                                                v65 = v628;
                                                                                v199 = v572;
                                                                                goto LABEL_556;
                                                                              }

                                                                              v506 = 0;
                                                                              v47 = 0;
                                                                              v65 = v628;
                                                                              v199 = v572;
                                                                              v165 = v508;
                                                                              goto LABEL_557;
                                                                            }

                                                                            v506 = v169;
                                                                          }

                                                                          else
                                                                          {
                                                                            v506 = 0;
                                                                          }

                                                                          v170 = [dictionaryCopy objectForKeyedSubscript:@"unsignedPredVolSiriPrct"];
                                                                          v505 = v170;
                                                                          if (v170 && (v171 = v170, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              if (v611)
                                                                              {
                                                                                v334 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v335 = *MEMORY[0x1E698F240];
                                                                                v709 = *MEMORY[0x1E696A578];
                                                                                v597 = dictionaryCopy;
                                                                                v336 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                                v457 = objc_opt_class();
                                                                                v337 = v336;
                                                                                v165 = v508;
                                                                                v10 = v539;
                                                                                dictionaryCopy = v597;
                                                                                v502 = [v337 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v457, @"unsignedPredVolSiriPrct"];
                                                                                v710 = v502;
                                                                                v338 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v710 forKeys:&v709 count:1];
                                                                                v339 = v334;
                                                                                v8 = v632;
                                                                                v503 = v338;
                                                                                v504 = 0;
                                                                                v47 = 0;
                                                                                v611->super.super.isa = [v339 initWithDomain:v335 code:2 userInfo:?];
                                                                                v65 = v628;
                                                                                v199 = v572;
                                                                                goto LABEL_555;
                                                                              }

                                                                              v504 = 0;
                                                                              v47 = 0;
                                                                              v65 = v628;
                                                                              v199 = v572;
                                                                              v165 = v508;
                                                                              goto LABEL_556;
                                                                            }

                                                                            v504 = v171;
                                                                          }

                                                                          else
                                                                          {
                                                                            v504 = 0;
                                                                          }

                                                                          v172 = [dictionaryCopy objectForKeyedSubscript:@"singleBudFlag"];
                                                                          v503 = v172;
                                                                          if (v172 && (v173 = v172, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              v340 = v10;
                                                                              v341 = v8;
                                                                              selfCopy8 = self;
                                                                              if (!v611)
                                                                              {
                                                                                v502 = 0;
                                                                                v47 = 0;
                                                                                v8 = v341;
                                                                                v10 = v340;
                                                                                v65 = v628;
                                                                                v199 = v572;
                                                                                v165 = v508;
                                                                                goto LABEL_555;
                                                                              }

                                                                              v343 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v528 = *MEMORY[0x1E698F240];
                                                                              v707 = *MEMORY[0x1E696A578];
                                                                              v500 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"singleBudFlag"];
                                                                              v708 = v500;
                                                                              v501 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v708 forKeys:&v707 count:1];
                                                                              v502 = 0;
                                                                              v47 = 0;
                                                                              v611->super.super.isa = [v343 initWithDomain:v528 code:2 userInfo:?];
                                                                              goto LABEL_392;
                                                                            }

                                                                            v502 = v173;
                                                                          }

                                                                          else
                                                                          {
                                                                            v502 = 0;
                                                                          }

                                                                          v174 = [dictionaryCopy objectForKeyedSubscript:@"cdEngagementFlag"];
                                                                          v501 = v174;
                                                                          if (!v174 || (v175 = v174, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v500 = 0;
LABEL_195:
                                                                            v176 = [dictionaryCopy objectForKeyedSubscript:@"activeStreamFlag"];
                                                                            v499 = v176;
                                                                            if (!v176)
                                                                            {
                                                                              goto LABEL_338;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v176 = 0;
                                                                              goto LABEL_338;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v176 = v176;
LABEL_338:
                                                                              v315 = [dictionaryCopy objectForKeyedSubscript:@"pvFeatureEnableFlag"];
                                                                              v498 = v315;
                                                                              if (!v315 || (v316 = v315, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v497 = 0;
                                                                                goto LABEL_341;
                                                                              }

                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v497 = v316;
LABEL_341:
                                                                                v317 = [dictionaryCopy objectForKeyedSubscript:@"envSpectralData32B"];
                                                                                null = [MEMORY[0x1E695DFB0] null];
                                                                                v319 = [v317 isEqual:null];

                                                                                v495 = v176;
                                                                                if (v319)
                                                                                {

                                                                                  v317 = 0;
                                                                                }

                                                                                else if (v317)
                                                                                {
                                                                                  objc_opt_class();
                                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                  {
                                                                                    v496 = v317;
                                                                                    if (v611)
                                                                                    {
                                                                                      v356 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                      v357 = *MEMORY[0x1E698F240];
                                                                                      v699 = *MEMORY[0x1E696A578];
                                                                                      v515 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"envSpectralData32B"];
                                                                                      v700 = v515;
                                                                                      v358 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v700 forKeys:&v699 count:1];
                                                                                      v359 = [v356 initWithDomain:v357 code:2 userInfo:v358];
                                                                                      v47 = 0;
                                                                                      v611->super.super.isa = v359;
                                                                                      v353 = v358;
                                                                                      v8 = v632;
                                                                                      v10 = v539;
                                                                                      v65 = v628;
                                                                                      v199 = v572;
                                                                                      goto LABEL_549;
                                                                                    }

                                                                                    v47 = 0;
                                                                                    v8 = v632;
                                                                                    v10 = v539;
                                                                                    v65 = v628;
                                                                                    v199 = v572;
                                                                                    goto LABEL_551;
                                                                                  }
                                                                                }

                                                                                selfCopy6 = self;
                                                                                v515 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v317, "count")}];
                                                                                v641 = 0u;
                                                                                v642 = 0u;
                                                                                v643 = 0u;
                                                                                v644 = 0u;
                                                                                v320 = v317;
                                                                                v321 = [v320 countByEnumeratingWithState:&v641 objects:v698 count:16];
                                                                                v496 = v320;
                                                                                if (v321)
                                                                                {
                                                                                  v322 = v321;
                                                                                  v512 = *v642;
                                                                                  do
                                                                                  {
                                                                                    for (i = 0; i != v322; ++i)
                                                                                    {
                                                                                      if (*v642 != v512)
                                                                                      {
                                                                                        objc_enumerationMutation(v320);
                                                                                      }

                                                                                      v324 = *(*(&v641 + 1) + 8 * i);
                                                                                      objc_opt_class();
                                                                                      if (objc_opt_isKindOfClass())
                                                                                      {
                                                                                        if (v611)
                                                                                        {
                                                                                          v344 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                          v345 = *MEMORY[0x1E698F240];
                                                                                          v696 = *MEMORY[0x1E696A578];
                                                                                          v513 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"envSpectralData32B"];
                                                                                          v697 = v513;
                                                                                          v346 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v697 forKeys:&v696 count:1];
                                                                                          v347 = v344;
                                                                                          v348 = v345;
LABEL_373:
                                                                                          v493 = v346;
                                                                                          v176 = v495;
                                                                                          v47 = 0;
                                                                                          v611->super.super.isa = [v347 initWithDomain:v348 code:2 userInfo:?];
                                                                                          v494 = v320;
                                                                                          self = selfCopy6;
                                                                                          v8 = v632;
                                                                                          v65 = v628;
                                                                                          v199 = v572;
                                                                                          goto LABEL_547;
                                                                                        }

LABEL_378:
                                                                                        v47 = 0;
                                                                                        v353 = v320;
                                                                                        self = selfCopy6;
                                                                                        v8 = v632;
                                                                                        v10 = v539;
                                                                                        v65 = v628;
                                                                                        v199 = v572;
                                                                                        v176 = v495;
                                                                                        goto LABEL_549;
                                                                                      }

                                                                                      objc_opt_class();
                                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                      {
                                                                                        if (v611)
                                                                                        {
                                                                                          v349 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                          v350 = *MEMORY[0x1E698F240];
                                                                                          v694 = *MEMORY[0x1E696A578];
                                                                                          v513 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"envSpectralData32B"];
                                                                                          v695 = v513;
                                                                                          v346 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v695 forKeys:&v694 count:1];
                                                                                          v347 = v349;
                                                                                          v348 = v350;
                                                                                          goto LABEL_373;
                                                                                        }

                                                                                        goto LABEL_378;
                                                                                      }

                                                                                      v325 = v324;
                                                                                      [v515 addObject:v325];
                                                                                    }

                                                                                    v322 = [v320 countByEnumeratingWithState:&v641 objects:v698 count:16];
                                                                                  }

                                                                                  while (v322);
                                                                                }

                                                                                v326 = [dictionaryCopy objectForKeyedSubscript:@"windStrength"];
                                                                                v549 = v7;
                                                                                v540 = v9;
                                                                                if (v326)
                                                                                {
                                                                                  v327 = v326;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v327 = [dictionaryCopy objectForKeyedSubscript:@"wind_strength"];

                                                                                  if (!v327)
                                                                                  {
                                                                                    v513 = 0;
                                                                                    goto LABEL_401;
                                                                                  }
                                                                                }

                                                                                objc_opt_class();
                                                                                v513 = v327;
                                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                {
                                                                                  objc_opt_class();
                                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                  {
                                                                                    if (v611)
                                                                                    {
                                                                                      v360 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                      v361 = *MEMORY[0x1E698F240];
                                                                                      v692 = *MEMORY[0x1E696A578];
                                                                                      v493 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"windStrength"];
                                                                                      v693 = v493;
                                                                                      v362 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v693 forKeys:&v692 count:1];
                                                                                      v494 = 0;
                                                                                      v47 = 0;
                                                                                      v611->super.super.isa = [v360 initWithDomain:v361 code:2 userInfo:v362];
                                                                                      goto LABEL_546;
                                                                                    }

                                                                                    v494 = 0;
                                                                                    v47 = 0;
                                                                                    self = selfCopy6;
                                                                                    v8 = v632;
                                                                                    v10 = v539;
                                                                                    v65 = v628;
                                                                                    v199 = v572;
                                                                                    v176 = v495;
                                                                                    goto LABEL_548;
                                                                                  }

                                                                                  v513 = v327;
                                                                                  v494 = v513;
LABEL_402:
                                                                                  v363 = [dictionaryCopy objectForKeyedSubscript:@"windProb"];
                                                                                  v598 = dictionaryCopy;
                                                                                  if (v363)
                                                                                  {
                                                                                    v362 = v363;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v362 = [dictionaryCopy objectForKeyedSubscript:@"wind_prob"];

                                                                                    if (!v362)
                                                                                    {
                                                                                      goto LABEL_406;
                                                                                    }
                                                                                  }

                                                                                  objc_opt_class();
                                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v611)
                                                                                      {
                                                                                        v368 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v369 = *MEMORY[0x1E698F240];
                                                                                        v690 = *MEMORY[0x1E696A578];
                                                                                        v370 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"windProb"];
                                                                                        v691 = v370;
                                                                                        v364 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v691 forKeys:&v690 count:1];
                                                                                        v493 = 0;
                                                                                        v47 = 0;
                                                                                        v611->super.super.isa = [v368 initWithDomain:v369 code:2 userInfo:v364];
                                                                                        goto LABEL_544;
                                                                                      }

                                                                                      v493 = 0;
                                                                                      v47 = 0;
                                                                                      goto LABEL_545;
                                                                                    }

                                                                                    v362 = v362;
                                                                                    v493 = v362;
                                                                                    goto LABEL_409;
                                                                                  }

LABEL_406:
                                                                                  v493 = 0;
LABEL_409:
                                                                                  v364 = [dictionaryCopy objectForKeyedSubscript:@"mediaType"];
                                                                                  if (v364 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v611)
                                                                                      {
                                                                                        v371 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v372 = *MEMORY[0x1E698F240];
                                                                                        v688 = *MEMORY[0x1E696A578];
                                                                                        v486 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mediaType"];
                                                                                        v689 = v486;
                                                                                        v489 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v689 forKeys:&v688 count:1];
                                                                                        v487 = 0;
                                                                                        v47 = 0;
                                                                                        v611->super.super.isa = [v371 initWithDomain:v372 code:2 userInfo:?];
                                                                                        goto LABEL_543;
                                                                                      }

                                                                                      v370 = 0;
                                                                                      v47 = 0;
                                                                                      goto LABEL_544;
                                                                                    }

                                                                                    v487 = v364;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v487 = 0;
                                                                                  }

                                                                                  v489 = [v598 objectForKeyedSubscript:@"sourceActivity"];
                                                                                  if (v489 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v611)
                                                                                      {
                                                                                        v383 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v384 = *MEMORY[0x1E698F240];
                                                                                        v686 = *MEMORY[0x1E696A578];
                                                                                        v484 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sourceActivity"];
                                                                                        v687 = v484;
                                                                                        v490 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v687 forKeys:&v686 count:1];
                                                                                        v486 = 0;
                                                                                        v47 = 0;
                                                                                        v611->super.super.isa = [v383 initWithDomain:v384 code:2 userInfo:?];
                                                                                        goto LABEL_542;
                                                                                      }

                                                                                      v486 = 0;
                                                                                      v47 = 0;
                                                                                      goto LABEL_543;
                                                                                    }

                                                                                    v486 = v489;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v486 = 0;
                                                                                  }

                                                                                  v490 = [v598 objectForKeyedSubscript:@"budActivity"];
                                                                                  if (v490 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v611)
                                                                                      {
                                                                                        v385 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v386 = *MEMORY[0x1E698F240];
                                                                                        v684 = *MEMORY[0x1E696A578];
                                                                                        v482 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"budActivity"];
                                                                                        v685 = v482;
                                                                                        v488 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v685 forKeys:&v684 count:1];
                                                                                        v484 = 0;
                                                                                        v47 = 0;
                                                                                        v611->super.super.isa = [v385 initWithDomain:v386 code:2 userInfo:?];
                                                                                        goto LABEL_541;
                                                                                      }

                                                                                      v484 = 0;
                                                                                      v47 = 0;
                                                                                      goto LABEL_542;
                                                                                    }

                                                                                    v484 = v490;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v484 = 0;
                                                                                  }

                                                                                  v488 = [v598 objectForKeyedSubscript:@"location"];
                                                                                  if (v488 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v611)
                                                                                      {
                                                                                        v387 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v388 = *MEMORY[0x1E698F240];
                                                                                        v682 = *MEMORY[0x1E696A578];
                                                                                        v480 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"location"];
                                                                                        v683 = v480;
                                                                                        v485 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v683 forKeys:&v682 count:1];
                                                                                        v482 = 0;
                                                                                        v47 = 0;
                                                                                        v611->super.super.isa = [v387 initWithDomain:v388 code:2 userInfo:?];
                                                                                        goto LABEL_540;
                                                                                      }

                                                                                      v482 = 0;
                                                                                      v47 = 0;
                                                                                      goto LABEL_541;
                                                                                    }

                                                                                    v482 = v488;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v482 = 0;
                                                                                  }

                                                                                  v485 = [v598 objectForKeyedSubscript:@"locationType"];
                                                                                  if (v485 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v611)
                                                                                      {
                                                                                        v394 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v395 = *MEMORY[0x1E698F240];
                                                                                        v680 = *MEMORY[0x1E696A578];
                                                                                        v479 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"locationType"];
                                                                                        v681 = v479;
                                                                                        v483 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v681 forKeys:&v680 count:1];
                                                                                        v480 = 0;
                                                                                        v47 = 0;
                                                                                        v611->super.super.isa = [v394 initWithDomain:v395 code:2 userInfo:?];
                                                                                        goto LABEL_539;
                                                                                      }

                                                                                      v480 = 0;
                                                                                      v47 = 0;
                                                                                      goto LABEL_540;
                                                                                    }

                                                                                    v480 = v485;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v480 = 0;
                                                                                  }

                                                                                  v483 = [v598 objectForKeyedSubscript:@"focusMode"];
                                                                                  if (v483 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v611)
                                                                                      {
                                                                                        v398 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v399 = *MEMORY[0x1E698F240];
                                                                                        v678 = *MEMORY[0x1E696A578];
                                                                                        v478 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"focusMode"];
                                                                                        v679 = v478;
                                                                                        v481 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v679 forKeys:&v678 count:1];
                                                                                        v479 = 0;
                                                                                        v47 = 0;
                                                                                        v611->super.super.isa = [v398 initWithDomain:v399 code:2 userInfo:?];
                                                                                        goto LABEL_538;
                                                                                      }

                                                                                      v479 = 0;
                                                                                      v47 = 0;
                                                                                      goto LABEL_539;
                                                                                    }

                                                                                    v479 = v483;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v479 = 0;
                                                                                  }

                                                                                  v481 = [v598 objectForKeyedSubscript:@"streamingAppBundleId"];
                                                                                  if (v481 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v611)
                                                                                      {
                                                                                        v400 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v401 = *MEMORY[0x1E698F240];
                                                                                        v676 = *MEMORY[0x1E696A578];
                                                                                        v367 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"streamingAppBundleId"];
                                                                                        v677 = v367;
                                                                                        v373 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v677 forKeys:&v676 count:1];
                                                                                        v478 = 0;
                                                                                        v47 = 0;
                                                                                        v611->super.super.isa = [v400 initWithDomain:v401 code:2 userInfo:?];
                                                                                        goto LABEL_536;
                                                                                      }

                                                                                      v478 = 0;
                                                                                      v47 = 0;
                                                                                      goto LABEL_538;
                                                                                    }

                                                                                    v478 = v481;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v478 = 0;
                                                                                  }

                                                                                  v365 = [v598 objectForKeyedSubscript:@"noiseType4B"];
                                                                                  null2 = [MEMORY[0x1E695DFB0] null];
                                                                                  v367 = v365;
                                                                                  LODWORD(v365) = [v365 isEqual:null2];

                                                                                  if (v365)
                                                                                  {

                                                                                    v367 = 0;
                                                                                  }

                                                                                  else if (v367)
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v611)
                                                                                      {
                                                                                        v402 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v403 = *MEMORY[0x1E698F240];
                                                                                        v674 = *MEMORY[0x1E696A578];
                                                                                        v373 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"noiseType4B"];
                                                                                        v675 = v373;
                                                                                        v492 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v675 forKeys:&v674 count:1];
                                                                                        v404 = [v402 initWithDomain:v403 code:2 userInfo:?];
                                                                                        v47 = 0;
                                                                                        v611->super.super.isa = v404;
                                                                                        goto LABEL_535;
                                                                                      }

                                                                                      v47 = 0;
                                                                                      goto LABEL_537;
                                                                                    }
                                                                                  }

                                                                                  v373 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v367, "count")}];
                                                                                  v637 = 0u;
                                                                                  v638 = 0u;
                                                                                  v639 = 0u;
                                                                                  v640 = 0u;
                                                                                  v367 = v367;
                                                                                  v374 = [v367 countByEnumeratingWithState:&v637 objects:v673 count:16];
                                                                                  if (!v374)
                                                                                  {
                                                                                    goto LABEL_457;
                                                                                  }

                                                                                  v375 = v374;
                                                                                  v491 = *v638;
LABEL_450:
                                                                                  v376 = 0;
                                                                                  while (1)
                                                                                  {
                                                                                    if (*v638 != v491)
                                                                                    {
                                                                                      objc_enumerationMutation(v367);
                                                                                    }

                                                                                    v377 = *(*(&v637 + 1) + 8 * v376);
                                                                                    objc_opt_class();
                                                                                    if (objc_opt_isKindOfClass())
                                                                                    {
                                                                                      break;
                                                                                    }

                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      if (v611)
                                                                                      {
                                                                                        v396 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v397 = *MEMORY[0x1E698F240];
                                                                                        v669 = *MEMORY[0x1E696A578];
                                                                                        v477 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"noiseType4B"];
                                                                                        v670 = v477;
                                                                                        v391 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v670 forKeys:&v669 count:1];
                                                                                        v392 = v396;
                                                                                        v393 = v397;
                                                                                        goto LABEL_523;
                                                                                      }

                                                                                      goto LABEL_528;
                                                                                    }

                                                                                    v378 = v377;
                                                                                    [v373 addObject:v378];

                                                                                    if (v375 == ++v376)
                                                                                    {
                                                                                      v375 = [v367 countByEnumeratingWithState:&v637 objects:v673 count:16];
                                                                                      if (v375)
                                                                                      {
                                                                                        goto LABEL_450;
                                                                                      }

LABEL_457:

                                                                                      v477 = [v598 objectForKeyedSubscript:@"instdBA"];
                                                                                      if (v477 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                      {
                                                                                        objc_opt_class();
                                                                                        if (objc_opt_isKindOfClass())
                                                                                        {
                                                                                          v492 = v477;
                                                                                          goto LABEL_460;
                                                                                        }

                                                                                        if (v611)
                                                                                        {
                                                                                          v406 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                          v407 = *MEMORY[0x1E698F240];
                                                                                          v667 = *MEMORY[0x1E696A578];
                                                                                          v476 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"instdBA"];
                                                                                          v668 = v476;
                                                                                          v475 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v668 forKeys:&v667 count:1];
                                                                                          v492 = 0;
                                                                                          v47 = 0;
                                                                                          v611->super.super.isa = [v406 initWithDomain:v407 code:2 userInfo:?];
                                                                                          goto LABEL_504;
                                                                                        }

                                                                                        v492 = 0;
                                                                                        v47 = 0;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v492 = 0;
LABEL_460:
                                                                                        v475 = [v598 objectForKeyedSubscript:@"instdBC"];
                                                                                        if (v475 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                        {
                                                                                          objc_opt_class();
                                                                                          if (objc_opt_isKindOfClass())
                                                                                          {
                                                                                            v476 = v475;
                                                                                            goto LABEL_463;
                                                                                          }

                                                                                          if (v611)
                                                                                          {
                                                                                            v408 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                            v409 = *MEMORY[0x1E698F240];
                                                                                            v665 = *MEMORY[0x1E696A578];
                                                                                            v471 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"instdBC"];
                                                                                            v666 = v471;
                                                                                            v474 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v666 forKeys:&v665 count:1];
                                                                                            v476 = 0;
                                                                                            v47 = 0;
                                                                                            v611->super.super.isa = [v408 initWithDomain:v409 code:2 userInfo:?];
                                                                                            goto LABEL_503;
                                                                                          }

                                                                                          v476 = 0;
                                                                                          v47 = 0;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v476 = 0;
LABEL_463:
                                                                                          v474 = [v598 objectForKeyedSubscript:@"nonCAListeningMode"];
                                                                                          if (v474 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                          {
                                                                                            objc_opt_class();
                                                                                            if (objc_opt_isKindOfClass())
                                                                                            {
                                                                                              v471 = v474;
                                                                                              goto LABEL_466;
                                                                                            }

                                                                                            if (v611)
                                                                                            {
                                                                                              v410 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                              v411 = *MEMORY[0x1E698F240];
                                                                                              v663 = *MEMORY[0x1E696A578];
                                                                                              v470 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nonCAListeningMode"];
                                                                                              v664 = v470;
                                                                                              v473 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v664 forKeys:&v663 count:1];
                                                                                              v471 = 0;
                                                                                              v47 = 0;
                                                                                              v611->super.super.isa = [v410 initWithDomain:v411 code:2 userInfo:?];
                                                                                              goto LABEL_502;
                                                                                            }

                                                                                            v471 = 0;
                                                                                            v47 = 0;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v471 = 0;
LABEL_466:
                                                                                            v473 = [v598 objectForKeyedSubscript:@"fit"];
                                                                                            if (v473 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                            {
                                                                                              objc_opt_class();
                                                                                              if (objc_opt_isKindOfClass())
                                                                                              {
                                                                                                v470 = v473;
                                                                                                goto LABEL_469;
                                                                                              }

                                                                                              if (v611)
                                                                                              {
                                                                                                v412 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                v413 = *MEMORY[0x1E698F240];
                                                                                                v661 = *MEMORY[0x1E696A578];
                                                                                                v468 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"fit"];
                                                                                                v662 = v468;
                                                                                                v472 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v662 forKeys:&v661 count:1];
                                                                                                v470 = 0;
                                                                                                v47 = 0;
                                                                                                v611->super.super.isa = [v412 initWithDomain:v413 code:2 userInfo:?];
                                                                                                goto LABEL_501;
                                                                                              }

                                                                                              v470 = 0;
                                                                                              v47 = 0;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v470 = 0;
LABEL_469:
                                                                                              v472 = [v598 objectForKeyedSubscript:@"fixedAutoAncGain"];
                                                                                              if (v472 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                              {
                                                                                                objc_opt_class();
                                                                                                if (objc_opt_isKindOfClass())
                                                                                                {
                                                                                                  v468 = v472;
                                                                                                  goto LABEL_472;
                                                                                                }

                                                                                                if (v611)
                                                                                                {
                                                                                                  v414 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                  v415 = *MEMORY[0x1E698F240];
                                                                                                  v659 = *MEMORY[0x1E696A578];
                                                                                                  v466 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"fixedAutoAncGain"];
                                                                                                  v660 = v466;
                                                                                                  v469 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v660 forKeys:&v659 count:1];
                                                                                                  v468 = 0;
                                                                                                  v47 = 0;
                                                                                                  v611->super.super.isa = [v414 initWithDomain:v415 code:2 userInfo:?];
                                                                                                  goto LABEL_500;
                                                                                                }

                                                                                                v468 = 0;
                                                                                                v47 = 0;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v468 = 0;
LABEL_472:
                                                                                                v469 = [v598 objectForKeyedSubscript:@"adjustedAutoAncGain"];
                                                                                                if (v469 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                {
                                                                                                  objc_opt_class();
                                                                                                  if (objc_opt_isKindOfClass())
                                                                                                  {
                                                                                                    v466 = v469;
                                                                                                    goto LABEL_475;
                                                                                                  }

                                                                                                  if (v611)
                                                                                                  {
                                                                                                    v416 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                    v417 = *MEMORY[0x1E698F240];
                                                                                                    v657 = *MEMORY[0x1E696A578];
                                                                                                    v464 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"adjustedAutoAncGain"];
                                                                                                    v658 = v464;
                                                                                                    v467 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v658 forKeys:&v657 count:1];
                                                                                                    v466 = 0;
                                                                                                    v47 = 0;
                                                                                                    v611->super.super.isa = [v416 initWithDomain:v417 code:2 userInfo:?];
                                                                                                    goto LABEL_499;
                                                                                                  }

                                                                                                  v466 = 0;
                                                                                                  v47 = 0;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  v466 = 0;
LABEL_475:
                                                                                                  v467 = [v598 objectForKeyedSubscript:@"timestamp"];
                                                                                                  if (v467 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                  {
                                                                                                    objc_opt_class();
                                                                                                    if (objc_opt_isKindOfClass())
                                                                                                    {
                                                                                                      v464 = v467;
                                                                                                      goto LABEL_478;
                                                                                                    }

                                                                                                    if (v611)
                                                                                                    {
                                                                                                      v418 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                      v419 = *MEMORY[0x1E698F240];
                                                                                                      v655 = *MEMORY[0x1E696A578];
                                                                                                      v463 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timestamp"];
                                                                                                      v656 = v463;
                                                                                                      v465 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v656 forKeys:&v655 count:1];
                                                                                                      v464 = 0;
                                                                                                      v47 = 0;
                                                                                                      v611->super.super.isa = [v418 initWithDomain:v419 code:2 userInfo:?];
                                                                                                      goto LABEL_498;
                                                                                                    }

                                                                                                    v464 = 0;
                                                                                                    v47 = 0;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v464 = 0;
LABEL_478:
                                                                                                    v465 = [v598 objectForKeyedSubscript:@"DRCenablementBit"];
                                                                                                    if (v465 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v463 = v465;
                                                                                                        goto LABEL_481;
                                                                                                      }

                                                                                                      if (v611)
                                                                                                      {
                                                                                                        v420 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                        v421 = *MEMORY[0x1E698F240];
                                                                                                        v653 = *MEMORY[0x1E696A578];
                                                                                                        v461 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"DRCenablementBit"];
                                                                                                        v654 = v461;
                                                                                                        v379 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v654 forKeys:&v653 count:1];
                                                                                                        v463 = 0;
                                                                                                        v47 = 0;
                                                                                                        v611->super.super.isa = [v420 initWithDomain:v421 code:2 userInfo:v379];
                                                                                                        goto LABEL_497;
                                                                                                      }

                                                                                                      v463 = 0;
                                                                                                      v47 = 0;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      v463 = 0;
LABEL_481:
                                                                                                      v379 = [v598 objectForKeyedSubscript:@"DRCwindFlag"];
                                                                                                      if (v379 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                      {
                                                                                                        objc_opt_class();
                                                                                                        if (objc_opt_isKindOfClass())
                                                                                                        {
                                                                                                          v461 = v379;
                                                                                                          goto LABEL_484;
                                                                                                        }

                                                                                                        if (v611)
                                                                                                        {
                                                                                                          v422 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                          v423 = *MEMORY[0x1E698F240];
                                                                                                          v651 = *MEMORY[0x1E696A578];
                                                                                                          v459 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"DRCwindFlag"];
                                                                                                          v652 = v459;
                                                                                                          v462 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v652 forKeys:&v651 count:1];
                                                                                                          v461 = 0;
                                                                                                          v47 = 0;
                                                                                                          v611->super.super.isa = [v422 initWithDomain:v423 code:2 userInfo:?];
                                                                                                          goto LABEL_496;
                                                                                                        }

                                                                                                        v461 = 0;
                                                                                                        v47 = 0;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        v461 = 0;
LABEL_484:
                                                                                                        v462 = [v598 objectForKeyedSubscript:@"DRCappSelfVoiceFlag"];
                                                                                                        if (v462 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                        {
                                                                                                          objc_opt_class();
                                                                                                          if (objc_opt_isKindOfClass())
                                                                                                          {
                                                                                                            v459 = v462;
                                                                                                            goto LABEL_487;
                                                                                                          }

                                                                                                          if (v611)
                                                                                                          {
                                                                                                            v424 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v425 = *MEMORY[0x1E698F240];
                                                                                                            v649 = *MEMORY[0x1E696A578];
                                                                                                            v380 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"DRCappSelfVoiceFlag"];
                                                                                                            v650 = v380;
                                                                                                            v460 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v650 forKeys:&v649 count:1];
                                                                                                            v459 = 0;
                                                                                                            v47 = 0;
                                                                                                            v611->super.super.isa = [v424 initWithDomain:v425 code:2 userInfo:?];
                                                                                                            goto LABEL_495;
                                                                                                          }

                                                                                                          v459 = 0;
                                                                                                          v47 = 0;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v459 = 0;
LABEL_487:
                                                                                                          v460 = [v598 objectForKeyedSubscript:@"drumDRC"];
                                                                                                          if (v460 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                          {
                                                                                                            objc_opt_class();
                                                                                                            if (objc_opt_isKindOfClass())
                                                                                                            {
                                                                                                              v380 = v460;
                                                                                                              goto LABEL_490;
                                                                                                            }

                                                                                                            if (v611)
                                                                                                            {
                                                                                                              v426 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                              v427 = *MEMORY[0x1E698F240];
                                                                                                              v647 = *MEMORY[0x1E696A578];
                                                                                                              v382 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"drumDRC"];
                                                                                                              v648 = v382;
                                                                                                              v381 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v648 forKeys:&v647 count:1];
                                                                                                              v428 = [v426 initWithDomain:v427 code:2 userInfo:?];
                                                                                                              v380 = 0;
                                                                                                              v47 = 0;
                                                                                                              v611->super.super.isa = v428;
                                                                                                              goto LABEL_494;
                                                                                                            }

                                                                                                            v380 = 0;
                                                                                                            v47 = 0;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            v380 = 0;
LABEL_490:
                                                                                                            v381 = [v598 objectForKeyedSubscript:@"routedDRCGain"];
                                                                                                            if (!v381 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                                            {
                                                                                                              v382 = 0;
                                                                                                              goto LABEL_493;
                                                                                                            }

                                                                                                            objc_opt_class();
                                                                                                            if (objc_opt_isKindOfClass())
                                                                                                            {
                                                                                                              v382 = v381;
LABEL_493:
                                                                                                              v47 = [BMDeviceAdaptiveVolume initWithControllerVersion:selfCopy6 refMicdBA:"initWithControllerVersion:refMicdBA:refMicdBC:drumdBA:drumdBK:drumdBAPredicted:downlinkdBA:currentVolumePrct:lastUserVolChangeType:headphoneMode:streamType:windSpeechAggressorFlag:volumeChangeFlag:speechPresenceProbability:personalizationParamSnr:personalizationParamMistakes:lastEMediadBA:lastVolMediaPrct:lastETelephonydBA:lastVolTelephonyPrct:lastESiridBA:lastVolSiriPrct:smoothEae:desiredDeltaE:predVolMediaPrct:predVolTelephonyPrct:predVolSiriPrct:onStartPredictionFlag:guardrailsAvoidFlag:minMaxCutFlag:manualVolumeChangeFlag:bigWindowSize:smallWindowSize:activeAppName:activeAirpodsSerialNumber:anchorVol:anchorEnv:personalizationCoeff:unsignedPredVolMediaPrct:unsignedPredVolTelephonyPrct:unsignedPredVolSiriPrct:singleBudFlag:cdEngagementFlag:activeStreamFlag:pvFeatureEnableFlag:envSpectralData32B:windStrength:windProb:mediaType:sourceActivity:budActivity:location:locationType:focusMode:streamingAppBundleId:noiseType4B:instdBA:instdBC:nonCAListeningMode:fit:fixedAutoAncGain:adjustedAutoAncGain:timestamp:DRCenablementBit:DRCwindFlag:DRCappSelfVoiceFlag:drumDRC:routedDRCGain:" refMicdBC:v632 drumdBA:v539 drumdBK:v635 drumdBAPredicted:v629 downlinkdBA:v630 currentVolumePrct:v625 lastUserVolChangeType:v622 headphoneMode:v608 streamType:v605 windSpeechAggressorFlag:v602 volumeChangeFlag:v599 speechPresenceProbability:v585 personalizationParamSnr:v583 personalizationParamMistakes:v581 lastEMediadBA:v579 lastVolMediaPrct:v577 lastETelephonydBA:v572 lastVolTelephonyPrct:v574 lastESiridBA:v569 lastVolSiriPrct:v566 smoothEae:v563 desiredDeltaE:v560 predVolMediaPrct:v557 predVolTelephonyPrct:v554 predVolSiriPrct:v551 onStartPredictionFlag:v547 guardrailsAvoidFlag:v544 minMaxCutFlag:v541 manualVolumeChangeFlag:v537 bigWindowSize:v536 smallWindowSize:v534 activeAppName:v531 activeAirpodsSerialNumber:v525 anchorVol:v523 anchorEnv:v522 personalizationCoeff:v520 unsignedPredVolMediaPrct:v518 unsignedPredVolTelephonyPrct:v511 unsignedPredVolSiriPrct:v509 singleBudFlag:v506 cdEngagementFlag:v504 activeStreamFlag:v502 pvFeatureEnableFlag:v500 envSpectralData32B:v495 windStrength:v497 windProb:v515 mediaType:v494 sourceActivity:v493 budActivity:v487 location:v486 locationType:v484 focusMode:v482 streamingAppBundleId:v480 noiseType4B:v479 instdBA:v478 instdBC:v373 nonCAListeningMode:v492 fit:v476 fixedAutoAncGain:v471 adjustedAutoAncGain:v470 timestamp:v468 DRCenablementBit:? DRCwindFlag:? DRCappSelfVoiceFlag:? drumDRC:? routedDRCGain:?];
                                                                                                              selfCopy6 = v47;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              if (v611)
                                                                                                              {
                                                                                                                v429 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                v458 = *MEMORY[0x1E698F240];
                                                                                                                v645 = *MEMORY[0x1E696A578];
                                                                                                                v430 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"routedDRCGain"];
                                                                                                                v646 = v430;
                                                                                                                v431 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v646 forKeys:&v645 count:1];
                                                                                                                v611->super.super.isa = [v429 initWithDomain:v458 code:2 userInfo:v431];
                                                                                                              }

                                                                                                              v382 = 0;
                                                                                                              v47 = 0;
                                                                                                            }

LABEL_494:
                                                                                                          }

LABEL_495:
                                                                                                        }

LABEL_496:
                                                                                                      }

LABEL_497:
                                                                                                    }

LABEL_498:
                                                                                                  }

LABEL_499:
                                                                                                }

LABEL_500:
                                                                                              }

LABEL_501:
                                                                                            }

LABEL_502:
                                                                                          }

LABEL_503:
                                                                                        }

LABEL_504:

LABEL_524:
                                                                                      }

LABEL_535:
LABEL_536:

LABEL_537:
LABEL_538:

LABEL_539:
LABEL_540:

LABEL_541:
LABEL_542:

LABEL_543:
                                                                                      v370 = v487;
LABEL_544:

LABEL_545:
                                                                                      v9 = v540;
                                                                                      v7 = v549;
                                                                                      dictionaryCopy = v598;
LABEL_546:

                                                                                      self = selfCopy6;
                                                                                      v8 = v632;
                                                                                      v65 = v628;
                                                                                      v199 = v572;
                                                                                      v176 = v495;
LABEL_547:

                                                                                      v10 = v539;
LABEL_548:

                                                                                      v353 = v494;
LABEL_549:

LABEL_551:
LABEL_552:

LABEL_553:
LABEL_554:
                                                                                      v165 = v508;

LABEL_555:
LABEL_556:

LABEL_557:
LABEL_558:

LABEL_559:
LABEL_560:
                                                                                      v296 = v514;
LABEL_561:

                                                                                      v62 = v629;
                                                                                      goto LABEL_562;
                                                                                    }
                                                                                  }

                                                                                  if (v611)
                                                                                  {
                                                                                    v389 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                    v390 = *MEMORY[0x1E698F240];
                                                                                    v671 = *MEMORY[0x1E696A578];
                                                                                    v477 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"noiseType4B"];
                                                                                    v672 = v477;
                                                                                    v391 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v672 forKeys:&v671 count:1];
                                                                                    v392 = v389;
                                                                                    v393 = v390;
LABEL_523:
                                                                                    v476 = v391;
                                                                                    v47 = 0;
                                                                                    v611->super.super.isa = [v392 initWithDomain:v393 code:2 userInfo:?];
                                                                                    v492 = v367;
                                                                                    goto LABEL_524;
                                                                                  }

LABEL_528:
                                                                                  v47 = 0;

                                                                                  goto LABEL_536;
                                                                                }

LABEL_401:
                                                                                v494 = 0;
                                                                                goto LABEL_402;
                                                                              }

                                                                              if (v611)
                                                                              {
                                                                                v354 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v355 = *MEMORY[0x1E698F240];
                                                                                v701 = *MEMORY[0x1E696A578];
                                                                                v496 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"pvFeatureEnableFlag"];
                                                                                v702 = v496;
                                                                                v517 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v702 forKeys:&v701 count:1];
                                                                                v497 = 0;
                                                                                v47 = 0;
                                                                                v611->super.super.isa = [v354 initWithDomain:v355 code:2 userInfo:?];
                                                                                v10 = v539;
                                                                                v65 = v628;
                                                                                v199 = v572;

                                                                                goto LABEL_551;
                                                                              }

                                                                              v497 = 0;
                                                                              v47 = 0;
                                                                              v10 = v539;
LABEL_398:
                                                                              v65 = v628;
                                                                              v199 = v572;
                                                                              goto LABEL_552;
                                                                            }

                                                                            v340 = v10;
                                                                            v341 = v8;
                                                                            selfCopy8 = self;
                                                                            if (v611)
                                                                            {
                                                                              v351 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v530 = *MEMORY[0x1E698F240];
                                                                              v703 = *MEMORY[0x1E696A578];
                                                                              v497 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"activeStreamFlag"];
                                                                              v704 = v497;
                                                                              v498 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v704 forKeys:&v703 count:1];
                                                                              v352 = [v351 initWithDomain:v530 code:2 userInfo:?];
                                                                              v176 = 0;
                                                                              v47 = 0;
                                                                              v611->super.super.isa = v352;
                                                                              v8 = v341;
                                                                              v10 = v340;
                                                                              goto LABEL_398;
                                                                            }

                                                                            v176 = 0;
                                                                            v47 = 0;
LABEL_394:
                                                                            self = selfCopy8;
                                                                            v8 = v341;
                                                                            v10 = v340;
                                                                            v65 = v628;
                                                                            v199 = v572;
                                                                            goto LABEL_553;
                                                                          }

                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v500 = v175;
                                                                            goto LABEL_195;
                                                                          }

                                                                          v340 = v10;
                                                                          v341 = v8;
                                                                          selfCopy8 = self;
                                                                          if (v611)
                                                                          {
                                                                            v529 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v516 = *MEMORY[0x1E698F240];
                                                                            v705 = *MEMORY[0x1E696A578];
                                                                            v176 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cdEngagementFlag"];
                                                                            v706 = v176;
                                                                            v499 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v706 forKeys:&v705 count:1];
                                                                            v500 = 0;
                                                                            v47 = 0;
                                                                            v611->super.super.isa = [v529 initWithDomain:v516 code:2 userInfo:?];
                                                                            goto LABEL_394;
                                                                          }

                                                                          v500 = 0;
                                                                          v47 = 0;
LABEL_392:
                                                                          self = selfCopy8;
                                                                          v8 = v341;
                                                                          v10 = v340;
                                                                          v65 = v628;
                                                                          v199 = v572;
                                                                          goto LABEL_554;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v508 = v165;
                                                                          v511 = v165;
                                                                          goto LABEL_180;
                                                                        }

                                                                        if (v611)
                                                                        {
                                                                          v303 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v304 = *MEMORY[0x1E698F240];
                                                                          v715 = *MEMORY[0x1E696A578];
                                                                          v594 = dictionaryCopy;
                                                                          v305 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                          v454 = objc_opt_class();
                                                                          v306 = v305;
                                                                          v10 = v539;
                                                                          dictionaryCopy = v594;
                                                                          v509 = [v306 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v454, @"personalizationCoeff"];
                                                                          v716 = v509;
                                                                          v307 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v716 forKeys:&v715 count:1];
                                                                          v308 = v303;
                                                                          v8 = v632;
                                                                          v510 = v307;
                                                                          v511 = 0;
                                                                          v47 = 0;
                                                                          v611->super.super.isa = [v308 initWithDomain:v304 code:2 userInfo:?];
                                                                          v65 = v628;
                                                                          v199 = v572;
                                                                          goto LABEL_558;
                                                                        }

                                                                        v511 = 0;
                                                                        v47 = 0;
LABEL_375:
                                                                        v65 = v628;
                                                                        v199 = v572;
                                                                        goto LABEL_559;
                                                                      }

                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v520 = v162;
                                                                        goto LABEL_174;
                                                                      }

                                                                      v47 = v611;
                                                                      if (v611)
                                                                      {
                                                                        v292 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v293 = *MEMORY[0x1E698F240];
                                                                        v719 = *MEMORY[0x1E696A578];
                                                                        v592 = dictionaryCopy;
                                                                        v294 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                        v452 = objc_opt_class();
                                                                        v295 = v294;
                                                                        v10 = v539;
                                                                        dictionaryCopy = v592;
                                                                        v518 = [v295 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v452, @"anchorVol"];
                                                                        v720 = v518;
                                                                        v296 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v720 forKeys:&v719 count:1];
                                                                        v297 = v292;
                                                                        v8 = v632;
                                                                        v520 = 0;
                                                                        v47 = 0;
                                                                        v611->super.super.isa = [v297 initWithDomain:v293 code:2 userInfo:v296];
                                                                        v65 = v628;
                                                                        v199 = v572;
                                                                        goto LABEL_561;
                                                                      }

                                                                      v520 = 0;
                                                                      v65 = v628;
                                                                      v199 = v572;
LABEL_562:
                                                                      v291 = v519;
                                                                      goto LABEL_563;
                                                                    }

                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v523 = v158;
                                                                      goto LABEL_168;
                                                                    }

                                                                    if (v611)
                                                                    {
                                                                      v284 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v285 = *MEMORY[0x1E698F240];
                                                                      v723 = *MEMORY[0x1E696A578];
                                                                      v522 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"activeAppName"];
                                                                      v724 = v522;
                                                                      v286 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v724 forKeys:&v723 count:1];
                                                                      v523 = 0;
                                                                      v47 = 0;
                                                                      v611->super.super.isa = [v284 initWithDomain:v285 code:2 userInfo:v286];
                                                                      v287 = v286;
                                                                      v10 = v539;
                                                                      v65 = v628;
                                                                      v62 = v629;
                                                                      v199 = v572;
LABEL_565:

                                                                      goto LABEL_566;
                                                                    }

                                                                    v523 = 0;
                                                                    v47 = 0;
                                                                    v10 = v129;
                                                                    v65 = v628;
                                                                    v62 = v629;
LABEL_335:
                                                                    v199 = v572;
LABEL_566:

                                                                    goto LABEL_567;
                                                                  }

                                                                  v10 = v129;
                                                                  if (v611)
                                                                  {
                                                                    v278 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v279 = *MEMORY[0x1E698F240];
                                                                    v725 = *MEMORY[0x1E696A578];
                                                                    v591 = dictionaryCopy;
                                                                    v280 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                    v451 = objc_opt_class();
                                                                    v281 = v280;
                                                                    v10 = v129;
                                                                    dictionaryCopy = v591;
                                                                    v62 = v629;
                                                                    v523 = [v281 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v451, @"smallWindowSize"];
                                                                    v726 = v523;
                                                                    v282 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v726 forKeys:&v725 count:1];
                                                                    v283 = v278;
                                                                    v8 = v632;
                                                                    v524 = v282;
                                                                    v525 = 0;
                                                                    v47 = 0;
                                                                    v611->super.super.isa = [v283 initWithDomain:v279 code:2 userInfo:?];
                                                                    v65 = v628;
                                                                    goto LABEL_335;
                                                                  }

                                                                  v525 = 0;
                                                                  v47 = 0;
                                                                  v65 = v628;
                                                                  v199 = v572;
                                                                  v62 = v629;
LABEL_567:

                                                                  goto LABEL_568;
                                                                }

                                                                if (v611)
                                                                {
                                                                  v272 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v273 = *MEMORY[0x1E698F240];
                                                                  v727 = *MEMORY[0x1E696A578];
                                                                  v590 = dictionaryCopy;
                                                                  v274 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v450 = objc_opt_class();
                                                                  v275 = v274;
                                                                  self = selfCopy4;
                                                                  v10 = v129;
                                                                  dictionaryCopy = v590;
                                                                  v62 = v629;
                                                                  v525 = [v275 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v450, @"bigWindowSize"];
                                                                  v728 = v525;
                                                                  v276 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v728 forKeys:&v727 count:1];
                                                                  v277 = v272;
                                                                  v8 = v632;
                                                                  v526 = v276;
                                                                  v531 = 0;
                                                                  v47 = 0;
                                                                  v611->super.super.isa = [v277 initWithDomain:v273 code:2 userInfo:?];
                                                                  v65 = v628;
                                                                  v199 = v572;
                                                                  goto LABEL_567;
                                                                }

                                                                v531 = 0;
                                                                v47 = 0;
                                                                v65 = v628;
                                                                v199 = v572;
                                                                self = selfCopy4;
                                                                v10 = v129;
                                                                v62 = v629;
LABEL_568:

                                                                goto LABEL_569;
                                                              }

                                                              if (v611)
                                                              {
                                                                v266 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v267 = *MEMORY[0x1E698F240];
                                                                v729 = *MEMORY[0x1E696A578];
                                                                v589 = dictionaryCopy;
                                                                v268 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                v449 = objc_opt_class();
                                                                v269 = v268;
                                                                self = selfCopy4;
                                                                v10 = v129;
                                                                dictionaryCopy = v589;
                                                                v62 = v629;
                                                                v531 = [v269 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v449, @"manualVolumeChangeFlag"];
                                                                v730 = v531;
                                                                v270 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v730 forKeys:&v729 count:1];
                                                                v271 = v266;
                                                                v8 = v632;
                                                                v532 = v270;
                                                                v534 = 0;
                                                                v47 = 0;
                                                                v611->super.super.isa = [v271 initWithDomain:v267 code:2 userInfo:?];
                                                                v65 = v628;
                                                                v199 = v572;
                                                                goto LABEL_568;
                                                              }

                                                              v534 = 0;
                                                              v47 = 0;
                                                              v65 = v628;
                                                              v199 = v572;
                                                              self = selfCopy4;
                                                              v10 = v129;
                                                              v62 = v629;
LABEL_569:

                                                              goto LABEL_570;
                                                            }

                                                            if (v611)
                                                            {
                                                              v260 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v261 = *MEMORY[0x1E698F240];
                                                              v731 = *MEMORY[0x1E696A578];
                                                              v588 = dictionaryCopy;
                                                              v262 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                              v448 = objc_opt_class();
                                                              v263 = v262;
                                                              self = selfCopy4;
                                                              v10 = v129;
                                                              dictionaryCopy = v588;
                                                              v62 = v629;
                                                              v534 = [v263 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v448, @"minMaxCutFlag"];
                                                              v732 = v534;
                                                              v264 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v732 forKeys:&v731 count:1];
                                                              v265 = v260;
                                                              v8 = v632;
                                                              v533 = v264;
                                                              v536 = 0;
                                                              v47 = 0;
                                                              v611->super.super.isa = [v265 initWithDomain:v261 code:2 userInfo:?];
                                                              v65 = v628;
                                                              v199 = v572;
                                                              goto LABEL_569;
                                                            }

                                                            v536 = 0;
                                                            v47 = 0;
                                                            v65 = v628;
                                                            v199 = v572;
                                                            self = selfCopy4;
                                                            v10 = v129;
                                                            v62 = v629;
LABEL_570:

                                                            goto LABEL_571;
                                                          }

                                                          if (v611)
                                                          {
                                                            v254 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v255 = *MEMORY[0x1E698F240];
                                                            v733 = *MEMORY[0x1E696A578];
                                                            v587 = dictionaryCopy;
                                                            v256 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                            v447 = objc_opt_class();
                                                            v257 = v256;
                                                            self = selfCopy4;
                                                            v10 = v129;
                                                            dictionaryCopy = v587;
                                                            v62 = v629;
                                                            v536 = [v257 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v447, @"guardrailsAvoidFlag"];
                                                            v734 = v536;
                                                            v258 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v734 forKeys:&v733 count:1];
                                                            v259 = v254;
                                                            v8 = v632;
                                                            v535 = v258;
                                                            v537 = 0;
                                                            v47 = 0;
                                                            v611->super.super.isa = [v259 initWithDomain:v255 code:2 userInfo:?];
                                                            v65 = v628;
                                                            v199 = v572;
                                                            goto LABEL_570;
                                                          }

                                                          v537 = 0;
                                                          v47 = 0;
                                                          v65 = v628;
                                                          v199 = v572;
                                                          self = selfCopy4;
                                                          v10 = v129;
                                                          v62 = v629;
LABEL_571:

                                                          goto LABEL_572;
                                                        }

                                                        if (v611)
                                                        {
                                                          v250 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v542 = *MEMORY[0x1E698F240];
                                                          v735 = *MEMORY[0x1E696A578];
                                                          self = selfCopy4;
                                                          v10 = v129;
                                                          v62 = v629;
                                                          v537 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"onStartPredictionFlag"];
                                                          v736 = v537;
                                                          v251 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v736 forKeys:&v735 count:1];
                                                          v252 = v250;
                                                          v8 = v632;
                                                          v538 = v251;
                                                          v253 = [v252 initWithDomain:v542 code:2 userInfo:?];
                                                          v541 = 0;
                                                          v47 = 0;
                                                          v611->super.super.isa = v253;
                                                          v65 = v628;
                                                          v199 = v572;
                                                          goto LABEL_571;
                                                        }

                                                        v541 = 0;
                                                        v47 = 0;
                                                        v65 = v628;
                                                        v199 = v572;
                                                        self = selfCopy4;
                                                        v10 = v129;
                                                        v62 = v629;
LABEL_572:

                                                        goto LABEL_573;
                                                      }

                                                      if (v611)
                                                      {
                                                        v246 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v545 = *MEMORY[0x1E698F240];
                                                        v737 = *MEMORY[0x1E696A578];
                                                        self = selfCopy4;
                                                        v10 = v129;
                                                        v62 = v629;
                                                        v541 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"predVolSiriPrct"];
                                                        v738 = v541;
                                                        v247 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v738 forKeys:&v737 count:1];
                                                        v248 = v246;
                                                        v8 = v632;
                                                        v543 = v247;
                                                        v249 = [v248 initWithDomain:v545 code:2 userInfo:?];
                                                        v544 = 0;
                                                        v47 = 0;
                                                        v611->super.super.isa = v249;
                                                        v65 = v628;
                                                        v199 = v572;
                                                        goto LABEL_572;
                                                      }

                                                      v544 = 0;
                                                      v47 = 0;
                                                      v65 = v628;
                                                      v199 = v572;
                                                      self = selfCopy4;
                                                      v10 = v129;
                                                      v62 = v629;
LABEL_573:

                                                      goto LABEL_574;
                                                    }

                                                    if (v611)
                                                    {
                                                      v242 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v548 = *MEMORY[0x1E698F240];
                                                      v739 = *MEMORY[0x1E696A578];
                                                      self = selfCopy4;
                                                      v10 = v129;
                                                      v62 = v629;
                                                      v544 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"predVolTelephonyPrct"];
                                                      v740 = v544;
                                                      v243 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v740 forKeys:&v739 count:1];
                                                      v244 = v242;
                                                      v8 = v632;
                                                      v546 = v243;
                                                      v245 = [v244 initWithDomain:v548 code:2 userInfo:?];
                                                      v547 = 0;
                                                      v47 = 0;
                                                      v611->super.super.isa = v245;
                                                      v65 = v628;
                                                      v199 = v572;
                                                      goto LABEL_573;
                                                    }

                                                    v547 = 0;
                                                    v47 = 0;
                                                    v65 = v628;
                                                    v199 = v572;
                                                    self = selfCopy4;
                                                    v10 = v129;
                                                    v62 = v629;
LABEL_574:

                                                    goto LABEL_575;
                                                  }

                                                  if (v611)
                                                  {
                                                    v238 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v552 = *MEMORY[0x1E698F240];
                                                    v741 = *MEMORY[0x1E696A578];
                                                    self = selfCopy4;
                                                    v10 = v129;
                                                    v62 = v629;
                                                    v547 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"predVolMediaPrct"];
                                                    v742 = v547;
                                                    v239 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v742 forKeys:&v741 count:1];
                                                    v240 = v238;
                                                    v8 = v632;
                                                    v550 = v239;
                                                    v241 = [v240 initWithDomain:v552 code:2 userInfo:?];
                                                    v551 = 0;
                                                    v47 = 0;
                                                    v611->super.super.isa = v241;
                                                    v65 = v628;
                                                    v199 = v572;
                                                    goto LABEL_574;
                                                  }

                                                  v551 = 0;
                                                  v47 = 0;
                                                  v65 = v628;
                                                  v199 = v572;
                                                  self = selfCopy4;
                                                  v10 = v129;
                                                  v62 = v629;
LABEL_575:

                                                  goto LABEL_576;
                                                }

                                                if (v611)
                                                {
                                                  v234 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v555 = *MEMORY[0x1E698F240];
                                                  v743 = *MEMORY[0x1E696A578];
                                                  self = selfCopy4;
                                                  v10 = v129;
                                                  v62 = v629;
                                                  v551 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"desiredDeltaE"];
                                                  v744 = v551;
                                                  v235 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v744 forKeys:&v743 count:1];
                                                  v236 = v234;
                                                  v8 = v632;
                                                  v553 = v235;
                                                  v237 = [v236 initWithDomain:v555 code:2 userInfo:?];
                                                  v554 = 0;
                                                  v47 = 0;
                                                  v611->super.super.isa = v237;
                                                  v65 = v628;
                                                  v199 = v572;
                                                  goto LABEL_575;
                                                }

                                                v554 = 0;
                                                v47 = 0;
                                                v65 = v628;
                                                v199 = v572;
                                                self = selfCopy4;
                                                v10 = v129;
                                                v62 = v629;
LABEL_576:

                                                goto LABEL_577;
                                              }

                                              if (v611)
                                              {
                                                v230 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v558 = *MEMORY[0x1E698F240];
                                                v745 = *MEMORY[0x1E696A578];
                                                self = selfCopy4;
                                                v10 = v129;
                                                v62 = v629;
                                                v554 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"smoothEae"];
                                                v746 = v554;
                                                v231 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v746 forKeys:&v745 count:1];
                                                v232 = v230;
                                                v8 = v632;
                                                v556 = v231;
                                                v233 = [v232 initWithDomain:v558 code:2 userInfo:?];
                                                v557 = 0;
                                                v47 = 0;
                                                v611->super.super.isa = v233;
                                                v65 = v628;
                                                v199 = v572;
                                                goto LABEL_576;
                                              }

                                              v557 = 0;
                                              v47 = 0;
                                              v65 = v628;
                                              v199 = v572;
                                              self = selfCopy4;
                                              v10 = v129;
                                              v62 = v629;
LABEL_577:

                                              goto LABEL_578;
                                            }

                                            if (v611)
                                            {
                                              v226 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v561 = *MEMORY[0x1E698F240];
                                              v747 = *MEMORY[0x1E696A578];
                                              self = selfCopy4;
                                              v10 = v129;
                                              v62 = v629;
                                              v557 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"lastVolSiriPrct"];
                                              v748 = v557;
                                              v227 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v748 forKeys:&v747 count:1];
                                              v228 = v226;
                                              v8 = v632;
                                              v559 = v227;
                                              v229 = [v228 initWithDomain:v561 code:2 userInfo:?];
                                              v560 = 0;
                                              v47 = 0;
                                              v611->super.super.isa = v229;
                                              v65 = v628;
                                              v199 = v572;
                                              goto LABEL_577;
                                            }

                                            v560 = 0;
                                            v47 = 0;
                                            v65 = v628;
                                            v199 = v572;
                                            self = selfCopy4;
                                            v10 = v129;
                                            v62 = v629;
LABEL_578:

                                            goto LABEL_579;
                                          }

                                          if (v611)
                                          {
                                            v222 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v564 = *MEMORY[0x1E698F240];
                                            v749 = *MEMORY[0x1E696A578];
                                            self = selfCopy4;
                                            v10 = v129;
                                            v62 = v629;
                                            v560 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"lastESiridBA"];
                                            v750 = v560;
                                            v223 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v750 forKeys:&v749 count:1];
                                            v224 = v222;
                                            v8 = v632;
                                            v562 = v223;
                                            v225 = [v224 initWithDomain:v564 code:2 userInfo:?];
                                            v563 = 0;
                                            v47 = 0;
                                            v611->super.super.isa = v225;
                                            v65 = v628;
                                            v199 = v572;
                                            goto LABEL_578;
                                          }

                                          v563 = 0;
                                          v47 = 0;
                                          v65 = v628;
                                          v199 = v572;
                                          self = selfCopy4;
                                          v10 = v129;
                                          v62 = v629;
LABEL_579:

                                          goto LABEL_580;
                                        }

                                        if (v611)
                                        {
                                          v218 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v567 = *MEMORY[0x1E698F240];
                                          v751 = *MEMORY[0x1E696A578];
                                          v563 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"lastVolTelephonyPrct"];
                                          v752 = v563;
                                          v219 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v752 forKeys:&v751 count:1];
                                          v220 = v218;
                                          v8 = v632;
                                          v565 = v219;
                                          v221 = [v220 initWithDomain:v567 code:2 userInfo:?];
                                          v566 = 0;
                                          v47 = 0;
                                          v611->super.super.isa = v221;
                                          v65 = v628;
                                          v199 = v572;
                                          goto LABEL_579;
                                        }

                                        v566 = 0;
                                        v47 = 0;
LABEL_264:
                                        v65 = v628;
                                        v199 = v572;
LABEL_580:

                                        goto LABEL_581;
                                      }

                                      if (v611)
                                      {
                                        v214 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v570 = *MEMORY[0x1E698F240];
                                        v753 = *MEMORY[0x1E696A578];
                                        v566 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"lastETelephonydBA"];
                                        v754 = v566;
                                        v215 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v754 forKeys:&v753 count:1];
                                        v216 = v214;
                                        v8 = v632;
                                        v568 = v215;
                                        v217 = [v216 initWithDomain:v570 code:2 userInfo:?];
                                        v569 = 0;
                                        v47 = 0;
                                        v611->super.super.isa = v217;
                                        goto LABEL_264;
                                      }

                                      v569 = 0;
                                      v47 = 0;
LABEL_258:
                                      v65 = v628;
                                      v199 = v572;
LABEL_581:

                                      goto LABEL_582;
                                    }

                                    v62 = v629;
                                    if (v611)
                                    {
                                      v210 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v575 = *MEMORY[0x1E698F240];
                                      v755 = *MEMORY[0x1E696A578];
                                      v62 = v629;
                                      v569 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"lastVolMediaPrct"];
                                      v756 = v569;
                                      v211 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v756 forKeys:&v755 count:1];
                                      v212 = v210;
                                      v8 = v632;
                                      v571 = v211;
                                      v213 = [v212 initWithDomain:v575 code:2 userInfo:?];
                                      v574 = 0;
                                      v47 = 0;
                                      v611->super.super.isa = v213;
                                      goto LABEL_258;
                                    }

                                    v574 = 0;
                                    v47 = 0;
                                    v65 = v628;
                                    v199 = v572;
LABEL_582:

                                    goto LABEL_583;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v572 = v40;
                                    goto LABEL_52;
                                  }

                                  if (errorCopy2)
                                  {
                                    v202 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v203 = *MEMORY[0x1E698F240];
                                    v757 = *MEMORY[0x1E696A578];
                                    v204 = errorCopy2;
                                    v205 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v446 = objc_opt_class();
                                    v206 = v205;
                                    self = selfCopy2;
                                    v10 = v11;
                                    v62 = v629;
                                    v574 = [v206 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v446, @"lastEMediadBA"];
                                    v758 = v574;
                                    v207 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v758 forKeys:&v757 count:1];
                                    v208 = v202;
                                    v8 = v632;
                                    v573 = v207;
                                    v209 = [v208 initWithDomain:v203 code:2 userInfo:?];
                                    v199 = 0;
                                    v47 = 0;
                                    *v204 = v209;
                                    v65 = v628;
                                    goto LABEL_582;
                                  }

                                  v199 = 0;
                                  v47 = 0;
                                  v65 = v628;
                                  self = selfCopy2;
                                  v10 = v11;
                                  v62 = v629;
LABEL_583:

                                  error = v635;
                                  goto LABEL_584;
                                }

                                if (errorCopy2)
                                {
                                  v195 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v196 = *MEMORY[0x1E698F240];
                                  v759 = *MEMORY[0x1E696A578];
                                  v621 = errorCopy2;
                                  v197 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v445 = objc_opt_class();
                                  v198 = v197;
                                  self = selfCopy2;
                                  v10 = v11;
                                  v62 = v629;
                                  v199 = [v198 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v445, @"personalizationParamMistakes"];
                                  v760 = v199;
                                  v200 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v760 forKeys:&v759 count:1];
                                  v201 = v195;
                                  v8 = v632;
                                  v576 = v200;
                                  v577 = 0;
                                  v47 = 0;
                                  *v621 = [v201 initWithDomain:v196 code:2 userInfo:?];
                                  v65 = v628;
                                  goto LABEL_583;
                                }

                                v577 = 0;
                                v47 = 0;
                                v65 = v628;
                                self = selfCopy2;
                                v10 = v11;
                                error = v635;
                                v62 = v629;
LABEL_584:

                                goto LABEL_585;
                              }

                              if (errorCopy2)
                              {
                                v189 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v190 = *MEMORY[0x1E698F240];
                                v761 = *MEMORY[0x1E696A578];
                                v620 = errorCopy2;
                                v191 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v444 = objc_opt_class();
                                v192 = v191;
                                self = selfCopy2;
                                v10 = v11;
                                v62 = v629;
                                error = v635;
                                v577 = [v192 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v444, @"personalizationParamSnr"];
                                v762 = v577;
                                v193 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v762 forKeys:&v761 count:1];
                                v194 = v189;
                                v8 = v632;
                                v578 = v193;
                                v579 = 0;
                                v47 = 0;
                                *v620 = [v194 initWithDomain:v190 code:2 userInfo:?];
                                v65 = v628;
                                goto LABEL_584;
                              }

                              v579 = 0;
                              v47 = 0;
                              v65 = v628;
                              self = selfCopy2;
                              v10 = v11;
                              error = v635;
                              v62 = v629;
LABEL_585:

                              goto LABEL_586;
                            }

                            if (errorCopy2)
                            {
                              v183 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v184 = *MEMORY[0x1E698F240];
                              v763 = *MEMORY[0x1E696A578];
                              v619 = errorCopy2;
                              v185 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v443 = objc_opt_class();
                              v186 = v185;
                              self = selfCopy2;
                              v10 = v11;
                              v62 = v629;
                              error = v635;
                              v579 = [v186 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v443, @"speechPresenceProbability"];
                              v764 = v579;
                              v187 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v764 forKeys:&v763 count:1];
                              v188 = v183;
                              v8 = v632;
                              v580 = v187;
                              v581 = 0;
                              v47 = 0;
                              *v619 = [v188 initWithDomain:v184 code:2 userInfo:?];
                              v65 = v628;
                              goto LABEL_585;
                            }

                            v581 = 0;
                            v47 = 0;
                            v65 = v628;
                            self = selfCopy2;
                            v10 = v11;
                            error = v635;
                            v62 = v629;
LABEL_586:

                            goto LABEL_587;
                          }

                          if (errorCopy2)
                          {
                            v177 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v178 = *MEMORY[0x1E698F240];
                            v765 = *MEMORY[0x1E696A578];
                            v618 = errorCopy2;
                            v179 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v442 = objc_opt_class();
                            v180 = v179;
                            self = selfCopy2;
                            v10 = v11;
                            v62 = v629;
                            error = v635;
                            v581 = [v180 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v442, @"volumeChangeFlag"];
                            v766 = v581;
                            v181 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v766 forKeys:&v765 count:1];
                            v182 = v177;
                            v8 = v632;
                            v582 = v181;
                            v583 = 0;
                            v47 = 0;
                            *v618 = [v182 initWithDomain:v178 code:2 userInfo:?];
                            v65 = v628;
                            goto LABEL_586;
                          }

                          v583 = 0;
                          v47 = 0;
                          v65 = v628;
                          self = selfCopy2;
                          v10 = v11;
                          error = v635;
                          v62 = v629;
LABEL_587:

                          goto LABEL_588;
                        }

                        if (errorCopy2)
                        {
                          v119 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v120 = *MEMORY[0x1E698F240];
                          v767 = *MEMORY[0x1E696A578];
                          v617 = errorCopy2;
                          v121 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v441 = objc_opt_class();
                          v122 = v121;
                          self = selfCopy2;
                          v10 = v11;
                          v62 = v629;
                          error = v635;
                          v583 = [v122 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v441, @"windSpeechAggressorFlag"];
                          v768 = v583;
                          v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v768 forKeys:&v767 count:1];
                          v124 = v119;
                          v8 = v632;
                          v584 = v123;
                          v585 = 0;
                          v47 = 0;
                          *v617 = [v124 initWithDomain:v120 code:2 userInfo:?];
                          v65 = v628;
                          goto LABEL_587;
                        }

                        v585 = 0;
                        v47 = 0;
                        v65 = v628;
                        self = selfCopy2;
                        v10 = v11;
                        error = v635;
                        v62 = v629;
LABEL_588:

                        goto LABEL_589;
                      }

                      if (errorCopy2)
                      {
                        v112 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v600 = *MEMORY[0x1E698F240];
                        v769 = *MEMORY[0x1E696A578];
                        v113 = errorCopy2;
                        v114 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v440 = objc_opt_class();
                        v115 = v114;
                        self = selfCopy2;
                        v10 = v11;
                        v62 = v629;
                        error = v635;
                        v585 = [v115 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v440, @"streamType"];
                        v770 = v585;
                        v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v770 forKeys:&v769 count:1];
                        v117 = v112;
                        v8 = v632;
                        v586 = v116;
                        v118 = [v117 initWithDomain:v600 code:2 userInfo:?];
                        v599 = 0;
                        v47 = 0;
                        *v113 = v118;
                        v65 = v628;
                        goto LABEL_588;
                      }

                      v599 = 0;
                      v47 = 0;
                      v65 = v628;
                      self = selfCopy2;
                      v10 = v11;
                      error = v635;
                      v62 = v629;
LABEL_589:

                      goto LABEL_590;
                    }

                    if (errorCopy2)
                    {
                      v105 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v603 = *MEMORY[0x1E698F240];
                      v771 = *MEMORY[0x1E696A578];
                      v106 = errorCopy2;
                      v107 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v439 = objc_opt_class();
                      v108 = v107;
                      self = selfCopy2;
                      v10 = v11;
                      v62 = v629;
                      error = v635;
                      v599 = [v108 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v439, @"headphoneMode"];
                      v772 = v599;
                      v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v772 forKeys:&v771 count:1];
                      v110 = v105;
                      v8 = v632;
                      v601 = v109;
                      v111 = [v110 initWithDomain:v603 code:2 userInfo:?];
                      v602 = 0;
                      v47 = 0;
                      *v106 = v111;
                      v65 = v628;
                      goto LABEL_589;
                    }

                    v602 = 0;
                    v47 = 0;
                    v65 = v628;
                    self = selfCopy2;
                    v10 = v11;
                    error = v635;
                    v62 = v629;
LABEL_590:

                    goto LABEL_591;
                  }

                  if (errorCopy2)
                  {
                    v98 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v606 = *MEMORY[0x1E698F240];
                    v773 = *MEMORY[0x1E696A578];
                    v99 = errorCopy2;
                    v100 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v438 = objc_opt_class();
                    v101 = v100;
                    self = selfCopy2;
                    v10 = v11;
                    v62 = v629;
                    error = v635;
                    v602 = [v101 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v438, @"lastUserVolChangeType"];
                    v774 = v602;
                    v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v774 forKeys:&v773 count:1];
                    v103 = v98;
                    v8 = v632;
                    v604 = v102;
                    v104 = [v103 initWithDomain:v606 code:2 userInfo:?];
                    v605 = 0;
                    v47 = 0;
                    *v99 = v104;
                    v65 = v628;
                    goto LABEL_590;
                  }

                  v605 = 0;
                  v47 = 0;
                  v65 = v628;
                  self = selfCopy2;
                  v10 = v11;
                  error = v635;
                  v62 = v629;
LABEL_591:

                  goto LABEL_592;
                }

                if (errorCopy2)
                {
                  v91 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v609 = *MEMORY[0x1E698F240];
                  v775 = *MEMORY[0x1E696A578];
                  v92 = errorCopy2;
                  v93 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v437 = objc_opt_class();
                  v94 = v93;
                  self = selfCopy2;
                  v10 = v11;
                  v62 = v629;
                  error = v635;
                  v605 = [v94 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v437, @"currentVolumePrct"];
                  v776 = v605;
                  v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v776 forKeys:&v775 count:1];
                  v96 = v91;
                  v8 = v632;
                  v607 = v95;
                  v97 = [v96 initWithDomain:v609 code:2 userInfo:?];
                  v608 = 0;
                  v47 = 0;
                  *v92 = v97;
                  v65 = v628;
                  goto LABEL_591;
                }

                v608 = 0;
                v47 = 0;
                v65 = v628;
                self = selfCopy2;
                v10 = v11;
                error = v635;
                v62 = v629;
LABEL_592:

                goto LABEL_593;
              }

              if (errorCopy2)
              {
                v85 = objc_alloc(MEMORY[0x1E696ABC0]);
                v623 = *MEMORY[0x1E698F240];
                v777 = *MEMORY[0x1E696A578];
                v616 = errorCopy2;
                v86 = objc_alloc(MEMORY[0x1E696AEC0]);
                v436 = objc_opt_class();
                v87 = v86;
                self = selfCopy2;
                v10 = v11;
                v62 = v629;
                error = v635;
                v608 = [v87 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v436, @"downlinkdBA"];
                v778 = v608;
                v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v778 forKeys:&v777 count:1];
                v89 = v85;
                v8 = v632;
                v610 = v88;
                v90 = [v89 initWithDomain:v623 code:2 userInfo:?];
                v622 = 0;
                v47 = 0;
                *v616 = v90;
                v65 = v628;
                goto LABEL_592;
              }

              v622 = 0;
              v47 = 0;
              v65 = v628;
              self = selfCopy2;
              v10 = v11;
              error = v635;
              v62 = v629;
LABEL_593:

              goto LABEL_594;
            }

            if (errorCopy2)
            {
              v79 = objc_alloc(MEMORY[0x1E696ABC0]);
              v626 = *MEMORY[0x1E698F240];
              v779 = *MEMORY[0x1E696A578];
              v615 = errorCopy2;
              v80 = objc_alloc(MEMORY[0x1E696AEC0]);
              v435 = objc_opt_class();
              v81 = v80;
              self = selfCopy2;
              v10 = v11;
              v62 = v629;
              error = v635;
              v622 = [v81 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v435, @"drumdBAPredicted"];
              v780 = v622;
              v82 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v780 forKeys:&v779 count:1];
              v83 = v79;
              v8 = v632;
              v624 = v82;
              v84 = [v83 initWithDomain:v626 code:2 userInfo:?];
              v625 = 0;
              v47 = 0;
              *v615 = v84;
              v65 = v628;
              goto LABEL_593;
            }

            v625 = 0;
            v47 = 0;
            v65 = v628;
            self = selfCopy2;
            v10 = v11;
            error = v635;
            v62 = v629;
LABEL_594:

            goto LABEL_595;
          }

          if (errorCopy2)
          {
            v73 = objc_alloc(MEMORY[0x1E696ABC0]);
            v631 = *MEMORY[0x1E698F240];
            v781 = *MEMORY[0x1E696A578];
            v614 = errorCopy2;
            v74 = objc_alloc(MEMORY[0x1E696AEC0]);
            v434 = objc_opt_class();
            v75 = v74;
            self = selfCopy2;
            v10 = v11;
            v62 = v629;
            error = v635;
            v625 = [v75 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v434, @"drumdBK"];
            v782 = v625;
            v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v782 forKeys:&v781 count:1];
            v77 = v73;
            v8 = v632;
            v627 = v76;
            v78 = [v77 initWithDomain:v631 code:2 userInfo:?];
            v630 = 0;
            v47 = 0;
            *v614 = v78;
            v65 = v628;
            goto LABEL_594;
          }

          v630 = 0;
          v47 = 0;
          v65 = v628;
          self = selfCopy2;
          v10 = v11;
          error = v635;
          v62 = v629;
LABEL_595:

          goto LABEL_596;
        }

        v65 = v14;
        if (errorCopy2)
        {
          v634 = objc_alloc(MEMORY[0x1E696ABC0]);
          v67 = *MEMORY[0x1E698F240];
          v783 = *MEMORY[0x1E696A578];
          v613 = errorCopy2;
          v68 = objc_alloc(MEMORY[0x1E696AEC0]);
          v433 = objc_opt_class();
          v69 = v68;
          self = selfCopy2;
          v10 = v11;
          error = v635;
          v630 = [v69 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v433, @"drumdBA"];
          v784 = v630;
          v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v784 forKeys:&v783 count:1];
          v71 = v634;
          v72 = v67;
          v8 = v632;
          v633 = v70;
          v62 = 0;
          v47 = 0;
          *v613 = [v71 initWithDomain:v72 code:2 userInfo:?];
          goto LABEL_595;
        }

        v47 = 0;
        self = selfCopy2;
        v10 = v11;
        v62 = 0;
        error = v635;
LABEL_596:

        goto LABEL_597;
      }

      if (error)
      {
        v53 = objc_alloc(MEMORY[0x1E696ABC0]);
        selfCopy9 = self;
        v55 = *MEMORY[0x1E698F240];
        v785 = *MEMORY[0x1E696A578];
        errorCopy3 = error;
        v56 = dictionaryCopy;
        v57 = v7;
        v58 = v9;
        v59 = v10;
        v60 = objc_alloc(MEMORY[0x1E696AEC0]);
        v432 = objc_opt_class();
        v61 = v60;
        v10 = v59;
        v9 = v58;
        v7 = v57;
        dictionaryCopy = v56;
        v62 = [v61 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v432, @"refMicdBC"];
        v786 = v62;
        v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v786 forKeys:&v785 count:1];
        v64 = v53;
        v65 = v63;
        v66 = v55;
        self = selfCopy9;
        v8 = v632;
        error = 0;
        v47 = 0;
        *errorCopy3 = [v64 initWithDomain:v66 code:2 userInfo:v63];
        goto LABEL_596;
      }

      v47 = 0;
LABEL_597:

      goto LABEL_598;
    }

    if (error)
    {
      v48 = objc_alloc(MEMORY[0x1E696ABC0]);
      v49 = *MEMORY[0x1E698F240];
      v787 = *MEMORY[0x1E696A578];
      selfCopy10 = self;
      errorCopy4 = error;
      error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"refMicdBA"];
      errorCopy5 = error;
      v636 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy5 forKeys:&v787 count:1];
      v52 = [v48 initWithDomain:v49 code:2 userInfo:v636];
      v10 = 0;
      v47 = 0;
      *errorCopy4 = v52;
      self = selfCopy10;
      goto LABEL_597;
    }

    v10 = 0;
    v47 = 0;
LABEL_598:

    goto LABEL_599;
  }

  if (error)
  {
    v43 = objc_alloc(MEMORY[0x1E696ABC0]);
    errorCopy6 = error;
    v45 = *MEMORY[0x1E698F240];
    v789 = *MEMORY[0x1E696A578];
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"controllerVersion"];
    v790[0] = v10;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v790 forKeys:&v789 count:1];
    v46 = [v43 initWithDomain:v45 code:2 userInfo:v9];
    v8 = 0;
    v47 = 0;
    *errorCopy6 = v46;
    goto LABEL_598;
  }

  v8 = 0;
  v47 = 0;
LABEL_599:

  return v47;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceAdaptiveVolume *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_hasControllerVersion)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasRefMicdBA)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasRefMicdBC)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDrumdBA)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDrumdBK)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDrumdBAPredicted)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDownlinkdBA)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasCurrentVolumePrct)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasLastUserVolChangeType)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasHeadphoneMode)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasStreamType)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasWindSpeechAggressorFlag)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasVolumeChangeFlag)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasSpeechPresenceProbability)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasPersonalizationParamSnr)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasPersonalizationParamMistakes)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasLastEMediadBA)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasLastVolMediaPrct)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasLastETelephonydBA)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasLastVolTelephonyPrct)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasLastESiridBA)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasLastVolSiriPrct)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasSmoothEae)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDesiredDeltaE)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasPredVolMediaPrct)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasPredVolTelephonyPrct)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasPredVolSiriPrct)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasOnStartPredictionFlag)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasGuardrailsAvoidFlag)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasMinMaxCutFlag)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasManualVolumeChangeFlag)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasBigWindowSize)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasSmallWindowSize)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_activeAppName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_activeAirpodsSerialNumber)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasAnchorVol)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasAnchorEnv)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasPersonalizationCoeff)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasUnsignedPredVolMediaPrct)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasUnsignedPredVolTelephonyPrct)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasUnsignedPredVolSiriPrct)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasSingleBudFlag)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasCdEngagementFlag)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasActiveStreamFlag)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasPvFeatureEnableFlag)
  {
    PBDataWriterWriteUint32Field();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_envSpectralData32B;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v19 + 1) + 8 * v9) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  if (self->_hasWindStrength)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasWindProb)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasMediaType)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasSourceActivity)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasBudActivity)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasLocation)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasLocationType)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFocusMode)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasStreamingAppBundleId)
  {
    PBDataWriterWriteUint32Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_noiseType4B;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  if (self->_hasInstdBA)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasInstdBC)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasNonCAListeningMode)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFit)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasFixedAutoAncGain)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasAdjustedAutoAncGain)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasTimestamp)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDRCenablementBit)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDRCwindFlag)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDRCappSelfVoiceFlag)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDrumDRC)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasRoutedDRCGain)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v9.receiver = self;
  v9.super_class = BMDeviceAdaptiveVolume;
  v5 = [(BMEventBase *)&v9 init];
  v6 = v5;
  if (v5 && !BMDeviceAdaptiveVolumeReadFrom(v5, fromCopy))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume controllerVersion](self, "controllerVersion")}];
  v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume refMicdBA](self, "refMicdBA")}];
  v72 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume refMicdBC](self, "refMicdBC")}];
  v71 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume drumdBA](self, "drumdBA")}];
  v70 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume drumdBK](self, "drumdBK")}];
  v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume drumdBAPredicted](self, "drumdBAPredicted")}];
  v68 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume downlinkdBA](self, "downlinkdBA")}];
  v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume currentVolumePrct](self, "currentVolumePrct")}];
  v66 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastUserVolChangeType](self, "lastUserVolChangeType")}];
  v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume headphoneMode](self, "headphoneMode")}];
  v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume streamType](self, "streamType")}];
  v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume windSpeechAggressorFlag](self, "windSpeechAggressorFlag")}];
  v59 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume volumeChangeFlag](self, "volumeChangeFlag")}];
  v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume speechPresenceProbability](self, "speechPresenceProbability")}];
  v60 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume personalizationParamSnr](self, "personalizationParamSnr")}];
  v56 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume personalizationParamMistakes](self, "personalizationParamMistakes")}];
  v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastEMediadBA](self, "lastEMediadBA")}];
  v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastVolMediaPrct](self, "lastVolMediaPrct")}];
  v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastETelephonydBA](self, "lastETelephonydBA")}];
  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastVolTelephonyPrct](self, "lastVolTelephonyPrct")}];
  v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastESiridBA](self, "lastESiridBA")}];
  v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume lastVolSiriPrct](self, "lastVolSiriPrct")}];
  v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume smoothEae](self, "smoothEae")}];
  v51 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume desiredDeltaE](self, "desiredDeltaE")}];
  v48 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume predVolMediaPrct](self, "predVolMediaPrct")}];
  v49 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume predVolTelephonyPrct](self, "predVolTelephonyPrct")}];
  v45 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceAdaptiveVolume predVolSiriPrct](self, "predVolSiriPrct")}];
  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume onStartPredictionFlag](self, "onStartPredictionFlag")}];
  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume guardrailsAvoidFlag](self, "guardrailsAvoidFlag")}];
  v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume minMaxCutFlag](self, "minMaxCutFlag")}];
  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume manualVolumeChangeFlag](self, "manualVolumeChangeFlag")}];
  v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume bigWindowSize](self, "bigWindowSize")}];
  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume smallWindowSize](self, "smallWindowSize")}];
  activeAppName = [(BMDeviceAdaptiveVolume *)self activeAppName];
  activeAirpodsSerialNumber = [(BMDeviceAdaptiveVolume *)self activeAirpodsSerialNumber];
  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume anchorVol](self, "anchorVol")}];
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume anchorEnv](self, "anchorEnv")}];
  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume personalizationCoeff](self, "personalizationCoeff")}];
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume unsignedPredVolMediaPrct](self, "unsignedPredVolMediaPrct")}];
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume unsignedPredVolTelephonyPrct](self, "unsignedPredVolTelephonyPrct")}];
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume unsignedPredVolSiriPrct](self, "unsignedPredVolSiriPrct")}];
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume singleBudFlag](self, "singleBudFlag")}];
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume cdEngagementFlag](self, "cdEngagementFlag")}];
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume activeStreamFlag](self, "activeStreamFlag")}];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume pvFeatureEnableFlag](self, "pvFeatureEnableFlag")}];
  envSpectralData32B = [(BMDeviceAdaptiveVolume *)self envSpectralData32B];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume windStrength](self, "windStrength")}];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume windProb](self, "windProb")}];
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume mediaType](self, "mediaType")}];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume sourceActivity](self, "sourceActivity")}];
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume budActivity](self, "budActivity")}];
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume location](self, "location")}];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume locationType](self, "locationType")}];
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume focusMode](self, "focusMode")}];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume streamingAppBundleId](self, "streamingAppBundleId")}];
  noiseType4B = [(BMDeviceAdaptiveVolume *)self noiseType4B];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume instdBA](self, "instdBA")}];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume instdBC](self, "instdBC")}];
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume nonCAListeningMode](self, "nonCAListeningMode")}];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume fit](self, "fit")}];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume fixedAutoAncGain](self, "fixedAutoAncGain")}];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume adjustedAutoAncGain](self, "adjustedAutoAncGain")}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume timestamp](self, "timestamp")}];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume DRCenablementBit](self, "DRCenablementBit")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume DRCwindFlag](self, "DRCwindFlag")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume DRCappSelfVoiceFlag](self, "DRCappSelfVoiceFlag")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume drumDRC](self, "drumDRC")}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceAdaptiveVolume routedDRCGain](self, "routedDRCGain")}];
  v19 = [v18 initWithFormat:@"BMDeviceAdaptiveVolume with controllerVersion: %@, refMicdBA: %@, refMicdBC: %@, drumdBA: %@, drumdBK: %@, drumdBAPredicted: %@, downlinkdBA: %@, currentVolumePrct: %@, lastUserVolChangeType: %@, headphoneMode: %@, streamType: %@, windSpeechAggressorFlag: %@, volumeChangeFlag: %@, speechPresenceProbability: %@, personalizationParamSnr: %@, personalizationParamMistakes: %@, lastEMediadBA: %@, lastVolMediaPrct: %@, lastETelephonydBA: %@, lastVolTelephonyPrct: %@, lastESiridBA: %@, lastVolSiriPrct: %@, smoothEae: %@, desiredDeltaE: %@, predVolMediaPrct: %@, predVolTelephonyPrct: %@, predVolSiriPrct: %@, onStartPredictionFlag: %@, guardrailsAvoidFlag: %@, minMaxCutFlag: %@, manualVolumeChangeFlag: %@, bigWindowSize: %@, smallWindowSize: %@, activeAppName: %@, activeAirpodsSerialNumber: %@, anchorVol: %@, anchorEnv: %@, personalizationCoeff: %@, unsignedPredVolMediaPrct: %@, unsignedPredVolTelephonyPrct: %@, unsignedPredVolSiriPrct: %@, singleBudFlag: %@, cdEngagementFlag: %@, activeStreamFlag: %@, pvFeatureEnableFlag: %@, envSpectralData32B: %@, windStrength: %@, windProb: %@, mediaType: %@, sourceActivity: %@, budActivity: %@, location: %@, locationType: %@, focusMode: %@, streamingAppBundleId: %@, noiseType4B: %@, instdBA: %@, instdBC: %@, nonCAListeningMode: %@, fit: %@, fixedAutoAncGain: %@, adjustedAutoAncGain: %@, timestamp: %@, DRCenablementBit: %@, DRCwindFlag: %@, DRCappSelfVoiceFlag: %@, drumDRC: %@, routedDRCGain: %@", v69, v73, v72, v71, v70, v65, v68, v67, v66, v62, v64, v63, v59, v61, v60, v56, v58, v57, v53, v55, v54, v50, v52, v51, v48, v49, v45, v47, v44, v46, v41, v43, v40, activeAppName, activeAirpodsSerialNumber, v39, v35, v37, v34, v32, v36, v30, v33, v31, v17, envSpectralData32B, v16, v15, v28, v14, v27, v26, v25, v24, v13, noiseType4B, v22, v21, v20, v12];

  return v19;
}

- (BMDeviceAdaptiveVolume)initWithControllerVersion:(void *)version refMicdBA:(void *)a refMicdBC:(void *)c drumdBA:(void *)bA drumdBK:(void *)k drumdBAPredicted:(void *)predicted downlinkdBA:(id)downlinkdBA currentVolumePrct:(id)self0 lastUserVolChangeType:(id)self1 headphoneMode:(id)self2 streamType:(id)self3 windSpeechAggressorFlag:(id)self4 volumeChangeFlag:(id)self5 speechPresenceProbability:(id)self6 personalizationParamSnr:(id)self7 personalizationParamMistakes:(id)self8 lastEMediadBA:(id)self9 lastVolMediaPrct:(id)mediaPrct lastETelephonydBA:(id)telephonydBA lastVolTelephonyPrct:(id)telephonyPrct lastESiridBA:(id)siridBA lastVolSiriPrct:(id)siriPrct smoothEae:(id)eae desiredDeltaE:(id)e predVolMediaPrct:(id)volMediaPrct predVolTelephonyPrct:(id)volTelephonyPrct predVolSiriPrct:(id)volSiriPrct onStartPredictionFlag:(id)version0 guardrailsAvoidFlag:(id)version1 minMaxCutFlag:(id)version2 manualVolumeChangeFlag:(id)version3 bigWindowSize:(id)version4 smallWindowSize:(id)version5 activeAppName:(id)version6 activeAirpodsSerialNumber:(id)version7 anchorVol:(id)version8 anchorEnv:(id)version9 personalizationCoeff:(id)a0 unsignedPredVolMediaPrct:(id)a1 unsignedPredVolTelephonyPrct:(id)a2 unsignedPredVolSiriPrct:(id)a3 singleBudFlag:(id)a4 cdEngagementFlag:(id)c activeStreamFlag:(id)bA pvFeatureEnableFlag:(id)k envSpectralData32B:(id)predicted windStrength:(id)downlinkdBA windProb:(id)c0 mediaType:(id)c1 sourceActivity:(id)c2 budActivity:(id)c3 location:(id)c4 locationType:(id)c5 focusMode:(id)c6 streamingAppBundleId:(id)c7 noiseType4B:(id)c8 instdBA:(id)c9 instdBC:(id)bA0 nonCAListeningMode:(id)bA1 fit:(id)bA2 fixedAutoAncGain:(id)bA3 adjustedAutoAncGain:timestamp:DRCenablementBit:DRCwindFlag:DRCappSelfVoiceFlag:drumDRC:routedDRCGain:
{
  versionCopy = version;
  aCopy = a;
  cCopy = c;
  bACopy = bA;
  kCopy = k;
  predictedCopy = predicted;
  downlinkdBACopy = downlinkdBA;
  prctCopy = prct;
  typeCopy = type;
  modeCopy = mode;
  streamTypeCopy = streamType;
  flagCopy = flag;
  changeFlagCopy = changeFlag;
  probabilityCopy = probability;
  snrCopy = snr;
  mistakesCopy = mistakes;
  mediadBACopy = mediadBA;
  mediaPrctCopy = mediaPrct;
  telephonydBACopy = telephonydBA;
  telephonyPrctCopy = telephonyPrct;
  siridBACopy = siridBA;
  siriPrctCopy = siriPrct;
  eaeCopy = eae;
  eCopy = e;
  volMediaPrctCopy = volMediaPrct;
  volTelephonyPrctCopy = volTelephonyPrct;
  volSiriPrctCopy = volSiriPrct;
  predictionFlagCopy = predictionFlag;
  avoidFlagCopy = avoidFlag;
  cutFlagCopy = cutFlag;
  volumeChangeFlagCopy = volumeChangeFlag;
  sizeCopy = size;
  windowSizeCopy = windowSize;
  nameCopy = name;
  numberCopy = number;
  volCopy = vol;
  envCopy = env;
  coeffCopy = coeff;
  predVolMediaPrctCopy = predVolMediaPrct;
  predVolTelephonyPrctCopy = predVolTelephonyPrct;
  predVolSiriPrctCopy = predVolSiriPrct;
  budFlagCopy = budFlag;
  engagementFlagCopy = engagementFlag;
  streamFlagCopy = streamFlag;
  enableFlagCopy = enableFlag;
  bCopy = b;
  strengthCopy = strength;
  probCopy = prob;
  mediaTypeCopy = mediaType;
  activityCopy = activity;
  budActivityCopy = budActivity;
  locationCopy = location;
  locationTypeCopy = locationType;
  focusModeCopy = focusMode;
  idCopy = id;
  type4BCopy = type4B;
  instdBACopy = instdBA;
  bCCopy = bC;
  listeningModeCopy = listeningMode;
  fitCopy = fit;
  gainCopy = gain;
  v67 = v205;
  v68 = v206;
  v69 = v207;
  v70 = v208;
  v71 = v209;
  v72 = v210;
  v73 = v211;
  v204.receiver = self;
  v204.super_class = BMDeviceAdaptiveVolume;
  v74 = [(BMEventBase *)&v204 init];

  if (v74)
  {
    v74->_dataVersion = [objc_opt_class() latestDataVersion];
    if (versionCopy)
    {
      v74->_hasControllerVersion = 1;
      unsignedIntValue = [versionCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v74->_hasControllerVersion = 0;
    }

    v74->_controllerVersion = unsignedIntValue;
    if (aCopy)
    {
      v74->_hasRefMicdBA = 1;
      unsignedIntValue2 = [aCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v74->_hasRefMicdBA = 0;
    }

    v74->_refMicdBA = unsignedIntValue2;
    if (cCopy)
    {
      v74->_hasRefMicdBC = 1;
      unsignedIntValue3 = [cCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue3 = 0;
      v74->_hasRefMicdBC = 0;
    }

    v74->_refMicdBC = unsignedIntValue3;
    if (bACopy)
    {
      v74->_hasDrumdBA = 1;
      unsignedIntValue4 = [bACopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue4 = 0;
      v74->_hasDrumdBA = 0;
    }

    v74->_drumdBA = unsignedIntValue4;
    unsignedIntValue5 = kCopy;
    if (kCopy)
    {
      v74->_hasDrumdBK = 1;
      unsignedIntValue5 = [kCopy unsignedIntValue];
    }

    else
    {
      v74->_hasDrumdBK = 0;
    }

    v74->_drumdBK = unsignedIntValue5;
    unsignedIntValue6 = predictedCopy;
    if (predictedCopy)
    {
      v74->_hasDrumdBAPredicted = 1;
      unsignedIntValue6 = [predictedCopy unsignedIntValue];
    }

    else
    {
      v74->_hasDrumdBAPredicted = 0;
    }

    v74->_drumdBAPredicted = unsignedIntValue6;
    unsignedIntValue7 = downlinkdBACopy;
    if (downlinkdBACopy)
    {
      v74->_hasDownlinkdBA = 1;
      unsignedIntValue7 = [downlinkdBACopy unsignedIntValue];
    }

    else
    {
      v74->_hasDownlinkdBA = 0;
    }

    v74->_downlinkdBA = unsignedIntValue7;
    unsignedIntValue8 = prctCopy;
    if (prctCopy)
    {
      v74->_hasCurrentVolumePrct = 1;
      unsignedIntValue8 = [prctCopy unsignedIntValue];
    }

    else
    {
      v74->_hasCurrentVolumePrct = 0;
    }

    v74->_currentVolumePrct = unsignedIntValue8;
    unsignedIntValue9 = typeCopy;
    if (typeCopy)
    {
      v74->_hasLastUserVolChangeType = 1;
      unsignedIntValue9 = [typeCopy unsignedIntValue];
    }

    else
    {
      v74->_hasLastUserVolChangeType = 0;
    }

    v74->_lastUserVolChangeType = unsignedIntValue9;
    unsignedIntValue10 = modeCopy;
    if (modeCopy)
    {
      v74->_hasHeadphoneMode = 1;
      unsignedIntValue10 = [modeCopy unsignedIntValue];
    }

    else
    {
      v74->_hasHeadphoneMode = 0;
    }

    v74->_headphoneMode = unsignedIntValue10;
    unsignedIntValue11 = streamTypeCopy;
    if (streamTypeCopy)
    {
      v74->_hasStreamType = 1;
      unsignedIntValue11 = [streamTypeCopy unsignedIntValue];
    }

    else
    {
      v74->_hasStreamType = 0;
    }

    v74->_streamType = unsignedIntValue11;
    unsignedIntValue12 = flagCopy;
    if (flagCopy)
    {
      v74->_hasWindSpeechAggressorFlag = 1;
      unsignedIntValue12 = [flagCopy unsignedIntValue];
    }

    else
    {
      v74->_hasWindSpeechAggressorFlag = 0;
    }

    v74->_windSpeechAggressorFlag = unsignedIntValue12;
    unsignedIntValue13 = changeFlagCopy;
    if (changeFlagCopy)
    {
      v74->_hasVolumeChangeFlag = 1;
      unsignedIntValue13 = [changeFlagCopy unsignedIntValue];
    }

    else
    {
      v74->_hasVolumeChangeFlag = 0;
    }

    v74->_volumeChangeFlag = unsignedIntValue13;
    unsignedIntValue14 = probabilityCopy;
    if (probabilityCopy)
    {
      v74->_hasSpeechPresenceProbability = 1;
      unsignedIntValue14 = [probabilityCopy unsignedIntValue];
    }

    else
    {
      v74->_hasSpeechPresenceProbability = 0;
    }

    v74->_speechPresenceProbability = unsignedIntValue14;
    if (snrCopy)
    {
      v74->_hasPersonalizationParamSnr = 1;
      intValue = [snrCopy intValue];
    }

    else
    {
      v74->_hasPersonalizationParamSnr = 0;
      intValue = -1;
    }

    v74->_personalizationParamSnr = intValue;
    if (mistakesCopy)
    {
      v74->_hasPersonalizationParamMistakes = 1;
      intValue2 = [mistakesCopy intValue];
    }

    else
    {
      v74->_hasPersonalizationParamMistakes = 0;
      intValue2 = -1;
    }

    v74->_personalizationParamMistakes = intValue2;
    unsignedIntValue15 = mediadBACopy;
    if (mediadBACopy)
    {
      v74->_hasLastEMediadBA = 1;
      unsignedIntValue15 = [mediadBACopy unsignedIntValue];
    }

    else
    {
      v74->_hasLastEMediadBA = 0;
    }

    v74->_lastEMediadBA = unsignedIntValue15;
    unsignedIntValue16 = mediaPrctCopy;
    if (mediaPrctCopy)
    {
      v74->_hasLastVolMediaPrct = 1;
      unsignedIntValue16 = [mediaPrctCopy unsignedIntValue];
    }

    else
    {
      v74->_hasLastVolMediaPrct = 0;
    }

    v74->_lastVolMediaPrct = unsignedIntValue16;
    unsignedIntValue17 = telephonydBACopy;
    if (telephonydBACopy)
    {
      v74->_hasLastETelephonydBA = 1;
      unsignedIntValue17 = [telephonydBACopy unsignedIntValue];
    }

    else
    {
      v74->_hasLastETelephonydBA = 0;
    }

    v74->_lastETelephonydBA = unsignedIntValue17;
    unsignedIntValue18 = telephonyPrctCopy;
    if (telephonyPrctCopy)
    {
      v74->_hasLastVolTelephonyPrct = 1;
      unsignedIntValue18 = [telephonyPrctCopy unsignedIntValue];
    }

    else
    {
      v74->_hasLastVolTelephonyPrct = 0;
    }

    v74->_lastVolTelephonyPrct = unsignedIntValue18;
    unsignedIntValue19 = siridBACopy;
    if (siridBACopy)
    {
      v74->_hasLastESiridBA = 1;
      unsignedIntValue19 = [siridBACopy unsignedIntValue];
    }

    else
    {
      v74->_hasLastESiridBA = 0;
    }

    v74->_lastESiridBA = unsignedIntValue19;
    unsignedIntValue20 = siriPrctCopy;
    if (siriPrctCopy)
    {
      v74->_hasLastVolSiriPrct = 1;
      unsignedIntValue20 = [siriPrctCopy unsignedIntValue];
    }

    else
    {
      v74->_hasLastVolSiriPrct = 0;
    }

    v74->_lastVolSiriPrct = unsignedIntValue20;
    unsignedIntValue21 = eaeCopy;
    if (eaeCopy)
    {
      v74->_hasSmoothEae = 1;
      unsignedIntValue21 = [eaeCopy unsignedIntValue];
    }

    else
    {
      v74->_hasSmoothEae = 0;
    }

    v74->_smoothEae = unsignedIntValue21;
    if (eCopy)
    {
      v74->_hasDesiredDeltaE = 1;
      intValue3 = [eCopy intValue];
    }

    else
    {
      v74->_hasDesiredDeltaE = 0;
      intValue3 = -1;
    }

    v74->_desiredDeltaE = intValue3;
    if (volMediaPrctCopy)
    {
      v74->_hasPredVolMediaPrct = 1;
      intValue4 = [volMediaPrctCopy intValue];
    }

    else
    {
      v74->_hasPredVolMediaPrct = 0;
      intValue4 = -1;
    }

    v74->_predVolMediaPrct = intValue4;
    if (volTelephonyPrctCopy)
    {
      v74->_hasPredVolTelephonyPrct = 1;
      intValue5 = [volTelephonyPrctCopy intValue];
    }

    else
    {
      v74->_hasPredVolTelephonyPrct = 0;
      intValue5 = -1;
    }

    v74->_predVolTelephonyPrct = intValue5;
    if (volSiriPrctCopy)
    {
      v74->_hasPredVolSiriPrct = 1;
      intValue6 = [volSiriPrctCopy intValue];
    }

    else
    {
      v74->_hasPredVolSiriPrct = 0;
      intValue6 = -1;
    }

    v74->_predVolSiriPrct = intValue6;
    unsignedIntValue22 = predictionFlagCopy;
    if (predictionFlagCopy)
    {
      v74->_hasOnStartPredictionFlag = 1;
      unsignedIntValue22 = [predictionFlagCopy unsignedIntValue];
    }

    else
    {
      v74->_hasOnStartPredictionFlag = 0;
    }

    v74->_onStartPredictionFlag = unsignedIntValue22;
    unsignedIntValue23 = avoidFlagCopy;
    if (avoidFlagCopy)
    {
      v74->_hasGuardrailsAvoidFlag = 1;
      unsignedIntValue23 = [avoidFlagCopy unsignedIntValue];
    }

    else
    {
      v74->_hasGuardrailsAvoidFlag = 0;
    }

    v74->_guardrailsAvoidFlag = unsignedIntValue23;
    unsignedIntValue24 = cutFlagCopy;
    if (cutFlagCopy)
    {
      v74->_hasMinMaxCutFlag = 1;
      unsignedIntValue24 = [cutFlagCopy unsignedIntValue];
    }

    else
    {
      v74->_hasMinMaxCutFlag = 0;
    }

    v74->_minMaxCutFlag = unsignedIntValue24;
    unsignedIntValue25 = volumeChangeFlagCopy;
    if (volumeChangeFlagCopy)
    {
      v74->_hasManualVolumeChangeFlag = 1;
      unsignedIntValue25 = [volumeChangeFlagCopy unsignedIntValue];
    }

    else
    {
      v74->_hasManualVolumeChangeFlag = 0;
    }

    v74->_manualVolumeChangeFlag = unsignedIntValue25;
    unsignedIntValue26 = sizeCopy;
    if (sizeCopy)
    {
      v74->_hasBigWindowSize = 1;
      unsignedIntValue26 = [sizeCopy unsignedIntValue];
    }

    else
    {
      v74->_hasBigWindowSize = 0;
    }

    v74->_bigWindowSize = unsignedIntValue26;
    unsignedIntValue27 = windowSizeCopy;
    if (windowSizeCopy)
    {
      v74->_hasSmallWindowSize = 1;
      unsignedIntValue27 = [windowSizeCopy unsignedIntValue];
    }

    else
    {
      v74->_hasSmallWindowSize = 0;
    }

    v74->_smallWindowSize = unsignedIntValue27;
    objc_storeStrong(&v74->_activeAppName, name);
    objc_storeStrong(&v74->_activeAirpodsSerialNumber, number);
    unsignedIntValue28 = volCopy;
    if (volCopy)
    {
      v74->_hasAnchorVol = 1;
      unsignedIntValue28 = [volCopy unsignedIntValue];
    }

    else
    {
      v74->_hasAnchorVol = 0;
    }

    v74->_anchorVol = unsignedIntValue28;
    unsignedIntValue29 = envCopy;
    if (envCopy)
    {
      v74->_hasAnchorEnv = 1;
      unsignedIntValue29 = [envCopy unsignedIntValue];
    }

    else
    {
      v74->_hasAnchorEnv = 0;
    }

    v74->_anchorEnv = unsignedIntValue29;
    unsignedIntValue30 = coeffCopy;
    if (coeffCopy)
    {
      v74->_hasPersonalizationCoeff = 1;
      unsignedIntValue30 = [coeffCopy unsignedIntValue];
    }

    else
    {
      v74->_hasPersonalizationCoeff = 0;
    }

    v74->_personalizationCoeff = unsignedIntValue30;
    unsignedIntValue31 = predVolMediaPrctCopy;
    if (predVolMediaPrctCopy)
    {
      v74->_hasUnsignedPredVolMediaPrct = 1;
      unsignedIntValue31 = [predVolMediaPrctCopy unsignedIntValue];
    }

    else
    {
      v74->_hasUnsignedPredVolMediaPrct = 0;
    }

    v74->_unsignedPredVolMediaPrct = unsignedIntValue31;
    unsignedIntValue32 = predVolTelephonyPrctCopy;
    if (predVolTelephonyPrctCopy)
    {
      v74->_hasUnsignedPredVolTelephonyPrct = 1;
      unsignedIntValue32 = [predVolTelephonyPrctCopy unsignedIntValue];
    }

    else
    {
      v74->_hasUnsignedPredVolTelephonyPrct = 0;
    }

    v74->_unsignedPredVolTelephonyPrct = unsignedIntValue32;
    unsignedIntValue33 = predVolSiriPrctCopy;
    if (predVolSiriPrctCopy)
    {
      v74->_hasUnsignedPredVolSiriPrct = 1;
      unsignedIntValue33 = [predVolSiriPrctCopy unsignedIntValue];
    }

    else
    {
      v74->_hasUnsignedPredVolSiriPrct = 0;
    }

    v74->_unsignedPredVolSiriPrct = unsignedIntValue33;
    unsignedIntValue34 = budFlagCopy;
    if (budFlagCopy)
    {
      v74->_hasSingleBudFlag = 1;
      unsignedIntValue34 = [budFlagCopy unsignedIntValue];
    }

    else
    {
      v74->_hasSingleBudFlag = 0;
    }

    v74->_singleBudFlag = unsignedIntValue34;
    unsignedIntValue35 = engagementFlagCopy;
    if (engagementFlagCopy)
    {
      v74->_hasCdEngagementFlag = 1;
      unsignedIntValue35 = [engagementFlagCopy unsignedIntValue];
    }

    else
    {
      v74->_hasCdEngagementFlag = 0;
    }

    v74->_cdEngagementFlag = unsignedIntValue35;
    unsignedIntValue36 = streamFlagCopy;
    if (streamFlagCopy)
    {
      v74->_hasActiveStreamFlag = 1;
      unsignedIntValue36 = [streamFlagCopy unsignedIntValue];
    }

    else
    {
      v74->_hasActiveStreamFlag = 0;
    }

    v74->_activeStreamFlag = unsignedIntValue36;
    unsignedIntValue37 = enableFlagCopy;
    if (enableFlagCopy)
    {
      v74->_hasPvFeatureEnableFlag = 1;
      unsignedIntValue37 = [enableFlagCopy unsignedIntValue];
    }

    else
    {
      v74->_hasPvFeatureEnableFlag = 0;
    }

    v74->_pvFeatureEnableFlag = unsignedIntValue37;
    objc_storeStrong(&v74->_envSpectralData32B, b);
    unsignedIntValue38 = strengthCopy;
    if (strengthCopy)
    {
      v74->_hasWindStrength = 1;
      unsignedIntValue38 = [strengthCopy unsignedIntValue];
    }

    else
    {
      v74->_hasWindStrength = 0;
    }

    v74->_windStrength = unsignedIntValue38;
    unsignedIntValue39 = probCopy;
    if (probCopy)
    {
      v74->_hasWindProb = 1;
      unsignedIntValue39 = [probCopy unsignedIntValue];
    }

    else
    {
      v74->_hasWindProb = 0;
    }

    v74->_windProb = unsignedIntValue39;
    unsignedIntValue40 = mediaTypeCopy;
    if (mediaTypeCopy)
    {
      v74->_hasMediaType = 1;
      unsignedIntValue40 = [mediaTypeCopy unsignedIntValue];
    }

    else
    {
      v74->_hasMediaType = 0;
    }

    v74->_mediaType = unsignedIntValue40;
    unsignedIntValue41 = activityCopy;
    if (activityCopy)
    {
      v74->_hasSourceActivity = 1;
      unsignedIntValue41 = [activityCopy unsignedIntValue];
    }

    else
    {
      v74->_hasSourceActivity = 0;
    }

    v74->_sourceActivity = unsignedIntValue41;
    unsignedIntValue42 = budActivityCopy;
    if (budActivityCopy)
    {
      v74->_hasBudActivity = 1;
      unsignedIntValue42 = [budActivityCopy unsignedIntValue];
    }

    else
    {
      v74->_hasBudActivity = 0;
    }

    v74->_budActivity = unsignedIntValue42;
    unsignedIntValue43 = locationCopy;
    if (locationCopy)
    {
      v74->_hasLocation = 1;
      unsignedIntValue43 = [locationCopy unsignedIntValue];
    }

    else
    {
      v74->_hasLocation = 0;
    }

    v74->_location = unsignedIntValue43;
    unsignedIntValue44 = locationTypeCopy;
    if (locationTypeCopy)
    {
      v74->_hasLocationType = 1;
      unsignedIntValue44 = [locationTypeCopy unsignedIntValue];
    }

    else
    {
      v74->_hasLocationType = 0;
    }

    v74->_locationType = unsignedIntValue44;
    unsignedIntValue45 = focusModeCopy;
    if (focusModeCopy)
    {
      v74->_hasFocusMode = 1;
      unsignedIntValue45 = [focusModeCopy unsignedIntValue];
    }

    else
    {
      v74->_hasFocusMode = 0;
    }

    v74->_focusMode = unsignedIntValue45;
    if (idCopy)
    {
      v74->_hasStreamingAppBundleId = 1;
      unsignedIntValue46 = [idCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue46 = 0;
      v74->_hasStreamingAppBundleId = 0;
    }

    v74->_streamingAppBundleId = unsignedIntValue46;
    objc_storeStrong(&v74->_noiseType4B, type4B);
    unsignedIntValue47 = instdBACopy;
    if (instdBACopy)
    {
      v74->_hasInstdBA = 1;
      unsignedIntValue47 = [instdBACopy unsignedIntValue];
    }

    else
    {
      v74->_hasInstdBA = 0;
    }

    v74->_instdBA = unsignedIntValue47;
    unsignedIntValue48 = bCCopy;
    if (bCCopy)
    {
      v74->_hasInstdBC = 1;
      unsignedIntValue48 = [bCCopy unsignedIntValue];
    }

    else
    {
      v74->_hasInstdBC = 0;
    }

    v74->_instdBC = unsignedIntValue48;
    unsignedIntValue49 = listeningModeCopy;
    if (listeningModeCopy)
    {
      v74->_hasNonCAListeningMode = 1;
      unsignedIntValue49 = [listeningModeCopy unsignedIntValue];
    }

    else
    {
      v74->_hasNonCAListeningMode = 0;
    }

    v74->_nonCAListeningMode = unsignedIntValue49;
    unsignedIntValue50 = fitCopy;
    if (fitCopy)
    {
      v74->_hasFit = 1;
      unsignedIntValue50 = [fitCopy unsignedIntValue];
    }

    else
    {
      v74->_hasFit = 0;
    }

    v74->_fit = unsignedIntValue50;
    unsignedIntValue51 = gainCopy;
    if (gainCopy)
    {
      v74->_hasFixedAutoAncGain = 1;
      unsignedIntValue51 = [gainCopy unsignedIntValue];
    }

    else
    {
      v74->_hasFixedAutoAncGain = 0;
    }

    v74->_fixedAutoAncGain = unsignedIntValue51;
    unsignedIntValue52 = v67;
    if (v67)
    {
      v74->_hasAdjustedAutoAncGain = 1;
      unsignedIntValue52 = [v67 unsignedIntValue];
    }

    else
    {
      v74->_hasAdjustedAutoAncGain = 0;
    }

    v74->_adjustedAutoAncGain = unsignedIntValue52;
    unsignedIntValue53 = v68;
    if (v68)
    {
      v74->_hasTimestamp = 1;
      unsignedIntValue53 = [v68 unsignedIntValue];
    }

    else
    {
      v74->_hasTimestamp = 0;
    }

    v74->_timestamp = unsignedIntValue53;
    if (v69)
    {
      v74->_hasDRCenablementBit = 1;
      unsignedIntValue54 = [v69 unsignedIntValue];
    }

    else
    {
      unsignedIntValue54 = 0;
      v74->_hasDRCenablementBit = 0;
    }

    v74->_DRCenablementBit = unsignedIntValue54;
    if (v70)
    {
      v74->_hasDRCwindFlag = 1;
      unsignedIntValue55 = [v70 unsignedIntValue];
    }

    else
    {
      unsignedIntValue55 = 0;
      v74->_hasDRCwindFlag = 0;
    }

    v74->_DRCwindFlag = unsignedIntValue55;
    if (v71)
    {
      v74->_hasDRCappSelfVoiceFlag = 1;
      unsignedIntValue56 = [v71 unsignedIntValue];
    }

    else
    {
      unsignedIntValue56 = 0;
      v74->_hasDRCappSelfVoiceFlag = 0;
    }

    v74->_DRCappSelfVoiceFlag = unsignedIntValue56;
    if (v72)
    {
      v74->_hasDrumDRC = 1;
      unsignedIntValue57 = [v72 unsignedIntValue];
    }

    else
    {
      unsignedIntValue57 = 0;
      v74->_hasDrumDRC = 0;
    }

    v74->_drumDRC = unsignedIntValue57;
    if (v73)
    {
      v74->_hasRoutedDRCGain = 1;
      unsignedIntValue58 = [v73 unsignedIntValue];
    }

    else
    {
      unsignedIntValue58 = 0;
      v74->_hasRoutedDRCGain = 0;
    }

    v74->_routedDRCGain = unsignedIntValue58;
  }

  v139 = v74;

  return v139;
}

+ (id)protoFields
{
  v72[68] = *MEMORY[0x1E69E9840];
  v71 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"controllerVersion" number:1 type:4 subMessageClass:0];
  v72[0] = v71;
  v70 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"refMicdBA" number:2 type:4 subMessageClass:0];
  v72[1] = v70;
  v69 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"refMicdBC" number:3 type:4 subMessageClass:0];
  v72[2] = v69;
  v68 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"drumdBA" number:4 type:4 subMessageClass:0];
  v72[3] = v68;
  v67 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"drumdBK" number:5 type:4 subMessageClass:0];
  v72[4] = v67;
  v66 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"drumdBAPredicted" number:6 type:4 subMessageClass:0];
  v72[5] = v66;
  v65 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"downlinkdBA" number:7 type:4 subMessageClass:0];
  v72[6] = v65;
  v64 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"currentVolumePrct" number:8 type:4 subMessageClass:0];
  v72[7] = v64;
  v63 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastUserVolChangeType" number:9 type:4 subMessageClass:0];
  v72[8] = v63;
  v62 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"headphoneMode" number:10 type:4 subMessageClass:0];
  v72[9] = v62;
  v61 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"streamType" number:11 type:4 subMessageClass:0];
  v72[10] = v61;
  v60 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"windSpeechAggressorFlag" number:12 type:4 subMessageClass:0];
  v72[11] = v60;
  v59 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"volumeChangeFlag" number:13 type:4 subMessageClass:0];
  v72[12] = v59;
  v58 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"speechPresenceProbability" number:14 type:4 subMessageClass:0];
  v72[13] = v58;
  v57 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personalizationParamSnr" number:15 type:2 subMessageClass:0];
  v72[14] = v57;
  v56 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personalizationParamMistakes" number:16 type:2 subMessageClass:0];
  v72[15] = v56;
  v55 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastEMediadBA" number:17 type:4 subMessageClass:0];
  v72[16] = v55;
  v54 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastVolMediaPrct" number:18 type:4 subMessageClass:0];
  v72[17] = v54;
  v53 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastETelephonydBA" number:19 type:4 subMessageClass:0];
  v72[18] = v53;
  v52 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastVolTelephonyPrct" number:20 type:4 subMessageClass:0];
  v72[19] = v52;
  v51 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastESiridBA" number:21 type:4 subMessageClass:0];
  v72[20] = v51;
  v50 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lastVolSiriPrct" number:22 type:4 subMessageClass:0];
  v72[21] = v50;
  v49 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smoothEae" number:23 type:4 subMessageClass:0];
  v72[22] = v49;
  v48 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"desiredDeltaE" number:24 type:2 subMessageClass:0];
  v72[23] = v48;
  v47 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predVolMediaPrct" number:25 type:2 subMessageClass:0];
  v72[24] = v47;
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predVolTelephonyPrct" number:26 type:2 subMessageClass:0];
  v72[25] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predVolSiriPrct" number:27 type:2 subMessageClass:0];
  v72[26] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"onStartPredictionFlag" number:28 type:4 subMessageClass:0];
  v72[27] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"guardrailsAvoidFlag" number:29 type:4 subMessageClass:0];
  v72[28] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"minMaxCutFlag" number:30 type:4 subMessageClass:0];
  v72[29] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"manualVolumeChangeFlag" number:31 type:4 subMessageClass:0];
  v72[30] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bigWindowSize" number:32 type:4 subMessageClass:0];
  v72[31] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smallWindowSize" number:33 type:4 subMessageClass:0];
  v72[32] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activeAppName" number:34 type:13 subMessageClass:0];
  v72[33] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activeAirpodsSerialNumber" number:35 type:13 subMessageClass:0];
  v72[34] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"anchorVol" number:36 type:4 subMessageClass:0];
  v72[35] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"anchorEnv" number:37 type:4 subMessageClass:0];
  v72[36] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personalizationCoeff" number:38 type:4 subMessageClass:0];
  v72[37] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"unsignedPredVolMediaPrct" number:39 type:4 subMessageClass:0];
  v72[38] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"unsignedPredVolTelephonyPrct" number:40 type:4 subMessageClass:0];
  v72[39] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"unsignedPredVolSiriPrct" number:41 type:4 subMessageClass:0];
  v72[40] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"singleBudFlag" number:42 type:4 subMessageClass:0];
  v72[41] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cdEngagementFlag" number:43 type:4 subMessageClass:0];
  v72[42] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"activeStreamFlag" number:44 type:4 subMessageClass:0];
  v72[43] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pvFeatureEnableFlag" number:45 type:4 subMessageClass:0];
  v72[44] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"envSpectralData32B" number:46 type:4 subMessageClass:0];
  v72[45] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"windStrength" number:47 type:4 subMessageClass:0];
  v72[46] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"windProb" number:48 type:4 subMessageClass:0];
  v72[47] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mediaType" number:49 type:4 subMessageClass:0];
  v72[48] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sourceActivity" number:50 type:4 subMessageClass:0];
  v72[49] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"budActivity" number:51 type:4 subMessageClass:0];
  v72[50] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"location" number:52 type:4 subMessageClass:0];
  v72[51] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"locationType" number:53 type:4 subMessageClass:0];
  v72[52] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"focusMode" number:54 type:4 subMessageClass:0];
  v72[53] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"streamingAppBundleId" number:55 type:4 subMessageClass:0];
  v72[54] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"noiseType4B" number:56 type:4 subMessageClass:0];
  v72[55] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"instdBA" number:57 type:4 subMessageClass:0];
  v72[56] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"instdBC" number:58 type:4 subMessageClass:0];
  v72[57] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nonCAListeningMode" number:59 type:4 subMessageClass:0];
  v72[58] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fit" number:60 type:4 subMessageClass:0];
  v72[59] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fixedAutoAncGain" number:61 type:4 subMessageClass:0];
  v72[60] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"adjustedAutoAncGain" number:62 type:4 subMessageClass:0];
  v72[61] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:63 type:4 subMessageClass:0];
  v72[62] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"DRCenablementBit" number:64 type:4 subMessageClass:0];
  v72[63] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"DRCwindFlag" number:65 type:4 subMessageClass:0];
  v72[64] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"DRCappSelfVoiceFlag" number:66 type:4 subMessageClass:0];
  v72[65] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"drumDRC" number:67 type:4 subMessageClass:0];
  v72[66] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"routedDRCGain" number:68 type:4 subMessageClass:0];
  v72[67] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:68];

  return v13;
}

id __33__BMDeviceAdaptiveVolume_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _noiseType_4BJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __33__BMDeviceAdaptiveVolume_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _noiseType4BJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __33__BMDeviceAdaptiveVolume_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _envSpectralData_32BJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __33__BMDeviceAdaptiveVolume_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _envSpectralData32BJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMDeviceAdaptiveVolume alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[21] = 0;
    }
  }

  return v4;
}

- (void)initWithControllerVersion:(void *)version refMicdBA:refMicdBC:drumdBA:drumdBK:drumdBAPredicted:downlinkdBA:currentVolumePrct:lastUserVolChangeType:headphoneMode:streamType:windSpeechAggressorFlag:volumeChangeFlag:speechPresenceProbability:personalizationParamSnr:personalizationParamMistakes:lastEMediadBA:lastVolMediaPrct:lastETelephonydBA:lastVolTelephonyPrct:lastESiridBA:lastVolSiriPrct:smoothEae:desiredDeltaE:predVolMediaPrct:predVolTelephonyPrct:predVolSiriPrct:onStartPredictionFlag:guardrailsAvoidFlag:minMaxCutFlag:manualVolumeChangeFlag:bigWindowSize:smallWindowSize:activeAppName:activeAirpodsSerialNumber:anchorVol:anchorEnv:personalizationCoeff:unsignedPredVolMediaPrct:unsignedPredVolTelephonyPrct:unsignedPredVolSiriPrct:singleBudFlag:cdEngagementFlag:activeStreamFlag:pvFeatureEnableFlag:envSpectralData_32B:wind_strength:wind_prob:mediaType:sourceActivity:budActivity:location:locationType:focusMode:streamingAppBundleId:noiseType_4B:instdBA:instdBC:nonCAListeningMode:fit:fixedAutoAncGain:adjustedAutoAncGain:timestamp:DRCenablementBit:DRCwindFlag:DRCappSelfVoiceFlag:drumDRC:routedDRCGain:
{

  return [version initWithControllerVersion:? refMicdBA:? refMicdBC:? drumdBA:? drumdBK:? drumdBAPredicted:? downlinkdBA:? currentVolumePrct:? lastUserVolChangeType:? headphoneMode:? streamType:? windSpeechAggressorFlag:? volumeChangeFlag:? speechPresenceProbability:? personalizationParamSnr:? personalizationParamMistakes:? lastEMediadBA:? lastVolMediaPrct:? lastETelephonydBA:? lastVolTelephonyPrct:? lastESiridBA:? lastVolSiriPrct:? smoothEae:? desiredDeltaE:? predVolMediaPrct:? predVolTelephonyPrct:? predVolSiriPrct:? onStartPredictionFlag:? guardrailsAvoidFlag:? minMaxCutFlag:? manualVolumeChangeFlag:? bigWindowSize:? smallWindowSize:? activeAppName:? activeAirpodsSerialNumber:? anchorVol:? anchorEnv:? personalizationCoeff:? unsignedPredVolMediaPrct:? unsignedPredVolTelephonyPrct:? unsignedPredVolSiriPrct:? singleBudFlag:? cdEngagementFlag:? activeStreamFlag:? pvFeatureEnableFlag:? envSpectralData32B:? windStrength:? windProb:? mediaType:? sourceActivity:? budActivity:? location:? locationType:? focusMode:? streamingAppBundleId:? noiseType4B:? instdBA:? instdBC:? nonCAListeningMode:? fit:? fixedAutoAncGain:? adjustedAutoAncGain:? timestamp:? DRCenablementBit:? DRCwindFlag:? DRCappSelfVoiceFlag:? drumDRC:? routedDRCGain:?];
}

- (BMDeviceAdaptiveVolume)initWithControllerVersion:(id)version refMicdBA:(id)a refMicdBC:(id)c drumdBA:(id)bA drumdBK:(id)k drumdBAPredicted:(id)predicted downlinkdBA:(id)downlinkdBA currentVolumePrct:(id)self0 lastUserVolChangeType:(id)self1 headphoneMode:(id)self2 streamType:(id)self3 windSpeechAggressorFlag:(id)self4 volumeChangeFlag:(id)self5 speechPresenceProbability:(id)self6 personalizationParamSnr:(id)self7 personalizationParamMistakes:(id)self8 lastEMediadBA:(id)self9 lastVolMediaPrct:(id)mediaPrct lastETelephonydBA:(id)telephonydBA lastVolTelephonyPrct:(id)telephonyPrct lastESiridBA:(id)siridBA lastVolSiriPrct:(id)siriPrct smoothEae:(id)eae desiredDeltaE:(id)e predVolMediaPrct:(id)volMediaPrct predVolTelephonyPrct:(id)volTelephonyPrct predVolSiriPrct:(id)volSiriPrct onStartPredictionFlag:(id)version0 guardrailsAvoidFlag:(id)version1 minMaxCutFlag:(id)version2 manualVolumeChangeFlag:(id)version3 bigWindowSize:(id)version4 smallWindowSize:(id)version5 activeAppName:(id)version6 activeAirpodsSerialNumber:(id)version7
{
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  return [BMDeviceAdaptiveVolume initWithControllerVersion:"initWithControllerVersion:refMicdBA:refMicdBC:drumdBA:drumdBK:drumdBAPredicted:downlinkdBA:currentVolumePrct:lastUserVolChangeType:headphoneMode:streamType:windSpeechAggressorFlag:volumeChangeFlag:speechPresenceProbability:personalizationParamSnr:personalizationParamMistakes:lastEMediadBA:lastVolMediaPrct:lastETelephonydBA:lastVolTelephonyPrct:lastESiridBA:lastVolSiriPrct:smoothEae:desiredDeltaE:predVolMediaPrct:predVolTelephonyPrct:predVolSiriPrct:onStartPredictionFlag:guardrailsAvoidFlag:minMaxCutFlag:manualVolumeChangeFlag:bigWindowSize:smallWindowSize:activeAppName:activeAirpodsSerialNumber:anchorVol:anchorEnv:personalizationCoeff:unsignedPredVolMediaPrct:unsignedPredVolTelephonyPrct:unsignedPredVolSiriPrct:singleBudFlag:cdEngagementFlag:activeStreamFlag:pvFeatureEnableFlag:envSpectralData_32B:wind_strength:wind_prob:mediaType:sourceActivity:budActivity:location:locationType:focusMode:streamingAppBundleId:noiseType_4B:instdBA:instdBC:nonCAListeningMode:fit:fixedAutoAncGain:adjustedAutoAncGain:timestamp:DRCenablementBit:DRCwindFlag:DRCappSelfVoiceFlag:" refMicdBA:version refMicdBC:a drumdBA:c drumdBK:bA drumdBAPredicted:k downlinkdBA:predicted currentVolumePrct:downlinkdBA lastUserVolChangeType:prct headphoneMode:type streamType:mode windSpeechAggressorFlag:streamType volumeChangeFlag:flag speechPresenceProbability:changeFlag personalizationParamSnr:probability personalizationParamMistakes:snr lastEMediadBA:mistakes lastVolMediaPrct:mediadBA lastETelephonydBA:mediaPrct lastVolTelephonyPrct:telephonydBA lastESiridBA:telephonyPrct lastVolSiriPrct:siridBA smoothEae:siriPrct desiredDeltaE:eae predVolMediaPrct:e predVolTelephonyPrct:volMediaPrct predVolSiriPrct:volTelephonyPrct onStartPredictionFlag:volSiriPrct guardrailsAvoidFlag:predictionFlag minMaxCutFlag:avoidFlag manualVolumeChangeFlag:cutFlag bigWindowSize:volumeChangeFlag smallWindowSize:size activeAppName:windowSize activeAirpodsSerialNumber:name anchorVol:number anchorEnv:0 personalizationCoeff:0 unsignedPredVolMediaPrct:0 unsignedPredVolTelephonyPrct:0 unsignedPredVolSiriPrct:0 singleBudFlag:0 cdEngagementFlag:0 activeStreamFlag:0 pvFeatureEnableFlag:0 envSpectralData_32B:0 wind_strength:MEMORY[0x1E695E0F0] wind_prob:0 mediaType:0 sourceActivity:0 budActivity:0 location:0 locationType:0 focusMode:0 streamingAppBundleId:0 noiseType_4B:0 instdBA:MEMORY[0x1E695E0F0] instdBC:0 nonCAListeningMode:0 fit:0 fixedAutoAncGain:0 adjustedAutoAncGain:0 timestamp:? DRCenablementBit:? DRCwindFlag:? DRCappSelfVoiceFlag:?];
}

@end