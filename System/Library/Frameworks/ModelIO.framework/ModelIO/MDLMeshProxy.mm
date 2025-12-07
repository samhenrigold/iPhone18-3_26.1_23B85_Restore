@interface MDLMeshProxy
- (MDLMeshProxy)initWithCoder:(id)coder;
- (MDLMeshProxy)initWithVertexBuffers:(id)buffers vertexCount:(unint64_t)count descriptor:(id)descriptor submeshes:(id)submeshes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MDLMeshProxy

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v4, self->super._allocator, @"allocator", v9, v10, v11, v12, v5, v6, v7, v8);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v13, self->super._vertexCount, @"vertexCount", v18, v19, v20, v21, v14, v15, v16, v17);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_encodeMeshBuffers_withCoder_forKey_(self->super._allocator, v22, self->super._vertexBuffers, coderCopy, v28, v29, v30, v31, @"vertexBuffers", v25, v26, v27);
  }

  objc_msgSend_encodeVertexDescriptorWithCoder_(self->super._vertexDescriptor, v22, coderCopy, v23, v28, v29, v30, v31, v24, v25, v26, v27);
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, self->super._submeshes, @"submeshes", v37, v38, v39, v40, v33, v34, v35, v36);
}

- (MDLMeshProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v19 = objc_msgSend_setWithObjects_(v5, v9, v6, v10, v15, v16, v17, v18, v11, v12, v13, v14, v7, v8, 0);
  v20 = objc_opt_class();
  v30 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v20, @"allocator", v26, v27, v28, v29, v22, v23, v24, v25);
  allocator = self->super._allocator;
  self->super._allocator = v30;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = objc_msgSend_decodeMeshBuffersWithCoder_forKey_(self->super._allocator, v32, coderCopy, @"vertexBuffers", v38, v39, v40, v41, v34, v35, v36, v37);
    vertexBuffers = self->super._vertexBuffers;
    self->super._vertexBuffers = v42;
  }

  self->super._vertexCount = objc_msgSend_decodeIntegerForKey_(coderCopy, v32, @"vertexCount", v33, v38, v39, v40, v41, v34, v35, v36, v37);
  v54 = objc_msgSend_decodeVertexDescriptorWithCoder_(MDLVertexDescriptor, v44, coderCopy, v45, v50, v51, v52, v53, v46, v47, v48, v49);
  vertexDescriptor = self->super._vertexDescriptor;
  self->super._vertexDescriptor = v54;

  v65 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v56, v19, @"submeshes", v61, v62, v63, v64, v57, v58, v59, v60);
  submeshes = self->super._submeshes;
  self->super._submeshes = v65;

  return self;
}

- (MDLMeshProxy)initWithVertexBuffers:(id)buffers vertexCount:(unint64_t)count descriptor:(id)descriptor submeshes:(id)submeshes
{
  v347 = *MEMORY[0x277D85DE8];
  buffersCopy = buffers;
  descriptorCopy = descriptor;
  v325 = buffersCopy;
  submeshesCopy = submeshes;
  v343.receiver = self;
  v343.super_class = MDLMeshProxy;
  v329 = [(MDLObject *)&v343 init];
  if (!v329)
  {
    v277 = 0;
    goto LABEL_48;
  }

  v341 = 0u;
  v342 = 0u;
  v339 = 0u;
  v340 = 0u;
  v10 = buffersCopy;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v339, v346, v15, v16, v17, v18, 16, v12, v13, v14);
  if (!v26)
  {
    goto LABEL_13;
  }

  v31 = *v340;
  do
  {
    for (i = 0; i != v26; ++i)
    {
      if (*v340 != v31)
      {
        objc_enumerationMutation(v10);
      }

      v33 = *(*(&v339 + 1) + 8 * i);
      v34 = objc_msgSend_null(MEMORY[0x277CBEB68], v19, v20, v21, v27, v28, v29, v30, v22, v23, v24, v25);
      if ((objc_msgSend_isEqual_(v33, v35, v34, v36, v41, v42, v43, v44, v37, v38, v39, v40) & 1) == 0)
      {
        v56 = objc_msgSend_type(v33, v45, v46, v47, v52, v53, v54, v55, v48, v49, v50, v51) == 1;

        if (v56)
        {
          continue;
        }

        v57 = MEMORY[0x277CBEAD8];
        v58 = objc_opt_class();
        v34 = NSStringFromClass(v58);
        v59 = NSStringFromSelector(a2);
        objc_msgSend_raise_format_(v57, v60, @"ModelIOException", @"[%@ %@]: vertexBuffer.type must be MDLMeshBufferTypeVertex", v65, v66, v67, v68, v61, v62, v63, v64, v34, v59);
      }
    }

    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v19, &v339, v346, v27, v28, v29, v30, 16, v23, v24, v25);
  }

  while (v26);
LABEL_13:

  v79 = descriptorCopy;
  if (!descriptorCopy)
  {
    v80 = MEMORY[0x277CBEAD8];
    v81 = objc_opt_class();
    v82 = NSStringFromClass(v81);
    v83 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v80, v84, @"ModelIOException", @"[%@ %@]: No descriptor supplied", v89, v90, v91, v92, v85, v86, v87, v88, v82, v83);

    v79 = 0;
  }

  v337 = 0u;
  v338 = 0u;
  v335 = 0u;
  v336 = 0u;
  v93 = objc_msgSend_attributes(v79, v69, v70, v71, 0, v76, v77, v78, v72, v73, v74, v75);
  v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v94, &v335, v345, v98, v99, v100, v101, 16, v95, v96, v97);
  if (v109)
  {
    v114 = *v336;
    do
    {
      for (j = 0; j != v109; ++j)
      {
        if (*v336 != v114)
        {
          objc_enumerationMutation(v93);
        }

        v116 = *(*(&v335 + 1) + 8 * j);
        v117 = objc_msgSend_null(MEMORY[0x277CBEB68], v102, v103, v104, v110, v111, v112, v113, v105, v106, v107, v108);
        isEqual = objc_msgSend_isEqual_(v116, v118, v117, v119, v124, v125, v126, v127, v120, v121, v122, v123);

        if ((isEqual & 1) == 0)
        {
          v129 = objc_msgSend_bufferIndex(v116, v102, v103, v104, v110, v111, v112, v113, v105, v106, v107, v108);
          if (v129 > objc_msgSend_count(v10, v130, v131, v132, v137, v138, v139, v140, v133, v134, v135, v136))
          {
            v141 = MEMORY[0x277CBEAD8];
            v142 = objc_opt_class();
            v143 = NSStringFromClass(v142);
            v144 = NSStringFromSelector(a2);
            objc_msgSend_raise_format_(v141, v145, @"ModelIOException", @"[%@ %@]: Buffer index out of range", v150, v151, v152, v153, v146, v147, v148, v149, v143, v144);
          }
        }
      }

      v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v102, &v335, v345, v110, v111, v112, v113, 16, v106, v107, v108);
    }

    while (v109);
  }

  v333 = 0u;
  v334 = 0u;
  v331 = 0u;
  v332 = 0u;
  v154 = v10;
  v163 = 0;
  v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v154, v155, &v331, v344, v159, v160, v161, v162, 16, v156, v157, v158);
  if (v171)
  {
    v176 = *v332;
    do
    {
      for (k = 0; k != v171; ++k)
      {
        if (*v332 != v176)
        {
          objc_enumerationMutation(v154);
        }

        if (!v163)
        {
          v178 = *(*(&v331 + 1) + 8 * k);
          v179 = objc_msgSend_null(MEMORY[0x277CBEB68], v164, v165, v166, v172, v173, v174, v175, v167, v168, v169, v170);
          if (objc_msgSend_isEqual_(v178, v180, v179, v181, v186, v187, v188, v189, v182, v183, v184, v185))
          {
          }

          else
          {
            v201 = objc_msgSend_allocator(v178, v190, v191, v192, v197, v198, v199, v200, v193, v194, v195, v196);
            v202 = v201 == 0;

            if (!v202)
            {
              v163 = objc_msgSend_allocator(v178, v164, v165, v166, v172, v173, v174, v175, v167, v168, v169, v170);
              continue;
            }
          }

          v163 = 0;
        }
      }

      v171 = objc_msgSend_countByEnumeratingWithState_objects_count_(v154, v164, &v331, v344, v172, v173, v174, v175, 16, v168, v169, v170);
    }

    while (v171);
  }

  for (m = 0; objc_msgSend_count(v154, v203, v204, v205, v210, v211, v212, v213, v206, v207, v208, v209) > m; ++m)
  {
    v225 = objc_msgSend_objectAtIndexedSubscript_(v154, v215, m, v216, v221, v222, v223, v224, v217, v218, v219, v220);
    v237 = objc_msgSend_null(MEMORY[0x277CBEB68], v226, v227, v228, v233, v234, v235, v236, v229, v230, v231, v232);
    v248 = objc_msgSend_isEqual_(v225, v238, v237, v239, v244, v245, v246, v247, v240, v241, v242, v243);

    if ((v248 & 1) == 0)
    {
      v249 = objc_msgSend_objectAtIndexedSubscript_(v154, v203, m, v205, v210, v211, v212, v213, v206, v207, v208, v209);
      v261 = objc_msgSend_allocator(v249, v250, v251, v252, v257, v258, v259, v260, v253, v254, v255, v256);
      v262 = v261 == v163;

      if (!v262)
      {
        v263 = MEMORY[0x277CBEAD8];
        v264 = objc_opt_class();
        v265 = NSStringFromClass(v264);
        v266 = NSStringFromSelector(a2);
        objc_msgSend_raise_format_(v263, v267, @"ModelIOException", @"[%@ %@]: Allocators on supplied vertexBuffers do not all match, but they must", v272, v273, v274, v275, v268, v269, v270, v271, v265, v266);
      }
    }
  }

  v330.receiver = v329;
  v330.super_class = MDLMeshProxy;
  v276 = [(MDLObject *)&v330 init];
  v277 = v276;
  if (v276)
  {
    __asm { FMOV            V1.4S, #-1.0 }

    *v276->super._anon_50 = _Q1;
    *&v276->super._anon_50[16] = 0u;
    objc_storeStrong(&v276->super._allocator, v163);
    v277->super._vertexCount = count;
    v283 = objc_alloc(MEMORY[0x277CBEB18]);
    v294 = objc_msgSend_initWithArray_(v283, v284, v154, v285, v290, v291, v292, v293, v286, v287, v288, v289);
    vertexBuffers = v277->super._vertexBuffers;
    v277->super._vertexBuffers = v294;

    v296 = MEMORY[0x23EE7E350]();
    v307 = objc_msgSend_copyWithZone_(descriptorCopy, v297, v296, v298, v303, v304, v305, v306, v299, v300, v301, v302);
    vertexDescriptor = v277->super._vertexDescriptor;
    v277->super._vertexDescriptor = v307;

    v309 = objc_alloc(MEMORY[0x277CBEB18]);
    v320 = objc_msgSend_initWithArray_(v309, v310, submeshesCopy, v311, v316, v317, v318, v319, v312, v313, v314, v315);
    submeshes = v277->super._submeshes;
    v277->super._submeshes = v320;

    v322 = v277;
  }

LABEL_48:
  return v277;
}

@end