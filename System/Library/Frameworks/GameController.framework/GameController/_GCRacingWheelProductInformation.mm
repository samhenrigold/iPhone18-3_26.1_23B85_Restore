@interface _GCRacingWheelProductInformation
- (_GCRacingWheelProductInformation)init;
- (_GCRacingWheelProductInformation)initWithCoder:(id)coder;
- (_GCRacingWheelProductInformation)initWithIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _GCRacingWheelProductInformation

- (_GCRacingWheelProductInformation)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = _GCRacingWheelProductInformation;
  v5 = [(_GCRacingWheelProductInformation *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copyWithZone:0];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (_GCRacingWheelProductInformation)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(_GCRacingWheelProductInformation *)self initWithIdentifier:uUID];

  return v4;
}

- (_GCRacingWheelProductInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _GCRacingWheelProductInformation;
  v5 = [(_GCRacingWheelProductInformation *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v7 = GCIPCObjectIdentifier_Classes(v5);
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productCategory"];
    productCategory = v6->_productCategory;
    v6->_productCategory = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vendorName"];
    vendorName = v6->_vendorName;
    v6->_vendorName = v12;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  vendorName = [(_GCRacingWheelProductInformation *)self vendorName];
  [coderCopy encodeObject:vendorName forKey:@"vendorName"];

  productCategory = [(_GCRacingWheelProductInformation *)self productCategory];
  [coderCopy encodeObject:productCategory forKey:@"productCategory"];

  identifier = [(_GCRacingWheelProductInformation *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

@end