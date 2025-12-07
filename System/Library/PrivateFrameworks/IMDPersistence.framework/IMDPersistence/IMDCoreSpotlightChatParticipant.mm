@interface IMDCoreSpotlightChatParticipant
- (IMDCoreSpotlightChatParticipant)initWithHandleID:(id)d contact:(id)contact isSender:(BOOL)sender;
@end

@implementation IMDCoreSpotlightChatParticipant

- (IMDCoreSpotlightChatParticipant)initWithHandleID:(id)d contact:(id)contact isSender:(BOOL)sender
{
  dCopy = d;
  contactCopy = contact;
  v17.receiver = self;
  v17.super_class = IMDCoreSpotlightChatParticipant;
  v13 = [(IMDCoreSpotlightChatParticipant *)&v17 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(dCopy, v10, v11, v12);
    handleID = v13->_handleID;
    v13->_handleID = v14;

    objc_storeStrong(&v13->_contact, contact);
    v13->_isSender = sender;
  }

  return v13;
}

@end