@interface CoreDAVSupportedReportSetItem
+ (id)copyParseRules;
- (BOOL)supportsReportWithNameSpace:(id)space andName:(id)name;
- (id)description;
- (void)addSupportedReport:(id)report;
@end

@implementation CoreDAVSupportedReportSetItem

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v7.receiver = self;
  v7.super_class = CoreDAVSupportedReportSetItem;
  v4 = [(CoreDAVItem *)&v7 description];
  [v3 appendFormat:@"[%@]", v4];

  supportedReports = [(CoreDAVSupportedReportSetItem *)self supportedReports];
  [v3 appendFormat:@"\n  Number of supported reports: [%lu]", objc_msgSend(supportedReports, "count")];

  return v3;
}

+ (id)copyParseRules
{
  v3 = +[CoreDAVItem parseRuleCache];
  v4 = NSStringFromClass(self);
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEAC0]);
    v7 = [CoreDAVParseRule ruleWithMinimumNumber:0 maximumNumber:0x7FFFFFFFLL nameSpace:@"DAV:" elementName:@"supported-report" objectClass:objc_opt_class() setterMethod:sel_addSupportedReport_];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"DAV:", @"supported-report"];
    v5 = [v6 initWithObjectsAndKeys:{v7, v8, 0}];

    v9 = +[CoreDAVItem parseRuleCache];
    v10 = NSStringFromClass(self);
    [v9 setObject:v5 forKey:v10];
  }

  return v5;
}

- (void)addSupportedReport:(id)report
{
  reportCopy = report;
  supportedReports = [(CoreDAVSupportedReportSetItem *)self supportedReports];

  if (!supportedReports)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(CoreDAVSupportedReportSetItem *)self setSupportedReports:v6];
  }

  supportedReports2 = [(CoreDAVSupportedReportSetItem *)self supportedReports];
  [supportedReports2 addObject:reportCopy];
}

- (BOOL)supportsReportWithNameSpace:(id)space andName:(id)name
{
  v37 = *MEMORY[0x277D85DE8];
  spaceCopy = space;
  nameCopy = name;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  supportedReports = [(CoreDAVSupportedReportSetItem *)self supportedReports];
  v25 = [supportedReports countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v25)
  {
    v9 = *v32;
    v26 = supportedReports;
    v24 = *v32;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(supportedReports);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        report = [v11 report];
        extraChildItems = [report extraChildItems];

        v14 = [extraChildItems countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v28;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v28 != v16)
              {
                objc_enumerationMutation(extraChildItems);
              }

              v18 = *(*(&v27 + 1) + 8 * j);
              nameSpace = [v18 nameSpace];
              if ([nameSpace isEqualToString:spaceCopy])
              {
                name = [v18 name];
                v21 = [name isEqualToString:nameCopy];

                if (v21)
                {

                  v22 = 1;
                  supportedReports = v26;
                  goto LABEL_21;
                }
              }

              else
              {
              }
            }

            v15 = [extraChildItems countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v15);
        }

        supportedReports = v26;
        v9 = v24;
      }

      v22 = 0;
      v25 = [v26 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v25);
  }

  else
  {
    v22 = 0;
  }

LABEL_21:

  return v22;
}

@end