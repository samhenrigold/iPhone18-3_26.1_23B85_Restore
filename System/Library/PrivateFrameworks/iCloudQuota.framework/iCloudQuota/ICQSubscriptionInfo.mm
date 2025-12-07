@interface ICQSubscriptionInfo
- (ICQSubscriptionInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQSubscriptionInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQSubscriptionInfo);
  [(ICQSubscriptionInfo *)v4 setICloudPlusSubscriber:self->_iCloudPlusSubscriber];
  [(ICQSubscriptionInfo *)v4 setSpecifiersInfo:self->_specifiersInfo];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  iCloudPlusSubscriber = self->_iCloudPlusSubscriber;
  coderCopy = coder;
  [coderCopy encodeBool:iCloudPlusSubscriber forKey:@"isICloudPlusSubscriber"];
  [coderCopy encodeObject:self->_specifiersInfo forKey:@"specifiersInfo"];
}

- (ICQSubscriptionInfo)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ICQSubscriptionInfo;
  v5 = [(ICQSubscriptionInfo *)&v12 init];
  if (v5)
  {
    v5->_iCloudPlusSubscriber = [coderCopy decodeBoolForKey:@"isICloudPlusSubscriber"];
    v6 = MEMORY[0x277CBEB98];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"specifiersInfo"];
    specifiersInfo = v5->_specifiersInfo;
    v5->_specifiersInfo = v9;
  }

  return v5;
}

@end