@interface ASPickerDisplayItem
- (ASPickerDisplayItem)initWithCoder:(id)coder;
- (ASPickerDisplayItem)initWithName:(id)name productImage:(id)image descriptor:(id)descriptor;
- (ASPickerDisplayItem)initWithXPCObject:(id)object error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithLevel:(int)level;
- (id)resizedImage;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation ASPickerDisplayItem

- (ASPickerDisplayItem)initWithName:(id)name productImage:(id)image descriptor:(id)descriptor
{
  nameCopy = name;
  imageCopy = image;
  descriptorCopy = descriptor;
  v18.receiver = self;
  v18.super_class = ASPickerDisplayItem;
  v12 = [(ASPickerDisplayItem *)&v18 init];
  if (v12)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v12->_identifier;
    v12->_identifier = uUIDString;

    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v12->_productImage, image);
    objc_storeStrong(&v12->_descriptor, descriptor);
    v16 = v12;
  }

  return v12;
}

- (ASPickerDisplayItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASPickerDisplayItem *)self init];
  v6 = v5;
  if (v5)
  {
    if (v5->_allowsRename)
    {
      v5->_setupOptions |= 1uLL;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v7 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = [MEMORY[0x277D755B8] imageWithData:0];
    objc_storeStrong(&v6->_productImage, v9);
    v10 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = v10;
    if ([v11 containsValueForKey:@"rOp"])
    {
      v6->_renameOptions = [v11 decodeIntegerForKey:@"rOp"];
    }

    v12 = v11;
    if ([v12 containsValueForKey:@"pDop"])
    {
      v6->_setupOptions = [v12 decodeIntegerForKey:@"pDop"];
    }

    v13 = v6;
  }

  else
  {
    [ASAccessory initWithCoder:coderCopy];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryType = self->_accessoryType;
  if (accessoryType)
  {
    [coderCopy encodeObject:accessoryType forKey:@"aTe"];
  }

  if (self->_allowsRename)
  {
    [coderCopy encodeBool:1 forKey:@"aRm"];
  }

  descriptor = self->_descriptor;
  if (descriptor)
  {
    [coderCopy encodeObject:descriptor forKey:@"aDr"];
  }

  name = self->_name;
  if (name)
  {
    [coderCopy encodeObject:name forKey:@"dNm"];
  }

  resizedImage = [(ASPickerDisplayItem *)self resizedImage];
  v8 = UIImagePNGRepresentation(resizedImage);
  if (v8)
  {
    [coderCopy encodeObject:v8 forKey:@"pImg"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [coderCopy encodeObject:identifier forKey:@"pDid"];
  }

  renameOptions = self->_renameOptions;
  v11 = coderCopy;
  if (renameOptions)
  {
    [coderCopy encodeInteger:renameOptions forKey:@"rOp"];
    v11 = coderCopy;
  }

  setupOptions = self->_setupOptions;
  if (setupOptions)
  {
    [coderCopy encodeInteger:setupOptions forKey:@"pDop"];
    v11 = coderCopy;
  }
}

- (ASPickerDisplayItem)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(ASPickerDisplayItem *)self init];
  if (!v7)
  {
    [ASPickerDisplayItem initWithXPCObject:error error:&v13];
    v11 = v13;
    goto LABEL_19;
  }

  if (MEMORY[0x2383B4C90](objectCopy) == MEMORY[0x277D86468])
  {
    if (!CUXPCDecodeNSString())
    {
      goto LABEL_20;
    }

    if (v7->_allowsRename)
    {
      v7->_setupOptions |= 1uLL;
    }

    objc_opt_class();
    if (!CUXPCDecodeObject() || !CUXPCDecodeNSString())
    {
LABEL_20:
      v11 = 0;
      goto LABEL_18;
    }

    CUXPCDecodeNSData();
    v8 = [MEMORY[0x277D755B8] imageWithData:0];
    if (!v8)
    {
      [(ASPickerDisplayItem *)error initWithXPCObject:v7 error:&v13];
      v11 = v13;
      goto LABEL_17;
    }

    objc_storeStrong(&v7->_productImage, v8);
    if (!CUXPCDecodeNSString())
    {
      goto LABEL_21;
    }

    v13 = 0;
    v9 = CUXPCDecodeUInt64RangedEx();
    if (v9 == 6)
    {
      v7->_renameOptions = v13;
    }

    else if (v9 == 5)
    {
      goto LABEL_21;
    }

    v13 = 0;
    v10 = CUXPCDecodeUInt64RangedEx();
    if (v10 == 6)
    {
      v7->_setupOptions = v13;
LABEL_16:
      v11 = v7;
LABEL_17:

LABEL_18:
      goto LABEL_19;
    }

    if (v10 != 5)
    {
      goto LABEL_16;
    }

LABEL_21:
    v11 = 0;
    goto LABEL_17;
  }

  if (error)
  {
    ASErrorF(-6756, "XPC non-dict");
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_19:

  return v11;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  CUXPCEncodeObject();
  name = self->_name;
  v6 = objectCopy;
  uTF8String = [(NSString *)name UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(v6, "dNm", uTF8String);
  }

  identifier = [(UTType *)self->_accessoryType identifier];
  v9 = v6;
  uTF8String2 = [identifier UTF8String];
  if (uTF8String2)
  {
    xpc_dictionary_set_string(v9, "aTe", uTF8String2);
  }

  resizedImage = [(ASPickerDisplayItem *)self resizedImage];
  v12 = UIImagePNGRepresentation(resizedImage);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    v15 = v9;
    bytes = [v13 bytes];
    if (bytes)
    {
      v17 = bytes;
    }

    else
    {
      v17 = "";
    }

    xpc_dictionary_set_data(v15, "pImg", v17, [v13 length]);
  }

  identifier = self->_identifier;
  xdict = v9;
  uTF8String3 = [(NSString *)identifier UTF8String];
  if (uTF8String3)
  {
    xpc_dictionary_set_string(xdict, "pDid", uTF8String3);
  }

  renameOptions = self->_renameOptions;
  if (renameOptions)
  {
    xpc_dictionary_set_uint64(xdict, "rOp", renameOptions);
  }

  setupOptions = self->_setupOptions;
  if (setupOptions)
  {
    xpc_dictionary_set_uint64(xdict, "pDop", setupOptions);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(UTType *)self->_accessoryType copy];
  v6 = *(v4 + 56);
  *(v4 + 56) = v5;

  *(v4 + 8) = self->_allowsRename;
  v7 = [(UIImage *)self->_productImage copy];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  v9 = [(ASDiscoveryDescriptor *)self->_descriptor copy];
  v10 = *(v4 + 32);
  *(v4 + 32) = v9;

  v11 = [(NSString *)self->_name copy];
  v12 = *(v4 + 16);
  *(v4 + 16) = v11;

  v13 = [(NSString *)self->_identifier copy];
  v14 = *(v4 + 64);
  *(v4 + 64) = v13;

  *(v4 + 40) = self->_renameOptions;
  *(v4 + 48) = self->_setupOptions;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (![(ASPickerDisplayItem *)v6 isMemberOfClass:objc_opt_class()])
    {
      v13 = 0;
LABEL_29:

      goto LABEL_30;
    }

    name = self->_name;
    name = [(ASPickerDisplayItem *)v6 name];
    p_isa = name;
    v10 = name;
    v11 = v10;
    if (p_isa == v10)
    {
    }

    else
    {
      if ((p_isa != 0) == (v10 == 0))
      {
        v13 = 0;
        v16 = v10;
LABEL_26:

        goto LABEL_27;
      }

      v12 = [(NSString *)p_isa isEqual:v10];

      if (!v12)
      {
        v13 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    descriptor = self->_descriptor;
    descriptor = [(ASPickerDisplayItem *)v6 descriptor];
    v16 = descriptor;
    v17 = descriptor;
    p_isa = &v17->super.isa;
    if (v16 == v17)
    {
    }

    else
    {
      if ((v16 != 0) == (v17 == 0))
      {

        goto LABEL_25;
      }

      v18 = [(ASDiscoveryDescriptor *)v16 isEqual:v17];

      if (!v18)
      {
        v13 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    identifier = self->_identifier;
    identifier = [(ASPickerDisplayItem *)v6 identifier];
    v21 = identifier;
    v22 = identifier;
    v16 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      if ((v21 != 0) == (v22 == 0))
      {

        goto LABEL_25;
      }

      v23 = [(NSString *)v21 isEqual:v22];

      if (!v23)
      {
        goto LABEL_25;
      }
    }

    renameOptions = self->_renameOptions;
    if (renameOptions == [(ASPickerDisplayItem *)v6 renameOptions])
    {
      setupOptions = self->_setupOptions;
      v13 = setupOptions == [(ASPickerDisplayItem *)v6 setupOptions];
      goto LABEL_26;
    }

LABEL_25:
    v13 = 0;
    goto LABEL_26;
  }

  v13 = 1;
LABEL_30:

  return v13;
}

- (id)resizedImage
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = v4;

  v6 = CGImageGetWidth([(UIImage *)self->_productImage CGImage]) / v5;
  v7 = CGImageGetHeight([(UIImage *)self->_productImage CGImage]) / v5;
  v8 = 180.0;
  if (v6 <= 180.0 && v7 <= 120.0)
  {
    v12 = self->_productImage;
  }

  else
  {
    v10 = v6 / v7;
    if (v10 <= 1.5)
    {
      v11 = 120.0;
      v8 = v10 * 120.0;
    }

    else
    {
      v11 = 180.0 / v10;
    }

    v13 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v8, v11}];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __35__ASPickerDisplayItem_resizedImage__block_invoke;
    v16[3] = &unk_278A01F30;
    v16[4] = self;
    *&v16[5] = v8;
    *&v16[6] = v11;
    v14 = [v13 imageWithActions:v16];
    v12 = [v14 imageWithRenderingMode:{-[UIImage renderingMode](self->_productImage, "renderingMode")}];
  }

  return v12;
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 8;
  }

  else
  {
    v4 = 12;
  }

  v34 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v33 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v33, &v34, "%@", v5);
    v6 = v33;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    v32 = v6;
    v8 = identifier;
    CUAppendF(&v32, &v34, "ID %@", v8);
    v9 = v32;

    v6 = v9;
  }

  accessoryType = self->_accessoryType;
  if (accessoryType)
  {
    v31 = v6;
    v11 = accessoryType;
    identifier = [(UTType *)v11 identifier];
    CUAppendF(&v31, &v34, "type %@", identifier);
    v13 = v31;

    v6 = v13;
  }

  name = self->_name;
  if (name)
  {
    v30 = v6;
    v15 = name;
    CUAppendF(&v30, &v34, "name '%@'", v15);
    v16 = v30;

    v6 = v16;
  }

  descriptor = self->_descriptor;
  if (descriptor)
  {
    v29 = v6;
    v18 = descriptor;
    CUAppendF(&v29, &v34, "descriptor %@", v18);
    v19 = v29;

    v6 = v19;
  }

  if (self->_setupOptions)
  {
    v28 = v6;
    v20 = CUPrintFlags64();
    CUAppendF(&v28, &v34, "setup %@", v20);
    v21 = v28;

    v6 = v21;
  }

  if (self->_renameOptions)
  {
    v27 = v6;
    v22 = CUPrintFlags64();
    CUAppendF(&v27, &v34, "rename %@", v22);
    v23 = v27;

    v6 = v23;
  }

  v24 = &stru_28499D698;
  if (v6)
  {
    v24 = v6;
  }

  v25 = v24;

  return v25;
}

- (void)initWithXPCObject:(void *)a3 error:.cold.1(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_0_0();
    *a1 = ASErrorF(-6756, "%@ bad image data init failed");
  }

  *a3 = 0;
}

- (void)initWithXPCObject:(void *)a1 error:(void *)a2 .cold.2(void *a1, void *a2)
{
  if (a1)
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_0_0();
    *a1 = ASErrorF(-6756, "%@ init failed");
  }

  *a2 = 0;
}

@end