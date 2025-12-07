@interface BCAssetReview
+ (id)assetIDFromAssetReviewID:(id)d;
+ (id)userIDFromAssetReviewID:(id)d;
- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt;
- (NSString)debugDescription;
- (double)normalizedStarRating;
- (id)mutableCopy;
- (void)_configureFromAssetReview:(id)review withMergers:(id)mergers;
- (void)configureFromCloudData:(id)data withMergers:(id)mergers;
- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers;
- (void)setNormalizedStarRating:(double)rating;
@end

@implementation BCAssetReview

- (id)mutableCopy
{
  v3 = [BCMutableAssetReview alloc];

  return [(BCMutableAssetReview *)v3 initWithCloudData:self];
}

- (void)configureFromCloudData:(id)data withMergers:(id)mergers
{
  mergersCopy = mergers;
  v6 = BUProtocolCast();
  if (v6)
  {
    [(BCAssetReview *)self _configureFromAssetReview:v6 withMergers:mergersCopy];
  }

  else
  {
    v7 = sub_100002660(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001C2814();
    }
  }
}

- (void)_configureFromAssetReview:(id)review withMergers:(id)mergers
{
  reviewCopy = review;
  v20.receiver = self;
  v20.super_class = BCAssetReview;
  [(BCCloudData *)&v20 configureFromCloudData:reviewCopy withMergers:mergers];
  assetReviewID = [reviewCopy assetReviewID];
  v8 = [BCAssetReview userIDFromAssetReviewID:assetReviewID];

  [(BCAssetReview *)self setDifferentString:v8 forKey:@"userID"];
  assetReviewID2 = [reviewCopy assetReviewID];
  [(BCAssetReview *)self setDifferentString:assetReviewID2 forKey:@"assetReviewID"];

  v10 = +[NSNumber numberWithShort:](NSNumber, "numberWithShort:", [reviewCopy starRating]);
  [(BCAssetReview *)self setDifferentNumber:v10 forKey:@"starRating"];

  reviewTitle = [reviewCopy reviewTitle];
  [(BCAssetReview *)self setDifferentString:reviewTitle forKey:@"reviewTitle"];

  reviewBody = [reviewCopy reviewBody];
  [(BCAssetReview *)self setDifferentString:reviewBody forKey:@"reviewBody"];

  v13 = +[BULogUtilities shared];
  verboseLoggingEnabled = [v13 verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v16 = sub_10000DB80(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      assetReviewID3 = [(BCAssetReview *)self assetReviewID];
      v18 = [(BCAssetReview *)self debugDescription];
      assetReviewID4 = [reviewCopy assetReviewID];
      *buf = 138412802;
      v22 = assetReviewID3;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = assetReviewID4;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "\\BCAssetReview configured: %@ %@ from assetReview:%@\", buf, 0x20u);
    }
  }
}

- (BOOL)isEqualExceptForDate:(id)date ignoringEmptySalt:(BOOL)salt
{
  saltCopy = salt;
  dateCopy = date;
  v8 = BUProtocolCast();
  v25.receiver = self;
  v25.super_class = BCAssetReview;
  v24 = [(BCCloudData *)&v25 isEqualExceptForDate:dateCopy ignoringEmptySalt:saltCopy];

  assetReviewID = [(BCAssetReview *)self assetReviewID];
  assetReviewID2 = [v8 assetReviewID];
  v11 = [assetReviewID isEqualToString:assetReviewID2];

  starRating = [(BCAssetReview *)self starRating];
  starRating2 = [v8 starRating];
  reviewTitle = [(BCAssetReview *)self reviewTitle];
  if (!reviewTitle)
  {
    reviewTitle2 = [v8 reviewTitle];
    if (!reviewTitle2)
    {
      v17 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  reviewTitle3 = [(BCAssetReview *)self reviewTitle];
  reviewTitle4 = [v8 reviewTitle];
  v17 = [reviewTitle3 isEqualToString:reviewTitle4];

  if (!reviewTitle)
  {
    goto LABEL_6;
  }

LABEL_7:

  reviewBody = [(BCAssetReview *)self reviewBody];
  if (reviewBody || ([v8 reviewBody], (reviewTitle2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    reviewBody2 = [(BCAssetReview *)self reviewBody];
    reviewBody3 = [v8 reviewBody];
    v21 = [reviewBody2 isEqualToString:reviewBody3];

    if (reviewBody)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v21 = 1;
  }

LABEL_13:
  if (starRating == starRating2)
  {
    v22 = v24 & v11;
  }

  else
  {
    v22 = 0;
  }

  return v22 & v17 & v21;
}

- (void)resolveConflictsFromRecord:(id)record withResolvers:(id)resolvers
{
  recordCopy = record;
  v47.receiver = self;
  v47.super_class = BCAssetReview;
  v7 = [(BCCloudData *)&v47 resolveConflictsFromRecord:recordCopy withResolvers:resolvers];
  if (recordCopy)
  {
    v8 = [BCCloudData localIdentifierFromRecord:recordCopy];
    assetReviewID = [(BCAssetReview *)self assetReviewID];
    v10 = [assetReviewID isEqualToString:v8];

    if ((v10 & 1) == 0)
    {
      v12 = sub_100002660(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1001C2848(self, v8, v12);
      }

      [(BCAssetReview *)self setAssetReviewID:v8];
      v13 = [BCAssetReview userIDFromAssetReviewID:v8];
      [(BCAssetReview *)self setDifferentString:v13 forKey:@"userID"];
    }

    modificationDate = [(BCAssetReview *)self modificationDate];
    if (modificationDate)
    {
      v15 = modificationDate;
      modificationDate2 = [(BCAssetReview *)self modificationDate];
      [modificationDate2 timeIntervalSinceReferenceDate];
      v18 = v17;
      modificationDate3 = [recordCopy modificationDate];
      [modificationDate3 timeIntervalSinceReferenceDate];
      v21 = v20;

      if (v18 > v21)
      {
        v23 = sub_100002660(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          assetReviewID2 = [(BCAssetReview *)self assetReviewID];
          recordID = [recordCopy recordID];
          recordName = [recordID recordName];
          modificationDate4 = [(BCAssetReview *)self modificationDate];
          [modificationDate4 timeIntervalSinceReferenceDate];
          v29 = v28;
          modificationDate5 = [recordCopy modificationDate];
          [modificationDate5 timeIntervalSinceReferenceDate];
          v31 = @"newer";
          *buf = 138412802;
          v49 = assetReviewID2;
          if (v29 == v32)
          {
            v31 = @"the same";
          }

          v50 = 2112;
          v51 = recordName;
          v52 = 2114;
          v53 = v31;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "BCAssetReview %@ Resolving conflicts from record %@, keeping my properties as my modification date is %{public}@.", buf, 0x20u);
        }

        [(BCCloudData *)self incrementEditGeneration];
        goto LABEL_25;
      }
    }

    v33 = [recordCopy objectForKey:@"starRating"];
    [(BCAssetReview *)self setDifferentNumber:v33 forKey:@"starRating"];
    v34 = [recordCopy objectForKey:@"reviewTitle"];
    [(BCAssetReview *)self setDifferentString:v34 forKey:@"reviewTitle"];
    v35 = [recordCopy objectForKey:@"reviewBody"];
    [(BCAssetReview *)self setDifferentString:v35 forKey:@"reviewBody"];
    modificationDate6 = [recordCopy modificationDate];
    [(BCAssetReview *)self setDifferentDate:modificationDate6 forKey:@"modificationDate"];
    hasChanges = [(BCAssetReview *)self hasChanges];
    v38 = +[BULogUtilities shared];
    verboseLoggingEnabled = [v38 verboseLoggingEnabled];

    if (hasChanges)
    {
      if (verboseLoggingEnabled)
      {
        v41 = sub_10000DB80(v40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          assetReviewID3 = [(BCAssetReview *)self assetReviewID];
          recordID2 = [recordCopy recordID];
          recordName2 = [recordID2 recordName];
          v44 = [(BCAssetReview *)self debugDescription];
          *buf = 138412802;
          v49 = assetReviewID3;
          v50 = 2112;
          v51 = recordName2;
          v52 = 2112;
          v53 = v44;
          v45 = "\\BCAssetReview %@ Resolving: Adopted properties from record: %@ %@\";
LABEL_22:
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v45, buf, 0x20u);

          goto LABEL_23;
        }

        goto LABEL_23;
      }
    }

    else if (verboseLoggingEnabled)
    {
      v41 = sub_10000DB80(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        assetReviewID3 = [(BCAssetReview *)self assetReviewID];
        recordID2 = [recordCopy recordID];
        recordName2 = [recordID2 recordName];
        v44 = [(BCAssetReview *)self debugDescription];
        *buf = 138412802;
        v49 = assetReviewID3;
        v50 = 2112;
        v51 = recordName2;
        v52 = 2112;
        v53 = v44;
        v45 = "\\BCAssetReview %@ Resolving: Identical properties from record: %@ %@\";
        goto LABEL_22;
      }

LABEL_23:
    }

    goto LABEL_25;
  }

  v8 = sub_100002660(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1001C28F8(self, v8);
  }

LABEL_25:
}

- (double)normalizedStarRating
{
  v2 = [NSNumber numberWithShort:[(BCAssetReview *)self starRating]];
  [v2 floatValue];
  v4 = v3 / 5.0;

  return v4;
}

- (void)setNormalizedStarRating:(double)rating
{
  v4 = [NSNumber numberWithDouble:floor(rating * 5.0)];
  -[BCAssetReview setStarRating:](self, "setStarRating:", [v4 integerValue]);
}

- (NSString)debugDescription
{
  assetReviewID = [(BCAssetReview *)self assetReviewID];
  starRating = [(BCAssetReview *)self starRating];
  reviewTitle = [(BCAssetReview *)self reviewTitle];
  reviewBody = [(BCAssetReview *)self reviewBody];
  v7 = [NSString stringWithFormat:@"assetReviewID: %@, starRating: %hd, reviewTitle: %@, reviewBody: %@", assetReviewID, starRating, reviewTitle, reviewBody];

  return v7;
}

+ (id)assetIDFromAssetReviewID:(id)d
{
  dCopy = d;
  v4 = [dCopy rangeOfString:@"|"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [dCopy substringFromIndex:&v4[v5]];
  }

  return v6;
}

+ (id)userIDFromAssetReviewID:(id)d
{
  dCopy = d;
  v4 = [dCopy rangeOfString:@"|"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [dCopy substringToIndex:v4];
  }

  return v5;
}

@end