@interface TRIFBFastFactorLevelsBuilder
- (void)dealloc;
- (void)setLevels:(id)levels;
- (void)setNamespaceName:(id)name;
- (void)setNcvs:(id)ncvs;
- (void)setSourceWithDefaults:(id)defaults;
- (void)setSourceWithFactorPackId:(id)id;
- (void)setSourceWithTreatmentId:(id)id;
@end

@implementation TRIFBFastFactorLevelsBuilder

- (void)dealloc
{
  bldr = self->_bldr;
  if (bldr)
  {
    MEMORY[0x2318F1E10](bldr, 0x1020C403A5D3213);
  }

  v4.receiver = self;
  v4.super_class = TRIFBFastFactorLevelsBuilder;
  [(TRIFBFastFactorLevelsBuilder *)&v4 dealloc];
}

- (void)setLevels:(id)levels
{
  levelsCopy = levels;
  if (!levelsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4733 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = levelsCopy;
    unsignedIntValue = [v7 unsignedIntValue];
    if (unsignedIntValue)
    {
      var0 = self->_bldr->var0;
      v10 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(var0, unsignedIntValue);
      apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(var0, 4, v10);
    }
  }
}

- (void)setSourceWithTreatmentId:(id)id
{
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4742 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 1);
    v7 = idCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }
}

- (void)setSourceWithFactorPackId:(id)id
{
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4752 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 2);
    v7 = idCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }
}

- (void)setSourceWithDefaults:(id)defaults
{
  defaultsCopy = defaults;
  if (!defaultsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4762 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, 3);
    v7 = defaultsCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }
}

- (void)setNamespaceName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4773 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = nameCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 10, [v7 unsignedIntValue]);
  }
}

- (void)setNcvs:(id)ncvs
{
  ncvsCopy = ncvs;
  if (!ncvsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4783 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = ncvsCopy;
    unsignedIntValue = [v7 unsignedIntValue];
    if (unsignedIntValue)
    {
      var0 = self->_bldr->var0;
      v10 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(var0, unsignedIntValue);
      apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(var0, 12, v10);
    }
  }
}

@end