@interface ASDTIOA2SliderControl
- (ASDTIOA2Device)ioa2Device;
- (ASDTIOA2SliderControl)initWithIOA2Device:(id)device userClientID:(unsigned int)d isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope objectClassID:(unsigned int)iD dictionary:(id)dictionary;
- (BOOL)changeValue:(unsigned int)value;
- (BOOL)synchronizeWithRegistryDictionary:(id)dictionary;
- (NSArray)propertySelectorInfo;
- (void)dealloc;
- (void)doSetValue:(unsigned int)value;
- (void)setValue:(unsigned int)value;
@end

@implementation ASDTIOA2SliderControl

- (ASDTIOA2SliderControl)initWithIOA2Device:(id)device userClientID:(unsigned int)d isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope objectClassID:(unsigned int)iD dictionary:(id)dictionary
{
  v10 = *&scope;
  v11 = *&element;
  settableCopy = settable;
  deviceCopy = device;
  dictionaryCopy = dictionary;
  HIDWORD(v25.info) = 0;
  v25.isa = 0;
  if (getValueAndRangeFromControlDict(dictionaryCopy, (&v25.info + 4), &v25))
  {
    info_high = HIDWORD(v25.info);
    isa = v25.isa;
    plugin = [deviceCopy plugin];
    v24.receiver = self;
    v24.super_class = ASDTIOA2SliderControl;
    iDCopy = iD;
    v19 = [(ASDSliderControl *)&v24 initWithValue:info_high andRange:isa isSettable:settableCopy forElement:v11 inScope:v10 withPlugin:plugin andObjectClassID:iDCopy];

    if (v19)
    {
      [(ASDTIOA2SliderControl *)v19 setIoa2Device:deviceCopy];
      v19->_userClientID = d;
    }

    self = v19;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(ASDControl *)self asdtRemoveControlProperties];
  v3.receiver = self;
  v3.super_class = ASDTIOA2SliderControl;
  [(ASDTIOA2SliderControl *)&v3 dealloc];
}

- (NSArray)propertySelectorInfo
{
  v10[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"selector";
  v8[1] = @"dataType";
  v9[0] = &unk_2853579D8;
  v9[1] = &unk_2853579F0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v10[0] = v2;
  v6[0] = @"selector";
  v6[1] = @"dataType";
  v7[0] = &unk_285357A08;
  v7[1] = &unk_2853579F0;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v10[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  return v4;
}

- (BOOL)synchronizeWithRegistryDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    std::recursive_mutex::lock(&self->_lock);
    v6 = [(NSDictionary *)dictionaryCopy objectForKeyedSubscript:@"property selectors"];
    v7 = [(ASDControl *)self asdtAddControlProperties:v6];

    if (v7)
    {
      HIDWORD(v11.info) = 0;
      v11.isa = 0;
      ValueAndRangeFromControlDict = getValueAndRangeFromControlDict(dictionaryCopy, (&v11.info + 4), &v11);
      if (ValueAndRangeFromControlDict)
      {
        [(ASDSliderControl *)self setRange:v11.isa];
        [(ASDTIOA2SliderControl *)self pushValue:HIDWORD(v11.info)];
      }
    }

    else
    {
      ValueAndRangeFromControlDict = 0;
    }

    std::recursive_mutex::unlock(&self->_lock);
  }

  else
  {
    v9 = ASDTIOA2LogType(0, v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11.data) = 0;
      _os_log_impl(&dword_2416BA000, v9, OS_LOG_TYPE_DEFAULT, "Error: Couldn't synchronize with registry", &v11.data, 2u);
    }

    ValueAndRangeFromControlDict = 0;
  }

  return ValueAndRangeFromControlDict;
}

- (BOOL)changeValue:(unsigned int)value
{
  v3 = *&value;
  if ([(ASDSliderControl *)self value]!= value)
  {
    [(ASDTIOA2SliderControl *)self setValue:v3];
  }

  return 1;
}

- (void)doSetValue:(unsigned int)value
{
  v3 = *&value;
  v29 = *MEMORY[0x277D85DE8];
  std::recursive_mutex::lock(&self->_lock);
  if ([(ASDSliderControl *)self value]!= v3)
  {
    v5 = NSStringFromSelector(sel_value);
    [(ASDTIOA2SliderControl *)self willChangeValueForKey:v5];

    v16.receiver = self;
    v16.super_class = ASDTIOA2SliderControl;
    [(ASDSliderControl *)&v16 setValue:v3];
    [(ASDControl *)self asdtSendControlPropertyChangeNotificationAtIndex:0];
    v6 = NSStringFromSelector(sel_value);
    [(ASDTIOA2SliderControl *)self didChangeValueForKey:v6];

    v9 = ASDTIOA2LogType(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);
      deviceUID = [WeakRetained deviceUID];
      if ([(ASDTIOA2SliderControl *)self objectClass]>> 29 && [(ASDTIOA2SliderControl *)self objectClass]>> 24 <= 0x7E)
      {
        v12 = [(ASDTIOA2SliderControl *)self objectClass]>> 24;
      }

      else
      {
        v12 = 32;
      }

      if (([(ASDTIOA2SliderControl *)self objectClass]& 0xE00000) != 0 && ([(ASDTIOA2SliderControl *)self objectClass]>> 16) <= 0x7Eu)
      {
        v13 = ([(ASDTIOA2SliderControl *)self objectClass]>> 16);
      }

      else
      {
        v13 = 32;
      }

      if (([(ASDTIOA2SliderControl *)self objectClass]& 0xE000) != 0 && ([(ASDTIOA2SliderControl *)self objectClass]>> 8) <= 0x7Eu)
      {
        v14 = ([(ASDTIOA2SliderControl *)self objectClass]>> 8);
      }

      else
      {
        v14 = 32;
      }

      if (([(ASDTIOA2SliderControl *)self objectClass]& 0xE0) != 0 && [(ASDTIOA2SliderControl *)self objectClass]<= 0x7Eu)
      {
        objectClass = [(ASDTIOA2SliderControl *)self objectClass];
      }

      else
      {
        objectClass = 32;
      }

      *buf = 138413570;
      v18 = deviceUID;
      v19 = 1024;
      v20 = v12;
      v21 = 1024;
      v22 = v13;
      v23 = 1024;
      v24 = v14;
      v25 = 1024;
      v26 = objectClass;
      v27 = 1024;
      v28 = v3;
      _os_log_impl(&dword_2416BA000, v9, OS_LOG_TYPE_DEFAULT, "%@: Control '%c%c%c%c' changed to: %u", buf, 0x2Au);
    }
  }

  std::recursive_mutex::unlock(&self->_lock);
}

- (void)setValue:(unsigned int)value
{
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);
  v5 = [WeakRetained _setControlValue:&valueCopy forControl:self->_userClientID];

  if (v5)
  {
    [(ASDTIOA2SliderControl *)self doSetValue:valueCopy];
  }
}

- (ASDTIOA2Device)ioa2Device
{
  WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);

  return WeakRetained;
}

@end