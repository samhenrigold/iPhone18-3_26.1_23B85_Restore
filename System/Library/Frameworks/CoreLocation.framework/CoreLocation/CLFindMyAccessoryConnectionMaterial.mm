@interface CLFindMyAccessoryConnectionMaterial
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMaterial:(id)material;
- (CLFindMyAccessoryConnectionMaterial)init;
- (CLFindMyAccessoryConnectionMaterial)initWithAddress:(id)address ltk:(id)ltk primaryIndex:(id)index secondaryIndex:(id)secondaryIndex;
- (CLFindMyAccessoryConnectionMaterial)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)dictionaryDescription;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFindMyAccessoryConnectionMaterial

- (CLFindMyAccessoryConnectionMaterial)init
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, a2, v2);

  return 0;
}

- (CLFindMyAccessoryConnectionMaterial)initWithAddress:(id)address ltk:(id)ltk primaryIndex:(id)index secondaryIndex:(id)secondaryIndex
{
  v24.receiver = self;
  v24.super_class = CLFindMyAccessoryConnectionMaterial;
  v13 = [(CLFindMyAccessoryConnectionMaterial *)&v24 init];
  if (v13)
  {
    v13->_address = objc_msgSend_copy(address, v10, v11, v12);
    v13->_ltk = objc_msgSend_copy(ltk, v14, v15, v16);
    v13->_primaryIndex = objc_msgSend_copy(index, v17, v18, v19);
    v13->_secondaryIndex = objc_msgSend_copy(secondaryIndex, v20, v21, v22);
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE66B58](self, sel_isEqualToMaterial_, equal, v5);
}

- (BOOL)isEqualToMaterial:(id)material
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v53 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v6, v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v53, v54, a2, self, @"CLFindMyAccessoryConnectionMaterial.m", 83, @"Invalid parameter not satisfying: %@", @"[otherMaterial isKindOfClass:[CLFindMyAccessoryConnectionMaterial class]]");
  }

  v9 = objc_msgSend_address(material, v6, v7, v8);
  v13 = objc_msgSend_address(self, v10, v11, v12);
  v17 = v13;
  if (v9)
  {
    v18 = objc_msgSend_address(material, v14, v15, v16);
    isEqualToData = objc_msgSend_isEqualToData_(v17, v19, v18, v20);
  }

  else
  {
    isEqualToData = v13 == 0;
  }

  if (objc_msgSend_ltk(material, v14, v15, v16))
  {
    if (isEqualToData)
    {
      v25 = objc_msgSend_ltk(self, v22, v23, v24);
      v29 = objc_msgSend_ltk(material, v26, v27, v28);
      isEqualToData = objc_msgSend_isEqualToData_(v25, v30, v29, v31);
    }
  }

  else if (isEqualToData)
  {
    isEqualToData = objc_msgSend_ltk(self, v22, v23, v24) == 0;
  }

  if (objc_msgSend_primaryIndex(material, v22, v23, v24))
  {
    if (isEqualToData)
    {
      v35 = objc_msgSend_primaryIndex(self, v32, v33, v34);
      v39 = objc_msgSend_primaryIndex(material, v36, v37, v38);
      isEqualToData = objc_msgSend_isEqualToNumber_(v35, v40, v39, v41);
    }
  }

  else if (isEqualToData)
  {
    isEqualToData = objc_msgSend_primaryIndex(self, v32, v33, v34) == 0;
  }

  if (!objc_msgSend_secondaryIndex(material, v32, v33, v34))
  {
    if (isEqualToData)
    {
      return objc_msgSend_secondaryIndex(self, v42, v43, v44) == 0;
    }

    return 0;
  }

  if (!isEqualToData)
  {
    return 0;
  }

  v45 = objc_msgSend_secondaryIndex(self, v42, v43, v44);
  v50 = objc_msgSend_secondaryIndex(material, v46, v47, v48);

  return objc_msgSend_isEqualToNumber_(v45, v49, v50, v51);
}

- (unint64_t)hash
{
  v5 = objc_msgSend_address(self, a2, v2, v3);
  v9 = objc_msgSend_hash(v5, v6, v7, v8);
  v13 = objc_msgSend_ltk(self, v10, v11, v12);
  v17 = objc_msgSend_hash(v13, v14, v15, v16) ^ v9;
  v21 = objc_msgSend_primaryIndex(self, v18, v19, v20);
  v25 = objc_msgSend_hash(v21, v22, v23, v24);
  v29 = objc_msgSend_secondaryIndex(self, v26, v27, v28);
  return v17 ^ v25 ^ objc_msgSend_hash(v29, v30, v31, v32);
}

- (id)debugDescription
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_msgSend_primaryIndex(self, a2, v2, v3);
  v10 = objc_msgSend_secondaryIndex(self, v7, v8, v9);
  v14 = objc_msgSend_address(self, v11, v12, v13);
  v18 = objc_msgSend_ltk(self, v15, v16, v17);
  return objc_msgSend_stringWithFormat_(v5, v19, @"CLFindMyAccessoryConnectionMaterial <%p>, PrimaryIndex: %@, SecondaryIndex:%@, Address:%@, LTK:%@", v20, self, v6, v10, v14, v18);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_copy(self->_address, v5, v6, v7);
  v12 = objc_msgSend_copy(self->_ltk, v9, v10, v11);
  v16 = objc_msgSend_copy(self->_primaryIndex, v13, v14, v15);
  v20 = objc_msgSend_copy(self->_secondaryIndex, v17, v18, v19);

  return MEMORY[0x1EEE66B58](v4, sel_initWithAddress_ltk_primaryIndex_secondaryIndex_, v8, v12);
}

- (CLFindMyAccessoryConnectionMaterial)initWithCoder:(id)coder
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"address");
  v8 = objc_opt_class();
  v10 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"ltk");
  v11 = objc_opt_class();
  objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"primaryIndex");
  v13 = objc_opt_class();
  objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"secondaryIndex");

  return MEMORY[0x1EEE66B58](self, sel_initWithAddress_ltk_primaryIndex_secondaryIndex_, v7, v10);
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend_encodeObject_forKey_(coder, a2, self->_address, @"address");
  objc_msgSend_encodeObject_forKey_(coder, v5, self->_ltk, @"ltk");
  objc_msgSend_encodeObject_forKey_(coder, v6, self->_primaryIndex, @"primaryIndex");
  secondaryIndex = self->_secondaryIndex;

  objc_msgSend_encodeObject_forKey_(coder, v7, secondaryIndex, @"secondaryIndex");
}

- (id)dictionaryDescription
{
  v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, v2, v3);
  address = self->_address;
  if (objc_msgSend_length(address, v7, v8, v9) == 6)
  {
    v13 = objc_msgSend_bytes(address, v10, v11, v12);
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"%02X:%02X:%02X:%02X:%02X:%02X", v15, *v13, v13[1], v13[2], v13[3], v13[4], v13[5]);
    objc_msgSend_setObject_forKey_(v5, v17, v16, @"address");
  }

  else
  {
    objc_msgSend_setObject_forKey_(v5, v10, 0, @"address");
  }

  ltk = self->_ltk;
  if (ltk)
  {
    if (objc_msgSend_length(self->_ltk, v18, v19, v20) >= 0x10)
    {
      v25 = objc_msgSend_bytes(ltk, v22, v23, v24);
      v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v25[9], @"%02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X", v25[11], *v25, v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v25[13], v25[14], v25[15]);
      objc_msgSend_setObject_forKey_(v5, v27, v26, @"ltk");
    }

    else
    {
      objc_msgSend_setObject_forKey_(v5, v22, 0, @"ltk");
    }
  }

  primaryIndex = self->_primaryIndex;
  if (primaryIndex)
  {
    objc_msgSend_setObject_forKey_(v5, v18, primaryIndex, @"primaryIndex");
  }

  secondaryIndex = self->_secondaryIndex;
  if (secondaryIndex)
  {
    objc_msgSend_setObject_forKey_(v5, v18, secondaryIndex, @"secondaryIndex");
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLFindMyAccessoryConnectionMaterial;
  [(CLFindMyAccessoryConnectionMaterial *)&v3 dealloc];
}

@end