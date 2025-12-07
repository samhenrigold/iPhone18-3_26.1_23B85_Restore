@interface MDLMaterialPropertyGraph
- (MDLMaterialPropertyGraph)initWithNodes:(NSArray *)nodes connections:(NSArray *)connections;
- (void)evaluate;
@end

@implementation MDLMaterialPropertyGraph

- (MDLMaterialPropertyGraph)initWithNodes:(NSArray *)nodes connections:(NSArray *)connections
{
  v428 = *MEMORY[0x277D85DE8];
  v380 = nodes;
  v379 = connections;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v378 = nodes;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v377 = connections;
  v419 = 0u;
  v420 = 0u;
  v417 = 0u;
  v418 = 0u;
  obj = v380;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v417, v427, v13, v14, v15, v16, 16, v10, v11, v12);
  if (v24)
  {
    v388 = *v418;
    do
    {
      v28 = 0;
      v390 = v24;
      do
      {
        if (*v418 != v388)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v417 + 1) + 8 * v28);
        v413 = 0u;
        v414 = 0u;
        v415 = 0u;
        v416 = 0u;
        v30 = objc_msgSend_inputs(v29, v17, v18, v19, 0, v25, v26, v27, v20, v21, v22, v23);
        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v413, v426, v35, v36, v37, v38, 16, v32, v33, v34);
        if (v45)
        {
          v50 = *v414;
          do
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v414 != v50)
              {
                objc_enumerationMutation(v30);
              }

              objc_msgSend_addObject_(v6, v39, *(*(&v413 + 1) + 8 * i), v40, v46, v47, v48, v49, v41, v42, v43, v44);
            }

            v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v39, &v413, v426, v46, v47, v48, v49, 16, v42, v43, v44);
          }

          while (v45);
        }

        v411 = 0u;
        v412 = 0u;
        v409 = 0u;
        v410 = 0u;
        v62 = objc_msgSend_outputs(v29, v52, v53, v54, 0, v59, v60, v61, v55, v56, v57, v58);
        v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, &v409, v425, v67, v68, v69, v70, 16, v64, v65, v66);
        if (v77)
        {
          v82 = *v410;
          do
          {
            for (j = 0; j != v77; ++j)
            {
              if (*v410 != v82)
              {
                objc_enumerationMutation(v62);
              }

              v84 = *(*(&v409 + 1) + 8 * j);
              objc_msgSend_addObject_(v7, v71, v84, v72, v78, v79, v80, v81, v73, v74, v75, v76);
              objc_msgSend_setObject_forKey_(v8, v85, v29, v84, v90, v91, v92, v93, v86, v87, v88, v89);
            }

            v77 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v71, &v409, v425, v78, v79, v80, v81, 16, v74, v75, v76);
          }

          while (v77);
        }

        ++v28;
      }

      while (v28 != v390);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v417, v427, v94, v25, v26, v27, 16, v21, v22, v23);
    }

    while (v24);
  }

  v391 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v389 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v407 = 0u;
  v408 = 0u;
  v405 = 0u;
  v406 = 0u;
  v385 = v379;
  v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v385, v95, &v405, v424, v99, v100, v101, v102, 16, v96, v97, v98);
  if (v110)
  {
    v115 = *v406;
    do
    {
      for (k = 0; k != v110; ++k)
      {
        if (*v406 != v115)
        {
          objc_enumerationMutation(v385);
        }

        v117 = *(*(&v405 + 1) + 8 * k);
        v118 = objc_msgSend_output(v117, v103, v104, v105, v111, v112, v113, v114, v106, v107, v108, v109);
        if (v118)
        {
          v119 = objc_msgSend_input(v117, v103, v104, v105, v111, v112, v113, v114, v106, v107, v108, v109);
          v120 = v119 == 0;

          if (!v120)
          {
            v121 = objc_msgSend_output(v117, v103, v104, v105, v111, v112, v113, v114, v106, v107, v108, v109);
            v132 = objc_msgSend_containsObject_(v7, v122, v121, v123, v128, v129, v130, v131, v124, v125, v126, v127);

            if ((v132 & 1) == 0)
            {
              v144 = MEMORY[0x277CBEAD8];
              v145 = objc_opt_class();
              v146 = NSStringFromClass(v145);
              v147 = NSStringFromSelector(a2);
              objc_msgSend_raise_format_(v144, v148, @"ModelIOException", @"[%@ %@]: output connection not found in node outputs", v153, v154, v155, v156, v149, v150, v151, v152, v146, v147);
            }

            v157 = objc_msgSend_input(v117, v133, v134, v135, v140, v141, v142, v143, v136, v137, v138, v139);
            v168 = objc_msgSend_containsObject_(v6, v158, v157, v159, v164, v165, v166, v167, v160, v161, v162, v163);

            if ((v168 & 1) == 0)
            {
              v180 = MEMORY[0x277CBEAD8];
              v181 = objc_opt_class();
              v182 = NSStringFromClass(v181);
              v183 = NSStringFromSelector(a2);
              objc_msgSend_raise_format_(v180, v184, @"ModelIOException", @"[%@ %@]: output connection not found in node inputs", v189, v190, v191, v192, v185, v186, v187, v188, v182, v183);
            }

            v193 = objc_msgSend_input(v117, v169, v170, v171, v176, v177, v178, v179, v172, v173, v174, v175);
            objc_msgSend_addObject_(v391, v194, v193, v195, v200, v201, v202, v203, v196, v197, v198, v199);

            v215 = objc_msgSend_output(v117, v204, v205, v206, v211, v212, v213, v214, v207, v208, v209, v210);
            objc_msgSend_addObject_(v389, v216, v215, v217, v222, v223, v224, v225, v218, v219, v220, v221);

            v237 = objc_msgSend_input(v117, v226, v227, v228, v233, v234, v235, v236, v229, v230, v231, v232);
            v248 = objc_msgSend_objectForKey_(v8, v238, v237, v239, v244, v245, v246, v247, v240, v241, v242, v243);

            v260 = objc_msgSend_output(v117, v249, v250, v251, v256, v257, v258, v259, v252, v253, v254, v255);
            v271 = objc_msgSend_objectForKey_(v8, v261, v260, v262, v267, v268, v269, v270, v263, v264, v265, v266);

            objc_msgSend_addObject_(v271[3], v272, v248, v273, v278, v279, v280, v281, v274, v275, v276, v277);
          }
        }
      }

      v110 = objc_msgSend_countByEnumeratingWithState_objects_count_(v385, v103, &v405, v424, v111, v112, v113, v114, 16, v107, v108, v109);
    }

    while (v110);
  }

  v403 = 0u;
  v404 = 0u;
  v401 = 0u;
  v402 = 0u;
  v386 = v385;
  v290 = objc_msgSend_countByEnumeratingWithState_objects_count_(v386, v282, &v401, v423, v286, v287, v288, v289, 16, v283, v284, v285);
  if (v290)
  {
    v291 = *v402;
    do
    {
      for (m = 0; m != v290; ++m)
      {
        if (*v402 != v291)
        {
          objc_enumerationMutation(v386);
        }

        v293 = *(*(&v401 + 1) + 8 * m);
        WeakRetained = objc_loadWeakRetained((v293 + 8));
        v295 = objc_loadWeakRetained((v293 + 16));
        objc_storeWeak(v295 + 22, WeakRetained);

        v296 = objc_loadWeakRetained((v293 + 16));
        v297 = objc_loadWeakRetained((v293 + 8));
        objc_storeWeak(v297 + 21, v296);
      }

      v290 = objc_msgSend_countByEnumeratingWithState_objects_count_(v386, v298, &v401, v423, v302, v303, v304, v305, 16, v299, v300, v301);
    }

    while (v290);
  }

  aSelectora = objc_alloc_init(MEMORY[0x277CBEB18]);
  v382 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v399 = 0u;
  v400 = 0u;
  v397 = 0u;
  v398 = 0u;
  v306 = v6;
  v321 = objc_msgSend_countByEnumeratingWithState_objects_count_(v306, v307, &v397, v422, v311, v312, v313, v314, 16, v308, v309, v310);
  if (v321)
  {
    v326 = *v398;
    do
    {
      for (n = 0; n != v321; ++n)
      {
        if (*v398 != v326)
        {
          objc_enumerationMutation(v306);
        }

        v328 = *(*(&v397 + 1) + 8 * n);
        if ((objc_msgSend_containsObject_(v391, v315, v328, v316, v322, v323, v324, v325, v317, v318, v319, v320) & 1) == 0)
        {
          objc_msgSend_addObject_(aSelectora, v315, v328, v316, v322, v323, v324, v325, v317, v318, v319, v320);
        }
      }

      v321 = objc_msgSend_countByEnumeratingWithState_objects_count_(v306, v315, &v397, v422, v322, v323, v324, v325, 16, v318, v319, v320);
    }

    while (v321);
  }

  v395 = 0u;
  v396 = 0u;
  v393 = 0u;
  v394 = 0u;
  v329 = v7;
  v344 = objc_msgSend_countByEnumeratingWithState_objects_count_(v329, v330, &v393, v421, v334, v335, v336, v337, 16, v331, v332, v333);
  if (v344)
  {
    v349 = *v394;
    do
    {
      for (ii = 0; ii != v344; ++ii)
      {
        if (*v394 != v349)
        {
          objc_enumerationMutation(v329);
        }

        v351 = *(*(&v393 + 1) + 8 * ii);
        if ((objc_msgSend_containsObject_(v389, v338, v351, v339, v345, v346, v347, v348, v340, v341, v342, v343) & 1) == 0)
        {
          objc_msgSend_addObject_(v382, v338, v351, v339, v345, v346, v347, v348, v340, v341, v342, v343);
          v362 = objc_msgSend_objectForKey_(v8, v352, v351, v353, v358, v359, v360, v361, v354, v355, v356, v357);
          objc_msgSend_addObject_(self->_finalNodes, v363, v362, v364, v369, v370, v371, v372, v365, v366, v367, v368);
        }
      }

      v344 = objc_msgSend_countByEnumeratingWithState_objects_count_(v329, v338, &v393, v421, v345, v346, v347, v348, 16, v341, v342, v343);
    }

    while (v344);
  }

  v392.receiver = self;
  v392.super_class = MDLMaterialPropertyGraph;
  v373 = [(MDLMaterialPropertyNode *)&v392 initWithInputs:aSelectora outputs:v382 evaluationFunction:&unk_284D15248];
  v374 = v373;
  if (v373)
  {
    objc_storeStrong(&v373->_nodes, v378);
    objc_storeStrong(&v374->_connections, v377);
    v375 = v374;
  }

  return v374;
}

- (void)evaluate
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = self->_finalNodes;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v24, v28, v9, v10, v11, v12, 16, v6, v7, v8);
  if (v13)
  {
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v4);
        }

        sub_239E83A14(*(*(&v24 + 1) + 8 * v15++), v3);
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v16, &v24, v28, v20, v21, v22, v23, 16, v17, v18, v19);
    }

    while (v13);
  }
}

@end