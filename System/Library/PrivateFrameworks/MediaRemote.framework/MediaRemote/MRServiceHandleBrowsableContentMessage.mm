@interface MRServiceHandleBrowsableContentMessage
@end

@implementation MRServiceHandleBrowsableContentMessage

void ___MRServiceHandleBrowsableContentMessage_block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2 <= 0x500000000000003)
  {
    switch(v2)
    {
      case 0x500000000000001:
        v23 = *(a1 + 48);
        v24 = *(a1 + 32);
        v5 = v24;
        if (v23 && v23[1])
        {
          *&v42 = 0;
          data = xpc_dictionary_get_data(v24, "MRXPC_INDEXPATH_DATA_KEY", &v42);
          if (data)
          {
            v26 = v42 >> 3;
          }

          else
          {
            v26 = 0;
          }

          v29 = v23;
          v27 = *v23;
          v28 = v29[1];
          *&v42 = MEMORY[0x1E69E9820];
          *(&v42 + 1) = 3221225472;
          v43 = ___MRServiceHandleBeginLoadingContentMessage_block_invoke;
          v44 = &unk_1E769C758;
          v45 = v5;
          v28(data, v26, v27, &v42);

          goto LABEL_60;
        }

        Error = MRMediaRemoteCreateError(6);
        _MRServiceSendReplyWithClientError(v5, Error);
        goto LABEL_59;
      case 0x500000000000002:
        v38 = *(a1 + 48);
        v5 = *(a1 + 32);
        if (!v38)
        {
          goto LABEL_60;
        }

        v39 = v38[2];
        if (!v39)
        {
          goto LABEL_60;
        }

        Error = v39(*v38);
        if (!Error)
        {
          v40 = _MRLogForCategory(0);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v42) = 0;
            _os_log_impl(&dword_1A2860000, v40, OS_LOG_TYPE_DEFAULT, "WARNING: Client endpoint returned nil when requesting now playing identifiers", &v42, 2u);
          }
        }

        v11 = xpc_dictionary_get_remote_connection(v5);
        if (!v11)
        {
          goto LABEL_57;
        }

        reply = xpc_dictionary_create_reply(v5);
        if (!reply)
        {
          goto LABEL_56;
        }

        if (Error)
        {
          v41 = [MEMORY[0x1E696AE40] dataWithPropertyList:Error format:200 options:0 error:0];
          xpc_dictionary_set_data(reply, "MRXPC_CONTENT_NOW_PLAYING_IDENTIFIERS_KEY", [v41 bytes], objc_msgSend(v41, "length"));
        }

        goto LABEL_55;
      case 0x500000000000003:
        v14 = *(a1 + 48);
        v15 = *(a1 + 32);
        v5 = v15;
        if (!v14 || !*(v14 + 24))
        {
          goto LABEL_60;
        }

        *&v42 = 0;
        xpc_dictionary_get_data(v15, "MRXPC_INDEXPATH_DATA_KEY", &v42);
        v16 = (*(v14 + 24))();
        Error = xpc_dictionary_get_remote_connection(v5);
        if (!Error)
        {
          goto LABEL_59;
        }

        v17 = xpc_dictionary_create_reply(v5);
        v18 = v17;
        if (!v17)
        {
          goto LABEL_41;
        }

        xpc_dictionary_set_BOOL(v17, "MRXPC_CONTENT_SUPPORTS_PLAYBACK_PROGRESS_KEY", v16);
LABEL_40:
        xpc_connection_send_message(Error, v18);
LABEL_41:

        goto LABEL_59;
    }
  }

  else
  {
    if (v2 <= 0x500000000000005)
    {
      if (v2 != 0x500000000000004)
      {
        v3 = *(a1 + 48);
        v4 = *(a1 + 32);
        v5 = v4;
        if (!v3 || !v3[5])
        {
          goto LABEL_60;
        }

        *&v42 = 0;
        v6 = xpc_dictionary_get_data(v4, "MRXPC_INDEXPATH_DATA_KEY", &v42);
        if (v6)
        {
          v7 = v42 >> 3;
        }

        else
        {
          v7 = 0;
        }

        int64 = xpc_dictionary_get_int64(v5, "MRXPC_RANGE_BEGIN_KEY");
        v9 = xpc_dictionary_get_int64(v5, "MRXPC_RANGE_LENGTH_KEY");
        Error = (v3[5])(v6, v7, int64, v9, *v3);
        if (!Error)
        {
          v11 = _MRLogForCategory(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v42) = 0;
            _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "Client endpoint returned nil when requesting child content items.", &v42, 2u);
          }

          goto LABEL_57;
        }

        v11 = xpc_dictionary_get_remote_connection(v5);
        if (!v11)
        {
LABEL_57:

          goto LABEL_59;
        }

        v12 = xpc_dictionary_create_reply(v5);
        reply = v12;
        if (!v12)
        {
LABEL_56:

          goto LABEL_57;
        }

        MRAddContentItemsToXPCMessage(v12, Error);
LABEL_55:
        xpc_connection_send_message(v11, reply);
        goto LABEL_56;
      }

      v32 = *(a1 + 48);
      v33 = *(a1 + 32);
      v5 = v33;
      if (!v32 || !*(v32 + 32))
      {
        goto LABEL_60;
      }

      *&v42 = 0;
      xpc_dictionary_get_data(v33, "MRXPC_INDEXPATH_DATA_KEY", &v42);
      v34 = (*(v32 + 32))();
      Error = xpc_dictionary_get_remote_connection(v5);
      if (!Error)
      {
        goto LABEL_59;
      }

      v35 = xpc_dictionary_create_reply(v5);
      v18 = v35;
      if (!v35)
      {
        goto LABEL_41;
      }

      xpc_dictionary_set_uint64(v35, "MRXPC_CONTENT_CHILD_ITEMS_COUNT_KEY", v34);
      goto LABEL_40;
    }

    if (v2 == 0x500000000000006)
    {
      v36 = *(a1 + 48);
      v37 = *(a1 + 32);
      v5 = v37;
      if (v36 && *(v36 + 48))
      {
        *&v42 = 0;
        xpc_dictionary_get_data(v37, "MRXPC_INDEXPATH_DATA_KEY", &v42);
        (*(v36 + 48))();
      }

      goto LABEL_60;
    }

    if (v2 == 0x50000000000000ALL)
    {
      v19 = *(a1 + 48);
      v20 = *(a1 + 32);
      v5 = v20;
      if (!v19 || !v19[7])
      {
        _MRServiceSendReply(v20, 6uLL);
        goto LABEL_60;
      }

      Error = MRCreatePropertyListFromXPCMessage(v20, "MRXPC_CONTENT_IDENTIFIERS");
      v21 = v19[7];
      v22 = *v19;
      *&v42 = MEMORY[0x1E69E9820];
      *(&v42 + 1) = 3221225472;
      v43 = ___MRServiceHandleGetContentItemsForIdentifiers_block_invoke;
      v44 = &unk_1E769C690;
      v45 = v5;
      v21(Error, v22, &v42);

LABEL_59:
LABEL_60:

      return;
    }
  }

  v30 = _MRLogForCategory(0);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a1 + 40);
    LODWORD(v42) = 134217984;
    *(&v42 + 4) = v31;
    _os_log_impl(&dword_1A2860000, v30, OS_LOG_TYPE_DEFAULT, "Client-side browsable content message with ID %lu not handled.", &v42, 0xCu);
  }
}

@end