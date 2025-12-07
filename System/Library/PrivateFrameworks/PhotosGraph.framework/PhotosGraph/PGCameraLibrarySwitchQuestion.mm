@interface PGCameraLibrarySwitchQuestion
- (BOOL)isEquivalentToPersistedQuestion:(id)question;
- (BOOL)isEquivalentToQuestion:(id)question;
- (PGCameraLibrarySwitchQuestion)initWithAssetUUID:(id)d libraryScopeUUID:(id)iD previousSwitchState:(id)state currentSwitchState:(id)switchState;
@end

@implementation PGCameraLibrarySwitchQuestion

- (BOOL)isEquivalentToPersistedQuestion:(id)question
{
  questionCopy = question;
  entityIdentifier = [questionCopy entityIdentifier];
  entityIdentifier2 = [(PGCameraLibrarySwitchQuestion *)self entityIdentifier];
  if ([entityIdentifier isEqualToString:entityIdentifier2] && (v7 = objc_msgSend(questionCopy, "entityType"), v7 == -[PGCameraLibrarySwitchQuestion entityType](self, "entityType")))
  {
    type = [questionCopy type];
    v9 = type == -[PGCameraLibrarySwitchQuestion type](self, "type") || [questionCopy type] == 20;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEquivalentToQuestion:(id)question
{
  questionCopy = question;
  entityIdentifier = [questionCopy entityIdentifier];
  entityIdentifier2 = [(PGCameraLibrarySwitchQuestion *)self entityIdentifier];
  if ([entityIdentifier isEqualToString:entityIdentifier2] && (v7 = objc_msgSend(questionCopy, "entityType"), v7 == -[PGCameraLibrarySwitchQuestion entityType](self, "entityType")))
  {
    type = [questionCopy type];
    v9 = type == [(PGCameraLibrarySwitchQuestion *)self type];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PGCameraLibrarySwitchQuestion)initWithAssetUUID:(id)d libraryScopeUUID:(id)iD previousSwitchState:(id)state currentSwitchState:(id)switchState
{
  v22[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  stateCopy = state;
  switchStateCopy = switchState;
  v20.receiver = self;
  v20.super_class = PGCameraLibrarySwitchQuestion;
  v14 = [(PGCameraLibrarySwitchQuestion *)&v20 init];
  if (v14)
  {
    v15 = [dCopy copy];
    entityIdentifier = v14->_entityIdentifier;
    v14->_entityIdentifier = v15;

    v14->_state = 0;
    v21[0] = @"previousCameraLibrarySwitchState";
    v21[1] = @"currentCameraLibrarySwitchState";
    v22[0] = stateCopy;
    v22[1] = switchStateCopy;
    v21[2] = @"libraryScopeUUID";
    v22[2] = iDCopy;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
    additionalInfo = v14->_additionalInfo;
    v14->_additionalInfo = v17;
  }

  return v14;
}

@end