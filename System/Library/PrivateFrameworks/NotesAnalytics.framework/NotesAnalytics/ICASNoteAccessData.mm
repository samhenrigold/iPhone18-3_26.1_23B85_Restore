@interface ICASNoteAccessData
- (ICASNoteAccessData)initWithIsPasswordProtected:(id)protected isPinned:(id)pinned collaborationStatus:(id)status collaborationType:(id)type;
- (id)toDict;
@end

@implementation ICASNoteAccessData

- (ICASNoteAccessData)initWithIsPasswordProtected:(id)protected isPinned:(id)pinned collaborationStatus:(id)status collaborationType:(id)type
{
  protectedCopy = protected;
  pinnedCopy = pinned;
  statusCopy = status;
  typeCopy = type;
  v18.receiver = self;
  v18.super_class = ICASNoteAccessData;
  v15 = [(ICASNoteAccessData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_isPasswordProtected, protected);
    objc_storeStrong(&v16->_isPinned, pinned);
    objc_storeStrong(&v16->_collaborationStatus, status);
    objc_storeStrong(&v16->_collaborationType, type);
  }

  return v16;
}

- (id)toDict
{
  v18[4] = *MEMORY[0x277D85DE8];
  v17[0] = @"isPasswordProtected";
  isPasswordProtected = [(ICASNoteAccessData *)self isPasswordProtected];
  if (isPasswordProtected)
  {
    isPasswordProtected2 = [(ICASNoteAccessData *)self isPasswordProtected];
  }

  else
  {
    isPasswordProtected2 = objc_opt_new();
  }

  v5 = isPasswordProtected2;
  v18[0] = isPasswordProtected2;
  v17[1] = @"isPinned";
  isPinned = [(ICASNoteAccessData *)self isPinned];
  if (isPinned)
  {
    isPinned2 = [(ICASNoteAccessData *)self isPinned];
  }

  else
  {
    isPinned2 = objc_opt_new();
  }

  v8 = isPinned2;
  v18[1] = isPinned2;
  v17[2] = @"collaborationStatus";
  collaborationStatus = [(ICASNoteAccessData *)self collaborationStatus];
  if (collaborationStatus)
  {
    collaborationStatus2 = [(ICASNoteAccessData *)self collaborationStatus];
  }

  else
  {
    collaborationStatus2 = objc_opt_new();
  }

  v11 = collaborationStatus2;
  v18[2] = collaborationStatus2;
  v17[3] = @"collaborationType";
  collaborationType = [(ICASNoteAccessData *)self collaborationType];
  if (collaborationType)
  {
    collaborationType2 = [(ICASNoteAccessData *)self collaborationType];
  }

  else
  {
    collaborationType2 = objc_opt_new();
  }

  v14 = collaborationType2;
  v18[3] = collaborationType2;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

  return v15;
}

@end