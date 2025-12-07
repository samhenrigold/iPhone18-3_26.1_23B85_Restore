@interface TDThemeSchema
+ (BOOL)loadThemeConstantsForEntity:(id)entity inContext:(id)context;
- (BOOL)_renditionKey:(const _renditionkeytoken *)key isEqualToKeyIgnoringLook:(const _renditionkeytoken *)look;
- (TDThemeSchema)initWithThemeDocument:(id)document;
- (void)_addSchemaPartDefinitionsForStandardElement:(id *)element withElement:(id)withElement;
- (void)_loadConstantForEntity:(id)entity withDescriptor:(const _themeconstant *)descriptor;
- (void)_sanityCheckColorNamesAndUpdateIfNecessary;
- (void)_sanityCheckEffectRenditionsAndUpdateIfNecessary;
- (void)_sanityCheckMetafontSizeSelectorsAndUpdateIfNecessary;
- (void)_sanityCheckMicaRenditionsAndUpdateIfNecessary;
- (void)_sanityCheckObjectsWithEntityName:(id)name globalDescriptor:(void *)descriptor matchIdentifierOnly:(BOOL)only;
- (void)_sanityCheckSchemaAssets;
- (void)_sanityCheckSchemaCategoriesAndUpdateIfNecessary;
- (void)_sanityCheckSchemaDefinitionsAndUpdateIfNecessary;
- (void)_sanityCheckSchemaPartDefinitionsForStandardElement:(id *)element withElement:(id)withElement;
- (void)dealloc;
- (void)loadBasicThemePart;
- (void)loadColorNames;
- (void)loadColorStatuses;
- (void)loadEffectConstants;
- (void)loadIterationTypes;
- (void)loadMetafontSelectors;
- (void)loadMetafontSizes;
- (void)loadRenditionSubtypes;
- (void)loadRenditionTypes;
- (void)loadSchemaCategories;
- (void)loadSchemaDefinitions;
- (void)loadStandardEffectDefinitions;
- (void)loadTemplateRenderingModeConstants;
- (void)loadTexturePixelFormats;
- (void)loadThemeCompressionTypes;
- (void)loadThemeDeploymentTargets;
- (void)loadThemeDirections;
- (void)loadThemeDisplayGamuts;
- (void)loadThemeDrawingLayers;
- (void)loadThemeElements;
- (void)loadThemeGraphicsFeatureSetClasses;
- (void)loadThemeIdioms;
- (void)loadThemeParts;
- (void)loadThemePresentationStates;
- (void)loadThemeSizes;
- (void)loadThemeStates;
- (void)loadThemeTextureFaces;
- (void)loadThemeTextureInterpretations;
- (void)loadThemeUISizeClasses;
- (void)loadThemeValues;
- (void)resetThemeConstants;
- (void)sanityCheckAndUpdateDocumentIfNecessary;
@end

@implementation TDThemeSchema

- (TDThemeSchema)initWithThemeDocument:(id)document
{
  v6.receiver = self;
  v6.super_class = TDThemeSchema;
  v4 = [(TDThemeSchema *)&v6 init];
  if (v4)
  {
    v4->_doc = document;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TDThemeSchema;
  [(TDThemeSchema *)&v3 dealloc];
}

- (void)_sanityCheckObjectsWithEntityName:(id)name globalDescriptor:(void *)descriptor matchIdentifierOnly:(BOOL)only
{
  v121 = *MEMORY[0x277D85DE8];
  v93 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"identifier" ascending:1];
  nameCopy = name;
  obj = -[CoreThemeDocument allObjectsForEntity:withSortDescriptors:](self->_doc, "allObjectsForEntity:withSortDescriptors:", name, [MEMORY[0x277CBEA60] arrayWithObject:?]);
  descriptorCopy = descriptor;
  v7 = [CoreThemeConstantEnumerator enumeratorForGlobalListAtAddress:descriptor];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  nextConstantHelper = [v7 nextConstantHelper];
  v96 = v8;
  if (!nextConstantHelper)
  {
    goto LABEL_26;
  }

  nextConstantHelper2 = nextConstantHelper;
  v95 = v7;
  do
  {
    if (![objc_msgSend(nextConstantHelper2 "displayName")])
    {
      break;
    }

    if ([objc_msgSend(nextConstantHelper2 "label")])
    {
      goto LABEL_25;
    }

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v104 = [obj countByEnumeratingWithState:&v114 objects:v120 count:16];
    if (!v104)
    {
      goto LABEL_24;
    }

    v11 = 0;
    v102 = *v115;
    do
    {
      for (i = 0; i != v104; ++i)
      {
        if (*v115 != v102)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v114 + 1) + 8 * i);
        v14 = [objc_msgSend(v13 valueForKey:{@"identifier", "integerValue"}];
        v15 = [v13 valueForKey:@"constantName"];
        v16 = [v13 valueForKey:@"displayName"];
        identifier = [nextConstantHelper2 identifier];
        label = [nextConstantHelper2 label];
        displayName = [nextConstantHelper2 displayName];
        if (v14 != identifier)
        {
          if (only || ([v15 isEqualToString:label] & 1) == 0 && !objc_msgSend(v16, "isEqualToString:", displayName))
          {
            continue;
          }

          TDSchemaLog(&cfstr_UpdatingIdenti.isa, v20, v21, v22, v23, v24, v25, v26, label, identifier);
          [v13 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", identifier), @"identifier"}];
        }

        if (([v15 isEqualToString:label] & 1) == 0)
        {
          TDSchemaLog(&cfstr_UpdatingConsta.isa, v27, v28, v29, v30, v31, v32, v33, label, v15, label);
          [v13 setValue:label forKey:@"constantName"];
        }

        ++v11;
        if (([v16 isEqualToString:displayName] & 1) == 0)
        {
          TDSchemaLog(&cfstr_UpdatingDispla.isa, v34, v35, v36, v37, v38, v39, v40, label, v16, displayName);
          [v13 setValue:displayName forKey:@"displayName"];
        }
      }

      v104 = [obj countByEnumeratingWithState:&v114 objects:v120 count:16];
    }

    while (v104);
    if (v11 >= 2)
    {
      NSLog(&cfstr_WarningDocumen.isa, [nextConstantHelper2 valueForKey:@"label"]);
      v7 = v95;
      v8 = v96;
      goto LABEL_25;
    }

    v7 = v95;
    v8 = v96;
    if (!v11)
    {
LABEL_24:
      [v8 addObject:nextConstantHelper2];
    }

LABEL_25:
    nextConstantHelper2 = [v7 nextConstantHelper];
  }

  while (nextConstantHelper2);
LABEL_26:
  if ([v8 count])
  {
    v41 = [v8 valueForKey:@"label"];
    TDSchemaLog(&cfstr_EntityHasMissi.isa, v42, v43, v44, v45, v46, v47, v48, nameCopy, v41);
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v49 = [v8 countByEnumeratingWithState:&v110 objects:v119 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v111;
      do
      {
        for (j = 0; j != v50; ++j)
        {
          if (*v111 != v51)
          {
            objc_enumerationMutation(v96);
          }

          v53 = *(*(&v110 + 1) + 8 * j);
          v54 = [(CoreThemeDocument *)self->_doc newObjectForEntity:nameCopy];
          [v54 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", objc_msgSend(v53, "identifier")), @"identifier"}];
          [v54 setValue:objc_msgSend(v53 forKey:{"label"), @"constantName"}];
          [v54 setValue:objc_msgSend(v53 forKey:{"displayName"), @"displayName"}];
        }

        v8 = v96;
        v50 = [v96 countByEnumeratingWithState:&v110 objects:v119 count:16];
      }

      while (v50);
    }

    [-[TDPersistentDocument managedObjectContext](self->_doc "managedObjectContext")];
  }

  v55 = -[CoreThemeDocument allObjectsForEntity:withSortDescriptors:](self->_doc, "allObjectsForEntity:withSortDescriptors:", nameCopy, [MEMORY[0x277CBEA60] arrayWithObject:v93]);
  v56 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  obja = [CoreThemeConstantEnumerator enumeratorForGlobalListAtAddress:descriptorCopy];
  nextConstantHelper3 = [obja nextConstantHelper];
  if (nextConstantHelper3)
  {
    nextConstantHelper4 = nextConstantHelper3;
    v59 = 0;
    do
    {
      if (![objc_msgSend(nextConstantHelper4 "displayName")])
      {
        break;
      }

      identifier2 = [nextConstantHelper4 identifier];
      v61 = identifier2;
      if (identifier2 > v59)
      {
        v59 = identifier2;
      }

      v103 = v59;
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v62 = [v55 countByEnumeratingWithState:&v106 objects:v118 count:16];
      if (v62)
      {
        v63 = v62;
        v64 = 0;
        v65 = *v107;
        do
        {
          for (k = 0; k != v63; ++k)
          {
            if (*v107 != v65)
            {
              objc_enumerationMutation(v55);
            }

            v67 = *(*(&v106 + 1) + 8 * k);
            if (v61 == [objc_msgSend(v67 valueForKey:{@"identifier", "integerValue"}])
            {
              if (v64 < 1)
              {
                ++v64;
              }

              else
              {
                v105 = v64 + 1;
                v68 = [v67 valueForKey:@"constantName"];
                TDSchemaLog(&cfstr_FoundExtraThem.isa, v69, v70, v71, v72, v73, v74, v75, v68, nameCopy);
                v76 = [v55 objectAtIndex:{objc_msgSend(v55, "indexOfObject:", v67) - 1}];
                v77 = v65;
                v78 = v61;
                v79 = [objc_msgSend(objc_msgSend(objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
                v80 = MEMORY[0x277CCAC30];
                name = [v79 name];
                v81 = v80;
                v61 = v78;
                v65 = v77;
                if (-[CoreThemeDocument countForEntity:withPredicate:](self->_doc, "countForEntity:withPredicate:", @"RenditionKeySpec", [v81 predicateWithFormat:@"%K = %@", name, v76]) <= 0)
                {
                  v82 = v76;
                }

                else
                {
                  v82 = v67;
                }

                [v56 addObject:v82];
                v64 = v105;
              }
            }
          }

          v63 = [v55 countByEnumeratingWithState:&v106 objects:v118 count:16];
        }

        while (v63);
      }

      nextConstantHelper4 = [obja nextConstantHelper];
      v59 = v103;
    }

    while (nextConstantHelper4);
  }

  else
  {
    v59 = 0;
  }

  v83 = [v55 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"identifier > %d", v59)}];
  if ([v83 count] && (objc_msgSend(nameCopy, "isEqualToString:", @"EffectType") & 1) == 0 && (objc_msgSend(nameCopy, "isEqualToString:", @"EffectParameterType") & 1) == 0)
  {
    v84 = [v83 valueForKey:@"constantName"];
    TDSchemaLog(&cfstr_RemovingExtraT.isa, v85, v86, v87, v88, v89, v90, v91, nameCopy, v84);
    [v56 addObjectsFromArray:v83];
  }

  if ([v56 count])
  {
    [(CoreThemeDocument *)self->_doc deleteObjects:v56];
    [-[TDPersistentDocument managedObjectContext](self->_doc "managedObjectContext")];
  }
}

- (void)_sanityCheckMetafontSizeSelectorsAndUpdateIfNecessary
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"controlSize.identifier" ascending:1];
  selfCopy = self;
  obj = -[CoreThemeDocument allObjectsForEntity:withSortDescriptors:](self->_doc, "allObjectsForEntity:withSortDescriptors:", @"MetafontSizeSelector", [MEMORY[0x277CBEA60] arrayWithObject:v3]);

  v4 = [CoreThemeConstantEnumerator enumeratorForGlobalListAtAddress:MEMORY[0x277D02750]];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52 = v4;
  nextConstantHelper = [v4 nextConstantHelper];
  if (nextConstantHelper)
  {
    nextConstantHelper2 = nextConstantHelper;
    v51 = v5;
    while (1)
    {
      if (![objc_msgSend(nextConstantHelper2 "displayName")])
      {
        goto LABEL_27;
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v56 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
      if (!v56)
      {
        break;
      }

      v57 = 0;
      v55 = *v63;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v63 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v62 + 1) + 8 * i);
          v10 = [objc_msgSend(v9 "identifier")];
          v11 = [objc_msgSend(v9 "controlSize")];
          selectorName = [v9 selectorName];
          displayName = [v9 displayName];
          identifier = [nextConstantHelper2 identifier];
          label = [nextConstantHelper2 label];
          displayName2 = [nextConstantHelper2 displayName];
          if (identifier == v10 || ([selectorName isEqualToString:label] & 1) != 0 || objc_msgSend(displayName, "isEqualToString:", displayName2))
          {
            if ([objc_msgSend(v9 "identifier")] != identifier)
            {
              TDSchemaLog(&cfstr_UpdatingIdenti.isa, v17, v18, v19, v20, v21, v22, v23, v9, identifier);
              [v9 setIdentifier:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", identifier)}];
            }

            if (identifier != v11)
            {
              TDSchemaLog(&cfstr_UpdatingContro.isa, v17, v18, v19, v20, v21, v22, v23, v9, identifier);
              [v9 setControlSize:{-[CoreThemeDocument sizeWithIdentifier:](selfCopy->_doc, "sizeWithIdentifier:", identifier)}];
            }

            if (([selectorName isEqualToString:label] & 1) == 0)
            {
              TDSchemaLog(&cfstr_UpdatingSelect.isa, v24, v25, v26, v27, v28, v29, v30, v9, label);
              [v9 setSelectorName:label];
            }

            ++v57;
            if (([displayName isEqualToString:displayName2] & 1) == 0)
            {
              TDSchemaLog(&cfstr_UpdatingDispla_0.isa, v31, v32, v33, v34, v35, v36, v37, v9, displayName2);
              [v9 setDisplayName:displayName2];
            }
          }
        }

        v56 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
      }

      while (v56);
      if (v57 < 2)
      {
        v5 = v51;
        if (!v57)
        {
          break;
        }
      }

      else
      {
        NSLog(&cfstr_WarningDocumen.isa, nextConstantHelper2);
        v5 = v51;
      }

LABEL_26:
      nextConstantHelper2 = [v52 nextConstantHelper];
      if (!nextConstantHelper2)
      {
        goto LABEL_27;
      }
    }

    [v5 addObject:nextConstantHelper2];
    goto LABEL_26;
  }

LABEL_27:
  if ([v5 count])
  {
    TDSchemaLog(&cfstr_EntityMetafont.isa, v38, v39, v40, v41, v42, v43, v44, v5);
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v45 = [v5 countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v59;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v59 != v47)
          {
            objc_enumerationMutation(v5);
          }

          v49 = *(*(&v58 + 1) + 8 * j);
          v50 = [(CoreThemeDocument *)selfCopy->_doc newObjectForEntity:@"MetafontSizeSelector"];
          [v50 setControlSize:{-[CoreThemeDocument sizeWithIdentifier:](selfCopy->_doc, "sizeWithIdentifier:", objc_msgSend(v49, "identifier"))}];
          [v50 setSelectorName:{objc_msgSend(v49, "label")}];
          [v50 setDisplayName:{objc_msgSend(v49, "displayName")}];
        }

        v46 = [v5 countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v46);
    }

    [-[TDPersistentDocument managedObjectContext](selfCopy->_doc "managedObjectContext")];
  }
}

- (void)_sanityCheckColorNamesAndUpdateIfNecessary
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(CoreThemeDocument *)self->_doc allObjectsForEntity:@"ColorName" withSortDescriptors:0];
  v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v5 = MEMORY[0x277D02730];
  if (*(MEMORY[0x277D02730] + 16))
  {
    v6 = 0;
    do
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = v8;
      v10 = 0;
      v11 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v3);
          }

          v10 += [v7 isEqualToString:{objc_msgSend(*(*(&v19 + 1) + 8 * i), "valueForKey:", @"displayName"}];
        }

        v9 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
      v5 = MEMORY[0x277D02730];
      if (!v10)
      {
LABEL_11:
        [v4 addIndex:v6];
      }

      v13 = v5 + 40 * v6++;
    }

    while (*(v13 + 56));
  }

  if ([v4 count])
  {
    firstIndex = [v4 firstIndex];
    selfCopy = self;
    if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (j = firstIndex; j != 0x7FFFFFFFFFFFFFFFLL; j = [v4 indexGreaterThanIndex:j])
      {
        v17 = [(CoreThemeDocument *)selfCopy->_doc newObjectForEntity:@"ColorName"];
        v18 = MEMORY[0x277D02730] + 40 * j;
        [v17 setValue:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithUTF8String:", *(v18 + 16)), @"displayName"}];
        [v17 setValue:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithUTF8String:", *(v18 + 24)), @"selector"}];
      }
    }

    [-[TDPersistentDocument managedObjectContext](selfCopy->_doc "managedObjectContext")];
  }
}

- (void)_sanityCheckSchemaPartDefinitionsForStandardElement:(id *)element withElement:(id)withElement
{
  v112 = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:1];
  withElementCopy = withElement;
  parts = [withElement parts];
  v87 = v7;
  v9 = [parts sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v7)}];
  selfCopy = self;
  v11 = [MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self->_doc, "targetPlatform")}];
  v12 = [v11 partDefinitionCountForElementDefinition:element];
  v13 = malloc_type_malloc(440 * v12, 0xBC29AAC7uLL);
  memcpy(v13, element->var4, 440 * v12);
  qsort_b(v13, v12, 0x1B8uLL, &__block_literal_global_5);
  v89 = v12;
  obj = [MEMORY[0x277CBEB18] array];
  v88 = v13;
  if (v12)
  {
    v14 = 0;
    do
    {
      v15 = &v13[440 * v14];
      v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*v15];
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v17 = [v9 countByEnumeratingWithState:&v104 objects:v111 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v105;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v105 != v19)
            {
              objc_enumerationMutation(v9);
            }

            v21 = *(*(&v104 + 1) + 8 * i);
            if ([v16 isEqualToString:{objc_msgSend(v21, "name")}])
            {
              v22 = [v11 widgetNameForPartDefinition:v15];
              v13 = v88;
              if (([v22 isEqualToString:{objc_msgSend(v21, "widgetID")}] & 1) == 0)
              {
                name = [withElementCopy name];
                name2 = [v21 name];
                widgetID = [v21 widgetID];
                TDSchemaLog(&cfstr_UpdatingWidget.isa, v26, v27, v28, v29, v30, v31, v32, name, name2, widgetID, v22);
                [v21 setWidgetID:v22];
              }

              goto LABEL_16;
            }

            if ([v16 compare:{objc_msgSend(v21, "name")}] == -1)
            {
              [obj addObject:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytesNoCopy:length:freeWhenDone:", v15, 8, 0)}];
              v13 = v88;
              goto LABEL_16;
            }
          }

          v18 = [v9 countByEnumeratingWithState:&v104 objects:v111 count:16];
          v13 = v88;
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      [obj addObject:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytesNoCopy:length:freeWhenDone:", v15, 8, 0)}];
LABEL_16:

      ++v14;
    }

    while (v14 != v89);
  }

  if ([obj count])
  {
    name3 = [withElementCopy name];
    TDSchemaLog(&cfstr_ElementWasMiss.isa, v34, v35, v36, v37, v38, v39, v40, name3);
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v41 = [obj countByEnumeratingWithState:&v100 objects:v110 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v101;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v101 != v43)
        {
          objc_enumerationMutation(obj);
        }

        bytes = [*(*(&v100 + 1) + 8 * j) bytes];
        v46 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*bytes];
        v47 = [v11 widgetNameForPartDefinition:bytes];
        TDSchemaLog(&cfstr_AddingPart.isa, v48, v49, v50, v51, v52, v53, v54, v46);
        v55 = [(CoreThemeDocument *)selfCopy->_doc newObjectForEntity:@"SchemaPartDefinition"];
        [v55 setName:v46];
        [v55 setWidgetID:v47];
        [v55 setElement:withElementCopy];
        [v55 updateDerivedRenditionData];
      }

      v42 = [obj countByEnumeratingWithState:&v100 objects:v110 count:16];
    }

    while (v42);
  }

  array = [MEMORY[0x277CBEB18] array];
  parts2 = [withElementCopy parts];
  v58 = [parts2 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v87)}];

  if ([v58 count] > v89)
  {
    name4 = [withElementCopy name];
    TDSchemaLog(&cfstr_DocumentContai.isa, v60, v61, v62, v63, v64, v65, v66, name4);
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v67 = [v58 countByEnumeratingWithState:&v96 objects:v109 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = 0;
      v70 = *v97;
LABEL_29:
      v71 = 0;
      while (1)
      {
        if (*v97 != v70)
        {
          objc_enumerationMutation(v58);
        }

        if (v69 > v89)
        {
          break;
        }

        v72 = *(*(&v96 + 1) + 8 * v71);
        v73 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*&v88[440 * v69]];
        if ([v73 isEqualToString:{objc_msgSend(v72, "name")}])
        {
          ++v69;
        }

        else
        {
          [array addObject:v72];
        }

        if (v68 == ++v71)
        {
          v68 = [v58 countByEnumeratingWithState:&v96 objects:v109 count:16];
          if (v68)
          {
            goto LABEL_29;
          }

          break;
        }
      }
    }

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v74 = [array countByEnumeratingWithState:&v92 objects:v108 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v93;
      do
      {
        for (k = 0; k != v75; ++k)
        {
          if (*v93 != v76)
          {
            objc_enumerationMutation(array);
          }

          v78 = *(*(&v92 + 1) + 8 * k);
          name5 = [v78 name];
          TDSchemaLog(&cfstr_DeletingPart.isa, v80, v81, v82, v83, v84, v85, v86, name5);
          [withElementCopy removePartsObject:v78];
          [(CoreThemeDocument *)selfCopy->_doc deleteObject:v78];
        }

        v75 = [array countByEnumeratingWithState:&v92 objects:v108 count:16];
      }

      while (v75);
    }
  }

  if (v88)
  {
    free(v88);
  }
}

- (void)_addSchemaPartDefinitionsForStandardElement:(id *)element withElement:(id)withElement
{
  v7 = [MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self->_doc, "targetPlatform")}];
  if (element->var4[0].var3)
  {
    v8 = v7;
    do
    {
      if (element->var4[0].var0)
      {
        v9 = [(CoreThemeDocument *)self->_doc newObjectForEntity:@"SchemaPartDefinition"];
        v10 = [v8 widgetNameForPartDefinition:element->var4];
        [v9 setName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithCString:encoding:", element->var4[0].var0, 4)}];
        [v9 setElement:withElement];
        [v9 setWidgetID:v10];
        [v9 updateDerivedRenditionData];
      }

      var3 = element->var4[1].var3;
      element = (element + 440);
    }

    while (var3);
  }
}

- (void)_sanityCheckSchemaCategoriesAndUpdateIfNecessary
{
  v74 = *MEMORY[0x277D85DE8];
  TDSchemaLog(&cfstr_SynchronizingS.isa, a2, v2, v3, v4, v5, v6, v7);
  v9 = [(CoreThemeDocument *)self->_doc allObjectsForEntity:@"SchemaCategory" withSortDescriptors:0];
  selfCopy = self;
  v10 = [MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self->_doc, "targetPlatform")}];
  elementCategoryCount = [v10 elementCategoryCount];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v9;
  v12 = [v9 countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v69;
    do
    {
      v15 = 0;
      do
      {
        if (*v69 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v68 + 1) + 8 * v15);
        if (elementCategoryCount)
        {
          v17 = 0;
          while (1)
          {
            v18 = [v10 elementCategoryAtIndex:v17];
            if ([objc_msgSend(v16 "constantName")])
            {
              break;
            }

            if (elementCategoryCount == ++v17)
            {
              goto LABEL_10;
            }
          }

          identifier = [v16 identifier];
          if (*v18 != identifier)
          {
            v36 = identifier;
            constantName = [v16 constantName];
            TDSchemaLog(&cfstr_UpdatingIdenti_0.isa, v38, v39, v40, v41, v42, v43, v44, constantName, v36, *v18);
            [v16 setIdentifier:*v18];
          }
        }

        else
        {
LABEL_10:
          displayName = [v16 displayName];
          TDSchemaLog(&cfstr_RemovingRelati.isa, v20, v21, v22, v23, v24, v25, v26, displayName);
          [v16 removeElements:{objc_msgSend(v16, "elements")}];
          displayName2 = [v16 displayName];
          TDSchemaLog(&cfstr_DeletingCatego.isa, v28, v29, v30, v31, v32, v33, v34, displayName2);
          [(CoreThemeDocument *)self->_doc deleteObject:v16];
        }

        ++v15;
      }

      while (v15 != v13);
      v45 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
      v13 = v45;
    }

    while (v45);
  }

  if (elementCategoryCount)
  {
    for (i = 0; i != elementCategoryCount; ++i)
    {
      v47 = [v10 elementCategoryAtIndex:i];
      v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v47 + 1)];
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v49 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v65;
LABEL_20:
        v52 = 0;
        while (1)
        {
          if (*v65 != v51)
          {
            objc_enumerationMutation(obj);
          }

          if ([objc_msgSend(*(*(&v64 + 1) + 8 * v52) "constantName")])
          {
            break;
          }

          if (v50 == ++v52)
          {
            v50 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
            if (v50)
            {
              goto LABEL_20;
            }

            goto LABEL_26;
          }
        }
      }

      else
      {
LABEL_26:
        v53 = [(CoreThemeDocument *)selfCopy->_doc newObjectForEntity:@"SchemaCategory"];
        [v53 setIdentifier:*v47];
        [v53 setDisplayName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", *(v47 + 2))}];
        [v53 setConstantName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", *(v47 + 1))}];
        displayName3 = [v53 displayName];
        TDSchemaLog(&cfstr_AddedMissingCa.isa, v55, v56, v57, v58, v59, v60, v61, displayName3);
      }
    }
  }

  [-[TDPersistentDocument managedObjectContext](selfCopy->_doc "managedObjectContext")];
  [(CoreThemeDocument *)selfCopy->_doc recacheThemeConstant:@"SchemaCategory"];
}

- (void)_sanityCheckSchemaDefinitionsAndUpdateIfNecessary
{
  v129 = *MEMORY[0x277D85DE8];
  TDSchemaLog(&cfstr_SynchronizingS_0.isa, a2, v2, v3, v4, v5, v6, v7);
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"SchemaElementDefinition", @"SchemaEffectDefinition", @"SchemaMaterialDefinition", 0}];
  v10 = [MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self->_doc, "targetPlatform")}];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = v9;
  v96 = [v9 countByEnumeratingWithState:&v120 objects:v128 count:16];
  if (v96)
  {
    v95 = *v121;
    v100 = v10;
    do
    {
      v11 = 0;
      do
      {
        if (*v121 != v95)
        {
          objc_enumerationMutation(obj);
        }

        v98 = v11;
        v12 = *(*(&v120 + 1) + 8 * v11);
        v97 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:1];
        v13 = -[CoreThemeDocument allObjectsForEntity:withSortDescriptors:](self->_doc, "allObjectsForEntity:withSortDescriptors:", v12, [MEMORY[0x277CBEA60] arrayWithObject:?]);
        array = [MEMORY[0x277CBEB18] array];
        v101 = NSClassFromString([objc_msgSend(objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")]);
        v103 = [(objc_class *)v101 elementDefinitionCountWithSchema:v10];
        if (v103)
        {
          for (i = 0; i != v103; ++i)
          {
            v102 = [(objc_class *)v101 sortedElementDefinitionAtIndex:i withSchema:v10];
            v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*v102];
            v116 = 0u;
            v117 = 0u;
            v118 = 0u;
            v119 = 0u;
            v17 = [v13 countByEnumeratingWithState:&v116 objects:v127 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v117;
              while (2)
              {
                for (j = 0; j != v18; ++j)
                {
                  if (*v117 != v19)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v21 = *(*(&v116 + 1) + 8 * j);
                  if ([v16 isEqualToString:{objc_msgSend(v21, "name")}])
                  {
                    [(TDThemeSchema *)self _sanityCheckSchemaPartDefinitionsForStandardElement:v102 withElement:v21];
                    v10 = v100;
                    v22 = [v100 categoryForElementDefinition:v102];
                    v99 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v22[1]];
                    if (([v99 isEqualToString:{objc_msgSend(objc_msgSend(v21, "category"), "constantName")}] & 1) == 0)
                    {
                      v23 = [(CoreThemeDocument *)self->_doc schemaCategoryWithIdentifier:*v22];
                      name = [v21 name];
                      v25 = [objc_msgSend(v21 "category")];
                      TDSchemaLog(&cfstr_UpdatingCatego.isa, v26, v27, v28, v29, v30, v31, v32, name, v25, v99);
                      [v21 setCategory:v23];
                    }

                    if (*(v102 + 16) != [v21 published])
                    {
                      published = [v21 published];
                      TDSchemaLog(&cfstr_UpdatingPublis.isa, v34, v35, v36, v37, v38, v39, v40, v21, published, *(v102 + 16));
                      [v21 setPublished:*(v102 + 16)];
                    }

                    goto LABEL_23;
                  }

                  if ([v16 compare:{objc_msgSend(v21, "name")}] == -1)
                  {
                    [array addObject:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytesNoCopy:length:freeWhenDone:", v102, 8, 0)}];
                    v10 = v100;
                    goto LABEL_23;
                  }
                }

                v18 = [v13 countByEnumeratingWithState:&v116 objects:v127 count:16];
                v10 = v100;
                if (v18)
                {
                  continue;
                }

                break;
              }
            }

            [array addObject:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytesNoCopy:length:freeWhenDone:", v102, 8, 0)}];
LABEL_23:
          }
        }

        if ([array count])
        {
          TDSchemaLog(&cfstr_DocumentIsMiss.isa, v41, v42, v43, v44, v45, v46, v47);
        }

        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v48 = [array countByEnumeratingWithState:&v112 objects:v126 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v113;
          do
          {
            for (k = 0; k != v49; ++k)
            {
              if (*v113 != v50)
              {
                objc_enumerationMutation(array);
              }

              bytes = [*(*(&v112 + 1) + 8 * k) bytes];
              v53 = [(CoreThemeDocument *)self->_doc schemaCategoryWithIdentifier:*(bytes + 24)];
              v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:*bytes];
              constantName = [v53 constantName];
              TDSchemaLog(&stru_2859A0D98.isa, v56, v57, v58, v59, v60, v61, v62, constantName, v54);
              v63 = [(CoreThemeDocument *)self->_doc newObjectForEntity:v12];
              [v63 setName:v54];
              [v63 setPublished:*(bytes + 16)];
              [v63 setCategory:v53];
              [(TDThemeSchema *)self _addSchemaPartDefinitionsForStandardElement:bytes withElement:v63];
            }

            v49 = [array countByEnumeratingWithState:&v112 objects:v126 count:16];
          }

          while (v49);
        }

        v64 = -[CoreThemeDocument allObjectsForEntity:withSortDescriptors:](self->_doc, "allObjectsForEntity:withSortDescriptors:", v12, [MEMORY[0x277CBEA60] arrayWithObject:v97]);

        v10 = v100;
        if ([v64 count] > v103)
        {
          TDSchemaLog(&cfstr_DocumentContai_0.isa, v65, v66, v67, v68, v69, v70, v71);
          array2 = [MEMORY[0x277CBEB18] array];
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          v111 = 0u;
          v73 = [v64 countByEnumeratingWithState:&v108 objects:v125 count:16];
          if (v73)
          {
            v74 = v73;
            v75 = 0;
            v76 = *v109;
            do
            {
              for (m = 0; m != v74; ++m)
              {
                if (*v109 != v76)
                {
                  objc_enumerationMutation(v64);
                }

                v78 = *(*(&v108 + 1) + 8 * m);
                if (v75 >= v103)
                {
                  [array2 addObject:*(*(&v108 + 1) + 8 * m)];
                }

                else
                {
                  v79 = [v100 sortedElementDefinitionAtIndex:v75];
                  if (*v79)
                  {
                    v80 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*v79];
                    if ([v80 isEqualToString:{objc_msgSend(v78, "name")}])
                    {
                      ++v75;
                    }

                    else
                    {
                      [array2 addObject:v78];
                    }
                  }
                }
              }

              v74 = [v64 countByEnumeratingWithState:&v108 objects:v125 count:16];
            }

            while (v74);
          }

          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v81 = [array2 countByEnumeratingWithState:&v104 objects:v124 count:16];
          if (v81)
          {
            v82 = v81;
            v83 = *v105;
            do
            {
              for (n = 0; n != v82; ++n)
              {
                if (*v105 != v83)
                {
                  objc_enumerationMutation(array2);
                }

                v85 = *(*(&v104 + 1) + 8 * n);
                name2 = [v85 name];
                TDSchemaLog(&cfstr_DeletingElemen.isa, v87, v88, v89, v90, v91, v92, v93, name2);
                [(CoreThemeDocument *)self->_doc deleteObject:v85];
              }

              v82 = [array2 countByEnumeratingWithState:&v104 objects:v124 count:16];
            }

            while (v82);
          }
        }

        v11 = v98 + 1;
      }

      while (v98 + 1 != v96);
      v96 = [obj countByEnumeratingWithState:&v120 objects:v128 count:16];
    }

    while (v96);
  }
}

- (void)_sanityCheckEffectRenditionsAndUpdateIfNecessary
{
  v18 = *MEMORY[0x277D85DE8];
  targetPlatform = [(CoreThemeDocument *)self->_doc targetPlatform];
  if (targetPlatform <= 5 && ((1 << targetPlatform) & 0x3A) != 0)
  {
    v5 = [(CoreThemeDocument *)self->_doc metadatumForKey:@"PreviousCoreThemeDefinitionDataModelKey"];
    if (v5)
    {
      if ([v5 intValue] <= 43)
      {
        v6 = [(CoreThemeDocument *)self->_doc allObjectsForEntity:@"EffectRenditionSpec" withSortDescriptors:0];
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v14;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v14 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v13 + 1) + 8 * i);
              [objc_msgSend(v11 "effectScale")];
              if (*&v12 < 2.0)
              {
                LODWORD(v12) = 2.0;
                [v11 setEffectScale:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v12)}];
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
          }

          while (v8);
        }
      }
    }
  }
}

- (void)_sanityCheckMicaRenditionsAndUpdateIfNecessary
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(CoreThemeDocument *)self->_doc allObjectsForEntity:@"MicaElementProduction" withSortDescriptors:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([objc_msgSend(v9 "asset")] >= 2)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(CoreThemeDocument *)self->_doc deleteProductions:v3 shouldDeleteAssetFiles:1];
}

- (BOOL)_renditionKey:(const _renditionkeytoken *)key isEqualToKeyIgnoringLook:(const _renditionkeytoken *)look
{
  CUISystemThemeRenditionKeyFormat();

  return CUIEqualRenditionKeys();
}

- (void)_sanityCheckSchemaAssets
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = [(CoreThemeDocument *)self->_doc allObjectsForEntity:@"SchemaElementProduction" withSortDescriptors:0];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v3;
  v42 = [v3 countByEnumeratingWithState:&v64 objects:v71 count:16];
  if (v42)
  {
    v41 = *v65;
    do
    {
      v4 = 0;
      do
      {
        if (*v65 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v4;
        v5 = *(*(&v64 + 1) + 8 * v4);
        v6 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v5 "renditions")];
        partDefinition = [v5 partDefinition];
        renditionGroups = [partDefinition renditionGroups];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v8 = [renditionGroups countByEnumeratingWithState:&v60 objects:v70 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v61;
          while (2)
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v61 != v10)
              {
                objc_enumerationMutation(renditionGroups);
              }

              v12 = *(*(&v60 + 1) + 8 * i);
              if (-[TDThemeSchema _renditionKey:isEqualToKeyIgnoringLook:](self, "_renditionKey:isEqualToKeyIgnoringLook:", [objc_msgSend(v12 "baseKey")], objc_msgSend(objc_msgSend(v5, "baseKeySpec"), "key")))
              {
                defaultManager = [MEMORY[0x277CCAA00] defaultManager];
                v14 = [(CoreThemeDocument *)self->_doc defaultPathComponentsForPartDefinition:partDefinition];
                v15 = -[CoreThemeDocument folderNameFromRenditionKey:forPartDefinition:](self->_doc, "folderNameFromRenditionKey:forPartDefinition:", [v12 baseKey], partDefinition);
                v45 = [v14 stringByAppendingPathComponent:v15];
                if (([objc_msgSend(v5 "folderName")] & 1) == 0)
                {
                  [v5 setFolderName:v15];
                }

                v16 = [objc_msgSend(objc_msgSend(objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:{-[CoreThemeDocument rootPathForProductionData](self->_doc, "rootPathForProductionData")), "URLByAppendingPathComponent:", v6), "URLByAppendingPathComponent:", v45}];
                if (![objc_msgSend(v16 "path")])
                {
                  [(TDThemeSchema *)a2 _sanityCheckSchemaAssets];
                }

                v46 = v16;
                v47 = defaultManager;
                if (([defaultManager fileExistsAtPath:{objc_msgSend(v16, "path")}] & 1) != 0 || objc_msgSend(defaultManager, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v16, 1, 0, 0))
                {
                  v58 = 0u;
                  v59 = 0u;
                  v56 = 0u;
                  v57 = 0u;
                  renditions = [v5 renditions];
                  v50 = [renditions countByEnumeratingWithState:&v56 objects:v69 count:16];
                  if (v50)
                  {
                    v49 = *v57;
                    while (1)
                    {
                      for (j = 0; j != v50; ++j)
                      {
                        if (*v57 != v49)
                        {
                          objc_enumerationMutation(renditions);
                        }

                        v18 = *(*(&v56 + 1) + 8 * j);
                        v52 = 0u;
                        v53 = 0u;
                        v54 = 0u;
                        v55 = 0u;
                        v19 = v12;
                        renditions2 = [v12 renditions];
                        v21 = [renditions2 countByEnumeratingWithState:&v52 objects:v68 count:16];
                        if (!v21)
                        {
                          goto LABEL_48;
                        }

                        v22 = v21;
                        v23 = *v53;
                        while (2)
                        {
                          for (k = 0; k != v22; ++k)
                          {
                            if (*v53 != v23)
                            {
                              objc_enumerationMutation(renditions2);
                            }

                            v25 = *(*(&v52 + 1) + 8 * k);
                            if (-[TDThemeSchema _renditionKey:isEqualToKeyIgnoringLook:](self, "_renditionKey:isEqualToKeyIgnoringLook:", [v25 key], objc_msgSend(objc_msgSend(v18, "keySpec"), "key")))
                            {
                              v26 = [(CoreThemeDocument *)self->_doc defaultPNGFileNameForSchemaRendition:v25 withPartDefinition:partDefinition];
                              v27 = [v47 fileExistsAtPath:{objc_msgSend(objc_msgSend(v46, "path"), "stringByAppendingPathComponent:", v26)}];
                              asset = [v18 asset];
                              if (v27)
                              {
                                if ([objc_msgSend(asset "category")])
                                {
                                  goto LABEL_48;
                                }

LABEL_47:
                                [objc_msgSend(v18 "asset")];
                                [objc_msgSend(v18 "asset")];
                                goto LABEL_48;
                              }

                              v29 = [asset fileURLWithDocument:self->_doc];
                              if ([v29 isEqual:{objc_msgSend(v46, "URLByAppendingPathComponent:", v26)}])
                              {
                                NSLog(&cfstr_MissingAsset.isa, [v29 path]);
                                goto LABEL_48;
                              }

                              v51 = 0uLL;
                              if ([v47 fileExistsAtPath:{objc_msgSend(v29, "path")}])
                              {
                                [v47 copyItemAtURL:v29 toURL:objc_msgSend(v46 error:{"URLByAppendingPathComponent:", v26), &v51 + 8}];
                                if (!*(&v51 + 1))
                                {
                                  v30 = @"copied existing file to %@";
                                  goto LABEL_45;
                                }
                              }

                              else
                              {
                                [(CoreThemeDocument *)self->_doc createReferencePNGForSchemaRendition:v25 withPartDefinition:partDefinition atLocation:v46 error:&v51];
                                if (!v51)
                                {
                                  v30 = @"wrote new reference file to %@";
LABEL_45:
                                  v31 = [objc_msgSend(v46 URLByAppendingPathComponent:{v26), "path"}];
                                  TDSchemaLog(&v30->isa, v32, v33, v34, v35, v36, v37, v38, v31);
                                }
                              }

                              if (v51 != 0)
                              {
                                goto LABEL_48;
                              }

                              goto LABEL_47;
                            }
                          }

                          v22 = [renditions2 countByEnumeratingWithState:&v52 objects:v68 count:16];
                          if (v22)
                          {
                            continue;
                          }

                          break;
                        }

LABEL_48:
                        v12 = v19;
                      }

                      v50 = [renditions countByEnumeratingWithState:&v56 objects:v69 count:16];
                      if (!v50)
                      {
                        goto LABEL_50;
                      }
                    }
                  }
                }

                goto LABEL_50;
              }
            }

            v9 = [renditionGroups countByEnumeratingWithState:&v60 objects:v70 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

LABEL_50:
        v4 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
    }

    while (v42);
  }
}

- (void)sanityCheckAndUpdateDocumentIfNecessary
{
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeElement" globalDescriptor:MEMORY[0x277D02798] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemePart" globalDescriptor:MEMORY[0x277D027B8] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeSize" globalDescriptor:MEMORY[0x277D027C8] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeDirection" globalDescriptor:MEMORY[0x277D02778] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeValue" globalDescriptor:MEMORY[0x277D02800] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeState" globalDescriptor:MEMORY[0x277D027D0] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemePresentationState" globalDescriptor:MEMORY[0x277D027C0] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeIdiom" globalDescriptor:MEMORY[0x277D027B0] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeDisplayGamut" globalDescriptor:MEMORY[0x277D02780] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeDeploymentTarget" globalDescriptor:MEMORY[0x277D02770] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"TexturePixelFormat" globalDescriptor:MEMORY[0x277D027F0] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"TextureFace" globalDescriptor:MEMORY[0x277D027E0] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"TextureInterpretation" globalDescriptor:MEMORY[0x277D027E8] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeCompressionType" globalDescriptor:MEMORY[0x277D02768] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeGraphicsFeatureSetClass" globalDescriptor:MEMORY[0x277D027A0] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeUISizeClass" globalDescriptor:MEMORY[0x277D027F8] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"RenderingMode" globalDescriptor:MEMORY[0x277D027D8] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"IterationType" globalDescriptor:gThemeIterationTypes matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"RenditionType" globalDescriptor:MEMORY[0x277D02760] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"RenditionSubtype" globalDescriptor:MEMORY[0x277D02758] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ColorStatus" globalDescriptor:MEMORY[0x277D02728] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"MetafontSelector" globalDescriptor:MEMORY[0x277D02748] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckMetafontSizeSelectorsAndUpdateIfNecessary];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"EffectType" globalDescriptor:MEMORY[0x277D02740] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"EffectParameterType" globalDescriptor:MEMORY[0x277D02738] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeGlyphSize" globalDescriptor:MEMORY[0x277D02810] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"ThemeGlyphWeight" globalDescriptor:MEMORY[0x277D02818] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckObjectsWithEntityName:@"VectorGlyphRenderingMode" globalDescriptor:MEMORY[0x277D02808] matchIdentifierOnly:0];
  [(TDThemeSchema *)self _sanityCheckSchemaCategoriesAndUpdateIfNecessary];
  [(TDThemeSchema *)self _sanityCheckSchemaDefinitionsAndUpdateIfNecessary];
  [(TDThemeSchema *)self _sanityCheckSchemaAssets];
  [(TDThemeSchema *)self _sanityCheckColorNamesAndUpdateIfNecessary];
  [(TDThemeSchema *)self _sanityCheckEffectRenditionsAndUpdateIfNecessary];
  [(TDThemeSchema *)self _sanityCheckMicaRenditionsAndUpdateIfNecessary];
  doc = self->_doc;

  [(CoreThemeDocument *)doc checkVersionsAndUpdateIfNecessary];
}

- (void)loadThemeSizes
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027C8] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027C8];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeSize alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeValues
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02800] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02800];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeValue alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeElements
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02798] + 48);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02798] + 40;
    do
    {
      v8 = *v7;
      if (!*v7)
      {
        break;
      }

      v9 = strlen(kObsoletePrefix);
      if (strncmp(kObsoletePrefix, v8, v9))
      {
        v10 = [[TDThemeElement alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
        [(TDThemeConstant *)v10 setIdentifier:*(v7 - 8)];
        -[TDThemeConstant setDisplayName:](v10, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
        -[TDThemeConstant setConstantName:](v10, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);
      }

      v5 = *(v7 + 40);
      v7 += 32;
    }

    while (v5);
  }
}

- (void)loadThemeParts
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027B8] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027B8];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = strlen(kObsoletePrefix);
      if (strncmp(kObsoletePrefix, v8, v9))
      {
        v10 = [[TDThemePart alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
        [(TDThemeConstant *)v10 setIdentifier:*v7];
        -[TDThemeConstant setDisplayName:](v10, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
        -[TDThemeConstant setConstantName:](v10, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);
      }

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadBasicThemePart
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *MEMORY[0x277D027B8];
  v6 = *(MEMORY[0x277D027B8] + 8);
  v7 = *(MEMORY[0x277D027B8] + 16);
  v8 = [[TDThemePart alloc] initWithEntity:v4 insertIntoManagedObjectContext:managedObjectContext];
  [(TDThemeConstant *)v8 setIdentifier:v5];
  -[TDThemeConstant setDisplayName:](v8, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:1]);
  -[TDThemeConstant setConstantName:](v8, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v6 encoding:1]);
}

- (void)loadThemeStates
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027D0] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027D0];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeState alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

+ (BOOL)loadThemeConstantsForEntity:(id)entity inContext:(id)context
{
  if (loadThemeConstantsForEntity_inContext__onceToken != -1)
  {
    +[TDThemeSchema loadThemeConstantsForEntity:inContext:];
  }

  v6 = [objc_msgSend(loadThemeConstantsForEntity_inContext__constantMappings objectForKey:{objc_msgSend(entity, "name")), "pointerValue"}];
  if (*(v6 + 16))
  {
    v7 = v6;
    do
    {
      if (!v7[1])
      {
        break;
      }

      v8 = [[TDThemeConstant alloc] initWithEntity:entity insertIntoManagedObjectContext:context];
      -[TDThemeConstant setValue:forKey:](v8, "setValue:forKey:", [MEMORY[0x277CCABB0] numberWithInteger:*v7], @"identifier");
      -[TDThemeConstant setDisplayName:](v8, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v7[2] encoding:1]);
      -[TDThemeConstant setConstantName:](v8, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v7[1] encoding:1]);

      v9 = v7[5];
      v7 += 3;
    }

    while (v9);
  }

  return 1;
}

void *__55__TDThemeSchema_loadThemeConstantsForEntity_inContext___block_invoke()
{
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithPointer:", MEMORY[0x277D027C0]), @"ThemePresentationState", 0}];
  loadThemeConstantsForEntity_inContext__constantMappings = result;
  return result;
}

- (void)loadThemePresentationStates
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027C0] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027C0];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemePresentationState alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeDirections
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02778] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02778];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeDirection alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeDrawingLayers
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02788] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02788];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeDrawingLayer alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeIdioms
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027B0] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027B0];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeIdiom alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeDisplayGamuts
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02780] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02780];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeDisplayGamut alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeDeploymentTargets
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02770] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02770];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeDeploymentTarget alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeCompressionTypes
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02768] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02768];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeCompressionType alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadTexturePixelFormats
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027F0] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027F0];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDTexturePixelFormat alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeTextureFaces
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027E0] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027E0];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeDisplayGamut alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeTextureInterpretations
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027E8] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027E8];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDTextureInterpretation alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeGraphicsFeatureSetClasses
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027A0] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027A0];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeGraphicsFeatureSetClass alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadThemeUISizeClasses
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027F8] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027F8];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeUISizeClass alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadIterationTypes
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = "Iterate Values";
  if ("Iterate Values")
  {
    v6 = v4;
    v7 = gThemeIterationTypes;
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDIterationType alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadRenditionTypes
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02760] + 8);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02760];
    do
    {
      v8 = [[TDRenditionType alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v8 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v8, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithUTF8String:*(v7 + 2)]);
      -[TDThemeConstant setConstantName:](v8, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);

      v5 = *(v7 + 4);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadRenditionSubtypes
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02758] + 8);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02758];
    do
    {
      v8 = [[TDRenditionSubtype alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v8 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v8, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithUTF8String:*(v7 + 2)]);
      -[TDThemeConstant setConstantName:](v8, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);

      v5 = *(v7 + 4);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadColorNames
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  if (*(MEMORY[0x277D02730] + 8))
  {
    v5 = v4;
    v6 = (MEMORY[0x277D02730] + 24);
    do
    {
      v7 = *(v6 - 1);
      if (!v7)
      {
        break;
      }

      v8 = [[TDColorName alloc] initWithEntity:v5 insertIntoManagedObjectContext:managedObjectContext];
      -[TDColorName setDisplayName:](v8, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:1]);
      -[TDColorName setSelector:](v8, "setSelector:", [MEMORY[0x277CCACA8] stringWithCString:*v6 encoding:1]);

      v9 = v6[3];
      v6 += 5;
    }

    while (v9);
  }
}

- (void)loadColorStatuses
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02728] + 8);
  if (v5)
  {
    v6 = v4;
    v7 = (MEMORY[0x277D02728] + 32);
    do
    {
      v8 = *(v7 - 2);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeConstant alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      -[TDThemeConstant setValue:forKey:](v9, "setValue:forKey:", [MEMORY[0x277CCABB0] numberWithInteger:*(v7 - 4)], @"identifier");
      -[TDThemeConstant setValue:forKey:](v9, "setValue:forKey:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1], @"displayName");
      -[TDThemeConstant setValue:forKey:](v9, "setValue:forKey:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1], @"constantName");

      v10 = *v7;
      v7 += 3;
      v5 = v10;
    }

    while (v10);
  }
}

- (void)loadMetafontSelectors
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02748] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02748];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeConstant alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadMetafontSizes
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02750] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02750];
    do
    {
      v8 = v7[1];
      if (!v8)
      {
        break;
      }

      v9 = *v7;
      v10 = [(CoreThemeDocument *)self->_doc sizeWithIdentifier:*v7];
      v11 = [[TDMetafontSizeSelector alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      -[TDMetafontSizeSelector setIdentifier:](v11, "setIdentifier:", [MEMORY[0x277CCABB0] numberWithInteger:v9]);
      [(TDMetafontSizeSelector *)v11 setControlSize:v10];
      -[TDMetafontSizeSelector setSelectorName:](v11, "setSelectorName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);
      -[TDMetafontSizeSelector setDisplayName:](v11, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);

      v5 = v7[5];
      v7 += 3;
    }

    while (v5);
  }
}

- (void)loadEffectConstants
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D02740] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D02740];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDThemeConstant alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }

  v10 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v11 = *(MEMORY[0x277D02738] + 16);
  if (v11)
  {
    v12 = v10;
    v13 = MEMORY[0x277D02738];
    do
    {
      v14 = *(v13 + 1);
      if (!v14)
      {
        break;
      }

      v15 = [[TDThemeConstant alloc] initWithEntity:v12 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v15 setIdentifier:*v13];
      -[TDThemeConstant setDisplayName:](v15, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:1]);
      -[TDThemeConstant setConstantName:](v15, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:1]);

      v11 = *(v13 + 5);
      v13 += 6;
    }

    while (v11);
  }
}

- (void)_loadConstantForEntity:(id)entity withDescriptor:(const _themeconstant *)descriptor
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v8 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  if (descriptor->var2)
  {
    v9 = v8;
    do
    {
      if (!descriptor->var1)
      {
        break;
      }

      v10 = [objc_alloc(NSClassFromString(objc_msgSend(v9 "managedObjectClassName")))];
      [v10 setIdentifier:LODWORD(descriptor->var0)];
      [v10 setDisplayName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithCString:encoding:", descriptor->var2, 1)}];
      [v10 setConstantName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithCString:encoding:", descriptor->var1, 1)}];

      var2 = descriptor[1].var2;
      ++descriptor;
    }

    while (var2);
  }
}

- (void)loadTemplateRenderingModeConstants
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = *(MEMORY[0x277D027D8] + 16);
  if (v5)
  {
    v6 = v4;
    v7 = MEMORY[0x277D027D8];
    do
    {
      v8 = *(v7 + 1);
      if (!v8)
      {
        break;
      }

      v9 = [[TDTemplateRenderingMode alloc] initWithEntity:v6 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v7];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:v5 encoding:1]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:v8 encoding:1]);

      v5 = *(v7 + 5);
      v7 += 6;
    }

    while (v5);
  }
}

- (void)loadStandardEffectDefinitions
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(CoreThemeDocument *)self->_doc allObjectsForEntity:@"SchemaEffectDefinition" withSortDescriptors:0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v23 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    v22 = *v29;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        parts = [v5 parts];
        v7 = [parts countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v25;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v25 != v9)
              {
                objc_enumerationMutation(parts);
              }

              v11 = *(*(&v24 + 1) + 8 * j);
              [(CoreThemeDocument *)self->_doc createEffectStyleProductionForPartDefinition:v11];
              name = [v5 name];
              name2 = [v11 name];
              TDSchemaLog(&cfstr_CreatingCustom.isa, v14, v15, v16, v17, v18, v19, v20, name, name2);
            }

            v8 = [parts countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v8);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }
}

- (void)loadSchemaCategories
{
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v4 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self->_doc "managedObjectModel")];
  v5 = [objc_msgSend(MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self->_doc, "targetPlatform")), "elementCategoryCount"}];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [objc_msgSend(MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self->_doc, "targetPlatform")), "elementCategoryAtIndex:", i}];
      v9 = [[TDSchemaCategory alloc] initWithEntity:v4 insertIntoManagedObjectContext:managedObjectContext];
      [(TDThemeConstant *)v9 setIdentifier:*v8];
      -[TDThemeConstant setDisplayName:](v9, "setDisplayName:", [MEMORY[0x277CCACA8] stringWithCString:*(v8 + 2) encoding:4]);
      -[TDThemeConstant setConstantName:](v9, "setConstantName:", [MEMORY[0x277CCACA8] stringWithCString:*(v8 + 1) encoding:4]);
    }
  }
}

- (void)loadSchemaDefinitions
{
  context = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self->_doc, "targetPlatform")}];
  managedObjectContext = [(TDPersistentDocument *)self->_doc managedObjectContext];
  v5 = [MEMORY[0x277CBE408] entityForName:@"SchemaElementDefinition" inManagedObjectContext:managedObjectContext];
  elementDefinitionCount = [v3 elementDefinitionCount];
  if (elementDefinitionCount)
  {
    v7 = elementDefinitionCount;
    for (i = 0; i != v7; ++i)
    {
      v9 = [v3 elementDefinitionAtIndex:i];
      if (*v9)
      {
        v10 = v9;
        v11 = [[TDSchemaElementDefinition alloc] initWithEntity:v5 insertIntoManagedObjectContext:managedObjectContext];
        -[TDSchemaElementDefinition setName:](v11, "setName:", [MEMORY[0x277CCACA8] stringWithCString:*v10 encoding:4]);
        [(TDSchemaElementDefinition *)v11 setPublished:*(v10 + 16)];
        [(TDSchemaElementDefinition *)v11 setCategory:[(CoreThemeDocument *)self->_doc schemaCategoryWithIdentifier:v10[3]]];
        [(TDThemeSchema *)self _addSchemaPartDefinitionsForStandardElement:v10 withElement:v11];
      }
    }
  }

  v12 = [MEMORY[0x277CBE408] entityForName:@"SchemaEffectDefinition" inManagedObjectContext:managedObjectContext];
  effectDefinitionCount = [v3 effectDefinitionCount];
  if (effectDefinitionCount)
  {
    v14 = effectDefinitionCount;
    for (j = 0; j != v14; ++j)
    {
      v16 = [v3 effectDefinitionAtIndex:j];
      if (*v16)
      {
        v17 = v16;
        v18 = [[TDSchemaEffectDefinition alloc] initWithEntity:v12 insertIntoManagedObjectContext:managedObjectContext];
        -[TDSchemaEffectDefinition setName:](v18, "setName:", [MEMORY[0x277CCACA8] stringWithCString:*v17 encoding:4]);
        [(TDSchemaEffectDefinition *)v18 setPublished:*(v17 + 16)];
        [(TDSchemaEffectDefinition *)v18 setCategory:[(CoreThemeDocument *)self->_doc schemaCategoryWithIdentifier:v17[3]]];
        [(TDThemeSchema *)self _addSchemaPartDefinitionsForStandardElement:v17 withElement:v18];
      }
    }
  }

  v19 = [MEMORY[0x277CBE408] entityForName:@"SchemaMaterialDefinition" inManagedObjectContext:managedObjectContext];
  materialDefinitionCount = [v3 materialDefinitionCount];
  if (materialDefinitionCount)
  {
    v21 = materialDefinitionCount;
    for (k = 0; k != v21; ++k)
    {
      v23 = [v3 materialDefinitionAtIndex:k];
      if (*v23)
      {
        v24 = v23;
        v25 = [[TDSchemaMaterialDefinition alloc] initWithEntity:v19 insertIntoManagedObjectContext:managedObjectContext];
        -[TDSchemaMaterialDefinition setName:](v25, "setName:", [MEMORY[0x277CCACA8] stringWithCString:*v24 encoding:4]);
        [(TDSchemaMaterialDefinition *)v25 setPublished:*(v24 + 16)];
        [(TDSchemaMaterialDefinition *)v25 setCategory:[(CoreThemeDocument *)self->_doc schemaCategoryWithIdentifier:v24[3]]];
        [(TDThemeSchema *)self _addSchemaPartDefinitionsForStandardElement:v24 withElement:v25];
      }
    }
  }

  objc_autoreleasePoolPop(context);
}

- (void)resetThemeConstants
{
  v3 = objc_autoreleasePoolPush();
  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeSize" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeSizes];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeValue" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeValues];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeElement" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeElements];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemePart" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeParts];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeState" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeStates];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemePresentationState" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemePresentationStates];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeDirection" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeDirections];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeDrawingLayer" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeDrawingLayers];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeIdiom" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeIdioms];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeDisplayGamut" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeDisplayGamuts];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeDeploymentTarget" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeDeploymentTargets];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeCompressionType" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeCompressionTypes];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"TexturePixelFormat" withPredicate:0])
  {
    [(TDThemeSchema *)self loadTexturePixelFormats];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"TextureFace" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeTextureFaces];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"TextureInterpretation" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeTextureInterpretations];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeGraphicsFeatureSetClass" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeGraphicsFeatureSetClasses];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeUISizeClass" withPredicate:0])
  {
    [(TDThemeSchema *)self loadThemeUISizeClasses];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"IterationType" withPredicate:0])
  {
    [(TDThemeSchema *)self loadIterationTypes];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"RenditionType" withPredicate:0])
  {
    [(TDThemeSchema *)self loadRenditionTypes];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"RenditionSubtype" withPredicate:0])
  {
    [(TDThemeSchema *)self loadRenditionSubtypes];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ColorStatus" withPredicate:0])
  {
    [(TDThemeSchema *)self loadColorStatuses];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"MetafontSelector" withPredicate:0])
  {
    [(TDThemeSchema *)self loadMetafontSelectors];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"MetafontSizeSelector" withPredicate:0])
  {
    [(TDThemeSchema *)self loadMetafontSizes];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ColorName" withPredicate:0])
  {
    [(TDThemeSchema *)self loadColorNames];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"SchemaCategory" withPredicate:0])
  {
    [(TDThemeSchema *)self loadSchemaCategories];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"SchemaElementDefinition" withPredicate:0])
  {
    [(TDThemeSchema *)self loadSchemaDefinitions];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"EffectType" withPredicate:0])
  {
    [(TDThemeSchema *)self loadEffectConstants];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"RenderingMode" withPredicate:0])
  {
    [(TDThemeSchema *)self loadTemplateRenderingModeConstants];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeGlyphSize" withPredicate:0])
  {
    [(TDThemeSchema *)self loadGlyphSizeConstants];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"ThemeGlyphWeight" withPredicate:0])
  {
    [(TDThemeSchema *)self loadGlyphWeightConstants];
  }

  if (![(CoreThemeDocument *)self->_doc countForEntity:@"VectorGlyphRenderingMode" withPredicate:0])
  {
    [(TDThemeSchema *)self loadVectorGlyphRenderingModeConstants];
  }

  objc_autoreleasePoolPop(v3);
}

@end