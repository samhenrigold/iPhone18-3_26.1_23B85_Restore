@interface HUDUserClientMainWindow
- (HUDUserClientMainWindow)initWithFrame:(CGRect)frame;
- (void)draw:(HUDMTLLayerState *)draw drawableState:(HUDMTLLayerDrawableState *)state fontSize:(int)size frame:(id)frame layout:(unint64_t)layout height:(float *)height qrCode:(id)code;
@end

@implementation HUDUserClientMainWindow

- (HUDUserClientMainWindow)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = HUDUserClientMainWindow;
  return [(HUDUserClientWindow *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)draw:(HUDMTLLayerState *)draw drawableState:(HUDMTLLayerDrawableState *)state fontSize:(int)size frame:(id)frame layout:(unint64_t)layout height:(float *)height qrCode:(id)code
{
  v11 = *&size;
  codeCopy = code;
  v14 = HUDGetGlobalConfig(codeCopy, v13);
  GlobalOverlay = HUDMTLOverlayGetGlobalOverlay(v14, v15);
  v17 = +[_CADeveloperHUDProperties instance];
  v731 = 0;
  HUDSystemStateGetSnapshot(&v731, v18, v19, v20);
  v730 = 0;
  HUDUIFrameGetSizeInPoints(frame.var0, &v730 + 1, &v730);
  HUDUIRectMake();
  v25 = 15.0;
  if (layout == 16)
  {
    v25 = 5.0;
  }

  v704 = HUDUIInvalidString;
  *&v705 = qword_784F8;
  IsProcessTranslated = HUDUIFrameBeginWindow(frame.var0, &v704, 3003121664, 1, v21, v22, v23, v24, v25);
  if (layout)
  {
    v28 = HUDUIWindowBeginRow(frame.var0);
    v29 = *&v28;
    v31 = v30;
    v33 = v32;
    v34 = [v17 getMetric:@"com.apple.hud-stat.gpu-name"];
    stringValue = [v34 stringValue];
    v36 = stringValue;
    v37 = @"Unknown";
    if (stringValue)
    {
      v37 = stringValue;
    }

    v38 = v37;

    FontHeight = HUDUIOverlayGetFontHeight(GlobalOverlay, v11);
    HUDUIAllocString([(__CFString *)v38 UTF8String], GlobalOverlay, v11, &v704);
    *&v40 = FontHeight;
    HUDUIWindowAddLabelInRect(frame.var0, &v704, -1, 0, 0, v29, v31, v33, v40);
  }

  if ((layout & 2) != 0)
  {
    IsProcessTranslated = MTLHudIsProcessTranslated(IsProcessTranslated, v27);
    if (IsProcessTranslated)
    {
      v41 = +[_CADeveloperHUDProperties instance];
      graphicsAPI = [v41 graphicsAPI];

      if (graphicsAPI > 2)
      {
        v43 = 0;
      }

      else
      {
        v43 = (&off_69290)[graphicsAPI];
      }

      v44 = HUDUIWindowBeginRow(frame.var0);
      v45 = *&v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      HUDUIAllocString("Rosetta x86_64", GlobalOverlay, v11, &v704);
      HUDUIAllocString(v43, GlobalOverlay, v11, &v728);
      LODWORD(v52) = v51;
      IsProcessTranslated = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v45, v47, v49, v52);
    }
  }

  v695 = v14;
  if ((layout & 4) != 0)
  {
    v53 = HUDUIWindowBeginRow(frame.var0);
    v54 = *&v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    if (draw->lastDrawableDetached)
    {
      HUDUITemporaryStringWithFormat(frame.var0, v11, "%dx%d ", &v704, state->drawableWidth, state->drawableHeight);
      v61 = " Direct";
      v62 = -12463527;
    }

    else
    {
      v63 = *(v14 + 33);
      HUDUITemporaryStringWithFormat(frame.var0, v11, "%dx%d ", &v704, state->drawableWidth, state->drawableHeight);
      if (v63)
      {
        v61 = " Direct";
      }

      else
      {
        v61 = " Composited";
      }

      if (v63)
      {
        v62 = -12463527;
      }

      else
      {
        v62 = -16080897;
      }
    }

    HUDUIAllocString(v61, GlobalOverlay, v11, &v728);
    LODWORD(v64) = v60;
    IsProcessTranslated = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, v62, v54, v56, v58, v64);
  }

  if ((layout & 0x400000) != 0)
  {
    v65 = HUDUIWindowBeginRow(frame.var0);
    v66 = *&v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    HUDUIAllocStringWithFormat(GlobalOverlay, v11, "%2.1fx ", &v704, state->layerContentsScale);
    v74 = HUDMTLPixelFormatName(draw->pixelFormat, v73);
    HUDUIAllocStringWithFormat(GlobalOverlay, v11, "%s", &v728, v74);
    LODWORD(v75) = v72;
    IsProcessTranslated = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v66, v68, v70, v75);
  }

  if ((layout & 8) != 0 && v731)
  {
    v76 = HUDUIWindowBeginRow(frame.var0);
    v77 = *&v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v704 = 0uLL;
    *&v705 = 0;
    HUDUITemporaryFormattedBytes(frame.var0, v11, "Metal: ", *v731, 0, &v704);
    v729 = 0;
    v728 = 0uLL;
    HUDUITemporaryFormattedBytes(frame.var0, v11, "App: ", v731[1], 0, &v728);
    v726 = v704;
    v727 = v705;
    v724 = v728;
    v725 = v729;
    LODWORD(v84) = v83;
    HUDUIWindowAddLabelKeyValuePair(frame.var0, &v726, -1, &v724, -1, v77, v79, v81, v84);
    v85 = HUDUIWindowBeginRow(frame.var0);
    v86 = *&v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    HUDUIAllocString("Available Memory", GlobalOverlay, v11, &v726);
    HUDUITemporaryFormattedBytes(frame.var0, v11, "", v731[2], 0, &v724);
    LODWORD(v93) = v92;
    IsProcessTranslated = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v726, -1, &v724, -1, v86, v88, v90, v93);
  }

  if ((layout & 0x800000) != 0)
  {
    v704 = HUDUIInvalidString;
    *&v705 = qword_784F8;
    if (draw->screenFPS)
    {
      HUDUIAllocStringWithFormat(GlobalOverlay, v11, "%dHz", &v728, draw->screenFPS);
      v704 = v728;
      *&v705 = v729;
    }

    else
    {
      HUDUIAllocString("--Hz", GlobalOverlay, v11, &v704);
    }

    v94 = HUDUIWindowBeginRow(frame.var0);
    v95 = *&v94;
    v97 = v96;
    v99 = v98;
    v101 = v100;
    HUDUIAllocString("Refresh Rate", GlobalOverlay, v11, &v728);
    v726 = v704;
    v727 = v705;
    LODWORD(v102) = v101;
    IsProcessTranslated = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v728, -1, &v726, -1, v95, v97, v99, v102);
  }

  v103 = (&draw->presentTimeRecord.minFrame + 1);
  if ((layout & 0x40000) != 0)
  {
    v104 = [v17 getMetric:@"com.apple.hud-stat.thermal-state"];
    if (v104)
    {
      HUDUIWindowBeginRow(frame.var0);
      v105 = HUDUIWindowBeginRow(frame.var0);
      v106 = *&v105;
      v108 = v107;
      v110 = v109;
      v112 = v111;
      stringValue2 = [v104 stringValue];
      valueColor = [v104 valueColor];
      LODWORD(v115) = v112;
      HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, valueColor, v106, v108, v110, v115);
    }
  }

  v693 = v17;
  layoutCopy = layout;
  if ((layout & 0x1000000) != 0)
  {
    IsProcessTranslated = HUDMTLOverlayIsInGPTK(IsProcessTranslated, v27);
    if ((IsProcessTranslated & 1) == 0)
    {
      v116 = MTLHUDGameModeEnabled(IsProcessTranslated, v27);
      v117 = HUDUIWindowBeginRow(frame.var0);
      v118 = *&v117;
      v120 = v119;
      v122 = v121;
      v124 = v123;
      HUDUIAllocString("Game Mode", GlobalOverlay, v11, &v704);
      v125 = "Off";
      if (v116)
      {
        v125 = "On";
        v126 = -12463527;
      }

      else
      {
        v126 = -16080897;
      }

      HUDUIAllocStringWithFormat(GlobalOverlay, v11, "%s", &v728, v125);
      LODWORD(v127) = v124;
      IsProcessTranslated = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, v126, v118, v120, v122, v127);
    }
  }

  else if (layout == 16)
  {
    v691 = 0;
LABEL_60:
    HUDUIOverlayGetFontHeight(GlobalOverlay, 1u);
    v177 = HUDUIWindowBeginRow(frame.var0);
    v178 = *&v177;
    v180 = v179;
    v182 = v181;
    v184 = v183 - (HUDUIOverlayGetFontHeight(GlobalOverlay, 1u) >> 1);
    HUDUITemporaryStringWithFormat(frame.var0, 2u, "%.2f", &v704, 1000000000.0 / *(&draw->presentTimeRecord.valuesMax + 4));
    LODWORD(v185) = v182;
    ValueRecord = HUDUIWindowAddLabelInRect(frame.var0, &v704, -1, 1, 1, v178, v184, v180, v185);
    goto LABEL_155;
  }

  MetalWrapperType = MTLHudGetMetalWrapperType(IsProcessTranslated, v27);
  v129 = MetalWrapperType;
  IsCaptureEnabled = MTLHudIsCaptureEnabled(MetalWrapperType, v130);
  v132 = v129 - 1;
  if (v129 - 1) <= 9 && ((0x21Fu >> v132))
  {
    v133 = (&off_692A8)[v132];
    v134 = HUDUIWindowBeginRow(frame.var0);
    v135 = *&v134;
    v137 = v136;
    v139 = v138;
    v141 = v140;
    HUDUIAllocStringWithFormat(GlobalOverlay, v11, "%s Enabled", &v704, v133);
    v728 = HUDUIInvalidString;
    v729 = qword_784F8;
    LODWORD(v142) = v141;
    HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -16080897, &v728, -1, v135, v137, v139, v142);
  }

  if (IsCaptureEnabled)
  {
    v143 = HUDUIWindowBeginRow(frame.var0);
    v144 = *&v143;
    v146 = v145;
    v148 = v147;
    v150 = v149;
    HUDUIAllocStringWithFormat(GlobalOverlay, v11, "GPU Frame Capture Enabled", &v704);
    v728 = HUDUIInvalidString;
    v729 = qword_784F8;
    LODWORD(v151) = v150;
    HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -16080897, &v728, -1, v144, v146, v148, v151);
  }

  v152 = +[NSProcessInfo processInfo];
  isLowPowerModeEnabled = [v152 isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    v156 = HUDUIWindowBeginRow(frame.var0);
    v157 = *&v156;
    v159 = v158;
    v161 = v160;
    v163 = v162;
    HUDUIAllocStringWithFormat(GlobalOverlay, v11, "Low Power Mode Enabled", &v704);
    v728 = HUDUIInvalidString;
    v729 = qword_784F8;
    LODWORD(v164) = v163;
    ValueRecord = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -16080897, &v728, -1, v157, v159, v161, v164);
  }

  if ((layout & 0x10) != 0)
  {
    if (layout == 16)
    {
      v691 = 1;
      goto LABEL_60;
    }

    HUDUIWindowEmptyRow(frame.var0, 6.0);
    if ((layout & 0x1000) != 0)
    {
      v186 = HUDUIWindowBeginRow(frame.var0);
      v187 = *&v186;
      v189 = v188;
      v191 = v190;
      v193 = v192;
      v194 = +[_CADeveloperHUDProperties instance];
      frameMarker = [v194 frameMarker];

      if ([frameMarker length])
      {
        HUDUIAllocString("Frame", GlobalOverlay, v11, &v704);
        HUDUITemporaryStringWithFormat(frame.var0, v11, "%d | %s", &v728, draw->frameNumber, [frameMarker UTF8String]);
      }

      else
      {
        HUDUIAllocString("Frame", GlobalOverlay, v11, &v704);
        HUDUITemporaryStringWithFormat(frame.var0, v11, "%d", &v728, draw->frameNumber, v687);
      }

      LODWORD(v196) = v193;
      HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v187, v189, v191, v196);
    }

    v666 = *(v14 + 30);
    v667 = HUDUIWindowBeginRow(frame.var0);
    v668 = *&v667;
    v670 = v669;
    v672 = v671;
    v674 = v673;
    HUDUIAllocString("FPS", GlobalOverlay, v11, &v704);
    if (v666 == 1)
    {
      v675 = 1000000000.0 / *(&draw->presentTimeRecord.valuesMax + 4);
      v676 = 1000000000.0 / *(&draw->presentTimeRecord.valuesMin + 4);
      *&v676 = v676;
      v677 = 1000000000.0 / *v103;
      *&v677 = v677;
      ValueRecord = HUDUIWindowAddStats(frame.var0, v11, &v704, v675, v676, v677, v668, v670, v672, v674, "", -1);
    }

    else
    {
      HUDUITemporaryStringWithFormat(frame.var0, v11, "%.2f", &v728, 1000000000.0 / *(&draw->presentTimeRecord.valuesMax + 4));
      *&v678 = v674;
      ValueRecord = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v668, v670, v672, v678);
    }
  }

  if ((layout & 0x80000) != 0)
  {
    v165 = HUDUIWindowBeginRow(frame.var0);
    v166 = *&v165;
    v168 = v167;
    v170 = v169;
    v172 = v171;
    v722 = 0u;
    v723 = 0u;
    v720 = 0u;
    v721 = 0u;
    v718 = 0u;
    v719 = 0u;
    v716 = 0u;
    v717 = 0u;
    v714 = 0u;
    v715 = 0u;
    v712 = 0u;
    v713 = 0u;
    v710 = 0u;
    v711 = 0u;
    v708 = 0u;
    v709 = 0u;
    v706 = 0u;
    v707 = 0u;
    v704 = 0u;
    v705 = 0u;
    HUDUILineChartInit(&v704);
    minValueAllowed_high = HIDWORD(draw->fpsRecord.minValueAllowed);
    if (!minValueAllowed_high || (v174 = __CFADD__(minValueAllowed_high, 1), v175 = (minValueAllowed_high + 1), v174))
    {
      v176 = -2147483650.0;
    }

    else
    {
      v197 = 0;
      lastValue_low = LODWORD(draw->fpsRecord.lastValue);
      v199 = 0x7FFFFFFF;
      do
      {
        if (*(&draw->fpsRecord.lastValue + v197) > lastValue_low || v199 == 0x7FFFFFFF)
        {
          lastValue_low = *(&draw->fpsRecord.lastValue + v197);
          v199 = v197;
        }

        ++v197;
      }

      while (v175 != v197);
      v176 = (v199 + 1);
    }

    v201 = v176 * *(&draw->fpsRecord.maxValueAllowed + 4);
    HUDUILineChartSet(&v704, 0, &draw->presentToOnGlassRecord.valuesMinSinceBeginning, -354547, 1, 0, 3.0, v201, 0.05);
    v202 = fmax(round(*(&draw->fpsRecord.minFrame + 1) / 30.0) * 30.0, 60.0) + 30.0;
    v728 = HUDUIInvalidString;
    v729 = qword_784F8;
    v203.n128_u32[0] = v172;
    ValueRecord = HUDUIWindowAddLineChart(frame.var0, &v728, &v704, 0.0, v202, v166, v168, v170, v203, v204, v205, "fps", 0);
  }

  if ((layout & 0x20000) != 0)
  {
    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance(ValueRecord, v155);
    ValueRecord = HUDGPUTimeTrackerGetValueRecord(GlobalInstance, 4u);
    if (ValueRecord)
    {
      v207 = (ValueRecord + 972);
      v208 = HUDUIWindowBeginRow(frame.var0);
      v209 = *&v208;
      v211 = v210;
      v213 = v212;
      v215 = v214;
      if (*(v14 + 30) == 1)
      {
        HUDUIAllocString("GPU", GlobalOverlay, v11, &v704);
        v216 = v207[2] * 0.000001;
        v217 = *v207 * 0.000001;
        *&v217 = v217;
        v218 = v207[1] * 0.000001;
        *&v218 = v218;
        ValueRecord = HUDUIWindowAddStats(frame.var0, v11, &v704, v216, v217, v218, v209, v211, v213, v215, "ms", -1);
      }

      else
      {
        HUDUIAllocString("GPU", GlobalOverlay, v11, &v704);
        HUDUITemporaryStringWithFormat(frame.var0, v11, "%.2fms", &v728, v207[2] * 0.000001);
        *&v219 = v215;
        ValueRecord = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v209, v211, v213, v219);
      }
    }
  }

  if ((layout & 0x10000) == 0)
  {
LABEL_80:
    if ((layout & 0x20) != 0)
    {
      goto LABEL_81;
    }

    goto LABEL_86;
  }

  v220 = HUDUIWindowBeginRow(frame.var0);
  v221 = *&v220;
  v223 = v222;
  v225 = v224;
  v227 = v226;
  if (*(v14 + 30) == 1)
  {
    HUDUIAllocString("Present Delay", GlobalOverlay, v11, &v704);
    v228 = *(&draw->presentToOnGlassRecord.valuesMin + 4) * 0.000001;
    v229 = *&draw->presentToOnGlassRecord.maxFrame * 0.000001;
    *&v229 = v229;
    v230 = *(&draw->presentToOnGlassRecord.minFrame + 1) * 0.000001;
    *&v230 = v230;
    ValueRecord = HUDUIWindowAddStats(frame.var0, v11, &v704, v228, v229, v230, v221, v223, v225, v227, "ms", -1);
    goto LABEL_80;
  }

  HUDUIAllocString("Present Delay", GlobalOverlay, v11, &v704);
  HUDUITemporaryStringWithFormat(frame.var0, v11, "%.2fms", &v728, *(&draw->presentToOnGlassRecord.valuesMin + 4) * 0.000001);
  *&v242 = v227;
  ValueRecord = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v221, v223, v225, v242);
  if ((layout & 0x20) != 0)
  {
LABEL_81:
    v231 = HUDUIWindowBeginRow(frame.var0);
    v232 = *&v231;
    v234 = v233;
    v236 = v235;
    v238 = v237;
    if (*(v14 + 30) == 1)
    {
      HUDUIAllocString("Frame Interval", GlobalOverlay, v11, &v704);
      v239 = *(&draw->presentTimeRecord.valuesMax + 4) * 0.000001;
      v240 = *v103 * 0.000001;
      *&v240 = v240;
      v241 = *(&draw->presentTimeRecord.valuesMin + 4) * 0.000001;
      *&v241 = v241;
      ValueRecord = HUDUIWindowAddStats(frame.var0, v11, &v704, v239, v240, v241, v232, v234, v236, v238, "ms", -1);
    }

    else
    {
      HUDUIAllocString("Frame Interval", GlobalOverlay, v11, &v704);
      HUDUITemporaryStringWithFormat(frame.var0, v11, "%.2fms", &v728, *(&draw->presentTimeRecord.valuesMax + 4) * 0.000001);
      *&v243 = v238;
      ValueRecord = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v232, v234, v236, v243);
    }
  }

LABEL_86:
  v692 = (&draw->presentTimeRecord.valuesMax + 4);
  if ((layout & 0x8000) != 0)
  {
    v244 = HUDUIWindowBeginRow(frame.var0);
    v245 = *&v244;
    v247 = v246;
    v249 = v248;
    v251 = v250;
    v722 = 0u;
    v723 = 0u;
    v720 = 0u;
    v721 = 0u;
    v718 = 0u;
    v719 = 0u;
    v716 = 0u;
    v717 = 0u;
    v714 = 0u;
    v715 = 0u;
    v712 = 0u;
    v713 = 0u;
    v710 = 0u;
    v711 = 0u;
    v708 = 0u;
    v709 = 0u;
    v706 = 0u;
    v707 = 0u;
    v704 = 0u;
    v705 = 0u;
    HUDUILineChartInit(&v704);
    bucketSize_high = HIDWORD(draw->presentTimeRecord.bucketSize);
    if (!bucketSize_high || (v174 = __CFADD__(bucketSize_high, 1), v253 = (bucketSize_high + 1), v174))
    {
      v254 = -2147483650.0;
    }

    else
    {
      v255 = 0;
      maxBucketIndex = draw->presentTimeRecord.maxBucketIndex;
      v257 = 0x7FFFFFFF;
      do
      {
        if (*(&draw->presentTimeRecord.maxBucketIndex + v255) > maxBucketIndex || v257 == 0x7FFFFFFF)
        {
          v257 = v255;
          maxBucketIndex = *(&draw->presentTimeRecord.maxBucketIndex + v255);
        }

        ++v255;
      }

      while (v253 != v255);
      v254 = (v257 + 1);
    }

    v259 = v254 * *(&draw->presentTimeRecord.lastValue + 4);
    HUDUILineChartSet(&v704, 0, &draw->presentTimeRecord, -354547, 0, 0, 3.0, v259, 0.05);
    v260 = fmax(*v692 + 1000000.0, 40000000.0);
    v728 = HUDUIInvalidString;
    v729 = qword_784F8;
    v261.n128_u32[0] = v251;
    ValueRecord = HUDUIWindowAddLineChart(frame.var0, &v728, &v704, 0.0, v260, v245, v247, v249, v261, v262, v263, "ms", 0);
  }

  if ((layout & 0x40) != 0)
  {
    HUDUIWindowEmptyRow(frame.var0, 6.0);
    v264 = HUDUIWindowBeginRow(frame.var0);
    v265 = *&v264;
    v267 = v266.n128_f32[0];
    v269 = v268.n128_f32[0];
    v271 = v270.n128_u32[0];
    *&v704 = &draw->presentTimeRecord.maxBucketIndex;
    *(&v704 + 1) = "ms";
    v272 = (HIDWORD(draw->presentTimeRecord.bucketSize) + 1);
    *&v705 = 0;
    *(&v705 + 1) = v272;
    LODWORD(v706) = 0;
    v266.n128_u32[1] = 1051772663;
    v273.n128_f64[0] = *(&draw->presentTimeRecord.lastValue + 4) * 0.000001;
    v273.n128_f32[0] = v273.n128_f64[0];
    DWORD1(v706) = v273.n128_u32[0];
    v273.n128_f32[0] = v265;
    ValueRecord = HUDUIWindowAddHistogram(frame.var0, v273, v266, v268, v270, &v704, v274, v275);
    if (draw->frameMisses)
    {
      if (v269 > 120.0)
      {
        HUDUITemporaryStringWithFormat(frame.var0, 0, "Missed %d", &v728, draw->frameMisses);
        LODWORD(v276) = v271;
        ValueRecord = HUDUIWindowAddLabelInRect(frame.var0, &v728, -11969794, 2, 0, v265, v267, v269, v276);
      }
    }
  }

  if ((layout & 0x80) != 0)
  {
    HUDUIWindowEmptyRow(frame.var0, 6.0);
    for (i = 0; i != 7; ++i)
    {
      v280 = HUDGPUTimeTrackerGetGlobalInstance(v277, v278);
      v281 = HUDGPUTimeTrackerGetValueRecord(v280, dword_54AB0[i]);
      v283 = HUDGPUTimeTrackerGetGlobalInstance(v281, v282);
      v284 = dword_54ACC[i];
      v277 = HUDGPUTimeTrackerGetValueRecord(v283, dword_54ACC[i]);
      if (v281)
      {
        v285 = v277;
        v286 = (v281 + 988);
        if (*v286 > 0.0 || *(v695 + 6) == 1)
        {
          v287 = HUDUIWindowBeginRow(frame.var0);
          v288 = *&v287;
          v290 = v289;
          v292 = v291;
          v294 = v293;
          RecordName = HUDGPUTimeTrackerGetRecordName(v284, v295);
          HUDUIAllocString(RecordName, GlobalOverlay, v11, &v704);
          LODWORD(v297) = vcvtpd_s64_f64(*v286);
          HUDUITemporaryStringWithFormat(frame.var0, v11, "%d |%5.2fms", &v728, v297, *(v285 + 988) * 0.000001);
          LODWORD(v298) = v294;
          v277 = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v288, v290, v292, v298);
        }
      }
    }

    v299 = HUDGPUTimeTrackerGetGlobalInstance(v277, v278);
    ValueRecord = HUDGPUTimeTrackerGetValueRecord(v299, 0x32u);
    v14 = v695;
    if (ValueRecord)
    {
      v300 = (ValueRecord + 988);
      if (*(ValueRecord + 988) > 0.0)
      {
        v301 = HUDUIWindowBeginRow(frame.var0);
        v302 = *&v301;
        v304 = v303;
        v306 = v305;
        v308 = v307;
        v310 = HUDGPUTimeTrackerGetRecordName(50, v309);
        HUDUIAllocString(v310, GlobalOverlay, v11, &v704);
        HUDUITemporaryFormattedBytes(frame.var0, v11, "", *v300, 0, &v728);
        LODWORD(v311) = v308;
        ValueRecord = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v302, v304, v306, v311);
      }
    }
  }

  if ((layout & 0x800) != 0)
  {
    v312 = HUDGPUTimeTrackerGetGlobalInstance(ValueRecord, v155);
    TotalCompilerStatistics = HUDGPUTimeTrackerGetTotalCompilerStatistics(v312);
    if (TotalCompilerStatistics)
    {
      v315 = TotalCompilerStatistics;
      HUDUIWindowEmptyRow(frame.var0, 6.0);
      v704 = HUDUIInvalidString;
      *&v705 = qword_784F8;
      v316 = v315[8];
      v317 = v316;
      if (v316 > 0x3B9AC9FF)
      {
        HUDUITemporaryStringWithFormat(frame.var0, v11, "%d | %6.2fs", &v728, v315[6] + v315[5], v317 * 0.000000001);
        v704 = v728;
        *&v705 = v729;
      }

      else
      {
        HUDUITemporaryStringWithFormat(frame.var0, v11, "%d | %5.2fms", &v704, v315[6] + v315[5], v317 * 0.000001);
      }

      if (v315[3] || v315[4] || *(v14 + 6) == 1)
      {
        v318 = HUDUIWindowBeginRow(frame.var0);
        v319 = *&v318;
        v321 = v320;
        v323 = v322;
        v325 = v324;
        HUDUIAllocString("Pipeline States", GlobalOverlay, v11, &v728);
        HUDUITemporaryStringWithFormat(frame.var0, v11, "%d", &v726, v315[4] + v315[3]);
        LODWORD(v326) = v325;
        HUDUIWindowAddLabelKeyValuePair(frame.var0, &v728, -1, &v726, -1, v319, v321, v323, v326);
      }

      if (v315[7] || *(v14 + 6) == 1)
      {
        v327 = HUDUIWindowBeginRow(frame.var0);
        v328 = *&v327;
        v330 = v329;
        v332 = v331;
        v334 = v333;
        HUDUIAllocString("Cached Shaders", GlobalOverlay, v11, &v728);
        HUDUITemporaryStringWithFormat(frame.var0, v11, "%d", &v726, v315[7]);
        LODWORD(v335) = v334;
        HUDUIWindowAddLabelKeyValuePair(frame.var0, &v728, -1, &v726, -1, v328, v330, v332, v335);
      }

      v336 = HUDUIWindowBeginRow(frame.var0);
      v337 = *&v336;
      v339 = v338;
      v341 = v340;
      v343 = v342;
      HUDUIAllocString("Compiled Shaders", GlobalOverlay, v11, &v728);
      v726 = v704;
      v727 = v705;
      LODWORD(v344) = v343;
      TotalCompilerStatistics = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v728, -1, &v726, -1, v337, v339, v341, v344);
      if (v315[6])
      {
        v345 = HUDUIWindowBeginRow(frame.var0);
        v346 = *&v345;
        v348 = v347;
        v350 = v349;
        v352 = v351;
        HUDUIAllocString("Async Compilations", GlobalOverlay, v11, &v728);
        HUDUITemporaryStringWithFormat(frame.var0, v11, "%d", &v726, v315[6]);
        LODWORD(v353) = v352;
        TotalCompilerStatistics = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v728, -1, &v726, -1, v346, v348, v350, v353);
      }
    }

    v354 = HUDGPUTimeTrackerGetGlobalInstance(TotalCompilerStatistics, v314);
    ValueRecord = HUDGPUTimeTrackerGetValueRecord(v354, 0x25u);
    if (ValueRecord)
    {
      v355 = ValueRecord;
      v356 = HUDUIWindowBeginRow(frame.var0);
      v357 = *&v356;
      v359 = v358;
      v361 = v360;
      v363 = v362;
      v722 = 0u;
      v723 = 0u;
      v720 = 0u;
      v721 = 0u;
      v718 = 0u;
      v719 = 0u;
      v716 = 0u;
      v717 = 0u;
      v714 = 0u;
      v715 = 0u;
      v712 = 0u;
      v713 = 0u;
      v710 = 0u;
      v711 = 0u;
      v708 = 0u;
      v709 = 0u;
      v706 = 0u;
      v707 = 0u;
      v704 = 0u;
      v705 = 0u;
      HUDUILineChartInit(&v704);
      HUDUILineChartSet(&v704, 0, v355, -11969794, 0, 0, 3.0, 9999.0, 1.0);
      v364 = *(v355 + 980);
      v728 = HUDUIInvalidString;
      v729 = qword_784F8;
      v365.n128_u32[0] = v363;
      ValueRecord = HUDUIWindowAddLineChart(frame.var0, &v728, &v704, 0.0, v364, v357, v359, v361, v365, v366, v367, "ms", 0xF4240uLL);
    }
  }

  if ((layout & 0x200) == 0 || *(v14 + 4) != 1)
  {
    goto LABEL_146;
  }

  v368 = HUDGPUTimeTrackerGetGlobalInstance(ValueRecord, v155);
  if ((HUDGPUTimeTrackerCanEnableGPUTimeSampling(v368) & 1) == 0)
  {
    v704 = 0uLL;
    *&v705 = 0;
    HUDUIWrappedTemporaryString("Encoder GPU Timeline unavailable", frame.var0, v11, &v704, HIDWORD(v730), 100.0);
    LODWORD(v726) = 0;
    LODWORD(v724) = 0;
    v728 = v704;
    v729 = v705;
    HUDUIWindowGetLabelSize(frame.var0, &v728, &v726, &v724);
    v405 = HUDUIWindowBeginRow(frame.var0);
    v728 = v704;
    v729 = v705;
    ValueRecord = HUDUIWindowAddLabelInRect(frame.var0, &v728, -16080897, 0, 0, *&v405, v406, v407, v408);
    goto LABEL_146;
  }

  HUDUIWindowEmptyRow(frame.var0, 6.0);
  v371 = HUDGPUTimeTrackerGetGlobalInstance(v369, v370);
  v372 = HUDGPUTimeTrackerGetValueRecord(v371, 0x2Cu);
  if (v372)
  {
    v374 = v372;
    v375 = HUDUIWindowBeginRow(frame.var0);
    v376 = *&v375;
    v378 = v377;
    v380 = v379;
    v382 = v381;
    HUDUIAllocString("Encoder GPU", GlobalOverlay, v11, &v704);
    HUDUITemporaryStringWithFormat(frame.var0, v11, "%.2fms", &v728, *(v374 + 988) * 0.000001);
    LODWORD(v383) = v382;
    v372 = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v376, v378, v380, v383);
  }

  for (j = 0; j != 7; ++j)
  {
    v385 = HUDGPUTimeTrackerGetGlobalInstance(v372, v373);
    v386 = dword_54AE8[j];
    v372 = HUDGPUTimeTrackerGetValueRecord(v385, dword_54AE8[j]);
    if (v372)
    {
      v387 = (v372 + 988);
      if (*(v372 + 988) > 0.0)
      {
        v388 = HUDUIWindowBeginRow(frame.var0);
        v389 = *&v388;
        v391 = v390;
        v393 = v392;
        v395 = v394;
        v397 = HUDGPUTimeTrackerGetRecordName(v386, v396);
        HUDUIAllocString(v397, GlobalOverlay, v11, &v704);
        HUDUITemporaryStringWithFormat(frame.var0, v11, "%.2fms | %5.2f%%", &v728, *v387 * 0.000001, *v387 / *v692 * 100.0);
        LODWORD(v398) = v395;
        v372 = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v389, v391, v393, v398);
      }
    }
  }

  GlobalGPUTimeline = HUDMTLOverlayGetGlobalGPUTimeline(v372, v373);
  ValueRecord = HUDGPUTimelineGetCurrent(GlobalGPUTimeline);
  v14 = v695;
  if (!ValueRecord || (v400 = ValueRecord, !*(ValueRecord + 8)))
  {
LABEL_146:
    if ((layout & 0x2000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_147;
  }

  HUDUIWindowEmptyRow(frame.var0, 6.0);
  HUDUIWindowBeginRow(frame.var0);
  v401 = *(v695 + 29) / 100.0;
  v402 = *(v695 + 11);
  if (v402 <= 2)
  {
    v402 = 2;
  }

  v403 = v402 - 2;
  if (v400[2] < 2uLL)
  {
    v404 = 16666666;
  }

  else
  {
    v404 = *(v400[3] + 8) - *v400[3];
  }

  if (v403 >= v401)
  {
    v679 = v401;
  }

  else
  {
    v679 = v403;
  }

  HUDGPUTimelineGetCurrentTimeRange(GlobalGPUTimeline);
  v681 = v680 - v404 * v679;
  v682 = v680 - (v404 >> 1);
  v683.n128_f64[0] = HUDUIWindowBeginRow(frame.var0);
  ValueRecord = HUDUIWindowAddTimeline(frame.var0, v681, v682, v400, v683, v684, v685, v686);
  v17 = v693;
  if ((layout & 0x2000) == 0)
  {
    goto LABEL_148;
  }

LABEL_147:
  HUDUIWindowEmptyRow(frame.var0, 6.0);
  v409 = HUDUIWindowBeginRow(frame.var0);
  v410 = *&v409;
  v412 = v411;
  v414 = v413;
  v416 = v415;
  HUDUIAllocString("Disk Bytes Read", GlobalOverlay, v11, &v704);
  HUDUITemporaryFormattedBytes(frame.var0, v11, "", v731[5], 0, &v728);
  LODWORD(v417) = v416;
  HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v410, v412, v414, v417);
  v418 = HUDUIWindowBeginRow(frame.var0);
  v419 = *&v418;
  v421 = v420;
  v423 = v422;
  v425 = v424;
  HUDUIAllocString("Disk Bytes Written", GlobalOverlay, v11, &v704);
  HUDUITemporaryFormattedBytes(frame.var0, v11, "", v731[6], 0, &v728);
  LODWORD(v426) = v425;
  HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v419, v421, v423, v426);
  v427 = HUDUIWindowBeginRow(frame.var0);
  v428 = *&v427;
  v430 = v429;
  v432 = v431;
  v434 = v433;
  HUDUIAllocString("Disk Logical Writes", GlobalOverlay, v11, &v704);
  HUDUITemporaryFormattedBytes(frame.var0, v11, "", v731[7], 0, &v728);
  LODWORD(v435) = v434;
  ValueRecord = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v428, v430, v432, v435);
LABEL_148:
  if ((layout & 0x100000) != 0)
  {
    v436 = HUDGPUTimeTrackerGetGlobalInstance(ValueRecord, v155);
    ValueRecord = HUDGPUTimeTrackerTopCommandBufferRecordsCount(v436);
    if (ValueRecord)
    {
      HUDUIWindowEmptyRow(frame.var0, 6.0);
      v437 = HUDUIWindowBeginRow(frame.var0);
      v438 = *&v437;
      v440 = v439;
      v442 = v441;
      v444 = v443;
      HUDUIAllocString("Top Labeled Command Buffers", GlobalOverlay, v11, &v704);
      v728 = HUDUIInvalidString;
      v729 = qword_784F8;
      LODWORD(v445) = v444;
      v446 = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -4144960, &v728, -1, v438, v440, v442, v445);
      *&v704 = 0;
      *(&v704 + 1) = &v704;
      v705 = 0x2020000000uLL;
      v448 = HUDGPUTimeTrackerGetGlobalInstance(v446, v447);
      v702[0] = _NSConcreteStackBlock;
      v702[1] = 3221225472;
      v702[2] = __82__HUDUserClientMainWindow_draw_drawableState_fontSize_frame_layout_height_qrCode___block_invoke;
      v702[3] = &unk_691F8;
      v702[4] = &v704;
      v702[5] = frame.var0;
      v702[6] = GlobalOverlay;
      v703 = v11;
      HUDGPUTimeTrackerEnumerateTopCommandBufferRecords(v448, v702);
      _Block_object_dispose(&v704, 8);
    }
  }

  if ((layout & 0x200000) != 0)
  {
    v449 = HUDGPUTimeTrackerGetGlobalInstance(ValueRecord, v155);
    ValueRecord = HUDGPUTimeTrackerTopEncoderRecordsCount(v449);
    if (ValueRecord)
    {
      HUDUIWindowEmptyRow(frame.var0, 6.0);
      v450 = HUDUIWindowBeginRow(frame.var0);
      v451 = *&v450;
      v453 = v452;
      v455 = v454;
      v457 = v456;
      HUDUIAllocString("Top Labeled Encoders", GlobalOverlay, v11, &v704);
      v728 = HUDUIInvalidString;
      v729 = qword_784F8;
      LODWORD(v458) = v457;
      v459 = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -4144960, &v728, -1, v451, v453, v455, v458);
      *&v704 = 0;
      *(&v704 + 1) = &v704;
      v705 = 0x2020000000uLL;
      v461 = HUDGPUTimeTrackerGetGlobalInstance(v459, v460);
      v700[0] = _NSConcreteStackBlock;
      v700[1] = 3221225472;
      v700[2] = __82__HUDUserClientMainWindow_draw_drawableState_fontSize_frame_layout_height_qrCode___block_invoke_2;
      v700[3] = &unk_69220;
      v700[4] = &v704;
      v700[5] = frame.var0;
      v701 = v11;
      v700[6] = GlobalOverlay;
      v700[7] = v14;
      HUDGPUTimeTrackerEnumerateTopEncoderRecords(v461, v700);
      _Block_object_dispose(&v704, 8);
    }
  }

  v691 = 1;
LABEL_155:
  IsInternalInstall = MTLHudIsInternalInstall(ValueRecord, v155);
  if (!IsInternalInstall)
  {
    goto LABEL_171;
  }

  v464 = +[HUDIOReport instance];
  v465 = v464;
  if ((layout & 0x400) != 0 && v464)
  {
    [v464 startSampling:(*(v14 + 13) * 1000000000.0)];
    goto LABEL_161;
  }

  if ((layout & 0x400) != 0)
  {
    if (v464)
    {
LABEL_161:
      HUDUIWindowEmptyRow(frame.var0, 6.0);
      v466 = HUDUIWindowBeginRow(frame.var0);
      v467 = *&v466;
      v469 = v468;
      v471 = v470;
      v473 = v472;
      v722 = 0u;
      v723 = 0u;
      v720 = 0u;
      v721 = 0u;
      v718 = 0u;
      v719 = 0u;
      v716 = 0u;
      v717 = 0u;
      v714 = 0u;
      v715 = 0u;
      v712 = 0u;
      v713 = 0u;
      v710 = 0u;
      v711 = 0u;
      v708 = 0u;
      v709 = 0u;
      v706 = 0u;
      v707 = 0u;
      v704 = 0u;
      v705 = 0u;
      records = [v465 records];
      HUDUILineChartSet(&v704, 0, records, -12463527, 0, "CPU", 3.0, 9999.0, 1.0);
      HUDUILineChartSet(&v704, 1uLL, [v465 records] + 3384, -354547, 0, "GPU", 3.0, 9999.0, 1.0);
      HUDUILineChartSet(&v704, 2uLL, [v465 records] + 5640, -16080897, 0, "ANE", 3.0, 9999.0, 1.0);
      HUDUILineChartSet(&v704, 3uLL, [v465 records] + 4512, -894273, 0, "DRAM", 3.0, 9999.0, 1.0);
      HUDUILineChartSet(&v704, 4uLL, [v465 records] + 6768, -9924948, 0, "Other", 3.0, 9999.0, 1.0);
      v728 = HUDUIInvalidString;
      v729 = qword_784F8;
      LODWORD(v475) = v471;
      HUDUIWindowAddStackedBarGraph(frame.var0, &v728, "W", &v704, v467, v469, v475, v473, v476);
      if ([v465 numGPUPStateRecords])
      {
        v477 = 0;
        v478 = 988;
        do
        {
          gpuPStateRecords = [v465 gpuPStateRecords];
          if (gpuPStateRecords)
          {
            v480 = gpuPStateRecords;
            if (*&gpuPStateRecords[v478] >= 1.0)
            {
              v481 = HUDUIWindowBeginRow(frame.var0);
              v482 = *&v481;
              v484 = v483;
              v486 = v485;
              v488 = v487;
              if (v477)
              {
                v489 = "GPU P%d";
              }

              else
              {
                v489 = "GPU Off";
              }

              HUDUIAllocStringWithFormat(GlobalOverlay, v11, v489, &v704, v477);
              HUDUITemporaryStringWithFormat(frame.var0, v11, "%.2f%%", &v728, *&v480[v478]);
              LODWORD(v490) = v488;
              HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v482, v484, v486, v490);
            }
          }

          ++v477;
          v478 += 1128;
        }

        while ([v465 numGPUPStateRecords] > v477);
      }

      goto LABEL_170;
    }

    v704 = 0uLL;
    *&v705 = 0;
    HUDUIWrappedTemporaryString("Energy report unavailable due to insufficient permission", frame.var0, v11, &v704, HIDWORD(v730), 100.0);
    LODWORD(v726) = 0;
    LODWORD(v724) = 0;
    v728 = v704;
    v729 = v705;
    HUDUIWindowGetLabelSize(frame.var0, &v728, &v726, &v724);
    v662 = HUDUIWindowBeginRow(frame.var0);
    v728 = v704;
    v729 = v705;
    HUDUIWindowAddLabelInRect(frame.var0, &v728, -16080897, 0, 0, *&v662, v663, v664, v665);
  }

LABEL_170:

  v17 = v693;
  v14 = v695;
LABEL_171:
  if (draw->isMainLayer)
  {
    v491 = +[_CADeveloperHUDProperties instance];
    mainWindow = [v491 mainWindow];

    if (*(v14 + 9))
    {
      v495 = 1;
      if ((layout & 0x80000000) == 0)
      {
        goto LABEL_177;
      }
    }

    else
    {
      v495 = MTLHudIsInternalInstall(v493, v494) ^ 1;
      if ((layout & 0x80000000) == 0)
      {
LABEL_177:

        goto LABEL_178;
      }
    }

    v697[0] = _NSConcreteStackBlock;
    v697[1] = 3221225472;
    v697[2] = __82__HUDUserClientMainWindow_draw_drawableState_fontSize_frame_layout_height_qrCode___block_invoke_3;
    v697[3] = &unk_69260;
    v699 = v495;
    v697[4] = self;
    v697[5] = frame.var0;
    v697[6] = v14;
    v697[7] = GlobalOverlay;
    v698 = v11;
    v697[8] = draw;
    [mainWindow requestMetrics:v697];
    goto LABEL_177;
  }

LABEL_178:
  v496 = v691;
  if ((v691 & *(v14 + 3)) == 1 && *(v14 + 7) == 1)
  {
    IsInternalInstall = MTLHudIsInternalInstall(IsInternalInstall, v463);
    if (IsInternalInstall)
    {
      HUDUIWindowEmptyRow(frame.var0, 6.0);
      v497 = HUDUIWindowBeginRow(frame.var0);
      v498 = *&v497;
      v500 = v499;
      v502 = v501;
      v504 = v503;
      HUDUIAllocString("Insights", GlobalOverlay, v11, &v704);
      v728 = HUDUIInvalidString;
      v729 = qword_784F8;
      LODWORD(v505) = v504;
      v506 = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -4144960, &v728, -1, v498, v500, v502, v505);
      for (k = 0; k != 4; ++k)
      {
        v509 = HUDGPUTimeTrackerGetGlobalInstance(v506, v507);
        v510 = dword_54B10[k];
        v506 = HUDGPUTimeTrackerGetValueRecord(v509, dword_54B10[k]);
        if (v506)
        {
          v511 = v506;
          v512 = HUDUIWindowBeginRow(frame.var0);
          v513 = *&v512;
          v515 = v514;
          v517 = v516;
          v519 = v518;
          v521 = HUDGPUTimeTrackerGetRecordName(v510, v520);
          HUDUIAllocString(v521, GlobalOverlay, v11, &v704);
          HUDUITemporaryStringWithFormat(frame.var0, v11, "%d", &v728, *(v511 + 1028));
          LODWORD(v522) = v519;
          v506 = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v513, v515, v517, v522);
        }
      }

      v523 = +[_CADeveloperHUDProperties instance];
      mainWindow2 = [v523 mainWindow];

      v525 = 0;
      v526 = 1;
      do
      {
        v527 = v526;
        v528 = [mainWindow2 getMetric:*(&draw_drawableState_fontSize_frame_layout_height_qrCode__gptkInsightMetrics + v525)];
        if (v528)
        {
          v529 = HUDUIWindowBeginRow(frame.var0);
          v530 = *&v529;
          v532 = v531;
          v534 = v533;
          v536 = v535;
          displayName = [v528 displayName];
          intValue = [v528 intValue];
          HUDUITemporaryStringWithFormat(frame.var0, v11, "%d", &v728, intValue);
          LODWORD(v539) = v536;
          HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v530, v532, v534, v539);
        }

        v526 = 0;
        v525 = 1;
      }

      while ((v527 & 1) != 0);

      v17 = v693;
      v496 = v691;
    }
  }

  if ((v496 & v14[5]) == 1 && MTLHudIsInternalInstall(IsInternalInstall, v463))
  {
    HUDUIWindowEmptyRow(frame.var0, 6.0);
    v540 = HUDUIWindowBeginRow(frame.var0);
    v541 = *&v540;
    v543 = v542;
    v545 = v544;
    v547 = v546;
    HUDUIAllocString("HUD", GlobalOverlay, v11, &v704);
    v728 = HUDUIInvalidString;
    v729 = qword_784F8;
    LODWORD(v548) = v547;
    v549 = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -4144960, &v728, -1, v541, v543, v545, v548);
    v551 = 0;
    v552 = 1;
    do
    {
      v553 = v552;
      v554 = HUDGPUTimeTrackerGetGlobalInstance(v549, v550);
      v555 = *(&unk_54AA8 + v551);
      v549 = HUDGPUTimeTrackerGetValueRecord(v554, *(&unk_54AA8 + v551));
      if (v549)
      {
        v556 = v549;
        v557 = HUDUIWindowBeginRow(frame.var0);
        v558 = *&v557;
        v560 = v559;
        v562 = v561;
        v564 = v563;
        v566 = HUDGPUTimeTrackerGetRecordName(v555, v565);
        HUDUIAllocString(v566, GlobalOverlay, v11, &v704);
        HUDUITemporaryFormattedTime(frame.var0, v11, "", *(v556 + 988), 3, &v728);
        LODWORD(v567) = v564;
        v549 = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v558, v560, v562, v567);
      }

      v552 = 0;
      v551 = 1;
    }

    while ((v553 & 1) != 0);
    v568 = +[HUDMTLLayerTracking mainTracker];
    view = [v568 view];
    v570 = [view description];

    if (v570)
    {
      v571 = HUDUIWindowBeginRow(frame.var0);
      v572 = *&v571;
      v574 = v573;
      v576 = v575;
      v578 = v577;
      HUDUIAllocString("View", GlobalOverlay, v11, &v704);
      HUDUIAllocString([v570 UTF8String], GlobalOverlay, v11, &v728);
      LODWORD(v579) = v578;
      HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v572, v574, v576, v579);
    }

    v580 = HUDUIWindowBeginRow(frame.var0);
    v581 = *&v580;
    v583 = v582;
    v585 = v584;
    v587 = v586;
    v588 = +[HUDMTLLayerTracking mainTracker];
    [v588 safeAreaInsets];
    v590 = v589;
    v592 = v591;

    HUDUIAllocString("Safe Inset XY", GlobalOverlay, v11, &v704);
    HUDUITemporaryStringWithFormat(frame.var0, v11, "%dx%d", &v728, v590, v592);
    LODWORD(v593) = v587;
    HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v581, v583, v585, v593);
    v594 = HUDUIWindowBeginRow(frame.var0);
    v595 = *&v594;
    v597 = v596;
    v599 = v598;
    v601 = v600;
    HUDUIAllocString("HUD WH", GlobalOverlay, v11, &v704);
    *&v590 = HIDWORD(v730);
    v602 = (HUDUIFrameGetScale(frame.var0) * *&v590);
    *&v590 = v730;
    Scale = HUDUIFrameGetScale(frame.var0);
    HUDUITemporaryStringWithFormat(frame.var0, v11, "%dx%dx%.2f", &v728, v602, (Scale * *&v590), *(v14 + 11));
    LODWORD(v604) = v601;
    HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v595, v597, v599, v604);
    v605 = HUDUIWindowBeginRow(frame.var0);
    v606 = *&v605;
    v608 = v607;
    v610 = v609;
    v612 = v611;
    HUDUIAllocString("Pixel Format", GlobalOverlay, v11, &v704);
    v614 = HUDMTLPixelFormatName(draw->pixelFormat, v613);
    HUDUITemporaryStringWithFormat(frame.var0, v11, "%s:%d", &v728, v614, draw->wantsExtendedDynamicRangeContent);
    LODWORD(v615) = v612;
    v616 = HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v606, v608, v610, v615);
    v618 = HUDGetInternalPerfMetrics(v616, v617);
    v17 = v693;
    if (v618)
    {
      v619 = v618;
      v620 = (v618 + 988);
      if (*(v618 + 2124) > 0.0001)
      {
        v621 = HUDUIWindowBeginRow(frame.var0);
        v622 = *&v621;
        v624 = v623;
        v626 = v625;
        v628 = v627;
        HUDUIAllocString("HUD Render CPU", GlobalOverlay, v11, &v704);
        HUDUITemporaryFormattedTime(frame.var0, v11, "", v620[142], 3, &v728);
        LODWORD(v629) = v628;
        HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v622, v624, v626, v629);
      }

      if (v620[284] > 0.0001)
      {
        v630 = HUDUIWindowBeginRow(frame.var0);
        v631 = *&v630;
        v633 = v632;
        v635 = v634;
        v637 = v636;
        HUDUIAllocString("HUD Tracker CPU", GlobalOverlay, v11, &v704);
        HUDUITemporaryFormattedTime(frame.var0, v11, "", v620[284], 3, &v728);
        LODWORD(v638) = v637;
        HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v631, v633, v635, v638);
      }

      if (*v620 > 0.0001)
      {
        v639 = HUDUIWindowBeginRow(frame.var0);
        v640 = *&v639;
        v642 = v641;
        v644 = v643;
        v646 = v645;
        HUDUIAllocString("HUD Present CPU", GlobalOverlay, v11, &v704);
        HUDUITemporaryFormattedTime(frame.var0, v11, "", *v620, 3, &v728);
        LODWORD(v647) = v646;
        HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v640, v642, v644, v647);
      }

      if (*(v619 + 5532) > 0.0001)
      {
        v648 = HUDUIWindowBeginRow(frame.var0);
        v649 = *&v648;
        v651 = v650;
        v653 = v652;
        v655 = v654;
        HUDUIAllocString("HUD Logging CPU", GlobalOverlay, v11, &v704);
        HUDUITemporaryFormattedTime(frame.var0, v11, "", *(v619 + 5532), 3, &v728);
        LODWORD(v656) = v655;
        HUDUIWindowAddLabelKeyValuePair(frame.var0, &v704, -1, &v728, -1, v649, v651, v653, v656);
      }
    }
  }

  if ((layoutCopy & 0x4000) != 0)
  {
    HUDUIWindowEmptyRow(frame.var0, 6.0);
    LODWORD(v704) = 0;
    LODWORD(v728) = 0;
    HUDUIFrameGetSizeInPoints(frame.var0, &v704, &v728);
    v657 = v704 - 12;
    if ((v704 - 12) >= 0x60)
    {
      v657 = 96;
    }

    v658 = v657;
    v659 = HUDUIWindowBeginRow(frame.var0);
    HUDUIWindowSetQRCode(frame.var0, codeCopy, *&v659, v660, v658, v661);
  }

  HUDUIWindowEmptyRow(frame.var0, 6.0);
  *height = HUDUIWindowCurrentHeight(frame.var0);
  HUDUIFrameEndWindow(frame.var0);
}

uint64_t __82__HUDUserClientMainWindow_draw_drawableState_fontSize_frame_layout_height_qrCode___block_invoke(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(*(*(result + 32) + 8) + 24) <= 2uLL)
  {
    v35 = v11;
    v36 = v10;
    v37 = v9;
    v38 = v8;
    v39 = v7;
    v40 = v6;
    v41 = v4;
    v42 = v5;
    v12 = result;
    v13 = (a4 + 988);
    _HUDTopObjectTempLabel(a2);
    v14 = HUDUIWindowBeginRow(*(v12 + 40));
    v15 = *&v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    HUDUIAllocStringWithFormat(*(v12 + 48), *(v12 + 56), "%s CPU", &v34, &_HUDTopObjectTempLabel_buf);
    HUDUITemporaryFormattedTime(*(v12 + 40), *(v12 + 56), "", *v13, 0, &v33);
    LODWORD(v22) = v21;
    HUDUIWindowAddLabelKeyValuePair(*(v12 + 40), &v34, -1, &v33, -1, v15, v17, v19, v22);
    v23 = HUDUIWindowBeginRow(*(v12 + 40));
    v24 = *&v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = strlen(&_HUDTopObjectTempLabel_buf);
    HUDUIAllocStringWithFormat(*(v12 + 48), *(v12 + 56), "%*s GPU", &v34, v31, "");
    HUDUITemporaryFormattedTime(*(v12 + 40), *(v12 + 56), "", v13[141], 0, &v33);
    LODWORD(v32) = v30;
    result = HUDUIWindowAddLabelKeyValuePair(*(v12 + 40), &v34, -1, &v33, -1, v24, v26, v28, v32);
    ++*(*(*(v12 + 32) + 8) + 24);
  }

  return result;
}

uint64_t __82__HUDUserClientMainWindow_draw_drawableState_fontSize_frame_layout_height_qrCode___block_invoke_2(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(*(*(result + 32) + 8) + 24) <= 2uLL)
  {
    v35 = v11;
    v36 = v10;
    v37 = v9;
    v38 = v8;
    v39 = v7;
    v40 = v6;
    v41 = v4;
    v42 = v5;
    v12 = result;
    v13 = (a4 + 988);
    _HUDTopObjectTempLabel(a2);
    v14 = HUDUIWindowBeginRow(*(v12 + 40));
    v15 = *&v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    HUDUIAllocStringWithFormat(*(v12 + 48), *(v12 + 64), "%s CPU", &v34, &_HUDTopObjectTempLabel_buf);
    HUDUITemporaryFormattedTime(*(v12 + 40), *(v12 + 64), "", *v13, 0, &v33);
    LODWORD(v22) = v21;
    result = HUDUIWindowAddLabelKeyValuePair(*(v12 + 40), &v34, -1, &v33, -1, v15, v17, v19, v22);
    if (*(*(v12 + 56) + 4) == 1)
    {
      v23 = HUDUIWindowBeginRow(*(v12 + 40));
      v24 = *&v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v31 = strlen(&_HUDTopObjectTempLabel_buf);
      HUDUIAllocStringWithFormat(*(v12 + 48), *(v12 + 64), "%*s GPU", &v34, v31, "");
      HUDUITemporaryFormattedTime(*(v12 + 40), *(v12 + 64), "", v13[141], 0, &v33);
      LODWORD(v32) = v30;
      result = HUDUIWindowAddLabelKeyValuePair(*(v12 + 40), &v34, -1, &v33, -1, v24, v26, v28, v32);
    }

    ++*(*(*(v12 + 32) + 8) + 24);
  }

  return result;
}

void __82__HUDUserClientMainWindow_draw_drawableState_fontSize_frame_layout_height_qrCode___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = HUDCurrentTimeInNs();
  v5 = 0;
  v6 = &IOReportChannelGetChannelID_ptr;
  v135 = v4;
  v136 = v3;
  do
  {
    v7 = [v6[293] numberWithUnsignedInt:kHUDColorAttributeName_block_invoke_cats[v5]];
    v8 = [v3 objectForKeyedSubscript:v7];

    if ([v8 enabled])
    {
      v9 = [v8 metrics];
      v10 = [v9 count];

      if (v10)
      {
        HUDUIWindowEmptyRow(*(a1 + 40), 6.0);
        v11 = HUDUIWindowBeginRow(*(a1 + 40));
        v12 = *&v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v137 = kHUDColorAttributeName_block_invoke_catNames[v5];
        v138 = 0uLL;
        v139 = 0;
        memset(v146, 0, sizeof(v146));
        v19 = [v8 metrics];
        v20 = [v19 count];

        if (v20)
        {
          v21 = 0;
          v22 = 0;
          do
          {
            v23 = [v8 metrics];
            v24 = [v23 objectAtIndexedSubscript:v21];

            if ([v24 enabled])
            {
              v25 = [v24 descriptor];
              if (v25[4] != 2)
              {
                v26 = v25[6];
                if ((v26 & 2) == 0 || (*(a1 + 76) & 1) == 0)
                {
                  if ((v26 & 8) != 0)
                  {
                    [v24 setTimedOut:{(*(*(a1 + 48) + 136) * 1000000000.0) < (v4 - objc_msgSend(v24, "lastUpdateTime"))}];
                  }

                  if (([v24 timedOut] & 1) == 0)
                  {
                    *(v146 + v21) = 1;
                    ++v22;
                  }
                }
              }
            }

            ++v21;
            v27 = [v8 metrics];
            v28 = [v27 count];

            v31 = 64;
            if (v28 < 0x40)
            {
              v31 = v28;
            }
          }

          while (v31 > v21);
          if (v22)
          {
            if (HUDMTLOverlayIsInGPTK(v29, v30) && !*(*(a1 + 32) + 56))
            {
              v32 = [NSBundle bundleWithIdentifier:@"com.apple.D3DMetal"];
              v33 = [v32 infoDictionary];
              v34 = [v33 objectForKeyedSubscript:@"CFBundleVersion"];
              v35 = *(a1 + 32);
              v36 = *(v35 + 56);
              *(v35 + 56) = v34;
            }

            if (v5 == 1 && *(*(a1 + 32) + 56))
            {
              HUDUIAllocStringWithFormat(*(a1 + 56), *(a1 + 72), "%s %s", &v138, -[__CFString UTF8String](v137, "UTF8String"), [*(*(a1 + 32) + 56) UTF8String]);
            }

            else
            {
              HUDUIAllocString([(__CFString *)v137 UTF8String], *(a1 + 56), *(a1 + 72), &v144);
              v138 = v144;
              v139 = v145;
            }

            v38 = *(a1 + 40);
            v144 = v138;
            v145 = v139;
            v142 = HUDUIInvalidString;
            v143 = qword_784F8;
            LODWORD(v37) = v18;
            HUDUIWindowAddLabelKeyValuePair(v38, &v144, -4144960, &v142, -1, v12, v14, v16, v37);
            v39 = [v8 metrics];
            v40 = [v39 count];

            if (v40)
            {
              v43 = 0;
              while (!*(v146 + v43))
              {
LABEL_66:
                ++v43;
                v106 = [v8 metrics];
                v107 = [v106 count];

                v108 = 64;
                if (v107 < 0x40)
                {
                  v108 = v107;
                }

                if (v108 <= v43)
                {
                  goto LABEL_69;
                }
              }

              v44 = [v8 metrics];
              v45 = [v44 objectAtIndexedSubscript:v43];

              v46 = *(a1 + 72);
              v47 = *(a1 + 48);
              v48 = *(a1 + 56);
              v49 = *(a1 + 40);
              v50 = v45;
              v51 = [v50 descriptor];
              if (!v51[14] && !MTLHudIsInternalInstall(v51, v52))
              {
                goto LABEL_65;
              }

              v144 = HUDUIInvalidString;
              v145 = qword_784F8;
              v53 = [v50 metricType];
              if (v53 == 2)
              {
                v58 = [v50 stringValue];
                HUDUITemporaryStringn(v49, v46, [v58 UTF8String], objc_msgSend(v58, "length"), &v144);

                goto LABEL_46;
              }

              if (v53 != 1)
              {
                if (v53)
                {
                  goto LABEL_46;
                }

                if (*([v50 record] + 988) != 0.0 || *(v47 + 6) == 1)
                {
                  if ((*([v50 descriptor] + 48) & 4) != 0)
                  {
                    v55 = *([v50 record] + 988);
                  }

                  else
                  {
                    v55 = [v50 intValue];
                  }

                  v54 = HUDUITemporaryStringWithFormat(v49, v46, "%d%s", &v144, v55, [*(objc_msgSend(v50 "descriptor") + 2)]);
                  goto LABEL_46;
                }

LABEL_65:

                goto LABEL_66;
              }

              if (*([v50 record] + 988) == 0.0 && *(v47 + 6) != 1)
              {
                goto LABEL_65;
              }

              if ((*([v50 descriptor] + 48) & 4) != 0)
              {
                v57 = *([v50 record] + 988);
              }

              else
              {
                [v50 floatValue];
                v57 = v56;
              }

              v54 = HUDUITemporaryStringWithFormat(v49, v46, "%.2f%s", &v144, v57, [*(objc_msgSend(v50 "descriptor") + 2)]);
LABEL_46:
              v59 = *([v50 descriptor] + 14);
              if (v59 > 2047)
              {
                if (v59 != 2048)
                {
                  if (v59 == 0x2000)
                  {
                    goto LABEL_57;
                  }

                  if (v59 != 4096)
                  {
                    goto LABEL_65;
                  }
                }
              }

              else if ((v59 - 1) >= 2)
              {
                if (v59 != 3)
                {
                  goto LABEL_65;
                }

LABEL_57:
                if ([v50 metricType] && objc_msgSend(v50, "metricType") != 1)
                {
                  v95 = HUDUIWindowBeginRow(v49);
                  v96 = *&v95;
                  v98 = v97;
                  v100 = v99;
                  v102 = v101;
                  v68 = [v50 displayName];
                  v103 = *([v50 descriptor] + 6);
                  v104 = *([v50 descriptor] + 7);
                  v140 = v144;
                  v141 = v145;
                  LODWORD(v105) = v102;
                  HUDUIWindowAddLabelKeyValuePair(v49, &v142, v103, &v140, v104, v96, v98, v100, v105);
                }

                else
                {
                  v80 = HUDUIWindowBeginRow(v49);
                  v81 = *&v80;
                  v83 = v82;
                  v85 = v84;
                  v87 = v86;
                  v68 = [v50 displayName];
                  if ((*([v50 descriptor] + 48) & 4) != 0)
                  {
                    v88 = *([v50 record] + 988);
                  }

                  else
                  {
                    [v50 floatValue];
                  }

                  v89 = v88;
                  [v50 minValueForLastSampleCountSamples];
                  v91 = v90;
                  [v50 maxValueForLastSampleCountSamples];
                  *&v93 = v92;
                  *&v94 = v91;
                  HUDUIWindowAddStats(v49, v46, &v142, v89, v94, v93, v81, v83, v85, v87, "", -1);
                }

LABEL_64:

                goto LABEL_65;
              }

              v60 = HUDUIWindowBeginRow(v49);
              v61 = *&v60;
              v63 = v62;
              v65 = v64;
              v67 = v66;
              v68 = [v50 displayName];
              v69 = *([v50 descriptor] + 6);
              v70 = *([v50 descriptor] + 7);
              v140 = v144;
              v141 = v145;
              LODWORD(v71) = v67;
              HUDUIWindowAddLabelKeyValuePair(v49, &v142, v69, &v140, v70, v61, v63, v65, v71);
              if (*([v50 descriptor] + 14) == 2 && (!objc_msgSend(v50, "metricType") || objc_msgSend(v50, "metricType") == 1))
              {
                v72 = [v50 record];
                [v50 descriptor];
                v73 = HUDUIWindowBeginRow(v49);
                v74.n128_u32[0] = LODWORD(v73);
                v75.n128_u64[0] = *(v72 + 980);
                HUDUIWindowAddGraph(v49, v72, 120, *(v72 + 240), 4294612749, 0, 0, 0.0, v75.n128_f64[0], 2.0, 9999.0, 1.0, v74, v75, v79, v74.n128_f32[0], v76, v77, v78);
              }

              goto LABEL_64;
            }

LABEL_69:
            if (!v5 && *(*(a1 + 48) + 12) == 1)
            {
              v109 = HUDUIWindowBeginRow(*(a1 + 40));
              v110 = *&v109;
              v112 = v111;
              v114 = v113;
              v116 = v115;
              HUDUIAllocString("Render FPS", *(a1 + 56), *(a1 + 72), &v144);
              HUDUITemporaryStringWithFormat(*(a1 + 40), *(a1 + 72), "%.2f", &v142, 1000000000.0 / *(*(a1 + 64) + 5628));
              LODWORD(v117) = v116;
              v41 = HUDUIWindowAddLabelKeyValuePair(*(a1 + 40), &v144, -1, &v142, -1, v110, v112, v114, v117);
            }

            IsInternalInstall = MTLHudIsInternalInstall(v41, v42);
            v4 = v135;
            v3 = v136;
            if (IsInternalInstall)
            {
              if (!v5 && (*(a1 + 76) & 1) == 0 && *(*(a1 + 48) + 11) == 1)
              {
                GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance(IsInternalInstall, v119);
                ValueRecord = HUDGPUTimeTrackerGetValueRecord(GlobalInstance, 0x30u);
                if (ValueRecord)
                {
                  v122 = ValueRecord;
                  v123 = HUDUIWindowBeginRow(*(a1 + 40));
                  v124 = *&v123;
                  v126 = v125;
                  v128 = v127;
                  v130 = v129;
                  v131 = *(a1 + 72);
                  RecordName = HUDGPUTimeTrackerGetRecordName(48, v132);
                  HUDUIAllocStringWithFormat(*(a1 + 56), v131, "* %s", &v144, RecordName);
                  HUDUITemporaryFormattedTime(*(a1 + 40), *(a1 + 72), "", *(v122 + 988), 3, &v142);
                  LODWORD(v134) = v130;
                  HUDUIWindowAddLabelKeyValuePair(*(a1 + 40), &v144, -1, &v142, -1, v124, v126, v128, v134);
                }
              }
            }
          }
        }

        v6 = &IOReportChannelGetChannelID_ptr;
      }
    }

    ++v5;
  }

  while (v5 != 3);
}

@end