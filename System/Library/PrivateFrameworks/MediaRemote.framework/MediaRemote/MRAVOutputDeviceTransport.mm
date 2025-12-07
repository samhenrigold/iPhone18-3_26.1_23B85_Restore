@interface MRAVOutputDeviceTransport
+ (id)_createConnectionWith:(id)with groupID:(id)d connectionType:(int64_t)type shouldUseSystemAuthenticationPrompt:(BOOL)prompt userInfo:(id)info;
- (BOOL)shouldUseSystemAuthenticationPrompt;
- (MRAVOutputDeviceTransport)initWithOutputDevice:(id)device groupID:(id)d connectionType:(int64_t)type;
- (MRAVOutputDeviceTransport)initWithOutputDeviceUID:(id)d;
- (id)createConnectionWithUserInfo:(id)info;
- (id)debugDescription;
- (id)description;
- (id)error;
- (void)resetWithError:(id)error;
- (void)setError:(id)error;
- (void)setShouldUseSystemAuthenticationPrompt:(BOOL)prompt;
@end

@implementation MRAVOutputDeviceTransport

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  outputDeviceUID = selfCopy->_outputDeviceUID;
  groupID = selfCopy->_groupID;
  connection = selfCopy->_connection;
  v8 = NSStringFromMRAVEndpointConnectionType(selfCopy->super._connectionType);
  v9 = [v3 stringWithFormat:@"<%@: %p OutputDeviceUID=%@ groupID=%@ connection:%@ connectionType=%@>", v4, selfCopy, outputDeviceUID, groupID, connection, v8];

  objc_sync_exit(selfCopy);

  return v9;
}

- (MRAVOutputDeviceTransport)initWithOutputDevice:(id)device groupID:(id)d connectionType:(int64_t)type
{
  deviceCopy = device;
  dCopy = d;
  if (!deviceCopy)
  {
    [MRAVOutputDeviceTransport initWithOutputDevice:a2 groupID:self connectionType:?];
  }

  primaryID = [deviceCopy primaryID];
  v12 = [(MRAVOutputDeviceTransport *)self initWithOutputDeviceUID:primaryID];

  if (v12)
  {
    v13 = [dCopy copy];
    groupID = v12->_groupID;
    v12->_groupID = v13;

    v12->super._connectionType = type;
    v12->_useSystemAuthenticationPrompt = 1;
  }

  return v12;
}

- (MRAVOutputDeviceTransport)initWithOutputDeviceUID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = MRAVOutputDeviceTransport;
  v6 = [(MRAVOutputDeviceTransport *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDeviceUID, d);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.mediaremote.externalDeviceTransport/workerQueue", v8);
    workerQueue = v7->_workerQueue;
    v7->_workerQueue = v9;

    v7->super._connectionType = 2;
  }

  return v7;
}

- (id)debugDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  outputDeviceUID = selfCopy->_outputDeviceUID;
  groupID = selfCopy->_groupID;
  avOutputDevice = selfCopy->_avOutputDevice;
  v8 = NSStringFromMRAVEndpointConnectionType(selfCopy->super._connectionType);
  v9 = MRCreateIndentedDebugDescriptionFromObject(selfCopy->_connection);
  v10 = [v3 stringWithFormat:@"<%@: %p {\n   OutputDeviceUID=%@\n   groupID=%@\n   AVOutputDevice=%@\n   connectionType=%@\n   connection=%@\n}>", v4, selfCopy, outputDeviceUID, groupID, avOutputDevice, v8, v9];

  objc_sync_exit(selfCopy);

  return v10;
}

- (BOOL)shouldUseSystemAuthenticationPrompt
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  useSystemAuthenticationPrompt = selfCopy->_useSystemAuthenticationPrompt;
  objc_sync_exit(selfCopy);

  return useSystemAuthenticationPrompt;
}

- (void)setShouldUseSystemAuthenticationPrompt:(BOOL)prompt
{
  obj = self;
  objc_sync_enter(obj);
  obj->_useSystemAuthenticationPrompt = prompt;
  objc_sync_exit(obj);
}

- (id)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSError *)selfCopy->_error copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setError:(id)error
{
  errorCopy = error;
  obj = self;
  objc_sync_enter(obj);
  error = obj->_error;
  obj->_error = errorCopy;

  objc_sync_exit(obj);
}

- (id)createConnectionWithUserInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  first2 = selfCopy->_connection;
  useSystemAuthenticationPrompt = selfCopy->_useSystemAuthenticationPrompt;
  objc_sync_exit(selfCopy);

  if (!first2)
  {
    v8 = [objc_opt_class() _createConnectionWith:selfCopy->_outputDeviceUID groupID:selfCopy->_groupID connectionType:selfCopy->super._connectionType shouldUseSystemAuthenticationPrompt:useSystemAuthenticationPrompt userInfo:infoCopy];
    v9 = selfCopy;
    objc_sync_enter(v9);
    first = [v8 first];
    connection = selfCopy->_connection;
    selfCopy->_connection = first;

    second = [v8 second];
    error = v9->_error;
    v9->_error = second;

    objc_sync_exit(v9);
    first2 = [v8 first];
  }

  return first2;
}

+ (id)_createConnectionWith:(id)with groupID:(id)d connectionType:(int64_t)type shouldUseSystemAuthenticationPrompt:(BOOL)prompt userInfo:(id)info
{
  promptCopy = prompt;
  v86[5] = *MEMORY[0x1E69E9840];
  withCopy = with;
  dCopy = d;
  infoCopy = info;
  v12 = [infoCopy objectForKeyedSubscript:@"MRExternalDeviceConnectionReasonUserInfoKey"];
  v13 = v12;
  v14 = @"unknown";
  if (v12)
  {
    v14 = v12;
  }

  v15 = v14;

  v16 = [infoCopy objectForKeyedSubscript:@"MRExternalDeviceConnectionCorrelationIDUserInfoKey"];
  v17 = v16;
  if (v16)
  {
    uUIDString = v16;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
  }

  v20 = dispatch_group_create();
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__2;
  v83 = __Block_byref_object_dispose__2;
  v84 = 0;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__2;
  v77 = __Block_byref_object_dispose__2;
  v78 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__2;
  v71 = __Block_byref_object_dispose__2;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__2;
  v21 = MEMORY[0x1E6958760];
  v65 = __Block_byref_object_dispose__2;
  v66 = 0;
  if (type != 3)
  {
    v21 = MEMORY[0x1E6958758];
  }

  v22 = *v21;
  v85[0] = *MEMORY[0x1E6958778];
  v23 = [MEMORY[0x1E696AD98] numberWithInt:!promptCopy];
  v24 = *MEMORY[0x1E6958780];
  v86[0] = v23;
  v86[1] = v22;
  v25 = *MEMORY[0x1E6958788];
  v85[1] = v24;
  v85[2] = v25;
  v26 = *MEMORY[0x1E6958790];
  v86[2] = uUIDString;
  v86[3] = v15;
  v27 = *MEMORY[0x1E6958798];
  v85[3] = v26;
  v85[4] = v27;
  v86[4] = MEMORY[0x1E695E118];
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:5];

  dispatch_group_enter(v20);
  v29 = [[MRAVDiscoverySessionHelper alloc] initWithFeatures:8];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __119__MRAVOutputDeviceTransport__createConnectionWith_groupID_connectionType_shouldUseSystemAuthenticationPrompt_userInfo___block_invoke;
  v53[3] = &unk_1E769A5A8;
  v57 = &v67;
  v30 = v20;
  v54 = v30;
  v58 = &v79;
  v31 = v28;
  v55 = v31;
  v32 = uUIDString;
  v56 = v32;
  v59 = &v73;
  v60 = &v61;
  [(MRAVDiscoverySessionHelper *)v29 searchAVOutputDeviceForUID:withCopy timeout:v32 identifier:v15 reason:v53 completion:5.0];
  if (promptCopy)
  {
    v33 = 60.0;
  }

  else
  {
    v33 = 33.0;
  }

  v34 = dispatch_time(0, (v33 * 1000000000.0));
  v35 = dispatch_group_wait(v30, v34);
  v36 = v68[5];
  if (v36 || !v74[5])
  {
    if (v35)
    {
      v37 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:26 format:{@"Timed out after <%lf> waiting to open remote control communication channel", *&v33}];
LABEL_24:
      v41 = v37;
      v40 = 0;
      goto LABEL_25;
    }

    if (v62[5] == *MEMORY[0x1E6958770])
    {
      v45 = objc_alloc(MEMORY[0x1E696ABC0]);
      v46 = @"Skipped creating remote control communication channel. CancelIfAuthRequired was used";
      v47 = 119;
    }

    else
    {
      if (v36)
      {
        v37 = v36;
        goto LABEL_24;
      }

      v45 = objc_alloc(MEMORY[0x1E696ABC0]);
      v46 = @"Failed to create remote control communication channel with no underlying error";
      v47 = 100;
    }

    v37 = [v45 initWithMRError:v47 description:v46];
    goto LABEL_24;
  }

  v38 = [MRAirPlayTransportConnection alloc];
  v39 = [(MRAirPlayTransportConnection *)v38 initWithOutputDeviceCommunicationChannel:v74[5]];
  v40 = v39;
  v41 = 0;
  if (dCopy && v39)
  {
    v50 = [[MRConfigureConnectionMessage alloc] initWithGroupID:dCopy];
    protobufData = [(MRProtocolMessage *)v50 protobufData];
    [v40 sendTransportData:protobufData options:0];

    v43 = objc_alloc_init(MRDeviceInfo);
    [(MRDeviceInfo *)v43 setDeviceUID:withCopy];
    [(MRDeviceInfo *)v43 setName:v80[5]];
    v44 = +[MRProtocolMessageLogger sharedLogger];
    [v44 logMessage:@"Message Sent:" label:@"RemoteControl" deviceInfo:v43 protocolMessage:v50];

    v41 = 0;
  }

LABEL_25:
  v48 = [objc_alloc(MEMORY[0x1E69B1470]) initWithFirst:v40 second:v41];

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);

  _Block_object_dispose(&v73, 8);
  _Block_object_dispose(&v79, 8);

  return v48;
}

void __119__MRAVOutputDeviceTransport__createConnectionWith_groupID_connectionType_shouldUseSystemAuthenticationPrompt_userInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v15 = v6;
    if (!v6)
    {
      v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:39];
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v15);
    if (!v7)
    {
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v8 = [v5 name];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *MEMORY[0x1E6958768];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __119__MRAVOutputDeviceTransport__createConnectionWith_groupID_connectionType_shouldUseSystemAuthenticationPrompt_userInfo___block_invoke_2;
    v16[3] = &unk_1E769A580;
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    v17 = v13;
    v19 = v14;
    v20 = *(a1 + 72);
    v18 = *(a1 + 32);
    [v5 openCommunicationChannelToDestination:v11 options:v12 completionHandler:v16];
  }
}

void __119__MRAVOutputDeviceTransport__createConnectionWith_groupID_connectionType_shouldUseSystemAuthenticationPrompt_userInfo___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    v11 = MRLogCategoryConnections(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v22 = 138412546;
      v23 = v12;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_ERROR, "AVOutputDevice.openCommunicationChannelWithOptions<%@> -> %@", &v22, 0x16u);
    }
  }

  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v8;
  v15 = v8;

  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v7;
  v18 = v7;

  v19 = *(*(a1 + 64) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v10;
  v21 = v10;

  dispatch_group_leave(*(a1 + 40));
}

- (void)resetWithError:(id)error
{
  errorCopy = error;
  workerQueue = self->_workerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__MRAVOutputDeviceTransport_resetWithError___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_sync(workerQueue, v7);
}

void __44__MRAVOutputDeviceTransport_resetWithError___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 64) closeWithError:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;
}

- (void)initWithOutputDevice:(uint64_t)a1 groupID:(uint64_t)a2 connectionType:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRAVOutputDeviceTransport.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"outputDevice"}];
}

@end