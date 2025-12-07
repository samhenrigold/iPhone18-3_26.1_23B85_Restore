@interface PSSGComms
- (NSString)sessionName;
- (PSSGClient)client;
- (int)sendMessageonReceiveChannel:(id)channel withReceiverPort:(BOOL)port;
- (void)dealloc;
- (void)deregisterForClient:(id)client;
- (void)receiveMessageLoop;
- (void)registerForClient:(id)client;
- (void)sendDeregisterMessage:(id)message;
- (void)sendMessage:(id)message;
- (void)sendRegisterMessage:(id)message;
- (void)waitForMessageOnReceiveChannel:(id *)channel;
@end

@implementation PSSGComms

- (void)registerForClient:(id)client
{
  clientCopy = client;
  [(PSSGComms *)self setClient:clientCopy];
  [(PSSGComms *)self setSendChannel:ps_create_comms_client_without_reply_port()];
  [(PSSGComms *)self setReceiveChannel:ps_create_comms_client_without_reply_port()];
  sessionName = [clientCopy sessionName];
  [(PSSGComms *)self setSessionName:sessionName];

  sessionName2 = [clientCopy sessionName];
  [(PSSGComms *)self sendRegisterMessage:sessionName2];

  v7 = [objc_alloc(MEMORY[0x277CCACC8]) initWithTarget:self selector:sel_receiveMessageLoop object:0];
  [(PSSGComms *)self setReceiveMessageThread:v7];

  sessionName3 = [clientCopy sessionName];

  v9 = [@"polaris-systemgraph-rx" stringByAppendingPathExtension:sessionName3];
  receiveMessageThread = [(PSSGComms *)self receiveMessageThread];
  [receiveMessageThread setName:v9];

  receiveMessageThread2 = [(PSSGComms *)self receiveMessageThread];
  [receiveMessageThread2 setThreadPriority:60.0];

  receiveMessageThread3 = [(PSSGComms *)self receiveMessageThread];
  [receiveMessageThread3 start];
}

- (void)deregisterForClient:(id)client
{
  sessionName = [(PSSGComms *)self sessionName];
  [(PSSGComms *)self sendDeregisterMessage:sessionName];
}

- (void)dealloc
{
  [(PSSGComms *)self sendChannel];
  ps_delete_comms_client();
  [(PSSGComms *)self receiveChannel];
  ps_delete_comms_client();
  [(PSSGComms *)self setClient:0];
  v3.receiver = self;
  v3.super_class = PSSGComms;
  [(PSSGComms *)&v3 dealloc];
}

- (void)sendRegisterMessage:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [PSSGMessageRegister messageWithSessionName:messageCopy];
  v6 = [(PSSGComms *)self sendMessageonReceiveChannel:v5 withReceiverPort:1];
  v7 = v6;
  v9 = __PSSGLogSharedInstance(v6, v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    v12 = 10000;
    *&v11 = 138412802;
    v18 = v11;
    do
    {
      if (v10)
      {
        v13 = getpid();
        *buf = v18;
        v20 = messageCopy;
        v21 = 1024;
        v22 = v13;
        v23 = 1024;
        v24 = v12 / 0x3E8;
        _os_log_impl(&dword_25ECD8000, v9, OS_LOG_TYPE_DEFAULT, "%@ (pid=%d) failed to send register message, will sleep for %d ms and retry", buf, 0x18u);
      }

      usleep(v12);
      if (2 * v12 >= 0xF4240)
      {
        v12 = 1000000;
      }

      else
      {
        v12 *= 2;
      }

      v14 = [(PSSGComms *)self sendMessageonReceiveChannel:v5 withReceiverPort:1, v18];
      v15 = v14;
      v9 = __PSSGLogSharedInstance(v14, v16);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    }

    while (v15);
  }

  if (v10)
  {
    v17 = getpid();
    *buf = 138412546;
    v20 = messageCopy;
    v21 = 1024;
    v22 = v17;
    _os_log_impl(&dword_25ECD8000, v9, OS_LOG_TYPE_DEFAULT, "Successfully registered %@ (pid=%d)", buf, 0x12u);
  }
}

- (void)sendDeregisterMessage:(id)message
{
  v4 = [PSSGMessageDeRegister messageWithSessionName:message];
  [(PSSGComms *)self sendMessageonReceiveChannel:v4 withReceiverPort:0];
}

- (void)sendMessage:(id)message
{
  serialize = [message serialize];
  [(PSSGComms *)self setLastMessageTypeSent:*(serialize + 48)];
  v5 = *(serialize + 340);
  sendChannel = [(PSSGComms *)self sendChannel];
  if (v5)
  {
    v7 = *(serialize + 344);
    v8 = *(serialize + 340);

    MEMORY[0x28219F328](sendChannel, serialize, 336, v7, v8, 3);
  }

  else
  {

    MEMORY[0x28219F320](sendChannel, serialize, 336, 3);
  }
}

- (int)sendMessageonReceiveChannel:(id)channel withReceiverPort:(BOOL)port
{
  portCopy = port;
  serialize = [channel serialize];
  [(PSSGComms *)self setLastMessageTypeSent:*(serialize + 48)];
  receiveChannel = [(PSSGComms *)self receiveChannel];
  if (portCopy)
  {

    return MEMORY[0x28219F338](receiveChannel, serialize, 336, 3);
  }

  else
  {

    return MEMORY[0x28219F320](receiveChannel, serialize, 336, 3);
  }
}

- (void)waitForMessageOnReceiveChannel:(id *)channel
{
  [(PSSGComms *)self receiveChannel];

  JUMPOUT(0x25F8CD340);
}

- (void)receiveMessageLoop
{
  v346 = *MEMORY[0x277D85DE8];
  while (2)
  {
    v3 = objc_autoreleasePoolPush();
    v345 = 0;
    memset(v344, 0, sizeof(v344));
    v342 = 0u;
    v343 = 0u;
    v340 = 0u;
    v341 = 0u;
    v338 = 0u;
    v339 = 0u;
    v336 = 0u;
    v337 = 0u;
    v334 = 0u;
    v335 = 0u;
    v332 = 0u;
    v333 = 0u;
    v330 = 0u;
    v331 = 0u;
    v328 = 0u;
    v329 = 0u;
    memset(v327, 0, sizeof(v327));
    v4 = [(PSSGComms *)self waitForMessageOnReceiveChannel:v327];
    switch(v328)
    {
      case 24:
        client = [(PSSGComms *)self client];
        isRegistered = [client isRegistered];

        v10 = __PSSGLogSharedInstance(v8, v9);
        v11 = v10;
        if (isRegistered)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            sessionName = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v318 = sessionName;
            _os_log_impl(&dword_25ECD8000, v11, OS_LOG_TYPE_DEFAULT, "(%@) <-- PUBLISH_RESOURCE_KEYS_AND_STRIDES", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sessionName2 = [(PSSGComms *)self sessionName];
          v229 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client2 = [(PSSGComms *)self client];
          isRegistered2 = [client2 isRegistered];
          client3 = [(PSSGComms *)self client];
          isPublished = [client3 isPublished];
          client4 = [(PSSGComms *)self client];
          isReplaying = [client4 isReplaying];
          *buf = 138413314;
          v318 = sessionName2;
          v319 = 2080;
          v320 = v229;
          v321 = 1024;
          v322 = isRegistered2;
          v323 = 1024;
          v324 = isPublished;
          v325 = 1024;
          v326 = isReplaying;
          _os_log_impl(&dword_25ECD8000, v11, OS_LOG_TYPE_ERROR, "(%@) <-- PUBLISH_RESOURCE_KEYS_AND_STRIDES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessagePublishResourceKeysAndStrides alloc] initWithRawMessage:v327];
        [client5 handlePublishResourceKeysAndStridesMessage:sessionName42];
        goto LABEL_152;
      case 25:
        client6 = [(PSSGComms *)self client];
        isRegistered3 = [client6 isRegistered];

        v90 = __PSSGLogSharedInstance(v88, v89);
        v91 = v90;
        if (isRegistered3)
        {
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
          {
            sessionName3 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v318 = sessionName3;
            _os_log_impl(&dword_25ECD8000, v91, OS_LOG_TYPE_DEFAULT, "(%@) <-- PUBLISH_RESOURCE_STREAMS", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          sessionName4 = [(PSSGComms *)self sessionName];
          v237 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client7 = [(PSSGComms *)self client];
          isRegistered4 = [client7 isRegistered];
          client8 = [(PSSGComms *)self client];
          isPublished2 = [client8 isPublished];
          client9 = [(PSSGComms *)self client];
          isReplaying2 = [client9 isReplaying];
          *buf = 138413314;
          v318 = sessionName4;
          v319 = 2080;
          v320 = v237;
          v321 = 1024;
          v322 = isRegistered4;
          v323 = 1024;
          v324 = isPublished2;
          v325 = 1024;
          v326 = isReplaying2;
          _os_log_impl(&dword_25ECD8000, v91, OS_LOG_TYPE_ERROR, "(%@) <-- PUBLISH_RESOURCE_STREAMS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessagePublishResourceStreams alloc] initWithRawMessage:v327];
        [client5 handlePublishResourceStreamsMessage:sessionName42];
        goto LABEL_152;
      case 26:
        client10 = [(PSSGComms *)self client];
        if ([client10 isRegistered])
        {
          client11 = [(PSSGComms *)self client];
          isPublished3 = [client11 isPublished];

          if (isPublished3)
          {
            v57 = __PSSGLogSharedInstance(v55, v56);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              sessionName5 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v318 = sessionName5;
              _os_log_impl(&dword_25ECD8000, v57, OS_LOG_TYPE_DEFAULT, "(%@) <-- REQUEST_RESOURCES_WITH_STRIDES", buf, 0xCu);
            }

            goto LABEL_103;
          }
        }

        else
        {
        }

        v57 = __PSSGLogSharedInstance(v55, v56);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          sessionName6 = [(PSSGComms *)self sessionName];
          v205 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client12 = [(PSSGComms *)self client];
          isRegistered5 = [client12 isRegistered];
          client13 = [(PSSGComms *)self client];
          isPublished4 = [client13 isPublished];
          client14 = [(PSSGComms *)self client];
          isReplaying3 = [client14 isReplaying];
          *buf = 138413314;
          v318 = sessionName6;
          v319 = 2080;
          v320 = v205;
          v321 = 1024;
          v322 = isRegistered5;
          v323 = 1024;
          v324 = isPublished4;
          v325 = 1024;
          v326 = isReplaying3;
          _os_log_impl(&dword_25ECD8000, v57, OS_LOG_TYPE_ERROR, "(%@) <-- REQUEST_RESOURCES_WITH_STRIDES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_103:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageRequestResourcesWithStrides alloc] initWithRawMessage:v327];
        [client5 handleResourceRequestWithStridesMessage:sessionName42];
        goto LABEL_152;
      case 27:
        client15 = [(PSSGComms *)self client];
        if ([client15 isRegistered])
        {
          lastMessageTypeSent = [(PSSGComms *)self lastMessageTypeSent];

          if (lastMessageTypeSent == 26)
          {
            v70 = __PSSGLogSharedInstance(v68, v69);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              sessionName7 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v318 = sessionName7;
              _os_log_impl(&dword_25ECD8000, v70, OS_LOG_TYPE_DEFAULT, "(%@) <-- COMPLETED_RESOURCE_REQUEST_WITH_STRIDES", buf, 0xCu);
            }

            goto LABEL_111;
          }
        }

        else
        {
        }

        v70 = __PSSGLogSharedInstance(v68, v69);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          sessionName8 = [(PSSGComms *)self sessionName];
          v221 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client16 = [(PSSGComms *)self client];
          isRegistered6 = [client16 isRegistered];
          client17 = [(PSSGComms *)self client];
          isPublished5 = [client17 isPublished];
          client18 = [(PSSGComms *)self client];
          isReplaying4 = [client18 isReplaying];
          *buf = 138413314;
          v318 = sessionName8;
          v319 = 2080;
          v320 = v221;
          v321 = 1024;
          v322 = isRegistered6;
          v323 = 1024;
          v324 = isPublished5;
          v325 = 1024;
          v326 = isReplaying4;
          _os_log_impl(&dword_25ECD8000, v70, OS_LOG_TYPE_ERROR, "(%@) <-- COMPLETED_RESOURCE_REQUEST_WITH_STRIDES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_111:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageCompletedResourceRequestWithStrides alloc] initWithRawMessage:v327];
        [client5 handleResourceRequestWithStridesCompletedMessage:sessionName42];
        goto LABEL_152;
      case 28:
        client19 = [(PSSGComms *)self client];
        isRegistered7 = [client19 isRegistered];

        v37 = __PSSGLogSharedInstance(v35, v36);
        v38 = v37;
        if (isRegistered7)
        {
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            sessionName9 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v318 = sessionName9;
            _os_log_impl(&dword_25ECD8000, v38, OS_LOG_TYPE_DEFAULT, "(%@) <-- PUBLISH_CURRENT_GRAPHS", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sessionName10 = [(PSSGComms *)self sessionName];
          v181 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client20 = [(PSSGComms *)self client];
          isRegistered8 = [client20 isRegistered];
          client21 = [(PSSGComms *)self client];
          isPublished6 = [client21 isPublished];
          client22 = [(PSSGComms *)self client];
          isReplaying5 = [client22 isReplaying];
          *buf = 138413314;
          v318 = sessionName10;
          v319 = 2080;
          v320 = v181;
          v321 = 1024;
          v322 = isRegistered8;
          v323 = 1024;
          v324 = isPublished6;
          v325 = 1024;
          v326 = isReplaying5;
          _os_log_impl(&dword_25ECD8000, v38, OS_LOG_TYPE_ERROR, "(%@) <-- PUBLISH_CURRENT_GRAPHS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessagePublishCurrentGraphs alloc] initWithRawMessage:v327];
        [client5 handlePublishCurrentGraphsMessage:sessionName42];
        goto LABEL_152;
      case 29:
        client23 = [(PSSGComms *)self client];
        if ([client23 isRegistered])
        {
          lastMessageTypeSent2 = [(PSSGComms *)self lastMessageTypeSent];

          if (lastMessageTypeSent2 == 26)
          {
            v111 = __PSSGLogSharedInstance(v109, v110);
            if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
            {
              sessionName11 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v318 = sessionName11;
              _os_log_impl(&dword_25ECD8000, v111, OS_LOG_TYPE_DEFAULT, "(%@) <-- RESOURCE_REQUESTS_FAILED", buf, 0xCu);
            }

            goto LABEL_132;
          }
        }

        else
        {
        }

        v111 = __PSSGLogSharedInstance(v109, v110);
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          sessionName12 = [(PSSGComms *)self sessionName];
          v261 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client24 = [(PSSGComms *)self client];
          isRegistered9 = [client24 isRegistered];
          client25 = [(PSSGComms *)self client];
          isPublished7 = [client25 isPublished];
          client26 = [(PSSGComms *)self client];
          isReplaying6 = [client26 isReplaying];
          *buf = 138413314;
          v318 = sessionName12;
          v319 = 2080;
          v320 = v261;
          v321 = 1024;
          v322 = isRegistered9;
          v323 = 1024;
          v324 = isPublished7;
          v325 = 1024;
          v326 = isReplaying6;
          _os_log_impl(&dword_25ECD8000, v111, OS_LOG_TYPE_ERROR, "(%@) <-- RESOURCE_REQUESTS_FAILED: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_132:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageResourceRequestsFailed alloc] initWithRawMessage:v327];
        [client5 handleResourceRequestsFailedMessage:sessionName42];
        goto LABEL_152;
      case 30:
        client27 = [(PSSGComms *)self client];
        isRegistered10 = [client27 isRegistered];

        v126 = __PSSGLogSharedInstance(v124, v125);
        v127 = v126;
        if (isRegistered10)
        {
          if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
          {
            sessionName13 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v318 = sessionName13;
            _os_log_impl(&dword_25ECD8000, v127, OS_LOG_TYPE_DEFAULT, "(%@) <-- SET_RESOURCE_AVAILABILITY", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          sessionName14 = [(PSSGComms *)self sessionName];
          v277 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client28 = [(PSSGComms *)self client];
          isRegistered11 = [client28 isRegistered];
          client29 = [(PSSGComms *)self client];
          isPublished8 = [client29 isPublished];
          client30 = [(PSSGComms *)self client];
          isReplaying7 = [client30 isReplaying];
          *buf = 138413314;
          v318 = sessionName14;
          v319 = 2080;
          v320 = v277;
          v321 = 1024;
          v322 = isRegistered11;
          v323 = 1024;
          v324 = isPublished8;
          v325 = 1024;
          v326 = isReplaying7;
          _os_log_impl(&dword_25ECD8000, v127, OS_LOG_TYPE_ERROR, "(%@) <-- SET_RESOURCE_AVAILABILITY: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageSetResourceAvailability alloc] initWithRawMessage:v327];
        [client5 handleResourceAvailabilityUpdates:sessionName42];
        goto LABEL_152;
      case 31:
        client31 = [(PSSGComms *)self client];
        isRegistered12 = [client31 isRegistered];

        v76 = __PSSGLogSharedInstance(v74, v75);
        v77 = v76;
        if (isRegistered12)
        {
          if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_115;
          }

          sessionName15 = [(PSSGComms *)self sessionName];
          v79 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client32 = [(PSSGComms *)self client];
          isRegistered13 = [client32 isRegistered];
          client33 = [(PSSGComms *)self client];
          isPublished9 = [client33 isPublished];
          client34 = [(PSSGComms *)self client];
          isReplaying8 = [client34 isReplaying];
          *buf = 138413314;
          v318 = sessionName15;
          v319 = 2080;
          v320 = v79;
          v321 = 1024;
          v322 = isRegistered13;
          v323 = 1024;
          v324 = isPublished9;
          v325 = 1024;
          v326 = isReplaying8;
          _os_log_impl(&dword_25ECD8000, v77, OS_LOG_TYPE_ERROR, "(%@) <-- REGISTER_ACK: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        else
        {
          if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_115;
          }

          sessionName15 = [(PSSGComms *)self sessionName];
          *buf = 138412290;
          v318 = sessionName15;
          _os_log_impl(&dword_25ECD8000, v77, OS_LOG_TYPE_DEFAULT, "(%@) <-- REGISTER_ACK", buf, 0xCu);
        }

LABEL_115:
        client5 = [(PSSGComms *)self client];
        [client5 handleRegisterClientAck];
        goto LABEL_153;
      case 32:
        client35 = [(PSSGComms *)self client];
        isRegistered14 = [client35 isRegistered];

        v146 = __PSSGLogSharedInstance(v144, v145);
        v147 = v146;
        if (isRegistered14)
        {
          if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
          {
            sessionName16 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v318 = sessionName16;
            _os_log_impl(&dword_25ECD8000, v147, OS_LOG_TYPE_DEFAULT, "(%@) <-- DEREGISTER_ACK", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
        {
          sessionName17 = [(PSSGComms *)self sessionName];
          v301 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client36 = [(PSSGComms *)self client];
          isRegistered15 = [client36 isRegistered];
          client37 = [(PSSGComms *)self client];
          isPublished10 = [client37 isPublished];
          client38 = [(PSSGComms *)self client];
          isReplaying9 = [client38 isReplaying];
          *buf = 138413314;
          v318 = sessionName17;
          v319 = 2080;
          v320 = v301;
          v321 = 1024;
          v322 = isRegistered15;
          v323 = 1024;
          v324 = isPublished10;
          v325 = 1024;
          v326 = isReplaying9;
          _os_log_impl(&dword_25ECD8000, v147, OS_LOG_TYPE_ERROR, "(%@) <-- DEREGISTER_ACK: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        [client5 handleDeRegisterClientAck];
        v308 = 1;
        goto LABEL_154;
      case 33:
        client39 = [(PSSGComms *)self client];
        if ([client39 isRegistered])
        {
          lastMessageTypeSent3 = [(PSSGComms *)self lastMessageTypeSent];

          if (lastMessageTypeSent3 == 6)
          {
            v50 = __PSSGLogSharedInstance(v48, v49);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              sessionName18 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v318 = sessionName18;
              _os_log_impl(&dword_25ECD8000, v50, OS_LOG_TYPE_DEFAULT, "(%@) <-- PUBLISH_ALL_GRAPHS", buf, 0xCu);
            }

            goto LABEL_99;
          }
        }

        else
        {
        }

        v50 = __PSSGLogSharedInstance(v48, v49);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          sessionName19 = [(PSSGComms *)self sessionName];
          v197 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client40 = [(PSSGComms *)self client];
          isRegistered16 = [client40 isRegistered];
          client41 = [(PSSGComms *)self client];
          isPublished11 = [client41 isPublished];
          client42 = [(PSSGComms *)self client];
          isReplaying10 = [client42 isReplaying];
          *buf = 138413314;
          v318 = sessionName19;
          v319 = 2080;
          v320 = v197;
          v321 = 1024;
          v322 = isRegistered16;
          v323 = 1024;
          v324 = isPublished11;
          v325 = 1024;
          v326 = isReplaying10;
          _os_log_impl(&dword_25ECD8000, v50, OS_LOG_TYPE_ERROR, "(%@) <-- PUBLISH_ALL_GRAPHS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_99:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageSHPublishAllGraphs alloc] initWithRawMessage:v327];
        [client5 handlePublishAllGraphs:sessionName42];
        goto LABEL_152;
      case 34:
        client43 = [(PSSGComms *)self client];
        if ([client43 isRegistered])
        {
          lastMessageTypeSent4 = [(PSSGComms *)self lastMessageTypeSent];

          if (lastMessageTypeSent4 == 7)
          {
            v140 = __PSSGLogSharedInstance(v138, v139);
            if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
            {
              sessionName20 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v318 = sessionName20;
              _os_log_impl(&dword_25ECD8000, v140, OS_LOG_TYPE_DEFAULT, "(%@) <-- PSSG_MESSAGE_SH_REPORT_PROCESS_MONITOR_STATS", buf, 0xCu);
            }

            goto LABEL_145;
          }
        }

        else
        {
        }

        v140 = __PSSGLogSharedInstance(v138, v139);
        if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
        {
          sessionName21 = [(PSSGComms *)self sessionName];
          v293 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client44 = [(PSSGComms *)self client];
          isRegistered17 = [client44 isRegistered];
          client45 = [(PSSGComms *)self client];
          isPublished12 = [client45 isPublished];
          client46 = [(PSSGComms *)self client];
          isReplaying11 = [client46 isReplaying];
          *buf = 138413314;
          v318 = sessionName21;
          v319 = 2080;
          v320 = v293;
          v321 = 1024;
          v322 = isRegistered17;
          v323 = 1024;
          v324 = isPublished12;
          v325 = 1024;
          v326 = isReplaying11;
          _os_log_impl(&dword_25ECD8000, v140, OS_LOG_TYPE_ERROR, "(%@) <-- PSSG_MESSAGE_SH_REPORT_PROCESS_MONITOR_STATS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_145:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageSHReportProcessMonitorStats alloc] initWithRawMessage:v327];
        [client5 handleReportProcessMonitorStats:sessionName42];
        goto LABEL_152;
      case 35:
        client47 = [(PSSGComms *)self client];
        if ([client47 isRegistered])
        {
          lastMessageTypeSent5 = [(PSSGComms *)self lastMessageTypeSent];

          if (lastMessageTypeSent5 == 8)
          {
            v31 = __PSSGLogSharedInstance(v29, v30);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              sessionName22 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v318 = sessionName22;
              _os_log_impl(&dword_25ECD8000, v31, OS_LOG_TYPE_DEFAULT, "(%@) <-- PSSG_MESSAGE_SH_REPORT_SYSTEM_ACTION_STATS", buf, 0xCu);
            }

            goto LABEL_88;
          }
        }

        else
        {
        }

        v31 = __PSSGLogSharedInstance(v29, v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sessionName23 = [(PSSGComms *)self sessionName];
          v173 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client48 = [(PSSGComms *)self client];
          isRegistered18 = [client48 isRegistered];
          client49 = [(PSSGComms *)self client];
          isPublished13 = [client49 isPublished];
          client50 = [(PSSGComms *)self client];
          isReplaying12 = [client50 isReplaying];
          *buf = 138413314;
          v318 = sessionName23;
          v319 = 2080;
          v320 = v173;
          v321 = 1024;
          v322 = isRegistered18;
          v323 = 1024;
          v324 = isPublished13;
          v325 = 1024;
          v326 = isReplaying12;
          _os_log_impl(&dword_25ECD8000, v31, OS_LOG_TYPE_ERROR, "(%@) <-- PSSG_MESSAGE_SH_REPORT_SYSTEM_ACTION_STATS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_88:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageSHReportSystemActionStats alloc] initWithRawMessage:v327];
        [client5 handleReportSystemActionStats:sessionName42];
        goto LABEL_152;
      case 36:
        client51 = [(PSSGComms *)self client];
        if ([client51 isRegistered])
        {
          lastMessageTypeSent6 = [(PSSGComms *)self lastMessageTypeSent];

          if (lastMessageTypeSent6 == 9)
          {
            v44 = __PSSGLogSharedInstance(v42, v43);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              sessionName24 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v318 = sessionName24;
              _os_log_impl(&dword_25ECD8000, v44, OS_LOG_TYPE_DEFAULT, "(%@) <-- PSSG_MESSAGE_SH_REPORT_PROCESS_MONITOR_EVENT_LOG", buf, 0xCu);
            }

            goto LABEL_95;
          }
        }

        else
        {
        }

        v44 = __PSSGLogSharedInstance(v42, v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          sessionName25 = [(PSSGComms *)self sessionName];
          v189 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client52 = [(PSSGComms *)self client];
          isRegistered19 = [client52 isRegistered];
          client53 = [(PSSGComms *)self client];
          isPublished14 = [client53 isPublished];
          client54 = [(PSSGComms *)self client];
          isReplaying13 = [client54 isReplaying];
          *buf = 138413314;
          v318 = sessionName25;
          v319 = 2080;
          v320 = v189;
          v321 = 1024;
          v322 = isRegistered19;
          v323 = 1024;
          v324 = isPublished14;
          v325 = 1024;
          v326 = isReplaying13;
          _os_log_impl(&dword_25ECD8000, v44, OS_LOG_TYPE_ERROR, "(%@) <-- PSSG_MESSAGE_SH_REPORT_PROCESS_MONITOR_EVENT_LOG: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_95:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageSHReportProcessMonitorEventLog alloc] initWithRawMessage:v327];
        [client5 handleReportProcessMonitorEventLog:sessionName42];
        goto LABEL_152;
      case 37:
        client55 = [(PSSGComms *)self client];
        isRegistered20 = [client55 isRegistered];

        v119 = __PSSGLogSharedInstance(v117, v118);
        v120 = v119;
        if (isRegistered20)
        {
          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
          {
            sessionName26 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v318 = sessionName26;
            _os_log_impl(&dword_25ECD8000, v120, OS_LOG_TYPE_DEFAULT, "(%@) <-- REQUEST_CURRENT_GRAPHS", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          sessionName27 = [(PSSGComms *)self sessionName];
          v269 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client56 = [(PSSGComms *)self client];
          isRegistered21 = [client56 isRegistered];
          client57 = [(PSSGComms *)self client];
          isPublished15 = [client57 isPublished];
          client58 = [(PSSGComms *)self client];
          isReplaying14 = [client58 isReplaying];
          *buf = 138413314;
          v318 = sessionName27;
          v319 = 2080;
          v320 = v269;
          v321 = 1024;
          v322 = isRegistered21;
          v323 = 1024;
          v324 = isPublished15;
          v325 = 1024;
          v326 = isReplaying14;
          _os_log_impl(&dword_25ECD8000, v120, OS_LOG_TYPE_ERROR, "(%@) <-- REQUEST_CURRENT_GRAPHS: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageRequestCurrentGraphs alloc] initWithRawMessage:v327];
        [client5 handleRequestCurrentGraphsMessage:sessionName42];
        goto LABEL_152;
      case 38:
        client59 = [(PSSGComms *)self client];
        isRegistered22 = [client59 isRegistered];

        v24 = __PSSGLogSharedInstance(v22, v23);
        v25 = v24;
        if (isRegistered22)
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            sessionName28 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v318 = sessionName28;
            _os_log_impl(&dword_25ECD8000, v25, OS_LOG_TYPE_DEFAULT, "(%@) <-- COMPLETED_CURRENT_GRAPHS_REQUEST", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sessionName29 = [(PSSGComms *)self sessionName];
          v165 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client60 = [(PSSGComms *)self client];
          isRegistered23 = [client60 isRegistered];
          client61 = [(PSSGComms *)self client];
          isPublished16 = [client61 isPublished];
          client62 = [(PSSGComms *)self client];
          isReplaying15 = [client62 isReplaying];
          *buf = 138413314;
          v318 = sessionName29;
          v319 = 2080;
          v320 = v165;
          v321 = 1024;
          v322 = isRegistered23;
          v323 = 1024;
          v324 = isPublished16;
          v325 = 1024;
          v326 = isReplaying15;
          _os_log_impl(&dword_25ECD8000, v25, OS_LOG_TYPE_ERROR, "(%@) <-- COMPLETED_CURRENT_GRAPHS_REQUEST: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageCompletedCurrentGraphsRequest alloc] initWithRawMessage:v327];
        [client5 handleCompletedCurrentGraphsRequestMessage:sessionName42];
        goto LABEL_152;
      case 39:
        client63 = [(PSSGComms *)self client];
        if ([client63 isRegistered])
        {
          client64 = [(PSSGComms *)self client];
          isReplaying16 = [client64 isReplaying];

          if ((isReplaying16 & 1) == 0)
          {
            v64 = __PSSGLogSharedInstance(v62, v63);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              sessionName30 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v318 = sessionName30;
              _os_log_impl(&dword_25ECD8000, v64, OS_LOG_TYPE_DEFAULT, "(%@) <-- SYSTEM_REPLAY_STARTING", buf, 0xCu);
            }

            goto LABEL_107;
          }
        }

        else
        {
        }

        v64 = __PSSGLogSharedInstance(v62, v63);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          sessionName31 = [(PSSGComms *)self sessionName];
          v213 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client65 = [(PSSGComms *)self client];
          isRegistered24 = [client65 isRegistered];
          client66 = [(PSSGComms *)self client];
          isPublished17 = [client66 isPublished];
          client67 = [(PSSGComms *)self client];
          isReplaying17 = [client67 isReplaying];
          *buf = 138413314;
          v318 = sessionName31;
          v319 = 2080;
          v320 = v213;
          v321 = 1024;
          v322 = isRegistered24;
          v323 = 1024;
          v324 = isPublished17;
          v325 = 1024;
          v326 = isReplaying17;
          _os_log_impl(&dword_25ECD8000, v64, OS_LOG_TYPE_ERROR, "(%@) <-- SYSTEM_REPLAY_STARTING: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_107:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageSystemReplayStarting alloc] initWithRawMessage:v327];
        [client5 handleSystemReplayStarting:sessionName42];
        goto LABEL_152;
      case 40:
        client68 = [(PSSGComms *)self client];
        if ([client68 isRegistered])
        {
          client69 = [(PSSGComms *)self client];
          isReplaying18 = [client69 isReplaying];

          if (isReplaying18)
          {
            v18 = __PSSGLogSharedInstance(v16, v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              sessionName32 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v318 = sessionName32;
              _os_log_impl(&dword_25ECD8000, v18, OS_LOG_TYPE_DEFAULT, "(%@) <-- SYSTEM_REPLAY_ENDING", buf, 0xCu);
            }

            goto LABEL_81;
          }
        }

        else
        {
        }

        v18 = __PSSGLogSharedInstance(v16, v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sessionName33 = [(PSSGComms *)self sessionName];
          v157 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client70 = [(PSSGComms *)self client];
          isRegistered25 = [client70 isRegistered];
          client71 = [(PSSGComms *)self client];
          isPublished18 = [client71 isPublished];
          client72 = [(PSSGComms *)self client];
          isReplaying19 = [client72 isReplaying];
          *buf = 138413314;
          v318 = sessionName33;
          v319 = 2080;
          v320 = v157;
          v321 = 1024;
          v322 = isRegistered25;
          v323 = 1024;
          v324 = isPublished18;
          v325 = 1024;
          v326 = isReplaying19;
          _os_log_impl(&dword_25ECD8000, v18, OS_LOG_TYPE_ERROR, "(%@) <-- SYSTEM_REPLAY_ENDING: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_81:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageSystemReplayEnding alloc] initWithRawMessage:v327];
        [client5 handleSystemReplayEnding:sessionName42];
        goto LABEL_152;
      case 41:
        client73 = [(PSSGComms *)self client];
        if ([client73 isRegistered])
        {
          client74 = [(PSSGComms *)self client];
          isReplaying20 = [client74 isReplaying];

          if (isReplaying20)
          {
            v98 = __PSSGLogSharedInstance(v96, v97);
            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              sessionName34 = [(PSSGComms *)self sessionName];
              *buf = 138412290;
              v318 = sessionName34;
              _os_log_impl(&dword_25ECD8000, v98, OS_LOG_TYPE_DEFAULT, "(%@) <-- REQUEST_GRAPH_RESUBMISSION", buf, 0xCu);
            }

            goto LABEL_125;
          }
        }

        else
        {
        }

        v98 = __PSSGLogSharedInstance(v96, v97);
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          sessionName35 = [(PSSGComms *)self sessionName];
          v245 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client75 = [(PSSGComms *)self client];
          isRegistered26 = [client75 isRegistered];
          client76 = [(PSSGComms *)self client];
          isPublished19 = [client76 isPublished];
          client77 = [(PSSGComms *)self client];
          isReplaying21 = [client77 isReplaying];
          *buf = 138413314;
          v318 = sessionName35;
          v319 = 2080;
          v320 = v245;
          v321 = 1024;
          v322 = isRegistered26;
          v323 = 1024;
          v324 = isPublished19;
          v325 = 1024;
          v326 = isReplaying21;
          _os_log_impl(&dword_25ECD8000, v98, OS_LOG_TYPE_ERROR, "(%@) <-- REQUEST_GRAPH_RESUBMISSION: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

LABEL_125:

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageRequestGraphResubmission alloc] initWithRawMessage:v327];
        [client5 handleRequestGraphResubmission:sessionName42];
LABEL_152:

LABEL_153:
        v308 = 0;
LABEL_154:

        if (*(v344 + 8) != 0 || *(&v344[1] + 1))
        {
          MEMORY[0x25F8CD300](v327);
        }

        objc_autoreleasePoolPop(v3);
        if (!v308)
        {
          continue;
        }

        return;
      case 42:
        client78 = [(PSSGComms *)self client];
        isRegistered27 = [client78 isRegistered];

        v133 = __PSSGLogSharedInstance(v131, v132);
        v134 = v133;
        if (isRegistered27)
        {
          if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
          {
            sessionName36 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v318 = sessionName36;
            _os_log_impl(&dword_25ECD8000, v134, OS_LOG_TYPE_DEFAULT, "(%@) <-- REQUEST_REPLAY_RESOURCES", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          sessionName37 = [(PSSGComms *)self sessionName];
          v285 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client79 = [(PSSGComms *)self client];
          isRegistered28 = [client79 isRegistered];
          client80 = [(PSSGComms *)self client];
          isPublished20 = [client80 isPublished];
          client81 = [(PSSGComms *)self client];
          isReplaying22 = [client81 isReplaying];
          *buf = 138413314;
          v318 = sessionName37;
          v319 = 2080;
          v320 = v285;
          v321 = 1024;
          v322 = isRegistered28;
          v323 = 1024;
          v324 = isPublished20;
          v325 = 1024;
          v326 = isReplaying22;
          _os_log_impl(&dword_25ECD8000, v134, OS_LOG_TYPE_ERROR, "(%@) <-- REQUEST_REPLAY_RESOURCES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessageRequestResourceContext alloc] initWithRawMessage:v327];
        [client5 handleRequestReplayResources:sessionName42];
        goto LABEL_152;
      case 43:
        client82 = [(PSSGComms *)self client];
        isRegistered29 = [client82 isRegistered];

        v153 = __PSSGLogSharedInstance(v151, v152);
        v154 = v153;
        if (isRegistered29)
        {
          if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
          {
            sessionName38 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v318 = sessionName38;
            _os_log_impl(&dword_25ECD8000, v154, OS_LOG_TYPE_DEFAULT, "(%@) <-- SETUP_RESOURCES", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
        {
          sessionName39 = [(PSSGComms *)self sessionName];
          v310 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client83 = [(PSSGComms *)self client];
          isRegistered30 = [client83 isRegistered];
          client84 = [(PSSGComms *)self client];
          isPublished21 = [client84 isPublished];
          client85 = [(PSSGComms *)self client];
          isReplaying23 = [client85 isReplaying];
          *buf = 138413314;
          v318 = sessionName39;
          v319 = 2080;
          v320 = v310;
          v321 = 1024;
          v322 = isRegistered30;
          v323 = 1024;
          v324 = isPublished21;
          v325 = 1024;
          v326 = isReplaying23;
          _os_log_impl(&dword_25ECD8000, v154, OS_LOG_TYPE_ERROR, "(%@) <-- SETUP_RESOURCES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageRequestResourcesBase *)[PSSGMessageSetupResources alloc] initWithRawMessage:v327];
        [client5 handleSetupResourcesMessage:sessionName42];
        goto LABEL_152;
      case 44:
        client86 = [(PSSGComms *)self client];
        isRegistered31 = [client86 isRegistered];

        v104 = __PSSGLogSharedInstance(v102, v103);
        v105 = v104;
        if (isRegistered31)
        {
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            sessionName40 = [(PSSGComms *)self sessionName];
            *buf = 138412290;
            v318 = sessionName40;
            _os_log_impl(&dword_25ECD8000, v105, OS_LOG_TYPE_DEFAULT, "(%@) <-- PAUSE_RESOURCES", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
        {
          sessionName41 = [(PSSGComms *)self sessionName];
          v253 = pssg_message_type_description[[(PSSGComms *)self lastMessageTypeSent]];
          client87 = [(PSSGComms *)self client];
          isRegistered32 = [client87 isRegistered];
          client88 = [(PSSGComms *)self client];
          isPublished22 = [client88 isPublished];
          client89 = [(PSSGComms *)self client];
          isReplaying24 = [client89 isReplaying];
          *buf = 138413314;
          v318 = sessionName41;
          v319 = 2080;
          v320 = v253;
          v321 = 1024;
          v322 = isRegistered32;
          v323 = 1024;
          v324 = isPublished22;
          v325 = 1024;
          v326 = isReplaying24;
          _os_log_impl(&dword_25ECD8000, v105, OS_LOG_TYPE_ERROR, "(%@) <-- PAUSE_RESOURCES: INVALID! last msg sent: %s, status: REGISTERED: %d, PUBLISHED: %d, REPLAYING: %d", buf, 0x28u);
        }

        client5 = [(PSSGComms *)self client];
        sessionName42 = [(PSSGMessageBase *)[PSSGMessagePauseResources alloc] initWithRawMessage:v327];
        [client5 handlePauseResourcesMessage:sessionName42];
        goto LABEL_152;
      default:
        client5 = __PSSGLogSharedInstance(v4, v5);
        if (!os_log_type_enabled(client5, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_153;
        }

        sessionName42 = [(PSSGComms *)self sessionName];
        *buf = 138412546;
        v318 = sessionName42;
        v319 = 2048;
        v320 = v328;
        _os_log_impl(&dword_25ECD8000, client5, OS_LOG_TYPE_DEFAULT, "(%@) <-- UNKNOWN! (%llu)", buf, 0x16u);
        goto LABEL_152;
    }
  }
}

- (PSSGClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

- (NSString)sessionName
{
  WeakRetained = objc_loadWeakRetained(&self->_sessionName);

  return WeakRetained;
}

@end