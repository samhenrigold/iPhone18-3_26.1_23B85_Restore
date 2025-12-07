@interface _CPCoreSpotlightRankingSignalsForFeedback
- (BOOL)isEqual:(id)equal;
- (_CPCoreSpotlightRankingSignalsForFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPCoreSpotlightRankingSignalsForFeedback

- (unint64_t)hash
{
  v2.i32[0] = LODWORD(self->_freshness);
  v3.i32[0] = LODWORD(self->_sodiumL2Score);
  v4.i32[0] = v3.i32[0];
  v4.i32[1] = LODWORD(self->_pommesL2Score);
  v4.i64[1] = *&self->_semanticScore;
  v5.i32[0] = v2.i32[0];
  v5.i32[1] = LODWORD(self->_topicalityScore);
  v5.i64[1] = *&self->_engagementScore;
  v3.i32[1] = v4.i32[1];
  v6 = vcvtq_f64_f32(v3);
  v2.i32[1] = v5.i32[1];
  v7 = vcvtq_f64_f32(v2);
  v8 = vcvtq_f64_f32(*&v4.u32[2]);
  v9 = vcvtq_f64_f32(*&v5.u32[2]);
  v10 = vcltzq_f32(v5);
  v11.i64[0] = v10.i32[2];
  v11.i64[1] = v10.i32[3];
  v12 = v11;
  v13 = vcltzq_f32(v4);
  v11.i64[0] = v13.i32[2];
  v11.i64[1] = v13.i32[3];
  v14 = v11;
  v11.i64[0] = v10.i32[0];
  v11.i64[1] = v10.i32[1];
  v15 = v11;
  v11.i64[0] = v13.i32[0];
  v11.i64[1] = v13.i32[1];
  v16 = vbslq_s8(v11, vnegq_f64(v6), v6);
  v17 = vbslq_s8(v15, vnegq_f64(v7), v7);
  v18 = vbslq_s8(v14, vnegq_f64(v8), v8);
  v19 = vbslq_s8(v12, vnegq_f64(v9), v9);
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v20 = vrndaq_f64(v19);
  v21 = vrndaq_f64(v18);
  v22 = vrndaq_f64(v17);
  v23 = vrndaq_f64(v16);
  v24 = vsubq_f64(v16, v23);
  v25 = vsubq_f64(v17, v22);
  v26 = vsubq_f64(v18, v21);
  v27 = vsubq_f64(v19, v20);
  v28 = vdupq_n_s64(0x3BF0000000000000uLL);
  v29 = vdupq_n_s64(0x43F0000000000000uLL);
  v30 = vnegq_f64(v8);
  v31 = vbslq_s8(v30, vmlsq_f64(v20, v29, vrndq_f64(vmulq_f64(v20, v28))), v20);
  v32 = vbslq_s8(v30, vmlsq_f64(v21, v29, vrndq_f64(vmulq_f64(v21, v28))), v21);
  v33 = vbslq_s8(v30, vmlsq_f64(v22, v29, vrndq_f64(vmulq_f64(v22, v28))), v22);
  v34 = vbslq_s8(v30, vmlsq_f64(v23, v29, vrndq_f64(vmulq_f64(v23, v28))), v23);
  v35 = vdupq_n_s64(0x41E3C6EF36200000uLL);
  v36 = veorq_s8(veorq_s8(vaddq_s64(vcvtq_u64_f64(vmulq_f64(v33, v35)), vcvtq_n_u64_f64(v25, 0x40uLL)), vaddq_s64(vcvtq_u64_f64(vmulq_f64(v34, v35)), vcvtq_n_u64_f64(v24, 0x40uLL))), veorq_s8(vaddq_s64(vcvtq_u64_f64(vmulq_f64(v31, v35)), vcvtq_n_u64_f64(v27, 0x40uLL)), vaddq_s64(vcvtq_u64_f64(vmulq_f64(v32, v35)), vcvtq_n_u64_f64(v26, 0x40uLL))));
  return *&veor_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL)) ^ (2654435761 * self->_wasNominatedAsTopHit) ^ (2654435761 * self->_isExactMatchOfLaunchString) ^ (2654435761 * self->_wasEngagedInSpotlight) ^ (2654435761 * self->_resultQueryRecency) ^ (2654435761 * self->_isSemanticMatch) ^ (2654435761 * self->_isSyntacticMatch) ^ (2654435761 * self->_embeddingStatus) ^ (2654435761 * self->_itemAgeInDays);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (topicalityScore = self->_topicalityScore, objc_msgSend(equalCopy, "topicalityScore"), topicalityScore == v6) && (freshness = self->_freshness, objc_msgSend(equalCopy, "freshness"), freshness == v8) && (engagementScore = self->_engagementScore, objc_msgSend(equalCopy, "engagementScore"), engagementScore == v10) && (predictedLikelihoodOfEngagement = self->_predictedLikelihoodOfEngagement, objc_msgSend(equalCopy, "predictedLikelihoodOfEngagement"), predictedLikelihoodOfEngagement == v12) && (wasNominatedAsTopHit = self->_wasNominatedAsTopHit, wasNominatedAsTopHit == objc_msgSend(equalCopy, "wasNominatedAsTopHit")) && (sodiumL2Score = self->_sodiumL2Score, objc_msgSend(equalCopy, "sodiumL2Score"), sodiumL2Score == v15) && (isExactMatchOfLaunchString = self->_isExactMatchOfLaunchString, isExactMatchOfLaunchString == objc_msgSend(equalCopy, "isExactMatchOfLaunchString")) && (wasEngagedInSpotlight = self->_wasEngagedInSpotlight, wasEngagedInSpotlight == objc_msgSend(equalCopy, "wasEngagedInSpotlight")) && (resultQueryRecency = self->_resultQueryRecency, resultQueryRecency == objc_msgSend(equalCopy, "resultQueryRecency")) && (pommesL2Score = self->_pommesL2Score, objc_msgSend(equalCopy, "pommesL2Score"), pommesL2Score == v20) && (isSemanticMatch = self->_isSemanticMatch, isSemanticMatch == objc_msgSend(equalCopy, "isSemanticMatch")) && (semanticScore = self->_semanticScore, objc_msgSend(equalCopy, "semanticScore"), semanticScore == v23) && (isSyntacticMatch = self->_isSyntacticMatch, isSyntacticMatch == objc_msgSend(equalCopy, "isSyntacticMatch")) && (syntacticScore = self->_syntacticScore, objc_msgSend(equalCopy, "syntacticScore"), syntacticScore == v26) && (embeddingStatus = self->_embeddingStatus, embeddingStatus == objc_msgSend(equalCopy, "embeddingStatus")))
  {
    itemAgeInDays = self->_itemAgeInDays;
    v29 = itemAgeInDays == [equalCopy itemAgeInDays];
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (void)writeTo:(id)to
{
  to;
  [(_CPCoreSpotlightRankingSignalsForFeedback *)self topicalityScore];
  if (v4 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(_CPCoreSpotlightRankingSignalsForFeedback *)self freshness];
  if (v5 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(_CPCoreSpotlightRankingSignalsForFeedback *)self engagementScore];
  if (v6 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  [(_CPCoreSpotlightRankingSignalsForFeedback *)self predictedLikelihoodOfEngagement];
  if (v7 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_CPCoreSpotlightRankingSignalsForFeedback *)self wasNominatedAsTopHit])
  {
    PBDataWriterWriteBOOLField();
  }

  [(_CPCoreSpotlightRankingSignalsForFeedback *)self sodiumL2Score];
  if (v8 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_CPCoreSpotlightRankingSignalsForFeedback *)self isExactMatchOfLaunchString])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPCoreSpotlightRankingSignalsForFeedback *)self wasEngagedInSpotlight])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPCoreSpotlightRankingSignalsForFeedback *)self resultQueryRecency])
  {
    PBDataWriterWriteInt32Field();
  }

  [(_CPCoreSpotlightRankingSignalsForFeedback *)self pommesL2Score];
  if (v9 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_CPCoreSpotlightRankingSignalsForFeedback *)self isSemanticMatch])
  {
    PBDataWriterWriteBOOLField();
  }

  [(_CPCoreSpotlightRankingSignalsForFeedback *)self semanticScore];
  if (v10 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_CPCoreSpotlightRankingSignalsForFeedback *)self isSyntacticMatch])
  {
    PBDataWriterWriteBOOLField();
  }

  [(_CPCoreSpotlightRankingSignalsForFeedback *)self syntacticScore];
  if (v11 != 0.0)
  {
    PBDataWriterWriteFloatField();
  }

  if ([(_CPCoreSpotlightRankingSignalsForFeedback *)self embeddingStatus])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPCoreSpotlightRankingSignalsForFeedback *)self itemAgeInDays])
  {
    PBDataWriterWriteUint32Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPCoreSpotlightRankingSignalsForFeedback)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v24.receiver = self;
  v24.super_class = _CPCoreSpotlightRankingSignalsForFeedback;
  v5 = [(_CPCoreSpotlightRankingSignalsForFeedback *)&v24 init];
  if (v5)
  {
    topicalityScore = [facadeCopy topicalityScore];

    if (topicalityScore)
    {
      topicalityScore2 = [facadeCopy topicalityScore];
      [topicalityScore2 floatValue];
      [(_CPCoreSpotlightRankingSignalsForFeedback *)v5 setTopicalityScore:?];
    }

    freshness = [facadeCopy freshness];

    if (freshness)
    {
      freshness2 = [facadeCopy freshness];
      [freshness2 floatValue];
      [(_CPCoreSpotlightRankingSignalsForFeedback *)v5 setFreshness:?];
    }

    engagementScore = [facadeCopy engagementScore];

    if (engagementScore)
    {
      engagementScore2 = [facadeCopy engagementScore];
      [engagementScore2 floatValue];
      [(_CPCoreSpotlightRankingSignalsForFeedback *)v5 setEngagementScore:?];
    }

    predictedLikelihoodOfEngagement = [facadeCopy predictedLikelihoodOfEngagement];

    if (predictedLikelihoodOfEngagement)
    {
      predictedLikelihoodOfEngagement2 = [facadeCopy predictedLikelihoodOfEngagement];
      [predictedLikelihoodOfEngagement2 floatValue];
      [(_CPCoreSpotlightRankingSignalsForFeedback *)v5 setPredictedLikelihoodOfEngagement:?];
    }

    -[_CPCoreSpotlightRankingSignalsForFeedback setWasNominatedAsTopHit:](v5, "setWasNominatedAsTopHit:", [facadeCopy wasNominatedAsTopHit]);
    sodiumL2Score = [facadeCopy sodiumL2Score];

    if (sodiumL2Score)
    {
      sodiumL2Score2 = [facadeCopy sodiumL2Score];
      [sodiumL2Score2 floatValue];
      [(_CPCoreSpotlightRankingSignalsForFeedback *)v5 setSodiumL2Score:?];
    }

    -[_CPCoreSpotlightRankingSignalsForFeedback setIsExactMatchOfLaunchString:](v5, "setIsExactMatchOfLaunchString:", [facadeCopy isExactMatchOfLaunchString]);
    -[_CPCoreSpotlightRankingSignalsForFeedback setWasEngagedInSpotlight:](v5, "setWasEngagedInSpotlight:", [facadeCopy wasEngagedInSpotlight]);
    -[_CPCoreSpotlightRankingSignalsForFeedback setResultQueryRecency:](v5, "setResultQueryRecency:", [facadeCopy resultQueryRecency]);
    pommesL2Score = [facadeCopy pommesL2Score];

    if (pommesL2Score)
    {
      pommesL2Score2 = [facadeCopy pommesL2Score];
      [pommesL2Score2 floatValue];
      [(_CPCoreSpotlightRankingSignalsForFeedback *)v5 setPommesL2Score:?];
    }

    -[_CPCoreSpotlightRankingSignalsForFeedback setIsSemanticMatch:](v5, "setIsSemanticMatch:", [facadeCopy isSemanticMatch]);
    semanticScore = [facadeCopy semanticScore];

    if (semanticScore)
    {
      semanticScore2 = [facadeCopy semanticScore];
      [semanticScore2 floatValue];
      [(_CPCoreSpotlightRankingSignalsForFeedback *)v5 setSemanticScore:?];
    }

    -[_CPCoreSpotlightRankingSignalsForFeedback setIsSyntacticMatch:](v5, "setIsSyntacticMatch:", [facadeCopy isSyntacticMatch]);
    syntacticScore = [facadeCopy syntacticScore];

    if (syntacticScore)
    {
      syntacticScore2 = [facadeCopy syntacticScore];
      [syntacticScore2 floatValue];
      [(_CPCoreSpotlightRankingSignalsForFeedback *)v5 setSyntacticScore:?];
    }

    -[_CPCoreSpotlightRankingSignalsForFeedback setEmbeddingStatus:](v5, "setEmbeddingStatus:", [facadeCopy embeddingStatus]);
    -[_CPCoreSpotlightRankingSignalsForFeedback setItemAgeInDays:](v5, "setItemAgeInDays:", [facadeCopy itemAgeInDays]);
    v22 = v5;
  }

  return v5;
}

@end