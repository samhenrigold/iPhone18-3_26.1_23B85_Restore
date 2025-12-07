@interface CMContinuityCaptureParticipantInfo
- (BOOL)isEqual:(id)equal;
- (CMContinuityCaptureParticipantInfo)initWithCoder:(id)coder;
- (CMContinuityCaptureParticipantInfo)initWithDictionary:(id)dictionary;
- (CMContinuityCaptureParticipantInfo)initWithMRParticipant:(id)participant;
- (CMContinuityCaptureParticipantInfo)initWithSocialProfileIdentifier:(id)identifier displayName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMContinuityCaptureParticipantInfo

- (CMContinuityCaptureParticipantInfo)initWithMRParticipant:(id)participant
{
  participantCopy = participant;
  identity = [participantCopy identity];
  identifier = [identity identifier];
  identity2 = [participantCopy identity];

  displayName = [identity2 displayName];
  v9 = [CMContinuityCaptureParticipantInfo initWithSocialProfileIdentifier:"initWithSocialProfileIdentifier:displayName:" displayName:?];

  return v9;
}

- (CMContinuityCaptureParticipantInfo)initWithSocialProfileIdentifier:(id)identifier displayName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v9 = nameCopy;
  if (identifierCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CMContinuityCaptureParticipantInfo initWithSocialProfileIdentifier:a2 displayName:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [CMContinuityCaptureParticipantInfo initWithSocialProfileIdentifier:a2 displayName:self];
LABEL_3:
  v16.receiver = self;
  v16.super_class = CMContinuityCaptureParticipantInfo;
  v10 = [(CMContinuityCaptureParticipantInfo *)&v16 init];
  if (v10)
  {
    v11 = [identifierCopy copy];
    socialProfileIdentifier = v10->_socialProfileIdentifier;
    v10->_socialProfileIdentifier = v11;

    v13 = [v9 copy];
    displayName = v10->_displayName;
    v10->_displayName = v13;
  }

  return v10;
}

- (CMContinuityCaptureParticipantInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:?];
  v6 = [dictionaryCopy objectForKey:?];

  v7 = [CMContinuityCaptureParticipantInfo initWithSocialProfileIdentifier:"initWithSocialProfileIdentifier:displayName:" displayName:?];
  return v7;
}

- (CMContinuityCaptureParticipantInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CMContinuityCaptureParticipantInfo;
  v5 = [(CMContinuityCaptureParticipantInfo *)&v11 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [coderCopy decodeObjectOfClass:? forKey:?];
    socialProfileIdentifier = v5->_socialProfileIdentifier;
    v5->_socialProfileIdentifier = v6;

    objc_opt_class();
    v8 = [coderCopy decodeObjectOfClass:? forKey:?];
    displayName = v5->_displayName;
    v5->_displayName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  socialProfileIdentifier = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];
  [coderCopy encodeObject:? forKey:?];

  displayName = [(CMContinuityCaptureParticipantInfo *)self displayName];
  [coderCopy encodeObject:? forKey:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:?];
  socialProfileIdentifier = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];
  v6 = [socialProfileIdentifier copy];
  [v4 setSocialProfileIdentifier:?];

  displayName = [(CMContinuityCaptureParticipantInfo *)self displayName];
  v8 = [displayName copy];
  [v4 setDisplayName:?];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if ([(CMContinuityCaptureParticipantInfo *)equalCopy isMemberOfClass:?])
    {
      v5 = equalCopy;
      displayName = [(CMContinuityCaptureParticipantInfo *)self displayName];
      displayName2 = [(CMContinuityCaptureParticipantInfo *)v5 displayName];
      if (displayName | displayName2 && ![displayName isEqual:?])
      {
        v10 = 0;
      }

      else
      {
        socialProfileIdentifier = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];
        socialProfileIdentifier2 = [(CMContinuityCaptureParticipantInfo *)v5 socialProfileIdentifier];
        if (socialProfileIdentifier | socialProfileIdentifier2)
        {
          v10 = [socialProfileIdentifier isEqual:?];
        }

        else
        {
          v10 = 1;
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  displayName = [(CMContinuityCaptureParticipantInfo *)self displayName];
  socialProfileIdentifier = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];
  v6 = [v3 initWithFormat:displayName, socialProfileIdentifier];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  socialProfileIdentifier = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];

  if (socialProfileIdentifier)
  {
    socialProfileIdentifier2 = [(CMContinuityCaptureParticipantInfo *)self socialProfileIdentifier];
    v6 = [socialProfileIdentifier2 copy];
    [v3 setObject:? forKeyedSubscript:?];
  }

  displayName = [(CMContinuityCaptureParticipantInfo *)self displayName];

  if (displayName)
  {
    displayName2 = [(CMContinuityCaptureParticipantInfo *)self displayName];
    v9 = [displayName2 copy];
    [v3 setObject:? forKeyedSubscript:?];
  }

  return v3;
}

- (void)initWithSocialProfileIdentifier:(uint64_t)a1 displayName:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:@"socialProfileIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)initWithSocialProfileIdentifier:(uint64_t)a1 displayName:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:@"displayName" object:? file:? lineNumber:? description:?];
}

@end