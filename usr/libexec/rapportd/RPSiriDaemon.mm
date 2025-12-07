@interface RPSiriDaemon
- (BOOL)activateAndReturnError:(id *)error;
- (RPSiriDaemon)init;
- (void)_handleSiriAudio:(id)audio;
- (void)_handleSiriStart:(id)start options:(id)options responseHandler:(id)handler;
- (void)_handleSiriStartWhileRecording:(id)recording options:(id)options responseHandler:(id)handler;
- (void)_handleSiriStop:(id)stop options:(id)options responseHandler:(id)handler;
- (void)invalidate;
@end

@implementation RPSiriDaemon

- (RPSiriDaemon)init
{
  v6.receiver = self;
  v6.super_class = RPSiriDaemon;
  v2 = [(RPSiriDaemon *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v4 = v3;
  }

  return v3;
}

- (BOOL)activateAndReturnError:(id *)error
{
  dispatchQueue = [(RPMessageable *)self->_messenger dispatchQueue];
  dispatchQueue = dispatchQueue;
  if (!dispatchQueue)
  {
    dispatchQueue = self->_dispatchQueue;
  }

  objc_storeStrong(&self->_dispatchQueue, dispatchQueue);

  v7 = self->_messenger;
  v15 = v7;
  if (!v7)
  {
    v17 = RPErrorF(4294960591, "No messenger provided", v9, v10, v11, v12, v13, v14, v20);
    if (dword_1001D4E40 <= 90 && (dword_1001D4E40 != -1 || _LogCategory_Initialize()))
    {
      sub_10012B2B0(v17);
      if (!error)
      {
        goto LABEL_13;
      }
    }

    else if (!error)
    {
LABEL_13:

      goto LABEL_14;
    }

    v18 = v17;
    *error = v17;
    goto LABEL_13;
  }

  if (dword_1001D4E40 <= 30)
  {
    if (dword_1001D4E40 != -1 || (v7 = _LogCategory_Initialize(), v7))
    {
      sub_10012B2F0(v7, v8, v9);
    }
  }

  v25 = @"statusFlags";
  v26 = &off_1001B8068;
  v16 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000BC964;
  v24[3] = &unk_1001AC870;
  v24[4] = self;
  [(RPMessageable *)v15 registerEventID:@"_siA" options:v16 handler:v24];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000BC970;
  v23[3] = &unk_1001AB798;
  v23[4] = self;
  [(RPMessageable *)v15 registerRequestID:@"_siriStart" options:v16 handler:v23];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000BCA28;
  v22[3] = &unk_1001AB798;
  v22[4] = self;
  [(RPMessageable *)v15 registerRequestID:@"_siriStop" options:v16 handler:v22];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000BCA3C;
  v21[3] = &unk_1001AB798;
  v21[4] = self;
  [(RPMessageable *)v15 registerRequestID:@"_siriStartWhileRecording" options:v16 handler:v21];

LABEL_14:
  return v15 != 0;
}

- (void)invalidate
{
  selfCopy = self;
  if (dword_1001D4E40 <= 30)
  {
    if (dword_1001D4E40 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_10012B30C(self, a2, v2);
    }
  }

  [(RPSiriAudioSession *)selfCopy->_siriAudioSession invalidate];
  siriAudioSession = selfCopy->_siriAudioSession;
  selfCopy->_siriAudioSession = 0;

  [(RPMessageable *)selfCopy->_messenger deregisterEventID:@"_siA"];
  [(RPMessageable *)selfCopy->_messenger deregisterRequestID:@"_siriStart"];
  [(RPMessageable *)selfCopy->_messenger deregisterRequestID:@"_siriStop"];
  messenger = selfCopy->_messenger;
  selfCopy->_messenger = 0;
}

- (void)_handleSiriAudio:(id)audio
{
  audioCopy = audio;
  siriAudioSession = self->_siriAudioSession;
  if (siriAudioSession)
  {
    v7 = audioCopy;
    [(RPSiriAudioSession *)siriAudioSession receivedSiriAudioEvent:?];
LABEL_3:
    audioCopy = v7;
    goto LABEL_7;
  }

  if (dword_1001D4E40 <= 60)
  {
    v7 = audioCopy;
    if (dword_1001D4E40 != -1 || (v6 = _LogCategory_Initialize(), audioCopy = v7, v6))
    {
      sub_10012B328();
      goto LABEL_3;
    }
  }

LABEL_7:
}

- (void)_handleSiriStart:(id)start options:(id)options responseHandler:(id)handler
{
  handlerCopy = handler;
  v14 = RPErrorF(4294960561, "Remote Siri not supported on this platform", v7, v8, v9, v10, v11, v12, v13);
  (*(handler + 2))(handlerCopy, 0, 0, v14);
}

- (void)_handleSiriStop:(id)stop options:(id)options responseHandler:(id)handler
{
  stopCopy = stop;
  optionsCopy = options;
  handlerCopy = handler;
  if (dword_1001D4E40 <= 30 && (dword_1001D4E40 != -1 || _LogCategory_Initialize()))
  {
    sub_10012B348(stopCopy);
  }

  (*(handlerCopy + 2))(handlerCopy, &__NSDictionary0__struct, 0, 0);
}

- (void)_handleSiriStartWhileRecording:(id)recording options:(id)options responseHandler:(id)handler
{
  recordingCopy = recording;
  optionsCopy = options;
  handlerCopy = handler;
  if (dword_1001D4E40 <= 30 && (dword_1001D4E40 != -1 || _LogCategory_Initialize()))
  {
    sub_10012B388(recordingCopy);
  }

  v15 = RPErrorF(4294960561, "Remote Siri not supported on this platform", v8, v9, v10, v11, v12, v13, v16);
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v15);
}

@end