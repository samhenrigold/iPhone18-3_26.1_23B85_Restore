@interface GKMessageInboxEntryInternal
+ (id)secureCodedPropertyKeys;
- (NSString)senderDisplayName;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation GKMessageInboxEntryInternal

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = [(GKMessageInboxEntryInternal *)self url];
  [v4 setUrl:v5];

  senderHandle = [(GKMessageInboxEntryInternal *)self senderHandle];
  [v4 setSenderHandle:senderHandle];

  senderAlias = [(GKMessageInboxEntryInternal *)self senderAlias];
  [v4 setSenderAlias:senderAlias];

  contactID = [(GKMessageInboxEntryInternal *)self contactID];
  [v4 setContactID:contactID];

  contactName = [(GKMessageInboxEntryInternal *)self contactName];
  [v4 setContactName:contactName];

  friendCode = [(GKMessageInboxEntryInternal *)self friendCode];
  [v4 setFriendCode:friendCode];

  timestamp = [(GKMessageInboxEntryInternal *)self timestamp];
  [v4 setTimestamp:timestamp];

  return v4;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_13 != -1)
  {
    +[GKMessageInboxEntryInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_13;

  return v3;
}

void __54__GKMessageInboxEntryInternal_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[7] = *MEMORY[0x277D85DE8];
  v4[0] = @"url";
  v5[0] = objc_opt_class();
  v4[1] = @"senderHandle";
  v5[1] = objc_opt_class();
  v4[2] = @"senderAlias";
  v5[2] = objc_opt_class();
  v4[3] = @"contactID";
  v5[3] = objc_opt_class();
  v4[4] = @"contactName";
  v5[4] = objc_opt_class();
  v4[5] = @"friendCode";
  v5[5] = objc_opt_class();
  v4[6] = @"timestamp";
  v5[6] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:7];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_13;
  secureCodedPropertyKeys_sSecureCodedKeys_13 = v2;
}

- (NSString)senderDisplayName
{
  contactName = self->_contactName;
  if (contactName)
  {
LABEL_4:
    v4 = contactName;

    return v4;
  }

  if (self->_senderAlias)
  {
    contactName = self->_senderHandle;
    goto LABEL_4;
  }

  v4 = &stru_283AFD1E0;

  return v4;
}

@end