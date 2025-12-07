@interface CNUIContactPropertyIDSHandle
+ (id)idsIDForEmail:(id)email;
+ (id)idsIDForPhoneNumber:(id)number;
+ (id)supportedContactPropertyKeys;
- (BOOL)isEqual:(id)equal;
- (CNUIContactPropertyIDSHandle)initWithContactProperty:(id)property;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation CNUIContactPropertyIDSHandle

+ (id)supportedContactPropertyKeys
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695C330];
  v5[0] = *MEMORY[0x1E695C208];
  v5[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

+ (id)idsIDForPhoneNumber:(id)number
{
  numberCopy = number;
  digits = [numberCopy digits];
  countryCode = [numberCopy countryCode];
  v6 = digits;
  v7 = countryCode;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v8 = getIDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr;
  v17 = getIDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr;
  if (!getIDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr)
  {
    v9 = IDSLibrary_0();
    v15[3] = dlsym(v9, "IDSCopyIDForPhoneNumberWithOptions");
    getIDSCopyIDForPhoneNumberWithOptionsSymbolLoc_ptr = v15[3];
    v8 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (!v8)
  {
    +[CNUIIDSRequest IDSServiceForService:];
    v13 = v12;
    _Block_object_dispose(&v14, 8);
    _Unwind_Resume(v13);
  }

  v10 = v8(v6, v7, 1);

  return v10;
}

+ (id)idsIDForEmail:(id)email
{
  emailCopy = email;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v4 = getIDSCopyIDForEmailAddressSymbolLoc_ptr;
  v13 = getIDSCopyIDForEmailAddressSymbolLoc_ptr;
  if (!getIDSCopyIDForEmailAddressSymbolLoc_ptr)
  {
    v5 = IDSLibrary_0();
    v11[3] = dlsym(v5, "IDSCopyIDForEmailAddress");
    getIDSCopyIDForEmailAddressSymbolLoc_ptr = v11[3];
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v4)
  {
    +[CNUIIDSRequest IDSServiceForService:];
    v9 = v8;
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  v6 = v4(emailCopy);

  return v6;
}

- (CNUIContactPropertyIDSHandle)initWithContactProperty:(id)property
{
  v28[1] = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  supportedContactPropertyKeys = [objc_opt_class() supportedContactPropertyKeys];
  v6 = [propertyCopy key];
  v7 = [supportedContactPropertyKeys containsObject:v6];

  if ((v7 & 1) == 0)
  {
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D930];
    v27 = @"unsupportedKey";
    v22 = [propertyCopy key];
    v28[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v24 = [v20 exceptionWithName:v21 reason:@"Unsupported key passed to CNUIContactPropertyIDSHandle" userInfo:v23];
    v25 = v24;

    objc_exception_throw(v24);
  }

  v26.receiver = self;
  v26.super_class = CNUIContactPropertyIDSHandle;
  v8 = [(CNUIContactPropertyIDSHandle *)&v26 init];
  if (v8)
  {
    v9 = [propertyCopy copy];
    contactProperty = v8->_contactProperty;
    v8->_contactProperty = v9;

    v11 = [propertyCopy key];
    v12 = [v11 isEqual:*MEMORY[0x1E695C330]];

    v13 = objc_opt_class();
    value = [propertyCopy value];
    if (v12)
    {
      [v13 idsIDForPhoneNumber:value];
    }

    else
    {
      [v13 idsIDForEmail:value];
    }
    v15 = ;

    v16 = [v15 copy];
    idsID = v8->_idsID;
    v8->_idsID = v16;

    v18 = v8;
  }

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  contactProperty = [(CNUIContactPropertyIDSHandle *)self contactProperty];
  v5 = [v3 appendName:@"contactProperty" object:contactProperty];

  idsID = [(CNUIContactPropertyIDSHandle *)self idsID];
  v7 = [v3 appendName:@"idsID" object:idsID];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = MEMORY[0x1E69966F0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__CNUIContactPropertyIDSHandle_isEqual___block_invoke;
  v8[3] = &unk_1E76E7A88;
  v8[4] = self;
  v9 = equalCopy;
  v6 = equalCopy;
  LOBYTE(self) = [v5 isObject:self equalToOther:v6 withBlocks:{v8, 0}];

  return self;
}

uint64_t __40__CNUIContactPropertyIDSHandle_isEqual___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) idsID];
  if (!v3)
  {
    v1 = [*(a1 + 40) idsID];
    if (!v1)
    {
      v6 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v4 = [*(a1 + 32) idsID];
  v5 = [*(a1 + 40) idsID];
  v6 = [v4 isEqual:v5];

  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

- (unint64_t)hash
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__CNUIContactPropertyIDSHandle_hash__block_invoke;
  v3[3] = &unk_1E76E7AB0;
  v3[4] = self;
  return [MEMORY[0x1E6996730] hashWithBlocks:{v3, 0}];
}

uint64_t __36__CNUIContactPropertyIDSHandle_hash__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) idsID];
  v2 = [v1 hash];

  return v2;
}

@end