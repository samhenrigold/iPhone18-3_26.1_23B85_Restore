@interface TSCH3DChartStackedAreaSceneObject
- (void)sortElements:(id *)elements pipeline:(id)pipeline;
@end

@implementation TSCH3DChartStackedAreaSceneObject

- (void)sortElements:(id *)elements pipeline:(id)pipeline
{
  pipelineCopy = pipeline;
  selfCopy = self;
  v155 = pipelineCopy;
  v11 = objc_msgSend_processor(v155, v6, v7, v8, v9);
  if (!v11)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, v12, v13, v14, "void TSCH3D::SortElements(TSCH3DChartElementSceneObject *__strong, SEL, NSMutableArray<TSCH3DRenderElementInfo *> *__autoreleasing *, TSCH3DSceneRenderPipeline *__strong, MakeSortData) [SortData = float, MakeSortData = (anonymous namespace)::MakeSortData]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject_SortElements.h");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v22, v23, v24, v25, v16, v21, 28, 0, "invalid nil value for '%{public}s'", "processor");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28, v29);
  }

  v30 = objc_msgSend_scene(v155, v10, v12, v13, v14);
  v35 = objc_msgSend_nonNilAccessorWithScene_(TSCH3DChartScenePropertyAccessor, v31, v32, v33, v34, v30);

  v36 = *elements;
  __src = 0;
  v165 = 0;
  v166 = 0;
  v41 = objc_msgSend_count(v36, v37, v38, v39, v40);
  sub_276182010(&__src, v41);
  v46 = 0;
  v156 = v35;
  while (v46 < objc_msgSend_count(v36, v42, v43, v44, v45))
  {
    v51 = objc_msgSend_objectAtIndexedSubscript_(v36, v47, v48, v49, v50, v46);
    objc_msgSend_pushMatrix(v11, v52, v53, v54, v55);
    v60 = objc_msgSend_properties(v51, v56, v57, v58, v59);
    v66 = objc_msgSend_series(v51, v61, v62, v63, v64);
    if (v51)
    {
      objc_msgSend_index(v51, v67, v68, v69);
    }

    else
    {
      *v157 = 0;
    }

    objc_msgSend_applyElementTransformToProcessor_series_index_propertyAccessor_(v60, v65, v67, v68, v69, v11, v66, v157, v35);

    *&v157[3] = 0;
    *&v157[1] = 0;
    v157[0] = 1065353216;
    v157[5] = 1065353216;
    v158 = 0;
    v159 = 0;
    v162 = 0;
    v161 = 0;
    v160 = 1065353216;
    v163 = 1065353216;
    objc_msgSend_copyTransformInto_(v11, v70, v71, v72, v73, v157);
    v74 = v51;
    v78 = v74;
    if (v51)
    {
      objc_msgSend_index(v74, v75, v76, v77);
      v79 = v167;
    }

    else
    {
      v79 = 0.0;
    }

    v84 = v165;
    if (v165 >= v166)
    {
      v86 = __src;
      v87 = v165 - __src;
      v88 = (v165 - __src) >> 4;
      v89 = v88 + 1;
      if ((v88 + 1) >> 60)
      {
        sub_276161760();
      }

      v90 = v166 - __src;
      if ((v166 - __src) >> 3 > v89)
      {
        v89 = v90 >> 3;
      }

      v91 = v90 >= 0x7FFFFFFFFFFFFFF0;
      v92 = 0xFFFFFFFFFFFFFFFLL;
      if (!v91)
      {
        v92 = v89;
      }

      if (v92)
      {
        sub_2761820B0(&__src, v92);
      }

      v93 = 16 * v88;
      *v93 = v79;
      *(v93 + 8) = v46;
      v85 = (16 * v88 + 16);
      memcpy(0, v86, v87);
      v94 = __src;
      __src = 0;
      v165 = v85;
      v166 = 0;
      if (v94)
      {
        operator delete(v94);
      }

      v35 = v156;
    }

    else
    {
      *v165 = v79;
      *(v84 + 1) = v46;
      v85 = v84 + 4;
    }

    v165 = v85;
    objc_msgSend_popMatrix(v11, v80, v81, v82, v83);

    ++v46;
  }

  v95 = 126 - 2 * __clz((v165 - __src) >> 4);
  if (v165 == __src)
  {
    v96 = 0;
  }

  else
  {
    v96 = v95;
  }

  sub_2761820F8(__src, v165, v157, v96, 1);
  v97 = MEMORY[0x277CBEB18];
  v102 = objc_msgSend_count(v36, v98, v99, v100, v101);
  v108 = objc_msgSend_arrayWithCapacity_(v97, v103, v104, v105, v106, v102);
  for (i = __src; i != v165; i += 4)
  {
    v113 = objc_msgSend_objectAtIndexedSubscript_(v36, v107, v109, v110, v111, *(i + 1));
    objc_msgSend_addObject_(v108, v114, v115, v116, v117, v113);
  }

  v118 = objc_msgSend_count(v36, v107, v109, v110, v111);
  if (v118 != objc_msgSend_count(v108, v119, v120, v121, v122))
  {
    v127 = MEMORY[0x277D81150];
    v128 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v123, v124, v125, v126, "void TSCH3D::SortElements(TSCH3DChartElementSceneObject *__strong, SEL, NSMutableArray<TSCH3DRenderElementInfo *> *__autoreleasing *, TSCH3DSceneRenderPipeline *__strong, MakeSortData) [SortData = float, MakeSortData = (anonymous namespace)::MakeSortData]");
    v133 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v129, v130, v131, v132, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DChartElementSceneObject_SortElements.h");
    v138 = objc_msgSend_count(v36, v134, v135, v136, v137);
    v143 = objc_msgSend_count(v108, v139, v140, v141, v142);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v127, v144, v145, v146, v147, v128, v133, 59, 0, "size mismatch between elements and sorted %lu, %lu", v138, v143);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v148, v149, v150, v151);
  }

  v152 = v108;
  *elements = v108;

  if (__src)
  {
    v165 = __src;
    operator delete(__src);
  }
}

@end