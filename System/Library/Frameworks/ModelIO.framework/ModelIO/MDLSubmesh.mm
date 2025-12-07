@interface MDLSubmesh
- (MDLSubmesh)initWithMDLSubmesh:(MDLSubmesh *)submesh indexType:(MDLIndexBitDepth)indexType geometryType:(MDLGeometryType)geometryType;
- (MDLSubmesh)initWithName:(NSString *)name indexBuffer:(id)indexBuffer indexCount:(NSUInteger)indexCount indexType:(MDLIndexBitDepth)indexType geometryType:(MDLGeometryType)geometryType material:(MDLMaterial *)material;
- (MDLSubmesh)initWithName:(id)name indexBuffer:(id)buffer indexCount:(unint64_t)count indexType:(unint64_t)type faceIndexing:(id)indexing geometryType:(int64_t)geometryType material:(id)material topology:(id)self0;
- (id)indexBufferAsIndexType:(MDLIndexBitDepth)indexType;
- (void)boundingBoxForMesh:(float32x4_t *)mesh@<X8>;
- (void)debugPrintToFile:(__sFILE *)file;
@end

@implementation MDLSubmesh

- (MDLSubmesh)initWithName:(id)name indexBuffer:(id)buffer indexCount:(unint64_t)count indexType:(unint64_t)type faceIndexing:(id)indexing geometryType:(int64_t)geometryType material:(id)material topology:(id)self0
{
  nameCopy = name;
  bufferCopy = buffer;
  indexingCopy = indexing;
  materialCopy = material;
  topologyCopy = topology;
  if (objc_msgSend_type(bufferCopy, v18, v19, v20, v25, v26, v27, v28, v21, v22, v23, v24) == 2 && (!indexingCopy || topologyCopy) && (!indexingCopy || geometryType == 5))
  {
    v95.receiver = self;
    v95.super_class = MDLSubmesh;
    v91 = [(MDLSubmesh *)&v95 init];
    self = v91;
    if (v91)
    {
      v90 = objc_msgSend_null(MEMORY[0x277CBEB68], v29, v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
      if (objc_msgSend_isEqual_(bufferCopy, v40, v90, v41, v46, v47, v48, v49, v42, v43, v44, v45))
      {
        allocator = v90;
      }

      else
      {
        v89 = objc_msgSend_allocator(bufferCopy, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);

        if (!v89)
        {
LABEL_14:
          objc_storeStrong(&v91->_indexBuffer, buffer);
          objc_storeStrong(&v91->_material, material);
          objc_storeStrong(&v91->_topology, topology);
          objc_storeStrong(&v91->_faceIndexing, indexing);
          v87 = objc_msgSend_copy(nameCopy, v76, v77, v78, v83, v84, v85, v86, v79, v80, v81, v82);
          name = v91->_name;
          v91->_name = v87;

          v91->_indexCount = count;
          v91->_geometryType = geometryType;
          v91->_indexType = type;
          self = v91;
          selfCopy = self;
          goto LABEL_10;
        }

        v75 = objc_msgSend_allocator(bufferCopy, v64, v65, v66, v71, v72, v73, v74, v67, v68, v69, v70);
        allocator = v91->_allocator;
        v91->_allocator = v75;
      }

      goto LABEL_14;
    }
  }

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

- (MDLSubmesh)initWithName:(NSString *)name indexBuffer:(id)indexBuffer indexCount:(NSUInteger)indexCount indexType:(MDLIndexBitDepth)indexType geometryType:(MDLGeometryType)geometryType material:(MDLMaterial *)material
{
  v12 = name;
  v13 = indexBuffer;
  v14 = material;
  if (objc_msgSend_type(v13, v15, v16, v17, v22, v23, v24, v25, v18, v19, v20, v21) != 2 || (v90.receiver = self, v90.super_class = MDLSubmesh, v33 = [(MDLSubmesh *)&v90 init], (self = v33) == 0))
  {
    selfCopy = 0;
    goto LABEL_9;
  }

  allocator = objc_msgSend_null(MEMORY[0x277CBEB68], v26, v27, v28, v34, v35, v36, v37, v29, v30, v31, v32);
  if (objc_msgSend_isEqual_(v13, v39, allocator, v40, v45, v46, v47, v48, v41, v42, v43, v44))
  {
    goto LABEL_6;
  }

  v60 = objc_msgSend_allocator(v13, v49, v50, v51, v56, v57, v58, v59, v52, v53, v54, v55);

  if (v60)
  {
    v72 = objc_msgSend_allocator(v13, v61, v62, v63, v68, v69, v70, v71, v64, v65, v66, v67);
    allocator = v33->_allocator;
    v33->_allocator = v72;
LABEL_6:
  }

  objc_storeStrong(&v33->_indexBuffer, indexBuffer);
  objc_storeStrong(&v33->_material, material);
  v84 = objc_msgSend_copy(v12, v73, v74, v75, v80, v81, v82, v83, v76, v77, v78, v79);
  v85 = v33->_name;
  v33->_name = v84;

  v33->_indexCount = indexCount;
  v33->_geometryType = geometryType;
  v33->_indexType = indexType;
  self = v33;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (MDLSubmesh)initWithMDLSubmesh:(MDLSubmesh *)submesh indexType:(MDLIndexBitDepth)indexType geometryType:(MDLGeometryType)geometryType
{
  v8 = submesh;
  if (objc_msgSend_indexType(v8, v9, v10, v11, v16, v17, v18, v19, v12, v13, v14, v15) != indexType || objc_msgSend_geometryType(v8, v20, v21, v22, v27, v28, v29, v30, v23, v24, v25, v26) != geometryType)
  {
    v121 = objc_autoreleasePoolPush();
    objc_storeStrong(&self->_allocator, v8->_allocator);
    v133 = objc_msgSend_indexBuffer(v8, v122, v123, v124, v129, v130, v131, v132, v125, v126, v127, v128);
    context = v121;
    v145 = objc_msgSend_map(v133, v134, v135, v136, v141, v142, v143, v144, v137, v138, v139, v140);

    v487 = v145;
    v157 = objc_msgSend_bytes(v145, v146, v147, v148, v153, v154, v155, v156, v149, v150, v151, v152);
    if (objc_msgSend_geometryType(v8, v158, v159, v160, v165, v166, v167, v168, v161, v162, v163, v164) == 5)
    {
      selfCopy5 = objc_msgSend_topology(v8, v169, v170, v171, v176, v177, v178, v179, v172, v173, v174, v175);

      if (!selfCopy5)
      {
        v243 = 0;
        v203 = 0;
        goto LABEL_32;
      }

      v191 = objc_msgSend_topology(v8, v180, v181, v182, v187, v188, v189, v190, v183, v184, v185, v186);
      v203 = objc_msgSend_faceTopology(v191, v192, v193, v194, v199, v200, v201, v202, v195, v196, v197, v198);

      v215 = objc_msgSend_topology(v8, v204, v205, v206, v211, v212, v213, v214, v207, v208, v209, v210);
      v227 = objc_msgSend_faceCount(v215, v216, v217, v218, v223, v224, v225, v226, v219, v220, v221, v222);

      if (v203)
      {
        v228 = objc_msgSend_map(v203, v169, v170, v171, v176, v177, v178, v179, v172, v173, v174, v175);
        v240 = v228;
        if (v228)
        {
          v241 = objc_msgSend_bytes(v228, v229, v230, v231, v236, v237, v238, v239, v232, v233, v234, v235);
        }

        else
        {
          v241 = 0;
        }

        v242 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v227 = 0;
      v203 = 0;
    }

    v241 = 0;
    v242 = 1;
LABEL_14:
    switch(indexType)
    {
      case MDLIndexBitDepthUInt32:
        selfCopy3 = self;
        v484 = v242;
        __p = 0;
        v489 = 0;
        v490 = 0;
        v327 = objc_msgSend_indexCount(v8, v169, v170, v171, v176, v177, v178, v179, v172, v173, v174, v175);
        v339 = objc_msgSend_indexType(v8, v328, v329, v330, v335, v336, v337, v338, v331, v332, v333, v334);
        v351 = objc_msgSend_geometryType(v8, v340, v341, v342, v347, v348, v349, v350, v343, v344, v345, v346);
        sub_239F5960C(&__p, v157, v327, v241, v227, v339, v351, geometryType);
        v353 = __p;
        v352 = v489;
        v354 = objc_alloc(MEMORY[0x277CBEA90]);
        v243 = objc_msgSend_initWithBytes_length_(v354, v355, __p, v489 - __p, v360, v361, v362, v363, v356, v357, v358, v359);
        v289 = (v352 - v353) >> 2;
        goto LABEL_20;
      case MDLIndexBitDepthUInt16:
        selfCopy3 = self;
        v484 = v242;
        __p = 0;
        v489 = 0;
        v490 = 0;
        v290 = objc_msgSend_indexCount(v8, v169, v170, v171, v176, v177, v178, v179, v172, v173, v174, v175);
        v302 = objc_msgSend_indexType(v8, v291, v292, v293, v298, v299, v300, v301, v294, v295, v296, v297);
        v314 = objc_msgSend_geometryType(v8, v303, v304, v305, v310, v311, v312, v313, v306, v307, v308, v309);
        sub_239F58DF4(&__p, v157, v290, v241, v227, v302, v314, geometryType);
        v316 = __p;
        v315 = v489;
        v317 = objc_alloc(MEMORY[0x277CBEA90]);
        v243 = objc_msgSend_initWithBytes_length_(v317, v318, __p, v489 - __p, v323, v324, v325, v326, v319, v320, v321, v322);
        v289 = (v315 - v316) >> 1;
        goto LABEL_20;
      case MDLIndexBitDepthUInt8:
        selfCopy3 = self;
        v484 = v242;
        __p = 0;
        v489 = 0;
        v490 = 0;
        objc_msgSend_indexCount(v8, v169, v170, v171, v176, v177, v178, v179, v172, v173, v174, v175);
        objc_msgSend_indexType(v8, v244, v245, v246, v251, v252, v253, v254, v247, v248, v249, v250);
        objc_msgSend_geometryType(v8, v255, v256, v257, v262, v263, v264, v265, v258, v259, v260, v261);
        sub_239F5859C(&__p);
        v267 = __p;
        v266 = v489;
        v268 = objc_alloc(MEMORY[0x277CBEA90]);
        v243 = objc_msgSend_initWithBytes_length_(v268, v269, __p, v489 - __p, v274, v275, v276, v277, v270, v271, v272, v273);
        v289 = v266 - v267;
LABEL_20:
        if (__p)
        {
          v489 = __p;
          operator delete(__p);
        }

        v364 = objc_msgSend_indexBuffer(v8, v278, v279, v280, v285, v286, v287, v288, v281, v282, v283, v284);
        v376 = objc_msgSend_allocator(v364, v365, v366, v367, v372, v373, v374, v375, v368, v369, v370, v371);
        v386 = objc_msgSend_newBufferWithData_type_(v376, v377, v243, 2, v382, v383, v384, v385, v378, v379, v380, v381);

        if (objc_msgSend_conformsToProtocol_(v386, v387, &unk_284D24D98, v388, v393, v394, v395, v396, v389, v390, v391, v392))
        {
          v408 = v386;
          v419 = objc_msgSend_stringByAppendingString_(@"mesh", v409, @"-Indices", v410, v415, v416, v417, v418, v411, v412, v413, v414);
          objc_msgSend_setName_(v408, v420, v419, v421, v426, v427, v428, v429, v422, v423, v424, v425);
        }

        if (((geometryType == MDLGeometryTypeVariableTopology) & v484) != 0)
        {
          v430 = 0;
        }

        else
        {
          v430 = v203;
        }

        if (v430 && objc_msgSend_conformsToProtocol_(v430, v397, &unk_284D24D98, v399, v404, v405, v406, v407, v400, v401, v402, v403))
        {
          v431 = v430;
          v442 = objc_msgSend_stringByAppendingString_(@"mesh", v432, @"-Indices", v433, v438, v439, v440, v441, v434, v435, v436, v437);
          objc_msgSend_setName_(v431, v443, v442, v444, v449, v450, v451, v452, v445, v446, v447, v448);
        }

        v453 = objc_msgSend_name(v8, v397, v398, v399, v404, v405, v406, v407, v400, v401, v402, v403);
        v465 = objc_msgSend_material(v8, v454, v455, v456, v461, v462, v463, v464, v457, v458, v459, v460);
        v477 = objc_msgSend_topology(v8, v466, v467, v468, v473, v474, v475, v476, v469, v470, v471, v472);
        self = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(selfCopy3, v478, v453, v386, v479, v480, v481, v482, v289, indexType, geometryType, v465, v477);

        v203 = v430;
        selfCopy5 = self;
        goto LABEL_32;
    }

    v243 = 0;
    selfCopy5 = 0;
LABEL_32:

    objc_autoreleasePoolPop(context);
    goto LABEL_33;
  }

  v42 = objc_msgSend_name(v8, v31, v32, v33, v38, v39, v40, v41, v34, v35, v36, v37);
  v54 = objc_msgSend_indexBuffer(v8, v43, v44, v45, v50, v51, v52, v53, v46, v47, v48, v49);
  v66 = objc_msgSend_indexCount(v8, v55, v56, v57, v62, v63, v64, v65, v58, v59, v60, v61);
  v78 = objc_msgSend_indexType(v8, v67, v68, v69, v74, v75, v76, v77, v70, v71, v72, v73);
  v90 = objc_msgSend_geometryType(v8, v79, v80, v81, v86, v87, v88, v89, v82, v83, v84, v85);
  v102 = objc_msgSend_material(v8, v91, v92, v93, v98, v99, v100, v101, v94, v95, v96, v97);
  v114 = objc_msgSend_topology(v8, v103, v104, v105, v110, v111, v112, v113, v106, v107, v108, v109);
  self = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(self, v115, v42, v54, v116, v117, v118, v119, v66, v78, v90, v102, v114);

  selfCopy5 = self;
LABEL_33:

  return selfCopy5;
}

- (id)indexBufferAsIndexType:(MDLIndexBitDepth)indexType
{
  if (self->_indexType == indexType)
  {
    v4 = self->_indexBuffer;
    goto LABEL_37;
  }

  v6 = objc_autoreleasePoolPush();
  __src = 0;
  v238 = 0;
  v239 = 0;
  sub_239EB2474(&__src, self->_indexCount);
  v18 = self->_indexType;
  switch(v18)
  {
    case 8uLL:
      v61 = objc_msgSend_map(self->_indexBuffer, v7, v8, v9, v14, v15, v16, v17, v10, v11, v12, v13);
      v73 = objc_msgSend_bytes(v61, v62, v63, v64, v69, v70, v71, v72, v65, v66, v67, v68);

      indexCount = self->_indexCount;
      if (indexCount)
      {
        v75 = __src;
        do
        {
          v76 = *v73++;
          *v75++ = v76;
          --indexCount;
        }

        while (indexCount);
      }

      break;
    case 0x10uLL:
      v45 = objc_msgSend_map(self->_indexBuffer, v7, v8, v9, v14, v15, v16, v17, v10, v11, v12, v13);
      v57 = objc_msgSend_bytes(v45, v46, v47, v48, v53, v54, v55, v56, v49, v50, v51, v52);

      v58 = self->_indexCount;
      if (v58)
      {
        v59 = __src;
        do
        {
          v60 = *v57++;
          *v59++ = v60;
          --v58;
        }

        while (v58);
      }

      break;
    case 0x20uLL:
      v19 = objc_msgSend_map(self->_indexBuffer, v7, v8, v9, v14, v15, v16, v17, v10, v11, v12, v13);
      v31 = objc_msgSend_bytes(v19, v20, v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);

      v42 = self->_indexCount;
      if (v42)
      {
        v43 = __src;
        do
        {
          v44 = *v31++;
          *v43++ = v44;
          --v42;
        }

        while (v42);
      }

      break;
    default:
      goto LABEL_25;
  }

  switch(indexType)
  {
    case MDLIndexBitDepthUInt32:
      v77 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v32, 8 * self->_indexCount, v33, v38, v39, v40, v41, v34, v35, v36, v37);
      v170 = v77;
      v182 = objc_msgSend_mutableBytes(v170, v171, v172, v173, v178, v179, v180, v181, v174, v175, v176, v177);
      memcpy(v182, __src, 4 * self->_indexCount);
      v194 = objc_msgSend_allocator(self->_indexBuffer, v183, v184, v185, v190, v191, v192, v193, v186, v187, v188, v189);
      v4 = objc_msgSend_newBufferWithData_type_(v194, v195, v77, 2, v200, v201, v202, v203, v196, v197, v198, v199);

      if (!objc_msgSend_conformsToProtocol_(v4, v204, &unk_284D24D98, v205, v210, v211, v212, v213, v206, v207, v208, v209))
      {
LABEL_33:

        goto LABEL_34;
      }

LABEL_32:
      v214 = v4;
      v225 = objc_msgSend_stringByAppendingString_(@"mesh", v215, @"-Indices", v216, v221, v222, v223, v224, v217, v218, v219, v220);
      objc_msgSend_setName_(v214, v226, v225, v227, v232, v233, v234, v235, v228, v229, v230, v231);

      v4 = v214;
      goto LABEL_33;
    case MDLIndexBitDepthUInt16:
      v77 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v32, 8 * self->_indexCount, v33, v38, v39, v40, v41, v34, v35, v36, v37);
      v123 = v77;
      v135 = objc_msgSend_mutableBytes(v123, v124, v125, v126, v131, v132, v133, v134, v127, v128, v129, v130);
      v147 = self->_indexCount;
      if (v147)
      {
        v148 = __src;
        do
        {
          v149 = *v148++;
          *v135++ = v149;
          --v147;
        }

        while (v147);
      }

      v150 = objc_msgSend_allocator(self->_indexBuffer, v136, v137, v138, v143, v144, v145, v146, v139, v140, v141, v142);
      v4 = objc_msgSend_newBufferWithData_type_(v150, v151, v77, 2, v156, v157, v158, v159, v152, v153, v154, v155);

      if (!objc_msgSend_conformsToProtocol_(v4, v160, &unk_284D24D98, v161, v166, v167, v168, v169, v162, v163, v164, v165))
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    case MDLIndexBitDepthUInt8:
      v77 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v32, 8 * self->_indexCount, v33, v38, v39, v40, v41, v34, v35, v36, v37);
      v78 = v77;
      v90 = objc_msgSend_mutableBytes(v78, v79, v80, v81, v86, v87, v88, v89, v82, v83, v84, v85);
      if (self->_indexCount)
      {
        v102 = 0;
        do
        {
          *(v90 + v102) = *(__src + v102);
          ++v102;
        }

        while (self->_indexCount > v102);
      }

      v103 = objc_msgSend_allocator(self->_indexBuffer, v91, v92, v93, v98, v99, v100, v101, v94, v95, v96, v97);
      v4 = objc_msgSend_newBufferWithData_type_(v103, v104, v77, 2, v109, v110, v111, v112, v105, v106, v107, v108);

      if (!objc_msgSend_conformsToProtocol_(v4, v113, &unk_284D24D98, v114, v119, v120, v121, v122, v115, v116, v117, v118))
      {
        goto LABEL_33;
      }

      goto LABEL_32;
  }

LABEL_25:
  v4 = 0;
LABEL_34:
  if (__src)
  {
    v238 = __src;
    operator delete(__src);
  }

  objc_autoreleasePoolPop(v6);
LABEL_37:

  return v4;
}

- (void)debugPrintToFile:(__sFILE *)file
{
  fprintf(file, "%lu ", self->_indexCount);
  indexType = self->_indexType;
  switch(indexType)
  {
    case 0x20uLL:
      fwrite("32Bit Indices:\n", 0xFuLL, 1uLL, file);
      v75 = objc_msgSend_map(self->_indexBuffer, v52, v53, v54, v59, v60, v61, v62, v55, v56, v57, v58);
      v74 = objc_msgSend_bytes(v75, v63, v64, v65, v70, v71, v72, v73, v66, v67, v68, v69);
      sub_239EFEE20(v74, self->_indexCount);
      goto LABEL_7;
    case 0x10uLL:
      fwrite("16Bit Indices:\n", 0xFuLL, 1uLL, file);
      v75 = objc_msgSend_map(self->_indexBuffer, v29, v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
      v51 = objc_msgSend_bytes(v75, v40, v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);
      sub_239EFED8C(v51, self->_indexCount);
      goto LABEL_7;
    case 8uLL:
      fwrite("8Bit Indices:\n", 0xEuLL, 1uLL, file);
      v75 = objc_msgSend_map(self->_indexBuffer, v6, v7, v8, v13, v14, v15, v16, v9, v10, v11, v12);
      v28 = objc_msgSend_bytes(v75, v17, v18, v19, v24, v25, v26, v27, v20, v21, v22, v23);
      sub_239EFECF8(v28, self->_indexCount);
LABEL_7:

      return;
  }

  fwrite("INVALID INDEX TYPE!!!\n", 0x16uLL, 1uLL, file);
}

- (void)boundingBoxForMesh:(float32x4_t *)mesh@<X8>
{
  v5 = a2;
  mesh[1].i64[0] = 0;
  mesh[1].i64[1] = 0;
  __asm { FMOV            V0.4S, #-1.0 }

  *mesh = _Q0;
  v18 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v5, v10, @"position", 786435, _Q0, v15, v16, v17, v11, v12, v13, v14);
  v30 = v18;
  if (v18 && objc_msgSend_format(v18, v19, v20, v21, v26, v27, v28, v29, v22, v23, v24, v25))
  {
    v42 = objc_msgSend_dataStart(v30, v31, v32, v33, v38, v39, v40, v41, v34, v35, v36, v37);
    v54 = objc_msgSend_stride(v30, v43, v44, v45, v50, v51, v52, v53, v46, v47, v48, v49);
    v66 = v54;
    if (v42 && v54 != 0)
    {
      v68 = self[3];
      if (v68)
      {
        v69 = objc_msgSend_map(v68, v55, v56, v57, v62, v63, v64, v65, v58, v59, v60, v61);
        v81 = v69;
        if (v69 && objc_msgSend_bytes(v69, v70, v71, v72, v77, v78, v79, v80, v73, v74, v75, v76))
        {
          v100 = objc_msgSend_bytes(v81, v82, v83, v84, v89, v90, v91, v92, v85, v86, v87, v88);
          v105 = self[6];
          switch(v105)
          {
            case 8:
              for (i = self[2]; i; --i)
              {
                v117 = *v100;
                v100 = (v100 + 1);
                v118 = objc_msgSend_bufferSize(v30, v93, v94, v95, v101, v102, v103, v104, v96, v97, v98, v99);
                v119 = v66 * v117;
                if (v119 + 12 <= v118)
                {
                  v120 = v42 + v119;
                  v101.n128_u64[0] = *v120;
                  v101.n128_u32[2] = *(v120 + 8);
                  v121 = v101;
                  v122 = v101;
                  sub_239EB1DF0(mesh, &v121);
                }
              }

              break;
            case 16:
              for (j = self[2]; j; --j)
              {
                v112 = *v100++;
                v113 = objc_msgSend_bufferSize(v30, v93, v94, v95, v101, v102, v103, v104, v96, v97, v98, v99);
                v114 = v66 * v112;
                if (v114 + 12 <= v113)
                {
                  v115 = v42 + v114;
                  v101.n128_u64[0] = *v115;
                  v101.n128_u32[2] = *(v115 + 8);
                  v121 = v101;
                  v122 = v101;
                  sub_239EB1DF0(mesh, &v121);
                }
              }

              break;
            case 32:
              for (k = self[2]; k; --k)
              {
                v107 = *v100;
                v100 += 2;
                v108 = objc_msgSend_bufferSize(v30, v93, v94, v95, v101, v102, v103, v104, v96, v97, v98, v99);
                v109 = v66 * v107;
                if (v109 + 12 <= v108)
                {
                  v110 = v42 + v109;
                  v101.n128_u64[0] = *v110;
                  v101.n128_u32[2] = *(v110 + 8);
                  v121 = v101;
                  v122 = v101;
                  sub_239EB1DF0(mesh, &v121);
                }
              }

              break;
          }
        }
      }
    }
  }
}

@end