@interface RPNFCTransactionController
- (BOOL)_didReceiveAuthenticationResponseWithResult:(id)result error:(id)error;
- (BOOL)_didReceiveValidationResponseWithResult:(id)result error:(id)error;
- (RPNFCTransactionController)initWithPreferredPollingType:(int64_t)type dispatchQueue:(id)queue;
- (RPNFCTransactionControllerDataSource)dataSource;
- (RPNFCTransactionControllerDelegate)delegate;
- (id)_createOneShotTimerWithInterval:(double)interval completionHandler:(id)handler;
- (id)_createTapEventForApplicationLabel:(id)label;
- (void)_beginTransactionForRole:(int64_t)role;
- (void)_didReceiveAuthenticationMessage:(id)message;
- (void)_didReceiveValidationMessage:(id)message;
- (void)_fileTTRForError:(id)error;
- (void)_finishCurrentTransactionWithError:(id)error;
- (void)_releasePowerAssertion;
- (void)_requestPowerAssertion;
- (void)_startBecomeInitiatorTimer;
- (void)_startConnectToReceiverTimer;
- (void)_startInitiator;
- (void)_startInitiatorLimitTimer;
- (void)_startPollingCoolDownTimer;
- (void)_startReceiver;
- (void)_stopBecomeInitiatorTimer;
- (void)_stopConnectToReceiverTimer;
- (void)_stopInitiator;
- (void)_stopInitiatorLimitTimer;
- (void)_stopPollingCoolDownTimer;
- (void)_stopReceiver;
- (void)_stopTimers;
- (void)_updatePolling;
- (void)controller:(id)controller didInvalidate:(id)invalidate;
- (void)controller:(id)controller didReceiveField:(id)field;
- (void)controller:(id)controller didReceiveRequest:(id)request;
- (void)controllerDidConnectToReceiver:(id)receiver;
- (void)controllerDidDetectUnsupportedInitiatorVersion:(id)version;
- (void)controllerDidDetectUnsupportedReceiverVersion:(id)version;
- (void)didConnectedToInitiator:(id)initiator;
- (void)didDisconnectedFromInitiator:(id)initiator;
- (void)invalidateTransaction:(id)transaction;
- (void)setInitiatorState:(int64_t)state;
- (void)setPreferredPollingType:(int64_t)type;
- (void)setReceiverState:(int64_t)state;
- (void)start;
- (void)stop;
@end

@implementation RPNFCTransactionController

- (RPNFCTransactionController)initWithPreferredPollingType:(int64_t)type dispatchQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = RPNFCTransactionController;
  v8 = [(RPNFCTransactionController *)&v10 init];
  if (v8)
  {
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011EC64(type);
    }

    v8->_preferredPollingType = type;
    objc_storeStrong(&v8->_dispatchQueue, queue);
    v8->_receiverState = 0;
    v8->_initiatorState = 0;
  }

  return v8;
}

- (void)setPreferredPollingType:(int64_t)type
{
  if (self->_preferredPollingType != type)
  {
    self->_preferredPollingType = type;
    [(RPNFCTransactionController *)self _updatePolling];
  }
}

- (void)_updatePolling
{
  if ([(RPNFCTransactionController *)self isRunning])
  {
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011ECA4(self);
    }

    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:0];
    [(RPNFCTransactionController *)self _startReceiver];
    if ([(RPNFCTransactionController *)self preferredPollingType]== 2)
    {

      [(RPNFCTransactionController *)self _startInitiator];
    }

    else
    {

      [(RPNFCTransactionController *)self _stopInitiator];
    }
  }
}

- (void)setInitiatorState:(int64_t)state
{
  if (self->_initiatorState != state)
  {
    self->_initiatorState = state;
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011ECE8(state);
    }
  }
}

- (void)setReceiverState:(int64_t)state
{
  if (self->_receiverState != state)
  {
    self->_receiverState = state;
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011ED50(state);
    }
  }
}

- (void)start
{
  if (![(RPNFCTransactionController *)self isRunning])
  {
    v3 = [(RPNFCTransactionController *)self setIsRunning:1];
    if (dword_1001D4330 <= 30)
    {
      if (dword_1001D4330 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_10011EDB8(v3, v4, v5);
      }
    }

    [(RPNFCTransactionController *)self _updatePolling];
  }
}

- (void)stop
{
  if ([(RPNFCTransactionController *)self isRunning])
  {
    v3 = [(RPNFCTransactionController *)self setIsRunning:0];
    if (dword_1001D4330 <= 30)
    {
      if (dword_1001D4330 != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        sub_10011EDD4(v3, v4, v5);
      }
    }

    [(RPNFCTransactionController *)self _stopInitiator];
    [(RPNFCTransactionController *)self _stopReceiver];
    [(RPNFCTransactionController *)self _stopTimers];

    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:0];
  }
}

- (void)invalidateTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011EDF0(transactionCopy);
  }

  currentTransaction = [(RPNFCTransactionController *)self currentTransaction];

  if (currentTransaction)
  {
    currentTransaction2 = [(RPNFCTransactionController *)self currentTransaction];
    identifier = [currentTransaction2 identifier];
    identifier2 = [transactionCopy identifier];
    v8 = [identifier isEqual:identifier2];

    if (v8)
    {
      [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:0];
    }

    else if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011EE4C(self);
    }
  }
}

- (void)_startInitiator
{
  selfCopy = self;
  if (dword_1001D4330 <= 30)
  {
    if (dword_1001D4330 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10011EEC4(self, a2, v2);
    }
  }

  initiatorState = [(RPNFCTransactionController *)selfCopy initiatorState];
  if (initiatorState == 1)
  {
    if (dword_1001D4330 <= 30)
    {
      if (dword_1001D4330 != -1 || (initiatorState = _LogCategory_Initialize(), initiatorState))
      {
        sub_10011EEFC(initiatorState, v5, v6);
      }
    }
  }

  else
  {
    initiatorState2 = [(RPNFCTransactionController *)selfCopy initiatorState];
    if (initiatorState2 == 2)
    {
      if (dword_1001D4330 <= 30)
      {
        if (dword_1001D4330 != -1 || (initiatorState2 = _LogCategory_Initialize(), initiatorState2))
        {
          sub_10011EEE0(initiatorState2, v8, v9);
        }
      }

      [(RPNFCTransactionController *)selfCopy setPendingInitiator:1];
    }

    else
    {
      [(RPNFCTransactionController *)selfCopy setInitiatorState:1];
      [(RPNFCTransactionController *)selfCopy setPendingInitiator:0];
      initiator = selfCopy->_initiator;
      if (!initiator)
      {
        v11 = [(objc_class *)off_1001D43A0() initiatorWithDelegate:selfCopy callbackQueue:selfCopy->_dispatchQueue];
        v12 = selfCopy->_initiator;
        selfCopy->_initiator = v11;

        initiator = selfCopy->_initiator;
      }

      [(NFConnectionHandoverInitiator *)initiator setDelegate:selfCopy];
      [(NFConnectionHandoverInitiator *)selfCopy->_initiator start];
      [(RPNFCTransactionController *)selfCopy _startInitiatorLimitTimer];
      if (![(RPNFCTransactionController *)selfCopy preferredPollingType])
      {

        [(RPNFCTransactionController *)selfCopy _startConnectToReceiverTimer];
      }
    }
  }
}

- (void)_stopInitiator
{
  initiatorState = [(RPNFCTransactionController *)self initiatorState];
  if (initiatorState == 1)
  {
    if (dword_1001D4330 <= 30)
    {
      if (dword_1001D4330 != -1 || (initiatorState = _LogCategory_Initialize(), initiatorState))
      {
        sub_10011EF18(initiatorState, v4, v5);
      }
    }

    [(NFConnectionHandoverInitiator *)self->_initiator stop];
    [(RPNFCTransactionController *)self setInitiatorState:2];
    [(RPNFCTransactionController *)self _stopInitiatorLimitTimer];
  }

  [(RPNFCTransactionController *)self setPendingInitiator:0];
}

- (void)_startReceiver
{
  selfCopy = self;
  if (dword_1001D4330 <= 30)
  {
    if (dword_1001D4330 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10011EF34(self, a2, v2);
    }
  }

  receiverState = [(RPNFCTransactionController *)selfCopy receiverState];
  if (receiverState == 1)
  {
    if (dword_1001D4330 <= 30)
    {
      if (dword_1001D4330 != -1 || (receiverState = _LogCategory_Initialize(), receiverState))
      {
        sub_10011EF6C(receiverState, v5, v6);
      }
    }
  }

  else
  {
    receiverState2 = [(RPNFCTransactionController *)selfCopy receiverState];
    if (receiverState2 == 2)
    {
      if (dword_1001D4330 <= 30)
      {
        if (dword_1001D4330 != -1 || (receiverState2 = _LogCategory_Initialize(), receiverState2))
        {
          sub_10011EF50(receiverState2, v8, v9);
        }
      }

      [(RPNFCTransactionController *)selfCopy setPendingReceiver:1];
    }

    else
    {
      [(RPNFCTransactionController *)selfCopy setReceiverState:1];
      [(RPNFCTransactionController *)selfCopy setPendingReceiver:0];
      receiver = selfCopy->_receiver;
      if (!receiver)
      {
        v11 = [(objc_class *)off_1001D43A8() receiverWithDelegate:selfCopy callbackQueue:selfCopy->_dispatchQueue];
        v12 = selfCopy->_receiver;
        selfCopy->_receiver = v11;

        receiver = selfCopy->_receiver;
      }

      [(NFConnectionHandoverReceiver *)receiver setDelegate:selfCopy];
      v13 = selfCopy->_receiver;

      [(NFConnectionHandoverReceiver *)v13 start];
    }
  }
}

- (void)_stopReceiver
{
  receiverState = [(RPNFCTransactionController *)self receiverState];
  if (receiverState == 1)
  {
    if (dword_1001D4330 <= 30)
    {
      if (dword_1001D4330 != -1 || (receiverState = _LogCategory_Initialize(), receiverState))
      {
        sub_10011EF88(receiverState, v4, v5);
      }
    }

    [(NFConnectionHandoverReceiver *)self->_receiver stop];
    [(RPNFCTransactionController *)self setReceiverState:2];
  }

  [(RPNFCTransactionController *)self setPendingReceiver:0];
}

- (void)_stopTimers
{
  [(RPNFCTransactionController *)self _stopPollingCoolDownTimer];
  [(RPNFCTransactionController *)self _stopInitiatorLimitTimer];
  [(RPNFCTransactionController *)self _stopConnectToReceiverTimer];

  [(RPNFCTransactionController *)self _stopBecomeInitiatorTimer];
}

- (id)_createOneShotTimerWithInterval:(double)interval completionHandler:(id)handler
{
  dispatchQueue = self->_dispatchQueue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(dispatchQueue);
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  dispatch_source_set_event_handler(v7, handlerCopy);

  CUDispatchTimerSet();

  return v7;
}

- (void)_startPollingCoolDownTimer
{
  [(RPNFCTransactionController *)self _stopPollingCoolDownTimer];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007C068;
  v4[3] = &unk_1001AA970;
  v4[4] = self;
  v3 = [(RPNFCTransactionController *)self _createOneShotTimerWithInterval:v4 completionHandler:10.0];
  [(RPNFCTransactionController *)self setPollingCoolDownTimer:v3];
  dispatch_activate(v3);
}

- (void)_stopPollingCoolDownTimer
{
  pollingCoolDownTimer = [(RPNFCTransactionController *)self pollingCoolDownTimer];

  if (pollingCoolDownTimer)
  {
    if (dword_1001D4330 <= 30)
    {
      if (dword_1001D4330 != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        sub_10011EFE8(v4, v5, v6);
      }
    }

    pollingCoolDownTimer = self->_pollingCoolDownTimer;
    if (pollingCoolDownTimer)
    {
      v8 = pollingCoolDownTimer;
      dispatch_source_cancel(v8);
      v9 = self->_pollingCoolDownTimer;
      self->_pollingCoolDownTimer = 0;
    }

    [(RPNFCTransactionController *)self setPollingCoolDownTimer:0];
  }
}

- (void)_startConnectToReceiverTimer
{
  [(RPNFCTransactionController *)self _stopConnectToReceiverTimer];
  v3 = (arc4random_uniform(3u) + 3);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007C27C;
  v5[3] = &unk_1001AA970;
  v5[4] = self;
  v4 = [(RPNFCTransactionController *)self _createOneShotTimerWithInterval:v5 completionHandler:v3];
  [(RPNFCTransactionController *)self setConnectToReceiverTimer:v4];
  dispatch_activate(v4);
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F004(v3);
  }
}

- (void)_stopConnectToReceiverTimer
{
  connectToReceiverTimer = [(RPNFCTransactionController *)self connectToReceiverTimer];

  if (connectToReceiverTimer)
  {
    if (dword_1001D4330 <= 30)
    {
      if (dword_1001D4330 != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        sub_10011F060(v4, v5, v6);
      }
    }

    connectToReceiverTimer = self->_connectToReceiverTimer;
    if (connectToReceiverTimer)
    {
      v8 = connectToReceiverTimer;
      dispatch_source_cancel(v8);
      v9 = self->_connectToReceiverTimer;
      self->_connectToReceiverTimer = 0;
    }

    [(RPNFCTransactionController *)self setConnectToReceiverTimer:0];
  }
}

- (void)_startInitiatorLimitTimer
{
  [(RPNFCTransactionController *)self _stopInitiatorLimitTimer];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007C480;
  v4[3] = &unk_1001AA970;
  v4[4] = self;
  v3 = [(RPNFCTransactionController *)self _createOneShotTimerWithInterval:v4 completionHandler:60.0];
  [(RPNFCTransactionController *)self setInitiatorLimitTimer:v3];
  dispatch_activate(v3);
}

- (void)_stopInitiatorLimitTimer
{
  initiatorLimitTimer = [(RPNFCTransactionController *)self initiatorLimitTimer];

  if (initiatorLimitTimer)
  {
    initiatorLimitTimer = self->_initiatorLimitTimer;
    if (initiatorLimitTimer)
    {
      v5 = initiatorLimitTimer;
      dispatch_source_cancel(v5);
      v6 = self->_initiatorLimitTimer;
      self->_initiatorLimitTimer = 0;
    }

    [(RPNFCTransactionController *)self setInitiatorLimitTimer:0];
  }
}

- (void)_startBecomeInitiatorTimer
{
  [(RPNFCTransactionController *)self _stopBecomeInitiatorTimer];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007C614;
  v4[3] = &unk_1001AA970;
  v4[4] = self;
  v3 = [(RPNFCTransactionController *)self _createOneShotTimerWithInterval:v4 completionHandler:0.7];
  [(RPNFCTransactionController *)self setBecomeInitiatorTimer:v3];
  dispatch_activate(v3);
}

- (void)_stopBecomeInitiatorTimer
{
  becomeInitiatorTimer = [(RPNFCTransactionController *)self becomeInitiatorTimer];

  if (becomeInitiatorTimer)
  {
    becomeInitiatorTimer = self->_becomeInitiatorTimer;
    if (becomeInitiatorTimer)
    {
      v5 = becomeInitiatorTimer;
      dispatch_source_cancel(v5);
      v6 = self->_becomeInitiatorTimer;
      self->_becomeInitiatorTimer = 0;
    }

    [(RPNFCTransactionController *)self setBecomeInitiatorTimer:0];
  }
}

- (void)_beginTransactionForRole:(int64_t)role
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F108(role);
  }

  currentTransaction = [(RPNFCTransactionController *)self currentTransaction];

  if (currentTransaction)
  {
    if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011F148(role);
    }

    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:0];
  }

  v6 = [[RPNFCTransaction alloc] initWithRole:role];
  [(RPNFCTransactionController *)self setCurrentTransaction:v6];

  delegate = [(RPNFCTransactionController *)self delegate];
  currentTransaction2 = [(RPNFCTransactionController *)self currentTransaction];
  [delegate transactionController:self didBeginTransaction:currentTransaction2];
}

- (void)_finishCurrentTransactionWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  currentTransaction = [(RPNFCTransactionController *)self currentTransaction];

  if (currentTransaction)
  {
    [(RPNFCTransactionController *)self _stopInitiator];
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011F188(self, errorCopy);
    }

    currentTransaction2 = [(RPNFCTransactionController *)self currentTransaction];
    [currentTransaction2 setError:errorCopy];
    [(RPNFCTransactionController *)self setCurrentTransaction:0];
    delegate = [(RPNFCTransactionController *)self delegate];
    [delegate transactionController:self didFinishTransaction:currentTransaction2 error:errorCopy];

    [(RPNFCTransactionController *)self _updatePolling];
  }
}

- (BOOL)_didReceiveAuthenticationResponseWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D4330, "[RPNFCTransactionController _didReceiveAuthenticationResponseWithResult:error:]", 30, "did receive authentication response with result:%@ error:%@\n", resultCopy, errorCopy);
  }

  if (errorCopy)
  {
    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:errorCopy];
    v8 = 0;
  }

  else
  {
    v9 = [RPTransportServiceHandoverMessage messageWithConnectionHandoverSelect:resultCopy];
    v17 = v9;
    v8 = v9 != 0;
    if (v9)
    {
      [(RPNFCTransactionController *)self _didReceiveAuthenticationMessage:v9];
    }

    else
    {
      if (dword_1001D4330 <= 90)
      {
        if (dword_1001D4330 != -1 || (v9 = _LogCategory_Initialize(), v9))
        {
          sub_10011F1F4(v9, v10, v11);
        }
      }

      v18 = RPErrorF(4294960579, "Unexpected Connection handover select message", v11, v12, v13, v14, v15, v16, v20);
      [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:v18];
    }
  }

  return v8;
}

- (void)_didReceiveAuthenticationMessage:(id)message
{
  messageCopy = message;
  v4 = +[RPIdentityDaemon sharedIdentityDaemon];
  payload = [messageCopy payload];
  v6 = [v4 resolveIdentityForNearFieldMessagePayload:payload];

  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D4330, "[RPNFCTransactionController _didReceiveAuthenticationMessage:]", 30, "did receive authentication message:%@ with resolved identity:%@\n", messageCopy, v6);
  }

  currentTransaction = [(RPNFCTransactionController *)self currentTransaction];
  [currentTransaction setRemoteIdentity:v6];

  currentTransaction2 = [(RPNFCTransactionController *)self currentTransaction];
  [currentTransaction2 setRemoteAuthenticationMessage:messageCopy];
}

- (BOOL)_didReceiveValidationResponseWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D4330, "[RPNFCTransactionController _didReceiveValidationResponseWithResult:error:]", 30, "did receive validation response with result:%@ error:%@\n", resultCopy, errorCopy);
  }

  v8 = errorCopy == 0;
  if (errorCopy)
  {
    goto LABEL_8;
  }

  v9 = [RPTransportServiceHandoverMessage messageWithConnectionHandoverSelect:resultCopy];
  if (v9)
  {
    v17 = v9;
    [(RPNFCTransactionController *)self _didReceiveValidationMessage:v9];

LABEL_8:
    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:errorCopy];
    goto LABEL_9;
  }

  if (dword_1001D4330 <= 90)
  {
    if (dword_1001D4330 != -1 || (v9 = _LogCategory_Initialize(), v9))
    {
      sub_10011F210(v9, v10, v11);
    }
  }

  v19 = RPErrorF(4294960579, "Unexpected Connection handover select message", v11, v12, v13, v14, v15, v16, v20);
  [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:v19];

  v8 = 0;
LABEL_9:

  return v8;
}

- (void)_didReceiveValidationMessage:(id)message
{
  messageCopy = message;
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F22C(messageCopy);
  }

  currentTransaction = [(RPNFCTransactionController *)self currentTransaction];
  [currentTransaction setRemoteValidationMessage:messageCopy];

  applicationLabel = [messageCopy applicationLabel];
  v6 = [(RPNFCTransactionController *)self _createTapEventForApplicationLabel:applicationLabel];

  currentTransaction2 = [(RPNFCTransactionController *)self currentTransaction];
  [currentTransaction2 setTapEvent:v6];
}

- (id)_createTapEventForApplicationLabel:(id)label
{
  labelCopy = label;
  currentTransaction = [(RPNFCTransactionController *)self currentTransaction];
  remoteAuthenticationMessage = [currentTransaction remoteAuthenticationMessage];

  payload = [remoteAuthenticationMessage payload];
  currentTransaction2 = [(RPNFCTransactionController *)self currentTransaction];
  remoteValidationMessage = [currentTransaction2 remoteValidationMessage];
  payload2 = [remoteValidationMessage payload];

  transportServicesMetadata = [remoteAuthenticationMessage transportServicesMetadata];
  v12 = sub_1000582B0(transportServicesMetadata);

  if (payload2 && ![payload2 isKnownIdentity])
  {
    remoteIdentity = 0;
  }

  else
  {
    currentTransaction3 = [(RPNFCTransactionController *)self currentTransaction];
    remoteIdentity = [currentTransaction3 remoteIdentity];
  }

  dataSource = [(RPNFCTransactionController *)self dataSource];
  pkData = [payload pkData];
  bonjourListenerUUID = [payload bonjourListenerUUID];
  v18 = [dataSource transactionController:self tapEventForApplicationLabel:labelCopy singleBandAWDLModeRequested:v12 pkData:pkData bonjourListenerUUID:bonjourListenerUUID identity:remoteIdentity];

  return v18;
}

- (void)controller:(id)controller didReceiveField:(id)field
{
  controllerCopy = controller;
  fieldCopy = field;
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F26C(fieldCopy);
  }

  if ([controllerCopy initiator])
  {
    chFieldType = [fieldCopy chFieldType];
    if (chFieldType == 4)
    {
      if (dword_1001D4330 <= 30)
      {
        if (dword_1001D4330 != -1 || (chFieldType = _LogCategory_Initialize(), chFieldType))
        {
          sub_10011F358(chFieldType, v8, v9);
        }
      }

      [(RPNFCTransactionController *)self _stopInitiator];
    }

    goto LABEL_19;
  }

  currentTransaction = [(RPNFCTransactionController *)self currentTransaction];

  if (currentTransaction)
  {
    goto LABEL_19;
  }

  chFieldType2 = [fieldCopy chFieldType];
  v12 = chFieldType2;
  v14 = chFieldType2 == 2 || chFieldType2 == 4;
  preferredPollingType = [(RPNFCTransactionController *)self preferredPollingType];
  if (preferredPollingType == 1)
  {
    goto LABEL_18;
  }

  if (v12 > 2)
  {
    switch(v12)
    {
      case 3:
        if (dword_1001D4330 <= 30)
        {
          if (dword_1001D4330 != -1 || (preferredPollingType = _LogCategory_Initialize(), preferredPollingType))
          {
            sub_10011F320(preferredPollingType, v16, v17);
          }
        }

        receiver = [(RPNFCTransactionController *)self receiver];
        roleBroadcastInBackground = [receiver roleBroadcastInBackground];

        if (!roleBroadcastInBackground)
        {
          if (dword_1001D4330 > 90)
          {
            goto LABEL_19;
          }

          if (dword_1001D4330 == -1)
          {
            v21 = _LogCategory_Initialize();
            if (!v21)
            {
              goto LABEL_19;
            }
          }

LABEL_33:
          sub_10011F2E8(v21, v22, v23);
          goto LABEL_19;
        }

        break;
      case 4:
        if (dword_1001D4330 <= 30)
        {
          if (dword_1001D4330 != -1 || (preferredPollingType = _LogCategory_Initialize(), preferredPollingType))
          {
            sub_10011F304(preferredPollingType, v16, v17);
          }
        }

        [(RPNFCTransactionController *)self _stopInitiator];
        goto LABEL_18;
      case 5:
        if (dword_1001D4330 <= 30)
        {
          if (dword_1001D4330 != -1 || (preferredPollingType = _LogCategory_Initialize(), preferredPollingType))
          {
            sub_10011F2CC(preferredPollingType, v16, v17);
          }
        }

        receiver2 = [(RPNFCTransactionController *)self receiver];
        roleBroadcastInBackground2 = [receiver2 roleBroadcastInBackground];

        if (!roleBroadcastInBackground2)
        {
          if (dword_1001D4330 > 90)
          {
            goto LABEL_19;
          }

          if (dword_1001D4330 == -1)
          {
            v21 = _LogCategory_Initialize();
            if (!v21)
            {
              goto LABEL_19;
            }
          }

          goto LABEL_33;
        }

        break;
      default:
LABEL_18:
        delegate = [(RPNFCTransactionController *)self delegate];
        [delegate transactionController:self didDetectDeviceNearbyWithInitiatorRole:v14];

        goto LABEL_19;
    }

    [(RPNFCTransactionController *)self _startInitiator];
    goto LABEL_18;
  }

  if (v12 == 1)
  {
    if (dword_1001D4330 <= 60 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011F2AC();
    }
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    if (dword_1001D4330 <= 30)
    {
      if (dword_1001D4330 != -1 || (preferredPollingType = _LogCategory_Initialize(), preferredPollingType))
      {
        sub_10011F33C(preferredPollingType, v16, v17);
      }
    }

    [(RPNFCTransactionController *)self _stopInitiator];
    receiver3 = [(RPNFCTransactionController *)self receiver];
    roleBroadcastInBackground3 = [receiver3 roleBroadcastInBackground];

    if (roleBroadcastInBackground3)
    {
      [(RPNFCTransactionController *)self _startBecomeInitiatorTimer];
      goto LABEL_18;
    }
  }

LABEL_19:
}

- (void)controller:(id)controller didInvalidate:(id)invalidate
{
  controllerCopy = controller;
  invalidateCopy = invalidate;
  initiator = [controllerCopy initiator];
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F374(initiator, controllerCopy, invalidateCopy);
  }

  if (initiator)
  {
    [(RPNFCTransactionController *)self setInitiatorState:0];
    [(RPNFCTransactionController *)self _stopConnectToReceiverTimer];
    [(RPNFCTransactionController *)self _stopInitiatorLimitTimer];
    if (invalidateCopy)
    {
      goto LABEL_6;
    }

LABEL_22:
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011F428(self);
    }

    if ([(RPNFCTransactionController *)self pendingReceiver]|| [(RPNFCTransactionController *)self pendingInitiator])
    {
      [(RPNFCTransactionController *)self _updatePolling];
    }

    goto LABEL_30;
  }

  receiver = [(RPNFCTransactionController *)self receiver];

  if (receiver != controllerCopy)
  {
    if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011F3E8(controllerCopy);
    }

    goto LABEL_30;
  }

  [(RPNFCTransactionController *)self setReceiverState:0];
  [(RPNFCTransactionController *)self _stopBecomeInitiatorTimer];
  if (!invalidateCopy)
  {
    goto LABEL_22;
  }

LABEL_6:
  if ([invalidateCopy code] != 57)
  {
    if ([invalidateCopy code] == 67 || objc_msgSend(invalidateCopy, "code") == 68)
    {
      goto LABEL_30;
    }

    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:invalidateCopy];
    if ([invalidateCopy code] == 50 || objc_msgSend(invalidateCopy, "code") == 47 || objc_msgSend(invalidateCopy, "code") == 44)
    {
      [(RPNFCTransactionController *)self _startPollingCoolDownTimer];
      goto LABEL_30;
    }
  }

  if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D4330, "[RPNFCTransactionController controller:didInvalidate:]", 90, "### Failing to start controller:%@ error:%@", controllerCopy, invalidateCopy);
  }

  [(RPNFCTransactionController *)self stop];
LABEL_30:
}

- (void)controllerDidDetectUnsupportedReceiverVersion:(id)version
{
  versionCopy = version;
  v9 = versionCopy;
  if (dword_1001D4330 <= 30)
  {
    if (dword_1001D4330 != -1 || (versionCopy = _LogCategory_Initialize(), versionCopy))
    {
      sub_10011F4B8(versionCopy, v5, v6);
    }
  }

  currentTransaction = [(RPNFCTransactionController *)self currentTransaction];
  role = [currentTransaction role];

  if (role == 1)
  {
    [(RPNFCTransactionController *)self _stopInitiator];
    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:0];
  }
}

- (void)controllerDidConnectToReceiver:(id)receiver
{
  receiverCopy = receiver;
  if ([(RPNFCTransactionController *)self initiatorState]== 1)
  {
    _stopConnectToReceiverTimer = [(RPNFCTransactionController *)self _stopConnectToReceiverTimer];
    if (dword_1001D4330 <= 30)
    {
      if (dword_1001D4330 != -1 || (_stopConnectToReceiverTimer = _LogCategory_Initialize(), _stopConnectToReceiverTimer))
      {
        sub_10011F4D4(_stopConnectToReceiverTimer, v6, v7);
      }
    }

    [(RPNFCTransactionController *)self _beginTransactionForRole:1];
    dataSource = [(RPNFCTransactionController *)self dataSource];
    v9 = [dataSource transactionController:self requestMessageForType:1];

    if (v9)
    {
      currentTransaction = [(RPNFCTransactionController *)self currentTransaction];
      [currentTransaction setLocalAuthenticationMessage:v9];

      if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
      {
        sub_10011F4F0(v9);
      }

      connectionHandoverRequest = [v9 connectionHandoverRequest];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10007D81C;
      v16[3] = &unk_1001AD808;
      v16[4] = self;
      v17 = receiverCopy;
      [v17 sendHandoverRequest:connectionHandoverRequest responseHandler:v16];
    }

    else
    {
      if (dword_1001D4330 <= 90)
      {
        if (dword_1001D4330 != -1 || (v10 = _LogCategory_Initialize(), v10))
        {
          sub_10011F530(v10, v11, v12);
        }
      }

      v15 = [NSError errorWithDomain:@"RPNFCTransactionControllerErrorDomain" code:2 userInfo:0];
      [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:v15];
    }
  }
}

- (void)controllerDidDetectUnsupportedInitiatorVersion:(id)version
{
  versionCopy = version;
  v5 = versionCopy;
  if (dword_1001D4330 <= 30)
  {
    v6 = versionCopy;
    if (dword_1001D4330 != -1 || (versionCopy = _LogCategory_Initialize(), v5 = v6, versionCopy))
    {
      sub_10011F5C4(versionCopy, v5, v4);
      v5 = v6;
    }
  }
}

- (void)didConnectedToInitiator:(id)initiator
{
  receiverState = [(RPNFCTransactionController *)self receiverState];
  if (receiverState == 1)
  {
    if (dword_1001D4330 <= 30)
    {
      if (dword_1001D4330 != -1 || (receiverState = _LogCategory_Initialize(), receiverState))
      {
        sub_10011F5E0(receiverState, v5, v6);
      }
    }

    [(RPNFCTransactionController *)self _stopBecomeInitiatorTimer];
    [(RPNFCTransactionController *)self _stopInitiator];

    [(RPNFCTransactionController *)self _beginTransactionForRole:2];
  }
}

- (void)didDisconnectedFromInitiator:(id)initiator
{
  initiatorCopy = initiator;
  v12 = initiatorCopy;
  if (dword_1001D4330 <= 30)
  {
    if (dword_1001D4330 != -1 || (initiatorCopy = _LogCategory_Initialize(), initiatorCopy))
    {
      sub_10011F5FC(initiatorCopy, v5, v6);
    }
  }

  currentTransaction = [(RPNFCTransactionController *)self currentTransaction];
  role = [currentTransaction role];

  if (role == 2)
  {
    currentTransaction2 = [(RPNFCTransactionController *)self currentTransaction];
    state = [currentTransaction2 state];

    if (state == 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = [NSError errorWithDomain:@"RPNFCTransactionControllerErrorDomain" code:0 userInfo:0];
    }

    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:v11];
  }
}

- (void)controller:(id)controller didReceiveRequest:(id)request
{
  controllerCopy = controller;
  requestCopy = request;
  if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F618(requestCopy);
  }

  v8 = [RPTransportServiceHandoverMessage messageWithConnectionHandoverRequest:requestCopy];
  v16 = v8;
  if (v8)
  {
    dataSource = [(RPNFCTransactionController *)self dataSource];
    v18 = [dataSource transactionController:self responseMessageForRequestMessage:v16];

    if (!v18)
    {
      if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
      {
        sub_10011F7D0(v16);
      }

      connectionHandoverSelect = [NSError errorWithDomain:@"RPNFCTransactionControllerErrorDomain" code:2 userInfo:0];
      [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:connectionHandoverSelect];
      goto LABEL_56;
    }

    connectionHandoverSelect = [v18 connectionHandoverSelect];
    payload = [v16 payload];
    type = [payload type];

    if (type)
    {
      payload2 = [v16 payload];
      type2 = [payload2 type];

      currentTransaction = [(RPNFCTransactionController *)self currentTransaction];
      payload3 = currentTransaction;
      v29 = type2 == 1;
      if (type2 == 1)
      {
        [currentTransaction setLocalAuthenticationMessage:v18];
        v30 = 0.0;
        goto LABEL_51;
      }

      [currentTransaction setLocalValidationMessage:v18];

      currentTransaction2 = [(RPNFCTransactionController *)self currentTransaction];
      remoteAuthenticationMessage = [currentTransaction2 remoteAuthenticationMessage];

      if (remoteAuthenticationMessage)
      {
        v46 = v29;
        payload3 = [v16 payload];
        if ([payload3 isKnownIdentity] && (-[RPNFCTransactionController currentTransaction](self, "currentTransaction"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "remoteIdentity"), v35 = objc_claimAutoreleasedReturnValue(), v34, v35))
        {
          v30 = 0.0;
        }

        else
        {
          v45 = controllerCopy;
          v39 = +[NSDate now];
          currentTransaction3 = [(RPNFCTransactionController *)self currentTransaction];
          connectionDate = [currentTransaction3 connectionDate];
          [v39 timeIntervalSinceDate:connectionDate];
          v43 = v42;

          if (dword_1001D4330 < 31)
          {
            controllerCopy = v45;
            if (dword_1001D4330 != -1 || _LogCategory_Initialize())
            {
              sub_10011F658(v43);
            }

            v30 = fmax(0.8 - v43, 0.0);
            v29 = v46;
            if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
            {
              sub_10011F698(v30);
            }

            v35 = 0;
            goto LABEL_50;
          }

          v35 = 0;
          v30 = fmax(0.8 - v43, 0.0);
          controllerCopy = v45;
        }

        v29 = v46;
LABEL_50:

LABEL_51:
        if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1001D4330, "[RPNFCTransactionController controller:didReceiveRequest:]", 30, "send handover select to initiator with delay: %fs response: %@", *&v30, v18);
        }

        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_10007E2EC;
        v47[3] = &unk_1001AD830;
        v47[4] = self;
        v49 = v29;
        v48 = v16;
        [controllerCopy sendHandoverSelect:connectionHandoverSelect delay:v47 completionHandler:v30];

        goto LABEL_56;
      }

      if (dword_1001D4330 <= 115 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
      {
        sub_10011F6D8(self);
      }

      v31 = [NSError errorWithDomain:@"RPNFCTransactionControllerErrorDomain" code:1 userInfo:0];
    }

    else
    {
      if (dword_1001D4330 <= 30)
      {
        if (dword_1001D4330 != -1 || (v22 = _LogCategory_Initialize(), v22))
        {
          sub_10011F734(v22, v23, v24);
        }
      }

      [(RPNFCTransactionController *)self _didReceiveAuthenticationMessage:v16];
      if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
      {
        sub_10011F750(v18);
      }

      v50 = 0;
      [controllerCopy sendHandoverSelect:connectionHandoverSelect error:&v50];
      v31 = v50;
      if (!v31)
      {
        applicationLabel = [requestCopy applicationLabel];
        v37 = [(RPNFCTransactionController *)self _createTapEventForApplicationLabel:applicationLabel];

        currentTransaction4 = [(RPNFCTransactionController *)self currentTransaction];
        [currentTransaction4 setTapEvent:v37];

LABEL_46:
LABEL_56:

        goto LABEL_57;
      }

      if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
      {
        sub_10011F790(v31);
      }
    }

    [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:v31];
    goto LABEL_46;
  }

  if (dword_1001D4330 <= 90)
  {
    if (dword_1001D4330 != -1 || (v8 = _LogCategory_Initialize(), v8))
    {
      sub_10011F810(v8, v9, v10);
    }
  }

  v18 = RPErrorF(4294960579, "Unexpected Connection handover select message", v10, v11, v12, v13, v14, v15, v44);
  [(RPNFCTransactionController *)self _finishCurrentTransactionWithError:v18];
LABEL_57:
}

- (void)_requestPowerAssertion
{
  v4 = 0;
  v3 = sub_1000583F4(&v4);
  [(RPNFCTransactionController *)self _releasePowerAssertion];
  [(RPNFCTransactionController *)self setPowerAssertionID:v4];
  if (v3 && dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F86C(self);
  }
}

- (void)_releasePowerAssertion
{
  powerAssertionID = [(RPNFCTransactionController *)self powerAssertionID];
  if (sub_100058518(&powerAssertionID))
  {
    if (dword_1001D4330 <= 30 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
    {
      sub_10011F8B0(self);
    }

    [(RPNFCTransactionController *)self setPowerAssertionID:powerAssertionID];
  }
}

- (void)_fileTTRForError:(id)error
{
  errorCopy = error;
  v4 = objc_alloc_init(NSURLComponents);
  [v4 setScheme:@"tap-to-radar"];
  [v4 setHost:@"new"];
  v5 = [NSURLQueryItem queryItemWithName:@"ComponentID" value:@"800892"];
  v6 = [NSURLQueryItem queryItemWithName:@"ComponentName" value:@"Rapport"];
  v7 = [NSURLQueryItem queryItemWithName:@"ComponentVersion" value:@"All"];
  v19 = [NSURLQueryItem queryItemWithName:@"DeviceClasses" value:@"iPhone, Watch"];
  v8 = [NSURLQueryItem queryItemWithName:@"Classification" value:@"Serious Bug"];
  v9 = +[NSDate date];
  v10 = objc_alloc_init(NSDateFormatter);
  [v10 setDateFormat:@"yyyy.MM.dd_HH-mm-ss"];
  v21 = v9;
  v20 = [v10 stringFromDate:v9];
  v11 = [NSURLQueryItem queryItemWithName:@"TimeOfIssue" value:?];
  errorCopy = [NSString stringWithFormat:@"Failing to start NFC controller with error:%@", errorCopy];

  v13 = [NSURLQueryItem queryItemWithName:@"Title" value:@"Unexpected error when starting NFC controller"];
  v14 = [NSURLQueryItem queryItemWithName:@"Description" value:errorCopy];
  v22 = v6;
  v23 = v5;
  v26[0] = v5;
  v26[1] = v6;
  v26[2] = v7;
  v26[3] = v19;
  v26[4] = v8;
  v26[5] = v11;
  v26[6] = v13;
  v26[7] = v14;
  v15 = [NSArray arrayWithObjects:v26 count:8];
  [v4 setQueryItems:v15];

  if (dword_1001D4330 <= 90 && (dword_1001D4330 != -1 || _LogCategory_Initialize()))
  {
    sub_10011F8F4(v4);
  }

  defaultWorkspace = [(objc_class *)off_1001D43B0() defaultWorkspace];
  v17 = [v4 URL];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10007E824;
  v24[3] = &unk_1001AAB18;
  v25 = v4;
  v18 = v4;
  [defaultWorkspace openURL:v17 configuration:0 completionHandler:v24];
}

- (RPNFCTransactionControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (RPNFCTransactionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end