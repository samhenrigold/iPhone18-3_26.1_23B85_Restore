@interface APReceiverStatsCollectorEnableHUD
@end

@implementation APReceiverStatsCollectorEnableHUD

const __CFDictionary **__APReceiverStatsCollectorEnableHUD_block_invoke(const __CFDictionary **result)
{
  v1 = result;
  v3 = result[4];
  v2 = result[5];
  if (!v3)
  {
    v3 = *(v2 + 6);
  }

  if (*(v2 + 256))
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    v6 = *(v2 + 65);
    Value = CFDictionaryGetValue(v3, @"PresentationLayer");
    if (Value)
    {
      v8 = Value;
      Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
      *(v2 + 3) = v8;
      [MEMORY[0x277CD9FF0] begin];
      [MEMORY[0x277CD9FF0] setDisableActions:1];
      v10 = objc_alloc_init(APHUDLayer);
      *(v2 + 4) = v10;
      [(APHUDLayer *)v10 setName:@"HUDLayer"];
      [*(v2 + 4) setFrame:{40.0, 40.0, 400.0, 470.0}];
      [*(v2 + 4) setEdgeAntialiasingMask:0];
      if (Int32IfPresent)
      {
        [*(v2 + 4) setZPosition:0];
      }

      [*(v2 + 4) addLine:@" Version:\t" withColorIndex:14];
      [*(v2 + 4) addLine:@" Interface:\t" withColorIndex:14];
      v11 = *(v2 + 4);
      if (v6)
      {
        v12 = @" TReg(R):\t";
      }

      else
      {
        [v11 addLine:@" TReg(S):\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" TReg(R):\t" withColorIndex:14];
        v11 = *(v2 + 4);
        v12 = @" S WxH:\t";
      }

      [v11 addLine:v12 withColorIndex:14];
      [*(v2 + 4) addLine:@" D WxH:\t" withColorIndex:14];
      [*(v2 + 4) addLine:@" Codec:\t" withColorIndex:14];
      v13 = *(v2 + 4);
      if (v6)
      {
        [v13 addLine:@" TV-FPS:\t" withColorIndex:0];
        [*(v2 + 4) addLine:@" TV-DPS:\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" RSSI(R):\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" Chan(R):\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" Seq(R1):\t" withColorIndex:14];
        v14 = *(v2 + 4);
        v15 = @" Seq(R2):\t";
        v16 = 14;
      }

      else
      {
        [v13 addLine:@" Chroma:\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" P-FPS:\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" W-FPS:\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" SubS:\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" B4En:\t" withColorIndex:1];
        [*(v2 + 4) addLine:@" FPS Th:\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" Q-FPS:\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" S-FPS:\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" R-FPS:\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" TV-FPS:\t" withColorIndex:0];
        [*(v2 + 4) addLine:@" TV-DPS:\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" Est BW:\t" withColorIndex:3];
        [*(v2 + 4) addLine:@" Act BW:\t" withColorIndex:4];
        [*(v2 + 4) addLine:@" Loss:\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" RTT:\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" Latency:\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" Ahead:\t" withColorIndex:2];
        [*(v2 + 4) addLine:@" EnDp:\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" IdEn:\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" IdDp:\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" CPU:\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" RSSI(S):\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" RSSI(R):\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" Chan(S):\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" Chan(R):\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" Seq(S1):\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" Seq(S2):\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" Seq(R1):\t" withColorIndex:14];
        [*(v2 + 4) addLine:@" Seq(R2):\t" withColorIndex:14];
        v14 = *(v2 + 4);
        v15 = @" SO Drops:\t";
        v16 = 5;
      }

      [v14 addLine:v15 withColorIndex:v16];
      [*(v2 + 4) addLine:@" A Buff\t" withColorIndex:14];
      [*(v2 + 4) addLine:@" A Lost:\t" withColorIndex:14];
      [*(v2 + 4) addLine:@" A Unrec:\t" withColorIndex:14];
      [*(v2 + 4) addLine:@" A Late:\t" withColorIndex:14];
      v17 = CGColorCreateWithRGB();
      [*(v2 + 4) setBackgroundColor:v17];
      CFRelease(v17);
      [*(v2 + 4) setGeometryFlipped:{objc_msgSend(*(v2 + 3), "contentsAreFlipped") ^ 1}];
      [*(v2 + 3) addSublayer:*(v2 + 4)];
      v18 = objc_alloc_init(APGraphLayer);
      *(v2 + 5) = v18;
      [(APGraphLayer *)v18 setName:@"GraphLayer"];
      [*(v2 + 5) setFrame:{40.0, 520.0, 195.0, 150.0}];
      [*(v2 + 5) setBorderWidth:1.0];
      [*(v2 + 5) setEdgeAntialiasingMask:0];
      if (Int32IfPresent)
      {
        [*(v2 + 5) setZPosition:0];
      }

      [*(v2 + 5) setUpGraphs:6];
      LODWORD(v19) = 1116471296;
      [*(v2 + 5) setUpGraph:0 min:30 max:0.0 numValues:v19];
      if (!v6)
      {
        LODWORD(v20) = 1116471296;
        [*(v2 + 5) setUpGraph:1 min:30 max:0.0 numValues:v20];
        LODWORD(v21) = 1120403456;
        LODWORD(v22) = -20.0;
        [*(v2 + 5) setUpGraph:2 min:30 max:v22 numValues:v21];
        LODWORD(v23) = 20.0;
        [*(v2 + 5) setUpGraph:3 min:30 max:0.0 numValues:v23];
        LODWORD(v24) = 25.0;
        [*(v2 + 5) setUpGraph:4 min:30 max:0.0 numValues:v24];
        LODWORD(v25) = 30.0;
        [*(v2 + 5) setUpGraph:5 min:30 max:0.0 numValues:v25];
      }

      [*(v2 + 5) setGeometryFlipped:{objc_msgSend(*(v2 + 3), "contentsAreFlipped") ^ 1}];
      [*(v2 + 3) addSublayer:*(v2 + 5)];
      if (FigGetCFPreferenceNumberWithDefault())
      {
        v26 = [APLatencyVisualizationLayer alloc];
        [*(v2 + 5) zPosition];
        v28 = [(APLatencyVisualizationLayer *)v26 init:aprstats_getSynchronizedNetworkTime timeContext:v2 zPosition:(v27 + 3.0)];
        [v28 setFrame:{*(v2 + 20), *(v2 + 21), *(v2 + 22), *(v2 + 23)}];
        [*(v2 + 3) addSublayer:v28];
        *(v2 + 33) = [[APLatencyVisualizationTrackingController alloc] init:v28];

        if (gLogCategory_APReceiverStatsCollector <= 30 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverStatsCollector, "OSStatus aprstats_hudEnable(APReceiverStatsCollectorRef, CFDictionaryRef)", 33554462, "Initialized latency tracker on HUD\n");
        }
      }

      [MEMORY[0x277CD9FF0] commit];
      if (gLogCategory_APReceiverStatsCollector <= 30 && (gLogCategory_APReceiverStatsCollector != -1 || _LogCategory_Initialize()))
      {
        [*(v2 + 4) frame];
        v30 = v29;
        [*(v2 + 4) frame];
        v32 = v31;
        [*(v2 + 4) frame];
        v34 = v33;
        [*(v2 + 4) frame];
        LogPrintF(&gLogCategory_APReceiverStatsCollector, "OSStatus aprstats_hudEnable(APReceiverStatsCollectorRef, CFDictionaryRef)", 33554462, "Set up HUD: %.2f, %.2f, %.2f, %.2f\n", v30, v32, v34, v35);
      }

      result = [v5 drain];
      *(v1[5] + 256) = 1;
    }

    else
    {
      APSLogErrorAt();
      return [v5 drain];
    }
  }

  return result;
}

@end