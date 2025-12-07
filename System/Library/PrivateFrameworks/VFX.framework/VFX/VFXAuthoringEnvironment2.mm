@interface VFXAuthoringEnvironment2
+ (id)authoringEnvironmentForWorld:(id)world createIfNeeded:(BOOL)needed;
- (BOOL)_isPartOfSelection:(__CFXNode *)selection;
- (BOOL)_proximityHidden:(double)hidden;
- (VFXAuthoringEnvironment2)initWithWorld:(id)world;
- (id)authoringCamera:(int64_t)camera;
- (id)cameraFocusPlaneModel;
- (id)cameraFrustumModel;
- (id)cameraModel;
- (id)cameraNearPlaneModel;
- (id)cameraOrthographicFrustumModel;
- (id)effectModel;
- (id)fieldModel;
- (id)modelForLightType:(unsigned __int8)type;
- (unsigned)debugOptions;
- (void)_resetLightAuthoringWithContainerNode:(id)node source:(__CFXNode *)source light:(__CFXLight *)light;
- (void)addCameraNode:(__CFXNode *)node;
- (void)addEffectNode:(__CFXNode *)node;
- (void)addEyeSightFrameNode:(__CFXNode *)node;
- (void)addForceFieldNode:(__CFXNode *)node;
- (void)addLightNode:(__CFXNode *)node;
- (void)addedNode:(__CFXNode *)node;
- (void)cancelSelection;
- (void)dealloc;
- (void)didSetPointOfView:(id)view;
- (void)prepareWorld:(id)world;
- (void)removeCameraNode:(__CFXNode *)node;
- (void)removeEffectNode:(__CFXNode *)node;
- (void)removeEyesightFrameNode:(__CFXNode *)node;
- (void)removeForceFieldNode:(__CFXNode *)node;
- (void)removeLightNode:(__CFXNode *)node;
- (void)removedNode:(__CFXNode *)node;
- (void)selectNodes:(id)nodes;
- (void)setAuthoringCamera:(int64_t)camera forView:(id)view;
- (void)updateCameraNode:(id)node withSourceNode:(__CFXNode *)sourceNode;
- (void)updateEffectNode:(id)node withSourceNode:(__CFXNode *)sourceNode;
- (void)updateFieldNode:(id)node withSourceNode:(__CFXNode *)sourceNode;
- (void)updateLightNode:(id)node withSourceNode:(__CFXNode *)sourceNode;
- (void)updateLightTypeForNode:(id)node source:(__CFXNode *)source light:(__CFXLight *)light screenspaceScalingFactor:(float)factor;
- (void)updateWithRenderer:(id)renderer;
@end

@implementation VFXAuthoringEnvironment2

+ (id)authoringEnvironmentForWorld:(id)world createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v8 = objc_msgSend_authoringEnvironment2(world, a2, world);
  if (!v8 && neededCopy)
  {
    v9 = objc_msgSend_worldRef(world, v6, v7);
    if (v9)
    {
      v11 = v9;
      sub_1AF1CEA20(v9, v10);
      v8 = sub_1AF1D1084(v11, 1);
      sub_1AF1CEA9C(v11, v12);
      objc_msgSend_setAuthoringEnvironment2_(world, v13, v8);
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

- (VFXAuthoringEnvironment2)initWithWorld:(id)world
{
  v8.receiver = self;
  v8.super_class = VFXAuthoringEnvironment2;
  v4 = [(VFXAuthoringEnvironment2 *)&v8 init];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_prepareWorld_(v4, v5, world);
  }

  return v6;
}

- (void)dealloc
{
  lightsDictionary = self->_lightsDictionary;
  if (lightsDictionary)
  {
    CFRelease(lightsDictionary);
    self->_lightsDictionary = 0;
  }

  camerasDictionary = self->_camerasDictionary;
  if (camerasDictionary)
  {
    CFRelease(camerasDictionary);
    self->_camerasDictionary = 0;
  }

  effectsDictionary = self->_effectsDictionary;
  if (effectsDictionary)
  {
    CFRelease(effectsDictionary);
    self->_effectsDictionary = 0;
  }

  forceFieldsDictionary = self->_forceFieldsDictionary;
  if (forceFieldsDictionary)
  {
    CFRelease(forceFieldsDictionary);
    self->_forceFieldsDictionary = 0;
  }

  eyeSightDictionary = self->_eyeSightDictionary;
  if (eyeSightDictionary)
  {
    CFRelease(eyeSightDictionary);
    self->_eyeSightDictionary = 0;
  }

  v8.receiver = self;
  v8.super_class = VFXAuthoringEnvironment2;
  [(VFXAuthoringEnvironment2 *)&v8 dealloc];
}

- (void)prepareWorld:(id)world
{
  v243[1] = *MEMORY[0x1E69E9840];
  self->_world = objc_msgSend_worldRef(world, a2, world);
  self->_manipulator = objc_alloc_init(VFXManipulator);
  self->_selection = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = MEMORY[0x1E695E9D8];
  v5 = MEMORY[0x1E695E9E8];
  self->_lightsDictionary = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  self->_camerasDictionary = CFDictionaryCreateMutable(0, 0, v4, v5);
  self->_effectsDictionary = CFDictionaryCreateMutable(0, 0, v4, v5);
  self->_forceFieldsDictionary = CFDictionaryCreateMutable(0, 0, v4, v5);
  self->_layerRoot = objc_msgSend_node(VFXNode, v6, v7);
  self->_overlayLayerRoot = objc_msgSend_node(VFXNode, v8, v9);
  self->_lightRoot = objc_msgSend_node(VFXNode, v10, v11);
  self->_cameraRoot = objc_msgSend_node(VFXNode, v12, v13);
  self->_effectRoot = objc_msgSend_node(VFXNode, v14, v15);
  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  v236 = 0u;
  sub_1AF109498(&v236, 3, flt_1AFE204B0, COERCE_UNSIGNED_INT(1.0));
  v17 = sub_1AF10873C(&v236, v16);
  v19 = objc_msgSend_nodeWithModel_(VFXNode, v18, v17);
  self->_cameraTarget = v19;
  objc_msgSend_setHidden_(v19, v20, 1);
  if (v239)
  {
    *(&v239 + 1) = v239;
    operator delete(v239);
  }

  if (*(&v237 + 1))
  {
    *&v238 = *(&v237 + 1);
    operator delete(*(&v237 + 1));
  }

  if (v236)
  {
    *(&v236 + 1) = v236;
    operator delete(v236);
  }

  self->_forceFieldsRoot = objc_msgSend_node(VFXNode, v21, v22);
  self->_pointsOfViewRoot = objc_msgSend_node(VFXNode, v23, v24);
  v27 = objc_msgSend_node(VFXNode, v25, v26);
  self->_grid = v27;
  objc_msgSend_setHidden_(v27, v28, 1);
  objc_msgSend_setEulerAngles_(self->_grid, v29, v30);
  objc_msgSend_setRenderingOrder_(self->_grid, v31, 0x7FFFFFFFLL);
  LODWORD(v32) = 1148846080;
  LODWORD(v33) = 1148846080;
  v36 = objc_msgSend_planeWithWidth_height_(VFXParametricModel, v34, v35, v32, v33);
  Material = objc_msgSend_firstMaterial(v36, v37, v38);
  objc_msgSend_setShadingModel_(Material, v40, 2);
  v43 = objc_msgSend_firstMaterial(v36, v41, v42);
  objc_msgSend_setBlendMode_(v43, v44, 1);
  v47 = objc_msgSend_firstMaterial(v36, v45, v46);
  objc_msgSend_setDoubleSided_(v47, v48, 1);
  v51 = objc_msgSend_firstMaterial(v36, v49, v50);
  objc_msgSend_setWritesToDepthBuffer_(v51, v52, 0);
  v53 = sub_1AF28A7E4(@"CFX-Grid.metal");
  v242 = @"VFXShaderModifierEntryPointFragment";
  v243[0] = v53;
  v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v54, v243, &v242, 1);
  v58 = objc_msgSend_firstMaterial(v36, v56, v57);
  objc_msgSend_setShaderModifiers_(v58, v59, v55);
  v62 = objc_msgSend_firstMaterial(v36, v60, v61);
  v65 = objc_msgSend_valueWithVFXFloat4_(MEMORY[0x1E696B098], v63, v64, 0.000000495536934);
  objc_msgSend_setValue_forKey_(v62, v66, v65, @"colorU");
  v69 = objc_msgSend_firstMaterial(v36, v67, v68);
  v72 = objc_msgSend_valueWithVFXFloat4_(MEMORY[0x1E696B098], v70, v71, COERCE_DOUBLE(1065353216));
  objc_msgSend_setValue_forKey_(v69, v73, v72, @"colorV");
  objc_msgSend_setModel_(self->_grid, v74, v36);
  objc_msgSend_setName_(self->_layerRoot, v75, @"_layerRoot");
  objc_msgSend_setName_(self->_overlayLayerRoot, v76, @"_overlayLayerRoot");
  objc_msgSend_setName_(self->_lightRoot, v77, @"_lightRoot");
  objc_msgSend_setName_(self->_cameraRoot, v78, @"_cameraRoot");
  objc_msgSend_setName_(self->_effectRoot, v79, @"_effectRoot");
  objc_msgSend_setName_(self->_forceFieldsRoot, v80, @"_forceFieldRoot");
  objc_msgSend_setName_(self->_pointsOfViewRoot, v81, @"_pointsOfViewRoot");
  self->_paleGreen = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v82, &unk_1AFE203E0);
  self->_paleBlue = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v83, &unk_1AFE203F0);
  self->_red = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v84, &xmmword_1AFE20400);
  self->_green = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v85, &xmmword_1AFE20410);
  self->_blue = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v86, &xmmword_1AFE20420);
  self->_cyan = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v87, flt_1AFE20430);
  self->_yellow = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v88, &xmmword_1AFE20440);
  self->_orange = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v89, &unk_1AFE20450);
  self->_pink = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v90, &unk_1AFE20470);
  self->_grayLight = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v91, &unk_1AFE20480);
  self->_grayMedium = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v92, &unk_1AFE20490);
  self->_grayDark = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v93, &unk_1AFE204A0);
  self->_white = objc_msgSend_vfx_colorWithCFXColor_(MEMORY[0x1E69DC888], v94, flt_1AFE204B0);
  objc_msgSend_setIsAuthoring_(self->_layerRoot, v95, 1);
  objc_msgSend_setIsAuthoring_(self->_overlayLayerRoot, v96, 1);
  objc_msgSend_setIsAuthoring_(self->_lightRoot, v97, 1);
  objc_msgSend_setIsAuthoring_(self->_cameraRoot, v98, 1);
  objc_msgSend_setIsAuthoring_(self->_effectRoot, v99, 1);
  objc_msgSend_setIsAuthoring_(self->_forceFieldsRoot, v100, 1);
  objc_msgSend_setIsAuthoring_(self->_cameraTarget, v101, 1);
  objc_msgSend_setIsAuthoring_(self->_pointsOfViewRoot, v102, 1);
  objc_msgSend_setIsAuthoring_(self->_grid, v103, 1);
  objc_msgSend_setHidden_(self->_lightRoot, v104, 0);
  objc_msgSend_setHidden_(self->_cameraRoot, v105, 0);
  objc_msgSend_setHidden_(self->_effectRoot, v106, 0);
  objc_msgSend_setHidden_(self->_forceFieldsRoot, v107, 0);
  objc_msgSend_setRootNode_forLayer_(world, v108, self->_layerRoot, 1);
  objc_msgSend_setRootNode_forLayer_(world, v109, self->_overlayLayerRoot, 2);
  objc_msgSend_addChildNode_(self->_layerRoot, v110, self->_lightRoot);
  objc_msgSend_addChildNode_(self->_layerRoot, v111, self->_cameraRoot);
  objc_msgSend_addChildNode_(self->_layerRoot, v112, self->_effectRoot);
  objc_msgSend_addChildNode_(self->_layerRoot, v113, self->_forceFieldsRoot);
  objc_msgSend_addChildNode_(self->_layerRoot, v114, self->_cameraTarget);
  objc_msgSend_addChildNode_(self->_layerRoot, v115, self->_pointsOfViewRoot);
  objc_msgSend_addChildNode_(self->_layerRoot, v116, self->_grid);
  v224 = objc_msgSend_rootNode(world, v117, v118);
  objc_msgSend_begin(VFXTransaction, v119, v120);
  objc_msgSend_setAnimationDuration_(VFXTransaction, v121, v122, 0.0);
  v125 = objc_msgSend_worldRef(world, v123, v124);
  v235[0] = MEMORY[0x1E69E9820];
  v235[1] = 3221225472;
  v235[2] = sub_1AF104BF4;
  v235[3] = &unk_1E7A79700;
  v235[4] = self;
  v235[5] = v125;
  objc_msgSend_enumerateChildNodesUsingBlock_(v224, v126, v235);
  objc_msgSend_commit(VFXTransaction, v127, v128);
  v241 = objc_msgSend_rootNode(world, v129, v130);
  v132 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v131, &v241, 1);
  VFXNodeGetBoundingSphere(v132, 0x10000, v133);
  v233 = v134;
  objc_msgSend_localUp(VFXNode, v135, v136);
  v231 = v137;
  objc_msgSend_localRight(VFXNode, v138, v139);
  v230 = v140;
  objc_msgSend_localFront(VFXNode, v141, v142);
  v146 = 0;
  if (v233.f32[3] <= 0.0)
  {
    v147 = 1.0;
  }

  else
  {
    v147 = v233.f32[3] * 1.33;
  }

  v148 = vdupq_n_s32(0x447A0000u);
  *&v229 = vmlaq_f32(v233, v148, v145).u64[0];
  v149 = vdupq_n_s32(0xC47A0000);
  *&v228 = vmlaq_f32(v233, v149, v145).u64[0];
  *&v227 = vmlaq_f32(v233, v148, v230).u64[0];
  *&v226 = vmlaq_f32(v233, v149, v230).u64[0];
  *&v225 = vmlaq_f32(v233, v149, v231).u64[0];
  *&v234 = vmlaq_f32(v233, v148, v231).u64[0];
  do
  {
    v150 = objc_msgSend_camera(VFXCamera, v143, v144);
    v151 = off_1E7A79720[v146];
    v153 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v152, @"_authoringCamera%s", v151);
    objc_msgSend_setName_(v150, v154, v153);
    objc_msgSend_setUsesOrthographicProjection_(v150, v155, v146 != 0);
    objc_msgSend_setAutomaticallyAdjustsZRange_(v150, v156, 1);
    *&v157 = v147;
    objc_msgSend_setOrthographicScale_(v150, v158, v159, v157);
    v162 = objc_msgSend_node(VFXNode, v160, v161);
    objc_msgSend_setCamera_(v162, v163, v150);
    v165 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v164, v151);
    objc_msgSend_setName_(v162, v166, v165);
    objc_msgSend_setIsAuthoring_(v162, v167, 1);
    objc_msgSend_setAuthoringCameraType_(v162, v168, v146);
    if (v146 <= 2)
    {
      if (v146)
      {
        if (v146 == 1)
        {
          objc_msgSend_setEulerAngles_(v162, v169, v170, COERCE_DOUBLE(3217625051));
          objc_msgSend_setWorldPosition_(v162, v175, v176, v234);
        }

        else
        {
          objc_msgSend_setEulerAngles_(v162, v169, v170, COERCE_DOUBLE(1070141403));
          objc_msgSend_setWorldPosition_(v162, v193, v194, v225);
        }
      }

      else
      {
        v179 = objc_msgSend_camera(v162, v169, v170);
        LODWORD(v180) = 1036831949;
        objc_msgSend_setZNear_(v179, v181, v182, v180);
        world = self->_world;
        if (world && (sub_1AF1CEA20(world, v183), v185 = sub_1AF27E5F0(self->_world, 1), sub_1AF1CEA9C(self->_world, v186), v185))
        {
          v188 = objc_msgSend_nodeWithNodeRef_(VFXNode, v187, v185);
          objc_msgSend_transform(v188, v189, v190);
          objc_msgSend_setTransform_(v162, v191, v192);
          CFRelease(v185);
        }

        else
        {
          v199 = objc_opt_class();
          v201 = objc_msgSend_childNodesWithAttribute_recursively_(v224, v200, v199, 1);
          Object = objc_msgSend_firstObject(v201, v202, v203);
          if (Object)
          {
            objc_msgSend_transform(Object, v205, v206);
            objc_msgSend_setTransform_(v162, v207, v208);
          }

          else
          {
            objc_msgSend_setEulerAngles_(v162, v205, v206, 0.000707015742);
            objc_msgSend_setPosition_(v162, v209, v210, 0.11150004);
          }
        }
      }
    }

    else if (v146 > 4)
    {
      if (v146 == 5)
      {
        objc_msgSend_setEulerAngles_(v162, v169, v170, 0.0);
        objc_msgSend_setWorldPosition_(v162, v177, v178, v228);
      }

      else
      {
        objc_msgSend_setEulerAngles_(v162, v169, v170, -50.1238708);
        objc_msgSend_setWorldPosition_(v162, v197, v198, v229);
      }
    }

    else if (v146 == 3)
    {
      objc_msgSend_setEulerAngles_(v162, v169, v170, -0.195796371);
      objc_msgSend_setWorldPosition_(v162, v171, v172, v226);
    }

    else
    {
      objc_msgSend_setEulerAngles_(v162, v169, v170, 0.195796371);
      objc_msgSend_setWorldPosition_(v162, v195, v196, v227);
    }

    v211 = MEMORY[0x1E696B098];
    objc_msgSend_worldPosition(v162, v173, v174);
    v214 = objc_msgSend_valueWithVFXFloat3_(v211, v212, v213);
    objc_msgSend_setValue_forKey_(v162, v215, v214, @"defaultPosition");
    v216 = MEMORY[0x1E696B098];
    objc_msgSend_eulerAngles(v162, v217, v218);
    v221 = objc_msgSend_valueWithVFXFloat3_(v216, v219, v220);
    objc_msgSend_setValue_forKey_(v162, v222, v221, @"defaultEulerAngles");
    objc_msgSend_addChildNode_(self->_pointsOfViewRoot, v223, v162);
    ++v146;
  }

  while (v146 != 7);
}

- (unsigned)debugOptions
{
  v3 = objc_msgSend__engineContext(self->_renderer, a2, v2);
  if (v3)
  {

    LODWORD(v3) = sub_1AF12EE68(v3);
  }

  return v3;
}

- (id)modelForLightType:(unsigned __int8)type
{
  if (type == 4)
  {
    return 0;
  }

  lightModel = self->_lightModel;
  if (!lightModel)
  {
    *__p = 0u;
    v19 = 0u;
    *v16 = 0u;
    v17 = 0u;
    *v15 = 0u;
    sub_1AF109498(v15, 3, flt_1AFE204B0, COERCE_UNSIGNED_INT(0.5));
    self->_lightModel = sub_1AF10873C(v15, v6);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v16[1])
    {
      *&v17 = v16[1];
      operator delete(v16[1]);
    }

    if (v15[0])
    {
      v15[1] = v15[0];
      operator delete(v15[0]);
    }

    lightModel = self->_lightModel;
  }

  v7 = objc_msgSend_copy(lightModel, a2, type);
  Material = objc_msgSend_firstMaterial(self->_lightModel, v8, v9);
  v13 = objc_msgSend_copy(Material, v11, v12);
  objc_msgSend_setFirstMaterial_(v7, v14, v13);
  return v7;
}

- (void)addLightNode:(__CFXNode *)node
{
  v5 = CFDictionaryContainsKey(self->_lightsDictionary, node);
  if (v5)
  {
    v7 = sub_1AF0D5194(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDCFCB0();
    }
  }

  else
  {
    v8 = sub_1AF1B75E8(node, v6);
    v10 = sub_1AF19CBB4(v8, v9);
    v12 = objc_msgSend_modelForLightType_(self, v11, v10);
    v14 = objc_msgSend_nodeWithModel_(VFXNode, v13, v12);
    objc_msgSend_setName_(v14, v15, @"lightAuth");
    sub_1AF104E8C(v14, node);
    objc_msgSend_addChildNode_(self->_lightRoot, v16, v14);
    lightsDictionary = self->_lightsDictionary;

    CFDictionaryAddValue(lightsDictionary, node, v14);
  }
}

- (id)effectModel
{
  effectModel = self->_effectModel;
  if (!effectModel)
  {
    *__p = 0u;
    v25 = 0u;
    *v22 = 0u;
    v23 = 0u;
    *v21 = 0u;
    v16 = 0u;
    sub_1AF108E38(v21, &v16, flt_1AFE204B0, MEMORY[0x1E69E9B18], 0.1, 0.6);
    v16 = xmmword_1AFE20600;
    v17 = xmmword_1AFE20610;
    v18 = xmmword_1AFE20180;
    v15 = xmmword_1AFE201A0;
    v19 = xmmword_1AFE201A0;
    v20 = 0u;
    sub_1AF108E38(v21, &v20, flt_1AFE204B0, &v16, 0.1, 0.6);
    v16 = xmmword_1AFE20620;
    v17 = xmmword_1AFE20160;
    v18 = xmmword_1AFE20630;
    v19 = xmmword_1AFE201A0;
    v20 = 0u;
    sub_1AF108E38(v21, &v20, flt_1AFE204B0, &v16, 0.1, 0.6);
    self->_effectModel = sub_1AF10873C(v21, v5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v22[1])
    {
      *&v23 = v22[1];
      operator delete(v22[1]);
    }

    if (v21[0])
    {
      v21[1] = v21[0];
      operator delete(v21[0]);
    }

    effectModel = self->_effectModel;
  }

  v6 = objc_msgSend_copy(effectModel, a2, v2, v15);
  Material = objc_msgSend_firstMaterial(self->_effectModel, v7, v8);
  v12 = objc_msgSend_copy(Material, v10, v11);
  objc_msgSend_setFirstMaterial_(v6, v13, v12);
  return v6;
}

- (void)addEffectNode:(__CFXNode *)node
{
  v5 = CFDictionaryContainsKey(self->_effectsDictionary, node);
  if (v5)
  {
    v8 = sub_1AF0D5194(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDCFCE4();
    }
  }

  else
  {
    v9 = objc_msgSend_node(VFXNode, v6, v7);
    v12 = objc_msgSend_effectModel(self, v10, v11);
    v14 = objc_msgSend_nodeWithModel_(VFXNode, v13, v12);
    objc_msgSend_setName_(v14, v15, @"particlesAuth");
    sub_1AF104E8C(v14, node);
    objc_msgSend_setIsAuthoring_(v9, v16, 1);
    objc_msgSend_addChildNode_(v9, v17, v14);
    objc_msgSend_addChildNode_(self->_effectRoot, v18, v9);
    effectsDictionary = self->_effectsDictionary;

    CFDictionaryAddValue(effectsDictionary, node, v9);
  }
}

- (id)cameraModel
{
  result = self->_cameraModel;
  if (!result)
  {
    result = sub_1AF108AA0();
    self->_cameraModel = result;
  }

  return result;
}

- (id)cameraFrustumModel
{
  result = self->_cameraFrustumModel;
  if (!result)
  {
    result = sub_1AF109044();
    self->_cameraFrustumModel = result;
  }

  return result;
}

- (id)cameraOrthographicFrustumModel
{
  result = self->_cameraOrthographicFrustumModel;
  if (!result)
  {
    result = sub_1AF1091A4();
    self->_cameraOrthographicFrustumModel = result;
  }

  return result;
}

- (id)cameraNearPlaneModel
{
  result = self->_cameraNearPlaneModel;
  if (!result)
  {
    result = sub_1AF109250();
    self->_cameraNearPlaneModel = result;
  }

  return result;
}

- (id)cameraFocusPlaneModel
{
  result = self->_cameraFocusPlaneModel;
  if (!result)
  {
    result = sub_1AF10931C();
    self->_cameraFocusPlaneModel = result;
  }

  return result;
}

- (id)fieldModel
{
  result = self->_fieldModel;
  if (!result)
  {
    result = sub_1AF1093E8();
    self->_fieldModel = result;
  }

  return result;
}

- (void)addCameraNode:(__CFXNode *)node
{
  if (!CFDictionaryContainsKey(self->_camerasDictionary, node) && !sub_1AF1BC2B8(node))
  {
    v6 = sub_1AF1B955C(node, v5);
    if ((!v6 || objc_msgSend_compare_(v6, v7, @"kVFXFreeViewCameraName")) && (sub_1AF1BC2E4(node) & 1) == 0)
    {
      v10 = objc_msgSend_cameraModel(self, v8, v9);
      v12 = objc_msgSend_nodeWithModel_(VFXNode, v11, v10);
      objc_msgSend_setName_(v12, v13, @"cameraAuth");
      sub_1AF104E8C(v12, node);
      v15 = sub_1AF1BB260(node, v14);
      if (sub_1AF15D5F0(v15, v16))
      {
        v19 = objc_msgSend_cameraOrthographicFrustumModel(self, v17, v18);
      }

      else
      {
        v19 = objc_msgSend_cameraFrustumModel(self, v17, v18);
      }

      v21 = objc_msgSend_nodeWithModel_(VFXNode, v20, v19);
      objc_msgSend_setName_(v21, v22, @"cameraFrustumAuth");
      objc_msgSend_setIsAuthoring_(v21, v23, 1);
      objc_msgSend_setHittable_(v21, v24, 0);
      v27 = objc_msgSend_cameraNearPlaneModel(self, v25, v26);
      v29 = objc_msgSend_nodeWithModel_(VFXNode, v28, v27);
      objc_msgSend_setName_(v29, v30, @"cameraNearPlaneAuth");
      objc_msgSend_setIsAuthoring_(v29, v31, 1);
      objc_msgSend_setHittable_(v29, v32, 0);
      v35 = objc_msgSend_cameraFocusPlaneModel(self, v33, v34);
      v37 = objc_msgSend_nodeWithModel_(VFXNode, v36, v35);
      objc_msgSend_setName_(v37, v38, @"cameraFocusPlaneAuth");
      objc_msgSend_setIsAuthoring_(v37, v39, 1);
      objc_msgSend_setHittable_(v37, v40, 0);
      objc_msgSend_addChildNode_(self->_cameraRoot, v41, v12);
      objc_msgSend_addChildNode_(v12, v42, v21);
      objc_msgSend_addChildNode_(v21, v43, v29);
      objc_msgSend_addChildNode_(v21, v44, v37);
      camerasDictionary = self->_camerasDictionary;

      CFDictionaryAddValue(camerasDictionary, node, v12);
    }
  }
}

- (void)removeCameraNode:(__CFXNode *)node
{
  Value = CFDictionaryGetValue(self->_camerasDictionary, node);
  objc_msgSend_removeFromParentNode(Value, v6, v7);
  camerasDictionary = self->_camerasDictionary;

  CFDictionaryRemoveValue(camerasDictionary, node);
}

- (void)addForceFieldNode:(__CFXNode *)node
{
  v5 = CFDictionaryContainsKey(self->_forceFieldsDictionary, node);
  if (v5)
  {
    v8 = sub_1AF0D5194(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDCFD18();
    }
  }

  else
  {
    v9 = objc_msgSend_fieldModel(self, v6, v7);
    v11 = objc_msgSend_nodeWithModel_(VFXNode, v10, v9);
    objc_msgSend_setName_(v11, v12, @"fieldAuth");
    sub_1AF104E8C(v11, node);
    objc_msgSend_addChildNode_(self->_forceFieldsRoot, v13, v11);
    forceFieldsDictionary = self->_forceFieldsDictionary;

    CFDictionaryAddValue(forceFieldsDictionary, node, v11);
  }
}

- (void)addEyeSightFrameNode:(__CFXNode *)node
{
  eyeSightDictionary = self->_eyeSightDictionary;
  if (!eyeSightDictionary)
  {
    eyeSightDictionary = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    self->_eyeSightDictionary = eyeSightDictionary;
  }

  v6 = CFDictionaryContainsKey(eyeSightDictionary, node);
  if (v6)
  {
    v8 = sub_1AF0D5194(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDCFD4C();
    }
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    *v56 = 0u;
    sub_1AF108C08(&v61, v56, flt_1AFE204B0, xmmword_1AFE20640);
    *v59 = 0u;
    v60 = 0u;
    *v57 = 0u;
    v58 = 0u;
    *v56 = 0u;
    sub_1AF109998(v56, &xmmword_1AFE20420, 0.0);
    v10 = sub_1AF10873C(v56, v9);
    v12 = objc_msgSend_nodeWithModel_(VFXNode, v11, v10);
    objc_msgSend_setIsAuthoring_(v12, v13, 1);
    objc_msgSend_setHittable_(v12, v14, 0);
    *v54 = 0u;
    v55 = 0u;
    *v52 = 0u;
    v53 = 0u;
    *v51 = 0u;
    sub_1AF109998(v51, &xmmword_1AFE20440, -1.0);
    v16 = sub_1AF10873C(v51, v15);
    v18 = objc_msgSend_nodeWithModel_(VFXNode, v17, v16);
    objc_msgSend_setIsAuthoring_(v18, v19, 1);
    objc_msgSend_setHittable_(v18, v20, 0);
    *__p = 0u;
    v50 = 0u;
    *v47 = 0u;
    v48 = 0u;
    v45 = xmmword_1AFE20440;
    *v46 = 0u;
    HIDWORD(v45) = 1050253722;
    sub_1AF109998(v46, &v45, 1.0);
    v22 = sub_1AF10873C(v46, v21);
    v24 = objc_msgSend_nodeWithModel_(VFXNode, v23, v22);
    objc_msgSend_setIsAuthoring_(v24, v25, 1);
    objc_msgSend_setHittable_(v24, v26, 0);
    v29 = objc_msgSend_node(VFXNode, v27, v28);
    v32 = objc_msgSend_node(VFXNode, v30, v31);
    objc_msgSend_setName_(v29, v33, @"eyeSightFrame");
    objc_msgSend_setIsAuthoring_(v32, v34, 1);
    objc_msgSend_setHittable_(v32, v35, 0);
    objc_msgSend_setScale_(v32, v36, v37, *vdupq_n_s32(0x3DCCCCCDu).i64);
    objc_msgSend_setIsAuthoring_(v29, v38, 1);
    objc_msgSend_setHittable_(v29, v39, 0);
    objc_msgSend_addChildNode_(v32, v40, v12);
    objc_msgSend_addChildNode_(v32, v41, v18);
    objc_msgSend_addChildNode_(v32, v42, v24);
    objc_msgSend_addChildNode_(v29, v43, v32);
    sub_1AF104E8C(v29, node);
    objc_msgSend_addChildNode_(self->_layerRoot, v44, v29);
    CFDictionaryAddValue(self->_eyeSightDictionary, node, v29);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v47[1])
    {
      *&v48 = v47[1];
      operator delete(v47[1]);
    }

    if (v46[0])
    {
      v46[1] = v46[0];
      operator delete(v46[0]);
    }

    if (v54[0])
    {
      v54[1] = v54[0];
      operator delete(v54[0]);
    }

    if (v52[1])
    {
      *&v53 = v52[1];
      operator delete(v52[1]);
    }

    if (v51[0])
    {
      v51[1] = v51[0];
      operator delete(v51[0]);
    }

    if (v59[0])
    {
      v59[1] = v59[0];
      operator delete(v59[0]);
    }

    if (v57[1])
    {
      *&v58 = v57[1];
      operator delete(v57[1]);
    }

    if (v56[0])
    {
      v56[1] = v56[0];
      operator delete(v56[0]);
    }

    if (v64)
    {
      *(&v64 + 1) = v64;
      operator delete(v64);
    }

    if (*(&v62 + 1))
    {
      *&v63 = *(&v62 + 1);
      operator delete(*(&v62 + 1));
    }

    if (v61)
    {
      *(&v61 + 1) = v61;
      operator delete(v61);
    }
  }
}

- (void)removeForceFieldNode:(__CFXNode *)node
{
  Value = CFDictionaryGetValue(self->_forceFieldsDictionary, node);
  objc_msgSend_removeFromParentNode(Value, v6, v7);
  forceFieldsDictionary = self->_forceFieldsDictionary;

  CFDictionaryRemoveValue(forceFieldsDictionary, node);
}

- (void)removeLightNode:(__CFXNode *)node
{
  Value = CFDictionaryGetValue(self->_lightsDictionary, node);
  objc_msgSend_removeFromParentNode(Value, v6, v7);
  lightsDictionary = self->_lightsDictionary;

  CFDictionaryRemoveValue(lightsDictionary, node);
}

- (void)removeEffectNode:(__CFXNode *)node
{
  Value = CFDictionaryGetValue(self->_effectsDictionary, node);
  objc_msgSend_removeFromParentNode(Value, v6, v7);
  effectsDictionary = self->_effectsDictionary;

  CFDictionaryRemoveValue(effectsDictionary, node);
}

- (void)removeEyesightFrameNode:(__CFXNode *)node
{
  eyeSightDictionary = self->_eyeSightDictionary;
  if (eyeSightDictionary)
  {
    Value = CFDictionaryGetValue(eyeSightDictionary, node);
    objc_msgSend_removeFromParentNode(Value, v7, v8);
    v9 = self->_eyeSightDictionary;

    CFDictionaryRemoveValue(v9, node);
  }
}

- (void)addedNode:(__CFXNode *)node
{
  if (sub_1AF1BB0BC(node, a2))
  {
    objc_msgSend_addLightNode_(self, v5, node);
  }

  if (sub_1AF1B83E8(node, v5) || sub_1AF1BC05C(node, v6))
  {
    objc_msgSend_addEffectNode_(self, v6, node);
  }

  if (sub_1AF1BB2C8(node))
  {
    objc_msgSend_addCameraNode_(self, v7, node);
  }

  if (sub_1AF1BBE9C(node, v7))
  {
    objc_msgSend_addForceFieldNode_(self, v8, node);
  }

  if (sub_1AF1BB028(node))
  {

    MEMORY[0x1EEE66B58](self, sel_addEyeSightFrameNode_, node);
  }
}

- (void)removedNode:(__CFXNode *)node
{
  if (sub_1AF1BC2E4(node))
  {
    if (sub_1AF1BB0BC(node, v5))
    {
      objc_msgSend_removeLightNode_(self, v6, node);
    }

    if (sub_1AF1B83E8(node, v6) || sub_1AF1BC05C(node, v7))
    {
      objc_msgSend_removeEffectNode_(self, v7, node);
    }

    if (sub_1AF1BB2C8(node))
    {
      objc_msgSend_removeCameraNode_(self, v8, node);
    }

    if (sub_1AF1BBE9C(node, v8))
    {
      objc_msgSend_removeForceFieldNode_(self, v9, node);
    }

    if (sub_1AF1BB028(node))
    {
      objc_msgSend_removeEyesightFrameNode_(self, v10, node);
    }

    sub_1AF1BC2C4(node, 0);
  }
}

- (void)selectNodes:(id)nodes
{
  v22 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  objc_msgSend_removeAllObjects(self->_selection, v5, v6);
  if (nodes)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(nodes, v7, &v17, v21, 16);
    if (v10)
    {
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(nodes);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if ((objc_msgSend_isAuthoring(v13, v8, v9) & 1) == 0)
          {
            selection = self->_selection;
            v15 = objc_msgSend_nodeRef(v13, v8, v9);
            objc_msgSend_addObject_(selection, v16, v15);
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(nodes, v8, &v17, v21, 16);
      }

      while (v10);
    }
  }

  objc_sync_exit(self);
}

- (void)cancelSelection
{
  objc_sync_enter(self);
  objc_msgSend_removeAllObjects(self->_selection, v3, v4);

  objc_sync_exit(self);
}

- (void)_resetLightAuthoringWithContainerNode:(id)node source:(__CFXNode *)source light:(__CFXLight *)light
{
  objc_msgSend_removeAllChilds(node, a2, node);
  v9 = MEMORY[0x1E696AD98];
  v11 = sub_1AF19CBB4(light, v10);
  v13 = objc_msgSend_numberWithUnsignedChar_(v9, v12, v11);
  objc_msgSend_setValue_forKey_(node, v14, v13, @"VFXDebugLightTypeKey");
  objc_msgSend_setValue_forKey_(node, v15, 0, @"VFXDebugLightSubTypeKey");
  v17 = sub_1AF19CBB4(light, v16);
  if (!v17)
  {
    return;
  }

  if (v17 == 1)
  {
    *__p = 0u;
    v179 = 0u;
    *v176 = 0u;
    v177 = 0u;
    *v175 = 0u;
    sub_1AF109498(v175, 3, flt_1AFE204B0, COERCE_UNSIGNED_INT(1.0));
    v21 = sub_1AF10873C(v175, v20);
    v23 = objc_msgSend_nodeWithModel_(VFXNode, v22, v21);
    objc_msgSend_setName_(v23, v24, @"lightInnerAuth");
    objc_msgSend_setIsAuthoring_(v23, v25, 1);
    objc_msgSend_setHittable_(v23, v26, 0);
    objc_msgSend_addChildNode_(node, v27, v23);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v176[1])
    {
      *&v177 = v176[1];
      operator delete(v176[1]);
    }

    if (v175[0])
    {
      v175[1] = v175[0];
      operator delete(v175[0]);
    }

    *__p = 0u;
    v179 = 0u;
    *v176 = 0u;
    v177 = 0u;
    *v175 = 0u;
    sub_1AF109498(v175, 3, flt_1AFE204B0, COERCE_UNSIGNED_INT(1.0));
    v29 = sub_1AF10873C(v175, v28);
    v31 = objc_msgSend_nodeWithModel_(VFXNode, v30, v29);
    objc_msgSend_setName_(v31, v32, @"lightOuterAuth");
    objc_msgSend_setIsAuthoring_(v31, v33, 1);
    objc_msgSend_setHittable_(v31, v34, 0);
    objc_msgSend_addChildNode_(node, v35, v31);
LABEL_18:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v176[1])
    {
      *&v177 = v176[1];
      operator delete(v176[1]);
    }

    if (v175[0])
    {
      v175[1] = v175[0];
      operator delete(v175[0]);
    }

    return;
  }

  if ((v17 & 0xFFFFFFFB) == 2)
  {
    *__p = 0u;
    v179 = 0u;
    *v176 = 0u;
    v177 = 0u;
    *v175 = 0u;
    sub_1AF109F44(v175, &xmmword_1AFE20450);
    v37 = sub_1AF1088E8(v175, v36);
    v39 = objc_msgSend_nodeWithModel_(VFXNode, v38, v37);
    objc_msgSend_setName_(v39, v40, @"lightArrowAuth");
    objc_msgSend_setIsAuthoring_(v39, v41, 1);
    objc_msgSend_setEulerAngles_(v39, v42, v43, COERCE_DOUBLE(1078530011));
    __asm { FMOV            V0.4S, #10.0 }

    objc_msgSend_setScale_(v39, v49, v50, *&_Q0);
    objc_msgSend_setHittable_(v39, v51, 0);
    objc_msgSend_addChildNode_(node, v52, v39);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v176[1])
    {
      *&v177 = v176[1];
      operator delete(v176[1]);
    }

    if (v175[0])
    {
      v175[1] = v175[0];
      operator delete(v175[0]);
    }

    *__p = 0u;
    v179 = 0u;
    *v176 = 0u;
    v177 = 0u;
    *v175 = 0u;
    v172[0] = 0u;
    sub_1AF108C08(v175, v172, &xmmword_1AFE20450, xmmword_1AFE206B0);
    v54 = sub_1AF10873C(v175, v53);
    v56 = objc_msgSend_nodeWithModel_(VFXNode, v55, v54);
    objc_msgSend_setPivot_(v56, v57, v58, COERCE_DOUBLE(1065353216), unk_1AFE20730, 0.0, unk_1AFE20750);
    objc_msgSend_setName_(v56, v59, @"lightShadowAuth");
    objc_msgSend_setIsAuthoring_(v56, v60, 1);
    objc_msgSend_setHittable_(v56, v61, 0);
    objc_msgSend_addChildNode_(node, v62, v56);
    goto LABEL_18;
  }

  switch(v17)
  {
    case 5:
      v173 = 0u;
      memset(v172, 0, sizeof(v172));
      *&v107 = sub_1AF19D5A0(light, v18, v172).n128_u64[0];
      v109 = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v108, v172[0].u8[0], v107);
      objc_msgSend_setValue_forKey_(node, v110, v109, @"VFXDebugLightSubTypeKey");
      v112 = 0;
      if (v172[0].u8[0] <= 1u)
      {
        if (v172[0].i8[0])
        {
          if (v172[0].u8[0] != 1)
          {
            goto LABEL_72;
          }

          *__p = 0u;
          v179 = 0u;
          *v176 = 0u;
          v177 = 0u;
          *v175 = 0u;
          v170 = xmmword_1AFE20670;
          v171 = xmmword_1AFE20660;
          v168 = xmmword_1AFE20690;
          v169 = xmmword_1AFE20680;
          sub_1AF109C30(v175, &v171, &v170, &v169, &v168, &xmmword_1AFE20450);
          v119 = sub_1AF10873C(v175, v120);
        }

        else
        {
          *__p = 0u;
          v179 = 0u;
          *v176 = 0u;
          v177 = 0u;
          *v175 = 0u;
          v170 = xmmword_1AFE20150;
          v171 = xmmword_1AFE20650;
          sub_1AF109B84(v175, &v171, &v170, &xmmword_1AFE20450, &xmmword_1AFE20450);
          v119 = sub_1AF10873C(v175, v161);
        }
      }

      else
      {
        switch(v172[0].u8[0])
        {
          case 2u:
            *__p = 0u;
            v179 = 0u;
            *v176 = 0u;
            v177 = 0u;
            *v175 = 0u;
            sub_1AF109608(v175, &xmmword_1AFE20450, COERCE_UNSIGNED_INT(1.0));
            v119 = sub_1AF10873C(v175, v159);
            break;
          case 3u:
            *__p = 0u;
            v179 = 0u;
            *v176 = 0u;
            v177 = 0u;
            *v175 = 0u;
            sub_1AF109498(v175, 3, &xmmword_1AFE20450, COERCE_UNSIGNED_INT(1.0));
            v119 = sub_1AF10873C(v175, v160);
            break;
          case 4u:
            *__p = 0u;
            v179 = 0u;
            *v176 = 0u;
            v177 = 0u;
            *v175 = 0u;
            v113 = v173;
            if (v173)
            {
              v114 = 0;
              v115 = v173 - 1;
              do
              {
                if (v115 == v114)
                {
                  v116 = 0;
                }

                else
                {
                  v116 = v114 + 1;
                }

                *&v117 = -COERCE_FLOAT(*(*(&v173 + 1) + 8 * v114));
                HIDWORD(v117) = HIDWORD(*(*(&v173 + 1) + 8 * v114));
                HIDWORD(v118) = 0;
                *&v118 = -COERCE_FLOAT(*(*(&v173 + 1) + 8 * v116));
                *(&v118 + 4) = HIDWORD(*(*(&v173 + 1) + 8 * v116));
                v170 = v118;
                v171 = v117;
                sub_1AF109B84(v175, &v171, &v170, &xmmword_1AFE20450, &xmmword_1AFE20450);
                ++v114;
              }

              while (v113 != v114);
            }

            v119 = sub_1AF10873C(v175, v111);
            break;
          default:
LABEL_72:
            v162 = objc_msgSend_nodeWithModel_(VFXNode, v111, v112);
            objc_msgSend_setName_(v162, v163, @"lightAreaAuth");
            objc_msgSend_setIsAuthoring_(v162, v164, 1);
            v165 = sub_1AF16CDEC(source);
            objc_msgSend_setAuthoringTargetNode_(v162, v166, v165);
            objc_msgSend_addChildNode_(node, v167, v162);
            return;
        }
      }

      v112 = v119;
      sub_1AF104BA0(v175);
      goto LABEL_72;
    case 4:
      LODWORD(v68) = dword_1AFE206D0[sub_1AF19D968(light, v18) == 1];
      v71 = objc_msgSend_sphereWithRadius_(VFXParametricModel, v69, v70, v68);
      objc_msgSend_setName_(v71, v72, @"probeGeometry");
      *__p = 0u;
      v179 = 0u;
      *v176 = 0u;
      v177 = 0u;
      *v175 = 0u;
      v172[0] = 0u;
      __asm { FMOV            V0.4S, #1.0 }

      sub_1AF108C08(v175, v172, flt_1AFE204B0, _Q0);
      v75 = sub_1AF10873C(v175, v74);
      v77 = objc_msgSend_nodeWithModel_(VFXNode, v76, v75);
      objc_msgSend_setName_(v77, v78, @"lightInnerAuth");
      objc_msgSend_setIsAuthoring_(v77, v79, 1);
      objc_msgSend_setHittable_(v77, v80, 0);
      objc_msgSend_addChildNode_(node, v81, v77);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v176[1])
      {
        *&v177 = v176[1];
        operator delete(v176[1]);
      }

      if (v175[0])
      {
        v175[1] = v175[0];
        operator delete(v175[0]);
      }

      *__p = 0u;
      v179 = 0u;
      *v176 = 0u;
      v177 = 0u;
      *v175 = 0u;
      v172[0] = 0u;
      __asm { FMOV            V0.4S, #1.0 }

      sub_1AF108C08(v175, v172, flt_1AFE204B0, _Q0);
      v84 = sub_1AF10873C(v175, v83);
      v86 = objc_msgSend_nodeWithModel_(VFXNode, v85, v84);
      objc_msgSend_setName_(v86, v87, @"lightOuterAuth");
      objc_msgSend_setIsAuthoring_(v86, v88, 1);
      objc_msgSend_setHittable_(v86, v89, 0);
      objc_msgSend_addChildNode_(node, v90, v86);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v176[1])
      {
        *&v177 = v176[1];
        operator delete(v176[1]);
      }

      if (v175[0])
      {
        v175[1] = v175[0];
        operator delete(v175[0]);
      }

      if (sub_1AF19D968(light, v91))
      {
        *__p = 0u;
        v179 = 0u;
        *v176 = 0u;
        v177 = 0u;
        *v175 = 0u;
        v172[0] = 0u;
        __asm { FMOV            V0.4S, #1.0 }

        sub_1AF108C08(v175, v172, &xmmword_1AFE20400, _Q0);
        v95 = sub_1AF10873C(v175, v94);
        v97 = objc_msgSend_nodeWithModel_(VFXNode, v96, v95);
        objc_msgSend_setName_(v97, v98, @"lightProbeExtents");
        objc_msgSend_setIsAuthoring_(v97, v99, 1);
        objc_msgSend_setHittable_(v97, v100, 0);
        objc_msgSend_addChildNode_(node, v101, v97);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v176[1])
        {
          *&v177 = v176[1];
          operator delete(v176[1]);
        }

        if (v175[0])
        {
          v175[1] = v175[0];
          operator delete(v175[0]);
        }

        Material = objc_msgSend_firstMaterial(v71, v102, v103);
        objc_msgSend_setColorBufferWriteMask_(Material, v105, 0);
      }

      else
      {
        v121 = sub_1AF19D8B8(light, v92);
        white = self->_white;
        v125 = objc_msgSend_material(v71, v123, v124);
        v128 = objc_msgSend_diffuse(v125, v126, v127);
        objc_msgSend_setColor_(v128, v129, white);
        v132 = objc_msgSend_material(v71, v130, v131);
        objc_msgSend_setShadingModel_(v132, v133, 2);
        if (v121)
        {
          v135 = objc_msgSend_program(VFXProgram, v106, v134);
          v138 = objc_msgSend__renderContextMetal(self->_renderer, v136, v137);
          v141 = objc_msgSend_resourceManager(v138, v139, v140);
          v142 = sub_1AFDE868C(v141);
          v145 = objc_msgSend_frameworkLibrary(v142, v143, v144);
          objc_msgSend_setLibrary_(v135, v146, v145);
          objc_msgSend_setVertexFunctionName_(v135, v147, @"vfx_probesphere_from_sh_vertex");
          objc_msgSend_setFragmentFunctionName_(v135, v148, @"vfx_probesphere_from_sh_fragment");
          v174[0] = MEMORY[0x1E69E9820];
          v174[1] = 3221225472;
          v174[2] = sub_1AF106860;
          v174[3] = &unk_1E7A79758;
          v174[4] = light;
          objc_msgSend_handleBindingOfBufferNamed_frequency_usingBlock_(v135, v149, @"sh", 1, v174);
          v152 = objc_msgSend_material(v71, v150, v151);
          objc_msgSend_setProgram_(v152, v153, v135);
        }
      }

      v154 = objc_msgSend_nodeWithModel_(VFXNode, v106, v71);
      objc_msgSend_setName_(v154, v155, @"probe");
      sub_1AF104E8C(v154, source);
      objc_msgSend_setHittable_(v154, v156, 1);
      objc_msgSend_addChildNode_(node, v157, v154);
      *__p = 0u;
      v179 = 0u;
      *v176 = 0u;
      v177 = 0u;
      *v175 = 0u;
      sub_1AF109498(v175, 3, &xmmword_1AFE20490, COERCE_UNSIGNED_INT(1.0));
      sub_1AF10873C(v175, v158);
      goto LABEL_18;
    case 3:
      v63 = objc_msgSend_node(VFXNode, v18, v19);
      objc_msgSend_setName_(v63, v64, @"lightSpotAuth");
      objc_msgSend_setIsAuthoring_(v63, v65, 1);
      objc_msgSend_setHittable_(v63, v66, 0);

      objc_msgSend_addChildNode_(node, v67, v63);
      break;
  }
}

- (BOOL)_isPartOfSelection:(__CFXNode *)selection
{
  selectionCopy = selection;
  if (objc_msgSend_count(self->_selection, a2, selection))
  {
    v6 = selectionCopy == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  do
  {
    v7 = objc_msgSend_containsObject_(self->_selection, v5, selectionCopy);
    if (v7)
    {
      break;
    }

    selectionCopy = sub_1AF1B9A6C(selectionCopy, v8);
  }

  while (selectionCopy);
  return v7;
}

- (BOOL)_proximityHidden:(double)hidden
{
  v7 = objc_msgSend_pointOfView(*(self + 136), v5, v6, a2, hidden, a4);
  objc_msgSend_worldPosition(v7, v8, v9);
  v11 = vsubq_f32(v10, a5);
  v12 = vmulq_f32(v11, v11);
  return (v12.f32[2] + vaddv_f32(*v12.f32)) < 0.0001;
}

- (void)updateLightTypeForNode:(id)node source:(__CFXNode *)source light:(__CFXLight *)light screenspaceScalingFactor:(float)factor
{
  v11 = objc_msgSend_valueForKey_(node, a2, @"VFXDebugLightTypeKey");
  v14 = objc_msgSend_intValue(v11, v12, v13);
  v16 = objc_msgSend_valueForKey_(node, v15, @"VFXDebugLightSubTypeKey");
  v18 = objc_msgSend_valueForKey_(node, v17, @"disabled");
  v21 = objc_msgSend_BOOLValue(v18, v19, v20);
  isPartOfSelection = objc_msgSend__isPartOfSelection_(self, v22, source);
  v283 = isPartOfSelection ^ 1;
  v26 = sub_1AF1B7348(source, v23) & (isPartOfSelection ^ 1);
  v27 = v21 ^ v26;
  if (v27 == 1)
  {
    v28 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v24, v26);
    objc_msgSend_setValue_forKey_(node, v29, v28, @"disabled");
  }

  v30 = objc_msgSend_childNodes(node, v24, v25);
  if (objc_msgSend_count(v30, v31, v32))
  {
    v34 = sub_1AF19CBB4(light, v33) == 4 ? v27 : 1;
    if ((v34 & 1) == 0)
    {
      sourceCopy = source;
      selfCopy = self;
      v287 = sub_1AF19D8B8(light, v33);
      v36 = sub_1AF19B558(light, 0);
      v38 = objc_msgSend_childNodeWithName_recursively_(node, v37, @"probe", 1);
      v41 = objc_msgSend_model(v38, v39, v40);
      Material = objc_msgSend_firstMaterial(v41, v42, v43);
      v47 = Material;
      if (Material)
      {
        v48 = objc_msgSend_program(Material, v45, v46) != 0;
        v51 = objc_msgSend_reflective(v47, v49, v50);
        LODWORD(v47) = objc_msgSend_contents(v51, v52, v53) != 0;
      }

      else
      {
        v48 = 0;
      }

      if (sub_1AF19D968(light, v45))
      {
        v54 = v47 == (v36 != 0);
      }

      else if (light)
      {
        v54 = v48 == (v287 != 0);
      }

      else
      {
        v54 = 1;
      }

      LOBYTE(v27) = !v54;
      self = selfCopy;
      source = sourceCopy;
    }
  }

  if (sub_1AF19CBB4(light, v33) == 5)
  {
    *&v57 = sub_1AF19D5A0(light, v55, v296).n128_u64[0];
    v58 = LOBYTE(v296[0]);
    LOBYTE(v27) = (objc_msgSend_integerValue(v16, v59, v60, v57) != v58) | v27;
  }

  *&v56 = fmaxf(factor, 0.001);
  v291 = v56;
  if (sub_1AF19CBB4(light, v55) != v14 || (v27 & 1) != 0)
  {
    objc_msgSend__resetLightAuthoringWithContainerNode_source_light_(self, v61, node, source, light);
  }

  v62.i32[1] = HIDWORD(v291);
  *v62.i32 = 1.0 / *&v291;
  v288 = v62;
  if (sub_1AF19CBB4(light, v61) == 1)
  {
    v65 = objc_msgSend_childNodes(node, v63, v64);
    v67 = objc_msgSend_objectAtIndexedSubscript_(v65, v66, 0);
    objc_msgSend_setScale_(v67, v68, v69, 0.0);
    objc_msgSend_setHidden_(v67, v70, 1);
    v73 = objc_msgSend_childNodes(node, v71, v72);
    v75 = objc_msgSend_objectAtIndexedSubscript_(v73, v74, 1);
    *v79.i32 = *v288.i32 * sub_1AF19C1FC(light, v76);
    if (*v79.i32 < 0.0)
    {
      *v79.i32 = 0.0;
    }

    v289 = *&v79;
    objc_msgSend_setScale_(v75, v77, v78, *vdupq_lane_s32(v79, 0).i64);
    objc_msgSend_setHidden_(v75, v80, (*&v289 == 0.0) | (v283 & 1), v289);
    if (sub_1AF1B7348(source, v81))
    {
      v84 = 288;
      if (isPartOfSelection)
      {
        v84 = 272;
      }

      v85 = *(&self->super.isa + v84);
      v86 = objc_msgSend_model(node, v82, v83);
      v89 = objc_msgSend_firstMaterial(v86, v87, v88);
      v92 = objc_msgSend_diffuse(v89, v90, v91);
      objc_msgSend_setColor_(v92, v93, v85);
      v96 = objc_msgSend_model(v67, v94, v95);
      v99 = objc_msgSend_firstMaterial(v96, v97, v98);
      v102 = objc_msgSend_diffuse(v99, v100, v101);
      objc_msgSend_setColor_(v102, v103, v85);
    }

    else
    {
      v138 = 256;
      if (isPartOfSelection)
      {
        v138 = 272;
      }

      v139 = *(&self->super.isa + v138);
      if (isPartOfSelection)
      {
        v140 = 272;
      }

      else
      {
        v140 = 264;
      }

      v141 = objc_msgSend_model(node, v82, v83);
      v144 = objc_msgSend_firstMaterial(v141, v142, v143);
      v147 = objc_msgSend_diffuse(v144, v145, v146);
      objc_msgSend_setColor_(v147, v148, v139);
      v149 = *(&self->super.isa + v140);
      v152 = objc_msgSend_model(v67, v150, v151);
      v155 = objc_msgSend_firstMaterial(v152, v153, v154);
      v158 = objc_msgSend_diffuse(v155, v156, v157);
      objc_msgSend_setColor_(v158, v159, v149);
      v85 = *(&self->super.isa + v140);
    }

    v160 = objc_msgSend_model(v75, v104, v105);
LABEL_82:
    v211 = objc_msgSend_firstMaterial(v160, v161, v162);
    v214 = objc_msgSend_diffuse(v211, v212, v213);
    objc_msgSend_setColor_(v214, v215, v85);
    goto LABEL_83;
  }

  if (sub_1AF19CBB4(light, v63) == 3)
  {
    sourceCopy2 = source;
    v108 = fmin(sub_1AF19BFD8(light, v106) / 180.0 * 3.14159265, 3.13159265);
    v111 = sub_1AF19C9F0(light, v109) / 180.0 * 3.14159265;
    if (v111 >= v108)
    {
      v112 = v108;
    }

    else
    {
      v112 = v111;
    }

    v113 = sub_1AF19C1FC(light, v110);
    v116 = objc_msgSend_childNodes(node, v114, v115);
    v119 = objc_msgSend_objectAtIndexedSubscript_(v116, v117, 0);
    if (isPartOfSelection)
    {
      v120 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v118, @"oa:%f ia:%f e:%f scale:%f", v108, v112, v113, 1.0);
    }

    else
    {
      v120 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v118, @"oa:%f ia:%f e:%f scale:%f", v108, v112, v113, *&v291);
    }

    v122 = v120;
    v123 = objc_msgSend_valueForKey_(v119, v121, @"AuthEnvHash");
    if (!v123 || objc_msgSend_compare_(v122, v124, v123))
    {
      __p = 0u;
      v300 = 0u;
      *v297 = 0u;
      v298 = 0u;
      *v296 = 0u;
      v295 = 0uLL;
      v294 = xmmword_1AFE206C0;
      if ((isPartOfSelection & (v113 > 0.0)) == 0)
      {
        v113 = *&v291;
      }

      v127 = tanf(v108 * 0.5);
      sub_1AF109D00(v296, &v295, &v294, &xmmword_1AFE20490, v113, v113 * v127);
      if (v112 > 0.0)
      {
        v129 = tanf(v112 * 0.5);
        sub_1AF109D00(v296, &v295, &v294, &xmmword_1AFE20450, v113, v113 * v129);
      }

      v130 = sub_1AF10873C(v296, v128);
      objc_msgSend_setModel_(v119, v131, v130);
      objc_msgSend_setValue_forKey_(v119, v132, v122, @"AuthEnvHash");
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      if (v297[1])
      {
        *&v298 = v297[1];
        operator delete(v297[1]);
      }

      if (v296[0])
      {
        v296[1] = v296[0];
        operator delete(v296[0]);
      }
    }

    objc_msgSend_setScale_(v119, v125, v126, *vdupq_lane_s32(v288, 0).i64);
    if (sub_1AF1B7348(sourceCopy2, v133))
    {
      if (isPartOfSelection)
      {
        v136 = 272;
      }

      else
      {
        v136 = 288;
      }

      v137 = *(&self->super.isa + v136);
    }

    else
    {
      v184 = 256;
      if (isPartOfSelection)
      {
        v184 = 272;
      }

      v137 = *(&self->super.isa + v184);
      if (isPartOfSelection)
      {
        v136 = 272;
      }

      else
      {
        v136 = 304;
      }
    }

    v185 = objc_msgSend_model(node, v134, v135);
    v188 = objc_msgSend_firstMaterial(v185, v186, v187);
    v191 = objc_msgSend_diffuse(v188, v189, v190);
    objc_msgSend_setColor_(v191, v192, v137);
    v85 = *(&self->super.isa + v136);
    v160 = objc_msgSend_model(v119, v193, v194);
    goto LABEL_82;
  }

  if (sub_1AF19CBB4(light, v106) == 2 || sub_1AF19CBB4(light, v163) == 6)
  {
    sourceCopy3 = source;
    v166 = objc_msgSend_childNodes(node, v163, v164);
    v169 = objc_msgSend_count(v166, v167, v168);
    v172 = objc_msgSend_childNodes(node, v170, v171);
    v174 = objc_msgSend_objectAtIndexedSubscript_(v172, v173, 0);
    objc_msgSend_setHidden_(v174, v175, v26);
    v178 = objc_msgSend_childNodes(node, v176, v177);
    v180 = objc_msgSend_objectAtIndexedSubscript_(v178, v179, v169 - 1);
    if (sub_1AF19E90C(light, v181))
    {
      objc_msgSend_setHidden_(v180, v182, 1);
    }

    else
    {
      v195 = sub_1AF19B994(light, v182) ^ 1;
      objc_msgSend_setHidden_(v180, v196, v195);
    }

    if ((sub_1AF19E90C(light, v183) & 1) == 0)
    {
      sub_1AF19CC98(light, v197);
      objc_msgSend_setPosition_(v180, v198, v199, 0.0);
      v284 = sub_1AF19C56C(light, v200);
      v285 = COERCE_DOUBLE(vmul_n_f32(__PAIR64__(COERCE_UNSIGNED_INT(sub_1AF19C56C(light, v201)), LODWORD(v284)), *v288.i32));
      sub_1AF19CBFC(light, v201);
      sub_1AF19CC98(light, v202);
      objc_msgSend_setScale_(v180, v203, v204, v285);
    }

    v292[0] = MEMORY[0x1E69E9820];
    v292[1] = 3221225472;
    v292[2] = sub_1AF10737C;
    v292[3] = &unk_1E7A79780;
    v293 = isPartOfSelection;
    v292[4] = self;
    v292[5] = sourceCopy3;
    objc_msgSend_enumerateChildNodesUsingBlock_(node, v197, v292);
    v206 = sub_1AF1B7348(sourceCopy3, v205);
    v209 = isPartOfSelection == 0;
    if (v206)
    {
      v210 = 288;
    }

    else
    {
      v210 = 256;
    }

LABEL_79:
    if (!v209)
    {
      v210 = 272;
    }

    v85 = *(&self->super.isa + v210);
    v160 = objc_msgSend_model(node, v207, v208);
    goto LABEL_82;
  }

  if (sub_1AF19CBB4(light, v163) == 4)
  {
    v227 = 304;
    if (isPartOfSelection)
    {
      v227 = 272;
    }

    v228 = *(&self->super.isa + v227);
    v229 = objc_msgSend_model(node, v225, v226);
    v232 = objc_msgSend_firstMaterial(v229, v230, v231);
    v235 = objc_msgSend_diffuse(v232, v233, v234);
    objc_msgSend_setColor_(v235, v236, v228);
    hasDebugOption = objc_msgSend_hasDebugOption_(self, v237, 8);
    objc_msgSend_setHidden_(node, v239, hasDebugOption ^ 1u);
    v241 = objc_msgSend_childNodeWithName_recursively_(node, v240, @"lightInnerAuth", 0);
    objc_msgSend_setHidden_(v241, v242, v283);
    *v244.i32 = fmaxf(sub_1AF19CC98(light, v243), 0.0);
    objc_msgSend_setScale_(v241, v245, v246, *vdupq_lane_s32(v244, 0).i64);
    v248 = objc_msgSend_childNodeWithName_recursively_(node, v247, @"lightOuterAuth", 0);
    objc_msgSend_setHidden_(v248, v249, v283);
    *v251.i32 = fmaxf(sub_1AF19CBFC(light, v250), 0.0);
    objc_msgSend_setScale_(v248, v252, v253, *vdupq_lane_s32(v251, 0).i64);
    v255 = objc_msgSend_childNodeWithName_recursively_(node, v254, @"lightProbeExtents", 0);
    v257 = sub_1AF19DDEC(light, v256);
    v258.i64[0] = 0x3F0000003F000000;
    v258.i64[1] = 0x3F0000003F000000;
    objc_msgSend_setScale_(v255, v259, v260, *vmulq_f32(v257, v258).i64);
    v262 = objc_msgSend_childNodeWithName_recursively_(node, v261, @"probe", 0);
    *&v264 = sub_1AF19DEB0(light, v263).n128_u64[0];
    objc_msgSend_setPosition_(v262, v265, v266, v264);
    objc_msgSend_setHidden_(v255, v267, v283);
  }

  else if (sub_1AF19CBB4(light, v225) == 5)
  {
    *v297 = 0u;
    v298 = 0u;
    *v296 = 0u;
    *&v268 = sub_1AF19D5A0(light, v216, v296).n128_u64[0];
    v271 = objc_msgSend_childNodes(node, v269, v270, v268);
    v273 = objc_msgSend_objectAtIndexedSubscript_(v271, v272, 0);
    objc_msgSend_setScale_(v273, v274, v275, *vdupq_lane_s32(v288, 0).i64);
    objc_msgSend_scale(v273, v276, v277);
    objc_msgSend_setScale_(v273, v279, v280, *vmulq_f32(v278, *v297).i64);
    v282 = sub_1AF1B7348(source, v281);
    v210 = 256;
    if (v282)
    {
      v210 = 288;
    }

    v209 = isPartOfSelection == 0;
    goto LABEL_79;
  }

LABEL_83:
  if (light)
  {
    if (sub_1AF19CBB4(light, v216) != 4)
    {
      objc_msgSend_scale(node, v217, v218);
      objc_msgSend_setScale_(node, v220, v221, *vmulq_n_f32(v219, *&v291).i64);
      v223 = objc_msgSend_hasDebugOption_(self, v222, 4);
      objc_msgSend_setHidden_(node, v224, v223 ^ 1u);
    }
  }
}

- (void)updateLightNode:(id)node withSourceNode:(__CFXNode *)sourceNode
{
  v7 = sub_1AF1B75E8(sourceNode, a2);
  if (v7)
  {
    v9 = v7;
    v10 = sub_1AF1BA900(sourceNode, v8);
    v13 = objc_msgSend_pointOfView(self->_renderer, v11, v12);
    v16 = objc_msgSend_nodeRef(v13, v14, v15);
    v18 = 1;
    if (v10 || v16 == sourceNode)
    {
LABEL_11:

      objc_msgSend_setHidden_(node, v17, v18);
      return;
    }

    v19 = sub_1AF1B9B04(sourceNode, v17);
    v33 = v19[1];
    v34 = *v19;
    v31 = v19[3];
    v32 = v19[2];
    if (objc_msgSend__proximityHidden_(self, v20, v21))
    {
LABEL_5:
      v18 = 1;
      goto LABEL_11;
    }

    isPartOfSelection = objc_msgSend__isPartOfSelection_(self, v17, sourceNode);
    v24 = sub_1AF19CBB4(v9, v23);
    if ((isPartOfSelection & 1) == 0)
    {
      if (v24 == 4)
      {
        if (!objc_msgSend_hasDebugOption_(self, v17, 8))
        {
          goto LABEL_5;
        }
      }

      else if ((objc_msgSend_hasDebugOption_(self, v17, 4) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    objc_msgSend_setWorldTransform_(node, v17, v25, v34.n128_f64[0], v33.n128_f64[0], v32.n128_f64[0], v31.n128_f64[0]);
    v28 = objc_msgSend__engineContext(self->_renderer, v26, v27);
    LODWORD(v29) = 25.0;
    sub_1AF27F708(v28, v29, v34, v33, v32, v31);
    objc_msgSend_updateLightTypeForNode_source_light_screenspaceScalingFactor_(self, v30, node, sourceNode, v9);
    v18 = 0;
    goto LABEL_11;
  }

  objc_msgSend_removeLightNode_(self, v8, sourceNode);
}

- (void)updateEffectNode:(id)node withSourceNode:(__CFXNode *)sourceNode
{
  if (sub_1AF1BC054(sourceNode))
  {
    if (sub_1AF1B7348(sourceNode, v7) & 1) != 0 || (v9 = sub_1AF1B9B04(sourceNode, v8), v45 = v9[1], v46 = *v9, v43 = v9[3], v44 = v9[2], (objc_msgSend__proximityHidden_(self, v10, v11)) || (isPartOfSelection = objc_msgSend__isPartOfSelection_(self, v8, sourceNode), !objc_msgSend_hasDebugOption_(self, v13, 2048)))
    {
      v42 = 1;
    }

    else
    {
      objc_msgSend_setTransform_(node, v8, v14, v46.n128_f64[0], v45.n128_f64[0], v44.n128_f64[0], v43.n128_f64[0]);
      v17 = objc_msgSend__engineContext(self->_renderer, v15, v16);
      LODWORD(v18) = 25.0;
      sub_1AF27F708(v17, v18, v46, v45, v44, v43);
      v47 = v19;
      v22 = objc_msgSend_childNodes(node, v20, v21);
      v24 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, 0);
      isHidden = objc_msgSend_isHidden(v24, v25, v26);
      v30 = 256;
      if (isHidden)
      {
        v30 = 288;
      }

      if (isPartOfSelection)
      {
        v30 = 272;
      }

      v31 = *(&self->super.isa + v30);
      v32 = objc_msgSend_model(v24, v28, v29);
      Material = objc_msgSend_firstMaterial(v32, v33, v34);
      v38 = objc_msgSend_diffuse(Material, v36, v37);
      objc_msgSend_setColor_(v38, v39, v31);
      objc_msgSend_setScale_(v24, v40, v41, *vdupq_lane_s32(v47, 0).i64);
      v42 = 0;
    }

    objc_msgSend_setHidden_(node, v8, v42);
  }

  else
  {

    objc_msgSend_removeEffectNode_(self, v7, sourceNode);
  }
}

- (void)updateCameraNode:(id)node withSourceNode:(__CFXNode *)sourceNode
{
  v7 = sub_1AF1BB260(sourceNode, a2);
  if (v7)
  {
    v9 = v7;
    v10 = sub_1AF1BA900(sourceNode, v8);
    v13 = objc_msgSend_pointOfView(self->_renderer, v11, v12);
    v16 = objc_msgSend_nodeRef(v13, v14, v15);
    v18 = 1;
    if (!v10 && v16 != sourceNode)
    {
      isPartOfSelection = objc_msgSend__isPartOfSelection_(self, v17, sourceNode);
      if (isPartOfSelection & 1) == 0 && !objc_msgSend_hasDebugOption_(self, v19, 1024) || (v21 = sub_1AF1B9B04(sourceNode, v19), v135 = v21[1], v137 = *v21, __x = v21[3], v133 = v21[2], v24 = objc_msgSend__proximityHidden_(self, v22, v23), objc_msgSend_setTransform_(node, v25, v26, v137.n128_f64[0], v135.n128_f64[0], v133.n128_f64[0], __x.n128_f64[0]), (v24))
      {
        objc_msgSend_setHidden_(node, v19, 1);
        return;
      }

      v28 = objc_msgSend__engineContext(self->_renderer, v19, v27);
      LODWORD(v29) = 25.0;
      sub_1AF27F708(v28, v29, v137, v135, v133, __x);
      v138 = v30;
      objc_msgSend_setScale_(node, v31, v32, *vdupq_lane_s32(v30, 0).i64);
      v34 = sub_1AF15D724(v9, v33);
      v36 = sub_1AF15D6DC(v9, v35);
      v38 = sub_1AF15D9E8(v9, v37);
      v40 = sub_1AF15D5F0(v9, v39);
      v43 = objc_msgSend_childNodes(node, v41, v42);
      v47 = objc_msgSend_objectAtIndexedSubscript_(v43, v44, 0);
      if (v40)
      {
        v48 = objc_msgSend_cameraOrthographicFrustumModel(self, v45, v46);
        objc_msgSend_setModel_(v47, v49, v48);
        *&v51 = sub_1AF15D5A8(v9, v50) / *v138.i32;
        HIDWORD(v51) = LODWORD(v51);
        objc_msgSend_setScale_(v47, v52, v53, v51, __x.n128_u64[0]);
      }

      else
      {
        v57 = objc_msgSend_cameraFrustumModel(self, v45, v46);
        objc_msgSend_setModel_(v47, v58, v57);
        v140 = 0;
        v61 = objc_msgSend__engineContext(self->_renderer, v59, v60);
        v62 = sub_1AF130548(v61);
        __asm { FMOV            V1.2S, #1.0 }

        v62.n128_u64[0] = vmaxnm_f32(*&vextq_s8(v62, v62, 8uLL), _D1);
        sub_1AF15DDD0(v9, &v140 + 1, &v140, vdiv_f32(v62.n128_u64[0], vdup_lane_s32(v62.n128_u64[0], 1)).f32[0]);
        v56.i32[1] = v138.i32[1];
        if (*v138.i32 != 0.0)
        {
          __asm { FMOV            V1.2D, #0.5 }

          __xa = vmulq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_f32(__PAIR64__(v140, HIDWORD(v140))), _Q1), vdupq_n_s64(0x4066800000000000uLL)), vdupq_n_s64(0x400921FB54442D18uLL));
          v134 = tan(__xa.f64[1]);
          v68.f64[0] = tan(__xa.f64[0]);
          v68.f64[1] = v134;
          objc_msgSend_setScale_(v47, v69, v70, COERCE_DOUBLE(vdiv_f32(vcvt_f32_f64(vmulq_n_f64(v68, v36)), vdup_lane_s32(v138, 0))), *&__xa.f64[0]);
        }
      }

      *v56.i32 = v34 / v36;
      v136 = v56;
      *v56.i32 = v38 / v36;
      v139 = v56;
      v71 = objc_msgSend_childNodes(v47, v54, v55);
      v73 = objc_msgSend_objectAtIndexedSubscript_(v71, v72, 0);
      objc_msgSend_setScale_(v73, v74, v75, *vdupq_lane_s32(v136, 0).i64);
      v78 = objc_msgSend_childNodes(v47, v76, v77);
      v80 = objc_msgSend_objectAtIndexedSubscript_(v78, v79, 1);
      objc_msgSend_setScale_(v80, v81, v82, *vdupq_lane_s32(v139, 0).i64);
      objc_msgSend_setHidden_(v47, v83, isPartOfSelection ^ 1u);
      grayMedium = self->_grayMedium;
      v87 = objc_msgSend_model(node, v85, v86);
      Material = objc_msgSend_firstMaterial(v87, v88, v89);
      v93 = objc_msgSend_diffuse(Material, v91, v92);
      objc_msgSend_setColor_(v93, v94, grayMedium);
      _ZF = isPartOfSelection == 0;
      if (isPartOfSelection)
      {
        v98 = 272;
      }

      else
      {
        v98 = 216;
      }

      v99 = *(&self->super.isa + v98);
      if (_ZF)
      {
        v100 = 216;
      }

      else
      {
        v100 = 248;
      }

      v101 = objc_msgSend_model(v47, v95, v96);
      v104 = objc_msgSend_firstMaterial(v101, v102, v103);
      v107 = objc_msgSend_diffuse(v104, v105, v106);
      objc_msgSend_setColor_(v107, v108, v99);
      v109 = *(&self->super.isa + v98);
      v112 = objc_msgSend_model(v73, v110, v111);
      v115 = objc_msgSend_firstMaterial(v112, v113, v114);
      v118 = objc_msgSend_diffuse(v115, v116, v117);
      objc_msgSend_setColor_(v118, v119, v109);
      v120 = *(&self->super.isa + v100);
      v123 = objc_msgSend_model(v80, v121, v122);
      v126 = objc_msgSend_firstMaterial(v123, v124, v125);
      v129 = objc_msgSend_diffuse(v126, v127, v128);
      objc_msgSend_setColor_(v129, v130, v120);
      v18 = 0;
    }

    objc_msgSend_setHidden_(node, v17, v18);
  }

  else
  {

    objc_msgSend_removeCameraNode_(self, v8, sourceNode);
  }
}

- (void)updateFieldNode:(id)node withSourceNode:(__CFXNode *)sourceNode
{
  if (sub_1AF1BBE9C(sourceNode, a2))
  {
    if (sub_1AF1B7348(sourceNode, v7))
    {
      goto LABEL_4;
    }

    v9 = sub_1AF1B9B04(sourceNode, v8);
    v28 = v9[1];
    v29 = *v9;
    v26 = v9[3];
    v27 = v9[2];
    if (objc_msgSend__proximityHidden_(self, v10, v11))
    {
      goto LABEL_4;
    }

    if (objc_msgSend__isPartOfSelection_(self, v8, sourceNode))
    {
      v14 = 272;
    }

    else
    {
      if (!objc_msgSend_hasDebugOption_(self, v8, 16))
      {
LABEL_4:
        v12 = 1;
LABEL_5:

        objc_msgSend_setHidden_(node, v8, v12);
        return;
      }

      v14 = 216;
    }

    objc_msgSend_setTransform_(node, v8, v13, *&v29, *&v28, *&v27, *&v26);
    v15 = *(&self->super.isa + v14);
    v18 = objc_msgSend_model(node, v16, v17);
    Material = objc_msgSend_firstMaterial(v18, v19, v20);
    v24 = objc_msgSend_diffuse(Material, v22, v23);
    objc_msgSend_setColor_(v24, v25, v15);
    v12 = 0;
    goto LABEL_5;
  }

  objc_msgSend_removeForceFieldNode_(self, v7, sourceNode);
}

- (void)updateWithRenderer:(id)renderer
{
  objc_sync_enter(self);
  self->_renderer = renderer;
  v7 = objc_msgSend__engineContext(renderer, v5, v6);
  v9 = sub_1AF12E2AC(v7, v8);
  if (v9 && objc_msgSend_showsAuthoringEnvironment(v9, v10, v11))
  {
    CFDictionaryApplyFunction(self->_lightsDictionary, sub_1AF107E7C, self);
    CFDictionaryApplyFunction(self->_camerasDictionary, sub_1AF107E8C, self);
    CFDictionaryApplyFunction(self->_effectsDictionary, sub_1AF107E9C, self);
    CFDictionaryApplyFunction(self->_forceFieldsDictionary, sub_1AF107EAC, self);
    eyeSightDictionary = self->_eyeSightDictionary;
    if (eyeSightDictionary)
    {
      CFDictionaryApplyFunction(eyeSightDictionary, sub_1AF107EBC, self);
    }

    v15 = objc_msgSend_privateRendererOwner(renderer, v12, v13);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = objc_msgSend_defaultCameraController(v15, v16, v17);
      objc_msgSend_target(v18, v19, v20);
      objc_msgSend_setPosition_(self->_cameraTarget, v21, v22);
    }

    v23 = 1;
    objc_msgSend_setHidden_(self->_cameraTarget, v16, 1);
  }

  else
  {
    v23 = 0;
  }

  hasDebugOption = objc_msgSend_hasDebugOption_(self, v10, 0x80000);
  manipulator = self->_manipulator;
  if (hasDebugOption)
  {
    if (objc_msgSend_isDragging(manipulator, v24, v25))
    {
      objc_msgSend_updateTargetsTransforms(self->_manipulator, v28, v29);
    }

    objc_msgSend_updateManipulatorPosition_(self->_manipulator, v28, v7);
    v32 = objc_msgSend_privateRendererOwner(renderer, v30, v31);
    v35 = v32;
    if (v32 && objc_msgSend_pointOfView(v32, v33, v34))
    {
      v54 = 0;
      v55 = &v54;
      v56 = 0x2020000000;
      v37 = objc_msgSend_targets(self->_manipulator, v33, v36);
      v57 = objc_msgSend_count(v37, v38, v39) == 0;
      v42 = objc_msgSend_targets(self->_manipulator, v40, v41);
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = sub_1AF107EFC;
      v53[3] = &unk_1E7A797A8;
      v53[4] = v35;
      v53[5] = &v54;
      objc_msgSend_enumerateObjectsUsingBlock_(v42, v43, v53);
      v44 = *(v55 + 24);
      v47 = objc_msgSend_manipulatorNode(self->_manipulator, v45, v46);
      objc_msgSend_setHidden_(v47, v48, v44);
      _Block_object_dispose(&v54, 8);
    }

    else
    {
      objc_msgSend_setHidden_(self->_manipulator, v33, 1);
    }
  }

  else
  {
    objc_msgSend_setHidden_(manipulator, v24, 1);
  }

  if (v23 == objc_msgSend_isHidden(self->_layerRoot, v49, v50))
  {
    objc_msgSend_setHidden_(self->_layerRoot, v51, v23 ^ 1u);
    objc_msgSend_setHidden_(self->_overlayLayerRoot, v52, v23 ^ 1u);
  }

  self->_renderer = 0;
  objc_sync_exit(self);
}

- (void)didSetPointOfView:(id)view
{
  v5 = objc_msgSend_authoringCameraType(view, a2, view);
  isAuthoring = objc_msgSend_isAuthoring(view, v6, v7);
  v11 = 3217625051;
  v12 = &xmmword_1AFE20400;
  v13 = &xmmword_1AFE20420;
  if (!isAuthoring || v5 < 3)
  {
LABEL_7:
    objc_msgSend_setEulerAngles_(self->_grid, v9, v10, *&v11);
    goto LABEL_8;
  }

  if (v5 - 5 >= 2)
  {
    if (v5 - 3 > 1)
    {
      return;
    }

    v11 = 0xBFC90FDB00000000;
    v12 = &xmmword_1AFE20420;
    v13 = &xmmword_1AFE20410;
    goto LABEL_7;
  }

  v13 = &xmmword_1AFE20410;
  objc_msgSend_setEulerAngles_(self->_grid, v9, v10, 0.0);
LABEL_8:
  v16 = objc_msgSend_model(self->_grid, v14, v15);
  Material = objc_msgSend_firstMaterial(v16, v17, v18);
  v22 = objc_msgSend_valueWithVFXFloat4_(MEMORY[0x1E696B098], v20, v21, *v13);
  objc_msgSend_setValue_forKey_(Material, v23, v22, @"colorU");
  v26 = objc_msgSend_model(self->_grid, v24, v25);
  v29 = objc_msgSend_firstMaterial(v26, v27, v28);
  v33 = objc_msgSend_valueWithVFXFloat4_(MEMORY[0x1E696B098], v30, v31, *v12);

  objc_msgSend_setValue_forKey_(v29, v32, v33, @"colorV");
}

- (void)setAuthoringCamera:(int64_t)camera forView:(id)view
{
  v67[1] = *MEMORY[0x1E69E9840];
  if (objc_msgSend_world(view, a2, camera))
  {
    v9 = objc_msgSend_defaultCameraController(view, v7, v8);
    objc_msgSend_simdTarget(v9, v10, v11);
    v66 = v12;
    v15 = objc_msgSend_childNodes(self->_pointsOfViewRoot, v13, v14);
    v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, camera);
    v20 = objc_msgSend_world(view, v18, v19);
    v67[0] = objc_msgSend_rootNode(v20, v21, v22);
    v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v23, v67, 1);
    VFXNodeGetBoundingSphere(v24, 0x10000, v25);
    v64 = v26;
    v27 = v26.f32[3];
    v30 = objc_msgSend_camera(v17, v28, v29);
    objc_msgSend_zNear(v30, v31, v32);
    v33 = vsubq_f32(v66, v64);
    v34 = vmulq_f32(v33, v33);
    v36.f32[0] = v35 + (v27 + sqrtf(v34.f32[2] + vaddv_f32(*v34.f32)));
    v65 = v36;
    objc_msgSend_localUp(VFXNode, v37, v38);
    v62 = v39;
    objc_msgSend_localRight(VFXNode, v40, v41);
    v63 = v42;
    objc_msgSend_localFront(VFXNode, v43, v44);
    if (camera > 3)
    {
      switch(camera)
      {
        case 4:
          objc_msgSend_setEulerAngles_(v17, v45, v46, 0.195796371);
          break;
        case 5:
          v63 = v47;
          objc_msgSend_setEulerAngles_(v17, v45, v46, 0.0);
          goto LABEL_17;
        case 6:
          v63 = v47;
          objc_msgSend_setEulerAngles_(v17, v45, v46, -50.1238708);
          break;
        default:
LABEL_19:
          objc_msgSend_setPointOfView_(view, v45, v17);
          v60 = objc_msgSend_defaultCameraController(view, v58, v59);
          objc_msgSend_setPointOfView_(v60, v61, v17);
          return;
      }

      v53 = v65.f32[0];
      v52 = v66;
      v54 = v63;
    }

    else
    {
      if (camera != 1)
      {
        if (camera == 2)
        {
          objc_msgSend_setEulerAngles_(v17, v45, v46, COERCE_DOUBLE(1070141403));
          v56 = v65;
          v55 = v66;
          v57 = v62;
LABEL_18:
          objc_msgSend_setWorldPosition_(v17, v48, v49, *vmlsq_lane_f32(v55, v57, v56, 0).i64);
          goto LABEL_19;
        }

        if (camera == 3)
        {
          objc_msgSend_setEulerAngles_(v17, v45, v46, -0.195796371);
LABEL_17:
          v56 = v65;
          v55 = v66;
          v57 = v63;
          goto LABEL_18;
        }

        goto LABEL_19;
      }

      objc_msgSend_setEulerAngles_(v17, v45, v46, COERCE_DOUBLE(3217625051));
      v53 = v65.f32[0];
      v52 = v66;
      v54 = v62;
    }

    objc_msgSend_setWorldPosition_(v17, v50, v51, *vmlaq_n_f32(v52, v54, v53).i64);
    goto LABEL_19;
  }
}

- (id)authoringCamera:(int64_t)camera
{
  v4 = objc_msgSend_childNodes(self->_pointsOfViewRoot, a2, camera);

  return objc_msgSend_objectAtIndexedSubscript_(v4, v5, camera);
}

@end