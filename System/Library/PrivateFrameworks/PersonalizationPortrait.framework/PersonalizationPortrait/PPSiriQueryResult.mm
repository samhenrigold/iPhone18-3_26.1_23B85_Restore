@interface PPSiriQueryResult
+ (id)siriQueryResultWithQid:(id)qid domain:(id)domain confidence:(id)confidence;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSiriQueryResult:(id)result;
- (PPSiriQueryResult)initWithQid:(id)qid domain:(id)domain confidence:(id)confidence;
- (unint64_t)hash;
@end

@implementation PPSiriQueryResult

- (unint64_t)hash
{
  v3 = [(NSString *)self->_qid hash];
  v4 = [(NSString *)self->_domain hash]- v3 + 32 * v3;
  return [(NSNumber *)self->_confidence hash]- v4 + 32 * v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPSiriQueryResult *)self isEqualToSiriQueryResult:v5];
  }

  return v6;
}

- (BOOL)isEqualToSiriQueryResult:(id)result
{
  resultCopy = result;
  v5 = resultCopy;
  if (!resultCopy || (v6 = self->_qid == 0, [resultCopy qid], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (qid = self->_qid) != 0 && (objc_msgSend(v5, "qid"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](qid, "isEqual:", v10), v10, !v11) || (v12 = self->_domain == 0, objc_msgSend(v5, "domain"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14) || (domain = self->_domain) != 0 && (objc_msgSend(v5, "domain"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[NSString isEqual:](domain, "isEqual:", v16), v16, !v17) || (v18 = self->_confidence == 0, objc_msgSend(v5, "confidence"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 != 0, v19, v18 == v20))
  {
    v23 = 0;
  }

  else
  {
    confidence = self->_confidence;
    if (confidence)
    {
      confidence = [v5 confidence];
      v23 = [(NSNumber *)confidence isEqual:confidence];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
}

- (PPSiriQueryResult)initWithQid:(id)qid domain:(id)domain confidence:(id)confidence
{
  qidCopy = qid;
  domainCopy = domain;
  confidenceCopy = confidence;
  v13 = confidenceCopy;
  if (domainCopy)
  {
    if (confidenceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPSiriQueryResult.m" lineNumber:11 description:{@"Invalid parameter not satisfying: %@", @"domain"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPSiriQueryResult.m" lineNumber:12 description:{@"Invalid parameter not satisfying: %@", @"confidence != nil"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = PPSiriQueryResult;
  v14 = [(PPSiriQueryResult *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_qid, qid);
    objc_storeStrong(&v15->_domain, domain);
    objc_storeStrong(&v15->_confidence, confidence);
  }

  return v15;
}

+ (id)siriQueryResultWithQid:(id)qid domain:(id)domain confidence:(id)confidence
{
  confidenceCopy = confidence;
  domainCopy = domain;
  qidCopy = qid;
  v11 = [[self alloc] initWithQid:qidCopy domain:domainCopy confidence:confidenceCopy];

  return v11;
}

@end