@interface TRIFBTrialManagedAssetBuilder
- (void)dealloc;
- (void)setAssetId:(id)id;
- (void)setAssetName:(id)name;
- (void)setCloudKitMetadataWithAsset:(id)asset;
- (void)setCloudKitMetadataWithTreatment:(id)treatment;
- (void)setDownloadSize:(unint64_t)size;
- (void)setFileType:(unsigned __int8)type;
- (void)setHasOnDemandFlag:(BOOL)flag;
- (void)setIsOnDemand:(BOOL)demand;
- (void)setPath:(id)path;
@end

@implementation TRIFBTrialManagedAssetBuilder

- (void)dealloc
{
  bldr = self->_bldr;
  if (bldr)
  {
    MEMORY[0x2318F1E10](bldr, 0x1020C403A5D3213);
  }

  v4.receiver = self;
  v4.super_class = TRIFBTrialManagedAssetBuilder;
  [(TRIFBTrialManagedAssetBuilder *)&v4 dealloc];
}

- (void)setPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1517 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = pathCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 4, [v7 unsignedIntValue]);
  }
}

- (void)setFileType:(unsigned __int8)type
{
  typeCopy = type;
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 6, typeCopy);
  }
}

- (void)setAssetId:(id)id
{
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1536 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = idCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 8, [v7 unsignedIntValue]);
  }
}

- (void)setCloudKitMetadataWithTreatment:(id)treatment
{
  treatmentCopy = treatment;
  if (!treatmentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1546 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 10, 1);
    v7 = treatmentCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 12, [v7 unsignedIntValue]);
  }
}

- (void)setCloudKitMetadataWithAsset:(id)asset
{
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1557 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 10, 2);
    v7 = assetCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 12, [v7 unsignedIntValue]);
  }
}

- (void)setIsOnDemand:(BOOL)demand
{
  demandCopy = demand;
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 14, demandCopy);
  }
}

- (void)setDownloadSize:(unint64_t)size
{
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(self->_bldr->var0, 16, size);
  }
}

- (void)setAssetName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:1582 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];
  }

  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    v7 = nameCopy;
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(self->_bldr->var0, 18, [v7 unsignedIntValue]);
  }
}

- (void)setHasOnDemandFlag:(BOOL)flag
{
  flagCopy = flag;
  firstError = [(AFBBufferBuilder *)self->_owner firstError];

  if (!firstError)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(self->_bldr->var0, 20, flagCopy);
  }
}

@end