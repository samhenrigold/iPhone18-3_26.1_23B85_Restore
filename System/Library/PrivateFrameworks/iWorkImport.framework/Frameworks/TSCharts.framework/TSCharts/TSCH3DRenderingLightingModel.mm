@interface TSCH3DRenderingLightingModel
+ (id)p_lightingModelFromFill:(id)fill lightings:(id)lightings returningTransparency:(BOOL *)transparency;
+ (id)renderingLightingModelWithFill:(id)fill lightings:(id)lightings;
+ (id)renderingLightingModelWithLightingModel:(id)model percentage:(id)percentage hasTransparency:(BOOL)transparency;
- (TSCH3DRenderingLightingModel)initWithLightingModel:(id)model percentage:(id)percentage hasTransparency:(BOOL)transparency;
- (void)affect:(id)affect states:(id)states scene:(id)scene texturePool:(id)pool;
@end

@implementation TSCH3DRenderingLightingModel

+ (id)p_lightingModelFromFill:(id)fill lightings:(id)lightings returningTransparency:(BOOL *)transparency
{
  fillCopy = fill;
  lightingsCopy = lightings;
  v13 = objc_msgSend_lightingModel(TSCH3DFixedFunctionLightingModel, v9, v10, v11, v12);
  v18 = objc_msgSend_materials(v13, v14, v15, v16, v17);
  v23 = objc_msgSend_diffuse(v18, v19, v20, v21, v22);
  if (transparency)
  {
    *transparency = 0;
  }

  objc_opt_class();
  v24 = TSUDynamicCast();
  v28 = v24;
  if (v24)
  {
    v29 = objc_msgSend_color(v24, v25, v26, v27);
    sub_27635A61C(v29, &v140);
    v138 = v140;

    *&v140 = 0;
    v144 = 0;
    v145 = 0;
    TSURGBToHSB();
    v142 = 0.0;
    v143 = 0.0;
    v141 = 0.0;
    TSUHSBToRGB();
    v30 = v143;
    v31 = v142;
    v32 = v141;
    v33 = *(&v138 + 3);
    goto LABEL_14;
  }

  objc_opt_class();
  v34 = TSUDynamicCast();
  v39 = v34;
  if (!v34)
  {
    objc_opt_class();
    v139 = TSUDynamicCast();
    if (v139)
    {
      v45 = MEMORY[0x277D81150];
      v135 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "+[TSCH3DRenderingLightingModel p_lightingModelFromFill:lightings:returningTransparency:]");
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRenderingLightingModel.mm");
      v51 = v45;
      v52 = v135;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v53, v54, v55, v56, v135, v50, 78, 0, "TSCH3DFill is handled separately %@", v139);
    }

    else
    {
      if (!objc_msgSend_isNullFill_(TSCHStyleUtilities, v41, v42, v43, v44, fillCopy))
      {
        v137 = objc_msgSend_textureWithTSDFill_(TSCH3DTSDFillTexture, v57, v58, v59, v60, fillCopy);
        v117 = objc_msgSend_tiling(TSCH3DImageTextureTiling, v113, v114, v115, v116);
        objc_opt_class();
        v118 = TSUDynamicCast();
        v123 = v118;
        if (v118)
        {
          v124 = objc_msgSend_technique(v118, v119, v120, v121, v122) == 2;
          objc_msgSend_setMode_(v117, v125, v126, v127, v128, v124);
          if (v117)
          {
            objc_msgSend_scale(v117, v130, v131, v132);
            LODWORD(v134) = HIDWORD(v145);
            LODWORD(v133) = v145;
          }

          else
          {
            v145 = 0;
            v133 = 0.0;
            v134 = 0.0;
          }

          *&v134 = -*&v134;
          HIDWORD(v145) = LODWORD(v134);
          *&v140 = __PAIR64__(LODWORD(v134), LODWORD(v133));
          objc_msgSend_setScale_(v117, v129, v133, v134, v132, &v140);
          if (transparency)
          {
            *&v140 = objc_opt_class();
            BYTE8(v140) = 0;
            *transparency = sub_27635A6DC(&v140, v123);
          }
        }

        objc_msgSend_addTexture_tiling_(v23, v119, v120, v121, v122, v137, v117);

        goto LABEL_12;
      }

      v61 = MEMORY[0x277D81150];
      v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "+[TSCH3DRenderingLightingModel p_lightingModelFromFill:lightings:returningTransparency:]");
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v63, v64, v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRenderingLightingModel.mm");
      v66 = v61;
      v52 = v136;
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v67, v68, v69, v70, v136, v50, 80, 0, "Null fill is handled separately %@", 0);
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
LABEL_12:

    __asm { FMOV            V0.4S, #1.0 }

    v138 = _Q0;
    v30 = 1.0;
    goto LABEL_13;
  }

  v40 = objc_msgSend_firstColor(v34, v35, v36, v37, v38);
  sub_27635A61C(v40, &v140);
  v138 = v140;

  v30 = 0.0;
LABEL_13:

  v33 = 1.0;
  v31 = v30;
  v32 = v30;
LABEL_14:

  if (transparency)
  {
    LODWORD(v81) = HIDWORD(v138);
    LODWORD(v82) = 1065353214;
    *transparency |= *(&v138 + 3) < 1.0;
  }

  v140 = v138;
  objc_msgSend_setColor_(v23, v80, v81, v82, *&v138, &v140);
  v87 = objc_msgSend_emissive(v18, v83, v84, v85, v86);
  v140 = xmmword_2764D5F20;
  objc_msgSend_setColor_(v87, v88, 0.0, v89, v90, &v140);

  v95 = objc_msgSend_specular(v18, v91, v92, v93, v94);
  *&v140 = __PAIR64__(LODWORD(v31), LODWORD(v30));
  *(&v140 + 1) = __PAIR64__(LODWORD(v33), LODWORD(v32));
  objc_msgSend_setColor_(v95, v96, v97, v98, v99, &v140);

  v104 = objc_msgSend_shininess(v18, v100, v101, v102, v103);
  v140 = xmmword_2764D64B0;
  objc_msgSend_setColor_(v104, v105, 0.0000000134110482, v106, v107, &v140);

  objc_msgSend_setLightings_(v13, v108, v109, v110, v111, lightingsCopy);

  return v13;
}

+ (id)renderingLightingModelWithFill:(id)fill lightings:(id)lightings
{
  fillCopy = fill;
  lightingsCopy = lightings;
  if (objc_msgSend_hasNoFill_(TSCHStyleUtilities, v8, v9, v10, v11, fillCopy))
  {
    v12 = 0;
  }

  else
  {
    objc_opt_class();
    v13 = TSUDynamicCast();
    v18 = v13;
    if (v13)
    {
      v19 = objc_msgSend_renderingLightingModelWithLightings_(v13, v14, v15, v16, v17, lightingsCopy);
    }

    else
    {
      v25 = 0;
      v18 = objc_msgSend_p_lightingModelFromFill_lightings_returningTransparency_(self, v14, v15, v16, v17, fillCopy, lightingsCopy, &v25);
      v19 = objc_msgSend_renderingLightingModelWithLightingModel_percentage_hasTransparency_(self, v20, v21, v22, v23, v18, 0, v25);
    }

    v12 = v19;
  }

  return v12;
}

+ (id)renderingLightingModelWithLightingModel:(id)model percentage:(id)percentage hasTransparency:(BOOL)transparency
{
  transparencyCopy = transparency;
  modelCopy = model;
  percentageCopy = percentage;
  v10 = [self alloc];
  hasTransparency = objc_msgSend_initWithLightingModel_percentage_hasTransparency_(v10, v11, v12, v13, v14, modelCopy, percentageCopy, transparencyCopy);

  return hasTransparency;
}

- (TSCH3DRenderingLightingModel)initWithLightingModel:(id)model percentage:(id)percentage hasTransparency:(BOOL)transparency
{
  modelCopy = model;
  percentageCopy = percentage;
  v14.receiver = self;
  v14.super_class = TSCH3DRenderingLightingModel;
  v11 = [(TSCH3DRenderingLightingModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_lightingModel, model);
    objc_storeStrong(&v12->_percentage, percentage);
    v12->_hasTransparency = transparency;
  }

  return v12;
}

- (void)affect:(id)affect states:(id)states scene:(id)scene texturePool:(id)pool
{
  affectCopy = affect;
  statesCopy = states;
  sceneCopy = scene;
  poolCopy = pool;
  v17 = affectCopy;
  v18 = poolCopy;
  lightingModel = self->_lightingModel;
  if (!lightingModel)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCH3DRenderingLightingModel affect:states:scene:texturePool:]");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DRenderingLightingModel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v27, v28, v29, v30, v21, v26, 141, 0, "invalid nil value for '%{public}s'", "_lightingModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33, v34);
    lightingModel = self->_lightingModel;
    v17 = affectCopy;
  }

  objc_msgSend_affect_states_scene_texturePool_percentage_(lightingModel, v13, v14, v15, v16, v17, statesCopy, sceneCopy, v18, self->_percentage);
}

@end