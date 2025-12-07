@interface MDLMesh
+ (MDLMesh)newBoxWithDimensions:(vector_float3)dimensions segments:(vector_uint3)segments geometryType:(MDLGeometryType)geometryType inwardNormals:(BOOL)inwardNormals allocator:(id)allocator;
+ (MDLMesh)newCapsuleWithHeight:(float)height radii:(vector_float2)radii radialSegments:(NSUInteger)radialSegments verticalSegments:(NSUInteger)verticalSegments hemisphereSegments:(NSUInteger)hemisphereSegments geometryType:(MDLGeometryType)geometryType inwardNormals:(BOOL)inwardNormals allocator:(id)allocator;
+ (MDLMesh)newCylinderWithHeight:(float)height radii:(vector_float2)radii radialSegments:(NSUInteger)radialSegments verticalSegments:(NSUInteger)verticalSegments geometryType:(MDLGeometryType)geometryType inwardNormals:(BOOL)inwardNormals allocator:(id)allocator;
+ (MDLMesh)newEllipsoidWithRadii:(vector_float3)radii radialSegments:(NSUInteger)radialSegments verticalSegments:(NSUInteger)verticalSegments geometryType:(MDLGeometryType)geometryType inwardNormals:(BOOL)inwardNormals hemisphere:(BOOL)hemisphere allocator:(id)allocator;
+ (MDLMesh)newEllipticalConeWithHeight:(float)height radii:(vector_float2)radii radialSegments:(NSUInteger)radialSegments verticalSegments:(NSUInteger)verticalSegments geometryType:(MDLGeometryType)geometryType inwardNormals:(BOOL)inwardNormals allocator:(id)allocator;
+ (MDLMesh)newIcosahedronWithRadius:(float)radius inwardNormals:(BOOL)inwardNormals allocator:(id)allocator;
+ (MDLMesh)newIcosahedronWithRadius:(float)radius inwardNormals:(BOOL)inwardNormals geometryType:(MDLGeometryType)geometryType allocator:(id)allocator;
+ (MDLMesh)newPlaneWithDimensions:(vector_float2)dimensions segments:(vector_uint2)segments geometryType:(MDLGeometryType)geometryType allocator:(id)allocator;
+ (MDLMesh)newSubdividedMesh:(MDLMesh *)mesh submeshIndex:(NSUInteger)submeshIndex subdivisionLevels:(NSUInteger)subdivisionLevels;
- (BOOL)generateAmbientOcclusionTextureWithQuality:(float)bakeQuality attenuationFactor:(float)attenuationFactor objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName materialPropertyNamed:(NSString *)materialPropertyName;
- (BOOL)generateAmbientOcclusionTextureWithSize:(vector_int2)textureSize raysPerSample:(NSInteger)raysPerSample attenuationFactor:(float)attenuationFactor objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName materialPropertyNamed:(NSString *)materialPropertyName;
- (BOOL)generateAmbientOcclusionVertexColorsWithQuality:(float)bakeQuality attenuationFactor:(float)attenuationFactor objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName;
- (BOOL)generateAmbientOcclusionVertexColorsWithRaysPerSample:(NSInteger)raysPerSample attenuationFactor:(float)attenuationFactor objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName;
- (BOOL)generateLightMapTextureWithQuality:(float)bakeQuality lightsToConsider:(NSArray *)lightsToConsider objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName materialPropertyNamed:(NSString *)materialPropertyName;
- (BOOL)generateLightMapTextureWithTextureSize:(vector_int2)textureSize lightsToConsider:(NSArray *)lightsToConsider objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName materialPropertyNamed:(NSString *)materialPropertyName;
- (BOOL)generateLightMapVertexColorsWithLightsToConsider:(NSArray *)lightsToConsider objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName;
- (BOOL)makeVerticesUniqueAndReturnError:(NSError *)error;
- (BOOL)triangulate;
- (MDLAxisAlignedBoundingBox)boundingBox;
- (MDLMesh)initBoxWithExtent:(vector_float3)extent segments:(vector_uint3)segments inwardNormals:(BOOL)inwardNormals geometryType:(MDLGeometryType)geometryType allocator:(id)allocator;
- (MDLMesh)initCapsuleWithExtent:(vector_float3)extent cylinderSegments:(vector_uint2)segments hemisphereSegments:(int)hemisphereSegments inwardNormals:(BOOL)inwardNormals geometryType:(MDLGeometryType)geometryType allocator:(id)allocator;
- (MDLMesh)initConeWithExtent:(vector_float3)extent segments:(vector_uint2)segments inwardNormals:(BOOL)inwardNormals cap:(BOOL)cap geometryType:(MDLGeometryType)geometryType allocator:(id)allocator;
- (MDLMesh)initCylinderWithExtent:(vector_float3)extent segments:(vector_uint2)segments inwardNormals:(BOOL)inwardNormals topCap:(BOOL)topCap bottomCap:(BOOL)bottomCap geometryType:(MDLGeometryType)geometryType allocator:(id)allocator;
- (MDLMesh)initHemisphereWithExtent:(vector_float3)extent segments:(vector_uint2)segments inwardNormals:(BOOL)inwardNormals cap:(BOOL)cap geometryType:(MDLGeometryType)geometryType allocator:(id)allocator;
- (MDLMesh)initIcosahedronWithExtent:(vector_float3)extent inwardNormals:(BOOL)inwardNormals geometryType:(MDLGeometryType)geometryType allocator:(id)allocator;
- (MDLMesh)initMeshBySubdividingMesh:(MDLMesh *)mesh submeshIndex:(int)submeshIndex subdivisionLevels:(unsigned int)subdivisionLevels allocator:(id)allocator;
- (MDLMesh)initPlaneWithExtent:(vector_float3)extent segments:(vector_uint2)segments geometryType:(MDLGeometryType)geometryType allocator:(id)allocator;
- (MDLMesh)initSphereWithExtent:(vector_float3)extent segments:(vector_uint2)segments inwardNormals:(BOOL)inwardNormals geometryType:(MDLGeometryType)geometryType allocator:(id)allocator;
- (MDLMesh)initWithBufferAllocator:(id)bufferAllocator;
- (MDLMesh)initWithVertexBuffer:(id)vertexBuffer vertexCount:(NSUInteger)vertexCount descriptor:(MDLVertexDescriptor *)descriptor submeshes:(NSArray *)submeshes;
- (MDLMesh)initWithVertexBuffers:(NSArray *)vertexBuffers vertexCount:(NSUInteger)vertexCount descriptor:(MDLVertexDescriptor *)descriptor submeshes:(NSArray *)submeshes;
- (MDLVertexAttributeData)vertexAttributeDataForAttributeNamed:(NSString *)name;
- (MDLVertexAttributeData)vertexAttributeDataForAttributeNamed:(NSString *)name asFormat:(MDLVertexFormat)format;
- (MDLVertexDescriptor)vertexDescriptor;
- (__n128)inverseBasePoseForIndex:(uint64_t)index;
- (id)description;
- (int64_t)addVertexBuffer:(id)buffer;
- (void)_calculateFaceNormalsFromPositions:(float *)positions positionStride:(int64_t)stride normals:(float *)normals normalStride:(int64_t)normalStride creaseThreshold:(float)threshold;
- (void)_calculateTangentBasisFromPositions:(float *)positions positionStride:(int64_t)stride positionsBufferSize:(unint64_t)size normals:(float *)normals normalStride:(int64_t)normalStride normalsBufferSize:(unint64_t)bufferSize uvs:(float *)uvs uvStride:(int64_t)self0 uvsBufferSize:(unint64_t)self1 tangents:(float *)self2 tangentsStride:(int64_t)self3 tangentsBufferSize:(unint64_t)self4 bitagents:(float *)self5 bitangentStride:(int64_t)self6 bitangentsBufferSize:(unint64_t)self7 tangentFormat:(unint64_t)self8 selector:(SEL)self9;
- (void)_createWithVertexBuffer:(id)buffer vertexCount:(unint64_t)count descriptor:(id)descriptor submeshes:(id)submeshes;
- (void)_enumerateSubmeshesUsingBlock:(id)block stopPointer:(BOOL *)pointer;
- (void)addAttributeWithName:(NSString *)name format:(MDLVertexFormat)format;
- (void)addAttributeWithName:(NSString *)name format:(MDLVertexFormat)format type:(NSString *)type data:(NSData *)data stride:(NSInteger)stride;
- (void)addAttributeWithName:(NSString *)name format:(MDLVertexFormat)format type:(NSString *)type data:(NSData *)data stride:(NSInteger)stride time:(NSTimeInterval)time;
- (void)addNormalsWithAttributeNamed:(NSString *)attributeName creaseThreshold:(float)creaseThreshold;
- (void)addOrthTanBasisForTextureCoordinateAttributeNamed:(NSString *)textureCoordinateAttributeName normalAttributeNamed:(NSString *)normalAttributeName tangentAttributeNamed:(NSString *)tangentAttributeName;
- (void)addTangentBasisForTextureCoordinateAttributeNamed:(NSString *)textureCoordinateAttributeName normalAttributeNamed:(NSString *)normalAttributeName tangentAttributeNamed:(NSString *)tangentAttributeName;
- (void)addTangentBasisForTextureCoordinateAttributeNamed:(NSString *)textureCoordinateAttributeName tangentAttributeNamed:(NSString *)tangentAttributeName bitangentAttributeNamed:(NSString *)bitangentAttributeName;
- (void)addUnwrappedTextureCoordinatesForAttributeNamed:(NSString *)textureCoordinateAttributeName;
- (void)copyDataVector:(void *)vector toAttr:(id)attr;
- (void)createSourceDataVector:(void *)vector attr:(id)attr srcElementCount:(int)count dstElementCount:(int)elementCount;
- (void)debugPrintToFile:(__sFILE *)file;
- (void)flipTextureCoordinatesInAttributeNamed:(NSString *)textureCoordinateAttributeName;
- (void)removeAttributeNamed:(NSString *)name;
- (void)replaceAttributeNamed:(NSString *)name withData:(MDLVertexAttributeData *)newData;
- (void)setSubmeshes:(NSMutableArray *)submeshes;
- (void)setVertexBuffers:(NSArray *)vertexBuffers;
- (void)setVertexDescriptor:(MDLVertexDescriptor *)vertexDescriptor;
- (void)updateAttributeNamed:(NSString *)name withData:(MDLVertexAttributeData *)newData;
@end

@implementation MDLMesh

- (MDLMesh)initConeWithExtent:(vector_float3)extent segments:(vector_uint2)segments inwardNormals:(BOOL)inwardNormals cap:(BOOL)cap geometryType:(MDLGeometryType)geometryType allocator:(id)allocator
{
  v9 = inwardNormals;
  v10 = extent.i32[0];
  v11 = v8;
  v648 = *segments.i8;
  v20 = cap;
  if ((v9 - 1) >= 2)
  {
    v25 = MEMORY[0x277CBEAD8];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v25, v29, @"ModelIOException", @"[%@ %@]: geometryType for Cone must be MDLGeometryTypeTriangles or MDLGeometryTypeLines", v34, v35, v36, v37, v30, v31, v32, v33, v27, v28);
  }

  v38 = objc_msgSend_initWithBufferAllocator_(self, v14, v20, v15, v21, v22, v23, v24, v16, v17, v18, v19);
  v50 = v38;
  if (v38)
  {
    v51 = objc_msgSend_allocator(v38, v39, v40, v41, v46, v47, v48, v49, v42, v43, v44, v45);

    objc_msgSend_setName_(v50, v52, @"cone", v53, v58, v59, v60, v61, v54, v55, v56, v57);
    v641 = v51;
    v649 = vmax_u32(v11, 0x100000003);
    v62 = objc_autoreleasePoolPush();
    v63 = vadd_s32(v649, 0x100000001);
    v64 = v63.u32[0];
    v65 = (v63.i32[0] * v63.i32[1] + 2);
    v659 = 0;
    v660 = 0;
    v661 = 0;
    sub_239E95D48(&v659, 3 * v65);
    v656 = 0;
    v657 = 0;
    v658 = 0;
    sub_239E95D48(&v656, 3 * v65);
    context = v62;
    v640 = v65;
    __p = 0;
    v654 = 0;
    v655 = 0;
    sub_239E95D48(&__p, 2 * v65);
    v66 = 0;
    v67 = v648;
    v646 = vmuls_lane_f32(0.5, v648, 2);
    v68 = v649.u32[0];
    v69 = 6.28318531 / v649.u32[0];
    v70 = v649.u32[1];
    v643 = (v648.f32[1] / v649.u32[1]) * (v649.u32[1] * 0.5);
    v644 = v648.f32[1] / v649.u32[1];
    if (v10)
    {
      v67.f32[0] = -1.0;
    }

    else
    {
      v67.f32[0] = 1.0;
    }

    v647 = v67;
    if (v10)
    {
      v71 = 1.0;
    }

    else
    {
      v71 = -1.0;
    }

    v645 = v649.u32[1];
    v642 = 1.0 / v649.u32[1];
    do
    {
      v72 = 0;
      v73 = (v645 - v66) * v642;
      v74 = (0.5 * v648.f32[0]) * v73;
      v75 = v646 * v73;
      do
      {
        v76 = (v72 * v69) + 1.57079633;
        v77 = __sincosf_stret(v76);
        v78.f32[0] = v74 * v77.__cosval;
        v650 = v78;
        v652 = v74 * v77.__cosval;
        sub_239E798A4(&v659, &v652);
        v652 = -(v643 - (v644 * v66));
        sub_239E798A4(&v659, &v652);
        v652 = v75 * v77.__sinval;
        sub_239E798A4(&v659, &v652);
        v79 = v650;
        v79.f32[1] = (v648.f32[0] * -0.25) / v648.f32[1];
        v79.f32[2] = v75 * v77.__sinval;
        v80 = vmulq_f32(v79, v79);
        *&v81 = vaddv_f32(*v80.f32) + v80.f32[2];
        *v80.f32 = vrsqrte_f32(v81);
        *v80.f32 = vmul_f32(vrsqrts_f32(v81, vmul_f32(*v80.f32, *v80.f32)), *v80.f32);
        *v80.f32 = vmul_f32(*v80.f32, vrsqrts_f32(v81, vmul_f32(*v80.f32, *v80.f32)));
        v651 = vmulq_n_f32(v79, vmulq_f32(v80, v647).f32[0]);
        v652 = v651.f32[0];
        sub_239E798A4(&v656, &v652);
        v652 = v651.f32[1];
        sub_239E798A4(&v656, &v652);
        v652 = v651.f32[2];
        sub_239E798A4(&v656, &v652);
        v652 = (cosf(v72 * v69) * 0.25) + 0.25;
        sub_239E798A4(&__p, &v652);
        v652 = ((v66 * -3.0) * (1.0 / v68)) + 0.66667;
        sub_239E798A4(&__p, &v652);
        ++v72;
      }

      while (v72 <= v68);
      if (!v66)
      {
        v82 = 0;
        v83 = 0;
        v84 = 4;
        do
        {
          sub_239E798A4(&v659, &v659[v82]);
          sub_239E798A4(&v659, &v659[v82 + 1]);
          sub_239E798A4(&v659, &v659[v82 + 2]);
          sub_239E798A4(&__p, (__p + v84 - 4));
          sub_239E798A4(&__p, (__p + v84));
          v85 = (v83 * v69) + 1.57079633;
          v86 = __sincosf_stret(v85);
          v87 = (__p + v84);
          *(v87 - 1) = (v86.__cosval * 0.5) + 0.5;
          *v87 = (v86.__sinval * -0.16667) + 0.83333;
          sub_239E798A4(&v656, (v656 + v82 * 4));
          sub_239E798A4(&v656, (v656 + v82 * 4 + 4));
          sub_239E798A4(&v656, (v656 + v82 * 4 + 8));
          v88 = (v656 + v82 * 4);
          *v88 = 0.0;
          v88[1] = v71;
          v88[2] = 0.0;
          ++v83;
          v82 += 3;
          v84 += 8;
        }

        while (v64 != v83);
      }

      ++v66;
    }

    while (v66 <= v70);
    v652 = 0.0;
    sub_239E798A4(&v659, &v652);
    sub_239E798A4(&v659, v659 + 1);
    v652 = 0.0;
    sub_239E798A4(&v659, &v652);
    v652 = 0.5;
    sub_239E798A4(&__p, &v652);
    v652 = 0.83333;
    sub_239E798A4(&__p, &v652);
    v652 = 0.0;
    sub_239E798A4(&v656, &v652);
    v652 = v71;
    sub_239E798A4(&v656, &v652);
    v652 = 0.0;
    sub_239E798A4(&v656, &v652);
    v89 = MEMORY[0x277CCACA8];
    v101 = objc_msgSend_name(v50, v90, v91, v92, v97, v98, v99, v100, v93, v94, v95, v96);
    v112 = objc_msgSend_stringWithFormat_(v89, v102, @"%@-%@", v103, v108, v109, v110, v111, v104, v105, v106, v107, v101, @"position");
    v113 = objc_alloc(MEMORY[0x277CBEA90]);
    v122 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v113, v114, v659, v660 - v659, v118, v119, v120, v121, 0, v115, v116, v117);
    objc_msgSend_addAttributeWithName_format_type_data_stride_(v50, v123, v112, 786435, v125, v126, v127, v128, @"position", v122, 12, v124);

    v129 = MEMORY[0x277CCACA8];
    v141 = objc_msgSend_name(v50, v130, v131, v132, v137, v138, v139, v140, v133, v134, v135, v136);
    v152 = objc_msgSend_stringWithFormat_(v129, v142, @"%@-%@", v143, v148, v149, v150, v151, v144, v145, v146, v147, v141, @"normal");
    v153 = objc_alloc(MEMORY[0x277CBEA90]);
    v162 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v153, v154, v656, v657 - v656, v158, v159, v160, v161, 0, v155, v156, v157);
    objc_msgSend_addAttributeWithName_format_type_data_stride_(v50, v163, v152, 786435, v165, v166, v167, v168, @"normal", v162, 12, v164);

    v169 = MEMORY[0x277CCACA8];
    v181 = objc_msgSend_name(v50, v170, v171, v172, v177, v178, v179, v180, v173, v174, v175, v176);
    v192 = objc_msgSend_stringWithFormat_(v169, v182, @"%@-%@", v183, v188, v189, v190, v191, v184, v185, v186, v187, v181, @"textureCoordinate");
    v193 = objc_alloc(MEMORY[0x277CBEA90]);
    v202 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v193, v194, __p, v654 - __p, v198, v199, v200, v201, 0, v195, v196, v197);
    objc_msgSend_addAttributeWithName_format_type_data_stride_(v50, v203, v192, 786434, v205, v206, v207, v208, @"textureCoordinate", v202, 8, v204);

    v220 = objc_msgSend_name(v50, v209, v210, v211, v216, v217, v218, v219, v212, v213, v214, v215);
    if (v640 > 0xFFFE)
    {
      sub_239EA0B1C(v220, v641, v68, v70, (v660 - v659) / 3uLL - 1, v9);
    }

    else
    {
      sub_239EA06E8(v220, v641, v68, v70, (v660 - v659) / 3uLL - 1, v9);
    }
    v222 = ;

    objc_msgSend_setVertexCount_(v50, v223, (v660 - v659) / 3uLL, v224, v229, v230, v231, v232, v225, v226, v227, v228);
    v233 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_setSubmeshes_(v50, v234, v233, v235, v240, v241, v242, v243, v236, v237, v238, v239);

    v255 = objc_msgSend_submeshes(v50, v244, v245, v246, v251, v252, v253, v254, v247, v248, v249, v250);
    objc_msgSend_addObject_(v255, v256, v222, v257, v262, v263, v264, v265, v258, v259, v260, v261);

    v266 = objc_alloc_init(MDLVertexDescriptor);
    v278 = objc_msgSend_attributes(v266, v267, v268, v269, v274, v275, v276, v277, v270, v271, v272, v273);
    v289 = objc_msgSend_objectAtIndexedSubscript_(v278, v279, 0, v280, v285, v286, v287, v288, v281, v282, v283, v284);
    objc_msgSend_setName_(v289, v290, @"position", v291, v296, v297, v298, v299, v292, v293, v294, v295);

    v311 = objc_msgSend_attributes(v266, v300, v301, v302, v307, v308, v309, v310, v303, v304, v305, v306);
    v322 = objc_msgSend_objectAtIndexedSubscript_(v311, v312, 0, v313, v318, v319, v320, v321, v314, v315, v316, v317);
    objc_msgSend_setFormat_(v322, v323, 786435, v324, v329, v330, v331, v332, v325, v326, v327, v328);

    v344 = objc_msgSend_attributes(v266, v333, v334, v335, v340, v341, v342, v343, v336, v337, v338, v339);
    v355 = objc_msgSend_objectAtIndexedSubscript_(v344, v345, 0, v346, v351, v352, v353, v354, v347, v348, v349, v350);
    objc_msgSend_setBufferIndex_(v355, v356, 0, v357, v362, v363, v364, v365, v358, v359, v360, v361);

    v377 = objc_msgSend_attributes(v266, v366, v367, v368, v373, v374, v375, v376, v369, v370, v371, v372);
    v388 = objc_msgSend_objectAtIndexedSubscript_(v377, v378, 1, v379, v384, v385, v386, v387, v380, v381, v382, v383);
    objc_msgSend_setName_(v388, v389, @"normal", v390, v395, v396, v397, v398, v391, v392, v393, v394);

    v410 = objc_msgSend_attributes(v266, v399, v400, v401, v406, v407, v408, v409, v402, v403, v404, v405);
    v421 = objc_msgSend_objectAtIndexedSubscript_(v410, v411, 1, v412, v417, v418, v419, v420, v413, v414, v415, v416);
    objc_msgSend_setFormat_(v421, v422, 786435, v423, v428, v429, v430, v431, v424, v425, v426, v427);

    v443 = objc_msgSend_attributes(v266, v432, v433, v434, v439, v440, v441, v442, v435, v436, v437, v438);
    v454 = objc_msgSend_objectAtIndexedSubscript_(v443, v444, 1, v445, v450, v451, v452, v453, v446, v447, v448, v449);
    objc_msgSend_setBufferIndex_(v454, v455, 0, v456, v461, v462, v463, v464, v457, v458, v459, v460);

    v476 = objc_msgSend_attributes(v266, v465, v466, v467, v472, v473, v474, v475, v468, v469, v470, v471);
    v487 = objc_msgSend_objectAtIndexedSubscript_(v476, v477, 2, v478, v483, v484, v485, v486, v479, v480, v481, v482);
    objc_msgSend_setName_(v487, v488, @"textureCoordinate", v489, v494, v495, v496, v497, v490, v491, v492, v493);

    v509 = objc_msgSend_attributes(v266, v498, v499, v500, v505, v506, v507, v508, v501, v502, v503, v504);
    v520 = objc_msgSend_objectAtIndexedSubscript_(v509, v510, 2, v511, v516, v517, v518, v519, v512, v513, v514, v515);
    objc_msgSend_setFormat_(v520, v521, 786434, v522, v527, v528, v529, v530, v523, v524, v525, v526);

    v542 = objc_msgSend_attributes(v266, v531, v532, v533, v538, v539, v540, v541, v534, v535, v536, v537);
    v553 = objc_msgSend_objectAtIndexedSubscript_(v542, v543, 2, v544, v549, v550, v551, v552, v545, v546, v547, v548);
    objc_msgSend_setBufferIndex_(v553, v554, 0, v555, v560, v561, v562, v563, v556, v557, v558, v559);

    objc_msgSend_setPackedOffsets(v266, v564, v565, v566, v571, v572, v573, v574, v567, v568, v569, v570);
    objc_msgSend_setPackedStrides(v266, v575, v576, v577, v582, v583, v584, v585, v578, v579, v580, v581);
    v586 = [MDLAsset alloc];
    v598 = objc_msgSend_vertexDescriptor(v50, v587, v588, v589, v594, v595, v596, v597, v590, v591, v592, v593);
    v607 = objc_msgSend_initWithURL_vertexDescriptor_bufferAllocator_(v586, v599, 0, v598, v603, v604, v605, v606, v641, v600, v601, v602);

    objc_msgSend_addObject_(v607, v608, v50, v609, v614, v615, v616, v617, v610, v611, v612, v613);
    objc_msgSend__conformVertexBuffers_error_(v607, v618, v266, 0, v623, v624, v625, v626, v619, v620, v621, v622);
    objc_msgSend_removeObject_(v607, v627, v50, v628, v633, v634, v635, v636, v629, v630, v631, v632);

    if (__p)
    {
      v654 = __p;
      operator delete(__p);
    }

    v221 = v641;
    if (v656)
    {
      v657 = v656;
      operator delete(v656);
    }

    if (v659)
    {
      v660 = v659;
      operator delete(v659);
    }

    objc_autoreleasePoolPop(context);
    v637 = v50;
  }

  else
  {
    v221 = v20;
  }

  return v50;
}

+ (MDLMesh)newEllipticalConeWithHeight:(float)height radii:(vector_float2)radii radialSegments:(NSUInteger)radialSegments verticalSegments:(NSUInteger)verticalSegments geometryType:(MDLGeometryType)geometryType inwardNormals:(BOOL)inwardNormals allocator:(id)allocator
{
  v9 = inwardNormals;
  v11 = verticalSegments;
  v12 = radialSegments;
  v22 = *&height;
  v23 = *radii.f32;
  v13 = allocator;
  v14 = [MDLMesh alloc];
  v15.n128_u64[0] = __PAIR64__(v11, v12);
  v16 = v23;
  v16.n128_u32[1] = v22.n128_u32[0];
  v16.n128_u32[2] = v23.n128_u32[1];
  inited = objc_msgSend_initConeWithExtent_segments_inwardNormals_cap_geometryType_allocator_(v14, v17, v9, 1, v16, v15, v23, v22, geometryType, v13, v18, v19);

  return inited;
}

- (MDLMesh)initBoxWithExtent:(vector_float3)extent segments:(vector_uint3)segments inwardNormals:(BOOL)inwardNormals geometryType:(MDLGeometryType)geometryType allocator:(id)allocator
{
  v8 = extent.u64[1];
  v9 = extent.i32[0];
  v316 = v7;
  v330[6] = *MEMORY[0x277D85DE8];
  v18 = inwardNormals;
  if (v8 > 4 || ((1 << v8) & 0x16) == 0)
  {
    v23 = MEMORY[0x277CBEAD8];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v23, v27, @"ModelIOException", @"[%@ %@]: geometryType must be MDLGeometryTypeLines, MDLGeometryTypeTriangles, or MDLGeometryTypeQuads", v32, v33, v34, v35, v28, v29, v30, v31, v25, v26);
  }

  v36 = objc_msgSend_initWithBufferAllocator_(self, v12, v18, v13, v19, v20, v21, v22, v14, v15, v16, v17);
  v48 = v36;
  if (!v36)
  {
    v307 = v18;
    goto LABEL_49;
  }

  objc_msgSend_allocator(v36, v37, v38, v39, v44, v45, v46, v47, v40, v41, v42, v43);
  v312 = aSelector = a2;
  v313 = v48;

  context = objc_autoreleasePoolPush();
  v311 = sub_239EA5150();
  if (DWORD1(v316) <= 1)
  {
    v49 = 1;
  }

  else
  {
    v49 = DWORD1(v316);
  }

  if (v316 <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = v316;
  }

  v325 = 0;
  v326 = 0;
  v327 = 0;
  sub_239EA53E4(&v325, DWORD2(v316), v49, v9, xmmword_239F9C050, xmmword_239F9C060, *&segments.i32[2], *&segments.i32[1], *segments.i32);
  sub_239EA53E4(&v325, DWORD2(v316), v49, v9, xmmword_239F9C070, xmmword_239F9C060, *&segments.i32[2], *&segments.i32[1], *segments.i32);
  sub_239EA53E4(&v325, v50, DWORD2(v316), v9, xmmword_239F9AD10, xmmword_239F9C070, *segments.i32, *&segments.i32[2], *&segments.i32[1]);
  sub_239EA53E4(&v325, v50, DWORD2(v316), v9, xmmword_239F9AD10, xmmword_239F9C050, *segments.i32, *&segments.i32[2], *&segments.i32[1]);
  sub_239EA53E4(&v325, v50, v49, v9, xmmword_239F9AD10, xmmword_239F9C060, *segments.i32, *&segments.i32[1], *&segments.i32[2]);
  sub_239EA53E4(&v325, v50, v49, v9, xmmword_239F9C080, xmmword_239F9C060, *segments.i32, *&segments.i32[1], *&segments.i32[2]);
  v60 = 0;
  v319 = 0;
  v330[3] = v50;
  v330[4] = v50;
  v330[5] = v50;
  v330[1] = DWORD2(v316);
  v330[2] = v50;
  v330[0] = DWORD2(v316);
  v329[0] = v49;
  v329[1] = v49;
  v329[2] = DWORD2(v316);
  v329[3] = DWORD2(v316);
  v329[4] = v49;
  v329[5] = v49;
  __p = 0;
  v323 = 0;
  v324 = 0;
  do
  {
    v61 = v330[v60];
    v62 = v329[v60];
    if (v62)
    {
      v314 = v60;
      v63 = 0;
      v64 = v61 + 1;
      while (!v61)
      {
        ++v63;
LABEL_33:
        if (v63 == v62)
        {
          v60 = v314;
          goto LABEL_36;
        }
      }

      v65 = v319 + v63++ * v64;
      v66 = v61;
      while (1)
      {
        if (v8 == 4)
        {
          v321 = v65;
          sub_239EA1088(&__p, &v321);
          if (v9)
          {
            v321 = v65 + 1;
            sub_239EA1088(&__p, &v321);
            v321 = v61 + v65 + 2;
            sub_239EA1088(&__p, &v321);
            v321 = v61 + v65 + 1;
          }

          else
          {
            v321 = v61 + v65 + 1;
            sub_239EA1088(&__p, &v321);
            v321 = v61 + v65 + 2;
            sub_239EA1088(&__p, &v321);
            v321 = v65 + 1;
          }
        }

        else
        {
          if (v8 != 2)
          {
            if (v8 == 1)
            {
              v321 = v65;
              sub_239EA1088(&__p, &v321);
              v321 = v65 + 1;
              sub_239EA1088(&__p, &v321);
              v321 = v65;
              sub_239EA1088(&__p, &v321);
              v67 = v61 + v65;
              v321 = v61 + v65 + 1;
              sub_239EA1088(&__p, &v321);
              if (v66 == 1)
              {
                v321 = v65 + 1;
                sub_239EA1088(&__p, &v321);
                v321 = v67 + 2;
                sub_239EA1088(&__p, &v321);
              }

              if (v63 == v62)
              {
                v321 = v61 + v65 + 1;
                sub_239EA1088(&__p, &v321);
                v321 = v67 + 2;
                sub_239EA1088(&__p, &v321);
              }
            }

            goto LABEL_30;
          }

          v321 = v65;
          sub_239EA1088(&__p, &v321);
          if (v9)
          {
            v321 = v65 + 1;
            sub_239EA1088(&__p, &v321);
            v321 = v61 + v65 + 2;
            sub_239EA1088(&__p, &v321);
            v321 = v65;
            sub_239EA1088(&__p, &v321);
            v321 = v61 + v65 + 2;
            sub_239EA1088(&__p, &v321);
            v321 = v61 + v65 + 1;
          }

          else
          {
            v321 = v61 + v65 + 2;
            sub_239EA1088(&__p, &v321);
            v321 = v65 + 1;
            sub_239EA1088(&__p, &v321);
            v321 = v65;
            sub_239EA1088(&__p, &v321);
            v321 = v61 + v65 + 1;
            sub_239EA1088(&__p, &v321);
            v321 = v61 + v65 + 2;
          }
        }

        sub_239EA1088(&__p, &v321);
LABEL_30:
        ++v65;
        if (!--v66)
        {
          v64 = v61 + 1;
          goto LABEL_33;
        }
      }
    }

    v64 = v61 + 1;
LABEL_36:
    v319 += v64 + v64 * v62;
    ++v60;
  }

  while (v60 != 6);
  v320 = v326 - v325;
  v317 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v51, v325, v326 - v325, v56, v57, v58, v59, v52, v53, v54, v55);
  v83 = objc_msgSend_newBufferWithData_type_(v312, v68, v317, 1, v73, v74, v75, v76, v69, v70, v71, v72);
  if (!v83)
  {
    v88 = MEMORY[0x277CBEAD8];
    v89 = objc_opt_class();
    v90 = NSStringFromClass(v89);
    v91 = NSStringFromSelector(aSelector);
    objc_msgSend_raise_format_(v88, v92, @"ModelIOException", @"[%@ %@]: Could not allocate mesh buffer", v97, v98, v99, v100, v93, v94, v95, v96, v90, v91);
  }

  objc_msgSend_setName_(v313, v77, @"box", v78, v84, v85, v86, v87, v79, v80, v81, v82);
  if (objc_msgSend_conformsToProtocol_(v83, v101, &unk_284D24D98, v102, v107, v108, v109, v110, v103, v104, v105, v106))
  {
    v111 = v83;
    v112 = MEMORY[0x277CCACA8];
    v124 = objc_msgSend_name(v313, v113, v114, v115, v120, v121, v122, v123, v116, v117, v118, v119);
    v135 = objc_msgSend_stringWithFormat_(v112, v125, @"%@-%@", v126, v131, v132, v133, v134, v127, v128, v129, v130, v124, @"position");
    objc_msgSend_setName_(v111, v136, v135, v137, v142, v143, v144, v145, v138, v139, v140, v141);
  }

  v147 = __p;
  v146 = v323;
  v148 = objc_alloc(MEMORY[0x277CBEA90]);
  v315 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v148, v149, __p, v146 - v147, v153, v154, v155, v156, 0, v150, v151, v152);
  v166 = objc_msgSend_newBufferWithData_type_(v312, v157, v315, 2, v162, v163, v164, v165, v158, v159, v160, v161);
  if (objc_msgSend_conformsToProtocol_(v166, v167, &unk_284D24D98, v168, v173, v174, v175, v176, v169, v170, v171, v172))
  {
    v177 = v166;
    v189 = objc_msgSend_name(v313, v178, v179, v180, v185, v186, v187, v188, v181, v182, v183, v184);
    v200 = objc_msgSend_stringByAppendingString_(v189, v190, @"-Indices", v191, v196, v197, v198, v199, v192, v193, v194, v195);
    objc_msgSend_setName_(v177, v201, v200, v202, v207, v208, v209, v210, v203, v204, v205, v206);
  }

  v211 = [MDLSubmesh alloc];
  v213 = __p;
  v212 = v323;
  v214 = [MDLMaterial alloc];
  v226 = objc_msgSend_name(v313, v215, v216, v217, v222, v223, v224, v225, v218, v219, v220, v221);
  v237 = objc_msgSend_stringByAppendingString_(v226, v227, @"-Material", v228, v233, v234, v235, v236, v229, v230, v231, v232);
  v238 = objc_opt_new();
  v248 = objc_msgSend_initWithName_scatteringFunction_(v214, v239, v237, v238, v244, v245, v246, v247, v240, v241, v242, v243);
  v255 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v211, v249, v166, (v212 - v213) >> 1, v251, v252, v253, v254, 16, v8, v248, v250);

  v267 = objc_msgSend_name(v313, v256, v257, v258, v263, v264, v265, v266, v259, v260, v261, v262);
  v278 = objc_msgSend_stringByAppendingString_(v267, v268, @"-0", v269, v274, v275, v276, v277, v270, v271, v272, v273);
  objc_msgSend_setName_(v255, v279, v278, v280, v285, v286, v287, v288, v281, v282, v283, v284);

  v328 = v255;
  v298 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v289, &v328, 1, v294, v295, v296, v297, v290, v291, v292, v293);
  objc_msgSend__createWithVertexBuffer_vertexCount_descriptor_submeshes_(v313, v299, v83, (v320 >> 2) >> 3, v302, v303, v304, v305, v311, v298, v300, v301);

  v306 = v313;
  if (__p)
  {
    v323 = __p;
    operator delete(__p);
  }

  if (v325)
  {
    v326 = v325;
    operator delete(v325);
  }

  v307 = v312;
  objc_autoreleasePoolPop(context);
  v48 = v313;
LABEL_49:

  return v48;
}

+ (MDLMesh)newBoxWithDimensions:(vector_float3)dimensions segments:(vector_uint3)segments geometryType:(MDLGeometryType)geometryType inwardNormals:(BOOL)inwardNormals allocator:(id)allocator
{
  v8 = dimensions.i64[1];
  v9 = dimensions.i64[0];
  v21 = v7;
  v10 = geometryType;
  v11 = [MDLMesh alloc];
  inited = objc_msgSend_initBoxWithExtent_segments_inwardNormals_geometryType_allocator_(v11, v12, v8, v9, segments, v21, v16, v17, v10, v13, v14, v15);

  return inited;
}

- (MDLMesh)initIcosahedronWithExtent:(vector_float3)extent inwardNormals:(BOOL)inwardNormals geometryType:(MDLGeometryType)geometryType allocator:(id)allocator
{
  v7 = extent.i64[1];
  v8 = extent.i32[0];
  v656 = v6;
  v676[1] = *MEMORY[0x277D85DE8];
  v11 = inwardNormals;
  v22 = objc_msgSend_initWithBufferAllocator_(self, v12, v11, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v34 = v22;
  if (v22)
  {
    v653 = objc_msgSend_allocator(v22, v23, v24, v25, v30, v31, v32, v33, v26, v27, v28, v29);

    v652 = objc_autoreleasePoolPush();
    v35 = 0;
    v673 = 0;
    v674 = 0;
    v675 = 0;
    v670 = 0;
    v671 = 0;
    v672 = 0;
    v36 = 0.89443 * v656.f32[0];
    v37 = v656.f32[1];
    v38 = vmuls_lane_f32(0.44721, *v656.f32, 1);
    v39 = vmuls_lane_f32(0.89443, v656, 2);
    v40.i32[0] = 1.0;
    if (v8)
    {
      v40.f32[0] = -1.0;
    }

    v654 = v40;
    v667 = 0;
    v668 = 0;
    v669 = 0;
    do
    {
      v41 = __sincosf_stret((v35 * 1.2566) + 0.62832);
      *&__p = v36 * v41.__cosval;
      *&v665 = v39 * v41.__sinval;
      v666 = v38;
      sub_239E798A4(&v673, &__p);
      sub_239E798A4(&v673, &v666);
      sub_239E798A4(&v673, &v665);
      v42.i64[0] = __PAIR64__(LODWORD(v666), __p);
      v42.i32[2] = v665;
      v43 = vmulq_f32(v42, v42);
      *&v44 = vaddv_f32(*v43.f32) + v43.f32[2];
      *v43.f32 = vrsqrte_f32(v44);
      *v43.f32 = vmul_f32(vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32)), *v43.f32);
      *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(v44, vmul_f32(*v43.f32, *v43.f32)));
      v657 = vmulq_n_f32(v42, vmulq_f32(v43, v654).f32[0]);
      v664 = v657.f32[0];
      sub_239E798A4(&v670, &v664);
      v664 = v657.f32[1];
      sub_239E798A4(&v670, &v664);
      v664 = v657.f32[2];
      sub_239E798A4(&v670, &v664);
      v664 = (cosf(((v35 * 1.2566) + 0.62832) * 0.5) * 0.5) + 0.5;
      v663 = 1060716108;
      sub_239E798A4(&v667, &v664);
      sub_239E798A4(&v667, &v663);
      ++v35;
    }

    while (v35 != 5);
    for (i = 0; i != 5; ++i)
    {
      v46 = __sincosf_stret(i * 1.2566);
      *&__p = v36 * v46.__cosval;
      *&v665 = v39 * v46.__sinval;
      v666 = v37 * -0.44721;
      sub_239E798A4(&v673, &__p);
      sub_239E798A4(&v673, &v666);
      sub_239E798A4(&v673, &v665);
      v47.i64[0] = __PAIR64__(LODWORD(v666), __p);
      v47.i32[2] = v665;
      v48 = vmulq_f32(v47, v47);
      *&v49 = vaddv_f32(*v48.f32) + v48.f32[2];
      *v48.f32 = vrsqrte_f32(v49);
      *v48.f32 = vmul_f32(vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32)), *v48.f32);
      *v48.f32 = vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32)));
      v658 = vmulq_n_f32(v47, vmulq_f32(v48, v654).f32[0]);
      v664 = v658.f32[0];
      sub_239E798A4(&v670, &v664);
      v664 = v658.f32[1];
      sub_239E798A4(&v670, &v664);
      v664 = v658.f32[2];
      sub_239E798A4(&v670, &v664);
      v664 = (cosf(i * 0.62832) * 0.5) + 0.5;
      v663 = 1049461609;
      sub_239E798A4(&v667, &v664);
      sub_239E798A4(&v667, &v663);
    }

    LODWORD(__p) = 0;
    sub_239E798A4(&v673, &__p);
    *&__p = v37;
    sub_239E798A4(&v673, &__p);
    LODWORD(__p) = 0;
    sub_239E798A4(&v673, &__p);
    LODWORD(__p) = 0;
    sub_239E798A4(&v670, &__p);
    LODWORD(__p) = v654.i32[0];
    sub_239E798A4(&v670, &__p);
    LODWORD(__p) = 0;
    sub_239E798A4(&v670, &__p);
    LODWORD(__p) = 1056964608;
    sub_239E798A4(&v667, &__p);
    LODWORD(__p) = 1065353216;
    sub_239E798A4(&v667, &__p);
    LODWORD(__p) = 0;
    sub_239E798A4(&v673, &__p);
    *&__p = -v37;
    sub_239E798A4(&v673, &__p);
    LODWORD(__p) = 0;
    sub_239E798A4(&v673, &__p);
    LODWORD(__p) = 0;
    sub_239E798A4(&v670, &__p);
    v50 = -1.0;
    if (v8)
    {
      v50 = 1.0;
    }

    *&__p = v50;
    sub_239E798A4(&v670, &__p);
    LODWORD(__p) = 0;
    sub_239E798A4(&v670, &__p);
    LODWORD(__p) = 1056964608;
    sub_239E798A4(&v667, &__p);
    LODWORD(__p) = 0;
    sub_239E798A4(&v667, &__p);
    __p = 0;
    v661 = 0;
    v662 = 0;
    v51 = ((v674 - v673) >> 2) / 3uLL;
    LOWORD(v666) = v51 - 2;
    LOWORD(v665) = v51 - 1;
    LOWORD(v664) = 0;
    do
    {
      sub_239EA1088(&__p, &v666);
      if (v7 == 2)
      {
        LOWORD(v663) = LOWORD(v664) + 1 - 5 * ((858993460 * (LOWORD(v664) + 1)) >> 32);
        sub_239EA1088(&__p, &v663);
      }

      sub_239EA1088(&__p, &v664);
      ++LOWORD(v664);
    }

    while (LOWORD(v664) < 5u);
    LOWORD(v664) = 0;
    do
    {
      sub_239EA1088(&__p, &v664);
      if (v7 == 2)
      {
        LOWORD(v663) = LOWORD(v664) + 1 - 5 * ((858993460 * (LOWORD(v664) + 1)) >> 32) + 5;
        sub_239EA1088(&__p, &v663);
        LOWORD(v663) = LOWORD(v664) + 5;
        sub_239EA1088(&__p, &v663);
        LOWORD(v663) = LOWORD(v664) + 1 - 5 * ((858993460 * (LOWORD(v664) + 1)) >> 32);
        sub_239EA1088(&__p, &v663);
        LOWORD(v663) = LOWORD(v664) + 1 - 5 * ((858993460 * (LOWORD(v664) + 1)) >> 32) + 5;
        sub_239EA1088(&__p, &v663);
        sub_239EA1088(&__p, &v664);
      }

      else
      {
        LOWORD(v663) = LOWORD(v664) + 5;
        sub_239EA1088(&__p, &v663);
        sub_239EA1088(&__p, &v664);
        LOWORD(v663) = LOWORD(v664) + 1 - 5 * ((858993460 * (LOWORD(v664) + 1)) >> 32);
        sub_239EA1088(&__p, &v663);
        sub_239EA1088(&__p, &v664);
        LOWORD(v663) = LOWORD(v664) + 1 - 5 * ((858993460 * (LOWORD(v664) + 1)) >> 32) + 5;
        sub_239EA1088(&__p, &v663);
        LOWORD(v663) = LOWORD(v664) + 5;
        sub_239EA1088(&__p, &v663);
        LOWORD(v663) = LOWORD(v664) + 1 - 5 * ((858993460 * (LOWORD(v664) + 1)) >> 32) + 5;
        sub_239EA1088(&__p, &v663);
      }

      ++LOWORD(v664);
    }

    while (LOWORD(v664) < 5u);
    v52 = 0;
    do
    {
      if (v7 == 2)
      {
        sub_239EA1088(&__p, &v665);
        LOWORD(v664) = v52 + 5;
        sub_239EA1088(&__p, &v664);
        v53 = v52 + 6;
        if (v52 == 4)
        {
          v53 = 5;
        }

        LOWORD(v664) = v53;
        sub_239EA1088(&__p, &v664);
      }

      else
      {
        sub_239EA1088(&__p, &v665);
        LOWORD(v664) = v52 + 5;
        sub_239EA1088(&__p, &v664);
      }
    }

    while (v52++ < 4);
    v56 = v673;
    v55 = v674;
    v57 = objc_alloc(MEMORY[0x277CBEB28]);
    v58 = (v55 - v56) >> 2;
    v59 = v58 / 3;
    v659 = objc_msgSend_initWithLength_(v57, v60, 32 * (v58 / 3), v61, v66, v67, v68, v69, v62, v63, v64, v65);
    v70 = v659;
    v82 = objc_msgSend_mutableBytes(v659, v71, v72, v73, v78, v79, v80, v81, v74, v75, v76, v77);
    if (v58 >= 3)
    {
      v93 = 0;
      v94 = 0;
      v95 = 1;
      do
      {
        v96 = v673 + 4 * v94;
        v97 = *v96;
        *(v82 + 8) = *(v96 + 2);
        *v82 = v97;
        v98 = v670 + 4 * v94;
        LODWORD(v97) = *(v98 + 2);
        *(v82 + 12) = *v98;
        *(v82 + 20) = v97;
        *(v82 + 24) = *(v667 + 4 * v93);
        v94 += 3;
        v99 = v59 > v95++;
        v93 += 2;
        v82 += 32;
      }

      while (v99);
    }

    objc_msgSend_setName_(v34, v83, @"icosahedron", v84, v89, v90, v91, v92, v85, v86, v87, v88);
    v109 = objc_msgSend_newBufferWithData_type_(v653, v100, v659, 1, v105, v106, v107, v108, v101, v102, v103, v104);
    v655 = v109;
    if (!v109)
    {
      v120 = MEMORY[0x277CBEAD8];
      v121 = objc_opt_class();
      v122 = NSStringFromClass(v121);
      v123 = NSStringFromSelector(a2);
      objc_msgSend_raise_format_(v120, v124, @"ModelIOException", @"[%@ %@]: Could not allocate mesh buffer", v129, v130, v131, v132, v125, v126, v127, v128, v122, v123);

      v109 = 0;
    }

    if (objc_msgSend_conformsToProtocol_(v109, v110, &unk_284D24D98, v111, v116, v117, v118, v119, v112, v113, v114, v115))
    {
      v133 = v655;
      v134 = MEMORY[0x277CCACA8];
      v146 = objc_msgSend_name(v34, v135, v136, v137, v142, v143, v144, v145, v138, v139, v140, v141);
      v157 = objc_msgSend_stringWithFormat_(v134, v147, @"%@-%@", v148, v153, v154, v155, v156, v149, v150, v151, v152, v146, @"position");
      objc_msgSend_setName_(v133, v158, v157, v159, v164, v165, v166, v167, v160, v161, v162, v163);
    }

    v168 = objc_alloc(MEMORY[0x277CBEA90]);
    v650 = objc_msgSend_initWithBytes_length_(v168, v169, __p, v661 - __p, v174, v175, v176, v177, v170, v171, v172, v173);
    v187 = objc_msgSend_newBufferWithData_type_(v653, v178, v650, 2, v183, v184, v185, v186, v179, v180, v181, v182);
    v651 = v187;
    if (objc_msgSend_conformsToProtocol_(v187, v188, &unk_284D24D98, v189, v194, v195, v196, v197, v190, v191, v192, v193))
    {
      v198 = v187;
      v210 = objc_msgSend_name(v34, v199, v200, v201, v206, v207, v208, v209, v202, v203, v204, v205);
      v221 = objc_msgSend_stringByAppendingString_(v210, v211, @"-Indices", v212, v217, v218, v219, v220, v213, v214, v215, v216);
      objc_msgSend_setName_(v198, v222, v221, v223, v228, v229, v230, v231, v224, v225, v226, v227);
    }

    v233 = __p;
    v232 = v661;
    v234 = [MDLSubmesh alloc];
    v235 = [MDLMaterial alloc];
    v247 = objc_msgSend_name(v34, v236, v237, v238, v243, v244, v245, v246, v239, v240, v241, v242);
    v258 = objc_msgSend_stringByAppendingString_(v247, v248, @"-Material", v249, v254, v255, v256, v257, v250, v251, v252, v253);
    v259 = objc_opt_new();
    v269 = objc_msgSend_initWithName_scatteringFunction_(v235, v260, v258, v259, v265, v266, v267, v268, v261, v262, v263, v264);
    v276 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v234, v270, v651, (v232 - v233) >> 1, v272, v273, v274, v275, 16, v7, v269, v271);

    v288 = objc_msgSend_name(v34, v277, v278, v279, v284, v285, v286, v287, v280, v281, v282, v283);
    v299 = objc_msgSend_stringByAppendingString_(v288, v289, @"-0", v290, v295, v296, v297, v298, v291, v292, v293, v294);
    objc_msgSend_setName_(v276, v300, v299, v301, v306, v307, v308, v309, v302, v303, v304, v305);

    v310 = objc_alloc_init(MDLVertexDescriptor);
    v322 = objc_msgSend_attributes(v310, v311, v312, v313, v318, v319, v320, v321, v314, v315, v316, v317);
    v333 = objc_msgSend_objectAtIndexedSubscript_(v322, v323, 0, v324, v329, v330, v331, v332, v325, v326, v327, v328);
    objc_msgSend_setName_(v333, v334, @"position", v335, v340, v341, v342, v343, v336, v337, v338, v339);

    v355 = objc_msgSend_attributes(v310, v344, v345, v346, v351, v352, v353, v354, v347, v348, v349, v350);
    v366 = objc_msgSend_objectAtIndexedSubscript_(v355, v356, 0, v357, v362, v363, v364, v365, v358, v359, v360, v361);
    objc_msgSend_setFormat_(v366, v367, 786435, v368, v373, v374, v375, v376, v369, v370, v371, v372);

    v388 = objc_msgSend_attributes(v310, v377, v378, v379, v384, v385, v386, v387, v380, v381, v382, v383);
    v399 = objc_msgSend_objectAtIndexedSubscript_(v388, v389, 0, v390, v395, v396, v397, v398, v391, v392, v393, v394);
    objc_msgSend_setBufferIndex_(v399, v400, 0, v401, v406, v407, v408, v409, v402, v403, v404, v405);

    v421 = objc_msgSend_attributes(v310, v410, v411, v412, v417, v418, v419, v420, v413, v414, v415, v416);
    v432 = objc_msgSend_objectAtIndexedSubscript_(v421, v422, 1, v423, v428, v429, v430, v431, v424, v425, v426, v427);
    objc_msgSend_setName_(v432, v433, @"normal", v434, v439, v440, v441, v442, v435, v436, v437, v438);

    v454 = objc_msgSend_attributes(v310, v443, v444, v445, v450, v451, v452, v453, v446, v447, v448, v449);
    v465 = objc_msgSend_objectAtIndexedSubscript_(v454, v455, 1, v456, v461, v462, v463, v464, v457, v458, v459, v460);
    objc_msgSend_setFormat_(v465, v466, 786435, v467, v472, v473, v474, v475, v468, v469, v470, v471);

    v487 = objc_msgSend_attributes(v310, v476, v477, v478, v483, v484, v485, v486, v479, v480, v481, v482);
    v498 = objc_msgSend_objectAtIndexedSubscript_(v487, v488, 1, v489, v494, v495, v496, v497, v490, v491, v492, v493);
    objc_msgSend_setBufferIndex_(v498, v499, 0, v500, v505, v506, v507, v508, v501, v502, v503, v504);

    v520 = objc_msgSend_attributes(v310, v509, v510, v511, v516, v517, v518, v519, v512, v513, v514, v515);
    v531 = objc_msgSend_objectAtIndexedSubscript_(v520, v521, 2, v522, v527, v528, v529, v530, v523, v524, v525, v526);
    objc_msgSend_setName_(v531, v532, @"textureCoordinate", v533, v538, v539, v540, v541, v534, v535, v536, v537);

    v553 = objc_msgSend_attributes(v310, v542, v543, v544, v549, v550, v551, v552, v545, v546, v547, v548);
    v564 = objc_msgSend_objectAtIndexedSubscript_(v553, v554, 2, v555, v560, v561, v562, v563, v556, v557, v558, v559);
    objc_msgSend_setFormat_(v564, v565, 786434, v566, v571, v572, v573, v574, v567, v568, v569, v570);

    v586 = objc_msgSend_attributes(v310, v575, v576, v577, v582, v583, v584, v585, v578, v579, v580, v581);
    v597 = objc_msgSend_objectAtIndexedSubscript_(v586, v587, 2, v588, v593, v594, v595, v596, v589, v590, v591, v592);
    objc_msgSend_setBufferIndex_(v597, v598, 0, v599, v604, v605, v606, v607, v600, v601, v602, v603);

    objc_msgSend_setPackedOffsets(v310, v608, v609, v610, v615, v616, v617, v618, v611, v612, v613, v614);
    objc_msgSend_setPackedStrides(v310, v619, v620, v621, v626, v627, v628, v629, v622, v623, v624, v625);
    v676[0] = v276;
    v639 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v630, v676, 1, v635, v636, v637, v638, v631, v632, v633, v634);
    objc_msgSend__createWithVertexBuffer_vertexCount_descriptor_submeshes_(v34, v640, v655, v59, v643, v644, v645, v646, v310, v639, v641, v642);

    v647 = v34;
    if (__p)
    {
      v661 = __p;
      operator delete(__p);
    }

    if (v667)
    {
      v668 = v667;
      operator delete(v667);
    }

    if (v670)
    {
      v671 = v670;
      operator delete(v670);
    }

    if (v673)
    {
      v674 = v673;
      operator delete(v673);
    }

    v648 = v653;
    objc_autoreleasePoolPop(v652);
  }

  else
  {
    v648 = v11;
  }

  return v34;
}

+ (MDLMesh)newIcosahedronWithRadius:(float)radius inwardNormals:(BOOL)inwardNormals geometryType:(MDLGeometryType)geometryType allocator:(id)allocator
{
  v7 = inwardNormals;
  v19 = *&radius;
  v8 = allocator;
  v9 = [MDLMesh alloc];
  inited = objc_msgSend_initIcosahedronWithExtent_inwardNormals_geometryType_allocator_(v9, v10, v7, geometryType, vdupq_lane_s32(v19, 0), v14, v15, v16, v8, v11, v12, v13);

  return inited;
}

+ (MDLMesh)newIcosahedronWithRadius:(float)radius inwardNormals:(BOOL)inwardNormals allocator:(id)allocator
{
  v5 = inwardNormals;
  v17 = *&radius;
  v6 = allocator;
  v7 = [MDLMesh alloc];
  inited = objc_msgSend_initIcosahedronWithExtent_inwardNormals_geometryType_allocator_(v7, v8, v5, 2, vdupq_lane_s32(v17, 0), v12, v13, v14, v6, v9, v10, v11);

  return inited;
}

- (MDLMesh)initSphereWithExtent:(vector_float3)extent segments:(vector_uint2)segments inwardNormals:(BOOL)inwardNormals geometryType:(MDLGeometryType)geometryType allocator:(id)allocator
{
  v8 = extent.i64[1];
  v9 = extent.i32[0];
  v244 = *segments.i8;
  v245 = v7;
  v248[1] = *MEMORY[0x277D85DE8];
  v18 = inwardNormals;
  v243 = v8;
  if ((v8 - 1) >= 2)
  {
    v23 = MEMORY[0x277CBEAD8];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v23, v27, @"ModelIOException", @"[%@ %@]: geometryType for Ellipsoid must be MDLGeometryTypeTriangles or MDLGeometryTypeLines", v32, v33, v34, v35, v28, v29, v30, v31, v25, v26);
  }

  v36 = objc_msgSend_initWithBufferAllocator_(self, v12, v18, v13, v19, v20, v21, v22, v14, v15, v16, v17);
  v48 = v36;
  if (v36)
  {
    v49 = objc_msgSend_allocator(v36, v37, v38, v39, v44, v45, v46, v47, v40, v41, v42, v43);

    if (v245 <= 3)
    {
      v50 = 3;
    }

    else
    {
      v50 = v245;
    }

    if (HIDWORD(v245) <= 2)
    {
      v51 = 2;
    }

    else
    {
      v51 = HIDWORD(v245);
    }

    context = objc_autoreleasePoolPush();
    objc_msgSend_setName_(v48, v52, @"ellipsoid", v53, v58, v59, v60, v61, v54, v55, v56, v57);
    v247 = 0;
    v62 = (v51 + 2 + (v51 + 2) * v50);
    v63 = malloc_type_malloc((32 * v62), 0x1000040E0EAB150uLL);
    sub_239EA6F44(v63, &v247, v50, v51, v9, 0, v244);
    v246 = sub_239EA5150();
    v75 = objc_msgSend_layouts(v246, v64, v65, v66, v71, v72, v73, v74, v67, v68, v69, v70);
    v86 = objc_msgSend_objectAtIndexedSubscript_(v75, v76, 0, v77, v82, v83, v84, v85, v78, v79, v80, v81);
    v98 = objc_msgSend_stride(v86, v87, v88, v89, v94, v95, v96, v97, v90, v91, v92, v93);

    v99 = objc_alloc(MEMORY[0x277CBEA90]);
    v108 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v99, v100, v63, v98 * v62, v104, v105, v106, v107, 1, v101, v102, v103);
    v124 = objc_msgSend_newBufferWithData_type_(v49, v109, v108, 1, v114, v115, v116, v117, v110, v111, v112, v113);
    if (!v124)
    {
      v129 = MEMORY[0x277CBEAD8];
      v130 = objc_opt_class();
      v131 = NSStringFromClass(v130);
      v132 = NSStringFromSelector(a2);
      objc_msgSend_raise_format_(v129, v133, @"ModelIOException", @"[%@ %@]: Could not allocate mesh buffer", v138, v139, v140, v141, v134, v135, v136, v137, v131, v132);
    }

    if (objc_msgSend_conformsToProtocol_(v124, v118, &unk_284D24D98, v119, v125, v126, v127, v128, v120, v121, v122, v123))
    {
      v153 = v124;
      v154 = MEMORY[0x277CCACA8];
      v166 = objc_msgSend_name(v48, v155, v156, v157, v162, v163, v164, v165, v158, v159, v160, v161);
      v177 = objc_msgSend_stringWithFormat_(v154, v167, @"%@-%@", v168, v173, v174, v175, v176, v169, v170, v171, v172, v166, @"position");
      objc_msgSend_setName_(v153, v178, v177, v179, v184, v185, v186, v187, v180, v181, v182, v183);
    }

    v188 = objc_msgSend_name(v48, v142, v143, v144, v149, v150, v151, v152, v145, v146, v147, v148);
    if (v62 > 0xFFFE)
    {
      sub_239EA7494(v188, v49, v50, v51, v243, 0);
    }

    else
    {
      sub_239EA71A0(v188, v49, v50, v51, v243, 0);
    }
    v189 = ;

    v201 = objc_msgSend_name(v48, v190, v191, v192, v197, v198, v199, v200, v193, v194, v195, v196);
    v212 = objc_msgSend_stringByAppendingString_(v201, v202, @"-0", v203, v208, v209, v210, v211, v204, v205, v206, v207);
    objc_msgSend_setName_(v189, v213, v212, v214, v219, v220, v221, v222, v215, v216, v217, v218);

    v248[0] = v189;
    v232 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v223, v248, 1, v228, v229, v230, v231, v224, v225, v226, v227);
    objc_msgSend__createWithVertexBuffer_vertexCount_descriptor_submeshes_(v48, v233, v124, v62, v236, v237, v238, v239, v246, v232, v234, v235);

    v240 = v48;
    objc_autoreleasePoolPop(context);
  }

  else
  {
    v49 = v18;
  }

  return v48;
}

- (MDLMesh)initHemisphereWithExtent:(vector_float3)extent segments:(vector_uint2)segments inwardNormals:(BOOL)inwardNormals cap:(BOOL)cap geometryType:(MDLGeometryType)geometryType allocator:(id)allocator
{
  v9 = inwardNormals;
  v10 = extent.i32[0];
  v246 = *segments.i8;
  v247 = v8;
  v250[1] = *MEMORY[0x277D85DE8];
  v19 = cap;
  v245 = v9;
  if ((v9 - 1) >= 2)
  {
    v24 = MEMORY[0x277CBEAD8];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v24, v28, @"ModelIOException", @"[%@ %@]: geometryType for Ellipsoid must be MDLGeometryTypeTriangles or MDLGeometryTypeLines", v33, v34, v35, v36, v29, v30, v31, v32, v26, v27);
  }

  v37 = objc_msgSend_initWithBufferAllocator_(self, v13, v19, v14, v20, v21, v22, v23, v15, v16, v17, v18);
  v49 = v37;
  if (v37)
  {
    v50 = objc_msgSend_allocator(v37, v38, v39, v40, v45, v46, v47, v48, v41, v42, v43, v44);

    if (v247 <= 3)
    {
      v51 = 3;
    }

    else
    {
      v51 = v247;
    }

    if (HIDWORD(v247) <= 2)
    {
      v52 = 2;
    }

    else
    {
      v52 = HIDWORD(v247);
    }

    context = objc_autoreleasePoolPush();
    objc_msgSend_setName_(v49, v53, @"sphere", v54, v59, v60, v61, v62, v55, v56, v57, v58);
    v249 = 0;
    if (v52)
    {
      v63 = 2;
    }

    else
    {
      v63 = 1;
    }

    v64 = (v63 + v52 + (v63 + v52) * v51);
    v65 = malloc_type_malloc((32 * v64), 0x1000040E0EAB150uLL);
    sub_239EA6F44(v65, &v249, v51, v52, v10, 1, v246);
    v248 = sub_239EA5150();
    v77 = objc_msgSend_layouts(v248, v66, v67, v68, v73, v74, v75, v76, v69, v70, v71, v72);
    v88 = objc_msgSend_objectAtIndexedSubscript_(v77, v78, 0, v79, v84, v85, v86, v87, v80, v81, v82, v83);
    v100 = objc_msgSend_stride(v88, v89, v90, v91, v96, v97, v98, v99, v92, v93, v94, v95);

    v101 = objc_alloc(MEMORY[0x277CBEA90]);
    v110 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v101, v102, v65, v100 * v64, v106, v107, v108, v109, 1, v103, v104, v105);
    v126 = objc_msgSend_newBufferWithData_type_(v50, v111, v110, 1, v116, v117, v118, v119, v112, v113, v114, v115);
    if (!v126)
    {
      v131 = MEMORY[0x277CBEAD8];
      v132 = objc_opt_class();
      v133 = NSStringFromClass(v132);
      v134 = NSStringFromSelector(a2);
      objc_msgSend_raise_format_(v131, v135, @"ModelIOException", @"[%@ %@]: Could not allocate mesh buffer", v140, v141, v142, v143, v136, v137, v138, v139, v133, v134);
    }

    if (objc_msgSend_conformsToProtocol_(v126, v120, &unk_284D24D98, v121, v127, v128, v129, v130, v122, v123, v124, v125))
    {
      v155 = v126;
      v156 = MEMORY[0x277CCACA8];
      v168 = objc_msgSend_name(v49, v157, v158, v159, v164, v165, v166, v167, v160, v161, v162, v163);
      v179 = objc_msgSend_stringWithFormat_(v156, v169, @"%@-%@", v170, v175, v176, v177, v178, v171, v172, v173, v174, v168, @"position");
      objc_msgSend_setName_(v155, v180, v179, v181, v186, v187, v188, v189, v182, v183, v184, v185);
    }

    v190 = objc_msgSend_name(v49, v144, v145, v146, v151, v152, v153, v154, v147, v148, v149, v150);
    if (v64 > 0xFFFE)
    {
      sub_239EA7494(v190, v50, v51, v52, v245, 1);
    }

    else
    {
      sub_239EA71A0(v190, v50, v51, v52, v245, 1);
    }
    v191 = ;

    v203 = objc_msgSend_name(v49, v192, v193, v194, v199, v200, v201, v202, v195, v196, v197, v198);
    v214 = objc_msgSend_stringByAppendingString_(v203, v204, @"-0", v205, v210, v211, v212, v213, v206, v207, v208, v209);
    objc_msgSend_setName_(v191, v215, v214, v216, v221, v222, v223, v224, v217, v218, v219, v220);

    v250[0] = v191;
    v234 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v225, v250, 1, v230, v231, v232, v233, v226, v227, v228, v229);
    objc_msgSend__createWithVertexBuffer_vertexCount_descriptor_submeshes_(v49, v235, v126, v64, v238, v239, v240, v241, v248, v234, v236, v237);

    v242 = v49;
    objc_autoreleasePoolPop(context);
  }

  else
  {
    v50 = v19;
  }

  return v49;
}

+ (MDLMesh)newEllipsoidWithRadii:(vector_float3)radii radialSegments:(NSUInteger)radialSegments verticalSegments:(NSUInteger)verticalSegments geometryType:(MDLGeometryType)geometryType inwardNormals:(BOOL)inwardNormals hemisphere:(BOOL)hemisphere allocator:(id)allocator
{
  v10 = geometryType;
  v13 = radii.i32[2];
  v14 = radii.i32[0];
  v28 = v9;
  v15 = inwardNormals;
  v16.n128_u64[0] = __PAIR64__(v13, v14);
  v27 = v16;
  v17 = [MDLMesh alloc];
  if (v10)
  {
    inited = objc_msgSend_initHemisphereWithExtent_segments_inwardNormals_cap_geometryType_allocator_(v17, v18, verticalSegments, 1, v28, v27, v22, v23, radialSegments, v15, v20, v21);
  }

  else
  {
    inited = objc_msgSend_initSphereWithExtent_segments_inwardNormals_geometryType_allocator_(v17, v18, verticalSegments, radialSegments, v28, v27, v22, v23, v15, v19, v20, v21);
  }

  v25 = inited;

  return v25;
}

- (MDLMesh)initMeshBySubdividingMesh:(MDLMesh *)mesh submeshIndex:(int)submeshIndex subdivisionLevels:(unsigned int)subdivisionLevels allocator:(id)allocator
{
  v7 = sub_239ECD10C(mesh, submeshIndex, *&subdivisionLevels, allocator);

  return v7;
}

+ (MDLMesh)newSubdividedMesh:(MDLMesh *)mesh submeshIndex:(NSUInteger)submeshIndex subdivisionLevels:(NSUInteger)subdivisionLevels
{
  v7 = mesh;
  v8 = [MDLMesh alloc];
  inited = objc_msgSend_initMeshBySubdividingMesh_submeshIndex_subdivisionLevels_allocator_(v8, v9, v7, submeshIndex, v12, v13, v14, v15, subdivisionLevels, 0, v10, v11);

  return inited;
}

- (MDLMesh)initCapsuleWithExtent:(vector_float3)extent cylinderSegments:(vector_uint2)segments hemisphereSegments:(int)hemisphereSegments inwardNormals:(BOOL)inwardNormals geometryType:(MDLGeometryType)geometryType allocator:(id)allocator
{
  v9 = *&hemisphereSegments;
  v10 = extent.i64[1];
  v11 = extent.i64[0];
  v989 = v8;
  v991 = *segments.i8;
  v20 = inwardNormals;
  v987 = v9;
  if ((v9 - 1) >= 2)
  {
    v25 = MEMORY[0x277CBEAD8];
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v25, v29, @"ModelIOException", @"[%@ %@]: Unsupported geometry type for capsule", v34, v35, v36, v37, v30, v31, v32, v33, v27, v28);
  }

  v38 = objc_msgSend_initWithBufferAllocator_(self, v14, v20, v15, v21, v22, v23, v24, v16, v17, v18, v19);
  inited = v38;
  if (v38)
  {
    v51 = objc_msgSend_allocator(v38, v39, v40, v41, v46, v47, v48, v49, v42, v43, v44, v45);

    objc_msgSend_setName_(inited, v52, @"capsule", v53, v58, v59, v60, v61, v54, v55, v56, v57);
    v965 = v51;
    v966 = inited;
    v68.n128_u64[1] = v991.n128_u64[1];
    if (v989 <= 3)
    {
      v69 = 3;
    }

    else
    {
      v69 = v989;
    }

    if (v11 <= 1)
    {
      v11 = 1;
    }

    v70 = v991.n128_f32[2];
    if (v991.n128_f32[2] >= v991.n128_f32[0])
    {
      v71 = v991.n128_f32[0];
    }

    else
    {
      v71 = v991.n128_f32[2];
    }

    if (v991.n128_f32[0] >= v991.n128_f32[2])
    {
      v70 = v991.n128_f32[0];
    }

    v984 = v70;
    if (HIDWORD(v989) && v991.n128_f32[1] > v71)
    {
      v72 = objc_autoreleasePoolPush();
      v73 = v69 + 1;
      v964 = v73 * (HIDWORD(v989) - 1);
      v74 = v964 + 2 + 2 * v11 * v73;
      v1006 = 0;
      v1007 = 0;
      v1008 = 0;
      sub_239E95D48(&v1006, 3 * v74);
      v1003 = 0;
      v1004 = 0;
      v1005 = 0;
      sub_239E95D48(&v1003, 3 * v74);
      v1000 = 0;
      v1001 = 0;
      v1002 = 0;
      sub_239E95D48(&v1000, 2 * v74);
      v76 = HIDWORD(v989);
      v77 = v11;
      v78 = (v71 / v991.n128_f32[1]) * v991.n128_f32[1];
      v79 = v991.n128_f32[1] + v71 * -2.0;
      v974 = v79;
      v971 = HIDWORD(v989) + (v11 * 2.0);
      if (v971 <= 1.0)
      {
        v972 = -v78;
        v110 = -1.0;
        if (!v10)
        {
          v110 = 1.0;
        }

        v986.f32[0] = v110;
      }

      else
      {
        v80 = 6.28318531 / v69;
        v985 = v80;
        v81 = 3.14159265 / (2 * v11);
        v975 = v77 + v76;
        v969 = ((v71 / v991.n128_f32[1]) * -2.0) + 1.0;
        v970 = v81;
        v972 = -v78;
        v973 = v71 / v991.n128_f32[1];
        v75.i64[0] = COERCE_UNSIGNED_INT(-1.0) | 0x400921FB00000000;
        if (!v10)
        {
          v75.f32[0] = 1.0;
        }

        v986 = v75;
        v968 = 1.0 / v76;
        v82 = 1;
        v83 = 1.0;
        v84 = 1.0;
        v85 = 1.0 / v69;
        v967 = (v71 / v991.n128_f32[1]) * v991.n128_f32[1];
        v982 = v71;
        do
        {
          v86 = v77;
          v980 = v973 + ((v969 * (v83 - v77)) * v968);
          v981 = ((v83 - v77) * v974) * v968;
          v87 = __sincosf_stret((v83 - v76) * v970);
          v978 = -(v87.__cosval * v78);
          v979 = v974 - (v87.__cosval * v78);
          v88 = v973;
          v977 = v84 - (v88 + (v88 * v87.__cosval));
          v89 = __sincosf_stret(v83 * v970);
          v90 = 0;
          v976 = v88 - (v89.__cosval * v88);
          do
          {
            v91 = v90;
            v92 = (v90 * v985) + 1.57079633;
            v93.f32[0] = cosf(v92);
            v94 = v93.f32[0];
            if (v83 >= v86)
            {
              v99 = sinf(v92);
              *&__p = v91 * v85;
              v100 = (v87.__sinval * v71) * v94;
              v101 = (v87.__sinval * v984) * v99;
              v102 = v94 * v982;
              v103 = v99 * v984;
              v97 = v980;
              if (v975 >= v83)
              {
                v98 = v981;
              }

              else
              {
                v97 = v977;
                v98 = v979;
              }

              if (v975 >= v83)
              {
                v96.f32[0] = v102;
              }

              else
              {
                v96.f32[0] = v100;
              }

              v104 = 0.0;
              if (v975 < v83)
              {
                v104 = v978;
              }

              v988 = v104;
              if (v975 >= v83)
              {
                v105 = v103;
              }

              else
              {
                v105 = v101;
              }

              v990 = v105;
            }

            else
            {
              v93.f32[0] = (v89.__sinval * v71) * v93.f32[0];
              v992 = v93;
              v95 = sinf(v92);
              v96 = v992;
              v990 = (v89.__sinval * v984) * v95;
              *&__p = v91 * v85;
              v97 = v976;
              v98 = v89.__cosval * v972;
              v988 = v89.__cosval * v972;
            }

            v1013 = v96.i32[0];
            *v1014 = 1.0 - v97;
            v993 = v96;
            sub_239E798A4(&v1006, &v1013);
            v1013 = LODWORD(v98);
            sub_239E798A4(&v1006, &v1013);
            v1013 = LODWORD(v990);
            sub_239E798A4(&v1006, &v1013);
            v106 = v993;
            v106.f32[1] = v988;
            v106.f32[2] = v990;
            v107 = vmulq_f32(v106, v106);
            *&v108 = vaddv_f32(*v107.f32) + v107.f32[2];
            *v107.f32 = vrsqrte_f32(v108);
            *v107.f32 = vmul_f32(vrsqrts_f32(v108, vmul_f32(*v107.f32, *v107.f32)), *v107.f32);
            *v107.f32 = vmul_f32(*v107.f32, vrsqrts_f32(v108, vmul_f32(*v107.f32, *v107.f32)));
            v994 = vmulq_n_f32(v106, vmulq_f32(v107, v986).f32[0]);
            v1013 = v994.i32[0];
            sub_239E798A4(&v1003, &v1013);
            v1013 = v994.i32[1];
            sub_239E798A4(&v1003, &v1013);
            v1013 = v994.i32[2];
            sub_239E798A4(&v1003, &v1013);
            sub_239E798A4(&v1000, &__p);
            sub_239E798A4(&v1000, v1014);
            v84 = 1.0;
            ++v90;
          }

          while (v90 <= v69);
          v83 = ++v82;
          v76 = HIDWORD(v989);
          v78 = v967;
          v71 = v982;
          v77 = v86;
        }

        while (v971 > v82);
      }

      v983 = v72;
      LODWORD(__p) = 0;
      sub_239E798A4(&v1006, &__p);
      *&__p = v972;
      sub_239E798A4(&v1006, &__p);
      LODWORD(__p) = 0;
      sub_239E798A4(&v1006, &__p);
      LODWORD(__p) = 1056964608;
      sub_239E798A4(&v1000, &__p);
      LODWORD(__p) = 1065353216;
      sub_239E798A4(&v1000, &__p);
      LODWORD(__p) = 0;
      sub_239E798A4(&v1003, &__p);
      v111 = -1.0;
      if (v10)
      {
        v111 = 1.0;
      }

      *&__p = v111;
      sub_239E798A4(&v1003, &__p);
      LODWORD(__p) = 0;
      sub_239E798A4(&v1003, &__p);
      LODWORD(__p) = 0;
      sub_239E798A4(&v1006, &__p);
      *&__p = v78 + v974;
      sub_239E798A4(&v1006, &__p);
      LODWORD(__p) = 0;
      sub_239E798A4(&v1006, &__p);
      LODWORD(__p) = 1056964608;
      sub_239E798A4(&v1000, &__p);
      LODWORD(__p) = 0;
      sub_239E798A4(&v1000, &__p);
      LODWORD(__p) = 0;
      sub_239E798A4(&v1003, &__p);
      LODWORD(__p) = v986.i32[0];
      sub_239E798A4(&v1003, &__p);
      LODWORD(__p) = 0;
      sub_239E798A4(&v1003, &__p);
      v123 = v1006;
      v124 = v1007 - v1006;
      v125 = v124 / 3;
      if (v124 >= 3)
      {
        v119.n128_f32[0] = v974 * 0.5;
        v126 = 1;
        v127 = 1;
        do
        {
          v120.n128_f32[0] = v123[v126] - v119.n128_f32[0];
          v123[v126] = v120.n128_f32[0];
          v128 = v125 > v127++;
          v126 += 3;
        }

        while (v128);
      }

      v129 = MEMORY[0x277CCACA8];
      v130 = objc_msgSend_name(inited, v112, v113, v114, v119, v120, v121, v122, v115, v116, v117, v118);
      v141 = objc_msgSend_stringWithFormat_(v129, v131, @"%@-%@", v132, v137, v138, v139, v140, v133, v134, v135, v136, v130, @"position");
      v142 = objc_alloc(MEMORY[0x277CBEA90]);
      v151 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v142, v143, v1006, v1007 - v1006, v147, v148, v149, v150, 0, v144, v145, v146);
      objc_msgSend_addAttributeWithName_format_type_data_stride_(inited, v152, v141, 786435, v154, v155, v156, v157, @"position", v151, 12, v153);

      v158 = MEMORY[0x277CCACA8];
      v170 = objc_msgSend_name(inited, v159, v160, v161, v166, v167, v168, v169, v162, v163, v164, v165);
      v181 = objc_msgSend_stringWithFormat_(v158, v171, @"%@-%@", v172, v177, v178, v179, v180, v173, v174, v175, v176, v170, @"normal");
      v182 = objc_alloc(MEMORY[0x277CBEA90]);
      v191 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v182, v183, v1003, v1004 - v1003, v187, v188, v189, v190, 0, v184, v185, v186);
      objc_msgSend_addAttributeWithName_format_type_data_stride_(inited, v192, v181, 786435, v194, v195, v196, v197, @"normal", v191, 12, v193);

      v198 = MEMORY[0x277CCACA8];
      v210 = objc_msgSend_name(inited, v199, v200, v201, v206, v207, v208, v209, v202, v203, v204, v205);
      v221 = objc_msgSend_stringWithFormat_(v198, v211, @"%@-%@", v212, v217, v218, v219, v220, v213, v214, v215, v216, v210, @"textureCoordinate");
      v222 = objc_alloc(MEMORY[0x277CBEA90]);
      v231 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v222, v223, v1000, v1001 - v1000, v227, v228, v229, v230, 0, v224, v225, v226);
      objc_msgSend_addAttributeWithName_format_type_data_stride_(inited, v232, v221, 786434, v234, v235, v236, v237, @"textureCoordinate", v231, 8, v233);

      v238 = v11 * (2 * v73) + v964;
      if (v964 + 2 + 2 * v11 * v73 > 0xFFFE)
      {
        __p = 0;
        v998 = 0;
        v999 = 0;
        sub_239E95D48(&__p, v238);
        v270 = 0;
        v1013 = v125 - 2;
        v1014[0] = v125 - 1;
        v1012 = 0;
        do
        {
          sub_239E73254(&__p, v1014);
          sub_239E73254(&__p, &v1012);
          v271 = (v270 + 1) % v73;
          if (v987 != 2)
          {
            sub_239E73254(&__p, &v1012);
          }

          v1011 = v271;
          sub_239E73254(&__p, &v1011);
          v270 = v1012 + 1;
          v1012 = v270;
        }

        while (v270 <= v69);
        LODWORD(v989) = HIDWORD(v989) + 2 * v11 - 2;
        if (HIDWORD(v989) + 2 * v11 != 2)
        {
          v272 = 0;
          v273 = 0;
          do
          {
            v274 = 0;
            v275 = v273 * v73;
            v996 = v273 + 1;
            v276 = (v273 + 1) * v73;
            do
            {
              v277 = v274 + 1;
              v1012 = v272 + v274;
              v1010 = v73 + v272 + v274;
              v1011 = (v274 + 1) % v73 + v275;
              v1009 = (v274 + 1) % v73 + v276;
              sub_239E73254(&__p, &v1012);
              if (v987 == 2)
              {
                v278 = &v1009;
                v279 = &v1012;
                v280 = &v1011;
                v281 = &v1010;
              }

              else
              {
                sub_239E73254(&__p, &v1011);
                sub_239E73254(&__p, &v1011);
                v278 = &v1012;
                v280 = &v1010;
                v281 = &v1009;
                v279 = &v1010;
              }

              sub_239E73254(&__p, v281);
              sub_239E73254(&__p, &v1009);
              sub_239E73254(&__p, v280);
              sub_239E73254(&__p, v279);
              sub_239E73254(&__p, v278);
              v274 = v277;
            }

            while (v73 != v277);
            v272 += v73;
            v273 = v996;
          }

          while (v996 != v989);
        }

        v282 = 0;
        v283 = v1014[0] + ~v69;
        v284 = v283;
        do
        {
          sub_239E73254(&__p, &v1013);
          v285 = ++v282 % v73;
          if (v987 == 2)
          {
            v1012 = v285 + v283;
            sub_239E73254(&__p, &v1012);
            v1012 = v284;
          }

          else
          {
            v1012 = v284;
            sub_239E73254(&__p, &v1012);
            v1012 = v284;
            sub_239E73254(&__p, &v1012);
            v1012 = v285 + v283;
          }

          sub_239E73254(&__p, &v1012);
          ++v284;
        }

        while (v282 <= v69);
        v266 = objc_msgSend_name(v966, v286, v287, v288, v293, v294, v295, v296, v289, v290, v291, v292);
        v297 = v965;
        if (!v297)
        {
          v297 = objc_alloc_init(MDLMeshBufferDataAllocator);
        }

        v268 = v297;
        v298 = objc_alloc(MEMORY[0x277CBEA90]);
        v307 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v298, v299, __p, v998 - __p, v303, v304, v305, v306, 0, v300, v301, v302);
        v317 = objc_msgSend_newBufferWithData_type_(v268, v308, v307, 2, v313, v314, v315, v316, v309, v310, v311, v312);
        if (objc_msgSend_conformsToProtocol_(v317, v318, &unk_284D24D98, v319, v324, v325, v326, v327, v320, v321, v322, v323))
        {
          v328 = v317;
          v339 = objc_msgSend_stringByAppendingString_(v266, v329, @"-Indices", v330, v335, v336, v337, v338, v331, v332, v333, v334);
          objc_msgSend_setName_(v328, v340, v339, v341, v346, v347, v348, v349, v342, v343, v344, v345);
        }

        v350 = [MDLMaterial alloc];
        v351 = objc_opt_new();
        v361 = objc_msgSend_initWithName_scatteringFunction_(v350, v352, @"material", v351, v357, v358, v359, v360, v353, v354, v355, v356);

        v372 = objc_msgSend_propertyWithSemantic_(v361, v362, 2, v363, v368, v369, v370, v371, v364, v365, v366, v367);
        v373.n128_u32[0] = 1063675494;
        objc_msgSend_setFloatValue_(v372, v374, v375, v376, v373, v381, v382, v383, v377, v378, v379, v380);
        v394 = objc_msgSend_propertyWithSemantic_(v361, v384, 6, v385, v390, v391, v392, v393, v386, v387, v388, v389);

        v395.n128_u32[0] = 1058642330;
        objc_msgSend_setFloatValue_(v394, v396, v397, v398, v395, v403, v404, v405, v399, v400, v401, v402);
        v416 = objc_msgSend_propertyWithSemantic_(v361, v406, 0, v407, v412, v413, v414, v415, v408, v409, v410, v411);

        v417 = [MDLSubmesh alloc];
        v424 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v417, v418, v317, (v998 - __p) >> 2, v420, v421, v422, v423, 32, v987, v361, v419);
      }

      else
      {
        __p = 0;
        v998 = 0;
        v999 = 0;
        sub_239EA0FEC(&__p, v238);
        v239 = 0;
        do
        {
          v240 = v239 + 1;
          LOWORD(v1014[0]) = v125 - 2;
          if (v987 != 2)
          {
            sub_239EA1088(&__p, v1014);
            LOWORD(v1014[0]) = v239;
          }

          sub_239EA1088(&__p, v1014);
          LOWORD(v1014[0]) = v239;
          sub_239EA1088(&__p, v1014);
          LOWORD(v1014[0]) = (v239 + 1) % v73;
          sub_239EA1088(&__p, v1014);
          ++v239;
        }

        while (v240 <= v69);
        LODWORD(v989) = HIDWORD(v989) + 2 * v11 - 2;
        if (HIDWORD(v989) + 2 * v11 != 2)
        {
          v241 = 0;
          v242 = 0;
          do
          {
            v243 = 0;
            v244 = v242 * (v69 + 1);
            v995 = v242 + 1;
            v245 = (v242 + 1) * (v69 + 1);
            do
            {
              v246 = v243 + 1;
              LOWORD(v1014[0]) = v241 + v243;
              LOWORD(v1013) = (v243 + 1) % v73 + v244;
              LOWORD(v1012) = v69 + 1 + v241 + v243;
              LOWORD(v1011) = (v243 + 1) % v73 + v245;
              sub_239EA1088(&__p, v1014);
              if (v987 == 2)
              {
                v247 = &v1011;
                v248 = v1014;
                v249 = &v1013;
                v250 = &v1012;
              }

              else
              {
                sub_239EA1088(&__p, &v1013);
                sub_239EA1088(&__p, &v1013);
                v247 = v1014;
                v249 = &v1012;
                v250 = &v1011;
                v248 = &v1012;
              }

              sub_239EA1088(&__p, v250);
              sub_239EA1088(&__p, &v1011);
              sub_239EA1088(&__p, v249);
              sub_239EA1088(&__p, v248);
              sub_239EA1088(&__p, v247);
              v243 = v246;
            }

            while (v73 != v246);
            v241 += v69 + 1;
            v242 = v995;
          }

          while (v995 != v989);
        }

        v251 = 0;
        v252 = v125 - 2 + ~v69;
        v253 = v252;
        do
        {
          v254 = ++v251 % v73;
          LOWORD(v1014[0]) = v125 - 1;
          sub_239EA1088(&__p, v1014);
          if (v987 == 2)
          {
            LOWORD(v1014[0]) = v254 + v252;
            sub_239EA1088(&__p, v1014);
            LOWORD(v1014[0]) = v253;
          }

          else
          {
            LOWORD(v1014[0]) = v253;
            sub_239EA1088(&__p, v1014);
            LOWORD(v1014[0]) = v253;
            sub_239EA1088(&__p, v1014);
            LOWORD(v1014[0]) = v254 + v252;
          }

          sub_239EA1088(&__p, v1014);
          ++v253;
        }

        while (v251 <= v69);
        v266 = objc_msgSend_name(v966, v255, v256, v257, v262, v263, v264, v265, v258, v259, v260, v261);
        v267 = v965;
        if (v267)
        {
          v268 = v267;
          v269 = 0x277CBE000;
        }

        else
        {
          v425 = objc_alloc_init(MDLMeshBufferDataAllocator);
          v269 = 0x277CBE000uLL;
          v268 = v425;
        }

        v426 = objc_alloc(*(v269 + 2704));
        v307 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v426, v427, __p, v998 - __p, v431, v432, v433, v434, 0, v428, v429, v430);
        v317 = objc_msgSend_newBufferWithData_type_(v268, v435, v307, 2, v440, v441, v442, v443, v436, v437, v438, v439);
        if (objc_msgSend_conformsToProtocol_(v317, v444, &unk_284D24D98, v445, v450, v451, v452, v453, v446, v447, v448, v449))
        {
          v454 = v317;
          v465 = objc_msgSend_stringByAppendingString_(v266, v455, @"-Indices", v456, v461, v462, v463, v464, v457, v458, v459, v460);
          objc_msgSend_setName_(v454, v466, v465, v467, v472, v473, v474, v475, v468, v469, v470, v471);
        }

        v476 = [MDLMaterial alloc];
        v477 = objc_opt_new();
        v361 = objc_msgSend_initWithName_scatteringFunction_(v476, v478, @"material", v477, v483, v484, v485, v486, v479, v480, v481, v482);

        v497 = objc_msgSend_propertyWithSemantic_(v361, v487, 2, v488, v493, v494, v495, v496, v489, v490, v491, v492);
        v498.n128_u32[0] = 1063675494;
        objc_msgSend_setFloatValue_(v497, v499, v500, v501, v498, v506, v507, v508, v502, v503, v504, v505);
        v519 = objc_msgSend_propertyWithSemantic_(v361, v509, 6, v510, v515, v516, v517, v518, v511, v512, v513, v514);

        v520.n128_u32[0] = 1058642330;
        objc_msgSend_setFloatValue_(v519, v521, v522, v523, v520, v528, v529, v530, v524, v525, v526, v527);
        v541 = objc_msgSend_propertyWithSemantic_(v361, v531, 0, v532, v537, v538, v539, v540, v533, v534, v535, v536);

        v542 = [MDLSubmesh alloc];
        v424 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v542, v543, v317, (v998 - __p) >> 1, v545, v546, v547, v548, 16, v987, v361, v544);
      }

      if (__p)
      {
        v998 = __p;
        operator delete(__p);
      }

      objc_msgSend_setVertexCount_(v966, v549, (v1007 - v1006) / 3uLL, v550, v555, v556, v557, v558, v551, v552, v553, v554);
      v559 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setSubmeshes_(v966, v560, v559, v561, v566, v567, v568, v569, v562, v563, v564, v565);

      v581 = objc_msgSend_submeshes(v966, v570, v571, v572, v577, v578, v579, v580, v573, v574, v575, v576);
      objc_msgSend_addObject_(v581, v582, v424, v583, v588, v589, v590, v591, v584, v585, v586, v587);

      v592 = objc_alloc_init(MDLVertexDescriptor);
      v604 = objc_msgSend_attributes(v592, v593, v594, v595, v600, v601, v602, v603, v596, v597, v598, v599);
      v615 = objc_msgSend_objectAtIndexedSubscript_(v604, v605, 0, v606, v611, v612, v613, v614, v607, v608, v609, v610);
      objc_msgSend_setName_(v615, v616, @"position", v617, v622, v623, v624, v625, v618, v619, v620, v621);

      v637 = objc_msgSend_attributes(v592, v626, v627, v628, v633, v634, v635, v636, v629, v630, v631, v632);
      v648 = objc_msgSend_objectAtIndexedSubscript_(v637, v638, 0, v639, v644, v645, v646, v647, v640, v641, v642, v643);
      objc_msgSend_setFormat_(v648, v649, 786435, v650, v655, v656, v657, v658, v651, v652, v653, v654);

      v670 = objc_msgSend_attributes(v592, v659, v660, v661, v666, v667, v668, v669, v662, v663, v664, v665);
      v681 = objc_msgSend_objectAtIndexedSubscript_(v670, v671, 0, v672, v677, v678, v679, v680, v673, v674, v675, v676);
      objc_msgSend_setBufferIndex_(v681, v682, 0, v683, v688, v689, v690, v691, v684, v685, v686, v687);

      v703 = objc_msgSend_attributes(v592, v692, v693, v694, v699, v700, v701, v702, v695, v696, v697, v698);
      v714 = objc_msgSend_objectAtIndexedSubscript_(v703, v704, 1, v705, v710, v711, v712, v713, v706, v707, v708, v709);
      objc_msgSend_setName_(v714, v715, @"normal", v716, v721, v722, v723, v724, v717, v718, v719, v720);

      v736 = objc_msgSend_attributes(v592, v725, v726, v727, v732, v733, v734, v735, v728, v729, v730, v731);
      v747 = objc_msgSend_objectAtIndexedSubscript_(v736, v737, 1, v738, v743, v744, v745, v746, v739, v740, v741, v742);
      objc_msgSend_setFormat_(v747, v748, 786435, v749, v754, v755, v756, v757, v750, v751, v752, v753);

      v769 = objc_msgSend_attributes(v592, v758, v759, v760, v765, v766, v767, v768, v761, v762, v763, v764);
      v780 = objc_msgSend_objectAtIndexedSubscript_(v769, v770, 1, v771, v776, v777, v778, v779, v772, v773, v774, v775);
      objc_msgSend_setBufferIndex_(v780, v781, 0, v782, v787, v788, v789, v790, v783, v784, v785, v786);

      v802 = objc_msgSend_attributes(v592, v791, v792, v793, v798, v799, v800, v801, v794, v795, v796, v797);
      v813 = objc_msgSend_objectAtIndexedSubscript_(v802, v803, 2, v804, v809, v810, v811, v812, v805, v806, v807, v808);
      objc_msgSend_setName_(v813, v814, @"textureCoordinate", v815, v820, v821, v822, v823, v816, v817, v818, v819);

      v835 = objc_msgSend_attributes(v592, v824, v825, v826, v831, v832, v833, v834, v827, v828, v829, v830);
      v846 = objc_msgSend_objectAtIndexedSubscript_(v835, v836, 2, v837, v842, v843, v844, v845, v838, v839, v840, v841);
      objc_msgSend_setFormat_(v846, v847, 786434, v848, v853, v854, v855, v856, v849, v850, v851, v852);

      v868 = objc_msgSend_attributes(v592, v857, v858, v859, v864, v865, v866, v867, v860, v861, v862, v863);
      v879 = objc_msgSend_objectAtIndexedSubscript_(v868, v869, 2, v870, v875, v876, v877, v878, v871, v872, v873, v874);
      objc_msgSend_setBufferIndex_(v879, v880, 0, v881, v886, v887, v888, v889, v882, v883, v884, v885);

      objc_msgSend_setPackedOffsets(v592, v890, v891, v892, v897, v898, v899, v900, v893, v894, v895, v896);
      objc_msgSend_setPackedStrides(v592, v901, v902, v903, v908, v909, v910, v911, v904, v905, v906, v907);
      v912 = [MDLAsset alloc];
      v924 = objc_msgSend_vertexDescriptor(v966, v913, v914, v915, v920, v921, v922, v923, v916, v917, v918, v919);
      v933 = objc_msgSend_initWithURL_vertexDescriptor_bufferAllocator_(v912, v925, 0, v924, v929, v930, v931, v932, v965, v926, v927, v928);

      objc_msgSend_addObject_(v933, v934, v966, v935, v940, v941, v942, v943, v936, v937, v938, v939);
      objc_msgSend__conformVertexBuffers_error_(v933, v944, v592, 0, v949, v950, v951, v952, v945, v946, v947, v948);
      objc_msgSend_removeObject_(v933, v953, v966, v954, v959, v960, v961, v962, v955, v956, v957, v958);

      if (v1000)
      {
        v1001 = v1000;
        operator delete(v1000);
      }

      if (v1003)
      {
        v1004 = v1003;
        operator delete(v1003);
      }

      if (v1006)
      {
        v1007 = v1006;
        operator delete(v1006);
      }

      objc_autoreleasePoolPop(v983);
      v20 = v965;
      inited = v966;
    }

    else
    {
      v68.n128_u64[0] = __PAIR64__(v11, v69);
      v66.n128_f32[0] = v991.n128_f32[1] * 0.5;
      v109 = v991;
      v109.n128_f32[1] = v991.n128_f32[1] * 0.5;
      v20 = v51;
      inited = objc_msgSend_initSphereWithExtent_segments_inwardNormals_geometryType_allocator_(inited, v62, v10, v987, v109, v68, v66, v67, v51, v63, v64, v65);
    }
  }

  return inited;
}

+ (MDLMesh)newCapsuleWithHeight:(float)height radii:(vector_float2)radii radialSegments:(NSUInteger)radialSegments verticalSegments:(NSUInteger)verticalSegments hemisphereSegments:(NSUInteger)hemisphereSegments geometryType:(MDLGeometryType)geometryType inwardNormals:(BOOL)inwardNormals allocator:(id)allocator
{
  v10 = inwardNormals;
  v13 = verticalSegments;
  v14 = radialSegments;
  v25 = *&height;
  v26 = *radii.f32;
  v15 = allocator;
  v16 = [MDLMesh alloc];
  v17.n128_u64[1] = v26.n128_u64[1];
  v18 = v26;
  v18.n128_u32[1] = v25.n128_u32[0];
  v18.n128_u32[2] = v26.n128_u32[1];
  v17.n128_u64[0] = __PAIR64__(v13, v14);
  inited = objc_msgSend_initCapsuleWithExtent_cylinderSegments_hemisphereSegments_inwardNormals_geometryType_allocator_(v16, v19, hemisphereSegments, v10, v18, v17, v25, v22, geometryType, v15, v20, v21);

  return inited;
}

- (MDLMesh)initPlaneWithExtent:(vector_float3)extent segments:(vector_uint2)segments geometryType:(MDLGeometryType)geometryType allocator:(id)allocator
{
  v7 = extent.i64[0];
  v8 = v6;
  v742 = *segments.i8;
  v17 = extent.i64[1];
  v736 = v7;
  if (v7 >= 5)
  {
    v22 = MEMORY[0x277CBEAD8];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v22, v26, @"ModelIOException", @"[%@ %@]: invalid geometryType requested", v31, v32, v33, v34, v27, v28, v29, v30, v24, v25);
  }

  v35 = objc_msgSend_initWithBufferAllocator_(self, v11, v17, v12, v18, v19, v20, v21, v13, v14, v15, v16);
  v47 = v35;
  if (!v35)
  {
    v62 = v17;
    goto LABEL_60;
  }

  v48 = objc_msgSend_allocator(v35, v36, v37, v38, v43, v44, v45, v46, v39, v40, v41, v42);

  objc_msgSend_setName_(v47, v49, @"plane", v50, v55, v56, v57, v58, v51, v52, v53, v54);
  v59 = objc_autoreleasePoolPush();
  v60 = vmax_s32(v8, 0x100000001);
  v61 = *(&v742 + 2);
  v741 = xmmword_239F9AD10;
  v739 = xmmword_239F9C070;
  if (*(&v742 + 1) >= *&v742 || *(&v742 + 1) >= *(&v742 + 2))
  {
    if (*(&v742 + 2) >= *&v742 || *(&v742 + 2) >= *(&v742 + 1))
    {
      v741 = xmmword_239F9C090;
      LODWORD(v742) = DWORD1(v742);
    }

    else
    {
      v739 = xmmword_239F9C090;
      v61 = *(&v742 + 1);
    }
  }

  v744 = v60;
  v63 = vadd_s32(v60, 0x100000001);
  v64 = v63.i32[0];
  v65 = (v63.i32[1] * v63.i32[0]);
  v757 = 0;
  v758 = 0;
  v759 = 0;
  sub_239E95D48(&v757, 3 * v65);
  v754 = 0;
  v755 = 0;
  v756 = 0;
  sub_239E95D48(&v754, 3 * v65);
  v737 = v64;
  context = v59;
  v751 = 0;
  v752 = 0;
  v753 = 0;
  sub_239E95D48(&v751, 2 * v65);
  v66 = 0;
  v67 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v741, v741), v741, 0xCuLL), v739)), vextq_s8(vuzp1q_s32(v739, v739), v739, 0xCuLL), v741);
  v68 = vmulq_f32(v67, 0);
  v738 = vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL);
  v69 = v744.i32[0];
  v70 = v744.i32[1];
  v71 = v67.i32[2];
  v72 = v67.i64[0];
  v73 = 1.0 / v744.u32[1];
  v74 = 1.0 / v744.u32[0];
  v75 = v744.i32[0] + 1;
  do
  {
    v76 = 0;
    v743 = vmlaq_n_f32(v738, v739, -((v61 * 0.5) - ((v61 * v66) * v73)));
    do
    {
      v745 = vmlaq_n_f32(v743, v741, -((*&v742 * 0.5) - ((*&v742 * v76) * v74)));
      LODWORD(__p) = v745.i32[0];
      sub_239E798A4(&v757, &__p);
      LODWORD(__p) = v745.i32[1];
      sub_239E798A4(&v757, &__p);
      LODWORD(__p) = v745.i32[2];
      sub_239E798A4(&v757, &__p);
      *&__p = v76 * v74;
      sub_239E798A4(&v751, &__p);
      *&__p = v66 * v73;
      sub_239E798A4(&v751, &__p);
      LODWORD(__p) = v71;
      sub_239E798A4(&v754, &__p);
      LODWORD(__p) = v72;
      sub_239E798A4(&v754, &__p);
      LODWORD(__p) = HIDWORD(v72);
      sub_239E798A4(&v754, &__p);
      ++v76;
    }

    while (v75 != v76);
  }

  while (v66++ != v70);
  v89 = MEMORY[0x277CCACA8];
  v90 = objc_msgSend_name(v47, v77, v78, v79, v84, v85, v86, v87, v80, v81, v82, v83);
  v746 = v48;
  v101 = objc_msgSend_stringWithFormat_(v89, v91, @"%@-%@", v92, v97, v98, v99, v100, v93, v94, v95, v96, v90, @"position");
  v102 = objc_alloc(MEMORY[0x277CBEA90]);
  v111 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v102, v103, v757, v758 - v757, v107, v108, v109, v110, 0, v104, v105, v106);
  objc_msgSend_addAttributeWithName_format_type_data_stride_(v47, v112, v101, 786435, v114, v115, v116, v117, @"position", v111, 12, v113);

  v118 = MEMORY[0x277CCACA8];
  v130 = objc_msgSend_name(v47, v119, v120, v121, v126, v127, v128, v129, v122, v123, v124, v125);
  v141 = objc_msgSend_stringWithFormat_(v118, v131, @"%@-%@", v132, v137, v138, v139, v140, v133, v134, v135, v136, v130, @"normal");
  v142 = objc_alloc(MEMORY[0x277CBEA90]);
  v151 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v142, v143, v754, v755 - v754, v147, v148, v149, v150, 0, v144, v145, v146);
  objc_msgSend_addAttributeWithName_format_type_data_stride_(v47, v152, v141, 786435, v154, v155, v156, v157, @"normal", v151, 12, v153);

  v158 = MEMORY[0x277CCACA8];
  v170 = objc_msgSend_name(v47, v159, v160, v161, v166, v167, v168, v169, v162, v163, v164, v165);
  v181 = objc_msgSend_stringWithFormat_(v158, v171, @"%@-%@", v172, v177, v178, v179, v180, v173, v174, v175, v176, v170, @"textureCoordinate");
  v182 = objc_alloc(MEMORY[0x277CBEA90]);
  v183 = v737;
  v192 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v182, v184, v751, v752 - v751, v188, v189, v190, v191, 0, v185, v186, v187);
  objc_msgSend_addAttributeWithName_format_type_data_stride_(v47, v193, v181, 786434, v195, v196, v197, v198, @"textureCoordinate", v192, 8, v194);

  __p = 0;
  v749 = 0;
  v750 = 0;
  v734 = v47;
  if (v736 > 2)
  {
    if (v736 == 4)
    {
      v219 = 0;
      v220 = 0;
      do
      {
        v221 = v219;
        v222 = v69;
        do
        {
          v747 = v221;
          sub_239EA1088(&__p, &v747);
          v747 = v69 + v221 + 1;
          sub_239EA1088(&__p, &v747);
          v747 = v69 + v221 + 2;
          sub_239EA1088(&__p, &v747);
          v747 = v221 + 1;
          sub_239EA1088(&__p, &v747);
          ++v221;
          --v222;
        }

        while (v222);
        ++v220;
        v219 += v737;
      }

      while (v220 != v70);
      goto LABEL_49;
    }

    if (v736 == 3)
    {
      v206 = 0;
      v207 = 0;
      v208 = v737;
      do
      {
        v209 = ++v207 * v183;
        v210 = v206;
        v211 = v208;
        v212 = v69 + 1;
        do
        {
          v747 = v210;
          sub_239EA1088(&__p, &v747);
          v747 = v211;
          sub_239EA1088(&__p, &v747);
          ++v211;
          ++v210;
          --v212;
        }

        while (v212);
        v747 = v209 + v69;
        sub_239EA1088(&__p, &v747);
        v183 = v737;
        v208 += v737;
        v206 += v737;
      }

      while (v207 != v70);
      goto LABEL_49;
    }

LABEL_35:
    v213 = 0;
    v214 = 0;
    do
    {
      v215 = v213;
      v216 = v69;
      do
      {
        v747 = v215 + 1;
        sub_239EA1088(&__p, &v747);
        v747 = v215;
        sub_239EA1088(&__p, &v747);
        v747 = v69 + v215 + 1;
        sub_239EA1088(&__p, &v747);
        v747 = v215 + 1;
        sub_239EA1088(&__p, &v747);
        v747 = v69 + v215 + 1;
        sub_239EA1088(&__p, &v747);
        v747 = v69 + v215 + 2;
        sub_239EA1088(&__p, &v747);
        ++v215;
        --v216;
      }

      while (v216);
      ++v214;
      v213 += v737;
    }

    while (v214 != v70);
    goto LABEL_49;
  }

  if (!v736)
  {
    v217 = 0;
    if (v65 <= 1)
    {
      v218 = 1;
    }

    else
    {
      v218 = v65;
    }

    do
    {
      v747 = v217;
      sub_239EA1088(&__p, &v747);
      ++v217;
    }

    while (v218 != v217);
    goto LABEL_49;
  }

  if (v736 != 1)
  {
    goto LABEL_35;
  }

  v199 = 0;
  v200 = 0;
  do
  {
    v201 = v199;
    v202 = v69;
    do
    {
      v747 = v201 + 1;
      sub_239EA1088(&__p, &v747);
      v747 = v201;
      sub_239EA1088(&__p, &v747);
      v747 = v201;
      sub_239EA1088(&__p, &v747);
      v747 = v69 + v201 + 1;
      sub_239EA1088(&__p, &v747);
      ++v201;
      --v202;
    }

    while (v202);
    ++v200;
    v199 += v737;
  }

  while (v200 != v70);
  v203 = v737 * v70;
  v204 = v69;
  do
  {
    v747 = v203;
    sub_239EA1088(&__p, &v747);
    v747 = ++v203;
    sub_239EA1088(&__p, &v747);
    --v204;
  }

  while (v204);
  v205 = 2 * v69;
  do
  {
    v747 = v69;
    sub_239EA1088(&__p, &v747);
    v747 = v205 + 1;
    sub_239EA1088(&__p, &v747);
    v205 += v737;
    v69 += v737;
    --v70;
  }

  while (v70);
LABEL_49:
  v224 = __p;
  v223 = v749;
  v225 = objc_alloc(MEMORY[0x277CBEA90]);
  v234 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v225, v226, __p, v223 - v224, v230, v231, v232, v233, 0, v227, v228, v229);
  v244 = objc_msgSend_newBufferWithData_type_(v746, v235, v234, 2, v240, v241, v242, v243, v236, v237, v238, v239);
  v47 = v734;
  if (objc_msgSend_conformsToProtocol_(v244, v245, &unk_284D24D98, v246, v251, v252, v253, v254, v247, v248, v249, v250))
  {
    v255 = v244;
    v267 = objc_msgSend_name(v734, v256, v257, v258, v263, v264, v265, v266, v259, v260, v261, v262);
    v278 = objc_msgSend_stringByAppendingString_(v267, v268, @"-Indices", v269, v274, v275, v276, v277, v270, v271, v272, v273);
    objc_msgSend_setName_(v255, v279, v278, v280, v285, v286, v287, v288, v281, v282, v283, v284);
  }

  v289 = [MDLMaterial alloc];
  v301 = objc_msgSend_name(v734, v290, v291, v292, v297, v298, v299, v300, v293, v294, v295, v296);
  v312 = objc_msgSend_stringByAppendingString_(v301, v302, @"-Material", v303, v308, v309, v310, v311, v304, v305, v306, v307);
  v313 = objc_opt_new();
  v740 = objc_msgSend_initWithName_scatteringFunction_(v289, v314, v312, v313, v319, v320, v321, v322, v315, v316, v317, v318);

  v323 = [MDLSubmesh alloc];
  v329 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v323, v324, @"submesh", v244, v325, v326, v327, v328, (v749 - __p) >> 1, 16, v736, v740, 0);
  objc_msgSend_setVertexCount_(v734, v330, ((v758 - v757) >> 2) / 3uLL, v331, v336, v337, v338, v339, v332, v333, v334, v335);
  v340 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_addObject_(v340, v341, v329, v342, v347, v348, v349, v350, v343, v344, v345, v346);
  objc_msgSend_setSubmeshes_(v734, v351, v340, v352, v357, v358, v359, v360, v353, v354, v355, v356);
  v361 = objc_alloc_init(MDLVertexDescriptor);
  v373 = objc_msgSend_attributes(v361, v362, v363, v364, v369, v370, v371, v372, v365, v366, v367, v368);
  v384 = objc_msgSend_objectAtIndexedSubscript_(v373, v374, 0, v375, v380, v381, v382, v383, v376, v377, v378, v379);
  objc_msgSend_setName_(v384, v385, @"position", v386, v391, v392, v393, v394, v387, v388, v389, v390);

  v406 = objc_msgSend_attributes(v361, v395, v396, v397, v402, v403, v404, v405, v398, v399, v400, v401);
  v417 = objc_msgSend_objectAtIndexedSubscript_(v406, v407, 0, v408, v413, v414, v415, v416, v409, v410, v411, v412);
  objc_msgSend_setFormat_(v417, v418, 786435, v419, v424, v425, v426, v427, v420, v421, v422, v423);

  v439 = objc_msgSend_attributes(v361, v428, v429, v430, v435, v436, v437, v438, v431, v432, v433, v434);
  v450 = objc_msgSend_objectAtIndexedSubscript_(v439, v440, 0, v441, v446, v447, v448, v449, v442, v443, v444, v445);
  objc_msgSend_setBufferIndex_(v450, v451, 0, v452, v457, v458, v459, v460, v453, v454, v455, v456);

  v472 = objc_msgSend_attributes(v361, v461, v462, v463, v468, v469, v470, v471, v464, v465, v466, v467);
  v483 = objc_msgSend_objectAtIndexedSubscript_(v472, v473, 1, v474, v479, v480, v481, v482, v475, v476, v477, v478);
  objc_msgSend_setName_(v483, v484, @"normal", v485, v490, v491, v492, v493, v486, v487, v488, v489);

  v505 = objc_msgSend_attributes(v361, v494, v495, v496, v501, v502, v503, v504, v497, v498, v499, v500);
  v516 = objc_msgSend_objectAtIndexedSubscript_(v505, v506, 1, v507, v512, v513, v514, v515, v508, v509, v510, v511);
  objc_msgSend_setFormat_(v516, v517, 786435, v518, v523, v524, v525, v526, v519, v520, v521, v522);

  v538 = objc_msgSend_attributes(v361, v527, v528, v529, v534, v535, v536, v537, v530, v531, v532, v533);
  v549 = objc_msgSend_objectAtIndexedSubscript_(v538, v539, 1, v540, v545, v546, v547, v548, v541, v542, v543, v544);
  objc_msgSend_setBufferIndex_(v549, v550, 0, v551, v556, v557, v558, v559, v552, v553, v554, v555);

  v571 = objc_msgSend_attributes(v361, v560, v561, v562, v567, v568, v569, v570, v563, v564, v565, v566);
  v582 = objc_msgSend_objectAtIndexedSubscript_(v571, v572, 2, v573, v578, v579, v580, v581, v574, v575, v576, v577);
  objc_msgSend_setName_(v582, v583, @"textureCoordinate", v584, v589, v590, v591, v592, v585, v586, v587, v588);

  v604 = objc_msgSend_attributes(v361, v593, v594, v595, v600, v601, v602, v603, v596, v597, v598, v599);
  v615 = objc_msgSend_objectAtIndexedSubscript_(v604, v605, 2, v606, v611, v612, v613, v614, v607, v608, v609, v610);
  objc_msgSend_setFormat_(v615, v616, 786434, v617, v622, v623, v624, v625, v618, v619, v620, v621);

  v637 = objc_msgSend_attributes(v361, v626, v627, v628, v633, v634, v635, v636, v629, v630, v631, v632);
  v648 = objc_msgSend_objectAtIndexedSubscript_(v637, v638, 2, v639, v644, v645, v646, v647, v640, v641, v642, v643);
  objc_msgSend_setBufferIndex_(v648, v649, 0, v650, v655, v656, v657, v658, v651, v652, v653, v654);

  objc_msgSend_setPackedOffsets(v361, v659, v660, v661, v666, v667, v668, v669, v662, v663, v664, v665);
  objc_msgSend_setPackedStrides(v361, v670, v671, v672, v677, v678, v679, v680, v673, v674, v675, v676);
  v681 = [MDLAsset alloc];
  v693 = objc_msgSend_vertexDescriptor(v734, v682, v683, v684, v689, v690, v691, v692, v685, v686, v687, v688);
  v702 = objc_msgSend_initWithURL_vertexDescriptor_bufferAllocator_(v681, v694, 0, v693, v698, v699, v700, v701, v746, v695, v696, v697);

  objc_msgSend_addObject_(v702, v703, v734, v704, v709, v710, v711, v712, v705, v706, v707, v708);
  objc_msgSend__conformVertexBuffers_error_(v702, v713, v361, 0, v718, v719, v720, v721, v714, v715, v716, v717);
  objc_msgSend_removeObject_(v702, v722, v734, v723, v728, v729, v730, v731, v724, v725, v726, v727);

  if (__p)
  {
    v749 = __p;
    operator delete(__p);
  }

  v62 = v746;
  if (v751)
  {
    v752 = v751;
    operator delete(v751);
  }

  if (v754)
  {
    v755 = v754;
    operator delete(v754);
  }

  if (v757)
  {
    v758 = v757;
    operator delete(v757);
  }

  objc_autoreleasePoolPop(context);
  v732 = v734;
LABEL_60:

  return v47;
}

+ (MDLMesh)newPlaneWithDimensions:(vector_float2)dimensions segments:(vector_uint2)segments geometryType:(MDLGeometryType)geometryType allocator:(id)allocator
{
  v21 = *dimensions.f32;
  v8 = allocator;
  v9 = [MDLMesh alloc];
  v10 = vzip1q_s32(0, v21);
  v11 = vextq_s8(v10, 0, 4uLL);
  v10.n128_u64[0] = segments;
  inited = objc_msgSend_initPlaneWithExtent_segments_geometryType_allocator_(v9, v12, geometryType, v8, v11, v10, v17, v18, v13, v14, v15, v16);

  return inited;
}

- (void)setVertexBuffers:(NSArray *)vertexBuffers
{
  v17 = vertexBuffers;
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend_initWithArray_(v4, v5, v17, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v16 = self->_vertexBuffers;
  self->_vertexBuffers = v15;
}

- (MDLVertexDescriptor)vertexDescriptor
{
  vertexDescriptor = self->_vertexDescriptor;
  v3 = MEMORY[0x23EE7E350]();
  v14 = objc_msgSend_copyWithZone_(vertexDescriptor, v4, v3, v5, v10, v11, v12, v13, v6, v7, v8, v9);

  return v14;
}

- (void)debugPrintToFile:(__sFILE *)file
{
  v329 = *MEMORY[0x277D85DE8];
  v13 = objc_msgSend_name(self, a2, file, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v14 = v13;
  v25 = objc_msgSend_cStringUsingEncoding_(v14, v15, 4, v16, v21, v22, v23, v24, v17, v18, v19, v20);
  fprintf(file, "Mesh:%s vertexCount %llu\n", v25, self->_vertexCount);

  objc_msgSend_debugPrintToFile_(self->_vertexDescriptor, v26, file, v27, v32, v33, v34, v35, v28, v29, v30, v31);
  v323 = 0u;
  v324 = 0u;
  v321 = 0u;
  v322 = 0u;
  obj = objc_msgSend_attributes(self->_vertexDescriptor, v36, v37, v38, 0, v43, v44, v45, v39, v40, v41, v42);
  v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v46, &v321, v328, v50, v51, v52, v53, 16, v47, v48, v49);
  if (v54)
  {
    v317 = 0;
    v313 = *v322;
    v64 = vdupq_n_s64(0x3F60080402010080uLL);
    __asm { FMOV            V0.2D, #-1.0 }

    v315 = _Q0;
    v316 = v64;
    do
    {
      v318 = 0;
      v314 = v54;
      do
      {
        if (*v322 != v313)
        {
          objc_enumerationMutation(obj);
        }

        v70 = *(*(&v321 + 1) + 8 * v318);
        v71 = objc_msgSend_null(MEMORY[0x277CBEB68], v55, v56, v57, _Q0, v64, v62, v63, v58, v59, v60, v61);
        if (objc_msgSend_isEqual_(v70, v72, v71, v73, v78, v79, v80, v81, v74, v75, v76, v77))
        {

          goto LABEL_52;
        }

        v93 = objc_msgSend_format(v70, v82, v83, v84, v89, v90, v91, v92, v85, v86, v87, v88) == 0;

        if (!v93)
        {
          v94 = objc_msgSend_bufferIndex(v70, v55, v56, v57, _Q0, v64, v62, v63, v58, v59, v60, v61);
          v106 = objc_msgSend_layouts(self->_vertexDescriptor, v95, v96, v97, v102, v103, v104, v105, v98, v99, v100, v101);
          v117 = objc_msgSend_objectAtIndexedSubscript_(v106, v107, v94, v108, v113, v114, v115, v116, v109, v110, v111, v112);
          v319 = objc_msgSend_stride(v117, v118, v119, v120, v125, v126, v127, v128, v121, v122, v123, v124);

          v140 = objc_msgSend_name(v70, v129, v130, v131, v136, v137, v138, v139, v132, v133, v134, v135);
          v141 = v140;
          v152 = objc_msgSend_cStringUsingEncoding_(v140, v142, 4, v143, v148, v149, v150, v151, v144, v145, v146, v147);
          fprintf(file, "%llu %s:\n", v317, v152);

          v163 = objc_msgSend_objectAtIndexedSubscript_(self->_vertexBuffers, v153, v94, v154, v159, v160, v161, v162, v155, v156, v157, v158);
          v175 = objc_msgSend_map(v163, v164, v165, v166, v171, v172, v173, v174, v167, v168, v169, v170);
          v187 = objc_msgSend_bytes(v175, v176, v177, v178, v183, v184, v185, v186, v179, v180, v181, v182);
          v199 = objc_msgSend_offset(v70, v188, v189, v190, v195, v196, v197, v198, v191, v192, v193, v194);

          if (self->_vertexCount)
          {
            v211 = 0;
            v212 = (v187 + v199);
            do
            {
              if (objc_msgSend_format(v70, v200, v201, v202, v207, v208, v209, v210, v203, v204, v205, v206) <= 0x10000)
              {
                fputc(40, file);
                v251 = objc_msgSend_format(v70, v240, v241, v242, v247, v248, v249, v250, v243, v244, v245, v246);
                if (v251 == 593924)
                {
                  fprintf(file, "%f %f %f %f", (*v212 >> 22) * 0.000977517107, ((*v212 >> 12) & 0x3FF) * 0.000977517107, ((*v212 >> 2) & 0x3FF) * 0.000977517107, (*v212 & 3) * 0.333333333);
                }

                else if (v251 == 659460)
                {
                  v252 = 0;
                  v253 = *v212;
                  v325 = (*v212 >> 22) * 0.00195694716;
                  v254 = vand_s8(vshl_u32(vdup_n_s32(v253), 0xFFFFFFFEFFFFFFF4), 0x300000003);
                  v255.i64[0] = v254.u32[0];
                  v255.i64[1] = v254.u32[1];
                  v326 = vmulq_f64(vcvtq_f64_u64(v255), v316);
                  v327 = (v253 & 3);
                  do
                  {
                    *(&v325 + v252) = vbslq_s8(vcgtq_f64(v315, *(&v325 + v252)), v315, *(&v325 + v252));
                    v252 += 16;
                  }

                  while (v252 != 32);
                  fprintf(file, "%f %f %f %f", v325, v326.f64[0], v326.f64[1], v327);
                }
              }

              else
              {
                v224 = objc_msgSend_format(v70, v213, v214, v215, v220, v221, v222, v223, v216, v217, v218, v219);
                fputc(40, file);
                if (v224)
                {
                  v236 = 0;
                  v237 = v224 - 1;
                  do
                  {
                    v238 = objc_msgSend_format(v70, v225, v226, v227, v232, v233, v234, v235, v228, v229, v230, v231);
                    v239 = ((v238 & 0xFFFF0000) - 0x10000) >> 16;
                    if (v239 > 5)
                    {
                      if (((v238 & 0xFFFF0000) - 0x10000) >> 16 <= 8)
                      {
                        if (v239 == 6 || v239 == 7)
                        {
                          goto LABEL_39;
                        }

                        if (v239 != 8)
                        {
                          goto LABEL_40;
                        }

                        goto LABEL_37;
                      }

                      switch(v239)
                      {
                        case 9uLL:
                          goto LABEL_37;
                        case 0xAuLL:
                          sub_239F5E87C(*(v212 + v236));
LABEL_39:
                          fprintf(file, "%f");
                          break;
                        case 0xBuLL:
                          goto LABEL_39;
                      }
                    }

                    else
                    {
                      if (((v238 & 0xFFFF0000) - 0x10000) >> 16 > 2)
                      {
                        if (v239 == 3)
                        {
                          goto LABEL_39;
                        }

                        if (v239 != 4 && v239 != 5)
                        {
                          goto LABEL_40;
                        }

LABEL_37:
                        fprintf(file, "%d");
                        goto LABEL_40;
                      }

                      if (v239 < 2)
                      {
                        goto LABEL_37;
                      }

                      if (v239 == 2)
                      {
                        goto LABEL_39;
                      }
                    }

LABEL_40:
                    if (v237)
                    {
                      fputc(32, file);
                    }

                    ++v236;
                    --v237;
                  }

                  while (v236 < v224);
                }
              }

              fwrite(") ", 2uLL, 1uLL, file);
              v212 = (v212 + v319);
              ++v211;
              fputc(10, file);
            }

            while (v211 < self->_vertexCount);
          }

          fputc(10, file);
        }

LABEL_52:
        ++v317;
        ++v318;
      }

      while (v318 != v314);
      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v55, &v321, v328, _Q0, v64, v62, v63, 16, v59, v60, v61);
    }

    while (v54);
  }

  v267 = objc_msgSend_count(self->_submeshes, v256, v257, v258, v263, v264, v265, v266, v259, v260, v261, v262);
  fprintf(file, "submeshes:%llu\n", v267);
  if (objc_msgSend_count(self->_submeshes, v268, v269, v270, v275, v276, v277, v278, v271, v272, v273, v274))
  {
    v279 = 0;
    do
    {
      fprintf(file, "submesh #%llu\n", v279);
      v290 = objc_msgSend_objectAtIndexedSubscript_(self->_submeshes, v280, v279, v281, v286, v287, v288, v289, v282, v283, v284, v285);
      objc_msgSend_debugPrintToFile_(v290, v291, file, v292, v297, v298, v299, v300, v293, v294, v295, v296);

      ++v279;
    }

    while (v279 < objc_msgSend_count(self->_submeshes, v301, v302, v303, v308, v309, v310, v311, v304, v305, v306, v307));
  }
}

- (void)setVertexDescriptor:(MDLVertexDescriptor *)vertexDescriptor
{
  v19 = vertexDescriptor;
  v4 = sub_239F53608(self->_vertexBuffers, self->_vertexCount, self->_vertexDescriptor, v19, 0, 1);
  vertexBuffers = self->_vertexBuffers;
  self->_vertexBuffers = v4;

  v6 = [MDLVertexDescriptor alloc];
  v17 = objc_msgSend_initWithVertexDescriptor_(v6, v7, v19, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  v18 = self->_vertexDescriptor;
  self->_vertexDescriptor = v17;
}

- (void)setSubmeshes:(NSMutableArray *)submeshes
{
  v17 = submeshes;
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v15 = objc_msgSend_initWithArray_(v4, v5, v17, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v16 = self->_submeshes;
  self->_submeshes = v15;
}

- (MDLAxisAlignedBoundingBox)boundingBox
{
  v43 = *MEMORY[0x277D85DE8];
  anon_50 = self->_anon_50;
  __asm { FMOV            V1.4S, #-1.0 }

  *self->_anon_50 = _Q1;
  *&self->_anon_50[16] = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = self->_submeshes;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v36, v42, v15, v16, v17, v18, 16, v12, v13, v14);
  if (v25)
  {
    v30 = *v37;
    do
    {
      v31 = 0;
      do
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(v10);
        }

        v32 = *(*(&v36 + 1) + 8 * v31);
        if (v32)
        {
          objc_msgSend_boundingBoxForMesh_(v32, v26, v27, v28, v29, v19, self, v20, v21, v22, v23, v24, v36);
          v34 = v40;
          v33 = v41;
        }

        else
        {
          v33 = 0uLL;
          v34 = 0uLL;
        }

        v40 = v34;
        v41 = v33;
        sub_239EB1DF0(anon_50, &v40);
        ++v31;
      }

      while (v25 != v31);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v19, &v36, v42, v26, v27, v28, v29, 16, v22, v23, v24);
    }

    while (v25);
  }

  return result;
}

- (MDLMesh)initWithBufferAllocator:(id)bufferAllocator
{
  v4 = bufferAllocator;
  v20.receiver = self;
  v20.super_class = MDLMesh;
  v5 = [(MDLObject *)&v20 init];
  if (v5)
  {
    v6 = v4;
    if (!v4)
    {
      v6 = objc_alloc_init(MDLMeshBufferDataAllocator);
    }

    objc_storeStrong(&v5->_allocator, v6);
    if (!v4)
    {
    }

    __asm { FMOV            V1.4S, #-1.0 }

    *v5->_anon_50 = _Q1;
    *&v5->_anon_50[16] = 0u;
    v5->_vertexCount = 0;
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    vertexBuffers = v5->_vertexBuffers;
    v5->_vertexBuffers = v12;

    v14 = objc_alloc_init(MDLVertexDescriptor);
    vertexDescriptor = v5->_vertexDescriptor;
    v5->_vertexDescriptor = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    submeshes = v5->_submeshes;
    v5->_submeshes = v16;

    v18 = v5;
  }

  return v5;
}

- (void)_createWithVertexBuffer:(id)buffer vertexCount:(unint64_t)count descriptor:(id)descriptor submeshes:(id)submeshes
{
  v157 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  submeshesCopy = submeshes;
  v150 = bufferCopy;
  v10 = NSStringFromSelector(sel_initWithVertexBuffer_vertexCount_descriptor_submeshes_);
  if (objc_msgSend_type(bufferCopy, v11, v12, v13, v18, v19, v20, v21, v14, v15, v16, v17) != 1)
  {
    v32 = MEMORY[0x277CBEAD8];
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    objc_msgSend_raise_format_(v32, v35, @"ModelIOException", @"[%@ %@]: vertexBuffer.type must be MDLMeshBufferTypeVertex", v40, v41, v42, v43, v36, v37, v38, v39, v34, v10);
  }

  v44 = descriptorCopy;
  if (!descriptorCopy)
  {
    v45 = MEMORY[0x277CBEAD8];
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    objc_msgSend_raise_format_(v45, v48, @"ModelIOException", @"[%@ %@]: No descriptor supplied", v53, v54, v55, v56, v49, v50, v51, v52, v47, v10);

    v44 = 0;
  }

  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v57 = objc_msgSend_attributes(v44, v22, v23, v24, 0, v29, v30, v31, v25, v26, v27, v28);
  v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v152, v156, v62, v63, v64, v65, 16, v59, v60, v61);
  if (v73)
  {
    v78 = *v153;
    do
    {
      v79 = 0;
      do
      {
        if (*v153 != v78)
        {
          objc_enumerationMutation(v57);
        }

        if (objc_msgSend_bufferIndex(*(*(&v152 + 1) + 8 * v79), v66, v67, v68, v74, v75, v76, v77, v69, v70, v71, v72))
        {
          v80 = MEMORY[0x277CBEAD8];
          v81 = objc_opt_class();
          v82 = NSStringFromClass(v81);
          objc_msgSend_raise_format_(v80, v83, @"ModelIOException", @"[%@ %@]: Buffer index out of range", v88, v89, v90, v91, v84, v85, v86, v87, v82, v10);
        }

        ++v79;
      }

      while (v73 != v79);
      v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v66, &v152, v156, v74, v75, v76, v77, 16, v70, v71, v72);
    }

    while (v73);
  }

  v103 = objc_msgSend_allocator(v150, v92, v93, v94, v99, v100, v101, v102, v95, v96, v97, v98);
  allocator = self->_allocator;
  self->_allocator = v103;

  __asm { FMOV            V1.4S, #-1.0 }

  *self->_anon_50 = _Q1;
  *&self->_anon_50[16] = 0u;
  v110 = objc_alloc_init(MEMORY[0x277CBEB18]);
  vertexBuffers = self->_vertexBuffers;
  self->_vertexBuffers = v110;

  objc_msgSend_addObject_(self->_vertexBuffers, v112, v150, v113, v118, v119, v120, v121, v114, v115, v116, v117);
  v122 = objc_alloc(MEMORY[0x277CBEB18]);
  v133 = objc_msgSend_initWithArray_(v122, v123, submeshesCopy, v124, v129, v130, v131, v132, v125, v126, v127, v128);
  submeshes = self->_submeshes;
  self->_submeshes = v133;

  self->_vertexCount = count;
  v135 = MEMORY[0x23EE7E350]();
  v146 = objc_msgSend_copyWithZone_(descriptorCopy, v136, v135, v137, v142, v143, v144, v145, v138, v139, v140, v141);
  vertexDescriptor = self->_vertexDescriptor;
  self->_vertexDescriptor = v146;
}

- (MDLMesh)initWithVertexBuffer:(id)vertexBuffer vertexCount:(NSUInteger)vertexCount descriptor:(MDLVertexDescriptor *)descriptor submeshes:(NSArray *)submeshes
{
  v10 = vertexBuffer;
  v11 = descriptor;
  v12 = submeshes;
  v24.receiver = self;
  v24.super_class = MDLMesh;
  v13 = [(MDLObject *)&v24 init];
  v21 = v13;
  if (v13)
  {
    objc_msgSend__createWithVertexBuffer_vertexCount_descriptor_submeshes_(v13, v14, v10, vertexCount, v17, v18, v19, v20, v11, v12, v15, v16);
    v22 = v21;
  }

  return v21;
}

- (MDLMesh)initWithVertexBuffers:(NSArray *)vertexBuffers vertexCount:(NSUInteger)vertexCount descriptor:(MDLVertexDescriptor *)descriptor submeshes:(NSArray *)submeshes
{
  v344 = *MEMORY[0x277D85DE8];
  v8 = vertexBuffers;
  v325 = descriptor;
  v324 = submeshes;
  v337 = 0u;
  v338 = 0u;
  v339 = 0u;
  v340 = 0u;
  v9 = v8;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v337, v343, v14, v15, v16, v17, 16, v11, v12, v13);
  if (v25)
  {
    v30 = *v338;
    do
    {
      v31 = 0;
      do
      {
        if (*v338 != v30)
        {
          objc_enumerationMutation(v9);
        }

        v32 = *(*(&v337 + 1) + 8 * v31);
        v33 = objc_msgSend_null(MEMORY[0x277CBEB68], v18, v19, v20, v26, v27, v28, v29, v21, v22, v23, v24);
        if ((objc_msgSend_isEqual_(v32, v34, v33, v35, v40, v41, v42, v43, v36, v37, v38, v39) & 1) == 0)
        {
          v55 = objc_msgSend_type(v32, v44, v45, v46, v51, v52, v53, v54, v47, v48, v49, v50) == 1;

          if (v55)
          {
            goto LABEL_10;
          }

          v56 = MEMORY[0x277CBEAD8];
          v57 = objc_opt_class();
          v33 = NSStringFromClass(v57);
          v58 = NSStringFromSelector(a2);
          objc_msgSend_raise_format_(v56, v59, @"ModelIOException", @"[%@ %@]: vertexBuffer.type must be MDLMeshBufferTypeVertex", v64, v65, v66, v67, v60, v61, v62, v63, v33, v58);
        }

LABEL_10:
        ++v31;
      }

      while (v25 != v31);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v18, &v337, v343, v26, v27, v28, v29, 16, v22, v23, v24);
    }

    while (v25);
  }

  v78 = v325;
  if (!v325)
  {
    v79 = MEMORY[0x277CBEAD8];
    v80 = objc_opt_class();
    v81 = NSStringFromClass(v80);
    v82 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v79, v83, @"ModelIOException", @"[%@ %@]: No descriptor supplied", v88, v89, v90, v91, v84, v85, v86, v87, v81, v82);

    v78 = 0;
  }

  v335 = 0u;
  v336 = 0u;
  v333 = 0u;
  v334 = 0u;
  v92 = objc_msgSend_attributes(v78, v68, v69, v70, 0, v75, v76, v77, v71, v72, v73, v74);
  v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v93, &v333, v342, v97, v98, v99, v100, 16, v94, v95, v96);
  if (v108)
  {
    v113 = *v334;
    do
    {
      v114 = 0;
      do
      {
        if (*v334 != v113)
        {
          objc_enumerationMutation(v92);
        }

        v115 = *(*(&v333 + 1) + 8 * v114);
        v116 = objc_msgSend_null(MEMORY[0x277CBEB68], v101, v102, v103, v109, v110, v111, v112, v104, v105, v106, v107);
        isEqual = objc_msgSend_isEqual_(v115, v117, v116, v118, v123, v124, v125, v126, v119, v120, v121, v122);

        if ((isEqual & 1) == 0)
        {
          v128 = objc_msgSend_bufferIndex(v115, v101, v102, v103, v109, v110, v111, v112, v104, v105, v106, v107);
          if (v128 > objc_msgSend_count(v9, v129, v130, v131, v136, v137, v138, v139, v132, v133, v134, v135))
          {
            v140 = MEMORY[0x277CBEAD8];
            v141 = objc_opt_class();
            v142 = NSStringFromClass(v141);
            v143 = NSStringFromSelector(a2);
            objc_msgSend_raise_format_(v140, v144, @"ModelIOException", @"[%@ %@]: Buffer index out of range", v149, v150, v151, v152, v145, v146, v147, v148, v142, v143);
          }
        }

        ++v114;
      }

      while (v108 != v114);
      v108 = objc_msgSend_countByEnumeratingWithState_objects_count_(v92, v101, &v333, v342, v109, v110, v111, v112, 16, v105, v106, v107);
    }

    while (v108);
  }

  v331 = 0u;
  v332 = 0u;
  v329 = 0u;
  v330 = 0u;
  v153 = v9;
  v162 = 0;
  v170 = objc_msgSend_countByEnumeratingWithState_objects_count_(v153, v154, &v329, v341, v158, v159, v160, v161, 16, v155, v156, v157);
  if (v170)
  {
    v175 = *v330;
    do
    {
      v176 = 0;
      do
      {
        if (*v330 != v175)
        {
          objc_enumerationMutation(v153);
        }

        if (!v162)
        {
          v177 = *(*(&v329 + 1) + 8 * v176);
          v178 = objc_msgSend_null(MEMORY[0x277CBEB68], v163, v164, v165, v171, v172, v173, v174, v166, v167, v168, v169);
          if (objc_msgSend_isEqual_(v177, v179, v178, v180, v185, v186, v187, v188, v181, v182, v183, v184))
          {
          }

          else
          {
            v200 = objc_msgSend_allocator(v177, v189, v190, v191, v196, v197, v198, v199, v192, v193, v194, v195);
            v201 = v200 == 0;

            if (!v201)
            {
              v162 = objc_msgSend_allocator(v177, v163, v164, v165, v171, v172, v173, v174, v166, v167, v168, v169);
              goto LABEL_35;
            }
          }

          v162 = 0;
        }

LABEL_35:
        ++v176;
      }

      while (v170 != v176);
      v170 = objc_msgSend_countByEnumeratingWithState_objects_count_(v153, v163, &v329, v341, v171, v172, v173, v174, 16, v167, v168, v169);
    }

    while (v170);
  }

  for (i = 0; objc_msgSend_count(v153, v202, v203, v204, v209, v210, v211, v212, v205, v206, v207, v208) > i; ++i)
  {
    v224 = objc_msgSend_objectAtIndexedSubscript_(v153, v214, i, v215, v220, v221, v222, v223, v216, v217, v218, v219);
    v236 = objc_msgSend_null(MEMORY[0x277CBEB68], v225, v226, v227, v232, v233, v234, v235, v228, v229, v230, v231);
    v247 = objc_msgSend_isEqual_(v224, v237, v236, v238, v243, v244, v245, v246, v239, v240, v241, v242);

    if ((v247 & 1) == 0)
    {
      v248 = objc_msgSend_objectAtIndexedSubscript_(v153, v202, i, v204, v209, v210, v211, v212, v205, v206, v207, v208);
      v260 = objc_msgSend_allocator(v248, v249, v250, v251, v256, v257, v258, v259, v252, v253, v254, v255);
      v261 = v260 == v162;

      if (!v261)
      {
        v262 = MEMORY[0x277CBEAD8];
        v263 = objc_opt_class();
        v264 = NSStringFromClass(v263);
        v265 = NSStringFromSelector(a2);
        objc_msgSend_raise_format_(v262, v266, @"ModelIOException", @"[%@ %@]: Allocators on supplied vertexBuffers do not all match, but they must", v271, v272, v273, v274, v267, v268, v269, v270, v264, v265);
      }
    }
  }

  v328.receiver = self;
  v328.super_class = MDLMesh;
  v275 = [(MDLObject *)&v328 init];
  v276 = v275;
  if (v275)
  {
    __asm { FMOV            V1.4S, #-1.0 }

    *v275->_anon_50 = _Q1;
    *&v275->_anon_50[16] = 0u;
    objc_storeStrong(&v275->_allocator, v162);
    v276->_vertexCount = vertexCount;
    v282 = objc_alloc(MEMORY[0x277CBEB18]);
    v293 = objc_msgSend_initWithArray_(v282, v283, v153, v284, v289, v290, v291, v292, v285, v286, v287, v288);
    v294 = v276->_vertexBuffers;
    v276->_vertexBuffers = v293;

    v295 = MEMORY[0x23EE7E350]();
    v306 = objc_msgSend_copyWithZone_(v325, v296, v295, v297, v302, v303, v304, v305, v298, v299, v300, v301);
    vertexDescriptor = v276->_vertexDescriptor;
    v276->_vertexDescriptor = v306;

    v308 = objc_alloc(MEMORY[0x277CBEB18]);
    v319 = objc_msgSend_initWithArray_(v308, v309, v324, v310, v315, v316, v317, v318, v311, v312, v313, v314);
    v320 = v276->_submeshes;
    v276->_submeshes = v319;

    v321 = v276;
  }

  return v276;
}

- (MDLVertexAttributeData)vertexAttributeDataForAttributeNamed:(NSString *)name
{
  v4 = name;
  v15 = objc_msgSend_attributeNamed_(self->_vertexDescriptor, v5, v4, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  if (v15)
  {
    v16 = objc_alloc_init(MDLVertexAttributeData);
    v28 = objc_msgSend_bufferIndex(v15, v17, v18, v19, v24, v25, v26, v27, v20, v21, v22, v23);
    v39 = objc_msgSend_objectAtIndexedSubscript_(self->_vertexBuffers, v29, v28, v30, v35, v36, v37, v38, v31, v32, v33, v34);
    v51 = objc_msgSend_map(v39, v40, v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);
    map = v16->_map;
    v16->_map = v51;

    v64 = objc_msgSend_layouts(self->_vertexDescriptor, v53, v54, v55, v60, v61, v62, v63, v56, v57, v58, v59);
    v75 = objc_msgSend_objectAtIndexedSubscript_(v64, v65, v28, v66, v71, v72, v73, v74, v67, v68, v69, v70);
    v16->_stride = objc_msgSend_stride(v75, v76, v77, v78, v83, v84, v85, v86, v79, v80, v81, v82);

    v98 = objc_msgSend_map(v16, v87, v88, v89, v94, v95, v96, v97, v90, v91, v92, v93);
    v110 = objc_msgSend_bytes(v98, v99, v100, v101, v106, v107, v108, v109, v102, v103, v104, v105);
    v16->_dataStart = (v110 + objc_msgSend_offset(v15, v111, v112, v113, v118, v119, v120, v121, v114, v115, v116, v117));

    v16->_format = objc_msgSend_format(v15, v122, v123, v124, v129, v130, v131, v132, v125, v126, v127, v128);
    v143 = objc_msgSend_objectAtIndexedSubscript_(self->_vertexBuffers, v133, v28, v134, v139, v140, v141, v142, v135, v136, v137, v138);
    v16->_bufferSize = objc_msgSend_length(v143, v144, v145, v146, v151, v152, v153, v154, v147, v148, v149, v150);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)createSourceDataVector:(void *)vector attr:(id)attr srcElementCount:(int)count dstElementCount:(int)elementCount
{
  attrCopy = attr;
  *(vector + 1) = *vector;
  sub_239E95D48(vector, self->_vertexCount * elementCount);
  v320 = objc_msgSend_dataStart(attrCopy, v11, v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v33 = objc_msgSend_format(attrCopy, v22, v23, v24, v29, v30, v31, v32, v25, v26, v27, v28);
  if (v33 > 458752)
  {
    if (v33 > 655360)
    {
      if ((v33 - 655361) < 4)
      {
        if (self->_vertexCount)
        {
          v205 = 0;
          v206 = elementCount - count;
          if (elementCount >= count)
          {
            elementCountCopy = count;
          }

          else
          {
            elementCountCopy = elementCount;
          }

          v208 = 4 * elementCountCopy - 4;
          v209 = elementCountCopy;
          v210 = v206;
          do
          {
            v211 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
            if (v208 + v211 * v205 < objc_msgSend_bufferSize(attrCopy, v212, v213, v214, v219, v220, v221, v222, v215, v216, v217, v218))
            {
              v223 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
              if (v209 < 1)
              {
                v227 = 0;
              }

              else
              {
                v224 = (v320 + v223 * v205);
                v225 = v209;
                do
                {
                  v226 = *v224++;
                  v321 = v226;
                  sub_239E798A4(vector, &v321);
                  --v225;
                }

                while (v225);
                v227 = v209;
              }

              while (v227 < v210)
              {
                v321 = 0.0;
                sub_239E798A4(vector, &v321);
                ++v227;
              }
            }

            ++v205;
          }

          while (v205 < self->_vertexCount);
        }
      }

      else if ((v33 - 720897) < 4)
      {
        if (self->_vertexCount)
        {
          v297 = 0;
          v298 = elementCount - count;
          if (elementCount >= count)
          {
            elementCountCopy2 = count;
          }

          else
          {
            elementCountCopy2 = elementCount;
          }

          v300 = 2 * elementCountCopy2 - 2;
          v301 = elementCountCopy2;
          v302 = v298;
          do
          {
            v303 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
            if (v300 + v303 * v297 < objc_msgSend_bufferSize(attrCopy, v304, v305, v306, v311, v312, v313, v314, v307, v308, v309, v310))
            {
              v315 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
              if (v301 < 1)
              {
                v319 = 0;
              }

              else
              {
                v316 = (v320 + v315 * v297);
                v317 = v301;
                do
                {
                  v318 = *v316++;
                  v321 = sub_239F5E87C(v318);
                  sub_239E798A4(vector, &v321);
                  --v317;
                }

                while (v317);
                v319 = v301;
              }

              while (v319 < v302)
              {
                v321 = 0.0;
                sub_239E798A4(vector, &v321);
                ++v319;
              }
            }

            ++v297;
          }

          while (v297 < self->_vertexCount);
        }
      }

      else if ((v33 - 786433) < 4 && self->_vertexCount)
      {
        v114 = 0;
        v115 = elementCount - count;
        if (elementCount >= count)
        {
          elementCountCopy3 = count;
        }

        else
        {
          elementCountCopy3 = elementCount;
        }

        v117 = 4 * elementCountCopy3 - 4;
        v118 = elementCountCopy3;
        v119 = v115;
        do
        {
          v120 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
          if (v117 + v120 * v114 < objc_msgSend_bufferSize(attrCopy, v121, v122, v123, v128, v129, v130, v131, v124, v125, v126, v127))
          {
            v132 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
            if (v118 < 1)
            {
              v135 = 0;
            }

            else
            {
              v133 = (v320 + v132 * v114);
              v134 = v118;
              do
              {
                v321 = *v133;
                sub_239E798A4(vector, &v321);
                ++v133;
                --v134;
              }

              while (v134);
              v135 = v118;
            }

            while (v135 < v119)
            {
              v321 = 0.0;
              sub_239E798A4(vector, &v321);
              ++v135;
            }
          }

          ++v114;
        }

        while (v114 < self->_vertexCount);
      }
    }

    else if ((v33 - 458753) < 4)
    {
      if (self->_vertexCount)
      {
        v159 = 0;
        v160 = elementCount - count;
        if (elementCount >= count)
        {
          elementCountCopy4 = count;
        }

        else
        {
          elementCountCopy4 = elementCount;
        }

        v162 = 2 * elementCountCopy4 - 2;
        v163 = elementCountCopy4;
        v164 = v160;
        do
        {
          v165 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
          if (v162 + v165 * v159 < objc_msgSend_bufferSize(attrCopy, v166, v167, v168, v173, v174, v175, v176, v169, v170, v171, v172))
          {
            v177 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
            if (v163 < 1)
            {
              v181 = 0;
            }

            else
            {
              v178 = (v320 + v177 * v159);
              v179 = v163;
              do
              {
                v180 = *v178++;
                v321 = v180 * 0.000015259;
                sub_239E798A4(vector, &v321);
                --v179;
              }

              while (v179);
              v181 = v163;
            }

            while (v181 < v164)
            {
              v321 = 0.0;
              sub_239E798A4(vector, &v321);
              ++v181;
            }
          }

          ++v159;
        }

        while (v159 < self->_vertexCount);
      }
    }

    else if ((v33 - 524289) < 4)
    {
      if (self->_vertexCount)
      {
        v251 = 0;
        v252 = elementCount - count;
        if (elementCount >= count)
        {
          elementCountCopy5 = count;
        }

        else
        {
          elementCountCopy5 = elementCount;
        }

        v254 = 2 * elementCountCopy5 - 2;
        v255 = elementCountCopy5;
        v256 = v252;
        do
        {
          v257 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
          if (v254 + v257 * v251 < objc_msgSend_bufferSize(attrCopy, v258, v259, v260, v265, v266, v267, v268, v261, v262, v263, v264))
          {
            v269 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
            if (v255 < 1)
            {
              v273 = 0;
            }

            else
            {
              v270 = (v320 + v269 * v251);
              v271 = v255;
              do
              {
                v272 = *v270++;
                v321 = v272 * 0.000030519;
                sub_239E798A4(vector, &v321);
                --v271;
              }

              while (v271);
              v273 = v255;
            }

            while (v273 < v256)
            {
              v321 = 0.0;
              sub_239E798A4(vector, &v321);
              ++v273;
            }
          }

          ++v251;
        }

        while (v251 < self->_vertexCount);
      }
    }

    else if ((v33 - 589825) < 4 && self->_vertexCount)
    {
      v68 = 0;
      v69 = elementCount - count;
      if (elementCount >= count)
      {
        elementCountCopy6 = count;
      }

      else
      {
        elementCountCopy6 = elementCount;
      }

      v71 = 4 * elementCountCopy6 - 4;
      v72 = elementCountCopy6;
      v73 = v69;
      do
      {
        v74 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
        if (v71 + v74 * v68 < objc_msgSend_bufferSize(attrCopy, v75, v76, v77, v82, v83, v84, v85, v78, v79, v80, v81))
        {
          v86 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
          if (v72 < 1)
          {
            v90 = 0;
          }

          else
          {
            v87 = (v320 + v86 * v68);
            v88 = v72;
            do
            {
              v89 = *v87++;
              v321 = v89;
              sub_239E798A4(vector, &v321);
              --v88;
            }

            while (v88);
            v90 = v72;
          }

          while (v90 < v73)
          {
            v321 = 0.0;
            sub_239E798A4(vector, &v321);
            ++v90;
          }
        }

        ++v68;
      }

      while (v68 < self->_vertexCount);
    }
  }

  else if (v33 > 0x40000)
  {
    if ((v33 - 262145) < 4)
    {
      if (self->_vertexCount)
      {
        v182 = 0;
        v183 = elementCount - count;
        if (elementCount >= count)
        {
          elementCountCopy7 = count;
        }

        else
        {
          elementCountCopy7 = elementCount;
        }

        v185 = elementCountCopy7 - 1;
        v186 = elementCountCopy7;
        v187 = v183;
        do
        {
          v188 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
          if (v185 + v188 * v182 < objc_msgSend_bufferSize(attrCopy, v189, v190, v191, v196, v197, v198, v199, v192, v193, v194, v195))
          {
            v200 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
            if (v186 < 1)
            {
              v204 = 0;
            }

            else
            {
              v201 = (v320 + v200 * v182);
              v202 = v186;
              do
              {
                v203 = *v201++;
                v321 = v203 * 0.007874;
                sub_239E798A4(vector, &v321);
                --v202;
              }

              while (v202);
              v204 = v186;
            }

            while (v204 < v187)
            {
              v321 = 0.0;
              sub_239E798A4(vector, &v321);
              ++v204;
            }
          }

          ++v182;
        }

        while (v182 < self->_vertexCount);
      }
    }

    else if ((v33 - 327681) < 4)
    {
      if (self->_vertexCount)
      {
        v274 = 0;
        v275 = elementCount - count;
        if (elementCount >= count)
        {
          elementCountCopy8 = count;
        }

        else
        {
          elementCountCopy8 = elementCount;
        }

        v277 = 2 * elementCountCopy8 - 2;
        v278 = elementCountCopy8;
        v279 = v275;
        do
        {
          v280 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
          if (v277 + v280 * v274 < objc_msgSend_bufferSize(attrCopy, v281, v282, v283, v288, v289, v290, v291, v284, v285, v286, v287))
          {
            v292 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
            if (v278 < 1)
            {
              v296 = 0;
            }

            else
            {
              v293 = (v320 + v292 * v274);
              v294 = v278;
              do
              {
                v295 = *v293++;
                v321 = v295;
                sub_239E798A4(vector, &v321);
                --v294;
              }

              while (v294);
              v296 = v278;
            }

            while (v296 < v279)
            {
              v321 = 0.0;
              sub_239E798A4(vector, &v321);
              ++v296;
            }
          }

          ++v274;
        }

        while (v274 < self->_vertexCount);
      }
    }

    else if ((v33 - 393217) < 4 && self->_vertexCount)
    {
      v91 = 0;
      v92 = elementCount - count;
      if (elementCount >= count)
      {
        elementCountCopy9 = count;
      }

      else
      {
        elementCountCopy9 = elementCount;
      }

      v94 = 2 * elementCountCopy9 - 2;
      v95 = elementCountCopy9;
      v96 = v92;
      do
      {
        v97 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
        if (v94 + v97 * v91 < objc_msgSend_bufferSize(attrCopy, v98, v99, v100, v105, v106, v107, v108, v101, v102, v103, v104))
        {
          v109 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
          if (v95 < 1)
          {
            v113 = 0;
          }

          else
          {
            v110 = (v320 + v109 * v91);
            v111 = v95;
            do
            {
              v112 = *v110++;
              v321 = v112;
              sub_239E798A4(vector, &v321);
              --v111;
            }

            while (v111);
            v113 = v95;
          }

          while (v113 < v96)
          {
            v321 = 0.0;
            sub_239E798A4(vector, &v321);
            ++v113;
          }
        }

        ++v91;
      }

      while (v91 < self->_vertexCount);
    }
  }

  else if ((v33 - 65537) < 4)
  {
    if (self->_vertexCount)
    {
      v136 = 0;
      v137 = elementCount - count;
      if (elementCount >= count)
      {
        elementCountCopy10 = count;
      }

      else
      {
        elementCountCopy10 = elementCount;
      }

      v139 = elementCountCopy10 - 1;
      v140 = elementCountCopy10;
      v141 = v137;
      do
      {
        v142 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
        if (v139 + v142 * v136 < objc_msgSend_bufferSize(attrCopy, v143, v144, v145, v150, v151, v152, v153, v146, v147, v148, v149))
        {
          v154 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
          if (v140 < 1)
          {
            v158 = 0;
          }

          else
          {
            v155 = (v320 + v154 * v136);
            v156 = v140;
            do
            {
              v157 = *v155++;
              v321 = v157;
              sub_239E798A4(vector, &v321);
              --v156;
            }

            while (v156);
            v158 = v140;
          }

          while (v158 < v141)
          {
            v321 = 0.0;
            sub_239E798A4(vector, &v321);
            ++v158;
          }
        }

        ++v136;
      }

      while (v136 < self->_vertexCount);
    }
  }

  else if ((v33 - 131073) < 4)
  {
    if (self->_vertexCount)
    {
      v228 = 0;
      v229 = elementCount - count;
      if (elementCount >= count)
      {
        elementCountCopy11 = count;
      }

      else
      {
        elementCountCopy11 = elementCount;
      }

      v231 = elementCountCopy11 - 1;
      v232 = elementCountCopy11;
      v233 = v229;
      do
      {
        v234 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
        if (v231 + v234 * v228 < objc_msgSend_bufferSize(attrCopy, v235, v236, v237, v242, v243, v244, v245, v238, v239, v240, v241))
        {
          v246 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
          if (v232 < 1)
          {
            v250 = 0;
          }

          else
          {
            v247 = (v320 + v246 * v228);
            v248 = v232;
            do
            {
              v249 = *v247++;
              v321 = v249;
              sub_239E798A4(vector, &v321);
              --v248;
            }

            while (v248);
            v250 = v232;
          }

          while (v250 < v233)
          {
            v321 = 0.0;
            sub_239E798A4(vector, &v321);
            ++v250;
          }
        }

        ++v228;
      }

      while (v228 < self->_vertexCount);
    }
  }

  else if ((v33 - 196609) < 4 && self->_vertexCount)
  {
    v45 = 0;
    v46 = elementCount - count;
    if (elementCount >= count)
    {
      elementCountCopy12 = count;
    }

    else
    {
      elementCountCopy12 = elementCount;
    }

    v48 = elementCountCopy12 - 1;
    v49 = elementCountCopy12;
    v50 = v46;
    do
    {
      v51 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
      if (v48 + v51 * v45 < objc_msgSend_bufferSize(attrCopy, v52, v53, v54, v59, v60, v61, v62, v55, v56, v57, v58))
      {
        v63 = objc_msgSend_stride(attrCopy, v34, v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
        if (v49 < 1)
        {
          v67 = 0;
        }

        else
        {
          v64 = (v320 + v63 * v45);
          v65 = v49;
          do
          {
            v66 = *v64++;
            v321 = v66 * 0.0039216;
            sub_239E798A4(vector, &v321);
            --v65;
          }

          while (v65);
          v67 = v49;
        }

        while (v67 < v50)
        {
          v321 = 0.0;
          sub_239E798A4(vector, &v321);
          ++v67;
        }
      }

      ++v45;
    }

    while (v45 < self->_vertexCount);
  }
}

- (void)copyDataVector:(void *)vector toAttr:(id)attr
{
  attrCopy = attr;
  if (vector && attrCopy)
  {
    v564 = attrCopy;
    v17 = objc_msgSend_format(attrCopy, v6, v7, v8, v13, v14, v15, v16, v9, v10, v11, v12);
    v40 = v17 & 0xF;
    v563 = *(vector + 1) - *vector;
    if ((~objc_msgSend_format(v564, v18, v19, v20, v25, v26, v27, v28, v21, v22, v23, v24) & 0xC0000) != 0)
    {
      if ((~objc_msgSend_format(v564, v29, v30, v31, v36, v37, v38, v39, v32, v33, v34, v35) & 0xB0000) != 0)
      {
        if ((objc_msgSend_format(v564, v74, v75, v76, v81, v82, v83, v84, v77, v78, v79, v80) & 0x10000) != 0)
        {
          attrCopy = v564;
          if (*(vector + 1) != *vector)
          {
            v184 = 0;
            v185 = 0;
            v186 = v17 & 0xF;
            v187 = v40 - 1;
            if ((v17 & 0xE) != 0)
            {
              v188 = v17 & 0xF;
            }

            else
            {
              v188 = 1;
            }

            do
            {
              v189 = objc_msgSend_stride(attrCopy, v117, v118, v119, v124, v125, v126, v127, v120, v121, v122, v123);
              v167 = v187 + v189 * (v185 / v186) >= objc_msgSend_bufferSize(v564, v190, v191, v192, v197, v198, v199, v200, v193, v194, v195, v196);
              attrCopy = v564;
              if (!v167 && v563 > 4 * (v185 + v187))
              {
                v201 = objc_msgSend_dataStart(v564, v117, v118, v119, v124, v125, v126, v127, v120, v121, v122, v123);
                v213 = (v201 + objc_msgSend_stride(v564, v202, v203, v204, v209, v210, v211, v212, v205, v206, v207, v208) * (v185 / v186));
                v214 = v184;
                v215 = v188;
                attrCopy = v564;
                do
                {
                  v124.n128_u32[0] = *(*vector + v214);
                  if (v124.n128_f32[0] >= 0.0)
                  {
                    v125.n128_u32[0] = 1132396544;
                    if (v124.n128_f32[0] <= 255.0)
                    {
                      v216 = v124.n128_f32[0];
                    }

                    else
                    {
                      LOBYTE(v216) = -1;
                    }
                  }

                  else
                  {
                    LOBYTE(v216) = 0;
                  }

                  *v213++ = v216;
                  v214 += 4;
                  --v215;
                }

                while (v215);
              }

              v185 += v186;
              v184 += 4 * v186;
            }

            while (v185 < (*(vector + 1) - *vector) >> 2);
          }
        }

        else if ((objc_msgSend_format(v564, v117, v118, v119, v124, v125, v126, v127, v120, v121, v122, v123) & 0x20000) != 0)
        {
          attrCopy = v564;
          if (*(vector + 1) != *vector)
          {
            v217 = 0;
            v218 = 0;
            v219 = v17 & 0xF;
            v220 = v40 - 1;
            if ((v17 & 0xE) != 0)
            {
              v221 = v17 & 0xF;
            }

            else
            {
              v221 = 1;
            }

            v562 = v221;
            do
            {
              v222 = objc_msgSend_stride(attrCopy, v128, v129, v130, v135, v136, v137, v138, v131, v132, v133, v134);
              v167 = v220 + v222 * (v218 / v219) >= objc_msgSend_bufferSize(v564, v223, v224, v225, v230, v231, v232, v233, v226, v227, v228, v229);
              attrCopy = v564;
              if (!v167 && v563 > 4 * (v218 + v220))
              {
                v234 = objc_msgSend_dataStart(v564, v128, v129, v130, v135, v136, v137, v138, v131, v132, v133, v134);
                v246 = (v234 + objc_msgSend_stride(v564, v235, v236, v237, v242, v243, v244, v245, v238, v239, v240, v241) * (v218 / v219));
                v247 = v217;
                v248 = v562;
                attrCopy = v564;
                do
                {
                  v135.n128_u32[0] = *(*vector + v247);
                  v136.n128_u32[0] = -1023541248;
                  if (v135.n128_f32[0] >= -127.0)
                  {
                    v136.n128_u32[0] = 1123942400;
                    if (v135.n128_f32[0] <= 127.0)
                    {
                      v249 = v135.n128_f32[0];
                    }

                    else
                    {
                      LOBYTE(v249) = 127;
                    }
                  }

                  else
                  {
                    LOBYTE(v249) = -127;
                  }

                  *v246++ = v249;
                  v247 += 4;
                  --v248;
                }

                while (v248);
              }

              v218 += v219;
              v217 += 4 * v219;
            }

            while (v218 < (*(vector + 1) - *vector) >> 2);
          }
        }

        else if ((~objc_msgSend_format(v564, v128, v129, v130, v135, v136, v137, v138, v131, v132, v133, v134) & 0x30000) != 0)
        {
          if ((objc_msgSend_format(v564, v139, v140, v141, v146, v147, v148, v149, v142, v143, v144, v145) & 0x40000) != 0)
          {
            attrCopy = v564;
            if (*(vector + 1) != *vector)
            {
              v305 = 0;
              v306 = 0;
              v307 = v17 & 0xF;
              v308 = v40 - 1;
              if ((v17 & 0xE) != 0)
              {
                v309 = v17 & 0xF;
              }

              else
              {
                v309 = 1;
              }

              do
              {
                v310 = objc_msgSend_stride(attrCopy, v250, v251, v252, v257, v258, v259, v260, v253, v254, v255, v256);
                v167 = v308 + v310 * (v306 / v307) >= objc_msgSend_bufferSize(v564, v311, v312, v313, v318, v319, v320, v321, v314, v315, v316, v317);
                attrCopy = v564;
                if (!v167 && v563 > 4 * (v306 + v308))
                {
                  v322 = objc_msgSend_dataStart(v564, v250, v251, v252, v257, v258, v259, v260, v253, v254, v255, v256);
                  v334 = (v322 + objc_msgSend_stride(v564, v323, v324, v325, v330, v331, v332, v333, v326, v327, v328, v329) * (v306 / v307));
                  v335 = v305;
                  v336 = v309;
                  attrCopy = v564;
                  do
                  {
                    v257.n128_u32[0] = *(*vector + v335);
                    if (v257.n128_f32[0] >= -1.0)
                    {
                      if (v257.n128_f32[0] <= 1.0)
                      {
                        v258.n128_u32[0] = 1123942400;
                        v257.n128_f32[0] = v257.n128_f32[0] * 127.0;
                        v337 = v257.n128_f32[0];
                      }

                      else
                      {
                        LOBYTE(v337) = 127;
                      }
                    }

                    else
                    {
                      LOBYTE(v337) = -127;
                    }

                    *v334++ = v337;
                    v335 += 4;
                    --v336;
                  }

                  while (v336);
                }

                v306 += v307;
                v305 += 4 * v307;
              }

              while (v306 < (*(vector + 1) - *vector) >> 2);
            }
          }

          else if ((~objc_msgSend_format(v564, v250, v251, v252, v257, v258, v259, v260, v253, v254, v255, v256) & 0x50000) != 0)
          {
            if ((~objc_msgSend_format(v564, v261, v262, v263, v268, v269, v270, v271, v264, v265, v266, v267) & 0x60000) != 0)
            {
              if ((~objc_msgSend_format(v564, v338, v339, v340, v345, v346, v347, v348, v341, v342, v343, v344) & 0x70000) != 0)
              {
                if ((objc_msgSend_format(v564, v382, v383, v384, v389, v390, v391, v392, v385, v386, v387, v388) & 0x80000) != 0)
                {
                  attrCopy = v564;
                  if (*(vector + 1) != *vector)
                  {
                    v481 = 0;
                    v482 = 0;
                    v483 = v40 - 1;
                    v484 = v17 & 0xF;
                    v485 = v483;
                    v486 = 2 * v483;
                    if ((v17 & 0xE) != 0)
                    {
                      v487 = v17 & 0xF;
                    }

                    else
                    {
                      v487 = 1;
                    }

                    do
                    {
                      v488 = objc_msgSend_stride(attrCopy, v426, v427, v428, v433, v434, v435, v436, v429, v430, v431, v432);
                      v167 = v486 + v488 * (v482 / v484) >= objc_msgSend_bufferSize(v564, v489, v490, v491, v496, v497, v498, v499, v492, v493, v494, v495);
                      attrCopy = v564;
                      if (!v167 && v563 > 4 * (v482 + v485))
                      {
                        v500 = objc_msgSend_dataStart(v564, v426, v427, v428, v433, v434, v435, v436, v429, v430, v431, v432);
                        v512 = (v500 + objc_msgSend_stride(v564, v501, v502, v503, v508, v509, v510, v511, v504, v505, v506, v507) * (v482 / v484));
                        v513 = (*vector + v481);
                        v514 = v487;
                        attrCopy = v564;
                        do
                        {
                          v433.n128_u32[0] = *v513;
                          if (*v513 >= -1.0)
                          {
                            if (v433.n128_f32[0] <= 1.0)
                            {
                              v433.n128_f32[0] = v433.n128_f32[0] * 32767.0;
                              v515 = v433.n128_f32[0];
                            }

                            else
                            {
                              LOWORD(v515) = 0x7FFF;
                            }
                          }

                          else
                          {
                            LOWORD(v515) = -32767;
                          }

                          *v512++ = v515;
                          ++v513;
                          --v514;
                        }

                        while (v514);
                      }

                      v482 += v484;
                      v481 += 4 * v484;
                    }

                    while (v482 < (*(vector + 1) - *vector) >> 2);
                  }
                }

                else if ((~objc_msgSend_format(v564, v426, v427, v428, v433, v434, v435, v436, v429, v430, v431, v432) & 0x90000) != 0)
                {
                  v523 = ~objc_msgSend_format(v564, v437, v438, v439, v444, v445, v446, v447, v440, v441, v442, v443);
                  attrCopy = v564;
                  if ((*&v523 & 0xA0000) == 0 && *(vector + 1) != *vector)
                  {
                    v528 = 0;
                    v529 = 0;
                    v530 = v17 & 0xF;
                    v531 = v40 - 1;
                    if ((v17 & 0xE) != 0)
                    {
                      v532 = v17 & 0xF;
                    }

                    else
                    {
                      v532 = 1;
                    }

                    do
                    {
                      v533 = objc_msgSend_stride(attrCopy, v516, v517, v518, v524, v525, v526, v527, v519, v520, v521, v522);
                      if (4 * v531 + v533 * (v529 / v530) < objc_msgSend_bufferSize(v564, v534, v535, v536, v541, v542, v543, v544, v537, v538, v539, v540) && v563 > 4 * (v529 + v531))
                      {
                        v545 = objc_msgSend_dataStart(v564, v516, v517, v518, v524, v525, v526, v527, v519, v520, v521, v522);
                        v557 = (v545 + objc_msgSend_stride(v564, v546, v547, v548, v553, v554, v555, v556, v549, v550, v551, v552) * (v529 / v530));
                        v558 = (*vector + v528);
                        v559 = v532;
                        do
                        {
                          v560 = *v558++;
                          v524.n128_f32[0] = v560;
                          *v557++ = v560;
                          --v559;
                        }

                        while (v559);
                      }

                      v529 += v530;
                      v528 += 4 * v530;
                      attrCopy = v564;
                    }

                    while (v529 < (*(vector + 1) - *vector) >> 2);
                  }
                }

                else
                {
                  attrCopy = v564;
                  if (*(vector + 1) != *vector)
                  {
                    v448 = 0;
                    v449 = 0;
                    v450 = v17 & 0xF;
                    v451 = v40 - 1;
                    if ((v17 & 0xE) != 0)
                    {
                      v452 = v17 & 0xF;
                    }

                    else
                    {
                      v452 = 1;
                    }

                    do
                    {
                      v453 = objc_msgSend_stride(attrCopy, v437, v438, v439, v444, v445, v446, v447, v440, v441, v442, v443);
                      if (4 * v451 + v453 * (v449 / v450) < objc_msgSend_bufferSize(v564, v454, v455, v456, v461, v462, v463, v464, v457, v458, v459, v460) && v563 > 4 * (v449 + v451))
                      {
                        v465 = objc_msgSend_dataStart(v564, v437, v438, v439, v444, v445, v446, v447, v440, v441, v442, v443);
                        v477 = (v465 + objc_msgSend_stride(v564, v466, v467, v468, v473, v474, v475, v476, v469, v470, v471, v472) * (v449 / v450));
                        v478 = (*vector + v448);
                        v479 = v452;
                        do
                        {
                          v480 = *v478++;
                          v444.n128_f32[0] = fmaxf(v480, 0.0);
                          *v477++ = v444.n128_f32[0];
                          --v479;
                        }

                        while (v479);
                      }

                      v449 += v450;
                      v448 += 4 * v450;
                      attrCopy = v564;
                    }

                    while (v449 < (*(vector + 1) - *vector) >> 2);
                  }
                }
              }

              else
              {
                attrCopy = v564;
                if (*(vector + 1) != *vector)
                {
                  v393 = 0;
                  v394 = 0;
                  v395 = v17 & 0xF;
                  v396 = v40 - 1;
                  if ((v17 & 0xE) != 0)
                  {
                    v397 = v17 & 0xF;
                  }

                  else
                  {
                    v397 = 1;
                  }

                  do
                  {
                    v398 = objc_msgSend_stride(attrCopy, v382, v383, v384, v389, v390, v391, v392, v385, v386, v387, v388);
                    v167 = 2 * v396 + v398 * (v394 / v395) >= objc_msgSend_bufferSize(v564, v399, v400, v401, v406, v407, v408, v409, v402, v403, v404, v405);
                    attrCopy = v564;
                    if (!v167 && v563 > 4 * (v394 + v396))
                    {
                      v410 = objc_msgSend_dataStart(v564, v382, v383, v384, v389, v390, v391, v392, v385, v386, v387, v388);
                      v422 = (v410 + objc_msgSend_stride(v564, v411, v412, v413, v418, v419, v420, v421, v414, v415, v416, v417) * (v394 / v395));
                      v424 = (*vector + v393);
                      v425 = v397;
                      attrCopy = v564;
                      do
                      {
                        v389.n128_u32[0] = *v424;
                        if (*v424 >= 0.0)
                        {
                          if (v389.n128_f32[0] <= 1.0)
                          {
                            v389.n128_f32[0] = v389.n128_f32[0] * 65535.0;
                            v423 = v389.n128_f32[0];
                          }
                        }

                        else
                        {
                          LOWORD(v423) = 0;
                        }

                        *v422++ = v423;
                        ++v424;
                        --v425;
                      }

                      while (v425);
                    }

                    v394 += v395;
                    v393 += 4 * v395;
                  }

                  while (v394 < (*(vector + 1) - *vector) >> 2);
                }
              }
            }

            else
            {
              attrCopy = v564;
              if (*(vector + 1) != *vector)
              {
                v349 = 0;
                v350 = 0;
                v351 = v17 & 0xF;
                v352 = v40 - 1;
                if ((v17 & 0xE) != 0)
                {
                  v353 = v17 & 0xF;
                }

                else
                {
                  v353 = 1;
                }

                do
                {
                  v354 = objc_msgSend_stride(attrCopy, v338, v339, v340, v345, v346, v347, v348, v341, v342, v343, v344);
                  v167 = 2 * v352 + v354 * (v350 / v351) >= objc_msgSend_bufferSize(v564, v355, v356, v357, v362, v363, v364, v365, v358, v359, v360, v361);
                  attrCopy = v564;
                  if (!v167 && v563 > 4 * (v350 + v352))
                  {
                    v366 = objc_msgSend_dataStart(v564, v338, v339, v340, v345, v346, v347, v348, v341, v342, v343, v344);
                    v378 = (v366 + objc_msgSend_stride(v564, v367, v368, v369, v374, v375, v376, v377, v370, v371, v372, v373) * (v350 / v351));
                    v379 = (*vector + v349);
                    v380 = v353;
                    attrCopy = v564;
                    do
                    {
                      v345.n128_u32[0] = *v379;
                      if (*v379 >= 0.0)
                      {
                        if (v345.n128_f32[0] <= 32767.0)
                        {
                          v381 = v345.n128_f32[0];
                        }

                        else
                        {
                          LOWORD(v381) = 0x7FFF;
                        }
                      }

                      else
                      {
                        LOWORD(v381) = 0;
                      }

                      *v378++ = v381;
                      ++v379;
                      --v380;
                    }

                    while (v380);
                  }

                  v350 += v351;
                  v349 += 4 * v351;
                }

                while (v350 < (*(vector + 1) - *vector) >> 2);
              }
            }
          }

          else
          {
            attrCopy = v564;
            if (*(vector + 1) != *vector)
            {
              v272 = 0;
              v273 = 0;
              v274 = v17 & 0xF;
              v275 = v40 - 1;
              if ((v17 & 0xE) != 0)
              {
                v276 = v17 & 0xF;
              }

              else
              {
                v276 = 1;
              }

              do
              {
                v277 = objc_msgSend_stride(attrCopy, v261, v262, v263, v268, v269, v270, v271, v264, v265, v266, v267);
                v167 = 2 * v275 + v277 * (v273 / v274) >= objc_msgSend_bufferSize(v564, v278, v279, v280, v285, v286, v287, v288, v281, v282, v283, v284);
                attrCopy = v564;
                if (!v167 && v563 > 4 * (v273 + v275))
                {
                  v289 = objc_msgSend_dataStart(v564, v261, v262, v263, v268, v269, v270, v271, v264, v265, v266, v267);
                  v301 = (v289 + objc_msgSend_stride(v564, v290, v291, v292, v297, v298, v299, v300, v293, v294, v295, v296) * (v273 / v274));
                  v302 = (*vector + v272);
                  v303 = v276;
                  attrCopy = v564;
                  do
                  {
                    v268.n128_u32[0] = *v302;
                    if (*v302 >= 0.0)
                    {
                      if (v268.n128_f32[0] <= 65535.0)
                      {
                        v304 = v268.n128_f32[0];
                      }

                      else
                      {
                        LOWORD(v304) = -1;
                      }
                    }

                    else
                    {
                      LOWORD(v304) = 0;
                    }

                    *v301++ = v304;
                    ++v302;
                    --v303;
                  }

                  while (v303);
                }

                v273 += v274;
                v272 += 4 * v274;
              }

              while (v273 < (*(vector + 1) - *vector) >> 2);
            }
          }
        }

        else
        {
          attrCopy = v564;
          if (*(vector + 1) != *vector)
          {
            v150 = 0;
            v151 = 0;
            v152 = v17 & 0xF;
            v153 = v40 - 1;
            if ((v17 & 0xE) != 0)
            {
              v154 = v17 & 0xF;
            }

            else
            {
              v154 = 1;
            }

            do
            {
              v155 = objc_msgSend_stride(attrCopy, v139, v140, v141, v146, v147, v148, v149, v142, v143, v144, v145);
              v167 = v153 + v155 * (v151 / v152) >= objc_msgSend_bufferSize(v564, v156, v157, v158, v163, v164, v165, v166, v159, v160, v161, v162);
              attrCopy = v564;
              if (!v167 && v563 > 4 * (v151 + v153))
              {
                v168 = objc_msgSend_dataStart(v564, v139, v140, v141, v146, v147, v148, v149, v142, v143, v144, v145);
                v180 = (v168 + objc_msgSend_stride(v564, v169, v170, v171, v176, v177, v178, v179, v172, v173, v174, v175) * (v151 / v152));
                v181 = v150;
                v182 = v154;
                attrCopy = v564;
                do
                {
                  v146.n128_u32[0] = *(*vector + v181);
                  if (v146.n128_f32[0] >= 0.0)
                  {
                    if (v146.n128_f32[0] <= 1.0)
                    {
                      v147.n128_u32[0] = 1132396544;
                      v146.n128_f32[0] = v146.n128_f32[0] * 255.0;
                      v183 = v146.n128_f32[0];
                    }

                    else
                    {
                      LOBYTE(v183) = -1;
                    }
                  }

                  else
                  {
                    LOBYTE(v183) = 0;
                  }

                  *v180++ = v183;
                  v181 += 4;
                  --v182;
                }

                while (v182);
              }

              v151 += v152;
              v150 += 4 * v152;
            }

            while (v151 < (*(vector + 1) - *vector) >> 2);
          }
        }
      }

      else
      {
        attrCopy = v564;
        if (*(vector + 1) != *vector)
        {
          v85 = 0;
          v86 = 0;
          v87 = v17 & 0xF;
          v88 = v40 - 1;
          if ((v17 & 0xE) != 0)
          {
            v89 = v17 & 0xF;
          }

          else
          {
            v89 = 1;
          }

          v561 = v89;
          do
          {
            v90 = objc_msgSend_stride(attrCopy, v74, v75, v76, v81, v82, v83, v84, v77, v78, v79, v80);
            if (2 * v88 + v90 * (v86 / v87) < objc_msgSend_bufferSize(v564, v91, v92, v93, v98, v99, v100, v101, v94, v95, v96, v97) && v563 > 4 * (v86 + v88))
            {
              v102 = objc_msgSend_dataStart(v564, v74, v75, v76, v81, v82, v83, v84, v77, v78, v79, v80);
              v114 = (v102 + objc_msgSend_stride(v564, v103, v104, v105, v110, v111, v112, v113, v106, v107, v108, v109) * (v86 / v87));
              v115 = v85;
              v116 = v561;
              do
              {
                *v114++ = sub_239F5E8F8(*(*vector + v115));
                v115 += 4;
                --v116;
              }

              while (v116);
            }

            v86 += v87;
            v85 += 4 * v87;
            attrCopy = v564;
          }

          while (v86 < (*(vector + 1) - *vector) >> 2);
        }
      }
    }

    else
    {
      attrCopy = v564;
      if (*(vector + 1) != *vector)
      {
        v41 = 0;
        v42 = 0;
        v43 = v17 & 0xF;
        v44 = v40 - 1;
        if ((v17 & 0xE) != 0)
        {
          v45 = v17 & 0xF;
        }

        else
        {
          v45 = 1;
        }

        do
        {
          v46 = objc_msgSend_stride(attrCopy, v29, v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
          if (4 * v44 + v46 * (v42 / v43) < objc_msgSend_bufferSize(v564, v47, v48, v49, v54, v55, v56, v57, v50, v51, v52, v53) && v563 > 4 * (v42 + v44))
          {
            v58 = objc_msgSend_dataStart(v564, v29, v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
            v70 = (v58 + objc_msgSend_stride(v564, v59, v60, v61, v66, v67, v68, v69, v62, v63, v64, v65) * (v42 / v43));
            v71 = (*vector + v41);
            v72 = v45;
            do
            {
              v73 = *v71++;
              v36.n128_u32[0] = v73;
              *v70++ = v73;
              --v72;
            }

            while (v72);
          }

          v42 += v43;
          v41 += 4 * v43;
          attrCopy = v564;
        }

        while (v42 < (*(vector + 1) - *vector) >> 2);
      }
    }
  }
}

- (MDLVertexAttributeData)vertexAttributeDataForAttributeNamed:(NSString *)name asFormat:(MDLVertexFormat)format
{
  v14 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, a2, name, format, v8, v9, v10, v11, v4, v5, v6, v7);
  v26 = v14;
  if (!v14)
  {
    v38 = 0;
    goto LABEL_106;
  }

  if (objc_msgSend_format(v14, v15, v16, v17, v22, v23, v24, v25, v18, v19, v20, v21) == format)
  {
    v38 = v26;
    goto LABEL_106;
  }

  v39 = objc_msgSend_format(v26, v27, v28, v29, v34, v35, v36, v37, v30, v31, v32, v33);
  if ((~format & 0xB0000) != 0)
  {
    v47 = 4;
  }

  else
  {
    v47 = 2;
  }

  if (format >= (MDLVertexFormatShort4Normalized|0x1))
  {
    v48 = v47;
  }

  else
  {
    v48 = 2;
  }

  if (format >= (MDLVertexFormatChar4Normalized|0x1))
  {
    v49 = v48;
  }

  else
  {
    v49 = 1;
  }

  __p = 0;
  v121 = 0;
  v122 = 0;
  objc_msgSend_createSourceDataVector_attr_srcElementCount_dstElementCount_(self, v40, &__p, v26, v43, v44, v45, v46, v39 & 0xF, format & 0xF, v41, v42);
  v114 = objc_opt_new();
  v50 = v49 * (format & 0xF);
  v51 = self->_vertexCount * v50;
  v116 = 0;
  v117 = &v116;
  v118 = *"";
  v119 = malloc_type_malloc(v51, 0x9B41CC08uLL);
  v52 = [MDLMeshBufferMap alloc];
  v53 = v117[3];
  v115[0] = MEMORY[0x277D85DD0];
  v54.n128_u64[0] = 3221225472;
  v115[1] = 3221225472;
  v115[2] = sub_239F3C394;
  v115[3] = &unk_278B40FA8;
  v115[4] = &v116;
  v63 = objc_msgSend_initWithBytes_deallocator_(v52, v55, v53, v115, v54, v60, v61, v62, v56, v57, v58, v59);
  objc_storeStrong((v114 + 8), v63);
  *(v114 + 24) = v50;
  v75 = objc_msgSend_map(v114, v64, v65, v66, v71, v72, v73, v74, v67, v68, v69, v70);
  *(v114 + 16) = objc_msgSend_bytes(v75, v76, v77, v78, v83, v84, v85, v86, v79, v80, v81, v82);

  *(v114 + 32) = format;
  *(v114 + 40) = v51;
  if (v121 == __p)
  {
LABEL_103:
    v38 = v114;
    goto LABEL_104;
  }

  v38 = 0;
  if (format <= MDLVertexFormatUShortNormalizedBits)
  {
    if (format <= MDLVertexFormatCharNormalizedBits)
    {
      if (format - 65537 >= 4 && format - 131073 >= 4)
      {
        v98 = format - 196608;
        goto LABEL_27;
      }

LABEL_32:
      v99 = 0;
      v100 = 0;
      v101 = 0;
      v113 = v63;
      while (1)
      {
        if (format <= MDLVertexFormatShortBits)
        {
          if (format <= MDLVertexFormatUCharNormalizedBits)
          {
            if (format - 65537 < 4)
            {
              if (v101 < objc_msgSend_bufferSize(v114, v87, v88, v89, v94, v95, v96, v97, v90, v91, v92, v93))
              {
                v94.n128_u32[0] = *(__p + v101);
                if (v94.n128_f32[0] >= 0.0)
                {
                  v95.n128_u32[0] = 1132396544;
                  v106 = v94.n128_f32[0] <= 255.0;
                  v107 = v94.n128_f32[0];
                  v108 = -1;
                  goto LABEL_67;
                }

                goto LABEL_81;
              }
            }

            else
            {
              if (format - 131073 >= 4)
              {
                goto LABEL_82;
              }

              if (v101 < objc_msgSend_bufferSize(v114, v87, v88, v89, v94, v95, v96, v97, v90, v91, v92, v93))
              {
                v94.n128_u32[0] = *(__p + v101);
                v95.n128_u32[0] = -1023541248;
                if (v94.n128_f32[0] >= -127.0)
                {
                  v95.n128_u32[0] = 1123942400;
                  v106 = v94.n128_f32[0] <= 127.0;
                  v107 = v94.n128_f32[0];
                  v108 = 127;
LABEL_67:
                  if (!v106)
                  {
                    LOBYTE(v107) = v108;
                  }

LABEL_101:
                  *(v117[3] + v101) = v107;
                  goto LABEL_102;
                }

LABEL_72:
                LOBYTE(v107) = -127;
                goto LABEL_101;
              }
            }
          }

          else if (format - 196609 < 4)
          {
            if (v101 < objc_msgSend_bufferSize(v114, v87, v88, v89, v94, v95, v96, v97, v90, v91, v92, v93))
            {
              v94.n128_u32[0] = *(__p + v101);
              if (v94.n128_f32[0] < 0.0)
              {
LABEL_81:
                LOBYTE(v107) = 0;
                goto LABEL_101;
              }

              if (v94.n128_f32[0] > 1.0)
              {
                LOBYTE(v107) = -1;
                goto LABEL_101;
              }

              v111 = 255.0;
LABEL_100:
              v95.n128_f32[0] = v111;
              v94.n128_f32[0] = v94.n128_f32[0] * v111;
              v107 = v94.n128_f32[0];
              goto LABEL_101;
            }
          }

          else if (format - 262145 < 4)
          {
            if (v101 < objc_msgSend_bufferSize(v114, v87, v88, v89, v94, v95, v96, v97, v90, v91, v92, v93))
            {
              v94.n128_u32[0] = *(__p + v101);
              if (v94.n128_f32[0] < -1.0)
              {
                goto LABEL_72;
              }

              if (v94.n128_f32[0] > 1.0)
              {
                LOBYTE(v107) = 127;
                goto LABEL_101;
              }

              v111 = 127.0;
              goto LABEL_100;
            }
          }

          else
          {
            if (format - 327681 >= 4)
            {
              goto LABEL_82;
            }

            if (v99 < objc_msgSend_bufferSize(v114, v87, v88, v89, v94, v95, v96, v97, v90, v91, v92, v93))
            {
              v94.n128_u32[0] = *(__p + v101);
              if (v94.n128_f32[0] >= 0.0)
              {
                v103 = v94.n128_f32[0] <= 65535.0;
                v102 = v94.n128_f32[0];
                v104 = -1;
LABEL_89:
                if (!v103)
                {
                  LOWORD(v102) = v104;
                }

                goto LABEL_97;
              }

LABEL_61:
              LOWORD(v102) = 0;
              goto LABEL_97;
            }
          }
        }

        else if (format > MDLVertexFormatUIntBits)
        {
          if (format - 589825 < 4)
          {
            if (v100 < objc_msgSend_bufferSize(v114, v87, v88, v89, v94, v95, v96, v97, v90, v91, v92, v93))
            {
              v109 = v117[3];
              v94.n128_f32[0] = fmaxf(*(__p + v101), 0.0);
              v110 = v94.n128_f32[0];
              goto LABEL_78;
            }
          }

          else
          {
            if (format - 655361 >= 4)
            {
              if (format - 720897 < 4)
              {
                if (v99 < objc_msgSend_bufferSize(v114, v87, v88, v89, v94, v95, v96, v97, v90, v91, v92, v93))
                {
                  v105 = v117[3];
                  *(v105 + 2 * v101) = sub_239F5E8F8(*(__p + v101));
                  v63 = v113;
                }

                goto LABEL_102;
              }

LABEL_82:
              if (v100 < objc_msgSend_bufferSize(v114, v87, v88, v89, v94, v95, v96, v97, v90, v91, v92, v93, v113))
              {
                v94.n128_u32[0] = *(__p + v101);
                *(v117[3] + 4 * v101) = v94.n128_u32[0];
              }

              goto LABEL_102;
            }

            if (v100 < objc_msgSend_bufferSize(v114, v87, v88, v89, v94, v95, v96, v97, v90, v91, v92, v93))
            {
              v109 = v117[3];
              v94.n128_u32[0] = *(__p + v101);
              v110 = v94.n128_f32[0];
LABEL_78:
              *(v109 + 4 * v101) = v110;
            }
          }
        }

        else if (format - 393217 < 4)
        {
          if (v99 < objc_msgSend_bufferSize(v114, v87, v88, v89, v94, v95, v96, v97, v90, v91, v92, v93))
          {
            v94.n128_u32[0] = *(__p + v101);
            if (v94.n128_f32[0] >= -32767.0)
            {
              v103 = v94.n128_f32[0] <= 32767.0;
              v102 = v94.n128_f32[0];
              v104 = 0x7FFF;
              goto LABEL_89;
            }

            LOWORD(v102) = -32767;
LABEL_97:
            *(v117[3] + 2 * v101) = v102;
          }
        }

        else if (format - 458753 < 4)
        {
          if (v99 < objc_msgSend_bufferSize(v114, v87, v88, v89, v94, v95, v96, v97, v90, v91, v92, v93))
          {
            v94.n128_u32[0] = *(__p + v101);
            if (v94.n128_f32[0] < 0.0)
            {
              goto LABEL_61;
            }

            if (v94.n128_f32[0] > 1.0)
            {
              LOWORD(v102) = -1;
              goto LABEL_97;
            }

            v94.n128_f32[0] = v94.n128_f32[0] * 65535.0;
            goto LABEL_96;
          }
        }

        else
        {
          if (format - 524289 >= 4)
          {
            goto LABEL_82;
          }

          if (v99 < objc_msgSend_bufferSize(v114, v87, v88, v89, v94, v95, v96, v97, v90, v91, v92, v93))
          {
            v94.n128_u32[0] = *(__p + v101);
            if (v94.n128_f32[0] < 0.0)
            {
              goto LABEL_61;
            }

            if (v94.n128_f32[0] > 1.0)
            {
              LOWORD(v102) = 0x7FFF;
              goto LABEL_97;
            }

            v94.n128_f32[0] = v94.n128_f32[0] * 32767.0;
LABEL_96:
            v102 = v94.n128_f32[0];
            goto LABEL_97;
          }
        }

LABEL_102:
        ++v101;
        v100 += 4;
        v99 += 2;
        if (v101 >= (v121 - __p) >> 2)
        {
          goto LABEL_103;
        }
      }
    }

    if (format - 262145 < 4 || format - 327681 < 4)
    {
      goto LABEL_32;
    }

    v98 = format - 393216;
LABEL_27:
    if (v98 - 1 >= 4)
    {
      goto LABEL_104;
    }

    goto LABEL_32;
  }

  if (format <= MDLVertexFormatIntBits)
  {
    if (format - 458753 < 4 || format - 524289 < 4)
    {
      goto LABEL_32;
    }

    v98 = format - 589824;
    goto LABEL_27;
  }

  if (format - 655361 < 4 || format - 786433 < 4 || format - 720897 <= 3)
  {
    goto LABEL_32;
  }

LABEL_104:

  _Block_object_dispose(&v116, 8);
  if (__p)
  {
    v121 = __p;
    operator delete(__p);
  }

LABEL_106:

  return v38;
}

- (void)replaceAttributeNamed:(NSString *)name withData:(MDLVertexAttributeData *)newData
{
  v245 = name;
  v6 = newData;
  v18 = v6;
  if (v6 && objc_msgSend_format(v6, v7, v8, v9, v14, v15, v16, v17, v10, v11, v12, v13))
  {
    v29 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v19, v245, v20, v25, v26, v27, v28, v21, v22, v23, v24);
    v41 = objc_msgSend_format(v18, v30, v31, v32, v37, v38, v39, v40, v33, v34, v35, v36);
    if (v41 != objc_msgSend_format(v29, v42, v43, v44, v49, v50, v51, v52, v45, v46, v47, v48))
    {
      objc_msgSend_removeAttributeNamed_(self, v53, v245, v55, v60, v61, v62, v63, v56, v57, v58, v59);
      v75 = objc_msgSend_format(v18, v64, v65, v66, v71, v72, v73, v74, v67, v68, v69, v70);
      objc_msgSend_addAttributeWithName_format_(self, v76, v245, v75, v81, v82, v83, v84, v77, v78, v79, v80);
      v95 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v85, v245, v86, v91, v92, v93, v94, v87, v88, v89, v90);

      v29 = v95;
    }

    v96 = objc_msgSend_stride(v29, v53, v54, v55, v60, v61, v62, v63, v56, v57, v58, v59);
    vertexCount = self->_vertexCount;
    v109 = objc_msgSend_stride(v18, v98, v99, v100, v105, v106, v107, v108, v101, v102, v103, v104);
    if (v109 == objc_msgSend_stride(v29, v110, v111, v112, v117, v118, v119, v120, v113, v114, v115, v116) && (v132 = vertexCount * v96, v132 <= objc_msgSend_bufferSize(v29, v121, v122, v123, v128, v129, v130, v131, v124, v125, v126, v127)) && v132 <= objc_msgSend_bufferSize(v18, v121, v122, v123, v128, v129, v130, v131, v124, v125, v126, v127))
    {
      v232 = objc_msgSend_dataStart(v29, v121, v122, v123, v128, v129, v130, v131, v124, v125, v126, v127);
      v244 = objc_msgSend_dataStart(v18, v233, v234, v235, v240, v241, v242, v243, v236, v237, v238, v239);
      memcpy(v232, v244, v132);
    }

    else
    {
      v133 = self->_vertexCount;
      if (v133)
      {
        for (i = 0; i != v133; ++i)
        {
          v135 = objc_msgSend_stride(v18, v121, v122, v123, v128, v129, v130, v131, v124, v125, v126, v127);
          v147 = objc_msgSend_stride(v29, v136, v137, v138, v143, v144, v145, v146, v139, v140, v141, v142);
          if (v147 + v135 * i <= objc_msgSend_bufferSize(v18, v148, v149, v150, v155, v156, v157, v158, v151, v152, v153, v154))
          {
            v159 = objc_msgSend_stride(v29, v121, v122, v123, v128, v129, v130, v131, v124, v125, v126, v127);
            v171 = objc_msgSend_stride(v29, v160, v161, v162, v167, v168, v169, v170, v163, v164, v165, v166);
            if (v171 + v159 * i <= objc_msgSend_bufferSize(v29, v172, v173, v174, v179, v180, v181, v182, v175, v176, v177, v178))
            {
              v183 = objc_msgSend_dataStart(v18, v121, v122, v123, v128, v129, v130, v131, v124, v125, v126, v127);
              v195 = objc_msgSend_stride(v18, v184, v185, v186, v191, v192, v193, v194, v187, v188, v189, v190);
              v207 = objc_msgSend_dataStart(v29, v196, v197, v198, v203, v204, v205, v206, v199, v200, v201, v202);
              v219 = objc_msgSend_stride(v29, v208, v209, v210, v215, v216, v217, v218, v211, v212, v213, v214);
              v231 = objc_msgSend_stride(v29, v220, v221, v222, v227, v228, v229, v230, v223, v224, v225, v226);
              memcpy((v207 + v219 * i), (v183 + v195 * i), v231);
            }
          }
        }
      }
    }
  }
}

- (void)updateAttributeNamed:(NSString *)name withData:(MDLVertexAttributeData *)newData
{
  v6 = name;
  v7 = newData;
  v19 = v7;
  if (v7 && objc_msgSend_format(v7, v8, v9, v10, v15, v16, v17, v18, v11, v12, v13, v14))
  {
    v30 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v20, v6, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v42 = v30;
    if (v30 && objc_msgSend_format(v30, v31, v32, v33, v38, v39, v40, v41, v34, v35, v36, v37))
    {
      v54 = objc_msgSend_stride(v42, v43, v44, v45, v50, v51, v52, v53, v46, v47, v48, v49);
      vertexCount = self->_vertexCount;
      v67 = objc_msgSend_stride(v19, v56, v57, v58, v63, v64, v65, v66, v59, v60, v61, v62);
      if (v67 == objc_msgSend_stride(v42, v68, v69, v70, v75, v76, v77, v78, v71, v72, v73, v74) && (v90 = objc_msgSend_format(v19, v79, v80, v81, v86, v87, v88, v89, v82, v83, v84, v85), v90 == objc_msgSend_format(v42, v91, v92, v93, v98, v99, v100, v101, v94, v95, v96, v97)) && (v102 = vertexCount * v54, v102 <= objc_msgSend_bufferSize(v42, v79, v80, v81, v86, v87, v88, v89, v82, v83, v84, v85)) && v102 <= objc_msgSend_bufferSize(v19, v79, v80, v81, v86, v87, v88, v89, v82, v83, v84, v85))
      {
        v132 = objc_msgSend_dataStart(v42, v79, v80, v81, v86, v87, v88, v89, v82, v83, v84, v85);
        v144 = objc_msgSend_dataStart(v19, v133, v134, v135, v140, v141, v142, v143, v136, v137, v138, v139);
        memcpy(v132, v144, v102);
      }

      else
      {
        __p = 0;
        v146 = 0;
        v147 = 0;
        v103 = objc_msgSend_format(v19, v79, v80, v81, v86, v87, v88, v89, v82, v83, v84, v85);
        v115 = objc_msgSend_format(v42, v104, v105, v106, v111, v112, v113, v114, v107, v108, v109, v110);
        objc_msgSend_createSourceDataVector_attr_srcElementCount_dstElementCount_(self, v116, &__p, v19, v119, v120, v121, v122, v103 & 0xF, v115 & 0xF, v117, v118);
        objc_msgSend_copyDataVector_toAttr_(self, v123, &__p, v42, v128, v129, v130, v131, v124, v125, v126, v127);
        if (__p)
        {
          v146 = __p;
          operator delete(__p);
        }
      }
    }
  }
}

- (void)removeAttributeNamed:(NSString *)name
{
  v159 = *MEMORY[0x277D85DE8];
  v4 = name;
  v15 = objc_msgSend_attributeNamed_(self->_vertexDescriptor, v5, v4, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v27 = v15;
  if (v15)
  {
    v28 = objc_msgSend_bufferIndex(v15, v16, v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);
    v155 = 0u;
    v156 = 0u;
    v153 = 0u;
    v154 = 0u;
    v39 = objc_msgSend_attributes(self->_vertexDescriptor, v29, v30, v31, 0, v36, v37, v38, v32, v33, v34, v35);
    v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v153, v158, v44, v45, v46, v47, 16, v41, v42, v43);
    if (v55)
    {
      v60 = *v154;
LABEL_4:
      v61 = 0;
      while (1)
      {
        if (*v154 != v60)
        {
          objc_enumerationMutation(v39);
        }

        v62 = *(*(&v153 + 1) + 8 * v61);
        if (v62 != v27 && objc_msgSend_bufferIndex(v62, v48, v49, v50, v56, v57, v58, v59, v51, v52, v53, v54) == v28)
        {
          break;
        }

        if (v55 == ++v61)
        {
          v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v48, &v153, v158, v56, v57, v58, v59, 16, v52, v53, v54);
          if (v55)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:

      objc_msgSend_removeObjectAtIndex_(self->_vertexBuffers, v63, v28, v64, v69, v70, v71, v72, v65, v66, v67, v68);
      v84 = objc_msgSend_layouts(self->_vertexDescriptor, v73, v74, v75, v80, v81, v82, v83, v76, v77, v78, v79);
      objc_msgSend_removeObjectAtIndex_(v84, v85, v28, v86, v91, v92, v93, v94, v87, v88, v89, v90);

      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v39 = objc_msgSend_attributes(self->_vertexDescriptor, v95, v96, v97, 0, v102, v103, v104, v98, v99, v100, v101, 0);
      v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v105, &v149, v157, v109, v110, v111, v112, 16, v106, v107, v108);
      if (v120)
      {
        v125 = *v150;
        do
        {
          for (i = 0; i != v120; ++i)
          {
            if (*v150 != v125)
            {
              objc_enumerationMutation(v39);
            }

            v127 = *(*(&v149 + 1) + 8 * i);
            if (objc_msgSend_bufferIndex(v127, v113, v114, v115, v121, v122, v123, v124, v116, v117, v118, v119) > v28)
            {
              v128 = objc_msgSend_bufferIndex(v127, v113, v114, v115, v121, v122, v123, v124, v116, v117, v118, v119);
              objc_msgSend_setBufferIndex_(v127, v129, v128 - 1, v130, v135, v136, v137, v138, v131, v132, v133, v134);
            }
          }

          v120 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v113, &v149, v157, v121, v122, v123, v124, 16, v117, v118, v119);
        }

        while (v120);
      }
    }

    objc_msgSend_removeAttributeNamed_(self->_vertexDescriptor, v139, v4, v140, v145, v146, v147, v148, v141, v142, v143, v144);
  }
}

- (int64_t)addVertexBuffer:(id)buffer
{
  v70 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  bufferCopy = buffer;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v3 = selfCopy->_vertexBuffers;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v65, v69, v8, v9, v10, v11, 16, v5, v6, v7);
  if (v19)
  {
    v24 = 0;
    v25 = *v66;
LABEL_3:
    v26 = 0;
    v27 = v24;
    v24 += v19;
    while (1)
    {
      if (*v66 != v25)
      {
        objc_enumerationMutation(v3);
      }

      v28 = *(*(&v65 + 1) + 8 * v26);
      v29 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13, v14, v20, v21, v22, v23, v15, v16, v17, v18, selfCopy);
      LOBYTE(v28) = objc_msgSend_isEqual_(v28, v30, v29, v31, v36, v37, v38, v39, v32, v33, v34, v35);

      if (v28)
      {
        break;
      }

      ++v27;
      if (v19 == ++v26)
      {
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v12, &v65, v69, v20, v21, v22, v23, 16, v16, v17, v18);
        if (v19)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    if (v27 < 0)
    {
      goto LABEL_12;
    }

    objc_msgSend_setObject_atIndexedSubscript_(selfCopy->_vertexBuffers, v40, bufferCopy, v27, v46, v47, v48, v49, v42, v43, v44, v45);
  }

  else
  {
LABEL_9:

LABEL_12:
    v50 = selfCopy;
    objc_msgSend_addObject_(selfCopy->_vertexBuffers, v40, bufferCopy, v41, v46, v47, v48, v49, v42, v43, v44, v45, selfCopy);
    v27 = objc_msgSend_count(v50->_vertexBuffers, v51, v52, v53, v58, v59, v60, v61, v54, v55, v56, v57) - 1;
  }

  return v27;
}

- (void)addAttributeWithName:(NSString *)name format:(MDLVertexFormat)format
{
  v131 = name;
  v16 = objc_msgSend_attributeNamed_(self->_vertexDescriptor, v6, v131, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v28 = v16;
  if (v16)
  {
    if (objc_msgSend_format(v16, v17, v18, v19, v24, v25, v26, v27, v20, v21, v22, v23) == format)
    {
      goto LABEL_14;
    }

    v29 = objc_autoreleasePoolPush();
    objc_msgSend_removeAttributeNamed_(self, v30, v131, v31, v36, v37, v38, v39, v32, v33, v34, v35);
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
  }

  if (!self->_allocator)
  {
    v40 = objc_alloc_init(MDLMeshBufferDataAllocator);
    allocator = self->_allocator;
    self->_allocator = v40;
  }

  v42 = sub_239E6FF8C(format);
  v52 = objc_msgSend_newBuffer_type_(self->_allocator, v43, self->_vertexCount * v42, 1, v48, v49, v50, v51, v44, v45, v46, v47);
  if (objc_msgSend_conformsToProtocol_(v52, v53, &unk_284D24D98, v54, v59, v60, v61, v62, v55, v56, v57, v58))
  {
    objc_msgSend_setName_(v52, v63, v131, v64, v69, v70, v71, v72, v65, v66, v67, v68);
  }

  if (!self->_vertexBuffers)
  {
    v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
    vertexBuffers = self->_vertexBuffers;
    self->_vertexBuffers = v73;
  }

  v82 = objc_msgSend_addVertexBuffer_(self, v63, v52, v64, v69, v70, v71, v72, v65, v66, v67, v68);
  vertexDescriptor = self->_vertexDescriptor;
  if (!vertexDescriptor)
  {
    v88 = objc_alloc_init(MDLVertexDescriptor);
    v89 = self->_vertexDescriptor;
    self->_vertexDescriptor = v88;

    vertexDescriptor = self->_vertexDescriptor;
  }

  v90 = objc_msgSend_layouts(vertexDescriptor, v75, v76, v77, v83, v84, v85, v86, v78, v79, v80, v81);
  v101 = objc_msgSend_objectAtIndexedSubscript_(v90, v91, v82, v92, v97, v98, v99, v100, v93, v94, v95, v96);
  objc_msgSend_setStride_(v101, v102, v42, v103, v108, v109, v110, v111, v104, v105, v106, v107);

  v112 = [MDLVertexAttribute alloc];
  v120 = objc_msgSend_initWithName_format_offset_bufferIndex_(v112, v113, v131, format, v116, v117, v118, v119, 0, v82, v114, v115);
  objc_msgSend_addOrReplaceAttribute_(self->_vertexDescriptor, v121, v120, v122, v127, v128, v129, v130, v123, v124, v125, v126);

  objc_autoreleasePoolPop(v29);
LABEL_14:
}

- (void)addAttributeWithName:(NSString *)name format:(MDLVertexFormat)format type:(NSString *)type data:(NSData *)data stride:(NSInteger)stride
{
  v115 = name;
  v12 = type;
  v18 = data;
  allocator = self->_allocator;
  if (!allocator)
  {
    v24 = objc_alloc_init(MDLMeshBufferDataAllocator);
    v25 = self->_allocator;
    self->_allocator = v24;

    allocator = self->_allocator;
  }

  v32 = objc_msgSend_newBufferWithData_type_(allocator, v13, v18, 1, v19, v20, v21, v22, v14, v15, v16, v17);
  if (v32)
  {
    if (!self->_vertexBuffers)
    {
      v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
      vertexBuffers = self->_vertexBuffers;
      self->_vertexBuffers = v37;
    }

    v46 = objc_msgSend_addVertexBuffer_(self, v26, v32, v27, v33, v34, v35, v36, v28, v29, v30, v31);
    vertexDescriptor = self->_vertexDescriptor;
    if (!vertexDescriptor)
    {
      v52 = objc_alloc_init(MDLVertexDescriptor);
      v53 = self->_vertexDescriptor;
      self->_vertexDescriptor = v52;

      vertexDescriptor = self->_vertexDescriptor;
    }

    v54 = objc_msgSend_layouts(vertexDescriptor, v39, v40, v41, v47, v48, v49, v50, v42, v43, v44, v45);
    v65 = objc_msgSend_objectAtIndexedSubscript_(v54, v55, v46, v56, v61, v62, v63, v64, v57, v58, v59, v60);
    objc_msgSend_setStride_(v65, v66, stride, v67, v72, v73, v74, v75, v68, v69, v70, v71);

    if (objc_msgSend_conformsToProtocol_(v32, v76, &unk_284D24D98, v77, v82, v83, v84, v85, v78, v79, v80, v81))
    {
      objc_msgSend_setName_(v32, v86, v115, v87, v92, v93, v94, v95, v88, v89, v90, v91);
    }

    v96 = [MDLVertexAttribute alloc];
    v104 = objc_msgSend_initWithName_format_offset_bufferIndex_(v96, v97, v12, format, v100, v101, v102, v103, 0, v46, v98, v99);
    objc_msgSend_addOrReplaceAttribute_(self->_vertexDescriptor, v105, v104, v106, v111, v112, v113, v114, v107, v108, v109, v110);
  }
}

- (void)addAttributeWithName:(NSString *)name format:(MDLVertexFormat)format type:(NSString *)type data:(NSData *)data stride:(NSInteger)stride time:(NSTimeInterval)time
{
  v130 = name;
  v14 = type;
  v20 = data;
  allocator = self->_allocator;
  if (!allocator)
  {
    v26 = objc_alloc_init(MDLMeshBufferDataAllocator);
    v27 = self->_allocator;
    self->_allocator = v26;

    allocator = self->_allocator;
  }

  v34 = objc_msgSend_newBufferWithData_type_(allocator, v15, v20, 1, v21, v22, v23, v24, v16, v17, v18, v19);
  if (v34)
  {
    if (!self->_vertexBuffers)
    {
      v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
      vertexBuffers = self->_vertexBuffers;
      self->_vertexBuffers = v39;
    }

    v48 = objc_msgSend_addVertexBuffer_(self, v28, v34, v29, v35, v36, v37, v38, v30, v31, v32, v33);
    vertexDescriptor = self->_vertexDescriptor;
    if (!vertexDescriptor)
    {
      v54 = objc_alloc_init(MDLVertexDescriptor);
      v55 = self->_vertexDescriptor;
      self->_vertexDescriptor = v54;

      vertexDescriptor = self->_vertexDescriptor;
    }

    v56 = objc_msgSend_layouts(vertexDescriptor, v41, v42, v43, v49, v50, v51, v52, v44, v45, v46, v47);
    v67 = objc_msgSend_objectAtIndexedSubscript_(v56, v57, v48, v58, v63, v64, v65, v66, v59, v60, v61, v62);
    objc_msgSend_setStride_(v67, v68, stride, v69, v74, v75, v76, v77, v70, v71, v72, v73);

    if (objc_msgSend_conformsToProtocol_(v34, v78, &unk_284D24D98, v79, v84, v85, v86, v87, v80, v81, v82, v83))
    {
      objc_msgSend_setName_(v34, v88, v130, v90, v95, v96, v97, v98, v91, v92, v93, v94);
    }

    v99 = objc_msgSend_count(self->_vertexBuffers, v88, v89, v90, v95, v96, v97, v98, v91, v92, v93, v94);
    v100 = [MDLVertexAttribute alloc];
    v108 = objc_msgSend_initWithName_format_offset_bufferIndex_(v100, v101, v14, format, v104, v105, v106, v107, 0, v99 - 1, v102, v103);
    v109.n128_f64[0] = time;
    objc_msgSend_setTime_(v108, v110, v111, v112, v109, v117, v118, v119, v113, v114, v115, v116);
    objc_msgSend_addOrReplaceAttribute_(self->_vertexDescriptor, v120, v108, v121, v126, v127, v128, v129, v122, v123, v124, v125);
  }
}

- (void)_calculateTangentBasisFromPositions:(float *)positions positionStride:(int64_t)stride positionsBufferSize:(unint64_t)size normals:(float *)normals normalStride:(int64_t)normalStride normalsBufferSize:(unint64_t)bufferSize uvs:(float *)uvs uvStride:(int64_t)self0 uvsBufferSize:(unint64_t)self1 tangents:(float *)self2 tangentsStride:(int64_t)self3 tangentsBufferSize:(unint64_t)self4 bitagents:(float *)self5 bitangentStride:(int64_t)self6 bitangentsBufferSize:(unint64_t)self7 tangentFormat:(unint64_t)self8 selector:(SEL)self9
{
  v126 = *MEMORY[0x277D85DE8];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  obj = self->_submeshes;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v121, v125, v23, v24, v25, v26, 16, v20, v21, v22);
  if (v34)
  {
    v39 = *v122;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v122 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v121 + 1) + 8 * i);
        v42 = objc_msgSend_indexBuffer(v41, v27, v28, v29, v35, v36, v37, v38, v30, v31, v32, v33);
        v54 = objc_msgSend_map(v42, v43, v44, v45, v50, v51, v52, v53, v46, v47, v48, v49);

        v66 = objc_msgSend_bytes(v54, v55, v56, v57, v62, v63, v64, v65, v58, v59, v60, v61);
        v78 = objc_msgSend_indexType(v41, v67, v68, v69, v74, v75, v76, v77, v70, v71, v72, v73);
        switch(v78)
        {
          case 8:
            v106 = objc_msgSend_indexCount(v41, v79, v80, v81, v86, v87, v88, v89, v82, v83, v84, v85);
            sub_239F3D66C(v66, v106, positions, stride, size, normals, normalStride, bufferSize, v107, v108, v109, v110, v111, v112, v113, uvs, uvStride, uvsBufferSize, tangents, tangentsStride, tangentsBufferSize, bitagents, bitangentStride, bitangentsBufferSize, format, selector);
            break;
          case 16:
            v98 = objc_msgSend_indexCount(v41, v79, v80, v81, v86, v87, v88, v89, v82, v83, v84, v85);
            sub_239F3DD18(v66, v98, positions, stride, size, normals, normalStride, bufferSize, v99, v100, v101, v102, v103, v104, v105, uvs, uvStride, uvsBufferSize, tangents, tangentsStride, tangentsBufferSize, bitagents, bitangentStride, bitangentsBufferSize, format, selector);
            break;
          case 32:
            v90 = objc_msgSend_indexCount(v41, v79, v80, v81, v86, v87, v88, v89, v82, v83, v84, v85);
            sub_239F3E3C8(v66, v90, positions, stride, size, normals, normalStride, bufferSize, v91, v92, v93, v94, v95, v96, v97, uvs, uvStride, uvsBufferSize, tangents, tangentsStride, tangentsBufferSize, bitagents, bitangentStride, bitangentsBufferSize, format, selector);
            break;
        }
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v27, &v121, v125, v35, v36, v37, v38, 16, v31, v32, v33);
    }

    while (v34);
  }
}

- (void)addTangentBasisForTextureCoordinateAttributeNamed:(NSString *)textureCoordinateAttributeName tangentAttributeNamed:(NSString *)tangentAttributeName bitangentAttributeNamed:(NSString *)bitangentAttributeName
{
  v340 = textureCoordinateAttributeName;
  v9 = tangentAttributeName;
  v342 = bitangentAttributeName;
  v339 = v9;
  if (!v340 || !v9 || !v342)
  {
    v19 = MEMORY[0x277CBEAD8];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v19, v23, @"ModelIOException", @"[%@ %@]: Must provide texture coordinates, a tangent, and bitangent attribute", v28, v29, v30, v31, v24, v25, v26, v27, v21, v22);
  }

  v341 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v10, @"position", 786435, v15, v16, v17, v18, v11, v12, v13, v14);
  if (!v341)
  {
    v41 = MEMORY[0x277CBEAD8];
    v42 = objc_opt_class();
    v43 = NSStringFromClass(v42);
    v44 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v41, v45, @"ModelIOException", @"[%@ %@]: Must provide position data", v50, v51, v52, v53, v46, v47, v48, v49, v43, v44);
  }

  v54 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v32, v340, 786434, v37, v38, v39, v40, v33, v34, v35, v36);
  v338 = v54;
  if (!v54)
  {
    v66 = MEMORY[0x277CBEAD8];
    v67 = objc_opt_class();
    v68 = NSStringFromClass(v67);
    v69 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v66, v70, @"ModelIOException", @"[%@ %@]: Must provide texture coordinates", v75, v76, v77, v78, v71, v72, v73, v74, v68, v69);

    v54 = 0;
  }

  v79 = v54;
  v80 = objc_msgSend_dataStart(v54, v55, v56, v57, v62, v63, v64, v65, v58, v59, v60, v61);
  v336 = objc_msgSend_stride(v79, v81, v82, v83, v88, v89, v90, v91, v84, v85, v86, v87);
  v108 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v92, v9, 786435, v97, v98, v99, v100, v93, v94, v95, v96);
  if (!v108 && (objc_msgSend_addAttributeWithName_format_(self, v101, v9, 786435, v109, v110, v111, v112, v104, v105, v106, v107), objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v113, v9, v114, v119, v120, v121, v122, v115, v116, v117, v118), (v108 = objc_claimAutoreleasedReturnValue()) == 0) || objc_msgSend_format(v108, v101, v102, v103, v109, v110, v111, v112, v104, v105, v106, v107) != 786435)
  {
    v132 = MEMORY[0x277CBEAD8];
    v133 = objc_opt_class();
    v134 = NSStringFromClass(v133);
    v135 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v132, v136, @"ModelIOException", @"[%@ %@]: Tangent data in float3 format not supplied or could not be created", v141, v142, v143, v144, v137, v138, v139, v140, v134, v135);
  }

  v335 = v80;
  aSelector = a2;
  v152 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v123, v342, 786435, v128, v129, v130, v131, v124, v125, v126, v127);
  if (!v152 && (objc_msgSend_addAttributeWithName_format_(self, v145, v342, 786435, v153, v154, v155, v156, v148, v149, v150, v151), objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v157, v342, v158, v163, v164, v165, v166, v159, v160, v161, v162), (v152 = objc_claimAutoreleasedReturnValue()) == 0) || objc_msgSend_format(v152, v145, v146, v147, v153, v154, v155, v156, v148, v149, v150, v151) != 786435)
  {
    v178 = MEMORY[0x277CBEAD8];
    v179 = objc_opt_class();
    v180 = NSStringFromClass(v179);
    v181 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v178, v182, @"ModelIOException", @"[%@ %@]: Bitangent data in float3 format not supplied or could not be created", v187, v188, v189, v190, v183, v184, v185, v186, v180, v181);
  }

  v334 = objc_msgSend_dataStart(v341, v167, v168, v169, v174, v175, v176, v177, v170, v171, v172, v173);
  v333 = objc_msgSend_stride(v341, v191, v192, v193, v198, v199, v200, v201, v194, v195, v196, v197);
  v332 = objc_msgSend_bufferSize(v341, v202, v203, v204, v209, v210, v211, v212, v205, v206, v207, v208);
  v224 = objc_msgSend_bufferSize(v338, v213, v214, v215, v220, v221, v222, v223, v216, v217, v218, v219);
  v236 = objc_msgSend_dataStart(v108, v225, v226, v227, v232, v233, v234, v235, v228, v229, v230, v231);
  v248 = objc_msgSend_stride(v108, v237, v238, v239, v244, v245, v246, v247, v240, v241, v242, v243);
  v260 = objc_msgSend_bufferSize(v108, v249, v250, v251, v256, v257, v258, v259, v252, v253, v254, v255);
  v272 = objc_msgSend_dataStart(v152, v261, v262, v263, v268, v269, v270, v271, v264, v265, v266, v267);
  v284 = objc_msgSend_stride(v152, v273, v274, v275, v280, v281, v282, v283, v276, v277, v278, v279);
  v296 = objc_msgSend_bufferSize(v152, v285, v286, v287, v292, v293, v294, v295, v288, v289, v290, v291);
  v308 = objc_msgSend_format(v108, v297, v298, v299, v304, v305, v306, v307, v300, v301, v302, v303);
  objc_msgSend__calculateTangentBasisFromPositions_positionStride_positionsBufferSize_normals_normalStride_normalsBufferSize_uvs_uvStride_uvsBufferSize_tangents_tangentsStride_tangentsBufferSize_bitagents_bitangentStride_bitangentsBufferSize_tangentFormat_selector_(self, v309, v334, v333, v310, v311, v312, v313, v332, 0, 0, 0, v335, v336, v224, v236, v248, v260, v272, v284, v296, v308, aSelector);
  objc_msgSend_replaceAttributeNamed_withData_(self, v314, v339, v108, v319, v320, v321, v322, v315, v316, v317, v318);
  objc_msgSend_replaceAttributeNamed_withData_(self, v323, v342, v152, v328, v329, v330, v331, v324, v325, v326, v327);
}

- (void)addTangentBasisForTextureCoordinateAttributeNamed:(NSString *)textureCoordinateAttributeName normalAttributeNamed:(NSString *)normalAttributeName tangentAttributeNamed:(NSString *)tangentAttributeName
{
  v298 = textureCoordinateAttributeName;
  v9 = normalAttributeName;
  v301 = tangentAttributeName;
  v297 = v9;
  if (!v9 || !v298 || !v301)
  {
    v19 = MEMORY[0x277CBEAD8];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v19, v23, @"ModelIOException", @"[%@ %@]: Must provide texture coordinates, a tangent, and bitangent attribute", v28, v29, v30, v31, v24, v25, v26, v27, v21, v22);
  }

  v37 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v10, @"position", 786435, v15, v16, v17, v18, v11, v12, v13, v14);
  v299 = v37;
  if (!v37)
  {
    v42 = MEMORY[0x277CBEAD8];
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    v45 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v42, v46, @"ModelIOException", @"[%@ %@]: Must provide position data", v51, v52, v53, v54, v47, v48, v49, v50, v44, v45);
  }

  v62 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v32, v298, 786434, v38, v39, v40, v41, v33, v34, v35, v36);
  v296 = v62;
  if (!v62)
  {
    v67 = MEMORY[0x277CBEAD8];
    v68 = objc_opt_class();
    v69 = NSStringFromClass(v68);
    v70 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v67, v71, @"ModelIOException", @"[%@ %@]: Must provide texture coordinates", v76, v77, v78, v79, v72, v73, v74, v75, v69, v70);
  }

  v80 = objc_msgSend_dataStart(v62, v55, v56, v57, v63, v64, v65, v66, v58, v59, v60, v61);
  v294 = objc_msgSend_stride(v62, v81, v82, v83, v88, v89, v90, v91, v84, v85, v86, v87);
  v300 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v92, v297, 786435, v97, v98, v99, v100, v93, v94, v95, v96);
  if (!v300)
  {
    v110 = MEMORY[0x277CBEAD8];
    v111 = objc_opt_class();
    v112 = NSStringFromClass(v111);
    v113 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v110, v114, @"ModelIOException", @"[%@ %@]: Must provide normals", v119, v120, v121, v122, v115, v116, v117, v118, v112, v113);
  }

  v293 = v80;
  aSelector = a2;
  v130 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v101, v301, 786435, v106, v107, v108, v109, v102, v103, v104, v105);
  if (!v130)
  {
    objc_msgSend_addAttributeWithName_format_(self, v123, v301, 786435, v131, v132, v133, v134, v126, v127, v128, v129);
    v130 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v135, v301, v136, v141, v142, v143, v144, v137, v138, v139, v140);
    if (!v130)
    {
      v145 = MEMORY[0x277CBEAD8];
      v146 = objc_opt_class();
      v147 = NSStringFromClass(v146);
      v148 = NSStringFromSelector(a2);
      objc_msgSend_raise_format_(v145, v149, @"ModelIOException", @"[%@ %@]: Tangent data not supplied or could not be created", v154, v155, v156, v157, v150, v151, v152, v153, v147, v148);

      v130 = 0;
    }
  }

  v292 = objc_msgSend_dataStart(v37, v123, v124, v125, v131, v132, v133, v134, v126, v127, v128, v129);
  v291 = objc_msgSend_stride(v37, v158, v159, v160, v165, v166, v167, v168, v161, v162, v163, v164);
  v180 = objc_msgSend_bufferSize(v37, v169, v170, v171, v176, v177, v178, v179, v172, v173, v174, v175);
  v192 = objc_msgSend_dataStart(v300, v181, v182, v183, v188, v189, v190, v191, v184, v185, v186, v187);
  v204 = objc_msgSend_stride(v300, v193, v194, v195, v200, v201, v202, v203, v196, v197, v198, v199);
  v216 = objc_msgSend_bufferSize(v300, v205, v206, v207, v212, v213, v214, v215, v208, v209, v210, v211);
  v228 = objc_msgSend_bufferSize(v62, v217, v218, v219, v224, v225, v226, v227, v220, v221, v222, v223);
  v240 = objc_msgSend_dataStart(v130, v229, v230, v231, v236, v237, v238, v239, v232, v233, v234, v235);
  v252 = objc_msgSend_stride(v130, v241, v242, v243, v248, v249, v250, v251, v244, v245, v246, v247);
  v264 = objc_msgSend_bufferSize(v130, v253, v254, v255, v260, v261, v262, v263, v256, v257, v258, v259);
  v276 = objc_msgSend_format(v130, v265, v266, v267, v272, v273, v274, v275, v268, v269, v270, v271);
  objc_msgSend__calculateTangentBasisFromPositions_positionStride_positionsBufferSize_normals_normalStride_normalsBufferSize_uvs_uvStride_uvsBufferSize_tangents_tangentsStride_tangentsBufferSize_bitagents_bitangentStride_bitangentsBufferSize_tangentFormat_selector_(self, v277, v292, v291, v278, v279, v280, v281, v180, v192, v204, v216, v293, v294, v228, v240, v252, v264, 0, 0, 0, v276, aSelector);
  objc_msgSend_replaceAttributeNamed_withData_(self, v282, v301, v130, v287, v288, v289, v290, v283, v284, v285, v286);
}

- (void)addOrthTanBasisForTextureCoordinateAttributeNamed:(NSString *)textureCoordinateAttributeName normalAttributeNamed:(NSString *)normalAttributeName tangentAttributeNamed:(NSString *)tangentAttributeName
{
  v298 = textureCoordinateAttributeName;
  v9 = normalAttributeName;
  v301 = tangentAttributeName;
  v297 = v9;
  if (!v9 || !v298 || !v301)
  {
    v19 = MEMORY[0x277CBEAD8];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v19, v23, @"ModelIOException", @"[%@ %@]: Must provide texture coordinates, a tangent, and bitangent attribute", v28, v29, v30, v31, v24, v25, v26, v27, v21, v22);
  }

  v37 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v10, @"position", 786435, v15, v16, v17, v18, v11, v12, v13, v14);
  v299 = v37;
  if (!v37)
  {
    v42 = MEMORY[0x277CBEAD8];
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    v45 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v42, v46, @"ModelIOException", @"[%@ %@]: Must provide position data", v51, v52, v53, v54, v47, v48, v49, v50, v44, v45);
  }

  v62 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v32, v298, 786434, v38, v39, v40, v41, v33, v34, v35, v36);
  v296 = v62;
  if (!v62)
  {
    v67 = MEMORY[0x277CBEAD8];
    v68 = objc_opt_class();
    v69 = NSStringFromClass(v68);
    v70 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v67, v71, @"ModelIOException", @"[%@ %@]: Must provide texture coordinates", v76, v77, v78, v79, v72, v73, v74, v75, v69, v70);
  }

  v80 = objc_msgSend_dataStart(v62, v55, v56, v57, v63, v64, v65, v66, v58, v59, v60, v61);
  v294 = objc_msgSend_stride(v62, v81, v82, v83, v88, v89, v90, v91, v84, v85, v86, v87);
  v300 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v92, v297, 786435, v97, v98, v99, v100, v93, v94, v95, v96);
  if (!v300)
  {
    v110 = MEMORY[0x277CBEAD8];
    v111 = objc_opt_class();
    v112 = NSStringFromClass(v111);
    v113 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v110, v114, @"ModelIOException", @"[%@ %@]: Must provide normals", v119, v120, v121, v122, v115, v116, v117, v118, v112, v113);
  }

  v293 = v80;
  aSelector = a2;
  v130 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v101, v301, 786436, v106, v107, v108, v109, v102, v103, v104, v105);
  if (!v130)
  {
    objc_msgSend_addAttributeWithName_format_(self, v123, v301, 786436, v131, v132, v133, v134, v126, v127, v128, v129);
    v130 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v135, v301, v136, v141, v142, v143, v144, v137, v138, v139, v140);
    if (!v130)
    {
      v145 = MEMORY[0x277CBEAD8];
      v146 = objc_opt_class();
      v147 = NSStringFromClass(v146);
      v148 = NSStringFromSelector(a2);
      objc_msgSend_raise_format_(v145, v149, @"ModelIOException", @"[%@ %@]: Tangent data not supplied or could not be created", v154, v155, v156, v157, v150, v151, v152, v153, v147, v148);

      v130 = 0;
    }
  }

  v292 = objc_msgSend_dataStart(v37, v123, v124, v125, v131, v132, v133, v134, v126, v127, v128, v129);
  v291 = objc_msgSend_stride(v37, v158, v159, v160, v165, v166, v167, v168, v161, v162, v163, v164);
  v180 = objc_msgSend_bufferSize(v37, v169, v170, v171, v176, v177, v178, v179, v172, v173, v174, v175);
  v192 = objc_msgSend_dataStart(v300, v181, v182, v183, v188, v189, v190, v191, v184, v185, v186, v187);
  v204 = objc_msgSend_stride(v300, v193, v194, v195, v200, v201, v202, v203, v196, v197, v198, v199);
  v216 = objc_msgSend_bufferSize(v300, v205, v206, v207, v212, v213, v214, v215, v208, v209, v210, v211);
  v228 = objc_msgSend_bufferSize(v62, v217, v218, v219, v224, v225, v226, v227, v220, v221, v222, v223);
  v240 = objc_msgSend_dataStart(v130, v229, v230, v231, v236, v237, v238, v239, v232, v233, v234, v235);
  v252 = objc_msgSend_stride(v130, v241, v242, v243, v248, v249, v250, v251, v244, v245, v246, v247);
  v264 = objc_msgSend_bufferSize(v130, v253, v254, v255, v260, v261, v262, v263, v256, v257, v258, v259);
  v276 = objc_msgSend_format(v130, v265, v266, v267, v272, v273, v274, v275, v268, v269, v270, v271);
  objc_msgSend__calculateTangentBasisFromPositions_positionStride_positionsBufferSize_normals_normalStride_normalsBufferSize_uvs_uvStride_uvsBufferSize_tangents_tangentsStride_tangentsBufferSize_bitagents_bitangentStride_bitangentsBufferSize_tangentFormat_selector_(self, v277, v292, v291, v278, v279, v280, v281, v180, v192, v204, v216, v293, v294, v228, v240, v252, v264, 0, 0, 0, v276, aSelector);
  objc_msgSend_replaceAttributeNamed_withData_(self, v282, v301, v130, v287, v288, v289, v290, v283, v284, v285, v286);
}

- (void)_calculateFaceNormalsFromPositions:(float *)positions positionStride:(int64_t)stride normals:(float *)normals normalStride:(int64_t)normalStride creaseThreshold:(float)threshold
{
  v101 = *MEMORY[0x277D85DE8];
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = self->_submeshes;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v96, v100, v16, v17, v18, v19, 16, v13, v14, v15);
  if (v27)
  {
    v32 = *v97;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v97 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v96 + 1) + 8 * i);
        v35 = objc_msgSend_indexBuffer(v34, v20, v21, v22, v28, v29, v30, v31, v23, v24, v25, v26);
        v47 = objc_msgSend_map(v35, v36, v37, v38, v43, v44, v45, v46, v39, v40, v41, v42);

        v59 = objc_msgSend_bytes(v47, v48, v49, v50, v55, v56, v57, v58, v51, v52, v53, v54);
        v71 = objc_msgSend_indexType(v34, v60, v61, v62, v67, v68, v69, v70, v63, v64, v65, v66);
        switch(v71)
        {
          case 8:
            v91 = objc_msgSend_indexCount(v34, v72, v73, v74, v79, v80, v81, v82, v75, v76, v77, v78);
            v92.f32[0] = threshold;
            sub_239F40980(v59, v91, positions, stride, normals, normalStride, v92, v93, v94);
            break;
          case 16:
            v87 = objc_msgSend_indexCount(v34, v72, v73, v74, v79, v80, v81, v82, v75, v76, v77, v78);
            v88.f32[0] = threshold;
            sub_239F40C94(v59, v87, positions, stride, normals, normalStride, v88, v89, v90);
            break;
          case 32:
            v83 = objc_msgSend_indexCount(v34, v72, v73, v74, v79, v80, v81, v82, v75, v76, v77, v78);
            v84.f32[0] = threshold;
            sub_239F40FAC(v59, v83, positions, stride, normals, normalStride, v84, v85, v86);
            break;
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v96, v100, v28, v29, v30, v31, 16, v24, v25, v26);
    }

    while (v27);
  }
}

- (BOOL)triangulate
{
  v467 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  selfCopy = self;
  v15 = objc_msgSend_submeshes(self, v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v27 = objc_msgSend_count(v15, v16, v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);
  v449 = objc_msgSend_initWithCapacity_(v3, v28, v27, v29, v34, v35, v36, v37, v30, v31, v32, v33);

  v464 = 0u;
  v465 = 0u;
  v462 = 0u;
  v463 = 0u;
  obj = objc_msgSend_submeshes(selfCopy, v38, v39, v40, 0, v45, v46, v47, v41, v42, v43, v44);
  v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v48, &v462, v466, v52, v53, v54, v55, 16, v49, v50, v51);
  if (v56)
  {
    v448 = *v463;
    do
    {
      v450 = v56;
      for (i = 0; i != v450; ++i)
      {
        if (*v463 != v448)
        {
          objc_enumerationMutation(obj);
        }

        v69 = *(*(&v462 + 1) + 8 * i);
        v459 = 0;
        v460 = 0;
        v461 = 0;
        if (objc_msgSend_geometryType(v69, v57, v58, v59, v64, v65, v66, v67, v60, v61, v62, v63) == 2)
        {
          objc_msgSend_addObject_(v449, v70, v69, v72, v77, v78, v79, v80, v73, v74, v75, v76);
          goto LABEL_32;
        }

        v88 = objc_msgSend_topology(v69, v70, v71, v72, v77, v78, v79, v80, v73, v74, v75, v76);
        if (v88)
        {
          v93 = objc_msgSend_topology(v69, v81, v82, v83, v89, v90, v91, v92, v84, v85, v86, v87);
          v105 = objc_msgSend_faceTopology(v93, v94, v95, v96, v101, v102, v103, v104, v97, v98, v99, v100);
          v106 = v105 == 0;

          if (!v106)
          {
            v107 = objc_msgSend_topology(v69, v81, v82, v83, v89, v90, v91, v92, v84, v85, v86, v87);
            v119 = objc_msgSend_faceTopology(v107, v108, v109, v110, v115, v116, v117, v118, v111, v112, v113, v114);
            v454 = objc_msgSend_map(v119, v120, v121, v122, v127, v128, v129, v130, v123, v124, v125, v126);

            if (v454)
            {
              v142 = objc_msgSend_bytes(v454, v131, v132, v133, v138, v139, v140, v141, v134, v135, v136, v137);
            }

            else
            {
              v142 = 0;
            }

            v143 = objc_msgSend_topology(v69, v131, v132, v133, v138, v139, v140, v141, v134, v135, v136, v137);
            v88 = objc_msgSend_faceCount(v143, v144, v145, v146, v151, v152, v153, v154, v147, v148, v149, v150);

            goto LABEL_16;
          }

          v88 = 0;
        }

        v142 = 0;
        v454 = 0;
LABEL_16:
        v155 = objc_msgSend_indexBuffer(v69, v81, v82, v83, v89, v90, v91, v92, v84, v85, v86, v87);
        v453 = objc_msgSend_map(v155, v156, v157, v158, v163, v164, v165, v166, v159, v160, v161, v162);

        v178 = objc_msgSend_bytes(v453, v167, v168, v169, v174, v175, v176, v177, v170, v171, v172, v173);
        v190 = objc_msgSend_indexCount(v69, v179, v180, v181, v186, v187, v188, v189, v182, v183, v184, v185);
        v202 = objc_msgSend_indexType(v69, v191, v192, v193, v198, v199, v200, v201, v194, v195, v196, v197);
        v214 = objc_msgSend_geometryType(v69, v203, v204, v205, v210, v211, v212, v213, v206, v207, v208, v209);
        sub_239F5960C(&v459, v178, v190, v142, v88, v202, v214, 2);
        v226 = objc_msgSend_indexType(v69, v215, v216, v217, v222, v223, v224, v225, v218, v219, v220, v221);
        if (v226)
        {
          if (v226 == 8)
          {
            v238 = 1;
          }

          else if (v226 == 16)
          {
            v238 = 2;
          }

          else
          {
            v238 = 4;
          }
        }

        else
        {
          v239 = objc_msgSend_name(v69, v227, v228, v229, v234, v235, v236, v237, v230, v231, v232, v233);
          NSLog(&cfstr_IndexBitdepthI.isa, v239);

          v238 = 4;
        }

        v240 = objc_alloc(MEMORY[0x277CBEA90]);
        v452 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v240, v241, v459, ((v460 - v459) >> 2) * v238, v245, v246, v247, v248, 0, v242, v243, v244);
        v260 = objc_msgSend_indexBuffer(v69, v249, v250, v251, v256, v257, v258, v259, v252, v253, v254, v255);
        v272 = objc_msgSend_allocator(v260, v261, v262, v263, v268, v269, v270, v271, v264, v265, v266, v267);
        v282 = objc_msgSend_newBufferWithData_type_(v272, v273, v452, 2, v278, v279, v280, v281, v274, v275, v276, v277);

        v283 = objc_alloc_init(MDLSubmeshTopology);
        objc_msgSend_setFaceCount_(v283, v284, ((v460 - v459) >> 2) / 3uLL, v285, v290, v291, v292, v293, v286, v287, v288, v289);
        __p = 0;
        v457 = 0;
        v458 = 0;
        v305 = objc_msgSend_faceCount(v283, v294, v295, v296, v301, v302, v303, v304, v297, v298, v299, v300);
        v455 = 3;
        if (v305 <= v457 - __p)
        {
          if (v305 < v457 - __p)
          {
            v457 = __p + v305;
          }
        }

        else
        {
          sub_239EFF5E8(&__p, v305 - (v457 - __p), &v455);
        }

        v306 = objc_alloc(MEMORY[0x277CBEA90]);
        v451 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v306, v307, __p, v457 - __p, v311, v312, v313, v314, 0, v308, v309, v310);
        v326 = objc_msgSend_indexBuffer(v69, v315, v316, v317, v322, v323, v324, v325, v318, v319, v320, v321);
        v338 = objc_msgSend_allocator(v326, v327, v328, v329, v334, v335, v336, v337, v330, v331, v332, v333);
        v348 = objc_msgSend_newBufferWithData_type_(v338, v339, v451, 2, v344, v345, v346, v347, v340, v341, v342, v343);

        if (objc_msgSend_conformsToProtocol_(v348, v349, &unk_284D24D98, v350, v355, v356, v357, v358, v351, v352, v353, v354))
        {
          v369 = v348;
          objc_msgSend_setName_(v369, v370, @"faceVertexCounts", v371, v376, v377, v378, v379, v372, v373, v374, v375);
        }

        objc_msgSend_setFaceTopology_(v283, v359, v348, v360, v365, v366, v367, v368, v361, v362, v363, v364);
        v380 = [MDLSubmesh alloc];
        v392 = objc_msgSend_name(v69, v381, v382, v383, v388, v389, v390, v391, v384, v385, v386, v387);
        v393 = v459;
        v394 = v460;
        v406 = objc_msgSend_indexType(v69, v395, v396, v397, v402, v403, v404, v405, v398, v399, v400, v401);
        v418 = objc_msgSend_material(v69, v407, v408, v409, v414, v415, v416, v417, v410, v411, v412, v413);
        v424 = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v380, v419, v392, v282, v420, v421, v422, v423, (v394 - v393) >> 2, v406, 2, v418, v283);
        objc_msgSend_addObject_(v449, v425, v424, v426, v431, v432, v433, v434, v427, v428, v429, v430);

        if (__p)
        {
          v457 = __p;
          operator delete(__p);
        }

LABEL_32:
        if (v459)
        {
          v460 = v459;
          operator delete(v459);
        }
      }

      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v57, &v462, v466, v64, v65, v66, v67, 16, v61, v62, v63);
    }

    while (v56);
  }

  objc_msgSend_setSubmeshes_(selfCopy, v435, v449, v436, v441, v442, v443, v444, v437, v438, v439, v440);
  return 1;
}

- (void)addNormalsWithAttributeNamed:(NSString *)attributeName creaseThreshold:(float)creaseThreshold
{
  v270 = *MEMORY[0x277D85DE8];
  v13 = attributeName;
  if (!v13)
  {
    v18 = MEMORY[0x277CBEAD8];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v18, v22, @"ModelIOException", @"[%@ %@]: Must provide attribute name", v27, v28, v29, v30, v23, v24, v25, v26, v20, v21);
  }

  if (objc_msgSend_makeVerticesUniqueAndReturnError_(self, v7, 0, v8, v14, v15, v16, v17, v9, v10, v11, v12))
  {
    v267 = 0u;
    v268 = 0u;
    v265 = 0u;
    v266 = 0u;
    v31 = self->_submeshes;
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v265, v269, v36, v37, v38, v39, 16, v33, v34, v35);
    if (v47)
    {
      v52 = *v266;
LABEL_6:
      v53 = 0;
      while (1)
      {
        if (*v266 != v52)
        {
          objc_enumerationMutation(v31);
        }

        if (objc_msgSend_geometryType(*(*(&v265 + 1) + 8 * v53), v40, v41, v42, v48, v49, v50, v51, v43, v44, v45, v46) != 2)
        {
          break;
        }

        if (v47 == ++v53)
        {
          v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v40, &v265, v269, v48, v49, v50, v51, 16, v44, v45, v46);
          if (v47)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      if ((objc_msgSend_triangulate(self, v63, v64, v65, v70, v71, v72, v73, v66, v67, v68, v69) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
LABEL_12:
    }

    v80 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v54, @"position", 786435, v59, v60, v61, v62, v55, v56, v57, v58);
    if (!v80)
    {
      v85 = MEMORY[0x277CBEAD8];
      v86 = objc_opt_class();
      v87 = NSStringFromClass(v86);
      v88 = NSStringFromSelector(a2);
      objc_msgSend_raise_format_(v85, v89, @"ModelIOException", @"[%@ %@]: Position data not found", v94, v95, v96, v97, v90, v91, v92, v93, v87, v88);
    }

    v98 = objc_msgSend_attributeNamed_(self->_vertexDescriptor, v74, v13, v75, v81, v82, v83, v84, v76, v77, v78, v79);
    v110 = objc_msgSend_format(v98, v99, v100, v101, v106, v107, v108, v109, v102, v103, v104, v105);
    if (v98 && (v110 & 7u) >= 3uLL)
    {
      v121 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v111, v13, v112, v117, v118, v119, v120, v113, v114, v115, v116);
      v133 = objc_msgSend_format(v98, v122, v123, v124, v129, v130, v131, v132, v125, v126, v127, v128);
      v145 = v133;
      if (v133 != 786435)
      {
        __p[0] = 0;
        __p[1] = 0;
        v264 = 0;
        sub_239EB2474(__p, 3 * self->_vertexCount);
        v224 = objc_msgSend_dataStart(v80, v213, v214, v215, v220, v221, v222, v223, v216, v217, v218, v219);
        v236 = objc_msgSend_stride(v80, v225, v226, v227, v232, v233, v234, v235, v228, v229, v230, v231);
        v237.n128_f32[0] = creaseThreshold;
        objc_msgSend__calculateFaceNormalsFromPositions_positionStride_normals_normalStride_creaseThreshold_(self, v238, v224, v236, v237, v241, v242, v243, __p[0], 12, v239, v240);
        v253 = v145 & 7;
        if (v253 >= 4)
        {
          v261 = 0uLL;
          v262 = 0;
          sub_239E95D48(&v261, self->_vertexCount * (v145 & 7));
          v254 = __p[0];
          if (self->_vertexCount)
          {
            v259 = v80;
            v255 = 0;
            v256 = v253 - 3;
            do
            {
              sub_239E798A4(&v261, v254);
              sub_239E798A4(&v261, v254 + 1);
              sub_239E798A4(&v261, v254 + 2);
              v254 += 3;
              v257 = v256;
              do
              {
                v260 = 1065353216;
                sub_239E798A4(&v261, &v260);
                --v257;
              }

              while (v257);
              ++v255;
            }

            while (v255 < self->_vertexCount);
            v254 = __p[0];
            v80 = v259;
          }

          v249 = v261;
          *__p = v261;
          v258 = v262;
          v261.n128_u64[0] = v254;
          v262 = v264;
          v264 = v258;
          if (v254)
          {
            v261.n128_u64[1] = v254;
            operator delete(v254);
          }
        }

        objc_msgSend_copyDataVector_toAttr_(self, v244, __p, v121, v249, v250, v251, v252, v245, v246, v247, v248);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        goto LABEL_34;
      }
    }

    else
    {
      objc_msgSend_addAttributeWithName_format_(self, v111, v13, 786435, v117, v118, v119, v120, v113, v114, v115, v116);
      v121 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v190, v13, v191, v196, v197, v198, v199, v192, v193, v194, v195);
      if (!v121)
      {
        v200 = MEMORY[0x277CBEAD8];
        v201 = objc_opt_class();
        v202 = NSStringFromClass(v201);
        v203 = NSStringFromSelector(a2);
        objc_msgSend_raise_format_(v200, v204, @"ModelIOException", @"[%@ %@]: Could not create normals attribute", v209, v210, v211, v212, v205, v206, v207, v208, v202, v203);
      }
    }

    v146 = objc_msgSend_dataStart(v80, v134, v135, v136, v141, v142, v143, v144, v137, v138, v139, v140);
    v158 = objc_msgSend_stride(v80, v147, v148, v149, v154, v155, v156, v157, v150, v151, v152, v153);
    v170 = objc_msgSend_dataStart(v121, v159, v160, v161, v166, v167, v168, v169, v162, v163, v164, v165);
    v182 = objc_msgSend_stride(v121, v171, v172, v173, v178, v179, v180, v181, v174, v175, v176, v177);
    v183.n128_f32[0] = creaseThreshold;
    objc_msgSend__calculateFaceNormalsFromPositions_positionStride_normals_normalStride_creaseThreshold_(self, v184, v146, v158, v183, v187, v188, v189, v170, v182, v185, v186);
LABEL_34:
  }

LABEL_35:
}

- (void)addUnwrappedTextureCoordinatesForAttributeNamed:(NSString *)textureCoordinateAttributeName
{
  v11 = textureCoordinateAttributeName;
  if (!v11)
  {
    v16 = MEMORY[0x277CBEAD8];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v16, v20, @"ModelIOException", @"[%@ %@]: Must provide name", v25, v26, v27, v28, v21, v22, v23, v24, v18, v19);
  }

  v34 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v5, v11, v6, v12, v13, v14, v15, v7, v8, v9, v10);
  if (!v34)
  {
    objc_msgSend_addAttributeWithName_format_(self, v29, v11, 786434, v35, v36, v37, v38, v30, v31, v32, v33);
    v34 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v39, v11, v40, v45, v46, v47, v48, v41, v42, v43, v44);
    if (!v34)
    {
      v49 = MEMORY[0x277CBEAD8];
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      v52 = NSStringFromSelector(a2);
      objc_msgSend_raise_format_(v49, v53, @"ModelIOException", @"[%@ %@]: Texture coordinate data of format float2 not created", v58, v59, v60, v61, v54, v55, v56, v57, v51, v52);

      v34 = 0;
    }
  }

  v78 = 0u;
  memset(v77, 0, sizeof(v77));
  DWORD2(v78) = 1065353216;
  v80 = 0;
  v81 = 0;
  v79 = 0;
  *__p = 0u;
  v76 = 0u;
  sub_239EF9C80(v77, self, v11, __p);
  if ((__p[0] & 1) == 0)
  {
    v62 = MEMORY[0x277CBEAD8];
    v63 = objc_opt_class();
    v64 = NSStringFromClass(v63);
    v65 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v62, v66, @"ModelIOException", @"[%@ %@]: Texture coordinate data of format float2 not created", v71, v72, v73, v74, v67, v68, v69, v70, v64, v65);
  }

  if (SHIBYTE(v76) < 0)
  {
    operator delete(__p[1]);
  }

  sub_239F44540(v77);
}

- (void)flipTextureCoordinatesInAttributeNamed:(NSString *)textureCoordinateAttributeName
{
  v10 = textureCoordinateAttributeName;
  if (!v10)
  {
    v15 = MEMORY[0x277CBEAD8];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v15, v19, @"ModelIOException", @"[%@ %@]: Must provide name", v24, v25, v26, v27, v20, v21, v22, v23, v17, v18);
  }

  v35 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(self, v5, v10, 786434, v11, v12, v13, v14, v6, v7, v8, v9);
  if (!v35)
  {
    v40 = MEMORY[0x277CBEAD8];
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    v43 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v40, v44, @"ModelIOException", @"[%@ %@]: Texture coordinate data of format float2 not created", v49, v50, v51, v52, v45, v46, v47, v48, v42, v43);
  }

  v53 = objc_msgSend_dataStart(v35, v28, v29, v30, v36, v37, v38, v39, v31, v32, v33, v34);
  v65 = objc_msgSend_stride(v35, v54, v55, v56, v61, v62, v63, v64, v57, v58, v59, v60);
  __p = 0;
  v89 = 0;
  v90 = 0;
  sub_239E95D48(&__p, 2 * self->_vertexCount);
  if (self->_vertexCount)
  {
    v76 = 0;
    do
    {
      sub_239E798A4(&__p, v53);
      v87 = 1.0 - *(v53 + 4);
      sub_239E798A4(&__p, &v87);
      v53 += v65;
      ++v76;
    }

    while (v76 < self->_vertexCount);
  }

  v77 = objc_msgSend_vertexAttributeDataForAttributeNamed_(self, v66, v10, v67, v72, v73, v74, v75, v68, v69, v70, v71);
  objc_msgSend_copyDataVector_toAttr_(self, v78, &__p, v77, v83, v84, v85, v86, v79, v80, v81, v82);

  if (__p)
  {
    v89 = __p;
    operator delete(__p);
  }
}

- (id)description
{
  selfCopy = self;
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v16 = objc_msgSend_name(self, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  vertexCount = self->_vertexCount;
  v29 = objc_msgSend_count(self->_vertexBuffers, v18, v19, v20, v25, v26, v27, v28, v21, v22, v23, v24);
  v40 = objc_msgSend_initWithFormat_(v3, v30, @"<<%@: 0x%lx>, Name: %@, VertexCount: %d, VertexBufferCount: %d>", v31, v36, v37, v38, v39, v32, v33, v34, v35, v4, &selfCopy, v16, vertexCount, v29);

  return v40;
}

- (BOOL)makeVerticesUniqueAndReturnError:(NSError *)error
{
  v710 = *MEMORY[0x277D85DE8];
  v704 = 0;
  v705 = 0;
  v702 = 0;
  v703 = &v704;
  __p = 0;
  v701 = 0;
  v696 = 0u;
  v697 = 0u;
  v698 = 0u;
  v699 = 0u;
  v3 = self->_submeshes;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v696, v709, v8, v9, v10, v11, 16, v5, v6, v7);
  if (v19)
  {
    v24 = *v697;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v697 != v24)
        {
          objc_enumerationMutation(v3);
        }

        v26 = *(*(&v696 + 1) + 8 * i);
        v27 = objc_msgSend_indexCount(v26, v12, v13, v14, v20, v21, v22, v23, v15, v16, v17, v18);
        v39 = objc_msgSend_indexBuffer(v26, v28, v29, v30, v35, v36, v37, v38, v31, v32, v33, v34);
        v51 = objc_msgSend_map(v39, v40, v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);

        v63 = objc_msgSend_bytes(v51, v52, v53, v54, v59, v60, v61, v62, v55, v56, v57, v58);
        v75 = objc_msgSend_indexType(v26, v64, v65, v66, v71, v72, v73, v74, v67, v68, v69, v70);
        switch(v75)
        {
          case 8:
            sub_239F43188(&v703, &__p, v63, v27);
            break;
          case 16:
            sub_239F43280(&v703, &__p, v63, v27);
            break;
          case 32:
            sub_239F43378(&v703, &__p, v63, v27);
            break;
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v12, &v696, v709, v20, v21, v22, v23, 16, v16, v17, v18);
    }

    while (v19);
  }

  v694 = 0u;
  v695 = 0u;
  v692 = 0u;
  v693 = 0u;
  v76 = self->_submeshes;
  v85 = 0;
  v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v77, &v692, v708, v81, v82, v83, v84, 16, v78, v79, v80);
  if (v93)
  {
    v98 = *v693;
    do
    {
      for (j = 0; j != v93; ++j)
      {
        if (*v693 != v98)
        {
          objc_enumerationMutation(v76);
        }

        v85 += objc_msgSend_indexCount(*(*(&v692 + 1) + 8 * j), v86, v87, v88, v94, v95, v96, v97, v89, v90, v91, v92);
      }

      v93 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v86, &v692, v708, v94, v95, v96, v97, 16, v90, v91, v92);
    }

    while (v93);
  }

  if (v705 == v85)
  {
    v100 = 1;
  }

  else
  {
    v682 = objc_opt_new();
    v690 = 0u;
    v691 = 0u;
    v688 = 0u;
    v689 = 0u;
    obj = self->_vertexBuffers;
    v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v101, &v688, v707, v105, v106, v107, v108, 16, v102, v103, v104);
    if (v116)
    {
      v121 = *v689;
LABEL_25:
      v122 = 0;
      while (1)
      {
        if (*v689 != v121)
        {
          objc_enumerationMutation(obj);
        }

        v123 = *(*(&v688 + 1) + 8 * v122);
        v124 = objc_msgSend_null(MEMORY[0x277CBEB68], v109, v110, v111, v117, v118, v119, v120, v112, v113, v114, v115);
        isEqual = objc_msgSend_isEqual_(v123, v125, v124, v126, v131, v132, v133, v134, v127, v128, v129, v130);

        if (isEqual)
        {
          v147 = objc_msgSend_null(MEMORY[0x277CBEB68], v136, v137, v138, v143, v144, v145, v146, v139, v140, v141, v142);
          objc_msgSend_addObject_(v682, v148, v147, v149, v154, v155, v156, v157, v150, v151, v152, v153);
        }

        else
        {
          v158 = objc_msgSend_length(v123, v136, v137, v138, v143, v144, v145, v146, v139, v140, v141, v142);
          vertexCount = self->_vertexCount;
          v171 = objc_msgSend_allocator(v123, v160, v161, v162, v167, v168, v169, v170, v163, v164, v165, v166);
          v147 = objc_msgSend_newBuffer_type_(v171, v172, v158 / vertexCount * v85, 1, v177, v178, v179, v180, v173, v174, v175, v176);

          if (!v147)
          {
            if (!error)
            {
              goto LABEL_81;
            }

            v672 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v181, @"MDLErrorDomain", 0, v187, v188, v189, v190, &unk_284D23610, v184, v185, v186);
LABEL_77:
            *error = v672;
LABEL_81:

            v100 = 0;
            goto LABEL_82;
          }

          objc_msgSend_addObject_(v682, v181, v147, v182, v187, v188, v189, v190, v183, v184, v185, v186);
        }

        if (v116 == ++v122)
        {
          v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v109, &v688, v707, v117, v118, v119, v120, 16, v113, v114, v115);
          if (v116)
          {
            goto LABEL_25;
          }

          break;
        }
      }
    }

    v686 = 0u;
    v687 = 0u;
    v684 = 0u;
    v685 = 0u;
    v191 = 72;
    obj = objc_msgSend_attributes(self->_vertexDescriptor, v192, v193, v194, 0, v199, v200, v201, v195, v196, v197, v198);
    v675 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v202, &v684, v706, v206, v207, v208, v209, 16, v203, v204, v205);
    if (v675)
    {
      v676 = *v685;
LABEL_36:
      v677 = 0;
      while (1)
      {
        if (*v685 != v676)
        {
          objc_enumerationMutation(obj);
        }

        v221 = *(*(&v684 + 1) + 8 * v677);
        v222 = objc_msgSend_bufferIndex(v221, v210, v211, v212, v217, v218, v219, v220, v213, v214, v215, v216, v675);
        v234 = objc_msgSend_layouts(*(&self->super.super.isa + v191), v223, v224, v225, v230, v231, v232, v233, v226, v227, v228, v229);
        v246 = v222 < objc_msgSend_count(v234, v235, v236, v237, v242, v243, v244, v245, v238, v239, v240, v241);

        if (!v246)
        {
          break;
        }

        v258 = objc_msgSend_layouts(*(&self->super.super.isa + v191), v247, v248, v249, v254, v255, v256, v257, v250, v251, v252, v253);
        v269 = objc_msgSend_objectAtIndexedSubscript_(v258, v259, v222, v260, v265, v266, v267, v268, v261, v262, v263, v264);
        v281 = objc_msgSend_stride(v269, v270, v271, v272, v277, v278, v279, v280, v273, v274, v275, v276);

        v293 = objc_msgSend_offset(v221, v282, v283, v284, v289, v290, v291, v292, v285, v286, v287, v288);
        v305 = objc_msgSend_format(v221, v294, v295, v296, v301, v302, v303, v304, v297, v298, v299, v300);
        v306 = sub_239E6FF8C(v305);
        v317 = objc_msgSend_objectAtIndexedSubscript_(self->_vertexBuffers, v307, v222, v308, v313, v314, v315, v316, v309, v310, v311, v312);
        v678 = objc_msgSend_map(v317, v318, v319, v320, v325, v326, v327, v328, v321, v322, v323, v324);

        v339 = objc_msgSend_objectAtIndexedSubscript_(v682, v329, v222, v330, v335, v336, v337, v338, v331, v332, v333, v334);
        v351 = objc_msgSend_map(v339, v340, v341, v342, v347, v348, v349, v350, v343, v344, v345, v346);

        v362 = objc_msgSend_objectAtIndexedSubscript_(self->_vertexBuffers, v352, v222, v353, v358, v359, v360, v361, v354, v355, v356, v357);
        v374 = objc_msgSend_length(v362, v363, v364, v365, v370, v371, v372, v373, v366, v367, v368, v369);

        v385 = objc_msgSend_objectAtIndexedSubscript_(v682, v375, v222, v376, v381, v382, v383, v384, v377, v378, v379, v380);
        v397 = objc_msgSend_length(v385, v386, v387, v388, v393, v394, v395, v396, v389, v390, v391, v392);

        v409 = v374 - v293;
        if (v374 <= v293 || (v410 = v397 > v293, v411 = v397 - v293, !v410))
        {
          if (error)
          {
            v674 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v398, @"MDLErrorDomain", 0, v405, v406, v407, v408, &unk_284D23660, v402, v403, v404);
            goto LABEL_93;
          }

          goto LABEL_80;
        }

        v412 = objc_msgSend_bytes(v678, v398, v399, v400, v405, v406, v407, v408, v401, v402, v403, v404);
        v413 = v191;
        v425 = objc_msgSend_bytes(v351, v414, v415, v416, v421, v422, v423, v424, v417, v418, v419, v420);
        v434 = __p;
        if (v701 != __p)
        {
          if (v306 + (((v701 - __p) >> 2) - 1) * v281 > v411)
          {
            if (error)
            {
              v674 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v426, @"MDLErrorDomain", 0, v430, v431, v432, v433, &unk_284D23688, v427, v428, v429);
LABEL_93:
              *error = v674;
            }
          }

          else
          {
            v435 = 0;
            v436 = 0;
            v437 = v412 + v293;
            v438 = v425 + v293;
            while (1)
            {
              v439 = v434[v436] * v281;
              if (v306 + v439 > v409)
              {
                break;
              }

              memcpy((v438 + v435), (v437 + v439), v306);
              ++v436;
              v434 = __p;
              v435 += v281;
              if (v436 >= (v701 - __p) >> 2)
              {
                goto LABEL_48;
              }
            }

            if (error)
            {
              *error = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v426, @"MDLErrorDomain", 0, v430, v431, v432, v433, &unk_284D236B0, v427, v428, v429);
            }
          }

LABEL_80:

          goto LABEL_81;
        }

LABEL_48:

        v191 = v413;
        if (++v677 == v675)
        {
          v675 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v210, &v684, v706, v217, v218, v219, v220, 16, v214, v215, v216);
          if (v675)
          {
            goto LABEL_36;
          }

          goto LABEL_50;
        }
      }

      if (!error)
      {
        goto LABEL_81;
      }

      v672 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v247, @"MDLErrorDomain", 0, v254, v255, v256, v257, &unk_284D23638, v251, v252, v253);
      goto LABEL_77;
    }

LABEL_50:

    objc_storeStrong(&self->_vertexBuffers, v682);
    v451 = 0;
    v452 = 0;
    self->_vertexCount = v85;
    while (objc_msgSend_count(self->_submeshes, v440, v441, v442, v447, v448, v449, v450, v443, v444, v445, v446, v675) > v451)
    {
      v463 = objc_msgSend_objectAtIndexedSubscript_(self->_submeshes, v453, v451, v454, v459, v460, v461, v462, v455, v456, v457, v458);
      v475 = objc_msgSend_indexBuffer(v463, v464, v465, v466, v471, v472, v473, v474, v467, v468, v469, v470);
      obja = objc_msgSend_map(v475, v476, v477, v478, v483, v484, v485, v486, v479, v480, v481, v482);

      v498 = objc_msgSend_indexCount(v463, v487, v488, v489, v494, v495, v496, v497, v490, v491, v492, v493);
      if (objc_msgSend_indexType(v463, v499, v500, v501, v506, v507, v508, v509, v502, v503, v504, v505) == 8 && v498 > 0xFF || objc_msgSend_indexType(v463, v510, v511, v512, v517, v518, v519, v520, v513, v514, v515, v516) == 16 && v498 >= 0x10000)
      {
        if (v498 >= 0x10000)
        {
          v532 = 32;
        }

        else
        {
          v532 = 16;
        }

        v533 = [MDLMeshBufferData alloc];
        v543 = objc_msgSend_initWithType_length_(v533, v534, 2, (v532 >> 3) * v498, v539, v540, v541, v542, v535, v536, v537, v538);
        v544 = [MDLSubmesh alloc];
        v556 = objc_msgSend_indexCount(v463, v545, v546, v547, v552, v553, v554, v555, v548, v549, v550, v551);
        v568 = objc_msgSend_geometryType(v463, v557, v558, v559, v564, v565, v566, v567, v560, v561, v562, v563);
        v580 = objc_msgSend_material(v463, v569, v570, v571, v576, v577, v578, v579, v572, v573, v574, v575);
        v587 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v544, v581, v543, v556, v583, v584, v585, v586, v532, v568, v580, v582);

        v598 = objc_msgSend_objectAtIndexedSubscript_(self->_submeshes, v588, v451, v589, v594, v595, v596, v597, v590, v591, v592, v593);
        v610 = objc_msgSend_name(v598, v599, v600, v601, v606, v607, v608, v609, v602, v603, v604, v605);
        objc_msgSend_setName_(v587, v611, v610, v612, v617, v618, v619, v620, v613, v614, v615, v616);

        objc_msgSend_setObject_atIndexedSubscript_(self->_submeshes, v621, v587, v451, v626, v627, v628, v629, v622, v623, v624, v625);
        v641 = objc_msgSend_indexBuffer(v587, v630, v631, v632, v637, v638, v639, v640, v633, v634, v635, v636);
        v653 = objc_msgSend_map(v641, v642, v643, v644, v649, v650, v651, v652, v645, v646, v647, v648);

        v463 = v587;
        obja = v653;
      }

      v654 = objc_msgSend_indexType(v463, v521, v522, v523, v528, v529, v530, v531, v524, v525, v526, v527);
      switch(v654)
      {
        case 32:
          v670 = objc_msgSend_bytes(obja, v655, v656, v657, v662, v663, v664, v665, v658, v659, v660, v661);
          if (v498)
          {
            v671 = v498;
            do
            {
              *v670++ = v452++;
              --v671;
            }

            while (v671);
          }

          break;
        case 16:
          v668 = objc_msgSend_bytes(obja, v655, v656, v657, v662, v663, v664, v665, v658, v659, v660, v661);
          if (v498)
          {
            v669 = v498;
            do
            {
              *v668++ = v452++;
              --v669;
            }

            while (v669);
          }

          break;
        case 8:
          v666 = objc_msgSend_bytes(obja, v655, v656, v657, v662, v663, v664, v665, v658, v659, v660, v661);
          if (v498)
          {
            v667 = v498;
            do
            {
              *v666++ = v452++;
              --v667;
            }

            while (v667);
          }

          break;
      }

      ++v451;
    }

    v100 = 1;
LABEL_82:
  }

  if (__p)
  {
    v701 = __p;
    operator delete(__p);
  }

  sub_239E79AAC(&v703, v704);
  return v100;
}

- (void)_enumerateSubmeshesUsingBlock:(id)block stopPointer:(BOOL *)pointer
{
  v32 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = self->_submeshes;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v27, v31, v12, v13, v14, v15, 16, v9, v10, v11);
  if (v16)
  {
    v17 = *v28;
LABEL_3:
    v18 = 0;
    while (1)
    {
      if (*v28 != v17)
      {
        objc_enumerationMutation(v7);
      }

      blockCopy[2](blockCopy, *(*(&v27 + 1) + 8 * v18), pointer);
      if (*pointer)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v19, &v27, v31, v23, v24, v25, v26, 16, v20, v21, v22);
        if (v16)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (__n128)inverseBasePoseForIndex:(uint64_t)index
{
  v12 = *(index + 112);
  if (v12)
  {
    objc_msgSend_count(v12, v1, v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  }

  return *MEMORY[0x277D860B8];
}

- (BOOL)generateAmbientOcclusionTextureWithSize:(vector_int2)textureSize raysPerSample:(NSInteger)raysPerSample attenuationFactor:(float)attenuationFactor objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName materialPropertyNamed:(NSString *)materialPropertyName
{
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  DWORD2(v13) = 1065353216;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  *__p = 0u;
  v11 = 0u;
  sub_239EF8B70(v12, objectsToConsider, self, vertexAttributeName, materialPropertyName, textureSize.i32[0], __p);
  v8 = __p[0];
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[1]);
  }

  sub_239F44540(v12);
  return v8;
}

- (BOOL)generateAmbientOcclusionTextureWithQuality:(float)bakeQuality attenuationFactor:(float)attenuationFactor objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName materialPropertyNamed:(NSString *)materialPropertyName
{
  v9 = bakeQuality;
  v7.n128_f64[0] = v9 * 5.0;
  v10 = (&unk_239F9E788 + 4 * (v9 * 5.0));
  v11 = dword_239F9E7A0[vcvtd_n_s64_f64(v9, 3uLL)];
  v12.n128_u64[0] = vld1_dup_f32(v10);
  return (MEMORY[0x2821F9670])(self, sel_generateAmbientOcclusionTextureWithSize_raysPerSample_attenuationFactor_objectsToConsider_vertexAttributeNamed_materialPropertyNamed_, v11, objectsToConsider, v12, *&attenuationFactor, v7);
}

- (BOOL)generateAmbientOcclusionVertexColorsWithRaysPerSample:(NSInteger)raysPerSample attenuationFactor:(float)attenuationFactor objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName
{
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  DWORD2(v11) = 1065353216;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  *__p = 0u;
  v9 = 0u;
  sub_239EF9F64(objectsToConsider, self, vertexAttributeName, __p);
  v6 = __p[0];
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[1]);
  }

  sub_239F44540(v10);
  return v6;
}

- (BOOL)generateAmbientOcclusionVertexColorsWithQuality:(float)bakeQuality attenuationFactor:(float)attenuationFactor objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName
{
  v7.n128_f64[0] = bakeQuality;
  v8 = dword_239F9E7A0[vcvtd_n_s64_f64(v7.n128_f64[0], 3uLL)];
  v7.n128_f32[0] = attenuationFactor;
  return (MEMORY[0x2821F9670])(self, sel_generateAmbientOcclusionVertexColorsWithRaysPerSample_attenuationFactor_objectsToConsider_vertexAttributeNamed_, v8, objectsToConsider, v7, *&attenuationFactor);
}

- (BOOL)generateLightMapTextureWithTextureSize:(vector_int2)textureSize lightsToConsider:(NSArray *)lightsToConsider objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName materialPropertyNamed:(NSString *)materialPropertyName
{
  v16 = textureSize.i32[0];
  v11 = objectsToConsider;
  v12 = vertexAttributeName;
  v13 = materialPropertyName;
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  DWORD2(v20) = 1065353216;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  sub_239EFAAA4(v19, lightsToConsider);
  *__p = 0u;
  v18 = 0u;
  sub_239EF8B70(v19, v11, self, v12, v13, v16, __p);
  v14 = __p[0];
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[1]);
  }

  sub_239F44540(v19);

  return v14;
}

- (BOOL)generateLightMapTextureWithQuality:(float)bakeQuality lightsToConsider:(NSArray *)lightsToConsider objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName materialPropertyNamed:(NSString *)materialPropertyName
{
  v7.n128_u64[0] = 5.0;
  v8 = (&unk_239F9E788 + 4 * (bakeQuality * 5.0));
  v9.n128_u64[0] = vld1_dup_f32(v8);
  return (MEMORY[0x2821F9670])(self, sel_generateLightMapTextureWithTextureSize_lightsToConsider_objectsToConsider_vertexAttributeNamed_materialPropertyNamed_, lightsToConsider, objectsToConsider, v9, v7);
}

- (BOOL)generateLightMapVertexColorsWithLightsToConsider:(NSArray *)lightsToConsider objectsToConsider:(NSArray *)objectsToConsider vertexAttributeNamed:(NSString *)vertexAttributeName
{
  v8 = objectsToConsider;
  v9 = vertexAttributeName;
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  DWORD2(v15) = 1065353216;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  sub_239EFAAA4(v14, lightsToConsider);
  *__p = 0u;
  v13 = 0u;
  sub_239EF9F64(v8, self, v9, __p);
  v10 = __p[0];
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }

  sub_239F44540(v14);

  return v10;
}

- (MDLMesh)initCylinderWithExtent:(vector_float3)extent segments:(vector_uint2)segments inwardNormals:(BOOL)inwardNormals topCap:(BOOL)topCap bottomCap:(BOOL)bottomCap geometryType:(MDLGeometryType)geometryType allocator:(id)allocator
{
  v10 = topCap;
  v947 = extent.i32[2];
  v948 = inwardNormals;
  v11 = extent.i32[0];
  v12 = v9;
  v952 = *segments.i8;
  v21 = bottomCap;
  v954 = v10;
  if ((v10 - 1) >= 2)
  {
    v26 = MEMORY[0x277CBEAD8];
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v26, v30, @"ModelIOException", @"[%@ %@]: geometryType for Cylinder must be MDLGeometryTypeTriangles or MDLGeometryTypeLines", v35, v36, v37, v38, v31, v32, v33, v34, v28, v29);
  }

  v39 = objc_msgSend_initWithBufferAllocator_(self, v15, v21, v16, v22, v23, v24, v25, v17, v18, v19, v20);
  if (v39)
  {
    v943 = v39;
    v51 = objc_msgSend_allocator(v39, v40, v41, v42, v47, v48, v49, v50, v43, v44, v45, v46);

    objc_msgSend_setName_(v943, v52, @"cylinder", v53, v58, v59, v60, v61, v54, v55, v56, v57);
    v942 = v51;
    context = objc_autoreleasePoolPush();
    v961 = vmax_u32(v12, 0x100000003);
    v62 = vadd_s32(v961, 0x100000001);
    v63 = v62.u32[0];
    LODWORD(v51) = v62.i32[0] * v62.i32[1];
    v974 = 0;
    v975 = 0;
    v976 = 0;
    sub_239E95D48(&v974, 3 * (v62.i32[0] * v62.i32[1] + 2));
    v939 = v51;
    v971 = 0;
    v972 = 0;
    v973 = 0;
    sub_239E95D48(&v971, 3 * (v51 + 2));
    v941 = v51 + 2;
    v968 = 0;
    v969 = 0;
    v970 = 0;
    sub_239E95D48(&v968, 2 * (v51 + 2));
    v64 = 0;
    v951 = v961.u32[1];
    v65 = v952;
    v66 = 6.28318531 / v961.u32[0];
    v67 = vmuls_lane_f32(0.5, *v952.f32, 1);
    if (v11)
    {
      v65.f32[0] = -1.0;
    }

    else
    {
      v65.f32[0] = 1.0;
    }

    v955 = v65;
    v944 = ~v961.i32[0];
    if (v11)
    {
      v68 = 1.0;
    }

    else
    {
      v68 = -1.0;
    }

    v949 = 1.0 / v961.u32[1];
    v950 = v67;
    v69 = 1.0 / v961.u32[0];
    v960 = v961.i32[0];
    v945 = ~(3 * v961.i32[0]);
    v946 = -2 * v961.i32[0];
    do
    {
      v70 = 0;
      do
      {
        v71 = (v70 * v66) + 1.57079633;
        v72 = __sincosf_stret(v71);
        *&__p = v72.__cosval * v952.f32[0];
        sub_239E798A4(&v974, &__p);
        *&__p = -(v950 - ((v952.f32[1] * v64) * v949));
        sub_239E798A4(&v974, &__p);
        *&__p = v72.__sinval * v952.f32[2];
        sub_239E798A4(&v974, &__p);
        v73.i64[0] = COERCE_UNSIGNED_INT(v72.__cosval * v952.f32[0]);
        v73.i64[1] = COERCE_UNSIGNED_INT(v72.__sinval * v952.f32[2]);
        v74 = vmulq_f32(v73, v73);
        *&v75 = vaddv_f32(*v74.f32) + v74.f32[2];
        *v74.f32 = vrsqrte_f32(v75);
        *v74.f32 = vmul_f32(vrsqrts_f32(v75, vmul_f32(*v74.f32, *v74.f32)), *v74.f32);
        *v74.f32 = vmul_f32(*v74.f32, vrsqrts_f32(v75, vmul_f32(*v74.f32, *v74.f32)));
        v962 = vmulq_n_f32(v73, vmulq_f32(v74, v955).f32[0]);
        LODWORD(__p) = v962.i32[0];
        sub_239E798A4(&v971, &__p);
        LODWORD(__p) = v962.i32[1];
        sub_239E798A4(&v971, &__p);
        LODWORD(__p) = v962.i32[2];
        sub_239E798A4(&v971, &__p);
        *&__p = v70 * v69;
        sub_239E798A4(&v968, &__p);
        *&__p = ((v64 * -0.33333) * v949) + 0.66667;
        sub_239E798A4(&v968, &__p);
        ++v70;
      }

      while (v70 <= v960);
      if (!v64 && v948)
      {
        v87 = 0;
        v88 = (v975 - v974) / 3uLL;
        v89 = v946 + 2 * v88;
        v90 = v945 + 3 * v88;
        do
        {
          sub_239E798A4(&v974, &v974[v90 - 2]);
          sub_239E798A4(&v974, &v974[v90 - 1]);
          sub_239E798A4(&v974, &v974[v90]);
          sub_239E798A4(&v968, &v968[v89 - 2]);
          sub_239E798A4(&v968, &v968[v89 - 1]);
          v91 = (v87 * v66) + -1.57079633;
          v92 = __sincosf_stret(v91);
          v93 = v968;
          *&v968[v89 - 2] = (v92.__cosval * 0.5) + 0.5;
          *&v93[v89 - 1] = (v92.__sinval * -0.16667) + 0.83333;
          sub_239E798A4(&v971, &v971[v90 - 2]);
          sub_239E798A4(&v971, &v971[v90 - 1]);
          sub_239E798A4(&v971, &v971[v90]);
          v94 = v971;
          v971[v90 - 2] = 0;
          *&v94[v90 - 1] = v68;
          v94[v90] = 0;
          ++v87;
          v89 += 2;
          v90 += 3;
        }

        while (v63 != v87);
      }

      if (v64 == v951 && v947)
      {
        v95 = 0;
        v96 = 0x300000000 * (((v975 - v974) / 3uLL) + v944);
        do
        {
          sub_239E798A4(&v974, (v974 + (v96 >> 30)));
          sub_239E798A4(&v974, &v974[(v96 >> 32) + 1]);
          sub_239E798A4(&v974, &v974[(v96 >> 32) + 2]);
          v97 = (v95 * v66) + -1.57079633;
          *&__p = (cosf(v97) * 0.5) + 0.5;
          sub_239E798A4(&v968, &__p);
          *&__p = (sinf(v97) * 0.16667) + 0.16667;
          sub_239E798A4(&v968, &__p);
          LODWORD(__p) = 0;
          sub_239E798A4(&v971, &__p);
          LODWORD(__p) = v955.i32[0];
          sub_239E798A4(&v971, &__p);
          LODWORD(__p) = 0;
          sub_239E798A4(&v971, &__p);
          ++v95;
          v96 += 0x300000000;
        }

        while (v63 != v95);
      }

      ++v64;
    }

    while (v64 <= v951);
    if (v948)
    {
      LODWORD(__p) = 0;
      sub_239E798A4(&v974, &__p);
      *&__p = v952.f32[1] * -0.5;
      sub_239E798A4(&v974, &__p);
      LODWORD(__p) = 0;
      sub_239E798A4(&v974, &__p);
      LODWORD(__p) = 1056964608;
      sub_239E798A4(&v968, &__p);
      LODWORD(__p) = 1062557013;
      sub_239E798A4(&v968, &__p);
      LODWORD(__p) = 0;
      sub_239E798A4(&v971, &__p);
      *&__p = v68;
      sub_239E798A4(&v971, &__p);
      LODWORD(__p) = 0;
      sub_239E798A4(&v971, &__p);
    }

    if (v947)
    {
      LODWORD(__p) = 0;
      sub_239E798A4(&v974, &__p);
      *&__p = v950;
      sub_239E798A4(&v974, &__p);
      LODWORD(__p) = 0;
      sub_239E798A4(&v974, &__p);
      LODWORD(__p) = 1056964608;
      sub_239E798A4(&v968, &__p);
      LODWORD(__p) = 1042983595;
      sub_239E798A4(&v968, &__p);
      LODWORD(__p) = 0;
      sub_239E798A4(&v971, &__p);
      LODWORD(__p) = v955.i32[0];
      sub_239E798A4(&v971, &__p);
      LODWORD(__p) = 0;
      sub_239E798A4(&v971, &__p);
    }

    v98 = MEMORY[0x277CCACA8];
    v99 = objc_msgSend_name(v943, v76, v77, v78, v83, v84, v85, v86, v79, v80, v81, v82);
    v110 = objc_msgSend_stringWithFormat_(v98, v100, @"%@-%@", v101, v106, v107, v108, v109, v102, v103, v104, v105, v99, @"position");
    v111 = objc_alloc(MEMORY[0x277CBEA90]);
    v120 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v111, v112, v974, v975 - v974, v116, v117, v118, v119, 0, v113, v114, v115);
    objc_msgSend_addAttributeWithName_format_type_data_stride_(v943, v121, v110, 786435, v123, v124, v125, v126, @"position", v120, 12, v122);

    v127 = MEMORY[0x277CCACA8];
    v139 = objc_msgSend_name(v943, v128, v129, v130, v135, v136, v137, v138, v131, v132, v133, v134);
    v150 = objc_msgSend_stringWithFormat_(v127, v140, @"%@-%@", v141, v146, v147, v148, v149, v142, v143, v144, v145, v139, @"normal");
    v151 = objc_alloc(MEMORY[0x277CBEA90]);
    v160 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v151, v152, v971, v972 - v971, v156, v157, v158, v159, 0, v153, v154, v155);
    objc_msgSend_addAttributeWithName_format_type_data_stride_(v943, v161, v150, 786435, v163, v164, v165, v166, @"normal", v160, 12, v162);

    v167 = MEMORY[0x277CCACA8];
    v179 = objc_msgSend_name(v943, v168, v169, v170, v175, v176, v177, v178, v171, v172, v173, v174);
    v190 = objc_msgSend_stringWithFormat_(v167, v180, @"%@-%@", v181, v186, v187, v188, v189, v182, v183, v184, v185, v179, @"textureCoordinate");
    v191 = objc_alloc(MEMORY[0x277CBEA90]);
    v200 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v191, v192, v968, v969 - v968, v196, v197, v198, v199, 0, v193, v194, v195);
    objc_msgSend_addAttributeWithName_format_type_data_stride_(v943, v201, v190, 786434, v203, v204, v205, v206, @"textureCoordinate", v200, 8, v202);

    if (v948)
    {
      v207 = v63;
    }

    else
    {
      v207 = 0;
    }

    v208 = (v975 - v974) / 3uLL;
    v209 = v208 - 2;
    v210 = v63 * (v951 + 3);
    v953 = v208 - 1;
    if (v941 > 0xFFFE)
    {
      __p = 0;
      v966 = 0;
      v967 = 0;
      sub_239E95D48(&__p, v210);
      if (v948)
      {
        v371 = 0;
        do
        {
          v372 = v371 + 1;
          v980[0] = v209;
          if (v954 != 2)
          {
            sub_239E73254(&__p, v980);
            v980[0] = v371;
          }

          sub_239E73254(&__p, v980);
          v980[0] = v371;
          sub_239E73254(&__p, v980);
          v980[0] = (v371 + 1) % v63;
          sub_239E73254(&__p, v980);
          ++v371;
        }

        while (v372 <= v960);
      }

      v373 = 0;
      v374 = v63 + v207;
      v375 = v207;
      do
      {
        v376 = 0;
        v377 = v373 * v63;
        v964 = v373 + 1;
        v378 = (v373 + 1) * v63;
        v957 = v375;
        v959 = v374;
        do
        {
          v379 = ++v376 % v63 + v207;
          v979 = v379 + v377;
          v980[0] = v375;
          v977 = v379 + v378;
          v978 = v374;
          sub_239E73254(&__p, v980);
          if (v954 == 2)
          {
            v380 = &v977;
            v381 = v980;
            v382 = &v979;
            v383 = &v978;
          }

          else
          {
            sub_239E73254(&__p, &v979);
            sub_239E73254(&__p, &v979);
            v380 = v980;
            v382 = &v978;
            v383 = &v977;
            v381 = &v978;
          }

          sub_239E73254(&__p, v383);
          sub_239E73254(&__p, &v977);
          sub_239E73254(&__p, v382);
          sub_239E73254(&__p, v381);
          sub_239E73254(&__p, v380);
          ++v374;
          ++v375;
        }

        while (v376 <= v960);
        v374 = v959 + v63;
        v375 = v957 + v63;
        v373 = v964;
      }

      while (v964 != v951);
      if (v947)
      {
        v395 = 0;
        v396 = v939 + v207;
        v397 = v939 + v207;
        do
        {
          v398 = ++v395 % v63;
          v980[0] = v953;
          sub_239E73254(&__p, v980);
          if (v954 == 2)
          {
            v980[0] = v398 + v396;
            sub_239E73254(&__p, v980);
            v980[0] = v397;
          }

          else
          {
            v980[0] = v397;
            sub_239E73254(&__p, v980);
            v980[0] = v397;
            sub_239E73254(&__p, v980);
            v980[0] = v398 + v396;
          }

          sub_239E73254(&__p, v980);
          ++v397;
        }

        while (v395 <= v960);
      }

      v239 = objc_msgSend_name(v943, v384, v385, v386, v391, v392, v393, v394, v387, v388, v389, v390);
      v399 = v942;
      if (!v399)
      {
        v399 = objc_alloc_init(MDLMeshBufferDataAllocator);
      }

      v241 = v399;
      v400 = objc_alloc(MEMORY[0x277CBEA90]);
      v251 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v400, v401, __p, v966 - __p, v405, v406, v407, v408, 0, v402, v403, v404);
      v261 = objc_msgSend_newBufferWithData_type_(v241, v409, v251, 2, v414, v415, v416, v417, v410, v411, v412, v413);
      if (objc_msgSend_conformsToProtocol_(v261, v418, &unk_284D24D98, v419, v424, v425, v426, v427, v420, v421, v422, v423))
      {
        v428 = v261;
        v439 = objc_msgSend_stringByAppendingString_(v239, v429, @"-Indices", v430, v435, v436, v437, v438, v431, v432, v433, v434);
        objc_msgSend_setName_(v428, v440, v439, v441, v446, v447, v448, v449, v442, v443, v444, v445);
      }

      v450 = [MDLMaterial alloc];
      v451 = objc_opt_new();
      v305 = objc_msgSend_initWithName_scatteringFunction_(v450, v452, @"material", v451, v457, v458, v459, v460, v453, v454, v455, v456);

      v471 = objc_msgSend_propertyWithSemantic_(v305, v461, 2, v462, v467, v468, v469, v470, v463, v464, v465, v466);
      v472.n128_u32[0] = 1063675494;
      objc_msgSend_setFloatValue_(v471, v473, v474, v475, v472, v480, v481, v482, v476, v477, v478, v479);
      v493 = objc_msgSend_propertyWithSemantic_(v305, v483, 6, v484, v489, v490, v491, v492, v485, v486, v487, v488);

      v494.n128_u32[0] = 1058642330;
      objc_msgSend_setFloatValue_(v493, v495, v496, v497, v494, v502, v503, v504, v498, v499, v500, v501);
      v515 = objc_msgSend_propertyWithSemantic_(v305, v505, 0, v506, v511, v512, v513, v514, v507, v508, v509, v510);

      v516 = [MDLSubmesh alloc];
      v368 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v516, v517, v261, (v966 - __p) >> 2, v519, v520, v521, v522, 32, v954, v305, v518);
    }

    else
    {
      __p = 0;
      v966 = 0;
      v967 = 0;
      sub_239EA0FEC(&__p, v210);
      if (v948)
      {
        v211 = 0;
        do
        {
          v212 = v211 + 1;
          LOWORD(v980[0]) = v209;
          if (v954 != 2)
          {
            sub_239EA1088(&__p, v980);
            LOWORD(v980[0]) = v211;
          }

          sub_239EA1088(&__p, v980);
          LOWORD(v980[0]) = v211;
          sub_239EA1088(&__p, v980);
          LOWORD(v980[0]) = (v211 + 1) % v63;
          sub_239EA1088(&__p, v980);
          ++v211;
        }

        while (v212 <= v960);
      }

      v213 = 0;
      v214 = v63 + v207;
      v215 = v207;
      do
      {
        v216 = 0;
        v217 = v213 * v63;
        v963 = v213 + 1;
        v218 = (v213 + 1) * v63;
        v956 = v215;
        v958 = v214;
        do
        {
          ++v216;
          LOWORD(v980[0]) = v215;
          v219 = v216 % v63 + v207;
          LOWORD(v979) = v219 + v217;
          LOWORD(v978) = v214;
          LOWORD(v977) = v219 + v218;
          sub_239EA1088(&__p, v980);
          if (v954 == 2)
          {
            v220 = &v977;
            v221 = v980;
            v222 = &v979;
            v223 = &v978;
          }

          else
          {
            sub_239EA1088(&__p, &v979);
            sub_239EA1088(&__p, &v979);
            v220 = v980;
            v222 = &v978;
            v223 = &v977;
            v221 = &v978;
          }

          sub_239EA1088(&__p, v223);
          sub_239EA1088(&__p, &v977);
          sub_239EA1088(&__p, v222);
          sub_239EA1088(&__p, v221);
          sub_239EA1088(&__p, v220);
          LOWORD(v214) = v214 + 1;
          LOWORD(v215) = v215 + 1;
        }

        while (v216 <= v960);
        v214 = v958 + v63;
        v215 = v956 + v63;
        v213 = v963;
      }

      while (v963 != v951);
      if (v947)
      {
        v235 = 0;
        v236 = v939 + v207;
        v237 = v939 + v207;
        do
        {
          v238 = ++v235 % v63;
          LOWORD(v980[0]) = v953;
          sub_239EA1088(&__p, v980);
          if (v954 == 2)
          {
            LOWORD(v980[0]) = v238 + v236;
            sub_239EA1088(&__p, v980);
            LOWORD(v980[0]) = v237;
          }

          else
          {
            LOWORD(v980[0]) = v237;
            sub_239EA1088(&__p, v980);
            LOWORD(v980[0]) = v237;
            sub_239EA1088(&__p, v980);
            LOWORD(v980[0]) = v238 + v236;
          }

          sub_239EA1088(&__p, v980);
          ++v237;
        }

        while (v235 <= v960);
      }

      v239 = objc_msgSend_name(v943, v224, v225, v226, v231, v232, v233, v234, v227, v228, v229, v230);
      v240 = v942;
      if (!v240)
      {
        v240 = objc_alloc_init(MDLMeshBufferDataAllocator);
      }

      v241 = v240;
      v242 = objc_alloc(MEMORY[0x277CBEA90]);
      v251 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v242, v243, __p, v966 - __p, v247, v248, v249, v250, 0, v244, v245, v246);
      v261 = objc_msgSend_newBufferWithData_type_(v241, v252, v251, 2, v257, v258, v259, v260, v253, v254, v255, v256);
      if (objc_msgSend_conformsToProtocol_(v261, v262, &unk_284D24D98, v263, v268, v269, v270, v271, v264, v265, v266, v267))
      {
        v272 = v261;
        v283 = objc_msgSend_stringByAppendingString_(v239, v273, @"-Indices", v274, v279, v280, v281, v282, v275, v276, v277, v278);
        objc_msgSend_setName_(v272, v284, v283, v285, v290, v291, v292, v293, v286, v287, v288, v289);
      }

      v294 = [MDLMaterial alloc];
      v295 = objc_opt_new();
      v305 = objc_msgSend_initWithName_scatteringFunction_(v294, v296, @"material", v295, v301, v302, v303, v304, v297, v298, v299, v300);

      v316 = objc_msgSend_propertyWithSemantic_(v305, v306, 2, v307, v312, v313, v314, v315, v308, v309, v310, v311);
      v317.n128_u32[0] = 1063675494;
      objc_msgSend_setFloatValue_(v316, v318, v319, v320, v317, v325, v326, v327, v321, v322, v323, v324);
      v338 = objc_msgSend_propertyWithSemantic_(v305, v328, 6, v329, v334, v335, v336, v337, v330, v331, v332, v333);

      v339.n128_u32[0] = 1058642330;
      objc_msgSend_setFloatValue_(v338, v340, v341, v342, v339, v347, v348, v349, v343, v344, v345, v346);
      v360 = objc_msgSend_propertyWithSemantic_(v305, v350, 0, v351, v356, v357, v358, v359, v352, v353, v354, v355);

      v361 = [MDLSubmesh alloc];
      v368 = objc_msgSend_initWithIndexBuffer_indexCount_indexType_geometryType_material_(v361, v362, v261, (v966 - __p) >> 1, v364, v365, v366, v367, 16, v954, v305, v363);
    }

    if (__p)
    {
      v966 = __p;
      operator delete(__p);
    }

    objc_msgSend_setVertexCount_(v943, v523, (v975 - v974) / 3uLL, v524, v529, v530, v531, v532, v525, v526, v527, v528);
    v533 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_setSubmeshes_(v943, v534, v533, v535, v540, v541, v542, v543, v536, v537, v538, v539);

    v555 = objc_msgSend_submeshes(v943, v544, v545, v546, v551, v552, v553, v554, v547, v548, v549, v550);
    objc_msgSend_addObject_(v555, v556, v368, v557, v562, v563, v564, v565, v558, v559, v560, v561);

    v566 = objc_alloc_init(MDLVertexDescriptor);
    v578 = objc_msgSend_attributes(v566, v567, v568, v569, v574, v575, v576, v577, v570, v571, v572, v573);
    v589 = objc_msgSend_objectAtIndexedSubscript_(v578, v579, 0, v580, v585, v586, v587, v588, v581, v582, v583, v584);
    objc_msgSend_setName_(v589, v590, @"position", v591, v596, v597, v598, v599, v592, v593, v594, v595);

    v611 = objc_msgSend_attributes(v566, v600, v601, v602, v607, v608, v609, v610, v603, v604, v605, v606);
    v622 = objc_msgSend_objectAtIndexedSubscript_(v611, v612, 0, v613, v618, v619, v620, v621, v614, v615, v616, v617);
    objc_msgSend_setFormat_(v622, v623, 786435, v624, v629, v630, v631, v632, v625, v626, v627, v628);

    v644 = objc_msgSend_attributes(v566, v633, v634, v635, v640, v641, v642, v643, v636, v637, v638, v639);
    v655 = objc_msgSend_objectAtIndexedSubscript_(v644, v645, 0, v646, v651, v652, v653, v654, v647, v648, v649, v650);
    objc_msgSend_setBufferIndex_(v655, v656, 0, v657, v662, v663, v664, v665, v658, v659, v660, v661);

    v677 = objc_msgSend_attributes(v566, v666, v667, v668, v673, v674, v675, v676, v669, v670, v671, v672);
    v688 = objc_msgSend_objectAtIndexedSubscript_(v677, v678, 1, v679, v684, v685, v686, v687, v680, v681, v682, v683);
    objc_msgSend_setName_(v688, v689, @"normal", v690, v695, v696, v697, v698, v691, v692, v693, v694);

    v710 = objc_msgSend_attributes(v566, v699, v700, v701, v706, v707, v708, v709, v702, v703, v704, v705);
    v721 = objc_msgSend_objectAtIndexedSubscript_(v710, v711, 1, v712, v717, v718, v719, v720, v713, v714, v715, v716);
    objc_msgSend_setFormat_(v721, v722, 786435, v723, v728, v729, v730, v731, v724, v725, v726, v727);

    v743 = objc_msgSend_attributes(v566, v732, v733, v734, v739, v740, v741, v742, v735, v736, v737, v738);
    v754 = objc_msgSend_objectAtIndexedSubscript_(v743, v744, 1, v745, v750, v751, v752, v753, v746, v747, v748, v749);
    objc_msgSend_setBufferIndex_(v754, v755, 0, v756, v761, v762, v763, v764, v757, v758, v759, v760);

    v776 = objc_msgSend_attributes(v566, v765, v766, v767, v772, v773, v774, v775, v768, v769, v770, v771);
    v787 = objc_msgSend_objectAtIndexedSubscript_(v776, v777, 2, v778, v783, v784, v785, v786, v779, v780, v781, v782);
    objc_msgSend_setName_(v787, v788, @"textureCoordinate", v789, v794, v795, v796, v797, v790, v791, v792, v793);

    v809 = objc_msgSend_attributes(v566, v798, v799, v800, v805, v806, v807, v808, v801, v802, v803, v804);
    v820 = objc_msgSend_objectAtIndexedSubscript_(v809, v810, 2, v811, v816, v817, v818, v819, v812, v813, v814, v815);
    objc_msgSend_setFormat_(v820, v821, 786434, v822, v827, v828, v829, v830, v823, v824, v825, v826);

    v842 = objc_msgSend_attributes(v566, v831, v832, v833, v838, v839, v840, v841, v834, v835, v836, v837);
    v853 = objc_msgSend_objectAtIndexedSubscript_(v842, v843, 2, v844, v849, v850, v851, v852, v845, v846, v847, v848);
    objc_msgSend_setBufferIndex_(v853, v854, 0, v855, v860, v861, v862, v863, v856, v857, v858, v859);

    objc_msgSend_setPackedOffsets(v566, v864, v865, v866, v871, v872, v873, v874, v867, v868, v869, v870);
    objc_msgSend_setPackedStrides(v566, v875, v876, v877, v882, v883, v884, v885, v878, v879, v880, v881);
    v886 = [MDLAsset alloc];
    v898 = objc_msgSend_vertexDescriptor(v943, v887, v888, v889, v894, v895, v896, v897, v890, v891, v892, v893);
    v907 = objc_msgSend_initWithURL_vertexDescriptor_bufferAllocator_(v886, v899, 0, v898, v903, v904, v905, v906, v942, v900, v901, v902);

    objc_msgSend_addObject_(v907, v908, v943, v909, v914, v915, v916, v917, v910, v911, v912, v913);
    objc_msgSend__conformVertexBuffers_error_(v907, v918, v566, 0, v923, v924, v925, v926, v919, v920, v921, v922);
    objc_msgSend_removeObject_(v907, v927, v943, v928, v933, v934, v935, v936, v929, v930, v931, v932);

    if (v968)
    {
      v969 = v968;
      operator delete(v968);
    }

    if (v971)
    {
      v972 = v971;
      operator delete(v971);
    }

    if (v974)
    {
      v975 = v974;
      operator delete(v974);
    }

    v369 = v942;
    objc_autoreleasePoolPop(context);
    v370 = v943;
    v937 = v943;
  }

  else
  {
    v369 = v21;
    v370 = 0;
  }

  return v370;
}

+ (MDLMesh)newCylinderWithHeight:(float)height radii:(vector_float2)radii radialSegments:(NSUInteger)radialSegments verticalSegments:(NSUInteger)verticalSegments geometryType:(MDLGeometryType)geometryType inwardNormals:(BOOL)inwardNormals allocator:(id)allocator
{
  v9 = inwardNormals;
  v11 = verticalSegments;
  v12 = radialSegments;
  v22 = *&height;
  v23 = *radii.f32;
  v13 = allocator;
  v14 = [MDLMesh alloc];
  v15.n128_u64[1] = v23.n128_u64[1];
  v16 = v23;
  v16.n128_u32[1] = v22.n128_u32[0];
  v16.n128_u32[2] = v23.n128_u32[1];
  v15.n128_u64[0] = __PAIR64__(v11, v12);
  inited = objc_msgSend_initCylinderWithExtent_segments_inwardNormals_topCap_bottomCap_geometryType_allocator_(v14, v17, v9, 1, v16, v15, v22, v19, 1, geometryType, v13, v18);

  return inited;
}

@end