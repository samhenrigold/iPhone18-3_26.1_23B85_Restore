@interface UniKernelInternal
- (UniKernelInternal)initWithName:(id)name library:(id)library constants:(id)constants;
- (UniKernelInternal)initWithName:(id)name metalContext:(id)context coreImageLibrary:(id)library constants:(id)constants;
- (id)_dictToConstants:(id)constants functionConstants:(id)functionConstants name:(id)name;
@end

@implementation UniKernelInternal

- (id)_dictToConstants:(id)constants functionConstants:(id)functionConstants name:(id)name
{
  constantsCopy = constants;
  functionConstantsCopy = functionConstants;
  nameCopy = name;
  if (constantsCopy)
  {
    v9 = objc_alloc_init(MEMORY[0x29EDBB5A8]);
    v10 = MEMORY[0x29EDB8E00];
    v122 = constantsCopy;
    v13 = objc_msgSend_count(constantsCopy, v11, v12);
    v15 = objc_msgSend_dictionaryWithCapacity_(v10, v14, v13);
    v18 = objc_msgSend_set(MEMORY[0x29EDB8E20], v16, v17);
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v120 = functionConstantsCopy;
    v19 = functionConstantsCopy;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v154, v153, 16);
    if (v21)
    {
      v23 = v21;
      v24 = *v155;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v155 != v24)
          {
            objc_enumerationMutation(v19);
          }

          v26 = *(*(&v154 + 1) + 8 * i);
          v27 = objc_msgSend_objectForKeyedSubscript_(v19, v22, v26);
          if (objc_msgSend_required(v27, v28, v29))
          {
            objc_msgSend_addObject_(v18, v30, v26);
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v154, v153, 16);
      }

      while (v23);
    }

    v31 = MEMORY[0x29EDB8E50];
    v34 = objc_msgSend_allKeys(v19, v32, v33);
    v36 = objc_msgSend_setWithArray_(v31, v35, v34);

    v37 = MEMORY[0x29EDB8E50];
    v40 = objc_msgSend_allKeys(v122, v38, v39);
    v42 = objc_msgSend_setWithArray_(v37, v41, v40);

    v121 = v42;
    if ((objc_msgSend_isEqualToSet_(v36, v43, v42) & 1) == 0)
    {
      v45 = objc_msgSend_setWithSet_(MEMORY[0x29EDB8E20], v44, v36);
      v47 = objc_msgSend_minusSet_(v45, v46, v121);
      v48 = uni_logger_compile(v47);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        v50 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v49, @"Potentially missing keys = %@", v45);
        v51 = v50;
        *buf = 136315138;
        v152 = objc_msgSend_UTF8String(v51, v52, v53);
        _os_log_impl(&dword_295691000, v48, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
      }
    }

    v119 = v36;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v54 = v122;
    v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v147, v146, 16);
    if (v132)
    {
      v131 = *v148;
      v126 = v54;
      v127 = v18;
      v124 = v15;
      v125 = v9;
      v130 = v19;
      do
      {
        for (j = 0; j != v132; ++j)
        {
          if (*v148 != v131)
          {
            objc_enumerationMutation(v54);
          }

          v58 = *(*(&v147 + 1) + 8 * j);
          v59 = objc_msgSend_objectForKeyedSubscript_(v54, v56, v58);
          objc_msgSend_setObject_forKeyedSubscript_(v15, v60, v59, v58);

          v62 = objc_msgSend_objectForKeyedSubscript_(v19, v61, v58);

          if (v62)
          {
            v65 = objc_msgSend_objectForKeyedSubscript_(v19, v64, v58);
            v68 = objc_msgSend_type(v65, v66, v67);

            v145 = 0;
            v144 = 0;
            v69 = numComponentsForType(v68, &v144, &v145);
            v70 = v69;
            if (v69)
            {
              v71 = v144 == 0;
            }

            else
            {
              v71 = 1;
            }

            v72 = v71 || v145 == 0;
            if (v72 || (v69 = malloc_type_malloc(v145 * v69, 0x8D036B3CuLL), (v74 = v69) == 0))
            {
              v75 = uni_logger_compile(v69);
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                v94 = MEMORY[0x29EDBA0F8];
                v95 = v145 * v70;
                v129 = MTLDataTypeAsString(v68, v76);
                v97 = objc_msgSend_stringWithFormat_(v94, v96, @"Unable to allocate %lu bytes for %lu elements of type %@ for key %@", v95, v70, v129, v58);
                v98 = v97;
                v101 = objc_msgSend_UTF8String(v98, v99, v100);
                *buf = 136315138;
                v152 = v101;
                _os_log_error_impl(&dword_295691000, v75, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);

                v54 = v126;
                v18 = v127;
              }

              v74 = 0;
            }

            v77 = objc_msgSend_objectForKeyedSubscript_(v54, v73, v58);
            v78 = v77;
            if (v70 == 1)
            {
              if (!v77 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                sub_2956CE33C();
              }

              packSingleValue(v78, 0, 0, v144, v74);
            }

            else
            {
              if (!v77 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || objc_msgSend_count(v78, v81, v82) != v70)
              {
                sub_2956CE310();
              }

              v128 = v68;
              v142 = 0u;
              v143 = 0u;
              v140 = 0u;
              v141 = 0u;
              v83 = v78;
              v85 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v84, &v140, v139, 16);
              if (v85)
              {
                v86 = v85;
                v87 = 0;
                v88 = *v141;
                do
                {
                  v89 = 0;
                  v90 = v87;
                  do
                  {
                    if (*v141 != v88)
                    {
                      objc_enumerationMutation(v83);
                    }

                    v87 = v90 + 1;
                    packSingleValue(*(*(&v140 + 1) + 8 * v89++), v90++, 0, v144, v74);
                  }

                  while (v86 != v89);
                  v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v91, &v140, v139, 16);
                }

                while (v86);
              }

              v15 = v124;
              v9 = v125;
              v54 = v126;
              v18 = v127;
              v68 = v128;
            }

            objc_msgSend_setConstantValue_type_withName_(v9, v92, v74, v68, v58);
            free(v74);
            objc_msgSend_removeObject_(v18, v93, v58);
            v19 = v130;
          }

          else
          {
            v79 = uni_logger_compile(v63);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              v102 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v80, @"%@ is not a valid function constant for %@", v58, nameCopy);
              v103 = v102;
              v106 = objc_msgSend_UTF8String(v103, v104, v105);
              *buf = 136315138;
              v152 = v106;
              _os_log_error_impl(&dword_295691000, v79, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
            }
          }
        }

        v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v56, &v147, v146, 16);
      }

      while (v132);
    }

    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v107 = v18;
    v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v108, &v135, v134, 16);
    v111 = v107;
    functionConstantsCopy = v120;
    if (v109)
    {
      v112 = v109;
      v113 = *v136;
      while (2)
      {
        for (k = 0; k != v112; ++k)
        {
          if (*v136 != v113)
          {
            objc_enumerationMutation(v107);
          }

          if (*(*(&v135 + 1) + 8 * k))
          {

            v111 = uni_logger_compile(v116);
            if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
            {
              sub_2956CE368(nameCopy, v107);
            }

            goto LABEL_65;
          }
        }

        v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v110, &v135, v134, 16);
        if (v112)
        {
          continue;
        }

        break;
      }

      v111 = v107;
    }

LABEL_65:

    v133[0] = v9;
    v133[1] = v15;
    v115 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v117, v133, 2);

    constantsCopy = v122;
  }

  else
  {
    v115 = 0;
  }

  return v115;
}

- (UniKernelInternal)initWithName:(id)name metalContext:(id)context coreImageLibrary:(id)library constants:(id)constants
{
  nameCopy = name;
  contextCopy = context;
  libraryCopy = library;
  constantsCopy = constants;
  v54.receiver = self;
  v54.super_class = UniKernelInternal;
  v14 = [(UniKernelInternal *)&v54 init];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v15 = uni_activity(v14);
  v16 = _os_activity_create(&dword_295691000, "compile", v15, OS_ACTIVITY_FLAG_DEFAULT);

  os_activity_scope_enter(v16, &state);
  if (!v14)
  {
    goto LABEL_19;
  }

  v51 = libraryCopy;
  v19 = objc_msgSend_library(contextCopy, v17, v18);
  v21 = objc_msgSend_newFunctionWithName_(v19, v20, nameCopy);

  if (!constantsCopy)
  {
    objc_msgSend_setConstants_(v14, v22, 0);
    goto LABEL_7;
  }

  v24 = objc_msgSend_functionConstantsDictionary(v21, v22, v23);

  if (!v24)
  {
LABEL_7:
    v29 = 0;
    goto LABEL_8;
  }

  v27 = objc_msgSend_functionConstantsDictionary(v21, v25, v26);
  v29 = objc_msgSend__dictToConstants_functionConstants_name_(v14, v28, constantsCopy, v27, nameCopy);

  objc_msgSend_setConstants_(v14, v30, constantsCopy);
  if (!v29)
  {
LABEL_8:
    v31 = 0;
    v33 = MEMORY[0x29EDB8EA0];
    goto LABEL_9;
  }

  v31 = objc_msgSend_objectAtIndexedSubscript_(v29, v25, 0);
  v33 = objc_msgSend_objectAtIndexedSubscript_(v29, v32, 1);
LABEL_9:
  if (!v21)
  {
    sub_2956CE488();
  }

  if (v51)
  {
    v34 = objc_msgSend_kernelWithFunctionName_constants_(v51, v25, nameCopy, v33);
    objc_msgSend_setCk_(v14, v35, v34);
  }

  v52 = 0;
  v36 = objc_msgSend_computePipelineStateFor_constants_additionnalPipelineOptions_reflection_(contextCopy, v25, nameCopy, v31, 3, &v52);
  objc_msgSend_setMk_(v14, v37, v36);

  v40 = objc_msgSend_mk(v14, v38, v39);

  if (v40)
  {
    v43 = objc_msgSend_arguments(v52, v41, v42);
    objc_msgSend_setArguments_(v14, v44, v43);

    v47 = objc_msgSend_arguments(v14, v45, v46);
    if (!v47)
    {
      sub_2956CE3E4();
    }
  }

  else
  {

    v47 = uni_logger_compile(v48);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_2956CE410(v47, v49);
    }

    v14 = 0;
  }

  libraryCopy = v51;
LABEL_19:
  os_activity_scope_leave(&state);

  return v14;
}

- (UniKernelInternal)initWithName:(id)name library:(id)library constants:(id)constants
{
  constantsCopy = constants;
  libraryCopy = library;
  nameCopy = name;
  v13 = objc_msgSend_metalContext(libraryCopy, v11, v12);
  v16 = objc_msgSend_coreImageLibrary(libraryCopy, v14, v15);

  v18 = objc_msgSend_initWithName_metalContext_coreImageLibrary_constants_(self, v17, nameCopy, v13, v16, constantsCopy);
  return v18;
}

@end