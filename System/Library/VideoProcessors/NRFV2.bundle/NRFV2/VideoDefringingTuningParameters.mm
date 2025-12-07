@interface VideoDefringingTuningParameters
+ ($6B6A6628744B4DF06B73A717F4EE0DD2)defaultRadialParams:(SEL)params;
+ ($B5339CD3011AE9733252D32A415F0BF1)defaultCorrectionParams:(SEL)params;
+ ($E2C29196C7A5C696474C6955C5A9CE06)defaultLUTParams:(unint64_t)params;
+ (BOOL)_validateTuning:(id)tuning mode:(unint64_t)mode parameterKey:(id)key;
+ (id)defaultTuningDictionary;
- ($6B6A6628744B4DF06B73A717F4EE0DD2)radialParams;
- ($B5339CD3011AE9733252D32A415F0BF1)correctionParams;
- ($E2C29196C7A5C696474C6955C5A9CE06)desaturationParams;
- (VideoDefringingTuningParameters)initWithTuningParameters:(id)parameters;
- (int)_parseCorrectionTuning:(id)tuning;
- (int)_parseDesaturateTuning:(id)tuning;
- (int)_parseRadialTuning:(id)tuning;
- (int)selectParametersForTuningMode:(unint64_t)mode;
- (void)setDefaults;
- (void)setMetadataGain:(float)gain exposureTime:(float)time AWBRGain:(float)rGain AWBBGain:(float)bGain;
- (void)setRadialParamsForWidth:(unint64_t)width height:(unint64_t)height;
@end

@implementation VideoDefringingTuningParameters

+ ($6B6A6628744B4DF06B73A717F4EE0DD2)defaultRadialParams:(SEL)params
{
  *retstr = *ymmword_2959D61D0;
  retstr[1] = *ymmword_2959D61F0;
  return result;
}

+ ($E2C29196C7A5C696474C6955C5A9CE06)defaultLUTParams:(unint64_t)params
{
  v3 = 0.8;
  v4 = 0.4;
  v5 = 0.5;
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

+ ($B5339CD3011AE9733252D32A415F0BF1)defaultCorrectionParams:(SEL)params
{
  if (!a4)
  {
    *&retstr->var54 = 0;
    v4 = "fff?";
    goto LABEL_5;
  }

  if (a4 == 2)
  {
    *&retstr->var54 = 0;
    v4 = &xmmword_2959D6210;
LABEL_5:
    v5 = v4[11];
    *&retstr->var38 = v4[10];
    *&retstr->var42 = v5;
    v6 = v4[13];
    *&retstr->var46 = v4[12];
    *&retstr->var50 = v6;
    v7 = v4[7];
    *&retstr->var22 = v4[6];
    *&retstr->var26 = v7;
    v8 = v4[9];
    *&retstr->var30 = v4[8];
    *&retstr->var34 = v8;
    v9 = v4[3];
    *&retstr->var6[2] = v4[2];
    *&retstr->var10 = v9;
    v10 = v4[5];
    *&retstr->var14 = v4[4];
    *&retstr->var18 = v10;
    v11 = v4[1];
    *&retstr->var0 = *v4;
    *&retstr->var4 = v11;
    return result;
  }

  *&retstr->var54 = 0;
  *&retstr->var46 = 0u;
  *&retstr->var50 = 0u;
  *&retstr->var38 = 0u;
  *&retstr->var42 = 0u;
  *&retstr->var30 = 0u;
  *&retstr->var34 = 0u;
  *&retstr->var22 = 0u;
  *&retstr->var26 = 0u;
  *&retstr->var14 = 0u;
  *&retstr->var18 = 0u;
  *&retstr->var6[2] = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var4 = 0u;
  return result;
}

+ (id)defaultTuningDictionary
{
  if (qword_2A18C2248 != -1)
  {
    sub_2958BC5AC();
  }

  v3 = qword_2A18C2250;

  return v3;
}

- (VideoDefringingTuningParameters)initWithTuningParameters:(id)parameters
{
  parametersCopy = parameters;
  v13.receiver = self;
  v13.super_class = VideoDefringingTuningParameters;
  v8 = [(VideoDefringingTuningParameters *)&v13 init];
  if (v8 && (!parametersCopy ? (objc_msgSend_defaultTuningDictionary(VideoDefringingTuningParameters, v5, v6, v7), v9 = objc_claimAutoreleasedReturnValue()) : (v9 = parametersCopy), tuningParameters = v8->_tuningParameters, v8->_tuningParameters = v9, tuningParameters, !v8->_tuningParameters))
  {
    sub_2958BC5C0();
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  return v11;
}

+ (BOOL)_validateTuning:(id)tuning mode:(unint64_t)mode parameterKey:(id)key
{
  tuningCopy = tuning;
  keyCopy = key;
  if (!tuningCopy)
  {
    sub_2958BC734();
    v14 = 0;
LABEL_19:
    v26 = 0;
    goto LABEL_20;
  }

  v14 = objc_msgSend__tuningHeaderForMode_(VideoDefringingTuningParameters, v8, mode, v9);
  if (!v14)
  {
    sub_2958BC6B8();
    goto LABEL_19;
  }

  v15 = objc_msgSend_defaultTuningDictionary(VideoDefringingTuningParameters, v11, v12, v13);
  v18 = objc_msgSend_objectForKeyedSubscript_(v15, v16, v14, v17);
  v21 = objc_msgSend_objectForKeyedSubscript_(v18, v19, keyCopy, v20);
  v25 = objc_msgSend_allKeys(v21, v22, v23, v24);

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v26 = v25;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v38, v37, 16);
  if (v28)
  {
    v31 = v28;
    LODWORD(v32) = 0;
    v33 = *v39;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v39 != v33)
        {
          objc_enumerationMutation(v26);
        }

        v35 = objc_msgSend_objectForKeyedSubscript_(tuningCopy, v29, *(*(&v38 + 1) + 8 * i), v30);

        if (v35)
        {
          v32 = v32;
        }

        else
        {
          v32 = 4294954516;
        }
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v38, v37, 16);
    }

    while (v31);

    if (v32)
    {
      sub_2958BC63C(v32);
LABEL_20:
      LOBYTE(v32) = 1;
    }
  }

  else
  {

    LOBYTE(v32) = 0;
  }

  return v32;
}

- (int)_parseDesaturateTuning:(id)tuning
{
  v6 = objc_msgSend_objectForKeyedSubscript_(tuning, a2, @"DesaturateParameters", v3);
  if (objc_msgSend__validateTuning_mode_parameterKey_(VideoDefringingTuningParameters, v7, v6, self->_mode, @"DesaturateParameters"))
  {
    sub_2958BC7B0();
    goto LABEL_5;
  }

  if (self->_mode > 2)
  {
    fig_log_get_emitter();
    v31 = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v31, v4, v32, v33, v34, v35, vars0, vars8);
LABEL_5:
    v29 = -12780;
    goto LABEL_6;
  }

  v10 = objc_msgSend_objectForKeyedSubscript_(v6, v8, @"Amount", v9);
  objc_msgSend_floatValue(v10, v11, v12, v13);
  self->_desaturationParams.amount = v14;

  v17 = objc_msgSend_objectForKeyedSubscript_(v6, v15, @"Angle", v16);
  objc_msgSend_floatValue(v17, v18, v19, v20);
  self->_desaturationParams.angle = v21;

  v24 = objc_msgSend_objectForKeyedSubscript_(v6, v22, @"Cutoff", v23);
  objc_msgSend_floatValue(v24, v25, v26, v27);
  self->_desaturationParams.cutoff = v28;

  v29 = 0;
LABEL_6:

  return v29;
}

- (int)_parseRadialTuning:(id)tuning
{
  v6 = objc_msgSend_objectForKeyedSubscript_(tuning, a2, @"RadialParameters", v3);
  if (objc_msgSend__validateTuning_mode_parameterKey_(VideoDefringingTuningParameters, v7, v6, self->_mode, @"RadialParameters"))
  {
    sub_2958BC830();
    goto LABEL_5;
  }

  if (self->_mode > 2)
  {
    fig_log_get_emitter();
    v45 = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v45, v4, v46, v47, v48, v49, vars0, vars8);
LABEL_5:
    v43 = -12780;
    goto LABEL_6;
  }

  v10 = objc_msgSend_objectForKeyedSubscript_(v6, v8, @"a0", v9);
  objc_msgSend_floatValue(v10, v11, v12, v13);
  self->_radialParams.a0 = v14;

  v17 = objc_msgSend_objectForKeyedSubscript_(v6, v15, @"self", v16);
  objc_msgSend_floatValue(v17, v18, v19, v20);
  self->_radialParams.self = v21;

  v24 = objc_msgSend_objectForKeyedSubscript_(v6, v22, @"a2", v23);
  objc_msgSend_floatValue(v24, v25, v26, v27);
  self->_radialParams.a2 = v28;

  v31 = objc_msgSend_objectForKeyedSubscript_(v6, v29, @"tuning", v30);
  objc_msgSend_floatValue(v31, v32, v33, v34);
  self->_radialParams.tuning = v35;

  *self->_anon_40 = self->_radialParams;
  v38 = objc_msgSend_objectForKeyedSubscript_(v6, v36, @"MinCoefficient", v37);
  objc_msgSend_floatValue(v38, v39, v40, v41);
  *&self->_anon_40[36] = v42;

  v43 = 0;
LABEL_6:

  return v43;
}

- (int)_parseCorrectionTuning:(id)tuning
{
  v6 = objc_msgSend_objectForKeyedSubscript_(tuning, a2, @"CorrectionParameters", v3);
  v8 = objc_msgSend__validateTuning_mode_parameterKey_(VideoDefringingTuningParameters, v7, v6, self->_mode, @"CorrectionParameters");
  v11 = v8;
  if (v8)
  {
    sub_2958BC8B0(v8);
    goto LABEL_10;
  }

  mode = self->_mode;
  if (mode)
  {
    if (mode == 1)
    {
      v11 = 0;
      goto LABEL_16;
    }

    if (mode == 2)
    {
      v13 = objc_msgSend_objectForKeyedSubscript_(v6, v9, @"MaxChroma", v10);
      objc_msgSend_floatValue(v13, v14, v15, v16);
      self->_correctionParams.max_chroma = v17;

      v20 = objc_msgSend_objectForKeyedSubscript_(v6, v18, @"BlueTh0", v19);
      objc_msgSend_floatValue(v20, v21, v22, v23);
      self->_correctionParams.blueTh0 = v24;

      v27 = objc_msgSend_objectForKeyedSubscript_(v6, v25, @"BlueTh1", v26);
      objc_msgSend_floatValue(v27, v28, v29, v30);
      self->_correctionParams.blueTh1 = v31;

      v34 = objc_msgSend_objectForKeyedSubscript_(v6, v32, @"BlueCrTh0", v33);
      objc_msgSend_floatValue(v34, v35, v36, v37);
      self->_correctionParams.blueCrTh0 = v38;

      v41 = objc_msgSend_objectForKeyedSubscript_(v6, v39, @"ContrastTh0", v40);
      objc_msgSend_floatValue(v41, v42, v43, v44);
      self->_correctionParams.contrastTh0 = v45;

      v48 = objc_msgSend_objectForKeyedSubscript_(v6, v46, @"ContrastTh1", v47);
      objc_msgSend_floatValue(v48, v49, v50, v51);
      self->_correctionParams.contrastTh1 = v52;

      v55 = objc_msgSend_objectForKeyedSubscript_(v6, v53, @"DarknessTh0", v54);
      objc_msgSend_floatValue(v55, v56, v57, v58);
      self->_correctionParams.darknessTh0 = v59;

      v62 = objc_msgSend_objectForKeyedSubscript_(v6, v60, @"DarknessTh1", v61);
      objc_msgSend_floatValue(v62, v63, v64, v65);
      self->_correctionParams.darknessTh1 = v66;

      v69 = objc_msgSend_objectForKeyedSubscript_(v6, v67, @"PbrightnessTh0", v68);
      objc_msgSend_floatValue(v69, v70, v71, v72);
      self->_correctionParams.pbrightnessTh0 = v73;

      v76 = objc_msgSend_objectForKeyedSubscript_(v6, v74, @"PbrightnessTh1", v75);
      objc_msgSend_floatValue(v76, v77, v78, v79);
      self->_correctionParams.pbrightnessTh1 = v80;

      v83 = objc_msgSend_objectForKeyedSubscript_(v6, v81, @"BlueBrightThr0", v82);
      objc_msgSend_floatValue(v83, v84, v85, v86);
      self->_correctionParams.blueBrightThr0 = v87;

      v90 = objc_msgSend_objectForKeyedSubscript_(v6, v88, @"BlueBrightThr1", v89);
      objc_msgSend_floatValue(v90, v91, v92, v93);
      self->_correctionParams.blueBrightThr1 = v94;

      v97 = objc_msgSend_objectForKeyedSubscript_(v6, v95, @"ColorfullThr0", v96);
      objc_msgSend_floatValue(v97, v98, v99, v100);
      self->_correctionParams.colorfullThr0 = v101;

      v104 = objc_msgSend_objectForKeyedSubscript_(v6, v102, @"ColorfullThr1", v103);
      objc_msgSend_floatValue(v104, v105, v106, v107);
      self->_correctionParams.colorfullThr1 = v108;

      v111 = objc_msgSend_objectForKeyedSubscript_(v6, v109, @"ColorfullPThr0", v110);
      objc_msgSend_floatValue(v111, v112, v113, v114);
      self->_correctionParams.colorfull_PThr0 = v115;

      v118 = objc_msgSend_objectForKeyedSubscript_(v6, v116, @"ColorfullPThr1", v117);
      objc_msgSend_floatValue(v118, v119, v120, v121);
      self->_correctionParams.colorfull_PThr1 = v122;

      v125 = objc_msgSend_objectForKeyedSubscript_(v6, v123, @"BlueCrThr0", v124);
      objc_msgSend_floatValue(v125, v126, v127, v128);
      self->_correctionParams.blueCrThr0 = v129;

      v132 = objc_msgSend_objectForKeyedSubscript_(v6, v130, @"BlueCrThr1", v131);
      objc_msgSend_floatValue(v132, v133, v134, v135);
      self->_correctionParams.blueCrThr1 = v136;

      v139 = objc_msgSend_objectForKeyedSubscript_(v6, v137, @"DarkBlueCbThr0", v138);
      objc_msgSend_floatValue(v139, v140, v141, v142);
      self->_correctionParams.darkBlue_CbThr0 = v143;

      v146 = objc_msgSend_objectForKeyedSubscript_(v6, v144, @"DarkBlueCbThr1", v145);
      objc_msgSend_floatValue(v146, v147, v148, v149);
      self->_correctionParams.darkBlue_CbThr1 = v150;

      v153 = objc_msgSend_objectForKeyedSubscript_(v6, v151, @"SkyBlueYThr0", v152);
      objc_msgSend_floatValue(v153, v154, v155, v156);
      self->_correctionParams.skyBlue_YThr0 = v157;

      v160 = objc_msgSend_objectForKeyedSubscript_(v6, v158, @"SkyBlueYThr1", v159);
      objc_msgSend_floatValue(v160, v161, v162, v163);
      self->_correctionParams.skyBlue_YThr1 = v164;

      v167 = objc_msgSend_objectForKeyedSubscript_(v6, v165, @"SkyBlueCbThr0", v166);
      objc_msgSend_floatValue(v167, v168, v169, v170);
      self->_correctionParams.skyBlue_CbThr0 = v171;

      v174 = objc_msgSend_objectForKeyedSubscript_(v6, v172, @"SkyBlueCbThr1", v173);
      objc_msgSend_floatValue(v174, v175, v176, v177);
      self->_correctionParams.skyBlue_CbThr1 = v178;

      v181 = objc_msgSend_objectForKeyedSubscript_(v6, v179, @"SkyBluePThr0", v180);
      objc_msgSend_floatValue(v181, v182, v183, v184);
      self->_correctionParams.skyBlue_PThr0 = v185;

      v188 = objc_msgSend_objectForKeyedSubscript_(v6, v186, @"SkyBluePThr1", v187);
      objc_msgSend_floatValue(v188, v189, v190, v191);
      self->_correctionParams.skyBlue_PThr1 = v192;

      v195 = objc_msgSend_objectForKeyedSubscript_(v6, v193, @"FiltThr", v194);
      objc_msgSend_floatValue(v195, v196, v197, v198);
      self->_correctionParams.filtThr = v199;

      goto LABEL_6;
    }

    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v555, v556, v557, v558, v559, v560);
LABEL_10:
    v11 = -12780;
    goto LABEL_16;
  }

LABEL_6:
  v200 = objc_msgSend_objectForKeyedSubscript_(v6, v9, @"RadialScale", v10);
  objc_msgSend_floatValue(v200, v201, v202, v203);
  self->_correctionParams.radialScale = v204;

  v207 = objc_msgSend_objectForKeyedSubscript_(v6, v205, @"RadialR0", v206);
  objc_msgSend_floatValue(v207, v208, v209, v210);
  self->_correctionParams.radialR0 = v211;

  v214 = objc_msgSend_objectForKeyedSubscript_(v6, v212, @"RadialR1", v213);
  objc_msgSend_floatValue(v214, v215, v216, v217);
  self->_correctionParams.radialR1 = v218;

  v221 = objc_msgSend_objectForKeyedSubscript_(v6, v219, @"RadialF0", v220);
  objc_msgSend_floatValue(v221, v222, v223, v224);
  self->_correctionParams.radialF0 = v225;

  v228 = objc_msgSend_objectForKeyedSubscript_(v6, v226, @"RadialF1", v227);
  objc_msgSend_floatValue(v228, v229, v230, v231);
  self->_correctionParams.radialF1 = v232;

  v235 = objc_msgSend_objectForKeyedSubscript_(v6, v233, @"RadialF2", v234);
  objc_msgSend_floatValue(v235, v236, v237, v238);
  self->_correctionParams.radialF2 = v239;

  v244 = objc_msgSend_objectForKeyedSubscript_(v6, v240, @"RadialFXScaleFactorByQuadraBinningFactor", v241);
  if (v244)
  {
    v245 = objc_msgSend_objectForKeyedSubscript_(v6, v242, @"RadialFXScaleFactorByQuadraBinningFactor", v243);
  }

  else
  {
    v245 = &unk_2A1CC4480;
  }

  if (objc_msgSend_count(v245, v246, v247, v248))
  {
    v251 = 0;
    do
    {
      v252 = objc_msgSend_objectAtIndexedSubscript_(v245, v249, v251, v250);
      objc_msgSend_floatValue(v252, v253, v254, v255);
      self->_correctionParams.radialFXScaleFactorByQuadraBinningFactor[v251] = v256;

      ++v251;
    }

    while (v251 < objc_msgSend_count(v245, v257, v258, v259));
  }

  v262 = objc_msgSend_objectForKeyedSubscript_(v6, v260, @"MaxChroma", v261);
  objc_msgSend_floatValue(v262, v263, v264, v265);
  self->_correctionParams.max_chroma = v266;

  v269 = objc_msgSend_objectForKeyedSubscript_(v6, v267, @"BlueTh0", v268);
  objc_msgSend_floatValue(v269, v270, v271, v272);
  self->_correctionParams.blueTh0 = v273;

  v276 = objc_msgSend_objectForKeyedSubscript_(v6, v274, @"BlueTh1", v275);
  objc_msgSend_floatValue(v276, v277, v278, v279);
  self->_correctionParams.blueTh1 = v280;

  v283 = objc_msgSend_objectForKeyedSubscript_(v6, v281, @"BlueCrTh0", v282);
  objc_msgSend_floatValue(v283, v284, v285, v286);
  self->_correctionParams.blueCrTh0 = v287;

  v290 = objc_msgSend_objectForKeyedSubscript_(v6, v288, @"BrightnessTh0", v289);
  objc_msgSend_floatValue(v290, v291, v292, v293);
  self->_correctionParams.brightnessTh0 = v294;

  v297 = objc_msgSend_objectForKeyedSubscript_(v6, v295, @"BrightnessTh1", v296);
  objc_msgSend_floatValue(v297, v298, v299, v300);
  self->_correctionParams.brightnessTh1 = v301;

  v304 = objc_msgSend_objectForKeyedSubscript_(v6, v302, @"ContrastTh0", v303);
  objc_msgSend_floatValue(v304, v305, v306, v307);
  self->_correctionParams.contrastTh0 = v308;

  v311 = objc_msgSend_objectForKeyedSubscript_(v6, v309, @"ContrastTh1", v310);
  objc_msgSend_floatValue(v311, v312, v313, v314);
  self->_correctionParams.contrastTh1 = v315;

  v318 = objc_msgSend_objectForKeyedSubscript_(v6, v316, @"DarknessTh0", v317);
  objc_msgSend_floatValue(v318, v319, v320, v321);
  self->_correctionParams.darknessTh0 = v322;

  v325 = objc_msgSend_objectForKeyedSubscript_(v6, v323, @"DarknessTh1", v324);
  objc_msgSend_floatValue(v325, v326, v327, v328);
  self->_correctionParams.darknessTh1 = v329;

  v332 = objc_msgSend_objectForKeyedSubscript_(v6, v330, @"LumaKnee", v331);
  objc_msgSend_floatValue(v332, v333, v334, v335);
  self->_correctionParams.luma_knee = v336;

  v339 = objc_msgSend_objectForKeyedSubscript_(v6, v337, @"LumaAmp", v338);
  objc_msgSend_floatValue(v339, v340, v341, v342);
  self->_correctionParams.luma_amp = v343;

  v346 = objc_msgSend_objectForKeyedSubscript_(v6, v344, @"PbrightnessTh0", v345);
  objc_msgSend_floatValue(v346, v347, v348, v349);
  self->_correctionParams.pbrightnessTh0 = v350;

  v353 = objc_msgSend_objectForKeyedSubscript_(v6, v351, @"PbrightnessTh1", v352);
  objc_msgSend_floatValue(v353, v354, v355, v356);
  self->_correctionParams.pbrightnessTh1 = v357;

  v360 = objc_msgSend_objectForKeyedSubscript_(v6, v358, @"BlueBrightThr0", v359);
  objc_msgSend_floatValue(v360, v361, v362, v363);
  self->_correctionParams.blueBrightThr0 = v364;

  v367 = objc_msgSend_objectForKeyedSubscript_(v6, v365, @"BlueBrightThr1", v366);
  objc_msgSend_floatValue(v367, v368, v369, v370);
  self->_correctionParams.blueBrightThr1 = v371;

  v374 = objc_msgSend_objectForKeyedSubscript_(v6, v372, @"ColorfullThr0", v373);
  objc_msgSend_floatValue(v374, v375, v376, v377);
  self->_correctionParams.colorfullThr0 = v378;

  v381 = objc_msgSend_objectForKeyedSubscript_(v6, v379, @"ColorfullThr1", v380);
  objc_msgSend_floatValue(v381, v382, v383, v384);
  self->_correctionParams.colorfullThr1 = v385;

  v388 = objc_msgSend_objectForKeyedSubscript_(v6, v386, @"ColorfullPThr0", v387);
  objc_msgSend_floatValue(v388, v389, v390, v391);
  self->_correctionParams.colorfull_PThr0 = v392;

  v395 = objc_msgSend_objectForKeyedSubscript_(v6, v393, @"ColorfullPThr1", v394);
  objc_msgSend_floatValue(v395, v396, v397, v398);
  self->_correctionParams.colorfull_PThr1 = v399;

  v402 = objc_msgSend_objectForKeyedSubscript_(v6, v400, @"BlueCrThr0", v401);
  objc_msgSend_floatValue(v402, v403, v404, v405);
  self->_correctionParams.blueCrThr0 = v406;

  v409 = objc_msgSend_objectForKeyedSubscript_(v6, v407, @"BlueCrThr1", v408);
  objc_msgSend_floatValue(v409, v410, v411, v412);
  self->_correctionParams.blueCrThr1 = v413;

  v416 = objc_msgSend_objectForKeyedSubscript_(v6, v414, @"DarkAchromThr0", v415);
  objc_msgSend_floatValue(v416, v417, v418, v419);
  self->_correctionParams.darkAchromThr0 = v420;

  v423 = objc_msgSend_objectForKeyedSubscript_(v6, v421, @"DarkAchromThr1", v422);
  objc_msgSend_floatValue(v423, v424, v425, v426);
  self->_correctionParams.darkAchromThr1 = v427;

  v430 = objc_msgSend_objectForKeyedSubscript_(v6, v428, @"DarkAchromCThr", v429);
  objc_msgSend_floatValue(v430, v431, v432, v433);
  self->_correctionParams.darkAchromCThr = v434;

  v437 = objc_msgSend_objectForKeyedSubscript_(v6, v435, @"DarkAchromYThr", v436);
  objc_msgSend_floatValue(v437, v438, v439, v440);
  self->_correctionParams.darkAchromYThr = v441;

  v444 = objc_msgSend_objectForKeyedSubscript_(v6, v442, @"DarkBlueYThr0", v443);
  objc_msgSend_floatValue(v444, v445, v446, v447);
  self->_correctionParams.darkBlue_YThr0 = v448;

  v451 = objc_msgSend_objectForKeyedSubscript_(v6, v449, @"DarkBlueYThr1", v450);
  objc_msgSend_floatValue(v451, v452, v453, v454);
  self->_correctionParams.darkBlue_YThr1 = v455;

  v458 = objc_msgSend_objectForKeyedSubscript_(v6, v456, @"DarkBlueCbThr0", v457);
  objc_msgSend_floatValue(v458, v459, v460, v461);
  self->_correctionParams.darkBlue_CbThr0 = v462;

  v465 = objc_msgSend_objectForKeyedSubscript_(v6, v463, @"DarkBlueCbThr1", v464);
  objc_msgSend_floatValue(v465, v466, v467, v468);
  self->_correctionParams.darkBlue_CbThr1 = v469;

  v472 = objc_msgSend_objectForKeyedSubscript_(v6, v470, @"SkyBlueYThr0", v471);
  objc_msgSend_floatValue(v472, v473, v474, v475);
  self->_correctionParams.skyBlue_YThr0 = v476;

  v479 = objc_msgSend_objectForKeyedSubscript_(v6, v477, @"SkyBlueYThr1", v478);
  objc_msgSend_floatValue(v479, v480, v481, v482);
  self->_correctionParams.skyBlue_YThr1 = v483;

  v486 = objc_msgSend_objectForKeyedSubscript_(v6, v484, @"SkyBlueCbThr0", v485);
  objc_msgSend_floatValue(v486, v487, v488, v489);
  self->_correctionParams.skyBlue_CbThr0 = v490;

  v493 = objc_msgSend_objectForKeyedSubscript_(v6, v491, @"SkyBlueCbThr1", v492);
  objc_msgSend_floatValue(v493, v494, v495, v496);
  self->_correctionParams.skyBlue_CbThr1 = v497;

  v500 = objc_msgSend_objectForKeyedSubscript_(v6, v498, @"SkyBluePThr0", v499);
  objc_msgSend_floatValue(v500, v501, v502, v503);
  self->_correctionParams.skyBlue_PThr0 = v504;

  v507 = objc_msgSend_objectForKeyedSubscript_(v6, v505, @"SkyBluePThr1", v506);
  objc_msgSend_floatValue(v507, v508, v509, v510);
  self->_correctionParams.skyBlue_PThr1 = v511;

  v514 = objc_msgSend_objectForKeyedSubscript_(v6, v512, @"FiltThr", v513);
  objc_msgSend_floatValue(v514, v515, v516, v517);
  self->_correctionParams.filtThr = v518;

  v521 = objc_msgSend_objectForKeyedSubscript_(v6, v519, @"MixFiltLUT", v520);
  objc_msgSend_floatValue(v521, v522, v523, v524);
  self->_correctionParams.mixFiltLUT = v525;

  v528 = objc_msgSend_objectForKeyedSubscript_(v6, v526, @"EITThr0", v527);
  objc_msgSend_floatValue(v528, v529, v530, v531);
  self->_correctionParams.eitThr0 = v532;

  v535 = objc_msgSend_objectForKeyedSubscript_(v6, v533, @"EITThr1", v534);
  objc_msgSend_floatValue(v535, v536, v537, v538);
  self->_correctionParams.eitThr1 = v539;

  v542 = objc_msgSend_objectForKeyedSubscript_(v6, v540, @"AwbRatioThr0", v541);
  objc_msgSend_floatValue(v542, v543, v544, v545);
  self->_correctionParams.awbRatioThr0 = v546;

  v549 = objc_msgSend_objectForKeyedSubscript_(v6, v547, @"AwbRatioThr1", v548);
  objc_msgSend_floatValue(v549, v550, v551, v552);
  self->_correctionParams.awbRatioThr1 = v553;

LABEL_16:
  return v11;
}

- (void)setDefaults
{
  objc_msgSend_defaultLUTParams_(VideoDefringingTuningParameters, a2, self->_mode, v2);
  self->_desaturationParams.amount = v4;
  self->_desaturationParams.angle = v5;
  self->_desaturationParams.cutoff = v6;
  objc_msgSend_defaultCorrectionParams_(VideoDefringingTuningParameters, v7, self->_mode, v8);
  self->_correctionParams = v11;
  objc_msgSend_defaultRadialParams_(VideoDefringingTuningParameters, v9, self->_mode, v10);
  self->_radialParams = *&v11.radialScale;
  *self->_anon_40 = *&v11.radialF1;
  *&self->_anon_40[16] = *&v11.radialFXScaleFactorByQuadraBinningFactor[2];
  *&self->_anon_40[32] = *&v11.blueCrTh0;
}

- (void)setRadialParamsForWidth:(unint64_t)width height:(unint64_t)height
{
  *&self->_anon_40[32] = sqrtf((width * width + height * height)) * 0.5;
  v4.i64[0] = width;
  v4.i64[1] = height;
  *v4.i8 = vmul_f32(vcvt_f32_f64(vcvtq_f64_u64(v4)), 0x3F0000003F000000);
  *&self->_anon_40[16] = v4.i64[0];
  *&self->_anon_40[24] = v4.i64[0];
}

- (void)setMetadataGain:(float)gain exposureTime:(float)time AWBRGain:(float)rGain AWBBGain:(float)bGain
{
  if (bGain < 0.000001)
  {
    bGain = 0.000001;
  }

  v6.f32[0] = rGain / bGain;
  v7.i32[0] = LODWORD(self->_correctionParams.awbRatioThr0);
  v8.i32[0] = LODWORD(self->_correctionParams.awbRatioThr1);
  v6.f32[1] = gain * time;
  v7.i32[1] = LODWORD(self->_correctionParams.eitThr0);
  v8.i32[1] = LODWORD(self->_correctionParams.eitThr1);
  v9 = vdiv_f32(vsub_f32(v6, v7), vsub_f32(v8, v7));
  v10 = vcgtz_f32(v9);
  __asm { FMOV            V3.2S, #1.0 }

  v16 = vcgt_f32(_D3, v9);
  v17 = vbsl_s8(vorn_s8(vmvn_s8(v10), v16), vbic_s8(_D3, vorn_s8(v16, v10)), v9);
  __asm { FMOV            V3.2S, #3.0 }

  v19 = vmul_f32(vmul_f32(v17, v17), vmla_f32(_D3, 0xC0000000C0000000, v17));
  LODWORD(self->_correctionParams.correctionStrength) = vmul_lane_f32(v19, v19, 1).u32[0];
}

- (int)selectParametersForTuningMode:(unint64_t)mode
{
  self->_mode = mode;
  v6 = objc_msgSend__tuningHeaderForMode_(VideoDefringingTuningParameters, a2, mode, v3);
  v9 = objc_msgSend_objectForKeyedSubscript_(self->_tuningParameters, v7, v6, v8);
  v12 = v9;
  if (!v9)
  {
    sub_2958BCD88();
    goto LABEL_18;
  }

  v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"CorrectionEnabled", v11);

  if (!v13)
  {
    sub_2958BCD0C();
    goto LABEL_18;
  }

  v16 = objc_msgSend_objectForKeyedSubscript_(v12, v14, @"CorrectionEnabled", v15);
  self->_defringingEnabled = objc_msgSend_BOOLValue(v16, v17, v18, v19);

  mode = self->_mode;
  if (mode)
  {
    if (mode != 2)
    {
      if (mode == 1)
      {
        v23 = objc_msgSend__parseDesaturateTuning_(self, v20, v12, v21);
        if (v23)
        {
          v27 = v23;
          sub_2958BCC14();
        }

        else
        {
          v26 = objc_msgSend__parseRadialTuning_(self, v24, v12, v25);
          v27 = v26;
          if (v26)
          {
            sub_2958BCC90(v26);
          }
        }

        goto LABEL_19;
      }

      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v43, v44, v45, v46, v47, v48);
LABEL_18:
      v27 = -12780;
      goto LABEL_19;
    }

    v28 = objc_msgSend__parseCorrectionTuning_(self, v20, v12, v21);
    if (v28)
    {
      v27 = v28;
      sub_2958BCAA0();
    }

    else
    {
      v31 = objc_msgSend__parseDesaturateTuning_(self, v29, v12, v30);
      if (v31)
      {
        v27 = v31;
        sub_2958BCB1C();
      }

      else
      {
        v34 = objc_msgSend__parseRadialTuning_(self, v32, v12, v33);
        v27 = v34;
        if (v34)
        {
          sub_2958BCB98(v34);
        }
      }
    }
  }

  else
  {
    v35 = objc_msgSend__parseCorrectionTuning_(self, v20, v12, v21);
    if (v35)
    {
      v27 = v35;
      sub_2958BC92C();
    }

    else
    {
      v38 = objc_msgSend__parseDesaturateTuning_(self, v36, v12, v37);
      if (v38)
      {
        v27 = v38;
        sub_2958BC9A8();
      }

      else
      {
        v41 = objc_msgSend__parseRadialTuning_(self, v39, v12, v40);
        v27 = v41;
        if (v41)
        {
          sub_2958BCA24(v41);
        }
      }
    }
  }

LABEL_19:

  return v27;
}

- ($B5339CD3011AE9733252D32A415F0BF1)correctionParams
{
  v3 = *&self[1].var20;
  *&retstr->var46 = *&self[1].var16;
  *&retstr->var50 = v3;
  *&retstr->var54 = *&self[1].var24;
  v4 = *self[1].var6;
  *&retstr->var30 = *&self[1].var2;
  *&retstr->var34 = v4;
  v5 = *&self[1].var12;
  *&retstr->var38 = *&self[1].var8;
  *&retstr->var42 = v5;
  v6 = *&self->var46;
  *&retstr->var14 = *&self->var42;
  *&retstr->var18 = v6;
  v7 = *&self->var54;
  *&retstr->var22 = *&self->var50;
  *&retstr->var26 = v7;
  v8 = *&self->var30;
  *&retstr->var0 = *&self->var26;
  *&retstr->var4 = v8;
  v9 = *&self->var38;
  *&retstr->var6[2] = *&self->var34;
  *&retstr->var10 = v9;
  return self;
}

- ($6B6A6628744B4DF06B73A717F4EE0DD2)radialParams
{
  v3 = *&self[2].var0;
  *&retstr->var0 = *&self[1].var4;
  *&retstr->var4 = v3;
  v4 = *&self[3].var0;
  *&retstr[1].var0 = *&self[2].var4;
  *&retstr[1].var4 = v4;
  return self;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)desaturationParams
{
  amount = self->_desaturationParams.amount;
  angle = self->_desaturationParams.angle;
  cutoff = self->_desaturationParams.cutoff;
  result.var2 = cutoff;
  result.var1 = angle;
  result.var0 = amount;
  return result;
}

@end