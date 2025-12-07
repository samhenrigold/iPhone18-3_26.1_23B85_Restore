@interface MDLTransformStack
+ (__n128)globalTransformWithObject:(uint64_t)object atTime:(void *)time;
+ (__n128)localTransformWithObject:(uint64_t)object atTime:(void *)time;
- (BOOL)isScaleRotateTransformOrder;
- (CAAnimation)transformAnimation;
- (MDLAnimatedValue)animatedValueWithName:(NSString *)name;
- (MDLTransformMatrixOp)addMatrixOp:(NSString *)animatedValueName inverse:(BOOL)inverse;
- (MDLTransformOrientOp)addOrientOp:(NSString *)animatedValueName inverse:(BOOL)inverse;
- (MDLTransformRotateOp)addRotateOp:(NSString *)animatedValueName order:(MDLTransformOpRotationOrder)order inverse:(BOOL)inverse;
- (MDLTransformRotateXOp)addRotateXOp:(NSString *)animatedValueName inverse:(BOOL)inverse;
- (MDLTransformRotateYOp)addRotateYOp:(NSString *)animatedValueName inverse:(BOOL)inverse;
- (MDLTransformRotateZOp)addRotateZOp:(NSString *)animatedValueName inverse:(BOOL)inverse;
- (MDLTransformScaleOp)addScaleOp:(NSString *)animatedValueName inverse:(BOOL)inverse;
- (MDLTransformTranslateOp)addTranslateOp:(NSString *)animatedValueName inverse:(BOOL)inverse;
- (NSArray)keyTimes;
- (double)maximumTime;
- (double)minimumTime;
- (id)animatedMatrix4x4WithName:(id)name shouldCreateIfMissing:(BOOL)missing;
- (id)animatedQuaternionWithName:(id)name shouldCreateIfMissing:(BOOL)missing;
- (id)animatedScalarWithName:(id)name shouldCreateIfMissing:(BOOL)missing;
- (id)animatedVector3WithName:(id)name shouldCreateIfMissing:(BOOL)missing;
- (id)animatedVector4WithName:(id)name shouldCreateIfMissing:(BOOL)missing;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decomposedTransformAnimation;
- (id)init;
- (matrix_float4x4)float4x4AtTime:(NSTimeInterval)time;
- (void)clearTransformStack;
- (void)double4x4AtTime:(double)time@<D0>;
- (void)setLocalTransform:(double)transform;
- (void)setLocalTransform:(uint64_t)transform forTime:(const char *)time;
@end

@implementation MDLTransformStack

- (id)init
{
  v9.receiver = self;
  v9.super_class = MDLTransformStack;
  v2 = [(MDLTransformStack *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    transformOps = v2->_transformOps;
    v2->_transformOps = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    animatedValues = v2->_animatedValues;
    v2->_animatedValues = v5;

    v7 = v2;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v384 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v16 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v28 = objc_msgSend_init(v16, v17, v18, v19, v24, v25, v26, v27, v20, v21, v22, v23);
  *(v28 + 8) = self->_resetsTransform;
  v380 = 0u;
  v381 = 0u;
  v378 = 0u;
  v379 = 0u;
  v29 = self->_animatedValues;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v378, v383, v34, v35, v36, v37, 16, v31, v32, v33);
  if (v44)
  {
    v49 = *v379;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v379 != v49)
        {
          objc_enumerationMutation(v29);
        }

        v51 = *(*(&v378 + 1) + 8 * i);
        v52 = objc_msgSend_objectForKeyedSubscript_(self->_animatedValues, v38, v51, v39, v45, v46, v47, v48, v40, v41, v42, v43);
        v64 = objc_msgSend_copy(v52, v53, v54, v55, v60, v61, v62, v63, v56, v57, v58, v59);
        objc_msgSend_setObject_forKeyedSubscript_(*(v28 + 24), v65, v64, v51, v70, v71, v72, v73, v66, v67, v68, v69);
      }

      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v38, &v378, v383, v45, v46, v47, v48, 16, v41, v42, v43);
    }

    while (v44);
  }

  v376 = 0u;
  v377 = 0u;
  v374 = 0u;
  v375 = 0u;
  v74 = self->_transformOps;
  v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v75, &v374, v382, v79, v80, v81, v82, 16, v76, v77, v78);
  if (v83)
  {
    v84 = *v375;
    do
    {
      v85 = 0;
      do
      {
        if (*v375 != v84)
        {
          objc_enumerationMutation(v74);
        }

        v86 = *(*(&v374 + 1) + 8 * v85);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v98 = objc_msgSend_name(v86, v87, v88, v89, v94, v95, v96, v97, v90, v91, v92, v93);
          v110 = objc_msgSend_inverse(v86, v99, v100, v101, v106, v107, v108, v109, v102, v103, v104, v105);
          v120 = objc_msgSend_addRotateXOp_inverse_(v28, v111, v98, v110, v116, v117, v118, v119, v112, v113, v114, v115);
LABEL_29:

          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v98 = objc_msgSend_name(v86, v121, v122, v123, v128, v129, v130, v131, v124, v125, v126, v127);
          v143 = objc_msgSend_inverse(v86, v132, v133, v134, v139, v140, v141, v142, v135, v136, v137, v138);
          v153 = objc_msgSend_addRotateYOp_inverse_(v28, v144, v98, v143, v149, v150, v151, v152, v145, v146, v147, v148);
          goto LABEL_29;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v98 = objc_msgSend_name(v86, v154, v155, v156, v161, v162, v163, v164, v157, v158, v159, v160);
          v176 = objc_msgSend_inverse(v86, v165, v166, v167, v172, v173, v174, v175, v168, v169, v170, v171);
          v186 = objc_msgSend_addRotateZOp_inverse_(v28, v177, v98, v176, v182, v183, v184, v185, v178, v179, v180, v181);
          goto LABEL_29;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v98 = v86;
          v198 = objc_msgSend_name(v98, v187, v188, v189, v194, v195, v196, v197, v190, v191, v192, v193);
          v210 = objc_msgSend_order(v98, v199, v200, v201, v206, v207, v208, v209, v202, v203, v204, v205);
          v222 = objc_msgSend_inverse(v98, v211, v212, v213, v218, v219, v220, v221, v214, v215, v216, v217);
          v231 = objc_msgSend_addRotateOp_order_inverse_(v28, v223, v198, v210, v227, v228, v229, v230, v222, v224, v225, v226);

          goto LABEL_29;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v98 = objc_msgSend_name(v86, v232, v233, v234, v239, v240, v241, v242, v235, v236, v237, v238);
          v254 = objc_msgSend_inverse(v86, v243, v244, v245, v250, v251, v252, v253, v246, v247, v248, v249);
          v264 = objc_msgSend_addTranslateOp_inverse_(v28, v255, v98, v254, v260, v261, v262, v263, v256, v257, v258, v259);
          goto LABEL_29;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v98 = objc_msgSend_name(v86, v265, v266, v267, v272, v273, v274, v275, v268, v269, v270, v271);
          v287 = objc_msgSend_inverse(v86, v276, v277, v278, v283, v284, v285, v286, v279, v280, v281, v282);
          v297 = objc_msgSend_addScaleOp_inverse_(v28, v288, v98, v287, v293, v294, v295, v296, v289, v290, v291, v292);
          goto LABEL_29;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v98 = objc_msgSend_name(v86, v298, v299, v300, v305, v306, v307, v308, v301, v302, v303, v304);
          v320 = objc_msgSend_inverse(v86, v309, v310, v311, v316, v317, v318, v319, v312, v313, v314, v315);
          v330 = objc_msgSend_addOrientOp_inverse_(v28, v321, v98, v320, v326, v327, v328, v329, v322, v323, v324, v325);
          goto LABEL_29;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v98 = objc_msgSend_name(v86, v331, v332, v333, v338, v339, v340, v341, v334, v335, v336, v337);
          v353 = objc_msgSend_inverse(v86, v342, v343, v344, v349, v350, v351, v352, v345, v346, v347, v348);
          v363 = objc_msgSend_addMatrixOp_inverse_(v28, v354, v98, v353, v359, v360, v361, v362, v355, v356, v357, v358);
          goto LABEL_29;
        }

        NSLog(&cfstr_InternalErrorS.isa, v374);
LABEL_30:
        ++v85;
      }

      while (v83 != v85);
      v372 = objc_msgSend_countByEnumeratingWithState_objects_count_(v74, v364, &v374, v382, v368, v369, v370, v371, 16, v365, v366, v367);
      v83 = v372;
    }

    while (v372);
  }

  return v28;
}

- (double)minimumTime
{
  v55 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_count(self->_transformOps, a2, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7))
  {
    return 0.0;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = self->_animatedValues;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v50, v54, v18, v19, v20, v21, 16, v15, v16, v17);
  if (v28)
  {
    v33 = *v51;
    v34 = 1000000000.0;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v51 != v33)
        {
          objc_enumerationMutation(v13);
        }

        v36 = objc_msgSend_objectForKey_(self->_animatedValues, v22, *(*(&v50 + 1) + 8 * i), v23, v29, v30, v31, v32, v24, v25, v26, v27, v50);
        objc_msgSend_minimumTime(v36, v37, v38, v39, v44, v45, v46, v47, v40, v41, v42, v43);
        if (v48 < v34)
        {
          v34 = v48;
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v22, &v50, v54, v29, v30, v31, v32, 16, v25, v26, v27);
    }

    while (v28);
  }

  else
  {
    v34 = 1000000000.0;
  }

  return v34;
}

- (double)maximumTime
{
  v55 = *MEMORY[0x277D85DE8];
  if (!objc_msgSend_count(self->_transformOps, a2, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7))
  {
    return 0.0;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v13 = self->_animatedValues;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v50, v54, v18, v19, v20, v21, 16, v15, v16, v17);
  if (v28)
  {
    v33 = *v51;
    v34 = -1000000000.0;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v51 != v33)
        {
          objc_enumerationMutation(v13);
        }

        v36 = objc_msgSend_objectForKey_(self->_animatedValues, v22, *(*(&v50 + 1) + 8 * i), v23, v29, v30, v31, v32, v24, v25, v26, v27, v50);
        objc_msgSend_maximumTime(v36, v37, v38, v39, v44, v45, v46, v47, v40, v41, v42, v43);
        if (v48 > v34)
        {
          v34 = v48;
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v22, &v50, v54, v29, v30, v31, v32, 16, v25, v26, v27);
    }

    while (v28);
  }

  else
  {
    v34 = -1000000000.0;
  }

  return v34;
}

- (NSArray)keyTimes
{
  v109 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (objc_msgSend_count(self->_transformOps, v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10))
  {
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v15 = self->_animatedValues;
    v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v103, v108, v20, v21, v22, v23, 16, v17, v18, v19);
    if (v30)
    {
      v35 = *v104;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v104 != v35)
          {
            objc_enumerationMutation(v15);
          }

          v37 = objc_msgSend_objectForKey_(self->_animatedValues, v24, *(*(&v103 + 1) + 8 * i), v25, v31, v32, v33, v34, v26, v27, v28, v29, v103);
          v49 = objc_msgSend_keyTimes(v37, v38, v39, v40, v45, v46, v47, v48, v41, v42, v43, v44);
          objc_msgSend_addObjectsFromArray_(v3, v50, v49, v51, v56, v57, v58, v59, v52, v53, v54, v55);
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v24, &v103, v108, v31, v32, v33, v34, 16, v27, v28, v29);
      }

      while (v30);
    }

    v70 = objc_msgSend_orderedSetWithArray_(MEMORY[0x277CBEB70], v60, v3, v61, v66, v67, v68, v69, v62, v63, v64, v65);
    v80 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v71, @"self", 1, v76, v77, v78, v79, v72, v73, v74, v75);
    v107 = v80;
    v90 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v81, &v107, 1, v86, v87, v88, v89, v82, v83, v84, v85);
    v101 = objc_msgSend_sortedArrayUsingDescriptors_(v70, v91, v90, v92, v97, v98, v99, v100, v93, v94, v95, v96);
  }

  else
  {
    v101 = v3;
  }

  return v101;
}

- (id)animatedVector3WithName:(id)name shouldCreateIfMissing:(BOOL)missing
{
  missingCopy = missing;
  nameCopy = name;
  v23 = objc_msgSend_objectForKey_(self->_animatedValues, v7, nameCopy, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  if (v23)
  {
    v28 = 1;
  }

  else
  {
    v28 = !missingCopy;
  }

  if (!v28)
  {
    v29 = objc_msgSend_objectForKey_(self->_animatedValues, v17, nameCopy, v18, v24, v25, v26, v27, v19, v20, v21, v22);

    if (v29)
    {
      v23 = 0;
    }

    else
    {
      v23 = objc_opt_new();
      objc_msgSend_setObject_forKey_(self->_animatedValues, v30, v23, nameCopy, v35, v36, v37, v38, v31, v32, v33, v34);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v23;
  }

  else
  {
    NSLog(&cfstr_WarningIsNotOf.isa, nameCopy);
    v39 = 0;
  }

  return v39;
}

- (id)animatedVector4WithName:(id)name shouldCreateIfMissing:(BOOL)missing
{
  missingCopy = missing;
  nameCopy = name;
  v23 = objc_msgSend_objectForKey_(self->_animatedValues, v7, nameCopy, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  if (v23)
  {
    v28 = 1;
  }

  else
  {
    v28 = !missingCopy;
  }

  if (!v28)
  {
    v29 = objc_msgSend_objectForKey_(self->_animatedValues, v17, nameCopy, v18, v24, v25, v26, v27, v19, v20, v21, v22);

    if (v29)
    {
      v23 = 0;
    }

    else
    {
      v23 = objc_opt_new();
      objc_msgSend_setObject_forKey_(self->_animatedValues, v30, v23, nameCopy, v35, v36, v37, v38, v31, v32, v33, v34);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v23;
  }

  else
  {
    NSLog(&cfstr_WarningIsNotOf_0.isa, nameCopy);
    v39 = 0;
  }

  return v39;
}

- (id)animatedQuaternionWithName:(id)name shouldCreateIfMissing:(BOOL)missing
{
  missingCopy = missing;
  nameCopy = name;
  v23 = objc_msgSend_objectForKey_(self->_animatedValues, v7, nameCopy, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  if (v23)
  {
    v28 = 1;
  }

  else
  {
    v28 = !missingCopy;
  }

  if (!v28)
  {
    v29 = objc_msgSend_objectForKey_(self->_animatedValues, v17, nameCopy, v18, v24, v25, v26, v27, v19, v20, v21, v22);

    if (v29)
    {
      v23 = 0;
    }

    else
    {
      v23 = objc_opt_new();
      objc_msgSend_setObject_forKey_(self->_animatedValues, v30, v23, nameCopy, v35, v36, v37, v38, v31, v32, v33, v34);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v23;
  }

  else
  {
    NSLog(&cfstr_WarningIsNotOf_1.isa, nameCopy);
    v39 = 0;
  }

  return v39;
}

- (id)animatedMatrix4x4WithName:(id)name shouldCreateIfMissing:(BOOL)missing
{
  missingCopy = missing;
  nameCopy = name;
  v23 = objc_msgSend_objectForKey_(self->_animatedValues, v7, nameCopy, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  if (v23)
  {
    v28 = 1;
  }

  else
  {
    v28 = !missingCopy;
  }

  if (!v28)
  {
    v29 = objc_msgSend_objectForKey_(self->_animatedValues, v17, nameCopy, v18, v24, v25, v26, v27, v19, v20, v21, v22);

    if (v29)
    {
      v23 = 0;
    }

    else
    {
      v23 = objc_opt_new();
      objc_msgSend_setObject_forKey_(self->_animatedValues, v30, v23, nameCopy, v35, v36, v37, v38, v31, v32, v33, v34);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v23;
  }

  else
  {
    NSLog(&cfstr_WarningIsNotOf_2.isa, nameCopy);
    v39 = 0;
  }

  return v39;
}

- (id)animatedScalarWithName:(id)name shouldCreateIfMissing:(BOOL)missing
{
  missingCopy = missing;
  nameCopy = name;
  v23 = objc_msgSend_objectForKey_(self->_animatedValues, v7, nameCopy, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  if (v23)
  {
    v28 = 1;
  }

  else
  {
    v28 = !missingCopy;
  }

  if (!v28)
  {
    v29 = objc_msgSend_objectForKey_(self->_animatedValues, v17, nameCopy, v18, v24, v25, v26, v27, v19, v20, v21, v22);

    if (v29)
    {
      v23 = 0;
    }

    else
    {
      v23 = objc_opt_new();
      objc_msgSend_setObject_forKey_(self->_animatedValues, v30, v23, nameCopy, v35, v36, v37, v38, v31, v32, v33, v34);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = v23;
  }

  else
  {
    NSLog(&cfstr_WarningIsNotOf_2.isa, nameCopy);
    v39 = 0;
  }

  return v39;
}

- (MDLTransformTranslateOp)addTranslateOp:(NSString *)animatedValueName inverse:(BOOL)inverse
{
  v4 = inverse;
  v6 = animatedValueName;
  v16 = objc_msgSend_animatedVector3WithName_shouldCreateIfMissing_(self, v7, v6, 1, v12, v13, v14, v15, v8, v9, v10, v11);
  if (v16)
  {
    v17 = [MDLTransformTranslateOp alloc];
    v26 = objc_msgSend_initWithName_inverse_data_(v17, v18, v6, v4, v22, v23, v24, v25, v16, v19, v20, v21);
    objc_msgSend_addObject_(self->_transformOps, v27, v26, v28, v33, v34, v35, v36, v29, v30, v31, v32);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (MDLTransformRotateXOp)addRotateXOp:(NSString *)animatedValueName inverse:(BOOL)inverse
{
  v4 = inverse;
  v6 = animatedValueName;
  v16 = objc_msgSend_animatedScalarWithName_shouldCreateIfMissing_(self, v7, v6, 1, v12, v13, v14, v15, v8, v9, v10, v11);
  if (v16)
  {
    v17 = [MDLTransformRotateXOp alloc];
    v26 = objc_msgSend_initWithName_inverse_data_(v17, v18, v6, v4, v22, v23, v24, v25, v16, v19, v20, v21);
    objc_msgSend_addObject_(self->_transformOps, v27, v26, v28, v33, v34, v35, v36, v29, v30, v31, v32);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (MDLTransformRotateYOp)addRotateYOp:(NSString *)animatedValueName inverse:(BOOL)inverse
{
  v4 = inverse;
  v6 = animatedValueName;
  v16 = objc_msgSend_animatedScalarWithName_shouldCreateIfMissing_(self, v7, v6, 1, v12, v13, v14, v15, v8, v9, v10, v11);
  if (v16)
  {
    v17 = [MDLTransformRotateYOp alloc];
    v26 = objc_msgSend_initWithName_inverse_data_(v17, v18, v6, v4, v22, v23, v24, v25, v16, v19, v20, v21);
    objc_msgSend_addObject_(self->_transformOps, v27, v26, v28, v33, v34, v35, v36, v29, v30, v31, v32);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (MDLTransformRotateZOp)addRotateZOp:(NSString *)animatedValueName inverse:(BOOL)inverse
{
  v4 = inverse;
  v6 = animatedValueName;
  v16 = objc_msgSend_animatedScalarWithName_shouldCreateIfMissing_(self, v7, v6, 1, v12, v13, v14, v15, v8, v9, v10, v11);
  if (v16)
  {
    v17 = [MDLTransformRotateZOp alloc];
    v26 = objc_msgSend_initWithName_inverse_data_(v17, v18, v6, v4, v22, v23, v24, v25, v16, v19, v20, v21);
    objc_msgSend_addObject_(self->_transformOps, v27, v26, v28, v33, v34, v35, v36, v29, v30, v31, v32);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (MDLTransformRotateOp)addRotateOp:(NSString *)animatedValueName order:(MDLTransformOpRotationOrder)order inverse:(BOOL)inverse
{
  v5 = inverse;
  v8 = animatedValueName;
  v18 = objc_msgSend_animatedVector3WithName_shouldCreateIfMissing_(self, v9, v8, 1, v14, v15, v16, v17, v10, v11, v12, v13);
  if (v18)
  {
    v19 = [MDLTransformRotateOp alloc];
    v27 = objc_msgSend_initWithName_inverse_order_data_(v19, v20, v8, v5, v23, v24, v25, v26, order, v18, v21, v22);
    objc_msgSend_addObject_(self->_transformOps, v28, v27, v29, v34, v35, v36, v37, v30, v31, v32, v33);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (MDLTransformScaleOp)addScaleOp:(NSString *)animatedValueName inverse:(BOOL)inverse
{
  v4 = inverse;
  v6 = animatedValueName;
  v16 = objc_msgSend_animatedVector3WithName_shouldCreateIfMissing_(self, v7, v6, 1, v12, v13, v14, v15, v8, v9, v10, v11);
  if (v16)
  {
    v17 = [MDLTransformScaleOp alloc];
    v26 = objc_msgSend_initWithName_inverse_data_(v17, v18, v6, v4, v22, v23, v24, v25, v16, v19, v20, v21);
    objc_msgSend_addObject_(self->_transformOps, v27, v26, v28, v33, v34, v35, v36, v29, v30, v31, v32);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (MDLTransformMatrixOp)addMatrixOp:(NSString *)animatedValueName inverse:(BOOL)inverse
{
  v4 = inverse;
  v6 = animatedValueName;
  v16 = objc_msgSend_animatedMatrix4x4WithName_shouldCreateIfMissing_(self, v7, v6, 1, v12, v13, v14, v15, v8, v9, v10, v11);
  if (v16)
  {
    v17 = [MDLTransformMatrixOp alloc];
    v26 = objc_msgSend_initWithName_inverse_data_(v17, v18, v6, v4, v22, v23, v24, v25, v16, v19, v20, v21);
    objc_msgSend_addObject_(self->_transformOps, v27, v26, v28, v33, v34, v35, v36, v29, v30, v31, v32);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (MDLTransformOrientOp)addOrientOp:(NSString *)animatedValueName inverse:(BOOL)inverse
{
  v4 = inverse;
  v6 = animatedValueName;
  v16 = objc_msgSend_animatedQuaternionWithName_shouldCreateIfMissing_(self, v7, v6, 1, v12, v13, v14, v15, v8, v9, v10, v11);
  if (v16)
  {
    v17 = [MDLTransformOrientOp alloc];
    v26 = objc_msgSend_initWithName_inverse_data_(v17, v18, v6, v4, v22, v23, v24, v25, v16, v19, v20, v21);
    objc_msgSend_addObject_(self->_transformOps, v27, v26, v28, v33, v34, v35, v36, v29, v30, v31, v32);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (MDLAnimatedValue)animatedValueWithName:(NSString *)name
{
  v12 = objc_msgSend_objectForKey_(self->_animatedValues, a2, name, v3, v8, v9, v10, v11, v4, v5, v6, v7);

  return v12;
}

- (matrix_float4x4)float4x4AtTime:(NSTimeInterval)time
{
  v60 = *(MEMORY[0x277D860B8] + 16);
  v62 = *MEMORY[0x277D860B8];
  v56 = *(MEMORY[0x277D860B8] + 48);
  v58 = *(MEMORY[0x277D860B8] + 32);
  if (objc_msgSend_count(self->_transformOps, a2, v3, v4, v56, v58, v9, v10, v5, v6, v7, v8))
  {
    v23 = 0;
    do
    {
      v24 = objc_msgSend_objectAtIndexedSubscript_(self->_transformOps, v13, v23, v14, v19, v20, v21, v22, v15, v16, v17, v18, *&v56, *&v58, *&v60, *&v62, v64, v65, v66, v67);
      v25.n128_f64[0] = time;
      objc_msgSend_float4x4AtTime_(v24, v26, v27, v28, v25, v33, v34, v35, v29, v30, v31, v32);
      v36 = 0;
      v64 = v37;
      v65 = v38;
      v66 = v39;
      v67 = v40;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      do
      {
        *(&v68 + v36) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, COERCE_FLOAT(*(&v64 + v36))), v61, *(&v64 + v36), 1), v59, *(&v64 + v36), 2), v57, *(&v64 + v36), 3);
        v36 += 16;
      }

      while (v36 != 64);
      v60 = v69;
      v62 = v68;
      v56 = v71;
      v58 = v70;

      ++v23;
    }

    while (objc_msgSend_count(self->_transformOps, v41, v42, v43, v48, v49, v50, v51, v44, v45, v46, v47) > v23);
  }

  v53 = v60;
  v52 = v62;
  v55 = v56;
  v54 = v58;
  result.columns[3] = v55;
  result.columns[2] = v54;
  result.columns[1] = v53;
  result.columns[0] = v52;
  return result;
}

- (void)double4x4AtTime:(double)time@<D0>
{
  v35 = MEMORY[0x277D860A0];
  v36 = *(MEMORY[0x277D860A0] + 80);
  a2[4] = *(MEMORY[0x277D860A0] + 64);
  a2[5] = v36;
  v37 = *(v35 + 112);
  a2[6] = *(v35 + 96);
  a2[7] = v37;
  v38 = *(v35 + 16);
  *a2 = *v35;
  a2[1] = v38;
  v39 = *(v35 + 32);
  v40 = *(v35 + 48);
  a2[2] = v39;
  a2[3] = v40;
  result = objc_msgSend_count(*(self + 16), v23, v24, v25, v39, v40, v30, v31, v26, v27, v28, v29);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v53 = objc_msgSend_objectAtIndexedSubscript_(*(self + 16), v42, i, v43, v48, v49, v50, v51, v44, v45, v46, v47, *&v92);
      v64 = v53;
      v65.n128_u64[1] = 0;
      if (v53)
      {
        v65.n128_f64[0] = time;
        objc_msgSend_double4x4AtTime_(v53, v65, v61, v62, v63, v54, v55, v56, v57, v58, v59, v60);
      }

      v66 = 0;
      v68 = *a2;
      v67 = a2[1];
      v70 = a2[2];
      v69 = a2[3];
      v72 = a2[4];
      v71 = a2[5];
      v74 = a2[6];
      v73 = a2[7];
      a20 = 0u;
      a21 = 0u;
      a22 = 0u;
      a23 = 0u;
      a16 = 0u;
      a17 = 0u;
      a18 = 0u;
      a19 = 0u;
      v96 = 0u;
      vars0 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      do
      {
        v76 = *(&a16 + v66);
        v75 = *(&a16 + v66 + 16);
        v77 = (&v92 + v66);
        *v77 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v68, v76.f64[0]), v70, v76, 1), v72, v75.f64[0]), v74, v75, 1);
        v77[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v67, v76.f64[0]), v69, v76, 1), v71, v75.f64[0]), v73, v75, 1);
        v66 += 32;
      }

      while (v66 != 128);
      v78 = vars0;
      a2[4] = v96;
      a2[5] = v78;
      a2[6] = 0u;
      a2[7] = 0u;
      v79 = v93;
      *a2 = v92;
      a2[1] = v79;
      v80 = v95;
      a2[2] = v94;
      a2[3] = v80;

      result = objc_msgSend_count(*(self + 16), v81, v82, v83, v88, v89, v90, v91, v84, v85, v86, v87);
    }
  }

  return result;
}

- (void)setLocalTransform:(uint64_t)transform forTime:(const char *)time
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = objc_opt_class();
  v15 = NSStringFromClass(v4);
  v5 = NSStringFromSelector(time);
  objc_msgSend_raise_format_(v3, v6, @"ModelIOException", @"[%@ %@]:set local transform forTime not yet supported", v11, v12, v13, v14, v7, v8, v9, v10, v15, v5);
}

- (void)setLocalTransform:(double)transform
{
  v41 = *&a4;
  v42 = *&a5;
  v39 = *&a2;
  v40 = *&transform;
  objc_msgSend_clearTransformStack(self, v5, v6, v7, *&a2, *&transform, *&a4, *&a5, v8, v9, v10, v11);
  v43 = objc_msgSend_animatedMatrix4x4WithName_shouldCreateIfMissing_(self, v13, @"transform", 1, v18, v19, v20, v21, v14, v15, v16, v17);
  objc_msgSend_setFloat4x4_atTime_(v43, v22, v23, v24, v39, v40, v41, v42, v25, v26, v27, v28, 0.0);
  v38 = objc_msgSend_addMatrixOp_inverse_(self, v29, @"transform", 0, v34, v35, v36, v37, v30, v31, v32, v33);
}

+ (__n128)localTransformWithObject:(uint64_t)object atTime:(void *)time
{
  v13 = objc_msgSend_componentConformingToProtocol_(time, object, &unk_284D27B70, v4, *&self, v9, v10, v11, v5, v6, v7, v8);
  v25 = v13;
  if (v13)
  {
    v21.n128_f64[0] = self;
    objc_msgSend_localTransformAtTime_(v13, v14, v15, v16, v21, v22, v23, v24, v17, v18, v19, v20);
    v28 = v26;
  }

  else
  {
    v28 = *MEMORY[0x277D860B8];
  }

  return v28;
}

+ (__n128)globalTransformWithObject:(uint64_t)object atTime:(void *)time
{
  timeCopy = time;
  v23 = objc_msgSend_parent(timeCopy, v6, v7, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  if (v23)
  {
    do
    {
      v28 = objc_msgSend_componentConformingToProtocol_(v23, v17, &unk_284D27B70, v18, v24, v25, v26, v27, v19, v20, v21, v22);

      if (v28)
      {
        break;
      }

      v30 = objc_msgSend_parent(v23, v17, v29, v18, v24, v25, v26, v27, v19, v20, v21, v22);

      v23 = v30;
    }

    while (v30);
  }

  v31 = objc_msgSend_componentConformingToProtocol_(v23, v17, &unk_284D27B70, v18, v24, v25, v26, v27, v19, v20, v21, v22);
  if (objc_msgSend_resetsTransform(v31, v32, v33, v34, v39, v40, v41, v42, v35, v36, v37, v38) || !v31)
  {
    v49.n128_f64[0] = self;
    objc_msgSend_localTransformWithObject_atTime_(MDLTransformStack, v43, timeCopy, v44, v49, v50, v51, v52, v45, v46, v47, v48);
    v74 = v68;
  }

  else
  {
    v49.n128_f64[0] = self;
    objc_msgSend_globalTransformWithObject_atTime_(MDLTransformStack, v43, v23, v44, v49, v50, v51, v52, v45, v46, v47, v48);
    v72 = v54;
    v73 = v53;
    v70 = v56;
    v71 = v55;
    v53.n128_f64[0] = self;
    objc_msgSend_localTransformWithObject_atTime_(MDLTransformStack, v57, timeCopy, v58, v53, v54, v55, v56, v59, v60, v61, v62);
    v63 = 0;
    v75[0] = v64;
    v75[1] = v65;
    v75[2] = v66;
    v75[3] = v67;
    memset(v76, 0, sizeof(v76));
    do
    {
      v76[v63] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, COERCE_FLOAT(v75[v63])), v72, *&v75[v63], 1), v71, v75[v63], 2), v70, v75[v63], 3);
      ++v63;
    }

    while (v63 != 4);
    v74 = v76[0];
  }

  return v74;
}

- (void)clearTransformStack
{
  objc_msgSend_removeAllObjects(self->_transformOps, a2, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  animatedValues = self->_animatedValues;

  objc_msgSend_removeAllObjects(animatedValues, v13, v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);
}

- (BOOL)isScaleRotateTransformOrder
{
  v44 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v2 = self->_transformOps;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v39, v43, v7, v8, v9, v10, 16, v4, v5, v6);
  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = 0;
  v13 = *v40;
  do
  {
    v14 = 0;
    v15 = v12;
    do
    {
      if (*v40 != v13)
      {
        objc_enumerationMutation(v2);
      }

      v16 = *(*(&v39 + 1) + 8 * v14);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = 1;
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (objc_msgSend_order(v16, v25, v26, v27, v32, v33, v34, v35, v28, v29, v30, v31, v39) != 1)
        {
          goto LABEL_22;
        }

LABEL_10:
        if (v15 > 5)
        {
          goto LABEL_30;
        }

LABEL_13:
        v12 = 4;
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = 3;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = 2;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_10;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = 5;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
LABEL_22:
              if (v15)
              {
                goto LABEL_30;
              }

              v12 = 6;
              goto LABEL_24;
            }

            v12 = 0;
          }
        }
      }

LABEL_24:
      if (v15 >= v12)
      {
LABEL_30:
        v37 = 0;
        goto LABEL_31;
      }

      ++v14;
      v15 = v12;
    }

    while (v11 != v14);
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v17, &v39, v43, v21, v22, v23, v24, 16, v18, v19, v20);
    v11 = v36;
  }

  while (v36);
LABEL_29:
  v37 = 1;
LABEL_31:

  return v37;
}

- (id)decomposedTransformAnimation
{
  v13 = objc_msgSend_keyTimes(self, a2, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  if (!objc_msgSend_count(v13, v14, v15, v16, v21, v22, v23, v24, v17, v18, v19, v20))
  {
    v564 = 0;
    goto LABEL_24;
  }

  v36 = MEMORY[0x277CBEB18];
  v37 = objc_msgSend_count(v13, v25, v26, v27, v32, v33, v34, v35, v28, v29, v30, v31);
  v48 = objc_msgSend_arrayWithCapacity_(v36, v38, v37, v39, v44, v45, v46, v47, v40, v41, v42, v43);
  v631 = objc_msgSend_animation(MEMORY[0x277CD9EC8], v49, v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);
  objc_msgSend_setKeyPath_(v631, v60, @"position", v61, v66, v67, v68, v69, v62, v63, v64, v65);
  v70 = MEMORY[0x277CBEB18];
  v82 = objc_msgSend_count(v13, v71, v72, v73, v78, v79, v80, v81, v74, v75, v76, v77);
  v634 = objc_msgSend_arrayWithCapacity_(v70, v83, v82, v84, v89, v90, v91, v92, v85, v86, v87, v88);
  v630 = objc_msgSend_animation(MEMORY[0x277CD9EC8], v93, v94, v95, v100, v101, v102, v103, v96, v97, v98, v99);
  objc_msgSend_setKeyPath_(v630, v104, @"orientation", v105, v110, v111, v112, v113, v106, v107, v108, v109);
  v114 = MEMORY[0x277CBEB18];
  v126 = objc_msgSend_count(v13, v115, v116, v117, v122, v123, v124, v125, v118, v119, v120, v121);
  v633 = objc_msgSend_arrayWithCapacity_(v114, v127, v126, v128, v133, v134, v135, v136, v129, v130, v131, v132);
  v629 = objc_msgSend_animation(MEMORY[0x277CD9EC8], v137, v138, v139, v144, v145, v146, v147, v140, v141, v142, v143);
  objc_msgSend_setKeyPath_(v629, v148, @"scale", v149, v154, v155, v156, v157, v150, v151, v152, v153);
  v158 = MEMORY[0x277CBEB18];
  v170 = objc_msgSend_count(v13, v159, v160, v161, v166, v167, v168, v169, v162, v163, v164, v165);
  v181 = objc_msgSend_arrayWithCapacity_(v158, v171, v170, v172, v177, v178, v179, v180, v173, v174, v175, v176);
  v192 = objc_msgSend_objectAtIndex_(v13, v182, 0, v183, v188, v189, v190, v191, v184, v185, v186, v187);
  objc_msgSend_doubleValue(v192, v193, v194, v195, v200, v201, v202, v203, v196, v197, v198, v199);
  v205 = v204;

  v217 = objc_msgSend_count(v13, v206, v207, v208, v213, v214, v215, v216, v209, v210, v211, v212);
  v228 = objc_msgSend_objectAtIndex_(v13, v218, v217 - 1, v219, v224, v225, v226, v227, v220, v221, v222, v223);
  objc_msgSend_doubleValue(v228, v229, v230, v231, v236, v237, v238, v239, v232, v233, v234, v235);
  v241 = v240;

  v251 = 0;
  v252 = v241 - *&v205;
  v253.n128_u64[0] = 1.0;
  __asm { FMOV            V1.4S, #1.0 }

  v632 = _Q1;
  while (v251 < objc_msgSend_count(v13, v242, v243, v244, v253, _Q1, v249, v250, v245, v246, v247, v248))
  {
    v269 = objc_msgSend_objectAtIndex_(v13, v259, v251, v260, v265, v266, v267, v268, v261, v262, v263, v264);
    objc_msgSend_doubleValue(v269, v270, v271, v272, v277, v278, v279, v280, v273, v274, v275, v276);
    v282 = v281;

    v283.n128_f64[0] = (v282 - *&v205) * (1.0 / v252);
    v294 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v284, v285, v286, v283, v291, v292, v293, v287, v288, v289, v290);
    v295.n128_f64[0] = v282;
    objc_msgSend_localTransformAtTime_(self, v296, v297, v298, v295, v303, v304, v305, v299, v300, v301, v302);
    v317 = vmlaq_f32(vnegq_f32(vmulq_f32(v314, vextq_s8(vuzp1q_s32(v315, v315), v315, 0xCuLL))), v315, vextq_s8(vuzp1q_s32(v314, v314), v314, 0xCuLL));
    v318 = vmulq_f32(vextq_s8(vuzp1q_s32(v317, v317), v317, 0xCuLL), v313);
    if ((vaddv_f32(*v318.f32) + v318.f32[2]) >= 0.0)
    {
      v319 = 1.0;
    }

    else
    {
      v319 = -1.0;
    }

    v320 = vmulq_f32(v313, v313);
    v321 = vmulq_f32(v314, v314);
    v322 = vadd_f32(vzip1_s32(*v320.i8, *v321.i8), vzip2_s32(*v320.i8, *v321.i8));
    v323 = vextq_s8(v320, v320, 8uLL);
    *v323.f32 = vsqrt_f32(vadd_f32(v322, vzip1_s32(*v323.f32, *&vextq_s8(v321, v321, 8uLL))));
    v324 = vmulq_f32(v315, v315);
    v323.i32[2] = sqrtf(vaddv_f32(*v324.f32) + v324.f32[2]);
    v325 = vmulq_n_f32(v323, v319);
    v326 = vdupq_lane_s32(*v325.i8, 1);
    v327 = vmulq_f32(v313, vdivq_f32(v632, vdupq_lane_s32(*v325.i8, 0)));
    v328 = vmulq_f32(v314, vdivq_f32(v632, v326));
    v635 = v325;
    v330 = vdivq_f32(v632, vdupq_laneq_s32(v325, 2));
    v329 = vmulq_f32(v315, v330);
    v330.f32[0] = v327.n128_f32[0] + v328.n128_f32[1];
    v331 = (v327.n128_f32[0] + v328.n128_f32[1]) + v329.n128_f32[2];
    if (v331 <= 0.0)
    {
      if (v327.n128_f32[0] <= v328.n128_f32[1] || v327.n128_f32[0] <= v329.n128_f32[2])
      {
        if (v328.n128_f32[1] > v329.n128_f32[2])
        {
          v333.f32[0] = v328.n128_f32[0] + v327.n128_f32[1];
          v334 = v329.n128_f32[2] + v327.n128_f32[0];
          v330.f32[0] = (v328.n128_f32[1] + 1.0) - (v329.n128_f32[2] + v327.n128_f32[0]);
          v327 = vzip2q_s32(v327, v328);
          v333.f32[1] = (v328.n128_f32[1] + 1.0) - v334;
          *&v333.u32[2] = vext_s8(vadd_f32(v329.n128_u64[0], v327.n128_u64[0]), vsub_f32(v329.n128_u64[0], v327.n128_u64[0]), 4uLL);
          v636 = v330;
          v637 = v333;
          goto LABEL_18;
        }

        v338 = vzip2q_s32(v327, v328).u64[0];
        v327.n128_f32[0] = v329.n128_f32[2] + 1.0;
        v339 = vdup_lane_s32(v328.n128_u64[0], 0);
        v329.n128_u64[0] = vadd_f32(v329.n128_u64[0], v338);
        v339.i32[0] = v330.i32[0];
        v327.n128_u64[0] = vsub_f32(v327.n128_u64[0], v339);
        v636 = v327;
        v329.n128_u64[1] = v327.n128_u64[0];
      }

      else
      {
        v326.f32[0] = (v327.n128_f32[0] + 1.0) - (v329.n128_f32[2] + v328.n128_f32[1]);
        *&v335 = v328.n128_f32[0] + v327.n128_f32[1];
        *&v336 = v329.n128_f32[0] + v327.n128_f32[2];
        *&v337 = v328.n128_f32[2] - v329.n128_f32[1];
        v636 = v326;
        v329.n128_u64[0] = __PAIR64__(v335, v326.u32[0]);
        v329.n128_u64[1] = __PAIR64__(v337, v336);
      }
    }

    else
    {
      v329.n128_u64[0] = vsub_f32(*&vzip2q_s32(v328, vuzp1q_s32(v328, v329)), *&vtrn2q_s32(v329, vzip2q_s32(v329, v327)));
      v329.n128_f32[2] = v327.n128_f32[1] - v328.n128_f32[0];
      v327.n128_f32[0] = v331 + 1.0;
      v636 = v327;
      v329.n128_f32[3] = v331 + 1.0;
    }

    v637 = v329;
LABEL_18:
    v327.n128_f64[0] = v316.n128_f32[0];
    v328.n128_f64[0] = v316.n128_f32[1];
    v329.n128_f64[0] = v316.n128_f32[2];
    v316.n128_u64[0] = 0;
    v340 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v306, v307, v308, v327, v328, v329, v316, v309, v310, v311, v312);
    objc_msgSend_addObject_(v634, v341, v340, v342, v347, v348, v349, v350, v343, v344, v345, v346);
    v351.n128_u64[1] = v636.u64[1];
    v352.n128_u64[1] = v637.u64[1];
    v353 = vmulq_n_f32(v637, 0.5 / sqrtf(v636.f32[0]));
    v351.n128_f64[0] = v353.n128_f32[0];
    v352.n128_f64[0] = v353.n128_f32[1];
    v354.n128_f64[0] = v353.n128_f32[2];
    v353.n128_f64[0] = v353.n128_f32[3];
    v362 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v355, v356, v357, v351, v352, v354, v353, v358, v359, v360, v361);

    objc_msgSend_addObject_(v633, v363, v362, v364, v369, v370, v371, v372, v365, v366, v367, v368);
    v373.n128_u64[1] = v635.u64[1];
    v374.n128_f64[0] = *v635.i32;
    v375.n128_f64[0] = *&v635.i32[1];
    v373.n128_f64[0] = *&v635.i32[2];
    v376.n128_u64[0] = 0;
    v384 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v377, v378, v379, v374, v375, v373, v376, v380, v381, v382, v383);

    objc_msgSend_addObject_(v181, v385, v384, v386, v391, v392, v393, v394, v387, v388, v389, v390);
    objc_msgSend_addObject_(v48, v395, v294, v396, v401, v402, v403, v404, v397, v398, v399, v400);

    ++v251;
  }

  v405 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v259, 3, v260, v265, v266, v267, v268, v261, v262, v263, v264);
  objc_msgSend_setValues_(v631, v406, v634, v407, v412, v413, v414, v415, v408, v409, v410, v411);
  objc_msgSend_addObject_(v405, v416, v631, v417, v422, v423, v424, v425, v418, v419, v420, v421);
  objc_msgSend_setValues_(v630, v426, v633, v427, v432, v433, v434, v435, v428, v429, v430, v431);
  objc_msgSend_addObject_(v405, v436, v630, v437, v442, v443, v444, v445, v438, v439, v440, v441);
  objc_msgSend_setValues_(v629, v446, v181, v447, v452, v453, v454, v455, v448, v449, v450, v451);
  objc_msgSend_addObject_(v405, v456, v629, v457, v462, v463, v464, v465, v458, v459, v460, v461);
  v477 = 0;
  v478 = *MEMORY[0x277CDA230];
  while (v477 < objc_msgSend_count(v405, v466, v467, v468, v473, v474, v475, v476, v469, v470, v471, v472))
  {
    v490 = objc_msgSend_objectAtIndex_(v405, v479, v477, v481, v486, v487, v488, v489, v482, v483, v484, v485);
    objc_msgSend_setFillMode_(v490, v491, v478, v492, v497, v498, v499, v500, v493, v494, v495, v496);
    objc_msgSend_setKeyTimes_(v490, v501, v48, v502, v507, v508, v509, v510, v503, v504, v505, v506);
    v511.n128_u64[0] = v205;
    objc_msgSend_setBeginTime_(v490, v512, v513, v514, v511, v519, v520, v521, v515, v516, v517, v518);
    v522.n128_f64[0] = v252;
    objc_msgSend_setDuration_(v490, v523, v524, v525, v522, v530, v531, v532, v526, v527, v528, v529);
    objc_msgSend_setAdditive_(v490, v533, 0, v534, v539, v540, v541, v542, v535, v536, v537, v538);
    objc_msgSend_setRemovedOnCompletion_(v490, v543, 0, v544, v549, v550, v551, v552, v545, v546, v547, v548);
    v553.n128_u32[0] = 1.0;
    objc_msgSend_setRepeatCount_(v490, v554, v555, v556, v553, v561, v562, v563, v557, v558, v559, v560);

    ++v477;
  }

  v564 = objc_msgSend_animation(MEMORY[0x277CD9E00], v479, v480, v481, v486, v487, v488, v489, v482, v483, v484, v485);
  objc_msgSend_setAnimations_(v564, v565, v405, v566, v571, v572, v573, v574, v567, v568, v569, v570);
  v575.n128_u64[0] = v205;
  objc_msgSend_setBeginTime_(v564, v576, v577, v578, v575, v583, v584, v585, v579, v580, v581, v582);
  v586.n128_f64[0] = v252;
  objc_msgSend_setDuration_(v564, v587, v588, v589, v586, v594, v595, v596, v590, v591, v592, v593);
  objc_msgSend_setFillMode_(v564, v597, v478, v598, v603, v604, v605, v606, v599, v600, v601, v602);
  objc_msgSend_setRemovedOnCompletion_(v564, v607, 0, v608, v613, v614, v615, v616, v609, v610, v611, v612);
  v617.n128_u32[0] = 2139095039;
  objc_msgSend_setRepeatCount_(v564, v618, v619, v620, v617, v625, v626, v627, v621, v622, v623, v624);

LABEL_24:

  return v564;
}

- (CAAnimation)transformAnimation
{
  v946 = *MEMORY[0x277D85DE8];
  if ((objc_msgSend_isScaleRotateTransformOrder(self, a2, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7) & 1) == 0)
  {
    v804 = objc_msgSend_decomposedTransformAnimation(self, v13, v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);
    goto LABEL_83;
  }

  v24 = MEMORY[0x277CBEB18];
  v25 = objc_msgSend_count(self->_transformOps, v13, v14, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  v929 = objc_msgSend_arrayWithCapacity_(v24, v26, v25, v27, v32, v33, v34, v35, v28, v29, v30, v31);
  v943 = 0u;
  v944 = 0u;
  v941 = 0u;
  v942 = 0u;
  obj = self->_transformOps;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v941, v945, v40, v41, v42, v43, 16, v37, v38, v39);
  if (!v44)
  {
    v45 = 0.0;
    v46 = 0.0;
    goto LABEL_71;
  }

  v931 = *v942;
  v928 = *MEMORY[0x277CDA230];
  v45 = 0.0;
  v46 = 0.0;
  do
  {
    v932 = v44;
    for (i = 0; i != v932; ++i)
    {
      if (*v942 != v931)
      {
        objc_enumerationMutation(obj);
      }

      v48 = *(*(&v941 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v60 = objc_msgSend_animatedValue(v48, v49, v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);
        v72 = objc_msgSend_keyTimes(v60, v61, v62, v63, v68, v69, v70, v71, v64, v65, v66, v67);

        v84 = @"position";
        if (!v72)
        {
          goto LABEL_64;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v96 = objc_msgSend_animatedValue(v48, v85, v86, v87, v92, v93, v94, v95, v88, v89, v90, v91);
          v72 = objc_msgSend_keyTimes(v96, v97, v98, v99, v104, v105, v106, v107, v100, v101, v102, v103);

          if (objc_msgSend_order(v48, v108, v109, v110, v115, v116, v117, v118, v111, v112, v113, v114) == 1)
          {
            v84 = @"eulerAngles";
          }

          else
          {
            v84 = @"transform";
          }

          if (!v72)
          {
            goto LABEL_64;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v130 = objc_msgSend_animatedValue(v48, v119, v120, v121, v126, v127, v128, v129, v122, v123, v124, v125);
            v72 = objc_msgSend_keyTimes(v130, v131, v132, v133, v138, v139, v140, v141, v134, v135, v136, v137);

            v84 = @"eulerAngles.x";
            if (!v72)
            {
              goto LABEL_64;
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v153 = objc_msgSend_animatedValue(v48, v142, v143, v144, v149, v150, v151, v152, v145, v146, v147, v148);
              v72 = objc_msgSend_keyTimes(v153, v154, v155, v156, v161, v162, v163, v164, v157, v158, v159, v160);

              v84 = @"eulerAngles.y";
              if (!v72)
              {
                goto LABEL_64;
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v176 = objc_msgSend_animatedValue(v48, v165, v166, v167, v172, v173, v174, v175, v168, v169, v170, v171);
                v72 = objc_msgSend_keyTimes(v176, v177, v178, v179, v184, v185, v186, v187, v180, v181, v182, v183);

                v84 = @"eulerAngles.z";
                if (!v72)
                {
                  goto LABEL_64;
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v199 = objc_msgSend_animatedValue(v48, v188, v189, v190, v195, v196, v197, v198, v191, v192, v193, v194);
                  v72 = objc_msgSend_keyTimes(v199, v200, v201, v202, v207, v208, v209, v210, v203, v204, v205, v206);

                  v84 = @"orientation";
                  if (!v72)
                  {
                    goto LABEL_64;
                  }
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v222 = objc_msgSend_animatedValue(v48, v211, v212, v213, v218, v219, v220, v221, v214, v215, v216, v217);
                    v72 = objc_msgSend_keyTimes(v222, v223, v224, v225, v230, v231, v232, v233, v226, v227, v228, v229);

                    v84 = @"scale";
                    if (!v72)
                    {
                      goto LABEL_64;
                    }
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v72 = 0;
                      goto LABEL_64;
                    }

                    v245 = objc_msgSend_animatedValue(v48, v234, v235, v236, v241, v242, v243, v244, v237, v238, v239, v240);
                    v72 = objc_msgSend_keyTimes(v245, v246, v247, v248, v253, v254, v255, v256, v249, v250, v251, v252);

                    v84 = @"transform";
                    if (!v72)
                    {
                      goto LABEL_64;
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (!objc_msgSend_count(v72, v73, v74, v75, v80, v81, v82, v83, v76, v77, v78, v79))
      {
        goto LABEL_64;
      }

      v268 = objc_msgSend_animation(MEMORY[0x277CD9EC8], v257, v258, v259, v264, v265, v266, v267, v260, v261, v262, v263);
      objc_msgSend_setKeyPath_(v268, v269, v84, v270, v275, v276, v277, v278, v271, v272, v273, v274);
      v279 = MEMORY[0x277CBEB18];
      v291 = objc_msgSend_count(v72, v280, v281, v282, v287, v288, v289, v290, v283, v284, v285, v286);
      v302 = objc_msgSend_arrayWithCapacity_(v279, v292, v291, v293, v298, v299, v300, v301, v294, v295, v296, v297);
      v303 = MEMORY[0x277CBEB18];
      v315 = objc_msgSend_count(v72, v304, v305, v306, v311, v312, v313, v314, v307, v308, v309, v310);
      v326 = objc_msgSend_arrayWithCapacity_(v303, v316, v315, v317, v322, v323, v324, v325, v318, v319, v320, v321);
      v337 = objc_msgSend_objectAtIndex_(v72, v327, 0, v328, v333, v334, v335, v336, v329, v330, v331, v332);
      objc_msgSend_doubleValue(v337, v338, v339, v340, v345, v346, v347, v348, v341, v342, v343, v344);
      v350 = v349;

      v362 = objc_msgSend_count(v72, v351, v352, v353, v358, v359, v360, v361, v354, v355, v356, v357);
      v373 = objc_msgSend_objectAtIndex_(v72, v363, v362 - 1, v364, v369, v370, v371, v372, v365, v366, v367, v368);
      objc_msgSend_doubleValue(v373, v374, v375, v376, v381, v382, v383, v384, v377, v378, v379, v380);
      v386 = v385;

      v398 = v386 - v350;
      if (v398 == 0.0)
      {
        goto LABEL_63;
      }

      v399 = objc_msgSend_count(v929, v387, v388, v389, v394, v395, v396, v397, v390, v391, v392, v393);
      v411 = 0;
      if (v46 > v350 || v399 == 0)
      {
        v46 = v350;
      }

      if (v45 < v398)
      {
        v45 = v398;
      }

      while (v411 < objc_msgSend_count(v72, v400, v401, v402, v407, v408, v409, v410, v403, v404, v405, v406, *&v924, *&v925, *&v926, *&v927))
      {
        v423 = objc_msgSend_objectAtIndex_(v72, v413, v411, v414, v419, v420, v421, v422, v415, v416, v417, v418);
        objc_msgSend_doubleValue(v423, v424, v425, v426, v431, v432, v433, v434, v427, v428, v429, v430);
        v436 = v435;

        v437.n128_f64[0] = (*&v436 - v350) * (1.0 / v398);
        v448 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v438, v439, v440, v437, v445, v446, v447, v441, v442, v443, v444);
        objc_msgSend_addObject_(v302, v449, v448, v450, v455, v456, v457, v458, v451, v452, v453, v454);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_44;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (objc_msgSend_order(v48, v506, v507, v508, v513, v514, v515, v516, v509, v510, v511, v512) == 1)
          {
            v528 = objc_msgSend_animatedValue(v48, v517, v518, v519, v524, v525, v526, v527, v520, v521, v522, v523);
            v529.n128_u64[0] = v436;
            objc_msgSend_float3AtTime_(v528, v530, v531, v532, v529, v537, v538, v539, v533, v534, v535, v536);
            v541 = v540 * 0.0174532925;
            v543 = v542 * 0.0174532925;
            v545 = v544.n128_f32[2] * 0.0174532925;
            v544.n128_f64[0] = v541;
            v546.n128_f64[0] = v543;
            v547.n128_f64[0] = v545;
            v548.n128_u64[0] = 0;
            v495 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v549, v550, v551, v544, v546, v547, v548, v552, v553, v554, v555);
          }

          else
          {
            v524.n128_u64[0] = v436;
            objc_msgSend_float4x4AtTime_(v48, v517, v518, v519, v524, v525, v526, v527, v520, v521, v522, v523);
            v933 = vcvtq_f64_f32(*v577.f32);
            v934 = vcvt_hight_f64_f32(v577);
            v935 = vcvtq_f64_f32(*v578.f32);
            v936 = vcvt_hight_f64_f32(v578);
            v937 = vcvtq_f64_f32(*v579.f32);
            v938 = vcvt_hight_f64_f32(v579);
            v939 = vcvtq_f64_f32(*v580.f32);
            v940 = vcvt_hight_f64_f32(v580);
            v495 = objc_msgSend_valueWithCATransform3D_(MEMORY[0x277CCAE60], v581, &v933, v582, v939, v940, v579, v580, v583, v584, v585, v586);
          }

          objc_msgSend_addObject_(v326, v556, v495, v557, v562, v563, v564, v565, v558, v559, v560, v561);
          goto LABEL_45;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v587 = MEMORY[0x277CCABB0];
          v588 = objc_msgSend_animatedValue(v48, v566, v567, v568, v573, v574, v575, v576, v569, v570, v571, v572);
          v589.n128_u64[0] = v436;
          objc_msgSend_floatAtTime_(v588, v590, v591, v592, v589, v597, v598, v599, v593, v594, v595, v596);
          v601.n128_f64[0] = v600 * 0.0174532925;
          v601.n128_f32[0] = v601.n128_f64[0];
          v495 = objc_msgSend_numberWithFloat_(v587, v602, v603, v604, v601, v609, v610, v611, v605, v606, v607, v608);

          objc_msgSend_addObject_(v326, v612, v495, v613, v618, v619, v620, v621, v614, v615, v616, v617);
          goto LABEL_45;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v633 = objc_msgSend_animatedValue(v48, v622, v623, v624, v629, v630, v631, v632, v625, v626, v627, v628);
          v634.n128_u64[0] = v436;
          objc_msgSend_floatQuaternionAtTime_(v633, v635, v636, v637, v634, v642, v643, v644, v638, v639, v640, v641);
          v646.n128_f64[0] = v645;
          v648.n128_f64[0] = v647.n128_f32[2];
          v649.n128_f64[0] = v647.n128_f32[3];
          v647.n128_f64[0] = v650;
          v495 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v651, v652, v653, v647, v646, v648, v649, v654, v655, v656, v657);

          objc_msgSend_addObject_(v326, v658, v495, v659, v664, v665, v666, v667, v660, v661, v662, v663);
          goto LABEL_45;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_44:
          v470 = objc_msgSend_animatedValue(v48, v459, v460, v461, v466, v467, v468, v469, v462, v463, v464, v465);
          v471.n128_u64[0] = v436;
          objc_msgSend_float3AtTime_(v470, v472, v473, v474, v471, v479, v480, v481, v475, v476, v477, v478);
          v483.n128_f64[0] = v482;
          v485.n128_f64[0] = v484.n128_f32[2];
          v486.n128_u64[0] = 0;
          v484.n128_f64[0] = v487;
          v495 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v488, v489, v490, v484, v483, v485, v486, v491, v492, v493, v494);

          objc_msgSend_addObject_(v326, v496, v495, v497, v502, v503, v504, v505, v498, v499, v500, v501);
LABEL_45:

          goto LABEL_46;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v679 = objc_msgSend_animatedValue(v48, v668, v669, v670, v675, v676, v677, v678, v671, v672, v673, v674);
          v680.n128_u64[0] = v436;
          objc_msgSend_float4x4AtTime_(v679, v681, v682, v683, v680, v688, v689, v690, v684, v685, v686, v687);
          v924 = v691;
          v925 = v692;
          v926 = v693;
          v927 = v694;

          v933 = vcvtq_f64_f32(*v924.f32);
          v934 = vcvt_hight_f64_f32(v924);
          v935 = vcvtq_f64_f32(*v925.f32);
          v936 = vcvt_hight_f64_f32(v925);
          v937 = vcvtq_f64_f32(*v926.f32);
          v938 = vcvt_hight_f64_f32(v926);
          v939 = vcvtq_f64_f32(*v927.f32);
          v940 = vcvt_hight_f64_f32(v927);
          v495 = objc_msgSend_valueWithCATransform3D_(MEMORY[0x277CCAE60], v695, &v933, v696, v939, v940, v701, v702, v697, v698, v699, v700);
          objc_msgSend_addObject_(v326, v703, v495, v704, v709, v710, v711, v712, v705, v706, v707, v708);
          goto LABEL_45;
        }

LABEL_46:

        ++v411;
      }

      objc_msgSend_setValues_(v268, v413, v326, v414, v419, v420, v421, v422, v415, v416, v417, v418);
      objc_msgSend_setFillMode_(v268, v713, v928, v714, v719, v720, v721, v722, v715, v716, v717, v718);
      objc_msgSend_setKeyTimes_(v268, v723, v302, v724, v729, v730, v731, v732, v725, v726, v727, v728);
      v733.n128_f64[0] = v350;
      objc_msgSend_setBeginTime_(v268, v734, v735, v736, v733, v741, v742, v743, v737, v738, v739, v740);
      v744.n128_f64[0] = v398;
      objc_msgSend_setDuration_(v268, v745, v746, v747, v744, v752, v753, v754, v748, v749, v750, v751);
      objc_msgSend_setAdditive_(v268, v755, 0, v756, v761, v762, v763, v764, v757, v758, v759, v760);
      objc_msgSend_setRemovedOnCompletion_(v268, v765, 0, v766, v771, v772, v773, v774, v767, v768, v769, v770);
      v775.n128_u32[0] = 1.0;
      objc_msgSend_setRepeatCount_(v268, v776, v777, v778, v775, v783, v784, v785, v779, v780, v781, v782);
      objc_msgSend_addObject_(v929, v786, v268, v787, v792, v793, v794, v795, v788, v789, v790, v791);
LABEL_63:

LABEL_64:
    }

    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v796, &v941, v945, v800, v801, v802, v803, 16, v797, v798, v799);
  }

  while (v44);
LABEL_71:

  if (objc_msgSend_count(v929, v805, v806, v807, v812, v813, v814, v815, v808, v809, v810, v811))
  {
    if (objc_msgSend_count(v929, v816, v817, v818, v823, v824, v825, v826, v819, v820, v821, v822) != 1)
    {
      goto LABEL_75;
    }

    v804 = objc_msgSend_objectAtIndex_(v929, v827, 0, v829, v834, v835, v836, v837, v830, v831, v832, v833);
    objc_msgSend_beginTime(v804, v838, v839, v840, v845, v846, v847, v848, v841, v842, v843, v844);
    if (v856.n128_f64[0] <= 0.0)
    {
      v856.n128_u32[0] = 2139095039;
      objc_msgSend_setRepeatCount_(v804, v849, v850, v851, v856, v857, v858, v859, v852, v853, v854, v855);
    }

    else
    {

LABEL_75:
      v804 = objc_msgSend_animation(MEMORY[0x277CD9E00], v827, v828, v829, v834, v835, v836, v837, v830, v831, v832, v833);
      objc_msgSend_setAnimations_(v804, v860, v929, v861, v866, v867, v868, v869, v862, v863, v864, v865);
      v880.n128_u64[0] = 0;
      if (v46 <= 0.0)
      {
        v880.n128_f64[0] = v46;
      }

      objc_msgSend_setBeginTime_(v804, v870, v871, v872, v880, v877, v878, v879, v873, v874, v875, v876);
      v891.n128_f64[0] = v46 + v45;
      if (v46 <= 0.0)
      {
        v891.n128_f64[0] = v45;
      }

      objc_msgSend_setDuration_(v804, v881, v882, v883, v891, v888, v889, v890, v884, v885, v886, v887);
      objc_msgSend_setFillMode_(v804, v892, *MEMORY[0x277CDA230], v893, v898, v899, v900, v901, v894, v895, v896, v897);
      objc_msgSend_setRemovedOnCompletion_(v804, v902, 0, v903, v908, v909, v910, v911, v904, v905, v906, v907);
      v912.n128_u32[0] = 2139095039;
      objc_msgSend_setRepeatCount_(v804, v913, v914, v915, v912, v920, v921, v922, v916, v917, v918, v919);
    }
  }

  else
  {
    v804 = 0;
  }

LABEL_83:

  return v804;
}

@end