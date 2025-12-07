@interface ApplyHairnetModel
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (id)apply:(id)apply sdof:(id)sdof mask:(id)mask alpha:(id)alpha chromaWeight:(float)weight chromaBlurSigma:(float)sigma model:(id)model;
+ (int)formatForInputAtIndex:(int)index;
@end

@implementation ApplyHairnetModel

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  inputsCopy = inputs;
  argumentsCopy = arguments;
  outputCopy = output;
  v12 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v11, @"fullWidth");
  v15 = objc_msgSend_unsignedLongValue(v12, v13, v14);

  v17 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v16, @"fullHeight");
  v20 = objc_msgSend_unsignedLongValue(v17, v18, v19);

  v22 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v21, @"tileSize");
  v25 = objc_msgSend_unsignedLongValue(v22, v23, v24);

  v27 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v26, @"tileOverlap");
  v30 = objc_msgSend_unsignedLongValue(v27, v28, v29);

  v32 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v31, @"chromaWeight");
  objc_msgSend_floatValue(v32, v33, v34);
  v502 = v35;

  v37 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v36, @"chromaBlurSigma");
  objc_msgSend_floatValue(v37, v38, v39);
  v41 = v40;

  v42 = outputCopy;
  v45 = objc_msgSend_metalTexture(v42, v43, v44);
  if (!v45)
  {
    sub_2956CC240();
  }

  v532 = v30;
  v46 = v25 + 2 * v30;
  v488 = v25 - 1 + v15;
  v47 = v488 / v25;
  v519 = v25;
  v531 = v25 - 1 + v20;
  v491 = v531 / v25;

  v481 = argumentsCopy;
  v501 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v48, @"model");
  v50 = objc_msgSend_objectAtIndexedSubscript_(inputsCopy, v49, 0);
  v52 = objc_msgSend_objectAtIndexedSubscript_(inputsCopy, v51, 1);
  v54 = objc_msgSend_objectAtIndexedSubscript_(inputsCopy, v53, 2);
  v482 = inputsCopy;
  v56 = objc_msgSend_objectAtIndexedSubscript_(inputsCopy, v55, 3);
  v480 = v50;
  v521 = sub_2956AA43C(v50);
  v479 = v52;
  v520 = sub_2956AA43C(v52);
  v478 = v54;
  v523 = sub_2956AA43C(v54);
  v477 = v56;
  v518 = sub_2956AA43C(v56);
  v59 = objc_msgSend_metalContext(v42, v57, v58);
  v62 = v59;
  if (v59)
  {
    v63 = v59;
  }

  else
  {
    v64 = MEMORY[0x29EDB9168];
    v65 = objc_msgSend_metalContext(v42, v60, v61);
    v68 = objc_msgSend_internalCommandQueue(v65, v66, v67);
    v69 = *MEMORY[0x29EDB91B8];
    v570[0] = *MEMORY[0x29EDB91C8];
    v570[1] = v69;
    v571[0] = @"HairnetProcessor";
    v571[1] = MEMORY[0x29EDB8EA8];
    v570[2] = *MEMORY[0x29EDB91C0];
    v571[2] = &unk_2A1C94AF8;
    v71 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v70, v571, v570, 3);
    v73 = objc_msgSend_contextWithMTLCommandQueue_options_(v64, v72, v68, v71);

    v63 = v73;
  }

  v569[1] = 0;
  v569[0] = 0;
  v568[1] = 0;
  v568[0] = 0;
  v567[1] = 0;
  v567[0] = 0;
  v566[1] = 0;
  v566[0] = 0;
  v565[1] = 0;
  v565[0] = 0;
  sub_2956AA570(v46, (3 * v46), v569);
  sub_2956AA570(v46, (3 * v46), v568);
  sub_2956AA570(v46, v46, v567);
  sub_2956AA570(v46, v46, v566);
  sub_2956AA570(v46, (3 * v46), v565);
  v76 = objc_msgSend_metalTexture(v42, v74, v75);
  v79 = objc_msgSend_device(v76, v77, v78);
  v500 = sub_2956AA67C(v79, v569);

  v82 = objc_msgSend_metalTexture(v42, v80, v81);
  v85 = objc_msgSend_device(v82, v83, v84);
  v499 = sub_2956AA67C(v85, v568);

  v88 = objc_msgSend_metalTexture(v42, v86, v87);
  v91 = objc_msgSend_device(v88, v89, v90);
  v498 = sub_2956AA67C(v91, v567);

  v94 = objc_msgSend_metalTexture(v42, v92, v93);
  v97 = objc_msgSend_device(v94, v95, v96);
  v497 = sub_2956AA67C(v97, v566);

  v100 = objc_msgSend_metalTexture(v42, v98, v99);
  v103 = objc_msgSend_device(v100, v101, v102);
  v496 = sub_2956AA67C(v103, v565);

  v495 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v104, @"addR");
  v515 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v105, @"multiply_weight");
  v517 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v106, @"make_corrupt");
  v486 = objc_msgSend_kernelWithName_andOutputFormat_(CoreImageOnlyLibrary, v107, @"scan_has_zero", *MEMORY[0x29EDB91E8]);
  v109 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v108, @"weights");
  v110 = v46;
  v112 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x29EDBA070], v111, v46);
  v564[0] = v112;
  v522 = v532;
  v115 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v113, v114, v522 + v522);
  v564[1] = v115;
  v117 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v116, v564, 2);
  v476 = v109;
  v514 = objc_msgSend_applyWithExtent_arguments_(v109, v118, v117, 0.0, 0.0, v46, v46);

  v121 = objc_msgSend_internalCommandQueue(v63, v119, v120);
  v124 = objc_msgSend_commandBuffer(v121, v122, v123);

  v125 = objc_alloc(MEMORY[0x29EDB9188]);
  v529 = v42;
  v128 = objc_msgSend_metalTexture(v42, v126, v127);
  v130 = objc_msgSend_initWithMTLTexture_commandBuffer_(v125, v129, v128, v124);

  objc_msgSend_setFlipped_(v130, v131, 1);
  objc_msgSend_setColorSpace_(v130, v132, 0);
  v135 = objc_msgSend_componentAdd(MEMORY[0x29EDB9150], v133, v134);
  objc_msgSend_setBlendKernel_(v130, v136, v135);

  objc_msgSend_setBlendsInDestinationColorSpace_(v130, v137, 1);
  v474 = v130;
  v139 = objc_msgSend_startTaskToClear_error_(v63, v138, v130, 0);
  v475 = v124;
  v142 = objc_msgSend_commit(v124, v140, v141);
  v473[2] = v473;
  MEMORY[0x2A1C7C4A8](v142);
  v485 = v473 - v143;
  v144 = v519;
  v146 = ceil(vcvtd_n_f64_u64(v145 * v519, 1uLL));
  v562[0] = *MEMORY[0x29EDBB1B8];
  v149 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v147, v148, v47);
  v563[0] = v149;
  v562[1] = *MEMORY[0x29EDBB150];
  v152 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v150, v151, v146);
  v153 = *MEMORY[0x29EDBB180];
  v563[1] = v152;
  v563[2] = &unk_2A1C94B10;
  v154 = *MEMORY[0x29EDBB138];
  v562[2] = v153;
  v562[3] = v154;
  objc_msgSend_numberWithUnsignedLong_(MEMORY[0x29EDBA070], v155, (v47 + 31) & 0xFFFFFFFFFFFFFFE0);
  v157 = v156 = v63;
  v562[4] = *MEMORY[0x29EDBB130];
  v563[3] = v157;
  v563[4] = &unk_2A1C94B28;
  v159 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v158, v563, v562, 5);

  v530 = v159;
  v528 = IOSurfaceCreate(v159);
  v561[0] = MEMORY[0x29EDCA5F8];
  v490 = 3221225472;
  v561[1] = 3221225472;
  v561[2] = sub_2956AA7B0;
  v561[3] = &unk_29EDD4898;
  v561[4] = v144;
  v160 = v532;
  v561[5] = v532;
  v561[6] = v46;
  v163 = objc_msgSend_imageByClampingToExtent(v523, v161, v162);
  v560[0] = v163;
  v165 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x29EDBA070], v164, v144);
  v560[1] = v165;
  objc_msgSend_numberWithUnsignedLong_(MEMORY[0x29EDBA070], v166, v160);
  v168 = v167 = v156;
  v560[2] = v168;
  v170 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v169, v560, 3);
  v172 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v486, v171, v561, v170, 0.0, 0.0, v47, v146);

  v173 = v528;
  v174 = objc_alloc(MEMORY[0x29EDB9188]);
  v176 = objc_msgSend_initWithIOSurface_(v174, v175, v173);
  v524 = v167;
  v178 = objc_msgSend_startTaskToRender_toDestination_error_(v167, v177, v172, v176, 0);
  LODWORD(seed.a) = 0;
  IOSurfaceLock(v173, 1u, &seed);
  BaseAddress = IOSurfaceGetBaseAddress(v173);
  if (v144 <= v531)
  {
    v184 = 0;
    v185 = -v532 >> 1;
    v186 = (v532 + v144) / 2;
    v180 = v529;
    v187 = v530;
    v188 = v488;
    v189 = v491;
    v190 = v485;
    do
    {
      if (v144 <= v188)
      {
        v191 = 0;
        v192 = (v189 + ~v184) * (v144 >> 1);
        do
        {
          if (v186 <= v185)
          {
            v193 = 1;
          }

          else
          {
            v193 = 0;
            v194 = v185 + 1;
            v195 = v186 - v185;
            v196 = v185;
            do
            {
              v197 = (v196 + v192);
              if (v196 + v192 >= 0 && v146 > v197 && BaseAddress[v191 + ((v47 + 31) & 0xFFFFFFFFFFFFFFE0) * v197])
              {
                break;
              }

              ++v196;
              v193 = v194++ >= v186;
              --v195;
            }

            while (v195);
          }

          v190[v184 * v47 + v191++] = v193;
        }

        while (v191 < v47);
      }

      ++v184;
    }

    while (v184 < v189);
    IOSurfaceUnlock(v173, 1u, &seed);
    CFRelease(v173);

    v516 = 0;
    v200 = 0;
    v201 = v144;
    v473[1] = v541;
    v494 = *MEMORY[0x29EDB9228];
    v493 = *MEMORY[0x29EDB9250];
    v492 = *MEMORY[0x29EDB9218];
    v484 = v573;
    v487 = v41;
    v483 = 0.333333333;
    v507 = v144;
    while (1)
    {
      v489 = v200;
      if (v144 <= v488)
      {
        break;
      }

LABEL_23:
      v200 = v489 + 1;
      if (v489 + 1 >= v491)
      {
        goto LABEL_7;
      }
    }

    v202 = 0;
    v203 = 0;
    v204 = (v200 * v144);
    v205 = v204 - v522;
    v512 = &v485[v200 * v47];
    v513 = v200 * v47;
    v510 = v204;
    while (1)
    {
      v206 = v202;
      objc_msgSend_region(v180, v198, v199);
      v579.origin.x = v207;
      v579.origin.y = v208;
      v579.size.width = v209;
      v579.size.height = v210;
      v575.origin.x = v202;
      v575.origin.y = v204;
      v575.size.width = v201;
      v575.size.height = v201;
      if (CGRectIntersectsRect(v575, v579))
      {
        break;
      }

LABEL_87:
      ++v203;
      v202 += v144;
      if (v203 >= v47)
      {
        goto LABEL_23;
      }
    }

    v211 = (v203 + v513) & 1;
    v212 = v206 - v522;
    v213 = sub_2956AA7D8(v521, v206 - v522, v205, v110, v110, v198, v199);
    v216 = sub_2956AA7D8(v523, v212, v205, v110, v110, v214, v215);
    v531 = sub_2956AA7D8(v518, v212, v205, v110, v110, v217, v218);
    v221 = sub_2956AA7D8(v520, v212, v205, v110, v110, v219, v220);
    objc_msgSend_extent(v221, v222, v223);
    v225 = v224;
    v227 = v226;
    v229 = v228;
    v231 = v230;
    v530 = v221;
    v559[0] = v221;
    v532 = v216;
    v559[1] = v216;
    v233 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v232, v559, 2);
    v235 = objc_msgSend_applyWithExtent_arguments_(v517, v234, v233, v225, v227, v229, v231);

    v527 = v203;
    v239 = v512[v203];
    v240 = v568[v211];
    v241 = v567[v211];
    v242 = v566[v211];
    v243 = v565[v211];
    v525 = v569[v211];
    v511 = v240;
    if (v525)
    {
      v244 = v240 == 0;
    }

    else
    {
      v244 = 1;
    }

    v508 = v242;
    v509 = v241;
    v246 = v244 || v241 == 0 || v242 == 0;
    v247 = v246;
    if (v246)
    {
      v248 = uni_logger_api(v236);
      if (os_log_type_enabled(v248, OS_LOG_TYPE_ERROR))
      {
        sub_2956CBF9C(v557, &v558, v248);
      }
    }

    if (!v243)
    {
      v249 = uni_logger_api(v236);
      if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
      {
        sub_2956CBFE0(v555, &v556, v249);
      }
    }

    v528 = v202;
    if (v243)
    {
      v250 = v247;
    }

    else
    {
      v250 = 1;
    }

    v251 = v529;
    objc_msgSend_region(v529, v237, v238);
    v253 = v252;
    objc_msgSend_region(v251, v254, v255);
    v257 = v256;
    if ((v250 & 1) != 0 || v239)
    {
      v526 = v213;
      v291 = v530;
      v294 = v530;
      v525 = v235;
LABEL_86:
      objc_msgSend_extent(v294, v292, v293);
      v430 = v429;
      v432 = v431;
      v434 = v433;
      v436 = v435;
      v534[0] = v294;
      v534[1] = v514;
      v438 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v437, v534, 2);
      v440 = objc_msgSend_applyWithExtent_arguments_(v515, v439, v438, v430, v432, v434, v436);

      v441 = v524;
      v444 = objc_msgSend_internalCommandQueue(v524, v442, v443);
      v447 = objc_msgSend_commandBuffer(v444, v445, v446);

      v448 = v529;
      v451 = objc_msgSend_metalTexture(v529, v449, v450);
      v452 = v441;
      v453 = v440;
      v454 = MEMORY[0x29EDB9188];
      v455 = v447;
      v456 = [v454 alloc];
      v458 = objc_msgSend_initWithMTLTexture_commandBuffer_(v456, v457, v451, v455);

      objc_msgSend_setFlipped_(v458, v459, 1);
      objc_msgSend_setColorSpace_(v458, v460, 0);
      v463 = objc_msgSend_componentAdd(MEMORY[0x29EDB9150], v461, v462);
      objc_msgSend_setBlendKernel_(v458, v464, v463);

      v180 = v448;
      objc_msgSend_setBlendsInDestinationColorSpace_(v458, v465, 1);
      objc_msgSend_extent(v453, v466, v467);
      v469 = objc_msgSend_startTaskToRender_fromRect_toDestination_atPoint_error_(v452, v468, v453, v458, 0);

      objc_msgSend_commit(v455, v470, v471);
      v144 = v519;
      v201 = v507;
      v203 = v527;
      v202 = v528;
      v204 = v510;
      goto LABEL_87;
    }

    v258 = sub_2956AAAB4(v213);
    v259 = sub_2956AA888(v258);
    v260 = v213;
    v261 = v259;

    v262 = sub_2956AAAB4(v235);
    v263 = sub_2956AA888(v262);

    v264 = v524;
    v267 = objc_msgSend_internalCommandQueue(v524, v265, v266);
    v270 = objc_msgSend_commandBuffer(v267, v268, v269);

    v272 = objc_msgSend_objectAtIndexedSubscript_(v500, v271, v211);
    v506 = v261;
    sub_2956AAB94(v264, v261, v272, v270);

    v274 = objc_msgSend_objectAtIndexedSubscript_(v499, v273, v211);
    v526 = v263;
    sub_2956AAB94(v264, v263, v274, v270);

    v276 = objc_msgSend_objectAtIndexedSubscript_(v498, v275, v211);
    sub_2956AAB94(v264, v532, v276, v270);

    v278 = objc_msgSend_objectAtIndexedSubscript_(v497, v277, v211);
    sub_2956AAB94(v264, v531, v278, v270);

    objc_msgSend_commit(v270, v279, v280);
    v505 = v270;
    objc_msgSend_waitUntilScheduled(v270, v281, v282);
    v283 = v501;
    objc_sync_enter(v283);
    v286 = objc_msgSend_buildWait(v283, v284, v285);
    v504 = v257;
    if (v286)
    {
      v288 = objc_msgSend_bind_buffer_(v283, v287, "input_ref", v525);
      v516 = v288;
      if (v288)
      {
        v290 = uni_logger_api(v288);
        if (os_log_type_enabled(v290, OS_LOG_TYPE_ERROR))
        {
          sub_2956CC068(v551, &v552, v290);
        }

LABEL_75:

LABEL_76:
        objc_sync_exit(v283);

        v305 = MEMORY[0x29EDB9178];
        v307 = objc_msgSend_objectAtIndexedSubscript_(v496, v306, v211);
        v538 = v494;
        v539 = MEMORY[0x29EDB8EB0];
        v309 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v308, &v539, &v538, 1);
        v311 = objc_msgSend_imageWithMTLTexture_options_(v305, v310, v307, v309);

        objc_msgSend_extent(v311, v312, v313);
        v315 = v314;
        v317 = v316;
        v319 = v318;
        v321 = v320;
        v537[0] = v526;
        v537[1] = v311;
        v323 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v322, v537, 2);
        v535 = v493;
        v325 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v324, v492);
        v536 = v325;
        v327 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v326, &v536, &v535, 1);
        v329 = objc_msgSend_applyWithExtent_arguments_options_(v495, v328, v323, v327, v315, v317, v319, v321);

        v330 = v329;
        v334 = objc_msgSend_kernelWithName_(CoreImageOnlyLibrary, v331, @"ccp_planarToInterleaved");
        v503 = v253;
        v525 = v311;
        if (v330)
        {
          objc_msgSend_extent(v330, v332, v333);
          IsInfinite = CGRectIsInfinite(v576);
          v338 = v530;
          if (IsInfinite)
          {
            v339 = 0;
            v340 = v330;
          }

          else
          {
            objc_msgSend_extent(v330, v336, v337);
            v342 = v341;
            objc_msgSend_extent(v330, v343, v344);
            v346 = v345;
            v348 = v347;
            v350 = v349;
            v352 = v351;
            CGAffineTransformMakeScale(&seed, 1.0, v483);
            v577.origin.x = v346;
            v577.origin.y = v348;
            v577.size.width = v350;
            v577.size.height = v352;
            v578 = CGRectApplyAffineTransform(v577, &seed);
            x = v578.origin.x;
            y = v578.origin.y;
            width = v578.size.width;
            height = v578.size.height;
            v572[0] = MEMORY[0x29EDCA5F8];
            v572[1] = v490;
            v573[0] = sub_2956AB5F0;
            v573[1] = &unk_29EDD48E0;
            v573[2] = v342;
            *&seed.a = v330;
            v359 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v357, v358, v578.size.height);
            *&seed.b = v359;
            v361 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v360, &seed, 2);
            v363 = objc_msgSend_applyWithExtent_roiCallback_arguments_(v334, v362, v572, v361, x, y, width, height);

            v340 = v363;
            v339 = v340;
          }
        }

        else
        {
          v340 = 0;
          v339 = 0;
          v338 = v530;
        }

        v364 = v339;
        v366 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v365, @"from_range_m1_p1");
        objc_msgSend_extent(v364, v367, v368);
        v370 = v369;
        v372 = v371;
        v374 = v373;
        v376 = v375;
        *&seed.a = v364;
        v378 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v377, &seed, 1);

        v380 = objc_msgSend_applyWithExtent_arguments_(v366, v379, v378, v370, v372, v374, v376);

        v381 = v380;
        v383 = v338;
        *&v384 = v502;
        if (v502 >= 1.0)
        {
          v294 = v381;
        }

        else
        {
          v511 = v383;
          v385 = objc_msgSend_imageYCC444_matrix_fullRange_precision_colorSpace_(MEMORY[0x29EDB9178], v382, v383, 709, 1, 0, 0, v384);
          v387 = objc_msgSend_imageYCC444_matrix_fullRange_precision_colorSpace_(MEMORY[0x29EDB9178], v386, v381, 709, 1, 0, 0);
          v388 = v385;
          objc_msgSend_extent(v388, v389, v390);
          v392 = v391;
          v394 = v393;
          v396 = v395;
          v398 = v397;
          v401 = objc_msgSend_imageByClampingToExtent(v388, v399, v400);

          v404 = objc_msgSend_imageByApplyingGaussianBlurWithSigma_(v401, v402, v403, v487);

          v407 = objc_msgSend_imageByCroppingToRect_(v404, v405, v406, v392, v394, v396, v398);

          if (!v407)
          {
            sub_2956CC214();
          }

          v409 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v408, @"blend_chroma");
          objc_msgSend_setPerservesAlpha_(v409, v410, 1);
          objc_msgSend_extent(v387, v411, v412);
          v414 = v413;
          v416 = v415;
          v418 = v417;
          v420 = v419;
          *&seed.a = v387;
          *&seed.b = v407;
          *&v413 = v502;
          v423 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v421, v422, v413);
          *&seed.c = v423;
          v425 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v424, &seed, 3);
          v427 = objc_msgSend_applyWithExtent_arguments_(v409, v426, v425, v414, v416, v418, v420);

          v338 = v530;
          v294 = objc_msgSend_imageWithYCCImage_matrix_fullRange_precision_colorSpace_(MEMORY[0x29EDB9178], v428, v427, 709, 1, 0, 0);

          v383 = v511;
        }

        v525 = v526;
        v526 = v506;
        v291 = v338;
        goto LABEL_86;
      }

      v298 = objc_msgSend_bind_buffer_(v283, v289, "input_corrupted", v511);
      v516 = v298;
      if (v298)
      {
        v290 = uni_logger_api(v298);
        if (os_log_type_enabled(v290, OS_LOG_TYPE_ERROR))
        {
          sub_2956CC0AC(v549, &v550, v290);
        }

        goto LABEL_75;
      }

      v300 = objc_msgSend_bind_buffer_(v283, v299, "input_mask", v509);
      v516 = v300;
      if (v300)
      {
        v290 = uni_logger_api(v300);
        if (os_log_type_enabled(v290, OS_LOG_TYPE_ERROR))
        {
          sub_2956CC0F0(v547, &v548, v290);
        }

        goto LABEL_75;
      }

      v302 = objc_msgSend_bind_buffer_(v283, v301, "input_alpha", v508);
      v516 = v302;
      if (v302)
      {
        v290 = uni_logger_api(v302);
        if (os_log_type_enabled(v290, OS_LOG_TYPE_ERROR))
        {
          sub_2956CC134(v545, &v546, v290);
        }

        goto LABEL_75;
      }

      v304 = objc_msgSend_bind_buffer_(v283, v303, "output_residual", v243);
      v516 = v304;
      if (v304)
      {
        v290 = uni_logger_api(v304);
        if (os_log_type_enabled(v290, OS_LOG_TYPE_ERROR))
        {
          sub_2956CC178(v543, &v544, v290);
        }

        goto LABEL_75;
      }
    }

    else
    {
      v295 = uni_logger_api(v286);
      if (os_log_type_enabled(v295, OS_LOG_TYPE_ERROR))
      {
        sub_2956CC024(v553, &v554, v295);
      }

      if (v516)
      {
        goto LABEL_76;
      }
    }

    v540[0] = MEMORY[0x29EDCA5F8];
    v540[1] = v490;
    v541[0] = sub_2956AAD50;
    v541[1] = &unk_29EDD48C0;
    v542 = v251;
    v297 = objc_msgSend_executeAsync_(v283, v296, v540);
    if (v297)
    {
      v472 = uni_logger_api(v297);
      if (os_log_type_enabled(v472, OS_LOG_TYPE_ERROR))
      {
        sub_2956CC1BC(v472);
      }

      __assert_rtn("+[ApplyHairnetModel processWithInputs:arguments:output:error:]", "HairnetProcessor.m", 605, "status==0");
    }

    v516 = 0;
    v290 = v542;
    goto LABEL_75;
  }

  IOSurfaceUnlock(v173, 1u, &seed);
  CFRelease(v173);

  v180 = v529;
LABEL_7:
  v181 = dispatch_get_global_queue(-32768, 0);
  v533[0] = MEMORY[0x29EDCA5F8];
  v533[1] = v490;
  v533[2] = sub_2956AADDC;
  v533[3] = &unk_29EDD47F0;
  v182 = v524;
  v533[4] = v524;
  dispatch_async(v181, v533);

  return 1;
}

+ (int)formatForInputAtIndex:(int)index
{
  v3 = MEMORY[0x29EDB91E8];
  v4 = MEMORY[0x29EDB9208];
  if (index >= 2)
  {
    v4 = MEMORY[0x29EDB9218];
  }

  if (index != 2)
  {
    v3 = v4;
  }

  return *v3;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  argumentsCopy = arguments;
  v7 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v6, @"fullWidth");
  v10 = objc_msgSend_unsignedLongValue(v7, v8, v9);

  v12 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v11, @"fullHeight");
  v15 = objc_msgSend_unsignedLongValue(v12, v13, v14);

  v17 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v16, @"tileSize");
  v20 = objc_msgSend_unsignedLongValue(v17, v18, v19);

  v22 = objc_msgSend_objectForKeyedSubscript_(argumentsCopy, v21, @"tileOverlap");
  v25 = objc_msgSend_unsignedLongValue(v22, v23, v24);

  v26 = v20 - 1;
  v27 = v20 - 1 + v15;
  x = *MEMORY[0x29EDB90D8];
  y = *(MEMORY[0x29EDB90D8] + 8);
  width = *(MEMORY[0x29EDB90D8] + 16);
  height = *(MEMORY[0x29EDB90D8] + 24);
  if (v20 <= v27)
  {
    v32 = 0;
    v33 = v26 + v10;
    v34 = (v26 + v10) / v20;
    v35 = v25;
    v36 = (v20 + 2 * v25);
    v37 = v27 / v20;
    do
    {
      if (v20 <= v33)
      {
        v38 = 0;
        v39 = 0;
        do
        {
          v49.origin.x = v38 - v35;
          v49.origin.y = (v32 * v20) - v35;
          v49.size.width = v36;
          v49.size.height = v36;
          if (CGRectIntersectsRect(v49, rect))
          {
            v50.origin.x = x;
            v50.origin.y = y;
            v50.size.width = width;
            v50.size.height = height;
            v55.origin.x = v38 - v35;
            v55.origin.y = (v32 * v20) - v35;
            v55.size.width = v36;
            v55.size.height = v36;
            v51 = CGRectUnion(v50, v55);
            x = v51.origin.x;
            y = v51.origin.y;
            width = v51.size.width;
            height = v51.size.height;
          }

          ++v39;
          v38 += v20;
        }

        while (v39 < v34);
      }

      ++v32;
    }

    while (v32 < v37);
  }

  v56.size.width = v10;
  v56.size.height = v15;
  v56.origin.x = 0.0;
  v56.origin.y = 0.0;
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v53 = CGRectIntersection(v52, v56);
  v40 = v53.origin.x;
  v41 = v53.origin.y;
  v42 = v53.size.width;
  v43 = v53.size.height;

  v44 = v40;
  v45 = v41;
  v46 = v42;
  v47 = v43;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

+ (id)apply:(id)apply sdof:(id)sdof mask:(id)mask alpha:(id)alpha chromaWeight:(float)weight chromaBlurSigma:(float)sigma model:(id)model
{
  applyCopy = apply;
  sdofCopy = sdof;
  maskCopy = mask;
  alphaCopy = alpha;
  modelCopy = model;
  v21 = maskCopy;
  if (!v21)
  {
    sub_2956CC348();
  }

  v23 = v21;
  v24 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v22, @"invertMask");
  if (!v24)
  {
    sub_2956CC31C();
  }

  v27 = v24;
  selfCopy = self;
  v92 = alphaCopy;
  objc_msgSend_extent(v23, v25, v26);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v99 = v23;
  v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v36, &v99, 1);
  v97 = *MEMORY[0x29EDB9250];
  v39 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v38, *MEMORY[0x29EDB9218]);
  v98 = v39;
  v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v40, &v98, &v97, 1);
  v43 = objc_msgSend_applyWithExtent_arguments_options_(v27, v42, v37, v41, v29, v31, v33, v35);

  if (!v43)
  {
    sub_2956CC2F0();
  }

  v95[0] = @"fullWidth";
  v44 = MEMORY[0x29EDBA070];
  objc_msgSend_extent(applyCopy, v45, v46);
  v50 = objc_msgSend_numberWithDouble_(v44, v47, v48, v49);
  v96[0] = v50;
  v95[1] = @"fullHeight";
  v51 = MEMORY[0x29EDBA070];
  objc_msgSend_extent(applyCopy, v52, v53);
  v57 = objc_msgSend_numberWithDouble_(v51, v54, v55, v56);
  v96[1] = v57;
  v95[2] = @"tileSize";
  v59 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x29EDBA070], v58, 336);
  v96[2] = v59;
  v95[3] = @"tileOverlap";
  v61 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x29EDBA070], v60, 24);
  v96[3] = v61;
  v95[4] = @"chromaWeight";
  *&v62 = weight;
  objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v63, v64, v62);
  v65 = modelCopy;
  v90 = modelCopy;
  v66 = v43;
  v68 = v67 = sdofCopy;
  v96[4] = v68;
  v95[5] = @"chromaBlurSigma";
  *&v69 = sigma;
  v72 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v70, v71, v69);
  v95[6] = @"model";
  v96[5] = v72;
  v96[6] = v65;
  v74 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v73, v96, v95, 7);

  objc_msgSend_extent(applyCopy, v75, v76);
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v94[0] = applyCopy;
  v94[1] = v67;
  v94[2] = v66;
  v94[3] = v92;
  v86 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v85, v94, 4);
  v93 = 0;
  v88 = objc_msgSend_applyWithExtent_inputs_arguments_error_(selfCopy, v87, v86, v74, &v93, v78, v80, v82, v84);

  return v88;
}

@end