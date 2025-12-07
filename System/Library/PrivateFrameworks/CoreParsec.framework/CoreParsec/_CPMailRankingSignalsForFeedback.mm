@interface _CPMailRankingSignalsForFeedback
- (BOOL)isEqual:(id)equal;
- (_CPMailRankingSignalsForFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPMailRankingSignalsForFeedback

- (unint64_t)hash
{
  v2.i32[0] = LODWORD(self->_l1Score);
  v3 = vdupq_n_s64(0x3BF0000000000000uLL);
  v4 = vdupq_n_s64(0x43F0000000000000uLL);
  v5 = vdupq_n_s64(0x41E3C6EF36200000uLL);
  countBigramMatchInAuthors = self->_countBigramMatchInAuthors;
  v7.i32[0] = v2.i32[0];
  v26 = 2654435761 * self->_countBigramMatchInAttachmentTypes;
  v25 = 2654435761 * self->_countNgramMatchInAttachmentTypes;
  v7.i32[1] = LODWORD(self->_l2Score);
  v7.i64[1] = *&self->_semanticScore;
  v8 = vcvtq_f64_f32(*&v7.u32[2]);
  v2.i32[1] = v7.i32[1];
  v9 = vcvtq_f64_f32(v2);
  v10 = vcltzq_f32(v7);
  v11.i64[0] = v10.i32[0];
  v11.i64[1] = v10.i32[1];
  v12 = v11;
  v11.i64[0] = v10.i32[2];
  v11.i64[1] = v10.i32[3];
  v13 = vbslq_s8(v11, vnegq_f64(v8), v8);
  v14 = vbslq_s8(v12, vnegq_f64(v9), v9);
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v15 = vrndaq_f64(v14);
  v16 = vrndaq_f64(v13);
  v17 = vnegq_f64(v8);
  v18 = veorq_s8(vaddq_s64(vcvtq_u64_f64(vmulq_f64(vbslq_s8(v17, vmlsq_f64(v15, v4, vrndq_f64(vmulq_f64(v15, v3))), v15), v5)), vcvtq_n_u64_f64(vsubq_f64(v14, v15), 0x40uLL)), vaddq_s64(vcvtq_u64_f64(vmulq_f64(vbslq_s8(v17, vmlsq_f64(v16, v4, vrndq_f64(vmulq_f64(v16, v3))), v16), v5)), vcvtq_n_u64_f64(vsubq_f64(v13, v16), 0x40uLL)));
  v24 = (2654435761 * self->_wasReorderedByRecency) ^ (2654435761u * self->_numDaysEngagedLast30Days);
  v23 = (2654435761 * self->_averageEngagementAgeLast7Days) ^ (2654435761 * self->_averageEngagementAgeLast14Days);
  v19 = (2654435761 * self->_countNgramPrefixMatchInRecipientEmailAddresses) ^ (2654435761 * self->_countUnigramMatchInEmailAddresses) ^ (2654435761 * self->_countBigramMatchInEmailAddresses) ^ (2654435761 * self->_countNgramMatchInEmailAddresses) ^ (2654435761 * self->_countUnigramPrefixMatchInEmailAddresses) ^ (2654435761 * self->_countBigramPrefixMatchInEmailAddresses) ^ (2654435761 * self->_countNgramPrefixMatchInEmailAddresses) ^ (2654435761 * self->_countUnigramMatchInAttachmentTypes);
  v20 = v24 ^ v23 ^ (2654435761 * self->_averageEngagementAgeLast21Days) ^ (2654435761 * self->_averageEngagementAgeLast30Days) ^ (2654435761u * self->_daysSinceReceipt) ^ (2654435761 * self->_isFlagged) ^ (2654435761 * self->_isRepliedTo) ^ (2654435761 * self->_isSemanticMatch) ^ (2654435761 * self->_isSyntacticMatch) ^ (2654435761 * self->_countUnigramMatchInAuthors) ^ (2654435761 * countBigramMatchInAuthors) ^ (2654435761 * self->_countNgramMatchInAuthors) ^ (2654435761 * self->_countUnigramPrefixMatchInAuthors) ^ (2654435761 * self->_countBigramPrefixMatchInAuthors) ^ (2654435761 * self->_countNgramPrefixMatchInAuthors) ^ (2654435761 * self->_countUnigramMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countBigramMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countNgramMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countUnigramPrefixMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countBigramPrefixMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countNgramPrefixMatchInAuthorEmailAddresses) ^ (2654435761 * self->_countUnigramMatchInSubject) ^ (2654435761 * self->_countBigramMatchInSubject) ^ (2654435761 * self->_countNgramMatchInSubject) ^ (2654435761 * self->_countUnigramPrefixMatchInSubject) ^ (2654435761 * self->_countBigramPrefixMatchInSubject) ^ (2654435761 * self->_countNgramPrefixMatchInSubject) ^ (2654435761 * self->_countUnigramMatchInTextContent);
  v21 = v20 ^ (2654435761 * self->_countBigramMatchInTextContent) ^ (2654435761 * self->_countNgramMatchInTextContent) ^ (2654435761 * self->_countUnigramPrefixMatchInTextContent) ^ (2654435761 * self->_countBigramPrefixMatchInTextContent) ^ (2654435761 * self->_countNgramPrefixMatchInTextContent) ^ (2654435761 * self->_countUnigramMatchInRecipients) ^ (2654435761 * self->_countBigramMatchInRecipients) ^ (2654435761 * self->_countNgramMatchInRecipients) ^ (2654435761 * self->_countUnigramPrefixMatchInRecipients) ^ (2654435761 * self->_countBigramPrefixMatchInRecipients) ^ (2654435761 * self->_countNgramPrefixMatchInRecipients) ^ (2654435761 * self->_countUnigramMatchInRecipientEmailAddresses) ^ (2654435761 * self->_countBigramMatchInRecipientEmailAddresses) ^ (2654435761 * self->_countNgramMatchInRecipientEmailAddresses) ^ (2654435761 * self->_countUnigramPrefixMatchInRecipientEmailAddresses) ^ (2654435761 * self->_countBigramPrefixMatchInRecipientEmailAddresses) ^ v19 ^ v26 ^ v25 ^ (2654435761 * self->_countUnigramPrefixMatchInAttachmentTypes) ^ (2654435761 * self->_countBigramPrefixMatchInAttachmentTypes) ^ (2654435761 * self->_countNgramPrefixMatchInAttachmentTypes) ^ (2654435761 * self->_countUnigramMatchInAttachmentNames) ^ (2654435761 * self->_countBigramMatchInAttachmentNames) ^ (2654435761 * self->_countNgramMatchInAttachmentNames) ^ (2654435761 * self->_countUnigramPrefixMatchInAttachmentNames) ^ (2654435761 * self->_countBigramPrefixMatchInAttachmentNames) ^ (2654435761 * self->_countNgramPrefixMatchInAttachmentNames);
  return *&veor_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) ^ (2654435761u * self->_numEngagements) ^ v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()]
    && (wasReorderedByRecency = self->_wasReorderedByRecency, wasReorderedByRecency == [equalCopy wasReorderedByRecency])
    && (numEngagements = self->_numEngagements, numEngagements == [equalCopy numEngagements])
    && (numDaysEngagedLast30Days = self->_numDaysEngagedLast30Days, numDaysEngagedLast30Days == [equalCopy numDaysEngagedLast30Days])
    && (averageEngagementAgeLast7Days = self->_averageEngagementAgeLast7Days, averageEngagementAgeLast7Days == [equalCopy averageEngagementAgeLast7Days])
    && (averageEngagementAgeLast14Days = self->_averageEngagementAgeLast14Days, averageEngagementAgeLast14Days == [equalCopy averageEngagementAgeLast14Days])
    && (averageEngagementAgeLast21Days = self->_averageEngagementAgeLast21Days, averageEngagementAgeLast21Days == [equalCopy averageEngagementAgeLast21Days])
    && (averageEngagementAgeLast30Days = self->_averageEngagementAgeLast30Days, averageEngagementAgeLast30Days == [equalCopy averageEngagementAgeLast30Days])
    && (daysSinceReceipt = self->_daysSinceReceipt, daysSinceReceipt == [equalCopy daysSinceReceipt])
    && (l1Score = self->_l1Score, [equalCopy l1Score], l1Score == v14)
    && (l2Score = self->_l2Score, [equalCopy l2Score], l2Score == v16)
    && (isFlagged = self->_isFlagged, isFlagged == [equalCopy isFlagged])
    && (isRepliedTo = self->_isRepliedTo, isRepliedTo == [equalCopy isRepliedTo])
    && (isSemanticMatch = self->_isSemanticMatch, isSemanticMatch == [equalCopy isSemanticMatch])
    && (isSyntacticMatch = self->_isSyntacticMatch, isSyntacticMatch == [equalCopy isSyntacticMatch])
    && (semanticScore = self->_semanticScore, [equalCopy semanticScore], semanticScore == v22)
    && (syntacticScore = self->_syntacticScore, [equalCopy syntacticScore], syntacticScore == v24)
    && (countUnigramMatchInAuthors = self->_countUnigramMatchInAuthors, countUnigramMatchInAuthors == [equalCopy countUnigramMatchInAuthors])
    && (countBigramMatchInAuthors = self->_countBigramMatchInAuthors, countBigramMatchInAuthors == [equalCopy countBigramMatchInAuthors])
    && (countNgramMatchInAuthors = self->_countNgramMatchInAuthors, countNgramMatchInAuthors == [equalCopy countNgramMatchInAuthors])
    && (countUnigramPrefixMatchInAuthors = self->_countUnigramPrefixMatchInAuthors, countUnigramPrefixMatchInAuthors == [equalCopy countUnigramPrefixMatchInAuthors])
    && (countBigramPrefixMatchInAuthors = self->_countBigramPrefixMatchInAuthors, countBigramPrefixMatchInAuthors == [equalCopy countBigramPrefixMatchInAuthors])
    && (countNgramPrefixMatchInAuthors = self->_countNgramPrefixMatchInAuthors, countNgramPrefixMatchInAuthors == [equalCopy countNgramPrefixMatchInAuthors])
    && (countUnigramMatchInAuthorEmailAddresses = self->_countUnigramMatchInAuthorEmailAddresses, countUnigramMatchInAuthorEmailAddresses == [equalCopy countUnigramMatchInAuthorEmailAddresses])
    && (countBigramMatchInAuthorEmailAddresses = self->_countBigramMatchInAuthorEmailAddresses, countBigramMatchInAuthorEmailAddresses == [equalCopy countBigramMatchInAuthorEmailAddresses])
    && (countNgramMatchInAuthorEmailAddresses = self->_countNgramMatchInAuthorEmailAddresses, countNgramMatchInAuthorEmailAddresses == [equalCopy countNgramMatchInAuthorEmailAddresses])
    && (countUnigramPrefixMatchInAuthorEmailAddresses = self->_countUnigramPrefixMatchInAuthorEmailAddresses, countUnigramPrefixMatchInAuthorEmailAddresses == [equalCopy countUnigramPrefixMatchInAuthorEmailAddresses])
    && (countBigramPrefixMatchInAuthorEmailAddresses = self->_countBigramPrefixMatchInAuthorEmailAddresses, countBigramPrefixMatchInAuthorEmailAddresses == [equalCopy countBigramPrefixMatchInAuthorEmailAddresses])
    && (countNgramPrefixMatchInAuthorEmailAddresses = self->_countNgramPrefixMatchInAuthorEmailAddresses, countNgramPrefixMatchInAuthorEmailAddresses == [equalCopy countNgramPrefixMatchInAuthorEmailAddresses])
    && (countUnigramMatchInSubject = self->_countUnigramMatchInSubject, countUnigramMatchInSubject == [equalCopy countUnigramMatchInSubject])
    && (countBigramMatchInSubject = self->_countBigramMatchInSubject, countBigramMatchInSubject == [equalCopy countBigramMatchInSubject])
    && (countNgramMatchInSubject = self->_countNgramMatchInSubject, countNgramMatchInSubject == [equalCopy countNgramMatchInSubject])
    && (countUnigramPrefixMatchInSubject = self->_countUnigramPrefixMatchInSubject, countUnigramPrefixMatchInSubject == [equalCopy countUnigramPrefixMatchInSubject])
    && (countBigramPrefixMatchInSubject = self->_countBigramPrefixMatchInSubject, countBigramPrefixMatchInSubject == [equalCopy countBigramPrefixMatchInSubject])
    && (countNgramPrefixMatchInSubject = self->_countNgramPrefixMatchInSubject, countNgramPrefixMatchInSubject == [equalCopy countNgramPrefixMatchInSubject])
    && (countUnigramMatchInTextContent = self->_countUnigramMatchInTextContent, countUnigramMatchInTextContent == [equalCopy countUnigramMatchInTextContent])
    && (countBigramMatchInTextContent = self->_countBigramMatchInTextContent, countBigramMatchInTextContent == [equalCopy countBigramMatchInTextContent])
    && (countNgramMatchInTextContent = self->_countNgramMatchInTextContent, countNgramMatchInTextContent == [equalCopy countNgramMatchInTextContent])
    && (countUnigramPrefixMatchInTextContent = self->_countUnigramPrefixMatchInTextContent, countUnigramPrefixMatchInTextContent == [equalCopy countUnigramPrefixMatchInTextContent])
    && (countBigramPrefixMatchInTextContent = self->_countBigramPrefixMatchInTextContent, countBigramPrefixMatchInTextContent == [equalCopy countBigramPrefixMatchInTextContent])
    && (countNgramPrefixMatchInTextContent = self->_countNgramPrefixMatchInTextContent, countNgramPrefixMatchInTextContent == [equalCopy countNgramPrefixMatchInTextContent])
    && (countUnigramMatchInRecipients = self->_countUnigramMatchInRecipients, countUnigramMatchInRecipients == [equalCopy countUnigramMatchInRecipients])
    && (countBigramMatchInRecipients = self->_countBigramMatchInRecipients, countBigramMatchInRecipients == [equalCopy countBigramMatchInRecipients])
    && (countNgramMatchInRecipients = self->_countNgramMatchInRecipients, countNgramMatchInRecipients == [equalCopy countNgramMatchInRecipients])
    && (countUnigramPrefixMatchInRecipients = self->_countUnigramPrefixMatchInRecipients, countUnigramPrefixMatchInRecipients == [equalCopy countUnigramPrefixMatchInRecipients])
    && (countBigramPrefixMatchInRecipients = self->_countBigramPrefixMatchInRecipients, countBigramPrefixMatchInRecipients == [equalCopy countBigramPrefixMatchInRecipients])
    && (countNgramPrefixMatchInRecipients = self->_countNgramPrefixMatchInRecipients, countNgramPrefixMatchInRecipients == [equalCopy countNgramPrefixMatchInRecipients])
    && (countUnigramMatchInRecipientEmailAddresses = self->_countUnigramMatchInRecipientEmailAddresses, countUnigramMatchInRecipientEmailAddresses == [equalCopy countUnigramMatchInRecipientEmailAddresses])
    && (countBigramMatchInRecipientEmailAddresses = self->_countBigramMatchInRecipientEmailAddresses, countBigramMatchInRecipientEmailAddresses == [equalCopy countBigramMatchInRecipientEmailAddresses])
    && (countNgramMatchInRecipientEmailAddresses = self->_countNgramMatchInRecipientEmailAddresses, countNgramMatchInRecipientEmailAddresses == [equalCopy countNgramMatchInRecipientEmailAddresses])
    && (countUnigramPrefixMatchInRecipientEmailAddresses = self->_countUnigramPrefixMatchInRecipientEmailAddresses, countUnigramPrefixMatchInRecipientEmailAddresses == [equalCopy countUnigramPrefixMatchInRecipientEmailAddresses])
    && (countBigramPrefixMatchInRecipientEmailAddresses = self->_countBigramPrefixMatchInRecipientEmailAddresses, countBigramPrefixMatchInRecipientEmailAddresses == [equalCopy countBigramPrefixMatchInRecipientEmailAddresses])
    && (countNgramPrefixMatchInRecipientEmailAddresses = self->_countNgramPrefixMatchInRecipientEmailAddresses, countNgramPrefixMatchInRecipientEmailAddresses == [equalCopy countNgramPrefixMatchInRecipientEmailAddresses])
    && (countUnigramMatchInEmailAddresses = self->_countUnigramMatchInEmailAddresses, countUnigramMatchInEmailAddresses == [equalCopy countUnigramMatchInEmailAddresses])
    && (countBigramMatchInEmailAddresses = self->_countBigramMatchInEmailAddresses, countBigramMatchInEmailAddresses == [equalCopy countBigramMatchInEmailAddresses])
    && (countNgramMatchInEmailAddresses = self->_countNgramMatchInEmailAddresses, countNgramMatchInEmailAddresses == [equalCopy countNgramMatchInEmailAddresses])
    && (countUnigramPrefixMatchInEmailAddresses = self->_countUnigramPrefixMatchInEmailAddresses, countUnigramPrefixMatchInEmailAddresses == [equalCopy countUnigramPrefixMatchInEmailAddresses])
    && (countBigramPrefixMatchInEmailAddresses = self->_countBigramPrefixMatchInEmailAddresses, countBigramPrefixMatchInEmailAddresses == [equalCopy countBigramPrefixMatchInEmailAddresses])
    && (countNgramPrefixMatchInEmailAddresses = self->_countNgramPrefixMatchInEmailAddresses, countNgramPrefixMatchInEmailAddresses == [equalCopy countNgramPrefixMatchInEmailAddresses])
    && (countUnigramMatchInAttachmentTypes = self->_countUnigramMatchInAttachmentTypes, countUnigramMatchInAttachmentTypes == [equalCopy countUnigramMatchInAttachmentTypes])
    && (countBigramMatchInAttachmentTypes = self->_countBigramMatchInAttachmentTypes, countBigramMatchInAttachmentTypes == [equalCopy countBigramMatchInAttachmentTypes])
    && (countNgramMatchInAttachmentTypes = self->_countNgramMatchInAttachmentTypes, countNgramMatchInAttachmentTypes == [equalCopy countNgramMatchInAttachmentTypes])
    && (countUnigramPrefixMatchInAttachmentTypes = self->_countUnigramPrefixMatchInAttachmentTypes, countUnigramPrefixMatchInAttachmentTypes == [equalCopy countUnigramPrefixMatchInAttachmentTypes])
    && (countBigramPrefixMatchInAttachmentTypes = self->_countBigramPrefixMatchInAttachmentTypes, countBigramPrefixMatchInAttachmentTypes == [equalCopy countBigramPrefixMatchInAttachmentTypes])
    && (countNgramPrefixMatchInAttachmentTypes = self->_countNgramPrefixMatchInAttachmentTypes, countNgramPrefixMatchInAttachmentTypes == [equalCopy countNgramPrefixMatchInAttachmentTypes])
    && (countUnigramMatchInAttachmentNames = self->_countUnigramMatchInAttachmentNames, countUnigramMatchInAttachmentNames == [equalCopy countUnigramMatchInAttachmentNames])
    && (countBigramMatchInAttachmentNames = self->_countBigramMatchInAttachmentNames, countBigramMatchInAttachmentNames == [equalCopy countBigramMatchInAttachmentNames])
    && (countNgramMatchInAttachmentNames = self->_countNgramMatchInAttachmentNames, countNgramMatchInAttachmentNames == [equalCopy countNgramMatchInAttachmentNames])
    && (countUnigramPrefixMatchInAttachmentNames = self->_countUnigramPrefixMatchInAttachmentNames, countUnigramPrefixMatchInAttachmentNames == [equalCopy countUnigramPrefixMatchInAttachmentNames])
    && (countBigramPrefixMatchInAttachmentNames = self->_countBigramPrefixMatchInAttachmentNames, countBigramPrefixMatchInAttachmentNames == [equalCopy countBigramPrefixMatchInAttachmentNames]))
  {
    countNgramPrefixMatchInAttachmentNames = self->_countNgramPrefixMatchInAttachmentNames;
    v79 = countNgramPrefixMatchInAttachmentNames == [equalCopy countNgramPrefixMatchInAttachmentNames];
  }

  else
  {
    v79 = 0;
  }

  return v79;
}

- (void)writeTo:(id)to
{
  to;
  if ([(_CPMailRankingSignalsForFeedback *)self wasReorderedByRecency])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self numEngagements])
  {
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self numDaysEngagedLast30Days])
  {
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self averageEngagementAgeLast7Days])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self averageEngagementAgeLast14Days])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self averageEngagementAgeLast21Days])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self averageEngagementAgeLast30Days])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self daysSinceReceipt])
  {
    PBDataWriterWriteUint64Field();
  }

  [(_CPMailRankingSignalsForFeedback *)self l1Score];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(_CPMailRankingSignalsForFeedback *)self l2Score];
  if (v5 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self isFlagged])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self isRepliedTo])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self isSemanticMatch])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self isSyntacticMatch])
  {
    PBDataWriterWriteBOOLField();
  }

  [(_CPMailRankingSignalsForFeedback *)self semanticScore];
  if (v6 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(_CPMailRankingSignalsForFeedback *)self syntacticScore];
  if (v7 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInAuthors])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInAuthors])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInAuthors])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInAuthors])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInAuthors])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInAuthors])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInAuthorEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInAuthorEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInAuthorEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInAuthorEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInAuthorEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInAuthorEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInSubject])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInSubject])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInSubject])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInSubject])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInSubject])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInSubject])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInTextContent])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInTextContent])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInTextContent])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInTextContent])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInTextContent])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInTextContent])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInRecipients])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInRecipients])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInRecipients])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInRecipients])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInRecipients])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInRecipients])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInRecipientEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInRecipientEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInRecipientEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInRecipientEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInRecipientEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInRecipientEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInEmailAddresses])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInAttachmentTypes])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInAttachmentTypes])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInAttachmentTypes])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInAttachmentTypes])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInAttachmentTypes])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInAttachmentTypes])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramMatchInAttachmentNames])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramMatchInAttachmentNames])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramMatchInAttachmentNames])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countUnigramPrefixMatchInAttachmentNames])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countBigramPrefixMatchInAttachmentNames])
  {
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPMailRankingSignalsForFeedback *)self countNgramPrefixMatchInAttachmentNames])
  {
    PBDataWriterWriteUint32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPMailRankingSignalsForFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v24.receiver = self;
  v24.super_class = _CPMailRankingSignalsForFeedback;
  v5 = [(_CPMailRankingSignalsForFeedback *)&v24 init];
  if (v5)
  {
    -[_CPMailRankingSignalsForFeedback setWasReorderedByRecency:](v5, "setWasReorderedByRecency:", [facadeCopy wasReorderedByRecency]);
    -[_CPMailRankingSignalsForFeedback setNumEngagements:](v5, "setNumEngagements:", [facadeCopy numEngagements]);
    -[_CPMailRankingSignalsForFeedback setNumDaysEngagedLast30Days:](v5, "setNumDaysEngagedLast30Days:", [facadeCopy numDaysEngagedLast30Days]);
    averageEngagementAgeLast7Days = [facadeCopy averageEngagementAgeLast7Days];

    if (averageEngagementAgeLast7Days)
    {
      averageEngagementAgeLast7Days2 = [facadeCopy averageEngagementAgeLast7Days];
      -[_CPMailRankingSignalsForFeedback setAverageEngagementAgeLast7Days:](v5, "setAverageEngagementAgeLast7Days:", [averageEngagementAgeLast7Days2 intValue]);
    }

    averageEngagementAgeLast14Days = [facadeCopy averageEngagementAgeLast14Days];

    if (averageEngagementAgeLast14Days)
    {
      averageEngagementAgeLast14Days2 = [facadeCopy averageEngagementAgeLast14Days];
      -[_CPMailRankingSignalsForFeedback setAverageEngagementAgeLast14Days:](v5, "setAverageEngagementAgeLast14Days:", [averageEngagementAgeLast14Days2 intValue]);
    }

    averageEngagementAgeLast21Days = [facadeCopy averageEngagementAgeLast21Days];

    if (averageEngagementAgeLast21Days)
    {
      averageEngagementAgeLast21Days2 = [facadeCopy averageEngagementAgeLast21Days];
      -[_CPMailRankingSignalsForFeedback setAverageEngagementAgeLast21Days:](v5, "setAverageEngagementAgeLast21Days:", [averageEngagementAgeLast21Days2 intValue]);
    }

    averageEngagementAgeLast30Days = [facadeCopy averageEngagementAgeLast30Days];

    if (averageEngagementAgeLast30Days)
    {
      averageEngagementAgeLast30Days2 = [facadeCopy averageEngagementAgeLast30Days];
      -[_CPMailRankingSignalsForFeedback setAverageEngagementAgeLast30Days:](v5, "setAverageEngagementAgeLast30Days:", [averageEngagementAgeLast30Days2 intValue]);
    }

    -[_CPMailRankingSignalsForFeedback setDaysSinceReceipt:](v5, "setDaysSinceReceipt:", [facadeCopy daysSinceReceipt]);
    l1Score = [facadeCopy l1Score];

    if (l1Score)
    {
      l1Score2 = [facadeCopy l1Score];
      [l1Score2 floatValue];
      [(_CPMailRankingSignalsForFeedback *)v5 setL1Score:?];
    }

    l2Score = [facadeCopy l2Score];

    if (l2Score)
    {
      l2Score2 = [facadeCopy l2Score];
      [l2Score2 floatValue];
      [(_CPMailRankingSignalsForFeedback *)v5 setL2Score:?];
    }

    -[_CPMailRankingSignalsForFeedback setIsFlagged:](v5, "setIsFlagged:", [facadeCopy isFlagged]);
    -[_CPMailRankingSignalsForFeedback setIsRepliedTo:](v5, "setIsRepliedTo:", [facadeCopy isRepliedTo]);
    -[_CPMailRankingSignalsForFeedback setIsSemanticMatch:](v5, "setIsSemanticMatch:", [facadeCopy isSemanticMatch]);
    -[_CPMailRankingSignalsForFeedback setIsSyntacticMatch:](v5, "setIsSyntacticMatch:", [facadeCopy isSyntacticMatch]);
    semanticScore = [facadeCopy semanticScore];

    if (semanticScore)
    {
      semanticScore2 = [facadeCopy semanticScore];
      [semanticScore2 floatValue];
      [(_CPMailRankingSignalsForFeedback *)v5 setSemanticScore:?];
    }

    syntacticScore = [facadeCopy syntacticScore];

    if (syntacticScore)
    {
      syntacticScore2 = [facadeCopy syntacticScore];
      [syntacticScore2 floatValue];
      [(_CPMailRankingSignalsForFeedback *)v5 setSyntacticScore:?];
    }

    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInAuthors:](v5, "setCountUnigramMatchInAuthors:", [facadeCopy countUnigramMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInAuthors:](v5, "setCountBigramMatchInAuthors:", [facadeCopy countBigramMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInAuthors:](v5, "setCountNgramMatchInAuthors:", [facadeCopy countNgramMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInAuthors:](v5, "setCountUnigramPrefixMatchInAuthors:", [facadeCopy countUnigramPrefixMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInAuthors:](v5, "setCountBigramPrefixMatchInAuthors:", [facadeCopy countBigramPrefixMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInAuthors:](v5, "setCountNgramPrefixMatchInAuthors:", [facadeCopy countNgramPrefixMatchInAuthors]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInAuthorEmailAddresses:](v5, "setCountUnigramMatchInAuthorEmailAddresses:", [facadeCopy countUnigramMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInAuthorEmailAddresses:](v5, "setCountBigramMatchInAuthorEmailAddresses:", [facadeCopy countBigramMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInAuthorEmailAddresses:](v5, "setCountNgramMatchInAuthorEmailAddresses:", [facadeCopy countNgramMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInAuthorEmailAddresses:](v5, "setCountUnigramPrefixMatchInAuthorEmailAddresses:", [facadeCopy countUnigramPrefixMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInAuthorEmailAddresses:](v5, "setCountBigramPrefixMatchInAuthorEmailAddresses:", [facadeCopy countBigramPrefixMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInAuthorEmailAddresses:](v5, "setCountNgramPrefixMatchInAuthorEmailAddresses:", [facadeCopy countNgramPrefixMatchInAuthorEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInSubject:](v5, "setCountUnigramMatchInSubject:", [facadeCopy countUnigramMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInSubject:](v5, "setCountBigramMatchInSubject:", [facadeCopy countBigramMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInSubject:](v5, "setCountNgramMatchInSubject:", [facadeCopy countNgramMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInSubject:](v5, "setCountUnigramPrefixMatchInSubject:", [facadeCopy countUnigramPrefixMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInSubject:](v5, "setCountBigramPrefixMatchInSubject:", [facadeCopy countBigramPrefixMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInSubject:](v5, "setCountNgramPrefixMatchInSubject:", [facadeCopy countNgramPrefixMatchInSubject]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInTextContent:](v5, "setCountUnigramMatchInTextContent:", [facadeCopy countUnigramMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInTextContent:](v5, "setCountBigramMatchInTextContent:", [facadeCopy countBigramMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInTextContent:](v5, "setCountNgramMatchInTextContent:", [facadeCopy countNgramMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInTextContent:](v5, "setCountUnigramPrefixMatchInTextContent:", [facadeCopy countUnigramPrefixMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInTextContent:](v5, "setCountBigramPrefixMatchInTextContent:", [facadeCopy countBigramPrefixMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInTextContent:](v5, "setCountNgramPrefixMatchInTextContent:", [facadeCopy countNgramPrefixMatchInTextContent]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInRecipients:](v5, "setCountUnigramMatchInRecipients:", [facadeCopy countUnigramMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInRecipients:](v5, "setCountBigramMatchInRecipients:", [facadeCopy countBigramMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInRecipients:](v5, "setCountNgramMatchInRecipients:", [facadeCopy countNgramMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInRecipients:](v5, "setCountUnigramPrefixMatchInRecipients:", [facadeCopy countUnigramPrefixMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInRecipients:](v5, "setCountBigramPrefixMatchInRecipients:", [facadeCopy countBigramPrefixMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInRecipients:](v5, "setCountNgramPrefixMatchInRecipients:", [facadeCopy countNgramPrefixMatchInRecipients]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInRecipientEmailAddresses:](v5, "setCountUnigramMatchInRecipientEmailAddresses:", [facadeCopy countUnigramMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInRecipientEmailAddresses:](v5, "setCountBigramMatchInRecipientEmailAddresses:", [facadeCopy countBigramMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInRecipientEmailAddresses:](v5, "setCountNgramMatchInRecipientEmailAddresses:", [facadeCopy countNgramMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInRecipientEmailAddresses:](v5, "setCountUnigramPrefixMatchInRecipientEmailAddresses:", [facadeCopy countUnigramPrefixMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInRecipientEmailAddresses:](v5, "setCountBigramPrefixMatchInRecipientEmailAddresses:", [facadeCopy countBigramPrefixMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInRecipientEmailAddresses:](v5, "setCountNgramPrefixMatchInRecipientEmailAddresses:", [facadeCopy countNgramPrefixMatchInRecipientEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInEmailAddresses:](v5, "setCountUnigramMatchInEmailAddresses:", [facadeCopy countUnigramMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInEmailAddresses:](v5, "setCountBigramMatchInEmailAddresses:", [facadeCopy countBigramMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInEmailAddresses:](v5, "setCountNgramMatchInEmailAddresses:", [facadeCopy countNgramMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInEmailAddresses:](v5, "setCountUnigramPrefixMatchInEmailAddresses:", [facadeCopy countUnigramPrefixMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInEmailAddresses:](v5, "setCountBigramPrefixMatchInEmailAddresses:", [facadeCopy countBigramPrefixMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInEmailAddresses:](v5, "setCountNgramPrefixMatchInEmailAddresses:", [facadeCopy countNgramPrefixMatchInEmailAddresses]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInAttachmentTypes:](v5, "setCountUnigramMatchInAttachmentTypes:", [facadeCopy countUnigramMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInAttachmentTypes:](v5, "setCountBigramMatchInAttachmentTypes:", [facadeCopy countBigramMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInAttachmentTypes:](v5, "setCountNgramMatchInAttachmentTypes:", [facadeCopy countNgramMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInAttachmentTypes:](v5, "setCountUnigramPrefixMatchInAttachmentTypes:", [facadeCopy countUnigramPrefixMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInAttachmentTypes:](v5, "setCountBigramPrefixMatchInAttachmentTypes:", [facadeCopy countBigramPrefixMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInAttachmentTypes:](v5, "setCountNgramPrefixMatchInAttachmentTypes:", [facadeCopy countNgramPrefixMatchInAttachmentTypes]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramMatchInAttachmentNames:](v5, "setCountUnigramMatchInAttachmentNames:", [facadeCopy countUnigramMatchInAttachmentNames]);
    -[_CPMailRankingSignalsForFeedback setCountBigramMatchInAttachmentNames:](v5, "setCountBigramMatchInAttachmentNames:", [facadeCopy countBigramMatchInAttachmentNames]);
    -[_CPMailRankingSignalsForFeedback setCountNgramMatchInAttachmentNames:](v5, "setCountNgramMatchInAttachmentNames:", [facadeCopy countNgramMatchInAttachmentNames]);
    -[_CPMailRankingSignalsForFeedback setCountUnigramPrefixMatchInAttachmentNames:](v5, "setCountUnigramPrefixMatchInAttachmentNames:", [facadeCopy countUnigramPrefixMatchInAttachmentNames]);
    -[_CPMailRankingSignalsForFeedback setCountBigramPrefixMatchInAttachmentNames:](v5, "setCountBigramPrefixMatchInAttachmentNames:", [facadeCopy countBigramPrefixMatchInAttachmentNames]);
    -[_CPMailRankingSignalsForFeedback setCountNgramPrefixMatchInAttachmentNames:](v5, "setCountNgramPrefixMatchInAttachmentNames:", [facadeCopy countNgramPrefixMatchInAttachmentNames]);
    v22 = v5;
  }

  return v5;
}

@end