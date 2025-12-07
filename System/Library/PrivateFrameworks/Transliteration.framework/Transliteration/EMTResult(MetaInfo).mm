@interface EMTResult(MetaInfo)
- (double)score;
- (void)score;
@end

@implementation EMTResult(MetaInfo)

- (double)score
{
  metaInfo = [self metaInfo];
  v3 = metaInfo;
  if (metaInfo)
  {
    v4 = [metaInfo dataUsingEncoding:4];
    v17 = 0;
    v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v17];
    v6 = v17;
    v8 = v6;
    if (v5)
    {
      v10 = [v5 objectForKey:@"norm_cost"];
      if (v10)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v13 = v10;
          [v13 doubleValue];
          v15 = v14 * -0.434294482;
        }

        else
        {
          v13 = _nlpDefaultLog(isKindOfClass, v12);
          v15 = -15.6535598;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [(EMTResult(MetaInfo) *)v10 score];
          }
        }
      }

      else
      {
        v13 = _nlpDefaultLog(0, v9);
        v15 = -15.6535598;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(EMTResult(MetaInfo) *)v5 score];
        }
      }
    }

    else
    {
      v10 = _nlpDefaultLog(v6, v7);
      v15 = -15.6535598;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(EMTResult(MetaInfo) *)v4 score];
      }
    }
  }

  else
  {
    v4 = _nlpDefaultLog(0, v2);
    v15 = -15.6535598;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(EMTResult(MetaInfo) *)v4 score];
    }
  }

  return v15;
}

- (void)score
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_26F4DB000, log, OS_LOG_TYPE_ERROR, "Failed to get seq2seq score, unable to decode json encoded meta info dictionary %@:%@", &v3, 0x16u);
}

@end