@interface ASDTIOA2LevelControl
+ (VolumeCurve)volumeCurveFromControlInfo:(SEL)info;
- (ASDTIOA2Device)ioa2Device;
- (ASDTIOA2LevelControl)initWithIOA2Device:(id)device userClientID:(unsigned int)d isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope objectClassID:(unsigned int)iD dictionary:(id)dictionary;
- (BOOL)changeScalarValue:(float)value;
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable;
- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client;
- (BOOL)synchronizeWithRegistryDictionary:(id)dictionary;
- (NSArray)propertySelectorInfo;
- (id).cxx_construct;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
- (void)dealloc;
- (void)doSetValue:(unsigned int)value;
- (void)setDecibelValue:(float)value;
@end

@implementation ASDTIOA2LevelControl

+ (VolumeCurve)volumeCurveFromControlInfo:(SEL)info
{
  v5 = a4;
  ASDT::VolumeCurve::VolumeCurve(retstr);
  v6 = v5;
  v7 = v6;
  if (v6)
  {
    CFRetain(v6);
    cf = v7;
    v8 = CFGetTypeID(v7);
    if (v8 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CED520](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  else
  {
    cf = 0;
  }

  v11 = ASDT::IOA2UserClient::SetupVolumeCurve(&cf, retstr, v10);
  if (!v11)
  {
    v13 = ASDTIOA2LogType(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(ASDTIOA2LevelControl *)v7 volumeCurveFromControlInfo:v13];
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return result;
}

- (ASDTIOA2LevelControl)initWithIOA2Device:(id)device userClientID:(unsigned int)d isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope objectClassID:(unsigned int)iD dictionary:(id)dictionary
{
  v9 = *&iD;
  v10 = *&scope;
  v11 = *&element;
  settableCopy = settable;
  deviceCopy = device;
  dictionaryCopy = dictionary;
  objc_msgSend_volumeCurveFromControlInfo_(ASDTIOA2LevelControl);
  self->_volumeCurve.mTag = v34;
  p_end_node = &self->_volumeCurve.mCurveMap.__tree_.__end_node_;
  std::__tree<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::__map_value_compare<ASDT::RawPoint,std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::less<ASDT::RawPoint>,true>,std::allocator<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>>>::destroy(&self->_volumeCurve.mCurveMap, self->_volumeCurve.mCurveMap.__tree_.__end_node_.__left_);
  v17 = v36;
  self->_volumeCurve.mCurveMap.__tree_.__begin_node_ = v35;
  self->_volumeCurve.mCurveMap.__tree_.__end_node_.__left_ = v17;
  v18 = v37;
  self->_volumeCurve.mCurveMap.__tree_.__size_ = v37;
  if (v18)
  {
    v17[2] = p_end_node;
    v35 = &v36;
    v36 = 0;
    v37 = 0;
    v17 = 0;
  }

  else
  {
    self->_volumeCurve.mCurveMap.__tree_.__begin_node_ = p_end_node;
  }

  *&self->_volumeCurve.mIsApplyingTransferFunction = v38;
  std::__tree<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::__map_value_compare<ASDT::RawPoint,std::__value_type<ASDT::RawPoint,ASDT::DBPoint>,std::less<ASDT::RawPoint>,true>,std::allocator<std::__value_type<ASDT::RawPoint,ASDT::DBPoint>>>::destroy(&v35, v17);
  v19 = [dictionaryCopy objectForKeyedSubscript:@"value"];
  self->_rawValue = [v19 unsignedIntValue];

  ASDT::VolumeCurve::ConvertRawToDB(&self->_volumeCurve);
  v21 = v20;
  ASDT::VolumeCurve::GetMinimumDB(&self->_volumeCurve);
  v23 = v22;
  ASDT::VolumeCurve::GetMaximumDB(&self->_volumeCurve);
  v25 = v24;
  plugin = [deviceCopy plugin];
  v33.receiver = self;
  v33.super_class = ASDTIOA2LevelControl;
  LODWORD(v27) = v21;
  LODWORD(v28) = v23;
  LODWORD(v29) = v25;
  v30 = [(ASDLevelControl *)&v33 initWithDecibelValue:settableCopy minimumValue:v11 maximumValue:v10 isSettable:plugin forElement:v9 inScope:v27 withPlugin:v28 andObjectClassID:v29];

  if (v30)
  {
    objc_storeWeak(&v30->_ioa2Device, deviceCopy);
    v30->_userClientID = d;
  }

  return v30;
}

- (void)dealloc
{
  [(ASDControl *)self asdtRemoveControlProperties];
  v3.receiver = self;
  v3.super_class = ASDTIOA2LevelControl;
  [(ASDTIOA2LevelControl *)&v3 dealloc];
}

- (NSArray)propertySelectorInfo
{
  v22[6] = *MEMORY[0x277D85DE8];
  v20[0] = @"selector";
  v20[1] = @"dataType";
  v21[0] = &unk_285357A20;
  v21[1] = &unk_285357A38;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v22[0] = v2;
  v18[0] = @"selector";
  v18[1] = @"dataType";
  v19[0] = &unk_285357A50;
  v19[1] = &unk_285357A38;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v22[1] = v3;
  v16[0] = @"selector";
  v16[1] = @"dataType";
  v17[0] = &unk_285357A68;
  v17[1] = &unk_285357A38;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v22[2] = v4;
  v14[0] = @"selector";
  v14[1] = @"dataType";
  v15[0] = &unk_285357A80;
  v15[1] = &unk_285357A38;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v22[3] = v5;
  v12[0] = @"selector";
  v12[1] = @"dataType";
  v13[0] = &unk_285357A98;
  v13[1] = &unk_285357A38;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v22[4] = v6;
  v10[0] = @"selector";
  v10[1] = @"dataType";
  v11[0] = &unk_285357AB0;
  v11[1] = &unk_285357A38;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v22[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:6];

  return v8;
}

- (BOOL)synchronizeWithRegistryDictionary:(id)dictionary
{
  v15 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    std::recursive_mutex::lock(&self->_lock);
    v6 = [dictionaryCopy objectForKeyedSubscript:@"property selectors"];
    v7 = [(ASDControl *)self asdtAddControlProperties:v6];

    if (v7)
    {
      v8 = [dictionaryCopy objectForKeyedSubscript:@"value"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[ASDTIOA2LevelControl pushValue:](self, "pushValue:", [v8 unsignedIntValue]);
      }
    }

    std::recursive_mutex::unlock(&self->_lock);
  }

  else
  {
    v9 = ASDTIOA2LogType(0, v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_2416BA000, v9, OS_LOG_TYPE_DEFAULT, "%@: Couldn't synchronize with registry", &v13, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (void)doSetValue:(unsigned int)value
{
  v31 = *MEMORY[0x277D85DE8];
  std::recursive_mutex::lock(&self->_lock);
  if (self->_rawValue != value)
  {
    self->_rawValue = value;
    v5 = NSStringFromSelector(sel_decibelValue);
    [(ASDTIOA2LevelControl *)self willChangeValueForKey:v5];

    v6 = NSStringFromSelector(sel_scalarValue);
    [(ASDTIOA2LevelControl *)self willChangeValueForKey:v6];

    ASDT::VolumeCurve::ConvertRawToDB(&self->_volumeCurve);
    v18.receiver = self;
    v18.super_class = ASDTIOA2LevelControl;
    [(ASDLevelControl *)&v18 setDecibelValue:?];
    [(ASDControl *)self asdtSendControlPropertyChangeNotificationAtIndex:0];
    [(ASDControl *)self asdtSendControlPropertyChangeNotificationAtIndex:1];
    v7 = NSStringFromSelector(sel_decibelValue);
    [(ASDTIOA2LevelControl *)self didChangeValueForKey:v7];

    v8 = NSStringFromSelector(sel_scalarValue);
    [(ASDTIOA2LevelControl *)self didChangeValueForKey:v8];

    v11 = ASDTIOA2LogType(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);
      deviceUID = [WeakRetained deviceUID];
      if ([(ASDTIOA2LevelControl *)self objectClass]>> 29 && [(ASDTIOA2LevelControl *)self objectClass]>> 24 <= 0x7E)
      {
        v14 = [(ASDTIOA2LevelControl *)self objectClass]>> 24;
      }

      else
      {
        v14 = 32;
      }

      if (([(ASDTIOA2LevelControl *)self objectClass]& 0xE00000) != 0 && ([(ASDTIOA2LevelControl *)self objectClass]>> 16) <= 0x7Eu)
      {
        v15 = ([(ASDTIOA2LevelControl *)self objectClass]>> 16);
      }

      else
      {
        v15 = 32;
      }

      if (([(ASDTIOA2LevelControl *)self objectClass]& 0xE000) != 0 && ([(ASDTIOA2LevelControl *)self objectClass]>> 8) <= 0x7Eu)
      {
        v16 = ([(ASDTIOA2LevelControl *)self objectClass]>> 8);
      }

      else
      {
        v16 = 32;
      }

      if (([(ASDTIOA2LevelControl *)self objectClass]& 0xE0) != 0 && [(ASDTIOA2LevelControl *)self objectClass]<= 0x7Eu)
      {
        objectClass = [(ASDTIOA2LevelControl *)self objectClass];
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
      valueCopy = value;
      _os_log_impl(&dword_2416BA000, v11, OS_LOG_TYPE_DEFAULT, "%@: Control '%c%c%c%c' changed to: %u", buf, 0x2Au);
    }
  }

  std::recursive_mutex::unlock(&self->_lock);
}

- (void)setDecibelValue:(float)value
{
  v6 = ASDT::VolumeCurve::ConvertDBToRaw(&self->_volumeCurve, value);
  WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);
  v5 = [WeakRetained _setControlValue:&v6 forControl:self->_userClientID];

  if (v5)
  {
    [(ASDTIOA2LevelControl *)self doSetValue:v6];
  }
}

- (BOOL)changeScalarValue:(float)value
{
  ASDT::VolumeCurve::ConvertScalarToDB(&self->_volumeCurve, value);

  return [(ASDTIOA2LevelControl *)self changeDecibelValue:?];
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector == 1818457190)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = ASDTIOA2LevelControl;
  return [(ASDLevelControl *)&v6 hasProperty:?];
}

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable
{
  if (!settable)
  {
    return 0;
  }

  if (settable->mSelector == 1818457190)
  {

    return [(ASDLevelControl *)self isSettable];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = ASDTIOA2LevelControl;
    return [(ASDLevelControl *)&v6 isPropertySettable:?];
  }
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector == 1818457190)
  {
    return 4;
  }

  v9 = v5;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = ASDTIOA2LevelControl;
  return [ASDLevelControl dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
}

- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector != 1818457190)
  {
    v13 = v8;
    v14 = v9;
    v12.receiver = self;
    v12.super_class = ASDTIOA2LevelControl;
    return [ASDLevelControl getProperty:sel_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient_ withQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
  }

  v10 = 0;
  if (dataSize && andData)
  {
    if (*dataSize >= 4)
    {
      *andData = self->_volumeCurve.mTransferFunction;
      return 1;
    }

    return 0;
  }

  return v10;
}

- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector == 1818457190)
  {
    v8 = 0;
    if (dataSize >= 4 && andData)
    {
      ASDT::VolumeCurve::SetTransferFunction(&self->_volumeCurve);
      return 1;
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ASDTIOA2LevelControl;
    return [ASDLevelControl setProperty:sel_setProperty_withQualifierSize_qualifierData_dataSize_andData_forClient_ withQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
  }

  return v8;
}

- (ASDTIOA2Device)ioa2Device
{
  WeakRetained = objc_loadWeakRetained(&self->_ioa2Device);

  return WeakRetained;
}

- (id).cxx_construct
{
  ASDT::VolumeCurve::VolumeCurve(&self->_volumeCurve);
  MEMORY[0x245CED560](&self->_lock);
  return self;
}

+ (void)volumeCurveFromControlInfo:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2416BA000, a2, OS_LOG_TYPE_ERROR, "ASDTIOA2LevelControl: Bad control info: %@", &v2, 0xCu);
}

@end