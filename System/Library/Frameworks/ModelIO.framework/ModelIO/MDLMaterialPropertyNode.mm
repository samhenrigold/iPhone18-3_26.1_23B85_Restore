@interface MDLMaterialPropertyNode
- (MDLMaterialPropertyNode)initWithInputs:(NSArray *)inputs outputs:(NSArray *)outputs evaluationFunction:(void *)function;
@end

@implementation MDLMaterialPropertyNode

- (MDLMaterialPropertyNode)initWithInputs:(NSArray *)inputs outputs:(NSArray *)outputs evaluationFunction:(void *)function
{
  v222 = *MEMORY[0x277D85DE8];
  v9 = inputs;
  v199 = outputs;
  v197 = function;
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  obj = v9;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v214, v221, v14, v15, v16, v17, 16, v11, v12, v13);
  if (v18)
  {
    v19 = *v215;
    do
    {
      v20 = 0;
      do
      {
        if (*v215 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v214 + 1) + 8 * v20);
        WeakRetained = objc_loadWeakRetained((v21 + 160));
        v23 = WeakRetained == 0;

        if (!v23)
        {
          v34 = MEMORY[0x277CBEAD8];
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          v37 = NSStringFromSelector(a2);
          objc_msgSend_raise_format_(v34, v38, @"ModelIOException", @"[%@ %@]: input cannot be assigned to multiple nodes", v43, v44, v45, v46, v39, v40, v41, v42, v36, v37);
        }

        if (objc_msgSend_containsObject_(v199, v24, v21, v25, v30, v31, v32, v33, v26, v27, v28, v29))
        {
          v55 = MEMORY[0x277CBEAD8];
          v56 = objc_opt_class();
          v57 = NSStringFromClass(v56);
          v58 = NSStringFromSelector(a2);
          objc_msgSend_raise_format_(v55, v59, @"ModelIOException", @"[%@ %@]: input appears in output array", v64, v65, v66, v67, v60, v61, v62, v63, v57, v58);
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v214, v221, v51, v52, v53, v54, 16, v48, v49, v50);
    }

    while (v18);
  }

  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v198 = v199;
  v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v198, v68, &v210, v220, v72, v73, v74, v75, 16, v69, v70, v71);
  if (v76)
  {
    v77 = *v211;
    do
    {
      v78 = 0;
      do
      {
        if (*v211 != v77)
        {
          objc_enumerationMutation(v198);
        }

        v79 = *(*(&v210 + 1) + 8 * v78);
        v80 = objc_loadWeakRetained((v79 + 160));
        v81 = v80 == 0;

        if (!v81)
        {
          v92 = MEMORY[0x277CBEAD8];
          v93 = objc_opt_class();
          v94 = NSStringFromClass(v93);
          v95 = NSStringFromSelector(a2);
          objc_msgSend_raise_format_(v92, v96, @"ModelIOException", @"[%@ %@]: output cannot be assigned to multiple nodes", v101, v102, v103, v104, v97, v98, v99, v100, v94, v95);
        }

        if (objc_msgSend_containsObject_(obj, v82, v79, v83, v88, v89, v90, v91, v84, v85, v86, v87))
        {
          v113 = MEMORY[0x277CBEAD8];
          v114 = objc_opt_class();
          v115 = NSStringFromClass(v114);
          v116 = NSStringFromSelector(a2);
          objc_msgSend_raise_format_(v113, v117, @"ModelIOException", @"[%@ %@]: output appears in input array", v122, v123, v124, v125, v118, v119, v120, v121, v115, v116);
        }

        ++v78;
      }

      while (v76 != v78);
      v76 = objc_msgSend_countByEnumeratingWithState_objects_count_(v198, v105, &v210, v220, v109, v110, v111, v112, 16, v106, v107, v108);
    }

    while (v76);
  }

  v209.receiver = self;
  v209.super_class = MDLMaterialPropertyNode;
  v132 = [(MDLMaterialPropertyNode *)&v209 init];
  if (v132)
  {
    v137 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v126, obj, v127, v133, v134, v135, v136, v128, v129, v130, v131);
    v138 = v132->_inputs;
    v132->_inputs = v137;

    v149 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v139, v198, v140, v145, v146, v147, v148, v141, v142, v143, v144);
    v150 = v132->_outputs;
    v132->_outputs = v149;

    v151 = MEMORY[0x23EE80910](v197);
    evaluationFunction = v132->_evaluationFunction;
    v132->_evaluationFunction = v151;

    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v153 = obj;
    v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(v153, v154, &v205, v219, v158, v159, v160, v161, 16, v155, v156, v157);
    if (v162)
    {
      v163 = *v206;
      do
      {
        v164 = 0;
        do
        {
          if (*v206 != v163)
          {
            objc_enumerationMutation(v153);
          }

          objc_storeWeak((*(*(&v205 + 1) + 8 * v164++) + 160), v132);
        }

        while (v162 != v164);
        v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(v153, v165, &v205, v219, v169, v170, v171, v172, 16, v166, v167, v168);
      }

      while (v162);
    }

    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v173 = v198;
    v182 = objc_msgSend_countByEnumeratingWithState_objects_count_(v173, v174, &v201, v218, v178, v179, v180, v181, 16, v175, v176, v177);
    if (v182)
    {
      v183 = *v202;
      do
      {
        v184 = 0;
        do
        {
          if (*v202 != v183)
          {
            objc_enumerationMutation(v173);
          }

          objc_storeWeak((*(*(&v201 + 1) + 8 * v184++) + 160), v132);
        }

        while (v182 != v184);
        v182 = objc_msgSend_countByEnumeratingWithState_objects_count_(v173, v185, &v201, v218, v189, v190, v191, v192, 16, v186, v187, v188);
      }

      while (v182);
    }

    v193 = objc_alloc_init(MEMORY[0x277CBEB18]);
    inputNodes = v132->_inputNodes;
    v132->_inputNodes = v193;

    v195 = v132;
  }

  return v132;
}

@end