@interface ASDSliderControl
+ (id)sliderControlWithValue:(unsigned int)value andRange:(_ASDSliderRange)range isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin;
- (ASDSliderControl)initWithValue:(unsigned int)value andRange:(_ASDSliderRange)range isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d;
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable;
- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client;
- (_ASDSliderRange)range;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
- (unsigned)value;
- (void)setRange:(_ASDSliderRange)range;
- (void)setValue:(unsigned int)value;
@end

@implementation ASDSliderControl

- (ASDSliderControl)initWithValue:(unsigned int)value andRange:(_ASDSliderRange)range isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d
{
  v9 = *&scope;
  v10 = *&element;
  mMinimum = range.mMinimum;
  mMaximum = range.mMaximum;
  pluginCopy = plugin;
  if (mMinimum > mMaximum)
  {
    [ASDSliderControl initWithValue:a2 andRange:self isSettable:? forElement:? inScope:? withPlugin:? andObjectClassID:?];
  }

  v29.receiver = self;
  v29.super_class = ASDSliderControl;
  v18 = [(ASDControl *)&v29 initWithElement:v10 inScope:v9 withPlugin:pluginCopy andObjectClassID:d];
  v19 = v18;
  if (v18)
  {
    v18->_value = value;
    v18->_range.mMinimum = mMinimum;
    v18->_range.mMaximum = mMaximum;
    v18->_settable = settable;
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v20 bundleIdentifier];
    v22 = MEMORY[0x277CCACA8];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v22 stringWithFormat:@"%@.%@.%p", bundleIdentifier, v24, v19];
    v26 = dispatch_queue_create([v25 UTF8String], 0);
    valueQueue = v19->_valueQueue;
    v19->_valueQueue = v26;
  }

  return v19;
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property
{
  if (!property)
  {
    return 0;
  }

  if ((property->mSelector | 4) == 0x73647276)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = ASDSliderControl;
  return [(ASDControl *)&v6 hasProperty:?];
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector == 1935962742)
  {
    return 4;
  }

  if (property->mSelector == 1935962738)
  {
    return 8;
  }

  v9 = v5;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = ASDSliderControl;
  return [ASDControl dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
}

- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  v8 = 0;
  if (property && dataSize && andData)
  {
    if (property->mSelector == 1935962738)
    {
      if (*dataSize >= 8)
      {
        valueQueue = self->_valueQueue;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __91__ASDSliderControl_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke_2;
        v15[3] = &unk_278CE3F90;
        v15[4] = self;
        v15[5] = andData;
        dispatch_sync(valueQueue, v15);
        v11 = 8;
        goto LABEL_10;
      }
    }

    else
    {
      if (property->mSelector != 1935962742)
      {
        v14.receiver = self;
        v14.super_class = ASDSliderControl;
        return [ASDControl getProperty:sel_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient_ withQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
      }

      if (*dataSize >= 4)
      {
        v10 = self->_valueQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __91__ASDSliderControl_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient___block_invoke;
        block[3] = &unk_278CE3F90;
        block[4] = self;
        block[5] = andData;
        dispatch_sync(v10, block);
        v11 = 4;
LABEL_10:
        *dataSize = v11;
        return 1;
      }
    }

    return 0;
  }

  return v8;
}

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable
{
  if (!settable || settable->mSelector == 1935962738)
  {
    return 0;
  }

  if (settable->mSelector == 1935962742)
  {

    return [(ASDSliderControl *)self isSettable];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = ASDSliderControl;
    return [(ASDObject *)&v6 isPropertySettable:?];
  }
}

- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client
{
  if (!property)
  {
    goto LABEL_14;
  }

  v8 = *&client;
  v10 = *&dataSize;
  v12 = *&size;
  v15 = [(ASDSliderControl *)self hasProperty:?];
  if (!v15)
  {
    return v15;
  }

  v15 = [(ASDSliderControl *)self isPropertySettable:property];
  if (!v15)
  {
    return v15;
  }

  if (property->mSelector != 1935962742)
  {
    v20.receiver = self;
    v20.super_class = ASDSliderControl;
    LOBYTE(v15) = [(ASDObject *)&v20 setProperty:property withQualifierSize:v12 qualifierData:data dataSize:v10 andData:andData forClient:v8];
    return v15;
  }

  if (v10 != 4)
  {
LABEL_14:
    LOBYTE(v15) = 0;
    return v15;
  }

  mMinimum = self->_range.mMinimum;
  mMaximum = self->_range.mMaximum;
  if (mMaximum >= *andData)
  {
    mMaximum = *andData;
  }

  if (mMaximum <= mMinimum)
  {
    v18 = mMinimum;
  }

  else
  {
    v18 = mMaximum;
  }

  LOBYTE(v15) = [(ASDSliderControl *)self changeValue:v18];
  return v15;
}

- (void)setRange:(_ASDSliderRange)range
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  valueQueue = self->_valueQueue;
  v12 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ASDSliderControl_setRange___block_invoke;
  block[3] = &unk_278CE4030;
  block[5] = &v9;
  block[6] = range;
  block[4] = self;
  dispatch_sync(valueQueue, block);
  if (*(v10 + 24) == 1)
  {
    v7 = 0;
    v6 = 0x676C6F6273647272;
    propertyChangedDelegate = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate changedProperty:&v6 forObject:self];
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __29__ASDSliderControl_setRange___block_invoke(uint64_t result)
{
  v1 = (*(result + 32) + 84);
  if (*(*(result + 32) + 88) != *(result + 52) || *v1 != *(result + 48))
  {
    *v1 = *(result + 48);
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (_ASDSliderRange)range
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2810000000;
  v9 = "";
  v10 = 0;
  valueQueue = self->_valueQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__ASDSliderControl_range__block_invoke;
  block[3] = &unk_278CE3E28;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(valueQueue, block);
  v3 = v7[4];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setValue:(unsigned int)value
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  valueQueue = self->_valueQueue;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ASDSliderControl_setValue___block_invoke;
  block[3] = &unk_278CE4230;
  valueCopy = value;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(valueQueue, block);
  if (*(v11 + 24) == 1)
  {
    v7 = 0;
    v6 = 0x676C6F6273647276;
    propertyChangedDelegate = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate changedProperty:&v6 forObject:self];
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __29__ASDSliderControl_setValue___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = v1[22];
  if (v2 >= *(result + 48))
  {
    v2 = *(result + 48);
  }

  if (v2 <= v1[21])
  {
    v2 = v1[21];
  }

  if (v1[20] != v2)
  {
    v1[20] = v2;
    *(*(*(result + 40) + 8) + 24) = 1;
  }

  return result;
}

- (unsigned)value
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  valueQueue = self->_valueQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __25__ASDSliderControl_value__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(valueQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (id)sliderControlWithValue:(unsigned int)value andRange:(_ASDSliderRange)range isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin
{
  v8 = *&scope;
  v9 = *&element;
  settableCopy = settable;
  v12 = *&value;
  pluginCopy = plugin;
  LODWORD(v16) = 1936483442;
  v14 = [objc_alloc(objc_opt_class()) initWithValue:v12 andRange:range isSettable:settableCopy forElement:v9 inScope:v8 withPlugin:pluginCopy andObjectClassID:v16];

  return v14;
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  treeCopy = tree;
  v12.receiver = self;
  v12.super_class = ASDSliderControl;
  indentCopy = indent;
  v7 = [(ASDControl *)&v12 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  range = [(ASDSliderControl *)self range];
  isSettable = [(ASDSliderControl *)self isSettable];
  v10 = @"NO";
  if (isSettable)
  {
    v10 = @"YES";
  }

  [v7 appendFormat:@"%@|    Is Settable: %@\n", indentCopy, v10];
  [v7 appendFormat:@"%@|    Value: %u\n", indentCopy, -[ASDSliderControl value](self, "value")];
  [v7 appendFormat:@"%@|    Range: Min %u Max %u\n", indentCopy, range, HIDWORD(*&range)];

  return v7;
}

- (void)initWithValue:(uint64_t)a1 andRange:(uint64_t)a2 isSettable:forElement:inScope:withPlugin:andObjectClassID:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ASDSliderControl.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"range.mMinimum <= range.mMaximum"}];
}

@end