@interface _UTDynamicTypeRecord
+ (id)_propertyClasses;
- (BOOL)conformsToTypeIdentifier:(id)identifier;
- (BOOL)isChildOfTypeIdentifier:(id)identifier;
- (_UTDynamicTypeRecord)initWithCoder:(id)coder;
- (id)_initWithContext:(LSContext *)context dynamicUTI:(id)i;
- (id)_persistentIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)declaration;
- (id)parentTypeIdentifiers;
- (id)pedigreeWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)preferredTagOfClass:(id)class;
- (id)tagSpecification;
- (void)_enumerateRelatedTypeUnitsOrDynamicIdsWithContext:(LSContext *)context unitID:(unsigned int)d maximumDegreeOfSeparation:(int64_t)separation block:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UTDynamicTypeRecord

- (id)tagSpecification
{
  TagSpecification = _UTDynamicGetTagSpecification(self->_identifier);
  if (TagSpecification)
  {
    [_LSLazyPropertyList lazyPropertyListWithPropertyList:?];
  }

  else
  {
    _LSLazyPropertyListGetSharedEmptyPropertyList();
  }
  v3 = ;

  return v3;
}

- (id)_initWithContext:(LSContext *)context dynamicUTI:(id)i
{
  v7 = *([(_LSDatabase *)context->db schema]+ 16);
  v12.receiver = self;
  v12.super_class = _UTDynamicTypeRecord;
  v8 = [(LSRecord *)&v12 _initWithContext:context tableID:v7 unitID:0];
  if (v8)
  {
    v9 = [i copy];
    v10 = v8[4];
    v8[4] = v9;
  }

  return v8;
}

- (id)declaration
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"UTTypeIdentifier"];
  TagSpecification = _UTDynamicGetTagSpecification(self->_identifier);
  [v3 setObject:TagSpecification forKeyedSubscript:@"UTTypeTagSpecification"];

  ParentIdentifiers = _UTDynamicGetParentIdentifiers(self->_identifier);
  [v3 setObject:ParentIdentifiers forKeyedSubscript:@"UTTypeConformsTo"];

  v6 = [_LSLazyPropertyList lazyPropertyListWithPropertyList:v3];

  return v6;
}

- (id)preferredTagOfClass:(id)class
{
  FirstTag = _UTDynamicGetFirstTag(self->_identifier, class);

  return FirstTag;
}

- (BOOL)conformsToTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(_UTDynamicTypeRecord *)self isChildOfTypeIdentifier:identifierCopy])
  {
    v5 = 1;
    lowercaseString = identifierCopy;
  }

  else
  {
    lowercaseString = [identifierCopy lowercaseString];

    pedigree = [(_UTDynamicTypeRecord *)self pedigree];
    v8 = pedigree;
    if (pedigree)
    {
      v5 = [pedigree containsObject:lowercaseString];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)pedigreeWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  Pedigree = _UTDynamicGetPedigree(context, self->_identifier);
  v7 = Pedigree;
  if (Pedigree)
  {
    v8 = Pedigree;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFD8] set];
  }

  v9 = v8;

  return v9;
}

- (id)parentTypeIdentifiers
{
  ParentIdentifiers = _UTDynamicGetParentIdentifiers(self->_identifier);
  if (ParentIdentifiers)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:ParentIdentifiers];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  }

  v4 = v3;

  return v4;
}

- (BOOL)isChildOfTypeIdentifier:(id)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  identifier = self->_identifier;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48___UTDynamicTypeRecord_isChildOfTypeIdentifier___block_invoke;
  v6[3] = &unk_1E6A1F208;
  v6[4] = identifier;
  v6[5] = &v7;
  _UTDynamicEnumerateParentIdentifiers(identifier, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_enumerateRelatedTypeUnitsOrDynamicIdsWithContext:(LSContext *)context unitID:(unsigned int)d maximumDegreeOfSeparation:(int64_t)separation block:(id)block
{
  v33 = *MEMORY[0x1E69E9840];
  v15 = separation - 1;
  if (separation >= 1)
  {
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x5812000000;
    v29[3] = __Block_byref_object_copy__262;
    v29[4] = __Block_byref_object_dispose__263;
    v29[5] = &unk_1818533FF;
    memset(v30, 0, sizeof(v30));
    v31 = 1065353216;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [(_UTDynamicTypeRecord *)self parentTypeIdentifiers:context];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v32 count:16];
    if (v9)
    {
      v10 = *v22;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v20 = 0;
        if (_UTTypeIdentifierIsDynamic(v12))
        {
          v13 = objc_autoreleasePoolPush();
          if (([0 containsObject:v12] & 1) == 0)
          {
            [0 addObject:v12];
            v17[0] = v12;
            v17[1] = 1;
            v18 = 0;
            v19 = 0;
            (*(block + 2))(block, v17, v26 + 3);
          }

          objc_autoreleasePoolPop(v13);
        }

        else if (_UTGetActiveTypeForCFStringIdentifier(context->db, v12, &v20))
        {
          db = context->db;
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __113___UTDynamicTypeRecord__enumerateRelatedTypeUnitsOrDynamicIdsWithContext_unitID_maximumDegreeOfSeparation_block___block_invoke;
          v16[3] = &unk_1E6A1F230;
          v16[4] = block;
          v16[5] = v29;
          v16[6] = &v25;
          _UTTypeSearchConformsToTypesWithBlock(db, v20, v15, 0, v16);
        }

        if (v26[3])
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v8 countByEnumeratingWithState:&v21 objects:v32 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(v29, 8);
    std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(v30);
  }
}

+ (id)_propertyClasses
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

- (id)_persistentIdentifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes
{
  v12.receiver = self;
  v12.super_class = _UTDynamicTypeRecord;
  v7 = [(LSRecord *)&v12 _persistentIdentifierWithContext:context tableID:*&d unitID:*&iD unitBytes:bytes];
  v8 = [v7 mutableCopy];

  v9 = [(NSString *)self->_identifier dataUsingEncoding:4];
  if (v9)
  {
    [v8 appendData:v9];
  }

  v10 = [v8 copy];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UTDynamicTypeRecord;
  [(LSRecord *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->_identifier forKey:@"identifier"];
}

- (_UTDynamicTypeRecord)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = _UTDynamicTypeRecord;
  v4 = [(LSRecord *)&v8 initWithCoder:?];
  if (v4)
  {
    v5 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v4->_identifier;
    v4->_identifier = v5;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = _UTDynamicTypeRecord;
  v4 = [(LSRecord *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 4, self->_identifier);
  }

  return v5;
}

@end