@interface MRServiceHandleClientMessage
@end

@implementation MRServiceHandleClientMessage

void ___MRServiceHandleClientMessage_block_invoke()
{
  v0 = MEMORY[0x1EEE9AC00]();
  __src[259] = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(*(v0 + 32), "MRXPC_MESSAGE_ID_KEY");
  v2 = uint64;
  if (uint64 <= 0x700000000000007)
  {
    if (uint64 > 0x700000000000003)
    {
      if (uint64 == 0x700000000000004)
      {
        v37 = *(v0 + 40);
        v38 = *(v0 + 32);
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = ___MRServiceHandleVideoThumbnailsRequest_block_invoke;
        v58[3] = &unk_1E769C690;
        v14 = v38;
        v59 = v14;
        v39 = MEMORY[0x1A58E3570](v58);
        if (v37 && *(v37 + 24))
        {
          Error = MRCreatePlayerPathFromXPCMessage(v14);
          memset(__src, 0, 512);
          MRVideoThumbnailRequestFromXPCMessage(v14, __src);
          v41 = *(v37 + 24);
          v42 = *(v37 + 64);
          memcpy(__dst, __src, sizeof(__dst));
          v41(Error, __dst, v42, v39);
        }

        else
        {
          Error = MRMediaRemoteCreateError(14);
          (v39)[2](v39, 0, Error);
        }

        v51 = v59;
        goto LABEL_52;
      }

      if (uint64 != 0x700000000000005)
      {
        if (uint64 == 0x700000000000006)
        {
          v9 = *(v0 + 40);
          v8 = *(v0 + 32);
          if (v9 && *(v9 + 40))
          {
            v56 = v8;
            v10 = MRCreatePlayerPathFromXPCMessage(v8);
            v11 = MRCreateDataFromXPCMessage(v56, "MRXPC_LYRICS_EVENT_DATA");
            v12 = MRLyricsEventCreateFromExternalRepresentation(v11);
            (*(v9 + 40))(v10, v12);

            v8 = v56;
          }

          goto LABEL_14;
        }

        goto LABEL_46;
      }

      v28 = *(v0 + 40);
      v29 = *(v0 + 32);
      __src[0] = MEMORY[0x1E69E9820];
      __src[1] = 3221225472;
      __src[2] = ___MRServiceHandleAudioAmplitudeSamplesRequest_block_invoke;
      __src[3] = &unk_1E769C690;
      v14 = v29;
      __src[4] = v14;
      v25 = MEMORY[0x1A58E3570](__src);
      if (v28 && *(v28 + 32))
      {
        v26 = MRCreatePlayerPathFromXPCMessage(v14);
        v30 = xpc_dictionary_get_uint64(v14, "MRXPC_AUDIO_AMPLITUDE_SAMPLES_COUNT_KEY");
        (*(v28 + 32))(v26, v30, *(v28 + 64), v25);
LABEL_50:

        goto LABEL_51;
      }

LABEL_43:
      v26 = MRMediaRemoteCreateError(14);
      (v25)[2](v25, 0, v26);
      goto LABEL_50;
    }

    if (uint64 == 0x700000000000001)
    {
      v23 = *(v0 + 40);
      v24 = *(v0 + 32);
      __src[0] = MEMORY[0x1E69E9820];
      __src[1] = 3221225472;
      __src[2] = ___MRServiceHandlePostNotification_block_invoke;
      __src[3] = &unk_1E769A228;
      v14 = v24;
      __src[4] = v14;
      v25 = MEMORY[0x1A58E3570](__src);
      if (!v23 || !*(v23 + 8))
      {
        goto LABEL_51;
      }

      v26 = MRCreateStringFromXPCMessage(v14, "MRXPC_NOTIFICATION_NAME_KEY");
      v27 = MRCreatePropertyListFromXPCMessage(v14, "MRXPC_NOTIFICATION_USERINFO_DATA_KEY");
      if (v26)
      {
        (*(v23 + 8))(v26, v27, *(v23 + 64), v25);
      }

      else
      {
        v54 = _MRLogForCategory(0);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          ___MRServiceHandleClientMessage_block_invoke_cold_4();
        }
      }

      goto LABEL_49;
    }

    if (uint64 == 0x700000000000002)
    {
      v19 = *(v0 + 32);
      v14 = MRCreatePlaybackQueueRequestFromXPCMessage(v19);
      v20 = MRCreatePlayerPathFromXPCMessage(v19);
      __src[0] = MEMORY[0x1E69E9820];
      __src[1] = 3221225472;
      __src[2] = ___MRServiceHandleNowPlayingPlaybackQueueRequest_block_invoke;
      __src[3] = &unk_1E769C3B0;
      __src[4] = v19;
      v21 = v19;
      v22 = MEMORY[0x1A58E3570](__src);
      MRServiceClientPlaybackQueueRequestCallback(v20, v14, v22);

LABEL_63:
      return;
    }

    goto LABEL_46;
  }

  if (uint64 > 0x70000000000000BLL)
  {
    switch(uint64)
    {
      case 0x70000000000000CLL:
        v14 = MRCreateProtobufFromXPCMessage(*(v0 + 32));
        v15 = [v14 context];
        v46 = +[MRClientApplicationConnectionManager sharedManager];
        v47 = [v15 identifier];
        v16 = [v46 connectionForIdentifier:v47];

        if (v16)
        {
          v18 = [v14 message];
          [(MRMusicHandoffSession *)v16 handleMessage:v18];
        }

        else
        {
          v18 = _MRLogForCategory(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            ___MRServiceHandleClientMessage_block_invoke_cold_3(v15, v14, v18);
          }
        }

        goto LABEL_62;
      case 0x70000000000000DLL:
        v14 = MRCreateProtobufFromXPCMessage(*(v0 + 32));
        v15 = [v14 context];
        v35 = +[MRClientApplicationConnectionManager sharedManager];
        v36 = [v15 identifier];
        v16 = [v35 connectionForIdentifier:v36];

        if (v16)
        {
          v18 = [v14 error];
          [(MRMusicHandoffSession *)v16 invalidate:v18];
        }

        else
        {
          v18 = _MRLogForCategory(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            ___MRServiceHandleClientMessage_block_invoke_cold_2(v15, v18);
          }
        }

        goto LABEL_62;
      case 0x70000000000000ELL:
        v13 = *(v0 + 32);
        v14 = MRCreateDataFromXPCMessage(v13, "MRXPC_MUSIC_HANDOFF_SESSION_KEY");
        v15 = MRCreatePlayerPathFromXPCMessage(v13);

        v16 = [[MRMusicHandoffSession alloc] initWithProtobufData:v14];
        v17 = +[MRClientApplicationConnectionManager sharedManager];
        v18 = [v17 handoffSessionHandlerForPlayerPath:v15];

        if (v18)
        {
          (*(v18 + 16))(v18, v16);
        }

        else
        {
          v52 = _MRLogForCategory(0);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
          {
            ___MRServiceHandleClientMessage_block_invoke_cold_1(v15, v52);
          }

          v53 = [[MRMusicHandoffEvent alloc] initWithType:2];
          [(MRMusicHandoffSession *)v16 updateWithEvent:v53];
        }

LABEL_62:

        goto LABEL_63;
    }

LABEL_46:
    v14 = _MRLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__src[0]) = 134217984;
      *(__src + 4) = v2;
      _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "Client XPC message with ID %lu not handled.", __src, 0xCu);
    }

    goto LABEL_63;
  }

  if (uint64 == 0x700000000000008)
  {
    v43 = *(v0 + 40);
    v44 = *(v0 + 32);
    __src[0] = MEMORY[0x1E69E9820];
    __src[1] = 3221225472;
    __src[2] = ___MRServiceHandleClientDiagnosticsRequest_block_invoke;
    __src[3] = &unk_1E769C6B8;
    v14 = v44;
    __src[4] = v14;
    v25 = MEMORY[0x1A58E3570](__src);
    if (v43)
    {
      v45 = *(v43 + 48);
      if (v45)
      {
        v45(*(v43 + 64), v25);
LABEL_51:

        v51 = __src[4];
LABEL_52:

        goto LABEL_63;
      }
    }

    goto LABEL_43;
  }

  if (uint64 == 0x70000000000000ALL)
  {
    v31 = *(v0 + 40);
    v32 = *(v0 + 32);
    __src[0] = MEMORY[0x1E69E9820];
    __src[1] = 3221225472;
    __src[2] = ___MRServiceHandleGeneralClientMessage_block_invoke;
    __src[3] = &unk_1E769C6E0;
    v14 = v32;
    __src[4] = v14;
    v25 = MEMORY[0x1A58E3570](__src);
    v26 = MRCreateProtobufFromXPCMessage(v14);
    v33 = MRCreatePlayerPathFromXPCMessage(v14);
    v27 = v33;
    if (v31 && (v34 = *(v31 + 56)) != 0)
    {
      v34(v33, v26, v25);
    }

    else
    {
      v48 = [MRProtocolMessage alloc];
      v49 = MRMediaRemoteCreateError(14);
      v50 = [(MRProtocolMessage *)v48 initWithUnderlyingCodableMessage:0 error:v49];
      (v25[2])(v25, v50);
    }

LABEL_49:

    goto LABEL_50;
  }

  if (uint64 != 0x70000000000000BLL)
  {
    goto LABEL_46;
  }

  v55 = MRCreateProtobufFromXPCMessage(*(v0 + 32));
  v3 = [MRApplicationConnection alloc];
  v4 = [v55 context];
  v5 = [v55 requestInfo];
  v6 = [(MRApplicationConnection *)v3 initWithContext:v4 requestInfo:v5];

  v7 = +[MRClientApplicationConnectionManager sharedManager];
  [v7 registerConnection:v6];

  v8 = v55;
LABEL_14:
}

void ___MRServiceHandleClientMessage_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1A2860000, a2, OS_LOG_TYPE_FAULT, "No handoff session handler found for player path: %@", &v2, 0xCu);
}

void ___MRServiceHandleClientMessage_block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "Could not find connection: %@ to handle invalidation", &v2, 0xCu);
}

void ___MRServiceHandleClientMessage_block_invoke_cold_3(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a2 message];
  v6 = 138412546;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "Could not find connection: %@ to handle message: %@", &v6, 0x16u);
}

@end