@interface MKImportAnalytics
+ (void)initialize;
- (MKImportAnalytics)initWithContentType:(int64_t)type;
- (void)complete:(BOOL)complete;
- (void)send:(id)send;
- (void)send:(id)send extension:(id)extension;
@end

@implementation MKImportAnalytics

+ (void)initialize
{
  v5[15] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_286AAC668;
  v4[1] = &unk_286AAC680;
  v5[0] = @"account";
  v5[1] = @"application";
  v4[2] = &unk_286AAC698;
  v4[3] = &unk_286AAC6B0;
  v5[2] = @"bookmark";
  v5[3] = @"calendar";
  v4[4] = &unk_286AAC6C8;
  v4[5] = &unk_286AAC6E0;
  v5[4] = @"contact";
  v5[5] = @"container";
  v4[6] = &unk_286AAC6F8;
  v4[7] = &unk_286AAC710;
  v5[6] = @"file";
  v5[7] = @"message";
  v4[8] = &unk_286AAC728;
  v4[9] = &unk_286AAC740;
  v5[8] = @"placeholder";
  v5[9] = @"accessibility_setting";
  v4[10] = &unk_286AAC758;
  v4[11] = &unk_286AAC770;
  v5[10] = @"display_setting";
  v5[11] = @"image";
  v4[12] = &unk_286AAC788;
  v4[13] = &unk_286AAC7A0;
  v5[12] = @"video";
  v5[13] = @"photo_album";
  v4[14] = &unk_286AAC7B8;
  v5[14] = @"sim";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:15];
  v3 = contentTypes;
  contentTypes = v2;
}

- (MKImportAnalytics)initWithContentType:(int64_t)type
{
  v10.receiver = self;
  v10.super_class = MKImportAnalytics;
  v4 = [(MKImportAnalytics *)&v10 init];
  if (v4)
  {
    v5 = contentTypes;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v7 = [v5 objectForKeyedSubscript:v6];
    contentType = v4->_contentType;
    v4->_contentType = v7;
  }

  return v4;
}

- (void)complete:(BOOL)complete
{
  completeCopy = complete;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.import", self->_contentType];
  v5 = @"-1";
  if (completeCopy)
  {
    v5 = @"0";
  }

  v8 = v4;
  v9 = v5;
  v6 = v9;
  v7 = v4;
  AnalyticsSendEventLazy();
}

id __30__MKImportAnalytics_complete___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"type";
  v4[1] = @"code";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)send:(id)send
{
  v3 = MEMORY[0x277CCACA8];
  contentType = self->_contentType;
  sendCopy = send;
  contentType = [v3 stringWithFormat:@"%@.import.error.code", contentType];
  v7 = @"unknown";
  if (sendCopy)
  {
    v7 = sendCopy;
  }

  v8 = v7;

  v11 = contentType;
  v9 = v8;
  v10 = contentType;
  AnalyticsSendEventLazy();
}

id __26__MKImportAnalytics_send___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"type";
  v4[1] = @"code";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)send:(id)send extension:(id)extension
{
  sendCopy = send;
  extensionCopy = extension;
  if (![(__CFString *)sendCopy length])
  {

    sendCopy = @"unknown";
  }

  if (![(__CFString *)extensionCopy length])
  {

    extensionCopy = @"unknown";
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.import.error.format", self->_contentType];
  v12 = sendCopy;
  v13 = extensionCopy;
  v8 = extensionCopy;
  v9 = sendCopy;
  v10 = v11;
  AnalyticsSendEventLazy();
}

id __36__MKImportAnalytics_send_extension___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4[0] = @"type";
  v4[1] = @"format";
  v5 = v1;
  v4[2] = @"extension";
  v6 = *(a1 + 48);
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v5 forKeys:v4 count:3];

  return v2;
}

@end