@interface APSKServerSession
- (APSKServerSession)init;
- (int)sendAudioDataFromXPCParams:(id)params;
- (int)sendFrameFromXPCParams:(id)params;
- (int)setAuthStringFromXPCParams:(id)params;
- (int)startWithXPCParams:(id)params;
- (void)dealloc;
- (void)handleAuthRequired:(int)required;
- (void)handleFailure:(int)failure;
- (void)handleStartCompletion:(int)completion;
- (void)handleUpdatedDisplayWidth:(int)width height:(int)height refreshRate:(int)rate;
- (void)handleVideoStreamErrorNotification:(int)notification;
- (void)setObjectID:(unint64_t)d andConnection:(id)connection;
- (void)stop;
@end

@implementation APSKServerSession

- (APSKServerSession)init
{
  v4.receiver = self;
  v4.super_class = APSKServerSession;
  v2 = [(APSKServerSession *)&v4 init];
  if (v2)
  {
    v2->_lock = FigSimpleMutexCreate();
    if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
    {
      sub_10000830C(v2);
    }
  }

  return v2;
}

- (void)dealloc
{
  [(APSKServerSession *)self stop];
  FigSimpleMutexDestroy();
  self->_lock = 0;
  if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    sub_10000834C(self);
  }

  v3.receiver = self;
  v3.super_class = APSKServerSession;
  [(APSKServerSession *)&v3 dealloc];
}

- (void)stop
{
  if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    sub_10000838C(self);
  }

  if (self->_senderNotifObserver)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self->_senderNotifObserver];

    senderNotifObserver = self->_senderNotifObserver;
    self->_senderNotifObserver = 0;
  }

  sender = self->_sender;
  if (sender)
  {
    sub_100005724(sender, a2, v2);
    v7 = self->_sender;
    if (v7)
    {
      CFRelease(v7);
      self->_sender = 0;
    }
  }

  FigSimpleMutexLock();
  connection = self->_connection;
  self->_connection = 0;
  self->_objectID = 0;

  FigSimpleMutexUnlock();
}

- (int)startWithXPCParams:(id)params
{
  paramsCopy = params;
  v40[0] = 0;
  uint64 = xpc_dictionary_get_uint64(paramsCopy, off_1000142D0);
  string = xpc_dictionary_get_string(paramsCopy, off_1000142E0);
  v39 = 0;
  v7 = xpc_dictionary_get_uint64(paramsCopy, off_1000142C8);
  v8 = xpc_dictionary_get_uint64(paramsCopy, off_1000142D8);
  objc_initWeak(&location, self);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10000313C;
  v36[3] = &unk_100010990;
  objc_copyWeak(&v37, &location);
  v9 = objc_retainBlock(v36);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10000318C;
  v34[3] = &unk_100010990;
  objc_copyWeak(&v35, &location);
  v10 = objc_retainBlock(v34);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000031DC;
  v32[3] = &unk_100010990;
  objc_copyWeak(&v33, &location);
  v11 = objc_retainBlock(v32);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000322C;
  v30[3] = &unk_1000109B8;
  objc_copyWeak(&v31, &location);
  v26 = objc_retainBlock(v30);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_100003294;
  v28[3] = &unk_1000109E0;
  objc_copyWeak(&v29, &location);
  v25 = objc_retainBlock(v28);
  v12 = FigXPCMessageCopyCFObject();
  v14 = v12;
  if (v12)
  {
    goto LABEL_36;
  }

  if (!v39 || !uint64)
  {
    v14 = 4294960591;
    APSLogErrorAt();
    goto LABEL_40;
  }

  if (self->_sender)
  {
    v14 = 4294960587;
    APSLogErrorAt();
    goto LABEL_40;
  }

  sender = sub_100003BF4(v12, v13);
  self->_sender = sender;
  if (!sender)
  {
    v14 = 4294960534;
    APSLogErrorAt();
    goto LABEL_40;
  }

  if (dword_100014248 <= 50)
  {
    if (dword_100014248 != -1 || (v16 = _LogCategory_Initialize(), sender = self->_sender, v16))
    {
      LogPrintF(&dword_100014248, "[APSKServerSession startWithXPCParams:]", 33554482, "[%{ptr}] remote session: using media sender %{ptr}", self, sender);
      sender = self->_sender;
    }
  }

  if (string)
  {
    v14 = sub_100004564(sender, [NSString stringWithUTF8String:string]);
    if (v14)
    {
LABEL_36:
      APSLogErrorAt();
      goto LABEL_40;
    }

    sender = self->_sender;
  }

  v14 = sub_100003DB4(sender, v9);
  if (v14)
  {
    goto LABEL_36;
  }

  v14 = sub_100003ECC(self->_sender, v11);
  if (v14)
  {
    goto LABEL_36;
  }

  if ((uint64 & 2) == 0)
  {
    goto LABEL_19;
  }

  length = 0;
  data = xpc_dictionary_get_data(paramsCopy, off_100014308, &length);
  if (!data || length != 40)
  {
    v14 = 4294960591;
    APSLogErrorAt();
    goto LABEL_40;
  }

  v18 = self->_sender;
  v19 = xpc_dictionary_get_BOOL(paramsCopy, off_100014300);
  v14 = sub_1000043DC(v18, data, v19);
  if (!v14)
  {
LABEL_19:
    if ((uint64 & 1) == 0)
    {
LABEL_26:
      sub_100004714(self->_sender, v39, v7, uint64, v8, v10);
      LODWORD(v14) = 0;
      goto LABEL_27;
    }

    v14 = FigXPCMessageCopyCFDictionary();
    if (!v14)
    {
      v14 = sub_100004254(self->_sender, v40[0]);
      if (!v14)
      {
        v14 = sub_100003FE4(self->_sender, v26);
        if (!v14)
        {
          if (!xpc_dictionary_get_BOOL(paramsCopy, off_1000142F0) || (v14 = sub_100004100(self->_sender), !v14))
          {
            v20 = +[NSNotificationCenter defaultCenter];
            v21 = [v20 addObserverForName:@"APMediaSender_VideoStreamFailed" object:self->_sender queue:0 usingBlock:v25];
            senderNotifObserver = self->_senderNotifObserver;
            self->_senderNotifObserver = v21;

            goto LABEL_26;
          }
        }
      }
    }
  }

  APSLogErrorAt();
LABEL_40:
  if (dword_100014248 <= 90 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100014248, "[APSKServerSession startWithXPCParams:]", 33554522, "[%{ptr}] remote session start failed, error: %#m", self, v14);
  }

  v24 = self->_sender;
  if (v24)
  {
    CFRelease(v24);
    self->_sender = 0;
  }

LABEL_27:
  if (v39)
  {
    CFRelease(v39);
  }

  if (v40[0])
  {
    CFRelease(v40[0]);
  }

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v31);

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);

  return v14;
}

- (int)setAuthStringFromXPCParams:(id)params
{
  string = xpc_dictionary_get_string(params, off_1000142E0);
  sender = self->_sender;
  if (sender)
  {
    if (string)
    {
      v6 = [NSString stringWithUTF8String:string];
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_100004564(sender, v6);
    v8 = v7;
    if (v7)
    {
      sub_1000083CC(v7);
    }
  }

  else
  {
    sub_1000083E0();
    return -6709;
  }

  return v8;
}

- (int)sendFrameFromXPCParams:(id)params
{
  paramsCopy = params;
  v5 = paramsCopy;
  v12 = 0;
  cf = 0;
  if (self->_sender)
  {
    v6 = xpc_dictionary_get_value(paramsCopy, off_1000142E8);
    v7 = v6;
    if (v6)
    {
      v8 = sub_100007744(v6, &cf, &v12);
      if (v8)
      {
        v10 = v8;
        sub_1000083F4(v8);
      }

      else
      {
        v9 = sub_1000058AC(self->_sender, cf, v12);
        v10 = v9;
        if (v9)
        {
          sub_10000841C(v9);
        }
      }
    }

    else
    {
      sub_100008444();
      v10 = -6705;
    }
  }

  else
  {
    sub_100008458();
    v7 = 0;
    v10 = -6709;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v10;
}

- (int)sendAudioDataFromXPCParams:(id)params
{
  paramsCopy = params;
  v5 = paramsCopy;
  v19 = *&kCMTimeInvalid.value;
  epoch = kCMTimeInvalid.epoch;
  length = 0;
  if (!self->_sender)
  {
    sub_100008494();
    v14 = -6709;
    goto LABEL_11;
  }

  data = xpc_dictionary_get_data(paramsCopy, off_100014310, &length);
  if (data)
  {
    v7 = CFDataCreate(kCFAllocatorDefault, data, length);
    CMTime = FigXPCMessageGetCMTime();
    uint64 = xpc_dictionary_get_uint64(v5, off_100014320);
    v10 = xpc_dictionary_get_BOOL(v5, off_100014328);
    if (CMTime)
    {
      v11 = sub_1000059EC(self->_sender, v7);
      goto LABEL_8;
    }

    v12 = v10;
  }

  else
  {
    v12 = 0;
    uint64 = 0;
    v7 = 0;
  }

  sender = self->_sender;
  v16 = v19;
  v17 = epoch;
  v11 = sub_100005B28(sender, v7, &v16, uint64, v12);
LABEL_8:
  v14 = v11;
  if (v11)
  {
    sub_10000846C(v11);
    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v7)
  {
LABEL_10:
    CFRelease(v7);
  }

LABEL_11:

  return v14;
}

- (void)setObjectID:(unint64_t)d andConnection:(id)connection
{
  connectionCopy = connection;
  FigSimpleMutexLock();
  connection = self->_connection;
  self->_connection = connectionCopy;
  self->_objectID = d;
  v8 = connectionCopy;

  FigSimpleMutexUnlock();
}

- (void)handleAuthRequired:(int)required
{
  FigSimpleMutexLock();
  if (self->_objectID && self->_connection)
  {
    v5 = FigXPCCreateBasicMessage();
    v6 = 0;
    v7 = v6;
    if (v5)
    {
      APSLogErrorAt();
    }

    else
    {
      xpc_dictionary_set_uint64(v6, off_100014338, required);
      xpc_connection_send_message(self->_connection, v7);
    }
  }

  else
  {
    v7 = 0;
  }

  FigSimpleMutexUnlock();
  FigXPCRelease();
}

- (void)handleStartCompletion:(int)completion
{
  v3 = *&completion;
  if (completion)
  {
    if (dword_100014248 <= 90 && (dword_100014248 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100014248, "[APSKServerSession handleStartCompletion:]", 33554522, "[%{ptr}] server session start failed, error: %#m", self, v3);
    }
  }

  else if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    sub_100003950();
    LogPrintF(v5, v6, v7, v8, self);
  }

  FigSimpleMutexLock();
  if (self->_objectID && self->_connection)
  {
    v9 = FigXPCCreateBasicMessage();
    v10 = 0;
    v11 = v10;
    if (v9)
    {
      APSLogErrorAt();
    }

    else
    {
      xpc_dictionary_set_uint64(v10, off_100014330, v3);
      xpc_connection_send_message(self->_connection, v11);
    }
  }

  else
  {
    v11 = 0;
  }

  FigSimpleMutexUnlock();
  FigXPCRelease();
}

- (void)handleFailure:(int)failure
{
  v3 = *&failure;
  if (dword_100014248 <= 100 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100014248, "[APSKServerSession handleFailure:]", 33554532, "[%{ptr}] server session failed, error: %#m", self, v3);
  }

  FigSimpleMutexLock();
  if (self->_objectID && self->_connection)
  {
    v5 = FigXPCCreateBasicMessage();
    v6 = 0;
    v7 = v6;
    if (v5)
    {
      APSLogErrorAt();
    }

    else
    {
      xpc_dictionary_set_uint64(v6, off_100014330, v3);
      xpc_connection_send_message(self->_connection, v7);
    }
  }

  else
  {
    v7 = 0;
  }

  FigSimpleMutexUnlock();
  FigXPCRelease();
}

- (void)handleUpdatedDisplayWidth:(int)width height:(int)height refreshRate:(int)rate
{
  if (dword_100014248 <= 50 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    sub_100003950();
    LogPrintF(v9, v10, v11, v12, self);
  }

  FigSimpleMutexLock();
  if (self->_objectID && self->_connection)
  {
    v13 = FigXPCCreateBasicMessage();
    v14 = 0;
    v15 = v14;
    if (v13)
    {
      APSLogErrorAt();
    }

    else
    {
      xpc_dictionary_set_uint64(v14, off_100014340, width);
      xpc_dictionary_set_uint64(v15, off_100014348, height);
      xpc_dictionary_set_uint64(v15, off_100014350, rate);
      xpc_connection_send_message(self->_connection, v15);
    }
  }

  else
  {
    v15 = 0;
  }

  FigSimpleMutexUnlock();
  FigXPCRelease();
}

- (void)handleVideoStreamErrorNotification:(int)notification
{
  v3 = *&notification;
  if (dword_100014248 <= 90 && (dword_100014248 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100014248, "[APSKServerSession handleVideoStreamErrorNotification:]", 33554522, "[%{ptr}] server session got video stream failure notification, error: %#m", self, v3);
  }

  FigSimpleMutexLock();
  if (self->_objectID && self->_connection)
  {
    v5 = FigXPCCreateBasicMessage();
    v6 = 0;
    v7 = v6;
    if (v5)
    {
      APSLogErrorAt();
    }

    else
    {
      xpc_dictionary_set_uint64(v6, off_100014330, v3);
      xpc_connection_send_message(self->_connection, v7);
    }
  }

  else
  {
    v7 = 0;
  }

  FigSimpleMutexUnlock();
  FigXPCRelease();
}

@end