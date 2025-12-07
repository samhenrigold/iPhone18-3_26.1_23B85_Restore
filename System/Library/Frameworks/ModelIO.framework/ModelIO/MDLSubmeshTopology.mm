@interface MDLSubmeshTopology
+ (id)decodeTopologyWithCoder:(id)coder allocator:(id)allocator;
- (MDLSubmeshTopology)initWithSubmesh:(MDLSubmesh *)submesh;
- (void)encodeTopologyWithCoder:(id)coder allocator:(id)allocator;
@end

@implementation MDLSubmeshTopology

- (MDLSubmeshTopology)initWithSubmesh:(MDLSubmesh *)submesh
{
  v12 = submesh;
  if (!v12)
  {
    v17 = MEMORY[0x277CBEAD8];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v17, v21, @"ModelIOException", @"[%@ %@]: Cannot create topology with a submesh", v26, v27, v28, v29, v22, v23, v24, v25, v19, v20);
  }

  if (objc_msgSend_geometryType(v12, v5, v6, v7, v13, v14, v15, v16, v8, v9, v10, v11) == 3)
  {
    v30 = MEMORY[0x277CBEAD8];
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v33 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v30, v34, @"ModelIOException", @"[%@ %@]: Cannot create topology from triangle strips", v39, v40, v41, v42, v35, v36, v37, v38, v32, v33);
  }

  v262.receiver = self;
  v262.super_class = MDLSubmeshTopology;
  v50 = [(MDLSubmeshTopology *)&v262 init];
  if (v50)
  {
    v55 = objc_msgSend_topology(v12, v43, v44, v45, v51, v52, v53, v54, v46, v47, v48, v49);

    if (v55)
    {
      v67 = objc_msgSend_topology(v12, v56, v57, v58, v63, v64, v65, v66, v59, v60, v61, v62);
      v79 = objc_msgSend_faceTopology(v67, v68, v69, v70, v75, v76, v77, v78, v71, v72, v73, v74);
      faceTopology = v50->_faceTopology;
      v50->_faceTopology = v79;

      v50->_faceCount = objc_msgSend_faceCount(v67, v81, v82, v83, v88, v89, v90, v91, v84, v85, v86, v87);
      v103 = objc_msgSend_vertexCreaseIndices(v67, v92, v93, v94, v99, v100, v101, v102, v95, v96, v97, v98);
      vertexCreaseIndices = v50->_vertexCreaseIndices;
      v50->_vertexCreaseIndices = v103;

      v116 = objc_msgSend_vertexCreases(v67, v105, v106, v107, v112, v113, v114, v115, v108, v109, v110, v111);
      vertexCreases = v50->_vertexCreases;
      v50->_vertexCreases = v116;

      v50->_vertexCreaseCount = objc_msgSend_vertexCreaseCount(v67, v118, v119, v120, v125, v126, v127, v128, v121, v122, v123, v124);
      v50->_edgeCreaseCount = objc_msgSend_edgeCreaseCount(v67, v129, v130, v131, v136, v137, v138, v139, v132, v133, v134, v135);
      v151 = objc_msgSend_edgeCreaseIndices(v67, v140, v141, v142, v147, v148, v149, v150, v143, v144, v145, v146);
      edgeCreaseIndices = v50->_edgeCreaseIndices;
      v50->_edgeCreaseIndices = v151;

      v164 = objc_msgSend_edgeCreases(v67, v153, v154, v155, v160, v161, v162, v163, v156, v157, v158, v159);
      edgeCreases = v50->_edgeCreases;
      v50->_edgeCreases = v164;

      v177 = objc_msgSend_holes(v67, v166, v167, v168, v173, v174, v175, v176, v169, v170, v171, v172);
      holes = v50->_holes;
      v50->_holes = v177;

      v50->_holeCount = objc_msgSend_holeCount(v67, v179, v180, v181, v186, v187, v188, v189, v182, v183, v184, v185);
      v190 = v50;

      goto LABEL_28;
    }

    v191 = objc_msgSend_indexCount(v12, v56, v57, v58, v63, v64, v65, v66, v59, v60, v61, v62);
    __p = 0;
    v260 = 0;
    v261 = 0;
    v203 = objc_msgSend_geometryType(v12, v192, v193, v194, v199, v200, v201, v202, v195, v196, v197, v198);
    if (v203 <= 1)
    {
      if (v203)
      {
        if (v203 != 1)
        {
          goto LABEL_26;
        }

        v213 = v191 >> 1;
        v258 = 2;
        v214 = __p;
        v215 = v191 >> 1 >= v260 - __p;
        v204 = ((v191 >> 1) - (v260 - __p));
        if (v191 >> 1 > v260 - __p)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }

      v258 = 1;
      v204 = (v191 - (v260 - __p));
      if (v191 <= v260 - __p)
      {
        if (v191 >= v260 - __p)
        {
          goto LABEL_26;
        }

        v216 = __p + v191;
LABEL_25:
        v260 = v216;
LABEL_26:
        v217 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v204, __p, v260 - __p, v209, v210, v211, v212, v205, v206, v207, v208);
        v229 = objc_msgSend_indexBuffer(v12, v218, v219, v220, v225, v226, v227, v228, v221, v222, v223, v224);
        v241 = objc_msgSend_allocator(v229, v230, v231, v232, v237, v238, v239, v240, v233, v234, v235, v236);
        v251 = objc_msgSend_newBufferWithData_type_(v241, v242, v217, 2, v247, v248, v249, v250, v243, v244, v245, v246);

        v252 = v50->_faceTopology;
        v50->_faceTopology = v251;
        v253 = v251;

        v255 = __p;
        v254 = v260;

        v50->_faceCount = v254 - v255;
        v256 = v50;

        if (__p)
        {
          v260 = __p;
          operator delete(__p);
        }

        goto LABEL_28;
      }

LABEL_20:
      sub_239EFF5E8(&__p, v204, &v258);
      goto LABEL_26;
    }

    if (v203 == 2)
    {
      v213 = v191 / 3;
      v258 = 3;
      v214 = __p;
      v215 = v191 / 3 >= v260 - __p;
      v204 = (v191 / 3 - (v260 - __p));
      if (v191 / 3 > v260 - __p)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v203 != 4)
      {
        goto LABEL_26;
      }

      v213 = v191 >> 2;
      v258 = 4;
      v214 = __p;
      v215 = v191 >> 2 >= v260 - __p;
      v204 = ((v191 >> 2) - (v260 - __p));
      if (v191 >> 2 > v260 - __p)
      {
        goto LABEL_20;
      }
    }

LABEL_21:
    if (v215)
    {
      goto LABEL_26;
    }

    v216 = &v214[v213];
    goto LABEL_25;
  }

LABEL_28:

  return v50;
}

+ (id)decodeTopologyWithCoder:(id)coder allocator:(id)allocator
{
  coderCopy = coder;
  allocatorCopy = allocator;
  v7 = objc_alloc_init(MDLSubmeshTopology);
  v7->_faceCount = objc_msgSend_decodeIntegerForKey_(coderCopy, v8, @"faceCount", v9, v14, v15, v16, v17, v10, v11, v12, v13);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = allocatorCopy;
    v28 = objc_msgSend_decodeMeshBufferWithCoder_forKey_(v18, v19, coderCopy, @"faceTopology", v24, v25, v26, v27, v20, v21, v22, v23);
    faceTopology = v7->_faceTopology;
    v7->_faceTopology = v28;
  }

  return v7;
}

- (void)encodeTopologyWithCoder:(id)coder allocator:(id)allocator
{
  coderCopy = coder;
  allocatorCopy = allocator;
  objc_msgSend_encodeInteger_forKey_(coderCopy, v7, self->_faceCount, @"faceCount", v12, v13, v14, v15, v8, v9, v10, v11);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = allocatorCopy;
    v26 = objc_msgSend_decodeMeshBufferWithCoder_forKey_(v16, v17, coderCopy, @"faceTopology", v22, v23, v24, v25, v18, v19, v20, v21);
    faceTopology = self->_faceTopology;
    self->_faceTopology = v26;
  }
}

@end