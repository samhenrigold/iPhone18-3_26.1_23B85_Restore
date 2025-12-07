@interface PRSMapsParsecRanker
- (PRSMapsParsecRanker)init;
@end

@implementation PRSMapsParsecRanker

- (PRSMapsParsecRanker)init
{
  v48 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = PRSMapsParsecRanker;
  v2 = [(PRSMapsParsecRanker *)&v35 init];
  v3 = v2;
  if (!v2)
  {
LABEL_26:
    v25 = v3;
    goto LABEL_27;
  }

  v4 = SSDefaultsGetResources(v2);
  v5 = objc_opt_new();
  v34 = 0;
  v6 = [v4 BOOLeanForKey:@"MapsParsecRankerEnabled" didFailWithError:&v34];
  v7 = v34;
  if (v7)
  {
    [v5 addObject:@"MapsParsecRankerEnabled"];
  }

  else
  {
    v3->_rankerEnabled = v6;
  }

  v33 = v7;
  v8 = [v4 BOOLeanForKey:@"MapsParsecRankerEntityRelevanceEnabled" didFailWithError:&v33];
  v9 = v33;

  if (v9)
  {
    [v5 addObject:@"MapsParsecRankerEntityRelevanceEnabled"];
  }

  else
  {
    v3->_entityRelevanceEnabled = v8;
  }

  v32 = v9;
  [v4 doubleForKey:@"MapsParsecRankerVisitCountThreshold" didFailWithError:&v32];
  v11 = v10;
  v12 = v32;

  if (v12)
  {
    [v5 addObject:@"MapsParsecRankerVisitCountThreshold"];
  }

  else
  {
    v3->_visitCountThreshold = v11;
  }

  v31 = v12;
  [v4 doubleForKey:@"MapsParsecRankerLastVisitDaysThreshold" didFailWithError:&v31];
  v14 = v13;
  v15 = v31;

  if (v15)
  {
    [v5 addObject:@"MapsParsecRankerLastVisitDaysThreshold"];
  }

  else
  {
    v3->_lastVisitDaysThreshold = v14;
  }

  v30 = v15;
  [v4 doubleForKey:@"MapsParsecRankerVisitCountGivenLocationThreshold" didFailWithError:&v30];
  v17 = v16;
  v18 = v30;

  if (v18)
  {
    [v5 addObject:@"MapsParsecRankerVisitCountGivenLocationThreshold"];
  }

  else
  {
    v3->_visitCountGivenLocationThreshold = v17;
  }

  v29 = v18;
  [v4 doubleForKey:@"MapsParsecRankerEntityRelevanceThreshold" didFailWithError:&v29];
  v20 = v19;
  v21 = v29;

  if (!v21)
  {
    v3->_entityRelevanceThreshold = v20;
  }

  v22 = objc_msgSend_count(v5);
  v23 = PRSLogCategoryDefault();
  v24 = v23;
  if (!v22)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110400;
      v37 = v6;
      v38 = 1024;
      v39 = v8;
      v40 = 2048;
      v41 = v20;
      v42 = 2048;
      v43 = v11;
      v44 = 2048;
      v45 = v14;
      v46 = 2048;
      v47 = v17;
      _os_log_impl(&dword_1D9F69000, v24, OS_LOG_TYPE_DEFAULT, "PRSMapsParsecRanker - Successfully loaded resources: rankerEnabled=%u, entityRelevanceEnabled=%u, entityRelevanceThreshold=%f, visitCountThreshold=%f, lastVisitDaysThreshold=%f, visitCountGivenLocationThreshold=%f", buf, 0x36u);
    }

    v26 = [objc_alloc(MEMORY[0x1E69A8C20]) initWithVisitCountThreshold:v3->_entityRelevanceEnabled lastVisitDaysThreshold:v3->_visitCountThreshold visitCountGivenLocationThreshold:v3->_lastVisitDaysThreshold entityRelevanceThreshold:v3->_visitCountGivenLocationThreshold enableEntityRelevance:v3->_entityRelevanceThreshold];
    iqfRanker = v3->_iqfRanker;
    v3->_iqfRanker = v26;

    goto LABEL_26;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [PRSMapsParsecRanker init];
  }

  v25 = 0;
LABEL_27:

  return v25;
}

@end