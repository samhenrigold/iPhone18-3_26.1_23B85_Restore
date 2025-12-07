@interface AXAuditCategoryResult
- (AXAuditCategoryResult)init;
- (AXAuditCategoryResultDelegate)delegate;
- (NSArray)caseResults;
- (id)allIssues;
- (id)description;
- (id)issueSummaryStrings;
- (id)log;
- (int64_t)issueCount;
- (void)addCaseResult:(id)result;
- (void)appendLog:(id)log;
@end

@implementation AXAuditCategoryResult

- (AXAuditCategoryResult)init
{
  v8.receiver = self;
  v8.super_class = AXAuditCategoryResult;
  v2 = [(AXAuditCategoryResult *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mutableLog = v2->__mutableLog;
    v2->__mutableLog = v3;

    v5 = objc_opt_new();
    mutableCases = v2->__mutableCases;
    v2->__mutableCases = v5;
  }

  return v2;
}

- (void)addCaseResult:(id)result
{
  if (result)
  {
    resultCopy = result;
    _mutableCases = [(AXAuditCategoryResult *)self _mutableCases];
    [_mutableCases addObject:resultCopy];

    [resultCopy setResult:self];
  }
}

- (NSArray)caseResults
{
  _mutableCases = [(AXAuditCategoryResult *)self _mutableCases];
  v3 = [_mutableCases copy];

  return v3;
}

- (void)appendLog:(id)log
{
  v4 = MEMORY[0x277CCACA8];
  logCopy = log;
  v6 = [[v4 alloc] initWithFormat:logCopy arguments:&v10];

  axAuditStringForLog = [v6 axAuditStringForLog];

  delegate = [(AXAuditCategoryResult *)self delegate];
  [delegate auditCategoryResult:self didAppendLogWithMessage:axAuditStringForLog];

  _mutableLog = [(AXAuditCategoryResult *)self _mutableLog];
  [_mutableLog appendString:axAuditStringForLog];
}

- (id)log
{
  _mutableLog = [(AXAuditCategoryResult *)self _mutableLog];
  v3 = [_mutableLog copy];

  return v3;
}

- (int64_t)issueCount
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _mutableCases = [(AXAuditCategoryResult *)self _mutableCases];
  v3 = [_mutableCases countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(_mutableCases);
        }

        auditIssues = [*(*(&v10 + 1) + 8 * i) auditIssues];
        v5 += [auditIssues count];
      }

      v4 = [_mutableCases countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)allIssues
{
  v27 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  _mutableCases = [(AXAuditCategoryResult *)self _mutableCases];
  v5 = [_mutableCases countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(_mutableCases);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        auditIssues = [v9 auditIssues];
        v11 = [auditIssues countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(auditIssues);
              }

              [array addObject:*(*(&v17 + 1) + 8 * j)];
            }

            v12 = [auditIssues countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }
      }

      v6 = [_mutableCases countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v15 = [array copy];

  return v15;
}

- (id)issueSummaryStrings
{
  v28 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  _mutableCases = [(AXAuditCategoryResult *)self _mutableCases];
  v5 = [_mutableCases countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(_mutableCases);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        auditIssues = [v9 auditIssues];
        v11 = [auditIssues countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(auditIssues);
              }

              foundLogMessage = [*(*(&v18 + 1) + 8 * j) foundLogMessage];
              if ([foundLogMessage length])
              {
                [array addObject:foundLogMessage];
              }
            }

            v12 = [auditIssues countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [_mutableCases countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v16 = [array copy];

  return v16;
}

- (id)description
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  issueSummaryStrings = [(AXAuditCategoryResult *)self issueSummaryStrings];
  v5 = [issueSummaryStrings countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(issueSummaryStrings);
        }

        [v3 appendFormat:@"%@\n", *(*(&v13 + 1) + 8 * i)];
      }

      v6 = [issueSummaryStrings countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12.receiver = self;
  v12.super_class = AXAuditCategoryResult;
  v9 = [(AXAuditCategoryResult *)&v12 description];
  v10 = [v9 stringByAppendingString:v3];

  return v10;
}

- (AXAuditCategoryResultDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end