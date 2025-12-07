@interface TUConversationActivitySession
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationActivitySession:(id)session;
- (TUConversationActivitySession)initWithActivity:(id)activity locallyInitiated:(BOOL)initiated timestamp:(id)timestamp isFirstJoin:(BOOL)join;
- (TUConversationActivitySession)initWithActivity:(id)activity state:(unint64_t)state endpoint:(id)endpoint locallyInitiated:(BOOL)initiated timestamp:(id)timestamp isFirstJoin:(BOOL)join;
- (TUConversationActivitySession)initWithActivity:(id)activity state:(unint64_t)state uuid:(id)uuid endpoint:(id)endpoint locallyInitiated:(BOOL)initiated timestamp:(id)timestamp isFirstJoin:(BOOL)join activeRemoteParticipants:(id)self0 isLocalParticipantActive:(BOOL)self1 applicationState:(unint64_t)self2;
- (TUConversationActivitySession)initWithActivity:(id)activity uuid:(id)uuid locallyInitiated:(BOOL)initiated timestamp:(id)timestamp isFirstJoin:(BOOL)join;
- (TUConversationActivitySession)initWithCoder:(id)coder;
- (TUConversationActivitySession)initWithTUConversationActivitySession:(id)session;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)publicCopy;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)launchApplicationWithForcedURL:(id)l completion:(id)completion;
- (void)setPersistentSceneIdentifier:(id)identifier;
@end

@implementation TUConversationActivitySession

- (TUConversationActivitySession)initWithActivity:(id)activity state:(unint64_t)state uuid:(id)uuid endpoint:(id)endpoint locallyInitiated:(BOOL)initiated timestamp:(id)timestamp isFirstJoin:(BOOL)join activeRemoteParticipants:(id)self0 isLocalParticipantActive:(BOOL)self1 applicationState:(unint64_t)self2
{
  activityCopy = activity;
  uuidCopy = uuid;
  endpointCopy = endpoint;
  timestampCopy = timestamp;
  participantsCopy = participants;
  v30.receiver = self;
  v30.super_class = TUConversationActivitySession;
  v21 = [(TUConversationActivitySession *)&v30 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_UUID, uuid);
    objc_storeStrong(&v22->_activity, activity);
    v22->_state = state;
    objc_storeStrong(&v22->_endpoint, endpoint);
    v22->_isLocallyInitiated = initiated;
    v22->_isLightweightPrimaryInitiated = 0;
    v22->_isStageInitiated = 0;
    objc_storeStrong(&v22->_timestamp, timestamp);
    v22->_isFirstJoin = join;
    objc_storeStrong(&v22->_activeRemoteParticipants, participants);
    v22->_localParticipantActive = active;
    v22->_permittedToJoin = 0;
    v22->_usingAirplay = 0;
    v22->_distributionCount = 0;
    v22->_applicationState = applicationState;
    v23 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    persistentSceneIdentifiers = v22->_persistentSceneIdentifiers;
    v22->_persistentSceneIdentifiers = v23;

    primarySceneAssociationIdentifier = v22->_primarySceneAssociationIdentifier;
    v22->_primarySceneAssociationIdentifier = 0;

    v22->_didAssociateScene = 0;
  }

  return v22;
}

- (TUConversationActivitySession)initWithTUConversationActivitySession:(id)session
{
  sessionCopy = session;
  v31.receiver = self;
  v31.super_class = TUConversationActivitySession;
  v5 = [(TUConversationActivitySession *)&v31 init];
  if (v5)
  {
    uUID = [sessionCopy UUID];
    UUID = v5->_UUID;
    v5->_UUID = uUID;

    activity = [sessionCopy activity];
    activity = v5->_activity;
    v5->_activity = activity;

    v5->_state = [sessionCopy state];
    endpoint = [sessionCopy endpoint];
    endpoint = v5->_endpoint;
    v5->_endpoint = endpoint;

    v5->_isLocallyInitiated = [sessionCopy isLocallyInitiated];
    v5->_isLightweightPrimaryInitiated = [sessionCopy isLightweightPrimaryInitiated];
    v5->_isStageInitiated = [sessionCopy isStageInitiated];
    timestamp = [sessionCopy timestamp];
    timestamp = v5->_timestamp;
    v5->_timestamp = timestamp;

    v5->_isFirstJoin = [sessionCopy isFirstJoin];
    activeRemoteParticipants = [sessionCopy activeRemoteParticipants];
    activeRemoteParticipants = v5->_activeRemoteParticipants;
    v5->_activeRemoteParticipants = activeRemoteParticipants;

    v5->_localParticipantActive = [sessionCopy isLocalParticipantActive];
    v5->_distributionCount = [sessionCopy distributionCount];
    v5->_permittedToJoin = [sessionCopy isPermittedToJoin];
    v5->_usingAirplay = [sessionCopy isUsingAirplay];
    v5->_persistentSceneIsEligibleForAutoClose = [sessionCopy persistentSceneIsEligibleForAutoClose];
    persistentSceneIdentifiers = [sessionCopy persistentSceneIdentifiers];
    persistentSceneIdentifiers = v5->_persistentSceneIdentifiers;
    v5->_persistentSceneIdentifiers = persistentSceneIdentifiers;

    primarySceneAssociationIdentifier = [sessionCopy primarySceneAssociationIdentifier];
    primarySceneAssociationIdentifier = v5->_primarySceneAssociationIdentifier;
    v5->_primarySceneAssociationIdentifier = primarySceneAssociationIdentifier;

    v5->_didAssociateScene = [sessionCopy didAssociateScene];
    v5->_applicationState = [sessionCopy applicationState];
    clientAudioSessionID = [sessionCopy clientAudioSessionID];
    clientAudioSessionID = v5->_clientAudioSessionID;
    v5->_clientAudioSessionID = clientAudioSessionID;

    externalParticipants = [sessionCopy externalParticipants];
    externalParticipants = v5->_externalParticipants;
    v5->_externalParticipants = externalParticipants;

    localCreationTimestamp = [sessionCopy localCreationTimestamp];
    localCreationTimestamp = v5->_localCreationTimestamp;
    v5->_localCreationTimestamp = localCreationTimestamp;

    permittedJoinTimestamp = [sessionCopy permittedJoinTimestamp];
    permittedJoinTimestamp = v5->_permittedJoinTimestamp;
    v5->_permittedJoinTimestamp = permittedJoinTimestamp;

    participantIdentifierMap = [sessionCopy participantIdentifierMap];
    participantIdentifierMap = v5->_participantIdentifierMap;
    v5->_participantIdentifierMap = participantIdentifierMap;
  }

  return v5;
}

- (TUConversationActivitySession)initWithActivity:(id)activity state:(unint64_t)state endpoint:(id)endpoint locallyInitiated:(BOOL)initiated timestamp:(id)timestamp isFirstJoin:(BOOL)join
{
  initiatedCopy = initiated;
  v14 = MEMORY[0x1E696AFB0];
  timestampCopy = timestamp;
  endpointCopy = endpoint;
  activityCopy = activity;
  v18 = objc_alloc_init(v14);
  v19 = [MEMORY[0x1E695DFD8] set];
  LOBYTE(v23) = 0;
  LOBYTE(v22) = join;
  v20 = [(TUConversationActivitySession *)self initWithActivity:activityCopy state:state uuid:v18 endpoint:endpointCopy locallyInitiated:initiatedCopy timestamp:timestampCopy isFirstJoin:v22 activeRemoteParticipants:v19 isLocalParticipantActive:v23 applicationState:1];

  return v20;
}

- (TUConversationActivitySession)initWithActivity:(id)activity uuid:(id)uuid locallyInitiated:(BOOL)initiated timestamp:(id)timestamp isFirstJoin:(BOOL)join
{
  initiatedCopy = initiated;
  v12 = MEMORY[0x1E695DFD8];
  timestampCopy = timestamp;
  uuidCopy = uuid;
  activityCopy = activity;
  v16 = [v12 set];
  LOBYTE(v20) = 0;
  LOBYTE(v19) = join;
  v17 = [(TUConversationActivitySession *)self initWithActivity:activityCopy state:0 uuid:uuidCopy endpoint:0 locallyInitiated:initiatedCopy timestamp:timestampCopy isFirstJoin:v19 activeRemoteParticipants:v16 isLocalParticipantActive:v20 applicationState:1];

  return v17;
}

- (TUConversationActivitySession)initWithActivity:(id)activity locallyInitiated:(BOOL)initiated timestamp:(id)timestamp isFirstJoin:(BOOL)join
{
  joinCopy = join;
  initiatedCopy = initiated;
  v10 = MEMORY[0x1E696AFB0];
  timestampCopy = timestamp;
  activityCopy = activity;
  v13 = objc_alloc_init(v10);
  v14 = [(TUConversationActivitySession *)self initWithActivity:activityCopy uuid:v13 locallyInitiated:initiatedCopy timestamp:timestampCopy isFirstJoin:joinCopy];

  return v14;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  activity = [(TUConversationActivitySession *)self activity];
  [v3 appendFormat:@" activity=%@", activity];

  [v3 appendFormat:@" state=%lu", -[TUConversationActivitySession state](self, "state")];
  uUID = [(TUConversationActivitySession *)self UUID];
  [v3 appendFormat:@" UUID=%@", uUID];

  timestamp = [(TUConversationActivitySession *)self timestamp];
  [v3 appendFormat:@" timestamp=%@", timestamp];

  endpoint = [(TUConversationActivitySession *)self endpoint];
  [v3 appendFormat:@" endpoint=%@", endpoint];

  clientAudioSessionID = [(TUConversationActivitySession *)self clientAudioSessionID];
  [v3 appendFormat:@" audioSessionID=%@", clientAudioSessionID];

  if ([(TUConversationActivitySession *)self isLocallyInitiated])
  {
    [v3 appendFormat:@" isLocallyInitiated=%d", -[TUConversationActivitySession isLocallyInitiated](self, "isLocallyInitiated")];
  }

  if ([(TUConversationActivitySession *)self isLightweightPrimaryInitiated])
  {
    [v3 appendFormat:@" isLightweightPrimaryInitiated=%d", -[TUConversationActivitySession isLightweightPrimaryInitiated](self, "isLightweightPrimaryInitiated")];
  }

  if ([(TUConversationActivitySession *)self isStageInitiated])
  {
    [v3 appendFormat:@" isStageInitiated=%d", -[TUConversationActivitySession isStageInitiated](self, "isStageInitiated")];
  }

  if ([(TUConversationActivitySession *)self isFirstJoin])
  {
    [v3 appendFormat:@" isFirstJoin=%d", -[TUConversationActivitySession isFirstJoin](self, "isFirstJoin")];
  }

  if ([(TUConversationActivitySession *)self isPermittedToJoin])
  {
    [v3 appendFormat:@" isPermittedToJoin=%d", -[TUConversationActivitySession isPermittedToJoin](self, "isPermittedToJoin")];
  }

  if ([(TUConversationActivitySession *)self isUsingAirplay])
  {
    [v3 appendFormat:@" isUsingAirplay=%d", -[TUConversationActivitySession isUsingAirplay](self, "isUsingAirplay")];
  }

  if ([(TUConversationActivitySession *)self isLocalParticipantActive])
  {
    [v3 appendFormat:@" isLocalParticipantActive=%d", -[TUConversationActivitySession isLocalParticipantActive](self, "isLocalParticipantActive")];
  }

  activeRemoteParticipants = [(TUConversationActivitySession *)self activeRemoteParticipants];
  v10 = [activeRemoteParticipants count];

  if (v10)
  {
    activeRemoteParticipants2 = [(TUConversationActivitySession *)self activeRemoteParticipants];
    allObjects = [activeRemoteParticipants2 allObjects];
    v13 = [allObjects componentsJoinedByString:{@", "}];
    [v3 appendFormat:@" activeRemoteParticipants=%@", v13];
  }

  if ([(TUConversationActivitySession *)self distributionCount])
  {
    [v3 appendFormat:@" distributionCount=%ld", -[TUConversationActivitySession distributionCount](self, "distributionCount")];
  }

  persistentSceneIdentifiers = [(TUConversationActivitySession *)self persistentSceneIdentifiers];

  if (persistentSceneIdentifiers)
  {
    persistentSceneIdentifiers2 = [(TUConversationActivitySession *)self persistentSceneIdentifiers];
    [v3 appendFormat:@" persistentSceneIdentifiers=%@", persistentSceneIdentifiers2];
  }

  primarySceneAssociationIdentifier = [(TUConversationActivitySession *)self primarySceneAssociationIdentifier];

  if (primarySceneAssociationIdentifier)
  {
    primarySceneAssociationIdentifier2 = [(TUConversationActivitySession *)self primarySceneAssociationIdentifier];
    [v3 appendFormat:@" primarySceneAssociationIdentifier=%@", primarySceneAssociationIdentifier2];
  }

  if ([(TUConversationActivitySession *)self didAssociateScene])
  {
    [v3 appendFormat:@" didAssociateScene=%d", -[TUConversationActivitySession didAssociateScene](self, "didAssociateScene")];
  }

  if ([(TUConversationActivitySession *)self persistentSceneIsEligibleForAutoClose])
  {
    [v3 appendFormat:@" persistentSceneIsEligibleForAutoClose=%d", -[TUConversationActivitySession persistentSceneIsEligibleForAutoClose](self, "persistentSceneIsEligibleForAutoClose")];
  }

  [v3 appendFormat:@" applicationState=%lu", -[TUConversationActivitySession applicationState](self, "applicationState")];
  externalParticipants = [(TUConversationActivitySession *)self externalParticipants];
  [v3 appendFormat:@" externalParticipants=%@", externalParticipants];

  [v3 appendString:@">"];
  v19 = [v3 copy];

  return v19;
}

- (void)setPersistentSceneIdentifier:(id)identifier
{
  v8 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = MEMORY[0x1E695DEC8];
  identifierCopy2 = identifier;
  v6 = [v4 arrayWithObjects:&identifierCopy count:1];

  [(TUConversationActivitySession *)self setPersistentSceneIdentifiers:v6, identifierCopy, v8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationActivitySession *)self isEqualToConversationActivitySession:equalCopy];

  return v5;
}

- (BOOL)isEqualToConversationActivitySession:(id)session
{
  sessionCopy = session;
  uUID = [(TUConversationActivitySession *)self UUID];
  uUID2 = [sessionCopy UUID];
  if ([uUID isEqual:uUID2])
  {
    timestamp = [(TUConversationActivitySession *)self timestamp];
    [timestamp timeIntervalSince1970];
    v9 = v8;
    timestamp2 = [sessionCopy timestamp];
    [timestamp2 timeIntervalSince1970];
    if (v9 == v11 && (v12 = -[TUConversationActivitySession state](self, "state"), v12 == [sessionCopy state]))
    {
      endpoint = [(TUConversationActivitySession *)self endpoint];
      endpoint2 = [sessionCopy endpoint];
      if (endpoint == endpoint2 && (v15 = -[TUConversationActivitySession isLocallyInitiated](self, "isLocallyInitiated"), v15 == [sessionCopy isLocallyInitiated]) && (v16 = -[TUConversationActivitySession isLightweightPrimaryInitiated](self, "isLightweightPrimaryInitiated"), v16 == objc_msgSend(sessionCopy, "isLightweightPrimaryInitiated")) && (v17 = -[TUConversationActivitySession isStageInitiated](self, "isStageInitiated"), v17 == objc_msgSend(sessionCopy, "isStageInitiated")) && (v18 = -[TUConversationActivitySession isFirstJoin](self, "isFirstJoin"), v18 == objc_msgSend(sessionCopy, "isFirstJoin")) && (v19 = -[TUConversationActivitySession isPermittedToJoin](self, "isPermittedToJoin"), v19 == objc_msgSend(sessionCopy, "isPermittedToJoin")))
      {
        activeRemoteParticipants = [(TUConversationActivitySession *)self activeRemoteParticipants];
        activeRemoteParticipants2 = [sessionCopy activeRemoteParticipants];
        if (TUObjectsAreEqualOrNil(activeRemoteParticipants, activeRemoteParticipants2))
        {
          v46 = activeRemoteParticipants;
          isLocalParticipantActive = [(TUConversationActivitySession *)self isLocalParticipantActive];
          if (isLocalParticipantActive == [sessionCopy isLocalParticipantActive] && (v25 = -[TUConversationActivitySession persistentSceneIsEligibleForAutoClose](self, "persistentSceneIsEligibleForAutoClose"), v25 == objc_msgSend(sessionCopy, "persistentSceneIsEligibleForAutoClose")))
          {
            externalParticipants = [(TUConversationActivitySession *)self externalParticipants];
            externalParticipants2 = [sessionCopy externalParticipants];
            v45 = externalParticipants;
            v28 = externalParticipants == externalParticipants2;
            activeRemoteParticipants = v46;
            if (v28)
            {
              v44 = externalParticipants2;
              persistentSceneIdentifiers = [(TUConversationActivitySession *)self persistentSceneIdentifiers];
              persistentSceneIdentifiers2 = [sessionCopy persistentSceneIdentifiers];
              v43 = persistentSceneIdentifiers;
              if (TUObjectsAreEqualOrNil(persistentSceneIdentifiers, persistentSceneIdentifiers2))
              {
                primarySceneAssociationIdentifier = [(TUConversationActivitySession *)self primarySceneAssociationIdentifier];
                primarySceneAssociationIdentifier2 = [sessionCopy primarySceneAssociationIdentifier];
                v41 = primarySceneAssociationIdentifier;
                if (TUObjectsAreEqualOrNil(primarySceneAssociationIdentifier, primarySceneAssociationIdentifier2) && (v31 = -[TUConversationActivitySession didAssociateScene](self, "didAssociateScene"), v31 == [sessionCopy didAssociateScene]) && (v32 = -[TUConversationActivitySession distributionCount](self, "distributionCount"), v32 == objc_msgSend(sessionCopy, "distributionCount")) && (v33 = -[TUConversationActivitySession isUsingAirplay](self, "isUsingAirplay"), v33 == objc_msgSend(sessionCopy, "isUsingAirplay")) && (v34 = -[TUConversationActivitySession applicationState](self, "applicationState"), v34 == objc_msgSend(sessionCopy, "applicationState")))
                {
                  clientAudioSessionID = [(TUConversationActivitySession *)self clientAudioSessionID];
                  clientAudioSessionID2 = [sessionCopy clientAudioSessionID];
                  v39 = clientAudioSessionID;
                  if (clientAudioSessionID == clientAudioSessionID2)
                  {
                    participantIdentifierMap = [(TUConversationActivitySession *)self participantIdentifierMap];
                    participantIdentifierMap2 = [sessionCopy participantIdentifierMap];
                    v20 = TUObjectsAreEqualOrNil(participantIdentifierMap, participantIdentifierMap2);
                  }

                  else
                  {
                    v20 = 0;
                  }
                }

                else
                {
                  v20 = 0;
                }
              }

              else
              {
                v20 = 0;
              }

              activeRemoteParticipants = v46;
              externalParticipants2 = v44;
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            v20 = 0;
            activeRemoteParticipants = v46;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (unint64_t)hash
{
  uUID = [(TUConversationActivitySession *)self UUID];
  v3 = [uUID hash];
  activity = [(TUConversationActivitySession *)self activity];
  v4 = [activity hash] ^ v3;
  timestamp = [(TUConversationActivitySession *)self timestamp];
  v6 = [timestamp hash];
  v7 = v4 ^ v6 ^ [(TUConversationActivitySession *)self state];
  endpoint = [(TUConversationActivitySession *)self endpoint];
  v9 = [endpoint hash];
  if ([(TUConversationActivitySession *)self isLocallyInitiated])
  {
    v10 = 1231;
  }

  else
  {
    v10 = 1237;
  }

  v11 = v7 ^ v9 ^ v10;
  if ([(TUConversationActivitySession *)self isLightweightPrimaryInitiated])
  {
    v12 = 1231;
  }

  else
  {
    v12 = 1237;
  }

  if ([(TUConversationActivitySession *)self isStageInitiated])
  {
    v13 = 1231;
  }

  else
  {
    v13 = 1237;
  }

  v14 = v12 ^ v13;
  if ([(TUConversationActivitySession *)self isFirstJoin])
  {
    v15 = 1231;
  }

  else
  {
    v15 = 1237;
  }

  v16 = v11 ^ v14 ^ v15;
  if ([(TUConversationActivitySession *)self isPermittedToJoin])
  {
    v17 = 1231;
  }

  else
  {
    v17 = 1237;
  }

  activeRemoteParticipants = [(TUConversationActivitySession *)self activeRemoteParticipants];
  v19 = v17 ^ [activeRemoteParticipants hash];
  if ([(TUConversationActivitySession *)self isLocalParticipantActive])
  {
    v20 = 1231;
  }

  else
  {
    v20 = 1237;
  }

  v21 = v19 ^ v20;
  if ([(TUConversationActivitySession *)self persistentSceneIsEligibleForAutoClose])
  {
    v22 = 1231;
  }

  else
  {
    v22 = 1237;
  }

  v23 = v16 ^ v21 ^ v22;
  persistentSceneIdentifiers = [(TUConversationActivitySession *)self persistentSceneIdentifiers];
  v25 = [persistentSceneIdentifiers hash];
  primarySceneAssociationIdentifier = [(TUConversationActivitySession *)self primarySceneAssociationIdentifier];
  v27 = v25 ^ [primarySceneAssociationIdentifier hash];
  if ([(TUConversationActivitySession *)self didAssociateScene])
  {
    v28 = 1231;
  }

  else
  {
    v28 = 1237;
  }

  v29 = v27 ^ v28 ^ [(TUConversationActivitySession *)self distributionCount];
  if ([(TUConversationActivitySession *)self isUsingAirplay])
  {
    v30 = 1231;
  }

  else
  {
    v30 = 1237;
  }

  v31 = v23 ^ v29 ^ v30 ^ [(TUConversationActivitySession *)self applicationState];
  clientAudioSessionID = [(TUConversationActivitySession *)self clientAudioSessionID];
  v33 = [clientAudioSessionID hash];
  participantIdentifierMap = [(TUConversationActivitySession *)self participantIdentifierMap];
  v35 = v33 ^ [participantIdentifierMap hash];
  externalParticipants = [(TUConversationActivitySession *)self externalParticipants];
  v37 = v35 ^ [externalParticipants hash];

  return v31 ^ v37;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUConversationActivitySession allocWithZone:zone];

  return [(TUConversationActivitySession *)v4 initWithTUConversationActivitySession:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TUMutableConversationActivitySession allocWithZone:zone];

  return [(TUConversationActivitySession *)v4 initWithTUConversationActivitySession:self];
}

- (TUConversationActivitySession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_opt_class();
  v5 = NSStringFromSelector(sel_activity);
  v61 = [coderCopy decodeObjectOfClass:v4 forKey:v5];

  v6 = NSStringFromSelector(sel_state);
  v60 = [coderCopy decodeIntegerForKey:v6];

  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_endpoint);
  v63 = [coderCopy decodeObjectOfClass:v7 forKey:v8];

  v9 = NSStringFromSelector(sel_isLocallyInitiated);
  v10 = [coderCopy decodeBoolForKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_UUID);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = objc_opt_class();
  v15 = NSStringFromSelector(sel_timestamp);
  v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];

  v17 = NSStringFromSelector(sel_isFirstJoin);
  v18 = [coderCopy decodeBoolForKey:v17];

  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  v22 = NSStringFromSelector(sel_activeRemoteParticipants);
  v23 = [coderCopy decodeObjectOfClasses:v21 forKey:v22];

  v24 = NSStringFromSelector(sel_isLocalParticipantActive);
  LOBYTE(v22) = [coderCopy decodeBoolForKey:v24];

  v25 = NSStringFromSelector(sel_applicationState);
  v26 = [coderCopy decodeIntegerForKey:v25];

  LOBYTE(v59) = v22;
  LOBYTE(v58) = v18;
  v27 = [(TUConversationActivitySession *)self initWithActivity:v61 state:v60 uuid:v13 endpoint:v63 locallyInitiated:v10 timestamp:v16 isFirstJoin:v58 activeRemoteParticipants:v23 isLocalParticipantActive:v59 applicationState:v26];
  v28 = NSStringFromSelector(sel_distributionCount);
  -[TUConversationActivitySession setDistributionCount:](v27, "setDistributionCount:", [coderCopy decodeIntegerForKey:v28]);

  v29 = NSStringFromSelector(sel_isLightweightPrimaryInitiated);
  -[TUConversationActivitySession setIsLightweightPrimaryInitiated:](v27, "setIsLightweightPrimaryInitiated:", [coderCopy decodeBoolForKey:v29]);

  v30 = NSStringFromSelector(sel_isStageInitiated);
  -[TUConversationActivitySession setIsStageInitiated:](v27, "setIsStageInitiated:", [coderCopy decodeBoolForKey:v30]);

  v31 = NSStringFromSelector(sel_isPermittedToJoin);
  -[TUConversationActivitySession setPermittedToJoin:](v27, "setPermittedToJoin:", [coderCopy decodeBoolForKey:v31]);

  v32 = NSStringFromSelector(sel_persistentSceneIsEligibleForAutoClose);
  -[TUConversationActivitySession setPersistentSceneIsEligibleForAutoClose:](v27, "setPersistentSceneIsEligibleForAutoClose:", [coderCopy decodeBoolForKey:v32]);

  v33 = objc_opt_class();
  v34 = NSStringFromSelector(sel_externalParticipants);
  v35 = [coderCopy decodeArrayOfObjectsOfClass:v33 forKey:v34];
  [(TUConversationActivitySession *)v27 setExternalParticipants:v35];

  v36 = NSStringFromSelector(sel_isUsingAirplay);
  -[TUConversationActivitySession setUsingAirplay:](v27, "setUsingAirplay:", [coderCopy decodeBoolForKey:v36]);

  v37 = objc_opt_class();
  v38 = NSStringFromSelector(sel_persistentSceneIdentifiers);
  v39 = [coderCopy decodeArrayOfObjectsOfClass:v37 forKey:v38];
  [(TUConversationActivitySession *)v27 setPersistentSceneIdentifiers:v39];

  v40 = objc_opt_class();
  v41 = NSStringFromSelector(sel_primarySceneAssociationIdentifier);
  v42 = [coderCopy decodeObjectOfClass:v40 forKey:v41];
  [(TUConversationActivitySession *)v27 setPrimarySceneAssociationIdentifier:v42];

  v43 = NSStringFromSelector(sel_didAssociateScene);
  -[TUConversationActivitySession setDidAssociateScene:](v27, "setDidAssociateScene:", [coderCopy decodeBoolForKey:v43]);

  v44 = objc_opt_class();
  v45 = NSStringFromSelector(sel_clientAudioSessionID);
  v46 = [coderCopy decodeObjectOfClass:v44 forKey:v45];
  [(TUConversationActivitySession *)v27 setClientAudioSessionID:v46];

  v47 = objc_opt_class();
  v48 = NSStringFromSelector(sel_localCreationTimestamp);
  v49 = [coderCopy decodeObjectOfClass:v47 forKey:v48];
  [(TUConversationActivitySession *)v27 setLocalCreationTimestamp:v49];

  v50 = objc_opt_class();
  v51 = NSStringFromSelector(sel_permittedJoinTimestamp);
  v52 = [coderCopy decodeObjectOfClass:v50 forKey:v51];
  [(TUConversationActivitySession *)v27 setPermittedJoinTimestamp:v52];

  v53 = objc_opt_class();
  v54 = objc_opt_class();
  v55 = NSStringFromSelector(sel_participantIdentifierMap);
  v56 = [coderCopy decodeDictionaryWithKeysOfClass:v53 objectsOfClass:v54 forKey:v55];

  [(TUConversationActivitySession *)v27 setParticipantIdentifierMap:v56];
  return v27;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(TUConversationActivitySession *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v6];

  timestamp = [(TUConversationActivitySession *)self timestamp];
  v8 = NSStringFromSelector(sel_timestamp);
  [coderCopy encodeObject:timestamp forKey:v8];

  activity = [(TUConversationActivitySession *)self activity];
  v10 = NSStringFromSelector(sel_activity);
  [coderCopy encodeObject:activity forKey:v10];

  state = [(TUConversationActivitySession *)self state];
  v12 = NSStringFromSelector(sel_state);
  [coderCopy encodeInteger:state forKey:v12];

  endpoint = [(TUConversationActivitySession *)self endpoint];
  v14 = NSStringFromSelector(sel_endpoint);
  [coderCopy encodeObject:endpoint forKey:v14];

  isLocallyInitiated = [(TUConversationActivitySession *)self isLocallyInitiated];
  v16 = NSStringFromSelector(sel_isLocallyInitiated);
  [coderCopy encodeBool:isLocallyInitiated forKey:v16];

  isLightweightPrimaryInitiated = [(TUConversationActivitySession *)self isLightweightPrimaryInitiated];
  v18 = NSStringFromSelector(sel_isLightweightPrimaryInitiated);
  [coderCopy encodeBool:isLightweightPrimaryInitiated forKey:v18];

  isStageInitiated = [(TUConversationActivitySession *)self isStageInitiated];
  v20 = NSStringFromSelector(sel_isStageInitiated);
  [coderCopy encodeBool:isStageInitiated forKey:v20];

  isFirstJoin = [(TUConversationActivitySession *)self isFirstJoin];
  v22 = NSStringFromSelector(sel_isFirstJoin);
  [coderCopy encodeBool:isFirstJoin forKey:v22];

  activeRemoteParticipants = [(TUConversationActivitySession *)self activeRemoteParticipants];
  v24 = NSStringFromSelector(sel_activeRemoteParticipants);
  [coderCopy encodeObject:activeRemoteParticipants forKey:v24];

  isLocalParticipantActive = [(TUConversationActivitySession *)self isLocalParticipantActive];
  v26 = NSStringFromSelector(sel_isLocalParticipantActive);
  [coderCopy encodeBool:isLocalParticipantActive forKey:v26];

  distributionCount = [(TUConversationActivitySession *)self distributionCount];
  v28 = NSStringFromSelector(sel_distributionCount);
  [coderCopy encodeInteger:distributionCount forKey:v28];

  isPermittedToJoin = [(TUConversationActivitySession *)self isPermittedToJoin];
  v30 = NSStringFromSelector(sel_isPermittedToJoin);
  [coderCopy encodeBool:isPermittedToJoin forKey:v30];

  persistentSceneIsEligibleForAutoClose = [(TUConversationActivitySession *)self persistentSceneIsEligibleForAutoClose];
  v32 = NSStringFromSelector(sel_persistentSceneIsEligibleForAutoClose);
  [coderCopy encodeBool:persistentSceneIsEligibleForAutoClose forKey:v32];

  persistentSceneIdentifiers = [(TUConversationActivitySession *)self persistentSceneIdentifiers];
  v34 = NSStringFromSelector(sel_persistentSceneIdentifiers);
  [coderCopy encodeObject:persistentSceneIdentifiers forKey:v34];

  primarySceneAssociationIdentifier = [(TUConversationActivitySession *)self primarySceneAssociationIdentifier];
  v36 = NSStringFromSelector(sel_primarySceneAssociationIdentifier);
  [coderCopy encodeObject:primarySceneAssociationIdentifier forKey:v36];

  didAssociateScene = [(TUConversationActivitySession *)self didAssociateScene];
  v38 = NSStringFromSelector(sel_didAssociateScene);
  [coderCopy encodeBool:didAssociateScene forKey:v38];

  externalParticipants = [(TUConversationActivitySession *)self externalParticipants];
  v40 = NSStringFromSelector(sel_externalParticipants);
  [coderCopy encodeObject:externalParticipants forKey:v40];

  isUsingAirplay = [(TUConversationActivitySession *)self isUsingAirplay];
  v42 = NSStringFromSelector(sel_isUsingAirplay);
  [coderCopy encodeBool:isUsingAirplay forKey:v42];

  applicationState = [(TUConversationActivitySession *)self applicationState];
  v44 = NSStringFromSelector(sel_applicationState);
  [coderCopy encodeInteger:applicationState forKey:v44];

  clientAudioSessionID = [(TUConversationActivitySession *)self clientAudioSessionID];
  v46 = NSStringFromSelector(sel_clientAudioSessionID);
  [coderCopy encodeObject:clientAudioSessionID forKey:v46];

  localCreationTimestamp = [(TUConversationActivitySession *)self localCreationTimestamp];
  v48 = NSStringFromSelector(sel_localCreationTimestamp);
  [coderCopy encodeObject:localCreationTimestamp forKey:v48];

  permittedJoinTimestamp = [(TUConversationActivitySession *)self permittedJoinTimestamp];
  v50 = NSStringFromSelector(sel_permittedJoinTimestamp);
  [coderCopy encodeObject:permittedJoinTimestamp forKey:v50];

  participantIdentifierMap = [(TUConversationActivitySession *)self participantIdentifierMap];
  v51 = NSStringFromSelector(sel_participantIdentifierMap);
  [coderCopy encodeObject:participantIdentifierMap forKey:v51];
}

- (void)launchApplicationWithForcedURL:(id)l completion:(id)completion
{
  v40 = *MEMORY[0x1E69E9840];
  lCopy = l;
  completionCopy = completion;
  activity = [(TUConversationActivitySession *)self activity];
  representativeBundleIdentifier = [activity representativeBundleIdentifier];

  if (representativeBundleIdentifier && (v10 = [representativeBundleIdentifier length]) != 0)
  {
    v11 = TUDefaultLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      activity2 = [(TUConversationActivitySession *)self activity];
      activityIdentifier = [activity2 activityIdentifier];
      *buf = 138412802;
      v35 = representativeBundleIdentifier;
      v36 = 2112;
      selfCopy = self;
      v38 = 2112;
      v39 = activityIdentifier;
      _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Manually launching Expanse app with bundleIdentifier: %@ for activity session: %@ with activity identifier: %@", buf, 0x20u);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__TUConversationActivitySession_launchApplicationWithForcedURL_completion___block_invoke;
    aBlock[3] = &unk_1E7427D30;
    v14 = representativeBundleIdentifier;
    v32 = v14;
    v33 = completionCopy;
    v15 = _Block_copy(aBlock);
    v16 = objc_alloc_init(MEMORY[0x1E69636B8]);
    v17 = TUUnlockDeviceWithPromptFrontBoardOptionsDictionary(lCopy != 0);
    [v16 setFrontBoardOptions:v17];

    v18 = CUTWeakLinkClass();
    v19 = v18;
    if (lCopy)
    {
      defaultWorkspace = [v18 defaultWorkspace];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __75__TUConversationActivitySession_launchApplicationWithForcedURL_completion___block_invoke_138;
      v29[3] = &unk_1E7426178;
      v30 = v15;
      [defaultWorkspace openURL:lCopy configuration:v16 completionHandler:v29];

      v21 = v30;
    }

    else
    {
      v28 = 0;
      v23 = [objc_alloc(CUTWeakLinkClass()) initWithBundleIdentifier:v14 allowPlaceholder:0 error:&v28];
      v24 = v28;
      v21 = v24;
      if (!v23 || v24)
      {
        (*(v15 + 2))(v15, 0, 0, v24);
      }

      else
      {
        defaultWorkspace2 = [v19 defaultWorkspace];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __75__TUConversationActivitySession_launchApplicationWithForcedURL_completion___block_invoke_2;
        v26[3] = &unk_1E7424A38;
        v27 = v15;
        [defaultWorkspace2 openApplicationWithBundleIdentifier:v14 configuration:v16 completionHandler:v26];
      }
    }
  }

  else
  {
    v22 = TUDefaultLog(v10);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(TUConversationActivitySession *)self launchApplicationWithForcedURL:representativeBundleIdentifier completion:v22];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

void __75__TUConversationActivitySession_launchApplicationWithForcedURL_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if ((a3 & 1) == 0)
  {
    v9 = TUDefaultLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v12 = 138412546;
      v13 = v10;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Application for activity session is not installed with bundleIdentifier: %@; error: %{public}@", &v12, 0x16u);
    }

    goto LABEL_8;
  }

  if (v7 || (a2 & 1) == 0)
  {
    v9 = TUDefaultLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __75__TUConversationActivitySession_launchApplicationWithForcedURL_completion___block_invoke_cold_1(a1, v8, v9);
    }

LABEL_8:
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, a3);
  }
}

- (id)publicCopy
{
  v2 = [(TUConversationActivitySession *)self copy];
  v3 = [MEMORY[0x1E695DFD8] set];
  v4 = v2[9];
  v2[9] = v3;

  v5 = v2[18];
  v2[18] = 0;

  return v2;
}

- (void)launchApplicationWithForcedURL:(NSObject *)a3 completion:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_1956FD000, a2, a3, "Failed to launch activity session: %@ with bundle identifier: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

void __75__TUConversationActivitySession_launchApplicationWithForcedURL_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_1_0(&dword_1956FD000, a2, a3, "Failed to open activity session with bundleIdentifier: %@; error: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

@end