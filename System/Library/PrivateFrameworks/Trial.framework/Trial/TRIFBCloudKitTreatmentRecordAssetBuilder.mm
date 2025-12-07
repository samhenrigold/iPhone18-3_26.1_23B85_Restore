@interface TRIFBCloudKitTreatmentRecordAssetBuilder
- (void)dealloc;
- (void)setAssetIndex:(unsigned int)index;
- (void)setContainer:(unsigned __int8)container;
- (void)setHasCkIndex:(BOOL)index;
- (void)setTreatmentId:(id)id;
@end

@implementation TRIFBCloudKitTreatmentRecordAssetBuilder

- (void)dealloc
{
  bldr = self->_bldr;
  if (bldr)
  {
    MEMORY[0x2318F1E10](bldr, 0x1020C403A5D3213);
  }

  v4.receiver = self;
  v4.super_class = TRIFBCloudKitTreatmentRecordAssetBuilder;
  [(TRIFBCloudKitTreatmentRecordAssetBuilder *)&v4 dealloc];
}

- (void)setContainer:(unsigned __int8)container
{
  containerCopy = container;
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 4, containerCopy);
  }
}

- (void)setTreatmentId:(id)id
{
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:627 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = idCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 6, [v7 unsignedIntValue]);
  }
}

- (void)setAssetIndex:(unsigned int)index
{
  v3 = *&index;
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(self->_bldr->var0, 8, v3);
  }
}

- (void)setHasCkIndex:(BOOL)index
{
  indexCopy = index;
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 10, indexCopy);
  }
}

@end