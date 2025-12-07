@interface AXAuditResult
+ (void)registerTransportableObjectWithManager:(id)manager;
- (AXAuditResult)initWithAXAuditCategoryResults:(id)results;
- (AXAuditResult)initWithAuditIssues:(id)issues;
- (BOOL)isEqual:(id)equal;
- (id)borderFrameForAuditIssue:(id)issue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)displayBoundsForAuditIssue:(id)issue;
- (id)rotationForAuditIssue:(id)issue;
- (id)scaleForAuditIssue:(id)issue;
- (id)screenshotForAuditIssue:(id)issue;
- (id)screenshotInfoDictionaryForAuditIssue:(id)issue;
- (id)shouldFlipOutlineForAuditIssue:(id)issue;
- (unint64_t)hash;
- (void)_generateIssueToImageMapping;
@end

@implementation AXAuditResult

- (AXAuditResult)initWithAXAuditCategoryResults:(id)results
{
  selfCopy = self;
  v39 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v4 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = resultsCopy;
  v23 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v23)
  {
    v22 = *v33;
    do
    {
      v5 = 0;
      do
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v32 + 1) + 8 * v5);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        caseResults = [v6 caseResults];
        v8 = [caseResults countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v29;
          do
          {
            v11 = 0;
            do
            {
              if (*v29 != v10)
              {
                objc_enumerationMutation(caseResults);
              }

              v12 = *(*(&v28 + 1) + 8 * v11);
              v24 = 0u;
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              auditIssues = [v12 auditIssues];
              v14 = [auditIssues countByEnumeratingWithState:&v24 objects:v36 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v25;
                do
                {
                  v17 = 0;
                  do
                  {
                    if (*v25 != v16)
                    {
                      objc_enumerationMutation(auditIssues);
                    }

                    [v4 addObject:*(*(&v24 + 1) + 8 * v17++)];
                  }

                  while (v15 != v17);
                  v15 = [auditIssues countByEnumeratingWithState:&v24 objects:v36 count:16];
                }

                while (v15);
              }

              ++v11;
            }

            while (v11 != v9);
            v9 = [caseResults countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v23);
      v23 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v23);
  }

  v18 = [(AXAuditResult *)selfCopy initWithAuditIssues:v4];
  return v18;
}

- (AXAuditResult)initWithAuditIssues:(id)issues
{
  issuesCopy = issues;
  v9.receiver = self;
  v9.super_class = AXAuditResult;
  v6 = [(AXAuditResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_auditIssues, issues);
    [(AXAuditResult *)v7 _generateIssueToImageMapping];
  }

  return v7;
}

- (void)_generateIssueToImageMapping
{
  v52 = *MEMORY[0x277D85DE8];
  v38 = objc_opt_new();
  v40 = +[AXAuditScreenshotManager sharedManager];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  selfCopy = self;
  obj = [(AXAuditResult *)self auditIssues];
  v41 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v41)
  {
    v39 = *v46;
    v3 = 1;
    v4 = 0x277CCA000uLL;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v46 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v45 + 1) + 8 * i);
        v7 = [*(v4 + 2992) numberWithInt:v3];
        [v6 setImageIdentifier:v7];

        v8 = [v40 screenshotForIssue:v6 elementRect:0];
        v9 = MEMORY[0x277CCAE60];
        timeStamp = [v6 timeStamp];
        [v40 screenshotBorderFrameForTimestamp:timeStamp];
        v11 = [v9 valueWithRect:?];

        v12 = *(v4 + 2992);
        timeStamp2 = [v6 timeStamp];
        [v40 screenshotScaleFactorForTimestamp:timeStamp2];
        *&v14 = v14;
        v44 = [v12 numberWithFloat:v14];

        v15 = *(v4 + 2992);
        timeStamp3 = [v6 timeStamp];
        [v40 screenshotRotationForTimestamp:timeStamp3];
        *&v17 = v17;
        v43 = [v15 numberWithFloat:v17];

        v18 = MEMORY[0x277CCAE60];
        timeStamp4 = [v6 timeStamp];
        [v40 screenshotDisplayBoundsForTimestamp:timeStamp4];
        v20 = [v18 valueWithRect:?];

        v21 = *(v4 + 2992);
        timeStamp5 = [v6 timeStamp];
        v23 = [v21 numberWithBool:{objc_msgSend(v40, "screenshotShouldFlipOutlineForTimestamp:", timeStamp5)}];

        v24 = UIImagePNGRepresentation(v8);
        v25 = v24;
        if (v24)
        {
          v26 = MEMORY[0x277CBEAC0];
          v50[0] = v24;
          v50[1] = v11;
          v50[2] = v44;
          v50[3] = v43;
          v50[4] = v20;
          v50[5] = v23;
          v42 = v11;
          [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:6];
          v27 = v8;
          v29 = v28 = v3;
          v49[0] = @"imageData";
          v49[1] = @"borderFrame";
          v49[2] = @"displayNativeScale";
          v49[3] = @"rotationRadians";
          v49[4] = @"displayBounds";
          v49[5] = @"shouldFlipOutline";
          [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:6];
          v31 = v30 = v4;
          v32 = [v26 dictionaryWithObjects:v29 forKeys:v31];

          v33 = [*(v30 + 2992) numberWithInt:v28];
          stringValue = [v33 stringValue];
          [v38 setObject:v32 forKey:stringValue];

          v4 = v30;
          v11 = v42;

          LODWORD(v33) = v28;
          v8 = v27;
          v3 = (v33 + 1);
        }
      }

      v41 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v41);
  }

  v35 = [v38 copy];
  [(AXAuditResult *)selfCopy setAuditIssueToScreenshotMapping:v35];
}

- (id)screenshotInfoDictionaryForAuditIssue:(id)issue
{
  imageIdentifier = [issue imageIdentifier];
  stringValue = [imageIdentifier stringValue];

  auditIssueToScreenshotMapping = [(AXAuditResult *)self auditIssueToScreenshotMapping];
  v7 = [auditIssueToScreenshotMapping objectForKey:stringValue];

  return v7;
}

- (id)screenshotForAuditIssue:(id)issue
{
  imageIdentifier = [issue imageIdentifier];
  stringValue = [imageIdentifier stringValue];

  auditIssueToScreenshotMapping = [(AXAuditResult *)self auditIssueToScreenshotMapping];
  v7 = [auditIssueToScreenshotMapping objectForKey:stringValue];
  v8 = [v7 objectForKey:@"imageData"];

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)borderFrameForAuditIssue:(id)issue
{
  imageIdentifier = [issue imageIdentifier];
  stringValue = [imageIdentifier stringValue];

  auditIssueToScreenshotMapping = [(AXAuditResult *)self auditIssueToScreenshotMapping];
  v7 = [auditIssueToScreenshotMapping objectForKey:stringValue];
  v8 = [v7 objectForKey:@"borderFrame"];

  return v8;
}

- (id)scaleForAuditIssue:(id)issue
{
  imageIdentifier = [issue imageIdentifier];
  stringValue = [imageIdentifier stringValue];

  auditIssueToScreenshotMapping = [(AXAuditResult *)self auditIssueToScreenshotMapping];
  v7 = [auditIssueToScreenshotMapping objectForKey:stringValue];
  v8 = [v7 objectForKey:@"displayNativeScale"];

  return v8;
}

- (id)rotationForAuditIssue:(id)issue
{
  imageIdentifier = [issue imageIdentifier];
  stringValue = [imageIdentifier stringValue];

  auditIssueToScreenshotMapping = [(AXAuditResult *)self auditIssueToScreenshotMapping];
  v7 = [auditIssueToScreenshotMapping objectForKey:stringValue];
  v8 = [v7 objectForKey:@"rotationRadians"];

  return v8;
}

- (id)displayBoundsForAuditIssue:(id)issue
{
  imageIdentifier = [issue imageIdentifier];
  stringValue = [imageIdentifier stringValue];

  auditIssueToScreenshotMapping = [(AXAuditResult *)self auditIssueToScreenshotMapping];
  v7 = [auditIssueToScreenshotMapping objectForKey:stringValue];
  v8 = [v7 objectForKey:@"displayBounds"];

  return v8;
}

- (id)shouldFlipOutlineForAuditIssue:(id)issue
{
  imageIdentifier = [issue imageIdentifier];
  stringValue = [imageIdentifier stringValue];

  auditIssueToScreenshotMapping = [(AXAuditResult *)self auditIssueToScreenshotMapping];
  v7 = [auditIssueToScreenshotMapping objectForKey:stringValue];
  v8 = [v7 objectForKey:@"shouldFlipOutline"];

  return v8;
}

+ (void)registerTransportableObjectWithManager:(id)manager
{
  managerCopy = manager;
  v6 = [[AXAuditObjectTransportInfoPropertyBased alloc] initWithClass:objc_opt_class() transportKey:@"AXAuditResult_v1"];
  v4 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v6 addPropertyEntry:v4];
  [(AXAuditObjectTransportPropertyEntry *)v4 setTransportKey:@"AuditIssuesValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v4 setLocalValueToTransportValue:&__block_literal_global_13];
  [(AXAuditObjectTransportPropertyEntry *)v4 setPopulateLocalObjectWithTransportValue:&__block_literal_global_17_2];
  v5 = objc_alloc_init(AXAuditObjectTransportPropertyEntry);
  [(AXAuditObjectTransportInfoPropertyBased *)v6 addPropertyEntry:v5];
  [(AXAuditObjectTransportPropertyEntry *)v5 setTransportKey:@"AuditIssueToScreenshotMappingPropertyValue_v1"];
  [(AXAuditObjectTransportPropertyEntry *)v5 setLocalValueToTransportValue:&__block_literal_global_23_0];
  [(AXAuditObjectTransportPropertyEntry *)v5 setPopulateLocalObjectWithTransportValue:&__block_literal_global_26];
  [managerCopy registerTransportInfoPropertyBased:v6];
}

void __56__AXAuditResult_registerTransportableObjectWithManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setAuditIssues:v4];
  }
}

void __56__AXAuditResult_registerTransportableObjectWithManager___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setAuditIssueToScreenshotMapping:v4];
  }
}

- (unint64_t)hash
{
  auditIssues = [(AXAuditResult *)self auditIssues];
  v4 = [auditIssues hash];
  auditIssueToScreenshotMapping = [(AXAuditResult *)self auditIssueToScreenshotMapping];
  v6 = [auditIssueToScreenshotMapping hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      auditIssues = [(AXAuditResult *)self auditIssues];
      auditIssues2 = [(AXAuditResult *)v5 auditIssues];
      v8 = [auditIssues isEqualToArray:auditIssues2];

      v12 = 0;
      if (v8)
      {
        auditIssueToScreenshotMapping = [(AXAuditResult *)self auditIssueToScreenshotMapping];
        auditIssueToScreenshotMapping2 = [(AXAuditResult *)v5 auditIssueToScreenshotMapping];
        v11 = [auditIssueToScreenshotMapping isEqualToDictionary:auditIssueToScreenshotMapping2];

        if (v11)
        {
          v12 = 1;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  auditIssues = [(AXAuditResult *)self auditIssues];
  [v4 setAuditIssues:auditIssues];

  auditIssueToScreenshotMapping = [(AXAuditResult *)self auditIssueToScreenshotMapping];
  [v4 setAuditIssueToScreenshotMapping:auditIssueToScreenshotMapping];

  return v4;
}

@end