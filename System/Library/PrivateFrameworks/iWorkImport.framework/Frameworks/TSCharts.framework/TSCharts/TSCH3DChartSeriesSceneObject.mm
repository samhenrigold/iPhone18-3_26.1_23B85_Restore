@interface TSCH3DChartSeriesSceneObject
+ (float)depthLimitFactorForSeriesCount:(int64_t)count maxLimitingSeries:(int64_t)series;
- (BOOL)shouldRenderSeries:(id)series;
- (float)chartMinZForScene:(id)scene;
- (float)depthForScene:(id)scene;
- (float)shadowCameraDepthLimitAdjustmentFactorForScene:(id)scene;
- (void)postrenderElement:(id)element;
- (void)prerenderElement:(id)element;
- (void)renderLabelsSceneObject:(id)object pipeline:(id)pipeline enumerator:(id)enumerator properties:(id)properties;
- (void)sortElements:(id *)elements pipeline:(id)pipeline;
- (void)updateElementEffectsStates:(id)states depthToWidthRatio:(float)ratio;
- (void)updateTilingEffect:(void *)effect properties:(id)properties textureTiling:(id)tiling size:(void *)size;
@end

@implementation TSCH3DChartSeriesSceneObject

- (void)renderLabelsSceneObject:(id)object pipeline:(id)pipeline enumerator:(id)enumerator properties:(id)properties
{
  objectCopy = object;
  pipelineCopy = pipeline;
  enumeratorCopy = enumerator;
  propertiesCopy = properties;
  v15 = objc_msgSend_seriesEnumerator(enumeratorCopy, v11, v12, v13, v14);
  if (enumeratorCopy)
  {
    objc_msgSend_size(enumeratorCopy, v16, v17, v18);
    v19 = (LODWORD(v170[0]) - 1);
  }

  else
  {
    v19 = -1.0;
  }

  v20 = objc_opt_class();
  objc_msgSend_chartSeriesDepth(v20, v21, v22, v23, v24);
  v26 = *&v25;
  v30 = objc_msgSend_scene(pipelineCopy, v27, v25, v28, v29);
  v148 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v31, v32, v33, v34, v30);

  v39 = objc_msgSend_scene(pipelineCopy, v35, v36, v37, v38);
  v145 = enumeratorCopy;
  v44 = objc_msgSend_delegateForSceneObject_(v39, v40, v41, v42, v43, objectCopy);

  v50 = objc_msgSend_labels(propertiesCopy, v45, v46, v47, v48);
  v152 = fmaxf(v19, 1.0);
  *v53.i32 = v26 * 0.5;
  v151 = v26 * 0.5;
  v54 = COERCE_DOUBLE(vdup_lane_s32(v53, 0));
  v150 = *&v54;
  v146 = v44;
  v147 = v15;
  while (1)
  {
    v55 = objc_msgSend_nextSeries(v15, v49, v54, v51, v52);
    v59 = v55;
    if (!v55)
    {
      break;
    }

    v60 = objc_msgSend_index(v55, v56, v57, v58);
    v64 = objc_msgSend_index(v59, v61, v62, v63);
    if ((objc_msgSend_willSubmitLabelType_boundsIndex_alignment_elementIndex_forSceneObject_(v44, v65, v66, v67, v68, 5, v60, 0, v64, objectCopy) & 1) == 0 && objc_msgSend_showValueLabels(v59, v69, v70, v71, v72))
    {
      memset(v171, 0, 48);
      memset(v170, 0, sizeof(v170));
      v76 = objc_msgSend_series(v59, v73, 0.0, v74, v75);
      objc_msgSend_position(v59, v77, v78, v79);
      objc_msgSend_applyCombinedTransform_series_index_propertyAccessor_(propertiesCopy, v80, v81, v82, v83, v170, v76, &v162, v148);

      v89 = objc_msgSend_elementEnumerator(v59, v84, v85, v86, v87);
      while (1)
      {
        v93 = objc_msgSend_nextElement(v89, v88, v90, v91, v92);
        v98 = v93;
        if (!v93)
        {
          break;
        }

        objc_msgSend_unitSpaceValue(v93, v94, v95, v96, v97);
        v100 = v99;
        objc_msgSend_axisSpaceValue(v98, v101, v99, v102, v103);
        *&v106 = v100;
        LODWORD(v107) = 1.0;
        v155 = *&v106;
        if (*&v106 >= 0.0 && *&v106 <= 1.0)
        {
          v109 = objc_msgSend_valueLabelPositionForAxisValue_(v59, v104, v105, v107, v106);
          v111 = v109;
          LODWORD(v112) = -8.0;
          HIDWORD(v113) = 0;
          if ((v109 & 8) == 0)
          {
            *&v112 = 0.0;
          }

          LODWORD(v113) = 8.0;
          if ((v109 & 4) != 0)
          {
            v114 = 8.0;
          }

          else
          {
            v114 = *&v112;
          }

          objc_msgSend_position(v98, v112, v113, v110);
          v154 = v114;
          v115 = v162.i32[0];
          sub_276169AD4(v170, &v162, v116);
          v117 = v162;
          v118 = v164;
          v119 = v166;
          v120 = v168;
          v121 = v163;
          v122 = v165;
          v123 = v167;
          v124 = v169;
          v129 = objc_msgSend_valueStringForLabelResources_(v98, v125, v126, v127, v128, v50);
          objc_msgSend_position(v98, v130, v131, v132);
          objc_msgSend_position(v98, v133, v134, v135);
          v136 = v115 / v152;
          v162 = vadd_f32(v120, vmla_f32(vmla_n_f32(vmul_n_f32(v118, v155), v117, v136), v150, v119));
          v163 = v124 + (((v122 * v155) + (v121 * v136)) + (v123 * v151));
          v158 = 0;
          v159 = 0;
          v157[0] = 0;
          *&v157[1] = v154;
          sub_27615613C(&v156);
          LODWORD(v144) = v111 | 2;
          v139 = objc_msgSend_infoWithPipeline_index_resourceIndex_renderString_position_offset_alignment_wrapWidth_offset2D_rotation_alignmentPadding_(TSCH3DChartLabelsContainingLabelRenderInfo, v137, 0.0, 0.0, v138, pipelineCopy, v161, v160, v129, &v162, &v158, v144, v157, &v156);
          objc_msgSend_renderLabelRenderInfo_(objectCopy, v140, v141, v142, v143, v139);
        }
      }

      sub_27616B32C(v171);
      sub_27616B32C(v170);
      v44 = v146;
      v15 = v147;
    }
  }
}

- (void)prerenderElement:(id)element
{
  v56 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  if ((objc_msgSend_geometryOnly(elementCopy, v4, v5, v6, v7) & 1) == 0)
  {
    v8 = objc_opt_class();
    objc_msgSend_chartSeriesPolygonOffset(v8, v9, v10, v11, v12);
    v17 = *&v14;
    if (*&v14 > 0.0)
    {
      v18 = objc_msgSend_pipeline(elementCopy, v13, v14, v15, v16);
      v24 = objc_msgSend_processor(v18, v19, v20, v21, v22);
      if (v24)
      {
        v28 = objc_msgSend_pipeline(elementCopy, v23, v25, v26, v27);
        v33 = objc_msgSend_processor(v28, v29, v30, v31, v32);
        v37 = v33;
        if (v33)
        {
          objc_msgSend_renderState(v33, v34, v35, v36);
        }

        else
        {
          v54 = 0u;
          v55 = 0u;
        }
      }

      else
      {
        *&v54 = 0;
        DWORD2(v54) = 16843008;
        BYTE12(v54) = 0;
        v55 = 0uLL;
      }

      BYTE12(v54) = 1;
      LODWORD(v55) = 1065353216;
      if (elementCopy)
      {
        objc_msgSend_index(elementCopy, v39, v40, v41);
        *&v42 = v53;
      }

      else
      {
        v42 = 0.0;
      }

      *&v42 = v17 * *&v42;
      DWORD1(v55) = LODWORD(v42);
      v43 = objc_msgSend_pipeline(elementCopy, v38, v42, v40, v41);
      v48 = objc_msgSend_processor(v43, v44, v45, v46, v47);
      objc_msgSend_setRenderState_(v48, v49, v50, v51, v52, &v54);
    }
  }
}

- (void)postrenderElement:(id)element
{
  v53 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  if ((objc_msgSend_geometryOnly(elementCopy, v4, v5, v6, v7) & 1) == 0)
  {
    v8 = objc_opt_class();
    objc_msgSend_chartSeriesPolygonOffset(v8, v9, v10, v11, v12);
    if (*&v14 > 0.0)
    {
      v17 = objc_msgSend_pipeline(elementCopy, v13, v14, v15, v16);
      v23 = objc_msgSend_processor(v17, v18, v19, v20, v21);
      if (v23)
      {
        v27 = objc_msgSend_pipeline(elementCopy, v22, v24, v25, v26);
        v32 = objc_msgSend_processor(v27, v28, v29, v30, v31);
        v36 = v32;
        if (v32)
        {
          objc_msgSend_renderState(v32, v33, v34, v35);
        }

        else
        {
          v51 = 0u;
          v52 = 0u;
        }
      }

      else
      {
        *&v51 = 0;
        DWORD2(v51) = 16843008;
        BYTE12(v51) = 0;
        v52 = 0uLL;
      }

      BYTE12(v51) = 0;
      v41 = objc_msgSend_pipeline(elementCopy, v37, v38, v39, v40);
      v46 = objc_msgSend_processor(v41, v42, v43, v44, v45);
      objc_msgSend_setRenderState_(v46, v47, v48, v49, v50, &v51);
    }
  }
}

- (void)updateTilingEffect:(void *)effect properties:(id)properties textureTiling:(id)tiling size:(void *)size
{
  propertiesCopy = properties;
  tilingCopy = tiling;
  v15 = tilingCopy;
  if (tilingCopy)
  {
    v16 = objc_msgSend_mode(tilingCopy, v10, v11, v13, v14);
    objc_msgSend_scale(v15, v17, v18, v19);
    LODWORD(v24) = 1.0;
    if (v16 == 1)
    {
      *&v24 = 2.0;
    }

    LODWORD(v23) = DWORD1(v36);
    *&v21 = *&v24 * *&v36;
    v25 = *&v24 * *(&v36 + 1);
    objc_msgSend_mode(v15, v20, v24, v21, v23, *&v21, v22);
  }

  else
  {
    LODWORD(v11) = 1.0;
    v25 = 1.0;
    objc_msgSend_mode(0, v10, v11, v13, v14, *&v11, v12);
  }

  v39 = 0uLL;
  v38 = 0uLL;
  v36 = xmmword_2764D6230;
  v37 = 0x3F00000041200000;
  sub_27615615C(&v36, 2, v35, 0.0000305175855);
  LODWORD(v26) = v33;
  *(&v26 + 1) = -v25;
  v34 = vdupq_lane_s64(v26, 0);
  sub_2761563D8(v35, &v36, &v34, &v39, &v38, 1, v34, *&v26, v27);
  v28.i64[0] = *(v38.i64 + 4);
  v29 = v38.i32[0];
  v30 = v38.i32[3];
  LODWORD(v31) = v39.i32[0];
  v32 = vdup_lane_s32(*v39.f32, 1).u32[0];
  *(effect + 5) = v39.i64[0];
  DWORD1(v31) = v39.i32[3];
  *(&v31 + 1) = __PAIR64__(v28.u32[0], v29);
  v28.i32[2] = v32;
  *(effect + 4) = v29;
  *(effect + 5) = v30;
  v28.i32[3] = v39.i32[2];
  *effect = vrev64q_s32(v28);
  *(effect + 24) = v31;
}

- (void)updateElementEffectsStates:(id)states depthToWidthRatio:(float)ratio
{
  statesCopy = states;
  v11 = objc_msgSend_properties(statesCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_series(statesCopy, v12, v13, v14, v15);
  v21 = objc_msgSend_renderingLightingModelForSeries_(v11, v17, v18, v19, v20, v16);

  if (!v21)
  {
    v26 = MEMORY[0x277D81150];
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v23, v24, v25, "[TSCH3DChartSeriesSceneObject updateElementEffectsStates:depthToWidthRatio:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSeriesSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 191, 0, "invalid nil value for '%{public}s'", "renderingLightingModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
  }

  v41 = objc_msgSend_lightingModel(v21, v22, v23, v24, v25);
  v46 = objc_msgSend_diffuseTextureTiling(v41, v42, v43, v44, v45);
  v73[0] = xmmword_2764D5F30;
  v73[1] = xmmword_2764D5F30;
  v73[2] = xmmword_2764D5F30;
  __asm { FMOV            V0.2S, #1.0 }

  v71 = _D0;
  ratioCopy = ratio;
  objc_msgSend_updateTilingEffect_properties_textureTiling_size_(self, v52, _D0, v53, v54, v73, v11, v46, &v71);
  v59 = objc_msgSend_processor(statesCopy, v55, v56, v57, v58);
  v64 = objc_msgSend_effectsStates(v59, v60, v61, v62, v63);
  v65 = objc_opt_class();
  v70 = objc_msgSend_stateSharingID(v65, v66, v67, v68, v69);
  sub_276181410(v64, v70, v73);
}

- (float)depthForScene:(id)scene
{
  sceneCopy = scene;
  v10 = objc_msgSend_elementPropertiesFromScene_(self, v5, v6, v7, v8, sceneCopy);
  if (!v10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCH3DChartSeriesSceneObject depthForScene:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSeriesSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 206, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  objc_msgSend_depthForScene_(v10, v9, v11, v12, v13, sceneCopy);
  v30 = v29;

  return v30;
}

+ (float)depthLimitFactorForSeriesCount:(int64_t)count maxLimitingSeries:(int64_t)series
{
  if (series <= 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v4, v5, v6, "+[TSCH3DChartSeriesSceneObject depthLimitFactorForSeriesCount:maxLimitingSeries:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSeriesSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 211, 0, "Max limiting series must be > 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (count <= series)
  {
    countCopy = series;
  }

  else
  {
    countCopy = count;
  }

  return series / countCopy;
}

- (float)chartMinZForScene:(id)scene
{
  sceneCopy = scene;
  v10 = objc_msgSend_elementPropertiesFromScene_(self, v5, v6, v7, v8, sceneCopy);
  if (!v10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCH3DChartSeriesSceneObject chartMinZForScene:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSeriesSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 218, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  objc_msgSend_chartMinZForScene_(v10, v9, v11, v12, v13, sceneCopy);
  v30 = v29;

  return v30;
}

- (BOOL)shouldRenderSeries:(id)series
{
  v6 = objc_msgSend_series(series, a2, v3, v4, v5);
  v11 = objc_msgSend_numberOfValues(v6, v7, v8, v9, v10) != 0;

  return v11;
}

- (float)shadowCameraDepthLimitAdjustmentFactorForScene:(id)scene
{
  v7 = objc_msgSend_elementPropertiesFromScene_(self, a2, v3, v4, v5, scene);
  if (!v7)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v8, v9, v10, "[TSCH3DChartSeriesSceneObject shadowCameraDepthLimitAdjustmentFactorForScene:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartSeriesSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v18, v19, v20, v21, v12, v17, 233, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24, v25);
  }

  objc_msgSend_shadowCameraDepthLimitAdjustmentFactor(v7, v6, v8, v9, v10);
  v27 = v26;

  return v27;
}

- (void)sortElements:(id *)elements pipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  v10 = objc_msgSend_scene(pipelineCopy, v6, v7, v8, v9);
  v15 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v11, v12, v13, v14, v10);

  if (v15)
  {
    objc_msgSend_rotation(v15, v16, v17, v18);
    v19 = v175;
  }

  else
  {
    v19 = 0.0;
  }

  if (v19 >= 0.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = -v19;
  }

  selfCopy = self;
  v173 = pipelineCopy;
  v26 = objc_msgSend_processor(v173, v21, v22, v23, v24);
  v170 = v15;
  if (!v26)
  {
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v27, v28, v29, "void TSCH3D::SortElements(TSCH3DChartElementSceneObject *__strong, SEL, NSMutableArray<TSCH3DRenderElementInfo *> *__autoreleasing *, TSCH3DSceneRenderPipeline *__strong, MakeSortData) [SortData = float, MakeSortData = (anonymous namespace)::MakeSortData]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, v33, v34, v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject_SortElements.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v37, v38, v39, v40, v31, v36, 28, 0, "invalid nil value for '%{public}s'", "processor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43, v44);
  }

  v45 = objc_msgSend_scene(v173, v25, v27, v28, v29);
  v174 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v46, v47, v48, v49, v45);

  v50 = *elements;
  v183 = 0;
  v184 = 0;
  v185 = 0;
  v55 = objc_msgSend_count(v50, v51, v52, v53, v54);
  sub_276182010(&v183, v55);
  for (i = 0; i < objc_msgSend_count(v50, v56, v57, v58, v59); ++i)
  {
    v65 = objc_msgSend_objectAtIndexedSubscript_(v50, v61, v62, v63, v64, i);
    objc_msgSend_pushMatrix(v26, v66, v67, v68, v69);
    v74 = objc_msgSend_properties(v65, v70, v71, v72, v73);
    v80 = objc_msgSend_series(v65, v75, v76, v77, v78);
    if (v65)
    {
      objc_msgSend_index(v65, v81, v82, v83);
    }

    else
    {
      *v176 = 0;
    }

    objc_msgSend_applyElementTransformToProcessor_series_index_propertyAccessor_(v74, v79, v81, v82, v83, v26, v80, v176, v174);

    *&v176[3] = 0;
    *&v176[1] = 0;
    v176[0] = 1065353216;
    v176[5] = 1065353216;
    v177 = 0;
    v178 = 0;
    v181 = 0;
    v180 = 0;
    v179 = 1065353216;
    v182 = 1065353216;
    objc_msgSend_copyTransformInto_(v26, v84, v85, v86, v87, v176);
    v88 = v65;
    v92 = v88;
    if (v65)
    {
      objc_msgSend_index(v88, v89, v90, v91);
      v93 = v186;
    }

    else
    {
      v93 = 0.0;
    }

    if (v20 <= 85.0)
    {
      v94 = -v93;
    }

    else
    {
      v94 = v93;
    }

    v99 = v184;
    if (v184 >= v185)
    {
      v101 = v183;
      v102 = v184 - v183;
      v103 = (v184 - v183) >> 4;
      v104 = v103 + 1;
      if ((v103 + 1) >> 60)
      {
        sub_276161760();
      }

      v105 = v185 - v183;
      if ((v185 - v183) >> 3 > v104)
      {
        v104 = v105 >> 3;
      }

      v106 = v105 >= 0x7FFFFFFFFFFFFFF0;
      v107 = 0xFFFFFFFFFFFFFFFLL;
      if (!v106)
      {
        v107 = v104;
      }

      if (v107)
      {
        sub_2761820B0(&v183, v107);
      }

      v108 = (v184 - v183) >> 4;
      v109 = 16 * v103;
      *v109 = v94;
      *(v109 + 8) = i;
      v100 = (16 * v103 + 16);
      v110 = (16 * v103 - 16 * v108);
      memcpy((v109 - 16 * v108), v101, v102);
      v111 = v183;
      v183 = v110;
      v184 = v100;
      v185 = 0;
      if (v111)
      {
        operator delete(v111);
      }
    }

    else
    {
      *v184 = v94;
      *(v99 + 1) = i;
      v100 = v99 + 4;
    }

    v184 = v100;
    objc_msgSend_popMatrix(v26, v95, v96, v97, v98);
  }

  v112 = 126 - 2 * __clz((v184 - v183) >> 4);
  if (v184 == v183)
  {
    v113 = 0;
  }

  else
  {
    v113 = v112;
  }

  sub_2761820F8(v183, v184, v176, v113, 1);
  v114 = MEMORY[0x277CBEB18];
  v119 = objc_msgSend_count(v50, v115, v116, v117, v118);
  v125 = objc_msgSend_arrayWithCapacity_(v114, v120, v121, v122, v123, v119);
  for (j = v183; j != v184; j += 4)
  {
    v130 = objc_msgSend_objectAtIndexedSubscript_(v50, v124, v126, v127, v128, *(j + 1));
    objc_msgSend_addObject_(v125, v131, v132, v133, v134, v130);
  }

  v135 = objc_msgSend_count(v50, v124, v126, v127, v128);
  if (v135 != objc_msgSend_count(v125, v136, v137, v138, v139))
  {
    v144 = MEMORY[0x277D81150];
    v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v140, v141, v142, v143, "void TSCH3D::SortElements(TSCH3DChartElementSceneObject *__strong, SEL, NSMutableArray<TSCH3DRenderElementInfo *> *__autoreleasing *, TSCH3DSceneRenderPipeline *__strong, MakeSortData) [SortData = float, MakeSortData = (anonymous namespace)::MakeSortData]");
    v150 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v146, v147, v148, v149, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject_SortElements.h");
    v155 = objc_msgSend_count(v50, v151, v152, v153, v154);
    v160 = objc_msgSend_count(v125, v156, v157, v158, v159);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v144, v161, v162, v163, v164, v145, v150, 59, 0, "size mismatch between elements and sorted %lu, %lu", v155, v160);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v165, v166, v167, v168);
  }

  v169 = v125;
  *elements = v125;

  if (v183)
  {
    v184 = v183;
    operator delete(v183);
  }
}

@end