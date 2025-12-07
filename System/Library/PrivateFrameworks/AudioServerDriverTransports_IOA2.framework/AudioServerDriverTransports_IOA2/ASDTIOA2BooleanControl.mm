@interface ASDTIOA2BooleanControl
- (ASDTIOA2BooleanControl)initWithIOA2Device:(id)device userClientID:(unsigned int)d isSettable:(BOOL)settable element:(unsigned int)element scope:(unsigned int)scope objectClassID:(unsigned int)iD dictionary:(id)dictionary;
- (ASDTIOA2Device)ioa2Device;
- (BOOL)synchronizeWithRegistryDictionary:(id)dictionary;
- (NSArray)propertySelectorInfo;
- (id).cxx_construct;
- (void)doSetValue:(BOOL)value;
- (void)setValue:(BOOL)value;
@end

@implementation ASDTIOA2BooleanControl

- (ASDTIOA2BooleanControl)initWithIOA2Device:(id)device userClientID:(unsigned int)d isSettable:(BOOL)settable element:(unsigned int)element scope:(unsigned int)scope objectClassID:(unsigned int)iD dictionary:(id)dictionary
{
  v9 = *&iD;
  v10 = *&scope;
  v11 = *&element;
  settableCopy = settable;
  deviceCopy = device;
  dictionaryCopy = dictionary;
  v17 = [dictionaryCopy objectForKeyedSubscript:@"value"];
  unsignedIntValue = [v17 unsignedIntValue];

  plugin = [deviceCopy plugin];
  v22.receiver = self;
  v22.super_class = ASDTIOA2BooleanControl;
  v20 = [(ASDBooleanControl *)&v22 initWithValue:unsignedIntValue != 0 isSettable:settableCopy forElement:v11 inScope:v10 withPlugin:plugin andObjectClassID:v9];

  if (v20)
  {
    *(v20 + 43) = d;
    objc_storeWeak(v20 + 24, deviceCopy);
  }

  return v20;
}

- (NSArray)propertySelectorInfo
{
  v7[1] = *MEMORY[0x277D85DE8];
  v5[0] = @"selector";
  v5[1] = @"dataType";
  v6[0] = &unk_285357900;
  v6[1] = &unk_285357918;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  return v3;
}

- (BOOL)synchronizeWithRegistryDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"value"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v11 = ASDTIOA2LogType(isKindOfClass, v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_2416BA000, v11, OS_LOG_TYPE_DEFAULT, "Error: Couldn't synchronize with registry", v13, 2u);
    }

    goto LABEL_7;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"property selectors"];
  v9 = [(ASDControl *)self asdtAddControlProperties:v8];

  if (!v9)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  -[ASDTIOA2BooleanControl pushValue:](self, "pushValue:", [v5 unsignedIntValue]);
  v10 = 1;
LABEL_8:

  return v10;
}

- (void)doSetValue:(BOOL)value
{
  valueCopy = value;
  v31 = *MEMORY[0x277D85DE8];
  std::mutex::lock((self + 104));
  if ([(ASDBooleanControl *)self value]!= valueCopy)
  {
    setterBlock = [(ASDTIOA2BooleanControl *)self setterBlock];

    if (setterBlock)
    {
      setterBlock2 = [(ASDTIOA2BooleanControl *)self setterBlock];
      setterBlock2[2](setterBlock2, valueCopy);
    }

    v7 = NSStringFromSelector(sel_value);
    [(ASDTIOA2BooleanControl *)self willChangeValueForKey:v7];

    v18.receiver = self;
    v18.super_class = ASDTIOA2BooleanControl;
    [(ASDBooleanControl *)&v18 setValue:valueCopy];
    [(ASDControl *)self asdtSendControlPropertyChangeNotificationAtIndex:0];
    v8 = NSStringFromSelector(sel_value);
    [(ASDTIOA2BooleanControl *)self didChangeValueForKey:v8];

    v11 = ASDTIOA2LogType(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(self + 24);
      deviceUID = [WeakRetained deviceUID];
      if ([(ASDTIOA2BooleanControl *)self objectClass]>> 29 && [(ASDTIOA2BooleanControl *)self objectClass]>> 24 <= 0x7E)
      {
        v14 = [(ASDTIOA2BooleanControl *)self objectClass]>> 24;
      }

      else
      {
        v14 = 32;
      }

      if (([(ASDTIOA2BooleanControl *)self objectClass]& 0xE00000) != 0 && ([(ASDTIOA2BooleanControl *)self objectClass]>> 16) <= 0x7Eu)
      {
        v15 = ([(ASDTIOA2BooleanControl *)self objectClass]>> 16);
      }

      else
      {
        v15 = 32;
      }

      if (([(ASDTIOA2BooleanControl *)self objectClass]& 0xE000) != 0 && ([(ASDTIOA2BooleanControl *)self objectClass]>> 8) <= 0x7Eu)
      {
        v16 = ([(ASDTIOA2BooleanControl *)self objectClass]>> 8);
      }

      else
      {
        v16 = 32;
      }

      if (([(ASDTIOA2BooleanControl *)self objectClass]& 0xE0) != 0 && [(ASDTIOA2BooleanControl *)self objectClass]<= 0x7Eu)
      {
        objectClass = [(ASDTIOA2BooleanControl *)self objectClass];
      }

      else
      {
        objectClass = 32;
      }

      *buf = 138413570;
      v20 = deviceUID;
      v21 = 1024;
      v22 = v14;
      v23 = 1024;
      v24 = v15;
      v25 = 1024;
      v26 = v16;
      v27 = 1024;
      v28 = objectClass;
      v29 = 1024;
      v30 = valueCopy;
      _os_log_impl(&dword_2416BA000, v11, OS_LOG_TYPE_DEFAULT, "%@: Control '%c%c%c%c' changed to: %u", buf, 0x2Au);
    }
  }

  std::mutex::unlock((self + 104));
}

- (void)setValue:(BOOL)value
{
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(self + 24);
  v5 = [WeakRetained _setControlValue:&valueCopy forControl:*(self + 43)];

  if (v5)
  {
    [(ASDTIOA2BooleanControl *)self doSetValue:valueCopy];
  }
}

- (ASDTIOA2Device)ioa2Device
{
  WeakRetained = objc_loadWeakRetained(self + 24);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 13) = 850045863;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 20) = 0;
  return self;
}

@end