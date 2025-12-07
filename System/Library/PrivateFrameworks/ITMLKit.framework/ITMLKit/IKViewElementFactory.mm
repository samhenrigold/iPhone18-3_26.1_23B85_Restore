@interface IKViewElementFactory
+ (BOOL)elementsForDocumentElement:(id)element context:(id)context;
+ (BOOL)isDependentByTagName:(id)name;
+ (Class)elementClassByTagName:(id)name;
+ (void)initialize;
+ (void)registerClass:(Class)class forElementName:(id)name elementType:(unint64_t)type dependent:(BOOL)dependent;
- (Class)elementClassByTagName:(id)name;
- (IKViewElementFactory)initWithElementRegistry:(id)registry;
- (id)elementForDOMElement:(id)element parent:(id)parent;
- (unint64_t)elementTypeByTagName:(id)name;
@end

@implementation IKViewElementFactory

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = sClassMap;
    sClassMap = v2;

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = sTypeMap_0;
    sTypeMap_0 = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = sDependentMap;
    sDependentMap = v6;

    [IKViewElementFactory registerClass:objc_opt_class() forElementName:@"head" elementType:47];
    [IKViewElementFactory registerClass:objc_opt_class() forElementName:@"img" elementType:49];
    [IKViewElementFactory registerClass:objc_opt_class() forElementName:@"text" elementType:138];
    v8 = objc_opt_class();

    [IKViewElementFactory registerClass:v8 forElementName:@"span" elementType:138];
  }
}

- (IKViewElementFactory)initWithElementRegistry:(id)registry
{
  registryCopy = registry;
  v9.receiver = self;
  v9.super_class = IKViewElementFactory;
  v6 = [(IKViewElementFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_elementRegistry, registry);
  }

  return v7;
}

+ (void)registerClass:(Class)class forElementName:(id)name elementType:(unint64_t)type dependent:(BOOL)dependent
{
  dependentCopy = dependent;
  nameCopy = name;
  v10 = nameCopy;
  if (class)
  {
    v15 = nameCopy;
    nameCopy = [nameCopy length];
    v10 = v15;
    if (type)
    {
      if (nameCopy)
      {
        [sClassMap setObject:class forKey:v15];
        v11 = sTypeMap_0;
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
        [v11 setObject:v12 forKey:v15];

        v13 = sDependentMap;
        v14 = [MEMORY[0x277CCABB0] numberWithBool:dependentCopy];
        [v13 setObject:v14 forKey:v15];

        v10 = v15;
      }
    }
  }

  MEMORY[0x2821F96F8](nameCopy, v10);
}

+ (Class)elementClassByTagName:(id)name
{
  nameCopy = name;
  v4 = +[IKAppContext currentAppContext];
  viewElementRegistry = [v4 viewElementRegistry];

  if (viewElementRegistry)
  {
    v6 = [viewElementRegistry elementClassByTagName:nameCopy];

    v7 = v6;
  }

  else
  {
    v7 = [sClassMap objectForKeyedSubscript:nameCopy];
  }

  return v7;
}

+ (BOOL)isDependentByTagName:(id)name
{
  nameCopy = name;
  v4 = +[IKAppContext currentAppContext];
  viewElementRegistry = [v4 viewElementRegistry];

  if (viewElementRegistry)
  {
    bOOLValue = [viewElementRegistry isDependentByTagName:nameCopy];
  }

  else
  {
    v7 = [sDependentMap objectForKeyedSubscript:nameCopy];

    bOOLValue = [v7 BOOLValue];
    nameCopy = v7;
  }

  return bOOLValue;
}

- (Class)elementClassByTagName:(id)name
{
  elementRegistry = self->_elementRegistry;
  if (elementRegistry)
  {
    v4 = [(IKViewElementRegistry *)elementRegistry elementClassByTagName:name];
  }

  else
  {
    v4 = [sClassMap objectForKeyedSubscript:name];
  }

  return v4;
}

- (unint64_t)elementTypeByTagName:(id)name
{
  elementRegistry = self->_elementRegistry;
  if (elementRegistry)
  {

    return [(IKViewElementRegistry *)elementRegistry elementTypeByTagName:name];
  }

  else
  {
    v6 = [sTypeMap_0 objectForKeyedSubscript:name];
    unsignedIntegerValue = [v6 unsignedIntegerValue];

    return unsignedIntegerValue;
  }
}

+ (BOOL)elementsForDocumentElement:(id)element context:(id)context
{
  v99 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  contextCopy = context;
  tagName = [elementCopy tagName];
  v8 = [tagName isEqualToString:@"document"];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_90;
  }

  v79 = tagName;
  v80 = v8;
  v81 = contextCopy;
  v82 = elementCopy;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  childElements = [elementCopy childElements];
  v11 = [childElements countByEnumeratingWithState:&v93 objects:v98 count:16];
  if (v11)
  {
    v12 = v11;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v13 = 0;
    v14 = *v94;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v94 != v14)
        {
          objc_enumerationMutation(childElements);
        }

        v16 = *(*(&v93 + 1) + 8 * i);
        if (v13 || ([*(*(&v93 + 1) + 8 * i) tagName], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", @"head"), v17, (v18 & 1) == 0))
        {
          if (v86 || ([v16 tagName], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", @"navigationBar"), v20, (v21 & 1) == 0))
          {
            if (v85 || ([v16 tagName], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", @"toolbar"), v22, (v23 & 1) == 0))
            {
              v19 = v16;
              if (v87)
              {
                continue;
              }

              goto LABEL_18;
            }

            v85 = v16;
          }

          else
          {
            v86 = v16;
          }

          v19 = v87;
        }

        else
        {
          v19 = v87;
          v13 = v16;
        }

LABEL_18:
        v24 = v16;
        v87 = v19;
      }

      v12 = [childElements countByEnumeratingWithState:&v93 objects:v98 count:16];
      if (!v12)
      {
        goto LABEL_23;
      }
    }
  }

  v85 = 0;
  v86 = 0;
  v87 = 0;
  v13 = 0;
LABEL_23:

  elementCopy = v82;
  jsNodeData = [v82 jsNodeData];
  v84 = [IKViewElement evaluateElementUpdateType:?];
  v25 = v13;
  jsNodeData2 = [v13 jsNodeData];
  contextCopy = v81;
  headViewElement = [v81 headViewElement];
  v83 = v84 != 0;
  if (headViewElement || !v13)
  {
    headViewElement2 = [v81 headViewElement];
    if (headViewElement2)
    {
      v30 = v13 == 0;
    }

    else
    {
      v30 = 0;
    }

    isUpdated = v30;
    if (v13)
    {
      if ([jsNodeData2 isSubtreeUpdated] & 1) != 0 || (objc_msgSend(jsNodeData2, "isChildrenUpdated"))
      {
        isUpdated = 1;
      }

      else
      {
        isUpdated = [jsNodeData2 isUpdated];
      }
    }
  }

  else
  {
    isUpdated = 1;
  }

  templateViewElement = [v81 templateViewElement];
  elementName = [templateViewElement elementName];
  tagName2 = [v87 tagName];
  v34 = [elementName isEqualToString:tagName2];

  v77 = jsNodeData2;
  v76 = v34;
  if ((v84 | 4) == 4)
  {
    goto LABEL_39;
  }

  if ((isUpdated | v34 ^ 1))
  {
    v83 = (v84 != 0) & (isUpdated | v34 ^ 1);
LABEL_39:
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    childElements2 = [v13 childElements];
    v36 = [childElements2 countByEnumeratingWithState:&v89 objects:v97 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = 0;
      v39 = *v90;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v90 != v39)
          {
            objc_enumerationMutation(childElements2);
          }

          v41 = *(*(&v89 + 1) + 8 * j);
          tagName3 = [v41 tagName];
          v43 = [tagName3 isEqualToString:@"style"];

          if (v43)
          {
            textContent = [v41 textContent];
            v45 = textContent;
            if (v38)
            {
              v46 = [v38 stringByAppendingString:textContent];

              v38 = v46;
            }

            else
            {
              v38 = textContent;
            }
          }
        }

        v37 = [childElements2 countByEnumeratingWithState:&v89 objects:v97 count:16];
      }

      while (v37);
    }

    else
    {
      v38 = 0;
    }

    v47 = +[IKAppContext currentAppContext];
    if ([v47 appUsesDefaultStyleSheets])
    {
      tagName4 = [v87 tagName];
      v49 = [IKTemplateStyleSheet styleSheetForTemplateName:tagName4];
    }

    else
    {
      v49 = 0;
    }

    contextCopy = v81;
    elementCopy = v82;
    v25 = v13;

    v50 = [IKViewElementStyleFactory styleFactoryWithMarkup:v38 styleSheet:v49];
    [v81 setStyleFactory:v50];

    goto LABEL_58;
  }

  v83 = 0;
LABEL_58:
  styleFactory = [contextCopy styleFactory];
  v52 = [IKViewElementFactory alloc];
  v53 = +[IKAppContext currentAppContext];
  viewElementRegistry = [v53 viewElementRegistry];
  v55 = [(IKViewElementFactory *)v52 initWithElementRegistry:viewElementRegistry];

  [(IKViewElementFactory *)v55 setSparse:v84 != 0];
  [(IKViewElementFactory *)v55 setStyleFactory:styleFactory];
  if (v25)
  {
    if (v83)
    {
      jsNodeData3 = [v25 jsNodeData];
      [jsNodeData3 setUpdated:1];
    }

    v57 = [(IKViewElementFactory *)v55 elementForDOMElement:v25 parent:0];
    [contextCopy setHeadViewElement:v57];
  }

  if (v86)
  {
    if (v83)
    {
      jsNodeData4 = [v86 jsNodeData];
      [jsNodeData4 setUpdated:1];

      v59 = [(IKViewElementFactory *)v55 elementForDOMElement:v86 parent:0];
      [v59 disperseUpdateType:2];
    }

    else
    {
      v59 = [(IKViewElementFactory *)v55 elementForDOMElement:v86 parent:0];
    }

    [contextCopy setNavigationBarViewElement:v59];
  }

  if (v85)
  {
    if (v83)
    {
      jsNodeData5 = [v85 jsNodeData];
      [jsNodeData5 setUpdated:1];

      v61 = [(IKViewElementFactory *)v55 elementForDOMElement:v85 parent:0];
      [v61 disperseUpdateType:2];
    }

    else
    {
      v61 = [(IKViewElementFactory *)v55 elementForDOMElement:v85 parent:0];
    }

    [contextCopy setToolBarViewElement:v61];
  }

  if (v83)
  {
    jsNodeData6 = [v87 jsNodeData];
    [jsNodeData6 setUpdated:1];
  }

  if (!v84)
  {
    jsNodeData7 = [v87 jsNodeData];
    [jsNodeData7 setDataResolved:0];

    jsNodeData8 = [v87 jsNodeData];
    [jsNodeData8 setPrototypesResolved:0];

    jsNodeData9 = [v87 jsNodeData];
    [jsNodeData9 setRulesParsed:0];
  }

  v66 = ITMLKitGetLogObject(3);
  v67 = ITMLKitGetLogObject(3);
  v68 = os_signpost_id_make_with_pointer(v67, &stru_2866C1E60);

  if (v68 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2549A4000, v66, OS_SIGNPOST_INTERVAL_BEGIN, v68, "DOMParsing", &unk_254A72FF2, buf, 2u);
  }

  v69 = [(IKViewElementFactory *)v55 elementForDOMElement:v87 parent:0];
  v70 = ITMLKitGetLogObject(3);
  v71 = ITMLKitGetLogObject(3);
  v72 = os_signpost_id_make_with_pointer(v71, &stru_2866C1E60);

  if (v72 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2549A4000, v70, OS_SIGNPOST_INTERVAL_END, v72, "DOMParsing", &unk_254A72FF2, buf, 2u);
  }

  if (v83)
  {
    [v69 disperseUpdateType:2];
  }

  [contextCopy setTemplateViewElement:v69];
  v73 = 4;
  if (v76)
  {
    v73 = 1;
  }

  if (v84)
  {
    v74 = v73;
  }

  else
  {
    v74 = 0;
  }

  [contextCopy setUpdateType:v74];

  v9 = v80;
  tagName = v79;
LABEL_90:

  return v9;
}

- (id)elementForDOMElement:(id)element parent:(id)parent
{
  v51 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  parentCopy = parent;
  if (!elementCopy)
  {
    goto LABEL_6;
  }

  tagName = [elementCopy tagName];
  if ([tagName isEqualToString:@"placeholder"])
  {
    goto LABEL_5;
  }

  tagName2 = [elementCopy tagName];
  if ([tagName2 isEqualToString:@"prototypes"])
  {

LABEL_5:
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  tagName3 = [elementCopy tagName];
  v13 = [tagName3 isEqualToString:@"rules"];

  if (v13)
  {
    goto LABEL_6;
  }

  parsingFlags = self->_parsingFlags;
  v15 = 8;
  if ((parsingFlags & 8) != 0)
  {
    v16 = self->_parsingFlags;
  }

  else
  {
    if ([elementCopy _isPrototypeElement])
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    v16 = self->_parsingFlags;
  }

  *&self->_parsingFlags = v16 & 0xF7 | v15;
  v17 = v16 & (v15 == 0);
  jsNodeData = [elementCopy jsNodeData];
  v19 = jsNodeData;
  if (v17 != 1 || ([jsNodeData containsUpdates] & 1) != 0 || (*&self->_parsingFlags & 6) != 0)
  {
    v20 = parsingFlags & 8;
    tagName4 = [elementCopy tagName];
    v22 = [(IKViewElementFactory *)self elementClassByTagName:tagName4];
    if (v22)
    {
      v23 = v22;
      if ((*&self->_parsingFlags & 0xA) == 2)
      {
        [v19 setUpdated:1];
      }

      v24 = objc_autoreleasePoolPush();
      [(objc_class *)v23 willParseDOMElement:elementCopy];
      objc_autoreleasePoolPop(v24);
      v25 = self->_parsingFlags;
      v26 = v25 & 2;
      if (v17)
      {
        isUpdated = [v19 isUpdated];
        v28 = 2;
        if ((isUpdated & 1) == 0 && (v25 & 2) == 0)
        {
          if ([(objc_class *)v23 shouldParseChildDOMElements])
          {
            v28 = 0;
          }

          else
          {
            v28 = 2;
          }
        }

        v25 = self->_parsingFlags;
        *&self->_parsingFlags = v25 & 0xFD | v28;
        if ([v19 isChildrenUpdated])
        {
          v29 = 4;
        }

        else
        {
          v29 = 0;
        }

        v30 = self->_parsingFlags;
      }

      else
      {
        v29 = 0;
        v30 = v25 & 0xFD;
      }

      v33 = v25 & 4;
      *&self->_parsingFlags = v30 & 0xFB | v29;
      v34 = [[v23 alloc] initWithDOMElement:elementCopy parent:parentCopy elementFactory:self];
      v10 = v34;
      if (!v17 || (v35 = self->_parsingFlags, (v35 & 2) != 0))
      {
        v42 = v33;
        v43 = v26;
        v44 = tagName4;
        v45 = v19;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        features = [v34 features];
        v37 = [features countByEnumeratingWithState:&v46 objects:v50 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v47;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v47 != v39)
              {
                objc_enumerationMutation(features);
              }

              v41 = *(*(&v46 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v41 migrateToViewElement:v10];
              }
            }

            v38 = [features countByEnumeratingWithState:&v46 objects:v50 count:16];
          }

          while (v38);
        }

        v19 = v45;
        v35 = self->_parsingFlags;
        tagName4 = v44;
        v33 = v42;
        v26 = v43;
      }

      v32 = v33 | v26 | v35 & 0xF9;
    }

    else
    {
      v31 = ITMLKitGetLogObject(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [IKViewElementFactory elementForDOMElement:tagName4 parent:v31];
      }

      v10 = 0;
      v32 = self->_parsingFlags;
    }

    *&self->_parsingFlags = v32 & 0xF7 | v20;
  }

  else
  {
    v10 = 0;
  }

LABEL_7:

  return v10;
}

@end