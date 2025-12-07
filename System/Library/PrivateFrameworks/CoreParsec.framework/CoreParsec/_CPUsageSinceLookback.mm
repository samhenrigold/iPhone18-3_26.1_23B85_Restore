@interface _CPUsageSinceLookback
- (BOOL)isEqual:(id)equal;
- (void)writeTo:(id)to;
@end

@implementation _CPUsageSinceLookback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  collectionStartTimestamp = self->_collectionStartTimestamp;
  if (collectionStartTimestamp != [equalCopy collectionStartTimestamp])
  {
    goto LABEL_23;
  }

  collectionEndTimestamp = self->_collectionEndTimestamp;
  if (collectionEndTimestamp != [equalCopy collectionEndTimestamp])
  {
    goto LABEL_23;
  }

  client = self->_client;
  if (client != [equalCopy client])
  {
    goto LABEL_23;
  }

  totalUsagesInCollectionPeriod = self->_totalUsagesInCollectionPeriod;
  if (totalUsagesInCollectionPeriod != [equalCopy totalUsagesInCollectionPeriod])
  {
    goto LABEL_23;
  }

  context = [(_CPUsageSinceLookback *)self context];
  context2 = [equalCopy context];
  v11 = context2;
  if ((context != 0) == (context2 == 0))
  {

LABEL_23:
    v28 = 0;
    goto LABEL_24;
  }

  context3 = [(_CPUsageSinceLookback *)self context];
  if (context3)
  {
    v13 = context3;
    context4 = [(_CPUsageSinceLookback *)self context];
    context5 = [equalCopy context];
    v16 = [context4 isEqual:context5];

    if (!v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  configuredLookbackTimeInDays = self->_configuredLookbackTimeInDays;
  if (configuredLookbackTimeInDays != [equalCopy configuredLookbackTimeInDays])
  {
    goto LABEL_23;
  }

  activeDaysInCollectionPeriod = self->_activeDaysInCollectionPeriod;
  if (activeDaysInCollectionPeriod != [equalCopy activeDaysInCollectionPeriod])
  {
    goto LABEL_23;
  }

  totalEngagements = self->_totalEngagements;
  if (totalEngagements != [equalCopy totalEngagements])
  {
    goto LABEL_23;
  }

  isDiagnosticsAndUsageEnabled = self->_isDiagnosticsAndUsageEnabled;
  if (isDiagnosticsAndUsageEnabled != [equalCopy isDiagnosticsAndUsageEnabled])
  {
    goto LABEL_23;
  }

  invokedDays = self->_invokedDays;
  if (invokedDays != [equalCopy invokedDays])
  {
    goto LABEL_23;
  }

  zkwEngagedDays = self->_zkwEngagedDays;
  if (zkwEngagedDays != [equalCopy zkwEngagedDays])
  {
    goto LABEL_23;
  }

  searchedDays = self->_searchedDays;
  if (searchedDays != [equalCopy searchedDays])
  {
    goto LABEL_23;
  }

  suggestionOrAppleResultEngagedDays = self->_suggestionOrAppleResultEngagedDays;
  if (suggestionOrAppleResultEngagedDays != [equalCopy suggestionOrAppleResultEngagedDays])
  {
    goto LABEL_23;
  }

  webEngagedDays = self->_webEngagedDays;
  if (webEngagedDays != [equalCopy webEngagedDays])
  {
    goto LABEL_23;
  }

  voiceSearchDays = self->_voiceSearchDays;
  if (voiceSearchDays != [equalCopy voiceSearchDays])
  {
    goto LABEL_23;
  }

  numSearchEngagements = self->_numSearchEngagements;
  v28 = numSearchEngagements == [equalCopy numSearchEngagements];
LABEL_24:

  return v28;
}

- (void)writeTo:(id)to
{
  to;
  if ([(_CPUsageSinceLookback *)self collectionStartTimestamp])
  {
    PBDataWriterWriteInt64Field();
  }

  if ([(_CPUsageSinceLookback *)self collectionEndTimestamp])
  {
    PBDataWriterWriteInt64Field();
  }

  if ([(_CPUsageSinceLookback *)self client])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self totalUsagesInCollectionPeriod])
  {
    PBDataWriterWriteInt32Field();
  }

  context = [(_CPUsageSinceLookback *)self context];

  if (context)
  {
    context2 = [(_CPUsageSinceLookback *)self context];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPUsageSinceLookback *)self configuredLookbackTimeInDays])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self activeDaysInCollectionPeriod])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self totalEngagements])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self isDiagnosticsAndUsageEnabled])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPUsageSinceLookback *)self invokedDays])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self zkwEngagedDays])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self searchedDays])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self suggestionOrAppleResultEngagedDays])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self webEngagedDays])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self voiceSearchDays])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPUsageSinceLookback *)self numSearchEngagements])
  {
    PBDataWriterWriteInt32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

@end