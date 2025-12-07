@interface CreateNewConnectionInfo
@end

@implementation CreateNewConnectionInfo

void __figXPC_CreateNewConnectionInfo_block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  uint64 = xpc_dictionary_get_uint64(*(v1 + 216), ".Operation");
  v3 = *(v1 + 216);
  theString = 0;
  v47 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  *buffer = 0u;
  v49 = 0u;
  v4 = xpc_dictionary_get_uint64(v3, ".Operation");
  FigXPCMessageCopyCFString(v3, ".PropertyName", &theString);
  if (theString)
  {
    CFStringGetCString(theString, buffer, 128, 0);
  }

  v5 = OpCodeChar(v4, 3u);
  v6 = OpCodeChar(v4, 2u);
  v7 = OpCodeChar(v4, 1u);
  v8 = OpCodeChar(v4, 0);
  asprintf(&v47, "Server %s Opcode '%c%c%c%c' %s", (v1 + 32), v5, v6, v7, v8, buffer);
  v9 = v47;
  v10 = FigCFWeakReferenceLoadAndRetain((v1 + 16));
  if ((uint64 & 0x200000000) != 0)
  {
    free(v9);
    if (!v10)
    {
      return;
    }
  }

  else
  {
    context = dispatch_get_context(*(v1 + 192));
    if (context)
    {
      v13 = context;
      remote_connection = xpc_dictionary_get_remote_connection(context);
      xpc_connection_send_message(remote_connection, v13);
      xpc_release(v13);
      dispatch_set_context(*(v1 + 192), 0);
    }

    if (*(v10[7] + 139) && FigCanTriggerTapToRadar(context, v12))
    {
      *buffer = 0;
      FigServer_CopyProcessName(*(v1 + 160), buffer, v15, v16, v17, v18, v19, v20);
      v21 = *MEMORY[0x1E695E480];
      v22 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"hang detected in media related process");
      v23 = *buffer;
      if (!*buffer)
      {
        v23 = @"UNKNOWN";
      }

      v24 = CFStringCreateWithFormat(v21, 0, @"XPC blockage detected impacting client %@", v23);
      v45 = getprogname();
      RadarDescriptionString = FigTapToRadarCreateRadarDescriptionString(v21, @"An XPC blockage was detected in media related process %s, for server %s, serving client process %@. This may result in the process being terminated and subsequently playback, audio, and camera capture may be interrupted or fail.");
      if (in_audio_mx_server_process())
      {
        v30 = 1581675;
      }

      else
      {
        v30 = 1507078;
      }

      FigTriggerTapToRadar(v22, v24, RadarDescriptionString, v30, v26, v27, v28, v29, v45);
      if (RadarDescriptionString)
      {
        CFRelease(RadarDescriptionString);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      if (*buffer)
      {
        CFRelease(*buffer);
      }
    }

    if (*(v1 + 224))
    {
      v31 = *(v1 + 160);
      getpid();
      *buffer = 0;
      FigSimpleMutexLock(gSelfTerminationLock);
      FigServer_CopyProcessName(v31, buffer, v32, v33, v34, v35, v36, v37);
      if (*buffer)
      {
        CFRelease(*buffer);
        *buffer = 0;
      }

      FigRPCServer_TimeoutCrashReport(v31, v9);
      FigUserCrashWithMessage("****** Self-terminating due to XPC timeout Server %s Client %@ (%d) %s", v38, v39, v40, v41, v42, v43, v44, v1 + 32);
    }

    free(v9);
  }

  CFRelease(v10);
}

@end