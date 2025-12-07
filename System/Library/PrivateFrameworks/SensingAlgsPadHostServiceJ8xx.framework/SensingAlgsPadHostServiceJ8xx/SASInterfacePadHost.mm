@interface SASInterfacePadHost
- ($3FFB85F807698FB051441EDCD924163A)phone_telemetry;
- ($F2544535907296EB357DA0304DEA202B)cover_gesture;
- (BOOL)handleInputStream:(id)stream;
- (BOOL)injectProperty:(id)property;
- (BOOL)injectProperty:(id)property value:(id)value;
- (BOOL)isContactReclassificationNeeded;
- (SASInterfacePadHost)initWithStreamSize:(unint64_t)size platformId:(unint64_t)id streamCallback:(id)callback;
- (id)generateCoverGesture:(unint64_t)gesture state:(unsigned __int8)state surfaceCovered:(float)covered;
- (id)generateEventInfo:(id *)info interpolated:(BOOL)interpolated timestamp:(unint64_t)timestamp;
- (id)generateFingerEvent:(id *)event interpolated:(BOOL)interpolated now:(unint64_t)now;
- (id)generateHandEvent:(id *)event interpolated:(BOOL)interpolated now:(unint64_t)now;
- (id)generatePreHysteresisAngles:(const FireflyUnfilteredAnglesPacket *)angles timestamp:(unint64_t)timestamp;
- (id)generatePtwEvent:(id *)event transducerType:(unsigned int)type now:(unint64_t)now;
- (id)generateStylusEvent:(id *)event interpolated:(BOOL)interpolated now:(unint64_t)now;
- (id)generateStylusHandEvent:(id *)event interpolated:(BOOL)interpolated now:(unint64_t)now;
- (id)generateSwipeUp:(unint64_t)up;
- (id)generateTapEvent:(id *)event transducerType:(unsigned int)type now:(unint64_t)now;
- (id)generateTouchSystemReady:(unint64_t)ready;
- (id)generateWakeEvent:(int)event timestamp:(unint64_t)timestamp;
- (unint64_t)getValidTimestamp:(unint64_t)timestamp now:(unint64_t)now;
- (unint64_t)stitchingTS:(unint64_t)s now:(unint64_t)now;
- (void)addVersion:(id)version;
- (void)callCoreAnalyticsCallback;
- (void)callEventCallback;
- (void)callPadTouchCoreAnalyticsCallback;
- (void)callPencilEventCallback;
- (void)callResetRequestCallback:(unsigned __int16)callback arg_ptr:(const void *)arg_ptr;
- (void)callStreamCallback:(unint64_t)callback;
- (void)cleanNodes;
- (void)cleanStylusNodes;
- (void)configureCallbacks;
- (void)configureTranslation;
- (void)createPadHostAlgsDevice:(unsigned int)device;
- (void)defaultStreamingConfiguration;
- (void)initContactReclassificationParams;
- (void)initProperties;
@end

@implementation SASInterfacePadHost

- ($F2544535907296EB357DA0304DEA202B)cover_gesture
{
  v2 = *&self->_cover_gesture.state;
  timestamp_us = self->_cover_gesture.timestamp_us;
  result.var1 = v2;
  result.var2 = *(&v2 + 1);
  result.var0 = timestamp_us;
  return result;
}

- ($3FFB85F807698FB051441EDCD924163A)phone_telemetry
{
  v2 = *&self->_phone_telemetry.scan_frequency_index;
  v3 = *&self->_phone_telemetry.baseline_adaption_interval_ms;
  result.var2 = v2;
  result.var3 = BYTE1(v2);
  result.var4 = BYTE2(v2);
  result.var5 = BYTE3(v2);
  result.var6 = BYTE4(v2);
  result.var7 = BYTE5(v2);
  result.var8 = BYTE6(v2);
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  return result;
}

- (void)addVersion:(id)version
{
  versionCopy = version;
  [(NSMutableArray *)self->_versions addObject:?];
  device = self->_device;
  uTF8String = [versionCopy UTF8String];
  if (uTF8String && *uTF8String)
  {
    SAList<char const*>::push_back(device + 80);
  }
}

- (void)callPadTouchCoreAnalyticsCallback
{
  v413[6] = *MEMORY[0x277D85DE8];
  mach_get_times();
  v3 = [(SASInterfacePadHost *)self timestampMachToUs:0];
  if (v3 - self->_last_reset_time_us >= 0x3938700)
  {
    self->_last_reset_time_us = v3;
    coreAnalyticsCallback = self->_coreAnalyticsCallback;
    if (coreAnalyticsCallback)
    {
      baseline_adapt_rate_state_stats = self->_baseline_adapt_rate_state_stats;
      v7 = 0x277CCA000uLL;
      if (baseline_adapt_rate_state_stats)
      {
        v412[0] = @"AggDurationAdaptationDefault";
        LODWORD(v4) = baseline_adapt_rate_state_stats[2];
        v289 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
        v413[0] = v289;
        v412[1] = @"AggDurationAdaptationPositiveRamp";
        LODWORD(v8) = *(self->_baseline_adapt_rate_state_stats + 3);
        v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
        v413[1] = v9;
        v412[2] = @"AggDurationAdaptationDriftDetector";
        LODWORD(v10) = *(self->_baseline_adapt_rate_state_stats + 4);
        v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
        v413[2] = v11;
        v412[3] = @"AggDurationAdaptationWithTouch";
        LODWORD(v12) = *(self->_baseline_adapt_rate_state_stats + 5);
        v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
        v413[3] = v13;
        v412[4] = @"AggDurationAdaptationWithHover";
        LODWORD(v14) = *(self->_baseline_adapt_rate_state_stats + 6);
        v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
        v413[4] = v15;
        v412[5] = @"AggDurationAdaptationNegativeRamp";
        LODWORD(v16) = *(self->_baseline_adapt_rate_state_stats + 7);
        v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
        v413[5] = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v413 forKeys:v412 count:6];
        coreAnalyticsCallback[2](coreAnalyticsCallback, @"com.apple.Multitouch.EmbeddedStatistics.BaselineAdaptationModeAggregatedDuration", v18);

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v19 = qword_2800179E0;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v135 = self->_baseline_adapt_rate_state_stats;
          v136 = v135[2];
          v137 = v135[3];
          v138 = v135[4];
          v139 = v135[5];
          v140 = v135[6];
          v141 = v135[7];
          *buf = 134219264;
          *v317 = v136;
          *&v317[8] = 2048;
          v318 = v137;
          *v319 = 2048;
          *&v319[2] = v138;
          *&v319[10] = 2048;
          *&v319[12] = v139;
          *&v319[20] = 2048;
          v320 = v140;
          *v321 = 2048;
          *&v321[2] = v141;
          _os_log_debug_impl(&dword_2653C2000, v19, OS_LOG_TYPE_DEBUG, "Core Analytics: BaselineAdaptationModeAggregatedDuration BaselineAdaptRateDefault=%fs BaselineAdaptRatePositiveRamp=%fs BaselineAdaptRateDriftDetector=%fs BaselineAdaptRateHasTouch=%fs BaselineAdaptRateHasHover=%fs BaselineAdaptRateNegativeRamp=%fs", buf, 0x3Eu);
        }

        v7 = 0x277CCA000uLL;
      }

      agg_duration_touch_coverage_stats = self->_agg_duration_touch_coverage_stats;
      if (agg_duration_touch_coverage_stats)
      {
        v21 = self->_coreAnalyticsCallback;
        v410[0] = @"AggDurationTouchCoverage0To33Pct";
        LODWORD(v4) = agg_duration_touch_coverage_stats[2];
        v290 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
        v411[0] = v290;
        v410[1] = @"AggDurationTouchCoverage34To66Pct";
        LODWORD(v22) = *(self->_agg_duration_touch_coverage_stats + 3);
        v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
        v411[1] = v23;
        v410[2] = @"AggDurationTouchCoverage67To100Pct";
        LODWORD(v24) = *(self->_agg_duration_touch_coverage_stats + 4);
        v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
        v411[2] = v25;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v411 forKeys:v410 count:3];
        v21[2](v21, @"com.apple.Multitouch.EmbeddedStatistics.TouchPanelCoverageAggregatedDuration", v26);

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v27 = qword_2800179E0;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v142 = self->_agg_duration_touch_coverage_stats;
          v143 = v142[2];
          v144 = v142[3];
          v145 = v142[4];
          *buf = 134218496;
          *v317 = v143;
          *&v317[8] = 2048;
          v318 = v144;
          *v319 = 2048;
          *&v319[2] = v145;
          _os_log_debug_impl(&dword_2653C2000, v27, OS_LOG_TYPE_DEBUG, "Core Analytics:TouchPanelCoverageAggregatedDuration AggDurationTouchCoverage0To33Pct=%fs AggDurationTouchCoverage34To66Pct=%fs AggDurationTouchCoverage67To100Pct=%fs", buf, 0x20u);
        }

        v7 = 0x277CCA000;
      }

      agg_duration_ff_dirty_spa_transitions_stats = self->_agg_duration_ff_dirty_spa_transitions_stats;
      if (agg_duration_ff_dirty_spa_transitions_stats && self->_agg_duration_ff_dirty_spa_durations_stats && self->_agg_duration_ff_dirty_spa_usage_stats)
      {
        v29 = 0;
        LODWORD(v30) = 0;
        v31 = (agg_duration_ff_dirty_spa_transitions_stats + 8);
        do
        {
          v30 = v31[v29++] + v30;
        }

        while (v29 != 7);
        v32 = self->_coreAnalyticsCallback;
        v408[0] = @"Firefly_SPA_Dirty_Frequency_Freq0_transitions";
        v291 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v31];
        v409[0] = v291;
        v408[1] = @"Firefly_SPA_Dirty_Frequency_Freq1_transitions";
        v285 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_transitions_stats + 3)];
        v409[1] = v285;
        v408[2] = @"Firefly_SPA_Dirty_Frequency_Freq2_transitions";
        v279 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_transitions_stats + 4)];
        v409[2] = v279;
        v408[3] = @"Firefly_SPA_Dirty_Frequency_Freq3_transitions";
        v276 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_transitions_stats + 5)];
        v409[3] = v276;
        v408[4] = @"Firefly_SPA_Dirty_Frequency_Freq4_transitions";
        v273 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_transitions_stats + 6)];
        v409[4] = v273;
        v408[5] = @"Firefly_SPA_Dirty_Frequency_Freq5_transitions";
        v270 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_transitions_stats + 7)];
        v409[5] = v270;
        v408[6] = @"Firefly_SPA_Dirty_Frequency_Freq6_transitions";
        v267 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_transitions_stats + 8)];
        v409[6] = v267;
        v408[7] = @"Firefly_SPA_Dirty_Frequency_totalTransitions";
        v264 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v30];
        v409[7] = v264;
        v408[8] = @"Firefly_SPA_Dirty_Frequency_Freq0_time";
        v261 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_durations_stats + 2)];
        v409[8] = v261;
        v408[9] = @"Firefly_SPA_Dirty_Frequency_Freq1_time";
        v258 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_durations_stats + 3)];
        v409[9] = v258;
        v408[10] = @"Firefly_SPA_Dirty_Frequency_Freq2_time";
        v255 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_durations_stats + 4)];
        v409[10] = v255;
        v408[11] = @"Firefly_SPA_Dirty_Frequency_Freq3_time";
        v252 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_durations_stats + 5)];
        v409[11] = v252;
        v408[12] = @"Firefly_SPA_Dirty_Frequency_Freq4_time";
        v250 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_durations_stats + 6)];
        v409[12] = v250;
        v408[13] = @"Firefly_SPA_Dirty_Frequency_Freq5_time";
        v248 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_durations_stats + 7)];
        v409[13] = v248;
        v408[14] = @"Firefly_SPA_Dirty_Frequency_Freq6_time";
        v246 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_durations_stats + 8)];
        v409[14] = v246;
        v408[15] = @"Firefly_SPA_Dirty_Frequency_Freq0";
        v282 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_usage_stats + 2)];
        v409[15] = v282;
        v408[16] = @"Firefly_SPA_Dirty_Frequency_Freq1";
        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_usage_stats + 3)];
        v409[16] = v33;
        v408[17] = @"Firefly_SPA_Dirty_Frequency_Freq2";
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_usage_stats + 4)];
        v409[17] = v34;
        v408[18] = @"Firefly_SPA_Dirty_Frequency_Freq3";
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_usage_stats + 5)];
        v409[18] = v35;
        v408[19] = @"Firefly_SPA_Dirty_Frequency_Freq4";
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_usage_stats + 6)];
        v409[19] = v36;
        v408[20] = @"Firefly_SPA_Dirty_Frequency_Freq5";
        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_usage_stats + 7)];
        v409[20] = v37;
        v408[21] = @"Firefly_SPA_Dirty_Frequency_Freq6";
        v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_usage_stats + 8)];
        v409[21] = v38;
        v408[22] = @"Firefly_SPA_Dirty_Frequency_totalTime";
        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_duration_ff_dirty_spa_usage_stats + 9)];
        v409[22] = v39;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v409 forKeys:v408 count:23];
        v32[2](v32, @"com.apple.MultitouchSupport.IOReport.FireflySPADirtyFrequency", v40);

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v41 = qword_2800179E0;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v207 = self->_agg_duration_ff_dirty_spa_transitions_stats;
          v208 = v207[2];
          v209 = v207[3];
          v210 = v207[4];
          v211 = v207[5];
          v212 = v207[6];
          v213 = v207[7];
          LODWORD(v207) = v207[8];
          *buf = 67110656;
          *v317 = v208;
          *&v317[4] = 1024;
          *&v317[6] = v209;
          LOWORD(v318) = 1024;
          *(&v318 + 2) = v210;
          HIWORD(v318) = 1024;
          *v319 = v211;
          *&v319[4] = 1024;
          *&v319[6] = v212;
          *&v319[10] = 1024;
          *&v319[12] = v213;
          *&v319[16] = 1024;
          *&v319[18] = v207;
          _os_log_debug_impl(&dword_2653C2000, v41, OS_LOG_TYPE_DEBUG, "Core Analytics:FireflySPADirtyFrequency transititons Freq0_transitions=%d Freq1_transitions=%d Freq2_transitions=%d Freq3_transitions=%d Freq4_transitions=%d Freq5_transitions=%d Freq6_transitions=%d", buf, 0x2Cu);
        }

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v42 = qword_2800179E0;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          agg_duration_ff_dirty_spa_durations_stats = self->_agg_duration_ff_dirty_spa_durations_stats;
          v215 = agg_duration_ff_dirty_spa_durations_stats[2];
          v216 = agg_duration_ff_dirty_spa_durations_stats[3];
          v217 = agg_duration_ff_dirty_spa_durations_stats[4];
          v218 = agg_duration_ff_dirty_spa_durations_stats[5];
          v219 = agg_duration_ff_dirty_spa_durations_stats[6];
          v220 = agg_duration_ff_dirty_spa_durations_stats[7];
          LODWORD(agg_duration_ff_dirty_spa_durations_stats) = agg_duration_ff_dirty_spa_durations_stats[8];
          *buf = 67110656;
          *v317 = v215;
          *&v317[4] = 1024;
          *&v317[6] = v216;
          LOWORD(v318) = 1024;
          *(&v318 + 2) = v217;
          HIWORD(v318) = 1024;
          *v319 = v218;
          *&v319[4] = 1024;
          *&v319[6] = v219;
          *&v319[10] = 1024;
          *&v319[12] = v220;
          *&v319[16] = 1024;
          *&v319[18] = agg_duration_ff_dirty_spa_durations_stats;
          _os_log_debug_impl(&dword_2653C2000, v42, OS_LOG_TYPE_DEBUG, "Core Analytics:FireflySPADirtyFrequency time Freq0_time=%dms Freq1_time=%dms Freq2_time=%dms Freq3_time=%dms Freq4_time=%dms Freq5_time=%dms Freq6_time=%dms", buf, 0x2Cu);
        }

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v43 = qword_2800179E0;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          agg_duration_ff_dirty_spa_usage_stats = self->_agg_duration_ff_dirty_spa_usage_stats;
          v222 = agg_duration_ff_dirty_spa_usage_stats[2];
          v223 = agg_duration_ff_dirty_spa_usage_stats[3];
          v224 = agg_duration_ff_dirty_spa_usage_stats[4];
          v225 = agg_duration_ff_dirty_spa_usage_stats[5];
          v226 = agg_duration_ff_dirty_spa_usage_stats[6];
          v227 = agg_duration_ff_dirty_spa_usage_stats[7];
          v228 = agg_duration_ff_dirty_spa_usage_stats[8];
          LODWORD(agg_duration_ff_dirty_spa_usage_stats) = agg_duration_ff_dirty_spa_usage_stats[9];
          *buf = 67110912;
          *v317 = v222;
          *&v317[4] = 1024;
          *&v317[6] = v223;
          LOWORD(v318) = 1024;
          *(&v318 + 2) = v224;
          HIWORD(v318) = 1024;
          *v319 = v225;
          *&v319[4] = 1024;
          *&v319[6] = v226;
          *&v319[10] = 1024;
          *&v319[12] = v227;
          *&v319[16] = 1024;
          *&v319[18] = v228;
          LOWORD(v320) = 1024;
          *(&v320 + 2) = agg_duration_ff_dirty_spa_usage_stats;
          _os_log_debug_impl(&dword_2653C2000, v43, OS_LOG_TYPE_DEBUG, "Core Analytics:FireflySPADirtyFrequency count Freq0=%d Freq1=%d Freq2=%d Freq3=%d Freq4=%d Freq5=%d Freq6=%d TotalTime=%dms", buf, 0x32u);
        }

        v7 = 0x277CCA000uLL;
      }

      agg_count_large_contact_touch_duration_stats = self->_agg_count_large_contact_touch_duration_stats;
      if (agg_count_large_contact_touch_duration_stats && self->_max_touch_duration_large_contact_stats)
      {
        v45 = self->_coreAnalyticsCallback;
        v406[0] = @"CountLargeTouchDuration1To3mins";
        v292 = [*(v7 + 2992) numberWithUnsignedInt:agg_count_large_contact_touch_duration_stats[2]];
        v407[0] = v292;
        v406[1] = @"CountLargeTouchDuration3To5mins";
        v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_count_large_contact_touch_duration_stats + 3)];
        v407[1] = v46;
        v406[2] = @"CountLargeTouchDuration5To10mins";
        v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_count_large_contact_touch_duration_stats + 4)];
        v407[2] = v47;
        v406[3] = @"CountLargeTouchDurationAbove10mins";
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(self->_agg_count_large_contact_touch_duration_stats + 5)];
        v407[3] = v48;
        v406[4] = @"MaxDurationLargeTouch";
        *&v49 = *self->_max_touch_duration_large_contact_stats;
        v50 = [MEMORY[0x277CCABB0] numberWithFloat:v49];
        v407[4] = v50;
        v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v407 forKeys:v406 count:5];
        v45[2](v45, @"com.apple.Multitouch.EmbeddedStatistics.LargeTouchDurationStats", v51);

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v52 = qword_2800179E0;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          v202 = self->_agg_count_large_contact_touch_duration_stats;
          v203 = v202[2];
          v204 = v202[3];
          v205 = v202[4];
          LODWORD(v202) = v202[5];
          v206 = *self->_max_touch_duration_large_contact_stats;
          *buf = 67110144;
          *v317 = v203;
          *&v317[4] = 1024;
          *&v317[6] = v204;
          LOWORD(v318) = 1024;
          *(&v318 + 2) = v205;
          HIWORD(v318) = 1024;
          *v319 = v202;
          *&v319[4] = 2048;
          *&v319[6] = v206;
          _os_log_debug_impl(&dword_2653C2000, v52, OS_LOG_TYPE_DEBUG, "Core Analytics: LargeTouchDurationStats 1to3mins=%d 3to5mins=%d 5to10mins=%d Above10mins=%d MaxDuration=%fs", buf, 0x24u);
        }

        v7 = 0x277CCA000uLL;
      }

      agg_duration_thermal_region_stats = self->_agg_duration_thermal_region_stats;
      if (agg_duration_thermal_region_stats)
      {
        v54 = self->_coreAnalyticsCallback;
        v404[0] = @"AggDurationThermalRegionBottomLeft";
        LODWORD(v4) = agg_duration_thermal_region_stats[2];
        v293 = [*(v7 + 2992) numberWithFloat:v4];
        v405[0] = v293;
        v404[1] = @"AggDurationThermalRegionBottomMid";
        LODWORD(v55) = *(self->_agg_duration_thermal_region_stats + 3);
        v286 = [MEMORY[0x277CCABB0] numberWithFloat:v55];
        v405[1] = v286;
        v404[2] = @"AggDurationThermalRegionBottomRight";
        LODWORD(v56) = *(self->_agg_duration_thermal_region_stats + 4);
        v57 = [MEMORY[0x277CCABB0] numberWithFloat:v56];
        v405[2] = v57;
        v404[3] = @"AggDurationThermalRegionMidLeft";
        LODWORD(v58) = *(self->_agg_duration_thermal_region_stats + 5);
        v59 = [MEMORY[0x277CCABB0] numberWithFloat:v58];
        v405[3] = v59;
        v404[4] = @"AggDurationThermalRegionMidMid";
        LODWORD(v60) = *(self->_agg_duration_thermal_region_stats + 6);
        v61 = [MEMORY[0x277CCABB0] numberWithFloat:v60];
        v405[4] = v61;
        v404[5] = @"AggDurationThermalRegionMidRight";
        LODWORD(v62) = *(self->_agg_duration_thermal_region_stats + 7);
        v63 = [MEMORY[0x277CCABB0] numberWithFloat:v62];
        v405[5] = v63;
        v404[6] = @"AggDurationThermalRegionTopLeft";
        LODWORD(v64) = *(self->_agg_duration_thermal_region_stats + 8);
        v65 = [MEMORY[0x277CCABB0] numberWithFloat:v64];
        v405[6] = v65;
        v404[7] = @"AggDurationThermalRegionTopMid";
        LODWORD(v66) = *(self->_agg_duration_thermal_region_stats + 9);
        v67 = [MEMORY[0x277CCABB0] numberWithFloat:v66];
        v405[7] = v67;
        v404[8] = @"AggDurationThermalRegionTopRight";
        LODWORD(v68) = *(self->_agg_duration_thermal_region_stats + 10);
        v69 = [MEMORY[0x277CCABB0] numberWithFloat:v68];
        v405[8] = v69;
        v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v405 forKeys:v404 count:9];
        v54[2](v54, @"com.apple.Multitouch.EmbeddedStatistics.ThermalRegionAggregatedDuration", v70);

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v71 = qword_2800179E0;
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          v146 = self->_agg_duration_thermal_region_stats;
          v147 = v146[2];
          v148 = v146[3];
          v149 = v146[4];
          v150 = v146[5];
          v151 = v146[6];
          v152 = v146[7];
          v153 = v146[8];
          v154 = v146[9];
          v155 = v146[10];
          *buf = 134220032;
          *v317 = v147;
          *&v317[8] = 2048;
          v318 = v148;
          *v319 = 2048;
          *&v319[2] = v149;
          *&v319[10] = 2048;
          *&v319[12] = v150;
          *&v319[20] = 2048;
          v320 = v151;
          *v321 = 2048;
          *&v321[2] = v152;
          v322 = 2048;
          *v323 = v153;
          *&v323[8] = 2048;
          v324 = v154;
          *v325 = 2048;
          *&v325[2] = v155;
          _os_log_debug_impl(&dword_2653C2000, v71, OS_LOG_TYPE_DEBUG, "Core Analytics: ThermalRegionAggregatedDuration BottomLeft=%fs BottomMid=%fs BottomRight=%fs MidLeft=%fs MidMid=%fs  MidRight=%fs  TopLeft=%fs  TopMid=%fs  TopRight=%fs", buf, 0x5Cu);
        }

        v7 = 0x277CCA000uLL;
      }

      agg_duration_pencil_dti_stats = self->_agg_duration_pencil_dti_stats;
      if (agg_duration_pencil_dti_stats)
      {
        v73 = self->_coreAnalyticsCallback;
        v386[0] = @"AggDurationAggressorsBin01";
        LODWORD(v4) = agg_duration_pencil_dti_stats[2];
        v294 = [*(v7 + 2992) numberWithFloat:v4];
        v387[0] = v294;
        v386[1] = @"AggDurationAggressorsBin02";
        LODWORD(v74) = *(self->_agg_duration_pencil_dti_stats + 3);
        v283 = [MEMORY[0x277CCABB0] numberWithFloat:v74];
        v387[1] = v283;
        v386[2] = @"AggDurationAggressorsBin03";
        LODWORD(v75) = *(self->_agg_duration_pencil_dti_stats + 4);
        v280 = [MEMORY[0x277CCABB0] numberWithFloat:v75];
        v387[2] = v280;
        v386[3] = @"AggDurationAggressorsBin04";
        LODWORD(v76) = *(self->_agg_duration_pencil_dti_stats + 5);
        v277 = [MEMORY[0x277CCABB0] numberWithFloat:v76];
        v387[3] = v277;
        v386[4] = @"AggDurationAggressorsBin05";
        LODWORD(v77) = *(self->_agg_duration_pencil_dti_stats + 6);
        v274 = [MEMORY[0x277CCABB0] numberWithFloat:v77];
        v387[4] = v274;
        v386[5] = @"AggDurationAggressorsBin06";
        LODWORD(v78) = *(self->_agg_duration_pencil_dti_stats + 7);
        v271 = [MEMORY[0x277CCABB0] numberWithFloat:v78];
        v387[5] = v271;
        v386[6] = @"AggDurationAggressorsBin07";
        LODWORD(v79) = *(self->_agg_duration_pencil_dti_stats + 8);
        v268 = [MEMORY[0x277CCABB0] numberWithFloat:v79];
        v387[6] = v268;
        v386[7] = @"AggDurationAggressorsBin08";
        LODWORD(v80) = *(self->_agg_duration_pencil_dti_stats + 9);
        v265 = [MEMORY[0x277CCABB0] numberWithFloat:v80];
        v387[7] = v265;
        v386[8] = @"AggDurationAggressorsBin09";
        LODWORD(v81) = *(self->_agg_duration_pencil_dti_stats + 10);
        v262 = [MEMORY[0x277CCABB0] numberWithFloat:v81];
        v387[8] = v262;
        v386[9] = @"AggDurationAggressorsBin10";
        LODWORD(v82) = *(self->_agg_duration_pencil_dti_stats + 11);
        v259 = [MEMORY[0x277CCABB0] numberWithFloat:v82];
        v387[9] = v259;
        v386[10] = @"AggDurationAggressorsBin11";
        LODWORD(v83) = *(self->_agg_duration_pencil_dti_stats + 12);
        v256 = [MEMORY[0x277CCABB0] numberWithFloat:v83];
        v387[10] = v256;
        v386[11] = @"AggDurationAggressorsBin12";
        LODWORD(v84) = *(self->_agg_duration_pencil_dti_stats + 13);
        v253 = [MEMORY[0x277CCABB0] numberWithFloat:v84];
        v387[11] = v253;
        v386[12] = @"AggDurationAggressorsBin13";
        LODWORD(v85) = *(self->_agg_duration_pencil_dti_stats + 14);
        v251 = [MEMORY[0x277CCABB0] numberWithFloat:v85];
        v387[12] = v251;
        v386[13] = @"AggDurationAggressorsBin14";
        LODWORD(v86) = *(self->_agg_duration_pencil_dti_stats + 15);
        v249 = [MEMORY[0x277CCABB0] numberWithFloat:v86];
        v387[13] = v249;
        v386[14] = @"AggDurationAggressorsBin15";
        LODWORD(v87) = *(self->_agg_duration_pencil_dti_stats + 16);
        v247 = [MEMORY[0x277CCABB0] numberWithFloat:v87];
        v387[14] = v247;
        v386[15] = @"AggDurationAggressorsBin16";
        LODWORD(v88) = *(self->_agg_duration_pencil_dti_stats + 17);
        v245 = [MEMORY[0x277CCABB0] numberWithFloat:v88];
        v387[15] = v245;
        v386[16] = @"AggDurationAggressorsBin17";
        LODWORD(v89) = *(self->_agg_duration_pencil_dti_stats + 18);
        v244 = [MEMORY[0x277CCABB0] numberWithFloat:v89];
        v387[16] = v244;
        v386[17] = @"AggDurationAggressorsBin18";
        LODWORD(v90) = *(self->_agg_duration_pencil_dti_stats + 19);
        v243 = [MEMORY[0x277CCABB0] numberWithFloat:v90];
        v387[17] = v243;
        v386[18] = @"AggDurationAggressorsBin19";
        LODWORD(v91) = *(self->_agg_duration_pencil_dti_stats + 20);
        v242 = [MEMORY[0x277CCABB0] numberWithFloat:v91];
        v387[18] = v242;
        v386[19] = @"AggDurationAggressorsBin20";
        LODWORD(v92) = *(self->_agg_duration_pencil_dti_stats + 21);
        v241 = [MEMORY[0x277CCABB0] numberWithFloat:v92];
        v387[19] = v241;
        v386[20] = @"AggDurationAggressorsBin21";
        LODWORD(v93) = *(self->_agg_duration_pencil_dti_stats + 22);
        v240 = [MEMORY[0x277CCABB0] numberWithFloat:v93];
        v387[20] = v240;
        v386[21] = @"AggDurationAggressorsBin22";
        LODWORD(v94) = *(self->_agg_duration_pencil_dti_stats + 23);
        v239 = [MEMORY[0x277CCABB0] numberWithFloat:v94];
        v387[21] = v239;
        v386[22] = @"AggDurationAggressorsBin23";
        LODWORD(v95) = *(self->_agg_duration_pencil_dti_stats + 24);
        v238 = [MEMORY[0x277CCABB0] numberWithFloat:v95];
        v387[22] = v238;
        v386[23] = @"AggDurationAggressorsBin24";
        LODWORD(v96) = *(self->_agg_duration_pencil_dti_stats + 25);
        v237 = [MEMORY[0x277CCABB0] numberWithFloat:v96];
        v387[23] = v237;
        v386[24] = @"AggDurationAggressorsBin25";
        LODWORD(v97) = *(self->_agg_duration_pencil_dti_stats + 26);
        v388 = [MEMORY[0x277CCABB0] numberWithFloat:v97];
        v386[25] = @"AggDurationAggressorsBin26";
        LODWORD(v98) = *(self->_agg_duration_pencil_dti_stats + 27);
        v287 = v388;
        v389 = [MEMORY[0x277CCABB0] numberWithFloat:v98];
        v386[26] = @"AggDurationAggressorsBin27";
        LODWORD(v99) = *(self->_agg_duration_pencil_dti_stats + 28);
        v236 = v389;
        v235 = [MEMORY[0x277CCABB0] numberWithFloat:v99];
        v390 = v235;
        v386[27] = @"AggDurationAggressorsBin28";
        LODWORD(v100) = *(self->_agg_duration_pencil_dti_stats + 29);
        v234 = [MEMORY[0x277CCABB0] numberWithFloat:v100];
        v391 = v234;
        v386[28] = @"AggDurationAggressorsBin29";
        LODWORD(v101) = *(self->_agg_duration_pencil_dti_stats + 30);
        v233 = [MEMORY[0x277CCABB0] numberWithFloat:v101];
        v392 = v233;
        v386[29] = @"AggDurationAggressorsBin30";
        LODWORD(v102) = *(self->_agg_duration_pencil_dti_stats + 31);
        v232 = [MEMORY[0x277CCABB0] numberWithFloat:v102];
        v393 = v232;
        v386[30] = @"AggDurationAggressorsBin31";
        LODWORD(v103) = *(self->_agg_duration_pencil_dti_stats + 32);
        v231 = [MEMORY[0x277CCABB0] numberWithFloat:v103];
        v394 = v231;
        v386[31] = @"AggDurationAggressorsBin32";
        LODWORD(v104) = *(self->_agg_duration_pencil_dti_stats + 33);
        v230 = [MEMORY[0x277CCABB0] numberWithFloat:v104];
        v395 = v230;
        v386[32] = @"AggDurationAggressorsBin33";
        LODWORD(v105) = *(self->_agg_duration_pencil_dti_stats + 34);
        v229 = [MEMORY[0x277CCABB0] numberWithFloat:v105];
        v396 = v229;
        v386[33] = @"AggDurationAggressorsBin34";
        LODWORD(v106) = *(self->_agg_duration_pencil_dti_stats + 35);
        v107 = [MEMORY[0x277CCABB0] numberWithFloat:v106];
        v397 = v107;
        v386[34] = @"AggDurationAggressorsBin35";
        LODWORD(v108) = *(self->_agg_duration_pencil_dti_stats + 36);
        v109 = [MEMORY[0x277CCABB0] numberWithFloat:v108];
        v398 = v109;
        v386[35] = @"AggDurationAggressorsBin36";
        LODWORD(v110) = *(self->_agg_duration_pencil_dti_stats + 37);
        v111 = [MEMORY[0x277CCABB0] numberWithFloat:v110];
        v399 = v111;
        v386[36] = @"AggDurationAggressorsBin37";
        LODWORD(v112) = *(self->_agg_duration_pencil_dti_stats + 38);
        v113 = [MEMORY[0x277CCABB0] numberWithFloat:v112];
        v400 = v113;
        v386[37] = @"AggDurationAggressorsBin38";
        LODWORD(v114) = *(self->_agg_duration_pencil_dti_stats + 39);
        v115 = [MEMORY[0x277CCABB0] numberWithFloat:v114];
        v401 = v115;
        v386[38] = @"AggDurationAggressorsBin39";
        LODWORD(v116) = *(self->_agg_duration_pencil_dti_stats + 40);
        v117 = [MEMORY[0x277CCABB0] numberWithFloat:v116];
        v118 = v73;
        v402 = v117;
        v386[39] = @"AggDurationAggressorsBin40";
        LODWORD(v119) = *(self->_agg_duration_pencil_dti_stats + 41);
        v120 = [MEMORY[0x277CCABB0] numberWithFloat:v119];
        v403 = v120;
        v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v387 forKeys:v386 count:40];
        v118[2](v118, @"com.apple.Multitouch.EmbeddedStatistics.PencilAggressorsAggregatedDuration", v121);

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v122 = qword_2800179E0;
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
        {
          v156 = self->_agg_duration_pencil_dti_stats;
          v157 = v156[2];
          v158 = v156[3];
          v159 = v156[4];
          v160 = v156[5];
          v161 = v156[6];
          v162 = v156[7];
          v163 = v156[8];
          v164 = v156[9];
          v165 = v156[10];
          v166 = v156[11];
          v167 = v156[12];
          v168 = v156[13];
          v169 = v156[14];
          v170 = v156[15];
          v171 = v156[16];
          v172 = v156[17];
          v174 = v156[18];
          v173 = v156[19];
          v176 = v156[20];
          v175 = v156[21];
          v178 = v156[22];
          v177 = v156[23];
          v180 = v156[24];
          v179 = v156[25];
          *buf = 134227968;
          *v317 = v157;
          v181 = v156[26];
          *&v157 = v156[27];
          v318 = v158;
          *&v319[2] = v159;
          *&v159 = v156[28];
          *&v158 = v156[29];
          *&v319[12] = v160;
          v320 = v161;
          *&v161 = v156[30];
          *&v160 = v156[31];
          *&v321[2] = v162;
          *v323 = v163;
          *&v163 = v156[32];
          *&v162 = v156[33];
          v324 = v164;
          *&v325[2] = v165;
          *&v165 = v156[34];
          *&v164 = v156[35];
          *v327 = v166;
          v328 = v167;
          *&v167 = v156[36];
          *&v166 = v156[37];
          *&v329[2] = v168;
          v331 = v169;
          *&v169 = v156[38];
          *&v168 = v156[39];
          v333 = v170;
          v335 = v171;
          *&v171 = v156[40];
          *&v170 = v156[41];
          v337 = v172;
          v339 = v174;
          v341 = v173;
          v343 = v176;
          v345 = v175;
          v347 = v178;
          v349 = v177;
          v351 = v180;
          v353 = v179;
          v355 = v181;
          v357 = *&v157;
          v359 = *&v159;
          v361 = *&v158;
          v363 = *&v161;
          v365 = *&v160;
          v367 = *&v163;
          v369 = *&v162;
          v371 = *&v165;
          v373 = *&v164;
          v375 = *&v167;
          v377 = *&v166;
          v379 = *&v169;
          v381 = *&v168;
          v383 = *&v171;
          v385 = *&v170;
          *&v317[8] = 2048;
          *v319 = 2048;
          *&v319[10] = 2048;
          *&v319[20] = 2048;
          *v321 = 2048;
          v322 = 2048;
          *&v323[8] = 2048;
          *v325 = 2048;
          v326 = 2048;
          *&v327[8] = 2048;
          *v329 = 2048;
          v330 = 2048;
          v332 = 2048;
          v334 = 2048;
          v336 = 2048;
          v338 = 2048;
          v340 = 2048;
          v342 = 2048;
          v344 = 2048;
          v346 = 2048;
          v348 = 2048;
          v350 = 2048;
          v352 = 2048;
          v354 = 2048;
          v356 = 2048;
          v358 = 2048;
          v360 = 2048;
          v362 = 2048;
          v364 = 2048;
          v366 = 2048;
          v368 = 2048;
          v370 = 2048;
          v372 = 2048;
          v374 = 2048;
          v376 = 2048;
          v378 = 2048;
          v380 = 2048;
          v382 = 2048;
          v384 = 2048;
          _os_log_debug_impl(&dword_2653C2000, v122, OS_LOG_TYPE_DEBUG, "Core Analytics: PencilAggressorsAggregatedDuration Bin01=%fs Bin02=%fs Bin03=%fs Bin04=%fs Bin05=%fs Bin06=%fs Bin07=%fs Bin08=%fs Bin09=%fs Bin10=%fs Bin11=%fs Bin12=%fs Bin13=%fs Bin14=%fs Bin15=%fs Bin16=%fs Bin17=%fs Bin18=%fs Bin19=%fs Bin20=%fs Bin21=%fs Bin22=%fs Bin23=%fs Bin24=%fs Bin25=%fs Bin26=%fs Bin27=%fs Bin28=%fs Bin29=%fs Bin30=%fs Bin31=%fs Bin32=%fs Bin33=%fs Bin34=%fs Bin35=%fs Bin36=%fs Bin37=%fs Bin38=%fs Bin39=%fs Bin40=%fs ", buf, 0x192u);
        }

        v7 = 0x277CCA000uLL;
      }

      agg_calblob_error_in_algs_stats = self->_agg_calblob_error_in_algs_stats;
      if (agg_calblob_error_in_algs_stats)
      {
        v124 = self->_coreAnalyticsCallback;
        v296[0] = @"AggPencilAffcErrorChecksum";
        v295 = [*(v7 + 2992) numberWithUnsignedChar:agg_calblob_error_in_algs_stats[8]];
        v297[0] = v295;
        v296[1] = @"AggPencilAffcErrorMagic";
        v288 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 9)];
        v297[1] = v288;
        v296[2] = @"AggPencilAffcErrorMissingCal";
        v298 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 10)];
        v296[3] = @"AggPencilAffcErrorNone";
        v281 = v298;
        v299 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 11)];
        v296[4] = @"AggPencilAffcErrorVersion";
        v278 = v299;
        v284 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 12)];
        v300 = v284;
        v296[5] = @"AggPencilMtdoErrorChecksum";
        v275 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 13)];
        v301 = v275;
        v296[6] = @"AggPencilMtdoErrorMagic";
        v272 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 14)];
        v302 = v272;
        v296[7] = @"AggPencilMtdoErrorMissingCal";
        v269 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 15)];
        v303 = v269;
        v296[8] = @"AggPencilMtdoErrorNone";
        v266 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 16)];
        v304 = v266;
        v296[9] = @"AggPencilMtdoErrorVersion";
        v263 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 17)];
        v305 = v263;
        v296[10] = @"AggTouchMtclErrorChecksum";
        v260 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 18)];
        v306 = v260;
        v296[11] = @"AggTouchMtclErrorMagic";
        v257 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 19)];
        v307 = v257;
        v296[12] = @"AggTouchMtclErrorMissingCal";
        v254 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 20)];
        v308 = v254;
        v296[13] = @"AggTouchMtclErrorNone";
        v125 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 21)];
        v309 = v125;
        v296[14] = @"AggTouchMtclErrorVersion";
        v126 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 22)];
        v310 = v126;
        v296[15] = @"AggTouchMtdoErrorChecksum";
        v127 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 23)];
        v311 = v127;
        v296[16] = @"AggTouchMtdoErrorMagic";
        v128 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 24)];
        v312 = v128;
        v296[17] = @"AggTouchMtdoErrorMissingCal";
        v129 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 25)];
        v313 = v129;
        v296[18] = @"AggTouchMtdoErrorNone";
        v130 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 26)];
        v314 = v130;
        v296[19] = @"AggTouchMtdoErrorVersion";
        v131 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(self->_agg_calblob_error_in_algs_stats + 27)];
        v315 = v131;
        v132 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v297 forKeys:v296 count:20];
        v124[2](v124, @"com.apple.Multitouch.EmbeddedStatistics.CalblobErrorInAlgs", v132);

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v133 = qword_2800179E0;
        if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
        {
          v182 = self->_agg_calblob_error_in_algs_stats;
          v183 = v182[8];
          v184 = v182[9];
          v185 = v182[10];
          v186 = v182[11];
          v187 = v182[12];
          v188 = v182[13];
          v189 = v182[14];
          v190 = v182[15];
          v191 = v182[16];
          v192 = v182[17];
          v193 = v182[18];
          v194 = v182[19];
          v195 = v182[20];
          v196 = v182[21];
          v197 = v182[22];
          v198 = v182[23];
          v199 = v182[24];
          v200 = v182[25];
          v201 = v182[26];
          LODWORD(v182) = v182[27];
          *buf = 67113984;
          *v317 = v183;
          *&v317[4] = 1024;
          *&v317[6] = v184;
          LOWORD(v318) = 1024;
          *(&v318 + 2) = v185;
          HIWORD(v318) = 1024;
          *v319 = v186;
          *&v319[4] = 1024;
          *&v319[6] = v187;
          *&v319[10] = 1024;
          *&v319[12] = v188;
          *&v319[16] = 1024;
          *&v319[18] = v189;
          LOWORD(v320) = 1024;
          *(&v320 + 2) = v190;
          HIWORD(v320) = 1024;
          *v321 = v191;
          *&v321[4] = 1024;
          *&v321[6] = v192;
          v322 = 1024;
          *v323 = v193;
          *&v323[4] = 1024;
          *&v323[6] = v194;
          LOWORD(v324) = 1024;
          *(&v324 + 2) = v195;
          HIWORD(v324) = 1024;
          *v325 = v196;
          *&v325[4] = 1024;
          *&v325[6] = v197;
          v326 = 1024;
          *v327 = v198;
          *&v327[4] = 1024;
          *&v327[6] = v199;
          LOWORD(v328) = 1024;
          *(&v328 + 2) = v200;
          HIWORD(v328) = 1024;
          *v329 = v201;
          *&v329[4] = 1024;
          *&v329[6] = v182;
          _os_log_debug_impl(&dword_2653C2000, v133, OS_LOG_TYPE_DEBUG, "Core Analytics: CalblobErrorInAlgs AggPencilAffcError Checksum=%d Magic=%d MissingCal=%d None=%d Version=%d AggPencilMtdoError Checksum=%d Magic=%d MissingCal=%d None=%d Version=%d AggTouchMtclError Checksum=%d Magic=%d MissingCal=%d None=%d Version=%d AggTouchMtdoError Checksum=%d Magic=%d MissingCal=%d None=%d Version=%d ", buf, 0x7Au);
        }
      }
    }

    *&self->_baseline_adapt_rate_state_stats = 0u;
    p_baseline_adapt_rate_state_stats = &self->_baseline_adapt_rate_state_stats;
    *(p_baseline_adapt_rate_state_stats + 3) = 0u;
    *(p_baseline_adapt_rate_state_stats + 4) = 0u;
    *(p_baseline_adapt_rate_state_stats + 1) = 0u;
    *(p_baseline_adapt_rate_state_stats + 2) = 0u;
  }
}

- (void)callCoreAnalyticsCallback
{
  selfCopy6 = self;
  v75[1] = *MEMORY[0x277D85DE8];
  if (self->_coreAnalyticsCallback)
  {
    if (self->_duration_between_touches)
    {
      HIDWORD(v3) = -1030792151 * rand();
      LODWORD(v3) = HIDWORD(v3);
      if ((v3 >> 2) <= 0x28F5C28)
      {
        coreAnalyticsCallback = selfCopy6->_coreAnalyticsCallback;
        v74 = @"Duration";
        *&v4 = *selfCopy6->_duration_between_touches;
        v50 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
        v75[0] = v50;
        v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:&v74 count:1];
        coreAnalyticsCallback[2](coreAnalyticsCallback, @"com.apple.Multitouch.EmbeddedStatistics.DurationBetweenTouches", v6);

        selfCopy6 = self;
      }
    }

    path_stats = selfCopy6->_path_stats;
    if (path_stats && path_stats->var0)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        HIDWORD(v10) = -1030792151 * rand();
        LODWORD(v10) = HIDWORD(v10);
        if ((v10 >> 2) <= 0x28F5C28)
        {
          v12 = self->_coreAnalyticsCallback;
          v72[0] = @"MinGeometricMean";
          LODWORD(v11) = LODWORD(path_stats->var1[v8].var0);
          v51 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
          v73[0] = v51;
          v72[1] = @"MaxGeometricMean";
          LODWORD(v13) = LODWORD(path_stats->var1[v8].var1);
          v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
          v73[1] = v14;
          v72[2] = @"EccentricityForMin";
          LODWORD(v15) = LODWORD(path_stats->var1[v8].var2);
          v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
          v73[2] = v16;
          v72[3] = @"EccentricityForMax";
          LODWORD(v17) = LODWORD(path_stats->var1[v8].var3);
          v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
          v73[3] = v18;
          v72[4] = @"InitialTouchIdentity";
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:path_stats->var1[v8].var4];
          v73[4] = v19;
          v72[5] = @"LiftoffTouchIdentity";
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:path_stats->var1[v8].var5];
          v73[5] = v20;
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:6];
          v12[2](v12, @"com.apple.Multitouch.EmbeddedStatistics.LiftoffPathStats", v21);
        }

        ++v9;
        selfCopy6 = self;
        path_stats = self->_path_stats;
        ++v8;
      }

      while (v9 < path_stats->var0);
    }

    if (selfCopy6->_phone_telemetry.event_occurred)
    {
      if (selfCopy6->_phone_telemetry.baseline_inversion_occurred)
      {
        v22 = selfCopy6->_coreAnalyticsCallback;
        v70[0] = @"Lockscreen_Status";
        v52 = [MEMORY[0x277CCABB0] numberWithBool:selfCopy6->_phone_telemetry.is_on_coversheet];
        v70[1] = @"Touch_Frequency";
        v71[0] = v52;
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_phone_telemetry.scan_frequency_index];
        v71[1] = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];
        v22[2](v22, @"com.apple.multitouch.baseline.inversion", v24);

        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v25 = qword_2800179E0;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          baseline_adaption_interval_ms = self->_phone_telemetry.baseline_adaption_interval_ms;
          time_since_last_baseline_change_ms = self->_phone_telemetry.time_since_last_baseline_change_ms;
          scan_frequency_index = self->_phone_telemetry.scan_frequency_index;
          if (self->_phone_telemetry.is_on_coversheet)
          {
            v29 = "onCoversheet";
          }

          else
          {
            v29 = "";
          }

          *buf = 67109890;
          v61 = baseline_adaption_interval_ms;
          v62 = 1024;
          v63 = time_since_last_baseline_change_ms;
          v64 = 1024;
          v65 = scan_frequency_index;
          v66 = 2080;
          v67 = v29;
          _os_log_impl(&dword_2653C2000, v25, OS_LOG_TYPE_INFO, "Baseline Inversion: Interval=%dms SinceLast=%dms FreqIdx=%d %s", buf, 0x1Eu);
        }

        selfCopy6 = self;
      }

      if (selfCopy6->_phone_telemetry.nondefault_baseline_adapt_occurred)
      {
        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v30 = qword_2800179E0;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = selfCopy6->_phone_telemetry.baseline_adaption_interval_ms;
          v32 = selfCopy6->_phone_telemetry.time_since_last_baseline_change_ms;
          v33 = selfCopy6->_phone_telemetry.scan_frequency_index;
          v34 = "";
          if (selfCopy6->_phone_telemetry.is_on_coversheet)
          {
            v35 = "onCoversheet";
          }

          else
          {
            v35 = "";
          }

          if (selfCopy6->_phone_telemetry.has_touch_above_threshold)
          {
            v34 = "aboveThreshold";
          }

          *buf = 67110146;
          v61 = v31;
          v62 = 1024;
          v63 = v32;
          v64 = 1024;
          v65 = v33;
          v66 = 2080;
          v67 = v35;
          v68 = 2080;
          v69 = v34;
          _os_log_impl(&dword_2653C2000, v30, OS_LOG_TYPE_INFO, "Non Default Baseline: Interval=%dms SinceLast=%dms FreqIdx=%d %s %s", buf, 0x28u);
        }

        v36 = self->_coreAnalyticsCallback;
        v58[0] = @"AdaptationInterval";
        v53 = [MEMORY[0x277CCABB0] numberWithInt:self->_phone_telemetry.baseline_adaption_interval_ms];
        v59[0] = v53;
        v58[1] = @"FreqDuringAdaptation";
        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_phone_telemetry.scan_frequency_index];
        v59[1] = v37;
        v58[2] = @"Lockscreen_Status";
        v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_phone_telemetry.is_on_coversheet];
        v59[2] = v38;
        v58[3] = @"TimeSinceLastAdapt";
        v39 = [MEMORY[0x277CCABB0] numberWithInt:self->_phone_telemetry.time_since_last_baseline_change_ms];
        v59[3] = v39;
        v58[4] = @"Touching";
        v40 = [MEMORY[0x277CCABB0] numberWithBool:self->_phone_telemetry.has_touch_above_threshold];
        v59[4] = v40;
        v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:5];
        v36[2](v36, @"com.apple.multitouch.baseline.adaptation", v41);

        selfCopy6 = self;
      }

      if (selfCopy6->_phone_telemetry.all_columns_covered_occurred)
      {
        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v42 = qword_2800179E0;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = selfCopy6->_phone_telemetry.baseline_adaption_interval_ms;
          v44 = selfCopy6->_phone_telemetry.time_since_last_baseline_change_ms;
          v45 = selfCopy6->_phone_telemetry.scan_frequency_index;
          if (selfCopy6->_phone_telemetry.is_on_coversheet)
          {
            v46 = "onCoversheet";
          }

          else
          {
            v46 = "";
          }

          *buf = 67109890;
          v61 = v43;
          v62 = 1024;
          v63 = v44;
          v64 = 1024;
          v65 = v45;
          v66 = 2080;
          v67 = v46;
          _os_log_impl(&dword_2653C2000, v42, OS_LOG_TYPE_INFO, "All Columns Covered: Interval=%dms SinceLast=%dms FreqIdx=%d %s", buf, 0x1Eu);
        }

        v47 = self->_coreAnalyticsCallback;
        v56[0] = @"Lockscreen_Status";
        v54 = [MEMORY[0x277CCABB0] numberWithBool:self->_phone_telemetry.is_on_coversheet];
        v56[1] = @"Touch_Frequency";
        v57[0] = v54;
        v48 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_phone_telemetry.scan_frequency_index];
        v57[1] = v48;
        v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
        v47[2](v47, @"com.apple.multitouch.dtn.allcolumnscovered", v49);

        selfCopy6 = self;
      }
    }
  }

  selfCopy6->_phone_telemetry.event_occurred = 0;
  selfCopy6->_path_stats = 0;
  selfCopy6->_duration_between_touches = 0;
}

- (id)generateWakeEvent:(int)event timestamp:(unint64_t)timestamp
{
  eventCopy = event;
  LODWORD(v6) = 0;
  v4 = [MEMORY[0x277CD2858] vendorDefinedEvent:timestamp usagePage:65376 usage:10 version:0 data:&eventCopy length:8 options:v6];

  return v4;
}

- (id)generatePtwEvent:(id *)event transducerType:(unsigned int)type now:(unint64_t)now
{
  if (type == 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = [MEMORY[0x277CD2858] digitizerEvent:-[SASInterfacePadHost getValidTimestamp:now:](self transducerType:"getValidTimestamp:now:" x:event->var0.var0 y:now) z:*&type options:{v6, event->var0.var5, event->var0.var6, 0.0}];
  [v7 setIntegerValue:event->var0.var4 forField:720903];
  [v7 setIntegerValue:event->var0.var13 forField:720904];
  [v7 setIntegerValue:event->var0.var14 forField:720905];
  [v7 setIntegerValue:1 forField:720921];

  return v7;
}

- (id)generateTapEvent:(id *)event transducerType:(unsigned int)type now:(unint64_t)now
{
  if (type == 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = [MEMORY[0x277CD2858] digitizerEvent:-[SASInterfacePadHost getValidTimestamp:now:](self transducerType:"getValidTimestamp:now:" x:event->var0 y:now) z:*&type options:{v6, event->var5, event->var6, 0.0}];
  [v7 setIntegerValue:event->var4 forField:720903];
  [v7 setIntegerValue:event->var13 forField:720904];
  [v7 setIntegerValue:event->var14 forField:720905];
  [v7 setIntegerValue:1 forField:720921];

  return v7;
}

- (unint64_t)getValidTimestamp:(unint64_t)timestamp now:(unint64_t)now
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = now - timestamp;
  if (now - timestamp >= 0xF4240)
  {
    timestamp_offset = self->_timestamp_offset;
    if ((v6 - timestamp_offset) >= 0xF4240)
    {
      self->_timestamp_offset = v6;
      if (qword_2800179E8 != -1)
      {
        dispatch_once(&qword_2800179E8, &__block_literal_global);
      }

      v14 = qword_2800179E0;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = self->_timestamp_offset;
        v16 = 134218496;
        nowCopy3 = now;
        v18 = 2048;
        timestampCopy2 = timestamp;
        v20 = 2048;
        v21 = v15;
        _os_log_error_impl(&dword_2653C2000, v14, OS_LOG_TYPE_ERROR, "New timestamp offset: now=%llu timestamp=%llu offset=%lld", &v16, 0x20u);
      }

      selfCopy2 = self;
      nowCopy2 = now;
    }

    else
    {
      if (qword_2800179E8 != -1)
      {
        dispatch_once(&qword_2800179E8, &__block_literal_global);
      }

      v10 = timestamp_offset + timestamp;
      v11 = qword_2800179E0;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v16 = 134218496;
        nowCopy3 = now;
        v18 = 2048;
        timestampCopy2 = timestamp;
        v20 = 2048;
        v21 = v10;
        _os_log_debug_impl(&dword_2653C2000, v11, OS_LOG_TYPE_DEBUG, "Adjusting timestamp: now=%llu timestamp=%llu adjusted=%llu", &v16, 0x20u);
      }

      selfCopy2 = self;
      nowCopy2 = v10;
    }

    return [(SASInterfacePadHost *)selfCopy2 timestampUsToAbsoluteMach:nowCopy2];
  }

  else
  {
    self->_timestamp_offset = 0;

    return [(SASInterfacePadHost *)self timestampUsToAbsoluteMach:?];
  }
}

- (id)generateSwipeUp:(unint64_t)up
{
  NavigationSwipeEvent = IOHIDEventCreateNavigationSwipeEvent();
  if (qword_2800179E8 != -1)
  {
    dispatch_once(&qword_2800179E8, &__block_literal_global);
  }

  v4 = qword_2800179E0;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2653C2000, v4, OS_LOG_TYPE_DEFAULT, "Generate Swipe Up Wake Event", buf, 2u);
  }

  if (SALoggingHIDEventSignpost::onceToken != -1)
  {
    dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
  }

  v5 = SALoggingHIDEventSignpost::__logObj;
  if (os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_2653C2000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GenerateWakeEvent", "Atomic Swipe Up Wake Event", v7, 2u);
  }

  return NavigationSwipeEvent;
}

- (id)generateCoverGesture:(unint64_t)gesture state:(unsigned __int8)state surfaceCovered:(float)covered
{
  stateCopy = state;
  v16 = *MEMORY[0x277D85DE8];
  coveredCopy = covered;
  self->_cover_gesture_state = state;
  LODWORD(v10) = 0;
  v6 = [MEMORY[0x277CD2858] vendorDefinedEvent:gesture usagePage:65280 usage:89 version:1 data:&coveredCopy length:4 options:v10];
  IOHIDEventSetPhase();
  if (qword_2800179E8 != -1)
  {
    dispatch_once(&qword_2800179E8, &__block_literal_global);
  }

  v7 = qword_2800179E0;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v13 = stateCopy;
    v14 = 2048;
    v15 = coveredCopy;
    _os_log_impl(&dword_2653C2000, v7, OS_LOG_TYPE_DEFAULT, "Generate CoverGesture %d surface %0.2f", buf, 0x12u);
  }

  if (SALoggingHIDEventSignpost::onceToken != -1)
  {
    dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
  }

  v8 = SALoggingHIDEventSignpost::__logObj;
  if (os_signpost_enabled(v8))
  {
    *buf = 67109376;
    v13 = stateCopy;
    v14 = 2048;
    v15 = coveredCopy;
    _os_signpost_emit_with_name_impl(&dword_2653C2000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GenerateCoverGesture", "Cover Gesture %d surface %0.2f", buf, 0x12u);
  }

  return v6;
}

- (id)generateTouchSystemReady:(unint64_t)ready
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 1;
  LODWORD(v9) = 1;
  v4 = [MEMORY[0x277CD2858] vendorDefinedEvent:ready usagePage:65376 usage:9 version:1 data:&v10 length:1 options:v9];
  if (qword_2800179E8 != -1)
  {
    dispatch_once(&qword_2800179E8, &__block_literal_global);
  }

  v5 = qword_2800179E0;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    prev_frame_diff_us = self->_prev_frame_diff_us;
    *buf = 134217984;
    v12 = prev_frame_diff_us;
    _os_log_impl(&dword_2653C2000, v5, OS_LOG_TYPE_DEFAULT, "Generating Touch System Ready (%lluus since last frame)\n", buf, 0xCu);
  }

  if (SALoggingHIDEventSignpost::onceToken != -1)
  {
    dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
  }

  v7 = SALoggingHIDEventSignpost::__logObj;
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2653C2000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TouchSystemReady", "Touch System Ready", buf, 2u);
  }

  return v4;
}

- (id)generateEventInfo:(id *)info interpolated:(BOOL)interpolated timestamp:(unint64_t)timestamp
{
  interpolatedCopy = interpolated;
  v33 = *MEMORY[0x277D85DE8];
  if (interpolated)
  {
    v9 = 33;
  }

  else
  {
    v9 = 1;
  }

  v17 = 0u;
  v18 = 0u;
  LOWORD(v17) = *&info->var0;
  *(&v17 + 1) = [(SASInterfacePadHost *)self timestampUsToAbsoluteMach:self->_timestamp_offset + info->var2];
  *&v18 = [(SASInterfacePadHost *)self timestampUsToAbsoluteMach:self->_timestamp_offset + info->var3];
  BYTE8(v18) = info->var4;
  LODWORD(v16) = v9;
  v10 = [MEMORY[0x277CD2858] vendorDefinedEvent:timestamp usagePage:65308 usage:32 version:1 data:&v17 length:32 options:v16];
  if (qword_2800179E8 != -1)
  {
    dispatch_once(&qword_2800179E8, &__block_literal_global);
  }

  v11 = qword_2800179E0;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v13 = "";
    v14 = "NO";
    if (interpolatedCopy)
    {
      v13 = "Interpolated ";
    }

    if (v17)
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    *buf = 136316674;
    if (BYTE1(v17))
    {
      v14 = "YES";
    }

    v20 = v13;
    v21 = 2080;
    v22 = v15;
    v23 = 2080;
    v24 = v14;
    v25 = 1024;
    v26 = BYTE8(v18);
    v27 = 2048;
    v28 = *(&v17 + 1);
    v29 = 2048;
    v30 = v18;
    v31 = 2048;
    timestampCopy = timestamp;
    _os_log_debug_impl(&dword_2653C2000, v11, OS_LOG_TYPE_DEBUG, "Generating %sEvent Info: expectNext=%s information=%s reason=%u deadline=%llu nextTimestamp=%llu now=%llu", buf, 0x44u);
  }

  return v10;
}

- (id)generatePreHysteresisAngles:(const FireflyUnfilteredAnglesPacket *)angles timestamp:(unint64_t)timestamp
{
  v12 = *MEMORY[0x277D85DE8];
  LODWORD(v9) = 1;
  v5 = [MEMORY[0x277CD2858] vendorDefinedEvent:timestamp usagePage:65376 usage:4102 version:1 data:angles length:16 options:v9];
  if (qword_2800179E8 != -1)
  {
    dispatch_once(&qword_2800179E8, &__block_literal_global);
  }

  v6 = qword_2800179E0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    prev_frame_diff_us = self->_prev_frame_diff_us;
    *buf = 134217984;
    v11 = prev_frame_diff_us;
    _os_log_debug_impl(&dword_2653C2000, v6, OS_LOG_TYPE_DEBUG, "Generating Pre Hysteresis FF angles Event (%lluus since last frame)\n", buf, 0xCu);
  }

  return v5;
}

- (id)generateStylusEvent:(id *)event interpolated:(BOOL)interpolated now:(unint64_t)now
{
  v8 = [(SASInterfacePadHost *)self stitchingTS:event->var0.var0 now:now];
  v9 = [MEMORY[0x277CD2858] polarDigitizerEvent:-[SASInterfacePadHost getValidTimestamp:now:](self altitude:"getValidTimestamp:now:" azimuth:v8 quality:now) density:1 majorRadius:event->var2 minorRadius:event->var0.var12 options:{event->var0.var10, event->var0.var11, 0.0, 0.0}];
  [v9 setIntegerValue:0 forField:720900];
  v10 = 120.0;
  if (!event->var0.var14)
  {
    v10 = 0.0;
  }

  [v9 setDoubleValue:720906 forField:v10];
  [v9 setIntegerValue:event->var0.var2 forField:720901];
  [v9 setIntegerValue:event->var0.var3 forField:720902];
  [v9 setIntegerValue:event->var0.var4 forField:720903];
  [v9 setIntegerValue:event->var0.var1 forField:720923];
  [v9 setDoubleValue:720896 forField:event->var0.var5];
  [v9 setDoubleValue:720897 forField:event->var0.var6];
  [v9 setDoubleValue:720898 forField:event->var1];
  [v9 setIntegerValue:event->var0.var13 forField:720904];
  [v9 setIntegerValue:event->var0.var14 forField:720905];
  if ((event->var3 & 0x2000) != 0)
  {
    [v9 setIntegerValue:98304 forField:720926];
  }

  return v9;
}

- (unint64_t)stitchingTS:(unint64_t)s now:(unint64_t)now
{
  pen_meta_data = self->_pen_meta_data;
  if (!pen_meta_data)
  {
    return s;
  }

  hts_delta_ms = self->_hts_delta_ms;
  if (hts_delta_ms && pen_meta_data->var5 != 1)
  {
    return s + 1000 * hts_delta_ms;
  }

  return now;
}

- (id)generateFingerEvent:(id *)event interpolated:(BOOL)interpolated now:(unint64_t)now
{
  if (interpolated)
  {
    v6 = 33;
  }

  else
  {
    v6 = 1;
  }

  v7 = [MEMORY[0x277CD2858] qualityDigitizerEvent:-[SASInterfacePadHost getValidTimestamp:now:](self quality:"getValidTimestamp:now:" density:event->var0 irregularity:now) majorRadius:v6 minorRadius:event->var10 accuracy:event->var11 options:{0.0, event->var8, event->var7, 0.0}];
  [v7 setIntegerValue:2 forField:720900];
  [v7 setIntegerValue:event->var2 forField:720901];
  [v7 setIntegerValue:event->var3 forField:720902];
  [v7 setIntegerValue:event->var4 forField:720903];
  [v7 setIntegerValue:event->var1 forField:720923];
  [v7 setDoubleValue:720896 forField:event->var5];
  [v7 setDoubleValue:720897 forField:event->var6];
  [v7 setDoubleValue:720908 forField:event->var12];
  [v7 setDoubleValue:720922 forField:event->var9];
  [v7 setIntegerValue:event->var13 forField:720904];
  [v7 setIntegerValue:event->var14 forField:720905];
  IOHIDEventSetPhase();

  return v7;
}

- (id)generateStylusHandEvent:(id *)event interpolated:(BOOL)interpolated now:(unint64_t)now
{
  if (interpolated)
  {
    v8 = 35;
  }

  else
  {
    v8 = 3;
  }

  v9 = [(SASInterfacePadHost *)self stitchingTS:event->var0.var0 now:now];
  v10 = [MEMORY[0x277CD2858] digitizerEvent:-[SASInterfacePadHost getValidTimestamp:now:](self transducerType:"getValidTimestamp:now:" x:v9 y:now) z:3 options:{v8, event->var0.var5, event->var0.var6, event->var1}];
  [v10 setIntegerValue:event->var0.var3 forField:720902];
  [v10 setIntegerValue:event->var0.var4 forField:720903];
  [v10 setIntegerValue:event->var0.var1 forField:720923];
  [v10 setIntegerValue:event->var0.var13 forField:720904];
  [v10 setIntegerValue:event->var0.var14 forField:720905];

  return v10;
}

- (id)generateHandEvent:(id *)event interpolated:(BOOL)interpolated now:(unint64_t)now
{
  if (interpolated)
  {
    v6 = 35;
  }

  else
  {
    v6 = 3;
  }

  v7 = [MEMORY[0x277CD2858] digitizerEvent:-[SASInterfacePadHost getValidTimestamp:now:](self transducerType:"getValidTimestamp:now:" x:event->var0 y:now) z:3 options:{v6, event->var5, event->var6, 0.0}];
  [v7 setIntegerValue:event->var3 forField:720902];
  [v7 setIntegerValue:event->var4 forField:720903];
  [v7 setIntegerValue:event->var1 forField:720923];
  [v7 setIntegerValue:event->var13 forField:720904];
  [v7 setIntegerValue:event->var14 forField:720905];

  return v7;
}

- (void)cleanStylusNodes
{
  self->_ptw = 0;
  self->_stylus = 0;
  self->_stylusHand = 0;
  self->_hts_delta_ms = 0;
  self->_pen_meta_data = 0;
  self->_pre_hysteresis_ff_angles = 0;
}

- (void)cleanNodes
{
  self->_tap = 0;
  self->_touch_system_ready = 0;
  self->_cover_gesture.state = 0;
  self->_atomic_wake_event = 0;
  *&self->_fingers = 0u;
  *&self->_hand = 0u;
  self->_event_info = 0;
  self->_interpolated_event_info = 0;
}

- (void)callEventCallback
{
  v93 = *MEMORY[0x277D85DE8];
  if (self->_hand)
  {
    v3 = self->_fingers != 0;
  }

  else
  {
    v3 = 0;
  }

  if (self->_interpolated_hand)
  {
    v4 = self->_interpolated_fingers != 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = self->_atomic_wake_event || self->_cover_gesture.state;
  v74 = 0;
  mach_get_times();
  v6 = [(SASInterfacePadHost *)self timestampMachToUs:0];
  v7 = v6 - self->_last_frame_time_us;
  self->_last_frame_time_us = v6;
  self->_prev_frame_diff_us = v7;
  self->_cont_abs_diff = 0;
  if (self->_eventCallback && (v3 || v4 || self->_tap || v5 || self->_touch_system_ready))
  {
    v8 = objc_opt_new();
    if (self->_tap)
    {
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = v10;
        v12 = [(SASInterfacePadHost *)self generateTapEvent:self->_tap transducerType:3 now:v6, v74];
        v13 = [(SASInterfacePadHost *)self generateTapEvent:self->_tap transducerType:2 now:v6];
        v14 = [(SASInterfacePadHost *)self generateWakeEvent:0 timestamp:[(SASInterfacePadHost *)self getValidTimestamp:self->_tap->var0 now:v6]];
        [v8 addObject:v12];
        [v12 appendEvent:v14];
        [v12 appendEvent:v13];
        if (v9)
        {
          [v12 setIntegerValue:0 forField:720905];
          [v13 setIntegerValue:0 forField:720905];
        }

        v10 = 0;
        v9 = 1;
      }

      while ((v11 & 1) != 0);
      if (qword_2800179E8 != -1)
      {
        dispatch_once(&qword_2800179E8, &__block_literal_global);
      }

      v15 = qword_2800179E0;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2653C2000, v15, OS_LOG_TYPE_DEFAULT, "Wake Event TTW", buf, 2u);
      }

      if (SALoggingHIDEventSignpost::onceToken != -1)
      {
        dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
      }

      v16 = SALoggingHIDEventSignpost::__logObj;
      v17 = v16;
      var1 = self->_tap->var1;
      if (var1)
      {
        if (os_signpost_enabled(v16))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_2653C2000, v17, OS_SIGNPOST_EVENT, var1, "GenerateWakeEvent", "Wake Event TTW", buf, 2u);
        }
      }

      goto LABEL_93;
    }

    if (v4)
    {
      v23 = [(SASInterfacePadHost *)self generateHandEvent:self->_interpolated_hand interpolated:1 now:v6];
      [v8 addObject:v23];
      interpolated_fingers = self->_interpolated_fingers;
      if (interpolated_fingers->var0)
      {
        v25 = 0;
        v26 = 8;
        do
        {
          v27 = [(SASInterfacePadHost *)self generateFingerEvent:interpolated_fingers + v26 interpolated:1 now:v6, v74];
          [v23 appendEvent:v27];

          ++v25;
          interpolated_fingers = self->_interpolated_fingers;
          v26 += 72;
        }

        while (v25 < interpolated_fingers->var0);
      }

      interpolated_event_info = self->_interpolated_event_info;
      if (interpolated_event_info)
      {
        v29 = -[SASInterfacePadHost generateEventInfo:interpolated:timestamp:](self, "generateEventInfo:interpolated:timestamp:", interpolated_event_info, 1, [v23 timestamp]);
        [v23 appendEvent:v29];
      }

      if (SALoggingHIDEventSignpost::onceToken != -1)
      {
        dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
      }

      v30 = SALoggingHIDEventSignpost::__logObj;
      v31 = v30;
      v32 = self->_interpolated_hand->var1;
      if (v32 && os_signpost_enabled(v30))
      {
        v33 = self->_cont_abs_diff + [v23 timestamp];
        var0 = self->_interpolated_fingers->var0;
        interpolated_hand = self->_interpolated_hand;
        var4 = interpolated_hand->var4;
        var14 = interpolated_hand->var14;
        var13 = interpolated_hand->var13;
        var5 = interpolated_hand->var5;
        var6 = interpolated_hand->var6;
        v41 = self->_interpolated_event_info;
        if (v41)
        {
          v42 = v41->var0;
          LODWORD(v41) = v41->var1;
        }

        else
        {
          v42 = 0;
        }

        *buf = 134351105;
        v76 = v33;
        v77 = 1024;
        v78 = var0;
        v79 = 1024;
        v80 = var4;
        v81 = 1024;
        v82 = var14;
        v83 = 1024;
        v84 = var13;
        v85 = 2053;
        v86 = var5;
        v87 = 2053;
        v88 = var6;
        v89 = 1024;
        v90 = v42;
        v91 = 1024;
        v92 = v41;
        _os_signpost_emit_with_name_impl(&dword_2653C2000, v31, OS_SIGNPOST_EVENT, v32, "GenerateDigitizer", "%{public, signpost.description:begin_time}llu fingers=%u mask=0x%x touch/range=%u/%u pos=(%{sensitive}.5f,%{sensitive}.5f) interp=1 next=%u info=%u", buf, 0x44u);
      }
    }

    if (v3)
    {
      v43 = [(SASInterfacePadHost *)self generateHandEvent:self->_hand interpolated:0 now:v6];
      [v8 addObject:v43];
      fingers = self->_fingers;
      if (fingers->var0)
      {
        v45 = 0;
        v46 = 8;
        do
        {
          v47 = [(SASInterfacePadHost *)self generateFingerEvent:fingers + v46 interpolated:0 now:v6, v74];
          [v43 appendEvent:v47];

          ++v45;
          fingers = self->_fingers;
          v46 += 72;
        }

        while (v45 < fingers->var0);
      }

      event_info = self->_event_info;
      if (event_info)
      {
        v49 = [(SASInterfacePadHost *)self generateEventInfo:event_info interpolated:0 timestamp:[v43 timestamp]];
        [v43 appendEvent:v49];
      }

      if (self->_wake_event_detected)
      {
        v50 = [(SASInterfacePadHost *)self generateWakeEvent:self->_wake_event_detected timestamp:[v43 timestamp]];
        [v43 appendEvent:v50];
        if (qword_2800179E8 != -1)
        {
          dispatch_once(&qword_2800179E8, &__block_literal_global);
        }

        v51 = qword_2800179E0;
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          wake_event_detected = self->_wake_event_detected;
          *buf = 67109120;
          LODWORD(v76) = wake_event_detected;
          _os_log_impl(&dword_2653C2000, v51, OS_LOG_TYPE_DEFAULT, "Wake Event %d", buf, 8u);
        }

        if (SALoggingHIDEventSignpost::onceToken != -1)
        {
          dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
        }

        v53 = SALoggingHIDEventSignpost::__logObj;
        v54 = v53;
        v55 = self->_hand->var1;
        if (v55 && os_signpost_enabled(v53))
        {
          v56 = self->_wake_event_detected;
          *buf = 67109120;
          LODWORD(v76) = v56;
          _os_signpost_emit_with_name_impl(&dword_2653C2000, v54, OS_SIGNPOST_EVENT, v55, "GenerateWakeEvent", "Wake Event %d", buf, 8u);
        }
      }

      if (SALoggingHIDEventSignpost::onceToken != -1)
      {
        dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
      }

      v57 = SALoggingHIDEventSignpost::__logObj;
      v58 = v57;
      v59 = self->_hand->var1;
      if (v59 && os_signpost_enabled(v57))
      {
        v60 = self->_cont_abs_diff + [v43 timestamp];
        v61 = self->_fingers->var0;
        hand = self->_hand;
        v63 = hand->var4;
        v64 = hand->var14;
        v65 = hand->var13;
        v66 = hand->var5;
        v67 = hand->var6;
        v68 = self->_event_info;
        if (v68)
        {
          v69 = v68->var0;
          LODWORD(v68) = v68->var1;
        }

        else
        {
          v69 = 0;
        }

        *buf = 134351105;
        v76 = v60;
        v77 = 1024;
        v78 = v61;
        v79 = 1024;
        v80 = v63;
        v81 = 1024;
        v82 = v64;
        v83 = 1024;
        v84 = v65;
        v85 = 2053;
        v86 = v66;
        v87 = 2053;
        v88 = v67;
        v89 = 1024;
        v90 = v69;
        v91 = 1024;
        v92 = v68;
        _os_signpost_emit_with_name_impl(&dword_2653C2000, v58, OS_SIGNPOST_EVENT, v59, "GenerateDigitizer", "%{public, signpost.description:begin_time}llu fingers=%u mask=0x%x touch/range=%u/%u pos=(%{sensitive}.5f,%{sensitive}.5f) interp=0 next=%u info=%u", buf, 0x44u);
      }
    }

    else
    {
      if (!self->_wake_event_detected)
      {
LABEL_87:
        if (self->_touch_system_ready)
        {
          v70 = [(SASInterfacePadHost *)self generateTouchSystemReady:v74];
          [v8 addObject:v70];
        }

        if (self->_atomic_wake_event == 1)
        {
          v71 = [(SASInterfacePadHost *)self generateSwipeUp:v74];
          [v8 addObject:v71];
        }

        if (!self->_cover_gesture.state)
        {
          goto LABEL_94;
        }

        v72 = [(SASInterfacePadHost *)self getValidTimestamp:self->_cover_gesture.timestamp_us now:v6];
        *&v73 = self->_cover_gesture.surface_covered;
        v17 = [(SASInterfacePadHost *)self generateCoverGesture:v72 state:self->_cover_gesture.state surfaceCovered:v73];
        [v8 addObject:v17];
LABEL_93:

LABEL_94:
        (*(self->_eventCallback + 2))();
        [(SASInterfacePadHost *)self cleanNodes];

        return;
      }

      if (qword_2800179E8 != -1)
      {
        dispatch_once(&qword_2800179E8, &__block_literal_global);
      }

      v43 = qword_2800179E0;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2653C2000, v43, OS_LOG_TYPE_ERROR, "Wake Event but no hand!", buf, 2u);
      }
    }

    goto LABEL_87;
  }

  if (self->_fingers || self->_interpolated_fingers)
  {
    if (SALoggingHIDEventSignpost::onceToken != -1)
    {
      dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
    }

    v19 = SALoggingHIDEventSignpost::__logObj;
    v20 = v19;
    v21 = self->_fingers;
    if (!v21)
    {
      v21 = self->_interpolated_fingers;
    }

    v22 = v21->var1[0].var1;
    if (v22 && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2653C2000, v20, OS_SIGNPOST_EVENT, v22, "DropDigitizer", "No change", buf, 2u);
    }
  }

  [(SASInterfacePadHost *)self cleanNodes];
}

- (void)callPencilEventCallback
{
  v54 = *MEMORY[0x277D85DE8];
  if (self->_stylusHand)
  {
    v3 = self->_stylus != 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_opt_new();
  v39 = 0;
  mach_get_times();
  v5 = [(SASInterfacePadHost *)self timestampMachToUs:0];
  v6 = v5 - self->_last_frame_time_us;
  self->_last_frame_time_us = v5;
  self->_prev_frame_diff_us = v6;
  self->_cont_abs_diff = 0;
  pencilEventCallback = self->_pencilEventCallback;
  if (pencilEventCallback)
  {
    if (v3)
    {
      p_ptw = &self->_ptw;
      if (!self->_ptw)
      {
        v9 = [(SASInterfacePadHost *)self generateStylusHandEvent:self->_stylusHand interpolated:0 now:v5];
        [v4 addObject:v9];
        stylus = self->_stylus;
        if (stylus->var0)
        {
          v11 = 0;
          v12 = 8;
          do
          {
            v13 = [(SASInterfacePadHost *)self generateStylusEvent:stylus + v12 interpolated:0 now:v5, v39];
            v14 = [(SASInterfacePadHost *)self generatePreHysteresisAngles:self->_pre_hysteresis_ff_angles timestamp:v39];
            [v13 appendEvent:v14];
            [v9 appendEvent:v13];

            ++v11;
            stylus = self->_stylus;
            v12 += 88;
          }

          while (v11 < stylus->var0);
        }

        if (SALoggingHIDEventSignpost::onceToken != -1)
        {
          dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
        }

        v15 = SALoggingHIDEventSignpost::__logObj;
        v16 = v15;
        var1 = self->_stylusHand->var0.var1;
        if (var1 && os_signpost_enabled(v15))
        {
          v18 = self->_cont_abs_diff + [v9 timestamp];
          stylusHand = self->_stylusHand;
          var0 = self->_stylus->var0;
          var4 = stylusHand->var0.var4;
          var14 = stylusHand->var0.var14;
          var13 = stylusHand->var0.var13;
          var5 = stylusHand->var0.var5;
          var6 = stylusHand->var0.var6;
          *buf = 134350593;
          v41 = v18;
          v42 = 1024;
          v43 = var0;
          v44 = 1024;
          v45 = var4;
          v46 = 1024;
          v47 = var14;
          v48 = 1024;
          v49 = var13;
          v50 = 2053;
          v51 = var5;
          v52 = 2053;
          v53 = var6;
          _os_signpost_emit_with_name_impl(&dword_2653C2000, v16, OS_SIGNPOST_EVENT, var1, "GenerateDigitizer", "%{public, signpost.description:begin_time}llu fingers=%u mask=0x%x touch/range=%u/%u pos=(%{sensitive}.5f,%{sensitive}.5f)", buf, 0x38u);
        }

LABEL_33:
        pencilEventCallback = self->_pencilEventCallback;
LABEL_34:
        pencilEventCallback[2](pencilEventCallback, v4);
        [(SASInterfacePadHost *)self cleanStylusNodes];
        goto LABEL_43;
      }

      goto LABEL_20;
    }

    p_ptw = &self->_ptw;
    ptw = self->_ptw;
    if (self->_touch_system_ready)
    {
      if (!ptw)
      {
        goto LABEL_34;
      }

      goto LABEL_20;
    }

    if (ptw)
    {
LABEL_20:
      v27 = 0;
      v28 = 1;
      do
      {
        v29 = v28;
        v30 = [(SASInterfacePadHost *)self generatePtwEvent:self->_ptw transducerType:3 now:v5, v39];
        v31 = [(SASInterfacePadHost *)self generatePtwEvent:self->_ptw transducerType:0 now:v5];
        v32 = [(SASInterfacePadHost *)self generateWakeEvent:0 timestamp:[(SASInterfacePadHost *)self getValidTimestamp:self->_ptw->var0.var0 now:v5]];
        [v4 addObject:v30];
        [v30 appendEvent:v32];
        [v30 appendEvent:v31];
        if (v27)
        {
          [v30 setIntegerValue:0 forField:720905];
          [v31 setIntegerValue:0 forField:720905];
        }

        v28 = 0;
        v27 = 1;
      }

      while ((v29 & 1) != 0);
      if (qword_2800179E8 != -1)
      {
        dispatch_once(&qword_2800179E8, &__block_literal_global);
      }

      v33 = qword_2800179E0;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2653C2000, v33, OS_LOG_TYPE_DEFAULT, "Wake Event PTW", buf, 2u);
      }

      if (SALoggingHIDEventSignpost::onceToken != -1)
      {
        dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
      }

      v34 = SALoggingHIDEventSignpost::__logObj;
      v9 = v34;
      v35 = (*p_ptw)->var0.var1;
      if (v35 && os_signpost_enabled(v34))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2653C2000, v9, OS_SIGNPOST_EVENT, v35, "GenerateWakeEvent", "Wake Event PTW", buf, 2u);
      }

      goto LABEL_33;
    }
  }

  if (self->_stylus)
  {
    if (SALoggingHIDEventSignpost::onceToken != -1)
    {
      dispatch_once(&SALoggingHIDEventSignpost::onceToken, &__block_literal_global_17);
    }

    v36 = SALoggingHIDEventSignpost::__logObj;
    v37 = v36;
    v38 = self->_stylus->var1[0].var0.var1;
    if (v38 && os_signpost_enabled(v36))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2653C2000, v37, OS_SIGNPOST_EVENT, v38, "DropStylusDigitizer", "No change", buf, 2u);
    }
  }

  [(SASInterfacePadHost *)self cleanStylusNodes];
LABEL_43:
}

- (void)callResetRequestCallback:(unsigned __int16)callback arg_ptr:(const void *)arg_ptr
{
  resetRequestCallback = self->_resetRequestCallback;
  if (resetRequestCallback)
  {
    if (callback == 1)
    {
      v5 = *arg_ptr;
    }

    else
    {
      v5 = 0;
    }

    resetRequestCallback[2](resetRequestCallback, v5);
  }
}

- (void)callStreamCallback:(unint64_t)callback
{
  if (callback && self->_streamCallback)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:-[NSMutableData mutableBytes](self->_outputBuffer length:"mutableBytes") freeWhenDone:{callback + 1, 0}];
    (*(self->_streamCallback + 2))();
  }
}

- (void)defaultStreamingConfiguration
{
  v9[2] = 14;
  v9[3] = 0;
  v9[4] = 14;
  v9[5] = 0;
  v9[6] = 14;
  v9[7] = 0;
  v9[8] = 0;
  v9[0] = &unk_2876F3A30;
  v9[1] = 0;
  v10 = xmmword_2655A9FE0;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  AlgDataExtractor::add(v9, &v10);
  v10 = xmmword_2655A9FF0;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA000;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA010;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA020;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA030;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA040;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA050;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA060;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA070;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA080;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA090;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA0A0;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v10 = xmmword_2655AA0B0;
  v11 = 0;
  v12 = 0;
  v13 = 514;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  (*(v9[0] + 16))(v9, &v10);
  v3 = [(NSMutableData *)self->_outputBuffer length];
  mutableBytes = [(NSMutableData *)self->_outputBuffer mutableBytes];
  device = self->_device;
  AlgsDevice::StreamingClient::configure(device[8], 1, v9);
  v6 = device[8];
  *(v6 + 5) = 0;
  *(v6 + 6) = mutableBytes + 1;
  *(v6 + 7) = v3 - 1;
  *(v6 + 8) = 0;
  *(v6 + 72) = 0;
  *(v6 + 74) = 0;
  *(v6 + 10) = 0;
  if (AlgsDevice::StreamingClient::configureStatus(device[8]))
  {
    v7 = device[8];
    v8 = *(v7 + 8);
    *(v7 + 40) = 0u;
    *(v7 + 72) = 0;
    *(v7 + 56) = 0u;
    *(v7 + 74) = 0;
    *(v7 + 10) = 0;
  }

  else
  {
    v8 = 0;
  }

  [(SASInterfacePadHost *)self callStreamCallback:v8];
  PacketCollection::~PacketCollection(v9);
}

- (void)configureTranslation
{
  v13[0] = &unk_2876F3A60;
  v13[1] = 0;
  v13[2] = 6;
  v13[3] = 0;
  v13[4] = 6;
  v13[5] = 0;
  v13[6] = 6;
  v12[0] = &unk_2876F3A60;
  v12[1] = 0;
  v12[2] = 6;
  v12[3] = 0;
  v12[4] = 6;
  v12[5] = 0;
  v12[6] = 6;
  v3 = xmmword_2655AA0C0;
  v4 = 0;
  v5 = 0;
  v6 = 512;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v13, &v3);
  v3 = xmmword_2655AA0D0;
  v4 = 0;
  v5 = 0;
  v6 = 256;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v12, &v3);
  v3 = xmmword_2655AA0E0;
  v4 = 0;
  v5 = 0;
  v6 = 512;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v13, &v3);
  v3 = xmmword_2655AA0F0;
  v4 = 0;
  v5 = 0;
  v6 = 256;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v12, &v3);
  v3 = xmmword_2655AA100;
  v4 = 0;
  v5 = 0;
  v6 = 512;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v13, &v3);
  v3 = xmmword_2655AA110;
  v4 = 0;
  v5 = 0;
  v6 = 256;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v12, &v3);
  v3 = xmmword_2655AA120;
  v4 = 0;
  v5 = 0;
  v6 = 512;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v13, &v3);
  v3 = xmmword_2655AA130;
  v4 = 0;
  v5 = 0;
  v6 = 256;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v12, &v3);
  v3 = xmmword_2655AA140;
  v4 = 0;
  v5 = 0;
  v6 = 512;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v13, &v3);
  v3 = xmmword_2655AA150;
  v4 = 0;
  v5 = 0;
  v6 = 256;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v12, &v3);
  v3 = xmmword_2655AA160;
  v4 = 0;
  v5 = 0;
  v6 = 512;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v13, &v3);
  v3 = xmmword_2655AA170;
  v4 = 0;
  v5 = 0;
  v6 = 256;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  v11 = 0;
  v9 = 0;
  PacketCollection::add(v12, &v3);
  AlgsDevice::StreamingClient::configureTranslation(*(self->_device + 8), v13, v12);
  PacketCollection::~PacketCollection(v12);
  PacketCollection::~PacketCollection(v13);
}

- (void)configureCallbacks
{
  if (self->_planId == 1)
  {
    v5 = 2;
    v6 = 0;
    v7 = 2;
    v8 = 0;
    v9 = 2;
    v10 = 0;
    v11 = 0;
    v3 = &unk_2876F3A30;
    v4 = 0;
    v12 = xmmword_2655AA070;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_29::__invoke;
    selfCopy31 = self;
    AlgDataExtractor::add(&v3, &v12);
    v12 = xmmword_2655AA080;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_30::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    AlgsDevice::addClient(self->_device, 1u, 0, &v3);
  }

  else
  {
    if (self->_planId)
    {
      return;
    }

    v5 = 29;
    v6 = 0;
    v7 = 29;
    v8 = 0;
    v9 = 29;
    v10 = 0;
    v11 = 0;
    v3 = &unk_2876F3A30;
    v4 = 0;
    v12 = xmmword_2655A9FF0;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_0::__invoke;
    selfCopy31 = self;
    AlgDataExtractor::add(&v3, &v12);
    v12 = xmmword_2655AA010;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_1::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA030;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_2::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655A9FE0;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_3::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA000;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_4::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA020;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_5::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA180;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_6::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA190;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_7::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA1A0;
    v13 = 0;
    v14 = 0;
    v15 = 258;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_8::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA1B0;
    v13 = 0;
    v14 = 0;
    v15 = 258;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_9::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA1C0;
    v13 = 0;
    v14 = 0;
    v15 = 258;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_10::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA060;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_11::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA040;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_12::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA050;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_13::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA1D0;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_14::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA1E0;
    v13 = 0;
    v14 = 0;
    v15 = 258;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_15::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA1F0;
    v13 = 0;
    v14 = 0;
    v15 = 258;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_16::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA200;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_17::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA210;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_18::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA220;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_19::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA230;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_20::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA240;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_21::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA250;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_22::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA260;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_23::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA270;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_24::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA280;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_25::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA290;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_26::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA0A0;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_27::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    v12 = xmmword_2655AA0B0;
    v13 = 0;
    v14 = 0;
    v15 = 514;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = [SASInterfacePadHost configureCallbacks]::$_28::__invoke;
    selfCopy31 = self;
    v3[2](&v3, &v12);
    AlgsDevice::addClient(self->_device, 1u, 0, &v3);
  }

  PacketCollection::~PacketCollection(&v3);
}

- (BOOL)injectProperty:(id)property value:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  v8 = [(NSMutableDictionary *)self->_propertyDatabase objectForKeyedSubscript:propertyCopy];
  v9 = v8;
  if (v8)
  {
    [v8 setObject:valueCopy forKeyedSubscript:@"Value"];
    v10 = [(SASInterfacePadHost *)self injectProperty:propertyCopy];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)injectProperty:(id)property
{
  v21 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v5 = [(NSMutableDictionary *)self->_propertyDatabase objectForKeyedSubscript:propertyCopy];
  v6 = v5;
  if (v5 && ([v5 objectForKeyedSubscript:@"Value"], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = [v6 objectForKeyedSubscript:@"WorkNodeId"];
    [v8 unsignedLongLongValue];

    v9 = [v6 objectForKeyedSubscript:@"DataNodeId"];
    [v9 unsignedLongLongValue];

    v10 = [v6 objectForKeyedSubscript:@"Type"];
    unsignedShortValue = [v10 unsignedShortValue];

    v12 = [v6 objectForKeyedSubscript:@"Invert"];
    [v12 BOOLValue];

    switch(unsignedShortValue)
    {
      case 39426:
        v16 = [v6 objectForKeyedSubscript:@"Value"];
        [v16 bytes];

        v17 = [v6 objectForKeyedSubscript:@"Value"];
        [v17 length];

        operator new[]();
      case 20489:
        v15 = [v6 objectForKeyedSubscript:@"Value"];
        [v15 longValue];

        operator new[]();
      case 20486:
        v13 = [v6 objectForKeyedSubscript:@"Value"];
        [v13 unsignedIntValue];

        operator new[]();
    }

    if (qword_2800179E8 != -1)
    {
      dispatch_once(&qword_2800179E8, &__block_literal_global);
    }

    v14 = qword_2800179E0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = 67109120;
      *v20 = unsignedShortValue;
      _os_log_error_impl(&dword_2653C2000, v14, OS_LOG_TYPE_ERROR, "InjectProperty: cannot handle type 0x%x", &v19, 8u);
    }
  }

  else
  {
    if (qword_2800179E8 != -1)
    {
      dispatch_once(&qword_2800179E8, &__block_literal_global);
    }

    v14 = qword_2800179E0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412290;
      *v20 = propertyCopy;
      _os_log_error_impl(&dword_2653C2000, v14, OS_LOG_TYPE_ERROR, "InjectProperty: %@ key not found", &v19, 0xCu);
    }
  }

  return 0;
}

- (BOOL)handleInputStream:(id)stream
{
  v160 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v126 = 0;
  if (![streamCopy length])
  {
    v7 = 0;
    goto LABEL_145;
  }

  bytes = [streamCopy bytes];
  v6 = [streamCopy length] - 1;
  if (v6 >= 2 && *(bytes + 1) == 1 && *(bytes + 2) == 1 && !self->_planId)
  {
    if (self->_cover_gesture_state == 1)
    {
      v45 = objc_opt_new();
      v46 = [(SASInterfacePadHost *)self generateCoverGesture:mach_absolute_time() state:3 surfaceCovered:0.0];
      [v45 addObject:v46];
      (*(self->_eventCallback + 2))();
    }

    v133 = 0;
    v134 = 0;
    v135 = 0;
    v127 = xmmword_2655AA2A0;
    v128 = &v133;
    bytes2 = [(NSData *)self->_emptyPaths bytes];
    v48 = [(NSData *)self->_emptyPaths length];
    *v120 = xmmword_2655AA0D0;
    *&v120[16] = 12288;
    *&v121 = v48;
    DWORD2(v121) = 257;
    *&v122 = 0;
    DWORD2(v122) = 0;
    v124 = 0;
    v125 = 0;
    v123 = bytes2;
    v152 = 1;
    v153 = 0;
    v154 = 1;
    v155 = 0;
    v156 = 1;
    v150 = &unk_2876F3A90;
    v151 = 0;
    PacketCollection::add(&v150, v120);
    v126 = [(NSMutableData *)self->_outputBuffer length]- 1;
    v7 = (*(*self->_device + 24))(self->_device, &v127, &v150, [(NSMutableData *)self->_outputBuffer mutableBytes]+ 1, &v126);
    [(SASInterfacePadHost *)self callStreamCallback:v126];
    [(SASInterfacePadHost *)self callPencilEventCallback];
    [(SASInterfacePadHost *)self callEventCallback];
    [(SASInterfacePadHost *)self callCoreAnalyticsCallback];
    [(SASInterfacePadHost *)self callPadTouchCoreAnalyticsCallback];
    PacketCollection::~PacketCollection(&v150);
  }

  else
  {
    v7 = 1;
  }

  v126 = [(NSMutableData *)self->_outputBuffer length]- 1;
  mutableBytes = [(NSMutableData *)self->_outputBuffer mutableBytes];
  device = self->_device;
  v10 = streamCopy;
  bytes3 = [streamCopy bytes];
  v12 = [streamCopy length];
  v17 = device[8];
  v18 = v126;
  *(v17 + 40) = 0;
  *(v17 + 48) = mutableBytes + 1;
  *(v17 + 56) = v18;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 74) = 0;
  *(v17 + 80) = 0;
  v19 = device[8];
  v21 = *(v19 + 128);
  v20 = (v19 + 128);
  v22 = *(v19 + 136);
  *&v127 = v19 + 128;
  *(&v127 + 1) = bytes3 + 1;
  v129 = 0;
  v130 = 0;
  v128 = (v12 - 1);
  v131 = v21;
  v132 = v22;
  if ((v12 - 1) < 2 || *(bytes3 + 1) != 1)
  {
    goto LABEL_124;
  }

  v23 = *(bytes3 + 2);
  if (v23 <= 4)
  {
    if (*(bytes3 + 2) <= 2u)
    {
      if (v23 == 1)
      {
        *v120 = &v150;
        *&v120[8] = 0u;
        v121 = 0u;
        v122 = 0u;
        v129 = 2;
        v130 = v120;
        if (v12 == 3)
        {
          goto LABEL_124;
        }

        v49 = *(bytes3 + 3);
        LOBYTE(v150) = v49;
        if (v12 != 4)
        {
          SABinaryParser::parseInfoData(&v127 + 1, StreamingParser::parseReset(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_0::__invoke, 0, 0);
          if (!v50)
          {
            goto LABEL_124;
          }

          v49 = v150;
        }

        v51 = *(v19 + 32);
        (*(*v51 + 40))(v51, v49);
        v115 = bytes;
        v52 = 0;
        v51[77] = v49;
        v53 = v51 + 32;
        while (v52 != 16)
        {
          v54 = *&v53[v52];
          if (v54)
          {
            (*(*v54 + 16))(v54, v49);
          }

          v52 += 8;
        }

        goto LABEL_168;
      }

      if (v23 != 2)
      {
        goto LABEL_124;
      }

      v143 = 0;
      v144 = 0;
      StreamingParser::numberOfPackets(&v127, &v144, &v143, 0, v13, v14, v15, v16);
      if ((v33 & 1) == 0)
      {
        goto LABEL_124;
      }

      v34 = *(v19 + 104);
      v35 = v144;
      if (v34)
      {
        v35 = v144 + *(v34 + 20);
        v144 += *(v34 + 20);
      }

      v152 = v35;
      v153 = 0;
      v154 = v35;
      v155 = 0;
      v156 = v35;
      v150 = &unk_2876F3A90;
      v151 = 0;
      *&v120[16] = v143;
      *&v121 = 0;
      *(&v121 + 1) = v143;
      *&v122 = 0;
      *(&v122 + 1) = v143;
      v123 = 0;
      v124 = 0;
      *v120 = &unk_2876F3A30;
      *&v120[8] = 0;
      v133 = v145;
      v134 = &v150;
      v135 = v120;
      v130 = &v133;
      SABinaryParser::parseRunFrame(&v127 + 1, StreamingParser::parseRun(InjectionInfo *,AlgDataInjector *,AlgDataExtractor *)::$_0::__invoke, StreamingParser::parseRun(InjectionInfo *,AlgDataInjector *,AlgDataExtractor *)::$_1::__invoke, StreamingParser::parseRun(InjectionInfo *,AlgDataInjector *,AlgDataExtractor *)::$_2::__invoke);
      if (v36)
      {
        AlgsDevice::StreamingClient::translate(v19, &v150, v120);
        *(v19 + 97) = 1;
        AlgsDevice::run();
        PacketCollection::~PacketCollection(v120);
        v37 = &v150;
LABEL_102:
        PacketCollection::~PacketCollection(v37);
LABEL_110:
        v40 = 0;
        v39 = 0;
        v38 = 0;
        goto LABEL_169;
      }

      PacketCollection::~PacketCollection(v120);
      v80 = &v150;
LABEL_123:
      PacketCollection::~PacketCollection(v80);
      goto LABEL_124;
    }

    if (v23 == 3)
    {
      v143 = 0;
      v144 = 0;
      v142 = 0;
      StreamingParser::numberOfPackets(&v127, &v144, &v143, &v142, v13, v14, v15, v16);
      if ((v55 & 1) == 0)
      {
        goto LABEL_124;
      }

      v56 = *(v19 + 104);
      v57 = v144;
      if (v56)
      {
        v57 = v144 + *(v56 + 20);
        v144 += *(v56 + 20);
      }

      v135 = v57;
      v136 = 0;
      v137 = v57;
      v138 = 0;
      v139 = 0;
      v140 = v57;
      v141 = 0;
      v133 = &unk_2876F3A90;
      v134 = 0;
      *&v120[16] = v143;
      *&v121 = 0;
      *(&v121 + 1) = v143;
      *&v122 = 0;
      *(&v122 + 1) = v143;
      v123 = 0;
      v124 = 0;
      *v120 = &unk_2876F3A30;
      *&v120[8] = 0;
      v152 = v142;
      v153 = 0;
      v154 = v142;
      v155 = 0;
      v156 = v142;
      v157 = 0;
      v158 = 0;
      v150 = &unk_2876F3A30;
      v151 = 0;
      *v145 = v19 + 88;
      v146 = &v133;
      v147 = v120;
      v148 = &v150;
      v130 = v145;
      SABinaryParser::parseInjExtFrame(&v127 + 1, StreamingParser::parseInjExt(unsigned long long *,AlgDataInjector *,AlgDataExtractor *,AlgDataExtractor *)::$_0::__invoke, StreamingParser::parseInjExt(unsigned long long *,AlgDataInjector *,AlgDataExtractor *,AlgDataExtractor *)::$_1::__invoke, StreamingParser::parseInjExt(unsigned long long *,AlgDataInjector *,AlgDataExtractor *,AlgDataExtractor *)::$_2::__invoke, StreamingParser::parseInjExt(unsigned long long *,AlgDataInjector *,AlgDataExtractor *,AlgDataExtractor *)::$_3::__invoke);
      v59 = v58;
      if (v58)
      {
        v60 = HIDWORD(v152);
        v61 = (v151 + 72);
        if (HIDWORD(v152))
        {
          do
          {
            *(v61 - 1) = AlgsDevice::StreamingClient::extraction;
            *v61 = v19;
            --v60;
            v61 += 10;
          }

          while (v60);
        }

        AlgsDevice::StreamingClient::translate(v19, &v133, v120);
        *(v19 + 97) = 1;
        AlgsDevice::injExtWith();
        *(v19 + 88) = 0;
        PacketCollection::~PacketCollection(&v150);
        PacketCollection::~PacketCollection(v120);
        PacketCollection::~PacketCollection(&v133);
        if ((v59 & 1) == 0)
        {
          goto LABEL_124;
        }

        goto LABEL_110;
      }

      PacketCollection::~PacketCollection(&v150);
      PacketCollection::~PacketCollection(v120);
      v80 = &v133;
      goto LABEL_123;
    }

    if (v23 != 4)
    {
      goto LABEL_124;
    }

    if ((v12 - 6) > 0xFFFFFFFFFFFFFFFCLL)
    {
      v40 = 0;
      v39 = 0;
    }

    else
    {
      v38 = *(bytes3 + 3);
      v39 = *(bytes3 + 4);
      v40 = (bytes3 + 6);
      if (v38 != 1)
      {
LABEL_169:
        v110 = device[8];
        v89 = *(v110 + 64);
        *(v110 + 40) = 0u;
        *(v110 + 72) = 0;
        *(v110 + 56) = 0u;
        *(v110 + 74) = 0;
        *(v110 + 80) = 0;
        goto LABEL_125;
      }

      if (v39 && *v40 == 255)
      {
        *v40 = *(*(v19 + 32) + 77);
      }
    }

    v38 = 1;
    goto LABEL_169;
  }

  if (*(bytes3 + 2) <= 6u)
  {
    if (v23 != 5)
    {
      if (v23 != 6)
      {
        goto LABEL_124;
      }

      LODWORD(v144) = 0;
      LOBYTE(v143) = 0;
      LOBYTE(v142) = 0;
      v149 = 0;
      v133 = 0;
      v134 = 16;
      *v145 = 0;
      StreamingParser::numberOfPackets(&v127, 0, 0, v145, v13, v14, v15, v16);
      if ((v41 & 1) == 0)
      {
        v79 = 0;
        goto LABEL_107;
      }

      v152 = *v145;
      v153 = 0;
      v154 = *v145;
      v155 = 0;
      v156 = *v145;
      v157 = 0;
      v158 = 0;
      v150 = &unk_2876F3A30;
      v151 = 0;
      *v120 = &v143;
      *&v120[8] = &v144;
      *&v120[16] = &v142;
      *&v121 = &v149 + 1;
      *(&v121 + 1) = &v133;
      *&v122 = &v149;
      *(&v122 + 1) = &v150;
      v130 = v120;
      SABinaryParser::parseInfo(&v127 + 1, StreamingParser::parseInfo(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_0::__invoke, StreamingParser::parseInfo(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_1::__invoke, StreamingParser::parseInfo(unsigned char *,unsigned int *,unsigned char *,unsigned char *,SAList<char const*> *,BOOL *,AlgDataExtractor *)::$_2::__invoke);
      if (v42)
      {
        v43 = v144;
        v44 = *(v19 + 32);
        if (v144)
        {
          if (v144 != *(v44 + 72))
          {
            StreamingWriter::writeResetOrInfo(v19 + 40, 0, v143, v144, v142, HIBYTE(v149), &v133, v149, &v150);
            v79 = 1;
            goto LABEL_106;
          }

          v114 = bytes;
        }

        else
        {
          v114 = bytes;
          v43 = *(v44 + 72);
        }

        v113 = *(v44 + 76);
        v83 = *(v44 + 77);
        v84 = *(v44 + 104);
        *&v120[16] = *(v44 + 48);
        *&v121 = 0;
        *(&v121 + 1) = *&v120[16];
        *&v122 = 0;
        *(&v122 + 1) = *&v120[16];
        v123 = 0;
        v124 = 0;
        *v120 = &unk_2876F3A30;
        *&v120[8] = 0;
        AlgsDevice::getClientExtractor(*(v19 + 32), v120);
        v79 = StreamingWriter::writeResetOrInfo(v19 + 40, 0, v83, v43, v113, v84, *(v19 + 32) + 80, *(v19 + 96), v120);
        PacketCollection::~PacketCollection(v120);
        bytes = v114;
      }

      else
      {
        v79 = 0;
      }

LABEL_106:
      PacketCollection::~PacketCollection(&v150);
LABEL_107:
      if (v133)
      {
        MEMORY[0x266758580](v133, 0x1000C8077774924);
      }

      if ((v79 & 1) == 0)
      {
        goto LABEL_124;
      }

      goto LABEL_110;
    }

    v145[0] = 0;
    LOBYTE(v144) = 0;
    v133 = 0;
    StreamingParser::numberOfPackets(&v127, 0, 0, &v133, v13, v14, v15, v16);
    if ((v69 & 1) == 0)
    {
      goto LABEL_124;
    }

    *&v120[16] = v133;
    *&v121 = 0;
    *(&v121 + 1) = v133;
    *&v122 = 0;
    *(&v122 + 1) = v133;
    v123 = 0;
    v124 = 0;
    *v120 = &unk_2876F3A30;
    *&v120[8] = 0;
    v150 = &v144;
    v151 = v145;
    v152 = v120;
    v130 = &v150;
    SABinaryParser::parseConfigure(&v127 + 1, StreamingParser::parseConfigure(unsigned char *,BOOL *,AlgDataExtractor *)::$_0::__invoke, StreamingParser::parseConfigure(unsigned char *,BOOL *,AlgDataExtractor *)::$_1::__invoke, StreamingParser::parseConfigure(unsigned char *,BOOL *,AlgDataExtractor *)::$_2::__invoke);
    if ((v71 & 1) == 0)
    {
LABEL_122:
      v80 = v120;
      goto LABEL_123;
    }

    v72 = v144;
    if (v144 <= 2u)
    {
      AlgsDevice::StreamingClient::configure(v19, v145[0], v120);
      v72 = v144;
    }

    if (v72 == 3 && *&v120[20])
    {
      StreamingWriter::writeConfigure((v19 + 40), v145[0], v120, v70);
    }

    else
    {
      AlgsDevice::StreamingClient::configureStatus(v19);
    }

    v37 = v120;
    goto LABEL_102;
  }

  if (v23 == 7)
  {
    *v145 = 0;
    *&v120[16] = 16;
    *&v121 = 0;
    *(&v121 + 1) = 16;
    *&v122 = 0;
    *(&v122 + 1) = 16;
    v123 = 0;
    v124 = 0;
    *v120 = &unk_2876F3A30;
    *&v120[8] = 0;
    v152 = 16;
    v153 = 0;
    v154 = 16;
    v155 = 0;
    v156 = 16;
    v157 = 0;
    v158 = 0;
    v150 = &unk_2876F3A30;
    v151 = 0;
    v133 = v145;
    v134 = v120;
    v135 = &v150;
    v130 = &v133;
    if ((v12 - 7) <= 0xFFFFFFFFFFFFFFFBLL)
    {
      v129 = 6;
      if (StreamingParser::parseConfigureTranslation(unsigned int *,AlgDataExtractor *,AlgDataExtractor *)::$_0::__invoke(&v133, *(bytes3 + 3)))
      {
        v115 = bytes;
        v64 = *(&v127 + 1);
        v65 = v129;
        v111 = v130;
        v112 = v128;
        v66 = v128 - v129;
        while (1)
        {
          v67 = v65;
          if (v112 <= v65)
          {
            break;
          }

          if (v66 < 0x12)
          {
            goto LABEL_119;
          }

          v68 = *(v64 + v65);
          bytes = v115;
          if (v68 != 3 || v66 - 18 < 0x12)
          {
            goto LABEL_120;
          }

          v65 = v67 + 36;
          if (*(v64 + v67 + 18) != 3)
          {
            v67 += 36;
            goto LABEL_119;
          }

          v66 -= 36;
          if ((StreamingParser::parseConfigureTranslation(unsigned int *,AlgDataExtractor *,AlgDataExtractor *)::$_1::__invoke(v111, v64 + v67, v64 + v67 + 18, v62, v63) & 1) == 0)
          {
            v67 += 36;
LABEL_119:
            bytes = v115;
LABEL_120:
            v129 = v67;
            goto LABEL_121;
          }
        }

        v129 = v65;
        v85 = *v145;
        if (*v145 == *(*(v19 + 32) + 72))
        {
          AlgsDevice::StreamingClient::configureTranslation(v19, v120, &v150);
          v85 = *v145;
        }

        if (!SABinaryWriter::writeHeader(v19 + 48, 7))
        {
          goto LABEL_167;
        }

        v86 = *(v19 + 48);
        if (v86)
        {
          v87 = *(v19 + 64);
          if ((*(v19 + 56) - v87) <= 3)
          {
            v88 = (v19 + 72);
LABEL_117:
            *v88 = 0;
LABEL_167:
            PacketCollection::~PacketCollection(&v150);
            PacketCollection::~PacketCollection(v120);
LABEL_168:
            v40 = 0;
            v39 = 0;
            v38 = 0;
            bytes = v115;
            goto LABEL_169;
          }

          *(v86 + v87) = v85;
        }

        v96 = *(v19 + 64) + 4;
        *(v19 + 64) = v96;
        v97 = *&v120[20];
        if (*&v120[20] == HIDWORD(v152))
        {
          v98 = 0;
          v99 = 0;
          v88 = (v19 + 72);
          while (v99 < v97 && *v88 == 7)
          {
            if (*(*&v120[8] + v98 + 33) == 1)
            {
              v100 = 1;
            }

            else
            {
              v100 = 2;
            }

            v101 = *(v19 + 48);
            if (v101)
            {
              if ((*(v19 + 56) - v96) < 0x12)
              {
                goto LABEL_117;
              }

              v102 = *&v151[v98];
              v103 = v151[v98 + 33];
              v104 = *(*&v120[8] + v98);
              v105 = v101 + v96;
              *v105 = 3;
              *(v105 + 1) = v104;
              *(v105 + 17) = v100;
              v106 = *(v19 + 48);
              v107 = *(v19 + 64) + 18;
              *(v19 + 64) = v107;
              if (v103)
              {
                v108 = 1;
              }

              else
              {
                v108 = 2;
              }

              if (v106)
              {
                if ((*(v19 + 56) - v107) < 0x12)
                {
                  goto LABEL_117;
                }

                v109 = v106 + v107;
                *v109 = 3;
                *(v109 + 1) = v102;
                *(v109 + 17) = v108;
                v107 = *(v19 + 64);
              }
            }

            else
            {
              v107 = v96 + 18;
              *(v19 + 64) = v107;
            }

            v96 = v107 + 18;
            *(v19 + 64) = v96;
            ++v99;
            v97 = *&v120[20];
            v98 += 80;
          }
        }

        goto LABEL_167;
      }
    }

LABEL_121:
    PacketCollection::~PacketCollection(&v150);
    goto LABEL_122;
  }

  if (v23 == 8)
  {
    v73 = (*(**(v19 + 32) + 48))(*(v19 + 32));
    TreeSize = AlgWorkNode::getTreeSize(v73);
    v75 = bytes;
    v76 = *(*(v19 + 32) + 77);
    if ((SABinaryWriter::writeHeader(v19 + 48, 8) & 1) == 0)
    {
      v78 = *(v19 + 64);
      goto LABEL_93;
    }

    v77 = *(v19 + 48);
    if (v77)
    {
      v78 = *(v19 + 64);
      if ((*(v19 + 56) - v78) <= 4)
      {
        *(v19 + 72) = 0;
LABEL_93:
        *(v19 + 64) = v78 + 4 * TreeSize;
        bytes = v75;
        goto LABEL_124;
      }

      v81 = v77 + v78;
      *v81 = v76;
      *(v81 + 1) = 0;
    }

    *(v19 + 64) += 4 * TreeSize + 5;
    v82 = (*(**(v19 + 32) + 48))(*(v19 + 32));
    bytes = v75;
    if (!AlgWorkNode::getTreeInfo(v82, v19, 1))
    {
      goto LABEL_124;
    }

    goto LABEL_110;
  }

  if (v23 != 9)
  {
    goto LABEL_124;
  }

  LOBYTE(v150) = 0;
  *v120 = &v150;
  *&v120[8] = v19 + 128;
  if ((v12 - 3) < 3)
  {
    goto LABEL_124;
  }

  if (!StreamingParser::parsePacketCache(unsigned char &,StreamingPacketCache &)::$_0::__invoke(v120, *(bytes3 + 3), *(bytes3 + 4), (bytes3 + 5)))
  {
    goto LABEL_124;
  }

  v24 = *v20;
  if (!*v20)
  {
    goto LABEL_124;
  }

  v25 = *(v19 + 136);
  v26 = 20;
  v27 = *v20;
  do
  {
    *&v25[v26] = (*&v25[v26] + 3) & 0xFFFC;
    v26 += 22;
    --v27;
  }

  while (v27);
  if (!SABinaryWriter::writeHeader(v19 + 48, 9))
  {
    goto LABEL_124;
  }

  v28 = *(v19 + 48);
  if (!v28)
  {
    v31 = *(v19 + 64) + 2;
    *(v19 + 64) = v31;
    v32 = 22 * v24;
LABEL_148:
    v40 = 0;
    v39 = 0;
    v38 = 0;
    *(v19 + 64) = v31 + v32;
    goto LABEL_169;
  }

  v29 = *(v19 + 64);
  if ((*(v19 + 56) - v29) >= 2)
  {
    *(v28 + v29) = (v24 << 8) | 1;
    v30 = *(v19 + 48);
    v31 = *(v19 + 64) + 2;
    *(v19 + 64) = v31;
    v32 = 22 * v24;
    if (v30)
    {
      if (*(v19 + 56) - v31 < v32)
      {
        goto LABEL_24;
      }

      memcpy((v30 + v31), v25, 22 * v24);
      v32 = 22 * v24;
      v31 = *(v19 + 64);
    }

    goto LABEL_148;
  }

LABEL_24:
  *(v19 + 72) = 0;
LABEL_124:
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v7 = 0;
  v89 = 0;
LABEL_125:
  v126 = v89;
  [(SASInterfacePadHost *)self callStreamCallback:?];
  [(SASInterfacePadHost *)self callPencilEventCallback];
  [(SASInterfacePadHost *)self callEventCallback];
  [(SASInterfacePadHost *)self callCoreAnalyticsCallback];
  if (v38 == 1)
  {
    if (!self->_planId)
    {
      [(SASInterfacePadHost *)self callPadTouchCoreAnalyticsCallback];
    }

    [(SASInterfacePadHost *)self callResetRequestCallback:v39 arg_ptr:v40];
  }

  else if (v38 == 2)
  {
    [(SASInterfacePadHost *)self defaultStreamingConfiguration];
  }

  v90 = *(self->_device + 77);
  if (self->_planId != v90)
  {
    self->_planId = v90;
    [(SASInterfacePadHost *)self configureCallbacks];
  }

  if (v6 >= 2 && *(bytes + 1) == 1 && *(bytes + 2) == 1 && !self->_planId)
  {
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v91 = self->_propertyDatabase;
    v92 = [(NSMutableDictionary *)v91 countByEnumeratingWithState:&v116 objects:v159 count:16];
    if (v92)
    {
      v93 = *v117;
      do
      {
        for (i = 0; i != v92; ++i)
        {
          if (*v117 != v93)
          {
            objc_enumerationMutation(v91);
          }

          [(SASInterfacePadHost *)self injectProperty:*(*(&v116 + 1) + 8 * i)];
        }

        v92 = [(NSMutableDictionary *)v91 countByEnumeratingWithState:&v116 objects:v159 count:16];
      }

      while (v92);
    }
  }

LABEL_145:

  return v7;
}

- (void)initContactReclassificationParams
{
  v15[4] = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v12 = 0u;
  v11 = 0u;
  v6 = 2047803400;
  v7 = 28;
  if ([(SASInterfacePadHost *)self isContactReclassificationNeeded])
  {
    v8 = 1;
    v9 = xmmword_2655AA2B0;
    v10 = 0x11000000021FLL;
    LOWORD(v11) = 0x4000;
    BYTE2(v11) = 4;
    v15[0] = &unk_2876F5890;
    v14[0] = @"WorkNodeId";
    v14[1] = @"DataNodeId";
    v15[1] = &unk_2876F5950;
    v15[2] = &unk_2876F5968;
    v14[2] = @"Type";
    v14[3] = @"Value";
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:&v6 length:36];
    v15[3] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
    v5 = [v4 mutableCopy];
    [(NSMutableDictionary *)self->_propertyDatabase setObject:v5 forKeyedSubscript:@"ContactReclassificationParams"];
  }
}

- (BOOL)isContactReclassificationNeeded
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = MGGetBoolAnswer();
  if (qword_2800179E8 != -1)
  {
    dispatch_once(&qword_2800179E8, &__block_literal_global);
  }

  v3 = qword_2800179E0;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_debug_impl(&dword_2653C2000, v3, OS_LOG_TYPE_DEBUG, "GreyMatter eligibility: 0x%x", v5, 8u);
  }

  return v2;
}

- (void)initProperties
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  propertyDatabase = self->_propertyDatabase;
  self->_propertyDatabase = v3;

  v16[0] = @"WorkNodeId";
  v16[1] = @"DataNodeId";
  v17[0] = &unk_2876F5890;
  v17[1] = &unk_2876F58A8;
  v16[2] = @"Type";
  v16[3] = @"Invert";
  v5 = MEMORY[0x277CBEC28];
  v17[2] = &unk_2876F58C0;
  v17[3] = MEMORY[0x277CBEC28];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v7 = [v6 mutableCopy];
  [(NSMutableDictionary *)self->_propertyDatabase setObject:v7 forKeyedSubscript:@"QuantizationDPI"];

  v14[0] = @"WorkNodeId";
  v14[1] = @"DataNodeId";
  v15[0] = &unk_2876F58D8;
  v15[1] = &unk_2876F58F0;
  v14[2] = @"Type";
  v14[3] = @"Invert";
  v15[2] = &unk_2876F58C0;
  v15[3] = MEMORY[0x277CBEC38];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v9 = [v8 mutableCopy];
  [(NSMutableDictionary *)self->_propertyDatabase setObject:v9 forKeyedSubscript:@"HoverDisabled"];

  v12[0] = @"WorkNodeId";
  v12[1] = @"DataNodeId";
  v13[0] = &unk_2876F5908;
  v13[1] = &unk_2876F5920;
  v12[2] = @"Type";
  v12[3] = @"Invert";
  v13[2] = &unk_2876F5938;
  v13[3] = v5;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v11 = [v10 mutableCopy];
  [(NSMutableDictionary *)self->_propertyDatabase setObject:v11 forKeyedSubscript:@"TimestampSync"];
}

- (void)createPadHostAlgsDevice:(unsigned int)device
{
  if (device == 56)
  {
    operator new();
  }

  if (device == 57)
  {
    operator new();
  }

  if (qword_2800179E8 != -1)
  {
    dispatch_once(&qword_2800179E8, &__block_literal_global);
  }

  v3 = qword_2800179E0;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_2653C2000, v3, OS_LOG_TYPE_ERROR, "Could not create algs device", v5, 2u);
  }

  return 0;
}

- (SASInterfacePadHost)initWithStreamSize:(unint64_t)size platformId:(unint64_t)id streamCallback:(id)callback
{
  callbackCopy = callback;
  v22.receiver = self;
  v22.super_class = SASInterfacePadHost;
  v9 = [(SASInterfacePadHost *)&v22 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEB28] dataWithLength:size];
    v11 = *(v9 + 7);
    *(v9 + 7) = v10;

    v12 = [MEMORY[0x277CBEB28] dataWithLength:size];
    v13 = *(v9 + 8);
    *(v9 + 8) = v12;

    *[*(v9 + 7) mutableBytes] = 90;
    v14 = MEMORY[0x2667588B0](callbackCopy);
    v15 = *(v9 + 2);
    *(v9 + 2) = v14;

    *(v9 + 10) = [v9 createPadHostAlgsDevice:id];
    v16 = [MEMORY[0x277CBEB28] dataWithLength:868];
    v17 = *(v9 + 9);
    *(v9 + 9) = v16;

    mach_timebase_info(&_timebase);
    v9[12] = 0;
    v9[358] = 0;
    *(*(v9 + 10) + 96) = SASGetTimestampCallback;
    v9[368] = 0;
    *(v9 + 9) = 0;
    v18 = objc_opt_new();
    v19 = *(v9 + 41);
    *(v9 + 41) = v18;

    *(v9 + 30) = 0;
    *(v9 + 26) = 0;
    [v9 initProperties];
    [v9 initContactReclassificationParams];
    [v9 configureCallbacks];
    [v9 configureTranslation];
    [v9 defaultStreamingConfiguration];
    v20 = v9;
  }

  return v9;
}

@end