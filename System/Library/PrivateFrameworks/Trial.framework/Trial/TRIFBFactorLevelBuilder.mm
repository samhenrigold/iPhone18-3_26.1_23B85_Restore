@interface TRIFBFactorLevelBuilder
- (void)dealloc;
- (void)setAlias:(id)alias;
- (void)setCacheKey:(unsigned int)key;
- (void)setFactorId:(id)id;
- (void)setFactorNamespaceName:(id)name;
- (void)setLevelWithBoolVal:(id)val;
- (void)setLevelWithDoubleVal:(id)val;
- (void)setLevelWithInt64Val:(id)val;
- (void)setLevelWithMaRefVal:(id)val;
- (void)setLevelWithStringVal:(id)val;
- (void)setLevelWithTrialAssetVal:(id)val;
- (void)setMetadata:(id)metadata;
- (void)setName:(id)name;
- (void)setNamespaceId:(unsigned int)id;
@end

@implementation TRIFBFactorLevelBuilder

- (void)dealloc
{
  bldr = self->_bldr;
  if (bldr)
  {
    MEMORY[0x2318F1E10](bldr, 0x1020C403A5D3213);
  }

  v4.receiver = self;
  v4.super_class = TRIFBFactorLevelBuilder;
  [(TRIFBFactorLevelBuilder *)&v4 dealloc];
}

- (void)setName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3720 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = nameCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 4, [v7 unsignedIntValue]);
  }
}

- (void)setLevelWithBoolVal:(id)val
{
  valCopy = val;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3730 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 1);
    v7 = valCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }
}

- (void)setLevelWithStringVal:(id)val
{
  valCopy = val;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3740 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 2);
    v7 = valCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }
}

- (void)setLevelWithInt64Val:(id)val
{
  valCopy = val;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3751 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 3);
    v7 = valCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }
}

- (void)setLevelWithDoubleVal:(id)val
{
  valCopy = val;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3762 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 4);
    v7 = valCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }
}

- (void)setLevelWithTrialAssetVal:(id)val
{
  valCopy = val;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3773 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 5);
    v7 = valCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }
}

- (void)setLevelWithMaRefVal:(id)val
{
  valCopy = val;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3784 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 6);
    v7 = valCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }
}

- (void)setMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3795 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = metadataCopy;
    unsignedIntValue = [v7 unsignedIntValue];
    if (unsignedIntValue)
    {
      var0 = self->_bldr->var0;
      v10 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(var0, unsignedIntValue);
      apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(var0, 10, v10);
    }
  }
}

- (void)setCacheKey:(unsigned int)key
{
  v3 = *&key;
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(self->_bldr->var0, 12, v3);
  }
}

- (void)setAlias:(id)alias
{
  aliasCopy = alias;
  if (!aliasCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3812 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = aliasCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 14, [v7 unsignedIntValue]);
  }
}

- (void)setFactorNamespaceName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3822 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = nameCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 16, [v7 unsignedIntValue]);
  }
}

- (void)setFactorId:(id)id
{
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3832 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = idCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 18, [v7 unsignedIntValue]);
  }
}

- (void)setNamespaceId:(unsigned int)id
{
  v3 = *&id;
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(self->_bldr->var0, 20, v3);
  }
}

@end