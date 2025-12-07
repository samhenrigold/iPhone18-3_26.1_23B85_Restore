@interface _NSMappingModelBuilder
- (NSEntityMapping)newEntityMappingWithSource:(void *)source destination:(void *)destination;
- (NSMappingModel)newInferredMappingModel:(NSMappingModel *)model;
- (_NSMappingModelBuilder)initWithSourceModel:(id)model destinationModel:(id)destinationModel;
- (void)dealloc;
@end

@implementation _NSMappingModelBuilder

- (_NSMappingModelBuilder)initWithSourceModel:(id)model destinationModel:(id)destinationModel
{
  v8.receiver = self;
  v8.super_class = _NSMappingModelBuilder;
  v6 = [(_NSMappingModelBuilder *)&v8 init];
  if (v6)
  {
    v6->_sourceModel = model;
    v6->_destinationModel = destinationModel;
  }

  return v6;
}

- (void)dealloc
{
  self->_sourceModel = 0;

  self->_destinationModel = 0;
  self->_error = 0;
  v3.receiver = self;
  v3.super_class = _NSMappingModelBuilder;
  [(_NSMappingModelBuilder *)&v3 dealloc];
}

- (NSMappingModel)newInferredMappingModel:(NSMappingModel *)model
{
  modelCopy = model;
  v154 = *MEMORY[0x1E69E9840];
  if (!model)
  {
    return modelCopy;
  }

  model->_reserved2 = 0;

  modelCopy->_entityMappings = 0;
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v82 = modelCopy;
  reserved = modelCopy->_reserved;
  v5 = 0;
  v6 = [reserved countByEnumeratingWithState:&v96 objects:v147 count:16];
  if (v6)
  {
    v7 = *v97;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v97 != v7)
        {
          objc_enumerationMutation(reserved);
        }

        [v3 setObject:*(*(&v96 + 1) + 8 * i) forKey:{objc_msgSend(*(*(&v96 + 1) + 8 * i), "renamingIdentifier")}];
      }

      v5 += v6;
      v6 = [reserved countByEnumeratingWithState:&v96 objects:v147 count:16];
    }

    while (v6);
  }

  if (v5 != [v3 count])
  {
    v59 = objc_alloc(MEMORY[0x1E696ABC0]);
    v60 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Each source entity must have a unique renaming identifier" forKey:@"reason"];
    v61 = [v59 initWithDomain:*MEMORY[0x1E696A250] code:134190 userInfo:v60];
    v82->_entityMappings = v61;
    modelCopy = 0;
    if (a2)
    {
      *a2 = v61;
    }

    goto LABEL_88;
  }

  v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:2 * v5];
  obj = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2 * v5];
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  reserved1 = v82->_reserved1;
  v11 = 0;
  v12 = [reserved1 countByEnumeratingWithState:&v92 objects:v146 count:16];
  if (v12)
  {
    v13 = *v93;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v93 != v13)
        {
          objc_enumerationMutation(reserved1);
        }

        v15 = *(*(&v92 + 1) + 8 * j);
        renamingIdentifier = [v15 renamingIdentifier];
        v17 = -[_NSMappingModelBuilder newEntityMappingWithSource:destination:]([v3 objectForKey:renamingIdentifier], v15);
        [obj addObject:v17];
        [v9 addObject:renamingIdentifier];

        [v3 removeObjectForKey:{objc_msgSend(v15, "renamingIdentifier")}];
      }

      v11 += v12;
      v12 = [reserved1 countByEnumeratingWithState:&v92 objects:v146 count:16];
    }

    while (v12);
  }

  if (v11 != [v9 count])
  {
    v62 = objc_alloc(MEMORY[0x1E696ABC0]);
    v63 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Each destination entity must have a unique renaming identifier" forKey:@"reason"];
    v64 = [v62 initWithDomain:*MEMORY[0x1E696A250] code:134190 userInfo:v63];
    v82->_entityMappings = v64;
    if (a2)
    {
      *a2 = v64;
    }

    modelCopy = 0;
    v3 = v9;
    goto LABEL_88;
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v18 = [v3 countByEnumeratingWithState:&v88 objects:v145 count:16];
  if (v18)
  {
    v19 = *v89;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v89 != v19)
        {
          objc_enumerationMutation(v3);
        }

        v21 = -[_NSMappingModelBuilder newEntityMappingWithSource:destination:]([v3 objectForKey:*(*(&v88 + 1) + 8 * k)], 0);
        [obj addObject:v21];
      }

      v18 = [v3 countByEnumeratingWithState:&v88 objects:v145 count:16];
    }

    while (v18);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v73 = [obj countByEnumeratingWithState:&v84 objects:v144 count:16];
  if (!v73)
  {
LABEL_72:
    modelCopy = objc_alloc_init(NSMappingModel);
    [(NSMappingModel *)modelCopy setEntityMappings:obj];
    goto LABEL_87;
  }

  v72 = *v85;
  v70 = *MEMORY[0x1E696A250];
LABEL_27:
  v81 = 0;
  while (1)
  {
    if (*v85 != v72)
    {
      objc_enumerationMutation(obj);
    }

    v22 = *(*(&v84 + 1) + 8 * v81);
    if ([v22 mappingType] == 4 || objc_msgSend(v22, "mappingType") == 5)
    {
      break;
    }

LABEL_70:
    if (++v81 == v73)
    {
      v73 = [obj countByEnumeratingWithState:&v84 objects:v144 count:16];
      if (!v73)
      {
        goto LABEL_72;
      }

      goto LABEL_27;
    }
  }

  v23 = [objc_msgSend(v82->_reserved "entitiesByName")];
  v77 = [objc_msgSend(v82->_reserved1 "entitiesByName")];
  v82->_reserved2 = v22;
  v79 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v24 = MEMORY[0x1E696ABC8];
  v25 = [MEMORY[0x1E696ABC8] expressionForVariable:@"manager"];
  v26 = MEMORY[0x1E695DEC8];
  v27 = [MEMORY[0x1E696ABC8] expressionForConstantValue:{objc_msgSend(v23, "name")}];
  v28 = [v24 expressionForFunction:v25 selectorName:@"fetchRequestForSourceEntityNamed:predicateString:" arguments:{objc_msgSend(v26, "arrayWithObjects:", v27, objc_msgSend(MEMORY[0x1E696ABC8], "expressionForConstantValue:", @"TRUEPREDICATE", 0)}];
  [v22 setSourceExpression:{+[NSFetchRequestExpression expressionForFetch:context:countOnly:](NSFetchRequestExpression, "expressionForFetch:context:countOnly:", v28, objc_msgSend(MEMORY[0x1E696ABC8], "expressionForFunction:selectorName:arguments:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForVariable:", @"manager", @"sourceContext", 0), 0)}];
  propertiesByName = [v23 propertiesByName];
  v30 = [propertiesByName count];
  v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v30];
  v140 = 0;
  v141 = &v140;
  v142 = 0x2020000000;
  v143 = 0;
  v32 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v30];
  v74 = v22;
  v134 = 0;
  v135 = &v134;
  v136 = 0x3052000000;
  v137 = __Block_byref_object_copy__6;
  v138 = __Block_byref_object_dispose__6;
  v133[0] = MEMORY[0x1E69E9820];
  v133[1] = 3221225472;
  v133[2] = __64___NSMappingModelBuilder_inferPropertyMappingsForEntityMapping___block_invoke;
  v133[3] = &unk_1E6EC1938;
  v133[6] = &v140;
  v133[4] = v31;
  v80 = v32;
  v133[5] = v32;
  v139 = v133;
  v127 = 0;
  v128 = &v127;
  v129 = 0x3052000000;
  v130 = __Block_byref_object_copy__6;
  v131 = __Block_byref_object_dispose__6;
  v126[0] = MEMORY[0x1E69E9820];
  v126[1] = 3221225472;
  v126[2] = __64___NSMappingModelBuilder_inferPropertyMappingsForEntityMapping___block_invoke_2;
  v126[3] = &unk_1E6EC1960;
  v126[4] = &v127;
  v126[5] = &v134;
  v132 = v126;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  allValues = [propertiesByName allValues];
  v34 = [allValues countByEnumeratingWithState:&v122 objects:buf count:16];
  if (!v34)
  {
    goto LABEL_51;
  }

  v35 = *v123;
  do
  {
    for (m = 0; m != v34; ++m)
    {
      if (*v123 != v35)
      {
        objc_enumerationMutation(allValues);
      }

      v37 = *(*(&v122 + 1) + 8 * m);
      if (([v37 isTransient] & 1) == 0)
      {
        _propertyType = [v37 _propertyType];
        if (_propertyType > 5)
        {
          if (_propertyType == 7)
          {
            v41 = v128[5];
            elements = [v37 elements];
            renamingIdentifier2 = [v37 renamingIdentifier];
            v37 = elements;
          }

          else
          {
            if (_propertyType != 6)
            {
              continue;
            }

LABEL_46:
            renamingIdentifier2 = 0;
            v41 = v135[5];
          }

          (*(v41 + 16))(v41, v37, renamingIdentifier2);
          continue;
        }

        if (_propertyType == 2 || _propertyType == 4)
        {
          goto LABEL_46;
        }
      }
    }

    v34 = [allValues countByEnumeratingWithState:&v122 objects:buf count:16];
  }

  while (v34);
LABEL_51:
  v43 = v141[3];
  if (v43 == [v31 count])
  {
    propertiesByName2 = [v77 propertiesByName];
    v45 = [propertiesByName2 count];
    v46 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v45];
    v75 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v45];
    v78 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v45];
    v76 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v45];
    v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v118 = 0;
    v119 = &v118;
    v120 = 0x2020000000;
    v121 = 0;
    v112 = 0;
    v113 = &v112;
    v114 = 0x3052000000;
    v115 = __Block_byref_object_copy__6;
    v116 = __Block_byref_object_dispose__6;
    v111[0] = MEMORY[0x1E69E9820];
    v111[1] = 3221225472;
    v111[2] = __64___NSMappingModelBuilder_inferPropertyMappingsForEntityMapping___block_invoke_3;
    v111[3] = &unk_1E6EC1988;
    v111[4] = v31;
    v111[5] = v82;
    v71 = v46;
    v111[6] = v46;
    v111[7] = v75;
    v111[8] = v47;
    v111[9] = v78;
    v111[10] = v76;
    v111[11] = v80;
    v111[12] = &v118;
    v117 = v111;
    v105 = 0;
    v106 = &v105;
    v107 = 0x3052000000;
    v108 = __Block_byref_object_copy__6;
    v109 = __Block_byref_object_dispose__6;
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = __64___NSMappingModelBuilder_inferPropertyMappingsForEntityMapping___block_invoke_59;
    v104[3] = &unk_1E6EC19B0;
    v104[5] = &v105;
    v104[4] = v47;
    v104[6] = &v112;
    v110 = v104;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    allValues2 = [propertiesByName2 allValues];
    v49 = [allValues2 countByEnumeratingWithState:&v100 objects:v149 count:16];
    if (v49)
    {
      v50 = *v101;
      do
      {
        for (n = 0; n != v49; ++n)
        {
          if (*v101 != v50)
          {
            objc_enumerationMutation(allValues2);
          }

          v52 = *(*(&v100 + 1) + 8 * n);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v53 = v106[5];
            v148 = v52;
            (*(v53 + 16))(v53, [MEMORY[0x1E695DEC8] arrayWithObjects:&v148 count:1], 0);
          }

          else
          {
            (*(v113[5] + 16))();
          }
        }

        v49 = [allValues2 countByEnumeratingWithState:&v100 objects:v149 count:16];
      }

      while (v49);
    }

    if (v119[3])
    {
    }

    else
    {
      [v74 setAttributeMappings:v78];
      [v74 setRelationshipMappings:v76];

      userInfo = [v74 userInfo];
      v57 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(userInfo, "count") + 3}];
      v58 = v57;
      if (userInfo)
      {
        [v57 addEntriesFromDictionary:userInfo];
      }

      [v58 setObject:v80 forKey:_NSInferredRemovedPropertiesKey];
      [v58 setObject:v71 forKey:_NSInferredAddedPropertiesKey];
      [v58 setObject:v75 forKey:_NSInferredMappedPropertiesKey];
      [v74 setUserInfo:v58];
    }

    [v79 drain];
    v55 = *(v119 + 24) ^ 1;
    _Block_object_dispose(&v105, 8);
    _Block_object_dispose(&v112, 8);
    _Block_object_dispose(&v118, 8);
  }

  else
  {
    v54 = objc_alloc(MEMORY[0x1E696ABC0]);
    v82->_entityMappings = [v54 initWithDomain:v70 code:134190 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"Each property must have a unique renaming identifier", @"reason"}];

    [v79 drain];
    v55 = 0;
  }

  _Block_object_dispose(&v127, 8);
  _Block_object_dispose(&v134, 8);
  _Block_object_dispose(&v140, 8);
  if (v55)
  {
    goto LABEL_70;
  }

  entityMappings = v82->_entityMappings;
  if (entityMappings)
  {
    if (a2)
    {
      modelCopy = 0;
      *a2 = entityMappings;
      goto LABEL_87;
    }
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v151 = "/Library/Caches/com.apple.xbs/Sources/Persistence/_NSMappingModelBuilder.m";
      v152 = 1024;
      v153 = 132;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v67 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v151 = "/Library/Caches/com.apple.xbs/Sources/Persistence/_NSMappingModelBuilder.m";
      v152 = 1024;
      v153 = 132;
      _os_log_fault_impl(&dword_18565F000, v67, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    }
  }

  modelCopy = 0;
LABEL_87:
  v3 = obj;
LABEL_88:

  return modelCopy;
}

- (NSEntityMapping)newEntityMappingWithSource:(void *)source destination:(void *)destination
{
  v4 = objc_alloc_init(NSEntityMapping);
  if (source)
  {
    -[NSEntityMapping setSourceEntityName:](v4, "setSourceEntityName:", [source name]);
    -[NSEntityMapping setSourceEntityVersionHash:](v4, "setSourceEntityVersionHash:", [source versionHash]);
    v5 = 0;
    if (destination)
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [v13 initWithFormat:@"%@%@_%@", _NSInferredMappingPrefix, @"Remove", objc_msgSend(source, "renamingIdentifier")];
    [(NSEntityMapping *)v4 setName:v14];

    v5 = 3;
    goto LABEL_11;
  }

  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [v11 initWithFormat:@"%@%@_%@", _NSInferredMappingPrefix, @"Add", objc_msgSend(destination, "renamingIdentifier")];
  [(NSEntityMapping *)v4 setName:v12];

  v5 = 2;
  if (!destination)
  {
    goto LABEL_7;
  }

LABEL_3:
  -[NSEntityMapping setDestinationEntityName:](v4, "setDestinationEntityName:", [destination name]);
  -[NSEntityMapping setDestinationEntityVersionHash:](v4, "setDestinationEntityVersionHash:", [destination versionHash]);
  if (source)
  {
    v6 = [objc_msgSend(source "versionHash")];
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = _NSInferredMappingPrefix;
    renamingIdentifier = [source renamingIdentifier];
    if (v6)
    {
      v10 = [v7 initWithFormat:@"%@%@_%@", v8, @"Copy", renamingIdentifier];
      [(NSEntityMapping *)v4 setName:v10];

      v5 = 4;
    }

    else
    {
      v15 = [v7 initWithFormat:@"%@%@_%@", v8, @"Transform", renamingIdentifier];
      [(NSEntityMapping *)v4 setName:v15];

      v5 = 5;
      if ([source _isSchemaEqual:destination] && v4)
      {
        *&v4->_entityMappingFlags |= 2u;
        v5 = 5;
      }
    }
  }

LABEL_11:
  [(NSEntityMapping *)v4 setMappingType:v5];
  return v4;
}

@end