@interface BMDeviceConnectivityContext
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceConnectivityContext)initWithGeohash:(id)geohash counter:(id)counter event:(id)event ratType:(id)type rrcState:(id)state cellNsaEnabled:(id)enabled isFR1:(id)r1 cellARFCN:(id)self0 cellBandInfo:(id)self1 cellChannelBW:(id)self2 cellRsrp:(id)self3 cellSinr:(id)self4 cellLteRSRQ:(id)self5 cellNrRSRP:(id)self6 cellNrRSRQ:(id)self7 cellNrSNR:(id)self8 maxDLCAConfigured:(id)self9 totalConfiguredBw:(id)bw nrConfiguredBw:(id)configuredBw nrTotalScheduledMimoLayers:(id)layers totalConfiguredMimoLayers:(id)mimoLayers lteMaxScheduledMimoLayersInACell:(id)cell nrMaxDlModulation:(id)modulation actualHighBandwidth:(id)bandwidth actualLowBandwidth:(id)lowBandwidth pActualLowBandwidth:(id)actualLowBandwidth maxOfActualLowBandwidth:(id)ofActualLowBandwidth estimatedHighBandwidth:(id)geohash0 estimatedLowBandwidth:(id)geohash1 movingAvgHighBandwidth:(id)geohash2 movingAvgLowBandwidth:(id)geohash3 cmDataSentCount:(id)geohash4 cmDataSentDuration:(id)geohash5 tcpRTTAvg:(id)geohash6 tcpRTTvar:(id)geohash7 videoStreamingStallTime:(id)geohash8 numStall:(id)geohash9 stallDuration:(id)counter0 cellEstimatedBW:(id)counter1 cellLoad:(id)counter2 cellModelConfidenceLevel:(id)counter3 mlPredictedCellBW:(id)counter4 qbssLoad:(id)counter5 lqmScorecellular:(id)counter6;
- (BMDeviceConnectivityContext)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDeviceConnectivityContext

+ (id)columns
{
  v48[44] = *MEMORY[0x1E69E9840];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"geohash" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"counter" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"event" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ratType" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rrcState" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellNsaEnabled" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFR1" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellARFCN" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellBandInfo" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellChannelBW" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellRsrp" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:2 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellSinr" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:2 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellLteRSRQ" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:2 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellNrRSRP" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:2 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellNrRSRQ" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:2 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellNrSNR" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:2 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"maxDLCAConfigured" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:4 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalConfiguredBw" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:4 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nrConfiguredBw" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:4 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nrTotalScheduledMimoLayers" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:4 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalConfiguredMimoLayers" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:4 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lteMaxScheduledMimoLayersInACell" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:4 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nrMaxDlModulation" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:4 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"actualHighBandwidth" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:4 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"actualLowBandwidth" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:4 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"pActualLowBandwidth" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:4 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"maxOfActualLowBandwidth" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:4 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"estimatedHighBandwidth" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:4 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"estimatedLowBandwidth" dataType:0 requestOnly:0 fieldNumber:29 protoDataType:4 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"movingAvgHighBandwidth" dataType:0 requestOnly:0 fieldNumber:30 protoDataType:4 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"movingAvgLowBandwidth" dataType:0 requestOnly:0 fieldNumber:31 protoDataType:4 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cmDataSentCount" dataType:0 requestOnly:0 fieldNumber:32 protoDataType:4 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cmDataSentDuration" dataType:0 requestOnly:0 fieldNumber:33 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tcpRTTAvg" dataType:0 requestOnly:0 fieldNumber:34 protoDataType:4 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tcpRTTvar" dataType:0 requestOnly:0 fieldNumber:35 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"videoStreamingStallTime" dataType:0 requestOnly:0 fieldNumber:36 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numStall" dataType:0 requestOnly:0 fieldNumber:37 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stallDuration" dataType:0 requestOnly:0 fieldNumber:38 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellEstimatedBW" dataType:0 requestOnly:0 fieldNumber:39 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellLoad" dataType:0 requestOnly:0 fieldNumber:40 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cellModelConfidenceLevel" dataType:0 requestOnly:0 fieldNumber:41 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mlPredictedCellBW" dataType:0 requestOnly:0 fieldNumber:42 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"qbssLoad" dataType:0 requestOnly:0 fieldNumber:43 protoDataType:4 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"lqmScorecellular" dataType:0 requestOnly:0 fieldNumber:44 protoDataType:4 convertedType:0];
  v48[0] = v47;
  v48[1] = v46;
  v48[2] = v45;
  v48[3] = v44;
  v48[4] = v43;
  v48[5] = v42;
  v48[6] = v41;
  v48[7] = v40;
  v48[8] = v39;
  v48[9] = v38;
  v48[10] = v37;
  v48[11] = v36;
  v48[12] = v35;
  v48[13] = v34;
  v48[14] = v33;
  v48[15] = v32;
  v48[16] = v31;
  v48[17] = v30;
  v48[18] = v29;
  v48[19] = v28;
  v48[20] = v27;
  v48[21] = v26;
  v48[22] = v25;
  v48[23] = v24;
  v48[24] = v23;
  v48[25] = v22;
  v48[26] = v21;
  v48[27] = v20;
  v48[28] = v19;
  v48[29] = v18;
  v48[30] = v17;
  v48[31] = v16;
  v48[32] = v15;
  v48[33] = v14;
  v48[34] = v2;
  v48[35] = v3;
  v48[36] = v4;
  v48[37] = v5;
  v48[38] = v6;
  v48[39] = v7;
  v48[40] = v8;
  v48[41] = v9;
  v48[42] = v13;
  v48[43] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:44];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    geohash = [(BMDeviceConnectivityContext *)self geohash];
    geohash2 = [v5 geohash];
    v8 = geohash2;
    if (geohash == geohash2)
    {
    }

    else
    {
      geohash3 = [(BMDeviceConnectivityContext *)self geohash];
      geohash4 = [v5 geohash];
      v11 = [geohash3 isEqual:geohash4];

      if (!v11)
      {
        goto LABEL_221;
      }
    }

    if (-[BMDeviceConnectivityContext hasCounter](self, "hasCounter") || [v5 hasCounter])
    {
      if (![(BMDeviceConnectivityContext *)self hasCounter])
      {
        goto LABEL_221;
      }

      if (![v5 hasCounter])
      {
        goto LABEL_221;
      }

      counter = [(BMDeviceConnectivityContext *)self counter];
      if (counter != [v5 counter])
      {
        goto LABEL_221;
      }
    }

    if (-[BMDeviceConnectivityContext hasEvent](self, "hasEvent") || [v5 hasEvent])
    {
      if (![(BMDeviceConnectivityContext *)self hasEvent])
      {
        goto LABEL_221;
      }

      if (![v5 hasEvent])
      {
        goto LABEL_221;
      }

      event = [(BMDeviceConnectivityContext *)self event];
      if (event != [v5 event])
      {
        goto LABEL_221;
      }
    }

    ratType = [(BMDeviceConnectivityContext *)self ratType];
    ratType2 = [v5 ratType];
    v17 = ratType2;
    if (ratType == ratType2)
    {
    }

    else
    {
      ratType3 = [(BMDeviceConnectivityContext *)self ratType];
      ratType4 = [v5 ratType];
      v20 = [ratType3 isEqual:ratType4];

      if (!v20)
      {
        goto LABEL_221;
      }
    }

    if (!-[BMDeviceConnectivityContext hasRrcState](self, "hasRrcState") && ![v5 hasRrcState] || -[BMDeviceConnectivityContext hasRrcState](self, "hasRrcState") && objc_msgSend(v5, "hasRrcState") && (v21 = -[BMDeviceConnectivityContext rrcState](self, "rrcState"), v21 == objc_msgSend(v5, "rrcState")))
    {
      if (!-[BMDeviceConnectivityContext hasCellNsaEnabled](self, "hasCellNsaEnabled") && ![v5 hasCellNsaEnabled] || -[BMDeviceConnectivityContext hasCellNsaEnabled](self, "hasCellNsaEnabled") && objc_msgSend(v5, "hasCellNsaEnabled") && (v22 = -[BMDeviceConnectivityContext cellNsaEnabled](self, "cellNsaEnabled"), v22 == objc_msgSend(v5, "cellNsaEnabled")))
      {
        if (!-[BMDeviceConnectivityContext hasIsFR1](self, "hasIsFR1") && ![v5 hasIsFR1] || -[BMDeviceConnectivityContext hasIsFR1](self, "hasIsFR1") && objc_msgSend(v5, "hasIsFR1") && (v23 = -[BMDeviceConnectivityContext isFR1](self, "isFR1"), v23 == objc_msgSend(v5, "isFR1")))
        {
          if (!-[BMDeviceConnectivityContext hasCellARFCN](self, "hasCellARFCN") && ![v5 hasCellARFCN] || -[BMDeviceConnectivityContext hasCellARFCN](self, "hasCellARFCN") && objc_msgSend(v5, "hasCellARFCN") && (v24 = -[BMDeviceConnectivityContext cellARFCN](self, "cellARFCN"), v24 == objc_msgSend(v5, "cellARFCN")))
          {
            if (!-[BMDeviceConnectivityContext hasCellBandInfo](self, "hasCellBandInfo") && ![v5 hasCellBandInfo] || -[BMDeviceConnectivityContext hasCellBandInfo](self, "hasCellBandInfo") && objc_msgSend(v5, "hasCellBandInfo") && (v25 = -[BMDeviceConnectivityContext cellBandInfo](self, "cellBandInfo"), v25 == objc_msgSend(v5, "cellBandInfo")))
            {
              if (!-[BMDeviceConnectivityContext hasCellChannelBW](self, "hasCellChannelBW") && ![v5 hasCellChannelBW] || -[BMDeviceConnectivityContext hasCellChannelBW](self, "hasCellChannelBW") && objc_msgSend(v5, "hasCellChannelBW") && (v26 = -[BMDeviceConnectivityContext cellChannelBW](self, "cellChannelBW"), v26 == objc_msgSend(v5, "cellChannelBW")))
              {
                if (!-[BMDeviceConnectivityContext hasCellRsrp](self, "hasCellRsrp") && ![v5 hasCellRsrp] || -[BMDeviceConnectivityContext hasCellRsrp](self, "hasCellRsrp") && objc_msgSend(v5, "hasCellRsrp") && (v27 = -[BMDeviceConnectivityContext cellRsrp](self, "cellRsrp"), v27 == objc_msgSend(v5, "cellRsrp")))
                {
                  if (!-[BMDeviceConnectivityContext hasCellSinr](self, "hasCellSinr") && ![v5 hasCellSinr] || -[BMDeviceConnectivityContext hasCellSinr](self, "hasCellSinr") && objc_msgSend(v5, "hasCellSinr") && (v28 = -[BMDeviceConnectivityContext cellSinr](self, "cellSinr"), v28 == objc_msgSend(v5, "cellSinr")))
                  {
                    if (!-[BMDeviceConnectivityContext hasCellLteRSRQ](self, "hasCellLteRSRQ") && ![v5 hasCellLteRSRQ] || -[BMDeviceConnectivityContext hasCellLteRSRQ](self, "hasCellLteRSRQ") && objc_msgSend(v5, "hasCellLteRSRQ") && (v29 = -[BMDeviceConnectivityContext cellLteRSRQ](self, "cellLteRSRQ"), v29 == objc_msgSend(v5, "cellLteRSRQ")))
                    {
                      if (!-[BMDeviceConnectivityContext hasCellNrRSRP](self, "hasCellNrRSRP") && ![v5 hasCellNrRSRP] || -[BMDeviceConnectivityContext hasCellNrRSRP](self, "hasCellNrRSRP") && objc_msgSend(v5, "hasCellNrRSRP") && (v30 = -[BMDeviceConnectivityContext cellNrRSRP](self, "cellNrRSRP"), v30 == objc_msgSend(v5, "cellNrRSRP")))
                      {
                        if (!-[BMDeviceConnectivityContext hasCellNrRSRQ](self, "hasCellNrRSRQ") && ![v5 hasCellNrRSRQ] || -[BMDeviceConnectivityContext hasCellNrRSRQ](self, "hasCellNrRSRQ") && objc_msgSend(v5, "hasCellNrRSRQ") && (v31 = -[BMDeviceConnectivityContext cellNrRSRQ](self, "cellNrRSRQ"), v31 == objc_msgSend(v5, "cellNrRSRQ")))
                        {
                          if (!-[BMDeviceConnectivityContext hasCellNrSNR](self, "hasCellNrSNR") && ![v5 hasCellNrSNR] || -[BMDeviceConnectivityContext hasCellNrSNR](self, "hasCellNrSNR") && objc_msgSend(v5, "hasCellNrSNR") && (v32 = -[BMDeviceConnectivityContext cellNrSNR](self, "cellNrSNR"), v32 == objc_msgSend(v5, "cellNrSNR")))
                          {
                            if (!-[BMDeviceConnectivityContext hasMaxDLCAConfigured](self, "hasMaxDLCAConfigured") && ![v5 hasMaxDLCAConfigured] || -[BMDeviceConnectivityContext hasMaxDLCAConfigured](self, "hasMaxDLCAConfigured") && objc_msgSend(v5, "hasMaxDLCAConfigured") && (v33 = -[BMDeviceConnectivityContext maxDLCAConfigured](self, "maxDLCAConfigured"), v33 == objc_msgSend(v5, "maxDLCAConfigured")))
                            {
                              if (!-[BMDeviceConnectivityContext hasTotalConfiguredBw](self, "hasTotalConfiguredBw") && ![v5 hasTotalConfiguredBw] || -[BMDeviceConnectivityContext hasTotalConfiguredBw](self, "hasTotalConfiguredBw") && objc_msgSend(v5, "hasTotalConfiguredBw") && (v34 = -[BMDeviceConnectivityContext totalConfiguredBw](self, "totalConfiguredBw"), v34 == objc_msgSend(v5, "totalConfiguredBw")))
                              {
                                if (!-[BMDeviceConnectivityContext hasNrConfiguredBw](self, "hasNrConfiguredBw") && ![v5 hasNrConfiguredBw] || -[BMDeviceConnectivityContext hasNrConfiguredBw](self, "hasNrConfiguredBw") && objc_msgSend(v5, "hasNrConfiguredBw") && (v35 = -[BMDeviceConnectivityContext nrConfiguredBw](self, "nrConfiguredBw"), v35 == objc_msgSend(v5, "nrConfiguredBw")))
                                {
                                  if (!-[BMDeviceConnectivityContext hasNrTotalScheduledMimoLayers](self, "hasNrTotalScheduledMimoLayers") && ![v5 hasNrTotalScheduledMimoLayers] || -[BMDeviceConnectivityContext hasNrTotalScheduledMimoLayers](self, "hasNrTotalScheduledMimoLayers") && objc_msgSend(v5, "hasNrTotalScheduledMimoLayers") && (v36 = -[BMDeviceConnectivityContext nrTotalScheduledMimoLayers](self, "nrTotalScheduledMimoLayers"), v36 == objc_msgSend(v5, "nrTotalScheduledMimoLayers")))
                                  {
                                    if (!-[BMDeviceConnectivityContext hasTotalConfiguredMimoLayers](self, "hasTotalConfiguredMimoLayers") && ![v5 hasTotalConfiguredMimoLayers] || -[BMDeviceConnectivityContext hasTotalConfiguredMimoLayers](self, "hasTotalConfiguredMimoLayers") && objc_msgSend(v5, "hasTotalConfiguredMimoLayers") && (v37 = -[BMDeviceConnectivityContext totalConfiguredMimoLayers](self, "totalConfiguredMimoLayers"), v37 == objc_msgSend(v5, "totalConfiguredMimoLayers")))
                                    {
                                      if (!-[BMDeviceConnectivityContext hasLteMaxScheduledMimoLayersInACell](self, "hasLteMaxScheduledMimoLayersInACell") && ![v5 hasLteMaxScheduledMimoLayersInACell] || -[BMDeviceConnectivityContext hasLteMaxScheduledMimoLayersInACell](self, "hasLteMaxScheduledMimoLayersInACell") && objc_msgSend(v5, "hasLteMaxScheduledMimoLayersInACell") && (v38 = -[BMDeviceConnectivityContext lteMaxScheduledMimoLayersInACell](self, "lteMaxScheduledMimoLayersInACell"), v38 == objc_msgSend(v5, "lteMaxScheduledMimoLayersInACell")))
                                      {
                                        if (!-[BMDeviceConnectivityContext hasNrMaxDlModulation](self, "hasNrMaxDlModulation") && ![v5 hasNrMaxDlModulation] || -[BMDeviceConnectivityContext hasNrMaxDlModulation](self, "hasNrMaxDlModulation") && objc_msgSend(v5, "hasNrMaxDlModulation") && (v39 = -[BMDeviceConnectivityContext nrMaxDlModulation](self, "nrMaxDlModulation"), v39 == objc_msgSend(v5, "nrMaxDlModulation")))
                                        {
                                          if (!-[BMDeviceConnectivityContext hasActualHighBandwidth](self, "hasActualHighBandwidth") && ![v5 hasActualHighBandwidth] || -[BMDeviceConnectivityContext hasActualHighBandwidth](self, "hasActualHighBandwidth") && objc_msgSend(v5, "hasActualHighBandwidth") && (v40 = -[BMDeviceConnectivityContext actualHighBandwidth](self, "actualHighBandwidth"), v40 == objc_msgSend(v5, "actualHighBandwidth")))
                                          {
                                            if (!-[BMDeviceConnectivityContext hasActualLowBandwidth](self, "hasActualLowBandwidth") && ![v5 hasActualLowBandwidth] || -[BMDeviceConnectivityContext hasActualLowBandwidth](self, "hasActualLowBandwidth") && objc_msgSend(v5, "hasActualLowBandwidth") && (v41 = -[BMDeviceConnectivityContext actualLowBandwidth](self, "actualLowBandwidth"), v41 == objc_msgSend(v5, "actualLowBandwidth")))
                                            {
                                              if (!-[BMDeviceConnectivityContext hasPActualLowBandwidth](self, "hasPActualLowBandwidth") && ![v5 hasPActualLowBandwidth] || -[BMDeviceConnectivityContext hasPActualLowBandwidth](self, "hasPActualLowBandwidth") && objc_msgSend(v5, "hasPActualLowBandwidth") && (v42 = -[BMDeviceConnectivityContext pActualLowBandwidth](self, "pActualLowBandwidth"), v42 == objc_msgSend(v5, "pActualLowBandwidth")))
                                              {
                                                if (!-[BMDeviceConnectivityContext hasMaxOfActualLowBandwidth](self, "hasMaxOfActualLowBandwidth") && ![v5 hasMaxOfActualLowBandwidth] || -[BMDeviceConnectivityContext hasMaxOfActualLowBandwidth](self, "hasMaxOfActualLowBandwidth") && objc_msgSend(v5, "hasMaxOfActualLowBandwidth") && (v43 = -[BMDeviceConnectivityContext maxOfActualLowBandwidth](self, "maxOfActualLowBandwidth"), v43 == objc_msgSend(v5, "maxOfActualLowBandwidth")))
                                                {
                                                  if (!-[BMDeviceConnectivityContext hasEstimatedHighBandwidth](self, "hasEstimatedHighBandwidth") && ![v5 hasEstimatedHighBandwidth] || -[BMDeviceConnectivityContext hasEstimatedHighBandwidth](self, "hasEstimatedHighBandwidth") && objc_msgSend(v5, "hasEstimatedHighBandwidth") && (v44 = -[BMDeviceConnectivityContext estimatedHighBandwidth](self, "estimatedHighBandwidth"), v44 == objc_msgSend(v5, "estimatedHighBandwidth")))
                                                  {
                                                    if (!-[BMDeviceConnectivityContext hasEstimatedLowBandwidth](self, "hasEstimatedLowBandwidth") && ![v5 hasEstimatedLowBandwidth] || -[BMDeviceConnectivityContext hasEstimatedLowBandwidth](self, "hasEstimatedLowBandwidth") && objc_msgSend(v5, "hasEstimatedLowBandwidth") && (v45 = -[BMDeviceConnectivityContext estimatedLowBandwidth](self, "estimatedLowBandwidth"), v45 == objc_msgSend(v5, "estimatedLowBandwidth")))
                                                    {
                                                      if (!-[BMDeviceConnectivityContext hasMovingAvgHighBandwidth](self, "hasMovingAvgHighBandwidth") && ![v5 hasMovingAvgHighBandwidth] || -[BMDeviceConnectivityContext hasMovingAvgHighBandwidth](self, "hasMovingAvgHighBandwidth") && objc_msgSend(v5, "hasMovingAvgHighBandwidth") && (v46 = -[BMDeviceConnectivityContext movingAvgHighBandwidth](self, "movingAvgHighBandwidth"), v46 == objc_msgSend(v5, "movingAvgHighBandwidth")))
                                                      {
                                                        if (!-[BMDeviceConnectivityContext hasMovingAvgLowBandwidth](self, "hasMovingAvgLowBandwidth") && ![v5 hasMovingAvgLowBandwidth] || -[BMDeviceConnectivityContext hasMovingAvgLowBandwidth](self, "hasMovingAvgLowBandwidth") && objc_msgSend(v5, "hasMovingAvgLowBandwidth") && (v47 = -[BMDeviceConnectivityContext movingAvgLowBandwidth](self, "movingAvgLowBandwidth"), v47 == objc_msgSend(v5, "movingAvgLowBandwidth")))
                                                        {
                                                          if (!-[BMDeviceConnectivityContext hasCmDataSentCount](self, "hasCmDataSentCount") && ![v5 hasCmDataSentCount] || -[BMDeviceConnectivityContext hasCmDataSentCount](self, "hasCmDataSentCount") && objc_msgSend(v5, "hasCmDataSentCount") && (v48 = -[BMDeviceConnectivityContext cmDataSentCount](self, "cmDataSentCount"), v48 == objc_msgSend(v5, "cmDataSentCount")))
                                                          {
                                                            if (!-[BMDeviceConnectivityContext hasCmDataSentDuration](self, "hasCmDataSentDuration") && ![v5 hasCmDataSentDuration] || -[BMDeviceConnectivityContext hasCmDataSentDuration](self, "hasCmDataSentDuration") && objc_msgSend(v5, "hasCmDataSentDuration") && (v49 = -[BMDeviceConnectivityContext cmDataSentDuration](self, "cmDataSentDuration"), v49 == objc_msgSend(v5, "cmDataSentDuration")))
                                                            {
                                                              if (!-[BMDeviceConnectivityContext hasTcpRTTAvg](self, "hasTcpRTTAvg") && ![v5 hasTcpRTTAvg] || -[BMDeviceConnectivityContext hasTcpRTTAvg](self, "hasTcpRTTAvg") && objc_msgSend(v5, "hasTcpRTTAvg") && (v50 = -[BMDeviceConnectivityContext tcpRTTAvg](self, "tcpRTTAvg"), v50 == objc_msgSend(v5, "tcpRTTAvg")))
                                                              {
                                                                if (!-[BMDeviceConnectivityContext hasTcpRTTvar](self, "hasTcpRTTvar") && ![v5 hasTcpRTTvar] || -[BMDeviceConnectivityContext hasTcpRTTvar](self, "hasTcpRTTvar") && objc_msgSend(v5, "hasTcpRTTvar") && (v51 = -[BMDeviceConnectivityContext tcpRTTvar](self, "tcpRTTvar"), v51 == objc_msgSend(v5, "tcpRTTvar")))
                                                                {
                                                                  if (!-[BMDeviceConnectivityContext hasVideoStreamingStallTime](self, "hasVideoStreamingStallTime") && ![v5 hasVideoStreamingStallTime] || -[BMDeviceConnectivityContext hasVideoStreamingStallTime](self, "hasVideoStreamingStallTime") && objc_msgSend(v5, "hasVideoStreamingStallTime") && (v52 = -[BMDeviceConnectivityContext videoStreamingStallTime](self, "videoStreamingStallTime"), v52 == objc_msgSend(v5, "videoStreamingStallTime")))
                                                                  {
                                                                    if (!-[BMDeviceConnectivityContext hasNumStall](self, "hasNumStall") && ![v5 hasNumStall] || -[BMDeviceConnectivityContext hasNumStall](self, "hasNumStall") && objc_msgSend(v5, "hasNumStall") && (v53 = -[BMDeviceConnectivityContext numStall](self, "numStall"), v53 == objc_msgSend(v5, "numStall")))
                                                                    {
                                                                      if (!-[BMDeviceConnectivityContext hasStallDuration](self, "hasStallDuration") && ![v5 hasStallDuration] || -[BMDeviceConnectivityContext hasStallDuration](self, "hasStallDuration") && objc_msgSend(v5, "hasStallDuration") && (v54 = -[BMDeviceConnectivityContext stallDuration](self, "stallDuration"), v54 == objc_msgSend(v5, "stallDuration")))
                                                                      {
                                                                        if (!-[BMDeviceConnectivityContext hasCellEstimatedBW](self, "hasCellEstimatedBW") && ![v5 hasCellEstimatedBW] || -[BMDeviceConnectivityContext hasCellEstimatedBW](self, "hasCellEstimatedBW") && objc_msgSend(v5, "hasCellEstimatedBW") && (v55 = -[BMDeviceConnectivityContext cellEstimatedBW](self, "cellEstimatedBW"), v55 == objc_msgSend(v5, "cellEstimatedBW")))
                                                                        {
                                                                          if (!-[BMDeviceConnectivityContext hasCellLoad](self, "hasCellLoad") && ![v5 hasCellLoad] || -[BMDeviceConnectivityContext hasCellLoad](self, "hasCellLoad") && objc_msgSend(v5, "hasCellLoad") && (v56 = -[BMDeviceConnectivityContext cellLoad](self, "cellLoad"), v56 == objc_msgSend(v5, "cellLoad")))
                                                                          {
                                                                            if (!-[BMDeviceConnectivityContext hasCellModelConfidenceLevel](self, "hasCellModelConfidenceLevel") && ![v5 hasCellModelConfidenceLevel] || -[BMDeviceConnectivityContext hasCellModelConfidenceLevel](self, "hasCellModelConfidenceLevel") && objc_msgSend(v5, "hasCellModelConfidenceLevel") && (v57 = -[BMDeviceConnectivityContext cellModelConfidenceLevel](self, "cellModelConfidenceLevel"), v57 == objc_msgSend(v5, "cellModelConfidenceLevel")))
                                                                            {
                                                                              if (!-[BMDeviceConnectivityContext hasMlPredictedCellBW](self, "hasMlPredictedCellBW") && ![v5 hasMlPredictedCellBW] || -[BMDeviceConnectivityContext hasMlPredictedCellBW](self, "hasMlPredictedCellBW") && objc_msgSend(v5, "hasMlPredictedCellBW") && (v58 = -[BMDeviceConnectivityContext mlPredictedCellBW](self, "mlPredictedCellBW"), v58 == objc_msgSend(v5, "mlPredictedCellBW")))
                                                                              {
                                                                                if (!-[BMDeviceConnectivityContext hasQbssLoad](self, "hasQbssLoad") && ![v5 hasQbssLoad] || -[BMDeviceConnectivityContext hasQbssLoad](self, "hasQbssLoad") && objc_msgSend(v5, "hasQbssLoad") && (v59 = -[BMDeviceConnectivityContext qbssLoad](self, "qbssLoad"), v59 == objc_msgSend(v5, "qbssLoad")))
                                                                                {
                                                                                  if (!-[BMDeviceConnectivityContext hasLqmScorecellular](self, "hasLqmScorecellular") && ![v5 hasLqmScorecellular])
                                                                                  {
                                                                                    v12 = 1;
                                                                                    goto LABEL_222;
                                                                                  }

                                                                                  if (-[BMDeviceConnectivityContext hasLqmScorecellular](self, "hasLqmScorecellular") && [v5 hasLqmScorecellular])
                                                                                  {
                                                                                    lqmScorecellular = [(BMDeviceConnectivityContext *)self lqmScorecellular];
                                                                                    v12 = lqmScorecellular == [v5 lqmScorecellular];
LABEL_222:

                                                                                    goto LABEL_223;
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
          }
        }
      }
    }

LABEL_221:
    v12 = 0;
    goto LABEL_222;
  }

  v12 = 0;
LABEL_223:

  return v12;
}

- (id)jsonDictionary
{
  v142[44] = *MEMORY[0x1E69E9840];
  geohash = [(BMDeviceConnectivityContext *)self geohash];
  if ([(BMDeviceConnectivityContext *)self hasCounter])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext counter](self, "counter")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasEvent])
  {
    v104 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext event](self, "event")}];
  }

  else
  {
    v104 = 0;
  }

  ratType = [(BMDeviceConnectivityContext *)self ratType];
  if ([(BMDeviceConnectivityContext *)self hasRrcState])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext rrcState](self, "rrcState")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellNsaEnabled])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceConnectivityContext cellNsaEnabled](self, "cellNsaEnabled")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasIsFR1])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceConnectivityContext isFR1](self, "isFR1")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellARFCN])
  {
    v140 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellARFCN](self, "cellARFCN")}];
  }

  else
  {
    v140 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellBandInfo])
  {
    v139 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellBandInfo](self, "cellBandInfo")}];
  }

  else
  {
    v139 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellChannelBW])
  {
    v138 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellChannelBW](self, "cellChannelBW")}];
  }

  else
  {
    v138 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellRsrp])
  {
    v137 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellRsrp](self, "cellRsrp")}];
  }

  else
  {
    v137 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellSinr])
  {
    v136 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellSinr](self, "cellSinr")}];
  }

  else
  {
    v136 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellLteRSRQ])
  {
    v135 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellLteRSRQ](self, "cellLteRSRQ")}];
  }

  else
  {
    v135 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellNrRSRP])
  {
    v134 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellNrRSRP](self, "cellNrRSRP")}];
  }

  else
  {
    v134 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellNrRSRQ])
  {
    v133 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellNrRSRQ](self, "cellNrRSRQ")}];
  }

  else
  {
    v133 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellNrSNR])
  {
    v132 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellNrSNR](self, "cellNrSNR")}];
  }

  else
  {
    v132 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasMaxDLCAConfigured])
  {
    v131 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext maxDLCAConfigured](self, "maxDLCAConfigured")}];
  }

  else
  {
    v131 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasTotalConfiguredBw])
  {
    v130 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext totalConfiguredBw](self, "totalConfiguredBw")}];
  }

  else
  {
    v130 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasNrConfiguredBw])
  {
    v129 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext nrConfiguredBw](self, "nrConfiguredBw")}];
  }

  else
  {
    v129 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasNrTotalScheduledMimoLayers])
  {
    v128 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext nrTotalScheduledMimoLayers](self, "nrTotalScheduledMimoLayers")}];
  }

  else
  {
    v128 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasTotalConfiguredMimoLayers])
  {
    v127 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext totalConfiguredMimoLayers](self, "totalConfiguredMimoLayers")}];
  }

  else
  {
    v127 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasLteMaxScheduledMimoLayersInACell])
  {
    v126 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext lteMaxScheduledMimoLayersInACell](self, "lteMaxScheduledMimoLayersInACell")}];
  }

  else
  {
    v126 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasNrMaxDlModulation])
  {
    v125 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext nrMaxDlModulation](self, "nrMaxDlModulation")}];
  }

  else
  {
    v125 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasActualHighBandwidth])
  {
    v124 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext actualHighBandwidth](self, "actualHighBandwidth")}];
  }

  else
  {
    v124 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasActualLowBandwidth])
  {
    v123 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext actualLowBandwidth](self, "actualLowBandwidth")}];
  }

  else
  {
    v123 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasPActualLowBandwidth])
  {
    v122 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext pActualLowBandwidth](self, "pActualLowBandwidth")}];
  }

  else
  {
    v122 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasMaxOfActualLowBandwidth])
  {
    v121 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext maxOfActualLowBandwidth](self, "maxOfActualLowBandwidth")}];
  }

  else
  {
    v121 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasEstimatedHighBandwidth])
  {
    v120 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext estimatedHighBandwidth](self, "estimatedHighBandwidth")}];
  }

  else
  {
    v120 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasEstimatedLowBandwidth])
  {
    v119 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext estimatedLowBandwidth](self, "estimatedLowBandwidth")}];
  }

  else
  {
    v119 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasMovingAvgHighBandwidth])
  {
    v118 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext movingAvgHighBandwidth](self, "movingAvgHighBandwidth")}];
  }

  else
  {
    v118 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasMovingAvgLowBandwidth])
  {
    v117 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext movingAvgLowBandwidth](self, "movingAvgLowBandwidth")}];
  }

  else
  {
    v117 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCmDataSentCount])
  {
    v116 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cmDataSentCount](self, "cmDataSentCount")}];
  }

  else
  {
    v116 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCmDataSentDuration])
  {
    v115 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cmDataSentDuration](self, "cmDataSentDuration")}];
  }

  else
  {
    v115 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasTcpRTTAvg])
  {
    v114 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext tcpRTTAvg](self, "tcpRTTAvg")}];
  }

  else
  {
    v114 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasTcpRTTvar])
  {
    v113 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext tcpRTTvar](self, "tcpRTTvar")}];
  }

  else
  {
    v113 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasVideoStreamingStallTime])
  {
    v112 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext videoStreamingStallTime](self, "videoStreamingStallTime")}];
  }

  else
  {
    v112 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasNumStall])
  {
    v111 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext numStall](self, "numStall")}];
  }

  else
  {
    v111 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasStallDuration])
  {
    v110 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext stallDuration](self, "stallDuration")}];
  }

  else
  {
    v110 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellEstimatedBW])
  {
    v109 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellEstimatedBW](self, "cellEstimatedBW")}];
  }

  else
  {
    v109 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellLoad])
  {
    v108 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellLoad](self, "cellLoad")}];
  }

  else
  {
    v108 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasCellModelConfidenceLevel])
  {
    v107 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellModelConfidenceLevel](self, "cellModelConfidenceLevel")}];
  }

  else
  {
    v107 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasMlPredictedCellBW])
  {
    v106 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext mlPredictedCellBW](self, "mlPredictedCellBW")}];
  }

  else
  {
    v106 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasQbssLoad])
  {
    v105 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext qbssLoad](self, "qbssLoad")}];
  }

  else
  {
    v105 = 0;
  }

  if ([(BMDeviceConnectivityContext *)self hasLqmScorecellular])
  {
    null44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext lqmScorecellular](self, "lqmScorecellular")}];
  }

  else
  {
    null44 = 0;
  }

  v141[0] = @"geohash";
  null = geohash;
  if (!geohash)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v95 = null;
  v142[0] = null;
  v141[1] = @"counter";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v94 = null2;
  v142[1] = null2;
  v141[2] = @"event";
  null3 = v104;
  if (!v104)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v93 = null3;
  v142[2] = null3;
  v141[3] = @"ratType";
  null4 = ratType;
  if (!ratType)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v92 = null4;
  v142[3] = null4;
  v141[4] = @"rrcState";
  null5 = v6;
  if (!v6)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v91 = null5;
  v142[4] = null5;
  v141[5] = @"cellNsaEnabled";
  null6 = v7;
  if (!v7)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v90 = null6;
  v142[5] = null6;
  v141[6] = @"isFR1";
  null7 = v8;
  if (!v8)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v89 = null7;
  v142[6] = null7;
  v141[7] = @"cellARFCN";
  null8 = v140;
  if (!v140)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v142[7] = null8;
  v141[8] = @"cellBandInfo";
  null9 = v139;
  if (!v139)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v142[8] = null9;
  v141[9] = @"cellChannelBW";
  null10 = v138;
  if (!v138)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = ratType;
  v98 = null10;
  v142[9] = null10;
  v141[10] = @"cellRsrp";
  null11 = v137;
  if (!v137)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = geohash;
  v97 = null11;
  v142[10] = null11;
  v141[11] = @"cellSinr";
  null12 = v136;
  if (!v136)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null12;
  v142[11] = null12;
  v141[12] = @"cellLteRSRQ";
  null13 = v135;
  if (!v135)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v86 = null13;
  v142[12] = null13;
  v141[13] = @"cellNrRSRP";
  null14 = v134;
  if (!v134)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v85 = null14;
  v142[13] = null14;
  v141[14] = @"cellNrRSRQ";
  null15 = v133;
  if (!v133)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v84 = null15;
  v142[14] = null15;
  v141[15] = @"cellNrSNR";
  null16 = v132;
  if (!v132)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v83 = null16;
  v142[15] = null16;
  v141[16] = @"maxDLCAConfigured";
  null17 = v131;
  if (!v131)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = null17;
  v142[16] = null17;
  v141[17] = @"totalConfiguredBw";
  null18 = v130;
  if (!v130)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = null18;
  v142[17] = null18;
  v141[18] = @"nrConfiguredBw";
  null19 = v129;
  if (!v129)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = null19;
  v142[18] = null19;
  v141[19] = @"nrTotalScheduledMimoLayers";
  null20 = v128;
  if (!v128)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = null20;
  v142[19] = null20;
  v141[20] = @"totalConfiguredMimoLayers";
  null21 = v127;
  if (!v127)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = null21;
  v142[20] = null21;
  v141[21] = @"lteMaxScheduledMimoLayersInACell";
  null22 = v126;
  if (!v126)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v77 = null22;
  v142[21] = null22;
  v141[22] = @"nrMaxDlModulation";
  null23 = v125;
  if (!v125)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = null23;
  v142[22] = null23;
  v141[23] = @"actualHighBandwidth";
  null24 = v124;
  if (!v124)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = null24;
  v142[23] = null24;
  v141[24] = @"actualLowBandwidth";
  null25 = v123;
  if (!v123)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = null25;
  v142[24] = null25;
  v141[25] = @"pActualLowBandwidth";
  null26 = v122;
  if (!v122)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = null26;
  v142[25] = null26;
  v141[26] = @"maxOfActualLowBandwidth";
  null27 = v121;
  if (!v121)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = null27;
  v142[26] = null27;
  v141[27] = @"estimatedHighBandwidth";
  null28 = v120;
  if (!v120)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v71 = null28;
  v142[27] = null28;
  v141[28] = @"estimatedLowBandwidth";
  null29 = v119;
  if (!v119)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = null29;
  v142[28] = null29;
  v141[29] = @"movingAvgHighBandwidth";
  null30 = v118;
  if (!v118)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = null30;
  v142[29] = null30;
  v141[30] = @"movingAvgLowBandwidth";
  null31 = v117;
  if (!v117)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = null31;
  v142[30] = null31;
  v141[31] = @"cmDataSentCount";
  null32 = v116;
  if (!v116)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = null32;
  v142[31] = null32;
  v141[32] = @"cmDataSentDuration";
  null33 = v115;
  if (!v115)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null33;
  v142[32] = null33;
  v141[33] = @"tcpRTTAvg";
  null34 = v114;
  if (!v114)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = null34;
  v142[33] = null34;
  v141[34] = @"tcpRTTvar";
  null35 = v113;
  if (!v113)
  {
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v102 = v4;
  v64 = null35;
  v142[34] = null35;
  v141[35] = @"videoStreamingStallTime";
  null36 = v112;
  if (!v112)
  {
    null36 = [MEMORY[0x1E695DFB0] null];
  }

  v101 = v6;
  v63 = null36;
  v142[35] = null36;
  v141[36] = @"numStall";
  null37 = v111;
  if (!v111)
  {
    null37 = [MEMORY[0x1E695DFB0] null];
  }

  v88 = null8;
  v62 = null37;
  v142[36] = null37;
  v141[37] = @"stallDuration";
  null38 = v110;
  if (!v110)
  {
    null38 = [MEMORY[0x1E695DFB0] null];
  }

  v100 = v7;
  v60 = null38;
  v142[37] = null38;
  v141[38] = @"cellEstimatedBW";
  null39 = v109;
  if (!v109)
  {
    null39 = [MEMORY[0x1E695DFB0] null];
  }

  v99 = v22;
  v142[38] = null39;
  v141[39] = @"cellLoad";
  null40 = v108;
  if (!v108)
  {
    null40 = [MEMORY[0x1E695DFB0] null];
  }

  v87 = null9;
  v103 = null44;
  v142[39] = null40;
  v141[40] = @"cellModelConfidenceLevel";
  null41 = v107;
  if (!v107)
  {
    null41 = [MEMORY[0x1E695DFB0] null];
  }

  v142[40] = null41;
  v141[41] = @"mlPredictedCellBW";
  null42 = v106;
  if (!v106)
  {
    null42 = [MEMORY[0x1E695DFB0] null];
  }

  v55 = v8;
  v142[41] = null42;
  v141[42] = @"qbssLoad";
  null43 = v105;
  if (!v105)
  {
    null43 = [MEMORY[0x1E695DFB0] null];
  }

  v142[42] = null43;
  v141[43] = @"lqmScorecellular";
  v57 = null44;
  if (!null44)
  {
    null44 = [MEMORY[0x1E695DFB0] null];
  }

  v142[43] = null44;
  v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v142 forKeys:v141 count:{44, v60}];
  if (!v57)
  {
  }

  v58 = v24;
  if (!v105)
  {

    v58 = v24;
  }

  if (!v106)
  {

    v58 = v24;
  }

  if (!v107)
  {

    v58 = v24;
  }

  if (!v108)
  {

    v58 = v24;
  }

  if (!v109)
  {

    v58 = v24;
  }

  if (!v110)
  {

    v58 = v24;
  }

  if (!v111)
  {

    v58 = v24;
  }

  if (!v112)
  {

    v58 = v24;
  }

  if (!v113)
  {

    v58 = v24;
  }

  if (!v114)
  {

    v58 = v24;
  }

  if (!v115)
  {

    v58 = v24;
  }

  if (!v116)
  {

    v58 = v24;
  }

  if (!v117)
  {

    v58 = v24;
  }

  if (!v118)
  {

    v58 = v24;
  }

  if (!v119)
  {

    v58 = v24;
  }

  if (!v120)
  {

    v58 = v24;
  }

  if (!v121)
  {

    v58 = v24;
  }

  if (!v122)
  {

    v58 = v24;
  }

  if (!v123)
  {

    v58 = v24;
  }

  if (!v124)
  {

    v58 = v24;
  }

  if (!v125)
  {

    v58 = v24;
  }

  if (!v126)
  {

    v58 = v24;
  }

  if (!v127)
  {

    v58 = v24;
  }

  if (!v128)
  {

    v58 = v24;
  }

  if (!v129)
  {

    v58 = v24;
  }

  if (!v130)
  {

    v58 = v24;
  }

  if (!v131)
  {

    v58 = v24;
  }

  if (!v132)
  {

    v58 = v24;
  }

  if (!v133)
  {

    v58 = v24;
  }

  if (!v134)
  {

    v58 = v24;
  }

  if (!v135)
  {

    v58 = v24;
  }

  if (!v136)
  {
  }

  if (!v137)
  {
  }

  if (!v138)
  {
  }

  if (!v139)
  {
  }

  if (v140)
  {
    if (v55)
    {
      goto LABEL_289;
    }
  }

  else
  {

    if (v55)
    {
LABEL_289:
      if (v100)
      {
        goto LABEL_290;
      }

      goto LABEL_300;
    }
  }

  if (v100)
  {
LABEL_290:
    if (v101)
    {
      goto LABEL_291;
    }

    goto LABEL_301;
  }

LABEL_300:

  if (v101)
  {
LABEL_291:
    if (v20)
    {
      goto LABEL_292;
    }

    goto LABEL_302;
  }

LABEL_301:

  if (v20)
  {
LABEL_292:
    if (v104)
    {
      goto LABEL_293;
    }

    goto LABEL_303;
  }

LABEL_302:

  if (v104)
  {
LABEL_293:
    if (v102)
    {
      goto LABEL_294;
    }

LABEL_304:

    if (v99)
    {
      goto LABEL_295;
    }

    goto LABEL_305;
  }

LABEL_303:

  if (!v102)
  {
    goto LABEL_304;
  }

LABEL_294:
  if (v99)
  {
    goto LABEL_295;
  }

LABEL_305:

LABEL_295:

  return v96;
}

- (BMDeviceConnectivityContext)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v491[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v403 = [dictionaryCopy objectForKeyedSubscript:@"geohash"];
  if (!v403 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v401 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v401 = v403;
LABEL_4:
    v402 = [dictionaryCopy objectForKeyedSubscript:@"counter"];
    if (!v402 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v400 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v400 = v402;
LABEL_7:
      v7 = [dictionaryCopy objectForKeyedSubscript:@"event"];
      if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        errorCopy2 = error;
        error = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        error = v7;
LABEL_10:
        v9 = [dictionaryCopy objectForKeyedSubscript:@"ratType"];
        if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v398 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v398 = v9;
LABEL_13:
          v10 = [dictionaryCopy objectForKeyedSubscript:@"rrcState"];
          selfCopy = self;
          if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v392 = v10;
            v396 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v392 = v10;
            v396 = v10;
LABEL_16:
            v399 = [dictionaryCopy objectForKeyedSubscript:@"cellNsaEnabled"];
            if (!v399 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v394 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v394 = v399;
LABEL_19:
              v397 = [dictionaryCopy objectForKeyedSubscript:@"isFR1"];
              errorCopy3 = error;
              if (!v397 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v391 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v391 = v397;
LABEL_22:
                v11 = [dictionaryCopy objectForKeyedSubscript:@"cellARFCN"];
                v390 = v11;
                if (!v11 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v388 = 0;
                  goto LABEL_25;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v388 = v12;
LABEL_25:
                  v13 = [dictionaryCopy objectForKeyedSubscript:@"cellBandInfo"];
                  v349 = v13;
                  if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v348 = 0;
                    goto LABEL_28;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v348 = v14;
LABEL_28:
                    v15 = [dictionaryCopy objectForKeyedSubscript:@"cellChannelBW"];
                    v346 = v15;
                    if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v345 = 0;
LABEL_31:
                      v17 = [dictionaryCopy objectForKeyedSubscript:@"cellRsrp"];
                      v344 = v17;
                      if (!v17)
                      {
                        goto LABEL_69;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v17 = 0;
                        goto LABEL_69;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v17 = v17;
LABEL_69:
                        [dictionaryCopy objectForKeyedSubscript:@"cellSinr"];
                        v49 = v48 = errorCopy2;
                        v342 = v17;
                        if (!v49 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v341 = 0;
                          goto LABEL_72;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v341 = v49;
LABEL_72:
                          v50 = [dictionaryCopy objectForKeyedSubscript:@"cellLteRSRQ"];
                          v343 = v50;
                          if (!v50 || (v51 = v50, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v336 = 0;
                            goto LABEL_75;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v336 = v51;
LABEL_75:
                            v52 = [dictionaryCopy objectForKeyedSubscript:@"cellNrRSRP"];
                            v337 = v52;
                            if (!v52 || (v53 = v52, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v54 = v49;
                              v338 = 0;
                              goto LABEL_78;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v54 = v49;
                              v338 = v53;
LABEL_78:
                              v55 = [dictionaryCopy objectForKeyedSubscript:@"cellNrRSRQ"];
                              v333 = v54;
                              v335 = v55;
                              if (!v55 || (v56 = v55, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v57 = 0;
                                goto LABEL_81;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v57 = v56;
LABEL_81:
                                v58 = [dictionaryCopy objectForKeyedSubscript:@"cellNrSNR"];
                                v334 = v58;
                                if (!v58 || (v59 = v58, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v329 = v48;
                                  v339 = 0;
LABEL_84:
                                  v330 = v57;
                                  v60 = [dictionaryCopy objectForKeyedSubscript:@"maxDLCAConfigured"];
                                  v331 = v60;
                                  if (!v60)
                                  {
                                    v332 = 0;
                                    v63 = v339;
                                    goto LABEL_119;
                                  }

                                  v61 = v60;
                                  objc_opt_class();
                                  v62 = v339;
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v63 = v339;
                                    v332 = 0;
                                    goto LABEL_119;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v63 = v339;
                                    v332 = v61;
LABEL_119:
                                    v89 = [dictionaryCopy objectForKeyedSubscript:@"totalConfiguredBw"];
                                    v328 = v89;
                                    if (!v89 || (v90 = v89, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v91 = 0;
LABEL_122:
                                      [dictionaryCopy objectForKeyedSubscript:@"nrConfiguredBw"];
                                      v92 = v62 = v63;
                                      v327 = v92;
                                      v340 = v62;
                                      if (!v92)
                                      {
                                        goto LABEL_137;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v92 = 0;
                                        goto LABEL_137;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v92 = v92;
LABEL_137:
                                        v101 = v91;
                                        v102 = [dictionaryCopy objectForKeyedSubscript:@"nrTotalScheduledMimoLayers"];
                                        v325 = v102;
                                        v326 = v92;
                                        if (!v102 || (v103 = v102, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v324 = 0;
LABEL_140:
                                          v104 = [dictionaryCopy objectForKeyedSubscript:@"totalConfiguredMimoLayers"];
                                          v105 = v101;
                                          v323 = v104;
                                          if (!v104)
                                          {
                                            v322 = 0;
                                            v62 = v340;
                                            goto LABEL_156;
                                          }

                                          v106 = v104;
                                          objc_opt_class();
                                          v62 = v340;
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v322 = 0;
                                            goto LABEL_156;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v322 = v106;
LABEL_156:
                                            v115 = [dictionaryCopy objectForKeyedSubscript:@"lteMaxScheduledMimoLayersInACell"];
                                            v321 = v115;
                                            if (!v115 || (v116 = v115, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v320 = 0;
                                              goto LABEL_159;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v320 = v116;
LABEL_159:
                                              v117 = [dictionaryCopy objectForKeyedSubscript:@"nrMaxDlModulation"];
                                              v319 = v117;
                                              if (!v117 || (v118 = v117, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v318 = 0;
                                                goto LABEL_162;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v318 = v118;
LABEL_162:
                                                v119 = [dictionaryCopy objectForKeyedSubscript:@"actualHighBandwidth"];
                                                v317 = v119;
                                                if (!v119 || (v120 = v119, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v316 = 0;
                                                  goto LABEL_165;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v316 = v120;
LABEL_165:
                                                  v121 = [dictionaryCopy objectForKeyedSubscript:@"actualLowBandwidth"];
                                                  v315 = v121;
                                                  if (!v121 || (v122 = v121, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v314 = 0;
                                                    goto LABEL_168;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v314 = v122;
LABEL_168:
                                                    v123 = [dictionaryCopy objectForKeyedSubscript:@"pActualLowBandwidth"];
                                                    v313 = v123;
                                                    if (!v123 || (v124 = v123, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v312 = 0;
                                                      goto LABEL_171;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v312 = v124;
LABEL_171:
                                                      v125 = [dictionaryCopy objectForKeyedSubscript:@"maxOfActualLowBandwidth"];
                                                      v311 = v125;
                                                      if (!v125 || (v126 = v125, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v310 = 0;
                                                        goto LABEL_174;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v310 = v126;
LABEL_174:
                                                        v127 = [dictionaryCopy objectForKeyedSubscript:@"estimatedHighBandwidth"];
                                                        v309 = v127;
                                                        if (!v127 || (v128 = v127, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v308 = 0;
                                                          goto LABEL_177;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v308 = v128;
LABEL_177:
                                                          v129 = [dictionaryCopy objectForKeyedSubscript:@"estimatedLowBandwidth"];
                                                          v307 = v129;
                                                          if (!v129 || (v130 = v129, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v306 = 0;
                                                            goto LABEL_180;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v306 = v130;
LABEL_180:
                                                            v131 = [dictionaryCopy objectForKeyedSubscript:@"movingAvgHighBandwidth"];
                                                            v305 = v131;
                                                            if (!v131 || (v132 = v131, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                            {
                                                              v304 = 0;
                                                              goto LABEL_183;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v304 = v132;
LABEL_183:
                                                              v133 = [dictionaryCopy objectForKeyedSubscript:@"movingAvgLowBandwidth"];
                                                              v303 = v133;
                                                              if (!v133 || (v134 = v133, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v302 = 0;
                                                                goto LABEL_186;
                                                              }

                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v302 = v134;
LABEL_186:
                                                                v135 = [dictionaryCopy objectForKeyedSubscript:@"cmDataSentCount"];
                                                                v300 = v135;
                                                                if (!v135 || (v136 = v135, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v301 = 0;
                                                                  goto LABEL_189;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v301 = v136;
LABEL_189:
                                                                  v137 = [dictionaryCopy objectForKeyedSubscript:@"cmDataSentDuration"];
                                                                  v298 = v137;
                                                                  if (!v137 || (v138 = v137, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                  {
                                                                    v299 = 0;
                                                                    goto LABEL_192;
                                                                  }

                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    v299 = v138;
LABEL_192:
                                                                    v139 = [dictionaryCopy objectForKeyedSubscript:@"tcpRTTAvg"];
                                                                    v296 = v139;
                                                                    if (!v139 || (v140 = v139, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                    {
                                                                      v297 = 0;
LABEL_195:
                                                                      v141 = [dictionaryCopy objectForKeyedSubscript:@"tcpRTTvar"];
                                                                      v294 = v141;
                                                                      if (v141 && (v142 = v141, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                      {
                                                                        objc_opt_class();
                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                        {
                                                                          v235 = v105;
                                                                          if (!v329)
                                                                          {
                                                                            v295 = 0;
                                                                            v20 = 0;
                                                                            v37 = v392;
                                                                            v82 = v341;
                                                                            v48 = v336;
                                                                            v57 = v330;
                                                                            v62 = v340;
                                                                            goto LABEL_365;
                                                                          }

                                                                          v236 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v380 = v9;
                                                                          v237 = *MEMORY[0x1E698F240];
                                                                          v422 = *MEMORY[0x1E696A578];
                                                                          v293 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tcpRTTvar"];
                                                                          v423 = v293;
                                                                          v238 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v423 forKeys:&v422 count:1];
                                                                          v239 = v237;
                                                                          v9 = v380;
                                                                          v295 = 0;
                                                                          v20 = 0;
                                                                          *v329 = [v236 initWithDomain:v239 code:2 userInfo:v238];
                                                                          v240 = v238;
                                                                          v37 = v392;
                                                                          v82 = v341;
                                                                          v48 = v336;
                                                                          v57 = v330;
                                                                          v105 = v235;
                                                                          v62 = v340;
LABEL_364:

LABEL_365:
                                                                          v234 = v294;
                                                                          goto LABEL_366;
                                                                        }

                                                                        v295 = v142;
                                                                      }

                                                                      else
                                                                      {
                                                                        v295 = 0;
                                                                      }

                                                                      v143 = [dictionaryCopy objectForKeyedSubscript:@"videoStreamingStallTime"];
                                                                      v291 = v143;
                                                                      if (v143 && (v144 = v143, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                      {
                                                                        objc_opt_class();
                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                        {
                                                                          v241 = v105;
                                                                          if (!v329)
                                                                          {
                                                                            v293 = 0;
                                                                            v20 = 0;
                                                                            v37 = v392;
                                                                            v82 = v341;
                                                                            v48 = v336;
                                                                            v57 = v330;
                                                                            v62 = v340;
                                                                            goto LABEL_363;
                                                                          }

                                                                          v242 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v381 = v9;
                                                                          v243 = *MEMORY[0x1E698F240];
                                                                          v420 = *MEMORY[0x1E696A578];
                                                                          v292 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"videoStreamingStallTime"];
                                                                          v421 = v292;
                                                                          v244 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v421 forKeys:&v420 count:1];
                                                                          v245 = v243;
                                                                          v9 = v381;
                                                                          v293 = 0;
                                                                          v20 = 0;
                                                                          *v329 = [v242 initWithDomain:v245 code:2 userInfo:v244];
                                                                          v246 = v244;
                                                                          v37 = v392;
                                                                          v82 = v341;
                                                                          v48 = v336;
                                                                          v57 = v330;
                                                                          v105 = v241;
                                                                          v62 = v340;
LABEL_362:

LABEL_363:
                                                                          v240 = v291;
                                                                          goto LABEL_364;
                                                                        }

                                                                        v293 = v144;
                                                                      }

                                                                      else
                                                                      {
                                                                        v293 = 0;
                                                                      }

                                                                      v145 = [dictionaryCopy objectForKeyedSubscript:@"numStall"];
                                                                      v289 = v145;
                                                                      if (v145 && (v146 = v145, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                      {
                                                                        objc_opt_class();
                                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                        {
                                                                          if (!v329)
                                                                          {
                                                                            v292 = 0;
                                                                            v20 = 0;
                                                                            v37 = v392;
                                                                            v82 = v341;
                                                                            v48 = v336;
                                                                            v57 = v330;
                                                                            v62 = v340;
                                                                            goto LABEL_361;
                                                                          }

                                                                          v247 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v382 = v9;
                                                                          v248 = *MEMORY[0x1E698F240];
                                                                          v418 = *MEMORY[0x1E696A578];
                                                                          v290 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numStall"];
                                                                          v419 = v290;
                                                                          v249 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v419 forKeys:&v418 count:1];
                                                                          v250 = v248;
                                                                          v9 = v382;
                                                                          v288 = v249;
                                                                          v292 = 0;
                                                                          v20 = 0;
                                                                          *v329 = [v247 initWithDomain:v250 code:2 userInfo:?];
                                                                          goto LABEL_413;
                                                                        }

                                                                        v292 = v146;
                                                                      }

                                                                      else
                                                                      {
                                                                        v292 = 0;
                                                                      }

                                                                      v147 = [dictionaryCopy objectForKeyedSubscript:@"stallDuration"];
                                                                      v288 = v147;
                                                                      if (!v147 || (v148 = v147, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                      {
                                                                        v290 = 0;
                                                                        goto LABEL_207;
                                                                      }

                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v290 = v148;
LABEL_207:
                                                                        v149 = [dictionaryCopy objectForKeyedSubscript:@"cellEstimatedBW"];
                                                                        v286 = v149;
                                                                        if (!v149 || (v150 = v149, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v287 = 0;
                                                                          goto LABEL_210;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v287 = v150;
LABEL_210:
                                                                          v151 = [dictionaryCopy objectForKeyedSubscript:@"cellLoad"];
                                                                          v284 = v151;
                                                                          if (!v151 || (v152 = v151, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v285 = 0;
                                                                            goto LABEL_213;
                                                                          }

                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v285 = v152;
LABEL_213:
                                                                            v153 = [dictionaryCopy objectForKeyedSubscript:@"cellModelConfidenceLevel"];
                                                                            v281 = v153;
                                                                            if (!v153 || (v154 = v153, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                            {
                                                                              v283 = 0;
LABEL_216:
                                                                              v155 = [dictionaryCopy objectForKeyedSubscript:@"mlPredictedCellBW"];
                                                                              v280 = v155;
                                                                              if (v155 && (v156 = v155, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                              {
                                                                                objc_opt_class();
                                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                {
                                                                                  if (!v329)
                                                                                  {
                                                                                    v282 = 0;
                                                                                    v20 = 0;
                                                                                    v37 = v392;
                                                                                    v82 = v341;
                                                                                    v48 = v336;
                                                                                    v62 = v340;
                                                                                    v57 = v330;
                                                                                    goto LABEL_356;
                                                                                  }

                                                                                  v268 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v269 = *MEMORY[0x1E698F240];
                                                                                  v408 = *MEMORY[0x1E696A578];
                                                                                  v393 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mlPredictedCellBW"];
                                                                                  v409 = v393;
                                                                                  v347 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v409 forKeys:&v408 count:1];
                                                                                  v270 = [v268 initWithDomain:v269 code:2 userInfo:?];
                                                                                  v282 = 0;
                                                                                  v20 = 0;
                                                                                  *v329 = v270;
                                                                                  goto LABEL_425;
                                                                                }

                                                                                v282 = v156;
                                                                              }

                                                                              else
                                                                              {
                                                                                v282 = 0;
                                                                              }

                                                                              v157 = [dictionaryCopy objectForKeyedSubscript:@"qbssLoad"];
                                                                              v347 = v157;
                                                                              if (!v157 || (v158 = v157, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v393 = 0;
LABEL_222:
                                                                                v159 = [dictionaryCopy objectForKeyedSubscript:@"lqmScorecellular"];
                                                                                v57 = v330;
                                                                                v279 = v159;
                                                                                if (v159)
                                                                                {
                                                                                  v160 = v159;
                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    v159 = 0;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    objc_opt_class();
                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                    {
                                                                                      v387 = v9;
                                                                                      if (v329)
                                                                                      {
                                                                                        v274 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v275 = *MEMORY[0x1E698F240];
                                                                                        v404 = *MEMORY[0x1E696A578];
                                                                                        v276 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"lqmScorecellular"];
                                                                                        v405 = v276;
                                                                                        v277 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v405 forKeys:&v404 count:1];
                                                                                        *v329 = [v274 initWithDomain:v275 code:2 userInfo:v277];
                                                                                      }

                                                                                      v278 = 0;
                                                                                      v20 = 0;
                                                                                      v9 = v387;
                                                                                      v37 = v392;
                                                                                      v82 = v341;
                                                                                      v48 = v336;
                                                                                      goto LABEL_354;
                                                                                    }

                                                                                    v159 = v160;
                                                                                  }
                                                                                }

                                                                                v37 = v392;
                                                                                v278 = v159;
                                                                                v48 = v336;
                                                                                v82 = v341;
                                                                                v20 = [(BMDeviceConnectivityContext *)selfCopy initWithGeohash:v401 counter:v400 event:errorCopy3 ratType:v398 rrcState:v396 cellNsaEnabled:v394 isFR1:v391 cellARFCN:v388 cellBandInfo:v348 cellChannelBW:v345 cellRsrp:v342 cellSinr:v341 cellLteRSRQ:v336 cellNrRSRP:v338 cellNrRSRQ:v330 cellNrSNR:v62 maxDLCAConfigured:v332 totalConfiguredBw:v105 nrConfiguredBw:v326 nrTotalScheduledMimoLayers:v324 totalConfiguredMimoLayers:v322 lteMaxScheduledMimoLayersInACell:v320 nrMaxDlModulation:v318 actualHighBandwidth:v316 actualLowBandwidth:v314 pActualLowBandwidth:v312 maxOfActualLowBandwidth:v310 estimatedHighBandwidth:v308 estimatedLowBandwidth:v306 movingAvgHighBandwidth:v304 movingAvgLowBandwidth:v302 cmDataSentCount:v301 cmDataSentDuration:v299 tcpRTTAvg:v297 tcpRTTvar:v295 videoStreamingStallTime:v293 numStall:v292 stallDuration:v290 cellEstimatedBW:v287 cellLoad:v285 cellModelConfidenceLevel:v283 mlPredictedCellBW:v282 qbssLoad:v393 lqmScorecellular:v159];
                                                                                selfCopy = v20;
LABEL_354:

LABEL_355:
LABEL_356:

LABEL_357:
LABEL_358:

LABEL_359:
LABEL_360:

LABEL_361:
                                                                                v246 = v289;
                                                                                goto LABEL_362;
                                                                              }

                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v393 = v158;
                                                                                goto LABEL_222;
                                                                              }

                                                                              if (v329)
                                                                              {
                                                                                v271 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v272 = *MEMORY[0x1E698F240];
                                                                                v406 = *MEMORY[0x1E696A578];
                                                                                v278 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"qbssLoad"];
                                                                                v407 = v278;
                                                                                v279 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v407 forKeys:&v406 count:1];
                                                                                v273 = [v271 initWithDomain:v272 code:2 userInfo:?];
                                                                                v393 = 0;
                                                                                v20 = 0;
                                                                                *v329 = v273;
                                                                                v37 = v392;
                                                                                v82 = v341;
                                                                                v48 = v336;
                                                                                v62 = v340;
                                                                                v57 = v330;
                                                                                goto LABEL_354;
                                                                              }

                                                                              v393 = 0;
                                                                              v20 = 0;
LABEL_425:
                                                                              v37 = v392;
                                                                              v82 = v341;
                                                                              v48 = v336;
                                                                              v62 = v340;
                                                                              v57 = v330;
                                                                              goto LABEL_355;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v283 = v154;
                                                                              goto LABEL_216;
                                                                            }

                                                                            if (v329)
                                                                            {
                                                                              v264 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v386 = v9;
                                                                              v265 = *MEMORY[0x1E698F240];
                                                                              v410 = *MEMORY[0x1E696A578];
                                                                              v282 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellModelConfidenceLevel"];
                                                                              v411 = v282;
                                                                              v266 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v411 forKeys:&v410 count:1];
                                                                              v267 = v265;
                                                                              v9 = v386;
                                                                              v280 = v266;
                                                                              v283 = 0;
                                                                              v20 = 0;
                                                                              *v329 = [v264 initWithDomain:v267 code:2 userInfo:?];
                                                                              v37 = v392;
                                                                              v82 = v341;
                                                                              v48 = v336;
                                                                              v57 = v330;
                                                                              v62 = v340;
                                                                              goto LABEL_356;
                                                                            }

                                                                            v283 = 0;
                                                                            v20 = 0;
LABEL_422:
                                                                            v37 = v392;
                                                                            v82 = v341;
                                                                            v48 = v336;
                                                                            v57 = v330;
                                                                            v62 = v340;
                                                                            goto LABEL_357;
                                                                          }

                                                                          if (v329)
                                                                          {
                                                                            v260 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v385 = v9;
                                                                            v261 = *MEMORY[0x1E698F240];
                                                                            v412 = *MEMORY[0x1E696A578];
                                                                            v283 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellLoad"];
                                                                            v413 = v283;
                                                                            v262 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v413 forKeys:&v412 count:1];
                                                                            v263 = v261;
                                                                            v9 = v385;
                                                                            v281 = v262;
                                                                            v285 = 0;
                                                                            v20 = 0;
                                                                            *v329 = [v260 initWithDomain:v263 code:2 userInfo:?];
                                                                            goto LABEL_422;
                                                                          }

                                                                          v285 = 0;
                                                                          v20 = 0;
LABEL_420:
                                                                          v37 = v392;
                                                                          v82 = v341;
                                                                          v48 = v336;
                                                                          v57 = v330;
                                                                          v62 = v340;
                                                                          goto LABEL_358;
                                                                        }

                                                                        if (v329)
                                                                        {
                                                                          v255 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v384 = v9;
                                                                          v256 = *MEMORY[0x1E698F240];
                                                                          v414 = *MEMORY[0x1E696A578];
                                                                          v285 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellEstimatedBW"];
                                                                          v415 = v285;
                                                                          v257 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v415 forKeys:&v414 count:1];
                                                                          v258 = v256;
                                                                          v9 = v384;
                                                                          v284 = v257;
                                                                          v287 = 0;
                                                                          v20 = 0;
                                                                          *v329 = [v255 initWithDomain:v258 code:2 userInfo:?];
                                                                          goto LABEL_420;
                                                                        }

                                                                        v287 = 0;
                                                                        v20 = 0;
LABEL_418:
                                                                        v37 = v392;
                                                                        v82 = v341;
                                                                        v48 = v336;
                                                                        v57 = v330;
                                                                        v62 = v340;
                                                                        goto LABEL_359;
                                                                      }

                                                                      if (v329)
                                                                      {
                                                                        v251 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v383 = v9;
                                                                        v252 = *MEMORY[0x1E698F240];
                                                                        v416 = *MEMORY[0x1E696A578];
                                                                        v287 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"stallDuration"];
                                                                        v417 = v287;
                                                                        v253 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v417 forKeys:&v416 count:1];
                                                                        v254 = v252;
                                                                        v9 = v383;
                                                                        v286 = v253;
                                                                        v290 = 0;
                                                                        v20 = 0;
                                                                        *v329 = [v251 initWithDomain:v254 code:2 userInfo:?];
                                                                        goto LABEL_418;
                                                                      }

                                                                      v290 = 0;
                                                                      v20 = 0;
LABEL_413:
                                                                      v37 = v392;
                                                                      v82 = v341;
                                                                      v48 = v336;
                                                                      v57 = v330;
                                                                      v62 = v340;
                                                                      goto LABEL_360;
                                                                    }

                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v297 = v140;
                                                                      goto LABEL_195;
                                                                    }

                                                                    v229 = v105;
                                                                    if (v329)
                                                                    {
                                                                      v230 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v379 = v9;
                                                                      v231 = *MEMORY[0x1E698F240];
                                                                      v424 = *MEMORY[0x1E696A578];
                                                                      v295 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tcpRTTAvg"];
                                                                      v425 = v295;
                                                                      v232 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v425 forKeys:&v424 count:1];
                                                                      v233 = v231;
                                                                      v9 = v379;
                                                                      v297 = 0;
                                                                      v20 = 0;
                                                                      *v329 = [v230 initWithDomain:v233 code:2 userInfo:v232];
                                                                      v234 = v232;
                                                                      v37 = v392;
                                                                      v82 = v341;
                                                                      v48 = v336;
                                                                      v57 = v330;
                                                                      v105 = v229;
                                                                      v62 = v340;
LABEL_366:

                                                                      goto LABEL_367;
                                                                    }

                                                                    v297 = 0;
                                                                    v20 = 0;
                                                                    v37 = v392;
                                                                    v82 = v341;
                                                                    v48 = v336;
                                                                    v57 = v330;
LABEL_350:
                                                                    v62 = v340;
LABEL_367:

                                                                    goto LABEL_368;
                                                                  }

                                                                  if (v329)
                                                                  {
                                                                    v225 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v378 = v9;
                                                                    v226 = *MEMORY[0x1E698F240];
                                                                    v426 = *MEMORY[0x1E696A578];
                                                                    v297 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cmDataSentDuration"];
                                                                    v427 = v297;
                                                                    v227 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v427 forKeys:&v426 count:1];
                                                                    v228 = v226;
                                                                    v9 = v378;
                                                                    v296 = v227;
                                                                    v299 = 0;
                                                                    v20 = 0;
                                                                    *v329 = [v225 initWithDomain:v228 code:2 userInfo:?];
                                                                    v37 = v392;
                                                                    v82 = v341;
                                                                    v48 = v336;
                                                                    v57 = v330;
                                                                    goto LABEL_350;
                                                                  }

                                                                  v299 = 0;
                                                                  v20 = 0;
LABEL_344:
                                                                  v37 = v392;
                                                                  v82 = v341;
                                                                  v48 = v336;
                                                                  v57 = v330;
                                                                  v62 = v340;
LABEL_368:

                                                                  goto LABEL_369;
                                                                }

                                                                if (v329)
                                                                {
                                                                  v221 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v377 = v9;
                                                                  v222 = *MEMORY[0x1E698F240];
                                                                  v428 = *MEMORY[0x1E696A578];
                                                                  v299 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cmDataSentCount"];
                                                                  v429 = v299;
                                                                  v223 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v429 forKeys:&v428 count:1];
                                                                  v224 = v222;
                                                                  v9 = v377;
                                                                  v298 = v223;
                                                                  v301 = 0;
                                                                  v20 = 0;
                                                                  *v329 = [v221 initWithDomain:v224 code:2 userInfo:?];
                                                                  goto LABEL_344;
                                                                }

                                                                v301 = 0;
                                                                v20 = 0;
LABEL_338:
                                                                v37 = v392;
                                                                v82 = v341;
                                                                v48 = v336;
                                                                v57 = v330;
                                                                v62 = v340;
LABEL_369:

                                                                goto LABEL_370;
                                                              }

                                                              if (v329)
                                                              {
                                                                v217 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v376 = v9;
                                                                v218 = *MEMORY[0x1E698F240];
                                                                v430 = *MEMORY[0x1E696A578];
                                                                v301 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"movingAvgLowBandwidth"];
                                                                v431 = v301;
                                                                v219 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v431 forKeys:&v430 count:1];
                                                                v220 = v218;
                                                                v9 = v376;
                                                                v300 = v219;
                                                                v302 = 0;
                                                                v20 = 0;
                                                                *v329 = [v217 initWithDomain:v220 code:2 userInfo:?];
                                                                goto LABEL_338;
                                                              }

                                                              v302 = 0;
                                                              v20 = 0;
LABEL_332:
                                                              v37 = v392;
                                                              v82 = v341;
                                                              v48 = v336;
                                                              v57 = v330;
                                                              v62 = v340;
LABEL_370:

                                                              goto LABEL_371;
                                                            }

                                                            if (v329)
                                                            {
                                                              v213 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v375 = v9;
                                                              v214 = *MEMORY[0x1E698F240];
                                                              v432 = *MEMORY[0x1E696A578];
                                                              v302 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"movingAvgHighBandwidth"];
                                                              v433 = v302;
                                                              v215 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v433 forKeys:&v432 count:1];
                                                              v216 = v214;
                                                              v9 = v375;
                                                              v303 = v215;
                                                              v304 = 0;
                                                              v20 = 0;
                                                              *v329 = [v213 initWithDomain:v216 code:2 userInfo:?];
                                                              goto LABEL_332;
                                                            }

                                                            v304 = 0;
                                                            v20 = 0;
LABEL_326:
                                                            v37 = v392;
                                                            v82 = v341;
                                                            v48 = v336;
                                                            v57 = v330;
                                                            v62 = v340;
LABEL_371:

                                                            goto LABEL_372;
                                                          }

                                                          if (v329)
                                                          {
                                                            v209 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v374 = v9;
                                                            v210 = *MEMORY[0x1E698F240];
                                                            v434 = *MEMORY[0x1E696A578];
                                                            v304 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"estimatedLowBandwidth"];
                                                            v435 = v304;
                                                            v211 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v435 forKeys:&v434 count:1];
                                                            v212 = v210;
                                                            v9 = v374;
                                                            v305 = v211;
                                                            v306 = 0;
                                                            v20 = 0;
                                                            *v329 = [v209 initWithDomain:v212 code:2 userInfo:?];
                                                            goto LABEL_326;
                                                          }

                                                          v306 = 0;
                                                          v20 = 0;
LABEL_320:
                                                          v37 = v392;
                                                          v82 = v341;
                                                          v48 = v336;
                                                          v57 = v330;
                                                          v62 = v340;
LABEL_372:

                                                          goto LABEL_373;
                                                        }

                                                        if (v329)
                                                        {
                                                          v205 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v373 = v9;
                                                          v206 = *MEMORY[0x1E698F240];
                                                          v436 = *MEMORY[0x1E696A578];
                                                          v306 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"estimatedHighBandwidth"];
                                                          v437 = v306;
                                                          v207 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v437 forKeys:&v436 count:1];
                                                          v208 = v206;
                                                          v9 = v373;
                                                          v307 = v207;
                                                          v308 = 0;
                                                          v20 = 0;
                                                          *v329 = [v205 initWithDomain:v208 code:2 userInfo:?];
                                                          goto LABEL_320;
                                                        }

                                                        v308 = 0;
                                                        v20 = 0;
LABEL_314:
                                                        v37 = v392;
                                                        v82 = v341;
                                                        v48 = v336;
                                                        v57 = v330;
                                                        v62 = v340;
LABEL_373:

                                                        goto LABEL_374;
                                                      }

                                                      if (v329)
                                                      {
                                                        v201 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v372 = v9;
                                                        v202 = *MEMORY[0x1E698F240];
                                                        v438 = *MEMORY[0x1E696A578];
                                                        v308 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"maxOfActualLowBandwidth"];
                                                        v439 = v308;
                                                        v203 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v439 forKeys:&v438 count:1];
                                                        v204 = v202;
                                                        v9 = v372;
                                                        v309 = v203;
                                                        v310 = 0;
                                                        v20 = 0;
                                                        *v329 = [v201 initWithDomain:v204 code:2 userInfo:?];
                                                        goto LABEL_314;
                                                      }

                                                      v310 = 0;
                                                      v20 = 0;
LABEL_308:
                                                      v37 = v392;
                                                      v82 = v341;
                                                      v48 = v336;
                                                      v57 = v330;
                                                      v62 = v340;
LABEL_374:

                                                      goto LABEL_375;
                                                    }

                                                    if (v329)
                                                    {
                                                      v197 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v371 = v9;
                                                      v198 = *MEMORY[0x1E698F240];
                                                      v440 = *MEMORY[0x1E696A578];
                                                      v310 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"pActualLowBandwidth"];
                                                      v441 = v310;
                                                      v199 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v441 forKeys:&v440 count:1];
                                                      v200 = v198;
                                                      v9 = v371;
                                                      v311 = v199;
                                                      v312 = 0;
                                                      v20 = 0;
                                                      *v329 = [v197 initWithDomain:v200 code:2 userInfo:?];
                                                      goto LABEL_308;
                                                    }

                                                    v312 = 0;
                                                    v20 = 0;
LABEL_302:
                                                    v37 = v392;
                                                    v82 = v341;
                                                    v48 = v336;
                                                    v57 = v330;
                                                    v62 = v340;
LABEL_375:

                                                    goto LABEL_376;
                                                  }

                                                  if (v329)
                                                  {
                                                    v193 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v370 = v9;
                                                    v194 = *MEMORY[0x1E698F240];
                                                    v442 = *MEMORY[0x1E696A578];
                                                    v312 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"actualLowBandwidth"];
                                                    v443 = v312;
                                                    v195 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v443 forKeys:&v442 count:1];
                                                    v196 = v194;
                                                    v9 = v370;
                                                    v313 = v195;
                                                    v314 = 0;
                                                    v20 = 0;
                                                    *v329 = [v193 initWithDomain:v196 code:2 userInfo:?];
                                                    goto LABEL_302;
                                                  }

                                                  v314 = 0;
                                                  v20 = 0;
LABEL_296:
                                                  v37 = v392;
                                                  v82 = v341;
                                                  v48 = v336;
                                                  v57 = v330;
                                                  v62 = v340;
LABEL_376:

                                                  goto LABEL_377;
                                                }

                                                if (v329)
                                                {
                                                  v189 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v369 = v9;
                                                  v190 = *MEMORY[0x1E698F240];
                                                  v444 = *MEMORY[0x1E696A578];
                                                  v314 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"actualHighBandwidth"];
                                                  v445 = v314;
                                                  v191 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v445 forKeys:&v444 count:1];
                                                  v192 = v190;
                                                  v9 = v369;
                                                  v315 = v191;
                                                  v316 = 0;
                                                  v20 = 0;
                                                  *v329 = [v189 initWithDomain:v192 code:2 userInfo:?];
                                                  goto LABEL_296;
                                                }

                                                v316 = 0;
                                                v20 = 0;
LABEL_290:
                                                v37 = v392;
                                                v82 = v341;
                                                v48 = v336;
                                                v57 = v330;
                                                v62 = v340;
LABEL_377:

                                                goto LABEL_378;
                                              }

                                              if (v329)
                                              {
                                                v185 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v368 = v9;
                                                v186 = *MEMORY[0x1E698F240];
                                                v446 = *MEMORY[0x1E696A578];
                                                v316 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nrMaxDlModulation"];
                                                v447 = v316;
                                                v187 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v447 forKeys:&v446 count:1];
                                                v188 = v186;
                                                v9 = v368;
                                                v317 = v187;
                                                v318 = 0;
                                                v20 = 0;
                                                *v329 = [v185 initWithDomain:v188 code:2 userInfo:?];
                                                goto LABEL_290;
                                              }

                                              v318 = 0;
                                              v20 = 0;
LABEL_284:
                                              v37 = v392;
                                              v82 = v341;
                                              v48 = v336;
                                              v57 = v330;
                                              v62 = v340;
LABEL_378:

                                              goto LABEL_379;
                                            }

                                            if (v329)
                                            {
                                              v181 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v367 = v9;
                                              v182 = *MEMORY[0x1E698F240];
                                              v448 = *MEMORY[0x1E696A578];
                                              v318 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"lteMaxScheduledMimoLayersInACell"];
                                              v449 = v318;
                                              v183 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v449 forKeys:&v448 count:1];
                                              v184 = v182;
                                              v9 = v367;
                                              v319 = v183;
                                              v320 = 0;
                                              v20 = 0;
                                              *v329 = [v181 initWithDomain:v184 code:2 userInfo:?];
                                              goto LABEL_284;
                                            }

                                            v320 = 0;
                                            v20 = 0;
                                            v37 = v392;
                                            v82 = v341;
                                            v48 = v336;
                                            v57 = v330;
                                            v62 = v340;
LABEL_379:

                                            goto LABEL_380;
                                          }

                                          if (v329)
                                          {
                                            v177 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v366 = v9;
                                            v178 = *MEMORY[0x1E698F240];
                                            v450 = *MEMORY[0x1E696A578];
                                            v320 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalConfiguredMimoLayers"];
                                            v451 = v320;
                                            v179 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v451 forKeys:&v450 count:1];
                                            v180 = v178;
                                            v9 = v366;
                                            v321 = v179;
                                            v322 = 0;
                                            v20 = 0;
                                            *v329 = [v177 initWithDomain:v180 code:2 userInfo:?];
                                            v37 = v392;
                                            v82 = v341;
                                            v48 = v336;
                                            v57 = v330;
                                            goto LABEL_379;
                                          }

                                          v322 = 0;
                                          v20 = 0;
                                          v37 = v392;
                                          v82 = v341;
                                          v48 = v336;
                                          v57 = v330;
LABEL_380:

                                          goto LABEL_381;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v324 = v103;
                                          goto LABEL_140;
                                        }

                                        if (v329)
                                        {
                                          v173 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v365 = v9;
                                          v174 = *MEMORY[0x1E698F240];
                                          v452 = *MEMORY[0x1E696A578];
                                          v322 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nrTotalScheduledMimoLayers"];
                                          v453 = v322;
                                          v175 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v453 forKeys:&v452 count:1];
                                          v176 = v174;
                                          v9 = v365;
                                          v323 = v175;
                                          v324 = 0;
                                          v20 = 0;
                                          *v329 = [v173 initWithDomain:v176 code:2 userInfo:?];
                                          v37 = v392;
                                          v82 = v341;
                                          v48 = v336;
                                          v57 = v330;
                                          v105 = v101;
                                          v62 = v340;
                                          goto LABEL_380;
                                        }

                                        v324 = 0;
                                        v20 = 0;
                                        v37 = v392;
                                        v82 = v341;
                                        v48 = v336;
                                        v57 = v330;
                                        v105 = v101;
                                        v62 = v340;
LABEL_381:

                                        goto LABEL_382;
                                      }

                                      if (v329)
                                      {
                                        v169 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v364 = v9;
                                        v170 = *MEMORY[0x1E698F240];
                                        v454 = *MEMORY[0x1E696A578];
                                        v324 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nrConfiguredBw"];
                                        v455 = v324;
                                        v171 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v455 forKeys:&v454 count:1];
                                        v172 = v170;
                                        v9 = v364;
                                        v325 = v171;
                                        v326 = 0;
                                        v20 = 0;
                                        *v329 = [v169 initWithDomain:v172 code:2 userInfo:?];
                                        v37 = v392;
                                        v82 = v341;
                                        v48 = v336;
                                        v105 = v91;
                                        v57 = v330;
                                        goto LABEL_381;
                                      }

                                      v326 = 0;
                                      v20 = 0;
                                      v37 = v392;
                                      v82 = v341;
                                      v48 = v336;
                                      v105 = v91;
                                      v57 = v330;
LABEL_382:

                                      goto LABEL_383;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v91 = v90;
                                      goto LABEL_122;
                                    }

                                    if (v329)
                                    {
                                      v165 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v363 = v9;
                                      v166 = *MEMORY[0x1E698F240];
                                      v456 = *MEMORY[0x1E696A578];
                                      v326 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalConfiguredBw"];
                                      v457 = v326;
                                      v167 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v457 forKeys:&v456 count:1];
                                      v168 = v166;
                                      v9 = v363;
                                      v327 = v167;
                                      v20 = 0;
                                      *v329 = [v165 initWithDomain:v168 code:2 userInfo:?];
                                      v37 = v392;
                                      v82 = v341;
                                      v48 = v336;
                                      v62 = v63;
                                      v105 = 0;
                                      goto LABEL_382;
                                    }

                                    v20 = 0;
                                    v37 = v392;
                                    v82 = v341;
                                    v48 = v336;
                                    v62 = v63;
                                    v105 = 0;
LABEL_383:

                                    goto LABEL_384;
                                  }

                                  if (v329)
                                  {
                                    v161 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v362 = v9;
                                    v162 = *MEMORY[0x1E698F240];
                                    v458 = *MEMORY[0x1E696A578];
                                    v105 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"maxDLCAConfigured"];
                                    v459 = v105;
                                    v163 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v459 forKeys:&v458 count:1];
                                    v164 = v162;
                                    v9 = v362;
                                    v328 = v163;
                                    v332 = 0;
                                    v20 = 0;
                                    *v329 = [v161 initWithDomain:v164 code:2 userInfo:?];
                                    v37 = v392;
                                    v82 = v341;
                                    v48 = v336;
                                    goto LABEL_383;
                                  }

                                  v332 = 0;
                                  v20 = 0;
                                  v37 = v392;
                                  v82 = v341;
                                  v48 = v336;
LABEL_384:

                                  goto LABEL_385;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v329 = v48;
                                  v339 = v59;
                                  goto LABEL_84;
                                }

                                if (v48)
                                {
                                  v111 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v361 = v9;
                                  v112 = *MEMORY[0x1E698F240];
                                  v460 = *MEMORY[0x1E696A578];
                                  v332 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellNrSNR"];
                                  v461 = v332;
                                  v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v461 forKeys:&v460 count:1];
                                  v114 = v112;
                                  v9 = v361;
                                  v331 = v113;
                                  v20 = 0;
                                  *v48 = [v111 initWithDomain:v114 code:2 userInfo:?];
                                  v37 = v392;
                                  v82 = v341;
                                  v48 = v336;
                                  v62 = 0;
                                  goto LABEL_384;
                                }

                                v20 = 0;
                                v37 = v392;
                                v82 = v341;
                                v48 = v336;
                                v62 = 0;
LABEL_385:

                                v49 = v333;
                                goto LABEL_386;
                              }

                              if (v48)
                              {
                                v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v360 = v9;
                                v108 = *MEMORY[0x1E698F240];
                                v462 = *MEMORY[0x1E696A578];
                                v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellNrRSRQ"];
                                v463 = v62;
                                v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v463 forKeys:&v462 count:1];
                                v110 = v108;
                                v9 = v360;
                                v334 = v109;
                                v57 = 0;
                                v20 = 0;
                                *v48 = [v107 initWithDomain:v110 code:2 userInfo:?];
                                v37 = v392;
                                v82 = v341;
                                v48 = v336;
                                goto LABEL_385;
                              }

                              v57 = 0;
                              v20 = 0;
                              v37 = v392;
                              v82 = v341;
                              v48 = v336;
                              v49 = v54;
LABEL_386:

                              goto LABEL_387;
                            }

                            if (v48)
                            {
                              v97 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v359 = v9;
                              v98 = *MEMORY[0x1E698F240];
                              v464 = *MEMORY[0x1E696A578];
                              v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellNrRSRP"];
                              v465 = v57;
                              v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v465 forKeys:&v464 count:1];
                              v100 = v98;
                              v9 = v359;
                              v335 = v99;
                              v338 = 0;
                              v20 = 0;
                              *v48 = [v97 initWithDomain:v100 code:2 userInfo:?];
                              v37 = v392;
                              v82 = v341;
                              v48 = v336;
                              goto LABEL_386;
                            }

                            v338 = 0;
                            v20 = 0;
                            v37 = v392;
                            v82 = v341;
                            v48 = v336;
LABEL_387:

                            goto LABEL_388;
                          }

                          if (v48)
                          {
                            v93 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v358 = v9;
                            v94 = *MEMORY[0x1E698F240];
                            v466 = *MEMORY[0x1E696A578];
                            v338 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellLteRSRQ"];
                            v467 = v338;
                            v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v467 forKeys:&v466 count:1];
                            v96 = v94;
                            v9 = v358;
                            v337 = v95;
                            v20 = 0;
                            *v48 = [v93 initWithDomain:v96 code:2 userInfo:?];
                            v48 = 0;
                            v37 = v392;
                            v82 = v341;
                            goto LABEL_387;
                          }

                          v20 = 0;
                          v37 = v392;
                          v82 = v341;
LABEL_388:

                          v17 = v342;
                          goto LABEL_389;
                        }

                        if (v48)
                        {
                          v84 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v357 = v9;
                          v85 = *MEMORY[0x1E698F240];
                          v468 = *MEMORY[0x1E696A578];
                          v86 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellSinr"];
                          v469 = v86;
                          v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v469 forKeys:&v468 count:1];
                          v88 = v85;
                          v9 = v357;
                          v343 = v87;
                          v82 = 0;
                          v20 = 0;
                          *v48 = [v84 initWithDomain:v88 code:2 userInfo:?];
                          v48 = v86;
                          v37 = v392;
                          goto LABEL_388;
                        }

                        v82 = 0;
                        v20 = 0;
LABEL_228:
                        v37 = v392;
LABEL_389:

                        goto LABEL_390;
                      }

                      v17 = errorCopy2;
                      if (errorCopy2)
                      {
                        v80 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v356 = v9;
                        v81 = *MEMORY[0x1E698F240];
                        v470 = *MEMORY[0x1E696A578];
                        v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellRsrp"];
                        v471 = v82;
                        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v471 forKeys:&v470 count:1];
                        v83 = v81;
                        v9 = v356;
                        v20 = 0;
                        *v17 = [v80 initWithDomain:v83 code:2 userInfo:v49];
                        v17 = 0;
                        goto LABEL_228;
                      }

                      v20 = 0;
LABEL_153:
                      v37 = v392;
LABEL_390:

                      goto LABEL_391;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v345 = v16;
                      goto LABEL_31;
                    }

                    if (errorCopy2)
                    {
                      v76 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v355 = v9;
                      v77 = *MEMORY[0x1E698F240];
                      v472 = *MEMORY[0x1E696A578];
                      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellChannelBW"];
                      v473 = v17;
                      v78 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v473 forKeys:&v472 count:1];
                      v79 = v77;
                      v9 = v355;
                      v344 = v78;
                      v345 = 0;
                      v20 = 0;
                      *errorCopy2 = [v76 initWithDomain:v79 code:2 userInfo:?];
                      goto LABEL_153;
                    }

                    v345 = 0;
                    v20 = 0;
LABEL_146:
                    v37 = v392;
LABEL_391:

                    goto LABEL_392;
                  }

                  if (errorCopy2)
                  {
                    v72 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v354 = v9;
                    v73 = *MEMORY[0x1E698F240];
                    v474 = *MEMORY[0x1E696A578];
                    v345 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellBandInfo"];
                    v475 = v345;
                    v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v475 forKeys:&v474 count:1];
                    v75 = v73;
                    v9 = v354;
                    v346 = v74;
                    v348 = 0;
                    v20 = 0;
                    *errorCopy2 = [v72 initWithDomain:v75 code:2 userInfo:?];
                    goto LABEL_146;
                  }

                  v348 = 0;
                  v20 = 0;
LABEL_134:
                  v37 = v392;
LABEL_392:

                  goto LABEL_393;
                }

                if (errorCopy2)
                {
                  v68 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v353 = v9;
                  v69 = *MEMORY[0x1E698F240];
                  v476 = *MEMORY[0x1E696A578];
                  v348 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellARFCN"];
                  v477 = v348;
                  v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v477 forKeys:&v476 count:1];
                  v71 = v69;
                  v9 = v353;
                  v349 = v70;
                  v388 = 0;
                  v20 = 0;
                  *errorCopy2 = [v68 initWithDomain:v71 code:2 userInfo:?];
                  goto LABEL_134;
                }

                v388 = 0;
                v20 = 0;
LABEL_128:
                v37 = v392;
LABEL_393:

                error = errorCopy3;
                goto LABEL_394;
              }

              if (errorCopy2)
              {
                v64 = objc_alloc(MEMORY[0x1E696ABC0]);
                v352 = v9;
                v65 = *MEMORY[0x1E698F240];
                v478 = *MEMORY[0x1E696A578];
                v388 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFR1"];
                v479 = v388;
                v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v479 forKeys:&v478 count:1];
                v67 = v65;
                v9 = v352;
                v390 = v66;
                v391 = 0;
                v20 = 0;
                *errorCopy2 = [v64 initWithDomain:v67 code:2 userInfo:?];
                goto LABEL_128;
              }

              v391 = 0;
              v20 = 0;
LABEL_116:
              v37 = v392;
LABEL_394:

              goto LABEL_395;
            }

            if (errorCopy2)
            {
              v44 = objc_alloc(MEMORY[0x1E696ABC0]);
              v351 = v9;
              v45 = *MEMORY[0x1E698F240];
              v480 = *MEMORY[0x1E696A578];
              v391 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cellNsaEnabled"];
              v481 = v391;
              v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v481 forKeys:&v480 count:1];
              v47 = v45;
              v9 = v351;
              v397 = v46;
              v394 = 0;
              v20 = 0;
              *errorCopy2 = [v44 initWithDomain:v47 code:2 userInfo:?];
              goto LABEL_116;
            }

            v394 = 0;
            v20 = 0;
            v37 = v392;
LABEL_395:

            self = selfCopy;
            goto LABEL_396;
          }

          v37 = v10;
          if (errorCopy2)
          {
            errorCopy4 = error;
            v39 = objc_alloc(MEMORY[0x1E696ABC0]);
            v350 = v9;
            v40 = *MEMORY[0x1E698F240];
            v482 = *MEMORY[0x1E696A578];
            v394 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rrcState"];
            v483 = v394;
            v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v483 forKeys:&v482 count:1];
            v42 = v39;
            error = errorCopy4;
            v43 = v40;
            v9 = v350;
            v399 = v41;
            v396 = 0;
            v20 = 0;
            *errorCopy2 = [v42 initWithDomain:v43 code:2 userInfo:?];
            goto LABEL_395;
          }

          v396 = 0;
          v20 = 0;
LABEL_396:

          goto LABEL_397;
        }

        v32 = v9;
        if (errorCopy2)
        {
          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v34 = *MEMORY[0x1E698F240];
          v484 = *MEMORY[0x1E696A578];
          v396 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"ratType"];
          v485 = v396;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v485 forKeys:&v484 count:1];
          v36 = v34;
          v37 = v35;
          v398 = 0;
          v20 = 0;
          *errorCopy2 = [v33 initWithDomain:v36 code:2 userInfo:v35];
          v9 = v32;
          goto LABEL_396;
        }

        v398 = 0;
        v20 = 0;
LABEL_397:

        goto LABEL_398;
      }

      if (error)
      {
        errorCopy5 = error;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        selfCopy2 = self;
        v28 = *MEMORY[0x1E698F240];
        v486 = *MEMORY[0x1E696A578];
        v398 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"event"];
        v487 = v398;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v487 forKeys:&v486 count:1];
        v30 = v26;
        v9 = v29;
        v31 = v28;
        self = selfCopy2;
        error = 0;
        v20 = 0;
        *errorCopy5 = [v30 initWithDomain:v31 code:2 userInfo:v29];
        goto LABEL_397;
      }

      v20 = 0;
LABEL_398:

      goto LABEL_399;
    }

    if (error)
    {
      v21 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E698F240];
      v488 = *MEMORY[0x1E696A578];
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"counter"];
      v489 = v23;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v489 forKeys:&v488 count:1];
      errorCopy6 = error;
      error = v23;
      v400 = 0;
      v20 = 0;
      *errorCopy6 = [v21 initWithDomain:v22 code:2 userInfo:v7];
      goto LABEL_398;
    }

    v400 = 0;
    v20 = 0;
LABEL_399:

    goto LABEL_400;
  }

  if (error)
  {
    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = *MEMORY[0x1E698F240];
    v490 = *MEMORY[0x1E696A578];
    v400 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"geohash"];
    v491[0] = v400;
    v402 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v491 forKeys:&v490 count:1];
    v401 = 0;
    v20 = 0;
    *error = [v18 initWithDomain:v19 code:2 userInfo:?];
    goto LABEL_399;
  }

  v401 = 0;
  v20 = 0;
LABEL_400:

  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceConnectivityContext *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_geohash)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasCounter)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasEvent)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_ratType)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_hasRrcState)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasCellNsaEnabled)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasIsFR1)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_hasCellARFCN)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasCellBandInfo)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasCellChannelBW)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasCellRsrp)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_hasCellSinr)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_hasCellLteRSRQ)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_hasCellNrRSRP)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_hasCellNrRSRQ)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_hasCellNrSNR)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_hasMaxDLCAConfigured)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasTotalConfiguredBw)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasNrConfiguredBw)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasNrTotalScheduledMimoLayers)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasTotalConfiguredMimoLayers)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasLteMaxScheduledMimoLayersInACell)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasNrMaxDlModulation)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasActualHighBandwidth)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasActualLowBandwidth)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasPActualLowBandwidth)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasMaxOfActualLowBandwidth)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasEstimatedHighBandwidth)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasEstimatedLowBandwidth)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasMovingAvgHighBandwidth)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasMovingAvgLowBandwidth)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasCmDataSentCount)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasCmDataSentDuration)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasTcpRTTAvg)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasTcpRTTvar)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasVideoStreamingStallTime)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasNumStall)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasStallDuration)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasCellEstimatedBW)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasCellLoad)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasCellModelConfidenceLevel)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasMlPredictedCellBW)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasQbssLoad)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }

  if (self->_hasLqmScorecellular)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v5;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v9.receiver = self;
  v9.super_class = BMDeviceConnectivityContext;
  v5 = [(BMEventBase *)&v9 init];
  v6 = v5;
  if (v5 && !BMDeviceConnectivityContextReadFrom(v5, fromCopy))
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
  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  geohash = [(BMDeviceConnectivityContext *)self geohash];
  v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext counter](self, "counter")}];
  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext event](self, "event")}];
  ratType = [(BMDeviceConnectivityContext *)self ratType];
  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext rrcState](self, "rrcState")}];
  v46 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceConnectivityContext cellNsaEnabled](self, "cellNsaEnabled")}];
  v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMDeviceConnectivityContext isFR1](self, "isFR1")}];
  v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellARFCN](self, "cellARFCN")}];
  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellBandInfo](self, "cellBandInfo")}];
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellChannelBW](self, "cellChannelBW")}];
  v42 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellRsrp](self, "cellRsrp")}];
  v39 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellSinr](self, "cellSinr")}];
  v35 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellLteRSRQ](self, "cellLteRSRQ")}];
  v37 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellNrRSRP](self, "cellNrRSRP")}];
  v34 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellNrRSRQ](self, "cellNrRSRQ")}];
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMDeviceConnectivityContext cellNrSNR](self, "cellNrSNR")}];
  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext maxDLCAConfigured](self, "maxDLCAConfigured")}];
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext totalConfiguredBw](self, "totalConfiguredBw")}];
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext nrConfiguredBw](self, "nrConfiguredBw")}];
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext nrTotalScheduledMimoLayers](self, "nrTotalScheduledMimoLayers")}];
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext totalConfiguredMimoLayers](self, "totalConfiguredMimoLayers")}];
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext lteMaxScheduledMimoLayersInACell](self, "lteMaxScheduledMimoLayersInACell")}];
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext nrMaxDlModulation](self, "nrMaxDlModulation")}];
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext actualHighBandwidth](self, "actualHighBandwidth")}];
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext actualLowBandwidth](self, "actualLowBandwidth")}];
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext pActualLowBandwidth](self, "pActualLowBandwidth")}];
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext maxOfActualLowBandwidth](self, "maxOfActualLowBandwidth")}];
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext estimatedHighBandwidth](self, "estimatedHighBandwidth")}];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext estimatedLowBandwidth](self, "estimatedLowBandwidth")}];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext movingAvgHighBandwidth](self, "movingAvgHighBandwidth")}];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext movingAvgLowBandwidth](self, "movingAvgLowBandwidth")}];
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cmDataSentCount](self, "cmDataSentCount")}];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cmDataSentDuration](self, "cmDataSentDuration")}];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext tcpRTTAvg](self, "tcpRTTAvg")}];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext tcpRTTvar](self, "tcpRTTvar")}];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext videoStreamingStallTime](self, "videoStreamingStallTime")}];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext numStall](self, "numStall")}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext stallDuration](self, "stallDuration")}];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellEstimatedBW](self, "cellEstimatedBW")}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellLoad](self, "cellLoad")}];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext cellModelConfidenceLevel](self, "cellModelConfidenceLevel")}];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext mlPredictedCellBW](self, "mlPredictedCellBW")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext qbssLoad](self, "qbssLoad")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDeviceConnectivityContext lqmScorecellular](self, "lqmScorecellular")}];
  v20 = [v19 initWithFormat:@"BMDeviceConnectivityContext with geohash: %@, counter: %@, event: %@, ratType: %@, rrcState: %@, cellNsaEnabled: %@, isFR1: %@, cellARFCN: %@, cellBandInfo: %@, cellChannelBW: %@, cellRsrp: %@, cellSinr: %@, cellLteRSRQ: %@, cellNrRSRP: %@, cellNrRSRQ: %@, cellNrSNR: %@, maxDLCAConfigured: %@, totalConfiguredBw: %@, nrConfiguredBw: %@, nrTotalScheduledMimoLayers: %@, totalConfiguredMimoLayers: %@, lteMaxScheduledMimoLayersInACell: %@, nrMaxDlModulation: %@, actualHighBandwidth: %@, actualLowBandwidth: %@, pActualLowBandwidth: %@, maxOfActualLowBandwidth: %@, estimatedHighBandwidth: %@, estimatedLowBandwidth: %@, movingAvgHighBandwidth: %@, movingAvgLowBandwidth: %@, cmDataSentCount: %@, cmDataSentDuration: %@, tcpRTTAvg: %@, tcpRTTvar: %@, videoStreamingStallTime: %@, numStall: %@, stallDuration: %@, cellEstimatedBW: %@, cellLoad: %@, cellModelConfidenceLevel: %@, mlPredictedCellBW: %@, qbssLoad: %@, lqmScorecellular: %@", geohash, v45, v47, ratType, v44, v46, v41, v43, v40, v38, v42, v39, v35, v37, v34, v32, v36, v31, v33, v29, v30, v27, v26, v28, v25, v23, v24, v18, v22, v17, v16, v21, v15, v12, v14, v11, v13, v10, v9, v8, v3, v4, v5, v6];

  return v20;
}

- (BMDeviceConnectivityContext)initWithGeohash:(id)geohash counter:(id)counter event:(id)event ratType:(id)type rrcState:(id)state cellNsaEnabled:(id)enabled isFR1:(id)r1 cellARFCN:(id)self0 cellBandInfo:(id)self1 cellChannelBW:(id)self2 cellRsrp:(id)self3 cellSinr:(id)self4 cellLteRSRQ:(id)self5 cellNrRSRP:(id)self6 cellNrRSRQ:(id)self7 cellNrSNR:(id)self8 maxDLCAConfigured:(id)self9 totalConfiguredBw:(id)bw nrConfiguredBw:(id)configuredBw nrTotalScheduledMimoLayers:(id)layers totalConfiguredMimoLayers:(id)mimoLayers lteMaxScheduledMimoLayersInACell:(id)cell nrMaxDlModulation:(id)modulation actualHighBandwidth:(id)bandwidth actualLowBandwidth:(id)lowBandwidth pActualLowBandwidth:(id)actualLowBandwidth maxOfActualLowBandwidth:(id)ofActualLowBandwidth estimatedHighBandwidth:(id)geohash0 estimatedLowBandwidth:(id)geohash1 movingAvgHighBandwidth:(id)geohash2 movingAvgLowBandwidth:(id)geohash3 cmDataSentCount:(id)geohash4 cmDataSentDuration:(id)geohash5 tcpRTTAvg:(id)geohash6 tcpRTTvar:(id)geohash7 videoStreamingStallTime:(id)geohash8 numStall:(id)geohash9 stallDuration:(id)counter0 cellEstimatedBW:(id)counter1 cellLoad:(id)counter2 cellModelConfidenceLevel:(id)counter3 mlPredictedCellBW:(id)counter4 qbssLoad:(id)counter5 lqmScorecellular:(id)counter6
{
  geohashCopy = geohash;
  counterCopy = counter;
  eventCopy = event;
  typeCopy = type;
  typeCopy2 = type;
  stateCopy = state;
  enabledCopy = enabled;
  r1Copy = r1;
  nCopy = n;
  infoCopy = info;
  wCopy = w;
  rsrpCopy = rsrp;
  sinrCopy = sinr;
  qCopy = q;
  pCopy = p;
  rQCopy = rQ;
  rCopy = r;
  configuredCopy = configured;
  bwCopy = bw;
  configuredBwCopy = configuredBw;
  layersCopy = layers;
  mimoLayersCopy = mimoLayers;
  cellCopy = cell;
  modulationCopy = modulation;
  bandwidthCopy = bandwidth;
  lowBandwidthCopy = lowBandwidth;
  actualLowBandwidthCopy = actualLowBandwidth;
  ofActualLowBandwidthCopy = ofActualLowBandwidth;
  highBandwidthCopy = highBandwidth;
  estimatedLowBandwidthCopy = estimatedLowBandwidth;
  avgHighBandwidthCopy = avgHighBandwidth;
  avgLowBandwidthCopy = avgLowBandwidth;
  countCopy = count;
  durationCopy = duration;
  avgCopy = avg;
  tvarCopy = tvar;
  timeCopy = time;
  stallCopy = stall;
  stallDurationCopy = stallDuration;
  bWCopy = bW;
  loadCopy = load;
  levelCopy = level;
  cellBWCopy = cellBW;
  qbssLoadCopy = qbssLoad;
  scorecellularCopy = scorecellular;
  v141.receiver = self;
  v141.super_class = BMDeviceConnectivityContext;
  v59 = [(BMEventBase *)&v141 init];

  if (v59)
  {
    v59->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v59->_geohash, geohash);
    if (counterCopy)
    {
      v59->_hasCounter = 1;
      unsignedIntValue = [counterCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v59->_hasCounter = 0;
    }

    v59->_counter = unsignedIntValue;
    if (eventCopy)
    {
      v59->_hasEvent = 1;
      unsignedIntValue2 = [eventCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v59->_hasEvent = 0;
    }

    v59->_event = unsignedIntValue2;
    objc_storeStrong(&v59->_ratType, typeCopy);
    if (stateCopy)
    {
      v59->_hasRrcState = 1;
      unsignedIntValue3 = [stateCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue3 = 0;
      v59->_hasRrcState = 0;
    }

    v59->_rrcState = unsignedIntValue3;
    if (enabledCopy)
    {
      v59->_hasCellNsaEnabled = 1;
      v59->_cellNsaEnabled = [enabledCopy BOOLValue];
    }

    else
    {
      v59->_hasCellNsaEnabled = 0;
      v59->_cellNsaEnabled = 0;
    }

    if (r1Copy)
    {
      v59->_hasIsFR1 = 1;
      v59->_isFR1 = [r1Copy BOOLValue];
    }

    else
    {
      v59->_hasIsFR1 = 0;
      v59->_isFR1 = 0;
    }

    unsignedIntValue4 = nCopy;
    if (nCopy)
    {
      v59->_hasCellARFCN = 1;
      unsignedIntValue4 = [nCopy unsignedIntValue];
    }

    else
    {
      v59->_hasCellARFCN = 0;
    }

    v59->_cellARFCN = unsignedIntValue4;
    unsignedIntValue5 = infoCopy;
    if (infoCopy)
    {
      v59->_hasCellBandInfo = 1;
      unsignedIntValue5 = [infoCopy unsignedIntValue];
    }

    else
    {
      v59->_hasCellBandInfo = 0;
    }

    v59->_cellBandInfo = unsignedIntValue5;
    unsignedIntValue6 = wCopy;
    if (wCopy)
    {
      v59->_hasCellChannelBW = 1;
      unsignedIntValue6 = [wCopy unsignedIntValue];
    }

    else
    {
      v59->_hasCellChannelBW = 0;
    }

    v59->_cellChannelBW = unsignedIntValue6;
    if (rsrpCopy)
    {
      v59->_hasCellRsrp = 1;
      intValue = [rsrpCopy intValue];
    }

    else
    {
      v59->_hasCellRsrp = 0;
      intValue = -1;
    }

    v59->_cellRsrp = intValue;
    if (sinrCopy)
    {
      v59->_hasCellSinr = 1;
      intValue2 = [sinrCopy intValue];
    }

    else
    {
      v59->_hasCellSinr = 0;
      intValue2 = -1;
    }

    v59->_cellSinr = intValue2;
    if (qCopy)
    {
      v59->_hasCellLteRSRQ = 1;
      intValue3 = [qCopy intValue];
    }

    else
    {
      v59->_hasCellLteRSRQ = 0;
      intValue3 = -1;
    }

    v59->_cellLteRSRQ = intValue3;
    if (pCopy)
    {
      v59->_hasCellNrRSRP = 1;
      intValue4 = [pCopy intValue];
    }

    else
    {
      v59->_hasCellNrRSRP = 0;
      intValue4 = -1;
    }

    v59->_cellNrRSRP = intValue4;
    if (rQCopy)
    {
      v59->_hasCellNrRSRQ = 1;
      intValue5 = [rQCopy intValue];
    }

    else
    {
      v59->_hasCellNrRSRQ = 0;
      intValue5 = -1;
    }

    v59->_cellNrRSRQ = intValue5;
    if (rCopy)
    {
      v59->_hasCellNrSNR = 1;
      intValue6 = [rCopy intValue];
    }

    else
    {
      v59->_hasCellNrSNR = 0;
      intValue6 = -1;
    }

    v59->_cellNrSNR = intValue6;
    if (configuredCopy)
    {
      v59->_hasMaxDLCAConfigured = 1;
      unsignedIntValue7 = [configuredCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue7 = 0;
      v59->_hasMaxDLCAConfigured = 0;
    }

    v59->_maxDLCAConfigured = unsignedIntValue7;
    if (bwCopy)
    {
      v59->_hasTotalConfiguredBw = 1;
      unsignedIntValue8 = [bwCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue8 = 0;
      v59->_hasTotalConfiguredBw = 0;
    }

    v59->_totalConfiguredBw = unsignedIntValue8;
    if (configuredBwCopy)
    {
      v59->_hasNrConfiguredBw = 1;
      unsignedIntValue9 = [configuredBwCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue9 = 0;
      v59->_hasNrConfiguredBw = 0;
    }

    v59->_nrConfiguredBw = unsignedIntValue9;
    if (layersCopy)
    {
      v59->_hasNrTotalScheduledMimoLayers = 1;
      unsignedIntValue10 = [layersCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue10 = 0;
      v59->_hasNrTotalScheduledMimoLayers = 0;
    }

    v59->_nrTotalScheduledMimoLayers = unsignedIntValue10;
    unsignedIntValue11 = mimoLayersCopy;
    if (mimoLayersCopy)
    {
      v59->_hasTotalConfiguredMimoLayers = 1;
      unsignedIntValue11 = [mimoLayersCopy unsignedIntValue];
    }

    else
    {
      v59->_hasTotalConfiguredMimoLayers = 0;
    }

    v59->_totalConfiguredMimoLayers = unsignedIntValue11;
    unsignedIntValue12 = cellCopy;
    if (cellCopy)
    {
      v59->_hasLteMaxScheduledMimoLayersInACell = 1;
      unsignedIntValue12 = [cellCopy unsignedIntValue];
    }

    else
    {
      v59->_hasLteMaxScheduledMimoLayersInACell = 0;
    }

    v59->_lteMaxScheduledMimoLayersInACell = unsignedIntValue12;
    unsignedIntValue13 = modulationCopy;
    if (modulationCopy)
    {
      v59->_hasNrMaxDlModulation = 1;
      unsignedIntValue13 = [modulationCopy unsignedIntValue];
    }

    else
    {
      v59->_hasNrMaxDlModulation = 0;
    }

    v59->_nrMaxDlModulation = unsignedIntValue13;
    unsignedIntValue14 = bandwidthCopy;
    if (bandwidthCopy)
    {
      v59->_hasActualHighBandwidth = 1;
      unsignedIntValue14 = [bandwidthCopy unsignedIntValue];
    }

    else
    {
      v59->_hasActualHighBandwidth = 0;
    }

    v59->_actualHighBandwidth = unsignedIntValue14;
    unsignedIntValue15 = lowBandwidthCopy;
    if (lowBandwidthCopy)
    {
      v59->_hasActualLowBandwidth = 1;
      unsignedIntValue15 = [lowBandwidthCopy unsignedIntValue];
    }

    else
    {
      v59->_hasActualLowBandwidth = 0;
    }

    v59->_actualLowBandwidth = unsignedIntValue15;
    unsignedIntValue16 = actualLowBandwidthCopy;
    if (actualLowBandwidthCopy)
    {
      v59->_hasPActualLowBandwidth = 1;
      unsignedIntValue16 = [actualLowBandwidthCopy unsignedIntValue];
    }

    else
    {
      v59->_hasPActualLowBandwidth = 0;
    }

    v59->_pActualLowBandwidth = unsignedIntValue16;
    unsignedIntValue17 = ofActualLowBandwidthCopy;
    if (ofActualLowBandwidthCopy)
    {
      v59->_hasMaxOfActualLowBandwidth = 1;
      unsignedIntValue17 = [ofActualLowBandwidthCopy unsignedIntValue];
    }

    else
    {
      v59->_hasMaxOfActualLowBandwidth = 0;
    }

    v59->_maxOfActualLowBandwidth = unsignedIntValue17;
    unsignedIntValue18 = highBandwidthCopy;
    if (highBandwidthCopy)
    {
      v59->_hasEstimatedHighBandwidth = 1;
      unsignedIntValue18 = [highBandwidthCopy unsignedIntValue];
    }

    else
    {
      v59->_hasEstimatedHighBandwidth = 0;
    }

    v59->_estimatedHighBandwidth = unsignedIntValue18;
    unsignedIntValue19 = estimatedLowBandwidthCopy;
    if (estimatedLowBandwidthCopy)
    {
      v59->_hasEstimatedLowBandwidth = 1;
      unsignedIntValue19 = [estimatedLowBandwidthCopy unsignedIntValue];
    }

    else
    {
      v59->_hasEstimatedLowBandwidth = 0;
    }

    v59->_estimatedLowBandwidth = unsignedIntValue19;
    unsignedIntValue20 = avgHighBandwidthCopy;
    if (avgHighBandwidthCopy)
    {
      v59->_hasMovingAvgHighBandwidth = 1;
      unsignedIntValue20 = [avgHighBandwidthCopy unsignedIntValue];
    }

    else
    {
      v59->_hasMovingAvgHighBandwidth = 0;
    }

    v59->_movingAvgHighBandwidth = unsignedIntValue20;
    unsignedIntValue21 = avgLowBandwidthCopy;
    if (avgLowBandwidthCopy)
    {
      v59->_hasMovingAvgLowBandwidth = 1;
      unsignedIntValue21 = [avgLowBandwidthCopy unsignedIntValue];
    }

    else
    {
      v59->_hasMovingAvgLowBandwidth = 0;
    }

    v59->_movingAvgLowBandwidth = unsignedIntValue21;
    unsignedIntValue22 = countCopy;
    if (countCopy)
    {
      v59->_hasCmDataSentCount = 1;
      unsignedIntValue22 = [countCopy unsignedIntValue];
    }

    else
    {
      v59->_hasCmDataSentCount = 0;
    }

    v59->_cmDataSentCount = unsignedIntValue22;
    unsignedIntValue23 = durationCopy;
    if (durationCopy)
    {
      v59->_hasCmDataSentDuration = 1;
      unsignedIntValue23 = [durationCopy unsignedIntValue];
    }

    else
    {
      v59->_hasCmDataSentDuration = 0;
    }

    v59->_cmDataSentDuration = unsignedIntValue23;
    unsignedIntValue24 = avgCopy;
    if (avgCopy)
    {
      v59->_hasTcpRTTAvg = 1;
      unsignedIntValue24 = [avgCopy unsignedIntValue];
    }

    else
    {
      v59->_hasTcpRTTAvg = 0;
    }

    v59->_tcpRTTAvg = unsignedIntValue24;
    unsignedIntValue25 = tvarCopy;
    if (tvarCopy)
    {
      v59->_hasTcpRTTvar = 1;
      unsignedIntValue25 = [tvarCopy unsignedIntValue];
    }

    else
    {
      v59->_hasTcpRTTvar = 0;
    }

    v59->_tcpRTTvar = unsignedIntValue25;
    unsignedIntValue26 = timeCopy;
    if (timeCopy)
    {
      v59->_hasVideoStreamingStallTime = 1;
      unsignedIntValue26 = [timeCopy unsignedIntValue];
    }

    else
    {
      v59->_hasVideoStreamingStallTime = 0;
    }

    v59->_videoStreamingStallTime = unsignedIntValue26;
    unsignedIntValue27 = stallCopy;
    if (stallCopy)
    {
      v59->_hasNumStall = 1;
      unsignedIntValue27 = [stallCopy unsignedIntValue];
    }

    else
    {
      v59->_hasNumStall = 0;
    }

    v59->_numStall = unsignedIntValue27;
    unsignedIntValue28 = stallDurationCopy;
    if (stallDurationCopy)
    {
      v59->_hasStallDuration = 1;
      unsignedIntValue28 = [stallDurationCopy unsignedIntValue];
    }

    else
    {
      v59->_hasStallDuration = 0;
    }

    v59->_stallDuration = unsignedIntValue28;
    unsignedIntValue29 = bWCopy;
    if (bWCopy)
    {
      v59->_hasCellEstimatedBW = 1;
      unsignedIntValue29 = [bWCopy unsignedIntValue];
    }

    else
    {
      v59->_hasCellEstimatedBW = 0;
    }

    v59->_cellEstimatedBW = unsignedIntValue29;
    unsignedIntValue30 = loadCopy;
    if (loadCopy)
    {
      v59->_hasCellLoad = 1;
      unsignedIntValue30 = [loadCopy unsignedIntValue];
    }

    else
    {
      v59->_hasCellLoad = 0;
    }

    v59->_cellLoad = unsignedIntValue30;
    unsignedIntValue31 = levelCopy;
    if (levelCopy)
    {
      v59->_hasCellModelConfidenceLevel = 1;
      unsignedIntValue31 = [levelCopy unsignedIntValue];
    }

    else
    {
      v59->_hasCellModelConfidenceLevel = 0;
    }

    v59->_cellModelConfidenceLevel = unsignedIntValue31;
    unsignedIntValue32 = cellBWCopy;
    if (cellBWCopy)
    {
      v59->_hasMlPredictedCellBW = 1;
      unsignedIntValue32 = [cellBWCopy unsignedIntValue];
    }

    else
    {
      v59->_hasMlPredictedCellBW = 0;
    }

    v59->_mlPredictedCellBW = unsignedIntValue32;
    unsignedIntValue33 = qbssLoadCopy;
    if (qbssLoadCopy)
    {
      v59->_hasQbssLoad = 1;
      unsignedIntValue33 = [qbssLoadCopy unsignedIntValue];
    }

    else
    {
      v59->_hasQbssLoad = 0;
    }

    v59->_qbssLoad = unsignedIntValue33;
    unsignedIntValue34 = scorecellularCopy;
    if (scorecellularCopy)
    {
      v59->_hasLqmScorecellular = 1;
      unsignedIntValue34 = [scorecellularCopy unsignedIntValue];
    }

    else
    {
      v59->_hasLqmScorecellular = 0;
    }

    v59->_lqmScorecellular = unsignedIntValue34;
  }

  v100 = v59;

  return v100;
}

+ (id)protoFields
{
  v48[44] = *MEMORY[0x1E69E9840];
  v47 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"geohash" number:1 type:13 subMessageClass:0];
  v48[0] = v47;
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"counter" number:2 type:4 subMessageClass:0];
  v48[1] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"event" number:3 type:4 subMessageClass:0];
  v48[2] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ratType" number:4 type:13 subMessageClass:0];
  v48[3] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rrcState" number:5 type:4 subMessageClass:0];
  v48[4] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellNsaEnabled" number:6 type:12 subMessageClass:0];
  v48[5] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFR1" number:7 type:12 subMessageClass:0];
  v48[6] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellARFCN" number:8 type:4 subMessageClass:0];
  v48[7] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellBandInfo" number:9 type:4 subMessageClass:0];
  v48[8] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellChannelBW" number:10 type:4 subMessageClass:0];
  v48[9] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellRsrp" number:11 type:2 subMessageClass:0];
  v48[10] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellSinr" number:12 type:2 subMessageClass:0];
  v48[11] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellLteRSRQ" number:13 type:2 subMessageClass:0];
  v48[12] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellNrRSRP" number:14 type:2 subMessageClass:0];
  v48[13] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellNrRSRQ" number:15 type:2 subMessageClass:0];
  v48[14] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellNrSNR" number:16 type:2 subMessageClass:0];
  v48[15] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maxDLCAConfigured" number:17 type:4 subMessageClass:0];
  v48[16] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalConfiguredBw" number:18 type:4 subMessageClass:0];
  v48[17] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nrConfiguredBw" number:19 type:4 subMessageClass:0];
  v48[18] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nrTotalScheduledMimoLayers" number:20 type:4 subMessageClass:0];
  v48[19] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalConfiguredMimoLayers" number:21 type:4 subMessageClass:0];
  v48[20] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lteMaxScheduledMimoLayersInACell" number:22 type:4 subMessageClass:0];
  v48[21] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nrMaxDlModulation" number:23 type:4 subMessageClass:0];
  v48[22] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actualHighBandwidth" number:24 type:4 subMessageClass:0];
  v48[23] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actualLowBandwidth" number:25 type:4 subMessageClass:0];
  v48[24] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"pActualLowBandwidth" number:26 type:4 subMessageClass:0];
  v48[25] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maxOfActualLowBandwidth" number:27 type:4 subMessageClass:0];
  v48[26] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"estimatedHighBandwidth" number:28 type:4 subMessageClass:0];
  v48[27] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"estimatedLowBandwidth" number:29 type:4 subMessageClass:0];
  v48[28] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"movingAvgHighBandwidth" number:30 type:4 subMessageClass:0];
  v48[29] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"movingAvgLowBandwidth" number:31 type:4 subMessageClass:0];
  v48[30] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cmDataSentCount" number:32 type:4 subMessageClass:0];
  v48[31] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cmDataSentDuration" number:33 type:4 subMessageClass:0];
  v48[32] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tcpRTTAvg" number:34 type:4 subMessageClass:0];
  v48[33] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tcpRTTvar" number:35 type:4 subMessageClass:0];
  v48[34] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"videoStreamingStallTime" number:36 type:4 subMessageClass:0];
  v48[35] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numStall" number:37 type:4 subMessageClass:0];
  v48[36] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stallDuration" number:38 type:4 subMessageClass:0];
  v48[37] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellEstimatedBW" number:39 type:4 subMessageClass:0];
  v48[38] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellLoad" number:40 type:4 subMessageClass:0];
  v48[39] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cellModelConfidenceLevel" number:41 type:4 subMessageClass:0];
  v48[40] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mlPredictedCellBW" number:42 type:4 subMessageClass:0];
  v48[41] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"qbssLoad" number:43 type:4 subMessageClass:0];
  v48[42] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"lqmScorecellular" number:44 type:4 subMessageClass:0];
  v48[43] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:44];

  return v13;
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

    v8 = [[BMDeviceConnectivityContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[15] = 0;
    }
  }

  return v4;
}

@end