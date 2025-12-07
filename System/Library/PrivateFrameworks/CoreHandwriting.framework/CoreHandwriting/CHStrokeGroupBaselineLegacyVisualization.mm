@interface CHStrokeGroupBaselineLegacyVisualization
- (CGRect)dirtyRectForStrokeGroup:(id)group;
- (void)drawVisualizationInRect:(CGRect)rect context:(CGContext *)context viewBounds:(CGRect)bounds;
@end

@implementation CHStrokeGroupBaselineLegacyVisualization

- (CGRect)dirtyRectForStrokeGroup:(id)group
{
  objc_msgSend_bounds(group, a2, group, v3, v4, v5);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  MinX = CGRectGetMinX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v12 = CGRectGetMaxY(v20) + 10.0 + -22.0;
  if (self)
  {
    v13 = 22.0;
  }

  else
  {
    v13 = 0.0;
  }

  if (self)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0.0;
  }

  if (self)
  {
    v15 = MinX + -22.0;
  }

  else
  {
    v15 = 0.0;
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v16 = v13;
  v22 = CGRectUnion(v21, *(&v13 - 2));
  result = CGRectInset(v22, -22.0, -22.0);
  v17 = result.size.height + 13.0;
  v18 = result.size.width + 7.0;
  result.size.height = v17;
  result.size.width = v18;
  return result;
}

- (void)drawVisualizationInRect:(CGRect)rect context:(CGContext *)context viewBounds:(CGRect)bounds
{
  v406 = *MEMORY[0x1E69E9840];
  v375.receiver = self;
  v375.super_class = CHStrokeGroupBaselineLegacyVisualization;
  [(CHStrokeGroupBasedVisualization *)&v375 drawVisualizationInRect:rect.origin.x context:rect.origin.y viewBounds:rect.size.width, rect.size.height, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v10 = objc_msgSend_recognitionSession(self, v5, v6, v7, v8, v9);
  v366 = objc_msgSend_latestStrokeProvider(v10, v11, v12, v13, v14, v15);
  space = CGColorSpaceCreateDeviceRGB();
  color = CGColorCreate(space, dbl_1839DA778);
  v314 = CGColorCreate(space, dbl_1839DA798);
  cf = sub_18397D2F0(10.0);
  v315 = sub_18397D2F0(12.0);
  CGContextSetStrokeColorWithColor(context, color);
  CGContextSetFillColorWithColor(context, color);
  v373 = 0u;
  v374 = 0u;
  v371 = 0u;
  v372 = 0u;
  v21 = objc_msgSend_resultDrawn(self, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_strokeGroupingResult(v21, v22, v23, v24, v25, v26);
  obj = objc_msgSend_strokeGroupsSortedBy_textGroupsOnly_(v27, v28, 1, 1, v29, v30);
  v325 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v371, v398, 16, v32);
  if (v325)
  {
    v323 = *v372;
    v37 = 22.0;
    if (!self)
    {
      v37 = 0.0;
    }

    v322 = v37;
    v317 = *(MEMORY[0x1E695EFF8] + 8);
    v318 = *MEMORY[0x1E695EFF8];
    v335 = *(MEMORY[0x1E695EFD0] + 8);
    v336 = *MEMORY[0x1E695EFD0];
    v333 = *(MEMORY[0x1E695EFD0] + 24);
    v334 = *(MEMORY[0x1E695EFD0] + 16);
    v331 = *(MEMORY[0x1E695EFD0] + 40);
    v332 = *(MEMORY[0x1E695EFD0] + 32);
    v312 = *(MEMORY[0x1E695F058] + 8);
    v313 = *MEMORY[0x1E695F058];
    v311 = *(MEMORY[0x1E695F058] + 16);
    v310 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      for (i = 0; i != v325; ++i)
      {
        if (*v372 != v323)
        {
          objc_enumerationMutation(obj);
        }

        v359 = *(*(&v371 + 1) + 8 * i);
        objc_msgSend_dirtyRectForStrokeGroup_(self, v33, v359, v34, v35, v36);
        if (CGRectIntersectsRect(v407, rect))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = objc_msgSend_delegate(self, v33, v38, v34, v35, v36);
            v320 = objc_msgSend_visualizationIndexForStrokeGroup_(v39, v40, v359, v41, v42, v43);
            CGContextSaveGState(context);
            *lengths = xmmword_1839CE6F0;
            CGContextSetLineWidth(context, 2.0);
            CGContextSetLineDash(context, 0.0, lengths, 2uLL);
            CGContextSetAlpha(context, 0.8);
            if (self)
            {
              v44 = [CHQuadCurvePointFIFO alloc];
              v321 = objc_msgSend_initWithFIFO_(v44, v45, 0, v46, v47, v48);
              v49 = [CHBoxcarFilterPointFIFO alloc];
              LODWORD(v50) = 2.0;
              v54 = objc_msgSend_initWithFIFO_width_spacing_(v49, v51, v321, 3, v52, v53, v50);
              v55 = [CHPointFIFO alloc];
              v337 = objc_msgSend_initWithFIFO_(v55, v56, v54, v57, v58, v59);
              v65 = objc_msgSend_writingDirectionSortedStrokeIdentifiers(v359, v60, v61, v62, v63, v64);
              v71 = objc_msgSend_count(v65, v66, v67, v68, v69, v70);
              v338 = malloc_type_calloc(v71, 0x20uLL, 0x1000040E0EAB150uLL);
              v77 = objc_msgSend_count(v65, v72, v73, v74, v75, v76);
              v78 = malloc_type_calloc(v77, 8uLL, 0x100004000313F17uLL);
              v380 = 0u;
              v381 = 0u;
              v378 = 0u;
              v379 = 0u;
              v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v79, &v378, &v399, 16, v80);
              if (v86)
              {
                v87 = 0;
                v88 = *v379;
                v89 = 0.0;
                do
                {
                  v90 = 0;
                  v91 = &v338[32 * v87];
                  do
                  {
                    if (*v379 != v88)
                    {
                      objc_enumerationMutation(v65);
                    }

                    v94 = *(*(&v378 + 1) + 8 * v90);
                    v95 = objc_opt_class();
                    v104 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v95, v96, v94, v366, v97, v98);
                    v367 = *(MEMORY[0x1E695F058] + 16);
                    v369 = *MEMORY[0x1E695F058];
                    v376 = *MEMORY[0x1E695F058];
                    v377 = v367;
                    if (v104)
                    {
                      if (v87 == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        if (qword_1EA84DC48 != -1)
                        {
                          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                        }

                        v105 = qword_1EA84DC50[0];
                        v106 = qword_1EA84DC50[0];
                        if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(buf.a) = 134217984;
                          *(&buf.a + 4) = NAN;
                          _os_log_impl(&dword_18366B000, v105, OS_LOG_TYPE_ERROR, "Invalid stroke index %ld", &buf, 0xCu);
                        }

                        if (qword_1EA84DC48 != -1)
                        {
                          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                        }

                        v107 = qword_1EA84DC50[0];
                        v108 = qword_1EA84DC50[0];
                        if (os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
                        {
                          LODWORD(buf.a) = 134217984;
                          *(&buf.a + 4) = NAN;
                          _os_log_impl(&dword_18366B000, v107, OS_LOG_TYPE_FAULT, "Invalid stroke index %ld", &buf, 0xCu);
                        }
                      }

                      objc_msgSend_bounds(v104, v99, v100, v101, v102, v103);
                      v110 = v109;
                      v112 = v111;
                      v114 = v113;
                      v116 = v115;
                      objc_msgSend_localWritingOrientationAtStrokeIndex_(v359, v117, v87, v118, v119, v120);
                      v123 = atan2(v122, v121);
                      v408.origin.x = v110;
                      v408.origin.y = v112;
                      v408.size.width = v114;
                      v408.size.height = v116;
                      MidX = CGRectGetMidX(v408);
                      v409.origin.x = v110;
                      v409.origin.y = v112;
                      v409.size.width = v114;
                      v409.size.height = v116;
                      MidY = CGRectGetMidY(v409);
                      memset(&v393, 0, sizeof(v393));
                      CGAffineTransformMakeTranslation(&v393, MidX, MidY);
                      v394 = v393;
                      CGAffineTransformRotate(&buf, &v394, v123);
                      v393 = buf;
                      v394 = buf;
                      CGAffineTransformTranslate(&buf, &v394, -MidX, -MidY);
                      v393 = buf;
                      memset(&v394, 0, sizeof(v394));
                      CGAffineTransformInvert(&v394, &buf);
                      buf.a = 0.0;
                      *&buf.b = &buf;
                      *&buf.c = 0x4010000000;
                      *&buf.d = &unk_183A5AC72;
                      *&buf.tx = v369;
                      v405 = v367;
                      v389 = 0;
                      v390 = &v389;
                      v391 = 0x2020000000;
                      v392 = 0;
                      v387[0] = 0;
                      v387[1] = v387;
                      v387[2] = 0x3010000000;
                      v387[3] = &unk_183A5AC72;
                      v388 = *MEMORY[0x1E695EFF8];
                      v386[0] = 0;
                      v386[1] = v386;
                      v386[2] = 0x2020000000;
                      v386[3] = 0;
                      *&v382.a = MEMORY[0x1E69E9820];
                      *&v382.b = 3221225472;
                      *&v382.c = sub_18397D3EC;
                      *&v382.d = &unk_1E6DE0758;
                      v385 = v394;
                      *&v382.tx = v386;
                      *&v382.ty = &buf;
                      v383 = v387;
                      v384 = &v389;
                      objc_msgSend_enumeratePointsWithTimestep_usingBlock_(v104, v126, &v382, v127, v128, v129, 0.00833333333);
                      v130 = *(*&buf.b + 48);
                      v376 = *(*&buf.b + 32);
                      v377 = v130;
                      v92 = v390[3];
                      _Block_object_dispose(v386, 8);
                      _Block_object_dispose(v387, 8);
                      _Block_object_dispose(&v389, 8);
                      _Block_object_dispose(&buf, 8);
                    }

                    else
                    {
                      v92 = 0.0;
                    }

                    v93 = v377;
                    *v91 = v376;
                    *(v91 + 1) = v93;
                    v91 += 32;
                    v78[v87] = v92;
                    v89 = v89 + v92;
                    ++v87;
                    ++v90;
                  }

                  while (v86 != v90);
                  v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v99, &v378, &v399, 16, v103);
                }

                while (v86);
              }

              else
              {
                v89 = 0.0;
              }

              v131 = objc_msgSend_count(v65, v81, v82, v83, v84, v85);
              *&v353 = v332;
              *(&v353 + 1) = v331;
              b = v335;
              d = v333;
              a = v336;
              v350 = v334;
              v354.size.width = v311;
              v354.size.height = v310;
              v354.origin.x = v313;
              v354.origin.y = v312;
              v328 = v317;
              v329 = v318;
              if (objc_msgSend_count(v65, v132, v133, v134, v135, v136))
              {
                v142 = 0;
                v143 = 0;
                v339 = v89 / v131 * 0.2;
                v328 = v317;
                v329 = v318;
                do
                {
                  v144 = objc_msgSend_objectAtIndexedSubscript_(v65, v137, v143, v139, v140, v141);
                  v145 = objc_opt_class();
                  v149 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v145, v146, v144, v366, v147, v148);
                  *&v353 = v332;
                  *(&v353 + 1) = v331;
                  b = v335;
                  d = v333;
                  a = v336;
                  v350 = v334;
                  if (v149)
                  {
                    objc_msgSend_bounds(v149, v150, v151, v152, v153, v154);
                    v156 = v155;
                    v158 = v157;
                    v160 = v159;
                    v162 = v161;
                    objc_msgSend_localWritingOrientationAtStrokeIndex_(v359, v163, v143, v164, v165, v166);
                    v169 = atan2(v168, v167);
                    v410.origin.x = v156;
                    v410.origin.y = v158;
                    v410.size.width = v160;
                    v410.size.height = v162;
                    v170 = CGRectGetMidX(v410);
                    v411.origin.x = v156;
                    v411.origin.y = v158;
                    v411.size.width = v160;
                    v411.size.height = v162;
                    v171 = CGRectGetMidY(v411);
                    memset(&v394, 0, sizeof(v394));
                    CGAffineTransformMakeTranslation(&v394, v170, v171);
                    buf = v394;
                    CGAffineTransformRotate(&v382, &buf, v169);
                    v394 = v382;
                    buf = v382;
                    CGAffineTransformTranslate(&v382, &buf, -v170, -v171);
                    v394 = v382;
                    a = v382.a;
                    v350 = v382.c;
                    b = v382.b;
                    d = v382.d;
                    v353 = *&v382.tx;
                  }

                  v172 = &v338[32 * v143];
                  v368 = *v172;
                  v365 = v172[1];
                  v370 = v172[2];
                  v364 = v172[3];
                  if (v143 >= objc_msgSend_count(v65, v150, v151, v152, v153, v154) - 1)
                  {
                    v354.size.width = v370;
                    v354.size.height = v364;
                    v354.origin.x = v368;
                    v354.origin.y = v365;
                    v178 = v143;
LABEL_53:
                    if (v142)
                    {
                      goto LABEL_55;
                    }
                  }

                  else
                  {
                    v354.origin.x = v368;
                    v354.origin.y = v365;
                    v354.size.width = v370;
                    v354.size.height = v364;
                    v177 = &v338[32 * v143 + 56];
                    while (1)
                    {
                      v178 = v143 + 1;
                      v362 = *(v177 - 3);
                      recta = *(v177 - 2);
                      v355 = *v177;
                      v357 = *(v177 - 1);
                      v179 = objc_msgSend_objectAtIndexedSubscript_(v65, v173, v143 + 1, v174, v175, v176);
                      v180 = objc_opt_class();
                      v184 = objc_msgSend_strokeForIdentifier_inStrokeProvider_(v180, v181, v179, v366, v182, v183);
                      objc_msgSend_bounds(v184, v185, v186, v187, v188, v189);
                      v191 = v190;
                      v193 = v192;
                      v195 = v194;
                      v197 = v196;
                      objc_msgSend_localWritingOrientationAtStrokeIndex_(v359, v198, v143 + 1, v199, v200, v201);
                      v204 = atan2(v203, v202);
                      v412.origin.x = v191;
                      v412.origin.y = v193;
                      v412.size.width = v195;
                      v412.size.height = v197;
                      v205 = CGRectGetMidX(v412);
                      v413.origin.x = v191;
                      v413.origin.y = v193;
                      v413.size.width = v195;
                      v413.size.height = v197;
                      v206 = CGRectGetMidY(v413);
                      memset(&v394, 0, sizeof(v394));
                      CGAffineTransformMakeTranslation(&v394, v205, v206);
                      buf = v394;
                      CGAffineTransformRotate(&v382, &buf, v204);
                      v394 = v382;
                      buf = v382;
                      CGAffineTransformTranslate(&v382, &buf, -v205, -v206);
                      v394 = v382;
                      v348 = *&v382.a;
                      v207 = *&v382.c;
                      v208 = *&v382.tx;
                      ty = v382.ty;
                      v347 = v382.d;
                      buf.a = a;
                      buf.b = b;
                      buf.c = v350;
                      buf.d = d;
                      *&buf.tx = v353;
                      CGAffineTransformInvert(&v382, &buf);
                      v344 = v382.c;
                      v345 = v382.a;
                      v342 = v382.d;
                      v343 = v382.b;
                      tx = v382.tx;
                      v341 = v382.ty;
                      v414.origin.x = v362;
                      v414.origin.y = recta;
                      v414.size.height = v355;
                      v414.size.width = v357;
                      MaxX = CGRectGetMaxX(v414);
                      v415.origin.x = v362;
                      v415.origin.y = recta;
                      v415.size.height = v355;
                      v415.size.width = v357;
                      MaxY = CGRectGetMaxY(v415);
                      buf.a = a;
                      buf.b = b;
                      buf.c = v350;
                      buf.d = d;
                      *&buf.tx = v353;
                      CGAffineTransformInvert(&v382, &buf);
                      v212 = v382.a;
                      v213 = v382.c;
                      v356 = v382.d;
                      v358 = v382.b;
                      v214 = v382.tx;
                      v340 = v382.ty;
                      v416.origin.x = v368;
                      v416.origin.y = v365;
                      v416.size.width = v370;
                      v416.size.height = v364;
                      MinX = CGRectGetMinX(v416);
                      v216 = *&v208 + recta * *&v207 + *&v348 * v362;
                      rect = ty + recta * v347 + *(&v348 + 1) * v362;
                      v363 = v216;
                      v217 = tx + rect * v344 + v345 * v216;
                      v218 = *&v208 + *&v207 * MaxY + *&v348 * MaxX;
                      v219 = ty + v347 * MaxY + *(&v348 + 1) * MaxX;
                      v220 = v214 + v219 * v213 + v212 * v218;
                      if (MinX > v217 || (v417.origin.x = v368, v417.origin.y = v365, v417.size.width = v370, v417.size.height = v364, v217 > CGRectGetMaxX(v417)))
                      {
                        v418.origin.x = v368;
                        v418.origin.y = v365;
                        v418.size.width = v370;
                        v418.size.height = v364;
                        if (v217 > CGRectGetMinX(v418))
                        {
                          goto LABEL_49;
                        }

                        v419.origin.x = v368;
                        v419.origin.y = v365;
                        v419.size.width = v370;
                        v419.size.height = v364;
                        if (CGRectGetMinX(v419) > v220)
                        {
                          goto LABEL_49;
                        }
                      }

                      v420.origin.x = v368;
                      v420.origin.y = v365;
                      v420.size.width = v370;
                      v420.size.height = v364;
                      v221 = v217;
                      if (CGRectGetMinX(v420) > v217)
                      {
                        v421.origin.x = v368;
                        v421.origin.y = v365;
                        v421.size.width = v370;
                        v421.size.height = v364;
                        v221 = CGRectGetMinX(v421);
                      }

                      v422.origin.x = v368;
                      v422.origin.y = v365;
                      v422.size.width = v370;
                      v422.size.height = v364;
                      v222 = CGRectGetMaxX(v422) < v220;
                      v223 = v214 + v219 * v213 + v212 * v218;
                      if (v222)
                      {
                        v423.origin.x = v368;
                        v423.origin.y = v365;
                        v423.size.width = v370;
                        v423.size.height = v364;
                        v223 = CGRectGetMaxX(v423);
                      }

                      if ((v223 - v221) / v370 + (v223 - v221) / (v220 - v217) < 0.3)
                      {
LABEL_49:
                        if (v78[v143 + 1] >= v339)
                        {
                          break;
                        }
                      }

                      v431.origin.y = v341 + rect * v342 + v343 * v363;
                      v431.origin.x = v217 + -1.0;
                      v431.size.width = 1.0;
                      v431.size.height = 1.0;
                      v424 = CGRectUnion(v354, v431);
                      v432.origin.y = v340 + v219 * v356 + v358 * v218;
                      v432.origin.x = v220 + -1.0;
                      v432.size.width = 1.0;
                      v432.size.height = 1.0;
                      v354 = CGRectUnion(v424, v432);
                      v177 += 4;
                      ++v143;
                      if (v178 >= objc_msgSend_count(v65, v224, v225, v226, v227, v228) - 1)
                      {
                        goto LABEL_53;
                      }
                    }

                    v178 = v143;
                    if (v142)
                    {
                      goto LABEL_55;
                    }
                  }

                  v229 = CGRectGetMinX(v354);
                  v230 = CGRectGetMaxY(v354) + 6.0;
                  v328 = *(&v353 + 1) + d * v230 + b * v229;
                  v329 = *&v353 + v350 * v230 + a * v229;
                  *&v231 = v329;
                  *&v232 = v328;
                  objc_msgSend_addPoint_(v337, v233, v234, v235, v236, v237, COERCE_DOUBLE(__PAIR64__(v232, v231)));
LABEL_55:
                  v238 = CGRectGetMidX(v354);
                  v239 = CGRectGetMaxY(v354) + 6.0;
                  *&v240 = *&v353 + v350 * v239 + a * v238;
                  *&v241 = *(&v353 + 1) + d * v239 + b * v238;
                  objc_msgSend_addPoint_(v337, v242, v243, v244, v245, v246, COERCE_DOUBLE(__PAIR64__(v241, v240)));
                  v143 = v178 + 1;
                  v142 = 1;
                }

                while (v178 + 1 < objc_msgSend_count(v65, v247, v248, v249, v250, v251));
              }

              if (objc_msgSend_count(v65, v137, v138, v139, v140, v141))
              {
                v257 = CGRectGetMaxX(v354);
                v258 = CGRectGetMaxY(v354) + 6.0;
                *&v259 = *&v353 + v350 * v258 + a * (v257 + 7.0);
                *&v260 = *(&v353 + 1) + d * v258 + b * (v257 + 7.0);
                objc_msgSend_addPoint_(v337, v261, v262, v263, v264, v265, COERCE_DOUBLE(__PAIR64__(v260, v259)));
              }

              objc_msgSend_flush(v337, v252, v253, v254, v255, v256);
              free(v338);
              free(v78);
              v271 = objc_msgSend_path(v321, v266, v267, v268, v269, v270);
              v272 = CGPathRetain(v271);
            }

            else
            {
              v272 = 0;
              v328 = v317;
              v329 = v318;
            }

            CGContextAddPath(context, v272);
            CGContextStrokePath(context);
            CGPathRelease(v272);
            if (self)
            {
              v273 = v328 + 10.0 + -22.0;
            }

            else
            {
              v273 = 0.0;
            }

            if (self)
            {
              v274 = v329 + -22.0;
            }

            else
            {
              v274 = 0.0;
            }

            CGContextSetLineWidth(context, 2.0);
            CGContextSetAlpha(context, 0.8);
            v425.origin.x = v274;
            v425.origin.y = v273;
            v425.size.width = v322;
            v425.size.height = v322;
            CGContextFillEllipseInRect(context, v425);
            v426.origin.x = v274;
            v426.origin.y = v273;
            v426.size.width = v322;
            v426.size.height = v322;
            v275 = CGRectGetMidY(v426);
            CGContextTranslateCTM(context, 0.0, v275);
            CGContextScaleCTM(context, 1.0, -1.0);
            v427.origin.x = v274;
            v427.origin.y = v273;
            v427.size.width = v322;
            v427.size.height = v322;
            v276 = CGRectGetMidY(v427);
            CGContextTranslateCTM(context, 0.0, -v276);
            if (v320 <= 98)
            {
              v277 = 3.0;
            }

            else
            {
              v277 = 4.5;
            }

            v428.origin.x = v274;
            v428.origin.y = v273;
            v428.size.width = v322;
            v428.size.height = v322;
            v429 = CGRectInset(v428, 0.0, v277);
            x = v429.origin.x;
            y = v429.origin.y;
            width = v429.size.width;
            height = v429.size.height;
            if (v320 <= 98)
            {
              v282 = v315;
            }

            else
            {
              v282 = cf;
            }

            LOBYTE(v378) = 2;
            LODWORD(buf.a) = 0;
            *&buf.b = 1;
            *&buf.c = &v378;
            v382.a = 0.0;
            *&v382.b = &v382;
            *&v382.c = 0x2020000000;
            v283 = off_1EA84D290;
            *&v382.d = off_1EA84D290;
            if (!off_1EA84D290)
            {
              v399 = MEMORY[0x1E69E9820];
              v400 = 3221225472;
              v401 = sub_18397D704;
              v402 = &unk_1E6DDD2E0;
              v403 = &v382;
              sub_18397D704(&v399);
              v283 = *(*&v382.b + 24);
            }

            _Block_object_dispose(&v382, 8);
            if (!v283)
            {
              goto LABEL_99;
            }

            v284 = v283(&buf, 1);
            v382.a = 0.0;
            *&v382.b = &v382;
            *&v382.c = 0x2020000000;
            v285 = qword_1EA84D298;
            *&v382.d = qword_1EA84D298;
            if (!qword_1EA84D298)
            {
              v399 = MEMORY[0x1E69E9820];
              v400 = 3221225472;
              v401 = sub_18397D84C;
              v402 = &unk_1E6DDD2E0;
              v403 = &v382;
              sub_18397D84C(&v399);
              v285 = *(*&v382.b + 24);
            }

            _Block_object_dispose(&v382, 8);
            if (!v285)
            {
              goto LABEL_99;
            }

            v395[0] = *v285;
            v396[0] = v282;
            v382.a = 0.0;
            *&v382.b = &v382;
            *&v382.c = 0x2020000000;
            v286 = qword_1EA84D2A0;
            *&v382.d = qword_1EA84D2A0;
            if (!qword_1EA84D2A0)
            {
              v399 = MEMORY[0x1E69E9820];
              v400 = 3221225472;
              v401 = sub_18397D994;
              v402 = &unk_1E6DDD2E0;
              v403 = &v382;
              sub_18397D994(&v399);
              v286 = *(*&v382.b + 24);
            }

            _Block_object_dispose(&v382, 8);
            if (!v286)
            {
              goto LABEL_99;
            }

            v395[1] = *v286;
            v396[1] = v314;
            v382.a = 0.0;
            *&v382.b = &v382;
            *&v382.c = 0x2020000000;
            v287 = qword_1EA84D2A8;
            *&v382.d = qword_1EA84D2A8;
            if (!qword_1EA84D2A8)
            {
              v399 = MEMORY[0x1E69E9820];
              v400 = 3221225472;
              v401 = sub_18397DADC;
              v402 = &unk_1E6DDD2E0;
              v403 = &v382;
              sub_18397DADC(&v399);
              v287 = *(*&v382.b + 24);
            }

            _Block_object_dispose(&v382, 8);
            if (!v287)
            {
              goto LABEL_99;
            }

            v395[2] = *v287;
            v396[2] = v284;
            v290 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v288, v396, v395, 3, v289);
            v291 = objc_alloc(MEMORY[0x1E696AAB0]);
            v296 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v292, @"%ld", v293, v294, v295, v320 + 1);
            v300 = objc_msgSend_initWithString_attributes_(v291, v297, v296, v290, v298, v299);
            v430.origin.x = x;
            v430.origin.y = y;
            v430.size.width = width;
            v430.size.height = height;
            v301 = CGPathCreateWithRect(v430, 0);
            v382.a = 0.0;
            *&v382.b = &v382;
            *&v382.c = 0x2020000000;
            v302 = off_1EA84D2B0;
            *&v382.d = off_1EA84D2B0;
            if (!off_1EA84D2B0)
            {
              v399 = MEMORY[0x1E69E9820];
              v400 = 3221225472;
              v401 = sub_18397DC24;
              v402 = &unk_1E6DDD2E0;
              v403 = &v382;
              sub_18397DC24(&v399);
              v302 = *(*&v382.b + 24);
            }

            _Block_object_dispose(&v382, 8);
            if (!v302)
            {
              goto LABEL_99;
            }

            v303 = v302(v300);
            v382.a = 0.0;
            *&v382.b = &v382;
            *&v382.c = 0x2020000000;
            v304 = off_1EA84D2B8;
            *&v382.d = off_1EA84D2B8;
            if (!off_1EA84D2B8)
            {
              v399 = MEMORY[0x1E69E9820];
              v400 = 3221225472;
              v401 = sub_18397DD6C;
              v402 = &unk_1E6DDD2E0;
              v403 = &v382;
              sub_18397DD6C(&v399);
              v304 = *(*&v382.b + 24);
            }

            _Block_object_dispose(&v382, 8);
            if (!v304)
            {
              goto LABEL_99;
            }

            v305 = (v304)(v303, 0, 0, v301, 0);
            CGContextSetAlpha(context, 1.0);
            v382.a = 0.0;
            *&v382.b = &v382;
            *&v382.c = 0x2020000000;
            v306 = off_1EA84D2C0;
            *&v382.d = off_1EA84D2C0;
            if (!off_1EA84D2C0)
            {
              v399 = MEMORY[0x1E69E9820];
              v400 = 3221225472;
              v401 = sub_18397DEB4;
              v402 = &unk_1E6DDD2E0;
              v403 = &v382;
              sub_18397DEB4(&v399);
              v306 = *(*&v382.b + 24);
            }

            _Block_object_dispose(&v382, 8);
            if (!v306)
            {
LABEL_99:
              v307 = dlerror();
              abort_report_np("%s", v307);
              __break(1u);
            }

            v306(v305, context);
            CFRelease(v305);
            CFRelease(v303);
            CGPathRelease(v301);
            CFRelease(v284);
            CGContextRestoreGState(context);
          }
        }
      }

      v325 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v371, v398, 16, v36);
    }

    while (v325);
  }

  CGColorRelease(color);
  CGColorRelease(v314);
  CGColorSpaceRelease(space);
  CFRelease(cf);
  CFRelease(v315);
}

@end