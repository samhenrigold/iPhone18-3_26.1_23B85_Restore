@interface MDLMaterial
+ (id)decodeMaterialWithCoder:(id)coder allocator:(id)allocator;
- (BidirectionalScatteringDistributionFunction)bsdf;
- (MDLMaterial)init;
- (MDLMaterial)initWithName:(NSString *)name scatteringFunction:(MDLScatteringFunction *)scatteringFunction;
- (MDLMaterial)initWithName:(id)name;
- (MDLMaterial)initWithName:(id)name physicallyPlausibleBSDF:(PhysicallyPlausibleDistribution *)f;
- (MDLMaterialProperty)objectAtIndexedSubscript:(NSUInteger)idx;
- (MDLMaterialProperty)objectForKeyedSubscript:(NSString *)name;
- (MDLMaterialProperty)propertyNamed:(NSString *)name;
- (MDLMaterialProperty)propertyWithSemantic:(MDLMaterialSemantic)semantic;
- (MDLScatteringFunction)scatteringFunction;
- (NSArray)propertiesWithSemantic:(MDLMaterialSemantic)semantic;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)conformToMatProperties;
- (void)encodeMaterialWithCoder:(id)coder allocator:(id)allocator;
- (void)loadTexturesUsingArchiveAssetResolver:(id)resolver cache:(id)cache;
- (void)loadTexturesUsingResolver:(id)resolver cache:(id)cache;
- (void)removeAllProperties;
- (void)resolveTexturesWithResolver:(id)resolver;
- (void)setProperty:(MDLMaterialProperty *)property;
- (void)setScatteringFunction:(id)function;
@end

@implementation MDLMaterial

- (MDLScatteringFunction)scatteringFunction
{
  scatteringFunction = self->_scatteringFunction;
  if (!scatteringFunction)
  {
    v4 = objc_opt_new();
    objc_msgSend_setScatteringFunction_(self, v5, v4, v6, v11, v12, v13, v14, v7, v8, v9, v10);

    scatteringFunction = self->_scatteringFunction;
  }

  return scatteringFunction;
}

- (void)setScatteringFunction:(id)function
{
  functionCopy = function;
  objc_storeStrong(&self->_scatteringFunction, function);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  builtinProperties = self->_builtinProperties;
  self->_builtinProperties = v6;

  outCount = 0;
  v8 = objc_opt_class();
  v9 = class_copyPropertyList(v8, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Attributes = property_getAttributes(v9[i]);
      if (strstr(Attributes, "MDLMaterialProperty"))
      {
        v12 = MEMORY[0x277CCACA8];
        Name = property_getName(v9[i]);
        v24 = objc_msgSend_stringWithFormat_(v12, v14, @"%s", v15, v20, v21, v22, v23, v16, v17, v18, v19, Name);
        v35 = objc_msgSend_valueForKey_(functionCopy, v25, v24, v26, v31, v32, v33, v34, v27, v28, v29, v30);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_addObject_(self->_builtinProperties, v36, v35, v37, v42, v43, v44, v45, v38, v39, v40, v41);
        }
      }
    }
  }

  free(v9);
  v57 = objc_msgSend_superclass(functionCopy, v46, v47, v48, v53, v54, v55, v56, v49, v50, v51, v52);
  v58 = class_copyPropertyList(v57, &outCount);
  if (outCount)
  {
    for (j = 0; j < outCount; ++j)
    {
      v60 = property_getAttributes(v58[j]);
      if (strstr(v60, "MDLMaterialProperty"))
      {
        v61 = MEMORY[0x277CCACA8];
        v62 = property_getName(v58[j]);
        v73 = objc_msgSend_stringWithFormat_(v61, v63, @"%s", v64, v69, v70, v71, v72, v65, v66, v67, v68, v62);
        v84 = objc_msgSend_valueForKey_(functionCopy, v74, v73, v75, v80, v81, v82, v83, v76, v77, v78, v79);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_msgSend_addObject_(self->_builtinProperties, v85, v84, v86, v91, v92, v93, v94, v87, v88, v89, v90);
        }
      }
    }
  }

  free(v58);
}

- (void)resolveTexturesWithResolver:(id)resolver
{
  v180 = *MEMORY[0x277D85DE8];
  v4 = resolver;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  selfCopy = self;
  v6 = self->_builtinProperties;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v173, v179, v11, v12, v13, v14, 16, v8, v9, v10);
  if (v22)
  {
    v27 = *v174;
    do
    {
      v28 = 0;
      do
      {
        if (*v174 != v27)
        {
          objc_enumerationMutation(v6);
        }

        v29 = *(*(&v173 + 1) + 8 * v28);
        v30 = objc_msgSend_URLValue(v29, v15, v16, v17, v23, v24, v25, v26, v18, v19, v20, v21);
        if (v30)
        {
        }

        else
        {
          v42 = objc_msgSend_stringValue(v29, v31, v32, v33, v38, v39, v40, v41, v34, v35, v36, v37);
          if (v42)
          {
            v43 = objc_msgSend_stringValue(v29, v15, v16, v17, v23, v24, v25, v26, v18, v19, v20, v21);
            v55 = objc_msgSend_length(v43, v44, v45, v46, v51, v52, v53, v54, v47, v48, v49, v50) == 0;

            if (!v55)
            {
              objc_msgSend_addObject_(v5, v15, v29, v17, v23, v24, v25, v26, v18, v19, v20, v21);
            }
          }
        }

        ++v28;
      }

      while (v22 != v28);
      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v15, &v173, v179, v23, v24, v25, v26, 16, v19, v20, v21);
      v22 = v56;
    }

    while (v56);
  }

  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  v57 = selfCopy->_userProperties;
  v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v169, v178, v62, v63, v64, v65, 16, v59, v60, v61);
  if (v73)
  {
    v78 = *v170;
    do
    {
      v79 = 0;
      do
      {
        if (*v170 != v78)
        {
          objc_enumerationMutation(v57);
        }

        v80 = *(*(&v169 + 1) + 8 * v79);
        v81 = objc_msgSend_URLValue(v80, v66, v67, v68, v74, v75, v76, v77, v69, v70, v71, v72);
        if (v81)
        {
        }

        else
        {
          v93 = objc_msgSend_stringValue(v80, v82, v83, v84, v89, v90, v91, v92, v85, v86, v87, v88);
          if (v93)
          {
            v94 = objc_msgSend_stringValue(v80, v66, v67, v68, v74, v75, v76, v77, v69, v70, v71, v72);
            v106 = objc_msgSend_length(v94, v95, v96, v97, v102, v103, v104, v105, v98, v99, v100, v101) == 0;

            if (!v106)
            {
              objc_msgSend_addObject_(v5, v66, v80, v68, v74, v75, v76, v77, v69, v70, v71, v72);
            }
          }
        }

        ++v79;
      }

      while (v73 != v79);
      v107 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v66, &v169, v178, v74, v75, v76, v77, 16, v70, v71, v72);
      v73 = v107;
    }

    while (v107);
  }

  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v108 = v5;
  v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v109, &v165, v177, v113, v114, v115, v116, 16, v110, v111, v112);
  if (v124)
  {
    v129 = *v166;
    do
    {
      for (i = 0; i != v124; ++i)
      {
        if (*v166 != v129)
        {
          objc_enumerationMutation(v108);
        }

        v131 = *(*(&v165 + 1) + 8 * i);
        v132 = objc_msgSend_stringValue(v131, v117, v118, v119, v125, v126, v127, v128, v120, v121, v122, v123);
        v143 = objc_msgSend_resolveAssetNamed_(v4, v133, v132, v134, v139, v140, v141, v142, v135, v136, v137, v138);
        objc_msgSend_setURLValue_(v131, v144, v143, v145, v150, v151, v152, v153, v146, v147, v148, v149);

        objc_msgSend_setType_(v131, v154, 1, v155, v160, v161, v162, v163, v156, v157, v158, v159);
      }

      v124 = objc_msgSend_countByEnumeratingWithState_objects_count_(v108, v117, &v165, v177, v125, v126, v127, v128, 16, v121, v122, v123);
    }

    while (v124);
  }
}

- (void)loadTexturesUsingArchiveAssetResolver:(id)resolver cache:(id)cache
{
  v232 = *MEMORY[0x277D85DE8];
  resolverCopy = resolver;
  cacheCopy = cache;
  v216 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  v7 = self->_builtinProperties;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v225, v231, v12, v13, v14, v15, 16, v9, v10, v11);
  if (v23)
  {
    v28 = *v226;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v226 != v28)
        {
          objc_enumerationMutation(v7);
        }

        v30 = *(*(&v225 + 1) + 8 * i);
        v31 = objc_msgSend_stringValue(v30, v16, v17, v18, v24, v25, v26, v27, v19, v20, v21, v22, resolverCopy);
        if (v31)
        {
          v32 = objc_msgSend_stringValue(v30, v16, v17, v18, v24, v25, v26, v27, v19, v20, v21, v22);
          v44 = objc_msgSend_length(v32, v33, v34, v35, v40, v41, v42, v43, v36, v37, v38, v39) == 0;

          if (!v44)
          {
            objc_msgSend_addObject_(v216, v16, v30, v18, v24, v25, v26, v27, v19, v20, v21, v22);
          }
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v16, &v225, v231, v24, v25, v26, v27, 16, v20, v21, v22);
    }

    while (v23);
  }

  v223 = 0u;
  v224 = 0u;
  v221 = 0u;
  v222 = 0u;
  v45 = self->_userProperties;
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v46, &v221, v230, v50, v51, v52, v53, 16, v47, v48, v49);
  if (v61)
  {
    v66 = *v222;
    do
    {
      for (j = 0; j != v61; ++j)
      {
        if (*v222 != v66)
        {
          objc_enumerationMutation(v45);
        }

        v68 = *(*(&v221 + 1) + 8 * j);
        v69 = objc_msgSend_stringValue(v68, v54, v55, v56, v62, v63, v64, v65, v57, v58, v59, v60, resolverCopy);
        if (v69)
        {
          v70 = objc_msgSend_stringValue(v68, v54, v55, v56, v62, v63, v64, v65, v57, v58, v59, v60);
          v82 = objc_msgSend_length(v70, v71, v72, v73, v78, v79, v80, v81, v74, v75, v76, v77) == 0;

          if (!v82)
          {
            objc_msgSend_addObject_(v216, v54, v68, v56, v62, v63, v64, v65, v57, v58, v59, v60);
          }
        }
      }

      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v45, v54, &v221, v230, v62, v63, v64, v65, 16, v58, v59, v60);
    }

    while (v61);
  }

  v219 = 0u;
  v220 = 0u;
  v217 = 0u;
  v218 = 0u;
  v83 = v216;
  v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v84, &v217, v229, v88, v89, v90, v91, 16, v85, v86, v87);
  if (v99)
  {
    v104 = *v218;
    do
    {
      for (k = 0; k != v99; ++k)
      {
        if (*v218 != v104)
        {
          objc_enumerationMutation(v83);
        }

        v106 = *(*(&v217 + 1) + 8 * k);
        if (!cacheCopy)
        {
          v131 = objc_msgSend_stringValue(*(*(&v217 + 1) + 8 * k), v92, v93, v94, v100, v101, v102, v103, v95, v96, v97, v98);
          v142 = objc_msgSend_textureNamed_assetResolver_(MDLTexture, v143, v131, resolverCopy, v148, v149, v150, v151, v144, v145, v146, v147);
          goto LABEL_30;
        }

        v107 = objc_msgSend_stringValue(*(*(&v217 + 1) + 8 * k), v92, v93, v94, v100, v101, v102, v103, v95, v96, v97, v98);
        v118 = objc_msgSend_objectForKey_(cacheCopy, v108, v107, v109, v114, v115, v116, v117, v110, v111, v112, v113);
        v119 = v118 == 0;

        if (!v119)
        {
          v131 = objc_msgSend_stringValue(v106, v120, v121, v122, v127, v128, v129, v130, v123, v124, v125, v126);
          v142 = objc_msgSend_objectForKey_(cacheCopy, v132, v131, v133, v138, v139, v140, v141, v134, v135, v136, v137);
LABEL_30:
          v152 = v142;
          goto LABEL_32;
        }

        v153 = objc_msgSend_stringValue(v106, v120, v121, v122, v127, v128, v129, v130, v123, v124, v125, v126);
        v152 = objc_msgSend_textureNamed_assetResolver_(MDLTexture, v154, v153, resolverCopy, v159, v160, v161, v162, v155, v156, v157, v158);

        v131 = objc_msgSend_stringValue(v106, v163, v164, v165, v170, v171, v172, v173, v166, v167, v168, v169);
        objc_msgSend_setObject_forKeyedSubscript_(cacheCopy, v174, v152, v131, v179, v180, v181, v182, v175, v176, v177, v178);
LABEL_32:

        if (v152)
        {
          v200 = objc_msgSend_textureSamplerValue(v106, v183, v184, v185, v190, v191, v192, v193, v186, v187, v188, v189);
          if (!v200)
          {
            v200 = objc_alloc_init(MDLTextureSampler);
          }

          objc_msgSend_setTexture_(v200, v194, v152, v195, v201, v202, v203, v204, v196, v197, v198, v199, resolverCopy);
          objc_msgSend_setTextureSamplerValue_(v106, v205, v200, v206, v211, v212, v213, v214, v207, v208, v209, v210);
        }
      }

      v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v92, &v217, v229, v100, v101, v102, v103, 16, v96, v97, v98);
    }

    while (v99);
  }
}

- (void)loadTexturesUsingResolver:(id)resolver cache:(id)cache
{
  v229 = *MEMORY[0x277D85DE8];
  resolverCopy = resolver;
  cacheCopy = cache;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_resolveTexturesWithResolver_(self, v17, resolverCopy, v18, v23, v24, v25, v26, v19, v20, v21, v22);
    v224 = 0u;
    v225 = 0u;
    v222 = 0u;
    v223 = 0u;
    v27 = self->_builtinProperties;
    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v222, v228, v32, v33, v34, v35, 16, v29, v30, v31);
    if (v43)
    {
      v48 = *v223;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v223 != v48)
          {
            objc_enumerationMutation(v27);
          }

          v50 = *(*(&v222 + 1) + 8 * i);
          v51 = objc_msgSend_URLValue(v50, v36, v37, v38, v44, v45, v46, v47, v39, v40, v41, v42);
          v52 = v51 == 0;

          if (!v52)
          {
            objc_msgSend_addObject_(v16, v36, v50, v38, v44, v45, v46, v47, v39, v40, v41, v42);
          }
        }

        v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v36, &v222, v228, v44, v45, v46, v47, 16, v40, v41, v42);
      }

      while (v43);
    }

    v220 = 0u;
    v221 = 0u;
    v218 = 0u;
    v219 = 0u;
    v53 = self->_userProperties;
    v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v218, v227, v58, v59, v60, v61, 16, v55, v56, v57);
    if (v69)
    {
      v74 = *v219;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (*v219 != v74)
          {
            objc_enumerationMutation(v53);
          }

          v76 = *(*(&v218 + 1) + 8 * j);
          v77 = objc_msgSend_URLValue(v76, v62, v63, v64, v70, v71, v72, v73, v65, v66, v67, v68);
          v78 = v77 == 0;

          if (!v78)
          {
            objc_msgSend_addObject_(v16, v62, v76, v64, v70, v71, v72, v73, v65, v66, v67, v68);
          }
        }

        v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v62, &v218, v227, v70, v71, v72, v73, 16, v66, v67, v68);
      }

      while (v69);
    }

    v216 = 0u;
    v217 = 0u;
    v214 = 0u;
    v215 = 0u;
    v79 = v16;
    v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v80, &v214, v226, v84, v85, v86, v87, 16, v81, v82, v83);
    if (!v95)
    {
LABEL_38:

      goto LABEL_39;
    }

    v100 = *v215;
LABEL_23:
    v101 = 0;
    while (1)
    {
      if (*v215 != v100)
      {
        objc_enumerationMutation(v79);
      }

      v102 = *(*(&v214 + 1) + 8 * v101);
      if (cacheCopy)
      {
        v103 = objc_msgSend_URLValue(*(*(&v214 + 1) + 8 * v101), v88, v89, v90, v96, v97, v98, v99, v91, v92, v93, v94);
        v114 = objc_msgSend_objectForKey_(cacheCopy, v104, v103, v105, v110, v111, v112, v113, v106, v107, v108, v109);
        v115 = v114 == 0;

        if (v115)
        {
          v150 = objc_msgSend_URLValue(v102, v116, v117, v118, v123, v124, v125, v126, v119, v120, v121, v122);
          v149 = objc_msgSend_textureWithURL_(MDLTexture, v151, v150, v152, v157, v158, v159, v160, v153, v154, v155, v156);

          v127 = objc_msgSend_URLValue(v102, v161, v162, v163, v168, v169, v170, v171, v164, v165, v166, v167);
          objc_msgSend_setObject_forKeyedSubscript_(cacheCopy, v172, v149, v127, v177, v178, v179, v180, v173, v174, v175, v176);
          goto LABEL_32;
        }

        v127 = objc_msgSend_URLValue(v102, v116, v117, v118, v123, v124, v125, v126, v119, v120, v121, v122);
        v138 = objc_msgSend_objectForKeyedSubscript_(cacheCopy, v128, v127, v129, v134, v135, v136, v137, v130, v131, v132, v133);
      }

      else
      {
        v127 = objc_msgSend_URLValue(*(*(&v214 + 1) + 8 * v101), v88, v89, v90, v96, v97, v98, v99, v91, v92, v93, v94);
        v138 = objc_msgSend_textureWithURL_(MDLTexture, v139, v127, v140, v145, v146, v147, v148, v141, v142, v143, v144);
      }

      v149 = v138;
LABEL_32:

      if (v149)
      {
        v198 = objc_msgSend_textureSamplerValue(v102, v181, v182, v183, v188, v189, v190, v191, v184, v185, v186, v187);
        if (!v198)
        {
          v198 = objc_alloc_init(MDLTextureSampler);
        }

        objc_msgSend_setTexture_(v198, v192, v149, v193, v199, v200, v201, v202, v194, v195, v196, v197);
        objc_msgSend_setTextureSamplerValue_(v102, v203, v198, v204, v209, v210, v211, v212, v205, v206, v207, v208);
      }

      if (v95 == ++v101)
      {
        v95 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v88, &v214, v226, v96, v97, v98, v99, 16, v92, v93, v94);
        if (!v95)
        {
          goto LABEL_38;
        }

        goto LABEL_23;
      }
    }
  }

  objc_msgSend_loadTexturesUsingArchiveAssetResolver_cache_(self, v7, resolverCopy, cacheCopy, v12, v13, v14, v15, v8, v9, v10, v11);
LABEL_39:
}

- (MDLMaterial)init
{
  v20.receiver = self;
  v20.super_class = MDLMaterial;
  v2 = [(MDLMaterial *)&v20 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = &stru_284D18478;

    v5 = objc_opt_new();
    userProperties = v3->_userProperties;
    v3->_userProperties = v5;

    v7 = objc_opt_new();
    objc_msgSend_setScatteringFunction_(v3, v8, v7, v9, v14, v15, v16, v17, v10, v11, v12, v13);

    v18 = v3;
  }

  return v3;
}

- (MDLMaterial)initWithName:(id)name
{
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = MDLMaterial;
  v11 = [(MDLMaterial *)&v23 init];
  if (v11)
  {
    if (nameCopy)
    {
      v16 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v5, nameCopy, v6, v12, v13, v14, v15, v7, v8, v9, v10);
    }

    else
    {
      v16 = &stru_284D18478;
    }

    name = v11->_name;
    v11->_name = &v16->isa;

    v18 = objc_opt_new();
    userProperties = v11->_userProperties;
    v11->_userProperties = v18;

    scatteringFunction = v11->_scatteringFunction;
    v11->_scatteringFunction = 0;

    v21 = v11;
  }

  return v11;
}

- (MDLMaterial)initWithName:(NSString *)name scatteringFunction:(MDLScatteringFunction *)scatteringFunction
{
  v6 = name;
  v7 = scatteringFunction;
  v35.receiver = self;
  v35.super_class = MDLMaterial;
  v14 = [(MDLMaterial *)&v35 init];
  if (v14)
  {
    if (v6)
    {
      v19 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v8, v6, v9, v15, v16, v17, v18, v10, v11, v12, v13);
    }

    else
    {
      v19 = &stru_284D18478;
    }

    v20 = v14->_name;
    v14->_name = &v19->isa;

    v21 = objc_opt_new();
    userProperties = v14->_userProperties;
    v14->_userProperties = v21;

    objc_msgSend_setScatteringFunction_(v14, v23, v7, v24, v29, v30, v31, v32, v25, v26, v27, v28);
    v33 = v14;
  }

  return v14;
}

- (MDLMaterial)initWithName:(id)name physicallyPlausibleBSDF:(PhysicallyPlausibleDistribution *)f
{
  nameCopy = name;
  v36.receiver = self;
  v36.super_class = MDLMaterial;
  v13 = [(MDLMaterial *)&v36 init];
  if (v13)
  {
    if (nameCopy)
    {
      v18 = objc_msgSend_stringWithString_(MEMORY[0x277CCACA8], v7, nameCopy, v8, v14, v15, v16, v17, v9, v10, v11, v12);
    }

    else
    {
      v18 = &stru_284D18478;
    }

    name = v13->_name;
    v13->_name = &v18->isa;

    v20 = objc_opt_new();
    userProperties = v13->_userProperties;
    v13->_userProperties = v20;

    v22 = objc_opt_new();
    objc_msgSend_setScatteringFunction_(v13, v23, v22, v24, v29, v30, v31, v32, v25, v26, v27, v28);
    v33 = v22[11];
    *(v33 + 112) = f[1].var1.var2;
    *(v33 + 120) = f[1].var1.var3;
    *(v33 + 96) = *&f[1].var1.var0;
    *(v33 + 128) = *&f[1].var1.var5;
    *(v33 + 136) = f[1].var1.var7;
    v34 = v13;
  }

  return v13;
}

- (void)conformToMatProperties
{
  v12 = &off_278B402A0;
  v13 = 1536;
  do
  {
    v14 = objc_msgSend_propertyWithSemantic_(self, a2, *(v12 - 2), v2, v7, v8, v9, v10, v3, v4, v5, v6);
    objc_msgSend_setName_(v14, v15, *v12, v16, v21, v22, v23, v24, v17, v18, v19, v20);

    v12 += 4;
    v13 -= 32;
  }

  while (v13);
}

- (MDLMaterialProperty)propertyNamed:(NSString *)name
{
  v122 = *MEMORY[0x277D85DE8];
  v4 = name;
  if (v4)
  {
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v5 = self->_userProperties;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v116, v121, v10, v11, v12, v13, 16, v7, v8, v9);
    if (v21)
    {
      v26 = *v117;
LABEL_4:
      v27 = 0;
      while (1)
      {
        if (*v117 != v26)
        {
          objc_enumerationMutation(v5);
        }

        v28 = *(*(&v116 + 1) + 8 * v27);
        v29 = objc_msgSend_name(v28, v14, v15, v16, v22, v23, v24, v25, v17, v18, v19, v20);
        isEqualToString = objc_msgSend_isEqualToString_(v4, v30, v29, v31, v36, v37, v38, v39, v32, v33, v34, v35);

        if (isEqualToString)
        {
          goto LABEL_20;
        }

        if (v21 == ++v27)
        {
          v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v14, &v116, v121, v22, v23, v24, v25, 16, v18, v19, v20);
          if (v21)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v5 = self->_builtinProperties;
    v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v41, &v112, v120, v45, v46, v47, v48, 16, v42, v43, v44);
    if (v56)
    {
      v61 = *v113;
LABEL_12:
      v62 = 0;
      while (1)
      {
        if (*v113 != v61)
        {
          objc_enumerationMutation(v5);
        }

        v28 = *(*(&v112 + 1) + 8 * v62);
        v63 = objc_msgSend_name(v28, v49, v50, v51, v57, v58, v59, v60, v52, v53, v54, v55, v112);
        v74 = objc_msgSend_isEqualToString_(v4, v64, v63, v65, v70, v71, v72, v73, v66, v67, v68, v69);

        if (v74)
        {
          break;
        }

        if (v56 == ++v62)
        {
          v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v49, &v112, v120, v57, v58, v59, v60, 16, v53, v54, v55);
          if (v56)
          {
            goto LABEL_12;
          }

          goto LABEL_18;
        }
      }

LABEL_20:
      v109 = v28;
      goto LABEL_21;
    }

LABEL_18:

    v86 = objc_msgSend_baseMaterial(self, v75, v76, v77, v82, v83, v84, v85, v78, v79, v80, v81);
    v87 = v86 == 0;

    if (!v87)
    {
      v5 = objc_msgSend_baseMaterial(self, v88, v89, v90, v95, v96, v97, v98, v91, v92, v93, v94);
      v109 = objc_msgSend_propertyNamed_(v5, v99, v4, v100, v105, v106, v107, v108, v101, v102, v103, v104);
LABEL_21:
      v110 = v109;

      goto LABEL_23;
    }
  }

  v110 = 0;
LABEL_23:

  return v110;
}

- (MDLMaterialProperty)propertyWithSemantic:(MDLMaterialSemantic)semantic
{
  v92 = *MEMORY[0x277D85DE8];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v5 = self->_userProperties;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v86, v91, v10, v11, v12, v13, 16, v7, v8, v9);
  if (v18)
  {
    v23 = *v87;
LABEL_3:
    v24 = 0;
    while (1)
    {
      if (*v87 != v23)
      {
        objc_enumerationMutation(v5);
      }

      v25 = *(*(&v86 + 1) + 8 * v24);
      if (v25[19] == semantic)
      {
        goto LABEL_19;
      }

      if (v18 == ++v24)
      {
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v14, &v86, v91, v19, v20, v21, v22, 16, v15, v16, v17);
        if (v18)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v5 = self->_builtinProperties;
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v26, &v82, v90, v30, v31, v32, v33, 16, v27, v28, v29);
  if (v38)
  {
    v43 = *v83;
LABEL_11:
    v44 = 0;
    while (1)
    {
      if (*v83 != v43)
      {
        objc_enumerationMutation(v5);
      }

      v25 = *(*(&v82 + 1) + 8 * v44);
      if (v25[19] == semantic)
      {
        break;
      }

      if (v38 == ++v44)
      {
        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v34, &v82, v90, v39, v40, v41, v42, 16, v35, v36, v37);
        if (v38)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

LABEL_19:
    v79 = v25;
    goto LABEL_20;
  }

LABEL_17:

  v56 = objc_msgSend_baseMaterial(self, v45, v46, v47, v52, v53, v54, v55, v48, v49, v50, v51, v82);
  v57 = v56 == 0;

  if (!v57)
  {
    v5 = objc_msgSend_baseMaterial(self, v58, v59, v60, v65, v66, v67, v68, v61, v62, v63, v64);
    v79 = objc_msgSend_propertyWithSemantic_(v5, v69, semantic, v70, v75, v76, v77, v78, v71, v72, v73, v74);
LABEL_20:
    v80 = v79;

    goto LABEL_21;
  }

  v80 = 0;
LABEL_21:

  return v80;
}

- (NSArray)propertiesWithSemantic:(MDLMaterialSemantic)semantic
{
  v119 = *MEMORY[0x277D85DE8];
  v14 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, semantic, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v15 = self->_userProperties;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v113, v118, v20, v21, v22, v23, 16, v17, v18, v19);
  if (v30)
  {
    v35 = *v114;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v114 != v35)
        {
          objc_enumerationMutation(v15);
        }

        v37 = *(*(&v113 + 1) + 8 * i);
        if (*(v37 + 152) == semantic)
        {
          objc_msgSend_addObject_(v14, v24, v37, v25, v31, v32, v33, v34, v26, v27, v28, v29);
        }
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v24, &v113, v118, v31, v32, v33, v34, 16, v27, v28, v29);
    }

    while (v30);
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v38 = self->_builtinProperties;
  v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v109, v117, v43, v44, v45, v46, 16, v40, v41, v42);
  if (v53)
  {
    v58 = *v110;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v110 != v58)
        {
          objc_enumerationMutation(v38);
        }

        v60 = *(*(&v109 + 1) + 8 * j);
        if (*(v60 + 152) == semantic)
        {
          objc_msgSend_addObject_(v14, v47, v60, v48, v54, v55, v56, v57, v49, v50, v51, v52, v109);
        }
      }

      v53 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v47, &v109, v117, v54, v55, v56, v57, 16, v50, v51, v52);
    }

    while (v53);
  }

  if (objc_msgSend_count(v14, v61, v62, v63, v68, v69, v70, v71, v64, v65, v66, v67) || (objc_msgSend_baseMaterial(self, v72, v73, v74, v79, v80, v81, v82, v75, v76, v77, v78), v84 = objc_claimAutoreleasedReturnValue(), v85 = v84 == 0, v84, v85))
  {
    v83 = v14;
  }

  else
  {
    v97 = objc_msgSend_baseMaterial(self, v86, v87, v88, v93, v94, v95, v96, v89, v90, v91, v92);
    v83 = objc_msgSend_propertiesWithSemantic_(v97, v98, semantic, v99, v104, v105, v106, v107, v100, v101, v102, v103);
  }

  return v83;
}

- (void)setProperty:(MDLMaterialProperty *)property
{
  v4 = property;
  if (v4)
  {
    v38 = v4;
    v16 = objc_msgSend_name(v4, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11);
    v27 = objc_msgSend_propertyNamed_(self, v17, v16, v18, v23, v24, v25, v26, v19, v20, v21, v22);

    if (v27)
    {
      objc_msgSend_setProperties_(v27, v28, v38, v29, v34, v35, v36, v37, v30, v31, v32, v33);
    }

    else
    {
      objc_msgSend_addObject_(self->_userProperties, v28, v38, v29, v34, v35, v36, v37, v30, v31, v32, v33);
    }

    v4 = v38;
  }
}

- (void)removeAllProperties
{
  self->_userProperties = objc_opt_new();

  MEMORY[0x2821F96F8]();
}

- (BidirectionalScatteringDistributionFunction)bsdf
{
  scatteringFunction = self->_scatteringFunction;
  if (!scatteringFunction)
  {
    v4 = objc_opt_new();
    objc_msgSend_setScatteringFunction_(self, v5, v4, v6, v11, v12, v13, v14, v7, v8, v9, v10);

    scatteringFunction = self->_scatteringFunction;
  }

  return scatteringFunction->_bsdf.__ptr_;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  var0 = state->var0;
  v28 = 0;
  if (var0 < objc_msgSend_count(self->_builtinProperties, a2, state, objects, v8, v9, v10, v11, count, v5, v6, v7) && count != 0)
  {
    v30 = var0;
    do
    {
      v31 = objc_msgSend_objectAtIndexedSubscript_(self->_builtinProperties, v17, v30, v19, v24, v25, v26, v27, v20, v21, v22, v23);
      objects[v28] = v31;

      ++v30;
      ++v28;
    }

    while (v30 < objc_msgSend_count(self->_builtinProperties, v32, v33, v34, v39, v40, v41, v42, v35, v36, v37, v38) && v28 < count);
  }

  for (i = var0 - objc_msgSend_count(self->_builtinProperties, v17, v18, v19, v24, v25, v26, v27, v20, v21, v22, v23); i < objc_msgSend_count(self->_userProperties, v44, v45, v46, v52, v53, v54, v55, v47, v48, v49, v50) && v28 < count; ++i)
  {
    v67 = objc_msgSend_objectAtIndexedSubscript_(self->_userProperties, v56, i, v57, v62, v63, v64, v65, v58, v59, v60, v61);
    objects[v28] = v67;

    ++v28;
  }

  if (count > v28)
  {
    bzero(&objects[v28], 8 * (count - v28));
  }

  bzero(&unk_27DF90E20, 0x400uLL);
  state->var1 = objects;
  state->var2 = &unk_27DF90E20;
  state->var0 += count;
  return v28;
}

- (MDLMaterialProperty)objectAtIndexedSubscript:(NSUInteger)idx
{
  if (objc_msgSend_count(self->_builtinProperties, a2, idx, v3, v8, v9, v10, v11, v4, v5, v6, v7) <= idx)
  {
    userProperties = self->_userProperties;
    v36 = idx - objc_msgSend_count(self->_builtinProperties, v14, v15, v16, v21, v22, v23, v24, v17, v18, v19, v20);
    objc_msgSend_objectAtIndexedSubscript_(userProperties, v37, v36, v38, v43, v44, v45, v46, v39, v40, v41, v42);
    goto LABEL_5;
  }

  if (objc_msgSend_count(self->_builtinProperties, v14, v15, v16, v21, v22, v23, v24, v17, v18, v19, v20) > idx)
  {
    objc_msgSend_objectAtIndexedSubscript_(self->_builtinProperties, v25, idx, v26, v31, v32, v33, v34, v27, v28, v29, v30);
    v47 = LABEL_5:;
    goto LABEL_7;
  }

  v47 = 0;
LABEL_7:

  return v47;
}

- (MDLMaterialProperty)objectForKeyedSubscript:(NSString *)name
{
  v10 = name;
  if (v10)
  {
    v15 = objc_msgSend_propertyNamed_(self, v4, v10, v5, v11, v12, v13, v14, v6, v7, v8, v9);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)encodeMaterialWithCoder:(id)coder allocator:(id)allocator
{
  coderCopy = coder;
  allocatorCopy = allocator;
  v18 = objc_msgSend_count(self->_userProperties, v7, v8, v9, v14, v15, v16, v17, v10, v11, v12, v13);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v19, v18, @"userProperties.count", v24, v25, v26, v27, v20, v21, v22, v23);
  if (v18 >= 1)
  {
    for (i = 0; i != v18; ++i)
    {
      v40 = objc_msgSend_objectAtIndexedSubscript_(self->_userProperties, v28, i, v30, v35, v36, v37, v38, v31, v32, v33, v34);
      v51 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v41, @"userProperties[%ld]", v42, v47, v48, v49, v50, v43, v44, v45, v46, i);
      objc_msgSend_encodeMaterialPropertyWithCoder_forKey_allocator_(v40, v52, coderCopy, v51, v56, v57, v58, v59, allocatorCopy, v53, v54, v55);
    }
  }

  v60 = objc_msgSend_count(self->_builtinProperties, v28, v29, v30, v35, v36, v37, v38, v31, v32, v33, v34);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v61, v60, @"builtinProperties.count", v66, v67, v68, v69, v62, v63, v64, v65);
  if (v60 >= 1)
  {
    for (j = 0; j != v60; ++j)
    {
      v81 = objc_msgSend_objectAtIndexedSubscript_(self->_builtinProperties, v70, j, v71, v76, v77, v78, v79, v72, v73, v74, v75);
      v92 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v82, @"builtinProperties[%ld]", v83, v88, v89, v90, v91, v84, v85, v86, v87, j);
      objc_msgSend_encodeMaterialPropertyWithCoder_forKey_allocator_(v81, v93, coderCopy, v92, v97, v98, v99, v100, allocatorCopy, v94, v95, v96);
    }
  }
}

+ (id)decodeMaterialWithCoder:(id)coder allocator:(id)allocator
{
  coderCopy = coder;
  allocatorCopy = allocator;
  v7 = objc_alloc_init(MDLMaterial);
  v24 = objc_msgSend_decodeIntegerForKey_(coderCopy, v8, @"userProperties.count", v9, v14, v15, v16, v17, v10, v11, v12, v13);
  if (v24 >= 1)
  {
    for (i = 0; i != v24; ++i)
    {
      v30 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v18, @"userProperties[%ld]", v19, v25, v26, v27, v28, v20, v21, v22, v23, i);
      v39 = objc_msgSend_decodeMaterialPropertyWithCoder_forKey_allocator_(MDLMaterialProperty, v31, coderCopy, v30, v35, v36, v37, v38, allocatorCopy, v32, v33, v34);

      objc_msgSend_addObject_(v7->_userProperties, v40, v39, v41, v46, v47, v48, v49, v42, v43, v44, v45);
    }
  }

  v56 = objc_msgSend_decodeIntegerForKey_(coderCopy, v18, @"builtinProperties.count", v19, v25, v26, v27, v28, v20, v21, v22, v23);
  if (v56 >= 1)
  {
    for (j = 0; j != v56; ++j)
    {
      v62 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v50, @"builtinProperties[%ld]", v51, v57, v58, v59, v60, v52, v53, v54, v55, j);
      v71 = objc_msgSend_decodeMaterialPropertyWithCoder_forKey_allocator_(MDLMaterialProperty, v63, coderCopy, v62, v67, v68, v69, v70, allocatorCopy, v64, v65, v66);

      objc_msgSend_addObject_(v7->_builtinProperties, v72, v71, v73, v78, v79, v80, v81, v74, v75, v76, v77);
    }
  }

  return v7;
}

@end