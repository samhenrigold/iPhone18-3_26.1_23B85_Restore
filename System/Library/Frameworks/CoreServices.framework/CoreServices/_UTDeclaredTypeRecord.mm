@interface _UTDeclaredTypeRecord
+ (id)_propertyClasses;
- (BOOL)_isOneTapOpenable;
- (BOOL)conformsToTypeIdentifier:(id)identifier;
- (id)_declaringBundleBookmarkWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)_declaringBundleRecordWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)_delegatePathWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)_localizedDescriptionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)_referenceAccessoryPathWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)_referenceAccessoryURLNoConformances;
- (id)childTypeIdentifiersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)declarationWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)declaringBundleRecord;
- (id)identifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)parentTypeIdentifiersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)pedigreeWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)referenceURLWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)tagSpecificationWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)versionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (void)_detachFromContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes;
- (void)_enumerateRelatedTypeStructuresWithContext:(LSContext *)context unitID:(unsigned int)d maximumDegreeOfSeparation:(int64_t)separation block:(id)block;
- (void)_enumerateRelatedTypeUnitsOrDynamicIdsWithContext:(LSContext *)context unitID:(unsigned int)d maximumDegreeOfSeparation:(int64_t)separation block:(id)block;
@end

@implementation _UTDeclaredTypeRecord

- (id)declaringBundleRecord
{
  WeakRetained = objc_loadWeakRetained(&self->_weakDeclaringBundleRecord);
  if (!WeakRetained)
  {
    WeakRetained = [(_UTDeclaredTypeRecord *)self _declaringBundleRecord];
  }

  return WeakRetained;
}

+ (id)_propertyClasses
{
  v4[7] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:7];

  return v2;
}

- (id)_declaringBundleRecordWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_weakDeclaringBundleRecord);

  if (WeakRetained)
  {
LABEL_2:
    v10 = 0;
    goto LABEL_3;
  }

  db = context->db;
  var5 = bytes->var5;
  if ((bytes->var2 & 0x2000) != 0)
  {
    v10 = _LSGetPlugin(db, var5);
    if (v10)
    {
      v10 = [[LSApplicationExtensionRecord alloc] _initWithContext:context pluginID:bytes->var5 pluginData:v10 error:0];
    }
  }

  else
  {
    v10 = _LSBundleGet(db, var5);
    if (v10)
    {
      v14 = v10;
      v15 = v10[42];
      switch(v15)
      {
        case 11:
          v10 = +[LSBundleRecord coreTypesBundleRecord];
          break;
        case 8:
          v10 = [[LSBundleRecord alloc] _initWithNode:0 bundleIdentifier:0 context:context tableID:*([(_LSDatabase *)context->db schema]+ 4) unitID:bytes->var5 bundleBaseData:v10 error:0];
          break;
        case 2:
          v10 = [[LSApplicationRecord alloc] _initWithContext:context bundleID:bytes->var5 bundleData:v10 error:0];
          break;
        default:
          v16 = _LSRecordLog(v10);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = v14[42];
            identifier = [(_UTDeclaredTypeRecord *)self identifier];
            *buf = 134218242;
            v20 = v17;
            v21 = 2114;
            v22 = identifier;
            _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_ERROR, "Unexpected bundle class %lu declaring type %{public}@", buf, 0x16u);
          }

          goto LABEL_2;
      }
    }
  }

LABEL_3:

  return v10;
}

- (void)_enumerateRelatedTypeStructuresWithContext:(LSContext *)context unitID:(unsigned int)d maximumDegreeOfSeparation:(int64_t)separation block:(id)block
{
  if (separation < 1)
  {
    if (separation < 0)
    {
      db = context->db;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __107___UTDeclaredTypeRecord__enumerateRelatedTypeStructuresWithContext_unitID_maximumDegreeOfSeparation_block___block_invoke_2;
      v9[3] = &unk_1E6A1F140;
      if (separation == 0x8000000000000000)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = -separation;
      }

      v9[4] = block;
      v9[5] = context;
      _UTTypeSearchConformingTypesWithBlock(db, *&d, v8, 0, v9);
    }
  }

  else
  {
    v6 = context->db;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __107___UTDeclaredTypeRecord__enumerateRelatedTypeStructuresWithContext_unitID_maximumDegreeOfSeparation_block___block_invoke;
    v10[3] = &unk_1E6A1F140;
    v10[4] = block;
    v10[5] = context;
    _UTTypeSearchConformsToTypesWithBlock(v6, *&d, separation, 0, v10);
  }
}

- (id)identifierWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  [(_LSDatabase *)context->db store];
  v6 = _CSStringCopyCFString();

  return v6;
}

- (id)versionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  if ((bytes->var2 & 0x100) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{bytes->var4, *&d, *&iD, v6}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)declarationWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  identifier = [(_UTDeclaredTypeRecord *)self identifier];
  [v9 setObject:identifier forKeyedSubscript:@"UTTypeIdentifier"];

  version = [(_UTDeclaredTypeRecord *)self version];
  [v9 setObject:version forKeyedSubscript:@"UTTypeVersion"];

  _localizedDescription = [(_UTDeclaredTypeRecord *)self _localizedDescription];
  defaultStringValue = [_localizedDescription defaultStringValue];
  [v9 setObject:defaultStringValue forKeyedSubscript:@"UTTypeDescription"];

  [(_LSDatabase *)context->db store];
  v14 = _CSStringCopyCFString();
  [v9 setObject:v14 forKeyedSubscript:@"UTKEXTIdentifier"];

  tagSpecification = [(_UTDeclaredTypeRecord *)self tagSpecification];
  _expensiveDictionaryRepresentation = [tagSpecification _expensiveDictionaryRepresentation];
  [v9 setObject:_expensiveDictionaryRepresentation forKeyedSubscript:@"UTTypeTagSpecification"];

  var14 = bytes->var14;
  if (var14)
  {
    db = context->db;
    schema = [(_LSDatabase *)context->db schema];
    EntryWithClass = _LSBindingListGetEntryWithClass(db, var14, *(schema + 216));
    if (EntryWithClass && (v21 = EntryWithClass[1], v21))
    {
      v22 = 0;
      v23 = EntryWithClass + 2;
      do
      {
        ++v23;
        [(_LSDatabase *)context->db store];
        v24 = _CSStringCopyCFString();
        v25 = v24;
        if (v24 && [v24 length])
        {
          if (!v22)
          {
            v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v22 addObject:v25];
        }

        --v21;
      }

      while (v21);
    }

    else
    {
      v22 = 0;
    }

    [v9 setObject:v22 forKeyedSubscript:@"UTTypeConformsTo"];
  }

  referenceURL = [(_UTDeclaredTypeRecord *)self referenceURL];
  absoluteString = [referenceURL absoluteString];
  [v9 setObject:absoluteString forKeyedSubscript:@"UTTypeReferenceURL"];

  if ([(_UTDeclaredTypeRecord *)self isWildcard])
  {
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"UTTypeIsWildcard"];
  }

  v28 = [_LSLazyPropertyList lazyPropertyListWithPropertyList:v9];

  return v28;
}

- (id)tagSpecificationWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  if (!bytes->var13)
  {
    goto LABEL_21;
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  EntryCount = _LSBindingListGetEntryCount(context->db, bytes->var13);
  if (EntryCount)
  {
    for (i = 0; i != EntryCount; ++i)
    {
      EntryAtIndex = _LSBindingListGetEntryAtIndex(context->db, bytes->var13, i);
      if (EntryAtIndex)
      {
        [(_LSDatabase *)context->db store];
        v12 = _CSStringCopyCFString();
        if (v12)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v14 = EntryAtIndex[1];
          if (v14)
          {
            v15 = EntryAtIndex + 2;
            do
            {
              ++v15;
              [(_LSDatabase *)context->db store];
              v16 = _CSStringCopyCFString();
              if (v16)
              {
                [v13 addObject:v16];
              }

              --v14;
            }

            while (v14);
          }

          if ([v13 count])
          {
            v17 = [v8 objectForKeyedSubscript:v12];
            v18 = v17;
            if (v17)
            {
              v19 = [v17 arrayByAddingObjectsFromArray:v13];
            }

            else
            {
              v19 = [v13 copy];
            }

            [v8 setObject:v19 forKeyedSubscript:v12];
          }
        }
      }
    }
  }

  if (v8)
  {
    v20 = [_LSLazyPropertyList lazyPropertyListWithPropertyList:v8];
  }

  else
  {
LABEL_21:
    v20 = _LSLazyPropertyListGetSharedEmptyPropertyList();
  }

  return v20;
}

- (id)referenceURLWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  [(_LSDatabase *)context->db store];
  v6 = _CSStringCopyCFString();
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)conformsToTypeIdentifier:(id)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50___UTDeclaredTypeRecord_conformsToTypeIdentifier___block_invoke;
  v6[3] = &unk_1E6A1F168;
  v6[4] = identifier;
  v6[5] = &v7;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50___UTDeclaredTypeRecord_conformsToTypeIdentifier___block_invoke_2;
  v5[3] = &unk_1E6A1F190;
  v5[5] = identifier;
  v5[6] = &v7;
  v5[4] = self;
  [(LSRecord *)self _ifAttached:v6 else:v5];
  v3 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (id)pedigreeWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  PedigreeInternal = _UTTypeGetPedigreeInternal(&context->db, *&iD, bytes);
  v7 = PedigreeInternal;
  if (PedigreeInternal)
  {
    v8 = PedigreeInternal;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFD8] set];
  }

  v9 = v8;

  return v9;
}

- (id)parentTypeIdentifiersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v6 = *&iD;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  db = context->db;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __83___UTDeclaredTypeRecord_parentTypeIdentifiersWithContext_tableID_unitID_unitBytes___block_invoke;
  v16 = &unk_1E6A1EF88;
  contextCopy = context;
  v10 = v8;
  v17 = v10;
  _UTTypeSearchConformsToTypesWithBlock(db, v6, 1, 0, &v13);
  v11 = [v10 copy];

  return v11;
}

- (id)childTypeIdentifiersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v6 = *&iD;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  db = context->db;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __82___UTDeclaredTypeRecord_childTypeIdentifiersWithContext_tableID_unitID_unitBytes___block_invoke;
  v16 = &unk_1E6A1EF88;
  contextCopy = context;
  v10 = v8;
  v17 = v10;
  _UTTypeSearchConformingTypesWithBlock(db, v6, 1, 0, &v13);
  v11 = [v10 copy];

  return v11;
}

- (id)_localizedDescriptionWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v6 = [[_LSLocalizedStringRecord alloc] _initWithContext:context unitID:_UTGetLocalizedDescription(context->db, *&iD)];

  return v6;
}

- (id)_declaringBundleBookmarkWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  BundleBaseData = _UTTypeGetBundleBaseData(context->db, bytes);
  if (BundleBaseData)
  {
    v8 = _LSAliasGet(context->db, *BundleBaseData);
    v9 = [v8 copy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_delegatePathWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  if ((bytes->var2 & 0x2000) != 0)
  {
    v11 = 0;
  }

  else
  {
    [(_LSDatabase *)context->db store];
    v8 = _CSStringCopyCFString();
    if (v8)
    {
      if (_LSBundleGet(context->db, bytes->var5) && ([(_LSDatabase *)context->db store], v9 = _CSStringCopyCFString(), (v10 = v9) != 0))
      {
        v11 = [v9 stringByAppendingPathComponent:v8];
      }

      else
      {
        v11 = v8;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)_isOneTapOpenable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  __isDirectlyOneTapOpenable = [(_UTDeclaredTypeRecord *)self __isDirectlyOneTapOpenable];
  if (v7[3])
  {
    v3 = 1;
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42___UTDeclaredTypeRecord__isOneTapOpenable__block_invoke;
    v5[3] = &unk_1E6A1F1B8;
    v5[4] = &v6;
    [(UTTypeRecord *)self enumeratePedigreeWithBlock:v5];
    v3 = *(v7 + 24);
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

- (void)_enumerateRelatedTypeUnitsOrDynamicIdsWithContext:(LSContext *)context unitID:(unsigned int)d maximumDegreeOfSeparation:(int64_t)separation block:(id)block
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __114___UTDeclaredTypeRecord__enumerateRelatedTypeUnitsOrDynamicIdsWithContext_unitID_maximumDegreeOfSeparation_block___block_invoke;
  v6[3] = &unk_1E6A1F1E0;
  v6[4] = block;
  [(_UTDeclaredTypeRecord *)self _enumerateRelatedTypeStructuresWithContext:context unitID:*&d maximumDegreeOfSeparation:separation block:v6];
}

- (void)_detachFromContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes
{
  v11.receiver = self;
  v11.super_class = _UTDeclaredTypeRecord;
  [(UTTypeRecord *)&v11 _detachFromContext:context tableID:*&d unitID:*&iD unitBytes:bytes];
  v7 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel__declaringBundleRecord];
  v8 = v7;
  if (v7)
  {
    [v7 detach];
  }

  v9 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel__localizedDescription];
  v10 = v9;
  if (v9)
  {
    [v9 detach];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = _UTDeclaredTypeRecord;
  v4 = [(LSRecord *)&v7 copyWithZone:zone];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakDeclaringBundleRecord);
    objc_storeWeak(v4 + 4, WeakRetained);
  }

  return v4;
}

- (id)_referenceAccessoryPathWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  [(_LSDatabase *)context->db store];
  v6 = _CSStringCopyCFString();

  return v6;
}

- (id)_referenceAccessoryURLNoConformances
{
  _referenceAccessoryPath = [(_UTDeclaredTypeRecord *)self _referenceAccessoryPath];
  _delegatePath = [(_UTDeclaredTypeRecord *)self _delegatePath];
  _declaringBundleBookmark = [(_UTDeclaredTypeRecord *)self _declaringBundleBookmark];
  v6 = _declaringBundleBookmark;
  v7 = 0;
  if (_referenceAccessoryPath && _declaringBundleBookmark)
  {
    v8 = [[FSNode alloc] initByResolvingBookmarkData:_declaringBundleBookmark relativeToNode:0 bookmarkDataIsStale:0 error:0];
    v9 = v8;
    v10 = v8;
    if (_delegatePath)
    {
      v11 = v8;
      v12 = v11;
      if (([(_UTDeclaredTypeRecord *)self _rawFlags]& 0x20) != 0)
      {
        v13 = [[FSNode alloc] initWithPath:@"/System/Library/CoreServices/CoreTypes.bundle/" flags:8 error:0];

        v12 = v13;
      }

      v14 = [(FSNode *)v12 childNodeWithRelativePath:_delegatePath flags:8 error:0];

      v10 = v14;
    }

    v15 = [v10 childNodeWithRelativePath:_referenceAccessoryPath flags:0 error:0];
    v7 = [v15 URL];
  }

  return v7;
}

@end