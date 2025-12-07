@interface HVConsumptionContext
- (BOOL)shouldContinue;
- (HVConsumptionContext)initWithContent:(id)content contentProtection:(id)protection scheduledTaskShouldContinueBlock:(id)block;
- (id)_parseHtmlContentIfAvailable;
- (id)description;
@end

@implementation HVConsumptionContext

- (BOOL)shouldContinue
{
  scheduledTaskShouldContinueBlock = self->_scheduledTaskShouldContinueBlock;
  if (!scheduledTaskShouldContinueBlock)
  {
    return 1;
  }

  if (scheduledTaskShouldContinueBlock[2](scheduledTaskShouldContinueBlock, a2))
  {
    return 1;
  }

  v4 = hv_default_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_2321EC000, v4, OS_LOG_TYPE_DEFAULT, "HVConsumptionContext: _scheduledTaskShouldContinueBlock returned NO", v5, 2u);
  }

  return 0;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  uniqueId = [(BMIdentifiableContentEvent *)self->_content uniqueId];
  v6 = [v3 initWithFormat:@"<HVConsumptionContext c:%@ u:%@ p:%@>", v4, uniqueId, self->_contentProtection];

  return v6;
}

- (id)_parseHtmlContentIfAvailable
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_content;
    htmlContent = [(BMIdentifiableContentEvent *)v3 htmlContent];
    if (htmlContent)
    {
      v5 = [[HVHtmlParser alloc] initWithData:htmlContent encoding:4];
    }

    else
    {
      v7 = hv_default_log_handle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_2321EC000, v7, OS_LOG_TYPE_DEFAULT, "HVConsumptionContext<BMMailContentEvent>: unable to fetch HTML content, will parse plaintext converted to HTML", v11, 2u);
      }

      textContent = [(BMIdentifiableContentEvent *)v3 textContent];
      v9 = textContent;
      if (!textContent)
      {
        textContent = &stru_28474C1D0;
      }

      v10 = [(__CFString *)textContent mutableCopy];

      [v10 replaceOccurrencesOfString:@"&" withString:@"&amp;" options:2 range:{0, objc_msgSend(v10, "length")}];
      [v10 replaceOccurrencesOfString:@"<" withString:@"&lt;" options:2 range:{0, objc_msgSend(v10, "length")}];
      [v10 replaceOccurrencesOfString:@"\n" withString:@"<br>" options:2 range:{0, objc_msgSend(v10, "length")}];
      v5 = [[HVHtmlParser alloc] initWithString:v10];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HVConsumptionContext)initWithContent:(id)content contentProtection:(id)protection scheduledTaskShouldContinueBlock:(id)block
{
  contentCopy = content;
  protectionCopy = protection;
  blockCopy = block;
  v23.receiver = self;
  v23.super_class = HVConsumptionContext;
  v12 = [(HVConsumptionContext *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_content, content);
    objc_storeStrong(&v13->_contentProtection, protection);
    v14 = MEMORY[0x238381E60](blockCopy);
    scheduledTaskShouldContinueBlock = v13->_scheduledTaskShouldContinueBlock;
    v13->_scheduledTaskShouldContinueBlock = v14;

    objc_initWeak(&location, v13);
    v16 = objc_alloc(MEMORY[0x277D425F0]);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91__HVConsumptionContext_initWithContent_contentProtection_scheduledTaskShouldContinueBlock___block_invoke;
    v20[3] = &unk_278968F98;
    objc_copyWeak(&v21, &location);
    v17 = [v16 initWithBlock:v20];
    cachedParser = v13->_cachedParser;
    v13->_cachedParser = v17;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v13;
}

id __91__HVConsumptionContext_initWithContent_contentProtection_scheduledTaskShouldContinueBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    __assert_rtn("[HVConsumptionContext initWithContent:contentProtection:scheduledTaskShouldContinueBlock:]_block_invoke", "HVConsumptionContext.m", 32, "strongSelf");
  }

  v2 = WeakRetained;
  v3 = [WeakRetained _parseHtmlContentIfAvailable];

  return v3;
}

@end