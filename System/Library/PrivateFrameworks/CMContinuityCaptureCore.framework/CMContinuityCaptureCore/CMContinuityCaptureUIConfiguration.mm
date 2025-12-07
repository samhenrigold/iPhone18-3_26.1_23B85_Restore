@interface CMContinuityCaptureUIConfiguration
- (BOOL)isEqual:(id)equal;
- (CMContinuityCaptureUIConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMContinuityCaptureUIConfiguration

- (CMContinuityCaptureUIConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CMContinuityCaptureUIConfiguration;
  v5 = [(CMContinuityCaptureUIConfiguration *)&v17 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [coderCopy decodeObjectOfClass:? forKey:?];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    objc_opt_class();
    v8 = [coderCopy decodeObjectOfClass:? forKey:?];
    clientName = v5->_clientName;
    v5->_clientName = v8;

    objc_opt_class();
    v10 = [coderCopy decodeObjectOfClass:? forKey:?];
    remoteDisplayIdentifier = v5->_remoteDisplayIdentifier;
    v5->_remoteDisplayIdentifier = v10;

    objc_opt_class();
    v12 = [coderCopy decodeObjectOfClass:? forKey:?];
    participantInfo = v5->_participantInfo;
    v5->_participantInfo = v12;

    v5->_clientDeviceModel = [coderCopy decodeIntegerForKey:?];
    v5->_compositeState = [coderCopy decodeIntegerForKey:?];
    objc_opt_class();
    v14 = [coderCopy decodeObjectOfClass:? forKey:?];
    placementStepSkipped = v5->_placementStepSkipped;
    v5->_placementStepSkipped = v14;

    v5->_isDedicated = [coderCopy decodeBoolForKey:?];
    v5->_micOnly = [coderCopy decodeBoolForKey:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  applicationIdentifier = [(CMContinuityCaptureUIConfiguration *)self applicationIdentifier];
  [coderCopy encodeObject:? forKey:?];

  clientName = [(CMContinuityCaptureUIConfiguration *)self clientName];
  [coderCopy encodeObject:? forKey:?];

  remoteDisplayIdentifier = [(CMContinuityCaptureUIConfiguration *)self remoteDisplayIdentifier];
  [coderCopy encodeObject:? forKey:?];

  participantInfo = [(CMContinuityCaptureUIConfiguration *)self participantInfo];
  [coderCopy encodeObject:? forKey:?];

  [(CMContinuityCaptureUIConfiguration *)self clientDeviceModel];
  [coderCopy encodeInteger:? forKey:?];
  [(CMContinuityCaptureUIConfiguration *)self compositeState];
  [coderCopy encodeInteger:? forKey:?];
  placementStepSkipped = [(CMContinuityCaptureUIConfiguration *)self placementStepSkipped];
  [coderCopy encodeObject:? forKey:?];

  [(CMContinuityCaptureUIConfiguration *)self isDedicated];
  [coderCopy encodeBool:? forKey:?];
  [(CMContinuityCaptureUIConfiguration *)self micOnly];
  [coderCopy encodeBool:? forKey:?];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:v5, self];

  applicationIdentifier = [(CMContinuityCaptureUIConfiguration *)self applicationIdentifier];
  [v6 appendFormat:applicationIdentifier];

  clientName = [(CMContinuityCaptureUIConfiguration *)self clientName];
  [v6 appendFormat:clientName];

  remoteDisplayIdentifier = [(CMContinuityCaptureUIConfiguration *)self remoteDisplayIdentifier];
  [v6 appendFormat:remoteDisplayIdentifier];

  participantInfo = [(CMContinuityCaptureUIConfiguration *)self participantInfo];
  [v6 appendFormat:participantInfo];

  [v6 appendFormat:-[CMContinuityCaptureUIConfiguration clientDeviceModel](self, "clientDeviceModel")];
  [v6 appendFormat:-[CMContinuityCaptureUIConfiguration compositeState](self, "compositeState")];
  placementStepSkipped = [(CMContinuityCaptureUIConfiguration *)self placementStepSkipped];
  [v6 appendFormat:placementStepSkipped];

  [v6 appendFormat:-[CMContinuityCaptureUIConfiguration isDedicated](self, "isDedicated")];
  [v6 appendFormat:-[CMContinuityCaptureUIConfiguration micOnly](self, "micOnly")];
  [v6 appendString:?];
  v12 = [MEMORY[0x277CCACA8] stringWithString:?];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:?];
  applicationIdentifier = [(CMContinuityCaptureUIConfiguration *)self applicationIdentifier];
  [v4 setApplicationIdentifier:?];

  clientName = [(CMContinuityCaptureUIConfiguration *)self clientName];
  [v4 setClientName:?];

  remoteDisplayIdentifier = [(CMContinuityCaptureUIConfiguration *)self remoteDisplayIdentifier];
  [v4 setRemoteDisplayIdentifier:?];

  participantInfo = [(CMContinuityCaptureUIConfiguration *)self participantInfo];
  v9 = [participantInfo copy];
  [v4 setParticipantInfo:?];

  [(CMContinuityCaptureUIConfiguration *)self clientDeviceModel];
  [v4 setClientDeviceModel:?];
  [(CMContinuityCaptureUIConfiguration *)self compositeState];
  [v4 setCompositeState:?];
  placementStepSkipped = [(CMContinuityCaptureUIConfiguration *)self placementStepSkipped];
  [v4 setPlacementStepSkipped:?];

  [(CMContinuityCaptureUIConfiguration *)self isDedicated];
  [v4 setIsDedicated:?];
  [(CMContinuityCaptureUIConfiguration *)self micOnly];
  [v4 setMicOnly:?];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v19) = 1;
  }

  else
  {
    objc_opt_class();
    if ([(CMContinuityCaptureUIConfiguration *)equalCopy isMemberOfClass:?])
    {
      v5 = equalCopy;
      applicationIdentifier = [(CMContinuityCaptureUIConfiguration *)v5 applicationIdentifier];
      applicationIdentifier2 = [(CMContinuityCaptureUIConfiguration *)self applicationIdentifier];
      v8 = [applicationIdentifier isEqual:?];

      if (!v8)
      {
        goto LABEL_18;
      }

      clientName = [(CMContinuityCaptureUIConfiguration *)v5 clientName];
      clientName2 = [(CMContinuityCaptureUIConfiguration *)self clientName];
      v11 = [clientName isEqual:?];

      if (!v11)
      {
        goto LABEL_18;
      }

      remoteDisplayIdentifier = [(CMContinuityCaptureUIConfiguration *)v5 remoteDisplayIdentifier];
      remoteDisplayIdentifier2 = [(CMContinuityCaptureUIConfiguration *)self remoteDisplayIdentifier];
      v14 = [remoteDisplayIdentifier isEqualToString:?];

      if (!v14)
      {
        goto LABEL_18;
      }

      participantInfo = [(CMContinuityCaptureUIConfiguration *)v5 participantInfo];
      if (participantInfo || ([(CMContinuityCaptureUIConfiguration *)self participantInfo], (remoteDisplayIdentifier2 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        participantInfo2 = [(CMContinuityCaptureUIConfiguration *)v5 participantInfo];
        participantInfo3 = [(CMContinuityCaptureUIConfiguration *)self participantInfo];
        v18 = [participantInfo2 isEqual:?];

        if (participantInfo)
        {

          if (!v18)
          {
            goto LABEL_18;
          }
        }

        else
        {

          if ((v18 & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      clientDeviceModel = [(CMContinuityCaptureUIConfiguration *)v5 clientDeviceModel];
      if (clientDeviceModel == [(CMContinuityCaptureUIConfiguration *)self clientDeviceModel])
      {
        compositeState = [(CMContinuityCaptureUIConfiguration *)v5 compositeState];
        if (compositeState == [(CMContinuityCaptureUIConfiguration *)self compositeState])
        {
          placementStepSkipped = [(CMContinuityCaptureUIConfiguration *)v5 placementStepSkipped];
          placementStepSkipped2 = [(CMContinuityCaptureUIConfiguration *)self placementStepSkipped];

          if (placementStepSkipped == placementStepSkipped2)
          {
            isDedicated = [(CMContinuityCaptureUIConfiguration *)v5 isDedicated];
            if (isDedicated == [(CMContinuityCaptureUIConfiguration *)self isDedicated])
            {
              micOnly = [(CMContinuityCaptureUIConfiguration *)v5 micOnly];
              v19 = micOnly ^ [(CMContinuityCaptureUIConfiguration *)self micOnly]^ 1;
              goto LABEL_19;
            }
          }
        }
      }

LABEL_18:
      LOBYTE(v19) = 0;
LABEL_19:

      goto LABEL_20;
    }

    LOBYTE(v19) = 0;
  }

LABEL_20:

  return v19;
}

@end