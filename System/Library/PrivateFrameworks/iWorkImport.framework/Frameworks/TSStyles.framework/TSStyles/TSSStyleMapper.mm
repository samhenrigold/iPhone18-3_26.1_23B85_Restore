@interface TSSStyleMapper
- (TSSStyleMapper)initWithTargetStylesheet:(id)stylesheet;
- (id)_mappedStyleForStyle:(id)style depth:(unint64_t)depth;
- (id)createRootStyleForStyle:(id)style withPropertyMap:(id)map;
- (id)targetParentByContentTagMatchForStyle:(id)style;
- (id)targetParentByIdentifierExactMatchForStyle:(id)style;
- (id)targetParentByIdentifierPackageDescriptorFallbackMatchForStyle:(id)style;
- (id)targetParentByNameMatchForStyle:(id)style;
- (id)targetParentByPropertyMapMatchForUnidentifiedStyle:(id)style;
- (id)targetParentForStyle:(id)style;
- (void)dealloc;
- (void)popMappingContext:(id)context;
- (void)pushMappingContext:(id)context;
@end

@implementation TSSStyleMapper

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSSStyleMapper;
  [(TSSStyleMapper *)&v2 dealloc];
}

- (TSSStyleMapper)initWithTargetStylesheet:(id)stylesheet
{
  stylesheetCopy = stylesheet;
  if (!stylesheetCopy)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSSStyleMapper initWithTargetStylesheet:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyleMapper.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 89, 0, "Invalid parameter not satisfying: %{public}s", "inTargetStylesheet != nil");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v17.receiver = self;
  v17.super_class = TSSStyleMapper;
  v14 = [(TSSStyleMapper *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_targetStylesheet, stylesheet);
    v15->_forceMatchStyle = 0;
  }

  return v15;
}

- (void)pushMappingContext:(id)context
{
  contextCopy = context;
  mappingContext = self->_mappingContext;
  v8 = contextCopy;
  if (!mappingContext)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_mappingContext;
    self->_mappingContext = v6;

    contextCopy = v8;
    mappingContext = self->_mappingContext;
  }

  objc_msgSend_addObject_(mappingContext, contextCopy, contextCopy);
}

- (void)popMappingContext:(id)context
{
  contextCopy = context;
  mappingContext = self->_mappingContext;
  if (mappingContext && objc_msgSend_count(mappingContext, v4, v5))
  {
    objc_msgSend_removeLastObject(self->_mappingContext, v7, v8);
  }
}

- (id)createRootStyleForStyle:(id)style withPropertyMap:(id)map
{
  mapCopy = map;
  styleCopy = style;
  v9 = objc_msgSend_stylesheetForNewRootStyleFromStyle_(self, v8, styleCopy);
  v10 = objc_alloc(objc_opt_class());
  v13 = objc_msgSend_context(v9, v11, v12);
  v16 = objc_msgSend_name(styleCopy, v14, v15);

  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v10, v17, v13, v16, mapCopy, 0);
  objc_msgSend_addStyle_(v9, v19, isVariation);

  return isVariation;
}

- (id)targetParentByIdentifierExactMatchForStyle:(id)style
{
  v4 = objc_msgSend_rootIdentifiedAncestor(style, a2, style);
  v7 = objc_msgSend_styleIdentifier(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_targetStylesheet(self, v8, v9);
    v12 = objc_msgSend_cascadedStyleWithIdentifier_(v10, v11, v7);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)targetParentByIdentifierPackageDescriptorFallbackMatchForStyle:(id)style
{
  v4 = objc_msgSend_rootIdentifiedAncestor(style, a2, style);
  v7 = objc_msgSend_styleIdentifier(v4, v5, v6);

  if (v7 && sub_276CB4B00(v7, v8))
  {
    v11 = String(v7, v9);
    if (v11)
    {
      v14 = String(v7, v10);
      if (v14)
      {
        v15 = objc_msgSend_targetStylesheet(self, v12, v13);
        v16 = String(v11, 0, v14);
        v18 = objc_msgSend_cascadedStyleWithIdentifier_componentMask_(v15, v17, v16, 7);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)targetParentByContentTagMatchForStyle:(id)style
{
  styleCopy = style;
  v7 = objc_msgSend_rootIdentifiedAncestor(styleCopy, v5, v6);
  v10 = objc_msgSend_contentTag(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_targetStylesheet(self, v11, v12);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_276CB4E3C;
    v17[3] = &unk_27A6EF0D8;
    v18 = styleCopy;
    v19 = v10;
    v15 = objc_msgSend_firstCascadedStylePassingTest_(v13, v14, v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)targetParentByNameMatchForStyle:(id)style
{
  styleCopy = style;
  v7 = objc_msgSend_rootAncestor(styleCopy, v5, v6);
  v10 = objc_msgSend_name(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_targetStylesheet(self, v11, v12);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_276CB509C;
    v32[3] = &unk_27A6EF100;
    v14 = styleCopy;
    v33 = v14;
    v34 = v10;
    v16 = objc_msgSend_cascadedStylesPassingTest_(v13, v15, v32);

    if (objc_msgSend_count(v16, v17, v18) < 2 || (objc_msgSend_firstIdentifiedAncestor(v14, v19, v20), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend_styleIdentifier(v21, v22, v23), v24 = objc_claimAutoreleasedReturnValue(), v21, !v24) || (v30[0] = MEMORY[0x277D85DD0], v30[1] = 3221225472, v30[2] = sub_276CB5114, v30[3] = &unk_27A6EF128, v31 = v24, v25 = v24, objc_msgSend_tsu_firstObjectPassingTest_(v16, v26, v30), v27 = objc_claimAutoreleasedReturnValue(), v31, v25, !v27))
    {
      if (objc_msgSend_count(v16, v19, v20))
      {
        v27 = objc_msgSend_objectAtIndexedSubscript_(v16, v28, 0);
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)targetParentByPropertyMapMatchForUnidentifiedStyle:(id)style
{
  v4 = objc_msgSend_rootAncestor(style, a2, style);
  v7 = objc_msgSend_styleIdentifier(v4, v5, v6);

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v11 = objc_msgSend_targetStylesheet(self, v8, v9);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_276CB5248;
    v14[3] = &unk_27A6EF128;
    v15 = v4;
    v10 = objc_msgSend_firstCascadedStylePassingTest_(v11, v12, v14);
  }

  return v10;
}

- (id)targetParentForStyle:(id)style
{
  styleCopy = style;
  v7 = objc_msgSend_targetStylesheet(self, v5, v6);
  v9 = objc_msgSend_targetParentForStyleMappingByStyleMapper_intoStylesheet_(styleCopy, v8, self, v7);

  if (!v9)
  {
    v11 = objc_msgSend_targetParentByIdentifierExactMatchForStyle_(self, v10, styleCopy);
    if (!v11)
    {
      v11 = objc_msgSend_targetParentByIdentifierPackageDescriptorFallbackMatchForStyle_(self, v12, styleCopy);
      if (!v11)
      {
        v11 = objc_msgSend_targetParentByPropertyMapMatchForUnidentifiedStyle_(self, v13, styleCopy);
      }
    }

    v9 = v11;
  }

  return v9;
}

- (id)_mappedStyleForStyle:(id)style depth:(unint64_t)depth
{
  v153 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  if (!styleCopy)
  {
    v8 = 0;
    goto LABEL_54;
  }

  styleMap = self->_styleMap;
  if (styleMap)
  {
    v7 = styleMap;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277D81308]);
  }

  v9 = self->_styleMap;
  self->_styleMap = v7;

  v120 = objc_msgSend_stylesheet(styleCopy, v10, v11);
  if ((objc_msgSend_clientsMustRemap(self, v12, v13) & 1) == 0 && v120 == self->_targetStylesheet)
  {
    v8 = styleCopy;
  }

  else
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(self->_styleMap, v14, styleCopy);
    if (!v8)
    {
      v15 = objc_opt_new();
      v148[0] = MEMORY[0x277D85DD0];
      v148[1] = 3221225472;
      v148[2] = sub_276CB5C08;
      v148[3] = &unk_27A6EF150;
      v148[4] = self;
      depthCopy = depth;
      v117 = v15;
      v149 = v117;
      v16 = MEMORY[0x277CA0D60](v148);
      v121 = objc_msgSend_promiseForStyle_(TSSStylePromise, v17, styleCopy);
      objc_msgSend_setObject_forKeyedSubscript_(self->_styleMap, v18, v121, styleCopy);
      v22 = objc_msgSend_targetParentForStyle_(self, v19, styleCopy);
      if (v22)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v23 = MEMORY[0x277D81150];
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSSStyleMapper _mappedStyleForStyle:depth:]");
          v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyleMapper.m");
          v27 = TSUObjectReferenceDescription();
          v28 = TSUObjectReferenceDescription();
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v29, v24, v26, 313, 0, "Invalid target mapping style %@. Target style is: %@", v27, v28);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
        }
      }

      v32 = objc_msgSend_propertyMap(styleCopy, v20, v21);
      v145[0] = MEMORY[0x277D85DD0];
      v145[1] = 3221225472;
      v145[2] = sub_276CB5C80;
      v145[3] = &unk_27A6EE780;
      v116 = v16;
      v147 = v116;
      v146 = v32;
      v119 = v146;
      objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v146, v33, v145);
      if (!v22)
      {
        v41 = objc_msgSend_parent(styleCopy, v34, v35);
        if (!v41 || (shouldMapParentOfStyle = objc_msgSend_shouldMapParentOfStyle_(self, v40, styleCopy), v41, !shouldMapParentOfStyle) || (objc_msgSend_parent(styleCopy, v40, v43), v44 = objc_claimAutoreleasedReturnValue(), (*(v116 + 2))(v116, v44), v22 = objc_claimAutoreleasedReturnValue(), v44, !v22))
        {
          v8 = objc_msgSend_createRootStyleForStyle_withPropertyMap_(self, v40, styleCopy, v119);
          createdStyles = self->_createdStyles;
          if (!createdStyles)
          {
            v76 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v77 = self->_createdStyles;
            self->_createdStyles = v76;

            createdStyles = self->_createdStyles;
          }

          objc_msgSend_addObject_(createdStyles, v74, v8);
          v118 = 0;
          if (!v8)
          {
            goto LABEL_52;
          }

          goto LABEL_26;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v46 = MEMORY[0x277D81150];
          v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "[TSSStyleMapper _mappedStyleForStyle:depth:]");
          v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/styles/TSSStyleMapper.m");
          v50 = TSUObjectReferenceDescription();
          v51 = TSUObjectReferenceDescription();
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v52, v47, v49, 342, 0, "Invalid target mapping style %@. Target style is: %@", v50, v51);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54);
        }
      }

      if (self->_forceMatchStyle)
      {
        v8 = v22;
        v118 = v8;
        isVariation = objc_msgSend_isVariation(v8, v36, v37);
LABEL_27:
        if (!isVariation)
        {
          goto LABEL_44;
        }

        v137 = 0;
        v138 = &v137;
        v139 = 0x2020000000;
        v140 = 0;
        v80 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v39, v8);
        for (i = 0; i < objc_msgSend_count(v80, v78, v79); ++i)
        {
          if (v138[3])
          {
            goto LABEL_43;
          }

          v84 = objc_msgSend_objectAtIndexedSubscript_(v80, v82, i);
          v87 = objc_msgSend_overridePropertyMap(v84, v85, v86);
          v131[0] = MEMORY[0x277D85DD0];
          v131[1] = 3221225472;
          v131[2] = sub_276CB5E80;
          v131[3] = &unk_27A6EF1C8;
          v132 = v121;
          v88 = v84;
          v133 = v88;
          v134 = v8;
          v135 = v80;
          v136 = &v137;
          objc_msgSend_enumeratePropertiesAndObjectsUsingBlock_(v87, v89, v131);
        }

        if ((v138[3] & 1) == 0)
        {
          v115 = objc_msgSend_parent(v8, v82, v83);

          v90 = v80;
          v127 = 0u;
          v128 = 0u;
          v129 = 0u;
          v130 = 0u;
          v93 = objc_msgSend_allKeys(self->_styleMap, v91, v92);
          v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v94, &v127, v152, 16);
          if (v96)
          {
            v97 = *v128;
            do
            {
              for (j = 0; j != v96; ++j)
              {
                if (*v128 != v97)
                {
                  objc_enumerationMutation(v93);
                }

                v99 = *(*(&v127 + 1) + 8 * j);
                v100 = objc_msgSend_objectForKeyedSubscript_(self->_styleMap, v95, v99);
                if (objc_msgSend_containsObject_(v90, v101, v100))
                {
                  v104 = objc_msgSend_parent(v100, v102, v103);
                  objc_msgSend_setObject_forKeyedSubscript_(self->_styleMap, v105, v104, v99);
                }
              }

              v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v93, v95, &v127, v152, 16);
            }

            while (v96);
          }

          v8 = v115;
        }

LABEL_43:

        _Block_object_dispose(&v137, 8);
        if (v8)
        {
LABEL_44:
          objc_msgSend_setObject_forKeyedSubscript_(self->_styleMap, v39, v8, styleCopy);
          v125 = 0u;
          v126 = 0u;
          v123 = 0u;
          v124 = 0u;
          v106 = v117;
          v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v107, &v123, v151, 16);
          if (v109)
          {
            v110 = *v124;
            do
            {
              for (k = 0; k != v109; ++k)
              {
                if (*v124 != v110)
                {
                  objc_enumerationMutation(v106);
                }

                objc_msgSend_addPromisee_(*(*(&v123 + 1) + 8 * k), v108, v8);
              }

              v109 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v108, &v123, v151, 16);
            }

            while (v109);
          }

          objc_msgSend_fulfillWithStyle_(v121, v112, v8);
          objc_msgSend_copyAuxiliaryInformationToMigratedStyle_(styleCopy, v113, v8);
        }

        goto LABEL_52;
      }

      v55 = objc_opt_class();
      v58 = objc_msgSend_properties(v55, v56, v57);
      objc_msgSend_filterWithProperties_(v119, v59, v58);
      v60 = objc_opt_class();
      v63 = objc_msgSend_propertiesAllowingNSNull(v60, v61, v62);
      v141[0] = MEMORY[0x277D85DD0];
      v141[1] = 3221225472;
      v141[2] = sub_276CB5DA0;
      v141[3] = &unk_27A6EF1A0;
      v118 = v22;
      v142 = v118;
      v64 = styleCopy;
      v143 = v64;
      v65 = v119;
      v144 = v65;
      objc_msgSend_enumeratePropertiesUsingBlock_(v63, v66, v141);

      objc_msgSend_mapNonDefaultPropertyOverridesForParentStyle_propertyMap_(v64, v67, v118, v65);
      v70 = objc_msgSend_targetStylesheet(self, v68, v69);
      v8 = objc_msgSend_variationOfStyle_propertyMap_(v70, v71, v118, v65);

      if (!v8)
      {
LABEL_52:

        goto LABEL_53;
      }

LABEL_26:
      isVariation = objc_msgSend_isVariation(v8, v72, v73);
      goto LABEL_27;
    }
  }

LABEL_53:

LABEL_54:

  return v8;
}

@end