void sub_78604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t get_stringi(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add(v11 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_44:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v11 + 3) + 6224);

      return v36(a1, a2, a3);
    }
  }

  *(v11 + 4838) = 1;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v41, 863, 256, "Ceui", v14, v15, v16, v17, *v11, a2, a3);
    v18 = byte_21B1B7;
    if (byte_21B1B7)
    {
      breakpoint_break(v41, (&stru_338.addr + 7), 1, v11[851], v11);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4)
    {
      v25 = 0;
      goto LABEL_23;
    }

    v24 = mach_absolute_time();
    v25 = (*(*(v11 + 4) + 6224))(a1, a2, a3);
    v26 = mach_absolute_time() - v24;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v27 = v41[0];
      *(v41[0] + 2) = v24;
      v27[3] = v26;
      if (gCheckGLErrors != 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v39 = __udivti3();
      v40 = v41[0];
      *(v41[0] + 3) = v39;
      v40[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_23;
      }
    }

    check_errors(v11);
LABEL_23:
    GPUTools::FB::Encode(v41, 4294955008, "S", v19, v20, v21, v22, v23, v25);
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (v11[851])
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11, v41);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, v41);
    v28 = v11[851];
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_32:
        v29 = [DYGetGLGuestAppClient() defaultFbufStream];
        v30 = v29;
        while (atomic_exchange(v29 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        v31 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_40;
      }

      v37 = 2;
      v38 = 863;
    }

    breakpoint_break(v41, v38, v37, v28, v11);
    goto LABEL_32;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v25 = (*(*(v11 + 3) + 6224))(a1, a2, a3);
LABEL_40:
  if (v41[0])
  {
    free(v41[0]);
  }

  return v25;
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add(v11 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_44:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v11 + 3) + 6224);

      return v36(a1, a2, a3);
    }
  }

  *(v11 + 4838) = 1;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v41, 863, 256, "Ceui", v14, v15, v16, v17, *v11, a2, a3);
    v18 = byte_21B1B7;
    if (byte_21B1B7)
    {
      breakpoint_break(v41, (&stru_338.addr + 7), 1, v11[851], v11);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4)
    {
      v25 = 0;
      goto LABEL_23;
    }

    v24 = mach_absolute_time();
    v25 = (*(*(v11 + 4) + 6224))(a1, a2, a3);
    v26 = mach_absolute_time() - v24;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v27 = v41[0];
      *(v41[0] + 2) = v24;
      v27[3] = v26;
      if (gCheckGLErrors != 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v39 = __udivti3();
      v40 = v41[0];
      *(v41[0] + 3) = v39;
      v40[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_23;
      }
    }

    check_errors(v11);
LABEL_23:
    GPUTools::FB::Encode(v41, 4294955008, "S", v19, v20, v21, v22, v23, v25);
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (v11[851])
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11, v41);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, v41);
    v28 = v11[851];
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_32:
        v29 = [DYGetGLGuestAppClient() defaultFbufStream];
        v30 = v29;
        while (atomic_exchange(v29 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        v31 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_40;
      }

      v37 = 2;
      v38 = 863;
    }

    breakpoint_break(v41, v38, v37, v28, v11);
    goto LABEL_32;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v25 = (*(*(v11 + 3) + 6224))(a1, a2, a3);
LABEL_40:
  if (v41[0])
  {
    free(v41[0]);
  }

  return v25;
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v16 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v16, 0, do_nothing);
LABEL_27:
      v19 = *(*(v11 + 24) + 6224);

      return v19(a1, a2, a3);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_27;
  }

  result = (*(*(v11 + 32) + 6224))(a1, a2, a3);
  ++*(v11 + 3704);
  if (gCheckGLErrors == 1)
  {
    v18 = result;
    alpha_func(v11);
    result = v18;
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {
    v17 = result;
    handle_opengl_thread_conflict(v11);
    return v17;
  }

  return result;
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
LABEL_27:
      v21 = *(*(v11 + 24) + 6224);

      return v21(a1, a2, a3);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_27;
  }

  v14 = mach_absolute_time();
  v15 = (*(*(v11 + 32) + 6224))(a1, a2, a3);
  v16 = mach_absolute_time();
  v17 = vdupq_n_s64(1uLL);
  v17.i64[0] = v16 - v14;
  *(v11 + 3696) = vaddq_s64(v17, *(v11 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors != 1 || (add - 1) < 1)
  {
    return v15;
  }

  handle_opengl_thread_conflict(v11);
  return v15;
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v14 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v14 >= 1)
      {
        handle_opengl_thread_conflict(v11);
      }

      return 0;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 6224);

  return v18(a1, a2, a3);
}

void sub_78A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fence_sync(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v44 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v44 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v45 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v45, 0, do_nothing);
      v46 = *(*(v11 + 24) + 6232);

      return v46(a1, a2, a3);
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v56 = 0;
  v57 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v56;
    v16 = v56 - __ptr;
    v17 = v57;
    v18 = v57 - (v56 - __ptr);
    if (v18 <= 0x3B)
    {
      v47 = (315 - v18) & 0x100;
      v57 += v47;
      v15 = malloc_type_malloc(v47 + v17, 0xF962E99uLL);
      __ptr = v15;
      if (!v15)
      {
        goto LABEL_67;
      }

      if ((v15 & 3) != 0)
      {
LABEL_69:
        result = dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v15, 4uLL);
        goto LABEL_70;
      }

      v14 = (v15 + v16);
    }

    *(v14 + 44) = 0u;
    v14[1] = 0u;
    v14[2] = 0u;
    *v14 = 0u;
    v19 = v14 + 60;
    v56 = v14 + 60;
    v20 = v14 + 60 - v15;
    *v15 = v20;
    v21 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v22 = v21 - v20;
    if (v21 == v20)
    {
      goto LABEL_23;
    }

    v23 = __ptr;
    v24 = v19 - __ptr;
    v25 = v57;
    v26 = v57 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v56;
LABEL_22:
      bzero(v19, v22);
      v56 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 881;
      v15[8] = 0;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v15 + 1) = v54;
      strcpy(v15 + 36, "Ceui");
      *(v15 + 11) = *v11;
      v15[13] = a2;
      v15[14] = a3;
      v28 = byte_21B1C9;
      if (byte_21B1C9)
      {
        breakpoint_break(&__ptr, (&stru_338.reloff + 1), 1, *(v11 + 3404), v11);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4)
      {
        v35 = 0;
        goto LABEL_28;
      }

      v34 = mach_absolute_time();
      v35 = (*(*(v11 + 32) + 6232))(a1, a2, a3);
      v36 = mach_absolute_time() - v34;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v37 = __ptr;
        *(__ptr + 2) = v34;
        v37[3] = v36;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v50 = __udivti3();
        v51 = __ptr;
        *(__ptr + 3) = v50;
        v51[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v11);
LABEL_28:
      GPUTools::FB::Encode(&__ptr, 4294955008, "Y", v29, v30, v31, v32, v33, v35);
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v11 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v11, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &__ptr);
      v38 = *(v11 + 3404);
      if (v38 && (gBreakOnError & 1) != 0)
      {
        v48 = 3;
        v49 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v28 & 2) == 0)
        {
LABEL_37:
          v39 = [DYGetGLGuestAppClient() defaultFbufStream];
          v40 = v39;
          while (atomic_exchange(v39 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v40 + 14);
          v41 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v41 >= 1)
          {
            handle_opengl_thread_conflict(v11);
          }

          goto LABEL_45;
        }

        v48 = 2;
        v49 = 881;
      }

      breakpoint_break(&__ptr, v49, v48, v38, v11);
      goto LABEL_37;
    }

    v52 = (v22 - v26 + 255) & 0xFFFFFF00;
    v53 = v52 + v57;
    v57 += v52;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v53);
      __ptr = v23;
      if (v23)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v52 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (v23)
      {
LABEL_64:
        if ((v23 & 3) == 0)
        {
          v27 = v23 + v24;
          v19 = v27;
          goto LABEL_22;
        }

        v15 = v23;
        goto LABEL_69;
      }
    }

LABEL_67:
    result = dy_abort("failed to allocate fbuf buffer");
LABEL_70:
    __break(1u);
    return result;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v35 = (*(*(v11 + 24) + 6232))(a1, a2, a3);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }

  return v35;
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v44 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v44 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v45 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v45, 0, do_nothing);
      v46 = *(*(v11 + 24) + 6232);

      return v46(a1, a2, a3);
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v56 = 0;
  v57 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v56;
    v16 = v56 - __ptr;
    v17 = v57;
    v18 = v57 - (v56 - __ptr);
    if (v18 <= 0x3B)
    {
      v47 = (315 - v18) & 0x100;
      v57 += v47;
      v15 = malloc_type_malloc(v47 + v17, 0xF962E99uLL);
      __ptr = v15;
      if (!v15)
      {
        goto LABEL_67;
      }

      if ((v15 & 3) != 0)
      {
LABEL_69:
        result = dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v15, 4uLL);
        goto LABEL_70;
      }

      v14 = (v15 + v16);
    }

    *(v14 + 44) = 0u;
    v14[1] = 0u;
    v14[2] = 0u;
    *v14 = 0u;
    v19 = v14 + 60;
    v56 = v14 + 60;
    v20 = v14 + 60 - v15;
    *v15 = v20;
    v21 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v22 = v21 - v20;
    if (v21 == v20)
    {
      goto LABEL_23;
    }

    v23 = __ptr;
    v24 = v19 - __ptr;
    v25 = v57;
    v26 = v57 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v56;
LABEL_22:
      bzero(v19, v22);
      v56 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 881;
      v15[8] = 0;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v15 + 1) = v54;
      strcpy(v15 + 36, "Ceui");
      *(v15 + 11) = *v11;
      v15[13] = a2;
      v15[14] = a3;
      v28 = byte_21B1C9;
      if (byte_21B1C9)
      {
        breakpoint_break(&__ptr, (&stru_338.reloff + 1), 1, *(v11 + 3404), v11);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4)
      {
        v35 = 0;
        goto LABEL_28;
      }

      v34 = mach_absolute_time();
      v35 = (*(*(v11 + 32) + 6232))(a1, a2, a3);
      v36 = mach_absolute_time() - v34;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v37 = __ptr;
        *(__ptr + 2) = v34;
        v37[3] = v36;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v50 = __udivti3();
        v51 = __ptr;
        *(__ptr + 3) = v50;
        v51[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v11);
LABEL_28:
      GPUTools::FB::Encode(&__ptr, 4294955008, "Y", v29, v30, v31, v32, v33, v35);
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v11 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v11, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), &__ptr);
      v38 = *(v11 + 3404);
      if (v38 && (gBreakOnError & 1) != 0)
      {
        v48 = 3;
        v49 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v28 & 2) == 0)
        {
LABEL_37:
          v39 = [DYGetGLGuestAppClient() defaultFbufStream];
          v40 = v39;
          while (atomic_exchange(v39 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v40 + 14);
          v41 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v41 >= 1)
          {
            handle_opengl_thread_conflict(v11);
          }

          goto LABEL_45;
        }

        v48 = 2;
        v49 = 881;
      }

      breakpoint_break(&__ptr, v49, v48, v38, v11);
      goto LABEL_37;
    }

    v52 = (v22 - v26 + 255) & 0xFFFFFF00;
    v53 = v52 + v57;
    v57 += v52;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v53);
      __ptr = v23;
      if (v23)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v52 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (v23)
      {
LABEL_64:
        if ((v23 & 3) == 0)
        {
          v27 = v23 + v24;
          v19 = v27;
          goto LABEL_22;
        }

        v15 = v23;
        goto LABEL_69;
      }
    }

LABEL_67:
    result = dy_abort("failed to allocate fbuf buffer");
LABEL_70:
    __break(1u);
    return result;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v35 = (*(*(v11 + 24) + 6232))(a1, a2, a3);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }

  return v35;
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v16 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v16, 0, do_nothing);
LABEL_27:
      v19 = *(*(v11 + 24) + 6232);

      return v19(a1, a2, a3);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_27;
  }

  result = (*(*(v11 + 32) + 6232))(a1, a2, a3);
  ++*(v11 + 3704);
  if (gCheckGLErrors == 1)
  {
    v18 = result;
    alpha_func(v11);
    result = v18;
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {
    v17 = result;
    handle_opengl_thread_conflict(v11);
    return v17;
  }

  return result;
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
LABEL_27:
      v21 = *(*(v11 + 24) + 6232);

      return v21(a1, a2, a3);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_27;
  }

  v14 = mach_absolute_time();
  v15 = (*(*(v11 + 32) + 6232))(a1, a2, a3);
  v16 = mach_absolute_time();
  v17 = vdupq_n_s64(1uLL);
  v17.i64[0] = v16 - v14;
  *(v11 + 3696) = vaddq_s64(v17, *(v11 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors != 1 || (add - 1) < 1)
  {
    return v15;
  }

  handle_opengl_thread_conflict(v11);
  return v15;
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v17, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v14 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v14 >= 1)
      {
        handle_opengl_thread_conflict(v11);
      }

      return 0;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v18 = *(*(v11 + 24) + 6232);

  return v18(a1, a2, a3);
}

void sub_79050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t is_sync(__GLIContextRec *a1, __GLsync *a2)
{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v42 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v42 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v43 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v43, 0, do_nothing);
      v44 = *(*(v9 + 24) + 6240);

      return v44(a1, a2);
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v54 = 0;
  v55 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v54;
    v14 = v54 - __ptr;
    v15 = v55;
    v16 = v55 - (v54 - __ptr);
    if (v16 <= 0x37)
    {
      v45 = (311 - v16) & 0x100;
      v55 += v45;
      v13 = malloc_type_malloc(v45 + v15, 0xF962E99uLL);
      __ptr = v13;
      if (!v13)
      {
        goto LABEL_67;
      }

      if ((v13 & 3) != 0)
      {
LABEL_69:
        result = dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v13, 4uLL);
        goto LABEL_70;
      }

      v12 = &v13[v14];
    }

    *(v12 + 6) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 56;
    v54 = v12 + 56;
    v18 = v12 + 56 - v13;
    *v13 = v18;
    v19 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v19 - v18;
    if (v19 == v18)
    {
      goto LABEL_23;
    }

    v21 = __ptr;
    v22 = v17 - __ptr;
    v23 = v55;
    v24 = v55 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v54;
LABEL_22:
      bzero(v17, v20);
      v54 = &v25[v20];
      *v21 += v20;
LABEL_23:
      *(v13 + 1) = 884;
      *(v13 + 8) = 256;
      v52 = 0;
      pthread_threadid_np(0, &v52);
      *(v13 + 1) = v52;
      strcpy(v13 + 36, "CY");
      *(v13 + 5) = *v9;
      *(v13 + 6) = a2;
      v26 = byte_21B1CC;
      if (byte_21B1CC)
      {
        breakpoint_break(&__ptr, &stru_338.nreloc, 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 6240))(a1, a2);
      v34 = mach_absolute_time() - v32;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v35 = __ptr;
        *(__ptr + 2) = v32;
        v35[3] = v34;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v48 = __udivti3();
        v49 = __ptr;
        *(__ptr + 3) = v48;
        v49[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v9);
LABEL_28:
      GPUTools::FB::Encode(&__ptr, 4294955008, "ub", v27, v28, v29, v30, v31, v33);
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v9 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v9, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), &__ptr);
      v36 = *(v9 + 3404);
      if (v36 && (gBreakOnError & 1) != 0)
      {
        v46 = 3;
        v47 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
        {
LABEL_37:
          v37 = [DYGetGLGuestAppClient() defaultFbufStream];
          v38 = v37;
          while (atomic_exchange(v37 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v38 + 14);
          v39 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v39 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v46 = 2;
        v47 = 884;
      }

      breakpoint_break(&__ptr, v47, v46, v36, v9);
      goto LABEL_37;
    }

    v50 = (v20 - v24 + 255) & 0xFFFFFF00;
    v51 = v50 + v55;
    v55 += v50;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v51);
      __ptr = v21;
      if (v21)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v50 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (v21)
      {
LABEL_64:
        if ((v21 & 3) == 0)
        {
          v25 = v21 + v22;
          v17 = v25;
          goto LABEL_22;
        }

        v13 = v21;
        goto LABEL_69;
      }
    }

LABEL_67:
    result = dy_abort("failed to allocate fbuf buffer");
LABEL_70:
    __break(1u);
    return result;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v33 = (*(*(v9 + 24) + 6240))(a1, a2);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }

  return v33;
}

{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v42 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v42 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v43 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v43, 0, do_nothing);
      v44 = *(*(v9 + 24) + 6240);

      return v44(a1, a2);
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v54 = 0;
  v55 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v54;
    v14 = v54 - __ptr;
    v15 = v55;
    v16 = v55 - (v54 - __ptr);
    if (v16 <= 0x37)
    {
      v45 = (311 - v16) & 0x100;
      v55 += v45;
      v13 = malloc_type_malloc(v45 + v15, 0xF962E99uLL);
      __ptr = v13;
      if (!v13)
      {
        goto LABEL_67;
      }

      if ((v13 & 3) != 0)
      {
LABEL_69:
        result = dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v13, 4uLL);
        goto LABEL_70;
      }

      v12 = &v13[v14];
    }

    *(v12 + 6) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 56;
    v54 = v12 + 56;
    v18 = v12 + 56 - v13;
    *v13 = v18;
    v19 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v19 - v18;
    if (v19 == v18)
    {
      goto LABEL_23;
    }

    v21 = __ptr;
    v22 = v17 - __ptr;
    v23 = v55;
    v24 = v55 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v54;
LABEL_22:
      bzero(v17, v20);
      v54 = &v25[v20];
      *v21 += v20;
LABEL_23:
      *(v13 + 1) = 884;
      *(v13 + 8) = 256;
      v52 = 0;
      pthread_threadid_np(0, &v52);
      *(v13 + 1) = v52;
      strcpy(v13 + 36, "CY");
      *(v13 + 5) = *v9;
      *(v13 + 6) = a2;
      v26 = byte_21B1CC;
      if (byte_21B1CC)
      {
        breakpoint_break(&__ptr, &stru_338.nreloc, 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 6240))(a1, a2);
      v34 = mach_absolute_time() - v32;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v35 = __ptr;
        *(__ptr + 2) = v32;
        v35[3] = v34;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v48 = __udivti3();
        v49 = __ptr;
        *(__ptr + 3) = v48;
        v49[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v9);
LABEL_28:
      GPUTools::FB::Encode(&__ptr, 4294955008, "ub", v27, v28, v29, v30, v31, v33);
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v9 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v9, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), &__ptr);
      v36 = *(v9 + 3404);
      if (v36 && (gBreakOnError & 1) != 0)
      {
        v46 = 3;
        v47 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
        {
LABEL_37:
          v37 = [DYGetGLGuestAppClient() defaultFbufStream];
          v38 = v37;
          while (atomic_exchange(v37 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v38 + 14);
          v39 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v39 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v46 = 2;
        v47 = 884;
      }

      breakpoint_break(&__ptr, v47, v46, v36, v9);
      goto LABEL_37;
    }

    v50 = (v20 - v24 + 255) & 0xFFFFFF00;
    v51 = v50 + v55;
    v55 += v50;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v51);
      __ptr = v21;
      if (v21)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v50 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (v21)
      {
LABEL_64:
        if ((v21 & 3) == 0)
        {
          v25 = v21 + v22;
          v17 = v25;
          goto LABEL_22;
        }

        v13 = v21;
        goto LABEL_69;
      }
    }

LABEL_67:
    result = dy_abort("failed to allocate fbuf buffer");
LABEL_70:
    __break(1u);
    return result;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v33 = (*(*(v9 + 24) + 6240))(a1, a2);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }

  return v33;
}

{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v14 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v14, 0, do_nothing);
LABEL_27:
      v17 = *(*(v9 + 24) + 6240);

      return v17(a1, a2);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v9 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_27;
  }

  result = (*(*(v9 + 32) + 6240))(a1, a2);
  ++*(v9 + 3704);
  if (gCheckGLErrors == 1)
  {
    v16 = result;
    alpha_func(v9);
    result = v16;
  }

  add = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {
    v15 = result;
    handle_opengl_thread_conflict(v9);
    return v15;
  }

  return result;
}

{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v18, 0, do_nothing);
LABEL_27:
      v19 = *(*(v9 + 24) + 6240);

      return v19(a1, a2);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v9 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_27;
  }

  v12 = mach_absolute_time();
  v13 = (*(*(v9 + 32) + 6240))(a1, a2);
  v14 = mach_absolute_time();
  v15 = vdupq_n_s64(1uLL);
  v15.i64[0] = v14 - v12;
  *(v9 + 3696) = vaddq_s64(v15, *(v9 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v9);
  }

  add = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors != 1 || (add - 1) < 1)
  {
    return v13;
  }

  handle_opengl_thread_conflict(v9);
  return v13;
}

{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v10 > 1)
  {
    handle_opengl_thread_conflict(v9);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    v15 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v15, 0, do_nothing);
  }

  else
  {
    *(v9 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v12 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v12 >= 1)
      {
        handle_opengl_thread_conflict(v9);
      }

      return 0;
    }

    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v16 = *(*(v9 + 24) + 6240);

  return v16(a1, a2);
}

void sub_7961C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void delete_sync(__GLIContextRec *a1, __GLsync *a2)
{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_49:
      delete_sync((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v45 = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v45;
    v14 = v45 - __ptr;
    v15 = v46;
    v16 = v46 - (v45 - __ptr);
    if (v16 <= 0x37)
    {
      v36 = (311 - v16) & 0x100;
      v46 += v36;
      v13 = malloc_type_malloc(v36 + v15, 0xF962E99uLL);
      __ptr = v13;
      if (!v13)
      {
        goto LABEL_64;
      }

      if ((v13 & 3) != 0)
      {
LABEL_66:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v13, 4uLL);
        goto LABEL_67;
      }

      v12 = &v13[v14];
    }

    *(v12 + 6) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 56;
    v45 = v12 + 56;
    v18 = v12 + 56 - v13;
    *v13 = v18;
    v19 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v19 - v18;
    if (v19 == v18)
    {
      goto LABEL_23;
    }

    v21 = __ptr;
    v22 = v17 - __ptr;
    v23 = v46;
    v24 = v46 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v45;
LABEL_22:
      bzero(v17, v20);
      v45 = &v25[v20];
      *v21 += v20;
LABEL_23:
      *(v13 + 1) = 880;
      *(v13 + 8) = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v13 + 1) = v43;
      strcpy(v13 + 36, "CY");
      *(v13 + 5) = *v9;
      *(v13 + 6) = a2;
      v26 = byte_21B1C8;
      if (byte_21B1C8)
      {
        breakpoint_break(&__ptr, &stru_338.reloff, 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 6248))(a1, a2);
        v28 = mach_absolute_time() - v27;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v29 = __ptr;
          *(__ptr + 2) = v27;
          v29[3] = v28;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v39 = __udivti3();
          v40 = __ptr;
          *(__ptr + 3) = v39;
          v40[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v9);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v9 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v9, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), &__ptr);
      v30 = *(v9 + 3404);
      if (v30 && (gBreakOnError & 1) != 0)
      {
        v37 = 3;
        v38 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
        {
LABEL_37:
          v31 = [DYGetGLGuestAppClient() defaultFbufStream];
          v32 = v31;
          while (atomic_exchange(v31 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v32 + 14);
          v33 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v33 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v37 = 2;
        v38 = 880;
      }

      breakpoint_break(&__ptr, v38, v37, v30, v9);
      goto LABEL_37;
    }

    v41 = (v20 - v24 + 255) & 0xFFFFFF00;
    v42 = v41 + v46;
    v46 += v41;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v42);
      __ptr = v21;
      if (v21)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v41 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (v21)
      {
LABEL_61:
        if ((v21 & 3) == 0)
        {
          v25 = v21 + v22;
          v17 = v25;
          goto LABEL_22;
        }

        v13 = v21;
        goto LABEL_66;
      }
    }

LABEL_64:
    dy_abort("failed to allocate fbuf buffer");
LABEL_67:
    __break(1u);
    return;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v9 + 24) + 6248))(a1, a2);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_49:
      delete_sync((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v45 = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v45;
    v14 = v45 - __ptr;
    v15 = v46;
    v16 = v46 - (v45 - __ptr);
    if (v16 <= 0x37)
    {
      v36 = (311 - v16) & 0x100;
      v46 += v36;
      v13 = malloc_type_malloc(v36 + v15, 0xF962E99uLL);
      __ptr = v13;
      if (!v13)
      {
        goto LABEL_64;
      }

      if ((v13 & 3) != 0)
      {
LABEL_66:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v13, 4uLL);
        goto LABEL_67;
      }

      v12 = &v13[v14];
    }

    *(v12 + 6) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 56;
    v45 = v12 + 56;
    v18 = v12 + 56 - v13;
    *v13 = v18;
    v19 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v19 - v18;
    if (v19 == v18)
    {
      goto LABEL_23;
    }

    v21 = __ptr;
    v22 = v17 - __ptr;
    v23 = v46;
    v24 = v46 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v45;
LABEL_22:
      bzero(v17, v20);
      v45 = &v25[v20];
      *v21 += v20;
LABEL_23:
      *(v13 + 1) = 880;
      *(v13 + 8) = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v13 + 1) = v43;
      strcpy(v13 + 36, "CY");
      *(v13 + 5) = *v9;
      *(v13 + 6) = a2;
      v26 = byte_21B1C8;
      if (byte_21B1C8)
      {
        breakpoint_break(&__ptr, &stru_338.reloff, 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 6248))(a1, a2);
        v28 = mach_absolute_time() - v27;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v29 = __ptr;
          *(__ptr + 2) = v27;
          v29[3] = v28;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v39 = __udivti3();
          v40 = __ptr;
          *(__ptr + 3) = v39;
          v40[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v9);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v9 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v9, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), &__ptr);
      v30 = *(v9 + 3404);
      if (v30 && (gBreakOnError & 1) != 0)
      {
        v37 = 3;
        v38 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
        {
LABEL_37:
          v31 = [DYGetGLGuestAppClient() defaultFbufStream];
          v32 = v31;
          while (atomic_exchange(v31 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v32 + 14);
          v33 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v33 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v37 = 2;
        v38 = 880;
      }

      breakpoint_break(&__ptr, v38, v37, v30, v9);
      goto LABEL_37;
    }

    v41 = (v20 - v24 + 255) & 0xFFFFFF00;
    v42 = v41 + v46;
    v46 += v41;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v42);
      __ptr = v21;
      if (v21)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v41 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (v21)
      {
LABEL_61:
        if ((v21 & 3) == 0)
        {
          v25 = v21 + v22;
          v17 = v25;
          goto LABEL_22;
        }

        v13 = v21;
        goto LABEL_66;
      }
    }

LABEL_64:
    dy_abort("failed to allocate fbuf buffer");
LABEL_67:
    __break(1u);
    return;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v9 + 24) + 6248))(a1, a2);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      delete_sync((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v9 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v13 = *(*(v9 + 24) + 6248);

    v13(a1, a2);
  }

  else
  {
    (*(*(v9 + 32) + 6248))(a1, a2);
    ++*(v9 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v9);
    }

    add = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v9);
    }
  }
}

{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      delete_sync((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v9 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    v16 = *(*(v9 + 24) + 6248);

    v16(a1, a2);
  }

  else
  {
    v12 = mach_absolute_time();
    (*(*(v9 + 32) + 6248))(a1, a2);
    v13 = mach_absolute_time();
    v14 = vdupq_n_s64(1uLL);
    v14.i64[0] = v13 - v12;
    *(v9 + 3696) = vaddq_s64(v14, *(v9 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v9);
    }

    add = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v9);
    }
  }
}

void sub_79B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t client_wait_sync(__GLIContextRec *a1, __GLsync *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v46 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v46 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v47 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v47, 0, do_nothing);
      v48 = *(*(v13 + 24) + 6256);

      return v48(a1, a2, a3, a4);
    }
  }

  *(v13 + 4838) = 1;
  __ptr = 0;
  v58 = 0;
  v59 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = __ptr;
    v16 = v58;
    v18 = v58 - __ptr;
    v19 = v59;
    v20 = v59 - (v58 - __ptr);
    if (v20 <= 0x47)
    {
      v49 = (327 - v20) & 0x100;
      v59 += v49;
      v17 = malloc_type_malloc(v49 + v19, 0xF962E99uLL);
      __ptr = v17;
      if (!v17)
      {
        goto LABEL_67;
      }

      if ((v17 & 3) != 0)
      {
LABEL_69:
        result = dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v17, 4uLL);
        goto LABEL_70;
      }

      v16 = v17 + v18;
    }

    *(v16 + 8) = 0;
    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    v21 = v16 + 72;
    v58 = v16 + 72;
    v22 = v16 + 72 - v17;
    *v17 = v22;
    v23 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v24 = v23 - v22;
    if (v23 == v22)
    {
      goto LABEL_23;
    }

    v25 = __ptr;
    v26 = v21 - __ptr;
    v27 = v59;
    v28 = v59 - (v21 - __ptr);
    if (v24 <= v28)
    {
      v29 = v58;
LABEL_22:
      bzero(v21, v24);
      v58 = &v29[v24];
      *v25 += v24;
LABEL_23:
      v17[1] = 879;
      v17[8] = 0;
      v56 = 0;
      pthread_threadid_np(0, &v56);
      *(v17 + 1) = v56;
      strcpy(v17 + 36, "CYuiuw");
      *(v17 + 11) = *v13;
      *(v17 + 13) = a2;
      v17[15] = a3;
      *(v17 + 8) = a4;
      v30 = byte_21B1C7;
      if (byte_21B1C7)
      {
        breakpoint_break(&__ptr, (&stru_338.align + 3), 1, *(v13 + 3404), v13);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v30 & 4)
      {
        v37 = 0;
        goto LABEL_28;
      }

      v36 = mach_absolute_time();
      v37 = (*(*(v13 + 32) + 6256))(a1, a2, a3, a4);
      v38 = mach_absolute_time() - v36;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v39 = __ptr;
        *(__ptr + 2) = v36;
        v39[3] = v38;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v52 = __udivti3();
        v53 = __ptr;
        *(__ptr + 3) = v52;
        v53[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v13);
LABEL_28:
      GPUTools::FB::Encode(&__ptr, 4294955008, "e", v31, v32, v33, v34, v35, v37);
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v13 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v13, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &__ptr);
      v40 = *(v13 + 3404);
      if (v40 && (gBreakOnError & 1) != 0)
      {
        v50 = 3;
        v51 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v30 & 2) == 0)
        {
LABEL_37:
          v41 = [DYGetGLGuestAppClient() defaultFbufStream];
          v42 = v41;
          while (atomic_exchange(v41 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v42 + 14);
          v43 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v43 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_45;
        }

        v50 = 2;
        v51 = 879;
      }

      breakpoint_break(&__ptr, v51, v50, v40, v13);
      goto LABEL_37;
    }

    v54 = (v24 - v28 + 255) & 0xFFFFFF00;
    v55 = v54 + v59;
    v59 += v54;
    if (__ptr)
    {
      v25 = reallocf(__ptr, v55);
      __ptr = v25;
      if (v25)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v25 = malloc_type_malloc(v54 + v27, 0xF962E99uLL);
      __ptr = v25;
      if (v25)
      {
LABEL_64:
        if ((v25 & 3) == 0)
        {
          v29 = v25 + v26;
          v21 = v29;
          goto LABEL_22;
        }

        v17 = v25;
        goto LABEL_69;
      }
    }

LABEL_67:
    result = dy_abort("failed to allocate fbuf buffer");
LABEL_70:
    __break(1u);
    return result;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v37 = (*(*(v13 + 24) + 6256))(a1, a2, a3, a4);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }

  return v37;
}

{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v46 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v46 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v47 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v47, 0, do_nothing);
      v48 = *(*(v13 + 24) + 6256);

      return v48(a1, a2, a3, a4);
    }
  }

  *(v13 + 4838) = 1;
  __ptr = 0;
  v58 = 0;
  v59 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = __ptr;
    v16 = v58;
    v18 = v58 - __ptr;
    v19 = v59;
    v20 = v59 - (v58 - __ptr);
    if (v20 <= 0x47)
    {
      v49 = (327 - v20) & 0x100;
      v59 += v49;
      v17 = malloc_type_malloc(v49 + v19, 0xF962E99uLL);
      __ptr = v17;
      if (!v17)
      {
        goto LABEL_67;
      }

      if ((v17 & 3) != 0)
      {
LABEL_69:
        result = dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v17, 4uLL);
        goto LABEL_70;
      }

      v16 = v17 + v18;
    }

    *(v16 + 8) = 0;
    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    v21 = v16 + 72;
    v58 = v16 + 72;
    v22 = v16 + 72 - v17;
    *v17 = v22;
    v23 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v24 = v23 - v22;
    if (v23 == v22)
    {
      goto LABEL_23;
    }

    v25 = __ptr;
    v26 = v21 - __ptr;
    v27 = v59;
    v28 = v59 - (v21 - __ptr);
    if (v24 <= v28)
    {
      v29 = v58;
LABEL_22:
      bzero(v21, v24);
      v58 = &v29[v24];
      *v25 += v24;
LABEL_23:
      v17[1] = 879;
      v17[8] = 0;
      v56 = 0;
      pthread_threadid_np(0, &v56);
      *(v17 + 1) = v56;
      strcpy(v17 + 36, "CYuiuw");
      *(v17 + 11) = *v13;
      *(v17 + 13) = a2;
      v17[15] = a3;
      *(v17 + 8) = a4;
      v30 = byte_21B1C7;
      if (byte_21B1C7)
      {
        breakpoint_break(&__ptr, (&stru_338.align + 3), 1, *(v13 + 3404), v13);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v30 & 4)
      {
        v37 = 0;
        goto LABEL_28;
      }

      v36 = mach_absolute_time();
      v37 = (*(*(v13 + 32) + 6256))(a1, a2, a3, a4);
      v38 = mach_absolute_time() - v36;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v39 = __ptr;
        *(__ptr + 2) = v36;
        v39[3] = v38;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v52 = __udivti3();
        v53 = __ptr;
        *(__ptr + 3) = v52;
        v53[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v13);
LABEL_28:
      GPUTools::FB::Encode(&__ptr, 4294955008, "e", v31, v32, v33, v34, v35, v37);
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v13 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v13, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &__ptr);
      v40 = *(v13 + 3404);
      if (v40 && (gBreakOnError & 1) != 0)
      {
        v50 = 3;
        v51 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v30 & 2) == 0)
        {
LABEL_37:
          v41 = [DYGetGLGuestAppClient() defaultFbufStream];
          v42 = v41;
          while (atomic_exchange(v41 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v42 + 14);
          v43 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v43 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_45;
        }

        v50 = 2;
        v51 = 879;
      }

      breakpoint_break(&__ptr, v51, v50, v40, v13);
      goto LABEL_37;
    }

    v54 = (v24 - v28 + 255) & 0xFFFFFF00;
    v55 = v54 + v59;
    v59 += v54;
    if (__ptr)
    {
      v25 = reallocf(__ptr, v55);
      __ptr = v25;
      if (v25)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v25 = malloc_type_malloc(v54 + v27, 0xF962E99uLL);
      __ptr = v25;
      if (v25)
      {
LABEL_64:
        if ((v25 & 3) == 0)
        {
          v29 = v25 + v26;
          v21 = v29;
          goto LABEL_22;
        }

        v17 = v25;
        goto LABEL_69;
      }
    }

LABEL_67:
    result = dy_abort("failed to allocate fbuf buffer");
LABEL_70:
    __break(1u);
    return result;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v37 = (*(*(v13 + 24) + 6256))(a1, a2, a3, a4);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }

  return v37;
}

{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v18, 0, do_nothing);
LABEL_27:
      v21 = *(*(v13 + 24) + 6256);

      return v21(a1, a2, a3, a4);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v13 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_27;
  }

  result = (*(*(v13 + 32) + 6256))(a1, a2, a3, a4);
  ++*(v13 + 3704);
  if (gCheckGLErrors == 1)
  {
    v20 = result;
    alpha_func(v13);
    result = v20;
  }

  add = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {
    v19 = result;
    handle_opengl_thread_conflict(v13);
    return v19;
  }

  return result;
}

{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_25:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v22 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v22, 0, do_nothing);
LABEL_27:
      v23 = *(*(v13 + 24) + 6256);

      return v23(a1, a2, a3, a4);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_25;
    }
  }

  *(v13 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_27;
  }

  v16 = mach_absolute_time();
  v17 = (*(*(v13 + 32) + 6256))(a1, a2, a3, a4);
  v18 = mach_absolute_time();
  v19 = vdupq_n_s64(1uLL);
  v19.i64[0] = v18 - v16;
  *(v13 + 3696) = vaddq_s64(v19, *(v13 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v13);
  }

  add = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  return v17;
}

{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v14 > 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v19, 0, do_nothing);
  }

  else
  {
    *(v13 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v16 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v16 >= 1)
      {
        handle_opengl_thread_conflict(v13);
      }

      return 0;
    }

    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v20 = *(*(v13 + 24) + 6256);

  return v20(a1, a2, a3, a4);
}

void sub_7A174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void wait_sync(__GLIContextRec *a1, __GLsync *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v39 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v39 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v40 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v40, 0, do_nothing);
      v41 = *(*(v13 + 24) + 6264);

      v41(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  __ptr = 0;
  v51 = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = __ptr;
    v16 = v51;
    v18 = v51 - __ptr;
    v19 = v52;
    v20 = v52 - (v51 - __ptr);
    if (v20 <= 0x47)
    {
      v42 = (327 - v20) & 0x100;
      v52 += v42;
      v17 = malloc_type_malloc(v42 + v19, 0xF962E99uLL);
      __ptr = v17;
      if (!v17)
      {
        goto LABEL_66;
      }

      if ((v17 & 3) != 0)
      {
LABEL_68:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v17, 4uLL);
        goto LABEL_69;
      }

      v16 = v17 + v18;
    }

    *(v16 + 8) = 0;
    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    v21 = v16 + 72;
    v51 = v16 + 72;
    v22 = v16 + 72 - v17;
    *v17 = v22;
    v23 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v24 = v23 - v22;
    if (v23 == v22)
    {
      goto LABEL_23;
    }

    v25 = __ptr;
    v26 = v21 - __ptr;
    v27 = v52;
    v28 = v52 - (v21 - __ptr);
    if (v24 <= v28)
    {
      v29 = v51;
LABEL_22:
      bzero(v21, v24);
      v51 = &v29[v24];
      *v25 += v24;
LABEL_23:
      v17[1] = 885;
      v17[8] = 0;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v17 + 1) = v49;
      strcpy(v17 + 36, "CYuiuw");
      *(v17 + 11) = *v13;
      *(v17 + 13) = a2;
      v17[15] = a3;
      *(v17 + 8) = a4;
      v30 = byte_21B1CD;
      if (byte_21B1CD)
      {
        breakpoint_break(&__ptr, (&stru_338.nreloc + 1), 1, *(v13 + 3404), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v30 & 4))
      {
        v31 = mach_absolute_time();
        (*(*(v13 + 32) + 6264))(a1, a2, a3, a4);
        v32 = mach_absolute_time() - v31;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v33 = __ptr;
          *(__ptr + 2) = v31;
          v33[3] = v32;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v45 = __udivti3();
          v46 = __ptr;
          *(__ptr + 3) = v45;
          v46[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v13);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v13 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v13, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &__ptr);
      v34 = *(v13 + 3404);
      if (v34 && (gBreakOnError & 1) != 0)
      {
        v43 = 3;
        v44 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v30 & 2) == 0)
        {
LABEL_37:
          v35 = [DYGetGLGuestAppClient() defaultFbufStream];
          v36 = v35;
          while (atomic_exchange(v35 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v36 + 14);
          v37 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v37 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_45;
        }

        v43 = 2;
        v44 = 885;
      }

      breakpoint_break(&__ptr, v44, v43, v34, v13);
      goto LABEL_37;
    }

    v47 = (v24 - v28 + 255) & 0xFFFFFF00;
    v48 = v47 + v52;
    v52 += v47;
    if (__ptr)
    {
      v25 = reallocf(__ptr, v48);
      __ptr = v25;
      if (v25)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v25 = malloc_type_malloc(v47 + v27, 0xF962E99uLL);
      __ptr = v25;
      if (v25)
      {
LABEL_63:
        if ((v25 & 3) == 0)
        {
          v29 = v25 + v26;
          v21 = v29;
          goto LABEL_22;
        }

        v17 = v25;
        goto LABEL_68;
      }
    }

LABEL_66:
    dy_abort("failed to allocate fbuf buffer");
LABEL_69:
    __break(1u);
    return;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 6264))(a1, a2, a3, a4);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v39 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v39 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v40 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v40, 0, do_nothing);
      v41 = *(*(v13 + 24) + 6264);

      v41(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  __ptr = 0;
  v51 = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = __ptr;
    v16 = v51;
    v18 = v51 - __ptr;
    v19 = v52;
    v20 = v52 - (v51 - __ptr);
    if (v20 <= 0x47)
    {
      v42 = (327 - v20) & 0x100;
      v52 += v42;
      v17 = malloc_type_malloc(v42 + v19, 0xF962E99uLL);
      __ptr = v17;
      if (!v17)
      {
        goto LABEL_66;
      }

      if ((v17 & 3) != 0)
      {
LABEL_68:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v17, 4uLL);
        goto LABEL_69;
      }

      v16 = v17 + v18;
    }

    *(v16 + 8) = 0;
    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    v21 = v16 + 72;
    v51 = v16 + 72;
    v22 = v16 + 72 - v17;
    *v17 = v22;
    v23 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v24 = v23 - v22;
    if (v23 == v22)
    {
      goto LABEL_23;
    }

    v25 = __ptr;
    v26 = v21 - __ptr;
    v27 = v52;
    v28 = v52 - (v21 - __ptr);
    if (v24 <= v28)
    {
      v29 = v51;
LABEL_22:
      bzero(v21, v24);
      v51 = &v29[v24];
      *v25 += v24;
LABEL_23:
      v17[1] = 885;
      v17[8] = 0;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v17 + 1) = v49;
      strcpy(v17 + 36, "CYuiuw");
      *(v17 + 11) = *v13;
      *(v17 + 13) = a2;
      v17[15] = a3;
      *(v17 + 8) = a4;
      v30 = byte_21B1CD;
      if (byte_21B1CD)
      {
        breakpoint_break(&__ptr, (&stru_338.nreloc + 1), 1, *(v13 + 3404), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v30 & 4))
      {
        v31 = mach_absolute_time();
        (*(*(v13 + 32) + 6264))(a1, a2, a3, a4);
        v32 = mach_absolute_time() - v31;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v33 = __ptr;
          *(__ptr + 2) = v31;
          v33[3] = v32;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v45 = __udivti3();
          v46 = __ptr;
          *(__ptr + 3) = v45;
          v46[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v13);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v13 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v13, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &__ptr);
      v34 = *(v13 + 3404);
      if (v34 && (gBreakOnError & 1) != 0)
      {
        v43 = 3;
        v44 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v30 & 2) == 0)
        {
LABEL_37:
          v35 = [DYGetGLGuestAppClient() defaultFbufStream];
          v36 = v35;
          while (atomic_exchange(v35 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v36 + 14);
          v37 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v37 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_45;
        }

        v43 = 2;
        v44 = 885;
      }

      breakpoint_break(&__ptr, v44, v43, v34, v13);
      goto LABEL_37;
    }

    v47 = (v24 - v28 + 255) & 0xFFFFFF00;
    v48 = v47 + v52;
    v52 += v47;
    if (__ptr)
    {
      v25 = reallocf(__ptr, v48);
      __ptr = v25;
      if (v25)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v25 = malloc_type_malloc(v47 + v27, 0xF962E99uLL);
      __ptr = v25;
      if (v25)
      {
LABEL_63:
        if ((v25 & 3) == 0)
        {
          v29 = v25 + v26;
          v21 = v29;
          goto LABEL_22;
        }

        v17 = v25;
        goto LABEL_68;
      }
    }

LABEL_66:
    dy_abort("failed to allocate fbuf buffer");
LABEL_69:
    __break(1u);
    return;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 6264))(a1, a2, a3, a4);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v17, 0, do_nothing);
LABEL_29:
      v18 = *(*(v13 + 24) + 6264);

      v18(a1, a2, a3, a4);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v13 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  (*(*(v13 + 32) + 6264))(a1, a2, a3, a4);
  ++*(v13 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v13);
  }

  add = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v13);
  }
}

{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
LABEL_29:
      v21 = *(*(v13 + 24) + 6264);

      v21(a1, a2, a3, a4);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v13 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v16 = mach_absolute_time();
  (*(*(v13 + 32) + 6264))(a1, a2, a3, a4);
  v17 = mach_absolute_time();
  v18 = vdupq_n_s64(1uLL);
  v18.i64[0] = v17 - v16;
  *(v13 + 3696) = vaddq_s64(v18, *(v13 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v13);
  }

  add = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v13);
  }
}

void sub_7A754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void get_integer64v(__GLIContextRec *a1, GPUTools::GL *a2, uint64_t *a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add(v11 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_50:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(v11[3] + 6272);

      v36(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v45, 0, sizeof(v45));
    if (a2 == 34467)
    {
      (*(v11[4] + 832))(v11[2], 34466, &v45[1]);
      v45[0] = 1;
      v15 = 78;
    }

    else
    {
      GPUTools::GL::DYGetParameterInfo(a2, &v45[1], v45, v14);
      if (v45[0])
      {
        v15 = 78;
      }

      else
      {
        v15 = 119;
      }
    }

    snprintf(v11 + 4709, 0x40uLL, "Ce@%u%c", *&v45[1], v15);
    GPUTools::FB::Encode(&v42, 882, 256, v11 + 4709, v16, v17, v18, v19, *v11, a2, a3);
    v20 = byte_21B1CA;
    if (byte_21B1CA)
    {
      breakpoint_break(&v42, (&stru_338.reloff + 2), 1, *(v11 + 851), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4))
    {
      v25 = mach_absolute_time();
      (*(v11[4] + 6272))(a1, a2, a3);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v42;
        *(v42 + 2) = v25;
        v27[3] = v26;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v39 = __udivti3();
        v40 = v42;
        *(v42 + 3) = v39;
        v40[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      check_errors(v11);
    }

LABEL_27:
    v28 = v42;
    v41 = *(v42 + 1);
    v43 = v42;
    if (v44 >= 0x24)
    {
      *(v42 + 8) = 0;
      *v28 = 0u;
      v28[1] = 0u;
    }

    GPUTools::FB::Encode(&v42, 882, 256, v11 + 4709, v21, v22, v23, v24, *v11, a2, a3);
    *(v42 + 1) = v41;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11, &v42);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, &v42);
    v29 = *(v11 + 851);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v20 & 2) == 0)
      {
LABEL_38:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v32 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_46;
      }

      v37 = 2;
      v38 = 882;
    }

    breakpoint_break(&v42, v38, v37, v29, v11);
    goto LABEL_38;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v11[3] + 6272))(a1, a2, a3);
LABEL_46:
  if (v42)
  {
    free(v42);
  }
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add(v11 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_50:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(v11[3] + 6272);

      v36(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v45, 0, sizeof(v45));
    if (a2 == 34467)
    {
      (*(v11[4] + 832))(v11[2], 34466, &v45[1]);
      v45[0] = 1;
      v15 = 78;
    }

    else
    {
      GPUTools::GL::DYGetParameterInfo(a2, &v45[1], v45, v14);
      if (v45[0])
      {
        v15 = 78;
      }

      else
      {
        v15 = 119;
      }
    }

    snprintf(v11 + 4709, 0x40uLL, "Ce@%u%c", *&v45[1], v15);
    GPUTools::FB::Encode(&v42, 882, 256, v11 + 4709, v16, v17, v18, v19, *v11, a2, a3);
    v20 = byte_21B1CA;
    if (byte_21B1CA)
    {
      breakpoint_break(&v42, (&stru_338.reloff + 2), 1, *(v11 + 851), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4))
    {
      v25 = mach_absolute_time();
      (*(v11[4] + 6272))(a1, a2, a3);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v42;
        *(v42 + 2) = v25;
        v27[3] = v26;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v39 = __udivti3();
        v40 = v42;
        *(v42 + 3) = v39;
        v40[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      check_errors(v11);
    }

LABEL_27:
    v28 = v42;
    v41 = *(v42 + 1);
    v43 = v42;
    if (v44 >= 0x24)
    {
      *(v42 + 8) = 0;
      *v28 = 0u;
      v28[1] = 0u;
    }

    GPUTools::FB::Encode(&v42, 882, 256, v11 + 4709, v21, v22, v23, v24, *v11, a2, a3);
    *(v42 + 1) = v41;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11, &v42);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, &v42);
    v29 = *(v11 + 851);
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v20 & 2) == 0)
      {
LABEL_38:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        v32 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_46;
      }

      v37 = 2;
      v38 = 882;
    }

    breakpoint_break(&v42, v38, v37, v29, v11);
    goto LABEL_38;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v11[3] + 6272))(a1, a2, a3);
LABEL_46:
  if (v42)
  {
    free(v42);
  }
}

void sub_7AC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  atomic_store(0, (v15 + 56));
  if (a15)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

void get_synciv(__GLIContextRec *a1, __GLsync *a2, GPUTools::GL *a3, uint64_t a4, int *a5, int *a6)
{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add(v17 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v18 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_53;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v42 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v42 >= 1)
    {
LABEL_53:
      atomic_fetch_add(v17 + 1160, 0xFFFFFFFF);
      v43 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v43, 0, do_nothing);
      v44 = *(v17[3] + 6280);

      v44(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v50, 0, sizeof(v50));
    GPUTools::GL::DYGetSyncObjectParamterInfo(a3, &v50[1], v50, v20);
    v21 = "@1i";
    if (!a5)
    {
      v21 = "t";
    }

    if (v50[0])
    {
      v22 = "e";
    }

    else
    {
      v22 = "ui";
    }

    snprintf(v17 + 4709, 0x40uLL, "CYei%s@%u%s", v21, *&v50[1], v22);
    GPUTools::FB::Encode(&v51, 883, 256, v17 + 4709, v23, v24, v25, v26, *v17, a2, a3, a4, a5, a6);
    v27 = byte_21B1CB;
    if (byte_21B1CB)
    {
      breakpoint_break(&v51, (&stru_338.reloff + 3), 1, *(v17 + 851), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v27 & 4))
    {
      v32 = mach_absolute_time();
      (*(v17[4] + 6280))(a1, a2, a3, a4, a5, a6);
      v48 = v17;
      v33 = v27;
      v34 = mach_absolute_time() - v32;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v35 = v51;
        *(v51 + 3) = v34;
      }

      else
      {
        v47 = __udivti3();
        v35 = v51;
        *(v51 + 3) = v47;
        v32 = __udivti3();
      }

      v35[2] = v32;
      v27 = v33;
      v17 = v48;
      if (gCheckGLErrors == 1)
      {
        check_errors(v48);
      }
    }

    v36 = v51;
    v49 = *(v51 + 1);
    v52 = v51;
    if (v53 >= 0x24)
    {
      *(v51 + 8) = 0;
      *v36 = 0u;
      v36[1] = 0u;
    }

    GPUTools::FB::Encode(&v51, 883, 256, v17 + 4709, v28, v29, v30, v31, *v17, a2, a3, a4, a5, a6);
    *(v51 + 1) = v49;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v17 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v17, &v51);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v17 + 435, v17 + 440, &v51);
    v37 = *(v17 + 851);
    if (v37 && (gBreakOnError & 1) != 0)
    {
      v45 = 3;
      v46 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v27 & 2) == 0)
      {
LABEL_41:
        v38 = [DYGetGLGuestAppClient() defaultFbufStream];
        v39 = v38;
        while (atomic_exchange(v38 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v39 + 14);
        v40 = atomic_fetch_add(v17 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v40 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        goto LABEL_49;
      }

      v45 = 2;
      v46 = 883;
    }

    breakpoint_break(&v51, v46, v45, v37, v17);
    goto LABEL_41;
  }

  atomic_fetch_add(v17 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v17[3] + 6280))(a1, a2, a3, a4, a5, a6);
LABEL_49:
  if (v51)
  {
    free(v51);
  }
}

{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add(v17 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v18 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_53;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v42 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v42 >= 1)
    {
LABEL_53:
      atomic_fetch_add(v17 + 1160, 0xFFFFFFFF);
      v43 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v43, 0, do_nothing);
      v44 = *(v17[3] + 6280);

      v44(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v50, 0, sizeof(v50));
    GPUTools::GL::DYGetSyncObjectParamterInfo(a3, &v50[1], v50, v20);
    v21 = "@1i";
    if (!a5)
    {
      v21 = "t";
    }

    if (v50[0])
    {
      v22 = "e";
    }

    else
    {
      v22 = "ui";
    }

    snprintf(v17 + 4709, 0x40uLL, "CYei%s@%u%s", v21, *&v50[1], v22);
    GPUTools::FB::Encode(&v51, 883, 256, v17 + 4709, v23, v24, v25, v26, *v17, a2, a3, a4, a5, a6);
    v27 = byte_21B1CB;
    if (byte_21B1CB)
    {
      breakpoint_break(&v51, (&stru_338.reloff + 3), 1, *(v17 + 851), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v27 & 4))
    {
      v32 = mach_absolute_time();
      (*(v17[4] + 6280))(a1, a2, a3, a4, a5, a6);
      v48 = v17;
      v33 = v27;
      v34 = mach_absolute_time() - v32;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v35 = v51;
        *(v51 + 3) = v34;
      }

      else
      {
        v47 = __udivti3();
        v35 = v51;
        *(v51 + 3) = v47;
        v32 = __udivti3();
      }

      v35[2] = v32;
      v27 = v33;
      v17 = v48;
      if (gCheckGLErrors == 1)
      {
        check_errors(v48);
      }
    }

    v36 = v51;
    v49 = *(v51 + 1);
    v52 = v51;
    if (v53 >= 0x24)
    {
      *(v51 + 8) = 0;
      *v36 = 0u;
      v36[1] = 0u;
    }

    GPUTools::FB::Encode(&v51, 883, 256, v17 + 4709, v28, v29, v30, v31, *v17, a2, a3, a4, a5, a6);
    *(v51 + 1) = v49;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v17 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v17, &v51);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v17 + 435, v17 + 440, &v51);
    v37 = *(v17 + 851);
    if (v37 && (gBreakOnError & 1) != 0)
    {
      v45 = 3;
      v46 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v27 & 2) == 0)
      {
LABEL_41:
        v38 = [DYGetGLGuestAppClient() defaultFbufStream];
        v39 = v38;
        while (atomic_exchange(v38 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v39 + 14);
        v40 = atomic_fetch_add(v17 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v40 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        goto LABEL_49;
      }

      v45 = 2;
      v46 = 883;
    }

    breakpoint_break(&v51, v46, v45, v37, v17);
    goto LABEL_41;
  }

  atomic_fetch_add(v17 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v17[3] + 6280))(a1, a2, a3, a4, a5, a6);
LABEL_49:
  if (v51)
  {
    free(v51);
  }
}

void sub_7B1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  atomic_store(0, (v18 + 56));
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

void copy_buffer_sub_data(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v13 = *(v11 + 32);
    v14 = v13 >= a1;
    v15 = v13 < a1;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * v15);
  }

  while (v11);
  if (v12 == ContextInfo::activeCtxInfoMap + 8 || *(v12 + 32) > a1)
  {
LABEL_9:
    v12 = ContextInfo::activeCtxInfoMap + 8;
  }

  v16 = *(v12 + 40);
  v17 = atomic_fetch_add((v16 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v17 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v16);
    v43 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v43 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
      v44 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v44, 0, do_nothing);
      v45 = *(*(v16 + 24) + 6328);

      v45(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v16 + 4838) = 1;
  __ptr = 0;
  v56 = 0;
  v57 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = a6;
    v21 = __ptr;
    v20 = v56;
    v22 = v56 - __ptr;
    v23 = v57;
    v24 = v57 - (v56 - __ptr);
    if (v24 <= 0x53)
    {
      v46 = (339 - v24) & 0x100;
      v57 += v46;
      v21 = malloc_type_malloc(v46 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_66;
      }

      if ((v21 & 3) != 0)
      {
LABEL_68:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v21, 4uLL);
        goto LABEL_69;
      }

      v20 = v21 + v22;
    }

    *(v20 + 20) = 0;
    *(v20 + 3) = 0u;
    *(v20 + 4) = 0u;
    *(v20 + 1) = 0u;
    *(v20 + 2) = 0u;
    *v20 = 0u;
    v25 = v20 + 84;
    v56 = v20 + 84;
    v26 = v20 + 84 - v21;
    *v21 = v26;
    v27 = (v26 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v27 - v26;
    if (v27 == v26)
    {
      goto LABEL_23;
    }

    v29 = __ptr;
    v30 = v25 - __ptr;
    v31 = v57;
    v32 = v57 - (v25 - __ptr);
    if (v28 <= v32)
    {
      v33 = v56;
LABEL_22:
      bzero(v25, v28);
      v56 = &v33[v28];
      *v29 += v28;
LABEL_23:
      v21[1] = 855;
      v21[8] = 0;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v21 + 1) = v54;
      strcpy(v21 + 36, "Ceelll");
      *(v21 + 11) = *v16;
      v21[13] = a2;
      v21[14] = a3;
      *(v21 + 15) = a4;
      *(v21 + 17) = a5;
      *(v21 + 19) = v19;
      v34 = byte_21B1AF;
      if (byte_21B1AF)
      {
        breakpoint_break(&__ptr, &stru_338.segname[15], 1, *(v16 + 3404), v16);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v34 & 4))
      {
        v35 = mach_absolute_time();
        (*(*(v16 + 32) + 6328))(a1, a2, a3, a4, a5, v19);
        v36 = mach_absolute_time() - v35;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v37 = __ptr;
          *(__ptr + 2) = v35;
          v37[3] = v36;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v49 = __udivti3();
          v50 = __ptr;
          *(__ptr + 3) = v49;
          v50[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v16);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v16 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v16, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v16 + 3480), (v16 + 3520), &__ptr);
      v38 = *(v16 + 3404);
      if (v38 && (gBreakOnError & 1) != 0)
      {
        v47 = 3;
        v48 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v34 & 2) == 0)
        {
LABEL_37:
          v39 = [DYGetGLGuestAppClient() defaultFbufStream];
          v40 = v39;
          while (atomic_exchange(v39 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v40 + 14);
          v41 = atomic_fetch_add((v16 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v41 >= 1)
          {
            handle_opengl_thread_conflict(v16);
          }

          goto LABEL_45;
        }

        v47 = 2;
        v48 = 855;
      }

      breakpoint_break(&__ptr, v48, v47, v38, v16);
      goto LABEL_37;
    }

    v51 = (v28 - v32 + 255) & 0xFFFFFF00;
    v52 = v51 + v57;
    v57 += v51;
    if (__ptr)
    {
      v29 = reallocf(__ptr, v52);
      __ptr = v29;
      if (v29)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v29 = malloc_type_malloc(v51 + v31, 0xF962E99uLL);
      __ptr = v29;
      if (v29)
      {
LABEL_63:
        if ((v29 & 3) == 0)
        {
          v33 = v29 + v30;
          v25 = v33;
          goto LABEL_22;
        }

        v21 = v29;
        goto LABEL_68;
      }
    }

LABEL_66:
    dy_abort("failed to allocate fbuf buffer");
LABEL_69:
    __break(1u);
    return;
  }

  atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v16 + 24) + 6328))(a1, a2, a3, a4, a5, a6);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

{
  v11 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v13 = *(v11 + 32);
    v14 = v13 >= a1;
    v15 = v13 < a1;
    if (v14)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * v15);
  }

  while (v11);
  if (v12 == ContextInfo::activeCtxInfoMap + 8 || *(v12 + 32) > a1)
  {
LABEL_9:
    v12 = ContextInfo::activeCtxInfoMap + 8;
  }

  v16 = *(v12 + 40);
  v17 = atomic_fetch_add((v16 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v17 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v16);
    v43 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v43 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
      v44 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v44, 0, do_nothing);
      v45 = *(*(v16 + 24) + 6328);

      v45(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v16 + 4838) = 1;
  __ptr = 0;
  v56 = 0;
  v57 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = a6;
    v21 = __ptr;
    v20 = v56;
    v22 = v56 - __ptr;
    v23 = v57;
    v24 = v57 - (v56 - __ptr);
    if (v24 <= 0x53)
    {
      v46 = (339 - v24) & 0x100;
      v57 += v46;
      v21 = malloc_type_malloc(v46 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (!v21)
      {
        goto LABEL_66;
      }

      if ((v21 & 3) != 0)
      {
LABEL_68:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v21, 4uLL);
        goto LABEL_69;
      }

      v20 = v21 + v22;
    }

    *(v20 + 20) = 0;
    *(v20 + 3) = 0u;
    *(v20 + 4) = 0u;
    *(v20 + 1) = 0u;
    *(v20 + 2) = 0u;
    *v20 = 0u;
    v25 = v20 + 84;
    v56 = v20 + 84;
    v26 = v20 + 84 - v21;
    *v21 = v26;
    v27 = (v26 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v27 - v26;
    if (v27 == v26)
    {
      goto LABEL_23;
    }

    v29 = __ptr;
    v30 = v25 - __ptr;
    v31 = v57;
    v32 = v57 - (v25 - __ptr);
    if (v28 <= v32)
    {
      v33 = v56;
LABEL_22:
      bzero(v25, v28);
      v56 = &v33[v28];
      *v29 += v28;
LABEL_23:
      v21[1] = 855;
      v21[8] = 0;
      v54 = 0;
      pthread_threadid_np(0, &v54);
      *(v21 + 1) = v54;
      strcpy(v21 + 36, "Ceelll");
      *(v21 + 11) = *v16;
      v21[13] = a2;
      v21[14] = a3;
      *(v21 + 15) = a4;
      *(v21 + 17) = a5;
      *(v21 + 19) = v19;
      v34 = byte_21B1AF;
      if (byte_21B1AF)
      {
        breakpoint_break(&__ptr, &stru_338.segname[15], 1, *(v16 + 3404), v16);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v34 & 4))
      {
        v35 = mach_absolute_time();
        (*(*(v16 + 32) + 6328))(a1, a2, a3, a4, a5, v19);
        v36 = mach_absolute_time() - v35;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v37 = __ptr;
          *(__ptr + 2) = v35;
          v37[3] = v36;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v49 = __udivti3();
          v50 = __ptr;
          *(__ptr + 3) = v49;
          v50[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v16);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v16 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v16, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v16 + 3480), (v16 + 3520), &__ptr);
      v38 = *(v16 + 3404);
      if (v38 && (gBreakOnError & 1) != 0)
      {
        v47 = 3;
        v48 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v34 & 2) == 0)
        {
LABEL_37:
          v39 = [DYGetGLGuestAppClient() defaultFbufStream];
          v40 = v39;
          while (atomic_exchange(v39 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v40 + 14);
          v41 = atomic_fetch_add((v16 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v41 >= 1)
          {
            handle_opengl_thread_conflict(v16);
          }

          goto LABEL_45;
        }

        v47 = 2;
        v48 = 855;
      }

      breakpoint_break(&__ptr, v48, v47, v38, v16);
      goto LABEL_37;
    }

    v51 = (v28 - v32 + 255) & 0xFFFFFF00;
    v52 = v51 + v57;
    v57 += v51;
    if (__ptr)
    {
      v29 = reallocf(__ptr, v52);
      __ptr = v29;
      if (v29)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v29 = malloc_type_malloc(v51 + v31, 0xF962E99uLL);
      __ptr = v29;
      if (v29)
      {
LABEL_63:
        if ((v29 & 3) == 0)
        {
          v33 = v29 + v30;
          v25 = v33;
          goto LABEL_22;
        }

        v21 = v29;
        goto LABEL_68;
      }
    }

LABEL_66:
    dy_abort("failed to allocate fbuf buffer");
LABEL_69:
    __break(1u);
    return;
  }

  atomic_fetch_add((v16 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v16 + 24) + 6328))(a1, a2, a3, a4, a5, a6);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v18 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v21 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v21, 0, do_nothing);
LABEL_29:
      v22 = *(*(v17 + 24) + 6328);

      v22(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v17 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  (*(*(v17 + 32) + 6328))(a1, a2, a3, a4, a5, a6);
  ++*(v17 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v17);
  }

  add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v17);
  }
}

{
  v12 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v14 = *(v12 + 32);
    v15 = v14 >= a1;
    v16 = v14 < a1;
    if (v15)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * v16);
  }

  while (v12);
  if (v13 == ContextInfo::activeCtxInfoMap + 8 || *(v13 + 32) > a1)
  {
LABEL_9:
    v13 = ContextInfo::activeCtxInfoMap + 8;
  }

  v17 = *(v13 + 40);
  v18 = atomic_fetch_add((v17 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v18 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v24, 0, do_nothing);
LABEL_29:
      v25 = *(*(v17 + 24) + 6328);

      v25(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v17 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v20 = mach_absolute_time();
  (*(*(v17 + 32) + 6328))(a1, a2, a3, a4, a5, a6);
  v21 = mach_absolute_time();
  v22 = vdupq_n_s64(1uLL);
  v22.i64[0] = v21 - v20;
  *(v17 + 3696) = vaddq_s64(v22, *(v17 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v17);
  }

  add = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v17);
  }
}

void sub_7B7F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t map_buffer_range(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v16 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v48 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v48 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v49 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v49, 0, do_nothing);
      v50 = *(*(v15 + 24) + 6360);

      return v50(a1, a2, a3, a4, a5);
    }
  }

  *(v15 + 4838) = 1;
  __ptr = 0;
  v60 = 0;
  v61 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = __ptr;
    v18 = v60;
    v20 = v60 - __ptr;
    v21 = v61;
    v22 = v61 - (v60 - __ptr);
    if (v22 <= 0x4B)
    {
      v51 = (331 - v22) & 0x100;
      v61 += v51;
      v19 = malloc_type_malloc(v51 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_67;
      }

      if ((v19 & 3) != 0)
      {
LABEL_69:
        result = dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v19, 4uLL);
        goto LABEL_70;
      }

      v18 = (v19 + v20);
    }

    *(v18 + 60) = 0u;
    v18[2] = 0u;
    v18[3] = 0u;
    *v18 = 0u;
    v18[1] = 0u;
    v23 = v18 + 76;
    v60 = v18 + 76;
    v24 = v18 + 76 - v19;
    *v19 = v24;
    v25 = (v24 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v26 = v25 - v24;
    if (v25 == v24)
    {
      goto LABEL_23;
    }

    v27 = __ptr;
    v28 = v23 - __ptr;
    v29 = v61;
    v30 = v61 - (v23 - __ptr);
    if (v26 <= v30)
    {
      v31 = v60;
LABEL_22:
      bzero(v23, v26);
      v60 = &v31[v26];
      *v27 += v26;
LABEL_23:
      v19[1] = 865;
      v19[8] = 0;
      v58 = 0;
      pthread_threadid_np(0, &v58);
      *(v19 + 1) = v58;
      strcpy(v19 + 36, "Celle");
      *(v19 + 11) = *v15;
      v19[13] = a2;
      *(v19 + 7) = a3;
      *(v19 + 8) = a4;
      v19[18] = a5;
      v32 = byte_21B1B9;
      if (byte_21B1B9)
      {
        breakpoint_break(&__ptr, (&stru_338.size + 1), 1, *(v15 + 3404), v15);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v32 & 4)
      {
        v39 = 0;
        goto LABEL_28;
      }

      v38 = mach_absolute_time();
      v39 = (*(*(v15 + 32) + 6360))(a1, a2, a3, a4, a5);
      v40 = mach_absolute_time() - v38;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v41 = __ptr;
        *(__ptr + 2) = v38;
        v41[3] = v40;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v54 = __udivti3();
        v55 = __ptr;
        *(__ptr + 3) = v54;
        v55[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v15);
LABEL_28:
      GPUTools::FB::Encode(&__ptr, 4294955008, "p", v33, v34, v35, v36, v37, v39);
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v15 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v15, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), &__ptr);
      v42 = *(v15 + 3404);
      if (v42 && (gBreakOnError & 1) != 0)
      {
        v52 = 3;
        v53 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v32 & 2) == 0)
        {
LABEL_37:
          v43 = [DYGetGLGuestAppClient() defaultFbufStream];
          v44 = v43;
          while (atomic_exchange(v43 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v44 + 14);
          v45 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v45 >= 1)
          {
            handle_opengl_thread_conflict(v15);
          }

          goto LABEL_45;
        }

        v52 = 2;
        v53 = 865;
      }

      breakpoint_break(&__ptr, v53, v52, v42, v15);
      goto LABEL_37;
    }

    v56 = (v26 - v30 + 255) & 0xFFFFFF00;
    v57 = v56 + v61;
    v61 += v56;
    if (__ptr)
    {
      v27 = reallocf(__ptr, v57);
      __ptr = v27;
      if (v27)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v27 = malloc_type_malloc(v56 + v29, 0xF962E99uLL);
      __ptr = v27;
      if (v27)
      {
LABEL_64:
        if ((v27 & 3) == 0)
        {
          v31 = v27 + v28;
          v23 = v31;
          goto LABEL_22;
        }

        v19 = v27;
        goto LABEL_69;
      }
    }

LABEL_67:
    result = dy_abort("failed to allocate fbuf buffer");
LABEL_70:
    __break(1u);
    return result;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v39 = (*(*(v15 + 24) + 6360))(a1, a2, a3, a4, a5);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }

  return v39;
}

{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v16 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v48 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v48 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v49 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v49, 0, do_nothing);
      v50 = *(*(v15 + 24) + 6360);

      return v50(a1, a2, a3, a4, a5);
    }
  }

  *(v15 + 4838) = 1;
  __ptr = 0;
  v60 = 0;
  v61 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = __ptr;
    v18 = v60;
    v20 = v60 - __ptr;
    v21 = v61;
    v22 = v61 - (v60 - __ptr);
    if (v22 <= 0x4B)
    {
      v51 = (331 - v22) & 0x100;
      v61 += v51;
      v19 = malloc_type_malloc(v51 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_67;
      }

      if ((v19 & 3) != 0)
      {
LABEL_69:
        result = dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v19, 4uLL);
        goto LABEL_70;
      }

      v18 = (v19 + v20);
    }

    *(v18 + 60) = 0u;
    v18[2] = 0u;
    v18[3] = 0u;
    *v18 = 0u;
    v18[1] = 0u;
    v23 = v18 + 76;
    v60 = v18 + 76;
    v24 = v18 + 76 - v19;
    *v19 = v24;
    v25 = (v24 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v26 = v25 - v24;
    if (v25 == v24)
    {
      goto LABEL_23;
    }

    v27 = __ptr;
    v28 = v23 - __ptr;
    v29 = v61;
    v30 = v61 - (v23 - __ptr);
    if (v26 <= v30)
    {
      v31 = v60;
LABEL_22:
      bzero(v23, v26);
      v60 = &v31[v26];
      *v27 += v26;
LABEL_23:
      v19[1] = 865;
      v19[8] = 0;
      v58 = 0;
      pthread_threadid_np(0, &v58);
      *(v19 + 1) = v58;
      strcpy(v19 + 36, "Celle");
      *(v19 + 11) = *v15;
      v19[13] = a2;
      *(v19 + 7) = a3;
      *(v19 + 8) = a4;
      v19[18] = a5;
      v32 = byte_21B1B9;
      if (byte_21B1B9)
      {
        breakpoint_break(&__ptr, (&stru_338.size + 1), 1, *(v15 + 3404), v15);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v32 & 4)
      {
        v39 = 0;
        goto LABEL_28;
      }

      v38 = mach_absolute_time();
      v39 = (*(*(v15 + 32) + 6360))(a1, a2, a3, a4, a5);
      v40 = mach_absolute_time() - v38;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v41 = __ptr;
        *(__ptr + 2) = v38;
        v41[3] = v40;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v54 = __udivti3();
        v55 = __ptr;
        *(__ptr + 3) = v54;
        v55[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v15);
LABEL_28:
      GPUTools::FB::Encode(&__ptr, 4294955008, "p", v33, v34, v35, v36, v37, v39);
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v15 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v15, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), &__ptr);
      v42 = *(v15 + 3404);
      if (v42 && (gBreakOnError & 1) != 0)
      {
        v52 = 3;
        v53 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v32 & 2) == 0)
        {
LABEL_37:
          v43 = [DYGetGLGuestAppClient() defaultFbufStream];
          v44 = v43;
          while (atomic_exchange(v43 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v44 + 14);
          v45 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v45 >= 1)
          {
            handle_opengl_thread_conflict(v15);
          }

          goto LABEL_45;
        }

        v52 = 2;
        v53 = 865;
      }

      breakpoint_break(&__ptr, v53, v52, v42, v15);
      goto LABEL_37;
    }

    v56 = (v26 - v30 + 255) & 0xFFFFFF00;
    v57 = v56 + v61;
    v61 += v56;
    if (__ptr)
    {
      v27 = reallocf(__ptr, v57);
      __ptr = v27;
      if (v27)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v27 = malloc_type_malloc(v56 + v29, 0xF962E99uLL);
      __ptr = v27;
      if (v27)
      {
LABEL_64:
        if ((v27 & 3) == 0)
        {
          v31 = v27 + v28;
          v23 = v31;
          goto LABEL_22;
        }

        v19 = v27;
        goto LABEL_69;
      }
    }

LABEL_67:
    result = dy_abort("failed to allocate fbuf buffer");
LABEL_70:
    __break(1u);
    return result;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v39 = (*(*(v15 + 24) + 6360))(a1, a2, a3, a4, a5);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }

  return v39;
}

{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v16 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
LABEL_27:
      v23 = *(*(v15 + 24) + 6360);

      return v23(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v15 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_27;
  }

  result = (*(*(v15 + 32) + 6360))(a1, a2, a3, a4, a5);
  ++*(v15 + 3704);
  if (gCheckGLErrors == 1)
  {
    v22 = result;
    alpha_func(v15);
    result = v22;
  }

  add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {
    v21 = result;
    handle_opengl_thread_conflict(v15);
    return v21;
  }

  return result;
}

{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v16 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_25:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v24 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v24, 0, do_nothing);
LABEL_27:
      v25 = *(*(v15 + 24) + 6360);

      return v25(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_25;
    }
  }

  *(v15 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_27;
  }

  v18 = mach_absolute_time();
  v19 = (*(*(v15 + 32) + 6360))(a1, a2, a3, a4, a5);
  v20 = mach_absolute_time();
  v21 = vdupq_n_s64(1uLL);
  v21.i64[0] = v20 - v18;
  *(v15 + 3696) = vaddq_s64(v21, *(v15 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v15);
  }

  add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  return v19;
}

{
  v10 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == ContextInfo::activeCtxInfoMap + 8 || *(v11 + 32) > a1)
  {
LABEL_9:
    v11 = ContextInfo::activeCtxInfoMap + 8;
  }

  v15 = *(v11 + 40);
  v16 = atomic_fetch_add((v15 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v16 > 1)
  {
    handle_opengl_thread_conflict(v15);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    v21 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v21, 0, do_nothing);
  }

  else
  {
    *(v15 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v18 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v18 >= 1)
      {
        handle_opengl_thread_conflict(v15);
      }

      return 0;
    }

    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v22 = *(*(v15 + 24) + 6360);

  return v22(a1, a2, a3, a4, a5);
}

void sub_7BE20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void flush_mapped_buffer_range(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add(v13 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v29 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v29 >= 1)
    {
LABEL_44:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
      v31 = *(*(v13 + 3) + 6368);

      v31(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    wrapper_copyout_mapped_buffer_data(v13, a2, a3, a4);
    GPUTools::FB::Encode(v36, 857, 0, "Cell", v16, v17, v18, v19, *v13, a2, a3, a4);
    v20 = byte_21B1B1;
    if (byte_21B1B1)
    {
      breakpoint_break(v36, (&stru_338.addr + 1), 1, v13[851], v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4))
    {
      v21 = mach_absolute_time();
      (*(*(v13 + 4) + 6368))(a1, a2, a3, a4);
      v22 = mach_absolute_time() - v21;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v23 = v36[0];
        *(v36[0] + 2) = v21;
        v23[3] = v22;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v34 = __udivti3();
        v35 = v36[0];
        *(v36[0] + 3) = v34;
        v35[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v13);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (v13[851])
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v13, v36);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, v36);
    v24 = v13[851];
    if (v24 && (gBreakOnError & 1) != 0)
    {
      v32 = 3;
      v33 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v20 & 2) == 0)
      {
LABEL_32:
        v25 = [DYGetGLGuestAppClient() defaultFbufStream];
        v26 = v25;
        while (atomic_exchange(v25 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v26 + 14);
        v27 = atomic_fetch_add(v13 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v27 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_40;
      }

      v32 = 2;
      v33 = 857;
    }

    breakpoint_break(v36, v33, v32, v24, v13);
    goto LABEL_32;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 3) + 6368))(a1, a2, a3, a4);
LABEL_40:
  if (v36[0])
  {
    free(v36[0]);
  }
}

{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v39 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v39 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v40 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v40, 0, do_nothing);
      v41 = *(*(v13 + 24) + 6368);

      v41(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  __ptr = 0;
  v51 = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = __ptr;
    v16 = v51;
    v18 = v51 - __ptr;
    v19 = v52;
    v20 = v52 - (v51 - __ptr);
    if (v20 <= 0x47)
    {
      v42 = (327 - v20) & 0x100;
      v52 += v42;
      v17 = malloc_type_malloc(v42 + v19, 0xF962E99uLL);
      __ptr = v17;
      if (!v17)
      {
        goto LABEL_66;
      }

      if ((v17 & 3) != 0)
      {
LABEL_68:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v17, 4uLL);
        goto LABEL_69;
      }

      v16 = v17 + v18;
    }

    *(v16 + 8) = 0;
    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    v21 = v16 + 72;
    v51 = v16 + 72;
    v22 = v16 + 72 - v17;
    *v17 = v22;
    v23 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v24 = v23 - v22;
    if (v23 == v22)
    {
      goto LABEL_23;
    }

    v25 = __ptr;
    v26 = v21 - __ptr;
    v27 = v52;
    v28 = v52 - (v21 - __ptr);
    if (v24 <= v28)
    {
      v29 = v51;
LABEL_22:
      bzero(v21, v24);
      v51 = &v29[v24];
      *v25 += v24;
LABEL_23:
      v17[1] = 857;
      v17[8] = 0;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v17 + 1) = v49;
      strcpy(v17 + 36, "Cell");
      *(v17 + 11) = *v13;
      v17[13] = a2;
      *(v17 + 7) = a3;
      *(v17 + 8) = a4;
      v30 = byte_21B1B1;
      if (byte_21B1B1)
      {
        breakpoint_break(&__ptr, (&stru_338.addr + 1), 1, *(v13 + 3404), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v30 & 4))
      {
        v31 = mach_absolute_time();
        (*(*(v13 + 32) + 6368))(a1, a2, a3, a4);
        v32 = mach_absolute_time() - v31;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v33 = __ptr;
          *(__ptr + 2) = v31;
          v33[3] = v32;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v45 = __udivti3();
          v46 = __ptr;
          *(__ptr + 3) = v45;
          v46[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v13);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v13 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v13, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), &__ptr);
      v34 = *(v13 + 3404);
      if (v34 && (gBreakOnError & 1) != 0)
      {
        v43 = 3;
        v44 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v30 & 2) == 0)
        {
LABEL_37:
          v35 = [DYGetGLGuestAppClient() defaultFbufStream];
          v36 = v35;
          while (atomic_exchange(v35 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v36 + 14);
          v37 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v37 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_45;
        }

        v43 = 2;
        v44 = 857;
      }

      breakpoint_break(&__ptr, v44, v43, v34, v13);
      goto LABEL_37;
    }

    v47 = (v24 - v28 + 255) & 0xFFFFFF00;
    v48 = v47 + v52;
    v52 += v47;
    if (__ptr)
    {
      v25 = reallocf(__ptr, v48);
      __ptr = v25;
      if (v25)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v25 = malloc_type_malloc(v47 + v27, 0xF962E99uLL);
      __ptr = v25;
      if (v25)
      {
LABEL_63:
        if ((v25 & 3) == 0)
        {
          v29 = v25 + v26;
          v21 = v29;
          goto LABEL_22;
        }

        v17 = v25;
        goto LABEL_68;
      }
    }

LABEL_66:
    dy_abort("failed to allocate fbuf buffer");
LABEL_69:
    __break(1u);
    return;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 6368))(a1, a2, a3, a4);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v17, 0, do_nothing);
LABEL_29:
      v18 = *(*(v13 + 24) + 6368);

      v18(a1, a2, a3, a4);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v13 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  (*(*(v13 + 32) + 6368))(a1, a2, a3, a4);
  ++*(v13 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v13);
  }

  add = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v13);
  }
}

{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
LABEL_29:
      v21 = *(*(v13 + 24) + 6368);

      v21(a1, a2, a3, a4);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v13 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v16 = mach_absolute_time();
  (*(*(v13 + 32) + 6368))(a1, a2, a3, a4);
  v17 = mach_absolute_time();
  v18 = vdupq_n_s64(1uLL);
  v18.i64[0] = v17 - v16;
  *(v13 + 3696) = vaddq_s64(v18, *(v13 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v13);
  }

  add = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v13);
  }
}

void sub_7C278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void get_integer64i_v(__GLIContextRec *a1, GPUTools::GL *a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add(v13 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
LABEL_48:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v37 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v37, 0, do_nothing);
      v38 = *(v13[3] + 6384);

      v38(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v47, 0, sizeof(v47));
    GPUTools::GL::DYGetParameterInfo(a2, &v47[1], v47, v16);
    v17 = 119;
    if (v47[0])
    {
      v17 = 78;
    }

    snprintf(v13 + 4709, 0x40uLL, "Ceui@%u%c", *&v47[1], v17);
    GPUTools::FB::Encode(&v44, 876, 256, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B1C4;
    if (byte_21B1C4)
    {
      breakpoint_break(&v44, &stru_338.align, 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(v13[4] + 6384))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v44;
        *(v44 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v41 = __udivti3();
        v42 = v44;
        *(v44 + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
    v30 = v44;
    v43 = *(v44 + 1);
    v45 = v44;
    if (v46 >= 0x24)
    {
      *(v44 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v44, 876, 256, v13 + 4709, v23, v24, v25, v26, *v13, a2, a3, a4);
    *(v44 + 1) = v43;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v13 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v13, &v44);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, &v44);
    v31 = *(v13 + 851);
    if (v31 && (gBreakOnError & 1) != 0)
    {
      v39 = 3;
      v40 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
LABEL_36:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v34 = atomic_fetch_add(v13 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v34 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_44;
      }

      v39 = 2;
      v40 = 876;
    }

    breakpoint_break(&v44, v40, v39, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 6384))(a1, a2, a3, a4);
LABEL_44:
  if (v44)
  {
    free(v44);
  }
}

{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add(v13 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
LABEL_48:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v37 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v37, 0, do_nothing);
      v38 = *(v13[3] + 6384);

      v38(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v47, 0, sizeof(v47));
    GPUTools::GL::DYGetParameterInfo(a2, &v47[1], v47, v16);
    v17 = 119;
    if (v47[0])
    {
      v17 = 78;
    }

    snprintf(v13 + 4709, 0x40uLL, "Ceui@%u%c", *&v47[1], v17);
    GPUTools::FB::Encode(&v44, 876, 256, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B1C4;
    if (byte_21B1C4)
    {
      breakpoint_break(&v44, &stru_338.align, 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(v13[4] + 6384))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v44;
        *(v44 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v41 = __udivti3();
        v42 = v44;
        *(v44 + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
    v30 = v44;
    v43 = *(v44 + 1);
    v45 = v44;
    if (v46 >= 0x24)
    {
      *(v44 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v44, 876, 256, v13 + 4709, v23, v24, v25, v26, *v13, a2, a3, a4);
    *(v44 + 1) = v43;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v13 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v13, &v44);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, &v44);
    v31 = *(v13 + 851);
    if (v31 && (gBreakOnError & 1) != 0)
    {
      v39 = 3;
      v40 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
LABEL_36:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v34 = atomic_fetch_add(v13 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v34 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_44;
      }

      v39 = 2;
      v40 = 876;
    }

    breakpoint_break(&v44, v40, v39, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 6384))(a1, a2, a3, a4);
LABEL_44:
  if (v44)
  {
    free(v44);
  }
}

void sub_7C764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  atomic_store(0, (v15 + 56));
  if (a15)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

void get_buffer_parameteri64v(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, uint64_t *a4)
{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add(v13 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
LABEL_48:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v37 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v37, 0, do_nothing);
      v38 = *(v13[3] + 6392);

      v38(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v44, 0, sizeof(v44));
    GPUTools::GL::DYGetBufferParameterInfo(a3, &v44[1], v44, v16);
    v17 = 119;
    if (v44[0])
    {
      v17 = 78;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cee@%u%c", *&v44[1], v17);
    GPUTools::FB::Encode(&v45, 875, 256, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B1C3;
    if (byte_21B1C3)
    {
      breakpoint_break(&v45, (&stru_338.offset + 3), 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(v13[4] + 6392))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v45;
        *(v45 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v41 = __udivti3();
        v42 = v45;
        *(v45 + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
    v30 = v45;
    v43 = *(v45 + 1);
    v46 = v45;
    if (v47 >= 0x24)
    {
      *(v45 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v45, 875, 256, v13 + 4709, v23, v24, v25, v26, *v13, a2, a3, a4);
    *(v45 + 1) = v43;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v13 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v13, &v45);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, &v45);
    v31 = *(v13 + 851);
    if (v31 && (gBreakOnError & 1) != 0)
    {
      v39 = 3;
      v40 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
LABEL_36:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v34 = atomic_fetch_add(v13 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v34 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_44;
      }

      v39 = 2;
      v40 = 875;
    }

    breakpoint_break(&v45, v40, v39, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 6392))(a1, a2, a3, a4);
LABEL_44:
  if (v45)
  {
    free(v45);
  }
}

{
  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a1;
    v12 = v10 < a1;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 == ContextInfo::activeCtxInfoMap + 8 || *(v9 + 32) > a1)
  {
LABEL_9:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add(v13 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
LABEL_48:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v37 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v37, 0, do_nothing);
      v38 = *(v13[3] + 6392);

      v38(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v44, 0, sizeof(v44));
    GPUTools::GL::DYGetBufferParameterInfo(a3, &v44[1], v44, v16);
    v17 = 119;
    if (v44[0])
    {
      v17 = 78;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cee@%u%c", *&v44[1], v17);
    GPUTools::FB::Encode(&v45, 875, 256, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B1C3;
    if (byte_21B1C3)
    {
      breakpoint_break(&v45, (&stru_338.offset + 3), 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(v13[4] + 6392))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v45;
        *(v45 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v41 = __udivti3();
        v42 = v45;
        *(v45 + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
    v30 = v45;
    v43 = *(v45 + 1);
    v46 = v45;
    if (v47 >= 0x24)
    {
      *(v45 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v45, 875, 256, v13 + 4709, v23, v24, v25, v26, *v13, a2, a3, a4);
    *(v45 + 1) = v43;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v13 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v13, &v45);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, &v45);
    v31 = *(v13 + 851);
    if (v31 && (gBreakOnError & 1) != 0)
    {
      v39 = 3;
      v40 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
LABEL_36:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v34 = atomic_fetch_add(v13 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v34 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_44;
      }

      v39 = 2;
      v40 = 875;
    }

    breakpoint_break(&v45, v40, v39, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 6392))(a1, a2, a3, a4);
LABEL_44:
  if (v45)
  {
    free(v45);
  }
}

void sub_7CC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void gen_samplers(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add(v11 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(v11[3] + 6400);

      v35(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    snprintf(v11 + 4709, 0x40uLL, "Ci@%dui", a2);
    GPUTools::FB::Encode(&v41, 858, v11 + 4709, v14, v15, v16, v17, v18, *v11, a2, a3);
    v19 = byte_21B1B2;
    if (byte_21B1B2)
    {
      breakpoint_break(&v41, (&stru_338.addr + 2), 1, *(v11 + 851), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v24 = mach_absolute_time();
      (*(v11[4] + 6400))(a1, a2, a3);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v41;
        *(v41 + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v38 = __udivti3();
        v39 = v41;
        *(v41 + 3) = v38;
        v39[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
    v27 = v41;
    v40 = *(v41 + 1);
    v42 = v41;
    if (v43 >= 0x24)
    {
      *(v41 + 8) = 0;
      *v27 = 0u;
      v27[1] = 0u;
    }

    GPUTools::FB::Encode(&v41, 858, 0, v11 + 4709, v20, v21, v22, v23, *v11, a2, a3);
    *(v41 + 1) = v40;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11, &v41);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, &v41);
    v28 = *(v11 + 851);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v36 = 3;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v19 & 2) == 0)
      {
LABEL_34:
        v29 = [DYGetGLGuestAppClient() defaultFbufStream];
        v30 = v29;
        while (atomic_exchange(v29 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        v31 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_42;
      }

      v36 = 2;
      v37 = 858;
    }

    breakpoint_break(&v41, v37, v36, v28, v11);
    goto LABEL_34;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v11[3] + 6400))(a1, a2, a3);
LABEL_42:
  if (v41)
  {
    free(v41);
  }
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add(v11 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(v11[3] + 6400);

      v35(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    snprintf(v11 + 4709, 0x40uLL, "Ci@%dui", a2);
    GPUTools::FB::Encode(&v41, 858, v11 + 4709, v14, v15, v16, v17, v18, *v11, a2, a3);
    v19 = byte_21B1B2;
    if (byte_21B1B2)
    {
      breakpoint_break(&v41, (&stru_338.addr + 2), 1, *(v11 + 851), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v24 = mach_absolute_time();
      (*(v11[4] + 6400))(a1, a2, a3);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v41;
        *(v41 + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v38 = __udivti3();
        v39 = v41;
        *(v41 + 3) = v38;
        v39[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
    v27 = v41;
    v40 = *(v41 + 1);
    v42 = v41;
    if (v43 >= 0x24)
    {
      *(v41 + 8) = 0;
      *v27 = 0u;
      v27[1] = 0u;
    }

    GPUTools::FB::Encode(&v41, 858, 0, v11 + 4709, v20, v21, v22, v23, *v11, a2, a3);
    *(v41 + 1) = v40;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11, &v41);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, &v41);
    v28 = *(v11 + 851);
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v36 = 3;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v19 & 2) == 0)
      {
LABEL_34:
        v29 = [DYGetGLGuestAppClient() defaultFbufStream];
        v30 = v29;
        while (atomic_exchange(v29 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v30 + 14);
        v31 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_42;
      }

      v36 = 2;
      v37 = 858;
    }

    breakpoint_break(&v41, v37, v36, v28, v11);
    goto LABEL_34;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v11[3] + 6400))(a1, a2, a3);
LABEL_42:
  if (v41)
  {
    free(v41);
  }
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v15 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v15, 0, do_nothing);
LABEL_29:
      v16 = *(*(v11 + 24) + 6400);

      v16(a1, a2, a3);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  (*(*(v11 + 32) + 6400))(a1, a2, a3);
  ++*(v11 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v11);
  }
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v18, 0, do_nothing);
LABEL_29:
      v19 = *(*(v11 + 24) + 6400);

      v19(a1, a2, a3);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v14 = mach_absolute_time();
  (*(*(v11 + 32) + 6400))(a1, a2, a3);
  v15 = mach_absolute_time();
  v16 = vdupq_n_s64(1uLL);
  v16.i64[0] = v15 - v14;
  *(v11 + 3696) = vaddq_s64(v16, *(v11 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v11);
  }
}

void sub_7D0FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void delete_samplers(__GLIContextRec *a1, uint64_t a2, const unsigned int *a3)
{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add(v11 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v27 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v27 >= 1)
    {
LABEL_44:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v28 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v28, 0, do_nothing);
      v29 = *(v11[3] + 6408);

      v29(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    snprintf(v11 + 4709, 0x40uLL, "Ci@%dui", a2);
    GPUTools::FB::Encode(v34, 856, 0, v11 + 4709, v14, v15, v16, v17, *v11, a2, a3);
    v18 = byte_21B1B0;
    if (byte_21B1B0)
    {
      breakpoint_break(v34, &stru_338.addr, 1, *(v11 + 851), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(v11[4] + 6408))(a1, a2, a3);
      v20 = mach_absolute_time() - v19;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v21 = v34[0];
        *(v34[0] + 2) = v19;
        v21[3] = v20;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v32 = __udivti3();
        v33 = v34[0];
        *(v34[0] + 3) = v32;
        v33[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11, v34);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, v34);
    v22 = *(v11 + 851);
    if (v22 && (gBreakOnError & 1) != 0)
    {
      v30 = 3;
      v31 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_32:
        v23 = [DYGetGLGuestAppClient() defaultFbufStream];
        v24 = v23;
        while (atomic_exchange(v23 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v24 + 14);
        v25 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v25 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_40;
      }

      v30 = 2;
      v31 = 856;
    }

    breakpoint_break(v34, v31, v30, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v11[3] + 6408))(a1, a2, a3);
LABEL_40:
  if (v34[0])
  {
    free(v34[0]);
  }
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add(v11 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v27 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v27 >= 1)
    {
LABEL_44:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v28 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v28, 0, do_nothing);
      v29 = *(v11[3] + 6408);

      v29(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    snprintf(v11 + 4709, 0x40uLL, "Ci@%dui", a2);
    GPUTools::FB::Encode(v34, 856, 0, v11 + 4709, v14, v15, v16, v17, *v11, a2, a3);
    v18 = byte_21B1B0;
    if (byte_21B1B0)
    {
      breakpoint_break(v34, &stru_338.addr, 1, *(v11 + 851), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v19 = mach_absolute_time();
      (*(v11[4] + 6408))(a1, a2, a3);
      v20 = mach_absolute_time() - v19;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v21 = v34[0];
        *(v34[0] + 2) = v19;
        v21[3] = v20;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v32 = __udivti3();
        v33 = v34[0];
        *(v34[0] + 3) = v32;
        v33[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v11 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v11, v34);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, v34);
    v22 = *(v11 + 851);
    if (v22 && (gBreakOnError & 1) != 0)
    {
      v30 = 3;
      v31 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_32:
        v23 = [DYGetGLGuestAppClient() defaultFbufStream];
        v24 = v23;
        while (atomic_exchange(v23 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v24 + 14);
        v25 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v25 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_40;
      }

      v30 = 2;
      v31 = 856;
    }

    breakpoint_break(v34, v31, v30, v22, v11);
    goto LABEL_32;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v11[3] + 6408))(a1, a2, a3);
LABEL_40:
  if (v34[0])
  {
    free(v34[0]);
  }
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v15 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v15, 0, do_nothing);
LABEL_29:
      v16 = *(*(v11 + 24) + 6408);

      v16(a1, a2, a3);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  (*(*(v11 + 32) + 6408))(a1, a2, a3);
  ++*(v11 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v11);
  }
}

{
  v6 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v8 = *(v6 + 32);
    v9 = v8 >= a1;
    v10 = v8 < a1;
    if (v9)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * v10);
  }

  while (v6);
  if (v7 == ContextInfo::activeCtxInfoMap + 8 || *(v7 + 32) > a1)
  {
LABEL_9:
    v7 = ContextInfo::activeCtxInfoMap + 8;
  }

  v11 = *(v7 + 40);
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v18, 0, do_nothing);
LABEL_29:
      v19 = *(*(v11 + 24) + 6408);

      v19(a1, a2, a3);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v14 = mach_absolute_time();
  (*(*(v11 + 32) + 6408))(a1, a2, a3);
  v15 = mach_absolute_time();
  v16 = vdupq_n_s64(1uLL);
  v16.i64[0] = v15 - v14;
  *(v11 + 3696) = vaddq_s64(v16, *(v11 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v11);
  }
}

void sub_7D544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t is_sampler(__GLIContextRec *a1, uint64_t a2)
{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v42 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v42 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v43 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v43, 0, do_nothing);
      v44 = *(*(v9 + 24) + 6416);

      return v44(a1, a2);
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v54 = 0;
  v55 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v54;
    v14 = v54 - __ptr;
    v15 = v55;
    v16 = v55 - (v54 - __ptr);
    if (v16 <= 0x33)
    {
      v45 = (307 - v16) & 0x100;
      v55 += v45;
      v13 = malloc_type_malloc(v45 + v15, 0xF962E99uLL);
      __ptr = v13;
      if (!v13)
      {
        goto LABEL_67;
      }

      if ((v13 & 3) != 0)
      {
LABEL_69:
        result = dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v13, 4uLL);
        goto LABEL_70;
      }

      v12 = v13 + v14;
    }

    *(v12 + 12) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 52;
    v54 = v12 + 52;
    v18 = v12 + 52 - v13;
    *v13 = v18;
    v19 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v19 - v18;
    if (v19 == v18)
    {
      goto LABEL_23;
    }

    v21 = __ptr;
    v22 = v17 - __ptr;
    v23 = v55;
    v24 = v55 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v54;
LABEL_22:
      bzero(v17, v20);
      v54 = &v25[v20];
      *v21 += v20;
LABEL_23:
      v13[1] = 864;
      v13[8] = 256;
      v52 = 0;
      pthread_threadid_np(0, &v52);
      *(v13 + 1) = v52;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21B1B8;
      if (byte_21B1B8)
      {
        breakpoint_break(&__ptr, &stru_338.size, 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 6416))(a1, a2);
      v34 = mach_absolute_time() - v32;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v35 = __ptr;
        *(__ptr + 2) = v32;
        v35[3] = v34;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v48 = __udivti3();
        v49 = __ptr;
        *(__ptr + 3) = v48;
        v49[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v9);
LABEL_28:
      GPUTools::FB::Encode(&__ptr, 4294955008, "ub", v27, v28, v29, v30, v31, v33);
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v9 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v9, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), &__ptr);
      v36 = *(v9 + 3404);
      if (v36 && (gBreakOnError & 1) != 0)
      {
        v46 = 3;
        v47 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
        {
LABEL_37:
          v37 = [DYGetGLGuestAppClient() defaultFbufStream];
          v38 = v37;
          while (atomic_exchange(v37 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v38 + 14);
          v39 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v39 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v46 = 2;
        v47 = 864;
      }

      breakpoint_break(&__ptr, v47, v46, v36, v9);
      goto LABEL_37;
    }

    v50 = (v20 - v24 + 255) & 0xFFFFFF00;
    v51 = v50 + v55;
    v55 += v50;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v51);
      __ptr = v21;
      if (v21)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v50 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (v21)
      {
LABEL_64:
        if ((v21 & 3) == 0)
        {
          v25 = v21 + v22;
          v17 = v25;
          goto LABEL_22;
        }

        v13 = v21;
        goto LABEL_69;
      }
    }

LABEL_67:
    result = dy_abort("failed to allocate fbuf buffer");
LABEL_70:
    __break(1u);
    return result;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v33 = (*(*(v9 + 24) + 6416))(a1, a2);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }

  return v33;
}

{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v42 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v42 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v43 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v43, 0, do_nothing);
      v44 = *(*(v9 + 24) + 6416);

      return v44(a1, a2);
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v54 = 0;
  v55 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v54;
    v14 = v54 - __ptr;
    v15 = v55;
    v16 = v55 - (v54 - __ptr);
    if (v16 <= 0x33)
    {
      v45 = (307 - v16) & 0x100;
      v55 += v45;
      v13 = malloc_type_malloc(v45 + v15, 0xF962E99uLL);
      __ptr = v13;
      if (!v13)
      {
        goto LABEL_67;
      }

      if ((v13 & 3) != 0)
      {
LABEL_69:
        result = dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v13, 4uLL);
        goto LABEL_70;
      }

      v12 = v13 + v14;
    }

    *(v12 + 12) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 52;
    v54 = v12 + 52;
    v18 = v12 + 52 - v13;
    *v13 = v18;
    v19 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v19 - v18;
    if (v19 == v18)
    {
      goto LABEL_23;
    }

    v21 = __ptr;
    v22 = v17 - __ptr;
    v23 = v55;
    v24 = v55 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v54;
LABEL_22:
      bzero(v17, v20);
      v54 = &v25[v20];
      *v21 += v20;
LABEL_23:
      v13[1] = 864;
      v13[8] = 256;
      v52 = 0;
      pthread_threadid_np(0, &v52);
      *(v13 + 1) = v52;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21B1B8;
      if (byte_21B1B8)
      {
        breakpoint_break(&__ptr, &stru_338.size, 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 6416))(a1, a2);
      v34 = mach_absolute_time() - v32;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v35 = __ptr;
        *(__ptr + 2) = v32;
        v35[3] = v34;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v48 = __udivti3();
        v49 = __ptr;
        *(__ptr + 3) = v48;
        v49[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      check_errors(v9);
LABEL_28:
      GPUTools::FB::Encode(&__ptr, 4294955008, "ub", v27, v28, v29, v30, v31, v33);
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v9 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v9, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v9 + 3480), (v9 + 3520), &__ptr);
      v36 = *(v9 + 3404);
      if (v36 && (gBreakOnError & 1) != 0)
      {
        v46 = 3;
        v47 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v26 & 2) == 0)
        {
LABEL_37:
          v37 = [DYGetGLGuestAppClient() defaultFbufStream];
          v38 = v37;
          while (atomic_exchange(v37 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v38 + 14);
          v39 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v39 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v46 = 2;
        v47 = 864;
      }

      breakpoint_break(&__ptr, v47, v46, v36, v9);
      goto LABEL_37;
    }

    v50 = (v20 - v24 + 255) & 0xFFFFFF00;
    v51 = v50 + v55;
    v55 += v50;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v51);
      __ptr = v21;
      if (v21)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v50 + v23, 0xF962E99uLL);
      __ptr = v21;
      if (v21)
      {
LABEL_64:
        if ((v21 & 3) == 0)
        {
          v25 = v21 + v22;
          v17 = v25;
          goto LABEL_22;
        }

        v13 = v21;
        goto LABEL_69;
      }
    }

LABEL_67:
    result = dy_abort("failed to allocate fbuf buffer");
LABEL_70:
    __break(1u);
    return result;
  }

  atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v33 = (*(*(v9 + 24) + 6416))(a1, a2);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }

  return v33;
}

{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v14 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v14, 0, do_nothing);
LABEL_27:
      v17 = *(*(v9 + 24) + 6416);

      return v17(a1, a2);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v9 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_27;
  }

  result = (*(*(v9 + 32) + 6416))(a1, a2);
  ++*(v9 + 3704);
  if (gCheckGLErrors == 1)
  {
    v16 = result;
    alpha_func(v9);
    result = v16;
  }

  add = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {
    v15 = result;
    handle_opengl_thread_conflict(v9);
    return v15;
  }

  return result;
}

{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
      v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v18, 0, do_nothing);
LABEL_27:
      v19 = *(*(v9 + 24) + 6416);

      return v19(a1, a2);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v9 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_27;
  }

  v12 = mach_absolute_time();
  v13 = (*(*(v9 + 32) + 6416))(a1, a2);
  v14 = mach_absolute_time();
  v15 = vdupq_n_s64(1uLL);
  v15.i64[0] = v14 - v12;
  *(v9 + 3696) = vaddq_s64(v15, *(v9 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v9);
  }

  add = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors != 1 || (add - 1) < 1)
  {
    return v13;
  }

  handle_opengl_thread_conflict(v9);
  return v13;
}

{
  v4 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a1;
    v8 = v6 < a1;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 == ContextInfo::activeCtxInfoMap + 8 || *(v5 + 32) > a1)
  {
LABEL_9:
    v5 = ContextInfo::activeCtxInfoMap + 8;
  }

  v9 = *(v5 + 40);
  v10 = atomic_fetch_add((v9 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v10 > 1)
  {
    handle_opengl_thread_conflict(v9);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    v15 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v15, 0, do_nothing);
  }

  else
  {
    *(v9 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      v12 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v12 >= 1)
      {
        handle_opengl_thread_conflict(v9);
      }

      return 0;
    }

    atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v16 = *(*(v9 + 24) + 6416);

  return v16(a1, a2);
}