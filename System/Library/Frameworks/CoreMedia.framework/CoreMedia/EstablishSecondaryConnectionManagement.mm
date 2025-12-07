@interface EstablishSecondaryConnectionManagement
@end

@implementation EstablishSecondaryConnectionManagement

void __figXPCServer_EstablishSecondaryConnectionManagement_block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x19A8DA4F0](a2);
  if (v4 == MEMORY[0x1E69E9E68])
  {
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    context = 0;
    v36 = 0;
    cf = 0;
    memset(v37, 0, sizeof(v37));
    FigServer_CopyProcessName(*(v13 + 16), &cf, v5, v6, v7, v8, v9, v10);
    CStringPtrMaybeUsingPreallocatedBuffer = FigCFStringGetCStringPtrMaybeUsingPreallocatedBuffer(cf, v37, 128, 0x600u);
    v16 = *(v14 + 88);
    v17 = *(v13 + 152) + 1;
    *(v13 + 152) = v17;
    asprintf(&v36, "%s(%s-%d.%d)-secondary-messages", v16, CStringPtrMaybeUsingPreallocatedBuffer, *(v13 + 16), v17);
    v18 = FigDispatchQueueCreateWithPriority(v36, 0, *(v14 + 120));
    FigThreadMakeDispatchQueueAbortable(v18, v19, v20, v21, v22, v23, v24, v25, v32);
    free(v36);
    FigSimpleMutexLock(*(v13 + 80));
    CFArrayAppendValue(*(v13 + 144), a2);
    FigSimpleMutexUnlock(*(v13 + 80));
    xpc_retain(a2);
    xpc_connection_set_target_queue(a2, v18);
    figXPC_CreateNewConnectionInfo(v13, v18, &context, v26, v27, v28, v29, v30);
    v31 = context;
    xpc_connection_set_context(a2, context);
    xpc_connection_set_finalizer_f(a2, figXPC_ConnectionInfoFinalizer);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __figXPC_HandleNewSecondaryConnection_block_invoke;
    handler[3] = &__block_descriptor_tmp_214;
    handler[4] = v31;
    handler[5] = v14;
    handler[6] = a2;
    xpc_connection_set_event_handler(a2, handler);
    xpc_connection_activate(a2);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v18)
    {
      dispatch_release(v18);
    }
  }

  else if (a2 == MEMORY[0x1E69E9E20] && v4 == MEMORY[0x1E69E9E98])
  {
    v12 = xpc_connection_copy_invalidation_reason();

    free(v12);
  }
}

@end