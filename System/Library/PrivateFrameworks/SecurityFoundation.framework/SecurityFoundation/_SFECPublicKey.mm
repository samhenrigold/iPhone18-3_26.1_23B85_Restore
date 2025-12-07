@interface _SFECPublicKey
+ (id)_secKeyCreationAttributesForSpecifier:(id)specifier;
+ (id)keyWithSubjectPublicKeyInfo:(id)info;
- (id)encodeSubjectPublicKeyInfo;
- (id)performWithCCKey:(id)key;
@end

@implementation _SFECPublicKey

+ (id)_secKeyCreationAttributesForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBFE0], *MEMORY[0x277CDC000]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC028], *MEMORY[0x277CDC040]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC090], *MEMORY[0x277CBED28]);
  v5 = *MEMORY[0x277CDC018];
  v6 = MEMORY[0x277CCABB0];
  curve = [specifierCopy curve];

  v8 = [v6 numberWithInteger:ECKeyBitSize(curve)];
  CFDictionaryAddValue(Mutable, v5, v8);

  return Mutable;
}

- (id)performWithCCKey:(id)key
{
  error[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  keySpecifier = [(_SFKey *)self keySpecifier];
  CCCurveParameters([keySpecifier curve]);
  MEMORY[0x28223BE20]();
  v7 = error - v6;
  error[0] = 0;
  v8 = SecKeyCopyExternalRepresentation(*(self->super._publicKeyInternal + 1), error);
  v9 = error[0];
  if (-[__CFData length](v8, "length") && ccec_x963_import_pub_size() && (-[_SFKey keySpecifier](self, "keySpecifier"), v10 = objc_claimAutoreleasedReturnValue(), CCCurveParameters([v10 curve]), -[__CFData length](v8, "length"), -[__CFData bytes](v8, "bytes"), v11 = ccec_x963_import_pub(), v10, !v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = v9;
    if (!v9)
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFKeychainErrorDomain" code:2 userInfo:0];
      v9 = v12;
    }
  }

  v13 = keyCopy[2](keyCopy, v7, v12);

  return v13;
}

- (id)encodeSubjectPublicKeyInfo
{
  [(_SFPublicKey *)self _secKey];
  v2 = SecKeyCopySubjectPublicKeyInfo();

  return v2;
}

+ (id)keyWithSubjectPublicKeyInfo:(id)info
{
  v3 = SecKeyCreateFromSubjectPublicKeyInfoData();
  if (v3)
  {
    v4 = v3;
    v5 = [(_SFPublicKey *)[_SFECPublicKey alloc] initWithSecKey:v3];
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end