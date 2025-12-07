@interface LSClaimRecord
+ (id)_propertyClasses;
- (LSBundleRecord)claimingBundleRecord;
- (NSString)localizedName;
- (id)URLSchemesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)_claimingBundleRecordWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)_localizedNameWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)handlerRankWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)iconDictionaryWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)iconResourceBundleURLWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)localizedNameWithPreferredLocalizations:(id)localizations;
- (id)typeIdentifiersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (void)_detachFromContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes;
@end

@implementation LSClaimRecord

- (LSBundleRecord)claimingBundleRecord
{
  WeakRetained = objc_loadWeakRetained(&self->_weakClaimingBundleRecord);
  if (!WeakRetained)
  {
    WeakRetained = [(LSClaimRecord *)self _claimingBundleRecord];
  }

  return WeakRetained;
}

+ (id)_propertyClasses
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

- (NSString)localizedName
{
  _localizedName = [(LSClaimRecord *)self _localizedName];
  stringValue = [_localizedName stringValue];

  return stringValue;
}

- (id)localizedNameWithPreferredLocalizations:(id)localizations
{
  _localizedName = [(LSClaimRecord *)self _localizedName];
  v5 = [_localizedName stringValueWithPreferredLocalizations:localizations];

  return v5;
}

- (id)typeIdentifiersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__LSClaimRecord_typeIdentifiersWithContext_tableID_unitID_unitBytes___block_invoke;
  v12[3] = &unk_1E6A1B270;
  v9 = v8;
  v13 = v9;
  _LSEnumerateClaimedTypes(context, bytes, v12);
  v10 = [v9 copy];

  return v10;
}

- (id)URLSchemesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__LSClaimRecord_URLSchemesWithContext_tableID_unitID_unitBytes___block_invoke;
  v12[3] = &unk_1E6A1B270;
  v9 = v8;
  v13 = v9;
  _LSEnumerateClaimedSchemes(context, bytes, v12);
  v10 = [v9 copy];

  return v10;
}

- (id)handlerRankWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v6 = _LSCopyHandlerRankStringFromNumericHandlerRank(bytes->var3);

  return v6;
}

- (id)_claimingBundleRecordWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  WeakRetained = objc_loadWeakRetained(&self->_weakClaimingBundleRecord);

  if (WeakRetained)
  {
    v9 = 0;
  }

  else
  {
    v9 = _LSBundleGet(context->db, bytes->var5);
    if (v9)
    {
      v10 = v9;
      v11 = objc_opt_class();
      if (v10[42] == 2)
      {
        v11 = objc_opt_class();
      }

      v9 = [[v11 alloc] _initWithNode:0 bundleIdentifier:0 context:context tableID:*(-[_LSDatabase schema](context->db) + 4) unitID:bytes->var5 bundleBaseData:v10 error:0];
    }
  }

  return v9;
}

- (id)_localizedNameWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v6 = [[_LSLocalizedStringRecord alloc] _initWithContext:context unitID:bytes->var6];

  return v6;
}

- (void)_detachFromContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(const void *)bytes
{
  bytes = [(LSRecord *)self _resolvedPropertyValueForGetter:sel__claimingBundleRecord, *&d, *&iD, bytes];
  if (bytes)
  {
    [bytes detach];
  }

  v8 = [(LSRecord *)self _resolvedPropertyValueForGetter:sel__localizedName];
  if (v8)
  {
    [v8 detach];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = LSClaimRecord;
  v4 = [(LSRecord *)&v7 copyWithZone:zone];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakClaimingBundleRecord);
    objc_storeWeak(v4 + 4, WeakRetained);
  }

  return v4;
}

- (id)iconDictionaryWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  var9 = bytes->var9;
  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{2, *&d, *&iD}];
  if (var9)
  {
    [(_LSDatabase *)context->db store];
    v10 = _CSStringCopyCFString();
    if (v10)
    {
      [v9 setObject:v10 forKeyedSubscript:@"CFBundleIconName"];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  v12 = 0;
  var8 = bytes->var8;
  do
  {
    if (!var8[v12])
    {
      break;
    }

    [(_LSDatabase *)context->db store];
    v14 = _CSStringCopyCFString();
    if (v14)
    {
      [v11 addObject:v14];
    }

    ++v12;
  }

  while (v12 != 8);
  if ([v11 count])
  {
    [v9 setObject:v10 forKeyedSubscript:@"CFBundleIconFiles"];
  }

  return v9;
}

- (id)iconResourceBundleURLWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  if ((bytes->var9 || bytes->var8[0]) && bytes->var10)
  {
    [(_LSDatabase *)context->db store];
    v7 = _CSStringCopyCFString();
    claimingBundleRecord = [(LSClaimRecord *)self claimingBundleRecord];
    v9 = [claimingBundleRecord URL];

    if (v9 && v7)
    {
      v10 = [v9 URLByAppendingPathComponent:v7];

      if (v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v11 = [(LSClaimRecord *)self claimingBundleRecord:context];
  v10 = [v11 URL];

LABEL_10:

  return v10;
}

@end