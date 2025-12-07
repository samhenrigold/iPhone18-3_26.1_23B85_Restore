@interface GreenGhostLowLightTuningParams
- (GreenGhostLowLightTuningParams)init;
- (LowLightTuning)tuningParams;
- (int)readPlist:(id)plist;
- (void)setDefaultTuningParams;
@end

@implementation GreenGhostLowLightTuningParams

- (void)setDefaultTuningParams
{
  v37 = *"fff?";
  *&v38[8] = xmmword_2959D60D0;
  *&v38[24] = xmmword_2959D6050;
  *&v38[40] = unk_2959D6060;
  *v38 = 1022739087;
  *&v38[56] = 0x3A03126F00000000;
  v35 = xmmword_2959D60B8;
  v36 = 1045220557;
  v9 = 0;
  v10 = 0;
  v12 = 1036831949;
  v20 = xmmword_2959D6078;
  v8 = 0;
  v11 = 0x3A83126F3F000000;
  __asm { FMOV            V0.2S, #1.0 }

  v13 = _D0;
  v14 = *"fff?";
  v15 = *v38;
  v17 = *&v38[32];
  v18 = *&v38[48];
  v16 = *&v38[16];
  v19 = 0x3CA3D70A3C23D70ALL;
  v21 = 953267991;
  v22 = 0;
  v25 = 0x3EA8F5C33B449BA6;
  v24 = unk_2959D60A0;
  v23 = xmmword_2959D6090;
  v26 = 0x3ECCCCCD3E4CCCCDLL;
  v27 = 0x300000001;
  v29 = 0x3F0000003DCCCCCDLL;
  v28 = 1;
  v30 = 0;
  v31 = 0x3B449BA63B03126FLL;
  v32 = 0x3C23D70A3CA3D70ALL;
  v33 = 0x3B03126F3A83126FLL;
  v34 = 0x3D4CCCCD3D23D70ALL;
  objc_msgSend_setTuningParams_(self, a2, &v8, v2);
}

- (GreenGhostLowLightTuningParams)init
{
  v7.receiver = self;
  v7.super_class = GreenGhostLowLightTuningParams;
  v2 = [(GreenGhostLowLightTuningParams *)&v7 init];
  objc_msgSend_setDefaultTuningParams(v2, v3, v4, v5);
  return v2;
}

- (int)readPlist:(id)plist
{
  plistCopy = plist;
  v8 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v6, @"faceBoundaryPaddingRatio", v7);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v8, v9, v10, v11) != 2)
  {
    sub_2958B1410();
LABEL_103:
    v613 = -1;
    goto LABEL_70;
  }

  v14 = objc_msgSend_objectAtIndexedSubscript_(v8, v12, 0, v13);
  objc_msgSend_floatValue(v14, v15, v16, v17);
  LODWORD(self[1].super.isa) = v18;

  v21 = objc_msgSend_objectAtIndexedSubscript_(v8, v19, 1, v20);
  objc_msgSend_floatValue(v21, v22, v23, v24);
  HIDWORD(self[1].super.isa) = v25;

  v28 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v26, @"enabled", v27);

  if (!v28)
  {
    sub_2958B27EC();
    goto LABEL_103;
  }

  v31 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v29, @"enabled", v30);
  self->_tuningParams.enabled = objc_msgSend_BOOLValue(v31, v32, v33, v34);

  v37 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v35, @"blurThreshold", v36);

  if (!v37)
  {
    sub_2958B2794();
    goto LABEL_103;
  }

  v40 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v38, @"blurThreshold", v39);
  objc_msgSend_floatValue(v40, v41, v42, v43);
  self->_tuningParams.blurThreshold = v44;

  v47 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v45, @"maxMaskAverage", v46);

  if (!v47)
  {
    sub_2958B273C();
    goto LABEL_103;
  }

  v50 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v48, @"maxMaskAverage", v49);
  objc_msgSend_floatValue(v50, v51, v52, v53);
  self->_tuningParams.maxMaskAverage = v54;

  v57 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v55, @"greenGhostThreshold", v56);

  if (!v57)
  {
    sub_2958B26E4();
    goto LABEL_103;
  }

  v60 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v58, @"greenGhostThreshold", v59);
  objc_msgSend_floatValue(v60, v61, v62, v63);
  self->_tuningParams.greenGhostThreshold = v64;

  v67 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v65, @"detection", v66);
  if (!v67)
  {
    sub_2958B268C();
    goto LABEL_103;
  }

  v70 = v67;
  v71 = objc_msgSend_objectForKeyedSubscript_(v67, v68, @"brightness", v69);
  v74 = v71;
  if (!v71)
  {
    sub_2958B2634();
LABEL_102:

    goto LABEL_103;
  }

  v75 = objc_msgSend_objectForKeyedSubscript_(v71, v72, @"threshold", v73);

  if (!v75)
  {
    sub_2958B25DC();
    goto LABEL_102;
  }

  v78 = objc_msgSend_objectForKeyedSubscript_(v74, v76, @"threshold", v77);
  objc_msgSend_floatValue(v78, v79, v80, v81);
  *&self[1]._tuningParams.enabled = v82;

  v85 = objc_msgSend_objectForKeyedSubscript_(v74, v83, @"dilationNormalizedRadius", v84);

  if (!v85)
  {
    sub_2958B2584();
    goto LABEL_102;
  }

  v88 = objc_msgSend_objectForKeyedSubscript_(v74, v86, @"dilationNormalizedRadius", v87);
  objc_msgSend_floatValue(v88, v89, v90, v91);
  LODWORD(self[2].super.isa) = v92;

  v95 = objc_msgSend_objectForKeyedSubscript_(v74, v93, @"erosionNormalizedRadius", v94);

  if (!v95)
  {
    sub_2958B252C();
    goto LABEL_102;
  }

  v98 = objc_msgSend_objectForKeyedSubscript_(v74, v96, @"erosionNormalizedRadius", v97);
  objc_msgSend_floatValue(v98, v99, v100, v101);
  HIDWORD(self[2].super.isa) = v102;

  v105 = objc_msgSend_objectForKeyedSubscript_(v74, v103, @"normalizedOpticalCenter", v104);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v105, v106, v107, v108) != 2)
  {
    sub_2958B1468(v105, v74, v70);
    goto LABEL_103;
  }

  v111 = objc_msgSend_objectAtIndexedSubscript_(v105, v109, 0, v110);
  objc_msgSend_floatValue(v111, v112, v113, v114);
  self[1]._tuningParams.maxMaskAverage = v115;

  v118 = objc_msgSend_objectAtIndexedSubscript_(v105, v116, 1, v117);
  objc_msgSend_floatValue(v118, v119, v120, v121);
  self[1]._tuningParams.greenGhostThreshold = v122;

  v125 = objc_msgSend_objectForKeyedSubscript_(v70, v123, @"blob", v124);
  v74 = v125;
  if (!v125)
  {
    sub_2958B24D4();
    goto LABEL_102;
  }

  v128 = objc_msgSend_objectForKeyedSubscript_(v125, v126, @"threshold", v127);

  if (!v128)
  {
    sub_2958B247C();
    goto LABEL_102;
  }

  v131 = objc_msgSend_objectForKeyedSubscript_(v74, v129, @"threshold", v130);
  objc_msgSend_floatValue(v131, v132, v133, v134);
  self[2]._tuningParams.maxMaskAverage = v135;

  v138 = objc_msgSend_objectForKeyedSubscript_(v74, v136, @"radius", v137);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v138, v139, v140, v141) != 2)
  {
    sub_2958B14F0(v138, v74, v70);
    goto LABEL_103;
  }

  v144 = objc_msgSend_objectAtIndexedSubscript_(v138, v142, 0, v143);
  *&self[2]._tuningParams.enabled = objc_msgSend_intValue(v144, v145, v146, v147);

  v150 = objc_msgSend_objectAtIndexedSubscript_(v138, v148, 1, v149);
  LODWORD(self[2]._tuningParams.blurThreshold) = objc_msgSend_intValue(v150, v151, v152, v153);

  v156 = objc_msgSend_objectForKeyedSubscript_(v70, v154, @"green", v155);
  v74 = v156;
  if (!v156)
  {
    sub_2958B2424();
    goto LABEL_102;
  }

  v159 = objc_msgSend_objectForKeyedSubscript_(v156, v157, @"hueThreshold", v158);

  if (!v159)
  {
    sub_2958B23CC();
    goto LABEL_102;
  }

  v162 = objc_msgSend_objectForKeyedSubscript_(v74, v160, @"hueThreshold", v161);
  objc_msgSend_floatValue(v162, v163, v164, v165);
  *&self[3]._tuningParams.enabled = v166;

  v169 = objc_msgSend_objectForKeyedSubscript_(v74, v167, @"openingNormalizedRadius", v168);

  if (!v169)
  {
    sub_2958B2374();
    goto LABEL_102;
  }

  v172 = objc_msgSend_objectForKeyedSubscript_(v74, v170, @"openingNormalizedRadius", v171);
  objc_msgSend_floatValue(v172, v173, v174, v175);
  *&self[4]._tuningParams.enabled = v176;

  v179 = objc_msgSend_objectForKeyedSubscript_(v74, v177, @"dilationNormalizedRadius", v178);

  if (!v179)
  {
    sub_2958B231C();
    goto LABEL_102;
  }

  v182 = objc_msgSend_objectForKeyedSubscript_(v74, v180, @"dilationNormalizedRadius", v181);
  objc_msgSend_floatValue(v182, v183, v184, v185);
  self[4]._tuningParams.blurThreshold = v186;

  v189 = objc_msgSend_objectForKeyedSubscript_(v74, v187, @"hueRange", v188);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v189, v190, v191, v192) != 2)
  {
    sub_2958B1578(v189);
    goto LABEL_102;
  }

  v195 = objc_msgSend_objectAtIndexedSubscript_(v189, v193, 0, v194);
  objc_msgSend_floatValue(v195, v196, v197, v198);
  LODWORD(self[3].super.isa) = v199;

  v202 = objc_msgSend_objectAtIndexedSubscript_(v189, v200, 1, v201);
  objc_msgSend_floatValue(v202, v203, v204, v205);
  HIDWORD(self[3].super.isa) = v206;

  v209 = objc_msgSend_objectForKeyedSubscript_(v74, v207, @"saturationThresholds", v208);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v209, v210, v211, v212) != 2)
  {
    sub_2958B15E8(v209);
    goto LABEL_102;
  }

  v215 = objc_msgSend_objectAtIndexedSubscript_(v209, v213, 0, v214);
  objc_msgSend_floatValue(v215, v216, v217, v218);
  self[3]._tuningParams.maxMaskAverage = v219;

  v222 = objc_msgSend_objectAtIndexedSubscript_(v209, v220, 1, v221);
  objc_msgSend_floatValue(v222, v223, v224, v225);
  self[3]._tuningParams.greenGhostThreshold = v226;

  v229 = objc_msgSend_objectForKeyedSubscript_(v74, v227, @"valueThresholds", v228);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v229, v230, v231, v232) != 2)
  {
    sub_2958B1658(v229, v74, v70);
    goto LABEL_103;
  }

  v235 = objc_msgSend_objectAtIndexedSubscript_(v229, v233, 0, v234);
  objc_msgSend_floatValue(v235, v236, v237, v238);
  LODWORD(self[4].super.isa) = v239;

  v242 = objc_msgSend_objectAtIndexedSubscript_(v229, v240, 1, v241);
  objc_msgSend_floatValue(v242, v243, v244, v245);
  HIDWORD(self[4].super.isa) = v246;

  v249 = objc_msgSend_objectForKeyedSubscript_(v70, v247, @"multiBandDetection", v248);
  if (!v249)
  {
    sub_2958B22AC(v70);
    goto LABEL_103;
  }

  v252 = v249;
  v253 = objc_msgSend_objectForKeyedSubscript_(v249, v250, @"tmpVarThresholds", v251);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v253, v254, v255, v256) != 2)
  {
    sub_2958B16E0(v253, v252, v70);
    goto LABEL_103;
  }

  v616 = v70;
  v259 = objc_msgSend_objectAtIndexedSubscript_(v253, v257, 0, v258);
  objc_msgSend_floatValue(v259, v260, v261, v262);
  self[4]._tuningParams.maxMaskAverage = v263;

  v266 = objc_msgSend_objectAtIndexedSubscript_(v253, v264, 1, v265);
  objc_msgSend_floatValue(v266, v267, v268, v269);
  self[4]._tuningParams.greenGhostThreshold = v270;

  v273 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v271, @"refinement", v272);
  if (!v273)
  {
    sub_2958B223C(v70);
    goto LABEL_103;
  }

  v276 = v273;
  v277 = objc_msgSend_objectForKeyedSubscript_(v273, v274, @"guidedFilterRadius", v275);

  if (!v277)
  {
    sub_2958B21BC(v276, v616);
    goto LABEL_103;
  }

  v280 = objc_msgSend_objectForKeyedSubscript_(v276, v278, @"guidedFilterRadius", v279);
  LODWORD(self[5].super.isa) = objc_msgSend_unsignedIntValue(v280, v281, v282, v283);

  v286 = objc_msgSend_objectForKeyedSubscript_(v276, v284, @"guidedFilterGuideRange", v285);

  if (!v286)
  {
    sub_2958B213C(v276, v616);
    goto LABEL_103;
  }

  v289 = objc_msgSend_objectForKeyedSubscript_(v276, v287, @"guidedFilterGuideRange", v288);
  objc_msgSend_floatValue(v289, v290, v291, v292);
  HIDWORD(self[5].super.isa) = v293;

  v296 = objc_msgSend_objectForKeyedSubscript_(v276, v294, @"guidedFilterThreshold", v295);

  if (!v296)
  {
    sub_2958B20BC(v276, v616);
    goto LABEL_103;
  }

  v299 = objc_msgSend_objectForKeyedSubscript_(v276, v297, @"guidedFilterThreshold", v298);
  objc_msgSend_floatValue(v299, v300, v301, v302);
  *&self[5]._tuningParams.enabled = v303;

  v306 = objc_msgSend_objectForKeyedSubscript_(v276, v304, @"dilationNormalizedRadius", v305);

  if (!v306)
  {
    sub_2958B203C(v276, v616);
    goto LABEL_103;
  }

  v309 = objc_msgSend_objectForKeyedSubscript_(v276, v307, @"dilationNormalizedRadius", v308);
  objc_msgSend_floatValue(v309, v310, v311, v312);
  self[5]._tuningParams.blurThreshold = v313;

  v316 = objc_msgSend_objectForKeyedSubscript_(v276, v314, @"maskSurroundThreshold", v315);

  if (!v316)
  {
    sub_2958B1FBC(v276, v616);
    goto LABEL_103;
  }

  v319 = objc_msgSend_objectForKeyedSubscript_(v276, v317, @"maskSurroundThreshold", v318);
  objc_msgSend_floatValue(v319, v320, v321, v322);
  self[5]._tuningParams.maxMaskAverage = v323;

  v326 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v324, @"fusion", v325);
  if (!v326)
  {
    sub_2958B1F3C(v276, v616);
    goto LABEL_103;
  }

  v329 = v326;
  v330 = objc_msgSend_objectForKeyedSubscript_(v326, v327, @"neighborDiffFilterRadius", v328);
  LODWORD(self[6].super.isa) = objc_msgSend_unsignedIntValue(v330, v331, v332, v333);

  v336 = objc_msgSend_objectForKeyedSubscript_(v329, v334, @"neighborDifferenceThresholds", v335);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v336, v337, v338, v339) != 2)
  {
    sub_2958B1768();
    goto LABEL_103;
  }

  v342 = objc_msgSend_objectAtIndexedSubscript_(v336, v340, 0, v341);
  objc_msgSend_floatValue(v342, v343, v344, v345);
  *&self[6]._tuningParams.enabled = v346;

  v349 = objc_msgSend_objectAtIndexedSubscript_(v336, v347, 1, v348);
  objc_msgSend_floatValue(v349, v350, v351, v352);
  self[6]._tuningParams.blurThreshold = v353;

  v356 = objc_msgSend_objectForKeyedSubscript_(v329, v354, @"greenProbabilityThresholds", v355);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v356, v357, v358, v359) != 2)
  {
    sub_2958B17FC();
    goto LABEL_103;
  }

  v362 = objc_msgSend_objectAtIndexedSubscript_(v356, v360, 0, v361);
  objc_msgSend_floatValue(v362, v363, v364, v365);
  self[6]._tuningParams.maxMaskAverage = v366;

  v369 = objc_msgSend_objectAtIndexedSubscript_(v356, v367, 1, v368);
  objc_msgSend_floatValue(v369, v370, v371, v372);
  self[6]._tuningParams.greenGhostThreshold = v373;

  v376 = objc_msgSend_objectForKeyedSubscript_(v329, v374, @"fusionWeightErosionNormalizedRadius", v375);

  if (!v376)
  {
    sub_2958B1EB4(v329, v276, v616);
    goto LABEL_103;
  }

  v379 = objc_msgSend_objectForKeyedSubscript_(v329, v377, @"fusionWeightErosionNormalizedRadius", v378);
  objc_msgSend_floatValue(v379, v380, v381, v382);
  LODWORD(self[7].super.isa) = v383;

  v386 = objc_msgSend_objectForKeyedSubscript_(v329, v384, @"fusionWeightBlurRadius", v385);

  if (!v386)
  {
    sub_2958B1E2C(v329, v276, v616);
    goto LABEL_103;
  }

  v389 = objc_msgSend_objectForKeyedSubscript_(v329, v387, @"fusionWeightBlurRadius", v388);
  HIDWORD(self[7].super.isa) = objc_msgSend_unsignedIntValue(v389, v390, v391, v392);

  v395 = objc_msgSend_objectForKeyedSubscript_(v329, v393, @"postFusionErosionNormalizedRadius", v394);

  if (!v395)
  {
    sub_2958B1DA4(v329, v276, v616);
    goto LABEL_103;
  }

  v398 = objc_msgSend_objectForKeyedSubscript_(v329, v396, @"postFusionErosionNormalizedRadius", v397);
  objc_msgSend_floatValue(v398, v399, v400, v401);
  *&self[7]._tuningParams.enabled = v402;

  v405 = objc_msgSend_objectForKeyedSubscript_(v329, v403, @"postFusionReferenceWeight", v404);

  if (!v405)
  {
    sub_2958B1D1C(v329, v276, v616);
    goto LABEL_103;
  }

  v408 = objc_msgSend_objectForKeyedSubscript_(v329, v406, @"postFusionReferenceWeight", v407);
  objc_msgSend_floatValue(v408, v409, v410, v411);
  self[7]._tuningParams.blurThreshold = v412;

  v415 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v413, @"inpaint", v414);
  if (!v415)
  {
    sub_2958B1C94(v329, v276, v616);
    goto LABEL_103;
  }

  v418 = v415;
  v419 = objc_msgSend_objectForKeyedSubscript_(v415, v416, @"postFusionMaskThresholds", v417);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v419, v420, v421, v422) != 2)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, "Fig", "[(postFusionMaskThresholds) isKindOfClass:[NSArray class]] && [(postFusionMaskThresholds) count] == 2", "bail", 0, "GreenGhostLowLightTuningParamsV2.m", 225, 0);
LABEL_83:

    goto LABEL_103;
  }

  v425 = objc_msgSend_objectAtIndexedSubscript_(v419, v423, 0, v424);
  objc_msgSend_floatValue(v425, v426, v427, v428);
  self[7]._tuningParams.maxMaskAverage = v429;

  v432 = objc_msgSend_objectAtIndexedSubscript_(v419, v430, 1, v431);
  objc_msgSend_floatValue(v432, v433, v434, v435);
  self[7]._tuningParams.greenGhostThreshold = v436;

  v439 = objc_msgSend_objectForKeyedSubscript_(v418, v437, @"postFusionMaskDilateRadius", v438);

  if (!v439)
  {
    sub_2958B1C00();
    goto LABEL_103;
  }

  v442 = objc_msgSend_objectForKeyedSubscript_(v418, v440, @"postFusionMaskDilateRadius", v441);
  LODWORD(self[8].super.isa) = objc_msgSend_unsignedIntValue(v442, v443, v444, v445);

  v448 = objc_msgSend_objectForKeyedSubscript_(v418, v446, @"propagatedLumaBlurRadius", v447);

  if (!v448)
  {
    sub_2958B1B6C();
    goto LABEL_103;
  }

  v451 = objc_msgSend_objectForKeyedSubscript_(v418, v449, @"propagatedLumaBlurRadius", v450);
  HIDWORD(self[8].super.isa) = objc_msgSend_unsignedIntValue(v451, v452, v453, v454);

  v457 = objc_msgSend_objectForKeyedSubscript_(v418, v455, @"maskBlurRadius", v456);

  if (!v457)
  {
    sub_2958B1AD8();
    goto LABEL_103;
  }

  v460 = objc_msgSend_objectForKeyedSubscript_(v418, v458, @"maskBlurRadius", v459);
  *&self[8]._tuningParams.enabled = objc_msgSend_unsignedIntValue(v460, v461, v462, v463);

  v466 = objc_msgSend_objectForKeyedSubscript_(v418, v464, @"darknessTolerance", v465);

  if (!v466)
  {
    sub_2958B1A44();
    goto LABEL_103;
  }

  v469 = objc_msgSend_objectForKeyedSubscript_(v418, v467, @"darknessTolerance", v468);
  objc_msgSend_floatValue(v469, v470, v471, v472);
  self[8]._tuningParams.blurThreshold = v473;

  v476 = objc_msgSend_objectForKeyedSubscript_(v418, v474, @"lumaScale", v475);

  if (!v476)
  {
    sub_2958B19B0();
    goto LABEL_103;
  }

  v479 = objc_msgSend_objectForKeyedSubscript_(v418, v477, @"lumaScale", v478);
  objc_msgSend_floatValue(v479, v480, v481, v482);
  self[8]._tuningParams.maxMaskAverage = v483;

  v419 = objc_msgSend_objectForKeyedSubscript_(v418, v484, @"gradientThresholds", v485);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v419, v486, v487, v488) != 2)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, "Fig", "[(gradientThresholds) isKindOfClass:[NSArray class]] && [(gradientThresholds) count] == 2", "bail", 0, "GreenGhostLowLightTuningParamsV2.m", 236, 0);
    goto LABEL_83;
  }

  v491 = objc_msgSend_objectAtIndexedSubscript_(v419, v489, 0, v490);
  objc_msgSend_floatValue(v491, v492, v493, v494);
  LODWORD(self[9].super.isa) = v495;

  v498 = objc_msgSend_objectAtIndexedSubscript_(v419, v496, 1, v497);
  objc_msgSend_floatValue(v498, v499, v500, v501);
  HIDWORD(self[9].super.isa) = v502;

  v419 = objc_msgSend_objectForKeyedSubscript_(v418, v503, @"detailScales", v504);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v419, v505, v506, v507) != 2)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, "Fig", "[(detailScales) isKindOfClass:[NSArray class]] && [(detailScales) count] == 2", "bail", 0, "GreenGhostLowLightTuningParamsV2.m", 242, 0);
    goto LABEL_83;
  }

  v510 = objc_msgSend_objectAtIndexedSubscript_(v419, v508, 0, v509);
  objc_msgSend_floatValue(v510, v511, v512, v513);
  *&self[9]._tuningParams.enabled = v514;

  v517 = objc_msgSend_objectAtIndexedSubscript_(v419, v515, 1, v516);
  objc_msgSend_floatValue(v517, v518, v519, v520);
  self[9]._tuningParams.blurThreshold = v521;

  v419 = objc_msgSend_objectForKeyedSubscript_(v418, v522, @"detailBiases", v523);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v419, v524, v525, v526) != 2)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, "Fig", "[(detailBiases) isKindOfClass:[NSArray class]] && [(detailBiases) count] == 2", "bail", 0, "GreenGhostLowLightTuningParamsV2.m", 248, 0);
    goto LABEL_83;
  }

  v529 = objc_msgSend_objectAtIndexedSubscript_(v419, v527, 0, v528);
  objc_msgSend_floatValue(v529, v530, v531, v532);
  self[9]._tuningParams.maxMaskAverage = v533;

  v536 = objc_msgSend_objectAtIndexedSubscript_(v419, v534, 1, v535);
  objc_msgSend_floatValue(v536, v537, v538, v539);
  self[9]._tuningParams.greenGhostThreshold = v540;

  v419 = objc_msgSend_objectForKeyedSubscript_(v418, v541, @"detailThresholds", v542);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v419, v543, v544, v545) != 2)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, "Fig", "[(detailThresholds) isKindOfClass:[NSArray class]] && [(detailThresholds) count] == 2", "bail", 0, "GreenGhostLowLightTuningParamsV2.m", 254, 0);
    goto LABEL_83;
  }

  v548 = objc_msgSend_objectAtIndexedSubscript_(v419, v546, 0, v547);
  objc_msgSend_floatValue(v548, v549, v550, v551);
  LODWORD(self[10].super.isa) = v552;

  v555 = objc_msgSend_objectAtIndexedSubscript_(v419, v553, 1, v554);
  objc_msgSend_floatValue(v555, v556, v557, v558);
  HIDWORD(self[10].super.isa) = v559;

  v562 = objc_msgSend_objectForKeyedSubscript_(v418, v560, @"sharpening", v561);
  v419 = v562;
  if (!v562)
  {
    sub_2958B1958();
    goto LABEL_83;
  }

  v565 = objc_msgSend_objectForKeyedSubscript_(v562, v563, @"strength", v564);

  if (!v565)
  {
    sub_2958B1900();
    goto LABEL_83;
  }

  v568 = objc_msgSend_objectForKeyedSubscript_(v419, v566, @"strength", v567);
  objc_msgSend_floatValue(v568, v569, v570, v571);
  LODWORD(self[11].super.isa) = v572;

  v575 = objc_msgSend_objectForKeyedSubscript_(v419, v573, @"shift", v574);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v575, v576, v577, v578) != 2)
  {
    sub_2958B1890(v575);
    goto LABEL_83;
  }

  v581 = plistCopy;
  v582 = v8;
  v583 = objc_msgSend_objectAtIndexedSubscript_(v575, v579, 0, v580);
  *&self[10]._tuningParams.enabled = objc_msgSend_intValue(v583, v584, v585, v586);

  v589 = objc_msgSend_objectAtIndexedSubscript_(v575, v587, 1, v588);
  LODWORD(self[10]._tuningParams.blurThreshold) = objc_msgSend_intValue(v589, v590, v591, v592);

  v595 = objc_msgSend_objectForKeyedSubscript_(v419, v593, @"thresholds", v594);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v595, v596, v597, v598) == 2)
  {
    v601 = objc_msgSend_objectAtIndexedSubscript_(v595, v599, 0, v600);
    objc_msgSend_floatValue(v601, v602, v603, v604);
    self[10]._tuningParams.maxMaskAverage = v605;

    v608 = objc_msgSend_objectAtIndexedSubscript_(v595, v606, 1, v607);
    objc_msgSend_floatValue(v608, v609, v610, v611);
    self[10]._tuningParams.greenGhostThreshold = v612;

    v613 = 0;
  }

  else
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v615, v616, v618, v619, v620, v621);

    v613 = -1;
  }

  v8 = v582;
  plistCopy = v581;
LABEL_70:

  return v613;
}

- (LowLightTuning)tuningParams
{
  v3 = memcpy(v2, &self->_tuningParams, 0x108uLL);
  result.maxMaskAverage = *&v4;
  result.greenGhostThreshold = *(&v4 + 1);
  result.enabled = v3;
  result.blurThreshold = *(&v3 + 1);
  return result;
}

@end