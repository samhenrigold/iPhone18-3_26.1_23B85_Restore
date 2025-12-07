@interface TSCH3DChartAbstractBarSceneObject
+ (void)setLowDetailedGeometriesForScene:(id)scene;
- (float)chartMinZForScene:(id)scene;
- (float)depthForScene:(id)scene;
- (tvec2<float>)p_valueLabelPaddingForLabelPosition:(unsigned int)position;
- (tvec3<float>)adjustedScaleForInfoChartScale:(void *)scale scene:(id)scene;
- (tvec3<float>)sortingPositionForElement:(id)element;
- (void)renderLabelsSceneObject:(id)object pipeline:(id)pipeline enumerator:(id)enumerator properties:(id)properties;
- (void)renderSeriesLabelsSceneObject:(id)object pipeline:(id)pipeline;
- (void)renderSeriesLabelsSceneObject:(id)object pipeline:(id)pipeline enumerator:(id)enumerator properties:(id)properties;
- (void)sortElements:(id *)elements pipeline:(id)pipeline;
- (void)updateElementEffectsStates:(id)states depthToWidthRatio:(float)ratio;
- (void)updateTilingEffect:(void *)effect series:(id)series properties:(id)properties textureTiling:(id)tiling areaSize:(void *)size element:(void *)element;
@end

@implementation TSCH3DChartAbstractBarSceneObject

+ (void)setLowDetailedGeometriesForScene:(id)scene
{
  sceneCopy = scene;
  v9 = objc_msgSend_scenePropertiesKey(self, v5, v6, v7, v8);
  v14 = objc_msgSend_mutablePropertiesForType_(sceneCopy, v10, v11, v12, v13, v9);

  if (!v14)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "+[TSCH3DChartAbstractBarSceneObject setLowDetailedGeometriesForScene:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAbstractBarSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v27, v28, v29, v20, v25, 78, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32, v33);
  }

  v34 = objc_msgSend_extrusionDetailsForShape_(v14, v15, v16, v17, v18, 0);
  v36 = *(v34 + 16);
  v35 = *(v34 + 32);
  v37 = *(v34 + 48);
  v40 = *v34;
  v38 = *&v40;
  v41 = v36;
  v43 = v37;
  v42 = v35;
  LODWORD(v40) = 1056964608;
  DWORD2(v40) = 1048576000;
  LODWORD(v41) = 2;
  objc_msgSend_setExtrusionDetails_forShape_(v14, v39, *&v35, *&v36, v38, &v40, 0);
}

- (void)renderSeriesLabelsSceneObject:(id)object pipeline:(id)pipeline enumerator:(id)enumerator properties:(id)properties
{
  objectCopy = object;
  pipelineCopy = pipeline;
  enumeratorCopy = enumerator;
  propertiesCopy = properties;
  v134 = pipelineCopy;
  v14 = objc_msgSend_scene(pipelineCopy, v10, v11, v12, v13);
  v19 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v15, v16, v17, v18, v14);

  v24 = objc_msgSend_scene(pipelineCopy, v20, v21, v22, v23);
  v131 = objc_msgSend_delegateForSceneObject_(v24, v25, v26, v27, v28, objectCopy);

  v132 = objc_msgSend_seriesEnumerator(enumeratorCopy, v29, v30, v31, v32);
  v37 = objc_msgSend_skipZeroValues(enumeratorCopy, v33, v34, v35, v36);
  v42 = objc_msgSend_info(enumeratorCopy, v38, v39, v40, v41);
  v47 = objc_msgSend_chartType(v42, v43, v44, v45, v46);
  isHorizontal = objc_msgSend_isHorizontal(v47, v48, v49, v50, v51);

  if (isHorizontal)
  {
    v57 = 32;
  }

  else
  {
    v57 = 4;
  }

  v133 = v57;
  v58 = objc_msgSend_info(enumeratorCopy, v53, v54, v55, v56);
  v130 = objc_msgSend_model(v58, v59, v60, v61, v62);

  v66 = 0.00781250185;
  while (1)
  {
    v67 = objc_msgSend_nextSeries(v132, v63, v66, v64, v65);
    v71 = v67;
    if (!v67)
    {
      break;
    }

    objc_msgSend_position(v67, v68, v69, v70);
    v72 = v158.i32[1];
    v76 = objc_msgSend_index(v71, v73, v74, v75);
    v80 = objc_msgSend_index(v71, v77, v78, v79);
    if ((objc_msgSend_willSubmitLabelType_boundsIndex_alignment_elementIndex_forSceneObject_(v131, v81, v82, v83, v84, 6, v76, 0, v80, objectCopy) & 1) == 0)
    {
      v89 = objc_msgSend_nameForSeries_(v130, v85, v86, v87, v88, v72);
      v95 = objc_msgSend_elementEnumerator(v71, v90, v91, v92, v93);
      while (1)
      {
        v99 = objc_msgSend_nextElement(v95, v94, v96, v97, v98);
        v104 = v99;
        if (!v99)
        {
          break;
        }

        objc_msgSend_axisSpaceValue(v99, v100, v101, v102, v103);
        if (((v105 == 0.0) & v37) == 0)
        {
          objc_msgSend_position(v104, v105, v106, v107);
          v160 = 0u;
          memset(v161, 0, sizeof(v161));
          v158 = 0u;
          v159 = 0u;
          v111 = objc_msgSend_series(v71, v108, 0.0, v109, v110);
          v116 = objc_msgSend_applyCombinedTransform_series_index_propertyAccessor_(propertiesCopy, v112, v113, v114, v115, &v158, v111, v162, v19);

          if ((v116 | v37 ^ 1))
          {
            v117 = *(v158.i64[1] + 8 * (v160 / 0x49));
            v152 = 0;
            v154 = xmmword_2764D60D0;
            v155 = 0;
            v153 = 0;
            v156 = 1065353216;
            memset(v157, 0, sizeof(v157));
            *(&v152 + 1) = -*(v117 + 56 * (v160 % 0x49) + 4);
            v153 = 0;
            v157[12] = 1;
            sub_27616AC4C(&v158, &v152);
            sub_276169AD4(&v158, &v144, v118);
            sub_2761EECB8(&v141, v119, v120);
            v140[0] = 0;
            v140[1] = v72;
            v139[0] = 0;
            v139[1] = v72;
            v144 = vadd_f32(v150, vmla_n_f32(vmla_f32(vmul_f32(v146, 0), 0x3F0000003F000000, v144), v148, v143));
            v145 = v151 + (((v147 * 0.0) + (v145 * 0.5)) + (v149 * v143));
            v141 = 0;
            v142 = 0;
            v138 = 0;
            sub_27615613C(&v137);
            LODWORD(v128) = v133;
            v123 = objc_msgSend_infoWithPipeline_index_resourceIndex_renderString_position_offset_alignment_wrapWidth_offset2D_rotation_alignmentPadding_(TSCH3DChartLabelsContainingLabelRenderInfo, v121, 0.0, 0.0, v122, v134, v140, v139, v89, &v144, &v141, v128, &v138, &v137);
            objc_msgSend_renderLabelRenderInfo_(objectCopy, v124, v125, v126, v127, v123);
          }

          sub_27616B32C(v161);
          sub_27616B32C(&v158);
        }
      }
    }
  }
}

- (void)renderSeriesLabelsSceneObject:(id)object pipeline:(id)pipeline
{
  objectCopy = object;
  pipelineCopy = pipeline;
  v12 = objc_msgSend_scene(pipelineCopy, v8, v9, v10, v11);
  v17 = objc_msgSend_scenePropertiesKey(self, v13, v14, v15, v16);
  v22 = objc_msgSend_partForType_(v12, v18, v19, v20, v21, v17);

  v27 = objc_msgSend_enumerator(v22, v23, v24, v25, v26);
  v32 = objc_msgSend_info(v27, v28, v29, v30, v31);
  v37 = objc_msgSend_chartType(v32, v33, v34, v35, v36);
  isHorizontal = objc_msgSend_isHorizontal(v37, v38, v39, v40, v41);
  v48 = objc_msgSend_model(v32, v43, v44, v45, v46);
  if (isHorizontal)
  {
    objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v47, v49, v50, v51, 2, 0);
  }

  else
  {
    objc_msgSend_axisIDWithType_ordinal_(TSCHChartAxisID, v47, v49, v50, v51, 1, 0);
  }
  v52 = ;
  v57 = objc_msgSend_axisForID_(v48, v53, v54, v55, v56, v52);

  if (objc_msgSend_intValueForProperty_defaultValue_(v57, v58, v59, v60, v61, 1059, 0) && (objc_msgSend_supportsSeriesLabels(v37, v62, v63, v64, v65) & 1) != 0)
  {
    v70 = objc_msgSend_properties(v22, v66, v67, v68, v69);
    v84 = objc_msgSend_seriesLabels(v70, v71, v72, v73, v74);
    if (v27)
    {
      objc_msgSend_size(v27, v75, v76, v77);
      v78 = HIDWORD(v90);
    }

    else
    {
      v78 = 0;
      v90 = 0;
    }

    v91[0] = 1;
    v91[1] = v78;
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = sub_276180544;
    v85[3] = &unk_27A6B65A0;
    v85[4] = self;
    v86 = objectCopy;
    v87 = pipelineCopy;
    v88 = v27;
    v79 = v70;
    v89 = v79;
    objc_msgSend_renderLabelsResourcesSessionWithResources_expectedSize_pipeline_renderBlock_(v86, v80, v81, v82, v83, v84, v91, v87, v85);
  }
}

- (tvec2<float>)p_valueLabelPaddingForLabelPosition:(unsigned int)position
{
  *v3 = 0;
  if ((position & 2) != 0)
  {
    v4 = v3;
    v10[0] = 1092616192;
    v10[1] = 1086324736;
    v5 = objc_opt_class();
    self = objc_msgSend_isHorizontalChart(v5, v6, v7, v8, v9);
    *(v4 + (self ^ 1)) = v10[self ^ 1];
  }

  return self;
}

- (void)renderLabelsSceneObject:(id)object pipeline:(id)pipeline enumerator:(id)enumerator properties:(id)properties
{
  objectCopy = object;
  pipelineCopy = pipeline;
  enumeratorCopy = enumerator;
  propertiesCopy = properties;
  v134 = objc_msgSend_seriesEnumerator(enumeratorCopy, v11, v12, v13, v14);
  v19 = objc_msgSend_skipZeroValues(enumeratorCopy, v15, v16, v17, v18);
  v24 = objc_msgSend_scene(pipelineCopy, v20, v21, v22, v23);
  v29 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v25, v26, v27, v28, v24);

  v34 = objc_msgSend_scene(pipelineCopy, v30, v31, v32, v33);
  v132 = objc_msgSend_delegateForSceneObject_(v34, v35, v36, v37, v38, objectCopy);

  v133 = objc_msgSend_labels(propertiesCopy, v39, v40, v41, v42);
  while (1)
  {
    v47 = objc_msgSend_nextSeries(v134, v43, v44, v45, v46);
    v52 = v47;
    if (!v47)
    {
      break;
    }

    if (objc_msgSend_showValueLabels(v47, v48, v49, v50, v51))
    {
      v56 = objc_msgSend_index(v52, v53, v54, v55);
      v60 = objc_msgSend_index(v52, v57, v58, v59);
      if ((objc_msgSend_willSubmitLabelType_boundsIndex_alignment_elementIndex_forSceneObject_(v132, v61, v62, v63, v64, 5, v56, 0, v60, objectCopy) & 1) == 0)
      {
        objc_msgSend_intercept(v52, v65, v66, v67, v68);
        v136 = v69;
        v74 = objc_msgSend_elementEnumerator(v52, v70, v69, v71, v72);
        while (1)
        {
          v78 = objc_msgSend_nextElement(v74, v73, v75, v76, v77);
          v83 = v78;
          if (!v78)
          {
            break;
          }

          objc_msgSend_axisSpaceValue(v78, v79, v80, v81, v82);
          v88 = v85;
          if (((v85 == 0.0) & v19) == 0 && (objc_msgSend_isStackedPercentageThatRoundsDownToZero(v83, v84, v85, v86, v87) & 1) == 0)
          {
            objc_msgSend_position(v83, v89, v90, v91);
            memset(v161, 0, 48);
            memset(v160, 0, sizeof(v160));
            v95 = objc_msgSend_series(v52, v92, 0.0, v93, v94);
            v100 = objc_msgSend_applyCombinedTransform_series_index_propertyAccessor_(propertiesCopy, v96, v97, v98, v99, v160, v95, &v162, v29);

            if ((v100 | v19 ^ 1))
            {
              v104 = objc_msgSend_valueLabelPositionForAxisValue_(v52, v101, v88, v102, v103);
              objc_msgSend_labelObjectSpacePosition_axisValue_intercept_(self, v88, v136, v105);
              sub_276169AD4(v160, &v150, v106);
              sub_2761EECB8(&v147, v107, v108);
              v139 = v158;
              v138 = v159;
              LODWORD(v109) = v149;
              v140 = v109;
              v110 = v150;
              v111 = v152;
              v112 = v154;
              v113 = v156;
              v114 = v151;
              v115 = v153;
              v116 = v155;
              v117 = v157;
              objc_msgSend_p_valueLabelPaddingForLabelPosition_(self, v109, v118, v119);
              v124 = objc_msgSend_valueStringForLabelResources_(v83, v120, v121, v122, v123, v133);
              v145[0] = v162;
              v145[1] = v163;
              v144[0] = v162;
              v144[1] = v163;
              v150 = vadd_f32(v113, vmla_n_f32(vmla_n_f32(vmul_n_f32(v111, v138), v110, v139), v112, *&v140));
              v151 = v117 + (((v138 * v115) + (v114 * v139)) + (v116 * *&v140));
              v147 = 0;
              v148 = 0;
              v142 = v146;
              v143 = 0;
              LODWORD(v131) = v104;
              v126 = objc_msgSend_infoWithPipeline_index_resourceIndex_renderString_position_offset_alignment_wrapWidth_offset2D_rotation_alignmentPadding_(TSCH3DChartLabelsContainingLabelRenderInfo, v125, 0.0, 0.0, v140, pipelineCopy, v145, v144, v124, &v150, &v147, v131, &v143, &v142);
              objc_msgSend_renderLabelRenderInfo_(objectCopy, v127, v128, v129, v130, v126);
            }

            sub_27616B32C(v161);
            sub_27616B32C(v160);
          }
        }
      }
    }
  }
}

- (void)updateTilingEffect:(void *)effect series:(id)series properties:(id)properties textureTiling:(id)tiling areaSize:(void *)size element:(void *)element
{
  seriesCopy = series;
  propertiesCopy = properties;
  tilingCopy = tiling;
  v146 = propertiesCopy;
  if (objc_msgSend_wrap(tilingCopy, v15, v16, v17, v18))
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCH3DChartAbstractBarSceneObject updateTilingEffect:series:properties:textureTiling:areaSize:element:]");
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, v26, v27, v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAbstractBarSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v30, v31, v32, v33, v24, v29, 251, 0, "Unsupported Wrap mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36, v37);
  }

  if (objc_msgSend_face(tilingCopy, v19, v20, v21, v22))
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, v39, v40, v41, "[TSCH3DChartAbstractBarSceneObject updateTilingEffect:series:properties:textureTiling:areaSize:element:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAbstractBarSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 252, 0, "Unsuppored face mode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
  }

  v57 = objc_opt_class();
  v63 = objc_msgSend_getPropertiesOfType_(propertiesCopy, v58, v59, v60, v61, v57);
  if (!v63)
  {
    v67 = MEMORY[0x277D81150];
    v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, v64, v65, v66, "[TSCH3DChartAbstractBarSceneObject updateTilingEffect:series:properties:textureTiling:areaSize:element:]");
    v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAbstractBarSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v74, v75, v76, v77, v68, v73, 257, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v79, v80, v81);
  }

  v82 = objc_msgSend_appearance(v63, v62, v64, v65, v66);
  v84 = *size;
  v83 = *(size + 1);
  v85 = *(size + 2);
  objc_msgSend_signedValueForSeries_index_(v82, v86, v87, v88, v89, seriesCopy, element);
  v148 = *&v90;
  objc_msgSend_maxValueForSeries_(v82, v91, v90, v92, v93, *(element + 1));
  v98 = *&v95;
  if (tilingCopy)
  {
    v99 = objc_msgSend_mode(tilingCopy, v94, v95, v96, v97);
    objc_msgSend_scale(tilingCopy, v100, v101, v102);
    LODWORD(v95) = 1.0;
    if (v99 == 1)
    {
      *&v95 = 2.0;
    }

    LODWORD(v96) = v155.i32[1];
    v103 = v155.f32[0];
    v104 = *&v95 * v155.f32[1];
  }

  else
  {
    v103 = 1.0;
    v104 = 1.0;
  }

  v105 = objc_msgSend_mode(tilingCopy, v94, v95, v96, v97);
  LODWORD(v109) = 1.0;
  if (v105)
  {
    v110 = v83;
  }

  else
  {
    v110 = 1.0;
  }

  v161[0] = 0uLL;
  v160 = 0uLL;
  isCircular = objc_msgSend_isCircular(v82, v106, v109, v107, v108);
  v112 = objc_opt_class();
  isStacked = objc_msgSend_isStacked(v112, v113, v114, v115, v116);
  v144 = v85;
  v145 = v98;
  v142 = v104;
  v143 = v103;
  if (isStacked)
  {
    sub_27615646C(isCircular, &v150, v84, v110);
    v120 = v150.i32[1];
    v121 = v150.i32[0];
    v155 = v150;
    v123 = v151;
    v122 = v152;
    v156 = v151;
    v157 = v152;
    v124 = v153;
    v125 = v154;
    *&v126 = v148;
    v127 = v148 < 0.0;
    v110 = 1.0;
  }

  else
  {
    *&v126 = sub_276156350(isCircular, &v150, v84);
    v127 = 0;
    v120 = v150.i32[1];
    v121 = v150.i32[0];
    v155 = v150;
    v123 = v151;
    v122 = v152;
    v156 = v151;
    v157 = v152;
    v124 = v153;
    v125 = v154;
  }

  v158 = v124;
  v159 = v125;
  if (v63)
  {
    objc_msgSend_size(v63, v126, v118, v119);
  }

  else
  {
    v150 = 0;
  }

  v128.f32[0] = sub_276156578(&v150, isCircular, isStacked);
  v131 = v128.f32[0];
  if (isCircular)
  {
    v150 = __PAIR64__(v120, v121);
    v151 = v123;
    v152 = v122;
    v153 = v124;
    v154 = v125;
  }

  else
  {
    *v128.f32 = sub_27615615C(&v155, 2, &v150, *v128.i64);
  }

  v128.f32[0] = v143 * v131;
  *&v129 = -(v142 * v110);
  v149.f32[0] = v143 * v131;
  v149.f32[1] = *&v129;
  v149.f32[2] = v143 * v131;
  v149.f32[3] = *&v129;
  sub_2761563D8(&v150, &v155, &v149, &v160, v161, 2, v128, v129, v130);
  if (v127)
  {
    *&v134 = v161[0].f32[0] + v160.f32[0];
    v160.f32[0] = v161[0].f32[0] + v160.f32[0];
    v161[0].f32[0] = -v161[0].f32[0];
  }

  LODWORD(v133) = 1.0;
  if (isCircular)
  {
    v136 = 1.0;
  }

  else
  {
    v136 = v144;
  }

  if (v63)
  {
    objc_msgSend_size(v63, v133, v134, v135);
  }

  else
  {
    v149.i64[0] = 0;
  }

  v137 = objc_msgSend_mode(tilingCopy, v132, v133, v134, v135) == 0;
  sub_2761565DC(&v149, isCircular, 0, v137, &v150, v136, v110, v145, v148);
  v138.i64[0] = *(v161[0].i64 + 4);
  v139.i64[0] = *(v161[0].i64 + 4);
  v139.i64[1] = *(v160.i64 + 4);
  v140.i32[0] = v161[0].i32[0];
  v138.i64[0] = vzip1q_s32(v161[0], v138).u64[0];
  v138.i64[1] = v160.i64[0];
  v141 = vrev64q_s32(v139);
  v140.i32[1] = *(v161 | 0xC);
  v140.i32[2] = v160.i32[0];
  *v139.i8 = v150;
  v139.u64[1] = v150;
  *(effect + 2) = v138;
  v140.i32[3] = v160.i32[3];
  *effect = v141;
  *(effect + 1) = vmulq_f32(v140, v139);
}

- (void)updateElementEffectsStates:(id)states depthToWidthRatio:(float)ratio
{
  statesCopy = states;
  v12 = objc_msgSend_properties(statesCopy, v7, v8, v9, v10);
  if (!v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v13, v14, v15, "[TSCH3DChartAbstractBarSceneObject updateElementEffectsStates:depthToWidthRatio:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAbstractBarSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 323, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
  }

  v31 = objc_msgSend_series(statesCopy, v11, v13, v14, v15);
  v36 = objc_msgSend_renderingLightingModelForSeries_(v12, v32, v33, v34, v35, v31);

  if (!v36)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, v38, v39, v40, "[TSCH3DChartAbstractBarSceneObject updateElementEffectsStates:depthToWidthRatio:]");
    v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAbstractBarSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v48, v49, v50, v51, v42, v47, 325, 0, "invalid nil value for '%{public}s'", "renderingLightingModel");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53, v54, v55);
  }

  v56 = objc_msgSend_lightingModel(v36, v37, v38, v39, v40);
  v61 = objc_msgSend_diffuseTextureTiling(v56, v57, v58, v59, v60);
  v66 = objc_msgSend_pipeline(statesCopy, v62, v63, v64, v65);
  v71 = objc_msgSend_scene(v66, v67, v68, v69, v70);
  v76 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v72, v73, v74, v75, v71);

  v113 = 0u;
  memset(v114, 0, 48);
  memset(v112, 0, sizeof(v112));
  v81 = objc_msgSend_series(statesCopy, v77, 0.0, v78, v79);
  if (statesCopy)
  {
    objc_msgSend_index(statesCopy, v82, v83, v84);
  }

  else
  {
    *&v109[0] = 0;
  }

  objc_msgSend_applyElementTransform_series_index_propertyAccessor_(v12, v80, v82, v83, v84, v112, v81, v109, v76);

  v110 = *(*(*(&v112[0] + 1) + 8 * (v113 / 0x49)) + 56 * (v113 % 0x49) + 12);
  ratioCopy = ratio;
  v88 = objc_msgSend_processor(statesCopy, v85, v110, v86, v87);
  v109[0] = xmmword_2764D5F30;
  v109[1] = xmmword_2764D5F30;
  v109[2] = xmmword_2764D5F30;
  v93 = objc_msgSend_series(statesCopy, v89, 0.00781250185, v90, v91);
  if (statesCopy)
  {
    objc_msgSend_index(statesCopy, v94, v95, v96);
  }

  else
  {
    v108 = 0;
  }

  objc_msgSend_updateTilingEffect_series_properties_textureTiling_areaSize_element_(self, v92, v94, v95, v96, v109, v93, v12, v61, &v110, &v108);

  v101 = objc_msgSend_effectsStates(v88, v97, v98, v99, v100);
  v102 = objc_opt_class();
  v107 = objc_msgSend_stateSharingID(v102, v103, v104, v105, v106);
  sub_276181410(v101, v107, v109);

  sub_27616B32C(v114);
  sub_27616B32C(v112);
}

- (float)depthForScene:(id)scene
{
  sceneCopy = scene;
  v10 = objc_msgSend_elementPropertiesFromScene_(self, v5, v6, v7, v8, sceneCopy);
  if (!v10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCH3DChartAbstractBarSceneObject depthForScene:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAbstractBarSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 356, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_appearance(v10, v9, v11, v12, v13);
  objc_msgSend_depthForScene_(v29, v30, v31, v32, v33, sceneCopy);
  v35 = v34;

  return v35;
}

- (float)chartMinZForScene:(id)scene
{
  sceneCopy = scene;
  v10 = objc_msgSend_elementPropertiesFromScene_(self, v5, v6, v7, v8, sceneCopy);
  if (!v10)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v11, v12, v13, "[TSCH3DChartAbstractBarSceneObject chartMinZForScene:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAbstractBarSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v22, v23, v24, v15, v20, 363, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28);
  }

  v29 = objc_msgSend_appearance(v10, v9, v11, v12, v13);
  objc_msgSend_chartMinZForScene_(v29, v30, v31, v32, v33, sceneCopy);
  v35 = v34;

  return v35;
}

- (tvec3<float>)adjustedScaleForInfoChartScale:(void *)scale scene:(id)scene
{
  v6 = v4;
  sceneCopy = scene;
  v12 = objc_msgSend_scenePartForScene_(self, v8, v9, v10, v11, sceneCopy);
  v17 = objc_msgSend_properties(v12, v13, v14, v15, v16);
  v23 = objc_msgSend_enumerator(v12, v18, v19, v20, v21);
  if (!v17)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v24, v25, v26, "[TSCH3DChartAbstractBarSceneObject adjustedScaleForInfoChartScale:scene:]");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAbstractBarSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v34, v35, v36, v37, v28, v33, 371, 0, "invalid nil value for '%{public}s'", "properties");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40, v41);
  }

  if (!v23)
  {
    v42 = MEMORY[0x277D81150];
    v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, v24, v25, v26, "[TSCH3DChartAbstractBarSceneObject adjustedScaleForInfoChartScale:scene:]");
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAbstractBarSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v49, v50, v51, v52, v43, v48, 372, 0, "invalid nil value for '%{public}s'", "enumerator");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56);
  }

  v57 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v22, v24, v25, v26, sceneCopy);
  objc_opt_class();
  v62 = objc_msgSend_info(v23, v58, v59, v60, v61);
  v67 = objc_msgSend_chartType(v62, v63, v64, v65, v66);
  v68 = v6;
  v69 = TSUCheckedDynamicCast();

  if (!v69)
  {
    v74 = MEMORY[0x277D81150];
    v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v70, v71, v72, v73, "[TSCH3DChartAbstractBarSceneObject adjustedScaleForInfoChartScale:scene:]");
    v80 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartAbstractBarSceneObject.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v81, v82, v83, v84, v75, v80, 375, 0, "invalid nil value for '%{public}s'", "chartType");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
  }

  if (v57)
  {
    objc_msgSend_infoChartScaleVec3(v57, v71, v72, v73);
  }

  objc_msgSend_barShape(v17, v70, v71, v72, v73);
  if (v69)
  {
    objc_msgSend_adjustedScaleForInfoChartScale_barShape_(v69, v89, v90, v91);
  }

  else
  {
    *(v68 + 8) = 0;
    *v68 = 0;
  }

  result.var0 = v92;
  result.var1 = *(&v92 + 4);
  result.var2 = v93;
  return result;
}

- (tvec3<float>)sortingPositionForElement:(id)element
{
  *v3 = 1056964608;
  *(v3 + 4) = 0x3F00000000000000;
  result.var2 = a2;
  result.var0 = self;
  result.var1 = *(&self + 4);
  return result;
}

- (void)sortElements:(id *)elements pipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  selfCopy = self;
  v150 = pipelineCopy;
  v11 = objc_msgSend_processor(v150, v6, v7, v8, v9);
  if (!v11)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, "void TSCH3D::SortElements(TSCH3DChartElementSceneObject *__strong, SEL, NSMutableArray<TSCH3DRenderElementInfo *> *__autoreleasing *, TSCH3DSceneRenderPipeline *__strong, MakeSortData) [SortData = float, MakeSortData = (anonymous namespace)::MakeSortData]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject_SortElements.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 28, 0, "invalid nil value for '%{public}s'", "processor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30 = objc_msgSend_scene(v150, v10, v12, v13, v14);
  v151 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v31, v32, v33, v34, v30);

  v35 = *elements;
  __src = 0;
  v160 = 0;
  v161 = 0;
  v40 = objc_msgSend_count(v35, v36, v37, v38, v39);
  sub_276182010(&__src, v40);
  for (i = 0; i < objc_msgSend_count(v35, v41, v42, v43, v44); ++i)
  {
    v50 = objc_msgSend_objectAtIndexedSubscript_(v35, v46, v47, v48, v49, i);
    objc_msgSend_pushMatrix(v11, v51, v52, v53, v54);
    v59 = objc_msgSend_properties(v50, v55, v56, v57, v58);
    v65 = objc_msgSend_series(v50, v60, v61, v62, v63);
    if (v50)
    {
      objc_msgSend_index(v50, v66, v67, v68);
    }

    else
    {
      *v152 = 0;
    }

    objc_msgSend_applyElementTransformToProcessor_series_index_propertyAccessor_(v59, v64, v66, v67, v68, v11, v65, v152, v151);

    *&v152[3] = 0;
    *&v152[1] = 0;
    v152[0] = 1065353216;
    v152[5] = 1065353216;
    v153 = 0;
    v154 = 0;
    v157 = 0;
    v156 = 0;
    v155 = 1065353216;
    v158 = 1065353216;
    objc_msgSend_copyTransformInto_(v11, v69, v70, v71, v72, v152);
    v164 = 1056964608;
    v165 = 1056964608;
    sub_276154744(&v164, v152, &v162, v73);
    LODWORD(v76) = v163;
    *&v77 = sqrtf(((v162.f32[1] * v162.f32[1]) + (v162.f32[0] * v162.f32[0])) + (*&v76 * *&v76));
    v78 = -*&v77;
    v79 = v160;
    if (v160 >= v161)
    {
      v81 = __src;
      v82 = v160 - __src;
      v83 = (v160 - __src) >> 4;
      v84 = v83 + 1;
      if ((v83 + 1) >> 60)
      {
        sub_276161760();
      }

      v85 = v161 - __src;
      if ((v161 - __src) >> 3 > v84)
      {
        v84 = v85 >> 3;
      }

      v86 = v85 >= 0x7FFFFFFFFFFFFFF0;
      v87 = 0xFFFFFFFFFFFFFFFLL;
      if (!v86)
      {
        v87 = v84;
      }

      if (v87)
      {
        sub_2761820B0(&__src, v87);
      }

      v88 = 16 * v83;
      *v88 = v78;
      *(v88 + 8) = i;
      v80 = (16 * v83 + 16);
      memcpy(0, v81, v82);
      v89 = __src;
      __src = 0;
      v160 = v80;
      v161 = 0;
      if (v89)
      {
        operator delete(v89);
      }
    }

    else
    {
      *v160 = v78;
      *(v79 + 1) = i;
      v80 = v79 + 4;
    }

    v160 = v80;
    objc_msgSend_popMatrix(v11, v74, v77, v76, v75);
  }

  v90 = 126 - 2 * __clz((v160 - __src) >> 4);
  if (v160 == __src)
  {
    v91 = 0;
  }

  else
  {
    v91 = v90;
  }

  sub_2761820F8(__src, v160, v152, v91, 1);
  v92 = MEMORY[0x277CBEB18];
  v97 = objc_msgSend_count(v35, v93, v94, v95, v96);
  v103 = objc_msgSend_arrayWithCapacity_(v92, v98, v99, v100, v101, v97);
  for (j = __src; j != v160; j += 4)
  {
    v108 = objc_msgSend_objectAtIndexedSubscript_(v35, v102, v104, v105, v106, *(j + 1));
    objc_msgSend_addObject_(v103, v109, v110, v111, v112, v108);
  }

  v113 = objc_msgSend_count(v35, v102, v104, v105, v106);
  if (v113 != objc_msgSend_count(v103, v114, v115, v116, v117))
  {
    v122 = MEMORY[0x277D81150];
    v123 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v118, v119, v120, v121, "void TSCH3D::SortElements(TSCH3DChartElementSceneObject *__strong, SEL, NSMutableArray<TSCH3DRenderElementInfo *> *__autoreleasing *, TSCH3DSceneRenderPipeline *__strong, MakeSortData) [SortData = float, MakeSortData = (anonymous namespace)::MakeSortData]");
    v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v124, v125, v126, v127, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject_SortElements.h");
    v133 = objc_msgSend_count(v35, v129, v130, v131, v132);
    v138 = objc_msgSend_count(v103, v134, v135, v136, v137);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v122, v139, v140, v141, v142, v123, v128, 59, 0, "size mismatch between elements and sorted %lu, %lu", v133, v138, selfCopy);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v143, v144, v145, v146);
  }

  v147 = v103;
  *elements = v103;

  if (__src)
  {
    v160 = __src;
    operator delete(__src);
  }
}

@end