@interface VFXManipulator
- (BOOL)_applyWithEvent:(id *)event;
- (BOOL)hidden;
- (BOOL)mouseDown:(id *)down;
- (BOOL)mouseDragged:(id *)dragged;
- (BOOL)mouseMoved:(id *)moved;
- (BOOL)mouseUp:(id *)up;
- (VFXManipulator)init;
- (VFXNode)manipulatorNode;
- (VFXNode)target;
- (const)snapInfoAtIndex:(unint64_t)index axis:(unint64_t)axis;
- (float32x4_t)_snapPositionToAlign:(float32x4_t)align original:(float)original unit:(__n128)unit axisMove:(__n128)move rayStart:(const char *)start rayDir:(uint64_t)dir didSnap:(_BYTE *)snap snapIndexes:(uint64_t *)self0;
- (id)copy;
- (id)hitTest:(id *)test;
- (id)setupClones;
- (id)snapGuideIndexesOnAxis:(unint64_t)axis;
- (id)world;
- (int64_t)effectiveEditingSpace;
- (unint64_t)_effectiveFeatures;
- (void)_deleteOriginalData;
- (void)_prepareSnapToAlignData:(VFXManipulator *)self minOffset:(SEL)offset maxOffset:(unsigned __int16)maxOffset;
- (void)_saveOriginalData;
- (void)_updateActionWithEvent:(id *)event;
- (void)_updateRuntimeItems;
- (void)addClonesToWorld;
- (void)clearRuntimeItems;
- (void)clearSnapIndexes;
- (void)dealloc;
- (void)prepareSnapToAlignData;
- (void)prepareSnapToAlignDataIfNeeded;
- (void)removeClonesFromWorld;
- (void)setTarget:(id)target;
- (void)setTargets:(id)targets;
- (void)setupNode;
- (void)updateItemsPosition;
- (void)updateItemsRotation:(VFXManipulator *)self;
- (void)updateItemsScale:(float)scale axis:(unsigned __int16)axis;
- (void)updateManipulatorComponents;
- (void)updateManipulatorNode;
- (void)updateManipulatorPosition:(__CFXEngineContext *)position;
- (void)updateTargetsTransforms;
- (void)validateClones;
@end

@implementation VFXManipulator

- (void)setTargets:(id)targets
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_authoringEnvironment(self, a2, targets);
  objc_sync_enter(v5);
  v6 = self->_targets;
  self->_targets = 0;
  if (targets)
  {
    v9 = MEMORY[0x1E695DFA0];
    v10 = objc_msgSend_count(targets, v7, v8);
    v12 = objc_msgSend_orderedSetWithCapacity_(v9, v11, v10);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v13, &v30, v34, 16);
    if (v16)
    {
      v17 = *v31;
      do
      {
        v18 = 0;
        do
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(targets);
          }

          v19 = *(*(&v30 + 1) + 8 * v18);
          v20 = objc_msgSend_node(v19, v14, v15);
          if ((objc_msgSend_editorLocked(v20, v21, v22) & 1) == 0)
          {
            if (!objc_msgSend_component(v19, v14, v15))
            {
              for (i = objc_msgSend_parentItem(v19, v23, v24); ; i = objc_msgSend_parentItem(v26, v14, v15))
              {
                v26 = i;
                if (!i)
                {
                  break;
                }

                if (objc_msgSend_containsObject_(targets, v23, i))
                {
                  goto LABEL_10;
                }
              }
            }

            objc_msgSend_addObject_(v12, v23, v19);
          }

LABEL_10:
          ++v18;
        }

        while (v18 != v16);
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v14, &v30, v34, 16);
        v16 = v27;
      }

      while (v27);
    }

    self->_targets = v12;
  }

  objc_sync_exit(v5);
  objc_msgSend_updateManipulatorNode(self, v28, v29);
}

- (VFXNode)target
{
  v4 = objc_msgSend_authoringEnvironment(self, a2, v2);
  objc_sync_enter(v4);
  if (objc_msgSend_count(self->_targets, v5, v6))
  {
    Object = objc_msgSend_firstObject(self->_targets, v7, v8);
  }

  else
  {
    Object = 0;
  }

  objc_sync_exit(v4);
  return Object;
}

- (void)setTarget:(id)target
{
  if (target)
  {
    target = objc_msgSend_orderedSetWithObject_(MEMORY[0x1E695DFB8], a2, target);
  }

  objc_msgSend_setTargets_(self, a2, target);
}

- (VFXManipulator)init
{
  v10.receiver = self;
  v10.super_class = VFXManipulator;
  v2 = [(VFXManipulator *)&v10 init];
  if (v2)
  {
    v2->_presentationItemsLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    *v2->_anon_20 = xmmword_1AFE20620;
    *&v2->_anon_20[16] = xmmword_1AFE20160;
    *&v2->_anon_20[32] = xmmword_1AFE20630;
    *&v2->_anon_20[48] = xmmword_1AFE201A0;
    *v2->_anon_60 = xmmword_1AFE20150;
    *&v2->_anon_60[16] = xmmword_1AFE208E0;
    *&v2->_anon_60[32] = xmmword_1AFE208F0;
    *&v2->_anon_60[48] = xmmword_1AFE201A0;
    *v2->_anon_a0 = xmmword_1AFE20900;
    *&v2->_anon_a0[16] = xmmword_1AFE20160;
    *&v2->_anon_a0[32] = xmmword_1AFE20910;
    *&v2->_anon_a0[48] = xmmword_1AFE201A0;
    *v2->_anon_e0 = xmmword_1AFE20150;
    *&v2->_anon_e0[16] = xmmword_1AFE20920;
    *&v2->_anon_e0[32] = xmmword_1AFE20930;
    *&v2->_anon_e0[48] = xmmword_1AFE201A0;
    v2->_xAlignment = 0;
    v2->_zAlignment = 0;
    v2->_yAlignment = 0;
    v2->_snapXIndexes = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v3, v4);
    v2->_snapYIndexes = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v5, v6);
    v2->_snapZIndexes = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v7, v8);
    v2->_snapLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v2->_features = 3;
  }

  return v2;
}

- (void)dealloc
{
  objc_msgSend__deleteOriginalData(self, v3, v4);

  free(self->_snapToAlignOnX);
  free(self->_snapToAlignOnY);
  free(self->_snapToAlignOnZ);
  objc_msgSend_removeFromParentNode(self->_node, v5, v6);

  v7.receiver = self;
  v7.super_class = VFXManipulator;
  [(VFXManipulator *)&v7 dealloc];
}

- (id)copy
{
  v3 = objc_alloc_init(VFXManipulator);
  v6 = objc_msgSend_target(self, v4, v5);
  objc_msgSend_setTarget_(v3, v7, v6);
  return v3;
}

- (int64_t)effectiveEditingSpace
{
  v4 = objc_msgSend_authoringEnvironment(self, a2, v2);
  if (objc_msgSend_editingSpace(v4, v5, v6) <= 1 && objc_msgSend_count(self->_targets, v7, v8) > 1)
  {
    return 2;
  }

  v10 = objc_msgSend_authoringEnvironment(self, v7, v8);

  return objc_msgSend_editingSpace(v10, v11, v12);
}

- (VFXNode)manipulatorNode
{
  result = self->_node;
  if (!result)
  {
    objc_msgSend_setupNode(self, a2, v2);
    return self->_node;
  }

  return result;
}

- (BOOL)hidden
{
  node = self->_node;
  if (node)
  {
    return objc_msgSend_isHidden(node, a2, v2);
  }

  else
  {
    return 1;
  }
}

- (void)setupNode
{
  v353 = objc_msgSend_immediateMode(VFXTransaction, a2, v2);
  objc_msgSend_setImmediateMode_(VFXTransaction, v4, 1);
  self->_node = objc_msgSend_node(VFXNode, v5, v6);
  v8 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v7, &xmmword_1AFE20400);
  v11 = sub_1AF10BB48(v8, v9, v10);
  v13 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v12, &xmmword_1AFE20410);
  v16 = sub_1AF10BB48(v13, v14, v15);
  v18 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v17, &xmmword_1AFE20420);
  v21 = sub_1AF10BB48(v18, v19, v20);
  self->_zArrow = v21;
  objc_msgSend_setEulerAngles_(v11, v22, v23);
  objc_msgSend_setEulerAngles_(v21, v24, v25);
  objc_msgSend_setCategoryBitMask_(v11, v26, 273);
  objc_msgSend_setCategoryBitMask_(v16, v27, 289);
  objc_msgSend_setCategoryBitMask_(v21, v28, 305);
  v30 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v29, &xmmword_1AFE20400);
  v33 = sub_1AF10BD04(v30, v31, v32);
  v35 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v34, &xmmword_1AFE20410);
  v38 = sub_1AF10BD04(v35, v36, v37);
  v40 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v39, &xmmword_1AFE20420);
  v43 = sub_1AF10BD04(v40, v41, v42);
  objc_msgSend_setEulerAngles_(v33, v44, v45, 0.0);
  objc_msgSend_setEulerAngles_(v43, v46, v47, COERCE_DOUBLE(1070141403));
  v50 = objc_msgSend_node(VFXNode, v48, v49);
  self->_axis = v50;
  objc_msgSend_addChildNode_(v50, v51, v33);
  objc_msgSend_addChildNode_(self->_axis, v52, v38);
  objc_msgSend_addChildNode_(self->_axis, v53, v43);
  objc_msgSend_setHidden_(self->_axis, v54, 1);
  objc_msgSend_addChildNode_(self->_node, v55, self->_axis);
  v58 = objc_msgSend_node(VFXNode, v56, v57);
  objc_msgSend_addChildNode_(v58, v59, v11);
  objc_msgSend_addChildNode_(v58, v60, v16);
  objc_msgSend_addChildNode_(v58, v61, v21);
  self->_translateHandles = v58;
  objc_msgSend_addChildNode_(self->_node, v62, v58);
  v64 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v63, &xmmword_1AFE20420);
  self->_planarTranslationHandleXY = sub_1AF10BE14(v64, v67, v68, v65, v66);
  v70 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v69, &xmmword_1AFE20400);
  self->_planarTranslationHandleYZ = sub_1AF10BE14(v70, v73, v74, v71, v72);
  v76 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v75, &xmmword_1AFE20410);
  self->_planarTranslationHandleXZ = sub_1AF10BE14(v76, v79, v80, v77, v78);
  objc_msgSend_setEulerAngles_(self->_planarTranslationHandleYZ, v81, v82, -0.195796371);
  objc_msgSend_setEulerAngles_(self->_planarTranslationHandleXZ, v83, v84, COERCE_DOUBLE(1070141403));
  objc_msgSend_setCategoryBitMask_(self->_planarTranslationHandleXY, v85, 561);
  objc_msgSend_setCategoryBitMask_(self->_planarTranslationHandleYZ, v86, 529);
  objc_msgSend_setCategoryBitMask_(self->_planarTranslationHandleXZ, v87, 545);
  v90 = objc_msgSend_node(VFXNode, v88, v89);
  self->_planarTranslationHandles = v90;
  objc_msgSend_addChildNode_(v90, v91, self->_planarTranslationHandleXY);
  objc_msgSend_addChildNode_(self->_planarTranslationHandles, v92, self->_planarTranslationHandleYZ);
  objc_msgSend_addChildNode_(self->_planarTranslationHandles, v93, self->_planarTranslationHandleXZ);
  objc_msgSend_addChildNode_(self->_node, v94, self->_planarTranslationHandles);
  v96 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v95, &xmmword_1AFE20420);
  self->_arcHandleXY = sub_1AF10BF20(v96, v97, v98);
  v100 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v99, &xmmword_1AFE20400);
  self->_arcHandleYZ = sub_1AF10BF20(v100, v101, v102);
  v104 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v103, &xmmword_1AFE20410);
  self->_arcHandleXZ = sub_1AF10BF20(v104, v105, v106);
  objc_msgSend_setEulerAngles_(self->_arcHandleXY, v107, v108, COERCE_DOUBLE(3217625051));
  objc_msgSend_setEulerAngles_(self->_arcHandleYZ, v109, v110, COERCE_DOUBLE(1078530011));
  objc_msgSend_setEulerAngles_(self->_arcHandleXZ, v111, v112, 50.1238708);
  v115 = objc_msgSend_childNodes(self->_arcHandleXY, v113, v114);
  v117 = objc_msgSend_objectAtIndexedSubscript_(v115, v116, 0);
  objc_msgSend_setCategoryBitMask_(v117, v118, 561);
  v121 = objc_msgSend_childNodes(self->_arcHandleYZ, v119, v120);
  v123 = objc_msgSend_objectAtIndexedSubscript_(v121, v122, 0);
  objc_msgSend_setCategoryBitMask_(v123, v124, 529);
  v127 = objc_msgSend_childNodes(self->_arcHandleXZ, v125, v126);
  v129 = objc_msgSend_objectAtIndexedSubscript_(v127, v128, 0);
  objc_msgSend_setCategoryBitMask_(v129, v130, 545);
  v133 = objc_msgSend_childNodes(self->_arcHandleXY, v131, v132);
  v135 = objc_msgSend_objectAtIndexedSubscript_(v133, v134, 1);
  objc_msgSend_setCategoryBitMask_(v135, v136, 817);
  v139 = objc_msgSend_childNodes(self->_arcHandleYZ, v137, v138);
  v141 = objc_msgSend_objectAtIndexedSubscript_(v139, v140, 1);
  objc_msgSend_setCategoryBitMask_(v141, v142, 785);
  v145 = objc_msgSend_childNodes(self->_arcHandleXZ, v143, v144);
  v147 = objc_msgSend_objectAtIndexedSubscript_(v145, v146, 1);
  objc_msgSend_setCategoryBitMask_(v147, v148, 801);
  v151 = objc_msgSend_node(VFXNode, v149, v150);
  self->_arcHandles = v151;
  objc_msgSend_addChildNode_(v151, v152, self->_arcHandleXY);
  objc_msgSend_addChildNode_(self->_arcHandles, v153, self->_arcHandleYZ);
  objc_msgSend_addChildNode_(self->_arcHandles, v154, self->_arcHandleXZ);
  objc_msgSend_addChildNode_(self->_node, v155, self->_arcHandles);
  v158 = objc_msgSend_node(VFXNode, v156, v157);
  v160 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v159, &xmmword_1AFE20400);
  LODWORD(v161) = 1.0;
  v165 = sub_1AF10C05C(v160, v161, v164, v162, v163);
  v167 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v166, &xmmword_1AFE20410);
  LODWORD(v168) = 1.0;
  v172 = sub_1AF10C05C(v167, v168, v171, v169, v170);
  v174 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v173, &xmmword_1AFE20420);
  LODWORD(v175) = 1.0;
  v179 = sub_1AF10C05C(v174, v175, v178, v176, v177);
  v181 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v180, &unk_1AFE204A0);
  LODWORD(v182) = 1065520988;
  v186 = sub_1AF10C05C(v181, v182, v185, v183, v184);
  objc_msgSend_setRenderingOrder_(v165, v187, 2);
  objc_msgSend_setRenderingOrder_(v172, v188, 2);
  objc_msgSend_setRenderingOrder_(v179, v189, 2);
  objc_msgSend_setRenderingOrder_(v186, v190, 0);
  objc_msgSend_setEulerAngles_(v165, v191, v192, 0.0);
  objc_msgSend_setEulerAngles_(v179, v193, v194, COERCE_DOUBLE(1070141403));
  objc_msgSend_setEulerAngles_(v186, v195, v196, COERCE_DOUBLE(1070141403));
  objc_msgSend_setCategoryBitMask_(v165, v197, 785);
  objc_msgSend_setCategoryBitMask_(v172, v198, 801);
  objc_msgSend_setCategoryBitMask_(v179, v199, 817);
  objc_msgSend_setCategoryBitMask_(v186, v200, 769);
  v203 = objc_msgSend_node(VFXNode, v201, v202);
  objc_msgSend_addChildNode_(v203, v204, v186);
  v207 = objc_msgSend_billboardConstraint(VFXBillboardConstraint, v205, v206);
  self->_billboard = v207;
  objc_msgSend_setPreserveScale_(v207, v208, 1);
  self->_screenSpaceRotation = v203;
  v211 = objc_msgSend_node(VFXNode, v209, v210);
  self->_rotationHandles = v211;
  objc_msgSend_addChildNode_(v211, v212, v165);
  objc_msgSend_addChildNode_(self->_rotationHandles, v213, v172);
  objc_msgSend_addChildNode_(self->_rotationHandles, v214, v179);
  objc_msgSend_addChildNode_(v158, v215, self->_rotationHandles);
  objc_msgSend_addChildNode_(v158, v216, v203);
  objc_msgSend_addChildNode_(self->_node, v217, v158);
  LODWORD(v218) = 1065185444;
  v221 = objc_msgSend_sphereWithRadius_(VFXParametricModel, v219, v220, v218);
  objc_msgSend_setGeodesic_(v221, v222, 1);
  objc_msgSend_setSegmentCount_(v221, v223, 24);
  Material = objc_msgSend_firstMaterial(v221, v224, v225);
  objc_msgSend_setShadingModel_(Material, v227, 2);
  v230 = objc_msgSend_firstMaterial(v221, v228, v229);
  objc_msgSend_setColorBufferWriteMask_(v230, v231, 0);
  v233 = objc_msgSend_nodeWithModel_(VFXNode, v232, v221);
  LODWORD(v234) = 1008981770;
  objc_msgSend_setOpacity_(v233, v235, v236, v234);
  objc_msgSend_setRenderingOrder_(v233, v237, 1);
  self->_occluder = v233;
  objc_msgSend_addChildNode_(self->_node, v238, v233);
  LODWORD(v239) = 1050253722;
  LODWORD(v240) = 1050253722;
  LODWORD(v241) = 1050253722;
  v244 = objc_msgSend_cubeWithWidth_height_length_chamferRadius_(VFXParametricModel, v242, v243, v239, v240, v241, 0.0);
  v246 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v245, &xmmword_1AFE20440);
  v249 = objc_msgSend_firstMaterial(v244, v247, v248);
  v252 = objc_msgSend_diffuse(v249, v250, v251);
  objc_msgSend_setContents_(v252, v253, v246);
  v256 = objc_msgSend_firstMaterial(v244, v254, v255);
  objc_msgSend_setShadingModel_(v256, v257, 2);
  v259 = objc_msgSend_nodeWithModel_(VFXNode, v258, v244);
  self->_scaleNode = v259;
  objc_msgSend_setCategoryBitMask_(v259, v260, 1025);
  v263 = objc_msgSend_copy(v244, v261, v262);
  LODWORD(v264) = 1041865114;
  objc_msgSend_setLength_(v263, v265, v266, v264);
  LODWORD(v267) = 1041865114;
  objc_msgSend_setHeight_(v263, v268, v269, v267);
  LODWORD(v270) = 1041865114;
  objc_msgSend_setWidth_(v263, v271, v272, v270);
  v275 = objc_msgSend_firstMaterial(v263, v273, v274);
  v278 = objc_msgSend_copy(v275, v276, v277);
  objc_msgSend_setFirstMaterial_(v263, v279, v278);
  v281 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v280, &xmmword_1AFE20400);
  v284 = objc_msgSend_firstMaterial(v263, v282, v283);
  v287 = objc_msgSend_diffuse(v284, v285, v286);
  objc_msgSend_setContents_(v287, v288, v281);
  v290 = objc_msgSend_nodeWithModel_(VFXNode, v289, v263);
  self->_scaleNodeX = v290;
  objc_msgSend_setPosition_(v290, v291, v292, COERCE_DOUBLE(1066192077));
  objc_msgSend_setCategoryBitMask_(self->_scaleNodeX, v293, 1041);
  v296 = objc_msgSend_copy(v263, v294, v295);
  v299 = objc_msgSend_firstMaterial(v296, v297, v298);
  v302 = objc_msgSend_copy(v299, v300, v301);
  objc_msgSend_setFirstMaterial_(v296, v303, v302);
  v305 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v304, &xmmword_1AFE20410);
  v308 = objc_msgSend_firstMaterial(v296, v306, v307);
  v311 = objc_msgSend_diffuse(v308, v309, v310);
  objc_msgSend_setContents_(v311, v312, v305);
  v314 = objc_msgSend_nodeWithModel_(VFXNode, v313, v296);
  self->_scaleNodeY = v314;
  objc_msgSend_setPosition_(v314, v315, v316, 0.0140625015);
  objc_msgSend_setCategoryBitMask_(self->_scaleNodeY, v317, 1057);
  v320 = objc_msgSend_copy(v296, v318, v319);
  v323 = objc_msgSend_firstMaterial(v320, v321, v322);
  v326 = objc_msgSend_copy(v323, v324, v325);
  objc_msgSend_setFirstMaterial_(v320, v327, v326);
  v329 = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v328, &xmmword_1AFE20420);
  v332 = objc_msgSend_firstMaterial(v320, v330, v331);
  v335 = objc_msgSend_diffuse(v332, v333, v334);
  objc_msgSend_setContents_(v335, v336, v329);
  v338 = objc_msgSend_nodeWithModel_(VFXNode, v337, v320);
  self->_scaleNodeZ = v338;
  objc_msgSend_setPosition_(v338, v339, v340, 0.0);
  objc_msgSend_setCategoryBitMask_(self->_scaleNodeZ, v341, 1073);
  objc_msgSend_setHidden_(self->_scaleNode, v342, 1);
  objc_msgSend_setHidden_(self->_scaleNodeX, v343, 1);
  objc_msgSend_setHidden_(self->_scaleNodeY, v344, 1);
  objc_msgSend_setHidden_(self->_scaleNodeZ, v345, 1);
  objc_msgSend_addChildNode_(self->_node, v346, self->_scaleNode);
  objc_msgSend_addChildNode_(self->_node, v347, self->_scaleNodeX);
  objc_msgSend_addChildNode_(self->_node, v348, self->_scaleNodeY);
  objc_msgSend_addChildNode_(self->_node, v349, self->_scaleNodeZ);
  objc_msgSend_updateManipulatorComponents(self, v350, v351);

  objc_msgSend_setImmediateMode_(VFXTransaction, v352, v353);
}

- (void)updateManipulatorPosition:(__CFXEngineContext *)position
{
  v5 = objc_msgSend_immediateMode(VFXTransaction, a2, position);
  objc_msgSend_setImmediateMode_(VFXTransaction, v6, 1);
  sub_1AF10C564(self, v7, v8);
  v10 = v9;
  *&self->_anon_1f0[4] = v9;
  *&self->_anon_1f0[20] = v11;
  *&self->_anon_1f0[36] = v12;
  *&self->_anon_1f0[52] = v13;
  v9.n128_u32[0] = 1128792064;
  sub_1AF27F708(position, v9.n128_f64[0], v10, v11, v12, v13);
  *&v17 = v16;
  v18 = v16;
  node = self->_node;
  if (v18 <= 0.000001)
  {
    objc_msgSend_setOpacity_(node, v14, v15, 0.0, 0.000001, v17);
  }

  else
  {
    planarTranslationLayout = self->_planarTranslationLayout;
    LODWORD(v18) = 1.0;
    v77 = *&v17;
    objc_msgSend_setOpacity_(node, v14, v15, v18);
    objc_msgSend_setWorldTransform_(self->_node, v21, v22, *vmulq_n_f32(*&self->_anon_1f0[4], v77).i64, *vmulq_n_f32(*&self->_anon_1f0[20], v77).i64, *vmulq_n_f32(*&self->_anon_1f0[36], v77).i64, *&self->_anon_1f0[52]);
    v25 = objc_msgSend_effectiveEditingSpace(self, v23, v24);
    if (!self->_layoutLocked || v25 == 3)
    {
      if (v25 == 3)
      {
        __asm { FMOV            V0.4S, #1.0 }

        *self->_planarTranslationLayout = _Q0;
      }

      else
      {
        v28 = sub_1AF13050C(position, 1);
        v31 = 0;
        v32 = *v28;
        v33 = v28[1];
        v34 = v28[2];
        v35 = v28[3];
        v36 = *&self->_anon_1f0[20];
        v37 = *&self->_anon_1f0[36];
        v38 = *&self->_anon_1f0[52];
        v80[0] = *&self->_anon_1f0[4];
        v80[1] = v36;
        v80[2] = v37;
        v80[3] = v38;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        do
        {
          *(&v81 + v31 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(v80[v31])), v33, *&v80[v31], 1), v34, v80[v31], 2), v35, v80[v31], 3);
          ++v31;
        }

        while (v31 != 4);
        v39 = v82;
        v40.i32[1] = 0;
        v40.i64[1] = 0;
        v41 = vmulq_f32(v83, 0);
        v42 = vaddq_f32(v82, v41);
        v45 = vaddq_f32(v81, vmlaq_f32(v41, 0, v82));
        v43 = vmlaq_f32(v42, 0, v81);
        v44 = vmlaq_f32(vmlaq_f32(v83, 0, v82), 0, v81);
        v45.i32[0] = 1.0;
        if (v45.f32[2] >= 0.0)
        {
          v40.f32[0] = 1.0;
        }

        else
        {
          v40.f32[0] = -1.0;
        }

        if (v43.f32[2] >= 0.0)
        {
          v39.f32[0] = 1.0;
        }

        else
        {
          v39.f32[0] = -1.0;
        }

        if (v44.f32[2] >= 0.0)
        {
          v44.f32[0] = 1.0;
        }

        else
        {
          v44.f32[0] = -1.0;
        }

        v75 = v40.f32[0];
        v78 = v44;
        v46 = v40;
        v46.i32[1] = v39.i32[0];
        v46.i32[2] = v44.i32[0];
        *self->_planarTranslationLayout = v46;
        v47 = vdupq_lane_s32(*&vceqq_f32(v39, v45), 0);
        objc_msgSend_setEulerAngles_(self->_arcHandleXY, v29, v30, *vbslq_s8(vdupq_lane_s32(*&vceqq_f32(v40, v45), 0), vbslq_s8(v47, xmmword_1AFE20950, xmmword_1AFE20A00), vbslq_s8(v47, xmmword_1AFE209F0, xmmword_1AFE20590)).i64, vbslq_s8(v47, xmmword_1AFE20960, xmmword_1AFE20A20), vbslq_s8(v47, xmmword_1AFE20940, xmmword_1AFE20A10));
        v48.i32[0] = 1.0;
        objc_msgSend_setEulerAngles_(self->_arcHandleYZ, v49, v50, *vbslq_s8(vdupq_lane_s32(*&vceqq_f32(v78, v48), 0), v73, v74).i64);
        arcHandleXZ = self->_arcHandleXZ;
        if (v75 == 1.0)
        {
          if (v78.f32[0] == 1.0)
          {
            objc_msgSend_setEulerAngles_(arcHandleXZ, v51, v52, 50.1238708, *v78.i64);
          }

          else
          {
            objc_msgSend_setEulerAngles_(arcHandleXZ, v51, v52, -0.195796371, *v78.i64);
          }
        }

        else if (v78.f32[0] == 1.0)
        {
          objc_msgSend_setEulerAngles_(arcHandleXZ, v51, v52, 0.195796371, *v78.i64);
        }

        else
        {
          objc_msgSend_setEulerAngles_(arcHandleXZ, v51, v52, 0.0, *v78.i64);
        }
      }
    }

    v79 = vdupq_n_s64(0x3FD3333333333333uLL);
    __asm { FMOV            V1.2D, #0.5 }

    v76 = _Q1;
    objc_msgSend_setPosition_(self->_planarTranslationHandleXY, v26, v27, COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(vmulq_f64(vcvtq_f64_f32(*planarTranslationLayout), v79), _Q1))));
    LODWORD(v61) = 0;
    HIDWORD(v61) = vcvt_f32_f64(vmulq_f64(vmulq_f64(vcvtq_f64_f32(*&self->_planarTranslationLayout[4]), v79), v76)).u32[0];
    objc_msgSend_setPosition_(self->_planarTranslationHandleYZ, v62, v63, v61);
    v64 = vmulq_f64(vmulq_f64(vcvtq_f64_f32(vzip1_s32(*planarTranslationLayout, *&vextq_s8(*planarTranslationLayout->f32, *planarTranslationLayout->f32, 8uLL))), v79), v76);
    *v64.i8 = vcvt_f32_f64(v64);
    objc_msgSend_setPosition_(self->_planarTranslationHandleXZ, v65, v66, COERCE_DOUBLE(vzip1q_s32(v64, v64).u32[0]));
    if (self->_screenSpaceRotation)
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v68 = objc_msgSend___CFObject(self->_billboard, v54, v67);
      v71 = objc_msgSend_nodeRef(self->_screenSpaceRotation, v69, v70);
      if (sub_1AF150360(position, v68, v71, &v81, 1.0))
      {
        objc_msgSend_setTransform_(self->_screenSpaceRotation, v54, v72, *v81.i64, *v82.i64, *v83.i64, *&v84);
      }
    }
  }

  objc_msgSend_setImmediateMode_(VFXTransaction, v54, v5);
}

- (void)updateManipulatorNode
{
  node = self->_node;
  if (!node)
  {
    objc_msgSend_setupNode(self, a2, v2);
    node = self->_node;
  }

  if (!objc_msgSend_parentNode(node, a2, v2))
  {
    v7 = objc_msgSend_authoringEnvironment(self, v5, v6);
    v10 = objc_msgSend_authoringOverlayLayer(v7, v8, v9);
    v14 = objc_msgSend_manipulatorNode(self, v11, v12);

    objc_msgSend_addChildNode_(v10, v13, v14);
  }
}

- (void)updateManipulatorComponents
{
  v4 = objc_msgSend__effectiveFeatures(self, a2, v2);
  v8 = objc_msgSend_effectiveEditingSpace(self, v5, v6);
  v9 = (v4 & 4) != 0 && !self->_readonly;
  v10 = !v9;
  objc_msgSend_setHidden_(self->_scaleNode, v7, !v9);
  objc_msgSend_setHidden_(self->_scaleNodeX, v11, !v9);
  objc_msgSend_setHidden_(self->_scaleNodeY, v12, !v9);
  objc_msgSend_setHidden_(self->_scaleNodeZ, v13, !v9);
  if ((v4 & 2) != 0)
  {
    v15 = !self->_readonly;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    if (v4)
    {
LABEL_6:
      v16 = !self->_readonly;
      goto LABEL_9;
    }
  }

  v16 = 0;
LABEL_9:
  v17 = v8 == 3;
  objc_msgSend_setHidden_(self->_rotationHandles, v14, v17 | !v15 | (v16 && v10));
  objc_msgSend_setHidden_(self->_screenSpaceRotation, v18, !v15 || v16 && v10);
  objc_msgSend_setHidden_(self->_translateHandles, v19, v10 && !v16);
  objc_msgSend_setHidden_(self->_planarTranslationHandles, v20, v9 || !v16 || v15 || self->_readonly);
  objc_msgSend_setHidden_(self->_arcHandles, v21, (v9 || self->_readonly) | (!v16 || !v15));
  objc_msgSend_setHidden_(self->_axis, v22, !self->_readonly);
  objc_msgSend_setHidden_(self->_zArrow, v23, v17);
  objc_msgSend_setHidden_(self->_planarTranslationHandleXZ, v24, v17);
  objc_msgSend_setHidden_(self->_planarTranslationHandleYZ, v25, v17);
  objc_msgSend_setHidden_(self->_arcHandleXZ, v26, v17);
  arcHandleYZ = self->_arcHandleYZ;

  objc_msgSend_setHidden_(arcHandleYZ, v27, v17);
}

- (unint64_t)_effectiveFeatures
{
  features = self->_features;
  v3 = features | 4;
  if ((features & 4) != 0)
  {
    v3 = 7;
  }

  if (self->_alternateMode)
  {
    return v3;
  }

  else
  {
    return self->_features;
  }
}

- (id)hitTest:(id *)test
{
  v49 = *MEMORY[0x1E69E9840];
  node = self->_node;
  if (!node)
  {
    return 0;
  }

  objc_msgSend_opacity(node, a2, test);
  if (v8 == 0.0)
  {
    return 0;
  }

  if (objc_msgSend_isHidden(self->_node, v6, v7))
  {
    return 0;
  }

  v11 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v9, v10);
  objc_msgSend_setObject_forKey_(v11, v12, self->_node, @"kHitTestRootNode");
  v13 = MEMORY[0x1E695E110];
  objc_msgSend_setObject_forKey_(v11, v14, MEMORY[0x1E695E110], @"kHitTestSkipHiddenNode");
  objc_msgSend_setObject_forKey_(v11, v15, &unk_1F25D4120, @"kHitTestSearchMode");
  objc_msgSend_setObject_forKey_(v11, v16, v13, @"kHitTestClipToZRange");
  v18 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v17, 4);
  objc_msgSend_setObject_forKey_(v11, v19, v18, @"kHitTestLayerMask");
  v22 = objc_msgSend_authoringEnvironment(self, v20, v21);
  v25 = objc_msgSend_worldRenderer(v22, v23, v24);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v27 = objc_msgSend_hitTest_options_(v25, v26, v11, test->var2.x, test->var2.y, 0);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v44, v48, 16);
  if (!v29)
  {
    return 0;
  }

  v32 = v29;
  v33 = 0;
  v34 = *v45;
  do
  {
    for (i = 0; i != v32; ++i)
    {
      if (*v45 != v34)
      {
        objc_enumerationMutation(v27);
      }

      v36 = objc_msgSend_node(*(*(&v44 + 1) + 8 * i), v30, v31);
      if (v36 == self->_occluder)
      {
        goto LABEL_20;
      }

      v37 = v36;
      while (objc_msgSend_categoryBitMask(v36, v30, v31) == 0xFFFF)
      {
        v36 = objc_msgSend_parentNode(v37, v30, v31);
        v37 = v36;
      }

      if ((v33 & 1) != 0 && objc_msgSend_parentNode(v37, v30, v31) == self->_rotationHandles)
      {
LABEL_20:
        v33 = 1;
      }

      else
      {
        v38 = v37;
        if (!v37)
        {
          return v37;
        }

        do
        {
          isHidden = objc_msgSend_isHidden(v38, v30, v31);
          v42 = objc_msgSend_parentNode(v38, v40, v41);
          if (isHidden)
          {
            break;
          }

          v38 = v42;
        }

        while (v42);
        if ((isHidden & 1) == 0)
        {
          return v37;
        }
      }
    }

    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v44, v48, 16);
    v37 = 0;
  }

  while (v32);
  return v37;
}

- (void)_updateActionWithEvent:(id *)event
{
  v4 = *&event[1].var0;
  v14[2] = *&event->var2.y;
  v14[3] = v4;
  v5 = *&event[1].var2.y;
  v14[4] = *&event[1].var1.y;
  v14[5] = v5;
  v6 = *&event->var1.y;
  v14[0] = *&event->var0;
  v14[1] = v6;
  v9 = objc_msgSend_hitTest_(self, a2, v14);
  highlightNode = self->_highlightNode;
  if (highlightNode != v9)
  {
    objc_msgSend_unhighlightSelectedNode(self, v7, v8);
  }

  if (v9)
  {
    self->_action = objc_msgSend_categoryBitMask(v9, v7, v8) >> 8;
    self->_selectedAxis = objc_msgSend_categoryBitMask(v9, v11, v12) >> 4;
    if (highlightNode != v9)
    {
      self->_highlightNode = v9;
      objc_msgSend_enumerateHierarchyUsingBlock_(v9, v13, &unk_1F24E69B0);
    }
  }

  else
  {
    self->_action = 0;
  }
}

- (BOOL)mouseMoved:(id *)moved
{
  action = self->_action;
  self->_action = 0;
  if (objc_msgSend_count(self->_targets, a2, moved) && !self->_readonly)
  {
    if (objc_msgSend_isHidden(self->_node, v6, v7))
    {
      return 0;
    }

    v10 = *&moved[1].var0;
    v13[2] = *&moved->var2.y;
    v13[3] = v10;
    v11 = *&moved[1].var2.y;
    v13[4] = *&moved[1].var1.y;
    v13[5] = v11;
    v12 = *&moved->var1.y;
    v13[0] = *&moved->var0;
    v13[1] = v12;
    objc_msgSend__updateActionWithEvent_(self, v8, v13);
  }

  return action != self->_action;
}

- (void)updateTargetsTransforms
{
  v25 = *MEMORY[0x1E69E9840];
  objc_msgSend_lock(self->_presentationItemsLock, a2, v2);
  presentationNodeTransforms = self->_presentationNodeTransforms;
  if (presentationNodeTransforms)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(presentationNodeTransforms, v4, &v20, v24, 16);
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(presentationNodeTransforms);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = objc_msgSend_node(v11, v4, v5);
          v15 = objc_msgSend_presentationNode(v12, v13, v14);
          objc_msgSend_transform(v11, v16, v17);
          objc_msgSend_setTransform_(v15, v18, v19);
        }

        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(presentationNodeTransforms, v4, &v20, v24, 16);
      }

      while (v8);
    }
  }

  objc_msgSend_unlock(self->_presentationItemsLock, v4, v5);
}

- (void)updateItemsPosition
{
  v46 = *MEMORY[0x1E69E9840];
  v35 = *&self->_anon_1f0[52];
  v4 = 16;
  if (self->_cloning)
  {
    v4 = 832;
  }

  v5 = *(&self->super.isa + v4);
  v6 = objc_msgSend_count(v5, a2, v2, *&self->_anon_1b0[52]);
  if (v6 > self->_originalDataCount)
  {
    v8 = sub_1AF0D5194(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDCFEE8(v5, &self->_originalDataCount, v8);
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v40, v45, 16);
  if (v9)
  {
    v12 = v9;
    v13 = 0;
    v34 = vsubq_f32(v35, v33);
    v14 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v5);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        v17 = objc_msgSend_parentItem(v16, v10, v11, *&v34);
        objc_msgSend_worldTransform(v17, v18, v19);
        __invert_f4(v47);
        objc_msgSend_transform(v16, v20, v21);
        objc_msgSend_setTransform_(v16, v22, v23);
        ++v13;
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v10, &v40, v45, 16);
    }

    while (v12);
  }

  if (self->_cloning)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    targets = self->_targets;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v10, &v36, v44, 16);
    if (v25)
    {
      v28 = v25;
      v29 = 0;
      v30 = *v37;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(targets);
          }

          v32 = (*&self->_anon_188[16] + (v29 << 6));
          objc_msgSend_setTransform_(*(*(&v36 + 1) + 8 * j), v26, v27, *v32, v32[2], v32[4], v32[6]);
          ++v29;
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v26, &v36, v44, 16);
      }

      while (v28);
    }
  }
}

- (void)updateItemsRotation:(VFXManipulator *)self
{
  v97 = v2;
  v116 = *MEMORY[0x1E69E9840];
  v3 = 16;
  if (self->_cloning)
  {
    v3 = 832;
  }

  v4 = *(&self->super.isa + v3);
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = v4;
  v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, a2, &v102, v115, 16);
  if (v86)
  {
    v7 = 0;
    v8 = v97;
    v9 = vmulq_f32(v8, v8);
    v10 = vmulq_laneq_f32(v8, v8, 3);
    v11 = vmuls_lane_f32(v8.f32[0], *v8.f32, 1);
    v12 = vmuls_lane_f32(v97.f32[1], v97, 2);
    v8.f32[0] = vmuls_lane_f32(v8.f32[0], v8, 2);
    v13.i32[3] = 0;
    v13.f32[0] = (0.5 - v9.f32[1]) - v9.f32[2];
    v13.f32[1] = v11 + v10.f32[2];
    v13.f32[2] = v8.f32[0] - v10.f32[1];
    v9.f32[0] = 0.5 - v9.f32[0];
    v14.i32[3] = 0;
    v14.f32[0] = v11 - v10.f32[2];
    v14.f32[1] = v9.f32[0] - v9.f32[2];
    v14.f32[2] = v12 + v10.f32[0];
    v10.f32[0] = v12 - v10.f32[0];
    v15.i32[3] = 0;
    v15.f32[0] = v8.f32[0] + v10.f32[1];
    v15.i32[1] = v10.i32[0];
    v15.f32[2] = v9.f32[0] - v9.f32[1];
    v85 = *v103;
    v83 = vaddq_f32(v14, v14);
    v84 = vaddq_f32(v13, v13);
    v82 = vaddq_f32(v15, v15);
    do
    {
      for (i = 0; i != v86; ++i)
      {
        if (*v103 != v85)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v102 + 1) + 8 * i);
        v18 = objc_msgSend_parentItem(v17, v5, v6);
        if (v18)
        {
          v19 = v18;
          v20 = (*&self->_anon_188[16] + (v7 << 6));
          v93 = v20[1];
          v94 = *v20;
          v92 = v20[2];
          v96 = v20[3];
          v21 = objc_msgSend_selectionTransformMode(self->_authoringEnvironment, v5, v6);
          objc_msgSend_worldTransform(v19, v22, v23);
          v27 = v96;
          if (v21 != 1)
          {
            v117 = __invert_f4(v26);
            v28 = 0;
            v29 = *&self->_anon_1b0[20];
            v30 = *&self->_anon_1b0[36];
            v31 = *&self->_anon_1b0[52];
            v106 = *&self->_anon_1b0[4];
            v107 = v29;
            v108 = v30;
            v109 = v31;
            v110 = 0u;
            v111 = 0u;
            v112 = 0u;
            v113 = 0u;
            do
            {
              *(&v110 + v28) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v117.columns[0], COERCE_FLOAT(*(&v106 + v28))), v117.columns[1], *(&v106 + v28), 1), v117.columns[2], *(&v106 + v28), 2), v117.columns[3], *(&v106 + v28), 3);
              v28 += 16;
            }

            while (v28 != 64);
            v27 = v113;
          }

          v90 = v27;
          v91 = vnegq_f32(v27);
          objc_msgSend_worldTransform(v19, v24, v25);
          v33 = vmulq_f32(v32, v32);
          v33.f32[0] = v33.f32[2] + vaddv_f32(*v33.f32);
          v34 = vdupq_lane_s32(*v33.f32, 0);
          v34.i32[3] = 0;
          v35 = vrsqrteq_f32(v34);
          v36 = vmulq_f32(v35, vrsqrtsq_f32(v34, vmulq_f32(v35, v35)));
          v37 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v33.f32[0] != 0.0)), 0x1FuLL));
          v37.i32[3] = 0;
          v118.columns[0] = vbslq_s8(vcltzq_s32(v37), vmulq_f32(v32, vmulq_f32(v36, vrsqrtsq_f32(v34, vmulq_f32(v36, v36)))), v32);
          v39 = vmulq_f32(v38, v38);
          v41 = vmulq_f32(v40, v40);
          *v39.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v41, v41, 8uLL), *&vextq_s8(v39, v39, 8uLL)), vadd_f32(vzip1_s32(*v41.i8, *v39.i8), vzip2_s32(*v41.i8, *v39.i8)));
          v42 = vdupq_lane_s32(*v39.i8, 1);
          v42.i32[3] = 0;
          v43 = vrsqrteq_f32(v42);
          v44 = vmulq_f32(v43, vrsqrtsq_f32(v42, vmulq_f32(v43, v43)));
          v45 = vmulq_f32(v38, vmulq_f32(v44, vrsqrtsq_f32(v42, vmulq_f32(v44, v44))));
          *v44.f32 = vmvn_s8(vceqz_f32(*v39.i8));
          v46 = vmovl_s16(vdup_lane_s16(*v44.f32, 2));
          v46.i32[3] = 0;
          v47 = vdupq_lane_s32(*v39.i8, 0);
          v118.columns[1] = vbslq_s8(vcltzq_s32(v46), v45, v38);
          v47.i32[3] = 0;
          v48 = vrsqrteq_f32(v47);
          v49 = vmulq_f32(v48, vrsqrtsq_f32(v47, vmulq_f32(v48, v48)));
          v50 = vmovl_s16(vdup_lane_s16(*v44.f32, 0));
          v50.i32[3] = 0;
          v118.columns[2] = vbslq_s8(vcltzq_s32(v50), vmulq_f32(v40, vmulq_f32(v49, vrsqrtsq_f32(v47, vmulq_f32(v49, v49)))), v40);
          v118.columns[0].i32[3] = 0;
          v118.columns[1].i32[3] = 0;
          v118.columns[2].i32[3] = 0;
          v88 = v118.columns[1];
          v89 = v118.columns[0];
          v87 = v118.columns[2];
          v118.columns[3] = xmmword_1AFE201A0;
          v119 = __invert_f4(v118);
          v53 = 0;
          v106 = v84;
          v107 = v83;
          v108 = v82;
          v109 = xmmword_1AFE201A0;
          v110 = 0u;
          v111 = 0u;
          v112 = 0u;
          v113 = 0u;
          do
          {
            *(&v110 + v53) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v119.columns[0], COERCE_FLOAT(*(&v106 + v53))), v119.columns[1], *(&v106 + v53), 1), v119.columns[2], *(&v106 + v53), 2), v119.columns[3], *(&v106 + v53), 3);
            v53 += 16;
          }

          while (v53 != 64);
          v54 = 0;
          v55 = v90;
          v55.i32[3] = 1.0;
          v56 = v110;
          v57 = v111;
          v58 = v112;
          v59 = v113;
          v106 = v89;
          v107 = v88;
          v108 = v87;
          v109 = xmmword_1AFE201A0;
          v110 = 0uLL;
          v111 = 0uLL;
          v112 = 0uLL;
          v113 = 0uLL;
          do
          {
            *(&v110 + v54) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v56, COERCE_FLOAT(*(&v106 + v54))), v57, *(&v106 + v54), 1), v58, *(&v106 + v54), 2), v59, *(&v106 + v54), 3);
            v54 += 16;
          }

          while (v54 != 64);
          v60 = 0;
          v61 = v91;
          HIDWORD(v61) = 1.0;
          v106 = v110;
          v107 = v111;
          v108 = v112;
          v109 = v113;
          v110 = 0uLL;
          v111 = 0uLL;
          v112 = 0uLL;
          v113 = 0uLL;
          do
          {
            *(&v110 + v60) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v106 + v60))), xmmword_1AFE20160, *(&v106 + v60), 1), xmmword_1AFE20180, *(&v106 + v60), 2), v55, *(&v106 + v60), 3);
            v60 += 16;
          }

          while (v60 != 64);
          v62 = 0;
          v63 = v110;
          v64 = v111;
          v65 = v112;
          v66 = v113;
          v106 = xmmword_1AFE20150;
          v107 = xmmword_1AFE20160;
          v108 = xmmword_1AFE20180;
          v109 = v61;
          v110 = 0uLL;
          v111 = 0uLL;
          v112 = 0uLL;
          v113 = 0uLL;
          do
          {
            *(&v110 + v62) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, COERCE_FLOAT(*(&v106 + v62))), v64, *(&v106 + v62), 1), v65, *(&v106 + v62), 2), v66, *(&v106 + v62), 3);
            v62 += 16;
          }

          while (v62 != 64);
          v67 = 0;
          v68 = v110;
          v69 = v111;
          v70 = v112;
          v71 = v113;
          v106 = v94;
          v107 = v93;
          v108 = v92;
          v109 = v96;
          v110 = 0uLL;
          v111 = 0uLL;
          v112 = 0uLL;
          v113 = 0uLL;
          do
          {
            *(&v110 + v67) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v68, COERCE_FLOAT(*(&v106 + v67))), v69, *(&v106 + v67), 1), v70, *(&v106 + v67), 2), v71, *(&v106 + v67), 3);
            v67 += 16;
          }

          while (v67 != 64);
          objc_msgSend_setTransform_(v17, v51, v52, *&v110, *&v111, *&v112, *&v113);
        }

        ++v7;
      }

      v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v102, v115, 16);
    }

    while (v86);
  }

  if (self->_cloning)
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    targets = self->_targets;
    v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v5, &v98, v114, 16);
    if (v73)
    {
      v76 = v73;
      v77 = 0;
      v78 = *v99;
      do
      {
        for (j = 0; j != v76; ++j)
        {
          if (*v99 != v78)
          {
            objc_enumerationMutation(targets);
          }

          v80 = (*&self->_anon_188[16] + (v77 << 6));
          objc_msgSend_setTransform_(*(*(&v98 + 1) + 8 * j), v74, v75, *v80, v80[2], v80[4], v80[6]);
          ++v77;
        }

        v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v74, &v98, v114, 16);
      }

      while (v76);
    }
  }
}

- (void)updateItemsScale:(float)scale axis:(unsigned __int16)axis
{
  v128 = *MEMORY[0x1E69E9840];
  v6 = 16;
  if (self->_cloning)
  {
    v6 = 832;
  }

  v7 = *(&self->super.isa + v6);
  selectedAxis = self->_selectedAxis;
  if (selectedAxis >= 2)
  {
    v4.f32[0] = 1.0;
  }

  else
  {
    v4.f32[0] = scale;
  }

  v110 = v4;
  if ((selectedAxis | 2) == 2)
  {
    scaleCopy = scale;
  }

  else
  {
    scaleCopy = 1.0;
  }

  v113 = scaleCopy;
  v10 = selectedAxis == 3 || selectedAxis == 0;
  v121 = 0u;
  v122 = 0u;
  if (!v10)
  {
    scale = 1.0;
  }

  v119 = 0uLL;
  v120 = 0uLL;
  obj = v7;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, a2, &v119, v127, 16, LODWORD(scale));
  if (v11)
  {
    v14 = v11;
    v15 = 0;
    v16 = v110;
    v16.f32[1] = v113;
    v16.i32[2] = v109;
    v111 = v16;
    v17 = *v120;
    v16.i32[0] = -1;
    v114 = v16;
    do
    {
      v18 = 0;
      do
      {
        if (*v120 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v119 + 1) + 8 * v18);
        v20 = objc_msgSend_parentItem(v19, v12, v13);
        if (v20)
        {
          v21 = v20;
          if (objc_msgSend_selectionTransformMode(self->_authoringEnvironment, v12, v13) == 1)
          {
            v22 = *&self->_anon_188[16];
            v23 = *(v22 + (v15 << 6) + 48);
          }

          else
          {
            objc_msgSend_worldTransform(v21, v12, v13);
            v130 = __invert_f4(v129);
            v24 = 0;
            v25 = *&self->_anon_1b0[20];
            v26 = *&self->_anon_1b0[36];
            v27 = *&self->_anon_1b0[52];
            v123[0] = *&self->_anon_1b0[4];
            v123[1] = v25;
            v123[2] = v26;
            v123[3] = v27;
            memset(v124, 0, sizeof(v124));
            v125 = 0u;
            do
            {
              v124[v24] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v130.columns[0], COERCE_FLOAT(v123[v24])), v130.columns[1], *&v123[v24], 1), v130.columns[2], v123[v24], 2), v130.columns[3], v123[v24], 3);
              ++v24;
            }

            while (v24 != 4);
            v23 = v125;
            v22 = *&self->_anon_188[16];
          }

          v28 = (v22 + (v15 << 6));
          v30 = *v28;
          v29 = v28[1];
          v31 = v28[2];
          v32 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL), vnegq_f32(v29)), v31, vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL));
          v33 = vmulq_f32(*v28, vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL));
          v75 = (v33.f32[2] + vaddv_f32(*v33.f32)) < 0.0;
          v34 = vmulq_f32(v30, v30);
          v35 = vmulq_f32(v29, v29);
          v36 = vadd_f32(vzip1_s32(*v34.i8, *v35.i8), vzip2_s32(*v34.i8, *v35.i8));
          v38 = vextq_s8(v34, v34, 8uLL);
          *v38.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v38.f32, *&vextq_s8(v35, v35, 8uLL)), v36));
          v37 = vmulq_f32(v31, v31);
          v38.i32[2] = sqrtf(v37.f32[2] + vaddv_f32(*v37.f32));
          v39 = 1.0;
          if (v75)
          {
            v39 = -1.0;
          }

          v40 = vmulq_n_f32(v38, v39);
          v41 = vmvnq_s8(vorrq_s8(vcltzq_f32(v40), vcgezq_f32(v40)));
          v41.i32[3] = v41.i32[2];
          v41.i32[0] = vmaxvq_u32(v41);
          v42 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v41, v114), 0), v40, 0);
          v43 = vceqzq_f32(v42);
          v43.i32[3] = v43.i32[2];
          if ((vmaxvq_u32(v43) & 0x80000000) == 0)
          {
            v44 = vdivq_f32(v30, vdupq_lane_s32(*v42.f32, 0));
            v45 = vdivq_f32(v29, vdupq_lane_s32(*v42.f32, 1));
            v46 = vdivq_f32(v31, vdupq_laneq_s32(v42, 2));
            v47 = vmulq_f32(v44, v44);
            v48 = vmulq_f32(v45, v45);
            v49 = vmulq_f32(v46, v46);
            v50 = vzip2q_s32(v47, v49);
            v51 = vzip1q_s32(vzip1q_s32(v47, v49), v48);
            v52 = vtrn2q_s32(v47, v48);
            v52.i32[2] = v49.i32[1];
            v53 = vaddq_f32(vzip1q_s32(v50, vdupq_laneq_s32(v48, 2)), vaddq_f32(v51, v52));
            v52.i64[0] = 0x80000000800000;
            v52.i64[1] = 0x80000000800000;
            v54 = vcgeq_f32(v52, v53);
            v53.i32[3] = 0;
            v55 = vrsqrteq_f32(v53);
            v56 = vmulq_f32(v55, vrsqrtsq_f32(v53, vmulq_f32(v55, v55)));
            v57 = v54;
            v57.i32[3] = 0;
            v58 = vbslq_s8(vcltzq_s32(v57), v53, vmulq_f32(v56, vrsqrtsq_f32(v53, vmulq_f32(v56, v56))));
            v59 = vmulq_n_f32(v44, v58.f32[0]);
            v60 = vmulq_lane_f32(v45, *v58.f32, 1);
            v61 = vmulq_laneq_f32(v46, v58, 2);
            v62 = vuzp1q_s32(v61, v61);
            v63 = vuzp1q_s32(v60, v60);
            v64 = v59;
            if (v54.i32[0])
            {
              v65 = vmlaq_f32(vmulq_f32(vextq_s8(v62, v61, 0xCuLL), vnegq_f32(v60)), v61, vextq_s8(v63, v60, 0xCuLL));
              v64 = vextq_s8(vuzp1q_s32(v65, v65), v65, 0xCuLL);
            }

            v66 = vuzp1q_s32(v59, v59);
            v67 = v60;
            if (v54.i32[1])
            {
              v68 = vmlaq_f32(vmulq_f32(vextq_s8(v66, v59, 0xCuLL), vnegq_f32(v61)), v59, vextq_s8(v62, v61, 0xCuLL));
              v67 = vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL);
            }

            if (v54.i32[2])
            {
              v69 = vmlaq_f32(vmulq_f32(vextq_s8(v63, v60, 0xCuLL), vnegq_f32(v59)), v60, vextq_s8(v66, v59, 0xCuLL));
              v61 = vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL);
            }

            v70 = (*v64.i32 + *&v67.i32[1]) + v61.f32[2];
            if (v70 > 0.0)
            {
              v71 = sqrtf(v70 + 1.0);
              *v72.f32 = vsub_f32(*&vzip2q_s32(v67, vuzp1q_s32(v67, v61)), *&vtrn2q_s32(v61, vzip2q_s32(v61, v64)));
              v72.f32[2] = *&v64.i32[1] - *v67.i32;
              v72.f32[3] = v71 * v71;
              v73 = 0.5 / v71;
              goto LABEL_36;
            }

            v75 = *v64.i32 < *&v67.i32[1] || *v64.i32 < v61.f32[2];
            if (!v75)
            {
              v77 = sqrtf(((*v64.i32 + 1.0) - *&v67.i32[1]) - v61.f32[2]);
              v81.f32[0] = v77 * v77;
              v78 = *&v64.i32[1] + *v67.i32;
              v79 = vzip2q_s32(v64, v67).u64[0];
              LODWORD(v80) = vadd_f32(v79, *v61.f32).u32[0];
              HIDWORD(v80) = vsub_f32(v79, *&v61).i32[1];
              v81.f32[1] = v78;
              v81.i64[1] = v80;
              goto LABEL_44;
            }

            if (*&v67.i32[1] <= v61.f32[2])
            {
              v95 = vzip2q_s32(v64, v67).u64[0];
              v96 = __PAIR64__(v64.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v61.f32[2] + 1.0) - *v64.i32) - *&v67.i32[1])));
              v97 = vdup_lane_s32(*v67.i8, 0);
              *v72.f32 = vadd_f32(v95, *v61.f32);
              v98 = vsub_f32(*v64.i8, v97);
              v97.i32[0] = v96.i32[0];
              v97.i32[0] = vmul_f32(v96, v97).u32[0];
              v97.i32[1] = v98.i32[1];
              *&v72.u32[2] = v97;
              v73 = 0.5 / v96.f32[0];
LABEL_36:
              v74 = vmulq_n_f32(v72, v73);
            }

            else
            {
              v77 = sqrtf(((*&v67.i32[1] + 1.0) - *v64.i32) - v61.f32[2]);
              v81.f32[0] = *&v64.i32[1] + *v67.i32;
              v76 = vzip2q_s32(v64, v67).u64[0];
              v81.f32[1] = v77 * v77;
              *&v81.u32[2] = vext_s8(vadd_f32(*v61.f32, v76), vsub_f32(*v61.f32, v76), 4uLL);
LABEL_44:
              v74 = vmulq_n_f32(v81, 0.5 / v77);
            }

            if ((vmaxvq_u32(vmvnq_s8(vceqq_f32(v74, v74))) & 0x80000000) == 0 && (v41.i32[0] & 0x80000000) == 0)
            {
              v82 = vmulq_f32(v111, v42);
              v83 = vabsq_f32(v82);
              v83.i32[3] = 0;
              v84.i64[0] = 0x8000000080000000;
              v84.i64[1] = 0x8000000080000000;
              v85 = vorrq_s8(vandq_s8(v82, v84), vabsq_f32(vmaxnmq_f32(v83, xmmword_1AFE20A30)));
              v86 = vmulq_f32(v74, v74);
              v87 = vmulq_laneq_f32(v74, v74, 3);
              v88 = vmuls_lane_f32(v74.f32[0], *v74.f32, 1);
              v89 = vmuls_lane_f32(v74.f32[1], v74, 2);
              v90 = vmuls_lane_f32(v74.f32[0], v74, 2);
              v91 = vaddq_f32(v85, v85);
              v92.i32[3] = 0;
              v92.f32[0] = (0.5 - v86.f32[1]) - v86.f32[2];
              v92.f32[1] = v88 + v87.f32[2];
              v92.f32[2] = v90 - v87.f32[1];
              v93.i32[3] = 0;
              v93.f32[0] = v88 - v87.f32[2];
              v93.f32[1] = (0.5 - v86.f32[0]) - v86.f32[2];
              v93.f32[2] = v89 + v87.f32[0];
              v87.f32[0] = v89 - v87.f32[0];
              v94.i32[3] = 0;
              v94.f32[0] = v90 + v87.f32[1];
              v94.i32[1] = v87.i32[0];
              v94.f32[2] = (0.5 - v86.f32[0]) - v86.f32[1];
              objc_msgSend_setTransform_(v19, v12, v13, *vmulq_n_f32(v92, v91.f32[0]).i64, *vmulq_lane_f32(v93, *v91.f32, 1).i64, *vmulq_laneq_f32(v94, v91, 2).i64, *vmlaq_f32(v23, v111, vsubq_f32(v28[3], v23)).i64);
            }
          }
        }

        ++v15;
        ++v18;
      }

      while (v18 != v14);
      v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v119, v127, 16);
      v14 = v99;
    }

    while (v99);
  }

  if (self->_cloning)
  {
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    targets = self->_targets;
    v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v12, &v115, v126, 16);
    if (v101)
    {
      v104 = v101;
      v105 = 0;
      v106 = *v116;
      do
      {
        for (i = 0; i != v104; ++i)
        {
          if (*v116 != v106)
          {
            objc_enumerationMutation(targets);
          }

          v108 = (*&self->_anon_188[16] + (v105 << 6));
          objc_msgSend_setTransform_(*(*(&v115 + 1) + 8 * i), v102, v103, *v108, v108[2], v108[4], v108[6]);
          ++v105;
        }

        v104 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v102, &v115, v126, 16);
      }

      while (v104);
    }
  }
}

- (void)_saveOriginalData
{
  objc_msgSend__deleteOriginalData(self, a2, v2);
  v6 = objc_msgSend_count(self->_targets, v4, v5);
  self->_originalDataCount = v6;
  if (v6)
  {
    *&self->_anon_188[8] = malloc_type_malloc(16 * v6, 0x1000040451B5BE8uLL);
    *self->_anon_188 = malloc_type_malloc(16 * self->_originalDataCount, 0x1000040451B5BE8uLL);
    *&self->_anon_188[24] = malloc_type_malloc(16 * self->_originalDataCount, 0x1000040451B5BE8uLL);
    *&self->_anon_188[16] = malloc_type_malloc(self->_originalDataCount << 6, 0x1000040FA0F61DDuLL);
    targets = self->_targets;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF10E1B0;
    v9[3] = &unk_1E7A796D8;
    v9[4] = self;
    objc_msgSend_enumerateObjectsUsingBlock_(targets, v8, v9);
  }
}

- (void)_deleteOriginalData
{
  anon_188 = self->_anon_188;
  free(*self->_anon_188);
  free(*&self->_anon_188[8]);
  free(*&self->_anon_188[24]);
  free(*&self->_anon_188[16]);
  self->_originalDataCount = 0;
  *anon_188 = 0u;
  *(anon_188 + 1) = 0u;
}

- (void)clearRuntimeItems
{
  objc_msgSend_lock(self->_presentationItemsLock, a2, v2);

  self->_presentationNodeTransforms = 0;
  presentationItemsLock = self->_presentationItemsLock;

  objc_msgSend_unlock(presentationItemsLock, v4, v5);
}

- (void)_updateRuntimeItems
{
  v58 = *MEMORY[0x1E69E9840];
  objc_msgSend_lock(self->_presentationItemsLock, a2, v2);
  presentationNodeTransforms = self->_presentationNodeTransforms;
  if (!presentationNodeTransforms)
  {
    presentationNodeTransforms = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_presentationNodeTransforms = presentationNodeTransforms;
  }

  if (self->_cloning)
  {
    objc_msgSend_removeAllObjects(presentationNodeTransforms, v4, v5);
  }

  else
  {
    v9 = objc_msgSend_count(presentationNodeTransforms, v4, v5);
    if (v9 == objc_msgSend_count(self->_targets, v10, v11))
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      targets = self->_targets;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v12, &v48, v56, 16);
      if (v15)
      {
        v16 = v15;
        LODWORD(v17) = 0;
        v18 = *v49;
        do
        {
          v19 = 0;
          v17 = v17;
          do
          {
            if (*v49 != v18)
            {
              objc_enumerationMutation(targets);
            }

            v20 = *(*(&v48 + 1) + 8 * v19);
            v21 = objc_msgSend_objectAtIndex_(self->_presentationNodeTransforms, v7, v17);
            v24 = objc_msgSend_node(v20, v22, v23);
            objc_msgSend_setNode_(v21, v25, v24);
            objc_msgSend_draggedTransform(v20, v26, v27);
            objc_msgSend_setTransform_(v21, v28, v29);
            ++v17;
            ++v19;
          }

          while (v16 != v19);
          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v7, &v48, v56, 16);
        }

        while (v16);
      }
    }

    else
    {
      objc_msgSend_removeAllObjects(self->_presentationNodeTransforms, v12, v13);
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v30 = self->_targets;
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v52, v57, 16);
      if (v32)
      {
        v33 = v32;
        v34 = *v53;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v53 != v34)
            {
              objc_enumerationMutation(v30);
            }

            v36 = *(*(&v52 + 1) + 8 * i);
            v37 = objc_alloc_init(VFXManipulatorNodeTransformPair);
            v40 = objc_msgSend_node(v36, v38, v39);
            objc_msgSend_setNode_(v37, v41, v40);
            objc_msgSend_draggedTransform(v36, v42, v43);
            objc_msgSend_setTransform_(v37, v44, v45);
            objc_msgSend_addObject_(self->_presentationNodeTransforms, v46, v37);
          }

          v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v47, &v52, v57, 16);
        }

        while (v33);
      }
    }
  }

  objc_msgSend_unlock(self->_presentationItemsLock, v7, v8);
}

- (BOOL)_applyWithEvent:(id *)event
{
  v161 = *MEMORY[0x1E69E9840];
  action = self->_action;
  if (action > 2)
  {
    if (action == 3)
    {
      v84 = event->var1.y - self->_originalMouseLocation.y;
      v85 = (*self->_anon_130 * v84) * 0.01;
      selectedAxis = self->_selectedAxis;
      if (self->_selectedAxis)
      {
        v87 = 0.0;
        if (selectedAxis == 1)
        {
          v88 = 1.0;
        }

        else
        {
          v88 = 0.0;
        }

        if (selectedAxis == 2)
        {
          v89 = 1.0;
        }

        else
        {
          v89 = 0.0;
        }

        if (selectedAxis == 3)
        {
          v87 = 1.0;
        }

        v150 = *&self->_anon_1b0[36];
        v152 = *&self->_anon_1b0[20];
        v154 = *&self->_anon_1b0[4];
        v90 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v150, v87), v152, v89), v154, v88);
        v91 = vmulq_f32(v90, v90);
        *&v92 = v91.f32[2] + vaddv_f32(*v91.f32);
        *v91.f32 = vrsqrte_f32(v92);
        *v91.f32 = vmul_f32(*v91.f32, vrsqrts_f32(v92, vmul_f32(*v91.f32, *v91.f32)));
        v93 = vmulq_n_f32(v90, vmul_f32(*v91.f32, vrsqrts_f32(v92, vmul_f32(*v91.f32, *v91.f32))).f32[0]);
        v93.f32[3] = v85;
      }

      else
      {
        v155 = (*self->_anon_130 * v84) * 0.01;
        v94 = objc_msgSend_authoringEnvironment(self, a2, event);
        objc_msgSend_viewMatrix(v94, v95, v96);
        v163 = __invert_f4(v162);
        v93 = vmlaq_f32(vmlaq_f32(vnegq_f32(v163.columns[2]), 0, v163.columns[1]), 0, v163.columns[0]);
        v93.f32[3] = v155;
        v152 = *&self->_anon_1b0[20];
        v154 = *&self->_anon_1b0[4];
        v150 = *&self->_anon_1b0[36];
      }

      v97 = vmulq_f32(v93, v93);
      v97.f32[0] = v97.f32[2] + vaddv_f32(*v97.f32);
      v98 = vdupq_lane_s32(*v97.f32, 0);
      v98.i32[3] = 0;
      v99 = vrsqrteq_f32(v98);
      v100 = vmulq_f32(v99, vrsqrtsq_f32(v98, vmulq_f32(v99, v99)));
      v101 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v97.f32[0] != 0.0)), 0x1FuLL));
      v101.i32[3] = 0;
      v148 = vbslq_s8(vcltzq_s32(v101), vmulq_f32(v93, vmulq_f32(v100, vrsqrtsq_f32(v98, vmulq_f32(v100, v100)))), v93);
      v104 = __sincosf_stret(vmuls_lane_f32(0.5, v93, 3));
      v105 = 0;
      v106 = vmulq_n_f32(v148, v104.__sinval);
      v107 = vmulq_f32(v106, v106);
      v108 = vmulq_n_f32(v106, v104.__cosval);
      v109 = vmuls_lane_f32(v106.f32[0], *v106.f32, 1);
      v110 = vmuls_lane_f32(v106.f32[1], v106, 2);
      v111 = vmuls_lane_f32(v106.f32[0], v106, 2);
      v106.i32[3] = LODWORD(v104.__cosval);
      v147 = v106;
      v106.f32[0] = (0.5 - v107.f32[1]) - v107.f32[2];
      v106.f32[1] = v109 + v108.f32[2];
      v106.f32[2] = v111 - v108.f32[1];
      v112 = vaddq_f32(v106, v106);
      v113.f32[0] = v109 - v108.f32[2];
      v107.f32[0] = 0.5 - v107.f32[0];
      v113.f32[1] = v107.f32[0] - v107.f32[2];
      v113.f32[2] = v110 + v108.f32[0];
      v114 = vaddq_f32(v113, v113);
      v113.f32[0] = v111 + v108.f32[1];
      v113.f32[1] = v110 - v108.f32[0];
      v113.f32[2] = v107.f32[0] - v107.f32[1];
      v115 = vaddq_f32(v113, v113);
      v157[0] = v154;
      v157[1] = v152;
      v157[2] = v150;
      v158 = 0u;
      v159 = 0u;
      v160 = 0u;
      do
      {
        *(&v158 + v105 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v112, COERCE_FLOAT(v157[v105])), v114, *&v157[v105], 1), v115, v157[v105], 2);
        ++v105;
      }

      while (v105 != 3);
      v116 = v158;
      v117 = v159;
      v118 = v160;
      HIDWORD(v116) = 0;
      HIDWORD(v117) = 0;
      HIDWORD(v118) = 0;
      *&self->_anon_1f0[4] = v116;
      *&self->_anon_1f0[20] = v117;
      *&self->_anon_1f0[36] = v118;
      *&self->_anon_1f0[52] = xmmword_1AFE201A0;
      objc_msgSend_begin(VFXTransaction, v102, *&v103);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v119, v120, 0.0);
      objc_msgSend_updateItemsRotation_(self, v121, v122, *v147.i64);
    }

    else
    {
      if (action != 4)
      {
        goto LABEL_19;
      }

      v40 = event->var1.y - self->_originalMouseLocation.y;
      v41 = v40 <= 0.0;
      v42 = v40;
      v43 = 1.0 / ((100.0 - v42) / 100.0);
      v44 = (v42 + 100.0) / 100.0;
      if (v41)
      {
        v44 = v43;
      }

      v45 = v44;
      objc_msgSend_begin(VFXTransaction, a2, event);
      objc_msgSend_setAnimationDuration_(VFXTransaction, v46, v47, 0.0);
      *&v48 = v45;
      objc_msgSend_updateItemsScale_axis_(self, v49, self->_selectedAxis, v48);
    }

    objc_msgSend_commit(VFXTransaction, v50, v51, *&v147);
LABEL_83:
    LOBYTE(v53) = 1;
    return v53;
  }

  v5 = *&event[1].var0;
  v6 = vsubq_f32(*&event[1].var1.y, v5);
  v153 = *&self->_anon_1f0[52];
  if (action == 1)
  {
    *v54.i64 = sub_1AF10F130(self, v5, v6);
    v151 = vaddq_f32(v54, *&self->_anon_130[32]);
    objc_msgSend_begin(VFXTransaction, v55, v56);
    objc_msgSend_setAnimationDuration_(VFXTransaction, v57, v58, 0.0);
    LOBYTE(v157[0]) = 0;
    v61 = objc_msgSend_authoringEnvironment(self, v59, v60);
    objc_msgSend_gridUnit(v61, v62, v63);
    v65 = v64;
    *(&v158 + 1) = -1;
    *&v159 = -1;
    *&v158 = -1;
    v68 = objc_msgSend_authoringEnvironment(self, v66, v67);
    shouldSnapToAlign = objc_msgSend_shouldSnapToAlign(v68, v69, v70);
    v75 = 0uLL;
    if (shouldSnapToAlign)
    {
      *&v74 = v65;
      objc_msgSend__snapPositionToAlign_original_unit_axisMove_rayStart_rayDir_didSnap_snapIndexes_(self, v72, 1, v157, &v158, *v151.i64, *v153.i64, v74, *self->_anon_130, *&self->_anon_130[16]);
    }

    v149 = v75;
    v76 = objc_msgSend_authoringEnvironment(self, v72, v73);
    if (objc_msgSend_shouldSnapOnGrid(v76, v77, v78))
    {
      if (v65 != 0.0)
      {
        v156 = 0;
        *v79.i64 = sub_1AF10F204(1, &v156, v151, v153, v65, *self->_anon_130, *&self->_anon_130[16]);
        if (v156 == 1)
        {
          if (LOBYTE(v157[0]) == 1)
          {
            v80 = vsubq_f32(v79, v151);
            v81 = vmulq_f32(v80, v80);
            v82 = vsubq_f32(v149, v151);
            v83 = vmulq_f32(v82, v82);
            *v81.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v81, v81, 8uLL), *&vextq_s8(v83, v83, 8uLL)), vadd_f32(vzip1_s32(*v81.i8, *v83.i8), vzip2_s32(*v81.i8, *v83.i8))));
            if ((vcgt_f32(vdup_lane_s32(*v81.i8, 1), *v81.i8).u32[0] & 1) == 0)
            {
              goto LABEL_65;
            }

            *(&v158 + 1) = -1;
            *&v159 = -1;
            *&v158 = -1;
          }

          else
          {
            LOBYTE(v157[0]) = 1;
          }

          v149 = v79;
        }
      }
    }

LABEL_65:
    if (LOBYTE(v157[0]) == 1)
    {
      objc_msgSend_lock(self->_snapLock, v33, v34);
      v134 = v158;
      if (v158 != -1 && v158 < self->_snapToAlignCount)
      {
        var0 = self->_snapToAlignOnX[v158].var0;
        v136 = v158;
        do
        {
          if (vabds_f32(self->_snapToAlignOnX[v136].var0, var0) >= 0.00001)
          {
            break;
          }

          objc_msgSend_addIndex_(self->_snapXIndexes, v123, v134++);
          ++v136;
        }

        while (v134 < self->_snapToAlignCount);
      }

      v137 = *(&v158 + 1);
      if (*(&v158 + 1) != -1 && *(&v158 + 1) < self->_snapToAlignCount)
      {
        v138 = self->_snapToAlignOnY[*(&v158 + 1)].var0;
        v139 = *(&v158 + 1);
        do
        {
          if (vabds_f32(self->_snapToAlignOnY[v139].var0, v138) >= 0.00001)
          {
            break;
          }

          objc_msgSend_addIndex_(self->_snapYIndexes, v123, v137++);
          ++v139;
        }

        while (v137 < self->_snapToAlignCount);
      }

      v140 = v159;
      if (v159 != -1 && v159 < self->_snapToAlignCount)
      {
        v141 = self->_snapToAlignOnZ[v159].var0;
        v142 = v159;
        do
        {
          if (vabds_f32(self->_snapToAlignOnZ[v142].var0, v141) >= 0.00001)
          {
            break;
          }

          objc_msgSend_addIndex_(self->_snapZIndexes, v123, v140++);
          ++v142;
        }

        while (v140 < self->_snapToAlignCount);
      }

      goto LABEL_81;
    }

LABEL_82:
    v143 = v151;
    v143.i32[3] = *&self->_anon_1f0[64];
    *&self->_anon_1f0[52] = v143;
    objc_msgSend_updateItemsPosition(self, v33, v34);
    objc_msgSend_commit(VFXTransaction, v144, v145);
    goto LABEL_83;
  }

  if (action == 2)
  {
    v7 = *&self->_anon_130[16];
    v8 = vmulq_f32(v6, v7);
    v9 = v8.f32[2] + vaddv_f32(*v8.f32);
    if (v9 != 0.0)
    {
      v10 = vmulq_f32(v7, vsubq_f32(*&self->_anon_130[32], v5));
      v5 = vmlaq_n_f32(v5, v6, (v10.f32[2] + vaddv_f32(*v10.f32)) / v9);
    }

    v151 = vaddq_f32(v5, *&self->_anon_130[48]);
    objc_msgSend_begin(VFXTransaction, a2, event);
    objc_msgSend_setAnimationDuration_(VFXTransaction, v11, v12, 0.0);
    LOBYTE(v157[0]) = 0;
    v15 = objc_msgSend_authoringEnvironment(self, v13, v14);
    objc_msgSend_gridUnit(v15, v16, v17);
    v19 = v18;
    *(&v158 + 1) = -1;
    *&v159 = -1;
    *&v158 = -1;
    v22 = objc_msgSend_authoringEnvironment(self, v20, v21);
    v25 = objc_msgSend_shouldSnapToAlign(v22, v23, v24);
    v29 = 0uLL;
    if (v25)
    {
      *&v28 = v19;
      objc_msgSend__snapPositionToAlign_original_unit_axisMove_rayStart_rayDir_didSnap_snapIndexes_(self, v26, 0, v157, &v158, *v151.i64, *v153.i64, v28, 0.0, 0.0);
    }

    v149 = v29;
    v30 = objc_msgSend_authoringEnvironment(self, v26, v27);
    if (objc_msgSend_shouldSnapOnGrid(v30, v31, v32))
    {
      if (v19 != 0.0)
      {
        v156 = 0;
        *v35.i64 = sub_1AF10F204(0, &v156, v151, v153, v19, *&self->_anon_130[32], *&self->_anon_130[16]);
        if (v156 == 1)
        {
          if (LOBYTE(v157[0]) == 1)
          {
            v36 = vsubq_f32(v35, v151);
            v37 = vmulq_f32(v36, v36);
            v38 = vsubq_f32(v149, v151);
            v39 = vmulq_f32(v38, v38);
            *v37.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v37, v37, 8uLL), *&vextq_s8(v39, v39, 8uLL)), vadd_f32(vzip1_s32(*v37.i8, *v39.i8), vzip2_s32(*v37.i8, *v39.i8))));
            if ((vcgt_f32(vdup_lane_s32(*v37.i8, 1), *v37.i8).u32[0] & 1) == 0)
            {
              goto LABEL_46;
            }

            *(&v158 + 1) = -1;
            *&v159 = -1;
            *&v158 = -1;
          }

          else
          {
            LOBYTE(v157[0]) = 1;
          }

          v149 = v35;
        }
      }
    }

LABEL_46:
    if (LOBYTE(v157[0]) == 1)
    {
      objc_msgSend_lock(self->_snapLock, v33, v34);
      v125 = v158;
      if (v158 != -1 && v158 < self->_snapToAlignCount)
      {
        v126 = self->_snapToAlignOnX[v158].var0;
        v127 = v158;
        do
        {
          if (vabds_f32(self->_snapToAlignOnX[v127].var0, v126) >= 0.00001)
          {
            break;
          }

          objc_msgSend_addIndex_(self->_snapXIndexes, v123, v125++);
          ++v127;
        }

        while (v125 < self->_snapToAlignCount);
      }

      v128 = *(&v158 + 1);
      if (*(&v158 + 1) != -1 && *(&v158 + 1) < self->_snapToAlignCount)
      {
        v129 = self->_snapToAlignOnY[*(&v158 + 1)].var0;
        v130 = *(&v158 + 1);
        do
        {
          if (vabds_f32(self->_snapToAlignOnY[v130].var0, v129) >= 0.00001)
          {
            break;
          }

          objc_msgSend_addIndex_(self->_snapYIndexes, v123, v128++);
          ++v130;
        }

        while (v128 < self->_snapToAlignCount);
      }

      v131 = v159;
      if (v159 != -1 && v159 < self->_snapToAlignCount)
      {
        v132 = self->_snapToAlignOnZ[v159].var0;
        v133 = v159;
        do
        {
          if (vabds_f32(self->_snapToAlignOnZ[v133].var0, v132) >= 0.00001)
          {
            break;
          }

          objc_msgSend_addIndex_(self->_snapZIndexes, v123, v131++);
          ++v133;
        }

        while (v131 < self->_snapToAlignCount);
      }

LABEL_81:
      objc_msgSend_unlock(self->_snapLock, v123, v124);
      v151 = v149;
      goto LABEL_82;
    }

    goto LABEL_82;
  }

LABEL_19:
  v52 = sub_1AF0D5194(self, a2);
  v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
  if (v53)
  {
    sub_1AFDCFF98(v52);
    LOBYTE(v53) = 0;
  }

  return v53;
}

- (void)clearSnapIndexes
{
  objc_msgSend_lock(self->_snapLock, a2, v2);
  free(self->_snapToAlignOnX);
  free(self->_snapToAlignOnY);
  free(self->_snapToAlignOnZ);
  *&self->_snapToAlignCount = 0u;
  *&self->_snapToAlignOnY = 0u;
  objc_msgSend_removeAllIndexes(self->_snapXIndexes, v4, v5);
  objc_msgSend_removeAllIndexes(self->_snapYIndexes, v6, v7);
  objc_msgSend_removeAllIndexes(self->_snapZIndexes, v8, v9);
  snapLock = self->_snapLock;

  objc_msgSend_unlock(snapLock, v10, v11);
}

- (BOOL)mouseDragged:(id *)dragged
{
  if (!self->_action)
  {
    return 0;
  }

  v5 = *&dragged[1].var0;
  v18 = *&dragged->var2.y;
  v19 = v5;
  v6 = *&dragged[1].var2.y;
  v20 = *&dragged[1].var1.y;
  v21 = v6;
  v7 = *&dragged->var1.y;
  v16 = *&dragged->var0;
  v17 = v7;
  objc_msgSend__updateCloneStateWithEvent_(self, a2, &v16);
  v8 = *&dragged[1].var0;
  v18 = *&dragged->var2.y;
  v19 = v8;
  v9 = *&dragged[1].var2.y;
  v20 = *&dragged[1].var1.y;
  v21 = v9;
  v10 = *&dragged->var1.y;
  v16 = *&dragged->var0;
  v17 = v10;
  v12 = objc_msgSend__applyWithEvent_(self, v11, &v16);
  objc_msgSend__updateRuntimeItems(self, v13, v14);
  return v12;
}

- (BOOL)mouseDown:(id *)down
{
  if (objc_msgSend_readonly(self, a2, down))
  {
    return 0;
  }

  v6 = *&down[1].var0;
  v61[2] = *&down->var2.y;
  v61[3] = v6;
  v7 = *&down[1].var2.y;
  v61[4] = *&down[1].var1.y;
  v61[5] = v7;
  v8 = *&down->var1.y;
  v61[0] = *&down->var0;
  v61[1] = v8;
  objc_msgSend__updateActionWithEvent_(self, v5, v61);
  if (!self->_action)
  {
    return 0;
  }

  v11 = 1;
  self->_isMouseDown = 1;
  objc_msgSend__saveOriginalData(self, v9, v10);
  v14 = sub_1AF10C564(self, v12, v13);
  *&self->_anon_1f0[4] = v16;
  *&self->_anon_1f0[20] = v17;
  *&self->_anon_1f0[36] = v18;
  *&self->_anon_1f0[52] = v19;
  v20 = *&self->_anon_1f0[20];
  *&self->_anon_1b0[4] = *&self->_anon_1f0[4];
  *&self->_anon_1b0[20] = v20;
  v21 = *&self->_anon_1f0[52];
  *&self->_anon_1b0[36] = *&self->_anon_1f0[36];
  *&self->_anon_1b0[52] = v21;
  var1 = down->var1;
  self->_originalMouseLocation = var1;
  action = self->_action;
  if (action > 2)
  {
    if (action != 3)
    {
      if (action == 4)
      {
        return v11;
      }

LABEL_19:
      v35 = sub_1AF0D5194(v14, v15);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDCFF98(v35);
      }

      return 0;
    }

    selectedAxis = self->_selectedAxis;
    v51 = 0.0;
    if (selectedAxis == 1)
    {
      v52 = 1.0;
    }

    else
    {
      v52 = 0.0;
    }

    if (selectedAxis == 2)
    {
      v53 = 1.0;
    }

    else
    {
      v53 = 0.0;
    }

    if (selectedAxis == 3)
    {
      v51 = 1.0;
    }

    v54 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v18, v51), v17, v53), v16, v52);
    v55 = vmulq_f32(v54, v54);
    *&v56 = v55.f32[2] + vaddv_f32(*v55.f32);
    *v55.f32 = vrsqrte_f32(v56);
    *v55.f32 = vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32)));
    v57 = vmulq_f32(vsubq_f32(*&down[1].var1.y, *&down[1].var0), vmulq_n_f32(v54, vmul_f32(*v55.f32, vrsqrts_f32(v56, vmul_f32(*v55.f32, *v55.f32))).f32[0]));
    v58 = vaddv_f32(*v57.f32);
    v59 = -1.0;
    if ((v57.f32[2] + v58) <= 0.0)
    {
      v59 = 1.0;
    }

    *self->_anon_130 = v59;
  }

  else
  {
    if (action != 1)
    {
      if (action == 2)
      {
        v24 = self->_selectedAxis;
        v25 = 1.0;
        if (v24 == 1)
        {
          v26 = 1.0;
        }

        else
        {
          v26 = 0.0;
        }

        if (v24 == 2)
        {
          v27 = 1.0;
        }

        else
        {
          v27 = 0.0;
        }

        if (v24 != 3)
        {
          v25 = 0.0;
        }

        v28 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v19, 0, v18), 0, v17), 0, v16);
        v29 = vsubq_f32(vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(v19, v18, v25), v17, v27), v16, v26), v28);
        *&self->_anon_130[16] = v29;
        *&self->_anon_130[32] = v28;
        *self->_anon_130 = v28;
        v30 = *&down[1].var0;
        v31 = vsubq_f32(*&down[1].var1.y, v30);
        v32 = vmulq_f32(v31, v29);
        v33 = v32.f32[2] + vaddv_f32(*v32.f32);
        if (v33 != 0.0)
        {
          v34 = vmulq_f32(vsubq_f32(v28, v30), v29);
          v30 = vmlaq_n_f32(v30, v31, (v34.f32[2] + vaddv_f32(*v34.f32)) / v33);
        }

        *&self->_anon_130[48] = vsubq_f32(v28, v30);
        return v11;
      }

      goto LABEL_19;
    }

    v37 = self->_selectedAxis;
    __asm { FMOV            V5.2S, #1.0 }

    *var1.f32 = vand_s8(vceq_s32(vdup_n_s32(v37), 0x200000001), _D5);
    v43 = 0.0;
    if (v37 == 3)
    {
      v43 = 1.0;
    }

    var1.f32[2] = v43;
    v44 = vmulq_f32(var1, vdupq_n_s32(0x42C80000u));
    v45 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v19, 0, v18), 0, v17), 0, v16);
    v46 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v19, v18, v44, 2), v17, *v44.f32, 1), v16, v44.f32[0]), v45);
    v60 = v45;
    v47 = vmulq_f32(v46, v46);
    *&v48 = v47.f32[2] + vaddv_f32(*v47.f32);
    *v47.f32 = vrsqrte_f32(v48);
    *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
    *self->_anon_130 = v45;
    *&self->_anon_130[16] = vmulq_n_f32(v46, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]);
    *v49.i64 = sub_1AF10F130(self, *&down[1].var0, vsubq_f32(*&down[1].var1.y, *&down[1].var0));
    *&self->_anon_130[32] = vsubq_f32(v60, v49);
  }

  return v11;
}

- (BOOL)mouseUp:(id *)up
{
  if (objc_msgSend_readonly(self, a2, up))
  {
    return 0;
  }

  objc_msgSend_clearSnapIndexes(self, v5, v6);
  v7 = self->_action != 0;
  if (self->_action)
  {
    v9 = *&up[1].var0;
    v34 = *&up->var2.y;
    v35 = v9;
    v10 = *&up[1].var2.y;
    v36 = *&up[1].var1.y;
    v37 = v10;
    v11 = *&up->var1.y;
    v32 = *&up->var0;
    v33 = v11;
    objc_msgSend__updateCloneStateWithEvent_(self, v8, &v32);
    v12 = *&up[1].var0;
    v34 = *&up->var2.y;
    v35 = v12;
    v13 = *&up[1].var2.y;
    v36 = *&up[1].var1.y;
    v37 = v13;
    v14 = *&up->var1.y;
    v32 = *&up->var0;
    v33 = v14;
    objc_msgSend__applyWithEvent_(self, v15, &v32);
    if (self->_cloning)
    {
      objc_msgSend_validateClones(self, v16, v17);
    }

    else
    {
      v18 = objc_msgSend_delegate(self->_authoringEnvironment, v16, v17);
      if (v18)
      {
        v19 = v18;
        if (objc_opt_respondsToSelector())
        {
          authoringEnvironment = self->_authoringEnvironment;
          v23 = objc_msgSend_array(self->_targets, v20, v21);
          objc_msgSend_authoringEnvironment_didMoveItems_fromTransform_(v19, v24, authoringEnvironment, v23, *&self->_anon_188[16]);
        }
      }
    }
  }

  self->_cloneSet = 0;
  self->_cloning = 0;
  self->_action = 0;
  *self->_anon_130 = 0u;
  *&self->_anon_130[16] = 0u;
  *&self->_anon_130[32] = 0u;
  *&self->_anon_130[48] = 0u;
  self->_isMouseDown = 0;
  objc_msgSend_clearRuntimeItems(self, v25, v26);
  v27 = *&up[1].var0;
  v34 = *&up->var2.y;
  v35 = v27;
  v28 = *&up[1].var2.y;
  v36 = *&up[1].var1.y;
  v37 = v28;
  v29 = *&up->var1.y;
  v32 = *&up->var0;
  v33 = v29;
  objc_msgSend_mouseMoved_(self, v30, &v32);
  return v7;
}

- (id)world
{
  v3 = objc_msgSend_authoringEnvironment(self, a2, v2);
  v6 = objc_msgSend_worldRenderer(v3, v4, v5);

  return objc_msgSend_world(v6, v7, v8);
}

- (void)removeClonesFromWorld
{
  objc_msgSend_firstObject(self->_cloneSet, a2, v2);
  v4 = objc_opt_class();
  v8 = objc_msgSend_array(self->_cloneSet, v5, v6);

  objc_msgSend_removeItemsFromWorld_(v4, v7, v8);
}

- (void)addClonesToWorld
{
  v4 = objc_msgSend_world(self, a2, v2);
  objc_msgSend_firstObject(self->_cloneSet, v5, v6);
  v7 = objc_opt_class();
  v11 = objc_msgSend_array(self->_cloneSet, v8, v9);

  objc_msgSend_addItems_toWorld_(v7, v10, v11, v4);
}

- (void)validateClones
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_delegate(self->_authoringEnvironment, a2, v2);
  if (v4)
  {
    v5 = v4;
    if (objc_opt_respondsToSelector())
    {
      v8 = objc_msgSend_authoringEnvironment(self, v6, v7);
      objc_sync_enter(v8);
      objc_msgSend_firstObject(self->_cloneSet, v9, v10);
      v11 = objc_opt_class();
      v14 = objc_msgSend_array(self->_cloneSet, v12, v13);
      objc_msgSend_removeItemsFromWorld_(v11, v15, v14);
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      cloneSet = self->_cloneSet;
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(cloneSet, v17, &v28, v32, 16);
      if (v20)
      {
        v21 = *v29;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v29 != v21)
            {
              objc_enumerationMutation(cloneSet);
            }

            objc_msgSend_validateClone(*(*(&v28 + 1) + 8 * i), v18, v19);
          }

          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(cloneSet, v18, &v28, v32, 16);
        }

        while (v20);
      }

      objc_sync_exit(v8);
      authoringEnvironment = self->_authoringEnvironment;
      v26 = objc_msgSend_array(self->_cloneSet, v24, v25);
      objc_msgSend_authoringEnvironment_didCloneSelection_(v5, v27, authoringEnvironment, v26);
    }
  }
}

- (id)setupClones
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_orderedSet(MEMORY[0x1E695DFA0], a2, v2);
  v7 = objc_msgSend_world(self, v5, v6);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  targets = self->_targets;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v9, &v24, v29, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(targets);
        }

        v16 = objc_msgSend_cloneForManipulators(*(*(&v24 + 1) + 8 * v15), v11, v12);
        if (v16)
        {
          v17 = v16;
          v18 = objc_opt_class();
          v28 = v17;
          v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, &v28, 1);
          objc_msgSend_addItems_toWorld_(v18, v21, v20, v7);
          objc_msgSend_addObject_(v4, v22, v17);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(targets, v11, &v24, v29, 16);
    }

    while (v13);
  }

  return v4;
}

- (id)snapGuideIndexesOnAxis:(unint64_t)axis
{
  v3 = 608;
  if (axis == 2)
  {
    v3 = 600;
  }

  if (axis == 1)
  {
    v3 = 592;
  }

  return *(&self->super.isa + v3);
}

- (const)snapInfoAtIndex:(unint64_t)index axis:(unint64_t)axis
{
  v4 = 584;
  if (axis == 2)
  {
    v4 = 576;
  }

  if (axis == 1)
  {
    v4 = 568;
  }

  return (*(&self->super.isa + v4) + 24 * index);
}

- (void)_prepareSnapToAlignData:(VFXManipulator *)self minOffset:(SEL)offset maxOffset:(unsigned __int16)maxOffset
{
  v55 = v3;
  v56 = v4;
  if ((maxOffset - 1) >= 3)
  {
    NSLog(&cfstr_Preparesnaptoa.isa, offset);
  }

  else
  {
    maxOffsetCopy = maxOffset;
    v7 = (&self->super.isa + ((maxOffset - 1) & 0x1FFF));
    free(v7[71]);
    v7[71] = 0;
    if (objc_msgSend_count(self->_targets, v8, v9))
    {
      v12 = objc_msgSend_world(self, v10, v11);
      v15 = objc_msgSend_rootNode(v12, v13, v14);
      v17 = objc_msgSend_childNodesPassingTest_(v15, v16, &unk_1F24E69D0);
      v20 = objc_msgSend_count(v17, v18, v19);
      v21 = malloc_type_calloc(0x18uLL, 7 * v20 + 7, 0x192BFC6BuLL);
      v7[71] = v21;
      v23 = v20;
      if (v20)
      {
        v24 = 0;
        v25 = 0;
        v54 = xmmword_1AFE201A0;
        while (1)
        {
          v26 = objc_msgSend_objectAtIndex_(v17, v22, v24, *&v54);
          if ((sub_1AF110568(self->_targets, v26) & 1) == 0)
          {
            break;
          }

LABEL_17:
          if (v23 == ++v24)
          {
            v21 = v7[71];
            goto LABEL_21;
          }
        }

        v28 = objc_msgSend_nodeRef(v26, v22, v27);
        objc_msgSend_worldTransform(v26, v29, v30);
        v59 = 0u;
        v57 = v31;
        v58 = 0u;
        if (sub_1AF1B7A3C(v28, &v58))
        {
          v32 = sub_1AF1B9B04(v28, v22);
          v33 = *(v32 + 16);
          v34 = *(v32 + 32);
          v35 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(v32 + 48), v34, v58, 2), v33, *v58.f32, 1), *v32, v58.f32[0]);
          v35.i32[3] = v58.i32[3];
          v36 = v59;
          v36.i32[1] = v59.i32[0];
          v36.i32[2] = v59.i32[0];
          v37 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v33), vuzp2q_s32(vdupq_lane_s32(*v59.i8, 1), v59)), v36, vabsq_f32(*v32)), vzip2q_s32(vtrn1q_s32(v59, v59), v59), vabsq_f32(v34));
        }

        else
        {
          v38 = v57;
          v38.i32[3] = 1.0;
          v39.i64[0] = 0x3F0000003F000000;
          v39.i64[1] = 0x3F0000003F000000;
          v35 = vmulq_f32(vaddq_f32(v38, v54), v39);
          v37 = vmulq_f32(vsubq_f32(v54, v38), v39);
        }

        v58 = v35;
        v59 = v37;
        v40 = 3 * v25;
        *(v7[71] + v40 + 1) = v28;
        v41 = v25 + 1;
        *(v7[71] + 3 * v25 + 4) = v28;
        v42 = v25 + 2;
        *(v7[71] + 3 * v25 + 7) = v28;
        v43 = v25 + 3;
        *(v7[71] + 3 * v25 + 10) = v28;
        v44 = v25 + 4;
        *(v7[71] + 3 * v25 + 13) = v28;
        v45 = v25 + 5;
        *(v7[71] + 3 * v25 + 16) = v28;
        *(v7[71] + 3 * v25 + 19) = v28;
        v46 = v7[71];
        v46[2 * v40 + 4] = 0;
        switch(maxOffsetCopy)
        {
          case 3:
            v46[6 * v25] = v57.i32[2];
            *&v46[6 * v41] = *(&v55 + 2) + (v58.f32[2] + *&v59.i32[2]);
            *&v46[6 * v42] = *(&v56 + 2) + (v58.f32[2] + *&v59.i32[2]);
            *&v46[6 * v43] = *(&v55 + 2) + (v58.f32[2] - *&v59.i32[2]);
            *&v46[6 * v44] = *(&v56 + 2) + (v58.f32[2] - *&v59.i32[2]);
            *&v46[6 * v45] = *(&v55 + 2) + v58.f32[2];
            v47 = *(&v56 + 2) + v58.f32[2];
            v48 = DWORD2(v55);
            v49 = DWORD2(v56);
            break;
          case 2:
            v46[6 * v25] = v57.i32[1];
            *&v46[6 * v41] = *(&v55 + 1) + (v58.f32[1] + *&v59.i32[1]);
            *&v46[6 * v42] = *(&v56 + 1) + (v58.f32[1] + *&v59.i32[1]);
            *&v46[6 * v43] = *(&v55 + 1) + (v58.f32[1] - *&v59.i32[1]);
            *&v46[6 * v44] = *(&v56 + 1) + (v58.f32[1] - *&v59.i32[1]);
            *&v46[6 * v45] = *(&v55 + 1) + v58.f32[1];
            v47 = *(&v56 + 1) + v58.f32[1];
            v48 = DWORD1(v55);
            v49 = DWORD1(v56);
            break;
          case 1:
            v46[6 * v25] = v57.i32[0];
            *&v46[6 * v41] = (v58.f32[0] + *v59.i32) + *&v55;
            *&v46[6 * v42] = (v58.f32[0] + *v59.i32) + *&v56;
            *&v46[6 * v43] = (v58.f32[0] - *v59.i32) + *&v55;
            *&v46[6 * v44] = (v58.f32[0] - *v59.i32) + *&v56;
            *&v46[6 * v45] = v58.f32[0] + *&v55;
            v47 = v58.f32[0] + *&v56;
            v48 = v55;
            v49 = v56;
            break;
          default:
LABEL_16:
            v25 += 7;
            goto LABEL_17;
        }

        v50 = &v46[6 * v25 + 36];
        *v50 = v47;
        v46[6 * v41 + 4] = v48;
        v46[6 * v42 + 4] = v49;
        v46[6 * v43 + 4] = v48;
        v46[6 * v44 + 4] = v49;
        v46[6 * v45 + 4] = v48;
        *(v50 + 4) = v49;
        goto LABEL_16;
      }

      v25 = 0;
LABEL_21:
      v21[3 * v25 + 1] = 0;
      v51 = v7[71];
      v52 = &v51[24 * v25];
      *v52 = 0;
      *(v52 + 4) = 0;
      v53 = v25 + 1;
      self->_snapToAlignCount = v53;
      qsort(v51, v53, 0x18uLL, sub_1AF110070);
    }
  }
}

- (void)prepareSnapToAlignData
{
  v74 = *MEMORY[0x1E69E9840];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v57 = 0;
  v4 = objc_msgSend_targets(self, a2, v2);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v69, v73, 16);
  *&v9 = 0.0;
  if (v6)
  {
    v10 = v6;
    v11 = 0;
    v12.i64[0] = 0x80000000800000;
    v12.i64[1] = 0x80000000800000;
    v13.i64[0] = 0x80000000800000;
    v13.i64[1] = 0x80000000800000;
    v61 = v13;
    v64 = vnegq_f32(v12);
    v14 = *v70;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v70 != v14)
        {
          objc_enumerationMutation(v4);
        }

        v16 = *(*(&v69 + 1) + 8 * i);
        if (objc_msgSend_node(v16, v7, v8))
        {
          DWORD2(v68) = 0;
          *&v68 = 0;
          v67 = 0;
          v66 = 0.0;
          v17 = objc_msgSend_node(v16, v7, v8);
          if (objc_msgSend_getBoundingBoxMin_max_(v17, v18, &v68, &v66))
          {
            v19 = objc_msgSend_node(v16, v7, v8);
            objc_msgSend_convertPosition_toNode_(v19, v20, 0, *&v68);
            v68 = v21;
            v24 = objc_msgSend_node(v16, v22, v23);
            objc_msgSend_convertPosition_toNode_(v24, v25, 0, v66);
            v28 = v64.f32[2];
            v29 = *(&v68 + 2);
            if (*(&v68 + 2) >= v27)
            {
              v30 = v27;
            }

            else
            {
              v30 = *(&v68 + 2);
            }

            if (*(&v68 + 2) < v27)
            {
              v29 = v27;
            }

            if (v64.f32[2] >= v30)
            {
              v28 = v30;
            }

            v31 = vcgt_f32(v26, *&v68);
            v32 = vbsl_s8(v31, *&v68, v26);
            *v33.f32 = vbsl_s8(vcgt_f32(v32, *v64.f32), *v64.f32, v32);
            v33.i64[1] = __PAIR64__(v64.u32[3], LODWORD(v28));
            v34 = vbsl_s8(v31, v26, *&v68);
            *v35.f32 = vbsl_s8(vcgt_f32(v34, *v61.f32), v34, *v61.f32);
            v36 = v61.f32[2];
            if (v61.f32[2] < v29)
            {
              v36 = v29;
            }

            v35.i64[1] = __PAIR64__(v61.u32[3], LODWORD(v36));
            v11 = 1;
            v61 = v35;
            v64 = v33;
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v69, v73, 16);
    }

    while (v10);
    *&v9 = 0.0;
    v57 = 0;
    if (v11)
    {
      objc_msgSend_transform(self, v7, v8);
      v58 = v37;
      objc_msgSend_transform(self, v38, v39);
      v59 = __PAIR64__(v40, v58);
      objc_msgSend_transform(self, v41, v42);
      v44.i64[0] = v59;
      v44.i64[1] = vextq_s8(v43, v43, 8uLL).u64[0];
      v57 = vsubq_f32(v61, v44).u64[0];
      objc_msgSend_transform(self, v45, v46);
      v62 = v47;
      objc_msgSend_transform(self, v48, v49);
      v63 = __PAIR64__(v50, v62);
      objc_msgSend_transform(self, v51, v52);
      v54.i64[0] = v63;
      v54.i64[1] = vextq_s8(v53, v53, 8uLL).u64[0];
      v9 = vsubq_f32(v64, v54).u64[0];
    }
  }

  v65 = *&v9;
  objc_msgSend__prepareSnapToAlignData_minOffset_maxOffset_(self, v7, 1, v57);
  objc_msgSend__prepareSnapToAlignData_minOffset_maxOffset_(self, v55, 2, v65, v60);
  objc_msgSend__prepareSnapToAlignData_minOffset_maxOffset_(self, v56, 3, v65, v60);
}

- (void)prepareSnapToAlignDataIfNeeded
{
  if (!self->_snapToAlignCount)
  {
    v4 = objc_msgSend_world(self, a2, v2);
    v7 = objc_msgSend_worldRef(v4, v5, v6);
    if (v7)
    {
      v10 = v7;
      sub_1AF1CEA20(v7, v8);
      objc_msgSend_prepareSnapToAlignData(self, v11, v12);

      sub_1AF1CEA9C(v10, v13);
    }

    else
    {

      objc_msgSend_prepareSnapToAlignData(self, v8, v9);
    }
  }
}

- (float32x4_t)_snapPositionToAlign:(float32x4_t)align original:(float)original unit:(__n128)unit axisMove:(__n128)move rayStart:(const char *)start rayDir:(uint64_t)dir didSnap:(_BYTE *)snap snapIndexes:(uint64_t *)self0
{
  dirCopy = dir;
  unitCopy = unit;
  moveCopy = move;
  objc_msgSend_prepareSnapToAlignDataIfNeeded(self, start, dir);
  *snap = 0;
  if (self[70] && self[71])
  {
    v31 = 0u;
    v32 = 0u;
    v30 = 0;
    sub_1AF1DA1B4(&v31, &unitCopy, &moveCopy);
    v15 = a2;
    v16 = vsubq_f32(a2, align);
    v25 = v16;
    if (fabsf(v16.f32[0]) <= 0.00001)
    {
      v19 = 0;
      v18 = a2;
    }

    else
    {
      v17 = sub_1AF110A2C(self[71], self[70], &v30, a2.f32[0], original);
      *indexes = v17;
      if (v17 == -1)
      {
        v19 = 0;
        v15 = a2;
        v18 = a2;
      }

      else
      {
        v18.i32[0] = v30;
        v15 = a2;
        *(v18.i64 + 4) = *(a2.i64 + 4);
        v19 = 1;
      }

      v16 = v25;
    }

    if (fabsf(v16.f32[1]) <= 0.00001)
    {
      v21 = 0;
    }

    else
    {
      v27 = v18;
      v20 = sub_1AF110A2C(self[72], self[70], &v30, v15.n128_f32[1], original);
      indexes[1] = v20;
      if (v20 == -1)
      {
        v21 = 0;
        v18 = v27;
      }

      else
      {
        v18.i64[0] = __PAIR64__(v30, v27.u32[0]);
        v18.i64[1] = v27.i64[1];
        v21 = 1;
      }

      v15 = a2;
      v16.i32[2] = v25.i32[2];
    }

    if (fabsf(v16.f32[2]) <= 0.00001)
    {
      v23 = 0;
    }

    else
    {
      v28 = v18;
      v22 = sub_1AF110A2C(self[73], self[70], &v30, v15.n128_f32[2], original);
      indexes[2] = v22;
      if (v22 == -1)
      {
        v23 = 0;
        v18 = v28;
      }

      else
      {
        v18.i64[0] = v28.i64[0];
        v18.i64[1] = __PAIR64__(v28.u32[3], v30);
        v23 = 1;
      }

      v15 = a2;
    }

    *snap = v19 | v21 | v23;
    if (v19 | v21 | v23 && dirCopy)
    {
      sub_1AF110CD4(v19, v21, v23, indexes, v18, v15, v31, v32);
    }

    return v18;
  }

  return a2;
}

@end