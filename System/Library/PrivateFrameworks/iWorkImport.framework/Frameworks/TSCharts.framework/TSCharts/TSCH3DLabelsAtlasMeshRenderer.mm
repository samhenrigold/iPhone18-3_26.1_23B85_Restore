@interface TSCH3DLabelsAtlasMeshRenderer
- (TSCH3DLabelsAtlasMeshRenderer)init;
- (id)p_resourceAtIndex:(unint64_t)index childIndex:(unint64_t)childIndex dimension:(unint64_t)dimension createIfAbsent:(BOOL)absent;
- (id)p_resourceForExternalLabelAttribute:(id)attribute index:(unint64_t)index createIfAbsent:(BOOL)absent;
- (unint64_t)p_indexForExternalAttribute:(id)attribute;
- (unint64_t)p_resourceCount;
- (void)beginResources:(id)resources samples:(float)samples;
- (void)flushCache;
- (void)p_submitExternalAttributesForIndex:(unint64_t)index processor:(id)processor;
- (void)renderWithMeshRenderLabelInfo:(id)info;
- (void)submitResourcesWithProcessor:(id)processor;
@end

@implementation TSCH3DLabelsAtlasMeshRenderer

- (TSCH3DLabelsAtlasMeshRenderer)init
{
  v6.receiver = self;
  v6.super_class = TSCH3DLabelsAtlasMeshRenderer;
  v2 = [(TSCH3DSceneRenderCacheObject *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D81278]);
    externalAttributeVariables = v2->_externalAttributeVariables;
    v2->_externalAttributeVariables = v3;
  }

  return v2;
}

- (void)beginResources:(id)resources samples:(float)samples
{
  resourcesCopy = resources;
  if (self->_atlas)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v7, v8, v9, "[TSCH3DLabelsAtlasMeshRenderer beginResources:samples:]");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v17, v18, v19, v20, v11, v16, 285, 0, "expected nil value for '%{public}s'", "_atlas");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23, v24);
  }

  *&v7 = samples;
  v25 = objc_msgSend_prepareTextureAtlasWithSamples_(resourcesCopy, v6, v7, v8, v9);
  atlas = self->_atlas;
  self->_atlas = v25;
}

- (id)p_resourceAtIndex:(unint64_t)index childIndex:(unint64_t)childIndex dimension:(unint64_t)dimension createIfAbsent:(BOOL)absent
{
  absentCopy = absent;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_276219A84;
  v23[3] = &unk_27A6B6BE8;
  v23[4] = dimension;
  v10 = MEMORY[0x277C98B30](v23, a2);
  v15 = objc_msgSend_childCacheObjectAtIndex_(self, v11, v12, v13, v14, childIndex);
  v20 = v15;
  if (absentCopy)
  {
    objc_msgSend_resourceAtIndex_created_ifAbsent_(v15, v16, v17, v18, v19, index, 0, v10);
  }

  else
  {
    objc_msgSend_resourceAtIndex_created_ifAbsent_(v15, v16, v17, v18, v19, index, 0, 0);
  }
  v21 = ;

  return v21;
}

- (unint64_t)p_resourceCount
{
  v5 = objc_msgSend_childCacheObjectAtIndex_(self, a2, v2, v3, v4, 0);
  v10 = objc_msgSend_resourceCount(v5, v6, v7, v8, v9);

  return v10;
}

- (unint64_t)p_indexForExternalAttribute:(id)attribute
{
  attributeCopy = attribute;
  if ((objc_msgSend_isValid(attributeCopy, v5, v6, v7, v8) & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DLabelsAtlasMeshRenderer p_indexForExternalAttribute:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 327, 0, "cannot get index for invalid external attribute");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  externalAttributeVariables = self->_externalAttributeVariables;
  v29 = objc_msgSend_variable(attributeCopy, v9, v10, v11, v12);
  v34 = objc_msgSend_objectForKey_(externalAttributeVariables, v30, v31, v32, v33, v29);

  if (v34)
  {
    v40 = objc_msgSend_unsignedIntValue(v34, v35, v36, v37, v38);
  }

  else
  {
    v40 = objc_msgSend_count(self->_externalAttributeVariables, v35, v36, v37, v38) + 2;
    v44 = self->_externalAttributeVariables;
    v49 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v45, v46, v47, v48, v40);
    v54 = objc_msgSend_variable(attributeCopy, v50, v51, v52, v53);
    objc_msgSend_setObject_forKey_(v44, v55, v56, v57, v58, v49, v54);
  }

  if (objc_msgSend_count(self->_externalAttributeVariables, v39, v41, v42, v43) != 1)
  {
    v63 = MEMORY[0x277D81150];
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "[TSCH3DLabelsAtlasMeshRenderer p_indexForExternalAttribute:]");
    v69 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, v66, v67, v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v70, v71, v72, v73, v64, v69, 338, 0, "only single external attribute is supported");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v74, v75, v76, v77);
  }

  if (v40 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v78 = MEMORY[0x277D81150];
    v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, v60, v61, v62, "[TSCH3DLabelsAtlasMeshRenderer p_indexForExternalAttribute:]");
    v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, v81, v82, v83, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v85, v86, v87, v88, v79, v84, 339, 0, "invalid index %lu", 0x7FFFFFFFFFFFFFFFLL);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v89, v90, v91, v92);
  }

  return v40;
}

- (id)p_resourceForExternalLabelAttribute:(id)attribute index:(unint64_t)index createIfAbsent:(BOOL)absent
{
  absentCopy = absent;
  attributeCopy = attribute;
  if ((objc_msgSend_isValid(attributeCopy, v9, v10, v11, v12) & 1) == 0)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v14, v15, v16, "[TSCH3DLabelsAtlasMeshRenderer p_resourceForExternalLabelAttribute:index:createIfAbsent:]");
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v25, v26, v27, v18, v23, 344, 0, "cannot get index for invalid external attribute");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30, v31);
  }

  v32 = objc_msgSend_p_indexForExternalAttribute_(self, v13, v14, v15, v16, attributeCopy);
  v37 = objc_msgSend_p_resourceAtIndex_childIndex_dimension_createIfAbsent_(self, v33, v34, v35, v36, index, v32, 2, absentCopy);

  return v37;
}

- (void)p_submitExternalAttributesForIndex:(unint64_t)index processor:(id)processor
{
  v85 = *MEMORY[0x277D85DE8];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  processorCopy = processor;
  obj = self->_externalAttributeVariables;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, v6, v7, v8, &v80, v84, 16);
  if (v10)
  {
    v76 = *v81;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v81 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v80 + 1) + 8 * i);
        v16 = objc_msgSend_objectForKey_(self->_externalAttributeVariables, v9, v11, v12, v13, v15);
        v22 = objc_msgSend_unsignedIntValue(v16, v17, v18, v19, v20);
        if (!v16)
        {
          v26 = MEMORY[0x277D81150];
          v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v23, v24, v25, "[TSCH3DLabelsAtlasMeshRenderer p_submitExternalAttributesForIndex:processor:]");
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, v29, v30, v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v33, v34, v35, v36, v27, v32, 357, 0, "invalid index %lu for key %@", v22, v15);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39, v40);
        }

        v41 = objc_msgSend_p_resourceAtIndex_childIndex_dimension_createIfAbsent_(self, v21, v23, v24, v25, index, v22, 2, 0);
        v47 = objc_msgSend_buffer(v41, v42, v43, v44, v45);
        if (!v47 || (objc_msgSend_buffer(v41, v46, v48, v49, v50), v51 = objc_claimAutoreleasedReturnValue(), v52 = sub_276165208(v51), v54 = *v52, v53 = v52[1], v51, v51, v47, v53 == v54))
        {
          v55 = MEMORY[0x277D81150];
          v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v48, v49, v50, "[TSCH3DLabelsAtlasMeshRenderer p_submitExternalAttributesForIndex:processor:]");
          v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
          v66 = objc_msgSend_buffer(v41, v62, v63, v64, v65);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v67, v68, v69, v70, v56, v61, 365, 0, "invalid buffer %@", v66);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v71, v72, v73, v74);
        }

        memset(v79, 0, sizeof(v79));
        objc_msgSend_attribute_resource_specs_(processorCopy, v46, v48, v49, v50, v15, v41, v79);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, v11, v12, v13, &v80, v84, 16);
    }

    while (v10);
  }
}

- (void)submitResourcesWithProcessor:(id)processor
{
  v89 = 1065353216;
  v91 = 0;
  v90 = 0;
  v92 = 1065353216;
  v93 = 0;
  v94 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 1065353216;
  v98 = 1065353216;
  processorCopy = processor;
  objc_msgSend_replace_(processorCopy, v4, v5, v6, v7, &v89);
  v13 = objc_msgSend_p_resourceCount(self, v8, v9, v10, v11);
  if (v13)
  {
    v17 = 0;
    do
    {
      v18 = objc_msgSend_p_vertexResourceAtIndex_createIfAbsent_(self, v12, v14, v15, v16, v17, 0);
      v23 = objc_msgSend_p_texcoordResourceAtIndex_createIfAbsent_(self, v19, v20, v21, v22, v17, 0);
      v28 = objc_msgSend_buffer(v18, v24, v25, v26, v27);
      v33 = objc_msgSend_buffer(v23, v29, v30, v31, v32);
      v34 = v33 == 0;

      if ((v28 == 0) != v34)
      {
        v39 = MEMORY[0x277D81150];
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, "[TSCH3DLabelsAtlasMeshRenderer submitResourcesWithProcessor:]");
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, v42, v43, v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v46, v47, v48, v49, v40, v45, 393, 0, "resource mismatch at index %zu, %@ %@", v17, v18, v23);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52, v53);
      }

      v55 = objc_msgSend_buffer(v18, v35, v36, v37, v38);
      if (v55)
      {
        v59 = objc_msgSend_buffer(v23, v54, v56, v57, v58);

        if (v59)
        {
          v64 = objc_msgSend_buffer(v18, v60, v61, v62, v63);
          v65 = sub_27616536C(v64);
          v67 = *v65;
          v66 = v65[1];

          if (v66 == v67)
          {
          }

          else
          {
            v72 = objc_msgSend_buffer(v23, v68, v69, v70, v71);
            v73 = sub_2761654D0(v72);
            v74 = *v73;
            v80 = v73[1];

            if (v80 != v74)
            {
              v81[0] = MEMORY[0x277D85DD0];
              v81[1] = 3321888768;
              v81[2] = sub_27621A67C;
              v81[3] = &unk_28851D3B0;
              v81[4] = self;
              v84 = v17;
              v85 = 0;
              v86 = 0;
              v87 = 1;
              v88[0] = 0;
              *(v88 + 5) = 0;
              v82 = v23;
              v83 = v18;
              objc_msgSend_performBlockWithProcessor_block_(TSCH3DRenderProcessorStateSession, v75, v76, v77, v78, processorCopy, v81);
            }
          }
        }
      }

      ++v17;
    }

    while (v13 != v17);
  }
}

- (void)flushCache
{
  v4.receiver = self;
  v4.super_class = TSCH3DLabelsAtlasMeshRenderer;
  [(TSCH3DSceneRenderCacheObject *)&v4 flushCache];
  atlas = self->_atlas;
  self->_atlas = 0;
}

- (void)renderWithMeshRenderLabelInfo:(id)info
{
  v286 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v215 = objc_msgSend_renderer(infoCopy, v5, v6, v7, v8);
  if (!self->_atlas)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "[TSCH3DLabelsAtlasMeshRenderer renderWithMeshRenderLabelInfo:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v20, v21, v22, v23, v14, v19, 426, 0, "invalid nil value for '%{public}s'", "_atlas");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26, v27);
  }

  v214 = objc_msgSend_label(v215, v9, v10, v11, v12);
  atlas = self->_atlas;
  if (atlas)
  {
    objc_msgSend_positionForLabel_(atlas, v29, v30, v31);
    v33 = v275;
  }

  else
  {
    v33 = 0;
    v275 = 0;
    v274 = 0;
  }

  if (v214)
  {
    objc_msgSend_clampedLabelSampledSize(v214, v29, v30, v31);
  }

  else
  {
    v273 = 0;
  }

  v34 = self->_atlas;
  if (v34)
  {
    objc_msgSend_textureSizeAtIndex_(v34, v29, v30, v31);
  }

  else
  {
    v272 = 0;
  }

  v211 = objc_msgSend_p_vertexResourceAtIndex_createIfAbsent_(self, v28, v29, v30, v31, v33, 1);
  v212 = objc_msgSend_p_texcoordResourceAtIndex_createIfAbsent_(self, v35, v36, v37, v38, v33, 1);
  v43 = objc_msgSend_externalAttribute(infoCopy, v39, v40, v41, v42);
  isValid = objc_msgSend_isValid(v43, v44, v45, v46, v47);

  if (isValid)
  {
    v53 = objc_msgSend_externalAttribute(infoCopy, v49, v50, v51, v52);
    v213 = objc_msgSend_p_resourceForExternalLabelAttribute_index_createIfAbsent_(self, v54, v55, v56, v57, v53, v33, 1);
  }

  else
  {
    if (objc_msgSend_count(self->_externalAttributeVariables, v49, v50, v51, v52))
    {
      v62 = MEMORY[0x277D81150];
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, v59, v60, v61, "[TSCH3DLabelsAtlasMeshRenderer renderWithMeshRenderLabelInfo:]");
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v65, v66, v67, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v69, v70, v71, v72, v63, v68, 447, 0, "supplying invalid external attribute when attribute is required %@", self->_externalAttributeVariables);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
    }

    v213 = 0;
  }

  v216 = sub_27618C648(v211);
  v77 = sub_27618C374(v212);
  if (v213)
  {
    v81 = sub_27621B498(v213);
  }

  else
  {
    v81 = 0;
  }

  v284 = 0u;
  v285 = 0u;
  v282 = 0u;
  v283 = 0u;
  v280 = 0u;
  v281 = 0u;
  v279 = 0u;
  if (infoCopy)
  {
    objc_msgSend_translation(infoCopy, 0.0, v78, v79);
    v82 = v251;
    LODWORD(v83) = v252;
  }

  else
  {
    v252 = 0;
    v251 = 0;
    v82 = 0;
    v83 = 0.0;
  }

  v255 = 0;
  v254 = 0;
  v253 = 1065353216;
  v256 = 1065353216;
  v257 = 0;
  v258 = 0;
  v84 = 0;
  v85 = vmul_f32(v82, 0);
  v86 = vrev64_s32(v85);
  v85.f32[0] = vaddv_f32(v85);
  *v80.i32 = *&v83 * 0.0;
  *&v83 = (*&v83 + v85.f32[0]) + 0.0;
  v87 = COERCE_DOUBLE(vadd_f32(vadd_f32(vadd_f32(v82, v86), vdup_lane_s32(v80, 0)), 0));
  v259 = 1065353216;
  v260 = v87;
  v261 = LODWORD(v83);
  v262 = (v85.f32[0] + *v80.i32) + 1.0;
  if (infoCopy)
  {
    objc_msgSend_offset(infoCopy, 0.0, v87, v83);
    v84 = v240;
  }

  else
  {
    v240 = 0;
  }

  v243 = 0;
  v242 = 0;
  v241 = 1065353216;
  v244 = 1065353216;
  v245 = 0;
  v246 = 0;
  v88 = vmul_f32(v84, 0);
  v247 = 1065353216;
  v248 = vadd_f32(vadd_f32(v84, vrev64_s32(v88)), 0);
  v249 = vaddv_f32(v88) + 0.0;
  v250 = v249 + 1.0;
  *&v89 = sub_2761558A0(&v253, &v241, v263).u64[0];
  objc_msgSend_rotation(infoCopy, v89, v90, v91);
  v93 = __sincosf_stret(v92 * 0.017453);
  v94 = (1.0 - v93.__cosval) * 0.0;
  v95 = v93.__cosval + (v94 * 0.0);
  v96 = (v94 * 0.0) + 0.0;
  v97 = v93.__sinval + v96;
  v98 = v94 + 0.0;
  v99 = v98 - (v93.__sinval * 0.0);
  v100 = v96 - v93.__sinval;
  v101 = v98 + (v93.__sinval * 0.0);
  v102 = ((1.0 - v93.__cosval) * 0.0) + 0.0;
  v103 = v102 + (v93.__sinval * 0.0);
  v104 = v102 - (v93.__sinval * 0.0);
  v105 = v93.__cosval + (1.0 - v93.__cosval);
  v106 = (v95 * 0.0) + (v97 * 0.0);
  v238[0] = (v99 * 0.0) + (v95 + (v97 * 0.0));
  v238[1] = ((v95 * 0.0) + v97) + (v99 * 0.0);
  v238[2] = v99 + v106;
  v238[3] = (v99 * 0.0) + v106;
  v107 = (v95 * 0.0) + (v100 * 0.0);
  v238[4] = ((v95 * 0.0) + v100) + (v101 * 0.0);
  v238[5] = (v101 * 0.0) + (v95 + (v100 * 0.0));
  v238[6] = v101 + v107;
  v238[7] = (v101 * 0.0) + v107;
  v108 = (v103 * 0.0) + (v104 * 0.0);
  v238[8] = (v105 * 0.0) + (v103 + (v104 * 0.0));
  v238[9] = (v105 * 0.0) + (v104 + (v103 * 0.0));
  v238[10] = v105 + v108;
  v238[11] = (v105 * 0.0) + v108;
  v239 = xmmword_2764D5F20;
  *&v109 = sub_2761558A0(v263, v238, v264).u64[0];
  if (infoCopy)
  {
    objc_msgSend_alignmentOffset(infoCopy, v109, v110, v111);
    v112 = v227;
  }

  else
  {
    v227 = 0;
    v112 = 0;
  }

  v113 = vmul_f32(v112, 0);
  v228 = 1065353216;
  v230 = 0;
  v229 = 0;
  v231 = 1065353216;
  v232 = 0;
  v233 = 0;
  v234 = 1065353216;
  v235 = vadd_f32(vadd_f32(v112, vrev64_s32(v113)), 0);
  v236 = vaddv_f32(v113) + 0.0;
  v237 = v236 + 1.0;
  *&v114 = sub_2761558A0(v264, &v228, &__p).u64[0];
  if (infoCopy)
  {
    objc_msgSend_scale(infoCopy, v114, *v115.i64, v116);
    v115.i32[0] = v220;
    v117 = v221;
  }

  else
  {
    v117 = 0;
    v115.i32[0] = 0;
  }

  v222[0] = v115.i32[0];
  *&v222[1] = *v115.i32 * 0.0;
  *&v222[2] = *v115.i32 * 0.0;
  *&v222[3] = *v115.i32 * 0.0;
  *v115.i8 = vmul_f32(v117, 0);
  v223 = vzip1_s32(*v115.i8, v117);
  v224 = vzip1q_s32(v115, v115);
  v225 = vzip2_s32(v117, *v115.i8);
  v226 = xmmword_2764D5F20;
  v118 = sub_2761558A0(&__p, v222, &v265);
  v119.i64[0] = v265.i64[0];
  v120 = vmul_f32(v266, 0);
  *v121.i8 = vadd_f32(*v265.f32, v120);
  v122.i32[0] = vdup_lane_s32(v120, 1).u32[0];
  *v123.i8 = v268;
  *v124.i8 = v270;
  v125 = vadd_f32(v270, vmla_f32(vmla_f32(v120, 0, *v265.f32), 0, v268));
  v126 = v271 + (((v267 * 0.0) + (v265.f32[2] * 0.0)) + (v269 * 0.0));
  *&v283 = v125;
  *(&v283 + 2) = v126;
  *(&v283 + 3) = v270.f32[0] + (*v121.i32 + (v268.f32[0] * 0.0));
  *v121.i32 = v265.f32[2] + v267;
  v127 = vuzp2q_s32(v119, vzip1q_s32(v119, v119));
  v127.i32[1] = v265.i32[2];
  *&v122.u32[2] = v266;
  v122.f32[1] = v267 * 0.0;
  v128 = vuzp2q_s32(v123, vzip1q_s32(v123, v123));
  v128.f32[1] = v269;
  v129 = vmlaq_f32(vaddq_f32(v127, v122), 0, v128);
  v130 = vuzp2q_s32(v124, vzip1q_s32(v124, v124));
  v130.f32[1] = v271;
  *v118.f32 = vmla_f32(v266, 0, *v265.f32);
  v131 = vextq_s8(v118, v123, 0xCuLL);
  v131.f32[0] = v269;
  v131.f32[3] = v269;
  v132 = vextq_s8(vextq_s8(v121, v121, 4uLL), v118, 0xCuLL);
  v132.f32[3] = v267 + (v265.f32[2] * 0.0);
  v133 = vextq_s8(v132, v124, 0xCuLL);
  v133.f32[0] = v271;
  v133.f32[3] = v271;
  v284 = vaddq_f32(v130, v129);
  v285 = vaddq_f32(v133, vmlaq_f32(v132, 0, v131));
  *v131.f32 = vcvt_f32_s32(v272);
  *v121.i8 = vdiv_f32(vcvt_f32_s32(v274), *v131.f32);
  *&v282 = v121.i64[0];
  *(&v282 + 1) = 0x3F80000000000000;
  *v133.f32 = vdiv_f32(vcvt_f32_s32(vadd_s32(v273, v274)), *v131.f32);
  *&v281 = __PAIR64__(v121.u32[1], v133.u32[0]);
  *(&v281 + 1) = 0x3F80000000000000;
  *&v280 = v133.i64[0];
  *(&v280 + 1) = 0x3F80000000000000;
  v121.i32[1] = v133.i32[1];
  *&v279 = v121.i64[0];
  *(&v279 + 1) = 0x3F80000000000000;
  v135 = objc_msgSend_pipeline(v215, v134, 0.0078125, *v133.i64, *&v281);
  v136 = v135 == 0;

  if (v136)
  {
    v141 = MEMORY[0x277D81150];
    v142 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, v138, v139, v140, "[TSCH3DLabelsAtlasMeshRenderer renderWithMeshRenderLabelInfo:]");
    v147 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v143, v144, v145, v146, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v141, v148, v149, v150, v151, v142, v147, 495, 0, "invalid nil value for '%{public}s'", "renderer.pipeline");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v152, v153, v154, v155);
  }

  v156 = objc_msgSend_pipeline(v215, v137, v138, v139, v140);
  objc_msgSend_superSamples(v156, v157, v158, v159, v160);
  v217 = v161;

  v218 = vsub_f32(vmul_n_f32(vrndm_f32(vadd_f32(vdiv_f32(v125, vdup_lane_s32(v217, 0)), 0x3F0000003F000000)), *v217.i32), v125);
  v162 = 0.0 - v126;
  if (byte_280A46430 == 1)
  {
    v163 = objc_opt_class();
    v164 = NSStringFromSelector(a2);
    v165 = MEMORY[0x277CCACA8];
    sub_276152FD4(&__p, "vec3(%f, %f, %f)", v218.f32[0], v218.f32[1], v162);
    if (__p_8[15] >= 0)
    {
      objc_msgSend_stringWithUTF8String_(v165, v166, v167, v168, v169, &__p);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(v165, v166, v167, v168, v169, __p);
    }
    v170 = ;
    if ((__p_8[15] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    NSLog(&cfstr_PAlign.isa, v163, self, v164, v170);
  }

  v171 = 0;
  __p = 0;
  *&__p_8[8] = 0u;
  *__p_8 = xmmword_2764D6880;
  v278 = xmmword_2764D6700;
  do
  {
    v172 = *&__p_8[v171 - 8];
    v173 = (&v283 + 12 * v172);
    v174 = v162 + v173[1].f32[0];
    *v264[0].f32 = vadd_f32(v218, *v173);
    v264[0].f32[2] = v174;
    sub_2761C14E8(v216, v264);
    sub_276161E1C(v77, &v279 + 4 * v172);
    if (v81)
    {
      v179 = objc_msgSend_externalAttribute(infoCopy, v175, v176, v177, v178);
      v184 = objc_msgSend_isValid(v179, v180, v181, v182, v183);

      if ((v184 & 1) == 0)
      {
        v189 = MEMORY[0x277D81150];
        v190 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v185, v186, v187, v188, "[TSCH3DLabelsAtlasMeshRenderer renderWithMeshRenderLabelInfo:]");
        v195 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v191, v192, v193, v194, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DLabelsRenderer.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v189, v196, v197, v198, v199, v190, v195, 514, 0, "have ext array with invalid external attribs");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v200, v201, v202, v203);
      }

      v204 = objc_msgSend_externalAttribute(infoCopy, v185, v186, v187, v188);
      v208 = v204;
      if (v204)
      {
        objc_msgSend_value(v204, v205, v206, v207);
      }

      else
      {
        v264[0].i64[0] = 0;
      }

      v209 = v81[1];
      if (v209 >= v81[2])
      {
        v210 = sub_2761ADBFC(v81, v264);
      }

      else
      {
        *v209 = v264[0].i64[0];
        v210 = (v209 + 1);
      }

      v81[1] = v210;
    }

    v171 += 8;
  }

  while (v171 != 48);
}

@end