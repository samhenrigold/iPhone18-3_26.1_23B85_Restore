@interface CRKIDSMessageNotificationInfo
+ (id)instanceWithDictionary:(id)dictionary;
- (CRKIDSMessageNotificationInfo)initWithMessage:(id)message senderAppleID:(id)d senderAddress:(id)address;
- (NSDictionary)dictionaryValue;
@end

@implementation CRKIDSMessageNotificationInfo

- (CRKIDSMessageNotificationInfo)initWithMessage:(id)message senderAppleID:(id)d senderAddress:(id)address
{
  messageCopy = message;
  dCopy = d;
  addressCopy = address;
  v19.receiver = self;
  v19.super_class = CRKIDSMessageNotificationInfo;
  v11 = [(CRKIDSMessageNotificationInfo *)&v19 init];
  if (v11)
  {
    v12 = [messageCopy copy];
    message = v11->_message;
    v11->_message = v12;

    v14 = [dCopy copy];
    senderAppleID = v11->_senderAppleID;
    v11->_senderAppleID = v14;

    v16 = [addressCopy copy];
    senderAddress = v11->_senderAddress;
    v11->_senderAddress = v16;
  }

  return v11;
}

- (NSDictionary)dictionaryValue
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"Message";
  message = [(CRKIDSMessageNotificationInfo *)self message];
  v9[0] = message;
  v8[1] = @"SenderAppleID";
  senderAppleID = [(CRKIDSMessageNotificationInfo *)self senderAppleID];
  v9[1] = senderAppleID;
  v8[2] = @"SenderAddress";
  senderAddress = [(CRKIDSMessageNotificationInfo *)self senderAddress];
  v9[2] = senderAddress;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

+ (id)instanceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"Message"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKIDSMessageNotificationInfo instanceWithDictionary:v5];
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"SenderAppleID"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKIDSMessageNotificationInfo instanceWithDictionary:v6];
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"SenderAddress"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [CRKIDSMessageNotificationInfo instanceWithDictionary:v7];
  }

  v8 = [[self alloc] initWithMessage:v5 senderAppleID:v6 senderAddress:v7];

  return v8;
}

+ (void)instanceWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v14 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[CRKIDSMessageNotificationInfo instanceWithDictionary:]"];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [OUTLINED_FUNCTION_0_2(v5 v6];
}

+ (void)instanceWithDictionary:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v14 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[CRKIDSMessageNotificationInfo instanceWithDictionary:]"];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [OUTLINED_FUNCTION_0_2(v5 v6];
}

+ (void)instanceWithDictionary:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v14 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[CRKIDSMessageNotificationInfo instanceWithDictionary:]"];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [OUTLINED_FUNCTION_0_2(v5 v6];
}

@end