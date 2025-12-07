@interface _CPQueryUnderstandingParse
- (BOOL)isEqual:(id)equal;
- (_CPQueryUnderstandingParse)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPQueryUnderstandingParse

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (queryIntentType = self->_queryIntentType, queryIntentType == objc_msgSend(equalCopy, "queryIntentType")) && (hasUnspecifiedTokens = self->_hasUnspecifiedTokens, hasUnspecifiedTokens == objc_msgSend(equalCopy, "hasUnspecifiedTokens")) && (hasSortCriteriaTokens = self->_hasSortCriteriaTokens, hasSortCriteriaTokens == objc_msgSend(equalCopy, "hasSortCriteriaTokens")) && (hasLocationTokens = self->_hasLocationTokens, hasLocationTokens == objc_msgSend(equalCopy, "hasLocationTokens")) && (hasActionTokens = self->_hasActionTokens, hasActionTokens == objc_msgSend(equalCopy, "hasActionTokens")) && (hasMediaTypeTokens = self->_hasMediaTypeTokens, hasMediaTypeTokens == objc_msgSend(equalCopy, "hasMediaTypeTokens")) && (hasVisualQualityTokens = self->_hasVisualQualityTokens, hasVisualQualityTokens == objc_msgSend(equalCopy, "hasVisualQualityTokens")) && (hasNounTokens = self->_hasNounTokens, hasNounTokens == objc_msgSend(equalCopy, "hasNounTokens")) && (hasTimeTokens = self->_hasTimeTokens, hasTimeTokens == objc_msgSend(equalCopy, "hasTimeTokens")) && (hasEventTokens = self->_hasEventTokens, hasEventTokens == objc_msgSend(equalCopy, "hasEventTokens")) && (hasGenericLocationTokens = self->_hasGenericLocationTokens, hasGenericLocationTokens == objc_msgSend(equalCopy, "hasGenericLocationTokens")) && (hasCaptureDeviceTokens = self->_hasCaptureDeviceTokens, hasCaptureDeviceTokens == objc_msgSend(equalCopy, "hasCaptureDeviceTokens")) && (hasFavoritedTokens = self->_hasFavoritedTokens, hasFavoritedTokens == objc_msgSend(equalCopy, "hasFavoritedTokens")) && (hasSourceAppTokens = self->_hasSourceAppTokens, hasSourceAppTokens == objc_msgSend(equalCopy, "hasSourceAppTokens")) && (hasPersonTokens = self->_hasPersonTokens, hasPersonTokens == objc_msgSend(equalCopy, "hasPersonTokens")) && (hasPersonSenderTokens = self->_hasPersonSenderTokens, hasPersonSenderTokens == objc_msgSend(equalCopy, "hasPersonSenderTokens")) && (spotlightQueryIntent = self->_spotlightQueryIntent, spotlightQueryIntent == objc_msgSend(equalCopy, "spotlightQueryIntent")) && (isUnsafeQuery = self->_isUnsafeQuery, isUnsafeQuery == objc_msgSend(equalCopy, "isUnsafeQuery")))
  {
    isBlocklistedQuery = self->_isBlocklistedQuery;
    v24 = isBlocklistedQuery == [equalCopy isBlocklistedQuery];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPQueryUnderstandingParse *)self queryIntentType])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPQueryUnderstandingParse *)self hasUnspecifiedTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasSortCriteriaTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasLocationTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasActionTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasMediaTypeTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasVisualQualityTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasNounTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasTimeTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasEventTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasGenericLocationTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasCaptureDeviceTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasFavoritedTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasSourceAppTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasPersonTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self hasPersonSenderTokens])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self spotlightQueryIntent])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPQueryUnderstandingParse *)self isUnsafeQuery])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPQueryUnderstandingParse *)self isBlocklistedQuery])
  {
    PBDataWriterWriteBOOLField();
  }
}

- (_CPQueryUnderstandingParse)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_CPQueryUnderstandingParse *)self init];
  if (v5)
  {
    -[_CPQueryUnderstandingParse setQueryIntentType:](v5, "setQueryIntentType:", [facadeCopy queryIntentType]);
    -[_CPQueryUnderstandingParse setHasUnspecifiedTokens:](v5, "setHasUnspecifiedTokens:", [facadeCopy hasUnspecifiedTokens]);
    -[_CPQueryUnderstandingParse setHasSortCriteriaTokens:](v5, "setHasSortCriteriaTokens:", [facadeCopy hasSortCriteriaTokens]);
    -[_CPQueryUnderstandingParse setHasLocationTokens:](v5, "setHasLocationTokens:", [facadeCopy hasLocationTokens]);
    -[_CPQueryUnderstandingParse setHasPersonTokens:](v5, "setHasPersonTokens:", [facadeCopy hasPersonTokens]);
    -[_CPQueryUnderstandingParse setHasPersonSenderTokens:](v5, "setHasPersonSenderTokens:", [facadeCopy hasPersonSenderTokens]);
    -[_CPQueryUnderstandingParse setHasActionTokens:](v5, "setHasActionTokens:", [facadeCopy hasActionTokens]);
    -[_CPQueryUnderstandingParse setHasMediaTypeTokens:](v5, "setHasMediaTypeTokens:", [facadeCopy hasMediaTypeTokens]);
    -[_CPQueryUnderstandingParse setHasVisualQualityTokens:](v5, "setHasVisualQualityTokens:", [facadeCopy hasVisualQualityTokens]);
    -[_CPQueryUnderstandingParse setHasNounTokens:](v5, "setHasNounTokens:", [facadeCopy hasNounTokens]);
    -[_CPQueryUnderstandingParse setHasTimeTokens:](v5, "setHasTimeTokens:", [facadeCopy hasTimeTokens]);
    -[_CPQueryUnderstandingParse setHasEventTokens:](v5, "setHasEventTokens:", [facadeCopy hasEventTokens]);
    -[_CPQueryUnderstandingParse setHasGenericLocationTokens:](v5, "setHasGenericLocationTokens:", [facadeCopy hasGenericLocationTokens]);
    -[_CPQueryUnderstandingParse setHasCaptureDeviceTokens:](v5, "setHasCaptureDeviceTokens:", [facadeCopy hasCaptureDeviceTokens]);
    -[_CPQueryUnderstandingParse setHasFavoritedTokens:](v5, "setHasFavoritedTokens:", [facadeCopy hasFavoritedTokens]);
    -[_CPQueryUnderstandingParse setHasSourceAppTokens:](v5, "setHasSourceAppTokens:", [facadeCopy hasSourceAppTokens]);
    v6 = v5;
  }

  return v5;
}

@end