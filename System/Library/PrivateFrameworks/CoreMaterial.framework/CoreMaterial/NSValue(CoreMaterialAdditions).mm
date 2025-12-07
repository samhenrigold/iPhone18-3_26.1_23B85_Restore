@interface NSValue(CoreMaterialAdditions)
+ (id)mt_identityValueForMaterialSettingsProperty:()CoreMaterialAdditions;
+ (void)mt_identityValueForFilter:()CoreMaterialAdditions;
- (void)mt_isIdentityValueForFilter:()CoreMaterialAdditions;
- (void)mt_isIdentityValueForMaterialSettingsProperty:()CoreMaterialAdditions;
@end

@implementation NSValue(CoreMaterialAdditions)

+ (void)mt_identityValueForFilter:()CoreMaterialAdditions
{
  v3 = a3;
  if ([v3 isEqualToString:?])
  {
    v4 = &unk_1F3E01860;
  }

  else if ([v3 isEqualToString:?])
  {
    v5 = *(MEMORY[0x1E6979280] + 48);
    v11 = *(MEMORY[0x1E6979280] + 32);
    v12 = v5;
    v13 = *(MEMORY[0x1E6979280] + 64);
    v6 = *(MEMORY[0x1E6979280] + 16);
    v10 = *MEMORY[0x1E6979280];
    v4 = [MEMORY[0x1E696B098] valueWithBytes:v10 objCType:{v6, v11, v5, v13}];
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = &unk_1F3E017A0;
  }

  v8 = v7;

  return v7;
}

+ (id)mt_identityValueForMaterialSettingsProperty:()CoreMaterialAdditions
{
  v4 = a3;
  if ([v4 isEqualToString:?])
  {
    v5 = MEMORY[0x1E6979C70];
  }

  else if ([v4 isEqualToString:?])
  {
    v5 = MEMORY[0x1E6979928];
  }

  else if ([v4 isEqualToString:?])
  {
    v5 = MEMORY[0x1E6979890];
  }

  else if ([v4 isEqualToString:?])
  {
    v5 = MEMORY[0x1E6979848];
  }

  else
  {
    if (([v4 isEqualToString:?] & 1) == 0)
    {

      goto LABEL_14;
    }

    v5 = MEMORY[0x1E6979880];
  }

  v6 = *v5;

  if (v6)
  {
    v7 = [self mt_identityValueForFilter:?];
    goto LABEL_19;
  }

LABEL_14:
  if ([v4 isEqualToString:?])
  {
    v6 = 0;
    v7 = &unk_1F3E01860;
  }

  else if ([v4 isEqualToString:?] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:"))
  {
    v6 = 0;
    v7 = MEMORY[0x1E695E110];
  }

  else
  {
    v7 = &unk_1F3E017A0;
    if ([v4 isEqualToString:?])
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      if (![v4 isEqualToString:?])
      {
        v7 = 0;
      }
    }
  }

LABEL_19:

  return v7;
}

- (void)mt_isIdentityValueForFilter:()CoreMaterialAdditions
{
  v4 = a3;
  v5 = [objc_opt_class() mt_identityValueForFilter:?];

  v6 = [self isEqual:?];
  return v6;
}

- (void)mt_isIdentityValueForMaterialSettingsProperty:()CoreMaterialAdditions
{
  v4 = a3;
  v5 = [objc_opt_class() mt_identityValueForMaterialSettingsProperty:?];

  v6 = [self isEqual:?];
  return v6;
}

@end