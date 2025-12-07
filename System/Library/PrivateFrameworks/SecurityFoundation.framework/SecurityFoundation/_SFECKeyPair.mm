@interface _SFECKeyPair
+ (id)_secKeyCreationAttributesForSpecifier:(id)specifier;
- (id)initRandomKeyPairWithSpecifier:(id)specifier privateKeyDomain:(id)domain;
- (id)performWithCCKey:(id)key;
- (id)publicKey;
@end

@implementation _SFECKeyPair

+ (id)_secKeyCreationAttributesForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBFE0], *MEMORY[0x277CDBFF0]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC028], *MEMORY[0x277CDC040]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC090], *MEMORY[0x277CBED28]);
  v5 = *MEMORY[0x277CDC018];
  v6 = MEMORY[0x277CCABB0];
  curve = [specifierCopy curve];

  v8 = [v6 numberWithInteger:ECKeyBitSize(curve)];
  CFDictionaryAddValue(Mutable, v5, v8);

  return Mutable;
}

- (id)initRandomKeyPairWithSpecifier:(id)specifier privateKeyDomain:(id)domain
{
  specifierCopy = specifier;
  domainCopy = domain;
  if (!specifierCopy)
  {
    [_SFECKeyPair initRandomKeyPairWithSpecifier:privateKeyDomain:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = specifierCopy;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CDC028], *MEMORY[0x277CDC040]);
    v10 = *MEMORY[0x277CDC018];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{ECKeyBitSize(objc_msgSend(v8, "curve"))}];
    CFDictionarySetValue(Mutable, v10, v11);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CDC090], *MEMORY[0x277CBED28]);
    error = 0;
    v12 = SecKeyCreateRandomKey(Mutable, &error);
    v17.receiver = self;
    v17.super_class = _SFECKeyPair;
    v13 = [(_SFKeyPair *)&v17 initWithSecKey:v12];
    v14 = v13;
    if (v13 && error)
    {

      CFRelease(error);
      v14 = 0;
    }

    CFRelease(Mutable);
    CFRelease(v12);
    self = v14;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)publicKey
{
  v2 = SecKeyCopyPublicKey([(_SFKeyPair *)self _secKey]);
  v3 = [(_SFPublicKey *)[_SFECPublicKey alloc] initWithSecKey:v2];
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
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
  v8 = SecKeyCopyExternalRepresentation(*(self->super._keyPairInternal + 1), error);
  v9 = error[0];
  if (-[__CFData length](v8, "length") && ccec_x963_import_priv_size() && (-[_SFKey keySpecifier](self, "keySpecifier"), v10 = objc_claimAutoreleasedReturnValue(), CCCurveParameters([v10 curve]), -[__CFData length](v8, "length"), -[__CFData bytes](v8, "bytes"), v11 = ccec_x963_import_priv(), v10, !v11))
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

- (void)initRandomKeyPairWithSpecifier:privateKeyDomain:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end