@interface TVRCRottenTomatoesReview
+ (TVRCRottenTomatoesReview)rottenTomatoesReviewWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRottenTomatoesReview:(id)review;
- (TVRCRottenTomatoesReview)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)freshnessLevel;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCRottenTomatoesReview

+ (TVRCRottenTomatoesReview)rottenTomatoesReviewWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __63__TVRCRottenTomatoesReview_rottenTomatoesReviewWithDictionary___block_invoke;
  v22[3] = &unk_279D82398;
  v4 = dictionaryCopy;
  v23 = v4;
  v5 = MEMORY[0x26D6B0B70](v22);
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __63__TVRCRottenTomatoesReview_rottenTomatoesReviewWithDictionary___block_invoke_2;
  v20 = &unk_279D823C0;
  v21 = v4;
  v6 = v4;
  v7 = MEMORY[0x26D6B0B70](&v17);
  v8 = objc_alloc_init(TVRCRottenTomatoesReview);
  v9 = (v7)[2](v7, @"tomatometerPercentage");
  [(TVRCRottenTomatoesReview *)v8 setPercentage:v9, v17, v18, v19, v20];

  v10 = (v7)[2](v7, @"audienceScore");
  [(TVRCRottenTomatoesReview *)v8 setAudienceScore:v10];

  v11 = (v7)[2](v7, @"averageRating");
  [(TVRCRottenTomatoesReview *)v8 setAverageRating:v11];

  v12 = (v5)[2](v5, @"consensus");
  [(TVRCRottenTomatoesReview *)v8 setConsensus:v12];

  v13 = (v7)[2](v7, @"numFreshReviews");
  [(TVRCRottenTomatoesReview *)v8 setNumberOfFreshReviews:v13];

  v14 = (v7)[2](v7, @"numRottenReviews");
  [(TVRCRottenTomatoesReview *)v8 setNumberOfRottenReviews:v14];

  v15 = (v5)[2](v5, @"tomatometerFreshness");
  [(TVRCRottenTomatoesReview *)v8 setFreshness:v15];

  return v8;
}

id __63__TVRCRottenTomatoesReview_rottenTomatoesReviewWithDictionary___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
LABEL_6:
      v4 = v3;
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v2 stringValue];
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

id __63__TVRCRottenTomatoesReview_rottenTomatoesReviewWithDictionary___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [MEMORY[0x277CCAC80] scannerWithString:v2];
      v6 = 0.0;
      if ([v4 scanDouble:&v6])
      {
        v3 = [MEMORY[0x277CCABB0] numberWithDouble:v6];

        goto LABEL_9;
      }
    }
  }

  v3 = 0;
LABEL_9:

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TVRCRottenTomatoesReview *)self isEqualToRottenTomatoesReview:equalCopy];

  return v5;
}

- (BOOL)isEqualToRottenTomatoesReview:(id)review
{
  reviewCopy = review;
  percentage = [(TVRCRottenTomatoesReview *)self percentage];
  percentage2 = [reviewCopy percentage];
  v7 = (percentage == 0) ^ (percentage2 == 0);

  if ((v7 & 1) != 0
    || (-[TVRCRottenTomatoesReview audienceScore](self, "audienceScore"), v8 = objc_claimAutoreleasedReturnValue(), [reviewCopy audienceScore], v9 = objc_claimAutoreleasedReturnValue(), v10 = (v8 == 0) ^ (v9 == 0), v9, v8, (v10 & 1) != 0)
    || (-[TVRCRottenTomatoesReview averageRating](self, "averageRating"), v11 = objc_claimAutoreleasedReturnValue(), [reviewCopy averageRating], v12 = objc_claimAutoreleasedReturnValue(), v13 = (v11 == 0) ^ (v12 == 0), v12, v11, (v13 & 1) != 0)
    || (-[TVRCRottenTomatoesReview consensus](self, "consensus"), v14 = objc_claimAutoreleasedReturnValue(), [reviewCopy consensus], v15 = objc_claimAutoreleasedReturnValue(), v16 = (v14 == 0) ^ (v15 == 0), v15, v14, (v16 & 1) != 0)
    || (-[TVRCRottenTomatoesReview numberOfFreshReviews](self, "numberOfFreshReviews"), v17 = objc_claimAutoreleasedReturnValue(), [reviewCopy numberOfFreshReviews], v18 = objc_claimAutoreleasedReturnValue(), v19 = (v17 == 0) ^ (v18 == 0), v18, v17, (v19 & 1) != 0)
    || (-[TVRCRottenTomatoesReview numberOfRottenReviews](self, "numberOfRottenReviews"), v20 = objc_claimAutoreleasedReturnValue(), [reviewCopy numberOfRottenReviews], v21 = objc_claimAutoreleasedReturnValue(), v22 = (v20 == 0) ^ (v21 == 0), v21, v20, (v22 & 1) != 0)
    || (-[TVRCRottenTomatoesReview freshness](self, "freshness"), v23 = objc_claimAutoreleasedReturnValue(), [reviewCopy freshness], v24 = objc_claimAutoreleasedReturnValue(), v25 = (v23 == 0) ^ (v24 == 0), v24, v23, (v25 & 1) != 0)
    || (-[TVRCRottenTomatoesReview percentage](self, "percentage"), (v26 = objc_claimAutoreleasedReturnValue()) != 0) && (v27 = v26, -[TVRCRottenTomatoesReview percentage](self, "percentage"), v28 = objc_claimAutoreleasedReturnValue(), [reviewCopy percentage], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "isEqualToNumber:", v29), v29, v28, v27, !v30)
    || (-[TVRCRottenTomatoesReview audienceScore](self, "audienceScore"), (v31 = objc_claimAutoreleasedReturnValue()) != 0) && (v32 = v31, -[TVRCRottenTomatoesReview audienceScore](self, "audienceScore"), v33 = objc_claimAutoreleasedReturnValue(), [reviewCopy audienceScore], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v33, "isEqualToNumber:", v34), v34, v33, v32, !v35)
    || (-[TVRCRottenTomatoesReview averageRating](self, "averageRating"), (v36 = objc_claimAutoreleasedReturnValue()) != 0) && (v37 = v36, -[TVRCRottenTomatoesReview averageRating](self, "averageRating"), v38 = objc_claimAutoreleasedReturnValue(), [reviewCopy averageRating], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v38, "isEqualToNumber:", v39), v39, v38, v37, !v40)
    || (-[TVRCRottenTomatoesReview consensus](self, "consensus"), (v41 = objc_claimAutoreleasedReturnValue()) != 0) && (v42 = v41, -[TVRCRottenTomatoesReview consensus](self, "consensus"), v43 = objc_claimAutoreleasedReturnValue(), [reviewCopy consensus], v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v43, "isEqualToString:", v44), v44, v43, v42, !v45)
    || (-[TVRCRottenTomatoesReview numberOfFreshReviews](self, "numberOfFreshReviews"), (v46 = objc_claimAutoreleasedReturnValue()) != 0) && (v47 = v46, -[TVRCRottenTomatoesReview numberOfFreshReviews](self, "numberOfFreshReviews"), v48 = objc_claimAutoreleasedReturnValue(), [reviewCopy numberOfFreshReviews], v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v48, "isEqualToNumber:", v49), v49, v48, v47, !v50)
    || (-[TVRCRottenTomatoesReview numberOfRottenReviews](self, "numberOfRottenReviews"), (v51 = objc_claimAutoreleasedReturnValue()) != 0) && (v52 = v51, -[TVRCRottenTomatoesReview numberOfRottenReviews](self, "numberOfRottenReviews"), v53 = objc_claimAutoreleasedReturnValue(), [reviewCopy numberOfRottenReviews], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v53, "isEqualToNumber:", v54), v54, v53, v52, !v55))
  {
    v60 = 0;
  }

  else
  {
    freshness = [(TVRCRottenTomatoesReview *)self freshness];
    if (freshness)
    {
      v57 = freshness;
      freshness2 = [(TVRCRottenTomatoesReview *)self freshness];
      freshness3 = [reviewCopy freshness];
      v60 = [freshness2 isEqualToString:freshness3];
    }

    else
    {
      v60 = 1;
    }
  }

  return v60 & 1;
}

- (unint64_t)freshnessLevel
{
  freshness = [(TVRCRottenTomatoesReview *)self freshness];
  v4 = [freshness isEqualToString:@"CertifiedFresh"];

  if (v4)
  {
    return 1;
  }

  freshness2 = [(TVRCRottenTomatoesReview *)self freshness];
  v7 = [freshness2 isEqualToString:@"Rotten"];

  if (v7)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TVRCRottenTomatoesReview);
  percentage = [(TVRCRottenTomatoesReview *)self percentage];
  [(TVRCRottenTomatoesReview *)v4 setPercentage:percentage];

  audienceScore = [(TVRCRottenTomatoesReview *)self audienceScore];
  [(TVRCRottenTomatoesReview *)v4 setAudienceScore:audienceScore];

  averageRating = [(TVRCRottenTomatoesReview *)self averageRating];
  [(TVRCRottenTomatoesReview *)v4 setAverageRating:averageRating];

  consensus = [(TVRCRottenTomatoesReview *)self consensus];
  [(TVRCRottenTomatoesReview *)v4 setConsensus:consensus];

  numberOfFreshReviews = [(TVRCRottenTomatoesReview *)self numberOfFreshReviews];
  [(TVRCRottenTomatoesReview *)v4 setNumberOfFreshReviews:numberOfFreshReviews];

  numberOfRottenReviews = [(TVRCRottenTomatoesReview *)self numberOfRottenReviews];
  [(TVRCRottenTomatoesReview *)v4 setNumberOfRottenReviews:numberOfRottenReviews];

  freshness = [(TVRCRottenTomatoesReview *)self freshness];
  [(TVRCRottenTomatoesReview *)v4 setFreshness:freshness];

  return v4;
}

- (TVRCRottenTomatoesReview)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = TVRCRottenTomatoesReview;
  v5 = [(TVRCRottenTomatoesReview *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"percentage"];
    percentage = v5->_percentage;
    v5->_percentage = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audienceScore"];
    audienceScore = v5->_audienceScore;
    v5->_audienceScore = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageRating"];
    averageRating = v5->_averageRating;
    v5->_averageRating = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"consensus"];
    consensus = v5->_consensus;
    v5->_consensus = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfFreshReviews"];
    numberOfFreshReviews = v5->_numberOfFreshReviews;
    v5->_numberOfFreshReviews = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfRottenReviews"];
    numberOfRottenReviews = v5->_numberOfRottenReviews;
    v5->_numberOfRottenReviews = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"freshness"];
    freshness = v5->_freshness;
    v5->_freshness = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  percentage = self->_percentage;
  coderCopy = coder;
  [coderCopy encodeObject:percentage forKey:@"percentage"];
  [coderCopy encodeObject:self->_audienceScore forKey:@"audienceScore"];
  [coderCopy encodeObject:self->_averageRating forKey:@"averageRating"];
  [coderCopy encodeObject:self->_consensus forKey:@"consensus"];
  [coderCopy encodeObject:self->_numberOfFreshReviews forKey:@"numberOfFreshReviews"];
  [coderCopy encodeObject:self->_numberOfRottenReviews forKey:@"numberOfRottenReviews"];
  [coderCopy encodeObject:self->_freshness forKey:@"freshness"];
}

@end