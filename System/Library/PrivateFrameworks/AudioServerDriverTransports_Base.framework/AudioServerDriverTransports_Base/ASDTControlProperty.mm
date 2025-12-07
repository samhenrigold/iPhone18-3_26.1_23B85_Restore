@interface ASDTControlProperty
+ (id)forControl:(id)control controlSelector:(unsigned int)selector propertySelector:(unsigned int)propertySelector propertyDataType:(unsigned int)type andQualifierDataType:(unsigned int)dataType;
- (ASDControl)control;
- (AudioObjectPropertyAddress)controlAddress;
- (BOOL)getPropertyWithQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (BOOL)isSettable;
- (BOOL)setPropertyWithQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client;
- (id)initForControl:(id)control controlSelector:(unsigned int)selector propertySelector:(unsigned int)propertySelector propertyDataType:(unsigned int)type andQualifierDataType:(unsigned int)dataType;
- (unsigned)dataSizeWithQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
@end

@implementation ASDTControlProperty

+ (id)forControl:(id)control controlSelector:(unsigned int)selector propertySelector:(unsigned int)propertySelector propertyDataType:(unsigned int)type andQualifierDataType:(unsigned int)dataType
{
  v7 = *&dataType;
  v8 = *&type;
  v9 = *&propertySelector;
  v10 = *&selector;
  controlCopy = control;
  v13 = [[self alloc] initForControl:controlCopy controlSelector:v10 propertySelector:v9 propertyDataType:v8 andQualifierDataType:v7];

  return v13;
}

- (id)initForControl:(id)control controlSelector:(unsigned int)selector propertySelector:(unsigned int)propertySelector propertyDataType:(unsigned int)type andQualifierDataType:(unsigned int)dataType
{
  v7 = *&dataType;
  v8 = *&type;
  v9 = *&propertySelector;
  controlCopy = control;
  if (controlCopy)
  {
    v13 = [objc_alloc(MEMORY[0x277CEFB68]) initWithSelector:v9 scope:objc_msgSend(controlCopy element:{"controlScope"), objc_msgSend(controlCopy, "controlElement")}];
    v18.receiver = self;
    v18.super_class = ASDTControlProperty;
    v14 = [(ASDCustomProperty *)&v18 initWithAddress:v13 propertyDataType:v8 qualifierDataType:v7];
    v15 = v14;
    if (v14)
    {
      [(ASDTControlProperty *)v14 setControl:controlCopy];
      -[ASDTControlProperty setControlAddress:](v15, "setControlAddress:", selector | ([controlCopy controlScope] << 32), objc_msgSend(controlCopy, "controlElement"));
    }

    self = v15;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isSettable
{
  selfCopy = self;
  control = [(ASDTControlProperty *)self control];
  LOBYTE(selfCopy) = [control isPropertySettable:&selfCopy->_controlAddress];

  return selfCopy;
}

- (unsigned)dataSizeWithQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  v5 = *&size;
  control = [(ASDTControlProperty *)self control];
  LODWORD(data) = [control dataSizeForProperty:&self->_controlAddress withQualifierSize:v5 andQualifierData:data];

  return data;
}

- (BOOL)getPropertyWithQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  v7 = *&client;
  v11 = *&size;
  control = [(ASDTControlProperty *)self control];
  LOBYTE(v7) = [control getProperty:&self->_controlAddress withQualifierSize:v11 qualifierData:data dataSize:dataSize andData:andData forClient:v7];

  return v7;
}

- (BOOL)setPropertyWithQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client
{
  v7 = *&client;
  v9 = *&dataSize;
  v11 = *&size;
  control = [(ASDTControlProperty *)self control];
  LOBYTE(v7) = [control setProperty:&self->_controlAddress withQualifierSize:v11 qualifierData:data dataSize:v9 andData:andData forClient:v7];

  return v7;
}

- (ASDControl)control
{
  WeakRetained = objc_loadWeakRetained(&self->_control);

  return WeakRetained;
}

- (AudioObjectPropertyAddress)controlAddress
{
  p_controlAddress = &self->_controlAddress;
  v3 = *&self->_controlAddress.mSelector;
  mElement = p_controlAddress->mElement;
  result.mSelector = v3;
  result.mScope = HIDWORD(v3);
  result.mElement = mElement;
  return result;
}

@end