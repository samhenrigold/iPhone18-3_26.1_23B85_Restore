@interface ASDControl
- (ASDControl)initWithElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d;
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property;
- (BOOL)isKindOfAudioClass:(unsigned int)class;
- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree;
- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data;
@end

@implementation ASDControl

- (ASDControl)initWithElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)d
{
  v10.receiver = self;
  v10.super_class = ASDControl;
  result = [(ASDObject *)&v10 initWithPlugin:plugin];
  if (result)
  {
    result->_controlElement = element;
    result->_controlScope = scope;
    result->_objectClassID = d;
  }

  return result;
}

- (BOOL)hasProperty:(const AudioObjectPropertyAddress *)property
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector == 1667591277 || property->mSelector == 1668506480)
  {
    return 1;
  }

  v8 = v3;
  v9 = v4;
  v7.receiver = self;
  v7.super_class = ASDControl;
  return [(ASDObject *)&v7 hasProperty:?];
}

- (unsigned)dataSizeForProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size andQualifierData:(const void *)data
{
  if (!property)
  {
    return 0;
  }

  if (property->mSelector == 1667591277 || property->mSelector == 1668506480)
  {
    return 4;
  }

  v10 = v5;
  v11 = v6;
  v9.receiver = self;
  v9.super_class = ASDControl;
  return [ASDObject dataSizeForProperty:sel_dataSizeForProperty_withQualifierSize_andQualifierData_ withQualifierSize:? andQualifierData:?];
}

- (BOOL)getProperty:(const AudioObjectPropertyAddress *)property withQualifierSize:(unsigned int)size qualifierData:(const void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  v8 = 0;
  if (property && dataSize && andData)
  {
    if (property->mSelector == 1667591277)
    {
      if (*dataSize >= 4)
      {
        controlElement = [(ASDControl *)self controlElement];
        goto LABEL_10;
      }
    }

    else
    {
      if (property->mSelector != 1668506480)
      {
        v13.receiver = self;
        v13.super_class = ASDControl;
        return [ASDObject getProperty:sel_getProperty_withQualifierSize_qualifierData_dataSize_andData_forClient_ withQualifierSize:? qualifierData:? dataSize:? andData:? forClient:?];
      }

      if (*dataSize >= 4)
      {
        controlElement = [(ASDControl *)self controlScope];
LABEL_10:
        *andData = controlElement;
        *dataSize = 4;
        return 1;
      }
    }

    return 0;
  }

  return v8;
}

- (BOOL)isKindOfAudioClass:(unsigned int)class
{
  v5.receiver = self;
  v5.super_class = ASDControl;
  result = [(ASDObject *)&v5 isKindOfAudioClass:?];
  if (class == 1633907820)
  {
    return 1;
  }

  return result;
}

- (id)diagnosticDescriptionWithIndent:(id)indent walkTree:(BOOL)tree
{
  treeCopy = tree;
  v19.receiver = self;
  v19.super_class = ASDControl;
  indentCopy = indent;
  v7 = [(ASDObject *)&v19 diagnosticDescriptionWithIndent:indentCopy walkTree:treeCopy];
  controlScope = [(ASDControl *)self controlScope];
  LODWORD(v9) = controlScope >> 24;
  if (((controlScope >> 24) - 32) >= 0x5F)
  {
    v9 = 32;
  }

  else
  {
    v9 = v9;
  }

  LODWORD(v10) = controlScope << 8 >> 24;
  if ((v10 - 32) >= 0x5F)
  {
    v10 = 32;
  }

  else
  {
    v10 = v10;
  }

  LODWORD(v11) = controlScope >> 8;
  if ((v11 - 32) >= 0x5F)
  {
    v11 = 32;
  }

  else
  {
    v11 = v11;
  }

  if ((controlScope - 32) >= 0x5F)
  {
    v12 = 32;
  }

  else
  {
    v12 = controlScope;
  }

  [v7 appendFormat:@"%@|    Control Scope: %c%c%c%c\n", indentCopy, v9, v10, v11, v12];
  controlElement = [(ASDControl *)self controlElement];
  LODWORD(v14) = controlElement >> 24;
  if (((controlElement >> 24) - 32) >= 0x5F)
  {
    v14 = 32;
  }

  else
  {
    v14 = v14;
  }

  LODWORD(v15) = controlElement << 8 >> 24;
  if ((v15 - 32) >= 0x5F)
  {
    v15 = 32;
  }

  else
  {
    v15 = v15;
  }

  LODWORD(v16) = controlElement >> 8;
  if ((v16 - 32) >= 0x5F)
  {
    v16 = 32;
  }

  else
  {
    v16 = v16;
  }

  if ((controlElement - 32) >= 0x5F)
  {
    v17 = 32;
  }

  else
  {
    v17 = controlElement;
  }

  [v7 appendFormat:@"%@|    Control Element: %c%c%c%c\n", indentCopy, v14, v15, v16, v17];

  return v7;
}

@end