@interface CSUTaxonomy
+ (id)taxonomyWithManifestPath:(id)path error:(id *)error;
- (BOOL)_hasVocabularyNamed:(id)named;
- (CSUTaxonomy)initWithManifestPath:(id)path error:(id *)error;
- (id).cxx_construct;
- (id)_vocabularyNamed:(id)named;
- (optional<csu::TaxonomyRelations>)relations;
- (unint64_t)countLabelsInVocabularyNamed:(id)named;
- (void)enumerateLabelsInTaxonomyUsingBlock:(id)block;
- (void)enumerateLabelsInVocabularyNamed:(id)named usingBlock:(id)block;
@end

@implementation CSUTaxonomy

- (CSUTaxonomy)initWithManifestPath:(id)path error:(id *)error
{
  v224 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v220 = &errorCopy;
  errorCopy = error;
  v219.receiver = self;
  v219.super_class = CSUTaxonomy;
  v11 = [(CSUTaxonomy *)&v219 init];
  if (!v11)
  {
    if (errorCopy)
    {
      v142 = objc_msgSend_errorForMemoryAllocationFailure(CSUError, v7, v8, v9, v10);
LABEL_41:
      v143 = 0;
      *errorCopy = v142;
      goto LABEL_59;
    }

LABEL_42:
    v143 = 0;
    goto LABEL_59;
  }

  if (!pathCopy)
  {
    if (errorCopy)
    {
      v142 = objc_msgSend_errorForInvalidArgument_named_(CSUError, v7, 0, @"taxonomy manifest path", v10);
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  v12 = MEMORY[0x1E695DF20];
  v203 = pathCopy;
  v13 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v7, pathCopy, v9, v10);
  v218 = 0;
  v16 = objc_msgSend_dictionaryWithContentsOfURL_error_(v12, v14, v13, &v218, v15);
  v202 = v218;
  manifest = v11->_manifest;
  v11->_manifest = v16;

  if (!v11->_manifest)
  {
    if (errorCopy)
    {
      v200 = objc_msgSend_stringByAppendingString_(@"Could not load taxonomy manifest file ", v18, pathCopy, v20, v21);
      v145 = objc_msgSend_errorWithCode_message_underlyingError_(CSUError, v144, 1, v200, v202);
      v143 = 0;
      *errorCopy = v145;
    }

    else
    {
      v143 = 0;
    }

    goto LABEL_58;
  }

  v22 = objc_msgSend_stringByDeletingLastPathComponent(pathCopy, v18, v19, v20, v21);
  v216[0] = MEMORY[0x1E69E9820];
  v216[1] = 3221225472;
  v216[2] = sub_1AC08C664;
  v216[3] = &unk_1E7968028;
  v199 = v22;
  v217 = v199;
  v204 = MEMORY[0x1AC5ACBA0](v216);
  v201 = objc_msgSend_objectForKeyedSubscript_(v11->_manifest, v23, @"formatVersion", v24, v25);
  v29 = objc_msgSend_objectForKeyedSubscript_(v11->_manifest, v26, @"name", v27, v28);
  name = v11->_name;
  v11->_name = v29;

  v34 = objc_msgSend_objectForKeyedSubscript_(v11->_manifest, v31, @"version", v32, v33);
  version = v11->_version;
  v11->_version = v34;

  v198 = objc_msgSend_objectForKeyedSubscript_(v11->_manifest, v36, @"size", v37, v38);
  v197 = objc_msgSend_objectForKeyedSubscript_(v11->_manifest, v39, @"vocabularies", v40, v41);
  if (!v201)
  {
    if (errorCopy)
    {
      v146 = objc_msgSend_errorWithCode_message_(CSUError, v42, 6, @"Invalid manifest file, does not have the format version", v44);
LABEL_53:
      v143 = 0;
      *errorCopy = v146;
      goto LABEL_56;
    }

LABEL_55:
    v143 = 0;
    goto LABEL_56;
  }

  if ((objc_msgSend_isEqualToString_(v201, v42, @"1.0.0", v43, v44) & 1) == 0)
  {
    v149 = objc_msgSend_stringByAppendingString_(@"Unhandled taxonomy manifest format version ", v45, v201, v47, v48);
    if (errorCopy)
    {
      v150 = objc_msgSend_errorWithCode_message_(CSUError, v147, 6, v149, v148);
      *errorCopy = v150;
    }

    goto LABEL_55;
  }

  if (!v11->_name || !v11->_version || !v198 || !v197)
  {
    if (errorCopy)
    {
      v146 = objc_msgSend_errorWithCode_message_(CSUError, v45, 6, @"Invalid manifest file, missing required information", v48);
      goto LABEL_53;
    }

    goto LABEL_55;
  }

  v49 = objc_msgSend_unsignedLongValue(v198, v45, v46, v47, v48);
  v11->_internalCount = v49;
  if (!v49)
  {
    sub_1AC08C6E0(&v220, @"Invalid manifest file, declared size of taxonomy is 0");
    goto LABEL_55;
  }

  v50 = objc_alloc(MEMORY[0x1E695DF90]);
  v55 = objc_msgSend_count(v197, v51, v52, v53, v54);
  v188 = objc_msgSend_initWithCapacity_(v50, v56, v55, v57, v58);
  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  v59 = v197;
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v59, v60, &v212, v223, 16);
  if (!v61)
  {
    goto LABEL_34;
  }

  v190 = v59;
  v191 = *v213;
  while (2)
  {
    v189 = v61;
    for (i = 0; i != v189; ++i)
    {
      if (*v213 != v191)
      {
        objc_enumerationMutation(v59);
      }

      v66 = *(*(&v212 + 1) + 8 * i);
      v193 = objc_msgSend_objectForKey_(v59, v62, v66, v63, v64);
      v195 = objc_msgSend_objectForKeyedSubscript_(v193, v67, @"file", v68, v69);
      v73 = objc_msgSend_objectForKeyedSubscript_(v193, v70, @"size", v71, v72);
      v77 = objc_msgSend_objectForKeyedSubscript_(v193, v74, @"visibleSize", v75, v76);
      v81 = objc_msgSend_objectForKeyedSubscript_(v193, v78, @"startIndex", v79, v80);
      v86 = v81;
      if (v195)
      {
        v87 = v73 == 0;
      }

      else
      {
        v87 = 1;
      }

      if (v87 || v81 == 0 || v77 == 0)
      {
        v152 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v82, @"Malformed properties for vocabulary named %@ in taxonomy %@", v84, v85, v66, v11->_name);
        sub_1AC08C6E0(&v220, v152);
LABEL_62:

LABEL_63:
        v143 = 0;
        v153 = v190;
        goto LABEL_78;
      }

      v93 = objc_msgSend_unsignedLongValue(v73, v82, v83, v84, v85);
      if (!v93)
      {
        v152 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v90, @"Empty vocabulary %@ in taxonomy %@", v91, v92, v66, v11->_name);
        sub_1AC08C6E0(&v220, v152);
        goto LABEL_62;
      }

      v94 = [CSUVocabulary alloc];
      v95 = (v204)[2](v204, v195);
      v100 = objc_msgSend_unsignedLongValue(v77, v96, v97, v98, v99);
      v105 = objc_msgSend_unsignedLongValue(v86, v101, v102, v103, v104);
      started = objc_msgSend_initWithName_labelFilePath_internalCount_visibleCount_startIndex_(v94, v106, v66, v95, v93, v100, v105);

      if (started)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v188, v108, started, v66, v111);
      }

      else if (errorCopy)
      {
        v112 = objc_msgSend_errorForMemoryAllocationFailure(CSUError, v108, v109, v110, v111);
        *errorCopy = v112;
      }

      if (!started)
      {
        goto LABEL_63;
      }

      v59 = v190;
    }

    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v190, v62, &v212, v223, 16);
    if (v61)
    {
      continue;
    }

    break;
  }

LABEL_34:

  v117 = objc_msgSend_copy(v188, v113, v114, v115, v116);
  vocabularies = v11->_vocabularies;
  v11->_vocabularies = v117;

  v123 = objc_msgSend_allKeys(v11->_vocabularies, v119, v120, v121, v122);
  v210[0] = MEMORY[0x1E69E9820];
  v210[1] = 3221225472;
  v210[2] = sub_1AC08C770;
  v210[3] = &unk_1E7968050;
  v124 = v11;
  v211 = v124;
  v128 = objc_msgSend_sortedArrayUsingComparator_(v123, v125, v210, v126, v127);
  vocabularyNames = v124->_vocabularyNames;
  v196 = v124;
  v124->_vocabularyNames = v128;

  v133 = objc_msgSend_objectForKeyedSubscript_(v11->_manifest, v130, @"relations", v131, v132);
  v194 = v133;
  if (v133)
  {
    v134 = v204[2](v204, v133);
    v135 = MEMORY[0x1E696AE40];
    v139 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v136, v134, v137, v138);
    v209 = objc_msgSend_propertyListWithData_options_format_error_(v135, v140, v139, 0, 0, errorCopy);

    if (v209)
    {
      sub_1AC08C848(&v196->_relations, &v209);

      v141 = v196;
      goto LABEL_66;
    }

    v143 = 0;
  }

  else
  {
    v141 = v124;
    if (v124->_relations.__engaged_)
    {

      v141 = v124;
      v124->_relations.__engaged_ = 0;
    }

LABEL_66:
    labelAttributes = v141->_labelAttributes;
    v141->_labelAttributes = 0;

    v158 = objc_msgSend_objectForKeyedSubscript_(v11->_manifest, v155, @"attributes", v156, v157);
    v134 = v158;
    v159 = v196;
    if (v158)
    {
      v192 = v158;
      v160 = objc_alloc(MEMORY[0x1E695DF90]);
      v165 = objc_msgSend_count(v134, v161, v162, v163, v164);
      v169 = objc_msgSend_initWithCapacity_(v160, v166, v165, v167, v168);
      v207 = 0u;
      v208 = 0u;
      v205 = 0u;
      v206 = 0u;
      v170 = v134;
      v175 = objc_msgSend_countByEnumeratingWithState_objects_count_(v170, v171, &v205, v222, 16);
      if (v175)
      {
        v176 = *v206;
        do
        {
          for (j = 0; j != v175; ++j)
          {
            if (*v206 != v176)
            {
              objc_enumerationMutation(v170);
            }

            v178 = *(*(&v205 + 1) + 8 * j);
            v179 = objc_msgSend_objectForKey_(v170, v172, v178, v173, v174);
            v180 = (v204)[2](v204, v179);
            objc_msgSend_setObject_forKeyedSubscript_(v169, v181, v180, v178, v182);
          }

          v175 = objc_msgSend_countByEnumeratingWithState_objects_count_(v170, v172, &v205, v222, 16);
        }

        while (v175);
      }

      v186 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x1E695DF20], v183, v169, v184, v185);
      v187 = v196->_labelAttributes;
      v196->_labelAttributes = v186;

      v134 = v192;
      v159 = v196;
    }

    v143 = v159;
  }

  v153 = v211;
LABEL_78:

LABEL_56:
LABEL_58:

  pathCopy = v203;
LABEL_59:

  return v143;
}

+ (id)taxonomyWithManifestPath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = [CSUTaxonomy alloc];
  v9 = objc_msgSend_initWithManifestPath_error_(v6, v7, pathCopy, error, v8);

  return v9;
}

- (id)_vocabularyNamed:(id)named
{
  v5 = objc_msgSend_objectForKey_(self->_vocabularies, a2, named, v3, v4);

  return v5;
}

- (BOOL)_hasVocabularyNamed:(id)named
{
  v5 = objc_msgSend__vocabularyNamed_(self, a2, named, v3, v4);
  v6 = v5 != 0;

  return v6;
}

- (unint64_t)countLabelsInVocabularyNamed:(id)named
{
  v5 = objc_msgSend__vocabularyNamed_(self, a2, named, v3, v4);
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_count(v5, v6, v7, v8, v9);

    return v11;
  }

  else
  {

    return 0;
  }
}

- (void)enumerateLabelsInVocabularyNamed:(id)named usingBlock:(id)block
{
  blockCopy = block;
  v9 = objc_msgSend__vocabularyNamed_(self, v6, named, v7, v8);
  v13 = v9;
  if (v9)
  {
    objc_msgSend__enumerateVisibleLabelsInVocabularyUsingBlock_(v9, v10, blockCopy, v11, v12);
  }
}

- (void)enumerateLabelsInTaxonomyUsingBlock:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_vocabularyNames;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v17, v25, 16);
  if (v6)
  {
    v7 = *v18;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1AC08CC6C;
      v14[3] = &unk_1E7968078;
      v15 = blockCopy;
      v16 = &v21;
      objc_msgSend_enumerateLabelsInVocabularyNamed_usingBlock_(self, v10, v9, v14, v11);
      LOBYTE(v9) = *(v22 + 24);

      if (v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v17, v25, 16);
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v21, 8);
}

- (optional<csu::TaxonomyRelations>)relations
{
  retstr->var0.__null_state_ = 0;
  retstr->__engaged_ = 0;
  if (LOBYTE(self[3].var0.__val_._count) == 1)
  {
    selfCopy = self;
    self = *&self[2].__engaged_;
    data = selfCopy[3].var0.__val_._data;
    retstr->var0.__val_._data = self;
    retstr->var0.__val_._count = data;
    retstr->__engaged_ = 1;
  }

  return self;
}

- (id).cxx_construct
{
  *(self + 64) = 0;
  *(self + 80) = 0;
  return self;
}

@end