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
    return off_1E7C93138[string];
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

    async_block[0] = MEMORY[0x1E69E9820];
    async_block[1] = 3221225472;
    async_block[2] = __52__RPNWFramer_writeControlOnFramer_type_error_token___block_invoke;
    async_block[3] = &unk_1E7C92FD0;
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

  else if (gLogCategory_RPNWFramer <= 30 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
  {
    [RPNWFramer writeControlOnFramer:tokenCopy type:v8 error:error token:?];
  }

  return framerCopy != 0;
}

void __52__RPNWFramer_writeControlOnFramer_type_error_token___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  nw_framer_write_output(*(a1 + 32), (a1 + 48), 0x10uLL);
  if (*(a1 + 68))
  {
    if (gLogCategory_RPNWFramer > 30 || gLogCategory_RPNWFramer == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    __52__RPNWFramer_writeControlOnFramer_type_error_token___block_invoke_cold_1(a1, (a1 + 68), v2, &v4);
  }

  else
  {
    if (gLogCategory_RPNWFramer > 30 || gLogCategory_RPNWFramer == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    __52__RPNWFramer_writeControlOnFramer_type_error_token___block_invoke_cold_2(a1, v2, &v4);
  }

  v3 = v4;
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
    if (gLogCategory_RPNWFramer <= 30 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
    {
      [RPNWFramer writeDataOnFramer:framerCopy data:?];
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__RPNWFramer_writeDataOnFramer_data___block_invoke;
    v11[3] = &unk_1E7C92D80;
    v12 = v7;
    v13 = framerCopy;
    nw_framer_async(v13, v11);
  }

  return v9;
}

void __37__RPNWFramer_writeDataOnFramer_data___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = [*(a1 + 32) bytes];
  v4[0] = 0;
  v4[1] = v2;
  nw_framer_write_output(*(a1 + 40), v4, 0x10uLL);
  if (gLogCategory_RPNWFramer <= 30 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
  {
    __37__RPNWFramer_writeDataOnFramer_data___block_invoke_cold_1();
  }

  nw_framer_write_output(*(a1 + 40), v3, v2);
  if (gLogCategory_RPNWFramer <= 30 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
  {
    __37__RPNWFramer_writeDataOnFramer_data___block_invoke_cold_2(v2);
  }
}

+ (void)startConnection:(id)connection token:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  if (gLogCategory_RPNWFramer <= 30 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
  {
    [RPNWFramer startConnection:tokenCopy token:?];
  }

  [RPNWFramer writeControlOnFramer:connectionCopy type:1 error:0 token:tokenCopy];
}

+ (void)writeErrorOnFramer:(id)framer token:(id)token error:(unsigned __int8)error
{
  errorCopy = error;
  framerCopy = framer;
  tokenCopy = token;
  if (gLogCategory_RPNWFramer <= 30 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_RPNWFramer, "+[RPNWFramer writeErrorOnFramer:token:error:]", 30, "%@ Sending error (%d) to client app connection\n", tokenCopy, errorCopy);
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
  input_handler[0] = MEMORY[0x1E69E9820];
  input_handler[1] = 3221225472;
  input_handler[2] = __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke;
  input_handler[3] = &unk_1E7C93048;
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
  nw_framer_set_output_handler(v16, &__block_literal_global_1);
  nw_framer_set_cleanup_handler(v16, &__block_literal_global_34);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v28, 8);
}

uint64_t __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  while (1)
  {
    do
    {
      v4 = *(a1 + 64);
      if (*(*(v4 + 8) + 24))
      {
        break;
      }

      v21 = 0;
      v22 = &v21;
      v23 = 0x3010000000;
      v24 = "";
      v25 = 0;
      v26 = 0;
      parse[0] = MEMORY[0x1E69E9820];
      parse[1] = 3221225472;
      parse[2] = __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_2;
      parse[3] = &unk_1E7C92FF8;
      v20 = 16;
      parse[4] = &v21;
      parse[5] = v4;
      v19 = *(a1 + 72);
      if (!nw_framer_parse_input(v3, 0x10uLL, 0x10uLL, 0, parse))
      {
        _Block_object_dispose(&v21, 8);
        v12 = 16;
        goto LABEL_36;
      }

      if (gLogCategory_RPNWFramer <= 40 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
      {
        v5 = [RPNWFramer controlCodeToString:*(*(*(a1 + 72) + 8) + 24)];
        v6 = *(v22 + 33);
        v7 = strerror(v6);
        LogPrintF(&gLogCategory_RPNWFramer, "+[RPNWFramer setupDaemonFramer:token:receiveHandler:closeHandler:]_block_invoke", 40, "Daemon RX framer msg header={%s error: %d (%s), length: %zu}", v5, v6, v7, *(*(*(a1 + 80) + 8) + 24));
      }

      _Block_object_dispose(&v21, 8);
    }

    while ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0);
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      if (*(*(*(a1 + 72) + 8) + 24) == 3)
      {
        if (gLogCategory_RPNWFramer <= 40 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
        {
          __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_cold_1(a1);
        }
      }

      else
      {
        if (gLogCategory_RPNWFramer <= 90 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
        {
          __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_cold_5(a1);
        }

        nw_framer_mark_failed_with_error(*(a1 + 40), 57);
      }

      (*(*(a1 + 56) + 16))();
      goto LABEL_35;
    }

    if (!*(*(*(a1 + 80) + 8) + 24))
    {
      break;
    }

    if (gLogCategory_RPNWFramer <= 40 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
    {
      __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_cold_2();
    }

    v8 = *(a1 + 80);
    v9 = *(*(v8 + 8) + 24);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_3;
    v14[3] = &unk_1E7C93020;
    v16 = v8;
    v10 = *(a1 + 48);
    v11 = *(a1 + 64);
    v15 = v10;
    v17 = v11;
    if (!nw_framer_parse_input(v3, 1uLL, v9, 0, v14))
    {
      if (gLogCategory_RPNWFramer <= 40 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
      {
        __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_cold_3();
      }

LABEL_35:
      v12 = 0;
      goto LABEL_36;
    }
  }

  if (gLogCategory_RPNWFramer <= 40 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
  {
    __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_cold_4();
  }

  v12 = 0;
  *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_36:

  return v12;
}

uint64_t __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_2(void *a1, _OWORD *a2, unint64_t a3)
{
  if (!a2 || a1[8] > a3)
  {
    return 0;
  }

  *(*(a1[4] + 8) + 32) = *a2;
  *(*(a1[5] + 8) + 24) = 1;
  *(*(a1[6] + 8) + 24) = *(*(a1[4] + 8) + 32);
  *(*(a1[7] + 8) + 24) = *(*(a1[4] + 8) + 40);
  return a1[8];
}

uint64_t __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_3(void *a1, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a3;
  if (*(*(a1[5] + 8) + 24) <= a3)
  {
    if (gLogCategory_RPNWFramer <= 40 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
    {
      __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_3_cold_1(v3);
    }

    (*(a1[4] + 16))();
    *(*(a1[5] + 8) + 24) = 0;
    *(*(a1[6] + 8) + 24) = 0;
  }

  else
  {
    if (gLogCategory_RPNWFramer <= 40 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
    {
      __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_3_cold_2(v3);
    }

    (*(a1[4] + 16))();
    *(*(a1[5] + 8) + 24) -= v3;
  }

  return v3;
}

void __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (gLogCategory_RPNWFramer <= 90 && (gLogCategory_RPNWFramer != -1 || _LogCategory_Initialize()))
  {
    __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_4_cold_1();
  }
}

void __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_RPNWFramer <= 30)
  {
    v5 = v2;
    if (gLogCategory_RPNWFramer != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __66__RPNWFramer_setupDaemonFramer_token_receiveHandler_closeHandler___block_invoke_5_cold_1(v3);
      v3 = v5;
    }
  }
}

+ (uint64_t)writeControlOnFramer:(unsigned __int8)a3 type:error:token:.cold.1(__CFString *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = &stru_1F2ED6FB8;
  }

  v5 = [RPNWFramer controlCodeToString:a2];
  v6 = strerror(a3);
  return LogPrintF(&gLogCategory_RPNWFramer, "+[RPNWFramer writeControlOnFramer:type:error:token:]", 30, "%@ Framer is not set, failed to to write CTRL message %s, error=%d (%s) on framer", v4, v5, a3, v6);
}

uint64_t __52__RPNWFramer_writeControlOnFramer_type_error_token___block_invoke_cold_1(uint64_t a1, unsigned __int8 *a2, void **a3, void *a4)
{
  if (*(a1 + 40))
  {
    v7 = *(a1 + 40);
  }

  else
  {
    v7 = &stru_1F2ED6FB8;
  }

  v8 = [RPNWFramer controlCodeToString:*(a1 + 64)];
  v9 = *a2;
  v10 = strerror(v9);
  v11 = *a3;
  v12 = MEMORY[0x1E696AD60];
  v13 = v11;
  v14 = objc_alloc_init(v12);
  *a4 = v14;
  [v14 appendFormat:@"%p", v13];

  return LogPrintF(&gLogCategory_RPNWFramer, "+[RPNWFramer writeControlOnFramer:type:error:token:]_block_invoke", 30, "%@ Wrote CTRL message %s, error=%d (%s) on framer=%@\n", v7, v8, v9, v10, v14);
}

uint64_t __52__RPNWFramer_writeControlOnFramer_type_error_token___block_invoke_cold_2(uint64_t a1, void **a2, void *a3)
{
  if (*(a1 + 40))
  {
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = &stru_1F2ED6FB8;
  }

  v6 = [RPNWFramer controlCodeToString:*(a1 + 64)];
  v7 = *a2;
  v8 = MEMORY[0x1E696AD60];
  v9 = v7;
  v10 = objc_alloc_init(v8);
  *a3 = v10;
  [v10 appendFormat:@"%p", v9];

  return LogPrintF(&gLogCategory_RPNWFramer, "+[RPNWFramer writeControlOnFramer:type:error:token:]_block_invoke", 30, "%@ Wrote CTRL message %s on framer=%@\n", v5, v6, v10);
}

@end