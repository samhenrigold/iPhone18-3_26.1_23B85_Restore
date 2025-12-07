@interface MXISceneUSDZReader
- (MXIGeometry)copyMXIGeometryWithError:(SEL)error;
- (MXISceneUSDZReader)initWithUSDZFileURL:(id)l;
- (double)getDoubleValueForKey:(id)key default:(double)default;
- (float)getFloatValueForKey:(id)key default:(float)default;
- (float32x4_t)getModelToWorldTransformWithDefault:(uint64_t)default;
- (id)copyTexturesWithDevice:(id)device error:(id *)error;
- (id)getStringValueForKey:(id)key;
- (id)getThumbnailDataInternal:(id)internal;
- (id)getThumbnailDataWithError:(id *)error;
- (int)getIntValueForKey:(id)key default:(int)default;
- (void)getDouble4x4ValueForKey:(_OWORD *)key@<X3> default:(_OWORD *)default@<X8>;
@end

@implementation MXISceneUSDZReader

- (MXISceneUSDZReader)initWithUSDZFileURL:(id)l
{
  v254 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v249.receiver = self;
  v249.super_class = MXISceneUSDZReader;
  v8 = [(MXISceneUSDZReader *)&v249 init];
  if (!v8)
  {
    goto LABEL_37;
  }

  v9 = objc_msgSend_pathExtension(lCopy, v4, v5, v6, v7);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v10, @"usdz", v11, v12);

  if (isEqualToString)
  {
    v18 = lCopy;
  }

  else
  {
    v20 = objc_msgSend_pathExtension(lCopy, v14, v15, v16, v17);
    v24 = objc_msgSend_isEqualToString_(v20, v21, @"mxibundle", v22, v23);

    if (!v24)
    {
      usdURL = v8->_usdURL;
      v8->_usdURL = 0;
      goto LABEL_9;
    }

    v28 = objc_msgSend_URLByAppendingPathComponent_(lCopy, v25, @"scene.usdc", v26, v27);
    v29 = v8->_usdURL;
    v8->_usdURL = v28;

    v34 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v30, v31, v32, v33);
    v39 = objc_msgSend_path(v8->_usdURL, v35, v36, v37, v38);
    isReadableFileAtPath = objc_msgSend_isReadableFileAtPath_(v34, v40, v39, v41, v42);

    if (isReadableFileAtPath)
    {
      goto LABEL_10;
    }

    v18 = objc_msgSend_URLByAppendingPathComponent_(lCopy, v44, @"scene.usda", v45, v46);
  }

  usdURL = v8->_usdURL;
  v8->_usdURL = v18;
LABEL_9:

LABEL_10:
  v47 = objc_alloc(MEMORY[0x277D778A8]);
  v48 = v8->_usdURL;
  v248 = 0;
  inited = objc_msgSend_initSceneFromURL_error_(v47, v49, v48, &v248, v50);
  v52 = v248;
  scene = v8->_scene;
  v8->_scene = inited;

  if (!v52)
  {
    v67 = objc_alloc(MEMORY[0x277D77888]);
    v237 = objc_msgSend_initWithString_(v67, v68, @"/Root", v69, v70);
    v74 = objc_msgSend_nodeAtPath_(v8->_scene, v71, v237, v72, v73);
    rootNode = v8->_rootNode;
    v8->_rootNode = v74;

    v76 = objc_alloc(MEMORY[0x277D77888]);
    v80 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v77, @"/Root/%@", v78, v79, @"MXIMesh");
    v239 = objc_msgSend_initWithString_(v76, v81, v80, v82, v83);

    v87 = objc_msgSend_nodeAtPath_(v8->_scene, v84, v239, v85, v86);
    meshNode = v8->_meshNode;
    v8->_meshNode = v87;

    v89 = objc_alloc(MEMORY[0x277D77888]);
    v93 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v90, @"/Root/%@", v91, v92, @"MXIMaterial");
    v238 = objc_msgSend_initWithString_(v89, v94, v93, v95, v96);

    v100 = objc_msgSend_nodeAtPath_(v8->_scene, v97, v238, v98, v99);
    materialNode = v8->_materialNode;
    v8->_materialNode = v100;

    v102 = v8->_meshNode;
    if (!v102 || !v8->_materialNode)
    {
      v8->_meshNode = 0;

      materialScopeNode = v8->_materialScopeNode;
      location = &v8->_materialScopeNode;
      v8->_materialScopeNode = 0;

      v108 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v104, v105, v106, v107);
      materialNodePathToSliceIndex = v8->_materialNodePathToSliceIndex;
      v8->_materialNodePathToSliceIndex = v108;

      v114 = objc_msgSend_rootNode(v8->_scene, v110, v111, v112, v113);
      v243 = objc_msgSend_childIterator(v114, v115, v116, v117, v118);

      v127 = objc_msgSend_nextObject(v243, v119, v120, v121, v122);
      if (v127)
      {
        v242 = *MEMORY[0x277D77968];
        v241 = *MEMORY[0x277D77970];
        v236 = vdupq_n_s64(1uLL);
        while (1)
        {
          v132 = objc_msgSend_type(v127, v123, v124, v125, v126);
          if (v242 != v132)
          {
            goto LABEL_23;
          }

          v133 = objc_msgSend_path(v127, v128, v129, v130, v131);
          v138 = objc_msgSend_stringValue(v133, v134, v135, v136, v137);
          if ((objc_msgSend_containsString_(v138, v139, @"MXIMesh", v140, v141) & 1) == 0)
          {
            break;
          }

          v142 = v8->_meshNode == 0;

          if (v142)
          {
            v147 = v127;
            v148 = v8->_meshNode;
            v8->_meshNode = v147;
LABEL_33:

            goto LABEL_34;
          }

LABEL_24:
          v148 = objc_msgSend_type(v127, v143, v144, v145, v146);
          if (v241 != v148)
          {
            goto LABEL_33;
          }

          v153 = objc_msgSend_path(v127, v149, v150, v151, v152);
          v158 = objc_msgSend_stringValue(v153, v154, v155, v156, v157);
          if ((objc_msgSend_containsString_(v158, v159, @"MXIMaterialScope", v160, v161) & 1) == 0)
          {

            goto LABEL_33;
          }

          v162 = *location == 0;

          if (v162)
          {
            objc_storeStrong(location, v127);
            v148 = objc_msgSend_childIterator(*location, v167, v168, v169, v170);
            v178 = objc_msgSend_nextObject(v148, v171, v172, v173, v174);
            v179 = v236;
            if (v178)
            {
              v180 = 0;
              v246 = 0u;
              do
              {
                *buf = 0;
                v247 = 0;
                v181 = objc_msgSend_stringByAppendingString_(@"MXIMaterial", v175, @"_atlas_%02d_%02d", v176, v177);
                v186 = objc_msgSend_path(v178, v182, v183, v184, v185);
                v191 = objc_msgSend_stringValue(v186, v187, v188, v189, v190);
                v196 = objc_msgSend_lastPathComponent(v191, v192, v193, v194, v195);
                v197 = v196;
                v202 = objc_msgSend_UTF8String(v196, v198, v199, v200, v201);
                v203 = v181;
                v208 = objc_msgSend_UTF8String(v181, v204, v205, v206, v207);
                sscanf(v202, v208, buf, &v247);

                v245 = __PAIR64__(v247, *buf);
                v212 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v209, v180, v210, v211);
                v213 = v8->_materialNodePathToSliceIndex;
                v218 = objc_msgSend_path(v178, v214, v215, v216, v217);
                v223 = objc_msgSend_stringValue(v218, v219, v220, v221, v222);
                objc_msgSend_setObject_forKeyedSubscript_(v213, v224, v212, v223, v225);

                v230 = objc_msgSend_nextObject(v148, v226, v227, v228, v229);

                *(&v231 + 1) = *(&v246 + 1);
                *&v231 = vmax_u32(*&v246, v245);
                v246 = v231;
                v180 = (v180 + 1);
                v178 = v230;
              }

              while (v230);
              v232 = vadd_s32(*&v231, 0x100000001);
              v233.i64[0] = v232.u32[0];
              v233.i64[1] = v232.u32[1];
              v179 = v233;
            }

            *&v8->_textureArrayLength = v179;
            goto LABEL_33;
          }

LABEL_34:
          v234 = objc_msgSend_nextObject(v243, v163, v164, v165, v166);

          v127 = v234;
          if (!v234)
          {
            goto LABEL_35;
          }
        }

LABEL_23:
        goto LABEL_24;
      }

LABEL_35:
    }

LABEL_37:
    v66 = v8;
    goto LABEL_38;
  }

  v55 = _mxi_log(v54);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    v60 = objc_msgSend_path(v8->_usdURL, v56, v57, v58, v59);
    v65 = objc_msgSend_localizedDescription(v52, v61, v62, v63, v64);
    *buf = 138412546;
    v251 = v60;
    v252 = 2112;
    v253 = v65;
    _os_log_impl(&dword_22F9C3000, v55, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:77] [USDReader] failed to initialize USKScene with url %@: %@", buf, 0x16u);
  }

  v66 = 0;
LABEL_38:

  return v66;
}

- (MXIGeometry)copyMXIGeometryWithError:(SEL)error
{
  memset(__p, 0, sizeof(__p));
  *v202 = 0u;
  *v200 = 0u;
  memset(v201, 0, sizeof(v201));
  if (a4)
  {
    *a4 = 0;
  }

  meshNode = self->_meshNode;
  if (meshNode)
  {
    v10 = objc_msgSend_properties(meshNode, error, a4, v4, v5);
    v14 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"points", v12, v13);

    if (!v14 || (objc_msgSend_data(v14, v16, v17, v18, v19), v15 = objc_claimAutoreleasedReturnValue(), (v24 = v15) == 0) || (objc_msgSend_data(v14, v20, v21, v22, v23), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend_type(v25, v26, v27, v28, v29), v30 = objc_claimAutoreleasedReturnValue(), v31 = *MEMORY[0x277D77908], v30, v25, v24, v31 != v30))
    {
      v36 = _mxi_log(v15);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *v199 = 0;
        _os_log_impl(&dword_22F9C3000, v36, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:132] USDZ has no points property", v199, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v37, a4, @"USDZ has no points property", v38);
      *&retstr[1].var2.var2 = 0u;
      *&retstr[1].var3.var1 = 0u;
      *&retstr->var3.var1 = 0u;
      *&retstr[1].var2.var0 = 0u;
      *&retstr->var2.var0 = 0u;
      *&retstr->var2.var2 = 0u;
      goto LABEL_10;
    }

    v41 = objc_msgSend_properties(self->_meshNode, v32, v33, v34, v35);
    v45 = objc_msgSend_objectForKeyedSubscript_(v41, v42, @"primvars:uv", v43, v44);

    if (!v45 || (objc_msgSend_data(v45, v47, v48, v49, v50), v46 = objc_claimAutoreleasedReturnValue(), (v55 = v46) == 0) || (objc_msgSend_data(v45, v51, v52, v53, v54), v56 = objc_claimAutoreleasedReturnValue(), objc_msgSend_type(v56, v57, v58, v59, v60), v61 = objc_claimAutoreleasedReturnValue(), v62 = *MEMORY[0x277D778F8], v61, v56, v55, v62 != v61))
    {
      v67 = _mxi_log(v46);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        *v199 = 0;
        _os_log_impl(&dword_22F9C3000, v67, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:138] USDZ has no primvars uv property", v199, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v68, a4, @"USDZ has no primvars uv property", v69);
      *&retstr[1].var2.var2 = 0u;
      *&retstr[1].var3.var1 = 0u;
      *&retstr->var3.var1 = 0u;
      *&retstr[1].var2.var0 = 0u;
      *&retstr->var2.var0 = 0u;
      *&retstr->var2.var2 = 0u;
      goto LABEL_29;
    }

    v70 = objc_msgSend_properties(self->_meshNode, v63, v64, v65, v66);
    v74 = objc_msgSend_objectForKeyedSubscript_(v70, v71, @"faceVertexIndices", v72, v73);

    if (!v74 || (objc_msgSend_data(v74, v76, v77, v78, v79), v75 = objc_claimAutoreleasedReturnValue(), (v84 = v75) == 0) || (objc_msgSend_data(v74, v80, v81, v82, v83), v85 = objc_claimAutoreleasedReturnValue(), objc_msgSend_type(v85, v86, v87, v88, v89), v90 = objc_claimAutoreleasedReturnValue(), v91 = *MEMORY[0x277D77920], v90, v85, v84, v91 != v90))
    {
      v96 = _mxi_log(v75);
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        *v199 = 0;
        _os_log_impl(&dword_22F9C3000, v96, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:144] USDZ has no face vertex indices property", v199, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v97, a4, @"USDZ has no face vertex indices property", v98);
      *&retstr[1].var2.var2 = 0u;
      *&retstr[1].var3.var1 = 0u;
      *&retstr->var3.var1 = 0u;
      *&retstr[1].var2.var0 = 0u;
      *&retstr->var2.var0 = 0u;
      *&retstr->var2.var2 = 0u;
      goto LABEL_36;
    }

    v99 = objc_msgSend_properties(self->_meshNode, v92, v93, v94, v95);
    v103 = objc_msgSend_objectForKeyedSubscript_(v99, v100, @"faceSliceIndices", v101, v102);

    if (v103 && (objc_msgSend_data(v103, v105, v106, v107, v108), v104 = objc_claimAutoreleasedReturnValue(), (v113 = v104) != 0) && (objc_msgSend_data(v103, v109, v110, v111, v112), v114 = objc_claimAutoreleasedReturnValue(), objc_msgSend_type(v114, v115, v116, v117, v118), v119 = objc_claimAutoreleasedReturnValue(), v119, v114, v113, v91 == v119))
    {
      v127 = objc_msgSend_data(v14, v120, v121, v122, v123);
      v132 = objc_msgSend_arraySize(v127, v128, v129, v130, v131);
      v137 = objc_msgSend_data(v45, v133, v134, v135, v136);
      v142 = objc_msgSend_arraySize(v137, v138, v139, v140, v141);

      if (v132 == v142)
      {
        v148 = objc_msgSend_data(v74, v144, v145, v146, v147);
        v153 = objc_msgSend_arraySize(v148, v149, v150, v151, v152);

        if (0xAAAAAAAAAAAAAAABLL * v153 < 0x5555555555555556)
        {
          v165 = objc_msgSend_data(v14, v155, v156, v157, v158);
          v170 = objc_msgSend_arraySize(v165, v166, v167, v168, v169);

          v175 = objc_msgSend_data(v74, v171, v172, v173, v174);
          v180 = objc_msgSend_arraySize(v175, v176, v177, v178, v179);

          sub_22F9CC484(v200, v170);
          v185 = objc_msgSend_data(v14, v181, v182, v183, v184);
          objc_msgSend_float3Array_maxCount_(v185, v186, v200[0], v170, v187);

          sub_22F9CC4B4(&v201[1], v170);
          v192 = objc_msgSend_data(v45, v188, v189, v190, v191);
          objc_msgSend_float2Array_maxCount_(v192, v193, v201[1], v170, v194);

          sub_22F9CC4E4(v202, v180 / 3);
          objc_msgSend_intArray_maxCount_(v74, v195, v202[0], 3 * (v180 / 3), v196);
          sub_22F9C7754(&__p[1], v180 / 3);
          objc_msgSend_intArray_maxCount_(v103, v197, __p[1], v180 / 3, v198);
          *&retstr->var2.var0 = *v200;
          retstr->var2.var2 = v201[0];
          v200[1] = 0;
          v201[0] = 0;
          v200[0] = 0;
          *&retstr->var3.var0 = *&v201[1];
          retstr->var3.var2 = v201[3];
          memset(&v201[1], 0, 24);
          *&retstr[1].var2.var0 = *v202;
          retstr[1].var2.var2 = __p[0];
          v202[1] = 0;
          __p[0] = 0;
          v202[0] = 0;
          *&retstr[1].var3.var0 = *&__p[1];
          retstr[1].var3.var2 = __p[3];
          memset(&__p[1], 0, 24);
          goto LABEL_44;
        }

        v159 = _mxi_log(v154);
        if (os_log_type_enabled(v159, OS_LOG_TYPE_ERROR))
        {
          *v199 = 0;
          _os_log_impl(&dword_22F9C3000, v159, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:157] USDZ face indices is not a multiple of 3", v199, 2u);
        }

        objc_msgSend_fillError_withDescription_(MXIInternalError, v160, a4, @"USDZ face indices is not a multiple of 3", v161);
      }

      else
      {
        v162 = _mxi_log(v143);
        if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
        {
          *v199 = 0;
          _os_log_impl(&dword_22F9C3000, v162, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:154] USDZ points and uv mismatched sizes", v199, 2u);
        }

        objc_msgSend_fillError_withDescription_(MXIInternalError, v163, a4, @"USDZ points and uv mismatched sizes", v164);
      }
    }

    else
    {
      v124 = _mxi_log(v104);
      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        *v199 = 0;
        _os_log_impl(&dword_22F9C3000, v124, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:150] USDZ has no face slice indices property", v199, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v125, a4, @"USDZ has no face slice indices property", v126);
    }

    *&retstr[1].var2.var2 = 0u;
    *&retstr[1].var3.var1 = 0u;
    *&retstr->var3.var1 = 0u;
    *&retstr[1].var2.var0 = 0u;
    *&retstr->var2.var0 = 0u;
    *&retstr->var2.var2 = 0u;
LABEL_44:

LABEL_36:
LABEL_29:

LABEL_10:
    goto LABEL_14;
  }

  v39 = _mxi_log(0);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *v199 = 0;
    _os_log_impl(&dword_22F9C3000, v39, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:127] No mesh node", v199, 2u);
  }

  *&retstr[1].var2.var2 = 0u;
  *&retstr[1].var3.var1 = 0u;
  *&retstr->var3.var1 = 0u;
  *&retstr[1].var2.var0 = 0u;
  *&retstr->var2.var0 = 0u;
  *&retstr->var2.var2 = 0u;
LABEL_14:
  if (__p[1])
  {
    __p[2] = __p[1];
    operator delete(__p[1]);
  }

  if (v202[0])
  {
    v202[1] = v202[0];
    operator delete(v202[0]);
  }

  if (v201[1])
  {
    v201[2] = v201[1];
    operator delete(v201[1]);
  }

  result = v200[0];
  if (v200[0])
  {
    v200[1] = v200[0];
    operator delete(v200[0]);
  }

  return result;
}

- (id)copyTexturesWithDevice:(id)device error:(id *)error
{
  v91 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = objc_alloc(MEMORY[0x277D77888]);
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v8, @"/Root/%@/RealityKitTexture2DArray", v9, v10, @"MXIMaterial");
  v15 = objc_msgSend_initWithString_(v7, v12, v11, v13, v14);

  v19 = objc_msgSend_nodeAtPath_(self->_scene, v16, v15, v17, v18);
  v24 = v19;
  if (v19)
  {
    v25 = objc_msgSend_properties(v19, v20, v21, v22, v23);
    v29 = objc_msgSend_objectForKeyedSubscript_(v25, v26, @"inputs:file", v27, v28);

    if (v29 && (objc_msgSend_resourcePath(v29, v31, v32, v33, v34), v35 = objc_claimAutoreleasedReturnValue(), v35, v35))
    {
      v40 = MEMORY[0x277D77898];
      v41 = objc_msgSend_resourcePath(v29, v36, v37, v38, v39);
      v45 = objc_msgSend_resourceWithResourcePath_(v40, v42, v41, v43, v44);

      if (v45)
      {
        v51 = objc_msgSend_dataNoCopy(v45, v47, v48, v49, v50);
        IntValueForKey_default = objc_msgSend_getIntValueForKey_default_(self, v52, @"version", 0, v53);
        v55 = v51;
        *&v88 = &unk_28449BD40;
        *(&v88 + 1) = objc_msgSend_bytes(v55, v56, v57, v58, v59);
        v89 = objc_msgSend_length(v51, v60, v61, v62, v63);
        v90 = 0;
        v64 = image::ReadKTX(&v88, deviceCopy, 1, IntValueForKey_default < 3);
        if (!v64)
        {
          v65 = _mxi_log(0);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22F9C3000, v65, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:207] Could not read ktx", buf, 2u);
          }

          objc_msgSend_fillError_withDescription_(MXIInternalError, v66, error, @"Could not read ktx", v67);
        }
      }

      else
      {
        v74 = _mxi_log(v46);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          v79 = objc_msgSend_resourcePath(v29, v75, v76, v77, v78);
          LODWORD(v88) = 138412290;
          *(&v88 + 4) = v79;
          _os_log_impl(&dword_22F9C3000, v74, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:196] Could not get resource from path: %@", &v88, 0xCu);
        }

        v51 = objc_msgSend_resourcePath(v29, v80, v81, v82, v83);
        objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v84, error, @"Could not get resource from path: %@", v85, v51);
        v64 = 0;
      }
    }

    else
    {
      v68 = _mxi_log(v30);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v88) = 0;
        _os_log_impl(&dword_22F9C3000, v68, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:190] Could not get inputs file property", &v88, 2u);
      }

      objc_msgSend_fillError_withDescription_(MXIInternalError, v69, error, @"Could not get inputs file property", v70);
      v64 = 0;
    }
  }

  else
  {
    v71 = _mxi_log(0);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v88) = 138412290;
      *(&v88 + 4) = v15;
      _os_log_impl(&dword_22F9C3000, v71, OS_LOG_TYPE_ERROR, "[MXI.framework/MXISceneUSDZReader.mm:184] Could not get texture 2D array from path: %@", &v88, 0xCu);
    }

    objc_msgSend_fillError_withFormattedDescription_(MXIInternalError, v72, error, @"Could not get texture 2D array from path: %@", v73, v15);
    v64 = 0;
  }

  return v64;
}

- (id)getThumbnailDataInternal:(id)internal
{
  internalCopy = internal;
  v8 = internalCopy;
  if (internalCopy && (objc_msgSend_type(internalCopy, v4, v5, v6, v7), v9 = objc_claimAutoreleasedReturnValue(), v10 = *MEMORY[0x277D77930], v9, v9 == v10))
  {
    v16 = MEMORY[0x277D77898];
    v17 = objc_msgSend_resourcePath(v8, v11, v12, v13, v14);
    v21 = objc_msgSend_resourceWithResourcePath_(v16, v18, v17, v19, v20);

    if (v21)
    {
      v26 = MEMORY[0x277CBEA90];
      v27 = objc_msgSend_dataNoCopy(v21, v22, v23, v24, v25);
      v15 = objc_msgSend_dataWithData_(v26, v28, v27, v29, v30);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)getThumbnailDataWithError:(id *)error
{
  v5 = objc_msgSend_dictionaryMetadataWithKey_dictionaryKey_(self->_rootNode, a2, @"assetInfo", @"previews:thumbnails:default:defaultImage", v3);
  v11 = objc_msgSend_getThumbnailDataInternal_(self, v6, v5, v7, v8);
  if (v11)
  {
    v12 = v5;
  }

  else
  {
    v13 = objc_msgSend_dictionaryMetadataWithKey_dictionaryKey_(self->_scene, v9, @"customLayerData", @"thumbnail", v10);

    v11 = objc_msgSend_getThumbnailDataInternal_(self, v14, v13, v15, v16);
    if (v11)
    {
      v12 = v13;
    }

    else
    {
      v12 = objc_msgSend_customMetadataWithKey_(self->_rootNode, v17, @"thumbnail", v18, v19);

      v11 = objc_msgSend_getThumbnailDataInternal_(self, v20, v12, v21, v22);
    }
  }

  return v11;
}

- (id)getStringValueForKey:(id)key
{
  keyCopy = key;
  v8 = objc_msgSend_metadataWithKey_(self->_scene, v5, keyCopy, v6, v7);
  v13 = v8;
  v14 = MEMORY[0x277D77938];
  if (v8 && (objc_msgSend_type(v8, v9, v10, v11, v12), v15 = objc_claimAutoreleasedReturnValue(), v16 = *v14, v15, v16 == v15))
  {
    v39 = objc_msgSend_stringValue(v13, v9, v17, v18, v12);
  }

  else
  {
    v19 = objc_msgSend_dictionaryMetadataWithKey_dictionaryKey_(self->_scene, v9, @"customLayerData", keyCopy, v12);

    if (v19 && (objc_msgSend_type(v19, v20, v21, v22, v23), v24 = objc_claimAutoreleasedReturnValue(), v25 = *v14, v24, v24 == v25))
    {
      v13 = v19;
      objc_msgSend_stringValue(v19, v20, v26, v22, v23);
    }

    else
    {
      v27 = objc_msgSend_customMetadataWithKey_(self->_rootNode, v20, keyCopy, v22, v23);

      if (!v27)
      {
        v38 = 0;
        v13 = 0;
        goto LABEL_14;
      }

      v32 = objc_msgSend_type(v27, v28, v29, v30, v31);
      v33 = *v14;

      if (v32 != v33)
      {
        v38 = 0;
        v13 = v27;
        goto LABEL_14;
      }

      v13 = v27;
      objc_msgSend_stringValue(v27, v34, v35, v36, v37);
    }
    v39 = ;
  }

  v38 = v39;
LABEL_14:

  return v38;
}

- (int)getIntValueForKey:(id)key default:(int)default
{
  keyCopy = key;
  v10 = objc_msgSend_metadataWithKey_(self->_scene, v7, keyCopy, v8, v9);
  v15 = v10;
  v16 = MEMORY[0x277D77918];
  if (v10)
  {
    v17 = objc_msgSend_type(v10, v11, v12, v13, v14);
    v18 = *v16;

    if (v18 == v17)
    {
      goto LABEL_10;
    }
  }

  v21 = objc_msgSend_dictionaryMetadataWithKey_dictionaryKey_(self->_scene, v11, @"customLayerData", keyCopy, v14);

  if (v21)
  {
    v23 = objc_msgSend_type(v21, v11, v22, v20, v14);
    v24 = *v16;

    if (v23 == v24)
    {
      v15 = v21;
LABEL_10:
      default = objc_msgSend_intValue(v15, v11, v19, v20, v14);
      v25 = v15;
      goto LABEL_11;
    }
  }

  v25 = objc_msgSend_customMetadataWithKey_(self->_rootNode, v11, keyCopy, v20, v14);

  if (v25)
  {
    v30 = objc_msgSend_type(v25, v26, v27, v28, v29);
    v31 = *v16;

    v15 = v25;
    if (v30 == v31)
    {
      goto LABEL_10;
    }
  }

LABEL_11:

  return default;
}

- (float)getFloatValueForKey:(id)key default:(float)default
{
  keyCopy = key;
  v10 = objc_msgSend_metadataWithKey_(self->_scene, v7, keyCopy, v8, v9);
  v15 = v10;
  v16 = MEMORY[0x277D778E8];
  if (v10)
  {
    v17 = objc_msgSend_type(v10, v11, v12, v13, v14);
    v18 = *v16;

    if (v18 == v17)
    {
      goto LABEL_10;
    }
  }

  v21 = objc_msgSend_dictionaryMetadataWithKey_dictionaryKey_(self->_scene, v11, @"customLayerData", keyCopy, v14);

  if (v21)
  {
    v23 = objc_msgSend_type(v21, v11, v22, v20, v14);
    v24 = *v16;

    if (v23 == v24)
    {
      v15 = v21;
LABEL_10:
      objc_msgSend_floatValue(v15, v11, v19, v20, v14);
      default = v32;
      v25 = v15;
      goto LABEL_11;
    }
  }

  v25 = objc_msgSend_customMetadataWithKey_(self->_rootNode, v11, keyCopy, v20, v14);

  if (v25)
  {
    v30 = objc_msgSend_type(v25, v26, v27, v28, v29);
    v31 = *v16;

    v15 = v25;
    if (v30 == v31)
    {
      goto LABEL_10;
    }
  }

LABEL_11:

  return default;
}

- (double)getDoubleValueForKey:(id)key default:(double)default
{
  keyCopy = key;
  v10 = objc_msgSend_metadataWithKey_(self->_scene, v7, keyCopy, v8, v9);
  v15 = v10;
  v16 = MEMORY[0x277D778D0];
  if (v10)
  {
    v17 = objc_msgSend_type(v10, v11, v12, v13, v14);
    v18 = *v16;

    if (v18 == v17)
    {
      goto LABEL_10;
    }
  }

  v21 = objc_msgSend_dictionaryMetadataWithKey_dictionaryKey_(self->_scene, v11, @"customLayerData", keyCopy, v14);

  if (v21)
  {
    v23 = objc_msgSend_type(v21, v11, v22, v20, v14);
    v24 = *v16;

    if (v23 == v24)
    {
      v15 = v21;
LABEL_10:
      objc_msgSend_doubleValue(v15, v11, v19, v20, v14);
      default = v32;
      v25 = v15;
      goto LABEL_11;
    }
  }

  v25 = objc_msgSend_customMetadataWithKey_(self->_rootNode, v11, keyCopy, v20, v14);

  if (v25)
  {
    v30 = objc_msgSend_type(v25, v26, v27, v28, v29);
    v31 = *v16;

    v15 = v25;
    if (v30 == v31)
    {
      goto LABEL_10;
    }
  }

LABEL_11:

  return default;
}

- (void)getDouble4x4ValueForKey:(_OWORD *)key@<X3> default:(_OWORD *)default@<X8>
{
  v44 = a2;
  v10 = objc_msgSend_metadataWithKey_(*(self + 16), v7, v44, v8, v9);
  v15 = v10;
  v16 = MEMORY[0x277D778E0];
  if (v10 && (objc_msgSend_type(v10, v11, v12, v13, v14), v17 = objc_claimAutoreleasedReturnValue(), v18 = *v16, v17, v18 == v17))
  {
    objc_msgSend_double4x4Value(v15, v11, v19, v20, v14);
  }

  else
  {
    v21 = objc_msgSend_dictionaryMetadataWithKey_dictionaryKey_(*(self + 16), v11, @"customLayerData", v44, v14);

    if (v21 && (objc_msgSend_type(v21, v22, v23, v24, v25), v26 = objc_claimAutoreleasedReturnValue(), v27 = *v16, v26, v27 == v26))
    {
      v15 = v21;
      objc_msgSend_double4x4Value(v21, v22, v28, v24, v25);
    }

    else
    {
      v29 = objc_msgSend_customMetadataWithKey_(*(self + 24), v22, v44, v24, v25);

      if (v29 && (objc_msgSend_type(v29, v30, v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), v35 = *v16, v34, v35 == v34))
      {
        v15 = v29;
        objc_msgSend_double4x4Value(v29, v36, v37, v38, v39);
      }

      else
      {
        v40 = key[5];
        default[4] = key[4];
        default[5] = v40;
        v41 = key[7];
        default[6] = key[6];
        default[7] = v41;
        v42 = key[1];
        *default = *key;
        default[1] = v42;
        v43 = key[3];
        v15 = v29;
        default[2] = key[2];
        default[3] = v43;
      }
    }
  }
}

- (float32x4_t)getModelToWorldTransformWithDefault:(uint64_t)default
{
  v6 = objc_msgSend_properties(*(default + 24), v2, v3, v4, v5);
  v10 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"xformOp:transform", v8, v9);

  if (v10)
  {
    v19 = objc_msgSend_data(v10, v11, v12, v13, v14);
    if (v19)
    {
      v20 = objc_msgSend_data(v10, v15, v16, v17, v18);
      v25 = objc_msgSend_type(v20, v21, v22, v23, v24);
      v26 = *MEMORY[0x277D778E0];

      if (v26 == v25)
      {
        v39 = 0u;
        v40 = 0u;
        v31 = objc_msgSend_data(v10, v27, v28, v29, v30);
        v36 = v31;
        if (v31)
        {
          objc_msgSend_double4x4Value(v31, v32, v33, v34, v35);
        }

        else
        {
          v39 = 0u;
          v40 = 0u;
        }

        a2 = vcvt_hight_f32_f64(vcvt_f32_f64(v39), v40);
      }
    }
  }

  return a2;
}

@end