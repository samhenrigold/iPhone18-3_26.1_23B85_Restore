@interface IMSPISuggestionsObject
- (IMSPISuggestionsObject)initWithChatGuid:(id)guid displayName:(id)name participants:(id)participants;
- (id)description;
@end

@implementation IMSPISuggestionsObject

- (IMSPISuggestionsObject)initWithChatGuid:(id)guid displayName:(id)name participants:(id)participants
{
  guidCopy = guid;
  nameCopy = name;
  participantsCopy = participants;
  v15.receiver = self;
  v15.super_class = IMSPISuggestionsObject;
  v12 = [(IMSPISuggestionsObject *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_chatGUID, guid);
    objc_storeStrong(&v13->_displayName, name);
    objc_storeStrong(&v13->_participants, participants);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  chatGUID = [(IMSPISuggestionsObject *)self chatGUID];
  displayName = [(IMSPISuggestionsObject *)self displayName];
  participants = [(IMSPISuggestionsObject *)self participants];
  v7 = [v3 stringWithFormat:@"IMSPISuggestionsObject: %p [Chat guid: %@ DisplayName: %@ Participants: %@]", self, chatGUID, displayName, participants];

  return v7;
}

@end