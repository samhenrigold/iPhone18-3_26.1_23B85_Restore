@interface HVSearchableItemSerializedAttributes
+ (id)serializedAttributesWithAttributeSetData:(id)data attributeSetCoder:(id)coder htmlContentData:(id)contentData;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSerializedAttributes:(id)attributes;
- (HVSearchableItemSerializedAttributes)initWithAttributeSetData:(id)data attributeSetCoder:(id)coder htmlContentData:(id)contentData;
- (unint64_t)hash;
@end

@implementation HVSearchableItemSerializedAttributes

- (unint64_t)hash
{
  v3 = [(NSData *)self->_attributeSetData hash];
  v4 = [(CSCoder *)self->_attributeSetCoder hash]- v3 + 32 * v3;
  return [(NSData *)self->_htmlContentData hash]- v4 + 32 * v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(HVSearchableItemSerializedAttributes *)self isEqualToSerializedAttributes:v5];
  }

  return v6;
}

- (BOOL)isEqualToSerializedAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (!attributesCopy || (v6 = self->_attributeSetData == 0, [attributesCopy attributeSetData], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (attributeSetData = self->_attributeSetData) != 0 && (objc_msgSend(v5, "attributeSetData"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSData isEqual:](attributeSetData, "isEqual:", v10), v10, !v11) || (v12 = self->_attributeSetCoder == 0, objc_msgSend(v5, "attributeSetCoder"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14) || (attributeSetCoder = self->_attributeSetCoder) != 0 && (objc_msgSend(v5, "attributeSetCoder"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[CSCoder isEqual:](attributeSetCoder, "isEqual:", v16), v16, !v17) || (v18 = self->_htmlContentData == 0, objc_msgSend(v5, "htmlContentData"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 != 0, v19, v18 == v20))
  {
    v23 = 0;
  }

  else
  {
    htmlContentData = self->_htmlContentData;
    if (htmlContentData)
    {
      htmlContentData = [v5 htmlContentData];
      v23 = [(NSData *)htmlContentData isEqual:htmlContentData];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
}

- (HVSearchableItemSerializedAttributes)initWithAttributeSetData:(id)data attributeSetCoder:(id)coder htmlContentData:(id)contentData
{
  dataCopy = data;
  coderCopy = coder;
  contentDataCopy = contentData;
  if (dataCopy)
  {
    if (coderCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HVSearchableItemSerializedAttributes.m" lineNumber:12 description:{@"Invalid parameter not satisfying: %@", @"attributeSetData"}];

    if (coderCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HVSearchableItemSerializedAttributes.m" lineNumber:13 description:{@"Invalid parameter not satisfying: %@", @"attributeSetCoder"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = HVSearchableItemSerializedAttributes;
  v13 = [(HVSearchableItemSerializedAttributes *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_attributeSetData, data);
    objc_storeStrong(&v14->_attributeSetCoder, coder);
    objc_storeStrong(&v14->_htmlContentData, contentData);
  }

  return v14;
}

+ (id)serializedAttributesWithAttributeSetData:(id)data attributeSetCoder:(id)coder htmlContentData:(id)contentData
{
  contentDataCopy = contentData;
  coderCopy = coder;
  dataCopy = data;
  v11 = [[self alloc] initWithAttributeSetData:dataCopy attributeSetCoder:coderCopy htmlContentData:contentDataCopy];

  return v11;
}

@end