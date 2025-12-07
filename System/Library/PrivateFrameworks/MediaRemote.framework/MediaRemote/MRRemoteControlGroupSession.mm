@interface MRRemoteControlGroupSession
- (BOOL)canHandleJoinRequests;
- (BOOL)canManageParticipants;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLocalSession;
- (MRGroupSessionDelegate)delegate;
- (MRGroupSessionParticipant)host;
- (MRGroupSessionParticipant)localParticipant;
- (MRGroupSessionToken)joinToken;
- (MRRemoteControlGroupSession)initWithIdentifier:(id)identifier delegate:(id)delegate;
- (NSData)synchronizedMetadata;
- (NSSet)members;
- (NSSet)participants;
- (NSSet)pendingParticipants;
- (NSString)description;
- (NSString)localizedSessionName;
- (id)assertSessionManagementScreenVisible;
- (id)memberForIdentifier:(id)identifier;
- (id)participantForIdentifier:(id)identifier;
- (id)pendingParticipantForIdentifier:(id)identifier;
- (int64_t)state;
- (unsigned)routeType;
- (void)approvePendingParticipant:(id)participant completion:(id)completion;
- (void)dealloc;
- (void)denyPendingParticipant:(id)participant completion:(id)completion;
- (void)initializeConnection;
- (void)notifyDelegateOfInvalidation:(id)invalidation;
- (void)parseInitialState:(id)state;
- (void)parseParticipants:(id)participants local:(id *)local host:(id *)host parsed:(id *)parsed;
- (void)removeAllParticipantsWithCompletion:(id)completion;
- (void)removeParticipant:(id)participant completion:(id)completion;
- (void)session:(id)session didChangeState:(int64_t)state;
- (void)session:(id)session didConnectWithInitialState:(id)state;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session didUpdateMembers:(id)members;
- (void)session:(id)session didUpdateParticipants:(id)participants;
- (void)session:(id)session didUpdatePendingParticipants:(id)participants;
- (void)session:(id)session didUpdateSynchronizedMetadata:(id)metadata;
- (void)updateParticipantsForOptimisticStateChange;
@end

@implementation MRRemoteControlGroupSession

- (MRRemoteControlGroupSession)initWithIdentifier:(id)identifier delegate:(id)delegate
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  v32.receiver = self;
  v32.super_class = MRRemoteControlGroupSession;
  v8 = [(MRRemoteControlGroupSession *)&v32 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_state = 0;
    objc_storeWeak(&v8->_delegate, delegateCopy);
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    participantMap = v8->_participantMap;
    v8->_participantMap = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    memberMap = v8->_memberMap;
    v8->_memberMap = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    pendingParticipantMap = v8->_pendingParticipantMap;
    v8->_pendingParticipantMap = strongToStrongObjectsMapTable3;

    v17 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:0 capacity:2];
    optimisticApprovedPendingParticipants = v8->_optimisticApprovedPendingParticipants;
    v8->_optimisticApprovedPendingParticipants = v17;

    v19 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:0 capacity:2];
    optimisticDeniedPendingParticipants = v8->_optimisticDeniedPendingParticipants;
    v8->_optimisticDeniedPendingParticipants = v19;

    v21 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:0 capacity:2];
    optimisticRemovedParticipants = v8->_optimisticRemovedParticipants;
    v8->_optimisticRemovedParticipants = v21;

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = MRGroupSessionSubsystemGetQueue(v23);
    v25 = dispatch_queue_create_with_target_V2("com.apple.MediaRemote.MRRemoteControlGroupSession.queue", v23, v24);
    queue = v8->_queue;
    v8->_queue = v25;

    v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = MRGroupSessionSubsystemGetNotificationQueue(v27);
    v29 = dispatch_queue_create_with_target_V2("com.apple.MediaRemote.MRRemoteControlGroupSession.callbackQueue", v27, v28);
    callbackQueue = v8->_callbackQueue;
    v8->_callbackQueue = v29;

    [(MRRemoteControlGroupSession *)v8 initializeConnection];
  }

  return v8;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] <%p> dealloc", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MRRemoteControlGroupSession;
  [(MRRemoteControlGroupSession *)&v4 dealloc];
}

- (void)initializeConnection
{
  objc_initWeak(&location, self);
  v3 = [MRGroupSessionXPCConnection alloc];
  v4 = [MEMORY[0x1E69B14E8] proxyWithObject:self protocol:&unk_1F15B37E0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__MRRemoteControlGroupSession_initializeConnection__block_invoke;
  v9[3] = &unk_1E769B178;
  objc_copyWeak(&v10, &location);
  v5 = [(MRGroupSessionXPCConnection *)v3 initWithClientObject:v4 invalidationHandler:v9];
  connection = self->_connection;
  self->_connection = v5;

  v7 = self->_connection;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__MRRemoteControlGroupSession_initializeConnection__block_invoke_3;
  v8[3] = &unk_1E76A18E0;
  v8[4] = self;
  [(MRGroupSessionXPCConnection *)v7 sendMessage:v8];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __51__MRRemoteControlGroupSession_initializeConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__MRRemoteControlGroupSession_initializeConnection__block_invoke_2;
    block[3] = &unk_1E769A228;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void __51__MRRemoteControlGroupSession_initializeConnection__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MRGroupSessionError" code:1 debugDescription:@"XPC invalidated."];
  [v1 notifyDelegateOfInvalidation:v2];
}

void __51__MRRemoteControlGroupSession_initializeConnection__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__MRRemoteControlGroupSession_initializeConnection__block_invoke_4;
  v6[3] = &unk_1E76A3D90;
  v6[4] = *(a1 + 32);
  [v4 connectToSession:v5 reply:v6];
}

void __51__MRRemoteControlGroupSession_initializeConnection__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 152);
    *(v7 + 152) = 0;

    [*(a1 + 32) notifyDelegateOfInvalidation:v6];
  }

  else
  {
    v9 = _MRLogForCategory(0xCuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = 134217984;
      v12 = v10;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] <%p> Connected.", &v11, 0xCu);
    }

    [*(a1 + 32) parseInitialState:v5];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = equalCopy->_identifier;
      v7 = identifier;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (NSString)description
{
  hostInfo = [(MRGroupSessionToken *)self->_joinToken hostInfo];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_opt_class();
  identifier = [(MRRemoteControlGroupSession *)self identifier];
  displayName = [hostInfo displayName];
  v8 = MRGroupSessionRouteTypeDescription([hostInfo routeType]);
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRRemoteControlGroupSession isPlaceholder](self, "isPlaceholder")}];
  stringValue = [v9 stringValue];
  v11 = [v4 initWithFormat:@"<%@: identifier=%@, name=%@, route=%@, placeholder=%@>", v5, identifier, displayName, v8, stringValue];

  return v11;
}

- (void)notifyDelegateOfInvalidation:(id)invalidation
{
  invalidationCopy = invalidation;
  delegate = [(MRRemoteControlGroupSession *)self delegate];
  if (delegate)
  {
    callbackQueue = [(MRRemoteControlGroupSession *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__MRRemoteControlGroupSession_notifyDelegateOfInvalidation___block_invoke;
    block[3] = &unk_1E769BA00;
    v8 = delegate;
    selfCopy = self;
    v10 = invalidationCopy;
    dispatch_async(callbackQueue, block);
  }
}

- (BOOL)isLocalSession
{
  identifier = [(MRRemoteControlGroupSession *)self identifier];
  v3 = +[MRAVLocalEndpoint sharedLocalEndpoint];
  groupSessionInfo = [v3 groupSessionInfo];
  identifier2 = [groupSessionInfo identifier];
  if (identifier == identifier2)
  {
    v6 = 1;
  }

  else
  {
    v6 = [identifier isEqual:identifier2];
  }

  return v6;
}

- (BOOL)canManageParticipants
{
  localParticipant = [(MRRemoteControlGroupSession *)self localParticipant];
  if ([(MRRemoteControlGroupSession *)self isLocalSession])
  {
    LOBYTE(v4) = 1;
  }

  else if (localParticipant)
  {
    v4 = [localParticipant isGuest] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)canHandleJoinRequests
{
  if ([(MRRemoteControlGroupSession *)self isLocalSession])
  {
    return 1;
  }

  equivalentMediaIdentifier = [(MRGroupSessionToken *)self->_joinToken equivalentMediaIdentifier];
  v3 = equivalentMediaIdentifier != 0;

  return v3;
}

- (NSString)localizedSessionName
{
  host = [(MRRemoteControlGroupSession *)self host];
  v4 = host;
  if (host)
  {
    identity = [host identity];
    displayName = [identity displayName];
    localizedSessionName = MRGroupSessionRouteMakeName(displayName, [(MRRemoteControlGroupSession *)self routeType]);
  }

  else
  {
    identity = [(MRGroupSessionToken *)self->_joinToken hostInfo];
    localizedSessionName = [identity localizedSessionName];
  }

  return localizedSessionName;
}

- (unsigned)routeType
{
  hostInfo = [(MRGroupSessionToken *)self->_joinToken hostInfo];
  routeType = [hostInfo routeType];

  return routeType;
}

- (MRGroupSessionToken)joinToken
{
  if ([(MRRemoteControlGroupSession *)self isPlaceholder])
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_joinToken;
  }

  return v3;
}

- (int64_t)state
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = [(MRRemoteControlGroupSession *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__MRRemoteControlGroupSession_state__block_invoke;
  v6[3] = &unk_1E769A2A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(queue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (NSData)synchronizedMetadata
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__44;
  v11 = __Block_byref_object_dispose__44;
  v12 = 0;
  queue = [(MRRemoteControlGroupSession *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__MRRemoteControlGroupSession_synchronizedMetadata__block_invoke;
  v6[3] = &unk_1E769A2A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSSet)members
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__44;
  v11 = __Block_byref_object_dispose__44;
  v12 = 0;
  queue = [(MRRemoteControlGroupSession *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__MRRemoteControlGroupSession_members__block_invoke;
  v6[3] = &unk_1E769A2A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __38__MRRemoteControlGroupSession_members__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFD8] set];
  }

  v4 = v3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (!v2)
  {
  }
}

- (NSSet)participants
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__44;
  v11 = __Block_byref_object_dispose__44;
  v12 = 0;
  queue = [(MRRemoteControlGroupSession *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__MRRemoteControlGroupSession_participants__block_invoke;
  v6[3] = &unk_1E769A2A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __43__MRRemoteControlGroupSession_participants__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFD8] set];
  }

  v4 = v3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (!v2)
  {
  }
}

- (NSSet)pendingParticipants
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__44;
  v11 = __Block_byref_object_dispose__44;
  v12 = 0;
  queue = [(MRRemoteControlGroupSession *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__MRRemoteControlGroupSession_pendingParticipants__block_invoke;
  v6[3] = &unk_1E769A2A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __50__MRRemoteControlGroupSession_pendingParticipants__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = v2;
  if (!v2)
  {
    v3 = [MEMORY[0x1E695DFD8] set];
  }

  v4 = v3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (!v2)
  {
  }
}

- (MRGroupSessionParticipant)host
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__44;
  v11 = __Block_byref_object_dispose__44;
  v12 = 0;
  queue = [(MRRemoteControlGroupSession *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__MRRemoteControlGroupSession_host__block_invoke;
  v6[3] = &unk_1E769A2A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__MRRemoteControlGroupSession_host__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 104));
  if (!*(*(*(a1 + 40) + 8) + 40) && [*(a1 + 32) isLocalSession])
  {
    v2 = *(*(a1 + 32) + 112);
    v3 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v3, v2);
  }
}

- (MRGroupSessionParticipant)localParticipant
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__44;
  v11 = __Block_byref_object_dispose__44;
  v12 = 0;
  queue = [(MRRemoteControlGroupSession *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__MRRemoteControlGroupSession_localParticipant__block_invoke;
  v6[3] = &unk_1E769A2A0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)memberForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__44;
  v16 = __Block_byref_object_dispose__44;
  v17 = 0;
  queue = [(MRRemoteControlGroupSession *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MRRemoteControlGroupSession_memberForIdentifier___block_invoke;
  block[3] = &unk_1E769BBB8;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_async_and_wait(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __51__MRRemoteControlGroupSession_memberForIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) memberMap];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)participantForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__44;
  v16 = __Block_byref_object_dispose__44;
  v17 = 0;
  queue = [(MRRemoteControlGroupSession *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__MRRemoteControlGroupSession_participantForIdentifier___block_invoke;
  block[3] = &unk_1E769BBB8;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_async_and_wait(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __56__MRRemoteControlGroupSession_participantForIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) participantMap];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)pendingParticipantForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__44;
  v16 = __Block_byref_object_dispose__44;
  v17 = 0;
  queue = [(MRRemoteControlGroupSession *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MRRemoteControlGroupSession_pendingParticipantForIdentifier___block_invoke;
  block[3] = &unk_1E769BBB8;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_async_and_wait(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __63__MRRemoteControlGroupSession_pendingParticipantForIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) pendingParticipantMap];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)approvePendingParticipant:(id)participant completion:(id)completion
{
  participantCopy = participant;
  completionCopy = completion;
  queue = [(MRRemoteControlGroupSession *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MRRemoteControlGroupSession_approvePendingParticipant_completion___block_invoke;
  block[3] = &unk_1E769E410;
  block[4] = self;
  v12 = participantCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = participantCopy;
  dispatch_async(queue, block);
}

void __68__MRRemoteControlGroupSession_approvePendingParticipant_completion___block_invoke(id *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] pendingParticipantMap];
  v3 = [a1[5] identifier];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = [MRCodableGroupSessionParticipant alloc];
    v6 = [v4 identifier];
    v7 = [v4 identity];
    v8 = -[MRCodableGroupSessionParticipant initWithIdentifier:identity:connected:guest:hidden:](v5, "initWithIdentifier:identity:connected:guest:hidden:", v6, v7, 1, [v4 isGuest], objc_msgSend(v4, "isHidden"));

    [(MRCodableGroupSessionParticipant *)v8 setPending:0];
    v9 = _MRLogForCategory(0xCuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      v11 = a1[5];
      *buf = 134218242;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] <%p> Set optimistic state for approved participant %@.", buf, 0x16u);
    }

    objc_initWeak(buf, a1[4]);
    v12 = [a1[4] optimisticApprovedPendingParticipants];
    v13 = [MROptimisticState alloc];
    v14 = [a1[4] queue];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __68__MRRemoteControlGroupSession_approvePendingParticipant_completion___block_invoke_382;
    v23[3] = &unk_1E76A3DB8;
    objc_copyWeak(&v24, buf);
    v15 = [(MROptimisticState *)v13 initWithInitialState:0 expectedState:v8 timeout:v14 queue:v23 timeoutHandler:15.0];
    [v12 addObject:v15];

    [a1[4] updateParticipantsForOptimisticStateChange];
    v16 = a1[4];
    v17 = v16[19];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __68__MRRemoteControlGroupSession_approvePendingParticipant_completion___block_invoke_384;
    v20[3] = &unk_1E76A3DE0;
    v20[4] = v16;
    v21 = v4;
    v22 = a1[6];
    [v17 sendMessage:v20];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else
  {
    v18 = a1[6];
    v19 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MRGroupSessionError" code:8 debugDescription:@"Pending participant no longer available."];
    v18[2](v18, v19);
  }
}

void __68__MRRemoteControlGroupSession_approvePendingParticipant_completion___block_invoke_382(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained participantMap];
    v7 = [v3 expectedState];
    v8 = [v7 identifier];
    v9 = [v6 objectForKey:v8];

    if (!v9)
    {
      v10 = _MRLogForCategory(0xCuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __68__MRRemoteControlGroupSession_approvePendingParticipant_completion___block_invoke_382_cold_1(v5, v3);
      }
    }

    v11 = [v5 optimisticApprovedPendingParticipants];
    [v11 removeObject:v3];

    [v5 updateParticipantsForOptimisticStateChange];
  }
}

void __68__MRRemoteControlGroupSession_approvePendingParticipant_completion___block_invoke_384(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 identifier];
  [v4 session:v5 approvePendingParticipant:a1[5] reply:a1[6]];
}

- (void)denyPendingParticipant:(id)participant completion:(id)completion
{
  participantCopy = participant;
  completionCopy = completion;
  queue = [(MRRemoteControlGroupSession *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MRRemoteControlGroupSession_denyPendingParticipant_completion___block_invoke;
  block[3] = &unk_1E769E410;
  block[4] = self;
  v12 = participantCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = participantCopy;
  dispatch_async(queue, block);
}

void __65__MRRemoteControlGroupSession_denyPendingParticipant_completion___block_invoke(id *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] pendingParticipantMap];
  v3 = [a1[5] identifier];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = _MRLogForCategory(0xCuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      *buf = 134218242;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] <%p> Set optimistic state for denied participant %@.", buf, 0x16u);
    }

    objc_initWeak(buf, a1[4]);
    v8 = [a1[4] optimisticDeniedPendingParticipants];
    v9 = [MROptimisticState alloc];
    v10 = a1[5];
    v11 = [a1[4] queue];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __65__MRRemoteControlGroupSession_denyPendingParticipant_completion___block_invoke_388;
    v20[3] = &unk_1E76A3DB8;
    objc_copyWeak(&v21, buf);
    v12 = [(MROptimisticState *)v9 initWithInitialState:v10 expectedState:0 timeout:v11 queue:v20 timeoutHandler:5.0];
    [v8 addObject:v12];

    [a1[4] updateParticipantsForOptimisticStateChange];
    v13 = a1[4];
    v14 = v13[19];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __65__MRRemoteControlGroupSession_denyPendingParticipant_completion___block_invoke_389;
    v17[3] = &unk_1E76A3DE0;
    v17[4] = v13;
    v18 = v4;
    v19 = a1[6];
    [v14 sendMessage:v17];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  else
  {
    v15 = a1[6];
    v16 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MRGroupSessionError" code:8 debugDescription:@"Pending participant no longer available."];
    v15[2](v15, v16);
  }
}

void __65__MRRemoteControlGroupSession_denyPendingParticipant_completion___block_invoke_388(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained pendingParticipantMap];
    v7 = [v3 initialState];
    v8 = [v7 identifier];
    v9 = [v6 objectForKey:v8];

    if (v9)
    {
      v10 = _MRLogForCategory(0xCuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __65__MRRemoteControlGroupSession_denyPendingParticipant_completion___block_invoke_388_cold_1(v5, v3);
      }
    }

    v11 = [v5 optimisticDeniedPendingParticipants];
    [v11 removeObject:v3];

    [v5 updateParticipantsForOptimisticStateChange];
  }
}

void __65__MRRemoteControlGroupSession_denyPendingParticipant_completion___block_invoke_389(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 identifier];
  [v4 session:v5 denyPendingParticipant:a1[5] reply:a1[6]];
}

- (id)assertSessionManagementScreenVisible
{
  v27[3] = *MEMORY[0x1E69E9840];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__44;
  v24 = __Block_byref_object_dispose__44;
  v25 = 0;
  queue = [(MRRemoteControlGroupSession *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MRRemoteControlGroupSession_assertSessionManagementScreenVisible__block_invoke;
  block[3] = &unk_1E769A2A0;
  block[4] = self;
  block[5] = &v20;
  dispatch_sync(queue, block);

  v26[0] = @"MRGroupSessionEventOptionEventType";
  v26[1] = @"MRGroupSessionEventOptionSessionIdentifier";
  v6 = v21[5];
  v27[0] = &unk_1F1577AE8;
  v27[1] = v6;
  v26[2] = @"MRGroupSessionEventOptionAssertionIdentifier";
  v27[2] = uUIDString;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __67__MRRemoteControlGroupSession_assertSessionManagementScreenVisible__block_invoke_395;
  v16[3] = &unk_1E76A3E08;
  v8 = uUIDString;
  v17 = v8;
  v18 = &v20;
  MRGroupSessionSendEvent(v7, v16);
  v9 = [MRGroupSessionAssertion alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__MRRemoteControlGroupSession_assertSessionManagementScreenVisible__block_invoke_397;
  v13[3] = &unk_1E769A2A0;
  v15 = &v20;
  v10 = v8;
  v14 = v10;
  v11 = [(MRGroupSessionAssertion *)v9 initWithCancellationHandler:v13];

  _Block_object_dispose(&v20, 8);

  return v11;
}

void __67__MRRemoteControlGroupSession_assertSessionManagementScreenVisible__block_invoke_395(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MRLogForCategory(0xCuLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__MRRemoteControlGroupSession_assertSessionManagementScreenVisible__block_invoke_395_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] Began assertion %@ for session with identifier: %@", &v8, 0x16u);
  }
}

void __67__MRRemoteControlGroupSession_assertSessionManagementScreenVisible__block_invoke_397(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"MRGroupSessionEventOptionEventType";
  v10[1] = @"MRGroupSessionEventOptionSessionIdentifier";
  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v11[0] = &unk_1F1577B00;
  v11[1] = v3;
  v10[2] = @"MRGroupSessionEventOptionAssertionIdentifier";
  v11[2] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__MRRemoteControlGroupSession_assertSessionManagementScreenVisible__block_invoke_400;
  v7[3] = &unk_1E76A3E08;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  MRGroupSessionSendEvent(v4, v7);
}

void __67__MRRemoteControlGroupSession_assertSessionManagementScreenVisible__block_invoke_400(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MRLogForCategory(0xCuLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __67__MRRemoteControlGroupSession_assertSessionManagementScreenVisible__block_invoke_400_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] Ended assertion %@ for session with identifier: %@", &v8, 0x16u);
  }
}

- (void)removeAllParticipantsWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(MRRemoteControlGroupSession *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__MRRemoteControlGroupSession_removeAllParticipantsWithCompletion___block_invoke;
  v7[3] = &unk_1E769A0A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __67__MRRemoteControlGroupSession_removeAllParticipantsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 152);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__MRRemoteControlGroupSession_removeAllParticipantsWithCompletion___block_invoke_2;
  v4[3] = &unk_1E76A3E30;
  v4[4] = v2;
  v5 = v1;
  [v3 sendMessage:v4];
}

void __67__MRRemoteControlGroupSession_removeAllParticipantsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 session:v5 removeAllParticipantsWithReply:*(a1 + 40)];
}

- (void)removeParticipant:(id)participant completion:(id)completion
{
  participantCopy = participant;
  completionCopy = completion;
  queue = [(MRRemoteControlGroupSession *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__MRRemoteControlGroupSession_removeParticipant_completion___block_invoke;
  block[3] = &unk_1E769E410;
  block[4] = self;
  v12 = participantCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = participantCopy;
  dispatch_async(queue, block);
}

void __60__MRRemoteControlGroupSession_removeParticipant_completion___block_invoke(id *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] participantMap];
  v3 = [a1[5] identifier];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v5 = _MRLogForCategory(0xCuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      *buf = 134218242;
      v22 = v6;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] <%p> Set optimistic state for removed participant %@.", buf, 0x16u);
    }

    objc_initWeak(buf, a1[4]);
    v8 = [a1[4] optimisticRemovedParticipants];
    v9 = [MROptimisticState alloc];
    v10 = a1[5];
    v11 = [a1[4] queue];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __60__MRRemoteControlGroupSession_removeParticipant_completion___block_invoke_401;
    v19[3] = &unk_1E76A3DB8;
    objc_copyWeak(&v20, buf);
    v12 = [(MROptimisticState *)v9 initWithInitialState:v10 expectedState:0 timeout:v11 queue:v19 timeoutHandler:5.0];
    [v8 addObject:v12];

    [a1[4] updateParticipantsForOptimisticStateChange];
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  v14 = a1[4];
  v13 = a1[5];
  v15 = v14[19];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60__MRRemoteControlGroupSession_removeParticipant_completion___block_invoke_402;
  v16[3] = &unk_1E76A3DE0;
  v16[4] = v14;
  v17 = v13;
  v18 = a1[6];
  [v15 sendMessage:v16];
}

void __60__MRRemoteControlGroupSession_removeParticipant_completion___block_invoke_401(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained participantMap];
    v7 = [v3 initialState];
    v8 = [v7 identifier];
    v9 = [v6 objectForKey:v8];

    if (v9)
    {
      v10 = _MRLogForCategory(0xCuLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __60__MRRemoteControlGroupSession_removeParticipant_completion___block_invoke_401_cold_1(v5, v3);
      }
    }

    v11 = [v5 optimisticRemovedParticipants];
    [v11 removeObject:v3];

    [v5 updateParticipantsForOptimisticStateChange];
  }
}

void __60__MRRemoteControlGroupSession_removeParticipant_completion___block_invoke_402(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 identifier];
  v5 = [*(a1 + 40) identifier];
  [v4 session:v6 removeParticipant:v5 reply:*(a1 + 48)];
}

- (void)parseParticipants:(id)participants local:(id *)local host:(id *)host parsed:(id *)parsed
{
  v24 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  v10 = [participantsCopy mutableCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = participantsCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if ([v16 isLocal])
        {
          v17 = v16;
          *local = v16;
          [v10 removeObject:v16];
        }

        if ([v16 isHost])
        {
          v18 = v16;
          *host = v16;
        }

        if ([v16 isHidden])
        {
          [v10 removeObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  *parsed = [v10 copy];
}

- (void)parseInitialState:(id)state
{
  v90 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v59 = [stateCopy objectForKeyedSubscript:@"_MRGroupSessionStateInitialSyncKey"];
  integerValue = [v59 integerValue];
  self->_state = integerValue;
  v5 = [stateCopy objectForKeyedSubscript:@"_MRGroupSessionPlaceholderInitialSyncKey"];
  v6 = v5;
  if (v5)
  {
    self->_placeholder = [v5 BOOLValue];
  }

  v58 = v6;
  v7 = [MRGroupSessionToken alloc];
  v8 = [stateCopy objectForKeyedSubscript:@"_MRGroupSessionTokenInitialSyncKey"];
  v9 = [(MRGroupSessionToken *)v7 initWithData:v8];
  joinToken = self->_joinToken;
  self->_joinToken = v9;

  v11 = [stateCopy objectForKeyedSubscript:@"_MRGroupSessionParticipantsInitialSyncKey"];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v83 objects:v89 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v84;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v84 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v83 + 1) + 8 * i);
        participantMap = [(MRRemoteControlGroupSession *)self participantMap];
        identifier = [v16 identifier];
        [participantMap setObject:v16 forKey:identifier];
      }

      v13 = [v11 countByEnumeratingWithState:&v83 objects:v89 count:16];
    }

    while (v13);
  }

  v61 = stateCopy;
  v19 = [stateCopy objectForKeyedSubscript:@"_MRGroupSessionPendingParticipantsInitialSyncKey"];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v79 objects:v88 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v80;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v80 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v79 + 1) + 8 * j);
        pendingParticipantMap = [(MRRemoteControlGroupSession *)self pendingParticipantMap];
        identifier2 = [v24 identifier];
        [pendingParticipantMap setObject:v24 forKey:identifier2];
      }

      v21 = [v19 countByEnumeratingWithState:&v79 objects:v88 count:16];
    }

    while (v21);
  }

  if (v19)
  {
    v27 = v19;
  }

  else
  {
    v27 = [MEMORY[0x1E695DFD8] set];
  }

  pendingParticipants = self->_pendingParticipants;
  self->_pendingParticipants = v27;

  v77 = 0;
  v78 = 0;
  v76 = 0;
  [(MRRemoteControlGroupSession *)self parseParticipants:v11 local:&v78 host:&v77 parsed:&v76];
  v29 = v78;
  v57 = v78;
  v30 = v77;
  v56 = v77;
  v31 = v76;
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = [MEMORY[0x1E695DFD8] set];
  }

  participants = self->_participants;
  self->_participants = v33;

  objc_storeStrong(&self->_localParticipant, v29);
  objc_storeStrong(&self->_host, v30);
  v35 = [v61 objectForKeyedSubscript:@"_MRGroupSessionMembersInitialSyncKey"];
  v36 = v35;
  v60 = v32;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = [MEMORY[0x1E695DFD8] set];
  }

  v38 = v37;

  v75 = 0u;
  v73 = 0u;
  v74 = 0u;
  v72 = 0u;
  obj = v38;
  v39 = v38;
  v40 = [v39 countByEnumeratingWithState:&v72 objects:v87 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v73;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v73 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v72 + 1) + 8 * k);
        memberMap = [(MRRemoteControlGroupSession *)self memberMap];
        identifier3 = [v44 identifier];
        [memberMap setObject:v44 forKey:identifier3];
      }

      v41 = [v39 countByEnumeratingWithState:&v72 objects:v87 count:16];
    }

    while (v41);
  }

  objc_storeStrong(&self->_members, obj);
  v47 = v60;
  v48 = [v60 count];
  v49 = [v39 count];
  v50 = [v19 count];
  delegate = [(MRRemoteControlGroupSession *)self delegate];
  if (delegate)
  {
    v52 = v48 != 0;
    callbackQueue = [(MRRemoteControlGroupSession *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__MRRemoteControlGroupSession_parseInitialState___block_invoke;
    block[3] = &unk_1E76A3E58;
    v63 = delegate;
    selfCopy = self;
    v68 = integerValue;
    v69 = v49 != 0;
    v65 = v39;
    v70 = v52;
    v47 = v60;
    v66 = v60;
    v71 = v50 != 0;
    v67 = v19;
    dispatch_async(callbackQueue, block);
  }
}

uint64_t __49__MRRemoteControlGroupSession_parseInitialState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) groupSessionDidConnect:*(a1 + 40)];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [*(a1 + 32) groupSession:*(a1 + 40) didChangeState:*(a1 + 72)];
  }

  if (*(a1 + 80) == 1)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [*(a1 + 32) groupSession:*(a1 + 40) didUpdateMembers:*(a1 + 48)];
    }
  }

  if (*(a1 + 81) == 1)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [*(a1 + 32) groupSession:*(a1 + 40) didUpdateParticipants:*(a1 + 56)];
    }
  }

  if (*(a1 + 82) == 1)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 40);
      v5 = *(a1 + 64);

      return [v3 groupSession:v4 didUpdatePendingParticipants:v5];
    }
  }

  return result;
}

- (void)updateParticipantsForOptimisticStateChange
{
  v64 = *MEMORY[0x1E69E9840];
  queue = [(MRRemoteControlGroupSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] <%p> updateParticipantsForOptimisticStateChange.", buf, 0xCu);
  }

  v5 = MEMORY[0x1E695DFA8];
  participantMap = [(MRRemoteControlGroupSession *)self participantMap];
  objectEnumerator = [participantMap objectEnumerator];
  allObjects = [objectEnumerator allObjects];
  v9 = [v5 setWithArray:allObjects];

  v10 = [(NSSet *)self->_pendingParticipants mutableCopy];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  optimisticApprovedPendingParticipants = [(MRRemoteControlGroupSession *)self optimisticApprovedPendingParticipants];
  allObjects2 = [optimisticApprovedPendingParticipants allObjects];

  v13 = [allObjects2 countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v57;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v57 != v15)
        {
          objc_enumerationMutation(allObjects2);
        }

        v17 = *(*(&v56 + 1) + 8 * i);
        expectedState = [v17 expectedState];
        [v10 removeObject:expectedState];

        expectedState2 = [v17 expectedState];
        [v9 addObject:expectedState2];
      }

      v14 = [allObjects2 countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v14);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  optimisticDeniedPendingParticipants = [(MRRemoteControlGroupSession *)self optimisticDeniedPendingParticipants];
  allObjects3 = [optimisticDeniedPendingParticipants allObjects];

  v22 = [allObjects3 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v53;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v53 != v24)
        {
          objc_enumerationMutation(allObjects3);
        }

        initialState = [*(*(&v52 + 1) + 8 * j) initialState];
        [v10 removeObject:initialState];
      }

      v23 = [allObjects3 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v23);
  }

  v50 = 0;
  v51 = 0;
  v49 = 0;
  [(MRRemoteControlGroupSession *)self parseParticipants:v9 local:&v51 host:&v50 parsed:&v49];
  v27 = v51;
  v28 = v50;
  v29 = v49;
  v30 = v49;
  v31 = [(NSSet *)self->_participants isEqualToSet:v30];
  if (!v31)
  {
    objc_storeStrong(&self->_participants, v29);
  }

  v32 = [(NSSet *)self->_pendingParticipants isEqualToSet:v10];
  if (!v32)
  {
    v33 = [v10 copy];
    pendingParticipants = self->_pendingParticipants;
    self->_pendingParticipants = v33;
  }

  v35 = !v32;
  v36 = !v31;
  delegate = [(MRRemoteControlGroupSession *)self delegate];
  callbackQueue = [(MRRemoteControlGroupSession *)self callbackQueue];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __73__MRRemoteControlGroupSession_updateParticipantsForOptimisticStateChange__block_invoke;
  v42[3] = &unk_1E76A3E80;
  v47 = v36;
  v43 = delegate;
  selfCopy2 = self;
  v48 = v35;
  v45 = v30;
  v46 = v10;
  v39 = v10;
  v40 = v30;
  v41 = delegate;
  dispatch_async(callbackQueue, v42);
}

uint64_t __73__MRRemoteControlGroupSession_updateParticipantsForOptimisticStateChange__block_invoke(uint64_t result)
{
  v1 = result;
  v12 = *MEMORY[0x1E69E9840];
  if (*(result + 64) == 1)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v2 = _MRLogForCategory(0xCuLL);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(v1 + 40);
        v4 = *(v1 + 48);
        v8 = 134218242;
        v9 = v3;
        v10 = 2112;
        v11 = v4;
        _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] <%p> Notify didUpdateParticipants: %@.", &v8, 0x16u);
      }

      result = [*(v1 + 32) groupSession:*(v1 + 40) didUpdateParticipants:*(v1 + 48)];
    }
  }

  if (*(v1 + 65) == 1)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v5 = _MRLogForCategory(0xCuLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v1 + 40);
        v7 = *(v1 + 56);
        v8 = 134218242;
        v9 = v6;
        v10 = 2112;
        v11 = v7;
        _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] <%p> Notify didUpdatePendingParticipants: %@.", &v8, 0x16u);
      }

      return [*(v1 + 32) groupSession:*(v1 + 40) didUpdatePendingParticipants:*(v1 + 56)];
    }
  }

  return result;
}

- (void)session:(id)session didChangeState:(int64_t)state
{
  queue = [(MRRemoteControlGroupSession *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__MRRemoteControlGroupSession_session_didChangeState___block_invoke;
  v7[3] = &unk_1E769C018;
  v7[4] = self;
  v7[5] = state;
  dispatch_async(queue, v7);
}

void __54__MRRemoteControlGroupSession_session_didChangeState___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 134218240;
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] <%p> Update state %ld.", buf, 0x16u);
  }

  *(*(a1 + 32) + 24) = *(a1 + 40);
  v5 = [*(a1 + 32) delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__MRRemoteControlGroupSession_session_didChangeState___block_invoke_412;
    block[3] = &unk_1E769F470;
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    dispatch_async(v6, block);
  }
}

- (void)session:(id)session didUpdateParticipants:(id)participants
{
  participantsCopy = participants;
  queue = [(MRRemoteControlGroupSession *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__MRRemoteControlGroupSession_session_didUpdateParticipants___block_invoke;
  v8[3] = &unk_1E769A4A0;
  v8[4] = self;
  v9 = participantsCopy;
  v7 = participantsCopy;
  dispatch_async(queue, v8);
}

void __61__MRRemoteControlGroupSession_session_didUpdateParticipants___block_invoke(uint64_t a1)
{
  v77 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 134218242;
    v74 = v3;
    v75 = 2112;
    v76 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] <%p> Update participants %@.", buf, 0x16u);
  }

  v5 = [*(a1 + 32) participantMap];
  [v5 removeAllObjects];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v67;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v67 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v66 + 1) + 8 * i);
        v12 = [*(a1 + 32) participantMap];
        v13 = [v11 identifier];
        [v12 setObject:v11 forKey:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v66 objects:v72 count:16];
    }

    while (v8);
  }

  v14 = [*(a1 + 40) mutableCopy];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v15 = [*(a1 + 32) optimisticApprovedPendingParticipants];
  v16 = [v15 allObjects];

  v17 = [v16 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v63;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v63 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v62 + 1) + 8 * j);
        v22 = *(a1 + 40);
        v23 = [v21 expectedState];
        LODWORD(v22) = [v22 containsObject:v23];

        if (v22)
        {
          v24 = [*(a1 + 32) optimisticApprovedPendingParticipants];
          [v24 removeObject:v21];
        }

        else
        {
          v24 = [v21 expectedState];
          [v14 addObject:v24];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v18);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v25 = [*(a1 + 32) optimisticRemovedParticipants];
  v26 = [v25 allObjects];

  v27 = [v26 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v59;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v59 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v58 + 1) + 8 * k);
        v32 = *(a1 + 40);
        v33 = [v31 initialState];
        LOBYTE(v32) = [v32 containsObject:v33];

        if (v32)
        {
          v34 = [v31 initialState];
          v35 = v14;
          v36 = v34;
        }

        else
        {
          v35 = [*(a1 + 32) optimisticRemovedParticipants];
          v34 = v35;
          v36 = v31;
        }

        [v35 removeObject:v36];
      }

      v28 = [v26 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v28);
  }

  v37 = *(a1 + 32);
  v56 = 0;
  v57 = 0;
  v55 = 0;
  [v37 parseParticipants:v14 local:&v57 host:&v56 parsed:&v55];
  v38 = v57;
  v39 = v57;
  v40 = v56;
  v41 = v56;
  v42 = v55;
  v43 = v55;
  v44 = *(*(a1 + 32) + 32);
  v45 = v44;
  if (v44 == v43)
  {
  }

  else
  {
    v46 = [v44 isEqual:v43];

    if (!v46)
    {
      objc_storeStrong((*(a1 + 32) + 112), v38);
      objc_storeStrong((*(a1 + 32) + 104), v40);
      objc_storeStrong((*(a1 + 32) + 32), v42);
LABEL_36:
      v50 = [*(a1 + 32) delegate];
      if (v50 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v51 = [*(a1 + 32) callbackQueue];
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __61__MRRemoteControlGroupSession_session_didUpdateParticipants___block_invoke_413;
        v52[3] = &unk_1E769BA00;
        v52[4] = *(a1 + 32);
        v53 = v43;
        v54 = v50;
        dispatch_async(v51, v52);
      }

      goto LABEL_41;
    }
  }

  v47 = *(*(a1 + 32) + 104);
  v48 = v47;
  if (v47 == v41)
  {

    objc_storeStrong((*(a1 + 32) + 112), v38);
    objc_storeStrong((*(a1 + 32) + 104), v40);
    objc_storeStrong((*(a1 + 32) + 32), v42);
    goto LABEL_41;
  }

  v49 = [v47 isEqual:v41];

  objc_storeStrong((*(a1 + 32) + 112), v38);
  objc_storeStrong((*(a1 + 32) + 104), v40);
  objc_storeStrong((*(a1 + 32) + 32), v42);
  if (!v49)
  {
    goto LABEL_36;
  }

LABEL_41:
}

uint64_t __61__MRRemoteControlGroupSession_session_didUpdateParticipants___block_invoke_413(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] <%p> Notify didUpdateParticipants: %@.", &v6, 0x16u);
  }

  return [*(a1 + 48) groupSession:*(a1 + 32) didUpdateParticipants:*(a1 + 40)];
}

- (void)session:(id)session didUpdatePendingParticipants:(id)participants
{
  participantsCopy = participants;
  queue = [(MRRemoteControlGroupSession *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__MRRemoteControlGroupSession_session_didUpdatePendingParticipants___block_invoke;
  v8[3] = &unk_1E769A4A0;
  v8[4] = self;
  v9 = participantsCopy;
  v7 = participantsCopy;
  dispatch_async(queue, v8);
}

void __68__MRRemoteControlGroupSession_session_didUpdatePendingParticipants___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 134218242;
    v66 = v3;
    v67 = 2112;
    v68 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] <%p> Update pending participants %@.", buf, 0x16u);
  }

  v5 = [*(a1 + 32) pendingParticipantMap];
  [v5 removeAllObjects];

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v59;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v59 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v58 + 1) + 8 * i);
        v12 = [*(a1 + 32) pendingParticipantMap];
        v13 = [v11 identifier];
        [v12 setObject:v11 forKey:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v8);
  }

  v14 = [*(a1 + 40) mutableCopy];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v15 = [*(a1 + 32) optimisticApprovedPendingParticipants];
  v16 = [v15 allObjects];

  v17 = [v16 countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v55;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v55 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v54 + 1) + 8 * j);
        v22 = [v21 expectedState];
        v23 = [v14 containsObject:v22];

        if (v23)
        {
          v24 = [v21 expectedState];
          [v14 removeObject:v24];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v18);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v25 = [*(a1 + 32) optimisticDeniedPendingParticipants];
  v26 = [v25 allObjects];

  v27 = [v26 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v51;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v51 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v50 + 1) + 8 * k);
        v32 = [v31 initialState];
        v33 = [v14 containsObject:v32];

        if (v33)
        {
          v34 = [v31 initialState];
          v35 = v14;
          v36 = v34;
        }

        else
        {
          v35 = [*(a1 + 32) optimisticDeniedPendingParticipants];
          v34 = v35;
          v36 = v31;
        }

        [v35 removeObject:v36];
      }

      v28 = [v26 countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v28);
  }

  v37 = *(*(a1 + 32) + 48);
  v38 = v37;
  if (v37 == v14)
  {

    v45 = [v14 copy];
    v46 = *(a1 + 32);
    v43 = *(v46 + 48);
    *(v46 + 48) = v45;
LABEL_35:

    goto LABEL_36;
  }

  v39 = [v37 isEqual:v14];

  v40 = [v14 copy];
  v41 = *(a1 + 32);
  v42 = *(v41 + 48);
  *(v41 + 48) = v40;

  if ((v39 & 1) == 0)
  {
    v43 = [*(a1 + 32) delegate];
    if (v43 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v44 = [*(a1 + 32) callbackQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__MRRemoteControlGroupSession_session_didUpdatePendingParticipants___block_invoke_414;
      block[3] = &unk_1E769BA00;
      block[4] = *(a1 + 32);
      v48 = v14;
      v43 = v43;
      v49 = v43;
      dispatch_async(v44, block);
    }

    goto LABEL_35;
  }

LABEL_36:
}

uint64_t __68__MRRemoteControlGroupSession_session_didUpdatePendingParticipants___block_invoke_414(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] <%p> Notify didUpdatePendingParticipants: %@.", &v6, 0x16u);
  }

  return [*(a1 + 48) groupSession:*(a1 + 32) didUpdatePendingParticipants:*(a1 + 40)];
}

- (void)session:(id)session didUpdateMembers:(id)members
{
  membersCopy = members;
  queue = [(MRRemoteControlGroupSession *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__MRRemoteControlGroupSession_session_didUpdateMembers___block_invoke;
  v8[3] = &unk_1E769A4A0;
  v8[4] = self;
  v9 = membersCopy;
  v7 = membersCopy;
  dispatch_async(queue, v8);
}

void __56__MRRemoteControlGroupSession_session_didUpdateMembers___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 134218242;
    v29 = v3;
    v30 = 2112;
    v31 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] <%p> Update members %@.", buf, 0x16u);
  }

  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v5 = [*(a1 + 32) memberMap];
  [v5 removeAllObjects];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v12 = [*(a1 + 32) memberMap];
        v13 = [v11 identifier];
        [v12 setObject:v11 forKey:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v14 = [*(a1 + 32) delegate];
  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v15 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__MRRemoteControlGroupSession_session_didUpdateMembers___block_invoke_415;
    block[3] = &unk_1E769BA00;
    v16 = v14;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v20 = v16;
    v21 = v17;
    v22 = v18;
    dispatch_async(v15, block);
  }
}

- (void)session:(id)session didUpdateSynchronizedMetadata:(id)metadata
{
  metadataCopy = metadata;
  queue = [(MRRemoteControlGroupSession *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__MRRemoteControlGroupSession_session_didUpdateSynchronizedMetadata___block_invoke;
  v8[3] = &unk_1E769A4A0;
  v8[4] = self;
  v9 = metadataCopy;
  v7 = metadataCopy;
  dispatch_async(queue, v8);
}

void __69__MRRemoteControlGroupSession_session_didUpdateSynchronizedMetadata___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 134217984;
    v14 = v3;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] <%p> Update synchronized metadata.", buf, 0xCu);
  }

  objc_storeStrong((*(a1 + 32) + 128), *(a1 + 40));
  v4 = [*(a1 + 32) delegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__MRRemoteControlGroupSession_session_didUpdateSynchronizedMetadata___block_invoke_418;
    block[3] = &unk_1E769BA00;
    v6 = v4;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = v6;
    v11 = v7;
    v12 = v8;
    dispatch_async(v5, block);
  }
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  errorCopy = error;
  queue = [(MRRemoteControlGroupSession *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__MRRemoteControlGroupSession_session_didInvalidateWithError___block_invoke;
  v8[3] = &unk_1E769A4A0;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(queue, v8);
}

void __62__MRRemoteControlGroupSession_session_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 134218242;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] <%p> invalidated %@.", buf, 0x16u);
  }

  v5 = [*(a1 + 32) optimisticRemovedParticipants];
  [v5 removeAllObjects];

  v6 = [*(a1 + 32) optimisticApprovedPendingParticipants];
  [v6 removeAllObjects];

  v7 = [*(a1 + 32) optimisticDeniedPendingParticipants];
  [v7 removeAllObjects];

  v8 = [*(a1 + 32) delegate];
  [*(a1 + 32) setDelegate:0];
  [*(a1 + 32) setConnection:0];
  if (v8)
  {
    v9 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__MRRemoteControlGroupSession_session_didInvalidateWithError___block_invoke_419;
    block[3] = &unk_1E769BA00;
    v10 = v8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v14 = v10;
    v15 = v11;
    v16 = v12;
    dispatch_async(v9, block);
  }
}

- (void)session:(id)session didConnectWithInitialState:(id)state
{
  stateCopy = state;
  queue = [(MRRemoteControlGroupSession *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__MRRemoteControlGroupSession_session_didConnectWithInitialState___block_invoke;
  v8[3] = &unk_1E769A4A0;
  v8[4] = self;
  v9 = stateCopy;
  v7 = stateCopy;
  dispatch_async(queue, v8);
}

uint64_t __66__MRRemoteControlGroupSession_session_didConnectWithInitialState___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRGroupSession] <%p> Connected after initialization", &v5, 0xCu);
  }

  return [*(a1 + 32) parseInitialState:*(a1 + 40)];
}

- (MRGroupSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __68__MRRemoteControlGroupSession_approvePendingParticipant_completion___block_invoke_382_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 expectedState];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_3_8(&dword_1A2860000, v3, v4, "[MRGroupSession] <%p> Approved participant %@ not found after timeout.", v5, v6, v7, v8);
}

void __65__MRRemoteControlGroupSession_denyPendingParticipant_completion___block_invoke_388_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 initialState];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_3_8(&dword_1A2860000, v3, v4, "[MRGroupSession] <%p> Denied participant %@ still found after timeout.", v5, v6, v7, v8);
}

void __67__MRRemoteControlGroupSession_assertSessionManagementScreenVisible__block_invoke_395_cold_1()
{
  OUTLINED_FUNCTION_7_4(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_1_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __67__MRRemoteControlGroupSession_assertSessionManagementScreenVisible__block_invoke_400_cold_1()
{
  OUTLINED_FUNCTION_7_4(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_13();
  OUTLINED_FUNCTION_1_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __60__MRRemoteControlGroupSession_removeParticipant_completion___block_invoke_401_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 initialState];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_3_8(&dword_1A2860000, v3, v4, "[MRGroupSession] <%p> Removed participant %@ still found after timeout.", v5, v6, v7, v8);
}

@end