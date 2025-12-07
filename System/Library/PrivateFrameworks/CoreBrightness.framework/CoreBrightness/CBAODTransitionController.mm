@interface CBAODTransitionController
- (BOOL)applyPendingUpdates;
- (BOOL)cancelDCPTransition;
- (BOOL)cancelTransition;
- (BOOL)commitBrightness:(float)brightness force:(BOOL)force;
- (BOOL)currentFlipBookEntry:(id *)entry;
- (BOOL)flipBookEntryForID:(int)d entry:(id *)entry;
- (BOOL)initAPEndpoint;
- (BOOL)requestColorRampTransitionStop;
- (BOOL)requestTransitionStopForIdentifier:(id)identifier;
- (BOOL)sendCurrentFlipBook;
- (BOOL)shallUpdateWhitepointFrom:(float)from[3][3] target:(float)target[3][3];
- (BOOL)startTransition:(id)transition length:(float)length forceUpdate:(BOOL)update rampDoneCallback:(id)callback rampCanceledCallback:(id)canceledCallback;
- (BOOL)startTransition:(id)transition transitionParameters:(id *)parameters rampDoneCallback:(id)callback rampCanceledCallback:(id)canceledCallback;
- (BOOL)updateAllBrightnessFeaturesForced:(BOOL)forced;
- (CBAODTransitionController)initWithContext:(id)context;
- (CBAODTransitionController)initWithContext:(id)context andThresholdModule:(id)module;
- (float)brightnessLimitProgressCallback:(float)callback rampContext:(id)context;
- (float)calculateSigmoidProgressForLinearProgress:(float)progress;
- (float)calculateSpringProgressForLinearProgress:(float)progress;
- (float)currentAAPFactor;
- (float)currentAmmoliteLux;
- (float)currentDisplayNits;
- (float)currentTwilightLux;
- (float)getFloatValueFrom:(id)from key:(id)key;
- (float)getFloatValueFrom:(id)from key:(id)key subkey:(id)subkey;
- (float)sdrBrightnessProgressCallback:(float)callback rampContext:(id)context profile:(unint64_t)profile;
- (float)transitionDurationFromCurrent:(float)current toTarget:(float)target;
- (id)copyColourRampStatsWithLength:(float)length frequency:(float)frequency origin:(id)origin target:(id)target;
- (id)copyContext;
- (id)copyCurrentDisplayState;
- (id)copyRampStatsWithLength:(float)length frequency:(float)frequency origin:(float)origin target:(float)target;
- (int)currentTransitionUpdateID;
- (void)activateLastUpdateSwappedTimerWithTimeout:(float)timeout;
- (void)addFlipBookEntry:(id *)entry;
- (void)checkBootArgsConfiguration;
- (void)clockUpdateHandler:(id)handler;
- (void)colorMatrix:(float)matrix[3][3] fromState:(id)state;
- (void)colorRampRoutine:(id *)routine;
- (void)dealloc;
- (void)enableDCPFlipBookUpdates:(BOOL)updates;
- (void)initColorEffects;
- (void)initialiseFlipBookWithLength:(float)length frequency:(int)frequency lux:(float)lux;
- (void)logTransitionParameters:(id *)parameters;
- (void)processInitialColorMatrixFromState:(id)state;
- (void)rampsDoneCallback:(id)callback;
- (void)releaseCallbacks;
- (void)releaseLastUpdateSwappedTimer;
- (void)sendNotificationForKey:(id)key andValue:(id)value;
- (void)setDisplayON:(BOOL)n;
- (void)setDurationOfEDRRamp:(float)ramp;
- (void)setInitialState:(id)state;
- (void)setLiveUpdates:(BOOL)updates;
- (void)startEternalIndicatorRamp;
- (void)startTransitionOnDCP:(id)p transitionLength:(float)length;
- (void)stopEternalIndicatorRamp;
- (void)syncLiveStateWithDCP:(BOOL)p;
- (void)updateAmbient:(float)ambient;
- (void)updateAmmoliteStrength:(float)strength;
- (void)updateBrightnessLimit:(float)limit;
- (void)updateColorRamp:(id)ramp;
- (void)updateEDRHeadroom:(float)headroom;
- (void)updateFlipBookEntryWithAAPFactor:(float)factor;
- (void)updateFlipBookEntryWithBrightness:(float)brightness;
- (void)updateFlipBookEntryWithBrightnessLimit:(float)limit;
- (void)updateIndicatorBrightness:(float)brightness andLimit:(float)limit;
- (void)updateLumaBoostFactor:(float)factor;
- (void)updateSDRBrightness:(float)brightness;
- (void)updateTwilightStrength:(float)strength;
- (void)updateWhitePoint:(float)point[3][3];
@end

@implementation CBAODTransitionController

- (BOOL)cancelTransition
{
  v112 = &v128;
  v153 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v146 = a2;
  v145 = 0;
  v113 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
  [(CBRampManager *)self->_rampManager remainingLength];
  selfCopy->_targetWhitepoint.xy.y = v2;
  v3 = [(CBAODTransitionController *)selfCopy requestTransitionStopForIdentifier:@"SDR_RAMP"];
  v145 = v145 || v3;
  v4 = [v112[42] requestTransitionStopForIdentifier:@"BRIGHTNESS_LIMIT_RAMP"];
  v145 = (v145 | v4) != 0;
  v5 = [v112[42] requestTransitionStopForIdentifier:@"EDR_RAMP"];
  v145 = (v145 | v5) != 0;
  v6 = [v112[42] requestTransitionStopForIdentifier:@"AAP_RAMP"];
  v145 = (v145 | v6) != 0;
  v7 = [v112[42] requestTransitionStopForIdentifier:@"LUMA_BOOST_FACTOR_RAMP"];
  v145 = (v145 | v7) != 0;
  v8 = [v112[42] requestTransitionStopForIdentifier:GCP_AOD_FACTOR_FADE_RAMP];
  v145 = (v145 | v8) != 0;
  v9 = [v112[42] requestTransitionStopForIdentifier:@"TWILIGHT_RAMP"];
  v145 = (v145 | v9) != 0;
  v10 = [v112[42] requestTransitionStopForIdentifier:@"AMMOLITE_RAMP"];
  v145 = (v145 | v10) != 0;
  requestColorRampTransitionStop = [v112[42] requestColorRampTransitionStop];
  v145 = (v145 | requestColorRampTransitionStop) != 0;
  if (([*(v112[42] + v113[263]) liveUpdates] & 1) == 0)
  {
    cancelDCPTransition = [v112[42] cancelDCPTransition];
    v145 = (v145 | cancelDCPTransition) != 0;
    if (![+[CBAODState isDCPBasedAODSupported] sharedInstance]
    {
      currentTransitionUpdateID = [v112[42] currentTransitionUpdateID];
      v14 = v112;
      *(v112 + 80) = currentTransitionUpdateID;
      if (*(v14 + 80) == -1)
      {
        if (*(v112[42] + 248))
        {
          memset(__b, 0, 0x4CuLL);
          v111 = *(v112[42] + 248);
          if (v111)
          {
            objc_msgSend_origin(v111, v114);
          }

          else
          {
            memset(__b, 0, 0x4CuLL);
          }

          v110 = *(v112[42] + 248);
          if (v110)
          {
            objc_msgSend_header(v110, v114);
          }

          else
          {
            v16 = v112;
            v112[27] = 0;
            v16[28] = 0;
            v143 = 0;
          }

          v108 = v142;
          v109 = *(v112[42] + 248);
          if (v109)
          {
            objc_msgSend_header(v109, v114);
          }

          else
          {
            v17 = v112;
            v112[24] = 0;
            v17[25] = 0;
            v141 = 0;
          }

          v18 = v112;
          v105 = 1.0;
          *(v112[42] + 392) = v108 * (1.0 / v140);
          v107 = __b;
          *(v18[42] + 84) = *(v18 + 61);
          *(v18[42] + 124) = *(v18 + 62);
          *(v18[42] + 116) = *(v18 + 63);
          LODWORD(v15) = *(v18 + 65);
          v19 = v18[42];
          v103 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
          [*(v19 + 408) setLux:v15];
          LODWORD(v20) = *(v112 + 61);
          [*(v112[42] + 408) setNits:v20];
          [*(v112[42] + 408) currentStrength];
          LODWORD(v21) = *(v112 + 67);
          v22 = v112[42];
          v104 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
          [*(v22 + 416) setLux:v21];
          LODWORD(v23) = *(v112 + 61);
          [*(v112[42] + 416) setNits:v23];
          v24 = v112[42];
          v106 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
          CFXSetTarget(*(v24 + 272), v107 + 7, 1, 1, 0.0, v105);
          Current = CFAbsoluteTimeGetCurrent();
          v26 = v112;
          *(v112 + 23) = Current;
          CFXUpdateColorFade(*(v26[42] + 272), *(v26 + 23));
          memcpy((v112[42] + 280), v107 + 7, 0x30uLL);
          if (*(v112[42] + 16))
          {
            v102 = *(v112[42] + 16);
          }

          else
          {
            v101 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v102 = v101;
          }

          v27 = v112;
          v112[22] = v102;
          type = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v27[22], OS_LOG_TYPE_DEFAULT))
          {
            log = v112[22];
            *v99 = type;
            v97 = *(v112 + 23);
            [*(v112[42] + 248) submissionTimestamp];
            buf = v152;
            __os_log_helper_16_0_1_8_0(v152, COERCE__INT64(v97 - v28));
            _os_log_impl(&dword_1DE8E5000, log, v99[0], "[Flipbook] No progress made on flipbook for %f sec", v152, 0xCu);
          }
        }
      }

      else
      {
        v96 = v138;
        memset(v138, 0, sizeof(v138));
        v137 = [v112[42] flipBookEntryForID:*(v112 + 80) entry:v138];
        if ((v137 & 1) != 0 && *(v112[42] + 248))
        {
          v29 = v112;
          HIDWORD(v30) = 0;
          *(v112[42] + 392) = 0;
          v95 = *(v29[42] + 248);
          if (v95)
          {
            objc_msgSend_header(v95, v114);
          }

          else
          {
            v31 = v112;
            v112[9] = 0;
            v31[10] = 0;
            v136 = 0;
          }

          v94 = 0;
          if (v135)
          {
            v93 = *(v112[42] + 248);
            if (v93)
            {
              objc_msgSend_header(v93, v114);
            }

            else
            {
              v32 = v112;
              v112[6] = 0;
              v32[7] = 0;
              v134 = 0;
            }

            v94 = v133 != 0;
          }

          if (v94)
          {
            v92 = *(v112[42] + 248);
            if (v92)
            {
              objc_msgSend_header(v92, v114);
            }

            else
            {
              v33 = v112;
              v112[3] = 0;
              v33[4] = 0;
              v132 = 0;
            }

            v90 = (v131 - 1 - *(v112 + 80));
            v91 = *(v112[42] + 248);
            if (v91)
            {
              objc_msgSend_header(v91, v114);
            }

            else
            {
              v128 = 0;
              v112[1] = 0;
              v130 = 0;
            }

            v34 = v112;
            *(v112[42] + 392) = v90 * (1.0 / v129);
            *(v34[42] + 392) = fminf(*(v34[42] + 392), 5.0);
          }

          else
          {
            if (*(v112[42] + 16))
            {
              v89 = *(v112[42] + 16);
            }

            else
            {
              if (_COREBRIGHTNESS_LOG_DEFAULT)
              {
                inited = _COREBRIGHTNESS_LOG_DEFAULT;
              }

              else
              {
                inited = init_default_corebrightness_log();
              }

              v89 = inited;
            }

            oslog = v89;
            v126 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
            {
              v85 = oslog;
              *v86 = v126;
              v87 = *(v112[42] + 248);
              if (v87)
              {
                objc_msgSend_header(v87, v114);
              }

              else
              {
                memset(&v125[16], 0, 23);
              }

              v83 = *&v125[29];
              v84 = *(v112[42] + 248);
              if (v84)
              {
                objc_msgSend_header(v84, v114);
              }

              else
              {
                v124 = 0;
                *v125 = 0;
                *&v125[7] = 0;
              }

              v82 = v151;
              __os_log_helper_16_0_2_4_0_4_0(v151, v83, *&v125[1]);
              _os_log_error_impl(&dword_1DE8E5000, v85, v86[0], "[Flipbook] Unexpected flipbook frequency = %d OR flipbook number of updates = %d", v151, 0xEu);
            }
          }

          if (v138[4])
          {
            *(v112[42] + 84) = *&v138[5];
          }

          if (v138[51])
          {
            *(v112[42] + 124) = *(v112 + 37);
          }

          if (v138[46])
          {
            *(v112[42] + 116) = *&v138[47];
          }

          LODWORD(v30) = *(v112[42] + 84);
          [*(v112[42] + 408) setNits:v30];
          if (v138[56] & 1) != 0 || (v138[4])
          {
            LODWORD(v35) = *&v138[61];
            [*(v112[42] + 408) setLux:v35];
          }

          [*(v112[42] + 408) currentStrength];
          LODWORD(v36) = *(v112[42] + 84);
          [*(v112[42] + 416) setNits:v36];
          if (v138[65] & 1) != 0 || (v138[4])
          {
            LODWORD(v37) = *&v138[70];
            [*(v112[42] + 416) setLux:v37];
          }

          if ([v112[42] gcp])
          {
            v81 = *(v112[42] + 84);
            v38 = [v112[42] gcp];
            LODWORD(v39) = v81;
            [v38 setNits:v39];
          }

          v40 = v112[42];
          v78 = &OBJC_IVAR___CBAODState__thresholdsAPDeltaPBrightenBuckets;
          v41 = *(v40 + 272);
          v80 = v138;
          v79 = 0;
          CFXSetTarget(v41, &v138[10], 1, 1, 0.0, 1.0);
          v123 = CFAbsoluteTimeGetCurrent();
          CFXUpdateColorFade(*(v112[42] + 272), v123);
          [v112[42] setCurrentWhitepointFromMatrix:&v138[10]];
          v122 = 0;
          v121 = 0;
          [v112[42] chromaticity:&v122 andIlluminance:&v121 fromMatrix:&v138[10]];
          if (*(v112[42] + 16))
          {
            v77 = *(v112[42] + 16);
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v76 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v76 = init_default_corebrightness_log();
            }

            v77 = v76;
          }

          v120 = v77;
          v119 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            v73 = v120;
            *v74 = v119;
            v42 = *(v112 + 24);
            *&v43 = *(v112[42] + 392);
            v44 = "set";
            if (v138[4])
            {
              v45 = "set";
            }

            else
            {
              v45 = "not set";
            }

            if (v138[9])
            {
              v46 = "set";
            }

            else
            {
              v46 = "not set";
            }

            if (v138[46])
            {
              v47 = "set";
            }

            else
            {
              v47 = "not set";
            }

            *&v48 = *(v112 + 37);
            if (v138[51])
            {
              v49 = "set";
            }

            else
            {
              v49 = "not set";
            }

            if (v138[56])
            {
              v50 = "set";
            }

            else
            {
              v50 = "not set";
            }

            if ((v138[65] & 1) == 0)
            {
              v44 = "not set";
            }

            v72 = &v61;
            v75 = v150;
            __os_log_helper_16_2_17_4_0_8_0_8_0_8_32_8_0_8_0_8_32_8_0_8_32_8_0_8_32_8_0_8_32_8_0_8_0_8_32_8_0(v150, v42, v43, COERCE__INT64(*&v138[5]), v45, COERCE__INT64(*&v122), COERCE__INT64(*(&v122 + 1)), v46, COERCE__INT64(*&v138[47]), v47, v48, v49, COERCE__INT64(*&v138[57]), v50, COERCE__INT64(*&v138[61]), COERCE__INT64(*&v138[66]), v44, COERCE__INT64(*&v138[70]));
            _os_log_impl(&dword_1DE8E5000, v73, v74[0], "[Flipbook] Last update applied[%d], remaining transition length = %f, brightness = %f (%s); WP = (%f; %f) (%s), pcc = %f (%s), brightness limit = %f (%s), twilight = %f (%s), twilightLux = %f, ammolite = %f (%s), ammoliteLux = %f", v75, 0xA8u);
          }
        }

        else
        {
          if (*(v112[42] + 16))
          {
            v71 = *(v112[42] + 16);
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v70 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v70 = init_default_corebrightness_log();
            }

            v71 = v70;
          }

          v118 = v71;
          v117 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            v67 = v118;
            *v68 = v117;
            v51 = *(v112 + 80);
            v69 = v149;
            __os_log_helper_16_0_1_4_0(v149, v51);
            _os_log_error_impl(&dword_1DE8E5000, v118, v117, "[Flipbook] currentID=%d (from DCP; adjusted) does not correspond to any entry", v149, 8u);
          }

          *(v112[42] + 392) = 0;
        }
      }
    }
  }

  if (*(v112[42] + 160))
  {
    (*(*(v112[42] + 160) + 16))();
  }

  [v112[42] releaseCallbacks];
  if (*(v112[42] + 16))
  {
    v66 = *(v112[42] + 16);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v65 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v65 = init_default_corebrightness_log();
    }

    v66 = v65;
  }

  v116 = v66;
  v115 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    v62 = v116;
    *v63 = v115;
    liveUpdates = [*(v112[42] + 72) liveUpdates];
    v53 = v112[42];
    *&v54 = v53[21];
    *&v55 = v53[79];
    *&v56 = v53[80];
    *&v57 = v53[25];
    *&v58 = v53[29];
    *&v59 = v53[98];
    v64 = v148;
    __os_log_helper_16_0_7_4_0_8_0_8_0_8_0_8_0_8_0_8_0(v148, liveUpdates, v54, v55, v56, v57, v58, v59);
    _os_log_impl(&dword_1DE8E5000, v62, v63[0], "[AOD update] Cancel transition, liveUpdates=%d. Current SDR = %f, WP = (%f;%f), _currentEDRHeadroom = %f, AAP = %f, remaining transition length = %f", v64, 0x44u);
  }

  return v145;
}

- (BOOL)requestColorRampTransitionStop
{
  selfCopy = self;
  v10 = a2;
  if ([(CBRampManager *)self->_rampManager hasRampRunningForIdentifier:@"COLOR_RAMP"])
  {
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    v9 = logHandle;
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_1DE8E5000, log, type, "ColorRamp transition request - stop", v7, 2u);
    }

    [(CBRampManager *)selfCopy->_rampManager removeRampWithIdentifier:@"COLOR_RAMP"];
    CFXCancelColorFade(selfCopy->_flipbookCache);
  }

  return 1;
}

- (void)releaseCallbacks
{
  if (self->_rampDoneCallback)
  {
    _Block_release(self->_rampDoneCallback);
    self->_rampDoneCallback = 0;
  }

  if (self->_rampCanceledCallback)
  {
    _Block_release(self->_rampCanceledCallback);
    self->_rampCanceledCallback = 0;
  }
}

- (CBAODTransitionController)initWithContext:(id)context andThresholdModule:(id)module
{
  v6 = [(CBAODTransitionController *)self initWithContext:context];
  if (v6)
  {
    *&v6->_currentFlipBookEntry.ammoliteLux = module;
    MEMORY[0x1E69E5928](*&v6->_currentFlipBookEntry.ammoliteLux);
  }

  return v6;
}

- (CBAODTransitionController)initWithContext:(id)context
{
  v54 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v51 = a2;
  contextCopy = context;
  v49.receiver = self;
  v49.super_class = CBAODTransitionController;
  selfCopy = -[CBModule initWithQueue:](&v49, sel_initWithQueue_, [context displayQueue]);
  if (selfCopy)
  {
    *&selfCopy->_liveUpdatesOverride = contextCopy;
    brtCtl = [contextCopy brtCtl];
    selfCopy->_brtCtl = brtCtl;
    MEMORY[0x1E69E5928](selfCopy->_brtCtl);
    getDisplayId = [(CBBrightnessProxy *)selfCopy->_brtCtl getDisplayId];
    selfCopy->_displayID = getDisplayId;
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v48 = [v5 initWithFormat:@"com.apple.CoreBrightness.AOD.CBAODTransitionController.%lu", selfCopy->_displayID];
    if (v48)
    {
      v6 = os_log_create([v48 cStringUsingEncoding:1], "default");
    }

    else
    {
      v6 = os_log_create("com.apple.CoreBrightness.AOD.CBAODTransitionController", "default");
    }

    selfCopy->super._logHandle = v6;
    if (!selfCopy->super._logHandle)
    {
      v24 = (_COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log());
      v47 = v24;
      v46 = 16;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        log = v47;
        type = v46;
        __os_log_helper_16_0_0(v45);
        _os_log_error_impl(&dword_1DE8E5000, log, type, "Failed to create log handle", v45, 2u);
      }
    }

    *&v7 = MEMORY[0x1E69E5920](v48).n128_u64[0];
    if ([(CBAODTransitionController *)selfCopy initAPEndpoint])
    {
      LOBYTE(selfCopy->_targetWhitepoint.matrix[2][0]) = 0;
    }

    else
    {
      if (selfCopy->super._logHandle)
      {
        logHandle = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        logHandle = inited;
      }

      v44 = logHandle;
      v43 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v44;
        v19 = v43;
        __os_log_helper_16_0_0(v42);
        _os_log_impl(&dword_1DE8E5000, v18, v19, "Use live updates (CA) by default", v42, 2u);
      }

      LOBYTE(selfCopy->_targetWhitepoint.matrix[2][0]) = 1;
    }

    v41 = objc_alloc_init(CBFrameLink);
    v8 = [[CBRampManager alloc] initWithClockSource:v41];
    selfCopy->_rampManager = v8;
    *&v9 = MEMORY[0x1E69E5920](v41).n128_u64[0];
    twilight = [contextCopy twilight];
    [(CBAODTransitionController *)selfCopy setTwilight:twilight];
    ammolite = [contextCopy ammolite];
    [(CBAODTransitionController *)selfCopy setAmmolite:ammolite];
    -[CBRampManager scheduleWithDispatchQueue:](selfCopy->_rampManager, "scheduleWithDispatchQueue:", [contextCopy displayQueue]);
    rampManager = selfCopy->_rampManager;
    v35 = MEMORY[0x1E69E9820];
    v36 = -1073741824;
    v37 = 0;
    v38 = __45__CBAODTransitionController_initWithContext___block_invoke;
    v39 = &unk_1E867C678;
    v40 = selfCopy;
    [(CBRampManager *)rampManager setClockHandler:?];
    v13 = selfCopy->_rampManager;
    v29 = MEMORY[0x1E69E9820];
    v30 = -1073741824;
    v31 = 0;
    v32 = __45__CBAODTransitionController_initWithContext___block_invoke_2;
    v33 = &unk_1E867C678;
    v34 = selfCopy;
    [(CBRampManager *)v13 setRampDoneCallback:?];
    [(CBRampManager *)selfCopy->_rampManager activate];
    selfCopy->_currentSDRBrightness = 0.0;
    selfCopy->_targetSDRBrightness = 0.0;
    selfCopy->_minNits = 0.0;
    selfCopy->_maxNits = 0.0;
    selfCopy->_rampDoneCallback = 0;
    selfCopy->_edrRampDurationPerStop = 0.75;
    if (selfCopy->_brtCtl)
    {
      getBrightnessCapabilities = [(CBBrightnessProxy *)selfCopy->_brtCtl getBrightnessCapabilities];
      if (getBrightnessCapabilities)
      {
        [getBrightnessCapabilities objectForKeyedSubscript:@"EDRSecondsPerStopDefault"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [objc_msgSend(getBrightnessCapabilities objectForKeyedSubscript:{@"EDRSecondsPerStopDefault", "floatValue"}];
          selfCopy->_edrRampDurationPerStop = v14;
          if (selfCopy->super._logHandle)
          {
            v17 = selfCopy->super._logHandle;
          }

          else
          {
            if (_COREBRIGHTNESS_LOG_DEFAULT)
            {
              v16 = _COREBRIGHTNESS_LOG_DEFAULT;
            }

            else
            {
              v16 = init_default_corebrightness_log();
            }

            v17 = v16;
          }

          v27 = v17;
          v26 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            __os_log_helper_16_0_1_8_0(v53, COERCE__INT64(selfCopy->_edrRampDurationPerStop));
            _os_log_impl(&dword_1DE8E5000, v27, v26, "AOD EDR transitions uses %f seconds per stop", v53, 0xCu);
          }
        }
      }
    }

    selfCopy->_currentAAPFactor = 0.0;
    selfCopy->_targetAAPFactor = 0.0;
    selfCopy->_currentBrightnessLimit = 0.0;
    selfCopy->_targetBrightnessLimit = 0.0;
    selfCopy->_currentIndicatorBrightness = NAN;
    selfCopy->_currentIndicatorBrightnessLimit = selfCopy->_currentBrightnessLimit;
    selfCopy->_currentLumaBoostFactor = 0.0;
    selfCopy->_targetLumaBoostFactor = 0.0;
    memset(__b, 0, sizeof(__b));
    memcpy(&selfCopy->_currentFlipBookEntry, __b, 0x4FuLL);
    selfCopy->_targetWhitepoint.matrix[2][1] = -1.0;
    selfCopy->_currentFrequency = 60;
    selfCopy->_currentTrustedLux = -1.0;
    BYTE1(selfCopy->_targetWhitepoint.matrix[2][0]) = 1;
    *&selfCopy->_currentFlipBookEntry.reserved[4] = 0;
    selfCopy->_targetWhitepoint.xy.y = 0.0;
    [(CBAODTransitionController *)selfCopy initColorEffects];
    memcpy(&selfCopy->_thresholdModule, &identityMatrix, 0x24uLL);
    memcpy(selfCopy->_currentWhitepoint.matrix[2], &identityMatrix, 0x24uLL);
    [(CBAODTransitionController *)selfCopy chromaticity:selfCopy->_currentWhitepoint.matrix[1] andIlluminance:&selfCopy->_currentWhitepoint.matrix[1][2] fromMatrix:&selfCopy->_thresholdModule];
    [(CBAODTransitionController *)selfCopy chromaticity:selfCopy->_targetWhitepoint.matrix[1] andIlluminance:&selfCopy->_targetWhitepoint.matrix[1][2] fromMatrix:selfCopy->_currentWhitepoint.matrix[2]];
    [(CBAODTransitionController *)selfCopy checkBootArgsConfiguration];
  }

  return selfCopy;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  MEMORY[0x1E69E5920](self->_brtCtl);
  MEMORY[0x1E69E5920](selfCopy->_rampManager);
  MEMORY[0x1E69E5920](selfCopy->_endpoint);
  [(CBAODTransitionController *)selfCopy releaseLastUpdateSwappedTimer];
  if (selfCopy->_rampDoneCallback)
  {
    _Block_release(selfCopy->_rampDoneCallback);
    selfCopy->_rampDoneCallback = 0;
  }

  if (selfCopy->_rampCanceledCallback)
  {
    _Block_release(selfCopy->_rampCanceledCallback);
    selfCopy->_rampCanceledCallback = 0;
  }

  [(CBAODTransitionController *)selfCopy setIndicator:?];
  [(CBAODTransitionController *)selfCopy setTwilight:0];
  [(CBAODTransitionController *)selfCopy setAmmolite:0];
  if (selfCopy->super._logHandle)
  {
    MEMORY[0x1E69E5920](selfCopy->super._logHandle);
  }

  if (selfCopy->super._queue)
  {
    dispatch_release(selfCopy->super._queue);
    selfCopy->super._queue = 0;
  }

  *&v2 = MEMORY[0x1E69E5920](*&selfCopy->_liveUpdatesOverride).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = CBAODTransitionController;
  [(CBModule *)&v3 dealloc];
}

- (BOOL)initAPEndpoint
{
  v29 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v25 = a2;
  v24 = 1;
  self->_endpoint = [[CBAPEndpoint alloc] initWithServiceName:@"cbroot-service" role:@"DCP"];
  if (selfCopy->_endpoint)
  {
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    oslog = logHandle;
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v10 = type;
      __os_log_helper_16_0_0(v21);
      _os_log_impl(&dword_1DE8E5000, log, v10, "CBAPEndpoint initialization completed", v21, 2u);
    }

    bzero(v28, 0x400uLL);
    v20 = 1024;
    if (!sysctlbyname("kern.bootargs", v28, &v20, 0, 0))
    {
      v19 = strstr[abi:de200100](v28, "cb_aod_enable_dcp_updates");
      if (v19)
      {
        v19 += 25;
        v18 = strtol(v19 + 1, 0, 0) != 0;
        if (selfCopy->super._logHandle)
        {
          v8 = selfCopy->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v7 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v7 = init_default_corebrightness_log();
          }

          v8 = v7;
        }

        v17 = v8;
        v16 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_1_4_0(v27, v18);
          _os_log_impl(&dword_1DE8E5000, v17, v16, "Boot arg override: enable DCP updates %d", v27, 8u);
        }

        [(CBAODTransitionController *)selfCopy enableDCPFlipBookUpdates:v18];
      }
    }
  }

  else
  {
    if (selfCopy->super._logHandle)
    {
      v6 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v5 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v5 = init_default_corebrightness_log();
      }

      v6 = v5;
    }

    v15 = v6;
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v3 = v15;
      v4 = v14;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_1DE8E5000, v3, v4, "CBAPEndpoint init failed", v13, 2u);
    }

    v24 = 0;
  }

  return v24 & 1;
}

- (void)checkBootArgsConfiguration
{
  v11 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v7[1] = a2;
  bzero(v10, 0x400uLL);
  v7[0] = 1024;
  if (!sysctlbyname("kern.bootargs", v10, v7, 0, 0))
  {
    v6 = strstr[abi:de200100](v10, "cb_aod_force_live_updates");
    if (v6)
    {
      v5 = strtol(v6 + 26, 0, 0) != 0;
      if (selfCopy->super._logHandle)
      {
        logHandle = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        logHandle = inited;
      }

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v2 = "Enable";
        }

        else
        {
          v2 = "Disable";
        }

        __os_log_helper_16_2_1_8_32(v9, v2);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Boot arg override live updates: %s.", v9, 0xCu);
      }

      [(CBAODTransitionController *)selfCopy setLiveUpdatesOverride:v5];
      [(CBAODTransitionController *)selfCopy setLiveUpdates:v5];
    }
  }
}

- (id)copyCurrentDisplayState
{
  v34 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v29 = a2;
  memset(__b, 0, sizeof(__b));
  currentSDRBrightness = selfCopy->_currentSDRBrightness;
  currentBrightnessLimit = selfCopy->_currentBrightnessLimit;
  currentAAPFactor = selfCopy->_currentAAPFactor;
  [*&selfCopy->_remainingTransitionLength currentStrength];
  v24 = v2;
  [*&selfCopy->_currentDisplayNits currentStrength];
  v23 = v3;
  memcpy(__dst, &selfCopy->_thresholdModule, sizeof(__dst));
  if ([(CBAODTransitionController *)selfCopy currentFlipBookEntry:__b])
  {
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    oslog = logHandle;
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_2_4_0_8_0(v33, *__b, COERCE__INT64(*&__b[5]));
      _os_log_impl(&dword_1DE8E5000, oslog, type, "Get state for last update applied[%d] = %f", v33, 0x12u);
    }

    if (__b[4])
    {
      currentSDRBrightness = *&__b[5];
    }

    if (__b[51])
    {
      currentBrightnessLimit = *&__b[52];
    }

    if (__b[46])
    {
      currentAAPFactor = *&__b[47];
    }

    if (__b[65])
    {
      v24 = *&__b[66];
    }

    if (__b[56])
    {
      v23 = *&__b[57];
    }

    v19 = 0;
    v18 = 0;
    [(CBAODTransitionController *)selfCopy chromaticity:&v19 andIlluminance:&v18 fromMatrix:&__b[10]];
    *&__dst[9] = v19;
    __dst[11] = v18;
  }

  v31[0] = @"SDR.Nits";
  *&v4 = currentSDRBrightness;
  v32[0] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v31[1] = @"BrightnessLimit";
  *&v5 = currentBrightnessLimit;
  v32[1] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v31[2] = @"Lux";
  *&v6 = selfCopy->_currentTrustedLux;
  v32[2] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v31[3] = @"IndicatorBrightness.Nits";
  *&v7 = selfCopy->_currentIndicatorBrightness;
  v32[3] = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v31[4] = @"IndicatorBrightness.Limit";
  *&v8 = selfCopy->_currentIndicatorBrightnessLimit;
  v32[4] = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v31[5] = @"Twilight.Strength";
  LODWORD(v9) = v23;
  v32[5] = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v31[6] = @"Ammolite.Strength";
  LODWORD(v10) = v24;
  v32[6] = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v31[7] = @"ContrastEnhancer.Strength";
  *&v11 = currentAAPFactor;
  v32[7] = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v31[8] = @"Chromaticity.X";
  LODWORD(v12) = __dst[9];
  v32[8] = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v31[9] = @"Chromaticity.Y";
  LODWORD(v13) = __dst[10];
  v32[9] = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:10];
  MEMORY[0x1E69E5928](v17);
  return v17;
}

- (float)currentDisplayNits
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v12 = a2;
  currentSDRBrightness = self->_currentSDRBrightness;
  if (![(CBRampManager *)self->_rampManager liveUpdates])
  {
    if ([+[CBAODState isDCPBasedAODSupported] sharedInstance]
    {
      v10 = [(CBAPEndpoint *)selfCopy->_endpoint copyProperty:@"CurrentBrightness"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        currentSDRBrightness = [v10 intValue] / 65536.0;
        if (selfCopy->super._logHandle)
        {
          logHandle = selfCopy->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          logHandle = inited;
        }

        v9 = logHandle;
        v8 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_1_8_0(v15, COERCE__INT64(currentSDRBrightness));
          _os_log_impl(&dword_1DE8E5000, v9, v8, "Received current nits = %f from DCP", v15, 0xCu);
        }
      }

      MEMORY[0x1E69E5920](v10);
    }

    else
    {
      memset(__b, 0, sizeof(__b));
      if ([(CBAODTransitionController *)selfCopy currentFlipBookEntry:__b]&& (__b[4] & 1) != 0)
      {
        if (selfCopy->super._logHandle)
        {
          v4 = selfCopy->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v3 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v3 = init_default_corebrightness_log();
          }

          v4 = v3;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_2_4_0_8_0(v14, *__b, COERCE__INT64(*&__b[5]));
          _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "Get last update applied[%d] = %f", v14, 0x12u);
        }

        return *&__b[5];
      }
    }
  }

  return currentSDRBrightness;
}

- (float)currentAAPFactor
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v12 = a2;
  currentAAPFactor = self->_currentAAPFactor;
  if (![(CBRampManager *)self->_rampManager liveUpdates])
  {
    if ([+[CBAODState isDCPBasedAODSupported] sharedInstance]
    {
      v10 = [(CBAPEndpoint *)selfCopy->_endpoint copyProperty:@"CurrentPCCStrength"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        currentAAPFactor = [v10 intValue] / 65536.0;
        if (selfCopy->super._logHandle)
        {
          logHandle = selfCopy->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          logHandle = inited;
        }

        v9 = logHandle;
        v8 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_1_8_0(v15, COERCE__INT64(currentAAPFactor));
          _os_log_impl(&dword_1DE8E5000, v9, v8, "Received current PCC strength = %f from DCP", v15, 0xCu);
        }
      }

      MEMORY[0x1E69E5920](v10);
    }

    else
    {
      memset(__b, 0, sizeof(__b));
      if ([(CBAODTransitionController *)selfCopy currentFlipBookEntry:__b]&& (__b[46] & 1) != 0)
      {
        if (selfCopy->super._logHandle)
        {
          v4 = selfCopy->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v3 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v3 = init_default_corebrightness_log();
          }

          v4 = v3;
        }

        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_2_4_0_8_0(v14, *__b, COERCE__INT64(*&__b[47]));
          _os_log_impl(&dword_1DE8E5000, v4, OS_LOG_TYPE_DEFAULT, "Get last update applied[%d] PCC factor = %f", v14, 0x12u);
        }

        return *&__b[47];
      }
    }
  }

  return currentAAPFactor;
}

- (float)currentTwilightLux
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v14 = a2;
  [*&self->_currentDisplayNits lux];
  v13 = v2;
  if (![(CBRampManager *)selfCopy->_rampManager liveUpdates])
  {
    if ([+[CBAODState isDCPBasedAODSupported] sharedInstance]
    {
      v12 = [(CBAPEndpoint *)selfCopy->_endpoint copyProperty:@"CurrentTwilightLux"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 intValue] / 65536.0;
        if (selfCopy->super._logHandle)
        {
          logHandle = selfCopy->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          logHandle = inited;
        }

        v11 = logHandle;
        v10 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_1_8_0(v17, COERCE__INT64(v13));
          _os_log_impl(&dword_1DE8E5000, v11, v10, "Received current twilight lux = %f from DCP", v17, 0xCu);
        }
      }

      MEMORY[0x1E69E5920](v12);
    }

    else
    {
      memset(__b, 0, sizeof(__b));
      if ([(CBAODTransitionController *)selfCopy currentFlipBookEntry:__b]&& ((__b[4] & 1) != 0 || (__b[56] & 1) != 0))
      {
        if (selfCopy->super._logHandle)
        {
          v6 = selfCopy->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            v5 = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            v5 = init_default_corebrightness_log();
          }

          v6 = v5;
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          if (__b[56])
          {
            v3 = "set";
          }

          else
          {
            v3 = "not set";
          }

          __os_log_helper_16_2_4_4_0_8_0_8_0_8_32(v16, *__b, COERCE__INT64(*&__b[61]), COERCE__INT64(*&__b[57]), v3);
          _os_log_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEFAULT, "Get last update applied[%d] Twilight Lux = %f (Twilight strength = %f (%s))", v16, 0x26u);
        }

        return *&__b[61];
      }
    }
  }

  return v13;
}

- (float)currentAmmoliteLux
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v9 = a2;
  [*&self->_remainingTransitionLength lux];
  v8 = v2;
  if (![+[CBAODState isDCPBasedAODSupported] sharedInstance]
  {
    memset(__b, 0, sizeof(__b));
    if ([(CBAODTransitionController *)selfCopy currentFlipBookEntry:__b]&& ((__b[4] & 1) != 0 || (__b[65] & 1) != 0))
    {
      if (selfCopy->super._logHandle)
      {
        logHandle = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        logHandle = inited;
      }

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        if (__b[65])
        {
          v3 = "set";
        }

        else
        {
          v3 = "not set";
        }

        __os_log_helper_16_2_4_4_0_8_0_8_0_8_32(v11, *__b, COERCE__INT64(*&__b[70]), COERCE__INT64(*&__b[66]), v3);
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Get last update applied[%d] Ammolite Lux = %f (Ammolite strength = %f (%s))", v11, 0x26u);
      }

      return *&__b[70];
    }
  }

  return v8;
}

- (void)setDurationOfEDRRamp:(float)ramp
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v7, COERCE__INT64(ramp));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "setDurationOfEDRRamp = %f", v7, 0xCu);
  }

  self->_edrRampDurationPerStop = ramp;
}

- (void)setDisplayON:(BOOL)n
{
  v9 = *MEMORY[0x1E69E9840];
  if ((BYTE1(self->_targetWhitepoint.matrix[2][0]) & 1) != n)
  {
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (n)
      {
        v3 = "ON";
      }

      else
      {
        v3 = "OFF";
      }

      __os_log_helper_16_2_1_8_32(v8, v3);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Display is %s", v8, 0xCu);
    }

    BYTE1(self->_targetWhitepoint.matrix[2][0]) = n;
  }
}

- (void)startEternalIndicatorRamp
{
  if (self->_displayContext && [(CBRampManager *)self->_rampManager liveUpdates]&& ![(CBRampManager *)self->_rampManager hasRampRunningForIdentifier:@"INDICATOR_RAMP"])
  {
    LODWORD(v2) = 1114636288;
    [(CBRampManager *)self->_rampManager insertNewEternalRampFrequency:1 startRamp:@"INDICATOR_RAMP" identifier:v2 progressCallback:?];
  }
}

- (void)stopEternalIndicatorRamp
{
  if ([(CBRampManager *)self->_rampManager liveUpdates])
  {
    [(CBAODTransitionController *)self requestTransitionStopForIdentifier:@"INDICATOR_RAMP"];
  }
}

- (void)updateIndicatorBrightness:(float)brightness andLimit:(float)limit
{
  if (std::__math::isnan[abi:de200100](brightness))
  {
    self->_currentIndicatorBrightness = brightness;
    *&v4 = brightness;
    [(CBBrightnessProxy *)self->_brtCtl setIndicatorBrightness:v4];
  }

  else
  {
    brightnessCopy = brightness;
    if (self->_displayContext && ([(CBDisplayContextiOS *)self->_displayContext indicatorBrightnessFollowsMIB]& 1) == 0)
    {
      brightnessCopy = std::__math::fmax[abi:de200100](brightness, self->_currentSDRBrightness);
    }

    self->_currentIndicatorBrightness = brightnessCopy;
    *&v4 = brightnessCopy;
    [(CBBrightnessProxy *)self->_brtCtl setIndicatorBrightness:v4];
  }

  self->_currentIndicatorBrightnessLimit = limit;
  *&v5 = limit;
  [(CBBrightnessProxy *)self->_brtCtl setIndicatorBrightnessLimit:v5];
}

- (void)setInitialState:(id)state
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v19, state);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "Initial state = %@", v19, 0xCu);
  }

  if (self->_currentState)
  {
    MEMORY[0x1E69E5920](self->_currentState);
  }

  self->_currentState = MEMORY[0x1E69E5928](state);
  [CBAODTransitionController getFloatValueFrom:"getFloatValueFrom:key:subkey:" key:state subkey:?];
  self->_targetEDRHeadroom = v3;
  self->_currentEDRHeadroom = v3;
  [(CBAODTransitionController *)self getFloatValueFrom:state key:@"DisplayBrightness" subkey:@"NitsSDR"];
  self->_currentSDRBrightness = v4;
  self->_targetSDRBrightness = -1.0;
  [(CBAODTransitionController *)self getFloatValueFrom:state key:@"CBAODMinNits"];
  self->_minNits = v5;
  [(CBAODTransitionController *)self getFloatValueFrom:state key:@"DisplayPanelLuminanceMax"];
  self->_maxNits = v6;
  if (self->super._logHandle)
  {
    v12 = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v11 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v11 = init_default_corebrightness_log();
    }

    v12 = v11;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v18, COERCE__INT64(self->_minNits), COERCE__INT64(self->_maxNits));
    _os_log_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_DEFAULT, "Panel luminance: Nits min = %f, max = %f", v18, 0x16u);
  }

  [(CBAODTransitionController *)self processInitialColorMatrixFromState:state];
  [(CBAODTransitionController *)self getFloatValueFrom:state key:@"DisplayAAPFactor"];
  self->_currentAAPFactor = v7;
  self->_targetAAPFactor = -1.0;
  [(CBAODTransitionController *)self getFloatValueFrom:state key:kCBBrightnessCapToCA];
  self->_currentBrightnessLimit = v8;
  self->_targetBrightnessLimit = -1.0;
  if (self->super._logHandle)
  {
    v10 = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v9 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v9 = init_default_corebrightness_log();
    }

    v10 = v9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v17, COERCE__INT64(self->_currentSDRBrightness), COERCE__INT64(self->_currentEDRHeadroom), COERCE__INT64(self->_currentAAPFactor), COERCE__INT64(self->_currentBrightnessLimit));
    _os_log_impl(&dword_1DE8E5000, v10, OS_LOG_TYPE_DEFAULT, "Normal mode SDR brightness = %f; EDR headroom = %f; AAP factor = %f; nitsCap = %f", v17, 0x2Au);
  }
}

- (BOOL)startTransition:(id)transition length:(float)length forceUpdate:(BOOL)update rampDoneCallback:(id)callback rampCanceledCallback:(id)canceledCallback
{
  selfCopy = self;
  v15 = a2;
  transitionCopy = transition;
  lengthCopy = length;
  updateCopy = update;
  callbackCopy = callback;
  canceledCallbackCopy = canceledCallback;
  memset(__b, 0, sizeof(__b));
  LOBYTE(__b[0]) = updateCopy;
  if (lengthCopy >= 0.0)
  {
    HIBYTE(__b[0]) = 1;
    *&__b[1] = lengthCopy;
  }

  memcpy(__dst, __b, sizeof(__dst));
  return [(CBAODTransitionController *)selfCopy startTransition:transitionCopy transitionParameters:__dst rampDoneCallback:callbackCopy rampCanceledCallback:canceledCallbackCopy];
}

- (BOOL)startTransition:(id)transition transitionParameters:(id *)parameters rampDoneCallback:(id)callback rampCanceledCallback:(id)canceledCallback
{
  v196 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v179 = a2;
  transitionCopy = transition;
  parametersCopy = parameters;
  aBlock = callback;
  canceledCallbackCopy = canceledCallback;
  v174 = 0;
  if ([+[CBAODState isDCPBasedAODSupported]&& ![(CBRampManager *)selfCopy->_rampManager liveUpdates] sharedInstance]
  {
    if (parameters->var15)
    {
      *&v6 = parameters->var4;
      [(CBAODTransitionController *)selfCopy startTransitionOnDCP:transitionCopy transitionLength:v6];
    }

    else
    {
      if (selfCopy->super._logHandle)
      {
        logHandle = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        logHandle = inited;
      }

      oslog = logHandle;
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        v132 = type;
        __os_log_helper_16_0_0(v171);
        _os_log_impl(&dword_1DE8E5000, log, v132, "Brightness Ramp will be done on DCP", v171, 2u);
      }
    }

    return v174 & 1;
  }

  var0 = parameters->var0;
  [CBAODTransitionController getFloatValueFrom:selfCopy key:"getFloatValueFrom:key:subkey:" subkey:transitionCopy];
  v169 = v7;
  [(CBAODTransitionController *)selfCopy getFloatValueFrom:transitionCopy key:@"DisplayBrightness" subkey:@"NitsSDR"];
  v168 = v8;
  [(CBAODTransitionController *)selfCopy getFloatValueFrom:transitionCopy key:@"DisplayBrightness" subkey:@"NitsCap"];
  v167 = v9;
  [(CBAODTransitionController *)selfCopy getFloatValueFrom:transitionCopy key:@"DisplayAAPFactor"];
  v166 = v10;
  memcpy(__dst, &identityMatrix, sizeof(__dst));
  [transitionCopy objectForKey:@"ColorRamp"];
  objc_opt_class();
  v165 = objc_opt_isKindOfClass() & 1;
  if (v165)
  {
    [(CBAODTransitionController *)selfCopy colorMatrix:__dst fromState:transitionCopy];
  }

  [+[CBAODState sharedInstance](CBAODState nitsCap];
  v164 = v11;
  if (v11 > 0.0 && v168 > v164)
  {
    if (selfCopy->super._logHandle)
    {
      v130 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v129 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v129 = init_default_corebrightness_log();
      }

      v130 = v129;
    }

    v163 = v130;
    v162 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_2_8_0_8_0(v194, COERCE__INT64(v168), COERCE__INT64(v164));
      _os_log_impl(&dword_1DE8E5000, v163, v162, "Capping target SDR brightness %f -> %f", v194, 0x16u);
    }

    v168 = v164;
  }

  if ([+[CBAODState AODState]!= 4 sharedInstance]
  {
    [+[CBAODState sharedInstance](CBAODState maxAODNits];
    v167 = std::__math::fmin[abi:de200100](v167, v12);
  }

  if (selfCopy->_targetWhitepoint.matrix[2][1] >= 0.0)
  {
    v168 = selfCopy->_targetWhitepoint.matrix[2][1];
  }

  [(CBAODTransitionController *)selfCopy getFloatValueFrom:transitionCopy key:@"TrustedLux"];
  selfCopy->_currentTrustedLux = *&v13;
  if (v169 < 1.0)
  {
    v161 = selfCopy->super._logHandle;
    v160 = OS_LOG_TYPE_FAULT;
    if (os_log_type_enabled(v161, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_1_8_0(v193, COERCE__INT64(v169));
      _os_log_fault_impl(&dword_1DE8E5000, v161, v160, "Unexpected EDR Headroom target in AOD = %f < 1", v193, 0xCu);
    }

    v169 = 1.0;
  }

  v159 = 0;
  v158 = 0;
  *&v13 = v169;
  v157 = v169 < selfCopy->_targetEDRHeadroom;
  v156 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  v128 = 1;
  if ([(CBAODState *)[(CBAODTransitionController *)selfCopy aodState] AODState]!= 3)
  {
    v128 = [(CBAODState *)[(CBAODTransitionController *)selfCopy aodState] AODState]== 4;
  }

  v151 = v128;
  if (SLODWORD(v168) != SLODWORD(selfCopy->_targetSDRBrightness) || var0)
  {
    v159 = 1;
  }

  if (SLODWORD(v167) != SLODWORD(selfCopy->_targetBrightnessLimit) || var0)
  {
    v155 = 1;
  }

  if ((v165 & 1) != 0 && ([(CBAODTransitionController *)selfCopy shallUpdateWhitepointFrom:selfCopy->_currentWhitepoint.matrix[2] target:__dst]|| var0))
  {
    v158 = 1;
  }

  if (COERCE_INT(v166 * 100.0) != COERCE_INT(selfCopy->_targetAAPFactor * 100.0))
  {
    v156 = 1;
  }

  if (*&selfCopy->_currentDisplayNits)
  {
    v127 = *&selfCopy->_currentDisplayNits;
    [v127 targetLux];
    if ([v127 shouldRampFromStartLux:? toTargetLux:?])
    {
      *&v14 = v168;
      if ([*&selfCopy->_currentDisplayNits nitsAreInActiveRange:v14] & 1) != 0 || (*&v15 = selfCopy->_targetSDRBrightness, (objc_msgSend(*&selfCopy->_currentDisplayNits, "nitsAreInActiveRange:", v15)))
      {
        v153 = 1;
      }
    }
  }

  if (*&selfCopy->_remainingTransitionLength)
  {
    v126 = *&selfCopy->_remainingTransitionLength;
    [v126 targetLux];
    if ([v126 shouldRampFromStartLux:? toTargetLux:?])
    {
      *&v16 = v168;
      if ([*&selfCopy->_remainingTransitionLength nitsAreInActiveRange:v16] & 1) != 0 || (*&v17 = selfCopy->_targetSDRBrightness, (objc_msgSend(*&selfCopy->_remainingTransitionLength, "nitsAreInActiveRange:", v17)))
      {
        v152 = 1;
      }
    }
  }

  if ((CBU_RampLumaBoostFactorInAOD() & 1) != 0 && ([+[CBAODState sharedInstance](CBAODState AODState]== 3 || [+[CBAODState AODState]== 4 sharedInstance])
  {
    v154 = 1;
  }

  v125 = 1;
  if ((v159 & 1) == 0)
  {
    v125 = 1;
    if ((v156 & 1) == 0)
    {
      v125 = 1;
      if ((v158 & 1) == 0)
      {
        v125 = 1;
        if (!v157)
        {
          v125 = v154;
        }
      }
    }
  }

  v150 = v125;
  v124 = 1;
  if ((v125 & 1) == 0)
  {
    v124 = 1;
    if ((v153 & 1) == 0)
    {
      v124 = v152;
    }
  }

  v150 = v124;
  if ((v124 & 1) != 0 && (BYTE1(selfCopy->_targetWhitepoint.matrix[2][0]) & 1) == 0)
  {
    if (selfCopy->super._logHandle)
    {
      v123 = selfCopy->super._logHandle;
    }

    else
    {
      v122 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      v123 = v122;
    }

    v149 = v123;
    v148 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v192, transitionCopy);
      _os_log_error_impl(&dword_1DE8E5000, v149, v148, "Display is OFF -> discard AOD update %@", v192, 0xCu);
    }
  }

  if ((v150 & 1) == 0 || (BYTE1(selfCopy->_targetWhitepoint.matrix[2][0]) & 1) == 0)
  {
    return v174 & 1;
  }

  [+[CBAODState sharedInstance](CBAODState acquirePowerAssertion];
  memcpy(v147, parameters, 0x34uLL);
  [(CBAODTransitionController *)selfCopy logTransitionParameters:v147];
  if (!*&selfCopy->_currentFlipBookEntry.reserved[4])
  {
LABEL_97:
    [(CBAODTransitionController *)selfCopy cancelTransition];
    if (selfCopy->_rampDoneCallback)
    {
      _Block_release(selfCopy->_rampDoneCallback);
      selfCopy->_rampDoneCallback = 0;
    }

    if (aBlock)
    {
      v21 = _Block_copy(aBlock);
      selfCopy->_rampDoneCallback = v21;
    }

    if (selfCopy->_rampCanceledCallback)
    {
      _Block_release(selfCopy->_rampCanceledCallback);
      selfCopy->_rampCanceledCallback = 0;
    }

    if (canceledCallbackCopy)
    {
      v22 = _Block_copy(canceledCallbackCopy);
      selfCopy->_rampCanceledCallback = v22;
    }

    if ((v159 & 1) == 0 && selfCopy->_currentSDRBrightness != v168)
    {
      v159 = 1;
    }

    if ((v155 & 1) == 0 && selfCopy->_currentBrightnessLimit != v167)
    {
      v159 = 1;
    }

    if ((v165 & 1) != 0 && (v158 & 1) == 0 && [(CBAODTransitionController *)selfCopy shallUpdateWhitepointFrom:&selfCopy->_thresholdModule target:__dst])
    {
      v158 = 1;
    }

    if ((v156 & 1) == 0 && COERCE_INT(v166 * 1000.0) != COERCE_INT(selfCopy->_currentAAPFactor * 1000.0))
    {
      v156 = 1;
    }

    if ((v153 & 1) == 0)
    {
      if (*&selfCopy->_currentDisplayNits)
      {
        v119 = *&selfCopy->_currentDisplayNits;
        [v119 lux];
        if ([v119 shouldRampFromStartLux:? toTargetLux:?])
        {
          *&v23 = v168;
          if ([*&selfCopy->_currentDisplayNits nitsAreInActiveRange:v23] & 1) != 0 || (*&v24 = selfCopy->_targetSDRBrightness, (objc_msgSend(*&selfCopy->_currentDisplayNits, "nitsAreInActiveRange:", v24)))
          {
            v153 = 1;
          }
        }
      }
    }

    if ((v152 & 1) == 0)
    {
      if (*&selfCopy->_remainingTransitionLength)
      {
        v118 = *&selfCopy->_remainingTransitionLength;
        [v118 lux];
        if ([v118 shouldRampFromStartLux:? toTargetLux:?])
        {
          *&v25 = v168;
          if ([*&selfCopy->_remainingTransitionLength nitsAreInActiveRange:v25] & 1) != 0 || (*&v26 = selfCopy->_targetSDRBrightness, (objc_msgSend(*&selfCopy->_remainingTransitionLength, "nitsAreInActiveRange:", v26)))
          {
            v152 = 1;
          }
        }
      }
    }

    selfCopy->_currentFrequency = 60;
    HIDWORD(v27) = 0;
    if (parameters->var3)
    {
      var4 = parameters->var4;
    }

    else
    {
      *&v27 = selfCopy->_currentSDRBrightness;
      *&v19 = v168;
      [(CBAODTransitionController *)selfCopy transitionDurationFromCurrent:v27 toTarget:v19];
      var4 = *&v27;
    }

    if (parameters->var5)
    {
      var6 = parameters->var6;
    }

    else
    {
      var6 = var4;
    }

    if (parameters->var7)
    {
      var8 = parameters->var8;
    }

    else
    {
      var8 = var4;
    }

    v145 = var8;
    if (parameters->var9)
    {
      var10 = parameters->var10;
    }

    else
    {
      var10 = var4;
    }

    if (parameters->var5)
    {
      var14 = parameters->var14;
    }

    else
    {
      var14 = var4;
    }

    v144 = var14;
    if (parameters->var11)
    {
      var12 = parameters->var12;
    }

    else
    {
      var12 = var4;
    }

    v143 = var12;
    if (parameters->var3)
    {
      v112 = parameters->var4;
    }

    else
    {
      [*&selfCopy->_currentDisplayNits aodRampDuration];
      v112 = *&v27;
    }

    if (parameters->var3)
    {
      v111 = parameters->var4;
    }

    else
    {
      [*&selfCopy->_remainingTransitionLength aodRampDuration];
      v111 = *&v27;
    }

    if (v159)
    {
      *&v27 = v168;
      *&v19 = v167;
      *&v20 = selfCopy->_currentTrustedLux;
      [*&selfCopy->_currentFlipBookEntry.ammoliteLux updateALSThresholdsWithBrightness:v27 brightnessLimit:v19 lux:v20];
      selfCopy->_targetSDRBrightness = v168;
      if (selfCopy->super._logHandle)
      {
        v110 = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v109 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v109 = init_default_corebrightness_log();
        }

        v110 = v109;
      }

      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v190, COERCE__INT64(selfCopy->_currentSDRBrightness), COERCE__INT64(v168), COERCE__INT64(var6), COERCE__INT64(selfCopy->_currentTrustedLux));
        _os_log_impl(&dword_1DE8E5000, v110, OS_LOG_TYPE_DEFAULT, "[AOD update] Update target with SDRBrightness %f -> %f, Length = %f, Lux = %f", v190, 0x2Au);
      }

      if ([+[CBAODState AODState]== 3 sharedInstance]
      {
        *&v28 = v168;
        if (v168 > selfCopy->_currentSDRBrightness)
        {
          if (selfCopy->super._logHandle)
          {
            v108 = selfCopy->super._logHandle;
          }

          else
          {
            v107 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
            v108 = v107;
          }

          if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_0_2_8_0_8_0(v189, COERCE__INT64(selfCopy->_currentSDRBrightness), COERCE__INT64(v168));
            _os_log_error_impl(&dword_1DE8E5000, v108, OS_LOG_TYPE_ERROR, "SDR brightness is ramping up during AOD enter transition %f -> %f", v189, 0x16u);
          }
        }
      }

      if ([+[CBAODState AODState:v28]]== 4 && v168 < selfCopy->_currentSDRBrightness)
      {
        if (selfCopy->super._logHandle)
        {
          v106 = selfCopy->super._logHandle;
        }

        else
        {
          v105 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
          v106 = v105;
        }

        if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_2_8_0_8_0(v188, COERCE__INT64(selfCopy->_currentSDRBrightness), COERCE__INT64(v168));
          _os_log_error_impl(&dword_1DE8E5000, v106, OS_LOG_TYPE_ERROR, "SDR brightness is ramping down during AOD exit transition %f -> %f", v188, 0x16u);
        }
      }
    }

    if (v158)
    {
      if (!parameters->var7 && !parameters->var3)
      {
        currentTrustedLux = selfCopy->_currentTrustedLux;
        [+[CBAODState sharedInstance](CBAODState whitepointTransitionLengthLuxThreshold];
        v29 = *&v30;
        *&v30 = currentTrustedLux;
        if (currentTrustedLux <= v29)
        {
          [+[CBAODState whitepointTransitionLengthLowLux:v30]];
        }

        else
        {
          [+[CBAODState whitepointTransitionLength:v30]];
        }

        v145 = v31;
      }

      [(CBAODTransitionController *)selfCopy setTargetWhitepointFromMatrix:__dst];
      if (selfCopy->super._logHandle)
      {
        v103 = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v102 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v102 = init_default_corebrightness_log();
        }

        v103 = v102;
      }

      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v187, COERCE__INT64(selfCopy->_currentWhitepoint.matrix[1][0]), COERCE__INT64(selfCopy->_currentWhitepoint.matrix[1][1]), COERCE__INT64(selfCopy->_targetWhitepoint.matrix[1][0]), COERCE__INT64(selfCopy->_targetWhitepoint.matrix[1][1]), COERCE__INT64(v145));
        _os_log_impl(&dword_1DE8E5000, v103, OS_LOG_TYPE_DEFAULT, "[AOD update] Update target with Whitepoint (%f;%f) -> (%f;%f), Length = %f", v187, 0x34u);
      }
    }

    if (v156)
    {
      if (selfCopy->super._logHandle)
      {
        v101 = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v100 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v100 = init_default_corebrightness_log();
        }

        v101 = v100;
      }

      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_3_8_0_8_0_8_0(v186, COERCE__INT64(selfCopy->_currentAAPFactor), COERCE__INT64(v166), COERCE__INT64(var10));
        _os_log_impl(&dword_1DE8E5000, v101, OS_LOG_TYPE_DEFAULT, "[AOD update] Update target with AAPFactor %f -> %f, Length = %f", v186, 0x20u);
      }

      selfCopy->_targetAAPFactor = v166;
    }

    if (v157)
    {
      if (!parameters->var11)
      {
        *&v27 = selfCopy->_currentEDRHeadroom;
        *&v19 = v169;
        *&v20 = selfCopy->_edrRampDurationPerStop;
        [CBEDR overallRampDuration:v27 target:v19 durationPerStop:v20];
        v143 = *&v27;
      }

      v144 = fmaxf(v143, var14);
    }

    if (v155)
    {
      selfCopy->_targetBrightnessLimit = v167;
      if (selfCopy->super._logHandle)
      {
        v99 = selfCopy->super._logHandle;
      }

      else
      {
        v98 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v99 = v98;
      }

      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_3_8_0_8_0_8_0(v185, COERCE__INT64(selfCopy->_currentBrightnessLimit), COERCE__INT64(selfCopy->_targetBrightnessLimit), COERCE__INT64(v144));
        _os_log_impl(&dword_1DE8E5000, v99, OS_LOG_TYPE_DEFAULT, "[AOD update] Update target with brightness limit %f -> %f, Length = %f", v185, 0x20u);
      }
    }

    if (v153)
    {
      *&v27 = selfCopy->_currentTrustedLux;
      [*&selfCopy->_currentDisplayNits handleLuxUpdate:v27];
      if (selfCopy->super._logHandle)
      {
        v97 = selfCopy->super._logHandle;
      }

      else
      {
        v96 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v97 = v96;
      }

      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        [*&selfCopy->_currentDisplayNits lux];
        *&v95 = v32;
        [*&selfCopy->_currentDisplayNits targetLux];
        __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v184, v95, COERCE__INT64(v33), COERCE__INT64(selfCopy->_currentSDRBrightness), COERCE__INT64(v168), COERCE__INT64(v112));
        _os_log_impl(&dword_1DE8E5000, v97, OS_LOG_TYPE_DEFAULT, "[AOD update] Update target with Twilight lux %f -> %f, nits %f -> %f, Length = %f", v184, 0x34u);
      }
    }

    if (v152)
    {
      *&v27 = selfCopy->_currentTrustedLux;
      [*&selfCopy->_remainingTransitionLength handleLuxUpdate:v27];
      if (selfCopy->super._logHandle)
      {
        v94 = selfCopy->super._logHandle;
      }

      else
      {
        v93 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
        v94 = v93;
      }

      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        [*&selfCopy->_remainingTransitionLength lux];
        *&v92 = v34;
        [*&selfCopy->_remainingTransitionLength targetLux];
        __os_log_helper_16_0_5_8_0_8_0_8_0_8_0_8_0(v183, v92, COERCE__INT64(v35), COERCE__INT64(selfCopy->_currentSDRBrightness), COERCE__INT64(v168), COERCE__INT64(v111));
        _os_log_impl(&dword_1DE8E5000, v94, OS_LOG_TYPE_DEFAULT, "[AOD update] Update target with Ammolite lux %f -> %f, nits %f -> %f, Length = %f", v183, 0x34u);
      }
    }

    if ([(CBRampManager *)selfCopy->_rampManager liveUpdates])
    {
      *&v36 = selfCopy->_currentTrustedLux;
      [(CBAODTransitionController *)selfCopy updateAmbient:v36];
    }

    else
    {
      v37 = MEMORY[0x1E69E5920](*&selfCopy->_currentFlipBookEntry.ammoliteStrength_set);
      *&selfCopy->_currentFlipBookEntry.ammoliteStrength_set = 0;
      v37.n128_f32[0] = fmaxf(fmaxf(fmaxf(var6, v144), var10), v145);
      *&v38 = selfCopy->_currentTrustedLux;
      [(CBAODTransitionController *)selfCopy initialiseFlipBookWithLength:selfCopy->_currentFrequency frequency:v37.n128_f64[0] lux:v38];
    }

    v142 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v159)
    {
      *&v39 = var6;
      *&v40 = selfCopy->_currentFrequency;
      *&v41 = selfCopy->_currentSDRBrightness;
      *&v42 = v168;
      v141 = [(CBAODTransitionController *)selfCopy copyRampStatsWithLength:v39 frequency:v40 origin:v41 target:v42];
      if (v141)
      {
        [v142 setObject:v141 forKeyedSubscript:@"SDRRampStats"];
        MEMORY[0x1E69E5920](v141);
      }

      if ([+[CBAODState sharedInstance](CBAODState AODState]== 3 || [+[CBAODState AODState]== 4 sharedInstance]
      {
        [+[CBAODState sharedInstance](CBAODState AODTransitionProfile];
        *&v47 = selfCopy->_currentSDRBrightness;
        *&v48 = v168;
        *&v49 = var6;
        *&v50 = selfCopy->_currentFrequency;
        [(CBRampManager *)selfCopy->_rampManager insertNewRampOrigin:0 target:@"SDR_RAMP" length:v47 frequency:v48 startRamp:v49 identifier:v50 progressCallback:?];
      }

      else
      {
        *&v43 = selfCopy->_currentSDRBrightness;
        *&v44 = v168;
        *&v45 = var6;
        *&v46 = selfCopy->_currentFrequency;
        [(CBRampManager *)selfCopy->_rampManager insertNewRampOrigin:0 target:@"SDR_RAMP" length:v43 frequency:v44 startRamp:v45 identifier:v46 progressCallback:?];
      }

      if (parameters->var2)
      {
        *&v39 = selfCopy->_currentSDRBrightness;
        [(CBAODTransitionController *)selfCopy commitBrightness:1 force:v39];
      }
    }

    if (v155)
    {
      *&v39 = selfCopy->_currentBrightnessLimit;
      *&v40 = selfCopy->_targetBrightnessLimit;
      *&v41 = v144;
      *&v42 = selfCopy->_currentFrequency;
      [(CBRampManager *)selfCopy->_rampManager insertNewRampOrigin:0 target:@"BRIGHTNESS_LIMIT_RAMP" length:v39 frequency:v40 startRamp:v41 identifier:v42 progressCallback:?];
    }

    if (v158 & 1) != 0 && (CFXSetTarget(selfCopy->_flipbookCache, selfCopy->_currentWhitepoint.matrix[2], 1, 1, v145, 1.0))
    {
      *&v39 = v145;
      *&v40 = selfCopy->_currentFrequency;
      LODWORD(v42) = HIDWORD(*&selfCopy->_currentWhitepoint.matrix[1][0]);
      LODWORD(v41) = *&selfCopy->_currentWhitepoint.matrix[1][0];
      LODWORD(v52) = HIDWORD(*&selfCopy->_targetWhitepoint.matrix[1][0]);
      LODWORD(v51) = *&selfCopy->_targetWhitepoint.matrix[1][0];
      v140 = [(CBAODTransitionController *)selfCopy copyColourRampStatsWithLength:v39 frequency:v40 origin:v41 target:v42, v51, v52];
      if (v140)
      {
        [v142 setObject:v140 forKeyedSubscript:@"ColourRampStats"];
        MEMORY[0x1E69E5920](v140);
      }

      *&v54 = v145;
      *&v55 = selfCopy->_currentFrequency;
      LODWORD(v53) = 1.0;
      [(CBRampManager *)selfCopy->_rampManager insertNewLinearRampOrigin:0 target:@"COLOR_RAMP" length:0.0 frequency:v53 startRamp:v54 identifier:v55];
    }

    if (v157)
    {
      *&v39 = v143;
      *&v41 = selfCopy->_currentEDRHeadroom;
      *&v42 = v169;
      LODWORD(v40) = 1123024896;
      v139 = [(CBAODTransitionController *)selfCopy copyRampStatsWithLength:v39 frequency:v40 origin:v41 target:v42];
      if (v139)
      {
        [v142 setObject:v139 forKeyedSubscript:@"EDRRampStats"];
        MEMORY[0x1E69E5920](v139);
      }

      if (selfCopy->super._logHandle)
      {
        v91 = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v90 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v90 = init_default_corebrightness_log();
        }

        v91 = v90;
      }

      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_3_8_0_8_0_8_0(v182, COERCE__INT64(selfCopy->_currentEDRHeadroom), COERCE__INT64(v169), COERCE__INT64(v143));
        _os_log_impl(&dword_1DE8E5000, v91, OS_LOG_TYPE_DEFAULT, "[AOD update] Update target with EDR %f -> %f, length = %f", v182, 0x20u);
      }

      selfCopy->_targetEDRHeadroom = v169;
      *&v56 = selfCopy->_currentEDRHeadroom;
      *&v57 = v169;
      *&v58 = v143;
      LODWORD(v59) = 1123024896;
      [(CBRampManager *)selfCopy->_rampManager insertNewRampOrigin:0 target:@"EDR_RAMP" length:&__block_literal_global_13 frequency:v56 startRamp:v57 identifier:v58 progressCallback:v59];
    }

    if (v156)
    {
      *&v39 = var10;
      *&v40 = selfCopy->_currentFrequency;
      *&v41 = selfCopy->_currentAAPFactor;
      *&v42 = v166;
      v138 = [(CBAODTransitionController *)selfCopy copyRampStatsWithLength:v39 frequency:v40 origin:v41 target:v42];
      if (v138)
      {
        [v142 setObject:v138 forKeyedSubscript:@"AAPRampStats"];
        v60 = MEMORY[0x1E69E5920](v138);
      }

      v60.n128_u32[0] = LODWORD(selfCopy->_currentAAPFactor);
      *&v61 = v166;
      *&v62 = var10;
      *&v63 = selfCopy->_currentFrequency;
      [(CBRampManager *)selfCopy->_rampManager insertNewLinearRampOrigin:0 target:@"AAP_RAMP" length:v60.n128_f64[0] frequency:v61 startRamp:v62 identifier:v63];
    }

    if (v154)
    {
      v137 = 0.0;
      if ([+[CBAODState AODState]== 3 sharedInstance]
      {
        v137 = 1.0;
      }

      *&v64 = selfCopy->_currentLumaBoostFactor;
      *&v65 = v137;
      *&v66 = var4;
      *&v67 = selfCopy->_currentFrequency;
      [(CBRampManager *)selfCopy->_rampManager insertNewLinearRampOrigin:@"LUMA_BOOST_FACTOR_RAMP" target:v64 length:v65 frequency:v66 identifier:v67];
    }

    if (v151 && [(CBAODTransitionController *)selfCopy gcp])
    {
      if ([(CBAODState *)[(CBAODTransitionController *)selfCopy aodState] AODState]== 3)
      {
        [(CBGammaContrastPreservation *)[(CBAODTransitionController *)selfCopy gcp] setRampManager:selfCopy->_rampManager];
      }

      v136 = ([(CBAODState *)[(CBAODTransitionController *)selfCopy aodState] AODState]!= 3);
      [(CBGammaContrastPreservation *)[(CBAODTransitionController *)selfCopy gcp] AODFadeFactor];
      *&v68 = v136;
      *&v69 = var4;
      *&v70 = selfCopy->_currentFrequency;
      [(CBRampManager *)selfCopy->_rampManager insertNewLinearRampOrigin:GCP_AOD_FACTOR_FADE_RAMP target:v71 length:v68 frequency:v69 identifier:v70];
    }

    if (v153)
    {
      rampManager = selfCopy->_rampManager;
      [*&selfCopy->_currentDisplayNits lux];
      v89 = v72;
      [*&selfCopy->_currentDisplayNits targetLux];
      LODWORD(v74) = v73;
      LODWORD(v75) = v89;
      *&v76 = v112;
      *&v77 = selfCopy->_currentFrequency;
      [(CBRampManager *)rampManager insertNewRampOrigin:0 target:@"TWILIGHT_RAMP" length:v75 frequency:v74 startRamp:v76 identifier:v77 progressCallback:?];
    }

    if (v152)
    {
      v86 = selfCopy->_rampManager;
      [*&selfCopy->_remainingTransitionLength lux];
      v87 = v78;
      [*&selfCopy->_remainingTransitionLength targetLux];
      LODWORD(v80) = v79;
      LODWORD(v81) = v87;
      *&v82 = v111;
      *&v83 = selfCopy->_currentFrequency;
      [(CBRampManager *)v86 insertNewRampOrigin:0 target:@"AMMOLITE_RAMP" length:v81 frequency:v80 startRamp:v82 identifier:v83 progressCallback:?];
    }

    [(CBRampManager *)selfCopy->_rampManager startRamps];
    selfCopy->_targetWhitepoint.xy.y = 0.0;
    if (![(CBRampManager *)selfCopy->_rampManager liveUpdates])
    {
      v84 = MEMORY[0x1E695E118];
    }

    else
    {
      v84 = MEMORY[0x1E695E110];
    }

    [v142 setObject:v84 forKeyedSubscript:@"isFlipbookActive"];
    [(CBAODTransitionController *)selfCopy sendNotificationForKey:@"AODRampTelemetry" andValue:v142];
    MEMORY[0x1E69E5920](v142);
    v174 = 1;
    return v174 & 1;
  }

  if (selfCopy->_pendingState)
  {
    MEMORY[0x1E69E5920](selfCopy->_pendingState);
    selfCopy->_pendingState = 0;
  }

  if (var0)
  {
    [(CBAODTransitionController *)selfCopy releaseLastUpdateSwappedTimer];
    goto LABEL_97;
  }

  v18 = MEMORY[0x1E69E5928](transitionCopy);
  selfCopy->_pendingState = v18;
  if (selfCopy->super._logHandle)
  {
    v121 = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      v120 = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      v120 = init_default_corebrightness_log();
    }

    v121 = v120;
  }

  if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v191, COERCE__INT64(v168));
    _os_log_impl(&dword_1DE8E5000, v121, OS_LOG_TYPE_DEFAULT, "Last update was not swapped on the display -> pending update with Nits = %f", v191, 0xCu);
  }

  return 0;
}

uint64_t __104__CBAODTransitionController_startTransition_transitionParameters_rampDoneCallback_rampCanceledCallback___block_invoke_189(float a1, uint64_t a2, void *a3)
{
  [a3 originalValue];
  v9 = v3;
  [a3 targetValue];
  LODWORD(v5) = v4;
  LODWORD(v6) = v9;
  *&v7 = a1;
  return [CBEDR animatedHeadroomForOrigin:v6 target:v5 andProgress:v7];
}

- (id)copyColourRampStatsWithLength:(float)length frequency:(float)frequency origin:(id)origin target:(id)target
{
  originCopy = origin;
  targetCopy = target;
  selfCopy = self;
  v37 = a2;
  lengthCopy = length;
  frequencyCopy = frequency;
  v21 = 0x1E696A000uLL;
  v6 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v7 = lengthCopy;
  v34 = [v6 initWithFloat:v7];
  v8 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v9 = frequencyCopy;
  v33 = [v8 initWithFloat:v9];
  v32 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:(frequencyCopy * lengthCopy)];
  v10 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v11 = originCopy.var0;
  v31 = [v10 initWithFloat:v11];
  v12 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v13 = originCopy.var1;
  v30 = [v12 initWithFloat:v13];
  v14 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v15 = targetCopy.var0;
  v29 = [v14 initWithFloat:v15];
  v16 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v17 = targetCopy.var1;
  v28 = [v16 initWithFloat:v17];
  v24 = 0x1E695D000uLL;
  v22 = @"X";
  v23 = @"Y";
  v27 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v31, @"X", v30, @"Y", 0}];
  v18 = objc_alloc(*(v24 + 3872));
  v26 = [v18 initWithObjectsAndKeys:{v29, v22, v28, v23, 0}];
  v19 = objc_alloc(*(v24 + 3872));
  v25 = [v19 initWithObjectsAndKeys:{v27, @"RampOrigin", v26, @"RampTarget", v34, @"RampLength", v33, @"RampFrequency", v32, @"NumberOfUpdates", 0}];
  MEMORY[0x1E69E5920](v34);
  MEMORY[0x1E69E5920](v33);
  MEMORY[0x1E69E5920](v32);
  MEMORY[0x1E69E5920](v31);
  MEMORY[0x1E69E5920](v30);
  MEMORY[0x1E69E5920](v29);
  MEMORY[0x1E69E5920](v28);
  MEMORY[0x1E69E5920](v27);
  MEMORY[0x1E69E5920](v26);
  return v25;
}

- (id)copyRampStatsWithLength:(float)length frequency:(float)frequency origin:(float)origin target:(float)target
{
  selfCopy = self;
  v26 = a2;
  lengthCopy = length;
  frequencyCopy = frequency;
  originCopy = origin;
  targetCopy = target;
  v15 = 0x1E696A000uLL;
  v6 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v7 = lengthCopy;
  v21 = [v6 initWithFloat:v7];
  v8 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v9 = frequencyCopy;
  v20 = [v8 initWithFloat:v9];
  v19 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:(frequencyCopy * lengthCopy)];
  v10 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v11 = originCopy;
  v18 = [v10 initWithFloat:v11];
  v12 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v13 = targetCopy;
  v17 = [v12 initWithFloat:v13];
  v16 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v18, @"RampOrigin", v17, @"RampTarget", v21, @"RampLength", v20, @"RampFrequency", v19, @"NumberOfUpdates", 0}];
  MEMORY[0x1E69E5920](v21);
  MEMORY[0x1E69E5920](v20);
  MEMORY[0x1E69E5920](v19);
  MEMORY[0x1E69E5920](v18);
  MEMORY[0x1E69E5920](v17);
  return v16;
}

- (void)clockUpdateHandler:(id)handler
{
  v121 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v116 = a2;
  handlerCopy = handler;
  v76 = [handler rampForIdentifier:@"SDR_RAMP"];
  v114 = MEMORY[0x1E69E5928](v76);
  v75 = [handlerCopy rampForIdentifier:@"COLOR_RAMP"];
  v113 = MEMORY[0x1E69E5928](v75);
  v74 = [handlerCopy rampForIdentifier:@"EDR_RAMP"];
  v112 = MEMORY[0x1E69E5928](v74);
  v73 = [handlerCopy rampForIdentifier:@"AAP_RAMP"];
  v111 = MEMORY[0x1E69E5928](v73);
  v72 = [handlerCopy rampForIdentifier:@"BRIGHTNESS_LIMIT_RAMP"];
  v110 = MEMORY[0x1E69E5928](v72);
  v71 = [handlerCopy rampForIdentifier:@"LUMA_BOOST_FACTOR_RAMP"];
  v109 = MEMORY[0x1E69E5928](v71);
  v70 = [handlerCopy rampForIdentifier:GCP_AOD_FACTOR_FADE_RAMP];
  v108 = MEMORY[0x1E69E5928](v70);
  v69 = [handlerCopy rampForIdentifier:@"TWILIGHT_RAMP"];
  v107 = MEMORY[0x1E69E5928](v69);
  v68 = [handlerCopy rampForIdentifier:@"AMMOLITE_RAMP"];
  v106 = MEMORY[0x1E69E5928](v68);
  v67 = [handlerCopy rampForIdentifier:@"INDICATOR_RAMP"];
  v105 = MEMORY[0x1E69E5928](v67);
  if ([(CBRampManager *)selfCopy->_rampManager liveUpdates])
  {
    if (v114)
    {
      [v114 currentValue];
      [(CBAODTransitionController *)selfCopy updateSDRBrightness:v5];
      [v114 currentValue];
      [*&selfCopy->_currentDisplayNits setNits:v6];
      [v114 currentValue];
      [*&selfCopy->_remainingTransitionLength setNits:v7];
    }

    if (v113)
    {
      [(CBAODTransitionController *)selfCopy updateColorRamp:v113];
    }

    if (v112)
    {
      [v112 currentValue];
      [(CBAODTransitionController *)selfCopy updateEDRHeadroom:v8];
    }

    if (v111)
    {
      [v111 currentValue];
      [(CBAODTransitionController *)selfCopy updateAAPFactor:v9];
    }

    if (v110)
    {
      [v110 currentValue];
      [(CBAODTransitionController *)selfCopy updateBrightnessLimit:v10];
    }

    if (v109)
    {
      [v109 currentValue];
      [(CBAODTransitionController *)selfCopy updateLumaBoostFactor:v11];
    }

    if (v108)
    {
      [v108 currentValue];
      v66 = v12;
      v65 = [(CBAODTransitionController *)selfCopy gcp];
      LODWORD(v13) = v66;
      [(CBGammaContrastPreservation *)v65 setAODFadeFactor:v13];
      if (objc_opt_respondsToSelector())
      {
        brtCtl = selfCopy->_brtCtl;
        [(CBGammaContrastPreservation *)[(CBAODTransitionController *)selfCopy gcp] currentStrength];
        [(CBBrightnessProxy *)brtCtl setContrastPreservation:v14];
      }
    }

    *&v104 = NAN;
    if (*&selfCopy->_currentDisplayNits && (v114 || v107))
    {
      [*&selfCopy->_currentDisplayNits currentStrength];
      v104 = SLODWORD(v15);
      [(CBAODTransitionController *)selfCopy updateTwilightStrength:v15];
    }

    *&v103 = NAN;
    if (*&selfCopy->_remainingTransitionLength && (v114 || v106))
    {
      [*&selfCopy->_remainingTransitionLength currentStrength];
      v103 = SLODWORD(v16);
      [(CBAODTransitionController *)selfCopy updateAmmoliteStrength:v16];
    }

    v102 = NAN;
    if (selfCopy->_displayContext)
    {
      *&v3 = selfCopy->_currentSDRBrightness;
      [(CBDisplayContextiOS *)selfCopy->_displayContext setSDRBrightness:v3];
      *&v17 = selfCopy->_currentEDRHeadroom;
      [(CBDisplayContextiOS *)selfCopy->_displayContext setAppliedHeadroom:v17];
      if ((CBU_IsSecureIndicatorSupported() & 1) != 0 && [+[CBSILState isSILActive] sharedInstance]
      {
        if (v105)
        {
          [v105 currentValue];
        }

        else
        {
          [(CBDisplayContextiOS *)selfCopy->_displayContext currentIndicatorBrightness];
        }

        v102 = *&v3;
      }
    }

    v101 = fmaxf(v102, selfCopy->_currentBrightnessLimit);
    *&v3 = v102;
    *&v4 = v101;
    [(CBAODTransitionController *)selfCopy updateIndicatorBrightness:v3 andLimit:v4];
    v100 = 0;
    v99 = 0;
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    v98 = logHandle;
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (v114)
      {
        [v114 currentValue];
        v61 = v18;
      }

      else
      {
        v61 = -1.0;
      }

      if (v112)
      {
        [v112 currentValue];
        v60 = v19;
      }

      else
      {
        v60 = -1.0;
      }

      if (v110)
      {
        [v110 currentValue];
        v59 = v20;
      }

      else
      {
        v59 = -1.0;
      }

      if (v111)
      {
        [v111 currentValue];
        v58 = v21;
      }

      else
      {
        v58 = -1.0;
      }

      if (v113)
      {
        v57 = selfCopy->_currentWhitepoint.matrix[1][0];
      }

      else
      {
        v57 = -1.0;
      }

      if (v113)
      {
        v56 = selfCopy->_currentWhitepoint.matrix[1][1];
      }

      else
      {
        v56 = -1.0;
      }

      if (v114 || v107)
      {
        v55 = *&v104;
      }

      else
      {
        v55 = -1.0;
      }

      if (v114 || v106)
      {
        v54 = *&v103;
      }

      else
      {
        v54 = -1.0;
      }

      if (v108)
      {
        [(CBGammaContrastPreservation *)[(CBAODTransitionController *)selfCopy gcp] currentStrength];
        v53 = v22;
      }

      else
      {
        v53 = -1.0;
      }

      __os_log_helper_16_0_12_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v120, COERCE__INT64(v61), COERCE__INT64(v60), COERCE__INT64(v59), COERCE__INT64(v58), COERCE__INT64(v57), COERCE__INT64(v56), COERCE__INT64(v55), COERCE__INT64(v54), COERCE__INT64(v53), COERCE__INT64(v102), COERCE__INT64(v101), COERCE__INT64(selfCopy->_currentTrustedLux));
      _os_log_impl(&dword_1DE8E5000, v98, type, "[AOD update][CA] Pushing sdrBrightness: %f, capped _appliedHeadroom: %f, brightnessLimit: %f, PCC: %f, Whitepoint:(%f | %f), TwilightStrength: %f, AmmoliteStrength: %f, GCPStrength: %f, IndicatorBrightness: %f, IndicatorBrightnessLimit: %f, Ambient: %f", v120, 0x7Au);
    }

    if (v114 && ([v114 isFinished] & 1) == 0 || v113 && (objc_msgSend(v113, "isFinished") & 1) == 0 || v112 && (objc_msgSend(v112, "isFinished") & 1) == 0 || v111 && (objc_msgSend(v111, "isFinished") & 1) == 0 || v110 && (objc_msgSend(v110, "isFinished") & 1) == 0)
    {
      v99 = [(CBBrightnessProxy *)selfCopy->_brtCtl commitBrightness:&v100];
    }

    else
    {
      if (selfCopy->super._logHandle)
      {
        v52 = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v51 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v51 = init_default_corebrightness_log();
        }

        v52 = v51;
      }

      v96 = v52;
      v95 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        [v114 currentValue];
        __os_log_helper_16_0_1_8_0(v119, COERCE__INT64(v23));
        _os_log_impl(&dword_1DE8E5000, v96, v95, "CommitBrightness: %f with swap done callback", v119, 0xCu);
      }

      v91[0] = 0;
      v91[1] = v91;
      v92 = 0x20000000;
      v93 = 32;
      [v114 currentValue];
      v94 = v24;
      v25 = selfCopy->_brtCtl;
      v84 = MEMORY[0x1E69E9820];
      v85 = -1073741824;
      v86 = 0;
      v87 = __48__CBAODTransitionController_clockUpdateHandler___block_invoke;
      v88 = &unk_1E867C6C8;
      v89 = selfCopy;
      v90 = v91;
      v99 = [(CBBrightnessProxy *)v25 commitBrightness:&v100 withBlock:?];
      LODWORD(v26) = 0.5;
      [(CBAODTransitionController *)selfCopy activateLastUpdateSwappedTimerWithTimeout:v26];
      _Block_object_dispose(v91, 8);
    }

    if ((v99 & 1) == 0 || v100)
    {
      if (selfCopy->super._logHandle)
      {
        v50 = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v49 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v49 = init_default_corebrightness_log();
        }

        v50 = v49;
      }

      v83 = v50;
      v82 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v118, v100);
        _os_log_error_impl(&dword_1DE8E5000, v83, v82, "failed to commit brightness update (%@)", v118, 0xCu);
      }
    }

    [(CBAODTransitionController *)selfCopy sendNotificationForKey:@"AODBrightnessState" andValue:[(CBAODTransitionController *)selfCopy copyCurrentDisplayState]];
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    memcpy(&selfCopy->_currentFlipBookEntry, __b, 0x4FuLL);
    if (v114)
    {
      v48 = selfCopy;
      [v114 currentValue];
      [(CBAODTransitionController *)v48 updateFlipBookEntryWithBrightness:v27];
    }

    if (v111)
    {
      v47 = selfCopy;
      [v111 currentValue];
      [(CBAODTransitionController *)v47 updateFlipBookEntryWithAAPFactor:v28];
    }

    if (v110)
    {
      v46 = selfCopy;
      [v110 currentValue];
      [(CBAODTransitionController *)v46 updateFlipBookEntryWithBrightnessLimit:v29];
    }

    if (*&selfCopy->_currentDisplayNits && (v114 || v107))
    {
      [*&selfCopy->_currentDisplayNits nits];
      v80 = v30;
      *&v31 = selfCopy->_currentSDRBrightness;
      [*&selfCopy->_currentDisplayNits setNits:v31];
      v45 = selfCopy;
      [*&selfCopy->_currentDisplayNits lux];
      [(CBAODTransitionController *)v45 updateFlipBookEntryWithTwilightLux:v32];
      *&v33 = selfCopy->_currentSDRBrightness;
      if ([*&selfCopy->_currentDisplayNits nitsAreInActiveRange:v33] & 1) != 0 || (LODWORD(v34) = v80, (objc_msgSend(*&selfCopy->_currentDisplayNits, "nitsAreInActiveRange:", v34)))
      {
        v44 = selfCopy;
        [*&selfCopy->_currentDisplayNits currentStrength];
        [(CBAODTransitionController *)v44 updateFlipBookEntryWithTwilightStrength:v35];
      }
    }

    if (*&selfCopy->_remainingTransitionLength && (v114 || v106))
    {
      [*&selfCopy->_remainingTransitionLength nits];
      v79 = v36;
      *&v37 = selfCopy->_currentSDRBrightness;
      [*&selfCopy->_remainingTransitionLength setNits:v37];
      v43 = selfCopy;
      [*&selfCopy->_remainingTransitionLength lux];
      [(CBAODTransitionController *)v43 updateFlipBookEntryWithAmmoliteLux:v38];
      *&v39 = selfCopy->_currentSDRBrightness;
      if ([*&selfCopy->_remainingTransitionLength nitsAreInActiveRange:v39] & 1) != 0 || (LODWORD(v40) = v79, (objc_msgSend(*&selfCopy->_remainingTransitionLength, "nitsAreInActiveRange:", v40)))
      {
        v42 = selfCopy;
        [*&selfCopy->_remainingTransitionLength currentStrength];
        [(CBAODTransitionController *)v42 updateFlipBookEntryWithAmmoliteStrength:v41];
      }
    }

    [(CBAODTransitionController *)selfCopy updateColorRamp:v113];
    memcpy(__dst, &selfCopy->_currentFlipBookEntry, sizeof(__dst));
    [(CBAODTransitionController *)selfCopy addFlipBookEntry:__dst];
    if (*&selfCopy->_currentFlipBookEntry.ammoliteStrength_set && [*&selfCopy->_currentFlipBookEntry.ammoliteStrength_set entryCount] == 1)
    {
      memcpy(v77, &selfCopy->_currentFlipBookEntry, sizeof(v77));
      [(CBAODTransitionController *)selfCopy addFlipBookEntry:v77];
    }
  }

  MEMORY[0x1E69E5920](v114);
  MEMORY[0x1E69E5920](v113);
  MEMORY[0x1E69E5920](v112);
  MEMORY[0x1E69E5920](v111);
  MEMORY[0x1E69E5920](v110);
  MEMORY[0x1E69E5920](v109);
  MEMORY[0x1E69E5920](v108);
  MEMORY[0x1E69E5920](v107);
  MEMORY[0x1E69E5920](v106);
  MEMORY[0x1E69E5920](v105);
}

void __48__CBAODTransitionController_clockUpdateHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v12 = a2;
  v11 = a1;
  v3 = *(*(a1 + 32) + 24);
  block = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __48__CBAODTransitionController_clockUpdateHandler___block_invoke_2;
  v8 = &unk_1E867C080;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  dispatch_async(v3, &block);
}

void __48__CBAODTransitionController_clockUpdateHandler___block_invoke_2(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) releaseLastUpdateSwappedTimer];
  [*(a1 + 32) applyPendingUpdates];
  if (*(*(a1 + 32) + 16))
  {
    v2 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v2 = inited;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_8_0(v4, COERCE__INT64(*(*(*(a1 + 40) + 8) + 24)));
    _os_log_impl(&dword_1DE8E5000, v2, OS_LOG_TYPE_DEFAULT, "CommitBrightness: Last update with brightness (%f) has been swapped on the display", v4, 0xCu);
  }
}

- (void)rampsDoneCallback:(id)callback
{
  selfCopy = self;
  v11 = a2;
  callbackCopy = callback;
  if (self->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v9 = logHandle;
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_1DE8E5000, log, type, "Call ramps done callback", v7, 2u);
  }

  if (![(CBRampManager *)selfCopy->_rampManager liveUpdates])
  {
    [(CBAODTransitionController *)selfCopy sendCurrentFlipBook];
  }

  if (selfCopy->_rampDoneCallback)
  {
    (*(selfCopy->_rampDoneCallback + 2))();
  }

  [(CBAODTransitionController *)selfCopy releaseCallbacks];
}

- (void)releaseLastUpdateSwappedTimer
{
  if (*&self->_currentFlipBookEntry.reserved[4])
  {
    dispatch_source_cancel(*&self->_currentFlipBookEntry.reserved[4]);
    dispatch_release(*&self->_currentFlipBookEntry.reserved[4]);
    *&self->_currentFlipBookEntry.reserved[4] = 0;
  }
}

- (void)activateLastUpdateSwappedTimerWithTimeout:(float)timeout
{
  selfCopy = self;
  v17 = a2;
  timeoutCopy = timeout;
  v15 = (timeout * 1000000000.0);
  if (*&self->_currentFlipBookEntry.reserved[4])
  {
    source = *&selfCopy->_currentFlipBookEntry.reserved[4];
    v3 = dispatch_time(0, v15);
    dispatch_source_set_timer(source, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    *&selfCopy->_currentFlipBookEntry.reserved[4] = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy->super._queue);
    if (*&selfCopy->_currentFlipBookEntry.reserved[4])
    {
      v4 = *&selfCopy->_currentFlipBookEntry.reserved[4];
      handler = MEMORY[0x1E69E9820];
      v9 = -1073741824;
      v10 = 0;
      v11 = __71__CBAODTransitionController_activateLastUpdateSwappedTimerWithTimeout___block_invoke;
      v12 = &unk_1E867C6F0;
      v13 = selfCopy;
      v14 = timeoutCopy;
      dispatch_source_set_event_handler(v4, &handler);
      v6 = *&selfCopy->_currentFlipBookEntry.reserved[4];
      v5 = dispatch_time(0, v15);
      dispatch_source_set_timer(v6, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }

  dispatch_activate(*&selfCopy->_currentFlipBookEntry.reserved[4]);
}

uint64_t __71__CBAODTransitionController_activateLastUpdateSwappedTimerWithTimeout___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16))
  {
    v3 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v3 = inited;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_0_1_8_0(v5, COERCE__INT64(*(a1 + 40)));
    _os_log_error_impl(&dword_1DE8E5000, v3, OS_LOG_TYPE_ERROR, "Last update has not been swapped on display in timeout %f.", v5, 0xCu);
  }

  [*(a1 + 32) releaseLastUpdateSwappedTimer];
  return [*(a1 + 32) applyPendingUpdates];
}

- (BOOL)applyPendingUpdates
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_pendingState && [+[CBAODState AODState]== 1 sharedInstance]
  {
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v7, self->_pendingState);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Apply pending update. %@", v7, 0xCu);
    }

    LODWORD(v2) = -1.0;
    [(CBAODTransitionController *)self startTransition:self->_pendingState length:0 forceUpdate:&__block_literal_global_243 rampDoneCallback:0 rampCanceledCallback:v2];
    if (self->_pendingState)
    {
      MEMORY[0x1E69E5920](self->_pendingState);
      self->_pendingState = 0;
    }
  }

  return 0;
}

- (BOOL)commitBrightness:(float)brightness force:(BOOL)force
{
  v22 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v18 = a2;
  brightnessCopy = brightness;
  forceCopy = force;
  if (self->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v15 = logHandle;
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (forceCopy)
    {
      v5 = "force ";
    }

    else
    {
      v5 = "";
    }

    __os_log_helper_16_2_2_8_32_8_0(v21, v5, COERCE__INT64(brightnessCopy));
    _os_log_impl(&dword_1DE8E5000, v15, v14, "Update and %scommit CA SDR brightness %f", v21, 0x16u);
  }

  *&v4 = brightnessCopy;
  [(CBBrightnessProxy *)selfCopy->_brtCtl setSDRBrightness:v4];
  v13 = 0;
  if (forceCopy)
  {
    v12 = [(CBBrightnessProxy *)selfCopy->_brtCtl forceCommitBrightness:&v13 withBlock:0];
  }

  else
  {
    v12 = [(CBBrightnessProxy *)selfCopy->_brtCtl commitBrightness:&v13];
  }

  if ((v12 & 1) == 0)
  {
    if (selfCopy->super._logHandle)
    {
      v9 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v8 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v8 = init_default_corebrightness_log();
      }

      v9 = v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (forceCopy)
      {
        v6 = "FORCE ";
      }

      else
      {
        v6 = "";
      }

      __os_log_helper_16_2_2_8_32_8_64(v20, v6, v13);
      _os_log_error_impl(&dword_1DE8E5000, v9, OS_LOG_TYPE_ERROR, "ERROR %sCOMMITING SDR BRIGHTNESS FROM CA! (%@)", v20, 0x16u);
    }
  }

  return v12 & 1;
}

- (BOOL)updateAllBrightnessFeaturesForced:(BOOL)forced
{
  v24 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v20 = a2;
  forcedCopy = forced;
  *&v3 = self->_currentSDRBrightness;
  [(CBAODTransitionController *)self updateSDRBrightness:v3];
  *&v4 = selfCopy->_currentBrightnessLimit;
  [(CBAODTransitionController *)selfCopy updateBrightnessLimit:v4];
  *&v5 = selfCopy->_currentAAPFactor;
  [(CBAODTransitionController *)selfCopy updateAAPFactor:v5];
  [(CBAODTransitionController *)selfCopy updateWhitePoint:&selfCopy->_thresholdModule];
  *&v6 = selfCopy->_currentTrustedLux;
  [(CBAODTransitionController *)selfCopy updateAmbient:v6];
  v18 = 0.0;
  if (*&selfCopy->_currentDisplayNits)
  {
    [*&selfCopy->_currentDisplayNits currentStrength];
    v18 = *&v7;
    [(CBAODTransitionController *)selfCopy updateTwilightStrength:v7];
  }

  v17 = 0.0;
  if (*&selfCopy->_remainingTransitionLength)
  {
    [*&selfCopy->_remainingTransitionLength currentStrength];
    v17 = *&v8;
    [(CBAODTransitionController *)selfCopy updateAmmoliteStrength:v8];
  }

  v16 = 0;
  if (forcedCopy)
  {
    v15 = [(CBBrightnessProxy *)selfCopy->_brtCtl forceCommitBrightness:&v16 withBlock:0];
  }

  else
  {
    v15 = [(CBBrightnessProxy *)selfCopy->_brtCtl commitBrightness:&v16];
  }

  if ((v15 & 1) == 0)
  {
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
    }

    else
    {
      v13 = _COREBRIGHTNESS_LOG_DEFAULT ? _COREBRIGHTNESS_LOG_DEFAULT : init_default_corebrightness_log();
      logHandle = v13;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v23, v16);
      _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "ERROR: Force commiting CB features to CA failed! (%@)", v23, 0xCu);
    }
  }

  if (selfCopy->super._logHandle)
  {
    v12 = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v12 = inited;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (forcedCopy)
    {
      v9 = "Force ";
    }

    else
    {
      v9 = "";
    }

    __os_log_helper_16_2_8_8_32_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v22, v9, COERCE__INT64(selfCopy->_currentSDRBrightness), COERCE__INT64(selfCopy->_currentWhitepoint.matrix[1][0]), COERCE__INT64(selfCopy->_currentWhitepoint.matrix[1][1]), COERCE__INT64(selfCopy->_currentAAPFactor), COERCE__INT64(selfCopy->_currentBrightnessLimit), COERCE__INT64(v18), COERCE__INT64(v17));
    _os_log_impl(&dword_1DE8E5000, v12, OS_LOG_TYPE_DEFAULT, "[AOD update][CA] Pushing: %scommit all features: brightness = %f; WP = (%f; %f), pcc = %f, brightness limit = %f, twilight = %f, ammolite = %f", v22, 0x52u);
  }

  return v15 & 1;
}

- (void)updateWhitePoint:(float)point[3][3]
{
  v14[9] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v11 = a2;
  pointCopy = point;
  context = objc_autoreleasePoolPush();
  for (i = 0; i < 3; ++i)
  {
    for (j = 0; j < 3; ++j)
    {
      *&v3 = pointCopy[i][j];
      v14[3 * i + j] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
    }
  }

  v7 = 0;
  if ((-[CBBrightnessProxy setWhitePoint:rampDuration:error:](selfCopy->_brtCtl, "setWhitePoint:rampDuration:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9], &v7, 0.0) & 1) == 0)
  {
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v13, v7);
      _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "failed to set whitepoint(%@)", v13, 0xCu);
    }
  }

  MEMORY[0x1E69E5920](v7);
  objc_autoreleasePoolPop(context);
}

- (void)updateSDRBrightness:(float)brightness
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_1_8_0(v10, COERCE__INT64(brightness));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "CA SDR brightness update %f", v10, 0xCu);
  }

  self->_currentSDRBrightness = brightness;
  *&v3 = brightness;
  [(CBBrightnessProxy *)self->_brtCtl setSDRBrightness:v3];
  if ([(CBAODTransitionController *)self gcp])
  {
    v4 = [(CBAODTransitionController *)self gcp];
    *&v5 = brightness;
    [(CBChromaticCorrection *)v4 setNits:v5];
  }
}

- (void)updateBrightnessLimit:(float)limit
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_1_8_0(v8, COERCE__INT64(limit));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "Brightness limit update %f", v8, 0xCu);
  }

  self->_currentBrightnessLimit = limit;
  *&v3 = limit;
  [(CBBrightnessProxy *)self->_brtCtl setBrightnessLimit:v3];
}

- (void)updateLumaBoostFactor:(float)factor
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_1_8_0(v8, COERCE__INT64(factor));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "CA luma boost factor update %f", v8, 0xCu);
  }

  self->_currentLumaBoostFactor = factor;
  *&v3 = factor;
  [(CBBrightnessProxy *)self->_brtCtl setLowAmbientAdaptation:v3];
}

- (void)updateTwilightStrength:(float)strength
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_8_0(v8, COERCE__INT64(strength));
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "CA low ambient adaptation strength update %f", v8, 0xCu);
  }

  *&v3 = strength;
  [(CBBrightnessProxy *)self->_brtCtl setLowAmbientAdaptation:v3];
}

- (void)updateAmmoliteStrength:(float)strength
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_8_0(v8, COERCE__INT64(strength));
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "CA high ambient adaptation strength update %f", v8, 0xCu);
  }

  *&v3 = strength;
  [(CBBrightnessProxy *)self->_brtCtl setHighAmbientAdaptation:v3];
}

- (void)updateAmbient:(float)ambient
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_1_8_0(v8, COERCE__INT64(ambient));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_INFO, "CA ambient update %f lux", v8, 0xCu);
  }

  *&v3 = ambient;
  [(CBBrightnessProxy *)self->_brtCtl setAmbient:v3];
}

- (float)sdrBrightnessProgressCallback:(float)callback rampContext:(id)context profile:(unint64_t)profile
{
  v30 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  if (callback < 1.0)
  {
    if (profile == 2)
    {
      [(CBAODTransitionController *)self calculateSpringProgressForLinearProgress:*&callback];
      v25 = v9;
      LODWORD(v10) = 1.0;
      [(CBAODTransitionController *)self calculateSpringProgressForLinearProgress:v10];
      v12 = clamp(v25 / v11, 0.0, 1.0);
    }

    else
    {
      if (profile == 1)
      {
        [(CBAODTransitionController *)self calculateSigmoidProgressForLinearProgress:*&callback];
        callbackCopy = v13;
      }

      v12 = clamp(callbackCopy, 0.0, 1.0);
    }

    v26 = v12;
    [context originalValue];
    v22 = BULuminanceToPerceptual(v14, self->_minNits, self->_maxNits);
    [context targetValue];
    v21 = v22 - ((v22 - BULuminanceToPerceptual(v15, self->_minNits, self->_maxNits)) * v26);
    return BUPerceptualToLuminance(v21, self->_minNits, self->_maxNits);
  }

  else
  {
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      [context originalValue];
      *&v17 = v5;
      [context targetValue];
      *&v18 = v6;
      [context targetValue];
      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v29, v17, v18, COERCE__INT64((callbackCopy * 100.0)), COERCE__INT64(v7));
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Ramp ended - SDR - perceptual ramp clocked: %f -> %f - %f%% (%f Nits)", v29, 0x2Au);
    }

    [context targetValue];
    return v8;
  }
}

- (float)brightnessLimitProgressCallback:(float)callback rampContext:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  if (callback < 1.0)
  {
    [context originalValue];
    v22 = BULuminanceToPerceptual(v8, self->_minNits, self->_maxNits);
    [context targetValue];
    v21 = v22 - ((v22 - BULuminanceToPerceptual(v9, self->_minNits, self->_maxNits)) * callback);
    v20 = BUPerceptualToLuminance(v21, self->_minNits, self->_maxNits);
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      [context originalValue];
      *&v13 = v10;
      [context targetValue];
      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v27, v13, COERCE__INT64(v11), COERCE__INT64((callback * 100.0)), COERCE__INT64(v20));
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Brightness limit - perceptual ramp clocked: %f -> %f - %f%% (%f Nits)", v27, 0x2Au);
    }

    return v20;
  }

  else
  {
    if (self->super._logHandle)
    {
      v19 = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v18 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v18 = init_default_corebrightness_log();
      }

      v19 = v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      [context originalValue];
      *&v16 = v4;
      [context targetValue];
      *&v17 = v5;
      [context targetValue];
      __os_log_helper_16_0_4_8_0_8_0_8_0_8_0(v28, v16, v17, COERCE__INT64((callback * 100.0)), COERCE__INT64(v6));
      _os_log_impl(&dword_1DE8E5000, v19, OS_LOG_TYPE_INFO, "Ramp ended - Brightness limit - perceptual ramp clocked: %f -> %f - %f%% (%f Nits)", v28, 0x2Au);
    }

    [context targetValue];
    return v7;
  }
}

- (BOOL)requestTransitionStopForIdentifier:(id)identifier
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(CBRampManager *)self->_rampManager hasRampRunningForIdentifier:identifier])
  {
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v8, identifier);
      _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "%{public}@ transition request - stop", v8, 0xCu);
    }

    [(CBRampManager *)self->_rampManager removeRampWithIdentifier:identifier];
  }

  return 1;
}

- (void)initColorEffects
{
  selfCopy = self;
  v16 = a2;
  self->_flipbookCache = CFXCreate();
  if (selfCopy->_flipbookCache)
  {
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    v15 = logHandle;
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      log = v15;
      type = v14;
      __os_log_helper_16_0_0(v13);
      _os_log_impl(&dword_1DE8E5000, log, type, "Init ColorEffects for AOD", v13, 2u);
    }

    CFXInstallCallback(selfCopy->_flipbookCache, ColorRampCallback, selfCopy);
    CFXEnableFades(selfCopy->_flipbookCache, 1);
    CFXSetMagicCoeff(selfCopy->_flipbookCache, 0);
    CFXSetWhitePointType(selfCopy->_flipbookCache, 1);
  }

  else
  {
    if (selfCopy->super._logHandle)
    {
      v5 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v4 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v4 = init_default_corebrightness_log();
      }

      v5 = v4;
    }

    v12 = v5;
    v11 = 16;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v2 = v12;
      v3 = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_error_impl(&dword_1DE8E5000, v2, v3, "Failed to create ColorEffects for AOD", v10, 2u);
    }
  }
}

- (void)colorRampRoutine:(id *)routine
{
  v19[9] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v15 = a2;
  routineCopy = routine;
  context = objc_autoreleasePoolPush();
  if (routineCopy)
  {
    var0 = routineCopy->var0;
    memcpy(&selfCopy->_thresholdModule, routineCopy->var1, 0x24uLL);
    [(CBAODTransitionController *)selfCopy chromaticity:selfCopy->_currentWhitepoint.matrix[1] andIlluminance:&selfCopy->_currentWhitepoint.matrix[1][2] fromMatrix:&selfCopy->_thresholdModule];
    if ([(CBRampManager *)selfCopy->_rampManager liveUpdates])
    {
      for (i = 0; i < 9; ++i)
      {
        *&v3 = routineCopy->var1[i];
        v19[i] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
      }

      v11 = 0;
      brtCtl = selfCopy->_brtCtl;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:9];
      if (([(CBBrightnessProxy *)brtCtl setWhitePoint:v4 rampDuration:&v11 error:var0]& 1) == 0)
      {
        if (selfCopy->super._logHandle)
        {
          logHandle = selfCopy->super._logHandle;
        }

        else
        {
          if (_COREBRIGHTNESS_LOG_DEFAULT)
          {
            inited = _COREBRIGHTNESS_LOG_DEFAULT;
          }

          else
          {
            inited = init_default_corebrightness_log();
          }

          logHandle = inited;
        }

        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_64(v18, v11);
          _os_log_error_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_ERROR, "failed to set whitepoint(%@)", v18, 0xCu);
        }

        MEMORY[0x1E69E5920](v11);
      }
    }

    else
    {
      memcpy(&selfCopy->_currentFlipBookEntry.brightness + 2, routineCopy->var1, 0x24uLL);
      BYTE1(selfCopy->_currentFlipBookEntry.brightness) = 1;
    }

    if (selfCopy->super._logHandle)
    {
      v6 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v5 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v5 = init_default_corebrightness_log();
      }

      v6 = v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v17, COERCE__INT64(routineCopy->var4.var0), COERCE__INT64(routineCopy->var4.var1), COERCE__INT64(var0));
      _os_log_impl(&dword_1DE8E5000, v6, OS_LOG_TYPE_DEFAULT, "AOD Whitepoint update(%f | %f) and period: %f", v17, 0x20u);
    }
  }

  objc_autoreleasePoolPop(context);
}

- (void)updateColorRamp:(id)ramp
{
  v23 = *MEMORY[0x1E69E9840];
  if (ramp)
  {
    if (![(CBRampManager *)self->_rampManager liveUpdates])
    {
      if ([ramp isFinished])
      {
        memcpy(&self->_thresholdModule, self->_currentWhitepoint.matrix[2], 0x30uLL);
      }

      memcpy(&self->_currentFlipBookEntry.brightness + 2, &self->_thresholdModule, 0x24uLL);
      BYTE1(self->_currentFlipBookEntry.brightness) = 0;
    }

    if ([ramp isFinished])
    {
      if (self->super._logHandle)
      {
        logHandle = self->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          inited = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          inited = init_default_corebrightness_log();
        }

        logHandle = inited;
      }

      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
      {
        [ramp originalValue];
        *&v15 = v3;
        [ramp targetValue];
        *&v16 = v4;
        [ramp currentValue];
        __os_log_helper_16_0_3_8_0_8_0_8_0(v22, v15, v16, COERCE__INT64(v5));
        _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "Ramp ended - ColorRamp - perceptual ramp clocked: %f -> %f - %f", v22, 0x20u);
      }

      CFXSetTarget(self->_flipbookCache, self->_currentWhitepoint.matrix[2], 1, 1, 0.0, 1.0);
      [ramp currentAbsoluteTimestamp];
      CFXUpdateColorFade(self->_flipbookCache, v6);
    }

    else
    {
      if (self->super._logHandle)
      {
        v14 = self->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v13 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v13 = init_default_corebrightness_log();
        }

        v14 = v13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [ramp originalValue];
        *&v11 = v7;
        [ramp targetValue];
        *&v12 = v8;
        [ramp currentValue];
        __os_log_helper_16_0_3_8_0_8_0_8_0(v21, v11, v12, COERCE__INT64(v9));
        _os_log_debug_impl(&dword_1DE8E5000, v14, OS_LOG_TYPE_DEBUG, "Ramp clocked - ColorRamp - perceptual ramp clocked: %f -> %f - %f", v21, 0x20u);
      }

      [ramp currentAbsoluteTimestamp];
      CFXUpdateColorFade(self->_flipbookCache, v10);
    }
  }

  else
  {
    memcpy(&self->_currentFlipBookEntry.brightness + 2, &self->_thresholdModule, 0x24uLL);
    BYTE1(self->_currentFlipBookEntry.brightness) = 0;
  }
}

- (void)processInitialColorMatrixFromState:(id)state
{
  v7 = *MEMORY[0x1E69E9840];
  [state objectForKey:@"ColorRamp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    memcpy(__dst, &identityMatrix, sizeof(__dst));
    [(CBAODTransitionController *)self colorMatrix:__dst fromState:state];
    [(CBAODTransitionController *)self setCurrentWhitepointFromMatrix:__dst];
    [(CBAODTransitionController *)self setTargetWhitepointFromMatrix:__dst];
    CFXSetTarget(self->_flipbookCache, self->_currentWhitepoint.matrix[2], 1, 1, 0.0, 1.0);
    Current = CFAbsoluteTimeGetCurrent();
    CFXUpdateColorFade(self->_flipbookCache, Current);
  }
}

- (void)colorMatrix:(float)matrix[3][3] fromState:(id)state
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = [state objectForKey:@"ColorRamp"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v13, v10);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "WP matrix from state = %@", v13, 0xCu);
    }

    v9 = [v10 objectForKey:@"ColorRampTarget"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 count] >= 9)
    {
      for (i = 0; i < 3; ++i)
      {
        for (j = 0; j < 3; ++j)
        {
          [objc_msgSend(v9 objectAtIndexedSubscript:{3 * i + j), "floatValue"}];
          (*matrix)[3 * i + j] = v4;
        }
      }
    }
  }
}

- (BOOL)shallUpdateWhitepointFrom:(float)from[3][3] target:(float)target[3][3]
{
  v25 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v18 = a2;
  fromCopy = from;
  targetCopy = target;
  v15 = 0;
  [+[CBAODState sharedInstance](CBAODState whitepointDeltaThreshold];
  v14 = v4;
  v11 = 0.0;
  v10 = 0.0;
  v9 = 0;
  CFXGetWPFromMatrix(selfCopy->_flipbookCache, fromCopy, &v13, &v9);
  CFXChromaticity2uv(&v13, &v21);
  v11 = CFXChromaticity2CCT(&v13);
  CFXGetWPFromMatrix(selfCopy->_flipbookCache, targetCopy, &v12, &v9);
  CFXChromaticity2uv(&v12, &v23);
  v10 = CFXChromaticity2CCT(&v12);
  v8 = std::__math::sqrt[abi:de200100](((v24 - v22) * (v24 - v22)) + ((v23 - v21) * (v23 - v21)));
  if (v8 >= v14)
  {
    v15 = 1;
  }

  if (selfCopy->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_8_4_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v20, v15 & 1, COERCE__INT64(v8), COERCE__INT64(*&v13), COERCE__INT64(*(&v13 + 1)), COERCE__INT64(v11), COERCE__INT64(*&v12), COERCE__INT64(*(&v12 + 1)), COERCE__INT64(v10));
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "WP update = %d    delta uv = %f   current (%f;%f) CCT = %f -> target (%f;%f) CCT = %f", v20, 0x4Eu);
  }

  return v15 & 1;
}

- (void)updateEDRHeadroom:(float)headroom
{
  self->_currentEDRHeadroom = headroom;
  *&v3 = self->_currentEDRHeadroom;
  [(CBBrightnessProxy *)self->_brtCtl setHeadroom:v3];
}

- (void)initialiseFlipBookWithLength:(float)length frequency:(int)frequency lux:(float)lux
{
  selfCopy = self;
  v17 = a2;
  lengthCopy = length;
  frequencyCopy = frequency;
  luxCopy = lux;
  *&v13[8] = 0;
  v13[0] = 2;
  *&v13[5] = 79;
  *&v13[1] = 23;
  *&v13[15] = __PAIR64__(LODWORD(lux), LODWORD(length));
  *&v13[13] = frequency;
  memset(__b, 0, sizeof(__b));
  __b[0] = LODWORD(selfCopy->_currentSDRBrightness);
  __b[1] = LODWORD(selfCopy->_currentBrightnessLimit);
  __b[2] = LODWORD(selfCopy->_currentAAPFactor);
  [*&selfCopy->_currentDisplayNits currentStrength];
  __b[3] = v5;
  [*&selfCopy->_currentDisplayNits lux];
  __b[4] = v6;
  [*&selfCopy->_remainingTransitionLength currentStrength];
  __b[5] = v7;
  [*&selfCopy->_remainingTransitionLength lux];
  __b[6] = v8;
  memcpy(&__b[7], &selfCopy->_thresholdModule, 0x30uLL);
  v9 = [CBAODFlipBookWrapper alloc];
  *v11 = *v13;
  *&v11[15] = *&v13[15];
  memcpy(__dst, __b, sizeof(__dst));
  *&selfCopy->_currentFlipBookEntry.ammoliteStrength_set = [(CBAODFlipBookWrapper *)v9 initWithHeader:v11 andOrigin:__dst];
}

- (void)updateFlipBookEntryWithBrightness:(float)brightness
{
  self->_currentSDRBrightness = brightness;
  *(&self->_currentFlipBookEntry.brightness_set + 1) = brightness;
  self->_currentFlipBookEntry.brightness_set = 1;
}

- (void)updateFlipBookEntryWithBrightnessLimit:(float)limit
{
  self->_currentBrightnessLimit = limit;
  *&self->_currentFlipBookEntry.pccfactor_set = limit;
  HIBYTE(self->_currentFlipBookEntry.whitepoint[2][2]) = 1;
}

- (void)updateFlipBookEntryWithAAPFactor:(float)factor
{
  self->_currentAAPFactor = factor;
  *(&self->_currentFlipBookEntry.whitepoint[2][1] + 3) = factor;
  BYTE2(self->_currentFlipBookEntry.whitepoint[2][1]) = 1;
}

- (void)addFlipBookEntry:(id *)entry
{
  entryCopy = entry;
  v38 = *MEMORY[0x1E69E9840];
  p_isa = &self->super.super.isa;
  v35[2] = a2;
  v35[1] = entry;
  if (*&self->_currentFlipBookEntry.ammoliteStrength_set)
  {
    [p_isa[31] appendFlipBookEntry:entryCopy];
    v35[0] = 0;
    v34 = 0;
    [p_isa chromaticity:v35 andIlluminance:&v34 fromMatrix:&entryCopy->var2 + 2];
    if (p_isa[2])
    {
      v27 = p_isa[2];
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      v27 = inited;
    }

    oslog = v27;
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v24 = type;
      var0 = entryCopy->var0;
      *&v4 = *(&entryCopy->var1 + 1);
      v5 = "set";
      if (entryCopy->var1)
      {
        v6 = "set";
      }

      else
      {
        v6 = "not set";
      }

      if (BYTE1(entryCopy->var2))
      {
        v7 = "set";
      }

      else
      {
        v7 = "not set";
      }

      *&v8 = *(&entryCopy->var4[2][1] + 3);
      if (BYTE2(entryCopy->var4[2][1]))
      {
        v9 = "set";
      }

      else
      {
        v9 = "not set";
      }

      *&v10 = *&entryCopy->var5;
      if (HIBYTE(entryCopy->var4[2][2]))
      {
        v11 = "set";
      }

      else
      {
        v11 = "not set";
      }

      *&v12 = *(&entryCopy->var6 + 1);
      if (LOBYTE(entryCopy->var6))
      {
        v13 = "set";
      }

      else
      {
        v13 = "not set";
      }

      *&v14 = *(&entryCopy->var7 + 1);
      *&v15 = *(&entryCopy->var8 + 2);
      if ((BYTE1(entryCopy->var8) & 1) == 0)
      {
        v5 = "not set";
      }

      *&v16 = *(&entryCopy->var9 + 2);
      v22 = &v17;
      buf = v37;
      __os_log_helper_16_2_16_4_0_8_0_8_32_8_0_8_0_8_32_8_0_8_32_8_0_8_32_8_0_8_32_8_0_8_0_8_32_8_0(v37, var0, v4, v6, COERCE__INT64(*v35), COERCE__INT64(*(v35 + 1)), v7, v8, v9, v10, v11, v12, v13, v14, v15, v5, v16);
      _os_log_impl(&dword_1DE8E5000, log, v24[0], "[AOD update][DCP] Pushing FB entry[%d], brightness = %f (%s); WP = (%f; %f) (%s), pcc = %f (%s), brightness limit = %f (%s), twilight = %f (%s), twilightLux = %f, ammolite = %f (%s), ammoliteLux = %f", buf, 0x9Eu);
    }
  }

  else
  {
    if (p_isa[2])
    {
      v21 = p_isa[2];
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v20 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v20 = init_default_corebrightness_log();
      }

      v21 = v20;
    }

    v31 = v21;
    v30 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v18 = v31;
      v19[0] = v30;
      __os_log_helper_16_0_0(v29);
      _os_log_error_impl(&dword_1DE8E5000, v18, v19[0], "[AOD update][DCP] Flipbook cache doesn't exists. failed to add Flipbook entry.", v29, 2u);
    }
  }
}

- (BOOL)sendCurrentFlipBook
{
  v24 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v21 = a2;
  v20 = 0;
  if (*&self->_currentFlipBookEntry.ammoliteStrength_set)
  {
    newFlipBookData = [*&selfCopy->_currentFlipBookEntry.ammoliteStrength_set newFlipBookData];
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    v18 = logHandle;
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [newFlipBookData length];
      v9 = *&selfCopy->_currentFlipBookEntry.ammoliteStrength_set;
      if (v9)
      {
        objc_msgSend_header(v9);
      }

      else
      {
        memset(&v16[16], 0, 23);
      }

      v7 = *&selfCopy->_currentFlipBookEntry.ammoliteStrength_set;
      if (v7)
      {
        objc_msgSend_header(v7);
      }

      else
      {
        v15 = 0;
        *v16 = 0;
        *&v16[7] = 0;
      }

      __os_log_helper_16_0_3_8_0_4_0_8_0(v23, v8, *&v16[25], COERCE__INT64(*&v16[7]));
      _os_log_impl(&dword_1DE8E5000, v18, v17, "[AOD update][DCP] Sending FlipBook to DCP (size = %lu), number of updates = %d, transition length = %f", v23, 0x1Cu);
    }

    -[CBAPEndpoint sendOOBCommand:inputBuffer:inputBufferSize:](selfCopy->_endpoint, "sendOOBCommand:inputBuffer:inputBufferSize:", 236, [newFlipBookData bytes], objc_msgSend(newFlipBookData, "length"));
    [*&selfCopy->_currentFlipBookEntry.ammoliteStrength_set setSubmissionTimestamp:CFAbsoluteTimeGetCurrent()];
    MEMORY[0x1E69E5920](newFlipBookData);
  }

  else
  {
    if (selfCopy->super._logHandle)
    {
      v6 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v5 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v5 = init_default_corebrightness_log();
      }

      v6 = v5;
    }

    oslog = v6;
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v3 = oslog;
      v4 = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_error_impl(&dword_1DE8E5000, v3, v4, "[AOD update][DCP] Flipbook cache doesn't exists. failed to send Flipbook data to DCP.", v12, 2u);
    }
  }

  return v20 & 1;
}

- (BOOL)flipBookEntryForID:(int)d entry:(id *)entry
{
  v5 = 0;
  if (*&self->_currentFlipBookEntry.ammoliteStrength_set)
  {
    v5 = [*&self->_currentFlipBookEntry.ammoliteStrength_set getEntry:entry forID:d];
  }

  return v5 & 1;
}

- (BOOL)currentFlipBookEntry:(id *)entry
{
  v4 = 0;
  if (![(CBRampManager *)self->_rampManager liveUpdates])
  {
    return [(CBAODTransitionController *)self flipBookEntryForID:[(CBAODTransitionController *)self currentTransitionUpdateID] entry:entry];
  }

  return v4;
}

- (void)setLiveUpdates:(BOOL)updates
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v24 = a2;
  updatesCopy = updates;
  if (LOBYTE(self->_targetWhitepoint.matrix[2][0]))
  {
    updatesCopy = 1;
    if (selfCopy->super._logHandle)
    {
      logHandle = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    v22 = logHandle;
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_32(v27, "enabled");
      _os_log_impl(&dword_1DE8E5000, v22, v21, "Live updates overrided to %s", v27, 0xCu);
    }
  }

  else
  {
    if (selfCopy->super._logHandle)
    {
      v13 = selfCopy->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v12 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v12 = init_default_corebrightness_log();
      }

      v13 = v12;
    }

    v20 = v13;
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (updatesCopy)
      {
        v3 = "enabled";
      }

      else
      {
        v3 = "disabled";
      }

      __os_log_helper_16_2_1_8_32(v26, v3);
      _os_log_impl(&dword_1DE8E5000, v20, v19, "Live updates %s", v26, 0xCu);
    }
  }

  if (updatesCopy != [(CBRampManager *)selfCopy->_rampManager liveUpdates])
  {
    if (!updatesCopy && (CBU_IsSecureIndicatorSupported() & 1) != 0)
    {
      [(CBAODTransitionController *)selfCopy stopEternalIndicatorRamp];
      if (selfCopy->super._logHandle)
      {
        v11 = selfCopy->super._logHandle;
      }

      else
      {
        if (_COREBRIGHTNESS_LOG_DEFAULT)
        {
          v10 = _COREBRIGHTNESS_LOG_DEFAULT;
        }

        else
        {
          v10 = init_default_corebrightness_log();
        }

        v11 = v10;
      }

      v18 = v11;
      v17 = 2;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v8 = v18;
        v9 = v17;
        __os_log_helper_16_0_0(v16);
        _os_log_debug_impl(&dword_1DE8E5000, v8, v9, "Transitioning to Flipbook, forcing NaN IB to CA!", v16, 2u);
      }

      *&v5 = selfCopy->_currentBrightnessLimit;
      LODWORD(v4) = 2143289344;
      [(CBAODTransitionController *)selfCopy updateIndicatorBrightness:v4 andLimit:v5];
      *&v6 = selfCopy->_currentSDRBrightness;
      [(CBAODTransitionController *)selfCopy commitBrightness:1 force:v6];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CBBrightnessProxy *)selfCopy->_brtCtl setAllowUpdates:updatesCopy];
    }

    [(CBRampManager *)selfCopy->_rampManager setLiveUpdates:updatesCopy];
    *&v7 = MEMORY[0x1E69E5920](*&selfCopy->_currentFlipBookEntry.ammoliteStrength_set).n128_u64[0];
    *&selfCopy->_currentFlipBookEntry.ammoliteStrength_set = 0;
    [(CBBrightnessProxy *)selfCopy->_brtCtl setBrightnessControlDisabled:!updatesCopy, v7];
    if ([+[CBAODState isDCPBasedAODSupported] sharedInstance]
    {
      [(CBAODTransitionController *)selfCopy syncLiveStateWithDCP:updatesCopy];
    }
  }
}

- (BOOL)cancelDCPTransition
{
  selfCopy = self;
  v11 = a2;
  if (self->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v10 = logHandle;
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v10;
    type = v9;
    __os_log_helper_16_0_0(v8);
    _os_log_impl(&dword_1DE8E5000, log, type, "Cancel DCP transition", v8, 2u);
  }

  v7 = 1;
  [(CBAPEndpoint *)selfCopy->_endpoint sendCommand:230 inputBuffer:&v7 inputBufferSize:1];
  return v7 & 1;
}

- (void)enableDCPFlipBookUpdates:(BOOL)updates
{
  v10 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v7 = a2;
  updatesCopy = updates;
  if (self->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    if (updatesCopy)
    {
      v3 = "Enable";
    }

    else
    {
      v3 = "Disable";
    }

    __os_log_helper_16_2_1_8_32(v9, v3);
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "%s DCP Flipbook updates", v9, 0xCu);
  }

  [(CBAPEndpoint *)selfCopy->_endpoint sendCommand:237 inputBuffer:&updatesCopy inputBufferSize:1];
}

- (int)currentTransitionUpdateID
{
  v13 = *MEMORY[0x1E69E9840];
  intValue = -1;
  v8 = [(CBAPEndpoint *)self->_endpoint copyProperty:@"CurrentFlipBookUpdateID"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [v8 intValue];
    if (self->super._logHandle)
    {
      logHandle = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        inited = init_default_corebrightness_log();
      }

      logHandle = inited;
    }

    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_4_0(v12, intValue);
      _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "Current update ID of DCP transition is %d", v12, 8u);
    }
  }

  else
  {
    if (self->super._logHandle)
    {
      v5 = self->super._logHandle;
    }

    else
    {
      if (_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v4 = _COREBRIGHTNESS_LOG_DEFAULT;
      }

      else
      {
        v4 = init_default_corebrightness_log();
      }

      v5 = v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v2 = [objc_msgSend(objc_opt_class() "description")];
      __os_log_helper_16_2_1_8_32(v11, v2);
      _os_log_error_impl(&dword_1DE8E5000, v5, OS_LOG_TYPE_ERROR, "Returned property is not an NSNumber!, class: %s", v11, 0xCu);
    }
  }

  MEMORY[0x1E69E5920](v8);
  return intValue;
}

- (void)syncLiveStateWithDCP:(BOOL)p
{
  v33 = *MEMORY[0x1E69E9840];
  p_isa = &self->super.super.isa;
  v30 = a2;
  pCopy = p;
  if (p)
  {
    v28 = 0;
    [p_isa[5] sendCommand:227 inputBuffer:&v28 inputBufferSize:4];
    v27 = [p_isa[5] copyProperty:@"CurrentBrightness"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue = [v27 intValue];
      *(p_isa + 21) = intValue / 65536.0;
    }

    v4 = MEMORY[0x1E69E5920](v27);
    v4.n128_u32[0] = *(p_isa + 21);
    [p_isa[51] setNits:v4.n128_f64[0]];
    v26 = [p_isa[5] copyProperty:@"CurrentTwilightLux"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v26 intValue] / 65536.0;
      *&v5 = v25;
      [p_isa[51] setLux:v5];
    }

    *&v6 = MEMORY[0x1E69E5920](v26).n128_u64[0];
    if ([p_isa gcp])
    {
      v19 = *(p_isa + 21);
      v7 = [p_isa gcp];
      LODWORD(v8) = v19;
      [v7 setNits:v8];
    }

    v24 = [p_isa[5] copyProperty:@"CurrentPCCStrength"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue2 = [v24 intValue];
      *(p_isa + 29) = intValue2 / 65536.0;
    }

    MEMORY[0x1E69E5920](v24);
  }

  else
  {
    v23 = (*(p_isa + 21) * 65536.0);
    [p_isa[5] sendCommand:225 inputBuffer:&v23 inputBufferSize:?];
    [p_isa[51] lux];
    v22 = (v10 * 65536.0);
    [p_isa[5] sendCommand:243 inputBuffer:&v22 inputBufferSize:4];
    v11 = objc_alloc(MEMORY[0x1E696AD98]);
    v21 = [v11 initWithInt:(*(p_isa + 29) * 65536.0)];
    [p_isa[5] setProperty:@"CurrentPCCStrength" property:v21];
    *&v12 = MEMORY[0x1E69E5920](v21).n128_u64[0];
    v20 = 1;
    [p_isa[5] sendCommand:227 inputBuffer:&v20 inputBufferSize:{4, v12}];
  }

  if (p_isa[2])
  {
    v18 = p_isa[2];
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    v18 = inited;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v14 = pCopy;
    *&v15 = *(p_isa + 21);
    *&v16 = *(p_isa + 29);
    [p_isa[51] lux];
    __os_log_helper_16_0_4_4_0_8_0_8_0_8_0(v32, v14, v15, v16, COERCE__INT64(v13));
    _os_log_impl(&dword_1DE8E5000, v18, OS_LOG_TYPE_DEFAULT, "Syncing with DCP. liveUpdates = %d, currentBrightness = %f currentAAPFactor = %f, twilightLux = %f", v32, 0x26u);
  }
}

- (void)startTransitionOnDCP:(id)p transitionLength:(float)length
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v14 = a2;
  pCopy = p;
  lengthCopy = length;
  [(CBAODTransitionController *)self getFloatValueFrom:p key:@"DisplayBrightness" subkey:@"NitsSDR"];
  v11 = v4;
  if (selfCopy->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v10 = logHandle;
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_2_8_0_8_0(v16, COERCE__INT64(v11), COERCE__INT64(lengthCopy));
    _os_log_impl(&dword_1DE8E5000, v10, v9, "Starting transition ramp on DCP with target nits %f and transitionTime %f", v16, 0x16u);
  }

  v8 = (v11 * 65536.0);
  [(CBAPEndpoint *)selfCopy->_endpoint sendCommand:226 inputBuffer:&v8 inputBufferSize:?];
  v7 = (lengthCopy * 65536.0);
  [(CBAPEndpoint *)selfCopy->_endpoint sendCommand:231 inputBuffer:&v7 inputBufferSize:4];
}

- (float)transitionDurationFromCurrent:(float)current toTarget:(float)target
{
  v8 = 0.0;
  v7 = BULuminanceToPerceptual(current, self->_minNits, self->_maxNits);
  v6 = BULuminanceToPerceptual(target, self->_minNits, self->_maxNits) - v7;
  for (i = 0; i < 13; ++i)
  {
    if (v6 <= _timeContantTable[2 * i])
    {
      if (i)
      {
        return _timeContantTable[2 * i - 1] + (((v6 - _timeContantTable[2 * i - 2]) / (_timeContantTable[2 * i] - _timeContantTable[2 * i - 2])) * (_timeContantTable[2 * i + 1] - _timeContantTable[2 * i - 1]));
      }

      else
      {
        return 5.0;
      }
    }
  }

  return v8;
}

- (id)copyContext
{
  v21 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v18 = a2;
  v14 = objc_alloc(MEMORY[0x1E695DF90]);
  v12 = 0x1E696A000uLL;
  *&v2 = selfCopy->_currentSDRBrightness;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  *&v3 = selfCopy->_currentEDRHeadroom;
  v17 = [v14 initWithObjectsAndKeys:{v13, @"NitsPhysical", objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v3), @"EDRHeadroom", 0}];
  if (selfCopy->super._logHandle)
  {
    logHandle = selfCopy->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  v16 = logHandle;
  v15 = 0;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    log = v16;
    *type = v15;
    *&v4 = selfCopy->_currentSDRBrightness;
    *&v5 = selfCopy->_currentEDRHeadroom;
    buf = v20;
    __os_log_helper_16_0_2_8_0_8_0(v20, v4, v5);
    _os_log_impl(&dword_1DE8E5000, log, type[0], "Captured context, current Nits = %f, _currentEDRHeadroom = %f", buf, 0x16u);
  }

  return v17;
}

- (float)getFloatValueFrom:(id)from key:(id)key
{
  v7 = 0.0;
  v6 = [from objectForKey:key];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      return v4;
    }
  }

  return v7;
}

- (float)getFloatValueFrom:(id)from key:(id)key subkey:(id)subkey
{
  v9 = 0.0;
  v8 = [from objectForKey:key];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v8 objectForKey:subkey];
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 floatValue];
          return v5;
        }
      }
    }
  }

  return v9;
}

- (void)logTransitionParameters:(id *)parameters
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
  {
    var0 = parameters->var0;
    if (parameters->var3)
    {
      var4 = parameters->var4;
    }

    else
    {
      var4 = -1.0;
    }

    if (parameters->var5)
    {
      var6 = parameters->var6;
    }

    else
    {
      var6 = -1.0;
    }

    if (parameters->var7)
    {
      var8 = parameters->var8;
    }

    else
    {
      var8 = -1.0;
    }

    if (parameters->var9)
    {
      var10 = parameters->var10;
    }

    else
    {
      var10 = -1.0;
    }

    if (parameters->var11)
    {
      var12 = parameters->var12;
    }

    else
    {
      var12 = -1.0;
    }

    if (*&self->_currentDisplayNits)
    {
      [*&self->_currentDisplayNits aodRampDuration];
      v7 = v3;
    }

    else
    {
      v7 = NAN;
    }

    if (*&self->_remainingTransitionLength)
    {
      [*&self->_remainingTransitionLength aodRampDuration];
      v6 = v4;
    }

    else
    {
      v6 = NAN;
    }

    if (parameters->var13)
    {
      var14 = parameters->var14;
    }

    else
    {
      var14 = -1.0;
    }

    __os_log_helper_16_0_9_4_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0_8_0(v18, var0, COERCE__INT64(var4), COERCE__INT64(var6), COERCE__INT64(var8), COERCE__INT64(var10), COERCE__INT64(var12), COERCE__INT64(v7), COERCE__INT64(v6), COERCE__INT64(var14));
    _os_log_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEFAULT, "[Transition Parameters] force update = %d, transition lengths: general = %f, brightness = %f, whitepoint = %f, pcc = %f, EDR = %f, Twilight = %f, Ammolite = %f, brightness limit = %f", v18, 0x58u);
  }
}

- (void)sendNotificationForKey:(id)key andValue:(id)value
{
  if (self->super._notificationBlock)
  {
    (*(self->super._notificationBlock + 2))();
  }
}

- (float)calculateSpringProgressForLinearProgress:(float)progress
{
  v24 = *MEMORY[0x1E69E9840];
  [+[CBAODState sharedInstance](CBAODState AODTransitionProfileSpring_mass];
  v18 = v3;
  [+[CBAODState sharedInstance](CBAODState AODTransitionProfileSpring_stiffness];
  v17 = v4;
  [+[CBAODState sharedInstance](CBAODState AODTransitionProfileSpring_velocity];
  v16 = v5;
  [+[CBAODState sharedInstance](CBAODState AODTransitionProfileSpring_damping];
  v15 = v6;
  v13 = std::__math::sqrt[abi:de200100](v17 / v18);
  v14 = v15 / (2.0 * std::__math::sqrt[abi:de200100](v17 * v18));
  if (v14 >= 1.0)
  {
    v19 = (((v13 - v16) * progress) + 1.0) * std::__math::exp[abi:de200100](-(progress * v13));
  }

  else
  {
    v12 = v13 * std::__math::sqrt[abi:de200100](1.0 - (v14 * v14));
    v11 = std::__math::exp[abi:de200100](-(progress * v14) * v13);
    v10 = std::__math::cos[abi:de200100](v12 * progress);
    v19 = v11 * (((-(v16 - (v14 * v13)) / v12) * std::__math::sin[abi:de200100](v12 * progress)) + (1.0 * v10));
  }

  v20 = 1.0 - v19;
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_6_8_0_8_0_8_0_8_0_8_0_8_0(v23, COERCE__INT64(v18), COERCE__INT64(v17), COERCE__INT64(v16), COERCE__INT64(v15), COERCE__INT64(v20), COERCE__INT64(progress));
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "spring (mass=%f | stiff=%f | vel=%f | damp=%f) = %f for input = %f", v23, 0x3Eu);
  }

  return v20;
}

- (float)calculateSigmoidProgressForLinearProgress:(float)progress
{
  v17 = *MEMORY[0x1E69E9840];
  [+[CBAODState sharedInstance](CBAODState AODTransitionProfileEaseInOut_K];
  v13 = *&v3;
  [(CBAODTransitionController *)self sigmoidFunction:v3];
  v5 = 0.5 / v4;
  *&v5 = v5;
  v11 = *&v5;
  *&v5 = -(v13 * ((2.0 * progress) + -1.0));
  [(CBAODTransitionController *)self sigmoidFunction:v5];
  v7 = 1.0 - ((v11 * v6) + 0.5);
  v12 = v7;
  if (self->super._logHandle)
  {
    logHandle = self->super._logHandle;
  }

  else
  {
    if (_COREBRIGHTNESS_LOG_DEFAULT)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
    }

    else
    {
      inited = init_default_corebrightness_log();
    }

    logHandle = inited;
  }

  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_3_8_0_8_0_8_0(v16, COERCE__INT64(v13), COERCE__INT64(v12), COERCE__INT64(progress));
    _os_log_debug_impl(&dword_1DE8E5000, logHandle, OS_LOG_TYPE_DEBUG, "sigmoid (K=%f) = %f for input = %f", v16, 0x20u);
  }

  return v12;
}

@end