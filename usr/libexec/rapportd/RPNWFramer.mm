@interface RPNWFramer
+ (BOOL)writeControlOnFramer:(id)framer type:(int)type error:(unsigned __int8)error token:(id)token;
+ (BOOL)writeDataOnFramer:(id)framer data:(id)data;
+ (const)controlCodeToString:(int)string;
+ (void)setupDaemonFramer:(id)framer token:(id)token receiveHandler:(id)handler closeHandler:(id)closeHandler;
+ (void)startConnection:(id)connection token:(id)token;
+ (void)writeErrorOnFramer:(id)framer token:(id)token error:(unsigned __int8)error;
@end

@implementation RPNWFramer

+ (const)controlCodeToString:(int)string
{
  if (string > 3)
  {
    return "INVALID";
  }

  else
  {
    return (&off_1001AC4D8)[string];
  }
}

+ (BOOL)writeControlOnFramer:(id)framer type:(int)type error:(unsigned __int8)error token:(id)token
{
  v8 = *&type;
  framerCopy = framer;
  tokenCopy = token;
  if (framerCopy)
  {
    if (v8 == 1)
    {
      v11 = 320017171;
    }

    else
    {
      v11 = 0;
    }

    async_block[0] = _NSConcreteStackBlock;
    async_block[1] = 3221225472;
    async_block[2] = sub_100045654;
    async_block[3] = &unk_1001AC2B0;
    v14 = framerCopy;
    v16 = v8;
    errorCopy = error;
    v18 = 0;
    v19 = v11;
    v20 = 0;
    errorCopy2 = error;
    v15 = tokenCopy;
    v21 = v8;
    nw_framer_async(v14, async_block);
  }

  else if (dword_1001D3460 <= 30 && (dword_1001D3460 != -1 || _LogCategory_Initialize()))
  {
    sub_1001156B8(tokenCopy, v8, error);
  }

  return framerCopy != 0;
}

+ (BOOL)writeDataOnFramer:(id)framer data:(id)data
{
  framerCopy = framer;
  dataCopy = data;
  v7 = dataCopy;
  if (framerCopy)
  {
    v8 = dataCopy == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (!v8)
  {
    if (dword_1001D3460 <= 30 && (dword_1001D3460 != -1 || _LogCategory_Initialize()))
    {
      sub_1001158F0(framerCopy);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100045840;
    v11[3] = &unk_1001AB488;
    v12 = v7;
    v13 = framerCopy;
    nw_framer_async(v13, v11);
  }

  return v9;
}

+ (void)startConnection:(id)connection token:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  if (dword_1001D3460 <= 30 && (dword_1001D3460 != -1 || _LogCategory_Initialize()))
  {
    sub_1001159B4(tokenCopy);
  }

  [RPNWFramer writeControlOnFramer:connectionCopy type:1 error:0 token:tokenCopy];
}

+ (void)writeErrorOnFramer:(id)framer token:(id)token error:(unsigned __int8)error
{
  errorCopy = error;
  framerCopy = framer;
  tokenCopy = token;
  if (dword_1001D3460 <= 30 && (dword_1001D3460 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1001D3460, "+[RPNWFramer writeErrorOnFramer:token:error:]", 30, "%@ Sending error (%d) to client app connection\n", tokenCopy, errorCopy);
  }

  [RPNWFramer writeControlOnFramer:framerCopy type:2 error:errorCopy token:tokenCopy];
}

+ (void)setupDaemonFramer:(id)framer token:(id)token receiveHandler:(id)handler closeHandler:(id)closeHandler
{
  framerCopy = framer;
  tokenCopy = token;
  handlerCopy = handler;
  closeHandlerCopy = closeHandler;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  input_handler[0] = _NSConcreteStackBlock;
  input_handler[1] = 3221225472;
  input_handler[2] = sub_100045C40;
  input_handler[3] = &unk_1001AC328;
  v22 = v28;
  v23 = v25;
  v24 = v27;
  v13 = handlerCopy;
  v20 = v13;
  v14 = tokenCopy;
  v18 = v14;
  v15 = closeHandlerCopy;
  v21 = v15;
  v16 = framerCopy;
  v19 = v16;
  nw_framer_set_input_handler(v16, input_handler);
  nw_framer_set_output_handler(v16, &stru_1001AC368);
  nw_framer_set_cleanup_handler(v16, &stru_1001AC3A8);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v28, 8);
}

@end