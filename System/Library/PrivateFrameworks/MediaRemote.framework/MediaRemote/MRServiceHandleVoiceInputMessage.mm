@interface MRServiceHandleVoiceInputMessage
@end

@implementation MRServiceHandleVoiceInputMessage

void ___MRServiceHandleVoiceInputMessage_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "MRXPC_MESSAGE_ID_KEY");
  if (uint64 == 0x900000000000005)
  {
    v11 = *(a1 + 40);
    v10 = *(a1 + 32);
    if (v11 && *(v11 + 24))
    {
      xdicta = v10;
      v12 = xpc_dictionary_get_uint64(v10, "MRXPC_VOICE_INPUT_DEVICE_ID_KEY");
      v13 = MRCreateDataFromXPCMessage(xdicta, "MRXPC_VOICE_DATA_PROTOBUF_DATA_KEY");
      if (v13)
      {
        v14 = MRAudioDataBlockCreateFromExternalRepresentation(*MEMORY[0x1E695E480], v13);
        v15 = v14;
        if (v14)
        {
          v16 = MRAudioDataBlockGetBuffer(v14);
          Timestamp = MRAudioDataBlockGetTimestamp(v15);
          v19 = v18;
          Gain = MRAudioDataBlockGetGain(v15);
        }

        else
        {
          v16 = 0;
          v19 = 0.0;
          Gain = 0.0;
          Timestamp = 0.0;
        }
      }

      else
      {
        v16 = 0;
        v19 = 0.0;
        Gain = 0.0;
        Timestamp = 0.0;
      }

      (*(v11 + 24))(v12, v16, *v11, Timestamp, v19, Gain);

      v10 = xdicta;
    }

    goto LABEL_25;
  }

  v3 = uint64;
  if (uint64 == 0x900000000000003)
  {
    v7 = *(a1 + 40);
    v5 = *(a1 + 32);
    xdict = v5;
    if (v7 && *(v7 + 16))
    {
      v8 = xpc_dictionary_get_uint64(v5, "MRXPC_VOICE_INPUT_DEVICE_ID_KEY");
      (*(v7 + 16))(v8, *v7);
      goto LABEL_10;
    }

LABEL_11:
    v9 = 6;
    goto LABEL_12;
  }

  if (uint64 == 0x900000000000002)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 32);
    xdict = v5;
    if (v4 && *(v4 + 8))
    {
      v6 = xpc_dictionary_get_uint64(v5, "MRXPC_VOICE_INPUT_DEVICE_ID_KEY");
      (*(v4 + 8))(v6, *v4);
LABEL_10:
      v5 = xdict;
      v9 = 0;
LABEL_12:
      _MRServiceSendReply(v5, v9);
      v10 = xdict;
LABEL_25:

      return;
    }

    goto LABEL_11;
  }

  v21 = _MRLogForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = v3;
    _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, "Voice recording client message %lu not handled", buf, 0xCu);
  }
}

@end