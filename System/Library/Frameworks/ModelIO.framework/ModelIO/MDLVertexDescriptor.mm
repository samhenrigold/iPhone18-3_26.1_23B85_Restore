@interface MDLVertexDescriptor
+ (id)_decodeVertexDescriptorAttributesWithCoder:(id)coder;
+ (id)_decodeVertexDescriptorLayoutsWithCoder:(id)coder;
+ (id)decodeVertexDescriptorWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (MDLVertexAttribute)attributeNamed:(NSString *)name;
- (MDLVertexDescriptor)init;
- (MDLVertexDescriptor)initWithVertexDescriptor:(MDLVertexDescriptor *)vertexDescriptor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_encodeVertexDescriptorAttributesWithCoder:(id)coder;
- (void)_encodeVertexDescriptorLayoutsWithCoder:(id)coder;
- (void)addOrReplaceAttribute:(MDLVertexAttribute *)attribute;
- (void)debugPrintToFile:(__sFILE *)file;
- (void)encodeVertexDescriptorWithCoder:(id)coder;
- (void)removeAttributeNamed:(NSString *)name;
- (void)reset;
- (void)setPackedOffsets;
- (void)setPackedStrides;
@end

@implementation MDLVertexDescriptor

- (MDLVertexDescriptor)init
{
  v57.receiver = self;
  v57.super_class = MDLVertexDescriptor;
  v2 = [(MDLVertexDescriptor *)&v57 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB18]);
    v14 = objc_msgSend_initWithCapacity_(v3, v4, 31, v5, v10, v11, v12, v13, v6, v7, v8, v9);
    attributes = v2->_attributes;
    v2->_attributes = v14;

    v16 = 31;
    do
    {
      v17 = v2->_attributes;
      v18 = objc_opt_new();
      objc_msgSend_addObject_(v17, v19, v18, v20, v25, v26, v27, v28, v21, v22, v23, v24);

      --v16;
    }

    while (v16);
    v29 = objc_alloc(MEMORY[0x277CBEB18]);
    v40 = objc_msgSend_initWithCapacity_(v29, v30, 31, v31, v36, v37, v38, v39, v32, v33, v34, v35);
    layouts = v2->_layouts;
    v2->_layouts = v40;

    v42 = 31;
    do
    {
      v43 = v2->_layouts;
      v44 = objc_opt_new();
      objc_msgSend_addObject_(v43, v45, v44, v46, v51, v52, v53, v54, v47, v48, v49, v50);

      --v42;
    }

    while (v42);
    v55 = v2;
  }

  return v2;
}

- (MDLVertexDescriptor)initWithVertexDescriptor:(MDLVertexDescriptor *)vertexDescriptor
{
  v198 = *MEMORY[0x277D85DE8];
  v4 = vertexDescriptor;
  v195.receiver = self;
  v195.super_class = MDLVertexDescriptor;
  v5 = [(MDLVertexDescriptor *)&v195 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEB18]);
    v18 = objc_msgSend_attributes(v4, v7, v8, v9, v14, v15, v16, v17, v10, v11, v12, v13);
    v30 = objc_msgSend_count(v18, v19, v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
    v41 = objc_msgSend_initWithCapacity_(v6, v31, v30, v32, v37, v38, v39, v40, v33, v34, v35, v36);
    attributes = v5->_attributes;
    v5->_attributes = v41;

    v193 = 0u;
    v194 = 0u;
    v191 = 0u;
    v192 = 0u;
    v53 = objc_msgSend_attributes(v4, v43, v44, v45, 0, v50, v51, v52, v46, v47, v48, v49);
    v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, &v191, v197, v58, v59, v60, v61, 16, v55, v56, v57);
    if (v62)
    {
      v63 = *v192;
      do
      {
        v64 = 0;
        do
        {
          if (*v192 != v63)
          {
            objc_enumerationMutation(v53);
          }

          v65 = *(*(&v191 + 1) + 8 * v64);
          v66 = MEMORY[0x23EE7E350]();
          v77 = objc_msgSend_copyWithZone_(v65, v67, v66, v68, v73, v74, v75, v76, v69, v70, v71, v72);
          objc_msgSend_addObject_(v5->_attributes, v78, v77, v79, v84, v85, v86, v87, v80, v81, v82, v83);

          ++v64;
        }

        while (v62 != v64);
        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v88, &v191, v197, v92, v93, v94, v95, 16, v89, v90, v91);
      }

      while (v62);
    }

    v96 = objc_alloc(MEMORY[0x277CBEB18]);
    v108 = objc_msgSend_layouts(v4, v97, v98, v99, v104, v105, v106, v107, v100, v101, v102, v103);
    v120 = objc_msgSend_count(v108, v109, v110, v111, v116, v117, v118, v119, v112, v113, v114, v115);
    v131 = objc_msgSend_initWithCapacity_(v96, v121, v120, v122, v127, v128, v129, v130, v123, v124, v125, v126);
    layouts = v5->_layouts;
    v5->_layouts = v131;

    v189 = 0u;
    v190 = 0u;
    v187 = 0u;
    v188 = 0u;
    v143 = objc_msgSend_layouts(v4, v133, v134, v135, 0, v140, v141, v142, v136, v137, v138, v139, 0);
    v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(v143, v144, &v187, v196, v148, v149, v150, v151, 16, v145, v146, v147);
    if (v152)
    {
      v153 = *v188;
      do
      {
        v154 = 0;
        do
        {
          if (*v188 != v153)
          {
            objc_enumerationMutation(v143);
          }

          v155 = *(*(&v187 + 1) + 8 * v154);
          v156 = MEMORY[0x23EE7E350]();
          v167 = objc_msgSend_copyWithZone_(v155, v157, v156, v158, v163, v164, v165, v166, v159, v160, v161, v162);
          objc_msgSend_addObject_(v5->_layouts, v168, v167, v169, v174, v175, v176, v177, v170, v171, v172, v173);

          ++v154;
        }

        while (v152 != v154);
        v152 = objc_msgSend_countByEnumeratingWithState_objects_count_(v143, v178, &v187, v196, v182, v183, v184, v185, 16, v179, v180, v181);
      }

      while (v152);
    }
  }

  return v5;
}

- (MDLVertexAttribute)attributeNamed:(NSString *)name
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = name;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v15 = objc_msgSend_attributes(self, v5, v6, v7, 0, v12, v13, v14, v8, v9, v10, v11, 0);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v52, v56, v20, v21, v22, v23, 16, v17, v18, v19);
  if (v31)
  {
    v36 = *v53;
    while (2)
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v53 != v36)
        {
          objc_enumerationMutation(v15);
        }

        v38 = *(*(&v52 + 1) + 8 * i);
        if (objc_msgSend_format(v38, v24, v25, v26, v32, v33, v34, v35, v27, v28, v29, v30))
        {
          v39 = objc_msgSend_name(v38, v24, v25, v26, v32, v33, v34, v35, v27, v28, v29, v30);
          isEqualToString = objc_msgSend_isEqualToString_(v4, v40, v39, v41, v46, v47, v48, v49, v42, v43, v44, v45);

          if (isEqualToString)
          {
            v31 = v38;
            goto LABEL_12;
          }
        }
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v24, &v52, v56, v32, v33, v34, v35, 16, v28, v29, v30);
      if (v31)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v31;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MDLVertexDescriptor alloc];

  return objc_msgSend_initWithVertexDescriptor_(v4, v5, self, v6, v11, v12, v13, v14, v7, v8, v9, v10);
}

- (void)addOrReplaceAttribute:(MDLVertexAttribute *)attribute
{
  v161 = attribute;
  for (i = 0; ; i = v27 + 1)
  {
    v27 = i;
    if (objc_msgSend_count(self->_attributes, v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10) <= i)
    {
      break;
    }

    v28 = objc_msgSend_objectAtIndexedSubscript_(self->_attributes, v16, i, v18, v23, v24, v25, v26, v19, v20, v21, v22);
    objc_msgSend_time(v28, v29, v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
    v41 = v40.n128_f64[0];
    objc_msgSend_time(v161, v42, v43, v44, v40, v49, v50, v51, v45, v46, v47, v48);
    if (v41 != v58.n128_f64[0])
    {
      goto LABEL_8;
    }

    v62 = objc_msgSend_objectAtIndexedSubscript_(self->_attributes, v52, v27, v53, v58, v59, v60, v61, v54, v55, v56, v57);
    v80 = objc_msgSend_name(v62, v63, v64, v65, v70, v71, v72, v73, v66, v67, v68, v69);
    if (!v80)
    {

LABEL_8:
      continue;
    }

    v85 = objc_msgSend_objectAtIndexedSubscript_(self->_attributes, v74, v27, v75, v81, v82, v83, v84, v76, v77, v78, v79);
    v97 = objc_msgSend_name(v85, v86, v87, v88, v93, v94, v95, v96, v89, v90, v91, v92);
    v109 = objc_msgSend_name(v161, v98, v99, v100, v105, v106, v107, v108, v101, v102, v103, v104);
    isEqualToString = objc_msgSend_isEqualToString_(v97, v110, v109, v111, v116, v117, v118, v119, v112, v113, v114, v115);

    if (isEqualToString)
    {
      objc_msgSend_setObject_atIndexedSubscript_(self->_attributes, v4, v161, v27, v11, v12, v13, v14, v7, v8, v9, v10);
      v160 = v161;
      goto LABEL_15;
    }
  }

  v121 = 0;
  while (1)
  {
    v128 = objc_msgSend_count(self->_attributes, v16, v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);
    v133 = v121;
    attributes = self->_attributes;
    if (v128 <= v121)
    {
      break;
    }

    v135 = objc_msgSend_objectAtIndexedSubscript_(attributes, v122, v121, v123, v129, v130, v131, v132, v124, v125, v126, v127);
    v147 = objc_msgSend_format(v135, v136, v137, v138, v143, v144, v145, v146, v139, v140, v141, v142);

    v121 = v133 + 1;
    if (!v147)
    {
      objc_msgSend_setObject_atIndexedSubscript_(self->_attributes, v16, v161, v133, v23, v24, v25, v26, v19, v20, v21, v22);
      v160 = v161;
      goto LABEL_15;
    }
  }

  objc_msgSend_addObject_(attributes, v122, v161, v123, v129, v130, v131, v132, v124, v125, v126, v127);
  layouts = self->_layouts;
  v149 = objc_alloc_init(MDLVertexBufferLayout);
  objc_msgSend_addObject_(layouts, v150, v149, v151, v156, v157, v158, v159, v152, v153, v154, v155);

  v160 = v161;
LABEL_15:
}

- (void)removeAttributeNamed:(NSString *)name
{
  v104 = name;
  for (i = 0; objc_msgSend_count(self->_attributes, v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10) > i; ++i)
  {
    v26 = objc_msgSend_objectAtIndexedSubscript_(self->_attributes, v16, i, v17, v22, v23, v24, v25, v18, v19, v20, v21);
    v44 = objc_msgSend_name(v26, v27, v28, v29, v34, v35, v36, v37, v30, v31, v32, v33);
    if (v44)
    {
      v49 = objc_msgSend_objectAtIndexedSubscript_(self->_attributes, v38, i, v39, v45, v46, v47, v48, v40, v41, v42, v43);
      v61 = objc_msgSend_name(v49, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
      isEqualToString = objc_msgSend_isEqualToString_(v61, v62, v104, v63, v68, v69, v70, v71, v64, v65, v66, v67);

      if (!isEqualToString)
      {
        continue;
      }

      v73 = objc_msgSend_objectAtIndexedSubscript_(self->_attributes, v4, i, v6, v11, v12, v13, v14, v7, v8, v9, v10);
      objc_msgSend_setName_(v73, v74, &stru_284D18478, v75, v80, v81, v82, v83, v76, v77, v78, v79);

      v26 = objc_msgSend_objectAtIndexedSubscript_(self->_attributes, v84, i, v85, v90, v91, v92, v93, v86, v87, v88, v89);
      objc_msgSend_setFormat_(v26, v94, 0, v95, v100, v101, v102, v103, v96, v97, v98, v99);
    }
  }
}

- (void)reset
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = 31;
  v15 = objc_msgSend_initWithCapacity_(v3, v5, 31, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  attributes = self->_attributes;
  self->_attributes = v15;

  v17 = objc_alloc(MEMORY[0x277CBEB18]);
  v28 = objc_msgSend_initWithCapacity_(v17, v18, 31, v19, v24, v25, v26, v27, v20, v21, v22, v23);
  layouts = self->_layouts;
  self->_layouts = v28;

  do
  {
    v30 = self->_attributes;
    v31 = objc_opt_new();
    objc_msgSend_addObject_(v30, v32, v31, v33, v38, v39, v40, v41, v34, v35, v36, v37);

    v42 = self->_layouts;
    v43 = objc_opt_new();
    objc_msgSend_addObject_(v42, v44, v43, v45, v50, v51, v52, v53, v46, v47, v48, v49);

    --v4;
  }

  while (v4);
}

- (void)setPackedStrides
{
  v200 = *MEMORY[0x277D85DE8];
  v184 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  obj = self->_attributes;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v193, v199, v7, v8, v9, v10, 16, v4, v5, v6);
  if (v18)
  {
    v23 = *v194;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v194 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = MEMORY[0x277CCABB0];
        v26 = objc_msgSend_bufferIndex(*(*(&v193 + 1) + 8 * i), v11, v12, v13, v19, v20, v21, v22, v14, v15, v16, v17);
        v37 = objc_msgSend_numberWithUnsignedLong_(v25, v27, v26, v28, v33, v34, v35, v36, v29, v30, v31, v32);
        objc_msgSend_addObject_(v184, v38, v37, v39, v44, v45, v46, v47, v40, v41, v42, v43);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v193, v199, v19, v20, v21, v22, 16, v15, v16, v17);
    }

    while (v18);
  }

  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  obja = v184;
  v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v48, &v189, v198, v52, v53, v54, v55, 16, v49, v50, v51);
  if (v56)
  {
    v180 = *v190;
    do
    {
      v181 = v56;
      for (j = 0; j != v181; ++j)
      {
        if (*v190 != v180)
        {
          objc_enumerationMutation(obja);
        }

        v69 = *(*(&v189 + 1) + 8 * j);
        for (k = objc_msgSend_count(self->_layouts, v57, v58, v59, v64, v65, v66, v67, v60, v61, v62, v63, v180); ; ++k)
        {
          v82 = objc_msgSend_unsignedLongValue(v69, v70, v71, v72, v78, v79, v80, v81, v73, v74, v75, v76);
          layouts = self->_layouts;
          if (k >= v82)
          {
            break;
          }

          v95 = objc_alloc_init(MDLVertexBufferLayout);
          objc_msgSend_addObject_(layouts, v96, v95, v97, v102, v103, v104, v105, v98, v99, v100, v101);
        }

        v106 = objc_msgSend_unsignedLongValue(v69, v83, v84, v85, v90, v91, v92, v93, v86, v87, v88, v89);
        v117 = objc_msgSend_objectAtIndexedSubscript_(layouts, v107, v106, v108, v113, v114, v115, v116, v109, v110, v111, v112);
        v117[1] = 0;

        v187 = 0u;
        v188 = 0u;
        v185 = 0u;
        v186 = 0u;
        v118 = self->_attributes;
        v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v118, v119, &v185, v197, v123, v124, v125, v126, 16, v120, v121, v122);
        if (v134)
        {
          v139 = *v186;
          do
          {
            for (m = 0; m != v134; ++m)
            {
              if (*v186 != v139)
              {
                objc_enumerationMutation(v118);
              }

              v141 = *(*(&v185 + 1) + 8 * m);
              v142 = objc_msgSend_bufferIndex(v141, v127, v128, v129, v135, v136, v137, v138, v130, v131, v132, v133);
              if (v142 == objc_msgSend_unsignedLongValue(v69, v143, v144, v145, v150, v151, v152, v153, v146, v147, v148, v149))
              {
                v154 = objc_msgSend_format(v141, v127, v128, v129, v135, v136, v137, v138, v130, v131, v132, v133);
                v155 = sub_239E6FF8C(v154);
                v156 = self->_layouts;
                v168 = objc_msgSend_unsignedLongValue(v69, v157, v158, v159, v164, v165, v166, v167, v160, v161, v162, v163);
                v179 = objc_msgSend_objectAtIndexedSubscript_(v156, v169, v168, v170, v175, v176, v177, v178, v171, v172, v173, v174);
                v179[1] += v155;
              }
            }

            v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(v118, v127, &v185, v197, v135, v136, v137, v138, 16, v131, v132, v133);
          }

          while (v134);
        }
      }

      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v57, &v189, v198, v64, v65, v66, v67, 16, v61, v62, v63);
    }

    while (v56);
  }
}

- (void)setPackedOffsets
{
  v136 = *MEMORY[0x277D85DE8];
  v120 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  selfCopy = self;
  obj = self->_attributes;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v129, v135, v7, v8, v9, v10, 16, v4, v5, v6);
  if (v18)
  {
    v23 = *v130;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v130 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = MEMORY[0x277CCABB0];
        v26 = objc_msgSend_bufferIndex(*(*(&v129 + 1) + 8 * i), v11, v12, v13, v19, v20, v21, v22, v14, v15, v16, v17);
        v37 = objc_msgSend_numberWithUnsignedLong_(v25, v27, v26, v28, v33, v34, v35, v36, v29, v30, v31, v32);
        objc_msgSend_addObject_(v120, v38, v37, v39, v44, v45, v46, v47, v40, v41, v42, v43);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v129, v135, v19, v20, v21, v22, 16, v15, v16, v17);
    }

    while (v18);
  }

  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  obja = v120;
  v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v48, &v125, v134, v52, v53, v54, v55, 16, v49, v50, v51);
  if (v56)
  {
    v116 = *v126;
    do
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v126 != v116)
        {
          objc_enumerationMutation(obja);
        }

        v58 = *(*(&v125 + 1) + 8 * j);
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v59 = selfCopy->_attributes;
        v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v121, v133, v64, v65, v66, v67, 16, v61, v62, v63);
        if (v75)
        {
          v80 = 0;
          v81 = *v122;
          do
          {
            for (k = 0; k != v75; ++k)
            {
              if (*v122 != v81)
              {
                objc_enumerationMutation(v59);
              }

              v83 = *(*(&v121 + 1) + 8 * k);
              v84 = objc_msgSend_bufferIndex(v83, v68, v69, v70, v76, v77, v78, v79, v71, v72, v73, v74, v116);
              if (v84 == objc_msgSend_unsignedLongValue(v58, v85, v86, v87, v92, v93, v94, v95, v88, v89, v90, v91))
              {
                objc_msgSend_setOffset_(v83, v68, v80, v70, v76, v77, v78, v79, v71, v72, v73, v74);
                v107 = objc_msgSend_format(v83, v96, v97, v98, v103, v104, v105, v106, v99, v100, v101, v102);
                v80 += sub_239E6FF8C(v107);
              }
            }

            v75 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v68, &v121, v133, v76, v77, v78, v79, 16, v72, v73, v74);
          }

          while (v75);
        }
      }

      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v108, &v125, v134, v112, v113, v114, v115, 16, v109, v110, v111);
    }

    while (v56);
  }
}

- (void)debugPrintToFile:(__sFILE *)file
{
  v161 = *MEMORY[0x277D85DE8];
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  obj = self->_attributes;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v155, v160, v8, v9, v10, v11, 16, v5, v6, v7);
  if (v19)
  {
    v24 = 0;
    v25 = *v156;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v156 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v155 + 1) + 8 * i);
        v28 = objc_msgSend_null(MEMORY[0x277CBEB68], v12, v13, v14, v20, v21, v22, v23, v15, v16, v17, v18);
        if ((objc_msgSend_isEqual_(v27, v29, v28, v30, v35, v36, v37, v38, v31, v32, v33, v34) & 1) == 0)
        {
          v50 = objc_msgSend_format(v27, v39, v40, v41, v46, v47, v48, v49, v42, v43, v44, v45) == 0;

          if (v50)
          {
            goto LABEL_10;
          }

          v28 = objc_msgSend_name(v27, v12, v13, v14, v20, v21, v22, v23, v15, v16, v17, v18);
          v51 = v28;
          v62 = objc_msgSend_cStringUsingEncoding_(v28, v52, 4, v53, v58, v59, v60, v61, v54, v55, v56, v57);
          v74 = objc_msgSend_format(v27, v63, v64, v65, v70, v71, v72, v73, v66, v67, v68, v69);
          v75 = sub_239F1DDD8(v74);
          v87 = objc_msgSend_offset(v27, v76, v77, v78, v83, v84, v85, v86, v79, v80, v81, v82);
          v99 = objc_msgSend_bufferIndex(v27, v88, v89, v90, v95, v96, v97, v98, v91, v92, v93, v94);
          fprintf(file, "%lu %s %s off=%lu buf%lu\n", v24, v62, v75, v87, v99);
        }

LABEL_10:
        ++v24;
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v155, v160, v20, v21, v22, v23, 16, v16, v17, v18);
    }

    while (v19);
  }

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  obja = self->_layouts;
  v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v100, &v151, v159, v104, v105, v106, v107, 16, v101, v102, v103);
  if (v115)
  {
    v120 = 0;
    v121 = *v152;
    do
    {
      for (j = 0; j != v115; ++j)
      {
        if (*v152 != v121)
        {
          objc_enumerationMutation(obja);
        }

        v123 = *(*(&v151 + 1) + 8 * j);
        v124 = objc_msgSend_null(MEMORY[0x277CBEB68], v108, v109, v110, v116, v117, v118, v119, v111, v112, v113, v114);
        if (objc_msgSend_isEqual_(v123, v125, v124, v126, v131, v132, v133, v134, v127, v128, v129, v130))
        {
        }

        else
        {
          v146 = objc_msgSend_stride(v123, v135, v136, v137, v142, v143, v144, v145, v138, v139, v140, v141) == 0;

          if (!v146)
          {
            v147 = objc_msgSend_stride(v123, v108, v109, v110, v116, v117, v118, v119, v111, v112, v113, v114);
            fprintf(file, "%lu stride=%lu\n", v120, v147);
          }
        }

        ++v120;
      }

      v115 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v108, &v151, v159, v116, v117, v118, v119, 16, v112, v113, v114);
    }

    while (v115);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToArray = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (objc_msgSend_isEqualToArray_(self->_attributes, v6, v5[1], v7, v12, v13, v14, v15, v8, v9, v10, v11))
      {
        isEqualToArray = objc_msgSend_isEqualToArray_(self->_layouts, v16, v5[2], v17, v22, v23, v24, v25, v18, v19, v20, v21);
      }

      else
      {
        isEqualToArray = 0;
      }
    }

    else
    {
      isEqualToArray = 0;
    }
  }

  return isEqualToArray;
}

- (id)description
{
  v113 = *MEMORY[0x277D85DE8];
  v107 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v14 = objc_msgSend_attributes(self, v4, v5, v6, 0, v11, v12, v13, v7, v8, v9, v10);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v108, v112, v19, v20, v21, v22, 16, v16, v17, v18);
  if (v30)
  {
    v35 = *v109;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v109 != v35)
        {
          objc_enumerationMutation(v14);
        }

        v37 = *(*(&v108 + 1) + 8 * i);
        if (objc_msgSend_format(v37, v23, v24, v25, v31, v32, v33, v34, v26, v27, v28, v29))
        {
          objc_msgSend_addObject_(v107, v23, v37, v25, v31, v32, v33, v34, v26, v27, v28, v29);
          v49 = objc_msgSend_bufferIndex(v37, v38, v39, v40, v45, v46, v47, v48, v41, v42, v43, v44);
          v61 = objc_msgSend_layouts(self, v50, v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
          v72 = objc_msgSend_objectAtIndexedSubscript_(v61, v62, v49, v63, v68, v69, v70, v71, v64, v65, v66, v67);
          v83 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v73, v49, v74, v79, v80, v81, v82, v75, v76, v77, v78);
          objc_msgSend_setObject_forKeyedSubscript_(v3, v84, v72, v83, v89, v90, v91, v92, v85, v86, v87, v88);
        }
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v23, &v108, v112, v31, v32, v33, v34, 16, v27, v28, v29);
    }

    while (v30);
  }

  v93 = MEMORY[0x277CCACA8];
  v94 = objc_opt_class();
  v105 = objc_msgSend_stringWithFormat_(v93, v95, @"<%@: %p attributes:%@ layouts:%@>", v96, v101, v102, v103, v104, v97, v98, v99, v100, v94, self, v107, v3);

  return v105;
}

- (void)_encodeVertexDescriptorLayoutsWithCoder:(id)coder
{
  coderCopy = coder;
  v15 = objc_msgSend_layouts(self, v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v27 = objc_msgSend_count(v15, v16, v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);

  objc_msgSend_encodeInt32_forKey_(coderCopy, v28, v27, @"layouts.count", v33, v34, v35, v36, v29, v30, v31, v32);
  v37 = v27 << 32;
  if (v27 << 32)
  {
    v38 = 0;
    v39 = v37 >> 32;
    if (v39 <= 1)
    {
      v40 = 1;
    }

    else
    {
      v40 = v39;
    }

    do
    {
      v41 = objc_alloc(MEMORY[0x277CCACA8]);
      v52 = objc_msgSend_initWithFormat_(v41, v42, @"layouts[%zu]", v43, v48, v49, v50, v51, v44, v45, v46, v47, v38);
      v64 = objc_msgSend_layouts(self, v53, v54, v55, v60, v61, v62, v63, v56, v57, v58, v59);
      v75 = objc_msgSend_objectAtIndexedSubscript_(v64, v65, v38, v66, v71, v72, v73, v74, v67, v68, v69, v70);

      v87 = objc_msgSend_stride(v75, v76, v77, v78, v83, v84, v85, v86, v79, v80, v81, v82);
      v98 = objc_msgSend_stringByAppendingString_(v52, v88, @".stride", v89, v94, v95, v96, v97, v90, v91, v92, v93);
      objc_msgSend_encodeInteger_forKey_(coderCopy, v99, v87, v98, v104, v105, v106, v107, v100, v101, v102, v103);

      ++v38;
    }

    while (v40 != v38);
  }
}

- (void)_encodeVertexDescriptorAttributesWithCoder:(id)coder
{
  coderCopy = coder;
  v15 = objc_msgSend_attributes(self, v4, v5, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v27 = objc_msgSend_count(v15, v16, v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);

  objc_msgSend_encodeInt32_forKey_(coderCopy, v28, v27, @"attributes.count", v33, v34, v35, v36, v29, v30, v31, v32);
  if (v27 << 32)
  {
    v37 = 0;
    if (v27 <= 1)
    {
      v38 = 1;
    }

    else
    {
      v38 = v27;
    }

    do
    {
      v39 = objc_alloc(MEMORY[0x277CCACA8]);
      v50 = objc_msgSend_initWithFormat_(v39, v40, @"attributes[%zu]", v41, v46, v47, v48, v49, v42, v43, v44, v45, v37);
      v62 = objc_msgSend_attributes(self, v51, v52, v53, v58, v59, v60, v61, v54, v55, v56, v57);
      v73 = objc_msgSend_objectAtIndexedSubscript_(v62, v63, v37, v64, v69, v70, v71, v72, v65, v66, v67, v68);

      v85 = objc_msgSend_name(v73, v74, v75, v76, v81, v82, v83, v84, v77, v78, v79, v80);
      v96 = objc_msgSend_stringByAppendingString_(v50, v86, @".name", v87, v92, v93, v94, v95, v88, v89, v90, v91);
      objc_msgSend_encodeObject_forKey_(coderCopy, v97, v85, v96, v102, v103, v104, v105, v98, v99, v100, v101);

      v117 = objc_msgSend_bufferIndex(v73, v106, v107, v108, v113, v114, v115, v116, v109, v110, v111, v112);
      v128 = objc_msgSend_stringByAppendingString_(v50, v118, @".bufferIndex", v119, v124, v125, v126, v127, v120, v121, v122, v123);
      objc_msgSend_encodeInteger_forKey_(coderCopy, v129, v117, v128, v134, v135, v136, v137, v130, v131, v132, v133);

      v149 = objc_msgSend_format(v73, v138, v139, v140, v145, v146, v147, v148, v141, v142, v143, v144);
      v160 = objc_msgSend_stringByAppendingString_(v50, v150, @".format", v151, v156, v157, v158, v159, v152, v153, v154, v155);
      objc_msgSend_encodeInteger_forKey_(coderCopy, v161, v149, v160, v166, v167, v168, v169, v162, v163, v164, v165);

      v181 = objc_msgSend_offset(v73, v170, v171, v172, v177, v178, v179, v180, v173, v174, v175, v176);
      v192 = objc_msgSend_stringByAppendingString_(v50, v182, @".offset", v183, v188, v189, v190, v191, v184, v185, v186, v187);
      objc_msgSend_encodeInteger_forKey_(coderCopy, v193, v181, v192, v198, v199, v200, v201, v194, v195, v196, v197);

      objc_msgSend_time(v73, v202, v203, v204, v209, v210, v211, v212, v205, v206, v207, v208);
      v214 = v213.n128_u64[0];
      v224 = objc_msgSend_stringByAppendingString_(v50, v215, @".time", v216, v213, v221, v222, v223, v217, v218, v219, v220);
      v225.n128_u64[0] = v214;
      objc_msgSend_encodeDouble_forKey_(coderCopy, v226, v224, v227, v225, v232, v233, v234, v228, v229, v230, v231);

      ++v37;
    }

    while (v38 != v37);
  }
}

+ (id)_decodeVertexDescriptorAttributesWithCoder:(id)coder
{
  coderCopy = coder;
  v14 = objc_msgSend_decodeIntegerForKey_(coderCopy, v4, @"attributes.count", v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v15 = objc_alloc(MEMORY[0x277CBEB18]);
  v26 = objc_msgSend_initWithCapacity_(v15, v16, v14, v17, v22, v23, v24, v25, v18, v19, v20, v21);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      v28 = objc_alloc(MEMORY[0x277CCACA8]);
      v39 = objc_msgSend_initWithFormat_(v28, v29, @"attributes[%zu]", v30, v35, v36, v37, v38, v31, v32, v33, v34, i);
      v40 = objc_alloc_init(MDLVertexAttribute);
      v41 = objc_opt_class();
      v52 = objc_msgSend_stringByAppendingString_(v39, v42, @".name", v43, v48, v49, v50, v51, v44, v45, v46, v47);
      v62 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v53, v41, v52, v58, v59, v60, v61, v54, v55, v56, v57);
      objc_msgSend_setName_(v40, v63, v62, v64, v69, v70, v71, v72, v65, v66, v67, v68);

      v83 = objc_msgSend_stringByAppendingString_(v39, v73, @".bufferIndex", v74, v79, v80, v81, v82, v75, v76, v77, v78);
      v94 = objc_msgSend_decodeIntegerForKey_(coderCopy, v84, v83, v85, v90, v91, v92, v93, v86, v87, v88, v89);
      objc_msgSend_setBufferIndex_(v40, v95, v94, v96, v101, v102, v103, v104, v97, v98, v99, v100);

      v115 = objc_msgSend_stringByAppendingString_(v39, v105, @".format", v106, v111, v112, v113, v114, v107, v108, v109, v110);
      v126 = objc_msgSend_decodeIntegerForKey_(coderCopy, v116, v115, v117, v122, v123, v124, v125, v118, v119, v120, v121);
      objc_msgSend_setFormat_(v40, v127, v126, v128, v133, v134, v135, v136, v129, v130, v131, v132);

      v147 = objc_msgSend_stringByAppendingString_(v39, v137, @".offset", v138, v143, v144, v145, v146, v139, v140, v141, v142);
      v158 = objc_msgSend_decodeIntegerForKey_(coderCopy, v148, v147, v149, v154, v155, v156, v157, v150, v151, v152, v153);
      objc_msgSend_setOffset_(v40, v159, v158, v160, v165, v166, v167, v168, v161, v162, v163, v164);

      v179 = objc_msgSend_stringByAppendingString_(v39, v169, @".time", v170, v175, v176, v177, v178, v171, v172, v173, v174);
      objc_msgSend_decodeDoubleForKey_(coderCopy, v180, v179, v181, v186, v187, v188, v189, v182, v183, v184, v185);
      objc_msgSend_setTime_(v40, v190, v191, v192, v197, v198, v199, v200, v193, v194, v195, v196);

      objc_msgSend_addObject_(v26, v201, v40, v202, v207, v208, v209, v210, v203, v204, v205, v206);
    }
  }

  return v26;
}

+ (id)_decodeVertexDescriptorLayoutsWithCoder:(id)coder
{
  coderCopy = coder;
  v14 = objc_msgSend_decodeIntegerForKey_(coderCopy, v4, @"layouts.count", v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v15 = objc_alloc(MEMORY[0x277CBEB18]);
  v26 = objc_msgSend_initWithCapacity_(v15, v16, v14, v17, v22, v23, v24, v25, v18, v19, v20, v21);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      v28 = objc_alloc(MEMORY[0x277CCACA8]);
      v39 = objc_msgSend_initWithFormat_(v28, v29, @"layouts[%zu]", v30, v35, v36, v37, v38, v31, v32, v33, v34, i);
      v40 = objc_alloc_init(MDLVertexBufferLayout);
      v51 = objc_msgSend_stringByAppendingString_(v39, v41, @".stride", v42, v47, v48, v49, v50, v43, v44, v45, v46);
      v62 = objc_msgSend_decodeIntegerForKey_(coderCopy, v52, v51, v53, v58, v59, v60, v61, v54, v55, v56, v57);
      objc_msgSend_setStride_(v40, v63, v62, v64, v69, v70, v71, v72, v65, v66, v67, v68);

      objc_msgSend_addObject_(v26, v73, v40, v74, v79, v80, v81, v82, v75, v76, v77, v78);
    }
  }

  return v26;
}

- (void)encodeVertexDescriptorWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend__encodeVertexDescriptorAttributesWithCoder_(self, v4, coderCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  objc_msgSend__encodeVertexDescriptorLayoutsWithCoder_(self, v14, coderCopy, v15, v20, v21, v22, v23, v16, v17, v18, v19);
}

+ (id)decodeVertexDescriptorWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(MDLVertexDescriptor);
  v16 = objc_msgSend__decodeVertexDescriptorAttributesWithCoder_(self, v6, coderCopy, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  objc_msgSend_setAttributes_(v5, v17, v16, v18, v23, v24, v25, v26, v19, v20, v21, v22);

  v37 = objc_msgSend__decodeVertexDescriptorLayoutsWithCoder_(self, v27, coderCopy, v28, v33, v34, v35, v36, v29, v30, v31, v32);
  objc_msgSend_setLayouts_(v5, v38, v37, v39, v44, v45, v46, v47, v40, v41, v42, v43);

  return v5;
}

@end