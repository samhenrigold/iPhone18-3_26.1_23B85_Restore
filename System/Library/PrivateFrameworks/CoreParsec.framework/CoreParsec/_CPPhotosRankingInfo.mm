@interface _CPPhotosRankingInfo
- (BOOL)isEqual:(id)equal;
- (_CPPhotosRankingInfo)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPPhotosRankingInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (totalNumberOfAssetsIndexed = self->_totalNumberOfAssetsIndexed, totalNumberOfAssetsIndexed == objc_msgSend(equalCopy, "totalNumberOfAssetsIndexed")) && (totalNumberOfAssetsInLibrary = self->_totalNumberOfAssetsInLibrary, totalNumberOfAssetsInLibrary == objc_msgSend(equalCopy, "totalNumberOfAssetsInLibrary")) && (totalNumberOfEmbeddingMatchedAssets = self->_totalNumberOfEmbeddingMatchedAssets, totalNumberOfEmbeddingMatchedAssets == objc_msgSend(equalCopy, "totalNumberOfEmbeddingMatchedAssets")) && (totalNumberOfMetadataMatchedAssets = self->_totalNumberOfMetadataMatchedAssets, totalNumberOfMetadataMatchedAssets == objc_msgSend(equalCopy, "totalNumberOfMetadataMatchedAssets")) && (assetEstimationOffAmount = self->_assetEstimationOffAmount, assetEstimationOffAmount == objc_msgSend(equalCopy, "assetEstimationOffAmount")) && (indexedAssetsPercentage = self->_indexedAssetsPercentage, indexedAssetsPercentage == objc_msgSend(equalCopy, "indexedAssetsPercentage")) && (analyzedAssetsPercentage = self->_analyzedAssetsPercentage, analyzedAssetsPercentage == objc_msgSend(equalCopy, "analyzedAssetsPercentage")) && (analyzedAndIndexedAssetsPercentage = self->_analyzedAndIndexedAssetsPercentage, analyzedAndIndexedAssetsPercentage == objc_msgSend(equalCopy, "analyzedAndIndexedAssetsPercentage")) && (embeddedAssetsPercentage = self->_embeddedAssetsPercentage, embeddedAssetsPercentage == objc_msgSend(equalCopy, "embeddedAssetsPercentage")) && (assetsRetrieved = self->_assetsRetrieved, assetsRetrieved == objc_msgSend(equalCopy, "assetsRetrieved")))
  {
    collectionsRetrieved = self->_collectionsRetrieved;
    v16 = collectionsRetrieved == [equalCopy collectionsRetrieved];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)writeTo:(id)to
{
  to;
  if ([(_CPPhotosRankingInfo *)self totalNumberOfAssetsIndexed])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self totalNumberOfAssetsInLibrary])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self totalNumberOfEmbeddingMatchedAssets])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self totalNumberOfMetadataMatchedAssets])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self assetEstimationOffAmount])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self indexedAssetsPercentage])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self analyzedAssetsPercentage])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self analyzedAndIndexedAssetsPercentage])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self embeddedAssetsPercentage])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self assetsRetrieved])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPPhotosRankingInfo *)self collectionsRetrieved])
  {
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPPhotosRankingInfo)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_CPPhotosRankingInfo *)self init];
  if (v5)
  {
    -[_CPPhotosRankingInfo setTotalNumberOfAssetsIndexed:](v5, "setTotalNumberOfAssetsIndexed:", [facadeCopy totalNumberOfAssetsIndexed]);
    -[_CPPhotosRankingInfo setTotalNumberOfAssetsInLibrary:](v5, "setTotalNumberOfAssetsInLibrary:", [facadeCopy totalNumberOfAssetsInLibrary]);
    v6 = v5;
  }

  return v5;
}

@end