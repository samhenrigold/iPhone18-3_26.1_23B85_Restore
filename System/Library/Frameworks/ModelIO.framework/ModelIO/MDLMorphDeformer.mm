@interface MDLMorphDeformer
- (MDLMorphDeformer)initWithOther:(id)other;
- (MDLMorphDeformer)initWithTargetShapes:(id)shapes shapeSetTargetWeights:(const float *)weights count:(unint64_t)count shapeSetTargetCounts:(const unsigned int *)counts count:(unint64_t)a7;
- (MDLMorphDeformer)initWithTargetShapes:(id)shapes shapeSetTargetWeights:(id)weights shapeSetTargetCounts:(id)counts;
- (NSArray)shapeSetTargetCounts;
- (NSArray)shapeSetTargetWeights;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)copyShapeSetTargetCountsInto:(unsigned int *)into maxCount:(unint64_t)count;
- (unint64_t)copyShapeSetTargetWeightsInto:(float *)into maxCount:(unint64_t)count;
@end

@implementation MDLMorphDeformer

- (id)copyWithZone:(_NSZone *)zone
{
  v13 = objc_msgSend_allocWithZone_(MDLMorphDeformer, a2, zone, v3, v8, v9, v10, v11, v4, v5, v6, v7);

  return MEMORY[0x2821F9670](v13, sel_initWithOther_, self, v14, v15, v16, v17, v18);
}

- (MDLMorphDeformer)initWithOther:(id)other
{
  otherCopy = other;
  v108.receiver = self;
  v108.super_class = MDLMorphDeformer;
  v12 = [(MDLMorphDeformer *)&v108 init];
  if (v12)
  {
    v17 = objc_msgSend_targetShapes(otherCopy, v5, v6, v7, v13, v14, v15, v16, v8, v9, v10, v11);
    v29 = objc_msgSend_copy(v17, v18, v19, v20, v25, v26, v27, v28, v21, v22, v23, v24);
    targetShapes = v12->_targetShapes;
    v12->_targetShapes = v29;

    v42 = objc_msgSend_shapeSetTargetWeights(otherCopy, v31, v32, v33, v38, v39, v40, v41, v34, v35, v36, v37);
    v54 = objc_msgSend_copy(v42, v43, v44, v45, v50, v51, v52, v53, v46, v47, v48, v49);
    targetWeights = v12->_targetWeights;
    v12->_targetWeights = v54;

    v67 = objc_msgSend_shapeSetTargetCounts(otherCopy, v56, v57, v58, v63, v64, v65, v66, v59, v60, v61, v62);
    v79 = objc_msgSend_copy(v67, v68, v69, v70, v75, v76, v77, v78, v71, v72, v73, v74);
    v80 = v12->_targetWeights;
    v12->_targetWeights = v79;

    v92 = objc_msgSend_weights(otherCopy, v81, v82, v83, v88, v89, v90, v91, v84, v85, v86, v87);
    v104 = objc_msgSend_copy(v92, v93, v94, v95, v100, v101, v102, v103, v96, v97, v98, v99);
    weights = v12->_weights;
    v12->_weights = v104;

    v106 = v12;
  }

  return v12;
}

- (MDLMorphDeformer)initWithTargetShapes:(id)shapes shapeSetTargetWeights:(id)weights shapeSetTargetCounts:(id)counts
{
  v212 = *MEMORY[0x277D85DE8];
  shapesCopy = shapes;
  weightsCopy = weights;
  countsCopy = counts;
  v209.receiver = self;
  v209.super_class = MDLMorphDeformer;
  v192 = shapesCopy;
  v194 = [(MDLMorphDeformer *)&v209 init];
  if (v194)
  {
    if (weightsCopy && countsCopy)
    {
      v21 = objc_msgSend_count(shapesCopy, v10, v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
      if (v21 == objc_msgSend_count(weightsCopy, v22, v23, v24, v29, v30, v31, v32, v25, v26, v27, v28))
      {
        __src = 0;
        v207 = 0;
        v208 = 0;
        v202 = 0u;
        v203 = 0u;
        v204 = 0u;
        v205 = 0u;
        v191 = weightsCopy;
        v33 = weightsCopy;
        v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v202, v211, v38, v39, v40, v41, 16, v35, v36, v37);
        if (v49)
        {
          v54 = *v203;
          do
          {
            for (i = 0; i != v49; ++i)
            {
              if (*v203 != v54)
              {
                objc_enumerationMutation(v33);
              }

              objc_msgSend_floatValue(*(*(&v202 + 1) + 8 * i), v42, v43, v44, v50, v51, v52, v53, v45, v46, v47, v48, v191);
              v56 = v207;
              if (v207 >= v208)
              {
                v58 = __src;
                v59 = v207 - __src;
                v60 = (v207 - __src) >> 2;
                v61 = v60 + 1;
                if ((v60 + 1) >> 62)
                {
                  sub_239E797B4();
                }

                v62 = v208 - __src;
                if ((v208 - __src) >> 1 > v61)
                {
                  v61 = v62 >> 1;
                }

                if (v62 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v63 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v63 = v61;
                }

                if (v63)
                {
                  sub_239E79984(&__src, v63);
                }

                *(4 * v60) = v50.n128_u32[0];
                v57 = 4 * v60 + 4;
                memcpy(0, v58, v59);
                v64 = __src;
                __src = 0;
                v207 = v57;
                v208 = 0;
                if (v64)
                {
                  operator delete(v64);
                }
              }

              else
              {
                *v207 = v50.n128_u32[0];
                v57 = (v56 + 4);
              }

              v207 = v57;
            }

            v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v42, &v202, v211, v50, v51, v52, v53, 16, v46, v47, v48);
          }

          while (v49);
        }

        weightsCopy = v191;
        __p = 0;
        v200 = 0;
        v201 = 0;
        v195 = 0u;
        v196 = 0u;
        v197 = 0u;
        v198 = 0u;
        v65 = countsCopy;
        v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v66, &v195, v210, v70, v71, v72, v73, 16, v67, v68, v69);
        if (v81)
        {
          LODWORD(v86) = 0;
          v87 = *v196;
          do
          {
            for (j = 0; j != v81; ++j)
            {
              if (*v196 != v87)
              {
                objc_enumerationMutation(v65);
              }

              v89 = objc_msgSend_unsignedIntValue(*(*(&v195 + 1) + 8 * j), v74, v75, v76, v82, v83, v84, v85, v77, v78, v79, v80, v191);
              v90 = v89;
              v91 = v200;
              if (v200 >= v201)
              {
                v93 = __p;
                v94 = v200 - __p;
                v95 = (v200 - __p) >> 2;
                v96 = v95 + 1;
                if ((v95 + 1) >> 62)
                {
                  sub_239E797B4();
                }

                v97 = v201 - __p;
                if ((v201 - __p) >> 1 > v96)
                {
                  v96 = v97 >> 1;
                }

                if (v97 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v98 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v98 = v96;
                }

                if (v98)
                {
                  sub_239E79984(&__p, v98);
                }

                *(4 * v95) = v89;
                v92 = 4 * v95 + 4;
                memcpy(0, v93, v94);
                v99 = __p;
                __p = 0;
                v200 = v92;
                v201 = 0;
                if (v99)
                {
                  operator delete(v99);
                }
              }

              else
              {
                *v200 = v89;
                v92 = (v91 + 4);
              }

              v86 = (v90 + v86);
              v200 = v92;
            }

            v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v74, &v195, v210, v82, v83, v84, v85, 16, v78, v79, v80);
          }

          while (v81);
          weightsCopy = v191;
        }

        else
        {
          v86 = 0;
        }

        v146 = objc_msgSend_count(v192, v128, v129, v130, v135, v136, v137, v138, v131, v132, v133, v134);
        if (v146 == v86)
        {
          v151 = objc_msgSend_copy(v192, v139, v140, v141, v147, v148, v149, v150, v142, v143, v144, v145);
          targetShapes = v194->_targetShapes;
          v194->_targetShapes = v151;

          v153 = objc_alloc(MEMORY[0x277CBEA90]);
          v163 = objc_msgSend_initWithBytes_length_(v153, v154, __src, v207 - __src, v159, v160, v161, v162, v155, v156, v157, v158);
          targetWeights = v194->_targetWeights;
          v194->_targetWeights = v163;

          v165 = objc_alloc(MEMORY[0x277CBEA90]);
          v175 = objc_msgSend_initWithBytes_length_(v165, v166, __p, v200 - __p, v171, v172, v173, v174, v167, v168, v169, v170);
          targetCounts = v194->_targetCounts;
          v194->_targetCounts = v175;

          v177 = [MDLAnimatedScalarArray alloc];
          v188 = objc_msgSend_initWithElementCount_(v177, v178, ((v200 - __p) >> 2), v179, v184, v185, v186, v187, v180, v181, v182, v183);
          weights = v194->_weights;
          v194->_weights = v188;
        }

        else
        {
          NSLog(&cfstr_TargetshapesCo_0.isa);
        }

        if (__p)
        {
          v200 = __p;
          operator delete(__p);
        }

        if (__src)
        {
          v207 = __src;
          operator delete(__src);
        }

        if (v146 == v86)
        {
          goto LABEL_58;
        }
      }

      else
      {
        NSLog(&cfstr_TargetshapesCo.isa);
      }
    }

    else
    {
      if (!(weightsCopy | countsCopy))
      {
        v100 = objc_msgSend_copy(shapesCopy, v10, v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
        v101 = v194->_targetShapes;
        v194->_targetShapes = v100;

        v102 = [MDLAnimatedScalarArray alloc];
        v114 = objc_msgSend_count(shapesCopy, v103, v104, v105, v110, v111, v112, v113, v106, v107, v108, v109);
        v125 = objc_msgSend_initWithElementCount_(v102, v115, v114, v116, v121, v122, v123, v124, v117, v118, v119, v120);
        v126 = v194->_weights;
        v194->_weights = v125;

LABEL_58:
        v127 = v194;
        goto LABEL_59;
      }

      NSLog(&cfstr_Shapesettarget.isa);
    }
  }

  v127 = 0;
LABEL_59:

  return v127;
}

- (MDLMorphDeformer)initWithTargetShapes:(id)shapes shapeSetTargetWeights:(const float *)weights count:(unint64_t)count shapeSetTargetCounts:(const unsigned int *)counts count:(unint64_t)a7
{
  shapesCopy = shapes;
  v118.receiver = self;
  v118.super_class = MDLMorphDeformer;
  v20 = [(MDLMorphDeformer *)&v118 init];
  if (v20)
  {
    if (weights && counts)
    {
      if (objc_msgSend_count(shapesCopy, v13, v14, v15, v21, v22, v23, v24, v16, v17, v18, v19) == count)
      {
        if (a7)
        {
          LODWORD(v36) = 0;
          v37 = 1;
          countsCopy = counts;
          do
          {
            v39 = *countsCopy++;
            v36 = (v39 + v36);
            v40 = v37++;
          }

          while (v40 < a7);
        }

        else
        {
          v36 = 0;
        }

        if (objc_msgSend_count(shapesCopy, v25, v26, v27, v32, v33, v34, v35, v28, v29, v30, v31) == v36)
        {
          v79 = objc_msgSend_copy(shapesCopy, v68, v69, v70, v75, v76, v77, v78, v71, v72, v73, v74);
          targetShapes = v20->_targetShapes;
          v20->_targetShapes = v79;

          v81 = objc_alloc(MEMORY[0x277CBEA90]);
          v91 = objc_msgSend_initWithBytes_length_(v81, v82, weights, 4 * count, v87, v88, v89, v90, v83, v84, v85, v86);
          targetWeights = v20->_targetWeights;
          v20->_targetWeights = v91;

          v93 = objc_alloc(MEMORY[0x277CBEA90]);
          v103 = objc_msgSend_initWithBytes_length_(v93, v94, counts, 4 * a7, v99, v100, v101, v102, v95, v96, v97, v98);
          targetCounts = v20->_targetCounts;
          v20->_targetCounts = v103;

          v105 = [MDLAnimatedScalarArray alloc];
          v66 = objc_msgSend_initWithElementCount_(v105, v106, a7, v107, v112, v113, v114, v115, v108, v109, v110, v111);
          goto LABEL_17;
        }

        NSLog(&cfstr_TargetshapesCo_0.isa);
      }

      else
      {
        NSLog(&cfstr_TargetshapesCo.isa);
      }
    }

    else
    {
      if (!(weights | counts))
      {
        v41 = objc_msgSend_copy(shapesCopy, v13, v14, v15, v21, v22, v23, v24, v16, v17, v18, v19);
        v42 = v20->_targetShapes;
        v20->_targetShapes = v41;

        v43 = [MDLAnimatedScalarArray alloc];
        v55 = objc_msgSend_count(shapesCopy, v44, v45, v46, v51, v52, v53, v54, v47, v48, v49, v50);
        v66 = objc_msgSend_initWithElementCount_(v43, v56, v55, v57, v62, v63, v64, v65, v58, v59, v60, v61);
LABEL_17:
        weights = v20->_weights;
        v20->_weights = v66;

        v67 = v20;
        goto LABEL_18;
      }

      NSLog(&cfstr_Shapesettarget.isa);
    }
  }

  v67 = 0;
LABEL_18:

  return v67;
}

- (NSArray)shapeSetTargetWeights
{
  v3 = objc_opt_new();
  v15 = objc_msgSend_length(self->_targetWeights, v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v27 = objc_msgSend_bytes(self->_targetWeights, v16, v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);
  if (v15 >= 4)
  {
    v39 = v27;
    v40 = 0;
    v41 = v15 >> 2;
    v42 = 1;
    do
    {
      v35.n128_u32[0] = *(v39 + 4 * v40);
      v43 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v28, v29, v30, v35, v36, v37, v38, v31, v32, v33, v34);
      objc_msgSend_addObject_(v3, v44, v43, v45, v50, v51, v52, v53, v46, v47, v48, v49);

      v40 = v42;
    }

    while (v41 > v42++);
  }

  v55 = objc_msgSend_copy(v3, v28, v29, v30, v35, v36, v37, v38, v31, v32, v33, v34);

  return v55;
}

- (NSArray)shapeSetTargetCounts
{
  v3 = objc_opt_new();
  v15 = objc_msgSend_length(self->_targetCounts, v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v27 = objc_msgSend_bytes(self->_targetCounts, v16, v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);
  if (v15 >= 4)
  {
    v39 = v27;
    v40 = 0;
    v41 = v15 >> 2;
    v42 = 1;
    do
    {
      v43 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v28, *(v39 + 4 * v40), v30, v35, v36, v37, v38, v31, v32, v33, v34);
      objc_msgSend_addObject_(v3, v44, v43, v45, v50, v51, v52, v53, v46, v47, v48, v49);

      v40 = v42;
    }

    while (v41 > v42++);
  }

  v55 = objc_msgSend_copy(v3, v28, v29, v30, v35, v36, v37, v38, v31, v32, v33, v34);

  return v55;
}

- (unint64_t)copyShapeSetTargetWeightsInto:(float *)into maxCount:(unint64_t)count
{
  v15 = objc_msgSend_length(self->_targetWeights, a2, into, count, v8, v9, v10, v11, v4, v5, v6, v7);
  v27 = v15 >> 2;
  if (v15 >> 2 <= count)
  {
    v28 = objc_msgSend_bytes(self->_targetWeights, v16, v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);
    v40 = objc_msgSend_length(self->_targetWeights, v29, v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
    memcpy(into, v28, v40);
  }

  else
  {
    NSLog(&cfstr_Targetweightsa.isa, count, v15 >> 2);
    return 0;
  }

  return v27;
}

- (unint64_t)copyShapeSetTargetCountsInto:(unsigned int *)into maxCount:(unint64_t)count
{
  v15 = objc_msgSend_length(self->_targetCounts, a2, into, count, v8, v9, v10, v11, v4, v5, v6, v7);
  v27 = v15 >> 1;
  if (v15 >> 1 <= count)
  {
    v28 = objc_msgSend_bytes(self->_targetCounts, v16, v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);
    v40 = objc_msgSend_length(self->_targetCounts, v29, v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
    memcpy(into, v28, v40);
  }

  else
  {
    NSLog(&cfstr_Targetcountsar.isa, count, v15 >> 1);
    return 0;
  }

  return v27;
}

@end