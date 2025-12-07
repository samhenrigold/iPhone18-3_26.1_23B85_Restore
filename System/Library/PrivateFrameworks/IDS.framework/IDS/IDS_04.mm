void sub_195B1BFDC(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 8) object];
    [v4 session:v3 receivedSessionMessageFromID:a1[5] withData:a1[6]];
  }
}

void sub_195B1C294(void *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1[4] + 8) object];
    [v4 session:v3 receivedSessionEndFromID:a1[5] withData:a1[6]];
  }
}

void sub_195B1C54C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v5 session:v3 invitationSentToTokens:*(a1 + 40) shouldBreakBeforeMake:*(a1 + 48)];
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [*(*(a1 + 32) + 8) object];
    [v5 session:v4 invitationSentToTokens:*(a1 + 40)];
  }
}

void sub_195B1C7BC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 allocationDone:v3 sessionInfo:*(a1 + 40)];
  }
}

void sub_195B1CA20(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 sessionStarted:v3];
  }
}

void sub_195B1CCD0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(a1 + 32) + 8) object];

  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [*(*(a1 + 32) + 8) object];
      [v5 sessionEnded:v4 withReason:*(a1 + 48) error:*(a1 + 40)];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_7;
      }

      v4 = [*(*(a1 + 32) + 8) object];
      [v5 sessionEnded:v4];
    }
  }

LABEL_7:
}

void sub_195B1D700(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(*(a1 + 32) + 8) object];
    [v4 session:v3 didReceiveReport:*(a1 + 40)];
  }
}

void sub_195B1D870(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = +[IDSLogging _IDSSession];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) hash];
      v6 = [*(a1 + 32) length];
      v7 = 134218240;
      v8 = v5;
      v9 = 2048;
      v10 = v6;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_INFO, "UNRL: Received data Daemon -> Client  (data hash: %lu)  (length: %lu)", &v7, 0x16u);
    }

    [v3 session:*(*(a1 + 40) + 24) didReceiveData:*(a1 + 32)];
  }
}

id sub_195B1DA80(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = IDSCopyIDForDevice(a3);
  v4 = [MEMORY[0x1E69A5240] destinationWithDeviceURI:v3];

  return v4;
}

id sub_195B1DAD8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = IDSCopyIDForRapportPublicDeviceIdentifier(a3);
  v4 = [MEMORY[0x1E69A5240] destinationWithRapportPublicIdentifierURI:v3];

  return v4;
}

void sub_195B1E0EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195B1E1D4;
  block[3] = &unk_1E743F1D8;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_195B1E2B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195B1E39C;
  block[3] = &unk_1E743F1D8;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_195B1E47C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195B1E564;
  block[3] = &unk_1E743F1D8;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_195B1E644(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195B1E72C;
  block[3] = &unk_1E743F1D8;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_195B1E80C(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195B1E8D8;
  block[3] = &unk_1E743F160;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v12 = a3;
  v8 = v5;
  dispatch_async(v6, block);
}

void sub_195B1E9D4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195B1EAA0;
  block[3] = &unk_1E743F160;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void sub_195B1EBAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195B1EC70;
  v7[3] = &unk_1E743F110;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_195B1ED38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195B1EDFC;
  v7[3] = &unk_1E743F110;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_195B1EEC4(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195B1EF64;
  block[3] = &unk_1E743E850;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void sub_195B1F03C(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_195B1F0DC;
  block[3] = &unk_1E743E850;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void sub_195B1F8C0()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A53308];
  v1 = qword_1ED5DDEB0;
  qword_1ED5DDEB0 = v0;

  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A34BE0];
  v2 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v7 setClasses:v2 forSelector:sel_handleReceivedIncomingMessageData_identifier_context_ argumentIndex:2 ofReply:0];

  [qword_1ED5DDEB0 setInterface:v7 forSelector:sel_setupServerMessagingClient_withUUID_forTopic_commands_ argumentIndex:0 ofReply:0];
  v3 = qword_1ED5DDEB0;
  v4 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v3 setClasses:v4 forSelector:sel_sendMessageData_onTopic_withOptions_identifier_completion_ argumentIndex:2 ofReply:0];

  v5 = qword_1ED5DDEB0;
  v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v5 setClasses:v6 forSelector:sel_sendCertifiedDeliveryReceipt_ argumentIndex:0 ofReply:0];
}

id sub_195B1FAFC()
{
  v0 = [IDSXPCDaemonController alloc];
  v1 = +[IDSInternalQueueController sharedInstance];
  v2 = [v1 queue];
  v3 = [(IDSXPCDaemonController *)v0 initSyncControllerWithQueue:v2];

  return v3;
}

void sub_195B1FE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195B2000C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_195B20028(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleInterruption];
}

void sub_195B20068(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_195B20118;
  v5[3] = &unk_1E743FC50;
  v6 = *(a1 + 32);
  v4 = [a2 activityMonitorCollaboratorWithErrorHandler:v5];
  (*(*(a1 + 40) + 16))();
}

void sub_195B20118(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_195B44F04(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_195B20530(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_195B2054C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 48))
    {
      v5 = WeakRetained;
    }

    else
    {
      v5 = 0;
    }

    [v6 setupActivityMonitorClient:v5 forActivity:*(a1 + 32)];
  }
}

void sub_195B208F0()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A53368];
  v1 = qword_1ED5DDEB8;
  qword_1ED5DDEB8 = v0;

  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A40430];
  [qword_1ED5DDEB8 setInterface:v2 forSelector:sel_addDeliveryHandler_uuid_ argumentIndex:0 ofReply:0];
}

void sub_195B209C8()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A533C8];
  v1 = qword_1ED5DDEC0;
  qword_1ED5DDEC0 = v0;

  v2 = qword_1ED5DDEC0;
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0A53428];
  [v2 setInterface:v3 forSelector:sel_dumpDiagnosticsToReceiver_ argumentIndex:0 ofReply:0];
}

double sub_195B20DDC()
{
  v0 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v1 = [v0 objectForKey:@"batch-query-time-limit"];

  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v1 doubleValue];
    v3 = v2;
  }

  else
  {
    v3 = 60.0;
  }

  return v3;
}

uint64_t sub_195B213D0()
{
  v0 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v1 = [v0 objectForKey:@"batch-query-use-death-timer"];

  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_195B21458(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 56));
  if (!*(*(a1 + 32) + 48))
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    *(v5 + 48) = v4;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v3 objectForKey:{v13, v22}];
        if ([v14 integerValue])
        {
          [v7 setObject:v14 forKey:v13];
        }

        else
        {
          [*(*(a1 + 32) + 48) addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v10);
  }

  v15 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v7;
    _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Received cached results %@", buf, 0xCu);
  }

  if (![v3 count])
  {
    v16 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "Received 0 cached results, query all destinations", buf, 2u);
    }

    [*(*(a1 + 32) + 48) addObjectsFromArray:*(*(a1 + 32) + 40)];
  }

  if ([v7 count])
  {
    [*(a1 + 32) _calloutToDelegateWithResult:v7 error:0];
  }

  v17 = *(a1 + 32);
  if (!*(v17 + 64))
  {
    if (*(a1 + 48) == 1)
    {
      v18 = sub_195B21750();
    }

    else
    {
      v19 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
      v20 = [v19 objectForKey:@"batch-query-first-interval"];

      if (v20)
      {
        [v20 doubleValue];
        v18 = v21;
      }

      else
      {
        v18 = 1.0;
      }
    }

    [v17 _scheduleNextQuery:v18];
    v17 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v17 + 56));
}

double sub_195B21750()
{
  v0 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v1 = [v0 objectForKey:@"batch-query-interval"];

  if (v1)
  {
    [v1 doubleValue];
    v3 = v2;
  }

  else
  {
    v3 = 3.0;
  }

  return v3;
}

void sub_195B21CE0(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging IDQuery];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Received results %@", &v8, 0xCu);
  }

  v5 = [v3 state];
  if (v5 == 1)
  {
    v7 = [v3 error];
    v6 = 0;
  }

  else
  {
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v3 value];
    }

    v7 = 0;
  }

  [*(a1 + 32) _calloutToDelegateWithResult:v6 error:v7];
}

void sub_195B22048(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (objc_opt_respondsToSelector())
  {
    v2 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v11 = 134217984;
      v12 = v3;
      _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Calling out to old delegate %p", &v11, 0xCu);
    }

    [*(a1 + 32) idStatusUpdatedForDestinations:*(a1 + 40)];
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(*(a1 + 48) + 8);
      v11 = 134218242;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1959FF000, v4, OS_LOG_TYPE_DEFAULT, "Calling out to old delegate %p for service %@", &v11, 0x16u);
    }

    [*(a1 + 32) idStatusUpdatedForDestinations:*(a1 + 40) service:*(*(a1 + 48) + 8)];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = +[IDSLogging IDQuery];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v11 = 134217984;
      v12 = v8;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "Returning results to delegate %p", &v11, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = [*(*(a1 + 48) + 88) object];
    [v9 batchQueryController:v10 updatedDestinationsStatus:*(a1 + 40) onService:*(*(a1 + 48) + 8) error:*(a1 + 56)];
  }
}

void sub_195B225E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195B23450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);
  cut_arc_os_release();
  _Unwind_Resume(a1);
}

void sub_195B23470(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v7);

  v8 = +[IDSLogging transactionLog];
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "failed to get token {error: %@}", &v11, 0xCu);
    }

    [*(a1 + 32) _completeWithError:v6];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_INFO, "Got token", &v11, 2u);
    }

    v10 = +[IDSLogging transactionLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "!setState Token=%@", &v11, 0xCu);
    }

    [*(a1 + 32) qPerformWithToken:v5];
  }
}

void sub_195B23704(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v12);

  v13 = +[IDSLogging transactionLog];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:a4];
    *buf = 138412290;
    v21 = v14;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "!addState moreComing=%@", buf, 0xCu);
  }

  if (v11)
  {
    v15 = +[IDSLogging transactionLog];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&dword_1959FF000, v15, OS_LOG_TYPE_DEFAULT, "Failed to fetch messages {error: %@}", buf, 0xCu);
    }

    [*(a1 + 32) _completeWithError:v11];
  }

  else
  {
    v16 = *(a1 + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_195B23904;
    v17[3] = &unk_1E74436D8;
    v17[4] = v16;
    v18 = v10;
    v19 = a4;
    [v16 qIngestMessages:v9 completion:v17];
  }
}

void sub_195B23904(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = +[IDSLogging transactionLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Failed to ingest messages {error: %@}", buf, 0xCu);
    }

    [*(a1 + 32) _completeWithError:v4];
  }

  else
  {
    v6 = [*(a1 + 32) delegate];
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_195B23A64;
    v9[3] = &unk_1E74436B0;
    v11 = *(a1 + 48);
    v9[4] = v8;
    v10 = v7;
    [v6 taskHandler:v8 persistToken:v10 completion:v9];
  }
}

void sub_195B23A64(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[IDSLogging transactionLog];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "Failed to persist token {token: %@, error: %@}", &v10, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_INFO, "Persisted token", &v10, 2u);
    }

    v7 = *(a1 + 48);
    v8 = +[IDSLogging transactionLog];
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_INFO, "moreComing -- continue", &v10, 2u);
      }

      [*(a1 + 32) qPerformWithToken:*(a1 + 40)];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "No more coming -- done", &v10, 2u);
      }

      [*(a1 + 32) _completeWithError:0];
    }
  }
}

void sub_195B23E84(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v7);

  if (v6)
  {
    v8 = +[IDSLogging transactionLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v6;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get account information {error: %{public}@}", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_195B2402C;
    v12[3] = &unk_1E7443778;
    v12[4] = v9;
    v11 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = v5;
    v15 = *(a1 + 64);
    [v9 qFetchParticipantsFromDeviceMessges:v10 andGroupsFromGroupMessages:v11 completion:v12];
  }
}

void sub_195B2402C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = +[IDSLogging transactionLog];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = v9;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Failed to get groups or participants {error: %{public}@}", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(a1 + 48);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_195B241F4;
    v16[3] = &unk_1E7443750;
    v14 = v11;
    v15 = *(a1 + 32);
    v17 = v14;
    v18 = v15;
    v21 = *(a1 + 56);
    v19 = v7;
    v20 = v8;
    [v12 _transactionMessagesFromTransportMessages:v14 withParticipants:v19 groups:v20 accountInfo:v13 completion:v16];
  }
}

void sub_195B241F4(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[IDSLogging transactionLog];
  v8 = v7;
  if (!v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      *buf = 138478595;
      v21 = v14;
      v22 = 2113;
      v23 = v15;
      v24 = 2113;
      v25 = v16;
      v26 = 2114;
      v27 = v6;
      _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get transaction messages from transport messges {transportMessages: %{private}@, participants: %{private}@, groups: %{private}@, error: %{public}@}", buf, 0x2Au);
    }

    v17 = *(*(a1 + 64) + 16);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = [*(a1 + 32) count];
    *buf = 134218240;
    v21 = v9;
    v22 = 2048;
    v23 = [v5 count];
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_INFO, "got transaction messages from transport messages {transactionMessages.count: %ld, transportMessages.count: %ld}", buf, 0x16u);
  }

  v10 = [*(a1 + 40) syncTask];
  v11 = [v10 batchProcessingBlock];

  if (!v11)
  {
    v17 = *(*(a1 + 64) + 16);
LABEL_10:
    v17();
    goto LABEL_11;
  }

  v12 = [*(a1 + 40) syncTask];
  v13 = [v12 batchProcessingBlock];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195B2444C;
  v18[3] = &unk_1E7443728;
  v19 = *(a1 + 64);
  (v13)[2](v13, v5, v18);

LABEL_11:
}

void sub_195B2489C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 208), 8);
  _Block_object_dispose((v36 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_195B248D8(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v7);

  v8 = +[IDSLogging transactionLog];
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 48);
      v18 = 138543875;
      v19 = v6;
      v20 = 2113;
      v21 = v5;
      v22 = 2113;
      v23 = v10;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Error getting participants from device messages {error: %{public}@, participants: %{private}@, deviceMessages: %{private}@}", &v18, 0x20u);
    }

    v11 = 72;
    v12 = v6;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = [v5 count];
      v14 = [*(a1 + 40) count];
      v18 = 134218240;
      v19 = v13;
      v20 = 2048;
      v21 = v14;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_INFO, "Got participants {participants.count: %ld, destinations: %ld}", &v18, 0x16u);
    }

    v11 = 64;
    v12 = v5;
  }

  v15 = *(*(a1 + v11) + 8);
  v16 = v12;
  v17 = *(v15 + 40);
  *(v15 + 40) = v16;

  dispatch_group_leave(*(a1 + 56));
}

void sub_195B24A78(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v7);

  v8 = +[IDSLogging transactionLog];
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 48);
      v18 = 138543875;
      v19 = v6;
      v20 = 2113;
      v21 = v5;
      v22 = 2113;
      v23 = v10;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Error getting groups from group messages {error: %{public}@, groups: %{private}@, groupMessages: %{private}@}", &v18, 0x20u);
    }

    v11 = 72;
    v12 = v6;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = [v5 count];
      v14 = [*(a1 + 40) count];
      v18 = 134218240;
      v19 = v13;
      v20 = 2048;
      v21 = v14;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_INFO, "Got groups {groups.count: %ld, groupIDs.count: %ld}", &v18, 0x16u);
    }

    v11 = 64;
    v12 = v5;
  }

  v15 = *(*(a1 + v11) + 8);
  v16 = v12;
  v17 = *(v15 + 40);
  *(v15 + 40) = v16;

  dispatch_group_leave(*(a1 + 56));
}

uint64_t sub_195B24C18(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = +[IDSLogging transactionLog];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(*(a1 + 40) + 8) + 40);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1959FF000, v2, OS_LOG_TYPE_DEFAULT, "Error getting groups or participants {error: %{public}@}", &v6, 0xCu);
    }

    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    return v5();
  }
}

uint64_t IDSSession.linkSelectionStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_195B26068(&qword_1EAEDBEA8, &qword_195B54388);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = [v2 linkSelectionStrategy];
  if (v7)
  {
    v8 = *MEMORY[0x1E69A48C0];
    v9 = v7;
    swift_beginAccess();
    sub_195B260B0(v9 + v8, v6);

    v10 = sub_195B451B4();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) != 1)
    {
      return (*(v11 + 32))(a1, v6, v10);
    }
  }

  else
  {
    v10 = sub_195B451B4();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  }

  sub_195B451A4();
  sub_195B451B4();
  result = (*(*(v10 - 8) + 48))(v6, 1, v10);
  if (result != 1)
  {
    return sub_195B26120(v6);
  }

  return result;
}

uint64_t sub_195B26068(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_195B260B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_195B26068(&qword_1EAEDBEA8, &qword_195B54388);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_195B26120(uint64_t a1)
{
  v2 = sub_195B26068(&qword_1EAEDBEA8, &qword_195B54388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_195B261AC(uint64_t a1, void **a2)
{
  v4 = sub_195B451B4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = *(v5 + 16);
  v11(&v15 - v9, a1, v4);
  v12 = *a2;
  sub_195B451D4();
  v11(v8, v10, v4);
  v13 = sub_195B451C4();
  [v12 setLinkSelectionStrategy_];

  return (*(v5 + 8))(v10, v4);
}

uint64_t IDSSession.linkSelectionStrategy.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_195B451B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_195B451D4();
  (*(v5 + 16))(v7, a1, v4);
  v8 = sub_195B451C4();
  [v2 setLinkSelectionStrategy_];

  return (*(v5 + 8))(a1, v4);
}

void (*IDSSession.linkSelectionStrategy.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 24) = v1;
  v7 = *(*(sub_195B26068(&qword_1EAEDBEA8, &qword_195B54388) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  v10 = sub_195B451B4();
  v6[5] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v6[6] = v11;
  v13 = *(v11 + 64);
  if (v4)
  {
    v6[7] = swift_coroFrameAlloc();
    v6[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v6[7] = malloc(*(v11 + 64));
    v6[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v15 = v14;
  v6[9] = v14;
  v16 = [v2 linkSelectionStrategy];
  if (v16)
  {
    v17 = *MEMORY[0x1E69A48C0];
    v18 = v16;
    swift_beginAccess();
    sub_195B260B0(v18 + v17, v9);

    if ((*(v12 + 48))(v9, 1, v10) != 1)
    {
      (*(v12 + 32))(v15, v9, v10);
      return sub_195B2668C;
    }
  }

  else
  {
    (*(v12 + 56))(v9, 1, 1, v10);
  }

  sub_195B451A4();
  if ((*(v12 + 48))(v9, 1, v10) != 1)
  {
    sub_195B26120(v9);
  }

  return sub_195B2668C;
}

void sub_195B2668C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v6 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v7 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  v9 = *(*a1 + 24);
  if (a2)
  {
    v14 = *(*a1 + 32);
    v10 = *(v6 + 16);
    v10(v3, v4, v8);
    sub_195B451D4();
    v10(v5, v3, v8);
    v7 = v14;
    v11 = sub_195B451C4();
    [v9 setLinkSelectionStrategy_];

    v12 = *(v6 + 8);
    v12(v3, v8);
    v12(v4, v8);
  }

  else
  {
    sub_195B451D4();
    (*(v6 + 16))(v3, v4, v8);
    v13 = sub_195B451C4();
    [v9 setLinkSelectionStrategy_];

    (*(v6 + 8))(v4, v8);
  }

  free(v4);
  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

void sub_195B26824(NSObject *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AF00] callStackSymbols];
  v3 = 136315394;
  v4 = "[IDSContinuity initWithDelegate:queue:]";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_1959FF000, a1, OS_LOG_TYPE_ERROR, "IDSInternalQueue - assertQueueIsNotCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", &v3, 0x16u);
}

void sub_195B268D8(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "Instantiating %{public}@ from daemon -- returning nil", &v5, 0xCu);
}

void sub_195B26974(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[IDSContinuity startTrackingPeer:]";
  _os_log_error_impl(&dword_1959FF000, log, OS_LOG_TYPE_ERROR, "%s is deprecated, please use startTrackingPeer:forType:", &v1, 0xCu);
}

void sub_195B269F8(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[IDSContinuity stopTrackingPeer:]";
  _os_log_error_impl(&dword_1959FF000, log, OS_LOG_TYPE_ERROR, "%s is deprecated, please use stopTrackingPeer:forType:", &v1, 0xCu);
}

void sub_195B26A7C(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  sub_195A05C74();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_195B26B10(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "Exception returned from daemon: %@", &v2, 0xCu);
}

void sub_195B26B88()
{
  sub_195A156A0();
  sub_195A15694();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B26C18()
{
  sub_195A156EC(*MEMORY[0x1E69E9840]);
  sub_195A156A0();
  sub_195A15694();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B26CE8()
{
  sub_195A156EC(*MEMORY[0x1E69E9840]);
  sub_195A156A0();
  sub_195A15694();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B26D5C()
{
  sub_195A156EC(*MEMORY[0x1E69E9840]);
  sub_195A156A0();
  sub_195A15694();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B26EA0()
{
  sub_195A156A0();
  sub_195A156C8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_195B26F28()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B26FC8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B27068()
{
  sub_195A156EC(*MEMORY[0x1E69E9840]);
  sub_195A156A0();
  sub_195A15694();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B270D8()
{
  sub_195A156AC();
  sub_195A156C8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_195B27158()
{
  sub_195A156AC();
  sub_195A156C8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_195B2741C()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getKTVerificationInfoClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IDSXPCKeyTransparency.m" lineNumber:13 description:{@"Unable to find class %s", "KTVerificationInfo"}];

  __break(1u);
}

void sub_195B27498(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TransparencyLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IDSXPCKeyTransparency.m" lineNumber:12 description:{@"%s", *a1}];

  __break(1u);
}

void sub_195B27518()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getKTLoggableDataClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IDSXPCKeyTransparency.m" lineNumber:17 description:{@"Unable to find class %s", "KTLoggableData"}];

  __break(1u);
}

void sub_195B27594()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getKTSelfVerificationHealableErrorsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IDSXPCKeyTransparency.m" lineNumber:16 description:{@"Unable to find class %s", "KTSelfVerificationHealableErrors"}];

  __break(1u);
}

void sub_195B27610()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getKTVerifierResultClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IDSXPCKeyTransparency.m" lineNumber:14 description:{@"Unable to find class %s", "KTVerifierResult"}];

  __break(1u);
}

void sub_195B2768C()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTransparencyIDSRegistrationResponseClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IDSXPCKeyTransparency.m" lineNumber:18 description:{@"Unable to find class %s", "TransparencyIDSRegistrationResponse"}];

  __break(1u);
}

void sub_195B27B10()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B27BA8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B27C40()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B27CD8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B27D74()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

float sub_195B27F00(int a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 67109888;
  *(buf + 1) = a1;
  *(buf + 4) = 2048;
  *(buf + 10) = 1;
  *(buf + 9) = 2048;
  *(buf + 20) = 4;
  *(buf + 14) = 2048;
  *(buf + 30) = a3;
  _os_log_error_impl(&dword_1959FF000, log, OS_LOG_TYPE_ERROR, "malformed tlv received ((%d + %zu + %zu > %lu)", buf, 0x26u);
  return result;
}

void sub_195B27F6C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B28274()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B28334()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsNotCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B283CC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsNotCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B28464()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsNotCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B284FC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsNotCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B28594()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2862C(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = v3;
  _os_log_error_impl(&dword_1959FF000, log, OS_LOG_TYPE_ERROR, "IDSGroupSession method invoked without a valid internal session! { self: %p, _internal: %p }", &v4, 0x16u);
}

void sub_195B286B8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B28874(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 originalCommand];
  sub_195A05CCC();
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "IDSOffGridMessenger - Incoming message with invalid command %@ - not handling", v4, 0xCu);
}

void sub_195B28A4C(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_195A05CCC();
  sub_195A05D0C(&dword_1959FF000, v4, v5, "Instantiating %{public}@ from daemon -- returning nil", v6, v7, v8, v9);
}

void sub_195B28E90()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_195A05CCC();
  _os_log_error_impl(&dword_1959FF000, v0, OS_LOG_TYPE_ERROR, "Found existing local device, removing %@", v1, 0xCu);
}

void sub_195B291D0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B29270()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B29310()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B293B0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B29450()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B294F0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B29590()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B29630()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B29714(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_195A05CB0(&dword_1959FF000, a2, a3, "Error checking for isListening {xpcError: %@}", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B29780(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_195A05CB0(&dword_1959FF000, a2, a3, "Error setting isListening {xpcError: %@}", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B297EC(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_195A05CB0(&dword_1959FF000, a2, a3, "Error getting current subscriptions {xpcError: %@}", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B29858()
{
  sub_195A05CCC();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B298C8()
{
  sub_195A3E5C8(*MEMORY[0x1E69E9840]);
  sub_195A156A0();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B29938()
{
  sub_195A3E5C8(*MEMORY[0x1E69E9840]);
  sub_195A156A0();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B299A8()
{
  sub_195A3E5C8(*MEMORY[0x1E69E9840]);
  sub_195A156A0();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B29A18()
{
  sub_195A3E5C8(*MEMORY[0x1E69E9840]);
  sub_195A156A0();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B29A88(void *a1)
{
  v1 = [a1 expirationDate];
  sub_195A05CCC();
  sub_195A05C74();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_195B29B14(void *a1)
{
  [a1 senderMergeID];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_195A3E5D8() senderMergeID];
  sub_195A3E5B0();
  sub_195A05C74();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_195B29BBC(void *a1)
{
  [a1 senderMergeID];
  objc_claimAutoreleasedReturnValue();
  v2 = [sub_195A3E5D8() senderMergeID];
  sub_195A3E5B0();
  sub_195A05C74();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_195B29C64(void *a1)
{
  v1 = [a1 uniqueID];
  v2 = [v1 UUIDString];
  sub_195A05CCC();
  sub_195A05C74();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_195B29D08()
{
  sub_195A05C68();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_195B29D44()
{
  sub_195A05C68();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_195B29D80()
{
  sub_195A05C68();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_195B29DBC(void *a1)
{
  [a1 state];
  v1 = [sub_195A3E5D8() uniqueID];
  v2 = [v1 UUIDString];
  sub_195A3E5B0();
  sub_195A05C74();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_195B29E6C()
{
  sub_195A05C68();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_195B29EA8()
{
  sub_195A05C68();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_195B29EE4(void *a1)
{
  [a1 state];
  v1 = [sub_195A3E5D8() uniqueID];
  v2 = [v1 UUIDString];
  sub_195A3E5B0();
  sub_195A05C74();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_195B29F94()
{
  sub_195A05CCC();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B2A494()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2A534()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2A5D4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2A674()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2A7C8(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"IDSFirewall.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

void sub_195B2A894(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(*a2 + 40);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_1959FF000, log, OS_LOG_TYPE_ERROR, "Request ID %@ error fetching VM request data %@", &v4, 0x16u);
}

void sub_195B2A964(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "Process does not have sandbox permission to access IDS mach port -- connection will fail! {portName: %@}", &v2, 0xCu);
}

void sub_195B2AAA0(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "Couldn't find completion block for vm request %@", &v2, 0xCu);
}

void sub_195B2AB18()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2ABB8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2AC6C(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_IDSPasswordManager.m" lineNumber:18 description:@"This method should only be run on clients"];
}

void sub_195B2AD08(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sub_195A05CCC();
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "Instantiating %{public}@ from daemon -- returning nil", v5, 0xCu);
}

void sub_195B2ADB4()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_195A05CCC();
  _os_log_fault_impl(&dword_1959FF000, v0, OS_LOG_TYPE_FAULT, "Cannot save invalid device info: %@", v1, 0xCu);
}

void sub_195B2AE90(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPairedDeviceManager getLocalDeviceInfoWithCompletionBlock:queue:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s: Empty completion block/queue", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B2AFD8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPairedDeviceManager getPairedDeviceInfoWithCompletionBlock:queue:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s: Empty completion block/queue", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B2B120(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[IDSPairedDeviceManager getDeliveryStatsWithCompletionBlock:queue:]";
  _os_log_fault_impl(&dword_1959FF000, log, OS_LOG_TYPE_FAULT, "%s: Empty completion block/queue", &v1, 0xCu);
}

void sub_195B2B3AC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_1959FF000, log, OS_LOG_TYPE_FAULT, "Failed to create IDSAuthenticationSigningResult due to a mismatch between subscription identifiers and authentication certificates! {subscriptionIdentifiers: %@, authenticationCertificates: %@}", &v3, 0x16u);
}

void sub_195B2B48C(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"IDSXPCConnectionRemoteObjectPromise.m" lineNumber:59 description:@"IDSXPCConnectionRemoteObjectPromise can only be fulfilled once"];
}

void sub_195B2B500(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1959FF000, log, OS_LOG_TYPE_ERROR, "Failing xpc connection promise {pendingInvocations: %{public}@, error: %{public}@}", &v3, 0x16u);
}

void sub_195B2B588()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2B62C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2B6D0(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  sub_195A05C74();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_195B2B768(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*(*a1 + 8) + 40);
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_debug_impl(&dword_1959FF000, log, OS_LOG_TYPE_DEBUG, "Found existing IDSAccountController %@ for service %@", &v5, 0x16u);
}

void sub_195B2B844()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2B8E4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2B984(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1959FF000, a2, OS_LOG_TYPE_DEBUG, "Deallocing IDSAccountController %@", &v2, 0xCu);
}

void sub_195B2B9FC(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1959FF000, a2, OS_LOG_TYPE_DEBUG, "%p will be removed from account controller map automatically", &v2, 0xCu);
}

void sub_195B2BA74()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2BB14()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2BBAC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2BC44()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2BD68()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2BE00()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2BE98()
{
  sub_195A05C68();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_195B2BED4()
{
  sub_195A05C68();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_195B2BF10()
{
  sub_195A05C68();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_195B2BF4C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2BFE4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2C07C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2C114()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2C1AC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2C244()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2C2DC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2C374()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2C40C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2C4A4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2C53C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2C5D4()
{
  sub_195A05C68();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_195B2C610()
{
  sub_195A6E518();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_195B2C694()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2C72C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2C7C4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2C85C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2C8F4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2C98C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2CA24()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2CABC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2CB54()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2CBEC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2CCB0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2CD74()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2CE0C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2CEA8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2CF40()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2CFD8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2D070()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2D108()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2D1A0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2D238()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2D2D0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2D368()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2D400()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2D498()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2D530()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2D5C8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2D660()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2D6F8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2D790()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2D828()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2D8C0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2D958()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2D9F0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2DA88()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2DB20()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2DBB8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2DC50()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2DCE8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2DD80()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2DE18()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2DEB0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2DF48()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2DFE0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2E078()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2E110()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2E1A8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2E240()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2E2D8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2E370()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2E408()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2E4A4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2E53C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2E5D4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B2E66C(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 value];
  v4 = 138477827;
  v5 = v3;
  _os_log_debug_impl(&dword_1959FF000, a2, OS_LOG_TYPE_DEBUG, "Fetch groupds {groups: %{private}@}", &v4, 0xCu);
}

void sub_195B2E704(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  LODWORD(v10) = 138543362;
  *(&v10 + 4) = v3;
  sub_195A05D0C(&dword_1959FF000, v4, v5, "Instantiating %{public}@ from daemon -- returning nil", v6, v7, v8, v9, v10, DWORD2(v10));
}

void sub_195B2E928()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2E9C8(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_195A05CCC();
  sub_195A05C74();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_195B2EA58()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2EAF8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2EB98()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2EC38()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2ECD8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2ED78()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2EE80()
{
  v5 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A05C74();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_195B2EF38()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2EFD8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2F0E4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2F184()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2F224()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2F2C4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2F364()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2F404()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2F4A4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2F544()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2F5E4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2F774()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2F814()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2F8B4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2F998()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2FA38()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2FAD8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2FB78()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2FC18()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2FCBC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2FD5C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2FDFC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2FE9C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2FF3C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B2FFDC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3007C()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_195A05CCC();
  _os_log_debug_impl(&dword_1959FF000, v0, OS_LOG_TYPE_DEBUG, "Received context: %@", v1, 0xCu);
}

void sub_195B300F0()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_195A05CCC();
  _os_log_debug_impl(&dword_1959FF000, v0, OS_LOG_TYPE_DEBUG, "Recipient topic: %@", v1, 0xCu);
}

void sub_195B30164(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 40) serviceName];
  sub_195A05CCC();
  _os_log_debug_impl(&dword_1959FF000, a2, OS_LOG_TYPE_DEBUG, "Ignoring for: %@", v4, 0xCu);
}

void sub_195B301FC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3029C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3033C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B303DC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3047C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B30584()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B30624()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B306C4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B30764()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B30818(NSObject *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AF00] callStackSymbols];
  v3 = 136315394;
  v4 = "[_IDSSessionStore sessionForAccount:fromID:identifier:transportType:]";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_1959FF000, a1, OS_LOG_TYPE_ERROR, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", &v3, 0x16u);
}

void sub_195B30BA0(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "Failed to get pairing records {error: %{public}@}", &v2, 0xCu);
}

void sub_195B30C18(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "Failed to get pairing collaborator {error: %{public}@}", &v2, 0xCu);
}

void sub_195B30DA8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B30E48(void *a1)
{
  v1 = [a1 _internal];
  v7 = [v1 service];
  sub_195A05C74();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void sub_195B30F00(void *a1)
{
  v1 = [a1 _internal];
  sub_195A05D48();
  sub_195A05C74();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_195B30F9C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3103C()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_195A05D48();
  _os_log_error_impl(&dword_1959FF000, v0, OS_LOG_TYPE_ERROR, "Failed to connect to identityservicesd; %@ %@", v1, 0x16u);
}

void sub_195B310B8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B31158()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B311F8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B31298()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B31330()
{
  sub_195A156EC(*MEMORY[0x1E69E9840]);
  sub_195A156A0();
  sub_195A05D60();
  sub_195A37794(&dword_1959FF000, v0, v1, "IDSAccountController created with service %@ serviceToken %@");
}

void sub_195B313A4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B3143C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B314D4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B3156C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B31604()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B3169C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B31734()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B317CC()
{
  sub_195A156EC(*MEMORY[0x1E69E9840]);
  sub_195A156A0();
  sub_195A05D60();
  sub_195A37794(&dword_1959FF000, v0, v1, "Adding listener with ID %@ topics %@");
}

void sub_195B31840()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_195A05CCC();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1959FF000, v1, OS_LOG_TYPE_ERROR, "Failed to connect to identityservicesd; %@ %@", v2, 0x16u);
}

void sub_195B318C8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B319CC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B31A64(id *a1)
{
  v1 = [*a1 __imSetByApplyingBlock:&unk_1F09E62A0];
  sub_195A05CCC();
  sub_195A8CB8C(&dword_1959FF000, v2, v3, "Old account set %@", v4, v5, v6, v7);
}

void sub_195B31AF4(void *a1)
{
  v1 = [a1 __imSetByApplyingBlock:&unk_1F09E62C0];
  sub_195A05CCC();
  sub_195A8CB8C(&dword_1959FF000, v2, v3, "New account set %@", v4, v5, v6, v7);
}

void sub_195B31B80()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B31C18()
{
  sub_195A156EC(*MEMORY[0x1E69E9840]);
  sub_195A156A0();
  sub_195A37778(&dword_1959FF000, v0, v1, "New enabled accounts set %@", v2, v3, v4, v5);
}

void sub_195B31C80()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B31D18()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B31DB0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B31E48()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B31EE0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B31F78()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B32010()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B320A8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B32140()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B321D8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B32270()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B3237C()
{
  sub_195A05CCC();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B323EC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B32484()
{
  sub_195A05CCC();
  sub_195A05D60();
  sub_195A37794(&dword_1959FF000, v0, v1, "Received account removed %@ for topic %@");
}

void sub_195B3255C()
{
  sub_195A05CCC();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B325CC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B32740()
{
  sub_195A05CCC();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B327B0()
{
  sub_195A05CCC();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B32820()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B329F0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B32A88()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B32B20()
{
  sub_195A05CCC();
  sub_195A05D60();
  sub_195A37794(&dword_1959FF000, v0, v1, "Received account enabled %@ on service %@");
}

void sub_195B32BF8()
{
  sub_195A05C68();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_195B32C34()
{
  sub_195A05C68();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_195B32C70()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B32D08()
{
  sub_195A05CCC();
  sub_195A05D60();
  sub_195A37794(&dword_1959FF000, v0, v1, "Received account disabled %@ on service %@");
}

void sub_195B32DE0()
{
  sub_195A05C68();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_195B32E1C()
{
  sub_195A05C68();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_195B32F44(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "Instantiating %{public}@ from daemon -- returning nil", &v5, 0xCu);
}

void sub_195B32FE4(uint64_t a1)
{
  v1 = IDSDataProtectionClassStringFromDataProtectionClass();
  sub_195A91A44();
  sub_195A05C84(&dword_1959FF000, v2, v3, "Failed to get data for publicIdentity {dataProtectionClass: %{public}@, error: %{public}@}", v4, v5, v6, v7);
}

void sub_195B33084(uint64_t a1)
{
  v1 = IDSDataProtectionClassStringFromDataProtectionClass();
  sub_195A91A44();
  sub_195A05C84(&dword_1959FF000, v2, v3, "Failed to get data for fullIdentity {dataProtectionClass: %{public}@, error: %{public}@}", v4, v5, v6, v7);
}

void sub_195B331A0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkKTApplicationIdentifierIDS(void)"];
  [v0 handleFailureInFunction:v1 file:@"IDSKeyTransparencyManager.m" lineNumber:19 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_195B33218()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkKTApplicationIdentifierIDSFaceTime(void)"];
  [v0 handleFailureInFunction:v1 file:@"IDSKeyTransparencyManager.m" lineNumber:20 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_195B33290()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkKTApplicationIdentifierIDSMultiplex(void)"];
  [v0 handleFailureInFunction:v1 file:@"IDSKeyTransparencyManager.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_195B33308(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSKeyTransparencyManager getKeyTransparencyOptInEligiblityForApplication:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil KT application -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B33380(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSKeyTransparencyManager getKeyTransparencyOptInEligiblityForApplication:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil completion -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B333F8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSKeyTransparencyManager sendOptInUpdateForApplications:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil KT application -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B33470(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSKeyTransparencyManager sendOptInUpdateForApplications:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil completion -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B334E8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSKeyTransparencyManager sendOptInUpdateForApplicationsOptInState:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil KT application -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B33560(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSKeyTransparencyManager sendOptInUpdateForApplicationsOptInState:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil completion -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B335D8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSKeyTransparencyManager sendOptInUpdateRequest:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil optInOutRequest -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B33650(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSKeyTransparencyManager sendOptInUpdateRequest:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil completion -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B336C8()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getKTSelfVerificationInfoClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IDSKeyTransparencyManager.m" lineNumber:17 description:{@"Unable to find class %s", "KTSelfVerificationInfo"}];

  __break(1u);
}

void sub_195B33744(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TransparencyLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IDSKeyTransparencyManager.m" lineNumber:14 description:{@"%s", *a1}];

  __break(1u);
}

void sub_195B337C4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B33864()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B33904()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B339A4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B33A44()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B33AE4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B33C60(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1959FF000, a2, OS_LOG_TYPE_DEBUG, "Client request for IDSCopyLocalDeviceUniqueID: %@", &v3, 0xCu);
}

void sub_195B33CF4()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_195A05CCC();
  _os_log_error_impl(&dword_1959FF000, v0, OS_LOG_TYPE_ERROR, "Error fetching baa signer collaborator {error: %@}", v1, 0xCu);
}

void sub_195B3409C()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_195A05CCC();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1959FF000, v1, OS_LOG_TYPE_ERROR, "Host signature failed {sigError: %@, altSigError: %@", v2, 0x16u);
}

void sub_195B34160()
{
  sub_195A05CCC();
  sub_195AA270C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B341D0()
{
  sub_195A05CCC();
  sub_195AA270C();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B34254()
{
  v5 = 138412546;
  sub_195AA26FC();
  sub_195A05D2C(&dword_1959FF000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_195B342DC()
{
  v5 = 138412546;
  sub_195AA26FC();
  sub_195A05D2C(&dword_1959FF000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_195B34364()
{
  v5 = 138412546;
  sub_195AA26FC();
  sub_195A05D2C(&dword_1959FF000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_195B349C4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B34B10()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B34BA8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B34C40()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B34CD8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B34D70()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B34E08()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B34EA0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B34F38()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B34FD0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35068()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35100()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35198()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35230()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B352C8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35360()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B353F8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35490()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35528()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B355C0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35658()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B356F0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35788()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35820()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B358B8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35950()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B359E8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35A80()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35B18()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35BB0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35C48(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 _internal];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_1959FF000, a4, OS_LOG_TYPE_DEBUG, "Adding IDSDevice %@", a1, 0xCu);
}

void sub_195B35CC0(id *a1)
{
  v1 = [*a1 __imArrayByApplyingBlock:&unk_1F09E6940];
  [v1 count];
  sub_195AA8760();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 8u);
}

void sub_195B35D64()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35DFC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35E94()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35F2C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B35FC4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B3605C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B360F4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B3618C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B36224()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B362BC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B36354()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B36430()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B364C8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B36560()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B365F8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B36690()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B36728(void *a1)
{
  v2 = [a1 serviceName];
  [a1 accountType];
  sub_195AA873C();
  sub_195AA8760();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x1Cu);
}

void sub_195B367CC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B36864()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B368FC(void *a1)
{
  v2 = [a1 serviceName];
  [a1 accountType];
  sub_195AA873C();
  sub_195AA8760();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x1Cu);
}

void sub_195B369A0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B36A38(void *a1)
{
  v2 = [a1 serviceName];
  [a1 accountType];
  sub_195AA873C();
  sub_195AA8760();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x1Cu);
}

void sub_195B36ADC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B36B74()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B36C84()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B36D84()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B36E84()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B36F1C()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_195A05CCC();
  _os_log_debug_impl(&dword_1959FF000, v0, OS_LOG_TYPE_DEBUG, "Account received %@ vetted aliases changed", v1, 0xCu);
}

void sub_195B36F90()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B37090()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B37190()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B37290()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B37328()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B37428()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B374C0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B37558()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  v7 = 136315394;
  sub_195A156D8();
  sub_195A05C84(&dword_1959FF000, v1, v2, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v3, v4, v5, v6, v7);
}

void sub_195B375F0()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_195A05CCC();
  _os_log_debug_impl(&dword_1959FF000, v0, OS_LOG_TYPE_DEBUG, "Account %@ received request to refresh registration", v1, 0xCu);
}

void sub_195B37664()
{
  sub_195A05CCC();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B376E8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B37788()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B37828()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B378C8(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "Call made to deprecated IDSService API with service domain %{public}@", &v2, 0xCu);
}

void sub_195B37940()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B379E0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSService activateAlias:]";
  sub_195A05D6C(&dword_1959FF000, a1, a3, "Called unimplemented function, please remove calls to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B37A58(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSService activateAliases:]";
  sub_195A05D6C(&dword_1959FF000, a1, a3, "Called unimplemented function, please remove calls to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B37AD0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSService deactivateAlias:]";
  sub_195A05D6C(&dword_1959FF000, a1, a3, "Called unimplemented function, please remove calls to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B37B48(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSService deactivateAliases:]";
  sub_195A05D6C(&dword_1959FF000, a1, a3, "Called unimplemented function, please remove calls to %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B37BC0()
{
  sub_195AB0E04();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_195AB0DF8();
  [v0 handleFailureInMethod:@"requestProperties" object:? file:? lineNumber:? description:?];
}

void sub_195B37C34()
{
  sub_195AB0E04();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_195AB0DF8();
  [v0 handleFailureInMethod:@"requestProperties" object:? file:? lineNumber:? description:?];
}

void sub_195B37CA8()
{
  sub_195AB0E04();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_195AB0DF8();
  [v0 handleFailureInMethod:@"queue" object:? file:? lineNumber:? description:?];
}

void sub_195B37D1C()
{
  sub_195AB0E04();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_195AB0DF8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_195B37D90(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "Unable to retrieve firewall, invalid service identifier -- failing {self: %@}", &v2, 0xCu);
}

void sub_195B38068(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 48) object:*a2 file:@"IDSDaemonRequestTimer.m" lineNumber:205 description:@"The request context map should be empty after canceling all countdowns."];
}

void sub_195B380CC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3816C(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_195A05CCC();
  sub_195A05C74();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_195B381FC()
{
  sub_195AD69B0();
  *v1 = 136315394;
  sub_195A05D88(v2, v1, "[_IDSService initWithService:commands:manuallyAckMessages:delegateContext:]");
  sub_195AD6994(&dword_1959FF000, v3, v4, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v5);
}

void sub_195B3824C()
{
  sub_195A05CCC();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B382BC(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_195A05CCC();
  sub_195A05C74();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_195B38350()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B383F0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B38490()
{
  sub_195AD69B0();
  *v1 = 136315394;
  sub_195A05D88(v2, v1, "[_IDSService daemonConnected]");
  sub_195AD6994(&dword_1959FF000, v3, v4, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v5);
}

void sub_195B384E0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B38580()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B38620()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B386C4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B38764()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B38804()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B388A4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B38944()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B389E4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B38A84()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B38B24()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B38BC4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B38C64()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B38D04()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B38DA4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B38E44()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B38EE4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B38F84()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39024()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B390C4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39164()
{
  v4 = *MEMORY[0x1E69E9840];
  sub_195AD6980();
  v3 = v0;
  _os_log_fault_impl(&dword_1959FF000, v1, OS_LOG_TYPE_FAULT, "*** Account wants to drop devicesChanged callback {account.isTransientAllowlistedAccount: %@, account.isFirstGDRAllowlistedAccount: %@}", v2, 0x16u);
}

void sub_195B391E0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39280()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39324(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_fault_impl(&dword_1959FF000, log, OS_LOG_TYPE_FAULT, "Failed to consume sandbox extension! {errno: %d}", buf, 8u);
}

void sub_195B39370()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_195A05CCC();
  _os_log_fault_impl(&dword_1959FF000, v0, OS_LOG_TYPE_FAULT, "Given resource URL appears unacceptable! [%@]", v1, 0xCu);
}

void sub_195B393E4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39500()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B395A0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39640()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B396E0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39780()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39820()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B398C0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39960()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39A00()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39AA0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39B40()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39BE0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39C80()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39D20()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39DC0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39E60()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39F00()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B39FA0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3A040()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3A0E0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3A180()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3A220()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3A2C0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3A360()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3A400()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3A4A0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3A540()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3A5E0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3A680()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3A720()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3A7C0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3A860()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3A900()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3A9A0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3AA40()
{
  sub_195AB0E04();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_195AB0DF8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_195B3AAB4()
{
  sub_195AB0E04();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_195AB0DF8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_195B3AB28()
{
  sub_195AB0E04();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_195AB0DF8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_195B3AB9C()
{
  sub_195AB0E04();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_195AB0DF8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_195B3AC10()
{
  sub_195AB0E04();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_195AB0DF8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_195B3AC84()
{
  v4 = *MEMORY[0x1E69E9840];
  sub_195AD6980();
  v3 = v0;
  sub_195AD6994(&dword_1959FF000, v0, v1, "Told to diversify an invalid key type {options: %@, self: %@}", v2);
}

void sub_195B3ACF4()
{
  sub_195AB0E04();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_195AB0DF8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_195B3AD68()
{
  sub_195AB0E04();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_195AB0DF8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_195B3ADDC()
{
  sub_195AB0E04();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  sub_195AB0DF8();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void sub_195B3AE50()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3AEF0(void *a1)
{
  v1 = [a1 _internal];
  sub_195A05CCC();
  sub_195A05C74();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_195B3AFB0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3B084()
{
  sub_195AD69B0();
  *v1 = 136315394;
  sub_195A05D88(v2, v1, "[_IDSService setProtobufAction:forProtobufType:isResponse:]");
  sub_195AD6994(&dword_1959FF000, v3, v4, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v5);
}

void sub_195B3B0D4()
{
  sub_195AD69B0();
  *v1 = 136315394;
  sub_195A05D88(v2, v1, "[_IDSService protobufActionForType:isResponse:]");
  sub_195AD6994(&dword_1959FF000, v3, v4, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v5);
}

void sub_195B3B158()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3B1F8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3B298()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3B338()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3B3D8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3B478()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3B518()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3B5B8()
{
  sub_195AD69B0();
  *v1 = 136315394;
  sub_195A05D88(v2, v1, "[_IDSService sendProtobuf:fromAccount:toDestinations:priority:options:identifier:error:]");
  sub_195AD6994(&dword_1959FF000, v3, v4, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v5);
}

void sub_195B3B608()
{
  sub_195AD69B0();
  *v1 = 136315394;
  sub_195A05D88(v2, v1, "[_IDSService sendData:fromAccount:toDestinations:priority:options:identifier:error:]");
  sub_195AD6994(&dword_1959FF000, v3, v4, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v5);
}

void sub_195B3B658()
{
  sub_195AD69B0();
  *v1 = 136315394;
  sub_195A05D88(v2, v1, "[_IDSService sendAccessoryData:toAccessoryID:accessToken:options:identifier:error:]");
  sub_195AD6994(&dword_1959FF000, v3, v4, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", v5);
}

void sub_195B3B6DC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3B77C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3B81C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3B8BC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3B95C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3B9FC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3BA9C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3BB3C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3BBDC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3BC7C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3BD1C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3BDBC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3BEDC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3BF7C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3C01C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3C158()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3C1F8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3C298()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3C3D4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3C4A8(void *a1)
{
  v1 = [a1 service];
  sub_195AD6980();
  sub_195A05C74();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_195B3C614()
{
  sub_195A05CCC();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B3C6B8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3C758()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3C820(uint64_t a1, uint64_t a2)
{
  v7 = [*(a2 + 120) serviceName];
  sub_195A05C74();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_195B3C8CC(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "Error requesting client: %@", &v2, 0xCu);
}

void sub_195B3C944(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector requestSelectedSubscriptionsWithCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with a nil completion -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3C9BC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector selectSubscription:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil subscription -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3CA34(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector selectSubscription:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with a nil completion -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3CAAC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector unselectSubscription:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil subscription -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3CB24(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector unselectSubscription:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with a nil completion -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3CB9C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector setSelectedSubscriptions:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil subscription -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3CC14(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector setSelectedSubscriptions:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with a nil completion -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3CC8C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector removeTemporaryPhoneAlias:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil alias -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3CD04(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector removeTemporaryPhoneAlias:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with a nil completion -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3CDE4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector disableTemporaryPhoneAlias:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil alias -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3CE5C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector disableTemporaryPhoneAlias:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with a nil completion -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3CED4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector enableTemporaryPhoneAlias:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil alias -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3CF4C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector enableTemporaryPhoneAlias:withCompletion:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with a nil completion -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3CFC4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector requestUnselectedTemporaryPhoneAliasesWithError:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with a nil completion -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3D03C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector selectSubscription:withError:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil subscription -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3D0B4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector unselectSubscription:withError:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil subscription -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3D12C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector setSelectedSubscriptions:withError:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil subscription -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3D1A4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector removeTemporaryPhoneAlias:withError:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil alias -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3D21C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector enableTemporaryPhoneAlias:withError:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil alias -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3D294(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[IDSPhoneSubscriptionSelector disableTemporaryPhoneAlias:withError:]";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%s called with nil alias -- returning", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3D30C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*a1 + 40);
  sub_195A05CB0(&dword_1959FF000, a2, a3, "Error fetching sync registration collaborator {err: %@}", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B3D380(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "handleGroupSessionKeyValues: keyValues is not a dictionary. Is: %@", &v2, 0xCu);
}

void sub_195B3D6EC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3D78C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3D82C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3D8CC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3D96C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3DA0C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3DAAC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3DB4C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3DBEC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3DC8C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3DD2C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3DDCC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3DE6C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3DF0C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3DFAC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3E04C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3E0EC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3E18C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3E22C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3E2CC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3E36C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3E40C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3E4AC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3E54C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3E5EC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3E68C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3E72C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3E7CC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3E86C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3E90C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3E9AC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3EA4C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3EAEC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3EB8C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3EC2C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3ECCC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3ED6C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3EE0C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3EEAC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3EF4C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3EFEC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3F08C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3F12C(uint64_t a1, void *a2)
{
  v2 = [a2 service];
  sub_195AE6ADC();
  sub_195AA8760();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
}

void sub_195B3F1D4(uint64_t a1, void *a2)
{
  v2 = [a2 service];
  sub_195AE6ADC();
  sub_195AA8760();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
}

void sub_195B3F27C(uint64_t a1, void *a2)
{
  v2 = [a2 service];
  sub_195AE6ADC();
  sub_195AA8760();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
}

void sub_195B3F324(uint64_t a1, void *a2)
{
  v3 = [a2 service];
  v8 = [a2 compactDescription];
  sub_195AA8760();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x20u);
}

void sub_195B3F3F4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3F494()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B3F534(uint64_t *a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = [a2 value];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1959FF000, a3, OS_LOG_TYPE_ERROR, "Destination %@ not found in id query results %@. Verify destination is a properly formed IDS destination (and not just the handle string).", &v6, 0x16u);
}

void sub_195B3F5FC(void *a1, uint64_t a2, double a3, uint64_t a4, void *a5, void *a6)
{
  v17 = a5;
  v10 = a6;
  if (a1)
  {
    if (([v17 hasReceivedPacket] & 1) == 0)
    {
      [v17 setHasReceivedPacket:1];
      [a1 reportEvent:*MEMORY[0x1E69A4D08] forLinkID:{objc_msgSend(v17, "linkID")}];
    }

    [v17 setLastPacketReceivedTime:a3];
    sub_195B3F7A8(a1, v17, a3);
    if (*(a1[1] + 4448))
    {
      v11 = [v10 packetLogHandle];
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v13 = *(a1[1] + 4448);
        v14 = [v17 linkID];
        v15 = [v17 delegatedLinkID];
        v16 = [v10 protocolStack];
        v12 = [v13 packetLogIDWithLinkID:v14 delegatedLinkID:v15 protocolStack:v16 connectionID:{objc_msgSend(v10, "clientNWConnectionID")}];

        [v10 setPacketLogHandle:v12];
        if (!v12)
        {
          goto LABEL_9;
        }
      }

      [*(a1[1] + 4448) recordPacketsWithPacketLogID:v12 kind:3 bytes:a2 packetCount:1];
    }
  }

LABEL_9:
}

void sub_195B3F7A8(void *a1, void *a2, double a3)
{
  v5 = a2;
  if (a1)
  {
    v10 = v5;
    [v5 lastPacketReportedTime];
    v5 = v10;
    if (a3 - v6 > 5.0)
    {
      [v10 lastPacketReceivedTime];
      v8 = v7;
      [v10 lastPacketSentTime];
      [a1 reportLastPacketReceivedTime:objc_msgSend(v10 lastPacketSentTime:"linkID") linkID:{v8, v9}];
      [v10 setLastPacketReportedTime:a3];
      v5 = v10;
    }
  }
}

void sub_195B3F85C(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a4;
  v10 = a5;
  if (a1)
  {
    if (*(*(a1 + 8) + 80) == 1)
    {
      v11 = +[IDSLogging IDSDataChannels];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = a1;
        _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Direct connection is invalidated. Skipping <%@> direct read.", buf, 0xCu);
      }
    }

    else
    {
      v12 = v9;
      v13 = v8;
      v14 = v10;
      nw_connection_receive_multiple();
    }
  }
}

void sub_195B3FA0C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1959FF000, log, OS_LOG_TYPE_ERROR, "_processIncomingDatagram: packet is double-encrypted", buf, 2u);
}

void sub_195B3FA84()
{
  v0 = +[IDSLogging IDSDataChannels];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1959FF000, v0, OS_LOG_TYPE_DEFAULT, "received useExplicitQPod packet over P2P link.", v1, 2u);
  }
}

void sub_195B3FAF4(NSObject *a1, NSObject **a2)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1959FF000, a1, OS_LOG_TYPE_DEFAULT, "Error in _processIncomingDatagram: StunUtilProcessIncomingChannelData returned false.", v4, 2u);
  }

  *a2 = a1;
}

void sub_195B3FB58(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  id = nw_connection_get_id();
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "_createIfNecessaryDirectQPodConnectionForLinkID: could not create qpod connection from [C%llu]", &v3, 0xCu);
}

void sub_195B3FBE4(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "received packet on udp connection meant for qpod connection with id 0x%x", v2, 8u);
}

void sub_195B3FCF4(void *a1, uint64_t a2, NSObject *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = +[IDSDaemonController sharedInstance];
  v7 = [v6 listener];
  v8 = [v7 maxIMLPayloadSize];
  v9 = [a1 message];
  v10 = 134218752;
  v11 = a1;
  v12 = 2048;
  v13 = a2;
  v14 = 2048;
  v15 = v8;
  v16 = 2048;
  v17 = [v9 length];
  _os_log_debug_impl(&dword_1959FF000, a3, OS_LOG_TYPE_DEBUG, "%p - splitting message {payloadSizeRemaining: %lld, maxSize: %lld, length: %lld}", &v10, 0x2Au);
}

void sub_195B3FE00(void *a1)
{
  v1 = [a1 message];
  v2 = [v1 debugDescription];
  sub_195AF18EC();
  sub_195AF1904(&dword_1959FF000, v3, v4, "%p - raw %@", v5, v6, v7, v8);
}

void sub_195B3FEA0(void *a1)
{
  v1 = [a1 encryptionProperties];
  v2 = [v1 authTag];
  v3 = [v2 debugDescription];
  sub_195AF18EC();
  sub_195AF1904(&dword_1959FF000, v4, v5, "%p - raw AT %@", v6, v7, v8, v9);
}

void sub_195B3FF58(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_debug_impl(&dword_1959FF000, log, OS_LOG_TYPE_DEBUG, "%p - split into part %d", &v3, 0x12u);
}

void sub_195B3FFE0(uint64_t a1, void *a2)
{
  *v8 = 134218240;
  *&v8[4] = a1;
  *&v8[12] = 2048;
  *&v8[14] = [a2 length];
  sub_195AF1904(&dword_1959FF000, v2, v3, "%p - payload call, added msg {len: %lld}", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16]);
}

void sub_195B40070(uint64_t a1, void *a2)
{
  v2 = [a2 debugDescription];
  sub_195AF18EC();
  sub_195AF1904(&dword_1959FF000, v3, v4, "%p - payload call raw %@", v5, v6, v7, v8);
}

void sub_195B40104()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B401A4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B40244()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

uLong sub_195B402E4(uLong result, const Bytef *a2, z_size_t a3)
{
  if (result)
  {
    if (!a3)
    {
      return 0;
    }

    result = crc32_z(0, a2, a3);
    if (!result || result % 0xB3)
    {
      return 0;
    }
  }

  return result;
}

void sub_195B40328(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_1EAEDBEE8 != -1)
    {
      dispatch_once(&qword_1EAEDBEE8, &unk_1F09E7340);
    }

    v4 = *&qword_1EAEDBEF0 * mach_continuous_time();
    *(*(a1 + 8) + 248) += a2;
    ++*(*(a1 + 8) + 272);
    if (*(*(a1 + 8) + 296) == 0.0)
    {
      v5 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        sub_195B09B78();
        sub_195B09B88(&dword_1959FF000, v6, v7, "<%@> pending outgoing the first data packet (size: %lu)", v8, v9, v10, v11, 138412546);
      }

      *(*(a1 + 8) + 296) = v4;
    }

    else
    {
      v13 = sub_195B09BC8();
      if (!(v15 ^ v16 | v14))
      {
        *(v12 + 296) = v4;
        *(*(a1 + 8) + 248) = 0;
        *(*(a1 + 8) + 272) = 0;
        v17 = +[IDSTransportLog IDSDataChannels];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = sub_195B09BD8();
          v19 = sub_195B09B54(v18);
          sub_195B09BA8(&dword_1959FF000, v20, v21, "<%@> pending outgoing %f bytes/s %f packets/s", v22, v23, v24, v25, v19);
        }
      }
    }
  }
}

void sub_195B404C4(uint64_t a1)
{
  if (a1)
  {
    sub_195B09BE8();
    *(v3 + 240) += v4;
    ++*(*(v5 + 8) + 264);
    if (*(*(v5 + 8) + 288) == 0.0)
    {
      v6 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412546;
        sub_195B09B78();
        sub_195B09B88(&dword_1959FF000, v7, v8, "<%@> sent the first data packet (size: %lu)", v9, v10, v11, v12, v27);
      }

      *(*(v1 + 8) + 288) = v2;
    }

    else
    {
      v14 = sub_195B09BC8();
      if (!(v16 ^ v17 | v15))
      {
        *(v13 + 288) = v2;
        *(*(v1 + 8) + 240) = 0;
        *(*(v1 + 8) + 264) = 0;
        v18 = +[IDSTransportLog IDSDataChannels];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = sub_195B09BD8();
          v20 = sub_195B09B54(v19);
          sub_195B09BA8(&dword_1959FF000, v21, v22, "<%@> TX %f bytes/s %f packets/s", v23, v24, v25, v26, v20);
        }
      }
    }
  }
}

void sub_195B4061C(uint64_t a1)
{
  if (a1)
  {
    sub_195B09BE8();
    *(v3 + 256) += v4;
    ++*(*(v5 + 8) + 280);
    if (*(*(v5 + 8) + 304) == 0.0)
    {
      v6 = +[IDSTransportLog IDSDataChannels];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412546;
        sub_195B09B78();
        sub_195B09B88(&dword_1959FF000, v7, v8, "<%@> received the first data packet (size: %lu)", v9, v10, v11, v12, v27);
      }

      *(*(v1 + 8) + 304) = v2;
    }

    else
    {
      v14 = sub_195B09BC8();
      if (!(v16 ^ v17 | v15))
      {
        *(v13 + 304) = v2;
        *(*(v1 + 8) + 256) = 0;
        *(*(v1 + 8) + 280) = 0;
        v18 = +[IDSTransportLog IDSDataChannels];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = sub_195B09BD8();
          v20 = sub_195B09B54(v19);
          sub_195B09BA8(&dword_1959FF000, v21, v22, "<%@> RX %f bytes/s %f packets/s", v23, v24, v25, v26, v20);
        }
      }
    }
  }
}

void sub_195B4079C(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  sub_195A05CCC();
  sub_195A05C74();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_195B40A9C(void *a1)
{
  [a1 length];
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_195B40B20()
{
  sub_195A05CCC();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_195B40BD0()
{
  sub_195B0BEF0();
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v0, "state")}];
  sub_195AF18EC();
  sub_195A05C74();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_195B40CE4()
{
  sub_195B0BEF0();
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v0, "state")}];
  sub_195AF18EC();
  sub_195A05C74();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_195B40D90()
{
  sub_195B0BEF0();
  v1 = [v0 incomingMessagesWithoutAcks];
  sub_195AF18EC();
  sub_195A05C74();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_195B40E90(uint64_t a1, void *a2)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "state")}];
  sub_195A3E5B0();
  sub_195A05C74();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_195B40FAC(uint64_t a1, void *a2)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "state")}];
  sub_195A3E5B0();
  sub_195A05C74();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_195B410C8()
{
  sub_195B0BEF0();
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v0, "state")}];
  sub_195AF18EC();
  sub_195A05C74();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_195B411DC(void *a1)
{
  v1 = [a1 incomingMessagesWithoutAcks];
  sub_195A05CCC();
  sub_195A05C74();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_195B412AC()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_195A05CCC();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1959FF000, v1, OS_LOG_TYPE_ERROR, "Context has a service that does not match parakeet! {contextService: %@, context: %@}", v2, 0x16u);
}

void sub_195B41398(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "Client setup service -- failed check in! {service: %@}", &v3, 0xCu);
}

void sub_195B41414()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B414B4()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B41554()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B41738()
{
  sub_195A05C68();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_195B41774()
{
  sub_195A05C68();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_195B41824(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = [a1 state];
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "Client setting feature toggle to invalid state %lu", &v3, 0xCu);
}

void sub_195B418B0()
{
  sub_195A05C68();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_195B418EC()
{
  sub_195A05C68();
  sub_195A05CA4();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_195B4193C()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getKTVerifierResultClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"IDSIDQueryController.m" lineNumber:24 description:{@"Unable to find class %s", "KTVerifierResult"}];

  __break(1u);
}

void sub_195B419B8(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *TransparencyLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"IDSIDQueryController.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void sub_195B41A4C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B41AEC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B41B8C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B41C2C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B41CCC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B41D6C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B41E0C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B41EAC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B41F4C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B41FEC()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B4208C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B4212C()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B421E0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B42280()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B42320()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B423C0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B42460()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B42500()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B425A0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B42640(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_IDSSession";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%@: Empty unique ID", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B426B8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_IDSSession";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%@: Empty account ID", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B42730(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_IDSSession";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%@: Empty destinations set", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B427A8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B42848()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B428E8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B42988()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B42A28()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B42AC8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_IDSSession";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%@ - existing socket pair, ignoring request to create", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B42B40()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B42BE8()
{
  sub_195AB0E04();
  strerror(v0);
  sub_195B1DA70();
  sub_195B1DA50();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_195B42C80()
{
  sub_195AB0E04();
  strerror(v0);
  sub_195B1DA70();
  sub_195B1DA50();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_195B42D18()
{
  sub_195AB0E04();
  strerror(v0);
  sub_195B1DA70();
  sub_195B1DA50();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_195B42DB0()
{
  sub_195AB0E04();
  strerror(v0);
  sub_195B1DA70();
  sub_195B1DA50();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_195B42E48()
{
  sub_195AB0E04();
  strerror(v0);
  sub_195B1DA70();
  sub_195B1DA50();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_195B42EE0()
{
  sub_195AB0E04();
  strerror(v0);
  sub_195B1DA70();
  sub_195B1DA50();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_195B42F78()
{
  sub_195AB0E04();
  strerror(v0);
  sub_195B1DA70();
  sub_195B1DA50();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_195B43010()
{
  sub_195AB0E04();
  strerror(v0);
  sub_195B1DA70();
  sub_195B1DA50();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_195B430A8()
{
  sub_195AB0E04();
  strerror(v0);
  sub_195B1DA70();
  sub_195B1DA50();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_195B43140()
{
  sub_195AB0E04();
  strerror(v0);
  sub_195B1DA70();
  sub_195B1DA50();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_195B431D8()
{
  sub_195AB0E04();
  strerror(v0);
  sub_195B1DA70();
  sub_195B1DA50();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

void sub_195B43270()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B43310()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B433B0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B43450()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B434F0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B43590()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B43630()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B436D0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B43770()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B43810()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B438B0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B43950()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B439F0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B43A90()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B43B30()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B43BD0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B43C70()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B43D10()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B43DB0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B43E50()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B43EF0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B43F90()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B44030()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B440D0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B44170()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B44210()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B442B0()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B44350(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_IDSSession";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%@ - Session not connected can't send data yet, ignoring...", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B443C8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_IDSSession";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%@ - No data to send, ignoring...", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B44440(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_IDSSession";
  sub_195A05CB0(&dword_1959FF000, a1, a3, "%@ - No socket pair connection setup, ignoring...", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_195B444B8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B44558()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B445F8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B44698()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B44738()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B447D8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B44878()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B44918()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B449B8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B44A58()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B44AF8()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B44B98()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B44C38()
{
  v0 = [MEMORY[0x1E696AF00] callStackSymbols];
  sub_195A156D8();
  sub_195A05C74();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_195B44CD8()
{
  v5 = 138412546;
  sub_195AA26FC();
  sub_195A05D2C(&dword_1959FF000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_195B44D60()
{
  v5 = 138412546;
  sub_195AA26FC();
  sub_195A05D2C(&dword_1959FF000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_195B44DE8()
{
  v5 = 138412546;
  sub_195AA26FC();
  sub_195A05D2C(&dword_1959FF000, MEMORY[0x1E69E9C10], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_195B44E84(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "Error fetching sync activity monitor collaborator {err: %@}", &v3, 0xCu);
}

void sub_195B44F04(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1959FF000, a2, OS_LOG_TYPE_ERROR, "Error fetching activity monitor collaborator {error: %@}", &v2, 0xCu);
}

void sub_195B44FA4(NSObject *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AF00] callStackSymbols];
  v3 = 136315394;
  v4 = "[IDSRealTimeEncryptionProxy initWithAccount:]";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_1959FF000, a1, OS_LOG_TYPE_ERROR, "IDSInternalQueue - assertQueueIsCurrent in %s failed {symbols: %@}. The only acceptable callstack includes dealloc.", &v3, 0x16u);
}

void sub_195B45058(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"IDSTransactionLogTaskHandler.m" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"_delegate"}];
}

void sub_195B450D4(void *a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [a1 recipientAlias];
  v7 = [a2 aliasToAccountsMap];
  v8 = 138478339;
  v9 = v6;
  v10 = 2113;
  v11 = v7;
  v12 = 2113;
  v13 = a1;
  _os_log_error_impl(&dword_1959FF000, a3, OS_LOG_TYPE_ERROR, "Failed to get account for recipient alias {alias: %{private}@, accounts: %{private}@, message: %{private}@}", &v8, 0x20u);
}