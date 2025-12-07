@interface ASDBooleanControl
+ (id)invertControlWithValue:(BOOL)value isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin;
+ (id)jackControlWithValue:(BOOL)value isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin;
+ (id)muteControlWithValue:(BOOL)value isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin;
+ (id)phantomPowerControlWithValue:(BOOL)value isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin;
- (ASDBooleanControl)initWithValue:(BOOL)value isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d;
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property;
- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable;
- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client;
- (BOOL)value;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (id)driverClassName;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
- (void)setValue:(BOOL)value;
@end

@implementation ASDBooleanControl

- (ASDBooleanControl)initWithValue:(BOOL)value isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d
{
  v21.receiver = self;
  v21.super_class = ASDBooleanControl;
  v10 = [(ASDControl *)&v21 initWithElement:*&element inScope:*&scope withPlugin:plugin andObjectClassID:*&d];
  v11 = v10;
  if (v10)
  {
    v10->_value = value;
    v10->_settable = settable;
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    bundleIdentifier = [v12 bundleIdentifier];
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"%@.%@.%p", bundleIdentifier, v16, v11];
    v18 = dispatch_queue_create([v17 UTF8String], 0);
    valueQueue = v11->_valueQueue;
    v11->_valueQueue = v18;
  }

  return v11;
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector == 1650685548)
  {
    return 1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = ASDBooleanControl;
  return [(ASDControl *)&v6 hasProperty:?];
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector == 1650685548)
  {
    return 4;
  }

  v9 = v5;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = ASDBooleanControl;
  return [ASDControl dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
}

- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  v8 = 0;
  if (property && dataSize && andData)
  {
    if (property->mSelector == 1650685548)
    {
      if (*dataSize < 4)
      {
        return 0;
      }

      else
      {
        *andData = [(ASDBooleanControl *)self value];
        *dataSize = 4;
        return 1;
      }
    }

    else
    {
      v11.receiver = self;
      v11.super_class = ASDBooleanControl;
      return [ASDControl getProperty:sel_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient_ withQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
    }
  }

  return v8;
}

- (BOOL)isPropertySettable:(const AudioObjectPropertyAddress *)settable
{
  if (!settable)
  {
    return 0;
  }

  if (settable->mSelector == 1650685548)
  {

    return [(ASDBooleanControl *)self isSettable];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = ASDBooleanControl;
    return [(ASDObject *)&v6 isPropertySettable:?];
  }
}

- (BOOL)setProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int)dataSize andData:(const void *)andData forClient:(int)client
{
  if (!property)
  {
    goto LABEL_9;
  }

  v8 = *&client;
  v10 = *&dataSize;
  v12 = *&size;
  v15 = [(ASDBooleanControl *)self hasProperty:?];
  if (!v15)
  {
    return v15;
  }

  v15 = [(ASDBooleanControl *)self isPropertySettable:property];
  if (!v15)
  {
    return v15;
  }

  if (property->mSelector != 1650685548)
  {
    v18.receiver = self;
    v18.super_class = ASDBooleanControl;
    LOBYTE(v15) = [(ASDObject *)&v18 setProperty:property withQualifierSize:v12 qualifierData:data dataSize:v10 andData:andData forClient:v8];
    return v15;
  }

  if (v10 != 4)
  {
LABEL_9:
    LOBYTE(v15) = 0;
    return v15;
  }

  v16 = *andData != 0;

  LOBYTE(v15) = [(ASDBooleanControl *)self changeValue:v16];
  return v15;
}

- (void)setValue:(BOOL)value
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  valueQueue = self->_valueQueue;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__ASDBooleanControl_setValue___block_invoke;
  block[3] = &unk_278CE41E0;
  valueCopy = value;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(valueQueue, block);
  if (*(v11 + 24) == 1)
  {
    v7 = 0;
    v6 = 0x676C6F626263766CLL;
    propertyChangedDelegate = [(ASDObject *)self propertyChangedDelegate];
    [propertyChangedDelegate changedProperty:&v6 forObject:self];
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __30__ASDBooleanControl_setValue___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 80) != *(result + 48))
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *(*(result + 32) + 80) = *(result + 48);
  }

  return result;
}

- (BOOL)value
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  valueQueue = self->_valueQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __26__ASDBooleanControl_value__block_invoke;
  v5[3] = &unk_278CE3E28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(valueQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (id)muteControlWithValue:(BOOL)value isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin
{
  v7 = *&scope;
  v8 = *&element;
  settableCopy = settable;
  valueCopy = value;
  pluginCopy = plugin;
  v12 = [objc_alloc(objc_opt_class()) initWithValue:valueCopy isSettable:settableCopy forElement:v8 inScope:v7 withPlugin:pluginCopy andObjectClassID:1836414053];

  return v12;
}

+ (id)phantomPowerControlWithValue:(BOOL)value isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin
{
  v7 = *&scope;
  v8 = *&element;
  settableCopy = settable;
  valueCopy = value;
  pluginCopy = plugin;
  v12 = [objc_alloc(objc_opt_class()) initWithValue:valueCopy isSettable:settableCopy forElement:v8 inScope:v7 withPlugin:pluginCopy andObjectClassID:1885888878];

  return v12;
}

+ (id)invertControlWithValue:(BOOL)value isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin
{
  v7 = *&scope;
  v8 = *&element;
  settableCopy = settable;
  valueCopy = value;
  pluginCopy = plugin;
  v12 = [objc_alloc(objc_opt_class()) initWithValue:valueCopy isSettable:settableCopy forElement:v8 inScope:v7 withPlugin:pluginCopy andObjectClassID:1885893481];

  return v12;
}

+ (id)jackControlWithValue:(BOOL)value isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin
{
  v7 = *&scope;
  v8 = *&element;
  settableCopy = settable;
  valueCopy = value;
  pluginCopy = plugin;
  v12 = [objc_alloc(objc_opt_class()) initWithValue:valueCopy isSettable:settableCopy forElement:v8 inScope:v7 withPlugin:pluginCopy andObjectClassID:1784767339];

  return v12;
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  treeCopy = tree;
  v11.receiver = self;
  v11.super_class = ASDBooleanControl;
  indentCopy = indent;
  v7 = [(ASDControl *)&v11 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  if ([(ASDBooleanControl *)self isSettable])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v7 appendFormat:@"%@|    Is Settable: %@\n", indentCopy, v8, v11.receiver, v11.super_class];
  if ([(ASDBooleanControl *)self value])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v7 appendFormat:@"%@|    Value: %@\n", indentCopy, v9];

  return v7;
}

- (id)driverClassName
{
  objectClass = [(ASDControl *)self objectClass];
  v3 = @"AudioBooleanControl";
  if (objectClass > 1885888877)
  {
    v4 = 1936682094;
    v12 = @"AudioLFEMuteControl";
    v13 = @"AudioTalkbackControl";
    if (objectClass != 1952541794)
    {
      v13 = @"AudioBooleanControl";
    }

    if (objectClass != 1937072749)
    {
      v12 = v13;
    }

    if (objectClass == 1936682095)
    {
      v7 = @"AudioSoloControl";
    }

    else
    {
      v7 = v12;
    }

    v8 = 1885888878;
    v9 = @"AudioPhantomPowerControl";
    v10 = 1885893481;
    v11 = @"AudioInvertControl";
  }

  else
  {
    v4 = 1784767338;
    v5 = @"AudioListenbackControl";
    v6 = @"AudioMuteControl";
    if (objectClass != 1836414053)
    {
      v6 = @"AudioBooleanControl";
    }

    if (objectClass != 1819504226)
    {
      v5 = v6;
    }

    if (objectClass == 1784767339)
    {
      v7 = @"AudioJackControl";
    }

    else
    {
      v7 = v5;
    }

    v8 = 1668049264;
    v9 = @"AudioClipLightControl";
    v10 = 1702259059;
    v11 = @"AudioTapEnableControl";
  }

  if (objectClass == v10)
  {
    v3 = v11;
  }

  if (objectClass == v8)
  {
    v3 = v9;
  }

  if (objectClass <= v4)
  {
    return v3;
  }

  else
  {
    return v7;
  }
}

@end