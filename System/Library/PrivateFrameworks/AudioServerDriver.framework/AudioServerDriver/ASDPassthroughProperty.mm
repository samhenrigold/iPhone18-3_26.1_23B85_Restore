@interface ASDPassthroughProperty
- (ASDObject)underlyingObject;
- (ASDPassthroughProperty)initWithUnderlyingObject:(id)object address:(id)address propertyDataType:(unsigned int)type andQualifierDataType:(unsigned int)dataType;
- (ASDPassthroughProperty)initWithUnderlyingObject:(id)object andAddress:(id)address;
- (ASDPassthroughProperty)initWithUnderlyingObject:(id)object andPropertyAddress:(AudioObjectPropertyAddress)address;
- (ASDPassthroughProperty)initWithUnderlyingObject:(id)object propertyAddress:(AudioObjectPropertyAddress)address propertyDataType:(unsigned int)type andQualifierDataType:(unsigned int)dataType;
- (AudioObjectPropertyAddress)propertyAddress;
- (BOOL)getPropertyWithQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (BOOL)isSettable;
- (BOOL)setPropertyWithQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client;
- (unsigned)dataSizeWithQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
@end

@implementation ASDPassthroughProperty

- (ASDPassthroughProperty)initWithUnderlyingObject:(id)object address:(id)address propertyDataType:(unsigned int)type andQualifierDataType:(unsigned int)dataType
{
  v6 = *&dataType;
  v7 = *&type;
  objectCopy = object;
  addressCopy = address;
  v17.receiver = self;
  v17.super_class = ASDPassthroughProperty;
  v12 = [(ASDCustomProperty *)&v17 initWithAddress:addressCopy propertyDataType:v7 qualifierDataType:v6];
  v13 = v12;
  if (v12)
  {
    *&v12->_propertyAddress.mSelector = [addressCopy audioObjectPropertyAddress];
    v13->_propertyAddress.mElement = v14;
    objc_storeWeak(&v13->_underlyingObject, objectCopy);
    v15 = [objectCopy customPropertyWithAddress:&v13->_propertyAddress];
    [v15 setInterested:v13];
  }

  return v13;
}

- (ASDPassthroughProperty)initWithUnderlyingObject:(id)object propertyAddress:(AudioObjectPropertyAddress)address propertyDataType:(unsigned int)type andQualifierDataType:(unsigned int)dataType
{
  v6 = *&dataType;
  v7 = *&type;
  mElement = address.mElement;
  v9 = *&address.mSelector;
  objectCopy = object;
  mElement = [[ASDPropertyAddress alloc] initWithAddress:v9, mElement];
  v13 = [(ASDPassthroughProperty *)self initWithUnderlyingObject:objectCopy address:mElement propertyDataType:v7 andQualifierDataType:v6];

  return v13;
}

- (ASDPassthroughProperty)initWithUnderlyingObject:(id)object andAddress:(id)address
{
  objectCopy = object;
  addressCopy = address;
  audioObjectPropertyAddress = [addressCopy audioObjectPropertyAddress];
  v14 = v8;
  v9 = [objectCopy customPropertyWithAddress:&audioObjectPropertyAddress];
  v10 = v9;
  if (v9)
  {
    self = -[ASDPassthroughProperty initWithUnderlyingObject:address:propertyDataType:andQualifierDataType:](self, "initWithUnderlyingObject:address:propertyDataType:andQualifierDataType:", objectCopy, addressCopy, [v9 propertyDataType], objc_msgSend(v9, "qualifierDataType"));
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ASDPassthroughProperty)initWithUnderlyingObject:(id)object andPropertyAddress:(AudioObjectPropertyAddress)address
{
  mElement = address.mElement;
  v5 = *&address.mSelector;
  objectCopy = object;
  mElement = [[ASDPropertyAddress alloc] initWithAddress:v5, mElement];
  v9 = [(ASDPassthroughProperty *)self initWithUnderlyingObject:objectCopy andAddress:mElement];

  return v9;
}

- (BOOL)isSettable
{
  selfCopy = self;
  underlyingObject = [(ASDPassthroughProperty *)self underlyingObject];
  LOBYTE(selfCopy) = [underlyingObject isPropertySettable:&selfCopy->_propertyAddress];

  return selfCopy;
}

- (BOOL)getPropertyWithQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  v7 = *&client;
  v11 = *&size;
  underlyingObject = [(ASDPassthroughProperty *)self underlyingObject];
  LOBYTE(v7) = [underlyingObject getProperty:&self->_propertyAddress withQualifierSize:v11 qualifierData:data dataSize:dataSize andData:andData forClient:v7];

  return v7;
}

- (BOOL)setPropertyWithQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client
{
  v7 = *&client;
  v9 = *&dataSize;
  v11 = *&size;
  underlyingObject = [(ASDPassthroughProperty *)self underlyingObject];
  LOBYTE(v7) = [underlyingObject setProperty:&self->_propertyAddress withQualifierSize:v11 qualifierData:data dataSize:v9 andData:andData forClient:v7];

  return v7;
}

- (unsigned)dataSizeWithQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  v5 = *&size;
  underlyingObject = [(ASDPassthroughProperty *)self underlyingObject];
  LODWORD(data) = [underlyingObject dataSizeForProperty:&self->_propertyAddress withQualifierSize:v5 andQualifierData:data];

  return data;
}

- (ASDObject)underlyingObject
{
  WeakRetained = objc_loadWeakRetained(&self->_underlyingObject);

  return WeakRetained;
}

- (AudioObjectPropertyAddress)propertyAddress
{
  p_propertyAddress = &self->_propertyAddress;
  v3 = *&self->_propertyAddress.mSelector;
  mElement = p_propertyAddress->mElement;
  result.mSelector = v3;
  result.mScope = HIDWORD(v3);
  result.mElement = mElement;
  return result;
}

@end