@interface GCProductInformation
- (GCProductInformation)init;
- (GCProductInformation)initWithCoder:(id)coder;
- (GCProductInformation)initWithIdentifier:(id)identifier;
- (NSString)detailedProductCategory;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCProductInformation

- (NSString)detailedProductCategory
{
  detailedProductCategory = self->_detailedProductCategory;
  if (detailedProductCategory)
  {
    productCategory = detailedProductCategory;
  }

  else
  {
    productCategory = [(GCProductInformation *)self productCategory];
  }

  return productCategory;
}

- (GCProductInformation)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = GCProductInformation;
  v5 = [(GCProductInformation *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copyWithZone:0];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (GCProductInformation)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(GCProductInformation *)self initWithIdentifier:uUID];

  return v4;
}

- (GCProductInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = GCProductInformation;
  v5 = [(GCProductInformation *)&v29 init];
  v6 = v5;
  if (v5)
  {
    v7 = GCIPCObjectIdentifier_Classes(v5);
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniformTypeIdentifier"];
    uniformTypeIdentifier = v6->_uniformTypeIdentifier;
    v6->_uniformTypeIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productCategory"];
    productCategory = v6->_productCategory;
    v6->_productCategory = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detailedProductCategory"];
    detailedProductCategory = v6->_detailedProductCategory;
    v6->_detailedProductCategory = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vendorName"];
    vendorName = v6->_vendorName;
    v6->_vendorName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attachedToDevice"];
    attachedToDevice = v6->_attachedToDevice;
    v6->_attachedToDevice = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anonymizedIdentifier"];
    anonymizedIdentifier = v6->_anonymizedIdentifier;
    v6->_anonymizedIdentifier = v20;

    v6->_deviceOnly = [coderCopy decodeBoolForKey:@"deviceOnly"];
    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v22 setWithObjects:{v23, v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"miscellaneous"];
    miscellaneous = v6->_miscellaneous;
    v6->_miscellaneous = v26;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniformTypeIdentifier = [(GCProductInformation *)self uniformTypeIdentifier];
  [coderCopy encodeObject:uniformTypeIdentifier forKey:@"uniformTypeIdentifier"];

  isAttachedToDevice = [(GCProductInformation *)self isAttachedToDevice];
  [coderCopy encodeObject:isAttachedToDevice forKey:@"attachedToDevice"];

  vendorName = [(GCProductInformation *)self vendorName];
  [coderCopy encodeObject:vendorName forKey:@"vendorName"];

  productCategory = [(GCProductInformation *)self productCategory];
  [coderCopy encodeObject:productCategory forKey:@"productCategory"];

  detailedProductCategory = [(GCProductInformation *)self detailedProductCategory];
  [coderCopy encodeObject:detailedProductCategory forKey:@"detailedProductCategory"];

  identifier = [(GCProductInformation *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  anonymizedIdentifier = [(GCProductInformation *)self anonymizedIdentifier];
  [coderCopy encodeObject:anonymizedIdentifier forKey:@"anonymizedIdentifier"];

  [coderCopy encodeBool:-[GCProductInformation isDeviceOnly](self forKey:{"isDeviceOnly"), @"deviceOnly"}];
  miscellaneous = [(GCProductInformation *)self miscellaneous];
  [coderCopy encodeObject:miscellaneous forKey:@"miscellaneous"];
}

@end