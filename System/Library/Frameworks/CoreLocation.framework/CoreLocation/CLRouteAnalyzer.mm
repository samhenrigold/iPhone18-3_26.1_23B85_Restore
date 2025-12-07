@interface CLRouteAnalyzer
+ (double)calculateRouteLinearity:(id)linearity;
+ (id)extractRouteCorners:(id)corners;
@end

@implementation CLRouteAnalyzer

+ (double)calculateRouteLinearity:(id)linearity
{
  v397 = *MEMORY[0x1E69E9840];
  if (linearity)
  {
    if (objc_msgSend_count(linearity, a2, linearity, v3) > 9)
    {
      memset(v381, 0, sizeof(v381));
      v383 = 0;
      v384 = 0;
      v382 = xmmword_19BA89490;
      v385 = 0x3FF0000000000000;
      linearityCopy = linearity;
      v21 = objc_msgSend_count(linearity, v5, v6, v7);
      sub_19B9CA9C0(v381, v21);
      *buf = 0;
      sub_19B8F518C(v381, buf);
      if (objc_msgSend_count(linearityCopy, v22, v23, v24) >= 2)
      {
        v28 = 1;
        do
        {
          v29 = objc_msgSend_objectAtIndexedSubscript_(linearityCopy, v25, v28 - 1, v27);
          v32 = objc_msgSend_objectAtIndexedSubscript_(linearityCopy, v30, v28, v31);
          objc_msgSend_coordinate(v29, v33, v34, v35);
          v37 = v36;
          objc_msgSend_coordinate(v29, v38, v39, v40);
          v42 = v41;
          objc_msgSend_coordinate(v32, v43, v44, v45);
          v47 = v46;
          objc_msgSend_coordinate(v32, v48, v49, v50);
          sub_19BA0C01C(&v382, v37, v42, v47, v51, 0.0);
          if (v52 < 0.0)
          {
            v52 = 0.0;
          }

          *buf = v52 + *(v381[1] - 1);
          sub_19B8F518C(v381, buf);
          ++v28;
        }

        while (v28 < objc_msgSend_count(linearityCopy, v53, v54, v55));
      }

      v367 = 0;
      v368 = 0;
      v369 = 0;
      if (objc_msgSend_count(linearityCopy, v25, v26, v27) >= 0x28)
      {
        v59 = objc_msgSend_count(linearityCopy, v56, v57, v58);
        v60 = v59;
        if (v59 >= 0x15)
        {
          sub_19B9CAA60(&v367, v59 - 40);
          v350 = v60 - 20;
          if (v60 - 20 >= 0x15)
          {
            v64 = 20;
            v65 = 160;
            v66 = 168;
            do
            {
              v356 = 0;
              v67 = 0;
              *buf = v64;
              *&buf[16] = 0;
              v388 = 0.0;
              v351 = 0.0;
              v355 = 0.0;
              *&buf[8] = 0;
              do
              {
                v68 = 0;
                v69 = *&qword_19BA8CE80[v67];
                if (v69 >= 8.0)
                {
                  v70 = *&qword_19BA8CE80[v67];
                }

                else
                {
                  v70 = 8.0;
                }

                v71 = (v381[0] + v65);
                v72 = 0.0;
                v73 = v64;
                do
                {
                  if (v72 >= v70 && v68 > 9)
                  {
                    break;
                  }

                  v75 = *v71;
                  v76 = *--v71;
                  v72 = v72 + v75 - v76;
                  ++v68;
                  --v73;
                }

                while (v73);
                if (objc_msgSend_count(linearityCopy, v61, v62, v63) - 1 > v64)
                {
                  v77 = 0;
                  v78 = 0.0;
                  while (v78 < v70 || v77 <= 9)
                  {
                    v80 = *(v381[0] + 8 * v77 + v66);
                    v81 = *(v381[0] + 8 * v77++ + v65);
                    v78 = v78 + v80 - v81;
                    v82 = v64 + v77;
                    if (v64 + v77 >= objc_msgSend_count(linearityCopy, v61, v62, v63) - 1)
                    {
                      goto LABEL_56;
                    }
                  }

                  v82 = v64 + v77;
LABEL_56:
                  if (v73 < v64 && v82 > v64)
                  {
                    v83 = objc_msgSend_objectAtIndexedSubscript_(linearityCopy, v61, v73, v63);
                    v86 = objc_msgSend_objectAtIndexedSubscript_(linearityCopy, v84, v64, v85);
                    v89 = objc_msgSend_objectAtIndexedSubscript_(linearityCopy, v87, v82, v88);
                    v90 = *(v381[0] + v64);
                    v91 = v90 - *(v381[0] + v73);
                    v92 = *(v381[0] + v82) - v90;
                    if (v91 >= 10.0 && v92 >= 10.0)
                    {
                      v94 = v89;
                      objc_msgSend_coordinate(v83, v61, v62, v63, v92);
                      v96 = v95;
                      objc_msgSend_coordinate(v83, v97, v98, v99);
                      v101 = v100;
                      objc_msgSend_coordinate(v86, v102, v103, v104);
                      v106 = v105;
                      objc_msgSend_coordinate(v86, v107, v108, v109);
                      v111 = sub_19BA0C44C(&v382, v96, v101, v106, v110);
                      objc_msgSend_coordinate(v86, v112, v113, v114);
                      v116 = v115;
                      objc_msgSend_coordinate(v86, v117, v118, v119);
                      v121 = v120;
                      objc_msgSend_coordinate(v94, v122, v123, v124);
                      v126 = v125;
                      objc_msgSend_coordinate(v94, v127, v128, v129);
                      v131 = sub_19BA0C44C(&v382, v116, v121, v126, v130);
                      v132 = v131 - v111 + floor((v131 - v111) / 360.0) * -360.0;
                      if (v132 > 180.0)
                      {
                        v132 = v132 + -360.0;
                      }

                      v133 = fabs(v132);
                      v134 = dbl_19BA8CE70[v69 < 25.0];
                      if (v69 < 20.0)
                      {
                        v134 = v134 + 10.0;
                      }

                      if (v133 > v134)
                      {
                        ++v356;
                        if (v133 > v355)
                        {
                          v351 = v132;
                          v355 = v133;
                        }
                      }
                    }
                  }
                }

                ++v67;
              }

              while (v67 != 3);
              *&buf[8] = v356;
              *&buf[16] = v355;
              v388 = v351;
              if (v356 > 1)
              {
                sub_19B9CAB04(&v367, buf);
              }

              ++v64;
              v65 += 8;
              v66 += 8;
            }

            while (v64 != v350);
          }
        }
      }

      v135 = v367;
      v136 = v368;
      memset(buf, 0, sizeof(buf));
      if (v367 == v368)
      {
        v139 = 0;
        v138 = 0;
      }

      else
      {
        do
        {
          v137 = v135[2];
          *v370 = *v135;
          *&v370[8] = v137;
          sub_19B9CAC20(buf, v370);
          v135 += 4;
        }

        while (v135 != v136);
        v138 = *buf;
        v139 = *&buf[8];
      }

      v140 = (v139 - v138) >> 4;
      v141 = 126 - 2 * __clz(v140);
      if (v139 == v138)
      {
        v142 = 0;
      }

      else
      {
        v142 = v141;
      }

      sub_19B9CAD3C(v138, v139, v142, 1);
      v364 = 0;
      v365 = 0;
      v366 = 0;
      if (v139 != v138)
      {
        if (!(v140 >> 60))
        {
          sub_19B9CACF4((v139 - v138) >> 4);
        }

        sub_19B8B8A40();
      }

      if (v138)
      {
        operator delete(v138);
      }

      v361 = 0;
      v362 = 0;
      v363 = 0;
      std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
      __p = 0;
      v359 = 0;
      v360 = 0;
      *buf = 0;
      sub_19B8D8B54(&__p, buf);
      v146 = v361;
      v147 = v362;
      while (v146 != v147)
      {
        *buf = *v146;
        sub_19B8D8B54(&__p, buf);
        ++v146;
      }

      *buf = objc_msgSend_count(linearity, v143, v144, v145) - 1;
      sub_19B8D8B54(&__p, buf);
      v151 = __p;
      if (v359 - __p == 8)
      {
        goto LABEL_106;
      }

      v152 = 0;
      do
      {
        v153 = &v151[v152];
        v154 = *v153;
        v155 = v153[1];
        if (v154 < objc_msgSend_count(linearity, v148, v149, v150) && v155 < objc_msgSend_count(linearity, v148, v149, v150))
        {
          v156 = objc_msgSend_objectAtIndexedSubscript_(linearity, v148, v154, v150);
          v159 = objc_msgSend_objectAtIndexedSubscript_(linearity, v157, v155, v158);
          if (qword_1EAFE4798 != -1)
          {
            dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
          }

          v160 = qword_1EAFE47A0;
          if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
          {
            objc_msgSend_coordinate(v156, v161, v162, v163);
            v165 = v164;
            objc_msgSend_coordinate(v156, v166, v167, v168);
            v170 = v169;
            objc_msgSend_coordinate(v159, v171, v172, v173);
            v175 = v174;
            objc_msgSend_coordinate(v159, v176, v177, v178);
            *buf = 134350593;
            *&buf[4] = v152;
            *&buf[12] = 2050;
            *&buf[14] = v154;
            *&buf[22] = 2050;
            v388 = *&v155;
            v389 = 2053;
            v390 = v165;
            v391 = 2053;
            v392 = v170;
            v393 = 2053;
            v394 = v175;
            v395 = 2053;
            v396 = v179;
            _os_log_impl(&dword_19B873000, v160, OS_LOG_TYPE_DEFAULT, "CLOR,routeLinearity,segmentBounds,%{public}zu,startIdx,%{public}zu,endIdx,%{public}zu,startLat,%{sensitive}.8f,startLon,%{sensitive}.8f,endLat,%{sensitive}.8f,endLon,%{sensitive}.8f", buf, 0x48u);
          }

          v180 = sub_19B87DD40();
          if (*(v180 + 160) > 1 || *(v180 + 164) > 1 || *(v180 + 168) > 1 || *(v180 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1EAFE4798 != -1)
            {
              dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
            }

            v184 = qword_1EAFE47A0;
            objc_msgSend_coordinate(v156, v181, v182, v183);
            v186 = v185;
            objc_msgSend_coordinate(v156, v187, v188, v189);
            v191 = v190;
            objc_msgSend_coordinate(v159, v192, v193, v194);
            v196 = v195;
            objc_msgSend_coordinate(v159, v197, v198, v199);
            *v370 = 134350593;
            *&v370[4] = v152;
            *&v370[12] = 2050;
            *&v370[14] = v154;
            v371 = 2050;
            v372 = *&v155;
            v373 = 2053;
            v374 = v186;
            v375 = 2053;
            v376 = v191;
            v377 = 2053;
            v378 = v196;
            v379 = 2053;
            v380 = v200;
            v201 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v184, 0, "CLOR,routeLinearity,segmentBounds,%{public}zu,startIdx,%{public}zu,endIdx,%{public}zu,startLat,%{sensitive}.8f,startLon,%{sensitive}.8f,endLat,%{sensitive}.8f,endLon,%{sensitive}.8f", v370, 72);
            sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer calculateRouteLinearity:]", "CoreLocation: %s\n", v201);
            if (v201 != buf)
            {
              free(v201);
            }
          }
        }

        ++v152;
        v151 = __p;
      }

      while (v152 < ((v359 - __p) >> 3) - 1);
      if (v359 - __p == 8)
      {
LABEL_106:
        v202 = 0.0;
        v203 = 0.0;
        v204 = 0.0;
      }

      else
      {
        v202 = 0.0;
        v209 = 0;
        v210 = 20.0;
        v204 = 0.0;
        v203 = 0.0;
        linearityCopy3 = linearity;
        do
        {
          v212 = v151[v209];
          v213 = v209 + 1;
          v214 = v151[v209 + 1];
          v354 = v214 - v212;
          if (v214 - v212 >= 0xA)
          {
            v215 = objc_msgSend_objectAtIndexedSubscript_(linearityCopy3, v148, v212, v150);
            v218 = objc_msgSend_objectAtIndexedSubscript_(linearityCopy3, v216, v214, v217);
            objc_msgSend_coordinate(v215, v219, v220, v221);
            v223 = v222;
            objc_msgSend_coordinate(v215, v224, v225, v226);
            v228 = v227;
            objc_msgSend_coordinate(v218, v229, v230, v231);
            v233 = v232;
            objc_msgSend_coordinate(v218, v234, v235, v236);
            sub_19BA0C01C(&v382, v223, v228, v233, v237, 0.0);
            if (v239 >= v210)
            {
              v240 = v239;
              objc_msgSend_coordinate(v215, v148, v238, v150);
              v242 = v241;
              objc_msgSend_coordinate(v215, v243, v244, v245);
              v247 = v246;
              objc_msgSend_coordinate(v218, v248, v249, v250);
              v252 = v251;
              v353 = v204;
              v253 = v203;
              objc_msgSend_coordinate(v218, v254, v255, v256);
              v261 = sub_19BA0C44C(&v382, v242, v247, v252, v257);
              v262 = 0.0;
              v263 = 0.0;
              if (v214 > v212 && v214 >= 6 && v212 < v214 - 5)
              {
                v264 = v261;
                v352 = v202;
                v265 = 0;
                v266 = v212;
                do
                {
                  v267 = v266 + 5;
                  if (v266 + 5 < objc_msgSend_count(linearity, v258, v259, v260))
                  {
                    v268 = objc_msgSend_objectAtIndexedSubscript_(linearity, v258, v266, v260);
                    v271 = objc_msgSend_objectAtIndexedSubscript_(linearity, v269, v266 + 5, v270);
                    objc_msgSend_coordinate(v268, v272, v273, v274);
                    v276 = v275;
                    objc_msgSend_coordinate(v268, v277, v278, v279);
                    v281 = v280;
                    objc_msgSend_coordinate(v271, v282, v283, v284);
                    v286 = v285;
                    objc_msgSend_coordinate(v271, v287, v288, v289);
                    v291 = vabdd_f64(sub_19BA0C44C(&v382, v276, v281, v286, v290), v264);
                    if (v291 > 180.0)
                    {
                      v291 = 360.0 - v291;
                    }

                    v263 = v263 + v291;
                    ++v265;
                  }

                  v266 = v267;
                }

                while (v267 < v214 - 5);
                if (v265)
                {
                  v263 = v263 / v265;
                }

                else
                {
                  v263 = 0.0;
                }

                v202 = v352;
              }

              if (v214 > v212 && v214 >= 0xB)
              {
                v292 = v214 - 10;
                if (v212 < v214 - 10)
                {
                  v293 = 0;
                  v294 = 0.0;
                  do
                  {
                    v295 = v212;
                    v212 += 5;
                    if (v295 + 5 < objc_msgSend_count(linearity, v258, v259, v260) && v295 + 10 < objc_msgSend_count(linearity, v258, v259, v260))
                    {
                      v296 = objc_msgSend_objectAtIndexedSubscript_(linearity, v258, v295, v260);
                      v299 = objc_msgSend_objectAtIndexedSubscript_(linearity, v297, v295 + 5, v298);
                      v302 = objc_msgSend_objectAtIndexedSubscript_(linearity, v300, v295 + 10, v301);
                      objc_msgSend_coordinate(v296, v303, v304, v305);
                      v307 = v306;
                      objc_msgSend_coordinate(v296, v308, v309, v310);
                      v312 = v311;
                      objc_msgSend_coordinate(v299, v313, v314, v315);
                      v317 = v316;
                      objc_msgSend_coordinate(v299, v318, v319, v320);
                      v322 = sub_19BA0C44C(&v382, v307, v312, v317, v321);
                      objc_msgSend_coordinate(v299, v323, v324, v325);
                      v327 = v326;
                      objc_msgSend_coordinate(v299, v328, v329, v330);
                      v332 = v331;
                      objc_msgSend_coordinate(v302, v333, v334, v335);
                      v337 = v336;
                      objc_msgSend_coordinate(v302, v338, v339, v340);
                      v342 = vabdd_f64(sub_19BA0C44C(&v382, v327, v332, v337, v341), v322);
                      if (v342 > 180.0)
                      {
                        v342 = 360.0 - v342;
                      }

                      v294 = v294 + v342;
                      ++v293;
                    }
                  }

                  while (v212 < v292);
                  if (v293)
                  {
                    v262 = v294 / v293;
                  }

                  else
                  {
                    v262 = 0.0;
                  }
                }
              }

              v343 = 0.25;
              if (v262 > 50.0)
              {
                v343 = fmin((v262 + -50.0) / 33.0 * 0.3, 0.3) + 0.25;
              }

              v344 = fmax(v262 / -60.0 + 1.0, 0.0) * v343 + (1.0 - v343) * fmax(v263 / -120.0 + 1.0, 0.0);
              v345 = pow(v344, 2.2);
              linearityCopy3 = linearity;
              if (qword_1EAFE4798 != -1)
              {
                dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
              }

              v346 = v253;
              v347 = qword_1EAFE47A0;
              if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134350592;
                *&buf[4] = v209;
                *&buf[12] = 2050;
                *&buf[14] = v354;
                *&buf[22] = 2050;
                v388 = v240;
                v389 = 2050;
                v390 = v263;
                v391 = 2050;
                v392 = v344;
                v393 = 2050;
                v394 = v345;
                v395 = 2050;
                v396 = v240 * v345;
                _os_log_impl(&dword_19B873000, v347, OS_LOG_TYPE_DEFAULT, "CLOR,routeLinearity,segment,%{public}zu,points,%{public}zu,distance,%{public}.1f,avgDeviation,%{public}.2f,rawLinearity,%{public}.3f,linearity,%{public}.3f,weightedContrib,%{public}.3f", buf, 0x48u);
              }

              v348 = sub_19B87DD40();
              v204 = v353 + v345 * v240;
              v203 = v346 + v240;
              ++*&v202;
              if (*(v348 + 160) > 1 || *(v348 + 164) > 1 || *(v348 + 168) > 1 || *(v348 + 152))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1EAFE4798 != -1)
                {
                  dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
                }

                *v370 = 134350592;
                *&v370[4] = v209;
                *&v370[12] = 2050;
                *&v370[14] = v354;
                v371 = 2050;
                v372 = v240;
                v373 = 2050;
                v374 = v263;
                v375 = 2050;
                v376 = v344;
                v377 = 2050;
                v378 = v345;
                v379 = 2050;
                v380 = v240 * v345;
                v349 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47A0, 0, "CLOR,routeLinearity,segment,%{public}zu,points,%{public}zu,distance,%{public}.1f,avgDeviation,%{public}.2f,rawLinearity,%{public}.3f,linearity,%{public}.3f,weightedContrib,%{public}.3f", v370, 72);
                sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer calculateRouteLinearity:]", "CoreLocation: %s\n", v349);
                v210 = 20.0;
                if (v349 != buf)
                {
                  free(v349);
                }
              }

              else
              {
                v210 = 20.0;
              }
            }
          }

          v151 = __p;
          ++v209;
        }

        while (v213 < ((v359 - __p) >> 3) - 1);
      }

      if (v203 <= 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v204 / v203;
      }

      if (qword_1EAFE4798 != -1)
      {
        dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
      }

      v205 = qword_1EAFE47A0;
      if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134350080;
        *&buf[4] = ((v359 - __p) >> 3) - 1;
        *&buf[12] = 2050;
        *&buf[14] = (v362 - v361) >> 3;
        *&buf[22] = 2050;
        v388 = v202;
        v389 = 2050;
        v390 = v203;
        v391 = 2050;
        v392 = v13;
        _os_log_impl(&dword_19B873000, v205, OS_LOG_TYPE_DEFAULT, "CLOR,routeLinearity,summary,segments,%{public}zu,turns,%{public}zu,processedSegments,%{public}zu,totalDistance,%{public}.1f,finalScore,%{public}.3f", buf, 0x34u);
      }

      v206 = sub_19B87DD40();
      if (*(v206 + 160) > 1 || *(v206 + 164) > 1 || *(v206 + 168) > 1 || *(v206 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4798 != -1)
        {
          dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
        }

        *v370 = 134350080;
        *&v370[4] = ((v359 - __p) >> 3) - 1;
        *&v370[12] = 2050;
        *&v370[14] = (v362 - v361) >> 3;
        v371 = 2050;
        v372 = v202;
        v373 = 2050;
        v374 = v203;
        v375 = 2050;
        v376 = v13;
        v207 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47A0, 0, "CLOR,routeLinearity,summary,segments,%{public}zu,turns,%{public}zu,processedSegments,%{public}zu,totalDistance,%{public}.1f,finalScore,%{public}.3f", v370, 52);
        sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer calculateRouteLinearity:]", "CoreLocation: %s\n", v207);
        if (v207 != buf)
        {
          free(v207);
        }
      }

      if (__p)
      {
        v359 = __p;
        operator delete(__p);
      }

      if (v361)
      {
        v362 = v361;
        operator delete(v361);
      }

      if (v364)
      {
        operator delete(v364);
      }

      if (v367)
      {
        operator delete(v367);
      }

      if (v381[0])
      {
        v381[1] = v381[0];
        operator delete(v381[0]);
      }
    }

    else
    {
      if (qword_1EAFE4798 != -1)
      {
        dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
      }

      v8 = qword_1EAFE47A0;
      if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        *&buf[4] = objc_msgSend_count(linearity, v9, v10, v11);
        _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "CLOR,routeLinearity,warning,insufficient samples,%{public}zu", buf, 0xCu);
      }

      v12 = sub_19B87DD40();
      if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || (v13 = 0.0, *(v12 + 152)))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE4798 != -1)
        {
          dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
        }

        v17 = qword_1EAFE47A0;
        LODWORD(v381[0]) = 134349056;
        *(v381 + 4) = objc_msgSend_count(linearity, v14, v15, v16);
        v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v17, 0, "CLOR,routeLinearity,warning,insufficient samples,%{public}zu", v381, 12);
        sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer calculateRouteLinearity:]", "CoreLocation: %s\n", v18);
        if (v18 == buf)
        {
          return 0.0;
        }

        goto LABEL_26;
      }
    }
  }

  else
  {
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
    }

    v19 = qword_1EAFE47A0;
    if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "CLOR,routeLinearity,error,null locationSamples", buf, 2u);
    }

    v20 = sub_19B87DD40();
    if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || (v13 = 0.0, *(v20 + 152)))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4798 != -1)
      {
        dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
      }

      LOWORD(v381[0]) = 0;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47A0, 0, "CLOR,routeLinearity,error,null locationSamples", v381, 2);
      sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer calculateRouteLinearity:]", "CoreLocation: %s\n", v18);
      if (v18 == buf)
      {
        return 0.0;
      }

LABEL_26:
      free(v18);
      return 0.0;
    }
  }

  return v13;
}

+ (id)extractRouteCorners:(id)corners
{
  v331 = *MEMORY[0x1E69E9840];
  __src = 0;
  v311 = 0;
  v312 = 0;
  if (!corners)
  {
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
    }

    v18 = qword_1EAFE47A0;
    if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEFAULT, "CLOR,extractRouteCorners,error,null tripLocations", buf, 2u);
    }

    v19 = sub_19B87DD40();
    if (*(v19 + 160) <= 1 && *(v19 + 164) <= 1 && *(v19 + 168) <= 1 && !*(v19 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
    }

    LOWORD(v320[0]) = 0;
    v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE47A0, 0, "CLOR,extractRouteCorners,error,null tripLocations", v320, 2);
    sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer extractRouteCorners:]", "CoreLocation: %s\n", v17);
    if (v17 == buf)
    {
      goto LABEL_27;
    }

LABEL_26:
    free(v17);
LABEL_27:
    v20 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    goto LABEL_167;
  }

  cornersCopy = corners;
  if (objc_msgSend_count(corners, a2, corners, v3) < 0xA)
  {
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
    }

    v8 = qword_1EAFE47A0;
    if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      *&buf[4] = objc_msgSend_count(cornersCopy, v9, v10, v11);
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "CLOR,extractRouteCorners,warning,insufficient samples,%{public}zu", buf, 0xCu);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) <= 1 && *(v12 + 164) <= 1 && *(v12 + 168) <= 1 && !*(v12 + 152))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
    }

    v16 = qword_1EAFE47A0;
    LODWORD(v320[0]) = 134349056;
    *(v320 + 4) = objc_msgSend_count(cornersCopy, v13, v14, v15);
    v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v16, 0, "CLOR,extractRouteCorners,warning,insufficient samples,%{public}zu", v320, 12);
    sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer extractRouteCorners:]", "CoreLocation: %s\n", v17);
    if (v17 == buf)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v21 = 0;
  for (i = objc_msgSend_count(cornersCopy, v5, v6, v7); v21 < i; i = objc_msgSend_count(v26, v48, v49, v50))
  {
    v26 = cornersCopy;
    v27 = objc_msgSend_objectAtIndexedSubscript_(cornersCopy, v23, v21, v25);
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
    }

    v28 = qword_1EAFE47A0;
    if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
    {
      objc_msgSend_latitude(v27, v29, v30, v31);
      v33 = v32;
      objc_msgSend_longitude(v27, v34, v35, v36);
      v38 = v37;
      v42 = objc_msgSend_timestamp(v27, v39, v40, v41);
      objc_msgSend_timeIntervalSinceReferenceDate(v42, v43, v44, v45);
      *buf = 134349825;
      *&buf[4] = v21;
      *&buf[12] = 2053;
      *&buf[14] = v33;
      *&buf[22] = 2053;
      v326 = v38;
      v327 = 2050;
      v328 = v46;
      _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_DEFAULT, "CLOR,tripLocation,index,%{public}zu,latitude,%{sensitive}.7f,longitude,%{sensitive}.7f,timestamp,%{public}.1f", buf, 0x2Au);
    }

    v47 = sub_19B87DD40();
    if (*(v47 + 160) > 1 || *(v47 + 164) > 1 || *(v47 + 168) > 1 || *(v47 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE4798 != -1)
      {
        dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
      }

      v54 = qword_1EAFE47A0;
      objc_msgSend_latitude(v27, v51, v52, v53);
      v56 = v55;
      objc_msgSend_longitude(v27, v57, v58, v59);
      v61 = v60;
      v65 = objc_msgSend_timestamp(v27, v62, v63, v64);
      objc_msgSend_timeIntervalSinceReferenceDate(v65, v66, v67, v68);
      LODWORD(v320[0]) = 134349825;
      *(v320 + 4) = v21;
      WORD2(v320[1]) = 2053;
      *(&v320[1] + 6) = v56;
      HIWORD(v320[2]) = 2053;
      *v321 = v61;
      *&v321[8] = 2050;
      *&v321[10] = v69;
      v70 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v54, 0, "CLOR,tripLocation,index,%{public}zu,latitude,%{sensitive}.7f,longitude,%{sensitive}.7f,timestamp,%{public}.1f", v320, 42);
      sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer extractRouteCorners:]", "CoreLocation: %s\n", v70);
      if (v70 != buf)
      {
        free(v70);
      }
    }

    ++v21;
    cornersCopy = v26;
  }

  memset(v320, 0, sizeof(v320));
  *&v321[16] = 0;
  v322 = 0;
  *v321 = xmmword_19BA89490;
  v323 = 0x3FF0000000000000;
  v324 = cornersCopy;
  v71 = objc_msgSend_count(cornersCopy, v23, v24, v25);
  sub_19B9CA9C0(v320, v71);
  *buf = 0;
  sub_19B8F518C(v320, buf);
  if (objc_msgSend_count(v324, v72, v73, v74) >= 2)
  {
    v78 = 1;
    do
    {
      v79 = objc_msgSend_objectAtIndexedSubscript_(v324, v75, v78 - 1, v77);
      v82 = objc_msgSend_objectAtIndexedSubscript_(v324, v80, v78, v81);
      objc_msgSend_latitude(v79, v83, v84, v85);
      v87 = v86;
      objc_msgSend_longitude(v79, v88, v89, v90);
      v92 = v91;
      objc_msgSend_latitude(v82, v93, v94, v95);
      v97 = v96;
      objc_msgSend_longitude(v82, v98, v99, v100);
      sub_19BA0C01C(v321, v87, v92, v97, v101, 0.0);
      if (v102 < 0.0)
      {
        v102 = 0.0;
      }

      *buf = v102 + *(v320[1] - 1);
      sub_19B8F518C(v320, buf);
      ++v78;
    }

    while (v78 < objc_msgSend_count(v324, v103, v104, v105));
  }

  v306 = cornersCopy;
  __p = 0;
  v308 = 0;
  v309 = 0;
  if (objc_msgSend_count(v324, v75, v76, v77) >= 0x28)
  {
    v109 = objc_msgSend_count(v324, v106, v107, v108);
    v110 = v109;
    if (v109 >= 0x15)
    {
      sub_19B9CAA60(&__p, v109 - 40);
      v302 = v110 - 20;
      if (v110 - 20 >= 0x15)
      {
        v114 = 20;
        v115 = 160;
        v116 = 168;
        do
        {
          v305 = 0;
          v117 = 0;
          *buf = v114;
          *&buf[16] = 0;
          v326 = 0.0;
          v303 = 0.0;
          v304 = 0.0;
          *&buf[8] = 0;
          do
          {
            v118 = 0;
            v119 = *&qword_19BA8CE80[v117];
            if (v119 >= 8.0)
            {
              v120 = *&qword_19BA8CE80[v117];
            }

            else
            {
              v120 = 8.0;
            }

            v121 = (v320[0] + v115);
            v122 = 0.0;
            v123 = v114;
            do
            {
              if (v122 >= v120 && v118 > 9)
              {
                break;
              }

              v125 = *v121;
              v126 = *--v121;
              v122 = v122 + v125 - v126;
              ++v118;
              --v123;
            }

            while (v123);
            if (objc_msgSend_count(v324, v111, v112, v113) - 1 > v114)
            {
              v127 = 0;
              v128 = 0.0;
              while (v128 < v120 || v127 <= 9)
              {
                v130 = *(v320[0] + 8 * v127 + v116);
                v131 = *(v320[0] + 8 * v127++ + v115);
                v128 = v128 + v130 - v131;
                v132 = v114 + v127;
                if (v114 + v127 >= objc_msgSend_count(v324, v111, v112, v113) - 1)
                {
                  goto LABEL_71;
                }
              }

              v132 = v114 + v127;
LABEL_71:
              if (v123 < v114 && v132 > v114)
              {
                v133 = objc_msgSend_objectAtIndexedSubscript_(v324, v111, v123, v113);
                v136 = objc_msgSend_objectAtIndexedSubscript_(v324, v134, v114, v135);
                v139 = objc_msgSend_objectAtIndexedSubscript_(v324, v137, v132, v138);
                v140 = *(v320[0] + v114);
                v141 = v140 - *(v320[0] + v123);
                v142 = *(v320[0] + v132) - v140;
                if (v141 >= 10.0 && v142 >= 10.0)
                {
                  v144 = v139;
                  objc_msgSend_latitude(v133, v111, v112, v113, v142);
                  v146 = v145;
                  objc_msgSend_longitude(v133, v147, v148, v149);
                  v151 = v150;
                  objc_msgSend_latitude(v136, v152, v153, v154);
                  v156 = v155;
                  objc_msgSend_longitude(v136, v157, v158, v159);
                  v161 = sub_19BA0C44C(v321, v146, v151, v156, v160);
                  objc_msgSend_latitude(v136, v162, v163, v164);
                  v166 = v165;
                  objc_msgSend_longitude(v136, v167, v168, v169);
                  v171 = v170;
                  objc_msgSend_latitude(v144, v172, v173, v174);
                  v176 = v175;
                  objc_msgSend_longitude(v144, v177, v178, v179);
                  v181 = sub_19BA0C44C(v321, v166, v171, v176, v180);
                  v182 = v181 - v161 + floor((v181 - v161) / 360.0) * -360.0;
                  if (v182 > 180.0)
                  {
                    v182 = v182 + -360.0;
                  }

                  v183 = fabs(v182);
                  v184 = dbl_19BA8CE70[v119 < 25.0];
                  if (v119 < 20.0)
                  {
                    v184 = v184 + 10.0;
                  }

                  if (v183 > v184)
                  {
                    ++v305;
                    if (v183 > v304)
                    {
                      v303 = v182;
                      v304 = v183;
                    }
                  }
                }
              }
            }

            ++v117;
          }

          while (v117 != 3);
          *&buf[8] = v305;
          *&buf[16] = v304;
          v326 = v303;
          if (v305 > 1)
          {
            sub_19B9CAB04(&__p, buf);
          }

          ++v114;
          v115 += 8;
          v116 += 8;
        }

        while (v114 != v302);
      }
    }
  }

  v185 = __p;
  v186 = v308;
  memset(buf, 0, sizeof(buf));
  if (__p == v308)
  {
    v189 = 0;
    v188 = 0;
  }

  else
  {
    do
    {
      v187 = v185[3];
      *v313 = *v185;
      *&v313[8] = v187;
      sub_19B9CAC20(buf, v313);
      v185 += 4;
    }

    while (v185 != v186);
    v188 = *buf;
    v189 = *&buf[8];
  }

  v190 = (v189 - v188) >> 4;
  v191 = 126 - 2 * __clz(v190);
  if (v189 == v188)
  {
    v192 = 0;
  }

  else
  {
    v192 = v191;
  }

  sub_19B9CAD3C(v188, v189, v192, 1);
  if (v189 != v188)
  {
    if (!(v190 >> 60))
    {
      sub_19B9CACF4((v189 - v188) >> 4);
    }

    sub_19B8B8A40();
  }

  v196 = 0;
  v197 = 0;
  v198 = 0;
  do
  {
    if ((v198 >> 4) < 2)
    {
      break;
    }

    v199 = 0;
    v200 = 0;
    v201 = (v198 >> 4) - 1;
    v202 = v320[0];
    v203 = 24;
    while (v199 != v201)
    {
      v193 = 16 * v199++;
      v194 = 16 * v199;
      v195 = *v193;
      v204 = vabdd_f64(v202[*(16 * v199)], v202[*v193]);
      if (v204 < 50.0)
      {
        v196 = (v193 + 16);
        if (fabs(*(v193 + 8)) >= fabs(*(16 * v199 + 8)))
        {
          if (v193 + 32 == v198)
          {
            v200 = 1;
            v198 = v193 + 16;
            break;
          }

          v193 = v203;
          v205 = v203;
          do
          {
            *(v193 - 8) = *(v193 + 8);
            v206 = *(v205 + 16);
            v205 += 16;
            *v193 = v206;
            v194 = v193 + 24;
            v193 = v205;
          }

          while (v194 != v198);
          v196 = (v205 - 8);
        }

        else
        {
          if (v196 == v198)
          {
            v200 = 1;
            v196 = v193;
            v198 = v193;
            break;
          }

          do
          {
            *(v196 - 2) = *v196;
            *(v196 - 1) = v196[1];
            v196 += 2;
          }

          while (v196 != v198);
          v196 -= 2;
        }

        v200 = 1;
        v198 = v196;
      }

      v203 += 16;
      if (v204 < 50.0)
      {
        break;
      }
    }

    if ((v200 & 1) == 0)
    {
      break;
    }
  }

  while (v197++ < 0x1387);
  if (v188)
  {
    operator delete(v188);
  }

  if (v196)
  {
    for (j = 0; j != v196; j += 2)
    {
      v209 = *j;
      v210 = j[1];
      if (v209 < objc_msgSend_count(v306, v193, v194, v195))
      {
        v211 = objc_msgSend_objectAtIndexedSubscript_(v306, v193, v209, v195);
        v215 = objc_msgSend_timestamp(v211, v212, v213, v214);
        objc_msgSend_timeIntervalSinceReferenceDate(v215, v216, v217, v218);
        v220 = v219;
        objc_msgSend_latitude(v211, v221, v222, v223);
        v225 = v224;
        objc_msgSend_longitude(v211, v226, v227, v228);
        v230 = CLLocationCoordinate2DMake(v225, v229);
        if (qword_1EAFE4798 != -1)
        {
          dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
        }

        v231 = qword_1EAFE47A0;
        if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
        {
          objc_msgSend_latitude(v211, v232, v233, v234);
          v236 = v235;
          objc_msgSend_longitude(v211, v237, v238, v239);
          *buf = 134350081;
          *&buf[4] = v209;
          *&buf[12] = 2053;
          *&buf[14] = v236;
          *&buf[22] = 2053;
          v326 = v240;
          v327 = 2050;
          v328 = v210;
          v329 = 2050;
          v330 = v220;
          _os_log_impl(&dword_19B873000, v231, OS_LOG_TYPE_DEFAULT, "CLOR,corner,index,%{public}zu,latitude,%{sensitive}.7f,longitude,%{sensitive}.7f,signedAngle,%{public}.2f,timestamp,%{public}.1f", buf, 0x34u);
        }

        v241 = sub_19B87DD40();
        if (*(v241 + 160) > 1 || *(v241 + 164) > 1 || *(v241 + 168) > 1 || *(v241 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE4798 != -1)
          {
            dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
          }

          v245 = qword_1EAFE47A0;
          objc_msgSend_latitude(v211, v242, v243, v244);
          v247 = v246;
          objc_msgSend_longitude(v211, v248, v249, v250);
          *v313 = 134350081;
          *&v313[4] = v209;
          *&v313[12] = 2053;
          *&v313[14] = v247;
          v314 = 2053;
          v315 = v251;
          v316 = 2050;
          v317 = v210;
          v318 = 2050;
          v319 = v220;
          v252 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v245, 0, "CLOR,corner,index,%{public}zu,latitude,%{sensitive}.7f,longitude,%{sensitive}.7f,signedAngle,%{public}.2f,timestamp,%{public}.1f", v313, 52);
          sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer extractRouteCorners:]", "CoreLocation: %s\n", v252);
          if (v252 != buf)
          {
            free(v252);
          }
        }

        v253 = v311;
        if (v311 >= v312)
        {
          v255 = __src;
          v256 = v311 - __src;
          v257 = 0xCCCCCCCCCCCCCCCDLL * ((v311 - __src) >> 3);
          v258 = v257 + 1;
          if (v257 + 1 > 0x666666666666666)
          {
            sub_19B8B8A40();
          }

          if (0x999999999999999ALL * ((v312 - __src) >> 3) > v258)
          {
            v258 = 0x999999999999999ALL * ((v312 - __src) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v312 - __src) >> 3) >= 0x333333333333333)
          {
            v258 = 0x666666666666666;
          }

          if (v258)
          {
            sub_19B8B9C30(&__src, v258);
          }

          v259 = 8 * ((v311 - __src) >> 3);
          *v259 = v220;
          *(v259 + 8) = v210;
          *(v259 + 16) = v230;
          *(v259 + 32) = v209;
          v254 = 40 * v257 + 40;
          v260 = (v259 - v256);
          memcpy((v259 - v256), v255, v256);
          v261 = __src;
          __src = v260;
          v311 = v254;
          v312 = 0;
          if (v261)
          {
            operator delete(v261);
          }
        }

        else
        {
          *v311 = v220;
          *(v253 + 1) = v210;
          *(v253 + 1) = v230;
          v254 = (v253 + 40);
          *(v253 + 4) = v209;
        }

        v311 = v254;
      }
    }
  }

  if (qword_1EAFE4798 != -1)
  {
    dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
  }

  v262 = qword_1EAFE47A0;
  if (os_log_type_enabled(qword_1EAFE47A0, OS_LOG_TYPE_DEFAULT))
  {
    v266 = objc_msgSend_count(v306, v263, v264, v265);
    *buf = 134349312;
    *&buf[4] = v266;
    *&buf[12] = 2050;
    *&buf[14] = 0xCCCCCCCCCCCCCCCDLL * ((v311 - __src) >> 3);
    _os_log_impl(&dword_19B873000, v262, OS_LOG_TYPE_DEFAULT, "CLOR,cornerSummary,totalPoints,%{public}zu,cornersDetected,%{public}zu", buf, 0x16u);
  }

  v267 = sub_19B87DD40();
  if (*(v267 + 160) > 1 || *(v267 + 164) > 1 || *(v267 + 168) > 1 || *(v267 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE4798 != -1)
    {
      dispatch_once(&qword_1EAFE4798, &unk_1F0E6E598);
    }

    v271 = qword_1EAFE47A0;
    v272 = objc_msgSend_count(v306, v268, v269, v270);
    *v313 = 134349312;
    *&v313[4] = v272;
    *&v313[12] = 2050;
    *&v313[14] = 0xCCCCCCCCCCCCCCCDLL * ((v311 - __src) >> 3);
    v273 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v271, 0, "CLOR,cornerSummary,totalPoints,%{public}zu,cornersDetected,%{public}zu", v313, 22);
    sub_19B885924("Generic", 1, 0, 2, "+[CLRouteAnalyzer extractRouteCorners:]", "CoreLocation: %s\n", v273);
    if (v273 != buf)
    {
      free(v273);
    }
  }

  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v274 = __src;
  v275 = v311;
  if (__src != v311)
  {
    do
    {
      v276 = objc_alloc(MEMORY[0x1E695DF20]);
      v280 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v277, v278, v279, *v274);
      v284 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v281, v282, v283, v274[1]);
      v288 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v285, v286, v287, v274[2]);
      v292 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v289, v290, v291, v274[3]);
      v295 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v293, *(v274 + 4), v294);
      v298 = objc_msgSend_initWithObjectsAndKeys_(v276, v296, v280, v297, @"timestamp", v284, @"signedAngleDeg", v288, @"latitude", v292, @"longitude", v295, @"locationIndex", 0);
      objc_msgSend_addObject_(v20, v299, v298, v300);
      v274 += 5;
    }

    while (v274 != v275);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (v320[0])
  {
    v320[1] = v320[0];
    operator delete(v320[0]);
  }

LABEL_167:
  if (__src)
  {
    v311 = __src;
    operator delete(__src);
  }

  return v20;
}

@end