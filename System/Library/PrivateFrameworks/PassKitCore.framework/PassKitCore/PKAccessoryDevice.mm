@interface PKAccessoryDevice
+ (id)mockAccessoryDevice;
- (PKAccessoryDevice)initWithCoder:(id)coder;
- (PKAccessoryDevice)initWithDictionary:(id)dictionary endpointUUID:(id)d;
- (id)accessoryTypeString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccessoryDevice

+ (id)mockAccessoryDevice
{
  v18[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v16 = 0x3FF0000000000000;
  [v2 appendBytes:&v16 length:8];
  v16 = 0;
  [v2 appendBytes:&v16 length:8];
  [v2 appendBytes:&v16 length:8];
  v16 = 0x3FF0000000000000;
  [v2 appendBytes:&v16 length:8];
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v16 = 0;
  [v3 appendBytes:&v16 length:8];
  [v3 appendBytes:&v16 length:8];
  [v3 appendBytes:&v16 length:8];
  v16 = 0x3FF0000000000000;
  v4 = [v3 appendBytes:&v16 length:8];
  v5 = _MergedGlobals_174(v4);
  v17[0] = v5;
  v6 = [v2 copy];
  v18[0] = v6;
  v7 = off_1ED6D10D8();
  v17[1] = v7;
  v8 = [v3 copy];
  v18[1] = v8;
  v9 = off_1ED6D10E0();
  v17[2] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithChar:86];
  v17[3] = @"isMock";
  v18[2] = v10;
  v18[3] = MEMORY[0x1E695E118];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];

  v12 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  uUIDString = [v12 UUIDString];

  v14 = [[PKAccessoryDevice alloc] initWithDictionary:v11 endpointUUID:uUIDString];

  return v14;
}

- (PKAccessoryDevice)initWithDictionary:(id)dictionary endpointUUID:(id)d
{
  dictionaryCopy = dictionary;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = PKAccessoryDevice;
  v9 = [(PKAccessoryDevice *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_endpointUUID, d);
    objc_storeStrong(&v10->_dictionary, dictionary);
    v12 = _MergedGlobals_174(v11);
    v13 = [dictionaryCopy objectForKeyedSubscript:v12];
    primaryColorData = v10->_primaryColorData;
    v10->_primaryColorData = v13;

    v15 = off_1ED6D10D8();
    v16 = [dictionaryCopy objectForKeyedSubscript:v15];
    secondaryColorData = v10->_secondaryColorData;
    v10->_secondaryColorData = v16;

    v18 = off_1ED6D10E0();
    v19 = [dictionaryCopy objectForKeyedSubscript:v18];
    type = v10->_type;
    v10->_type = v19;

    v10->_isMock = [dictionaryCopy PKBoolForKey:@"isMock"];
  }

  return v10;
}

- (id)accessoryTypeString
{
  charValue = [(NSNumber *)self->_type charValue];
  if (charValue <= 0x4B)
  {
    if (charValue == 57)
    {
      return @"Charging Cable";
    }

    if (charValue != 66)
    {
      if (charValue == 67)
      {
        return @"Clear Case";
      }

      return @"Unidentified";
    }

    return @"Battery Pack";
  }

  else if (charValue > 85)
  {
    if (charValue != 86)
    {
      if (charValue == 87)
      {
        return @"Wallet";
      }

      return @"Unidentified";
    }

    return @"Sleeve";
  }

  else
  {
    if (charValue != 76)
    {
      if (charValue == 83)
      {
        return @"Silicon Case";
      }

      return @"Unidentified";
    }

    return @"Leather Case";
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  endpointUUID = self->_endpointUUID;
  accessoryTypeString = [(PKAccessoryDevice *)self accessoryTypeString];
  v6 = accessoryTypeString;
  secondaryColorData = @"N/A";
  primaryColorData = self->_primaryColorData;
  if (!primaryColorData)
  {
    primaryColorData = @"N/A";
  }

  if (self->_secondaryColorData)
  {
    secondaryColorData = self->_secondaryColorData;
  }

  secondaryColorData = [v3 stringWithFormat:@"Accessory endpointUUID: %@, type: %@, primary color: %@, secondary color: %@", endpointUUID, accessoryTypeString, primaryColorData, secondaryColorData];

  return secondaryColorData;
}

- (void)encodeWithCoder:(id)coder
{
  endpointUUID = self->_endpointUUID;
  coderCopy = coder;
  [coderCopy encodeObject:endpointUUID forKey:@"endpointUUID"];
  [coderCopy encodeObject:self->_primaryColorData forKey:@"primaryColorData"];
  [coderCopy encodeObject:self->_secondaryColorData forKey:@"secondaryColorData"];
  [coderCopy encodeObject:self->_type forKey:@"type"];
  [coderCopy encodeBool:self->_isMock forKey:@"isMock"];
}

- (PKAccessoryDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKAccessoryDevice *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpointUUID"];
    endpointUUID = v5->_endpointUUID;
    v5->_endpointUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryColorData"];
    primaryColorData = v5->_primaryColorData;
    v5->_primaryColorData = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryColorData"];
    secondaryColorData = v5->_secondaryColorData;
    v5->_secondaryColorData = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v12;

    v5->_isMock = [coderCopy decodeBoolForKey:@"isMock"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_endpointUUID copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSData *)self->_primaryColorData copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSData *)self->_secondaryColorData copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSNumber *)self->_type copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  *(v5 + 8) = self->_isMock;
  return v5;
}

@end