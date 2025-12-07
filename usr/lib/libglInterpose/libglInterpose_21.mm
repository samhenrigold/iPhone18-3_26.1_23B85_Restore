void sub_977E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void depth_rangex(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v11 + 24) + 7792);

      v39(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v49 = 0;
  v50 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v49;
    v16 = v49 - __ptr;
    v17 = v50;
    v18 = v50 - (v49 - __ptr);
    if (v18 <= 0x37)
    {
      v40 = (311 - v18) & 0x100;
      v50 += v40;
      v15 = malloc_type_malloc(v40 + v17, 0xF962E99uLL);
      __ptr = v15;
      if (!v15)
      {
        goto LABEL_66;
      }

      if ((v15 & 3) != 0)
      {
LABEL_68:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v15, 4uLL);
        goto LABEL_69;
      }

      v14 = v15 + v16;
    }

    *(v14 + 6) = 0;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *v14 = 0u;
    v19 = v14 + 56;
    v49 = v14 + 56;
    v20 = v14 + 56 - v15;
    *v15 = v20;
    v21 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v22 = v21 - v20;
    if (v21 == v20)
    {
      goto LABEL_23;
    }

    v23 = __ptr;
    v24 = v19 - __ptr;
    v25 = v50;
    v26 = v50 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v49;
LABEL_22:
      bzero(v19, v22);
      v49 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 768;
      v15[8] = 0;
      v47 = 0;
      pthread_threadid_np(0, &v47);
      *(v15 + 1) = v47;
      v15[9] = 7895107;
      *(v15 + 5) = *v11;
      v15[12] = a2;
      v15[13] = a3;
      v28 = byte_21B158;
      if (byte_21B158)
      {
        breakpoint_break(&__ptr, &stru_2E8.segname[8], 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 7792))(a1, a2, a3);
        v30 = mach_absolute_time() - v29;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v31 = __ptr;
          *(__ptr + 2) = v29;
          v31[3] = v30;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v43 = __udivti3();
          v44 = __ptr;
          *(__ptr + 3) = v43;
          v44[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v11);
      }

LABEL_28:
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
      v32 = *(v11 + 3404);
      if (v32 && (gBreakOnError & 1) != 0)
      {
        v41 = 3;
        v42 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v28 & 2) == 0)
        {
LABEL_37:
          v33 = [DYGetGLGuestAppClient() defaultFbufStream];
          v34 = v33;
          while (atomic_exchange(v33 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v34 + 14);
          v35 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v35 >= 1)
          {
            handle_opengl_thread_conflict(v11);
          }

          goto LABEL_45;
        }

        v41 = 2;
        v42 = 768;
      }

      breakpoint_break(&__ptr, v42, v41, v32, v11);
      goto LABEL_37;
    }

    v45 = (v22 - v26 + 255) & 0xFFFFFF00;
    v46 = v45 + v50;
    v50 += v45;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v46);
      __ptr = v23;
      if (v23)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v45 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (v23)
      {
LABEL_63:
        if ((v23 & 3) == 0)
        {
          v27 = v23 + v24;
          v19 = v27;
          goto LABEL_22;
        }

        v15 = v23;
        goto LABEL_68;
      }
    }

LABEL_66:
    dy_abort("failed to allocate fbuf buffer");
LABEL_69:
    __break(1u);
    return;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 7792))(a1, a2, a3);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v11 + 24) + 7792);

      v39(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v49 = 0;
  v50 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v49;
    v16 = v49 - __ptr;
    v17 = v50;
    v18 = v50 - (v49 - __ptr);
    if (v18 <= 0x37)
    {
      v40 = (311 - v18) & 0x100;
      v50 += v40;
      v15 = malloc_type_malloc(v40 + v17, 0xF962E99uLL);
      __ptr = v15;
      if (!v15)
      {
        goto LABEL_66;
      }

      if ((v15 & 3) != 0)
      {
LABEL_68:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v15, 4uLL);
        goto LABEL_69;
      }

      v14 = v15 + v16;
    }

    *(v14 + 6) = 0;
    *(v14 + 1) = 0u;
    *(v14 + 2) = 0u;
    *v14 = 0u;
    v19 = v14 + 56;
    v49 = v14 + 56;
    v20 = v14 + 56 - v15;
    *v15 = v20;
    v21 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v22 = v21 - v20;
    if (v21 == v20)
    {
      goto LABEL_23;
    }

    v23 = __ptr;
    v24 = v19 - __ptr;
    v25 = v50;
    v26 = v50 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v49;
LABEL_22:
      bzero(v19, v22);
      v49 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 768;
      v15[8] = 0;
      v47 = 0;
      pthread_threadid_np(0, &v47);
      *(v15 + 1) = v47;
      v15[9] = 7895107;
      *(v15 + 5) = *v11;
      v15[12] = a2;
      v15[13] = a3;
      v28 = byte_21B158;
      if (byte_21B158)
      {
        breakpoint_break(&__ptr, &stru_2E8.segname[8], 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 7792))(a1, a2, a3);
        v30 = mach_absolute_time() - v29;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v31 = __ptr;
          *(__ptr + 2) = v29;
          v31[3] = v30;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v43 = __udivti3();
          v44 = __ptr;
          *(__ptr + 3) = v43;
          v44[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v11);
      }

LABEL_28:
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
      v32 = *(v11 + 3404);
      if (v32 && (gBreakOnError & 1) != 0)
      {
        v41 = 3;
        v42 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v28 & 2) == 0)
        {
LABEL_37:
          v33 = [DYGetGLGuestAppClient() defaultFbufStream];
          v34 = v33;
          while (atomic_exchange(v33 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v34 + 14);
          v35 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v35 >= 1)
          {
            handle_opengl_thread_conflict(v11);
          }

          goto LABEL_45;
        }

        v41 = 2;
        v42 = 768;
      }

      breakpoint_break(&__ptr, v42, v41, v32, v11);
      goto LABEL_37;
    }

    v45 = (v22 - v26 + 255) & 0xFFFFFF00;
    v46 = v45 + v50;
    v50 += v45;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v46);
      __ptr = v23;
      if (v23)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v45 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (v23)
      {
LABEL_63:
        if ((v23 & 3) == 0)
        {
          v27 = v23 + v24;
          v19 = v27;
          goto LABEL_22;
        }

        v15 = v23;
        goto LABEL_68;
      }
    }

LABEL_66:
    dy_abort("failed to allocate fbuf buffer");
LABEL_69:
    __break(1u);
    return;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 7792))(a1, a2, a3);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
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
      v16 = *(*(v11 + 24) + 7792);

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

  (*(*(v11 + 32) + 7792))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 7792);

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
  (*(*(v11 + 32) + 7792))(a1, a2, a3);
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

void sub_97DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void fogx(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 33872 || a2 == 2917)
  {
    v7 = "Cee";
  }

  else
  {
    v7 = "Cex";
  }

  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_15;
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
LABEL_15:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add(v13 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v29 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v29 >= 1)
    {
LABEL_50:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
      v31 = *(*(v13 + 3) + 7800);

      v31(a1, a2, a3);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v36, 777, 0, v7, v16, v17, v18, v19, *v13, a2, a3);
    v20 = byte_21B161;
    if (byte_21B161)
    {
      breakpoint_break(v36, (&stru_2E8.addr + 1), 1, v13[851], v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4))
    {
      v21 = mach_absolute_time();
      (*(*(v13 + 4) + 7800))(a1, a2, a3);
      v22 = mach_absolute_time() - v21;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v23 = v36[0];
        *(v36[0] + 2) = v21;
        v23[3] = v22;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_29;
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
          goto LABEL_29;
        }
      }

      check_errors(v13);
    }

LABEL_29:
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
LABEL_38:
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

        goto LABEL_46;
      }

      v32 = 2;
      v33 = 777;
    }

    breakpoint_break(v36, v33, v32, v24, v13);
    goto LABEL_38;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 3) + 7800))(a1, a2, a3);
LABEL_46:
  if (v36[0])
  {
    free(v36[0]);
  }
}

{
  if (a2 == 33872 || a2 == 2917)
  {
    v7 = "Cee";
  }

  else
  {
    v7 = "Cex";
  }

  v8 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v8)
  {
    goto LABEL_15;
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
LABEL_15:
    v9 = ContextInfo::activeCtxInfoMap + 8;
  }

  v13 = *(v9 + 40);
  v14 = atomic_fetch_add(v13 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v29 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v29 >= 1)
    {
LABEL_50:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
      v31 = *(*(v13 + 3) + 7800);

      v31(a1, a2, a3);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v36, 777, 0, v7, v16, v17, v18, v19, *v13, a2, a3);
    v20 = byte_21B161;
    if (byte_21B161)
    {
      breakpoint_break(v36, (&stru_2E8.addr + 1), 1, v13[851], v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4))
    {
      v21 = mach_absolute_time();
      (*(*(v13 + 4) + 7800))(a1, a2, a3);
      v22 = mach_absolute_time() - v21;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v23 = v36[0];
        *(v36[0] + 2) = v21;
        v23[3] = v22;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_29;
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
          goto LABEL_29;
        }
      }

      check_errors(v13);
    }

LABEL_29:
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
LABEL_38:
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

        goto LABEL_46;
      }

      v32 = 2;
      v33 = 777;
    }

    breakpoint_break(v36, v33, v32, v24, v13);
    goto LABEL_38;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 3) + 7800))(a1, a2, a3);
LABEL_46:
  if (v36[0])
  {
    free(v36[0]);
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
      v16 = *(*(v11 + 24) + 7800);

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

  (*(*(v11 + 32) + 7800))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 7800);

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
  (*(*(v11 + 32) + 7800))(a1, a2, a3);
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

void sub_981F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void fogxv(__GLIContextRec *a1, GPUTools::GL *a2, const int *a3)
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
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_50:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(v11[3] + 7808);

      v33(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = GPUTools::GL::dy_fog_param_component_count(a2, v14);
    snprintf(v11 + 4709, 0x40uLL, "Ce@%d", v15);
    if (a2 == 33872 || a2 == 2917)
    {
      v17 = "e";
    }

    else
    {
      v17 = "x";
    }

    strlcat(v11 + 4709, v17, 0x40uLL);
    GPUTools::FB::Encode(v38, 778, 0, v11 + 4709, v18, v19, v20, v21, *v11, a2, a3);
    v22 = byte_21B162;
    if (byte_21B162)
    {
      breakpoint_break(v38, (&stru_2E8.addr + 2), 1, *(v11 + 851), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(v11[4] + 7808))(a1, a2, a3);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v38[0];
        *(v38[0] + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v36 = __udivti3();
        v37 = v38[0];
        *(v38[0] + 3) = v36;
        v37[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_29;
        }
      }

      check_errors(v11);
    }

LABEL_29:
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
      encode_driver_events(v11, v38);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, v38);
    v26 = *(v11 + 851);
    if (v26 && (gBreakOnError & 1) != 0)
    {
      v34 = 3;
      v35 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
LABEL_38:
        v27 = [DYGetGLGuestAppClient() defaultFbufStream];
        v28 = v27;
        while (atomic_exchange(v27 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v28 + 14);
        v29 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v29 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_46;
      }

      v34 = 2;
      v35 = 778;
    }

    breakpoint_break(v38, v35, v34, v26, v11);
    goto LABEL_38;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v11[3] + 7808))(a1, a2, a3);
LABEL_46:
  if (v38[0])
  {
    free(v38[0]);
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
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_50:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(v11[3] + 7808);

      v33(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = GPUTools::GL::dy_fog_param_component_count(a2, v14);
    snprintf(v11 + 4709, 0x40uLL, "Ce@%d", v15);
    if (a2 == 33872 || a2 == 2917)
    {
      v17 = "e";
    }

    else
    {
      v17 = "x";
    }

    strlcat(v11 + 4709, v17, 0x40uLL);
    GPUTools::FB::Encode(v38, 778, 0, v11 + 4709, v18, v19, v20, v21, *v11, a2, a3);
    v22 = byte_21B162;
    if (byte_21B162)
    {
      breakpoint_break(v38, (&stru_2E8.addr + 2), 1, *(v11 + 851), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(v11[4] + 7808))(a1, a2, a3);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v38[0];
        *(v38[0] + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v36 = __udivti3();
        v37 = v38[0];
        *(v38[0] + 3) = v36;
        v37[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_29;
        }
      }

      check_errors(v11);
    }

LABEL_29:
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
      encode_driver_events(v11, v38);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, v38);
    v26 = *(v11 + 851);
    if (v26 && (gBreakOnError & 1) != 0)
    {
      v34 = 3;
      v35 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
LABEL_38:
        v27 = [DYGetGLGuestAppClient() defaultFbufStream];
        v28 = v27;
        while (atomic_exchange(v27 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v28 + 14);
        v29 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v29 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_46;
      }

      v34 = 2;
      v35 = 778;
    }

    breakpoint_break(v38, v35, v34, v26, v11);
    goto LABEL_38;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v11[3] + 7808))(a1, a2, a3);
LABEL_46:
  if (v38[0])
  {
    free(v38[0]);
  }
}

void sub_98674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void frustumf(__GLIContextRec *a1, float a2, float a3, float a4, float a5, float a6, float a7)
{
  v14 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v16 = *(v14 + 32);
    v17 = v16 >= a1;
    v18 = v16 < a1;
    if (v17)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * v18);
  }

  while (v14);
  if (v15 == ContextInfo::activeCtxInfoMap + 8 || *(v15 + 32) > a1)
  {
LABEL_9:
    v15 = ContextInfo::activeCtxInfoMap + 8;
  }

  v19 = *(v15 + 40);
  v20 = atomic_fetch_add((v19 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v20 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v19);
    v45 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v45 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      v46 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v46, 0, do_nothing);
      v47 = *(*(v19 + 24) + 7816);
      v48.n128_f32[0] = a2;
      v49.n128_f32[0] = a3;
      v50.n128_f32[0] = a4;
      v51.n128_f32[0] = a5;
      v52.n128_f32[0] = a6;
      v53.n128_f32[0] = a7;

      v47(a1, v48, v49, v50, v51, v52, v53);
      return;
    }
  }

  *(v19 + 4838) = 1;
  __ptr = 0;
  v63 = 0;
  v64 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v23 = __ptr;
    v22 = v63;
    v24 = v63 - __ptr;
    v25 = v64;
    v26 = v64 - (v63 - __ptr);
    if (v26 <= 0x4B)
    {
      v54 = (331 - v26) & 0x100;
      v64 += v54;
      v23 = malloc_type_malloc(v54 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_66;
      }

      if ((v23 & 3) != 0)
      {
LABEL_68:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v23, 4uLL);
        goto LABEL_69;
      }

      v22 = (v23 + v24);
    }

    *(v22 + 60) = 0u;
    v22[2] = 0u;
    v22[3] = 0u;
    *v22 = 0u;
    v22[1] = 0u;
    v27 = v22 + 76;
    v63 = v22 + 76;
    v28 = v22 + 76 - v23;
    *v23 = v28;
    v29 = (v28 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v30 = v29 - v28;
    if (v29 == v28)
    {
      goto LABEL_23;
    }

    v31 = __ptr;
    v32 = v27 - __ptr;
    v33 = v64;
    v34 = v64 - (v27 - __ptr);
    if (v30 <= v34)
    {
      v35 = v63;
LABEL_22:
      bzero(v27, v30);
      v63 = &v35[v30];
      *v31 += v30;
LABEL_23:
      v23[1] = 779;
      v23[8] = 0;
      v61 = 0;
      pthread_threadid_np(0, &v61);
      *(v23 + 1) = v61;
      *(v23 + 9) = 0x66666666666643;
      *(v23 + 11) = *v19;
      *(v23 + 13) = a2;
      *(v23 + 14) = a3;
      *(v23 + 15) = a4;
      *(v23 + 16) = a5;
      *(v23 + 17) = a6;
      *(v23 + 18) = a7;
      v36 = byte_21B163;
      if (byte_21B163)
      {
        breakpoint_break(&__ptr, (&stru_2E8.addr + 3), 1, *(v19 + 3404), v19);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v36 & 4))
      {
        v37 = mach_absolute_time();
        (*(*(v19 + 32) + 7816))(a1, a2, a3, a4, a5, a6, a7);
        v38 = mach_absolute_time() - v37;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v39 = __ptr;
          *(__ptr + 2) = v37;
          v39[3] = v38;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v57 = __udivti3();
          v58 = __ptr;
          *(__ptr + 3) = v57;
          v58[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v19);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v19 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v19, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v19 + 3480), (v19 + 3520), &__ptr);
      v40 = *(v19 + 3404);
      if (v40 && (gBreakOnError & 1) != 0)
      {
        v55 = 3;
        v56 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v36 & 2) == 0)
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
          v43 = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v43 >= 1)
          {
            handle_opengl_thread_conflict(v19);
          }

          goto LABEL_45;
        }

        v55 = 2;
        v56 = 779;
      }

      breakpoint_break(&__ptr, v56, v55, v40, v19);
      goto LABEL_37;
    }

    v59 = (v30 - v34 + 255) & 0xFFFFFF00;
    v60 = v59 + v64;
    v64 += v59;
    if (__ptr)
    {
      v31 = reallocf(__ptr, v60);
      __ptr = v31;
      if (v31)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v31 = malloc_type_malloc(v59 + v33, 0xF962E99uLL);
      __ptr = v31;
      if (v31)
      {
LABEL_63:
        if ((v31 & 3) == 0)
        {
          v35 = v31 + v32;
          v27 = v35;
          goto LABEL_22;
        }

        v23 = v31;
        goto LABEL_68;
      }
    }

LABEL_66:
    dy_abort("failed to allocate fbuf buffer");
LABEL_69:
    __break(1u);
    return;
  }

  atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v19 + 24) + 7816))(a1, a2, a3, a4, a5, a6, a7);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

{
  v14 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v16 = *(v14 + 32);
    v17 = v16 >= a1;
    v18 = v16 < a1;
    if (v17)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * v18);
  }

  while (v14);
  if (v15 == ContextInfo::activeCtxInfoMap + 8 || *(v15 + 32) > a1)
  {
LABEL_9:
    v15 = ContextInfo::activeCtxInfoMap + 8;
  }

  v19 = *(v15 + 40);
  v20 = atomic_fetch_add((v19 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v20 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v19);
    v45 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v45 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      v46 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v46, 0, do_nothing);
      v47 = *(*(v19 + 24) + 7816);
      v48.n128_f32[0] = a2;
      v49.n128_f32[0] = a3;
      v50.n128_f32[0] = a4;
      v51.n128_f32[0] = a5;
      v52.n128_f32[0] = a6;
      v53.n128_f32[0] = a7;

      v47(a1, v48, v49, v50, v51, v52, v53);
      return;
    }
  }

  *(v19 + 4838) = 1;
  __ptr = 0;
  v63 = 0;
  v64 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v23 = __ptr;
    v22 = v63;
    v24 = v63 - __ptr;
    v25 = v64;
    v26 = v64 - (v63 - __ptr);
    if (v26 <= 0x4B)
    {
      v54 = (331 - v26) & 0x100;
      v64 += v54;
      v23 = malloc_type_malloc(v54 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (!v23)
      {
        goto LABEL_66;
      }

      if ((v23 & 3) != 0)
      {
LABEL_68:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v23, 4uLL);
        goto LABEL_69;
      }

      v22 = (v23 + v24);
    }

    *(v22 + 60) = 0u;
    v22[2] = 0u;
    v22[3] = 0u;
    *v22 = 0u;
    v22[1] = 0u;
    v27 = v22 + 76;
    v63 = v22 + 76;
    v28 = v22 + 76 - v23;
    *v23 = v28;
    v29 = (v28 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v30 = v29 - v28;
    if (v29 == v28)
    {
      goto LABEL_23;
    }

    v31 = __ptr;
    v32 = v27 - __ptr;
    v33 = v64;
    v34 = v64 - (v27 - __ptr);
    if (v30 <= v34)
    {
      v35 = v63;
LABEL_22:
      bzero(v27, v30);
      v63 = &v35[v30];
      *v31 += v30;
LABEL_23:
      v23[1] = 779;
      v23[8] = 0;
      v61 = 0;
      pthread_threadid_np(0, &v61);
      *(v23 + 1) = v61;
      *(v23 + 9) = 0x66666666666643;
      *(v23 + 11) = *v19;
      *(v23 + 13) = a2;
      *(v23 + 14) = a3;
      *(v23 + 15) = a4;
      *(v23 + 16) = a5;
      *(v23 + 17) = a6;
      *(v23 + 18) = a7;
      v36 = byte_21B163;
      if (byte_21B163)
      {
        breakpoint_break(&__ptr, (&stru_2E8.addr + 3), 1, *(v19 + 3404), v19);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v36 & 4))
      {
        v37 = mach_absolute_time();
        (*(*(v19 + 32) + 7816))(a1, a2, a3, a4, a5, a6, a7);
        v38 = mach_absolute_time() - v37;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v39 = __ptr;
          *(__ptr + 2) = v37;
          v39[3] = v38;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v57 = __udivti3();
          v58 = __ptr;
          *(__ptr + 3) = v57;
          v58[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v19);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v19 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v19, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v19 + 3480), (v19 + 3520), &__ptr);
      v40 = *(v19 + 3404);
      if (v40 && (gBreakOnError & 1) != 0)
      {
        v55 = 3;
        v56 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v36 & 2) == 0)
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
          v43 = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v43 >= 1)
          {
            handle_opengl_thread_conflict(v19);
          }

          goto LABEL_45;
        }

        v55 = 2;
        v56 = 779;
      }

      breakpoint_break(&__ptr, v56, v55, v40, v19);
      goto LABEL_37;
    }

    v59 = (v30 - v34 + 255) & 0xFFFFFF00;
    v60 = v59 + v64;
    v64 += v59;
    if (__ptr)
    {
      v31 = reallocf(__ptr, v60);
      __ptr = v31;
      if (v31)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v31 = malloc_type_malloc(v59 + v33, 0xF962E99uLL);
      __ptr = v31;
      if (v31)
      {
LABEL_63:
        if ((v31 & 3) == 0)
        {
          v35 = v31 + v32;
          v27 = v35;
          goto LABEL_22;
        }

        v23 = v31;
        goto LABEL_68;
      }
    }

LABEL_66:
    dy_abort("failed to allocate fbuf buffer");
LABEL_69:
    __break(1u);
    return;
  }

  atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v19 + 24) + 7816))(a1, a2, a3, a4, a5, a6, a7);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

{
  v14 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v16 = *(v14 + 32);
    v17 = v16 >= a1;
    v18 = v16 < a1;
    if (v17)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * v18);
  }

  while (v14);
  if (v15 == ContextInfo::activeCtxInfoMap + 8 || *(v15 + 32) > a1)
  {
LABEL_9:
    v15 = ContextInfo::activeCtxInfoMap + 8;
  }

  v19 = *(v15 + 40);
  v20 = atomic_fetch_add((v19 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v20 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v23, 0, do_nothing);
LABEL_29:
      v30 = *(*(v19 + 24) + 7816);
      v24.n128_f32[0] = a2;
      v25.n128_f32[0] = a3;
      v26.n128_f32[0] = a4;
      v27.n128_f32[0] = a5;
      v28.n128_f32[0] = a6;
      v29.n128_f32[0] = a7;

      v30(a1, v24, v25, v26, v27, v28, v29);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v19);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v19 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  (*(*(v19 + 32) + 7816))(a1, a2, a3, a4, a5, a6, a7);
  ++*(v19 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v19);
  }

  add = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v19);
  }
}

{
  v14 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v16 = *(v14 + 32);
    v17 = v16 >= a1;
    v18 = v16 < a1;
    if (v17)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * v18);
  }

  while (v14);
  if (v15 == ContextInfo::activeCtxInfoMap + 8 || *(v15 + 32) > a1)
  {
LABEL_9:
    v15 = ContextInfo::activeCtxInfoMap + 8;
  }

  v19 = *(v15 + 40);
  v20 = atomic_fetch_add((v19 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v20 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
      v26 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v26, 0, do_nothing);
LABEL_29:
      v33 = *(*(v19 + 24) + 7816);
      v27.n128_f32[0] = a2;
      v28.n128_f32[0] = a3;
      v29.n128_f32[0] = a4;
      v30.n128_f32[0] = a5;
      v31.n128_f32[0] = a6;
      v32.n128_f32[0] = a7;

      v33(a1, v27, v28, v29, v30, v31, v32);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v19);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v19 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v22 = mach_absolute_time();
  (*(*(v19 + 32) + 7816))(a1, a2, a3, a4, a5, a6, a7);
  v23 = mach_absolute_time();
  v24 = vdupq_n_s64(1uLL);
  v24.i64[0] = v23 - v22;
  *(v19 + 3696) = vaddq_s64(v24, *(v19 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v19);
  }

  add = atomic_fetch_add((v19 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v19);
  }
}

void sub_98C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void frustumx(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v43 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v43 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v44 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v44, 0, do_nothing);
      v45 = *(*(v17 + 24) + 7824);

      v45(a1, a2, a3, a4, a5, a6, a7);
      return;
    }
  }

  *(v17 + 4838) = 1;
  __ptr = 0;
  v57 = 0;
  v58 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v21 = __ptr;
    v20 = v57;
    v22 = v57 - __ptr;
    v23 = v58;
    v24 = v58 - (v57 - __ptr);
    if (v24 <= 0x4B)
    {
      v46 = (331 - v24) & 0x100;
      v58 += v46;
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

      v20 = (v21 + v22);
    }

    *(v20 + 60) = 0u;
    v20[2] = 0u;
    v20[3] = 0u;
    *v20 = 0u;
    v20[1] = 0u;
    v25 = v20 + 76;
    v57 = v20 + 76;
    v26 = v20 + 76 - v21;
    *v21 = v26;
    v27 = (v26 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v27 - v26;
    if (v27 == v26)
    {
      goto LABEL_23;
    }

    v29 = __ptr;
    v30 = v25 - __ptr;
    v31 = v58;
    v32 = v58 - (v25 - __ptr);
    if (v28 <= v32)
    {
      v33 = v57;
LABEL_22:
      bzero(v25, v28);
      v57 = &v33[v28];
      *v29 += v28;
LABEL_23:
      v21[1] = 780;
      v21[8] = 0;
      v55 = 0;
      pthread_threadid_np(0, &v55);
      *(v21 + 1) = v55;
      *(v21 + 9) = 0x78787878787843;
      *(v21 + 11) = *v17;
      v21[13] = a2;
      v21[14] = a3;
      v21[15] = a4;
      v21[16] = a5;
      v21[17] = a6;
      v21[18] = a7;
      v34 = byte_21B164;
      if (byte_21B164)
      {
        breakpoint_break(&__ptr, &stru_2E8.addr + 1, 1, *(v17 + 3404), v17);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v34 & 4))
      {
        v35 = mach_absolute_time();
        (*(*(v17 + 32) + 7824))(a1, a2, a3, a4, a5, a6, a7);
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

        check_errors(v17);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v17 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v17, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), &__ptr);
      v38 = *(v17 + 3404);
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
          v41 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v41 >= 1)
          {
            handle_opengl_thread_conflict(v17);
          }

          goto LABEL_45;
        }

        v47 = 2;
        v48 = 780;
      }

      breakpoint_break(&__ptr, v48, v47, v38, v17);
      goto LABEL_37;
    }

    v51 = (v28 - v32 + 255) & 0xFFFFFF00;
    v52 = v51 + v58;
    v58 += v51;
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

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 7824))(a1, a2, a3, a4, a5, a6, a7);
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v43 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v43 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v44 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v44, 0, do_nothing);
      v45 = *(*(v17 + 24) + 7824);

      v45(a1, a2, a3, a4, a5, a6, a7);
      return;
    }
  }

  *(v17 + 4838) = 1;
  __ptr = 0;
  v57 = 0;
  v58 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v21 = __ptr;
    v20 = v57;
    v22 = v57 - __ptr;
    v23 = v58;
    v24 = v58 - (v57 - __ptr);
    if (v24 <= 0x4B)
    {
      v46 = (331 - v24) & 0x100;
      v58 += v46;
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

      v20 = (v21 + v22);
    }

    *(v20 + 60) = 0u;
    v20[2] = 0u;
    v20[3] = 0u;
    *v20 = 0u;
    v20[1] = 0u;
    v25 = v20 + 76;
    v57 = v20 + 76;
    v26 = v20 + 76 - v21;
    *v21 = v26;
    v27 = (v26 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v27 - v26;
    if (v27 == v26)
    {
      goto LABEL_23;
    }

    v29 = __ptr;
    v30 = v25 - __ptr;
    v31 = v58;
    v32 = v58 - (v25 - __ptr);
    if (v28 <= v32)
    {
      v33 = v57;
LABEL_22:
      bzero(v25, v28);
      v57 = &v33[v28];
      *v29 += v28;
LABEL_23:
      v21[1] = 780;
      v21[8] = 0;
      v55 = 0;
      pthread_threadid_np(0, &v55);
      *(v21 + 1) = v55;
      *(v21 + 9) = 0x78787878787843;
      *(v21 + 11) = *v17;
      v21[13] = a2;
      v21[14] = a3;
      v21[15] = a4;
      v21[16] = a5;
      v21[17] = a6;
      v21[18] = a7;
      v34 = byte_21B164;
      if (byte_21B164)
      {
        breakpoint_break(&__ptr, &stru_2E8.addr + 1, 1, *(v17 + 3404), v17);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v34 & 4))
      {
        v35 = mach_absolute_time();
        (*(*(v17 + 32) + 7824))(a1, a2, a3, a4, a5, a6, a7);
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

        check_errors(v17);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v17 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v17, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), &__ptr);
      v38 = *(v17 + 3404);
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
          v41 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v41 >= 1)
          {
            handle_opengl_thread_conflict(v17);
          }

          goto LABEL_45;
        }

        v47 = 2;
        v48 = 780;
      }

      breakpoint_break(&__ptr, v48, v47, v38, v17);
      goto LABEL_37;
    }

    v51 = (v28 - v32 + 255) & 0xFFFFFF00;
    v52 = v51 + v58;
    v58 += v51;
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

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 7824))(a1, a2, a3, a4, a5, a6, a7);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

void sub_992A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void get_clip_planef(__GLIContextRec *a1, uint64_t a2, float *a3)
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
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v11 + 3) + 7832);

      v34(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(&v40, 781, 256, "Ce@4f", v14, v15, v16, v17, *v11, a2, a3);
    v18 = byte_21B165;
    if (byte_21B165)
    {
      breakpoint_break(&v40, (&stru_2E8.addr + 5), 1, v11[851], v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v23 = mach_absolute_time();
      (*(*(v11 + 4) + 7832))(a1, a2, a3);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v40;
        *(v40 + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v40;
        *(v40 + 3) = v37;
        v38[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
    v26 = v40;
    v39 = *(v40 + 1);
    v41 = v40;
    if (v42 >= 0x24)
    {
      *(v40 + 8) = 0;
      *v26 = 0u;
      v26[1] = 0u;
    }

    GPUTools::FB::Encode(&v40, 781, 256, "Ce@4f", v19, v20, v21, v22, *v11, a2, a3);
    *(v40 + 1) = v39;
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
      encode_driver_events(v11, &v40);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, &v40);
    v27 = v11[851];
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_34:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_42;
      }

      v35 = 2;
      v36 = 781;
    }

    breakpoint_break(&v40, v36, v35, v27, v11);
    goto LABEL_34;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 3) + 7832))(a1, a2, a3);
LABEL_42:
  if (v40)
  {
    free(v40);
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
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v11 + 3) + 7832);

      v34(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(&v40, 781, 256, "Ce@4f", v14, v15, v16, v17, *v11, a2, a3);
    v18 = byte_21B165;
    if (byte_21B165)
    {
      breakpoint_break(&v40, (&stru_2E8.addr + 5), 1, v11[851], v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v23 = mach_absolute_time();
      (*(*(v11 + 4) + 7832))(a1, a2, a3);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v40;
        *(v40 + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v40;
        *(v40 + 3) = v37;
        v38[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
    v26 = v40;
    v39 = *(v40 + 1);
    v41 = v40;
    if (v42 >= 0x24)
    {
      *(v40 + 8) = 0;
      *v26 = 0u;
      v26[1] = 0u;
    }

    GPUTools::FB::Encode(&v40, 781, 256, "Ce@4f", v19, v20, v21, v22, *v11, a2, a3);
    *(v40 + 1) = v39;
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
      encode_driver_events(v11, &v40);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, &v40);
    v27 = v11[851];
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_34:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_42;
      }

      v35 = 2;
      v36 = 781;
    }

    breakpoint_break(&v40, v36, v35, v27, v11);
    goto LABEL_34;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 3) + 7832))(a1, a2, a3);
LABEL_42:
  if (v40)
  {
    free(v40);
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
      v16 = *(*(v11 + 24) + 7832);

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

  (*(*(v11 + 32) + 7832))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 7832);

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
  (*(*(v11 + 32) + 7832))(a1, a2, a3);
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

void sub_99738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_clip_planex(__GLIContextRec *a1, uint64_t a2, int *a3)
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
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v11 + 3) + 7840);

      v34(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(&v40, 782, 256, "Ce@4x", v14, v15, v16, v17, *v11, a2, a3);
    v18 = byte_21B166;
    if (byte_21B166)
    {
      breakpoint_break(&v40, (&stru_2E8.addr + 6), 1, v11[851], v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v23 = mach_absolute_time();
      (*(*(v11 + 4) + 7840))(a1, a2, a3);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v40;
        *(v40 + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v40;
        *(v40 + 3) = v37;
        v38[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
    v26 = v40;
    v39 = *(v40 + 1);
    v41 = v40;
    if (v42 >= 0x24)
    {
      *(v40 + 8) = 0;
      *v26 = 0u;
      v26[1] = 0u;
    }

    GPUTools::FB::Encode(&v40, 782, 256, "Ce@4x", v19, v20, v21, v22, *v11, a2, a3);
    *(v40 + 1) = v39;
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
      encode_driver_events(v11, &v40);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, &v40);
    v27 = v11[851];
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_34:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_42;
      }

      v35 = 2;
      v36 = 782;
    }

    breakpoint_break(&v40, v36, v35, v27, v11);
    goto LABEL_34;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 3) + 7840))(a1, a2, a3);
LABEL_42:
  if (v40)
  {
    free(v40);
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
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v11 + 3) + 7840);

      v34(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(&v40, 782, 256, "Ce@4x", v14, v15, v16, v17, *v11, a2, a3);
    v18 = byte_21B166;
    if (byte_21B166)
    {
      breakpoint_break(&v40, (&stru_2E8.addr + 6), 1, v11[851], v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4))
    {
      v23 = mach_absolute_time();
      (*(*(v11 + 4) + 7840))(a1, a2, a3);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v40;
        *(v40 + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v40;
        *(v40 + 3) = v37;
        v38[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v11);
    }

LABEL_23:
    v26 = v40;
    v39 = *(v40 + 1);
    v41 = v40;
    if (v42 >= 0x24)
    {
      *(v40 + 8) = 0;
      *v26 = 0u;
      v26[1] = 0u;
    }

    GPUTools::FB::Encode(&v40, 782, 256, "Ce@4x", v19, v20, v21, v22, *v11, a2, a3);
    *(v40 + 1) = v39;
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
      encode_driver_events(v11, &v40);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, &v40);
    v27 = v11[851];
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v18 & 2) == 0)
      {
LABEL_34:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_42;
      }

      v35 = 2;
      v36 = 782;
    }

    breakpoint_break(&v40, v36, v35, v27, v11);
    goto LABEL_34;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 3) + 7840))(a1, a2, a3);
LABEL_42:
  if (v40)
  {
    free(v40);
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
      v16 = *(*(v11 + 24) + 7840);

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

  (*(*(v11 + 32) + 7840))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 7840);

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
  (*(*(v11 + 32) + 7840))(a1, a2, a3);
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

void sub_99BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_fixedv(__GLIContextRec *a1, uint64_t a2, int *a3)
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
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v11 + 24) + 7848);

      v39(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v49 = 0;
  v50 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v49;
    v16 = v49 - __ptr;
    v17 = v50;
    v18 = v50 - (v49 - __ptr);
    if (v18 <= 0x3B)
    {
      v40 = (315 - v18) & 0x100;
      v50 += v40;
      v15 = malloc_type_malloc(v40 + v17, 0xF962E99uLL);
      __ptr = v15;
      if (!v15)
      {
        goto LABEL_66;
      }

      if ((v15 & 3) != 0)
      {
LABEL_68:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v15, 4uLL);
        goto LABEL_69;
      }

      v14 = (v15 + v16);
    }

    *(v14 + 44) = 0u;
    v14[1] = 0u;
    v14[2] = 0u;
    *v14 = 0u;
    v19 = v14 + 60;
    v49 = v14 + 60;
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
    v25 = v50;
    v26 = v50 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v49;
LABEL_22:
      bzero(v19, v22);
      v49 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 783;
      v15[8] = 256;
      v47 = 0;
      pthread_threadid_np(0, &v47);
      *(v15 + 1) = v47;
      v15[9] = 7365955;
      *(v15 + 5) = *v11;
      v15[12] = a2;
      *(v15 + 13) = a3;
      v28 = byte_21B167;
      if (byte_21B167)
      {
        breakpoint_break(&__ptr, (&stru_2E8.addr + 7), 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 7848))(a1, a2, a3);
        v30 = mach_absolute_time() - v29;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v31 = __ptr;
          *(__ptr + 2) = v29;
          v31[3] = v30;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v43 = __udivti3();
          v44 = __ptr;
          *(__ptr + 3) = v43;
          v44[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v11);
      }

LABEL_28:
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
      v32 = *(v11 + 3404);
      if (v32 && (gBreakOnError & 1) != 0)
      {
        v41 = 3;
        v42 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v28 & 2) == 0)
        {
LABEL_37:
          v33 = [DYGetGLGuestAppClient() defaultFbufStream];
          v34 = v33;
          while (atomic_exchange(v33 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v34 + 14);
          v35 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v35 >= 1)
          {
            handle_opengl_thread_conflict(v11);
          }

          goto LABEL_45;
        }

        v41 = 2;
        v42 = 783;
      }

      breakpoint_break(&__ptr, v42, v41, v32, v11);
      goto LABEL_37;
    }

    v45 = (v22 - v26 + 255) & 0xFFFFFF00;
    v46 = v45 + v50;
    v50 += v45;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v46);
      __ptr = v23;
      if (v23)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v45 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (v23)
      {
LABEL_63:
        if ((v23 & 3) == 0)
        {
          v27 = v23 + v24;
          v19 = v27;
          goto LABEL_22;
        }

        v15 = v23;
        goto LABEL_68;
      }
    }

LABEL_66:
    dy_abort("failed to allocate fbuf buffer");
LABEL_69:
    __break(1u);
    return;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 7848))(a1, a2, a3);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v11 + 24) + 7848);

      v39(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v49 = 0;
  v50 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v49;
    v16 = v49 - __ptr;
    v17 = v50;
    v18 = v50 - (v49 - __ptr);
    if (v18 <= 0x3B)
    {
      v40 = (315 - v18) & 0x100;
      v50 += v40;
      v15 = malloc_type_malloc(v40 + v17, 0xF962E99uLL);
      __ptr = v15;
      if (!v15)
      {
        goto LABEL_66;
      }

      if ((v15 & 3) != 0)
      {
LABEL_68:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v15, 4uLL);
        goto LABEL_69;
      }

      v14 = (v15 + v16);
    }

    *(v14 + 44) = 0u;
    v14[1] = 0u;
    v14[2] = 0u;
    *v14 = 0u;
    v19 = v14 + 60;
    v49 = v14 + 60;
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
    v25 = v50;
    v26 = v50 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v49;
LABEL_22:
      bzero(v19, v22);
      v49 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 783;
      v15[8] = 256;
      v47 = 0;
      pthread_threadid_np(0, &v47);
      *(v15 + 1) = v47;
      v15[9] = 7365955;
      *(v15 + 5) = *v11;
      v15[12] = a2;
      *(v15 + 13) = a3;
      v28 = byte_21B167;
      if (byte_21B167)
      {
        breakpoint_break(&__ptr, (&stru_2E8.addr + 7), 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 7848))(a1, a2, a3);
        v30 = mach_absolute_time() - v29;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v31 = __ptr;
          *(__ptr + 2) = v29;
          v31[3] = v30;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v43 = __udivti3();
          v44 = __ptr;
          *(__ptr + 3) = v43;
          v44[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v11);
      }

LABEL_28:
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
      v32 = *(v11 + 3404);
      if (v32 && (gBreakOnError & 1) != 0)
      {
        v41 = 3;
        v42 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v28 & 2) == 0)
        {
LABEL_37:
          v33 = [DYGetGLGuestAppClient() defaultFbufStream];
          v34 = v33;
          while (atomic_exchange(v33 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v34 + 14);
          v35 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v35 >= 1)
          {
            handle_opengl_thread_conflict(v11);
          }

          goto LABEL_45;
        }

        v41 = 2;
        v42 = 783;
      }

      breakpoint_break(&__ptr, v42, v41, v32, v11);
      goto LABEL_37;
    }

    v45 = (v22 - v26 + 255) & 0xFFFFFF00;
    v46 = v45 + v50;
    v50 += v45;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v46);
      __ptr = v23;
      if (v23)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v45 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (v23)
      {
LABEL_63:
        if ((v23 & 3) == 0)
        {
          v27 = v23 + v24;
          v19 = v27;
          goto LABEL_22;
        }

        v15 = v23;
        goto LABEL_68;
      }
    }

LABEL_66:
    dy_abort("failed to allocate fbuf buffer");
LABEL_69:
    __break(1u);
    return;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 7848))(a1, a2, a3);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
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
      v16 = *(*(v11 + 24) + 7848);

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

  (*(*(v11 + 32) + 7848))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 7848);

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
  (*(*(v11 + 32) + 7848))(a1, a2, a3);
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

void sub_9A18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void get_lightxv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, int *a4)
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
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v37 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v37, 0, do_nothing);
      v38 = *(v13[3] + 7856);

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
    v17 = GPUTools::GL::dy_light_array_size(a3, v16);
    snprintf(v13 + 4709, 0x40uLL, "Cee@%dx", v17);
    GPUTools::FB::Encode(&v44, 784, 256, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B168;
    if (byte_21B168)
    {
      breakpoint_break(&v44, &stru_2E8.size, 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(v13[4] + 7856))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v44;
        *(v44 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
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
          goto LABEL_23;
        }
      }

      check_errors(v13);
    }

LABEL_23:
    v30 = v44;
    v43 = *(v44 + 1);
    v45 = v44;
    if (v46 >= 0x24)
    {
      *(v44 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v44, 784, 256, v13 + 4709, v23, v24, v25, v26, *v13, a2, a3, a4);
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
LABEL_34:
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

        goto LABEL_42;
      }

      v39 = 2;
      v40 = 784;
    }

    breakpoint_break(&v44, v40, v39, v31, v13);
    goto LABEL_34;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 7856))(a1, a2, a3, a4);
LABEL_42:
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
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v37 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v37, 0, do_nothing);
      v38 = *(v13[3] + 7856);

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
    v17 = GPUTools::GL::dy_light_array_size(a3, v16);
    snprintf(v13 + 4709, 0x40uLL, "Cee@%dx", v17);
    GPUTools::FB::Encode(&v44, 784, 256, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B168;
    if (byte_21B168)
    {
      breakpoint_break(&v44, &stru_2E8.size, 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(v13[4] + 7856))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v44;
        *(v44 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
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
          goto LABEL_23;
        }
      }

      check_errors(v13);
    }

LABEL_23:
    v30 = v44;
    v43 = *(v44 + 1);
    v45 = v44;
    if (v46 >= 0x24)
    {
      *(v44 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v44, 784, 256, v13 + 4709, v23, v24, v25, v26, *v13, a2, a3, a4);
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
LABEL_34:
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

        goto LABEL_42;
      }

      v39 = 2;
      v40 = 784;
    }

    breakpoint_break(&v44, v40, v39, v31, v13);
    goto LABEL_34;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 7856))(a1, a2, a3, a4);
LABEL_42:
  if (v44)
  {
    free(v44);
  }
}

void sub_9A658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_materialxv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, int *a4)
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
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v37 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v37, 0, do_nothing);
      v38 = *(v13[3] + 7864);

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
    v17 = GPUTools::GL::DYMaterialParameterComponentCount(a3, v16);
    snprintf(v13 + 4709, 0x40uLL, "Cee@%dx", v17);
    GPUTools::FB::Encode(&v44, 785, 256, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B169;
    if (byte_21B169)
    {
      breakpoint_break(&v44, (&stru_2E8.size + 1), 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(v13[4] + 7864))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v44;
        *(v44 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
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
          goto LABEL_23;
        }
      }

      check_errors(v13);
    }

LABEL_23:
    v30 = v44;
    v43 = *(v44 + 1);
    v45 = v44;
    if (v46 >= 0x24)
    {
      *(v44 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v44, 785, 256, v13 + 4709, v23, v24, v25, v26, *v13, a2, a3, a4);
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
LABEL_34:
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

        goto LABEL_42;
      }

      v39 = 2;
      v40 = 785;
    }

    breakpoint_break(&v44, v40, v39, v31, v13);
    goto LABEL_34;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 7864))(a1, a2, a3, a4);
LABEL_42:
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
      goto LABEL_46;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v37 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v37, 0, do_nothing);
      v38 = *(v13[3] + 7864);

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
    v17 = GPUTools::GL::DYMaterialParameterComponentCount(a3, v16);
    snprintf(v13 + 4709, 0x40uLL, "Cee@%dx", v17);
    GPUTools::FB::Encode(&v44, 785, 256, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B169;
    if (byte_21B169)
    {
      breakpoint_break(&v44, (&stru_2E8.size + 1), 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(v13[4] + 7864))(a1, a2, a3, a4);
      v28 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v29 = v44;
        *(v44 + 2) = v27;
        v29[3] = v28;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
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
          goto LABEL_23;
        }
      }

      check_errors(v13);
    }

LABEL_23:
    v30 = v44;
    v43 = *(v44 + 1);
    v45 = v44;
    if (v46 >= 0x24)
    {
      *(v44 + 8) = 0;
      *v30 = 0u;
      v30[1] = 0u;
    }

    GPUTools::FB::Encode(&v44, 785, 256, v13 + 4709, v23, v24, v25, v26, *v13, a2, a3, a4);
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
LABEL_34:
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

        goto LABEL_42;
      }

      v39 = 2;
      v40 = 785;
    }

    breakpoint_break(&v44, v40, v39, v31, v13);
    goto LABEL_34;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 7864))(a1, a2, a3, a4);
LABEL_42:
  if (v44)
  {
    free(v44);
  }
}

void sub_9AB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_tex_envxv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, int *a4)
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
      v38 = *(v13[3] + 7872);

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
    GPUTools::GL::DYGetTexEnvParameterInfo(a3, &v44[1], v44, v16);
    v17 = 120;
    if (v44[0])
    {
      v17 = 101;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cee@%u%c", *&v44[1], v17);
    GPUTools::FB::Encode(&v45, 787, 256, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B16B;
    if (byte_21B16B)
    {
      breakpoint_break(&v45, (&stru_2E8.size + 3), 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(v13[4] + 7872))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v45, 787, 256, v13 + 4709, v23, v24, v25, v26, *v13, a2, a3, a4);
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
      v40 = 787;
    }

    breakpoint_break(&v45, v40, v39, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 7872))(a1, a2, a3, a4);
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
      v38 = *(v13[3] + 7872);

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
    GPUTools::GL::DYGetTexEnvParameterInfo(a3, &v44[1], v44, v16);
    v17 = 120;
    if (v44[0])
    {
      v17 = 101;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cee@%u%c", *&v44[1], v17);
    GPUTools::FB::Encode(&v45, 787, 256, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B16B;
    if (byte_21B16B)
    {
      breakpoint_break(&v45, (&stru_2E8.size + 3), 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(v13[4] + 7872))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v45, 787, 256, v13 + 4709, v23, v24, v25, v26, *v13, a2, a3, a4);
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
      v40 = 787;
    }

    breakpoint_break(&v45, v40, v39, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 7872))(a1, a2, a3, a4);
LABEL_44:
  if (v45)
  {
    free(v45);
  }
}

void sub_9B010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_tex_parameterxv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, int *a4)
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
      v38 = *(v13[3] + 7880);

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
    GPUTools::GL::DYGetTextureParameterInfo(a3, &v44[1], v44, v16);
    v17 = 120;
    if (v44[0])
    {
      v17 = 101;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cee@%u%c", *&v44[1], v17);
    GPUTools::FB::Encode(&v45, 788, 256, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B16C;
    if (byte_21B16C)
    {
      breakpoint_break(&v45, &stru_2E8.size + 1, 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(v13[4] + 7880))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v45, 788, 256, v13 + 4709, v23, v24, v25, v26, *v13, a2, a3, a4);
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
      v40 = 788;
    }

    breakpoint_break(&v45, v40, v39, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 7880))(a1, a2, a3, a4);
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
      v38 = *(v13[3] + 7880);

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
    GPUTools::GL::DYGetTextureParameterInfo(a3, &v44[1], v44, v16);
    v17 = 120;
    if (v44[0])
    {
      v17 = 101;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cee@%u%c", *&v44[1], v17);
    GPUTools::FB::Encode(&v45, 788, 256, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B16C;
    if (byte_21B16C)
    {
      breakpoint_break(&v45, &stru_2E8.size + 1, 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(v13[4] + 7880))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v45, 788, 256, v13 + 4709, v23, v24, v25, v26, *v13, a2, a3, a4);
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
      v40 = 788;
    }

    breakpoint_break(&v45, v40, v39, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 7880))(a1, a2, a3, a4);
LABEL_44:
  if (v45)
  {
    free(v45);
  }
}

void sub_9B504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void light_modelx(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 33272)
  {
    v6 = "Cee";
  }

  else
  {
    v6 = "Cex";
  }

  v7 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= a1;
    v11 = v9 < a1;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 == ContextInfo::activeCtxInfoMap + 8 || *(v8 + 32) > a1)
  {
LABEL_12:
    v8 = ContextInfo::activeCtxInfoMap + 8;
  }

  v12 = *(v8 + 40);
  v13 = atomic_fetch_add(v12 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v13 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v12);
    v28 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v28 >= 1)
    {
LABEL_47:
      atomic_fetch_add(v12 + 1160, 0xFFFFFFFF);
      v29 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v29, 0, do_nothing);
      v30 = *(*(v12 + 3) + 7888);

      v30(a1, a2, a3);
      return;
    }
  }

  *(v12 + 4838) = 1;
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v35, 789, 0, v6, v15, v16, v17, v18, *v12, a2, a3);
    v19 = byte_21B16D;
    if (byte_21B16D)
    {
      breakpoint_break(v35, (&stru_2E8.size + 5), 1, v12[851], v12);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v20 = mach_absolute_time();
      (*(*(v12 + 4) + 7888))(a1, a2, a3);
      v21 = mach_absolute_time() - v20;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v22 = v35[0];
        *(v35[0] + 2) = v20;
        v22[3] = v21;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v33 = __udivti3();
        v34 = v35[0];
        *(v35[0] + 3) = v33;
        v34[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_26;
        }
      }

      check_errors(v12);
    }

LABEL_26:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (v12[851])
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v12, v35);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v12 + 435, v12 + 440, v35);
    v23 = v12[851];
    if (v23 && (gBreakOnError & 1) != 0)
    {
      v31 = 3;
      v32 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v19 & 2) == 0)
      {
LABEL_35:
        v24 = [DYGetGLGuestAppClient() defaultFbufStream];
        v25 = v24;
        while (atomic_exchange(v24 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v25 + 14);
        v26 = atomic_fetch_add(v12 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v26 >= 1)
        {
          handle_opengl_thread_conflict(v12);
        }

        goto LABEL_43;
      }

      v31 = 2;
      v32 = 789;
    }

    breakpoint_break(v35, v32, v31, v23, v12);
    goto LABEL_35;
  }

  atomic_fetch_add(v12 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v12 + 3) + 7888))(a1, a2, a3);
LABEL_43:
  if (v35[0])
  {
    free(v35[0]);
  }
}

{
  if (a2 == 33272)
  {
    v6 = "Cee";
  }

  else
  {
    v6 = "Cex";
  }

  v7 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= a1;
    v11 = v9 < a1;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 == ContextInfo::activeCtxInfoMap + 8 || *(v8 + 32) > a1)
  {
LABEL_12:
    v8 = ContextInfo::activeCtxInfoMap + 8;
  }

  v12 = *(v8 + 40);
  v13 = atomic_fetch_add(v12 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v13 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v12);
    v28 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v28 >= 1)
    {
LABEL_47:
      atomic_fetch_add(v12 + 1160, 0xFFFFFFFF);
      v29 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v29, 0, do_nothing);
      v30 = *(*(v12 + 3) + 7888);

      v30(a1, a2, a3);
      return;
    }
  }

  *(v12 + 4838) = 1;
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v35, 789, 0, v6, v15, v16, v17, v18, *v12, a2, a3);
    v19 = byte_21B16D;
    if (byte_21B16D)
    {
      breakpoint_break(v35, (&stru_2E8.size + 5), 1, v12[851], v12);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v20 = mach_absolute_time();
      (*(*(v12 + 4) + 7888))(a1, a2, a3);
      v21 = mach_absolute_time() - v20;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v22 = v35[0];
        *(v35[0] + 2) = v20;
        v22[3] = v21;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v33 = __udivti3();
        v34 = v35[0];
        *(v35[0] + 3) = v33;
        v34[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_26;
        }
      }

      check_errors(v12);
    }

LABEL_26:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (v12[851])
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v12, v35);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v12 + 435, v12 + 440, v35);
    v23 = v12[851];
    if (v23 && (gBreakOnError & 1) != 0)
    {
      v31 = 3;
      v32 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v19 & 2) == 0)
      {
LABEL_35:
        v24 = [DYGetGLGuestAppClient() defaultFbufStream];
        v25 = v24;
        while (atomic_exchange(v24 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v25 + 14);
        v26 = atomic_fetch_add(v12 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v26 >= 1)
        {
          handle_opengl_thread_conflict(v12);
        }

        goto LABEL_43;
      }

      v31 = 2;
      v32 = 789;
    }

    breakpoint_break(v35, v32, v31, v23, v12);
    goto LABEL_35;
  }

  atomic_fetch_add(v12 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v12 + 3) + 7888))(a1, a2, a3);
LABEL_43:
  if (v35[0])
  {
    free(v35[0]);
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
      v16 = *(*(v11 + 24) + 7888);

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

  (*(*(v11 + 32) + 7888))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 7888);

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
  (*(*(v11 + 32) + 7888))(a1, a2, a3);
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

void sub_9B950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void light_modelxv(__GLIContextRec *a1, GPUTools::GL *a2, const int *a3)
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v30 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v30 >= 1)
    {
LABEL_47:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v31 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v31, 0, do_nothing);
      v32 = *(v11[3] + 7896);

      v32(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = GPUTools::GL::dy_light_model_param_component_count(a2, v14);
    snprintf(v11 + 4709, 0x20uLL, "Ce@%d", v15);
    if (a2 == 33272)
    {
      v16 = "e";
    }

    else
    {
      v16 = "x";
    }

    strlcat(v11 + 4709, v16, 0x40uLL);
    GPUTools::FB::Encode(v37, 790, 0, v11 + 4709, v17, v18, v19, v20, *v11, a2, a3);
    v21 = byte_21B16E;
    if (byte_21B16E)
    {
      breakpoint_break(v37, (&stru_2E8.size + 6), 1, *(v11 + 851), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(v11[4] + 7896))(a1, a2, a3);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v37[0];
        *(v37[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v35 = __udivti3();
        v36 = v37[0];
        *(v37[0] + 3) = v35;
        v36[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_26;
        }
      }

      check_errors(v11);
    }

LABEL_26:
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
      encode_driver_events(v11, v37);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, v37);
    v25 = *(v11 + 851);
    if (v25 && (gBreakOnError & 1) != 0)
    {
      v33 = 3;
      v34 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v21 & 2) == 0)
      {
LABEL_35:
        v26 = [DYGetGLGuestAppClient() defaultFbufStream];
        v27 = v26;
        while (atomic_exchange(v26 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v27 + 14);
        v28 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v28 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_43;
      }

      v33 = 2;
      v34 = 790;
    }

    breakpoint_break(v37, v34, v33, v25, v11);
    goto LABEL_35;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v11[3] + 7896))(a1, a2, a3);
LABEL_43:
  if (v37[0])
  {
    free(v37[0]);
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v30 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v30 >= 1)
    {
LABEL_47:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v31 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v31, 0, do_nothing);
      v32 = *(v11[3] + 7896);

      v32(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = GPUTools::GL::dy_light_model_param_component_count(a2, v14);
    snprintf(v11 + 4709, 0x20uLL, "Ce@%d", v15);
    if (a2 == 33272)
    {
      v16 = "e";
    }

    else
    {
      v16 = "x";
    }

    strlcat(v11 + 4709, v16, 0x40uLL);
    GPUTools::FB::Encode(v37, 790, 0, v11 + 4709, v17, v18, v19, v20, *v11, a2, a3);
    v21 = byte_21B16E;
    if (byte_21B16E)
    {
      breakpoint_break(v37, (&stru_2E8.size + 6), 1, *(v11 + 851), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(v11[4] + 7896))(a1, a2, a3);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v37[0];
        *(v37[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v35 = __udivti3();
        v36 = v37[0];
        *(v37[0] + 3) = v35;
        v36[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_26;
        }
      }

      check_errors(v11);
    }

LABEL_26:
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
      encode_driver_events(v11, v37);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, v37);
    v25 = *(v11 + 851);
    if (v25 && (gBreakOnError & 1) != 0)
    {
      v33 = 3;
      v34 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v21 & 2) == 0)
      {
LABEL_35:
        v26 = [DYGetGLGuestAppClient() defaultFbufStream];
        v27 = v26;
        while (atomic_exchange(v26 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v27 + 14);
        v28 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v28 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_43;
      }

      v33 = 2;
      v34 = 790;
    }

    breakpoint_break(v37, v34, v33, v25, v11);
    goto LABEL_35;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v11[3] + 7896))(a1, a2, a3);
LABEL_43:
  if (v37[0])
  {
    free(v37[0]);
  }
}

void sub_9BDC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void lightx(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v38 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v38 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v39 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v39, 0, do_nothing);
      v40 = *(*(v13 + 24) + 7904);

      v40(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  __ptr = 0;
  v49 = 0;
  v50 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = __ptr;
    v16 = v49;
    v18 = v49 - __ptr;
    v19 = v50;
    if (v50 - (v49 - __ptr) <= 0x3F)
    {
      v50 += 256;
      v17 = malloc_type_malloc(v19 + 256, 0xF962E99uLL);
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

    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    v20 = v16 + 64;
    v49 = v16 + 64;
    v21 = v16 + 64 - v17;
    *v17 = v21;
    v22 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v23 = v22 - v21;
    if (v22 == v21)
    {
      goto LABEL_23;
    }

    v24 = __ptr;
    v25 = v20 - __ptr;
    v26 = v50;
    v27 = v50 - (v20 - __ptr);
    if (v23 <= v27)
    {
      v28 = v49;
LABEL_22:
      bzero(v20, v23);
      v49 = &v28[v23];
      *v24 += v23;
LABEL_23:
      v17[1] = 791;
      v17[8] = 0;
      v47 = 0;
      pthread_threadid_np(0, &v47);
      *(v17 + 1) = v47;
      strcpy(v17 + 36, "Ceex");
      *(v17 + 11) = *v13;
      v17[13] = a2;
      v17[14] = a3;
      v17[15] = a4;
      v29 = byte_21B16F;
      if (byte_21B16F)
      {
        breakpoint_break(&__ptr, (&stru_2E8.size + 7), 1, *(v13 + 3404), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v29 & 4))
      {
        v30 = mach_absolute_time();
        (*(*(v13 + 32) + 7904))(a1, a2, a3, a4);
        v31 = mach_absolute_time() - v30;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v32 = __ptr;
          *(__ptr + 2) = v30;
          v32[3] = v31;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v43 = __udivti3();
          v44 = __ptr;
          *(__ptr + 3) = v43;
          v44[2] = __udivti3();
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
      v33 = *(v13 + 3404);
      if (v33 && (gBreakOnError & 1) != 0)
      {
        v41 = 3;
        v42 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v29 & 2) == 0)
        {
LABEL_37:
          v34 = [DYGetGLGuestAppClient() defaultFbufStream];
          v35 = v34;
          while (atomic_exchange(v34 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v35 + 14);
          v36 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v36 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_45;
        }

        v41 = 2;
        v42 = 791;
      }

      breakpoint_break(&__ptr, v42, v41, v33, v13);
      goto LABEL_37;
    }

    v45 = (v23 - v27 + 255) & 0xFFFFFF00;
    v46 = v45 + v50;
    v50 += v45;
    if (__ptr)
    {
      v24 = reallocf(__ptr, v46);
      __ptr = v24;
      if (v24)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v24 = malloc_type_malloc(v45 + v26, 0xF962E99uLL);
      __ptr = v24;
      if (v24)
      {
LABEL_63:
        if ((v24 & 3) == 0)
        {
          v28 = v24 + v25;
          v20 = v28;
          goto LABEL_22;
        }

        v17 = v24;
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
  (*(*(v13 + 24) + 7904))(a1, a2, a3, a4);
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
    v38 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v38 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v39 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v39, 0, do_nothing);
      v40 = *(*(v13 + 24) + 7904);

      v40(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  __ptr = 0;
  v49 = 0;
  v50 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = __ptr;
    v16 = v49;
    v18 = v49 - __ptr;
    v19 = v50;
    if (v50 - (v49 - __ptr) <= 0x3F)
    {
      v50 += 256;
      v17 = malloc_type_malloc(v19 + 256, 0xF962E99uLL);
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

    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    v20 = v16 + 64;
    v49 = v16 + 64;
    v21 = v16 + 64 - v17;
    *v17 = v21;
    v22 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v23 = v22 - v21;
    if (v22 == v21)
    {
      goto LABEL_23;
    }

    v24 = __ptr;
    v25 = v20 - __ptr;
    v26 = v50;
    v27 = v50 - (v20 - __ptr);
    if (v23 <= v27)
    {
      v28 = v49;
LABEL_22:
      bzero(v20, v23);
      v49 = &v28[v23];
      *v24 += v23;
LABEL_23:
      v17[1] = 791;
      v17[8] = 0;
      v47 = 0;
      pthread_threadid_np(0, &v47);
      *(v17 + 1) = v47;
      strcpy(v17 + 36, "Ceex");
      *(v17 + 11) = *v13;
      v17[13] = a2;
      v17[14] = a3;
      v17[15] = a4;
      v29 = byte_21B16F;
      if (byte_21B16F)
      {
        breakpoint_break(&__ptr, (&stru_2E8.size + 7), 1, *(v13 + 3404), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v29 & 4))
      {
        v30 = mach_absolute_time();
        (*(*(v13 + 32) + 7904))(a1, a2, a3, a4);
        v31 = mach_absolute_time() - v30;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v32 = __ptr;
          *(__ptr + 2) = v30;
          v32[3] = v31;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v43 = __udivti3();
          v44 = __ptr;
          *(__ptr + 3) = v43;
          v44[2] = __udivti3();
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
      v33 = *(v13 + 3404);
      if (v33 && (gBreakOnError & 1) != 0)
      {
        v41 = 3;
        v42 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v29 & 2) == 0)
        {
LABEL_37:
          v34 = [DYGetGLGuestAppClient() defaultFbufStream];
          v35 = v34;
          while (atomic_exchange(v34 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v35 + 14);
          v36 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v36 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_45;
        }

        v41 = 2;
        v42 = 791;
      }

      breakpoint_break(&__ptr, v42, v41, v33, v13);
      goto LABEL_37;
    }

    v45 = (v23 - v27 + 255) & 0xFFFFFF00;
    v46 = v45 + v50;
    v50 += v45;
    if (__ptr)
    {
      v24 = reallocf(__ptr, v46);
      __ptr = v24;
      if (v24)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v24 = malloc_type_malloc(v45 + v26, 0xF962E99uLL);
      __ptr = v24;
      if (v24)
      {
LABEL_63:
        if ((v24 & 3) == 0)
        {
          v28 = v24 + v25;
          v20 = v28;
          goto LABEL_22;
        }

        v17 = v24;
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
  (*(*(v13 + 24) + 7904))(a1, a2, a3, a4);
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
      v18 = *(*(v13 + 24) + 7904);

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

  (*(*(v13 + 32) + 7904))(a1, a2, a3, a4);
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
      v21 = *(*(v13 + 24) + 7904);

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
  (*(*(v13 + 32) + 7904))(a1, a2, a3, a4);
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

void sub_9C380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void lightxv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, const int *a4)
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
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_44:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(v13[3] + 7912);

      v33(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = GPUTools::GL::dy_light_array_size(a3, v16);
    snprintf(v13 + 4709, 0x40uLL, "Cee@%dx", v17);
    GPUTools::FB::Encode(v38, 792, 0, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B170;
    if (byte_21B170)
    {
      breakpoint_break(v38, &stru_2E8.offset, 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(v13[4] + 7912))(a1, a2, a3, a4);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v38[0];
        *(v38[0] + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v36 = __udivti3();
        v37 = v38[0];
        *(v38[0] + 3) = v36;
        v37[2] = __udivti3();
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

    if (*(v13 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v13, v38);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, v38);
    v26 = *(v13 + 851);
    if (v26 && (gBreakOnError & 1) != 0)
    {
      v34 = 3;
      v35 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
LABEL_32:
        v27 = [DYGetGLGuestAppClient() defaultFbufStream];
        v28 = v27;
        while (atomic_exchange(v27 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v28 + 14);
        v29 = atomic_fetch_add(v13 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v29 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_40;
      }

      v34 = 2;
      v35 = 792;
    }

    breakpoint_break(v38, v35, v34, v26, v13);
    goto LABEL_32;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 7912))(a1, a2, a3, a4);
LABEL_40:
  if (v38[0])
  {
    free(v38[0]);
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
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_44:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(v13[3] + 7912);

      v33(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = GPUTools::GL::dy_light_array_size(a3, v16);
    snprintf(v13 + 4709, 0x40uLL, "Cee@%dx", v17);
    GPUTools::FB::Encode(v38, 792, 0, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B170;
    if (byte_21B170)
    {
      breakpoint_break(v38, &stru_2E8.offset, 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(v13[4] + 7912))(a1, a2, a3, a4);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v38[0];
        *(v38[0] + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v36 = __udivti3();
        v37 = v38[0];
        *(v38[0] + 3) = v36;
        v37[2] = __udivti3();
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

    if (*(v13 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v13, v38);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, v38);
    v26 = *(v13 + 851);
    if (v26 && (gBreakOnError & 1) != 0)
    {
      v34 = 3;
      v35 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
LABEL_32:
        v27 = [DYGetGLGuestAppClient() defaultFbufStream];
        v28 = v27;
        while (atomic_exchange(v27 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v28 + 14);
        v29 = atomic_fetch_add(v13 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v29 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_40;
      }

      v34 = 2;
      v35 = 792;
    }

    breakpoint_break(v38, v35, v34, v26, v13);
    goto LABEL_32;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 7912))(a1, a2, a3, a4);
LABEL_40:
  if (v38[0])
  {
    free(v38[0]);
  }
}

void sub_9C7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void line_widthx(__GLIContextRec *a1, uint64_t a2)
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
      line_widthx((v9 + 4640));
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
    if (v16 <= 0x33)
    {
      v36 = (307 - v16) & 0x100;
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

    *(v12 + 12) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 52;
    v45 = v12 + 52;
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
      *(v13 + 1) = 793;
      *(v13 + 8) = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v13 + 1) = v43;
      strcpy(v13 + 36, "Cx");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21B171;
      if (byte_21B171)
      {
        breakpoint_break(&__ptr, (&stru_2E8.offset + 1), 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 7920))(a1, a2);
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
        v38 = 793;
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
  (*(*(v9 + 24) + 7920))(a1, a2);
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
      line_widthx((v9 + 4640));
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
    if (v16 <= 0x33)
    {
      v36 = (307 - v16) & 0x100;
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

    *(v12 + 12) = 0;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 52;
    v45 = v12 + 52;
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
      *(v13 + 1) = 793;
      *(v13 + 8) = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v13 + 1) = v43;
      strcpy(v13 + 36, "Cx");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21B171;
      if (byte_21B171)
      {
        breakpoint_break(&__ptr, (&stru_2E8.offset + 1), 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 7920))(a1, a2);
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
        v38 = 793;
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
  (*(*(v9 + 24) + 7920))(a1, a2);
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
      line_widthx((v9 + 4640));
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
    v13 = *(*(v9 + 24) + 7920);

    v13(a1, a2);
  }

  else
  {
    (*(*(v9 + 32) + 7920))(a1, a2);
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
      line_widthx((v9 + 4640));
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
    v16 = *(*(v9 + 24) + 7920);

    v16(a1, a2);
  }

  else
  {
    v12 = mach_absolute_time();
    (*(*(v9 + 32) + 7920))(a1, a2);
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

void sub_9CD2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void load_matrixx(__GLIContextRec *a1, const int *a2)
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
      load_matrixx((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v38 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v38 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v48 = 0;
  v49 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v48;
    v14 = v48 - __ptr;
    v15 = v49;
    v16 = v49 - (v48 - __ptr);
    if (v16 <= 0x73)
    {
      v39 = (371 - v16) & 0x100;
      v49 += v39;
      v13 = malloc_type_malloc(v39 + v15, 0xF962E99uLL);
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

      v12 = v13 + v14;
    }

    *(v12 + 28) = 0;
    *(v12 + 5) = 0u;
    *(v12 + 6) = 0u;
    *(v12 + 3) = 0u;
    *(v12 + 4) = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 116;
    v48 = v12 + 116;
    v18 = v12 + 116 - v13;
    *v13 = v18;
    v19 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v19 - v18;
    if (v19 == v18)
    {
      goto LABEL_23;
    }

    v21 = __ptr;
    v22 = v17 - __ptr;
    v23 = v49;
    v24 = v49 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v48;
LABEL_22:
      bzero(v17, v20);
      v48 = &v25[v20];
      *v21 += v20;
LABEL_23:
      v13[1] = 794;
      v13[8] = 0;
      v46 = 0;
      pthread_threadid_np(0, &v46);
      *(v13 + 1) = v46;
      strcpy(v13 + 36, "C@16x");
      *(v13 + 11) = *v9;
      v26 = *a2;
      v27 = *(a2 + 1);
      v28 = *(a2 + 2);
      *(v13 + 25) = *(a2 + 3);
      *(v13 + 21) = v28;
      *(v13 + 17) = v27;
      *(v13 + 13) = v26;
      v29 = byte_21B172;
      if (byte_21B172)
      {
        breakpoint_break(&__ptr, (&stru_2E8.offset + 2), 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v29 & 4))
      {
        v30 = mach_absolute_time();
        (*(*(v9 + 32) + 7928))(a1, a2);
        v31 = mach_absolute_time() - v30;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v32 = __ptr;
          *(__ptr + 2) = v30;
          v32[3] = v31;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v42 = __udivti3();
          v43 = __ptr;
          *(__ptr + 3) = v42;
          v43[2] = __udivti3();
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
      v33 = *(v9 + 3404);
      if (v33 && (gBreakOnError & 1) != 0)
      {
        v40 = 3;
        v41 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v29 & 2) == 0)
        {
LABEL_37:
          v34 = [DYGetGLGuestAppClient() defaultFbufStream];
          v35 = v34;
          while (atomic_exchange(v34 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v35 + 14);
          v36 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v36 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v40 = 2;
        v41 = 794;
      }

      breakpoint_break(&__ptr, v41, v40, v33, v9);
      goto LABEL_37;
    }

    v44 = (v20 - v24 + 255) & 0xFFFFFF00;
    v45 = v44 + v49;
    v49 += v44;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v45);
      __ptr = v21;
      if (v21)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v44 + v23, 0xF962E99uLL);
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
  (*(*(v9 + 24) + 7928))(a1, a2);
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
      load_matrixx((v9 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v38 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v38 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v9 + 4838) = 1;
  __ptr = 0;
  v48 = 0;
  v49 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v13 = __ptr;
    v12 = v48;
    v14 = v48 - __ptr;
    v15 = v49;
    v16 = v49 - (v48 - __ptr);
    if (v16 <= 0x73)
    {
      v39 = (371 - v16) & 0x100;
      v49 += v39;
      v13 = malloc_type_malloc(v39 + v15, 0xF962E99uLL);
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

      v12 = v13 + v14;
    }

    *(v12 + 28) = 0;
    *(v12 + 5) = 0u;
    *(v12 + 6) = 0u;
    *(v12 + 3) = 0u;
    *(v12 + 4) = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v17 = v12 + 116;
    v48 = v12 + 116;
    v18 = v12 + 116 - v13;
    *v13 = v18;
    v19 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v20 = v19 - v18;
    if (v19 == v18)
    {
      goto LABEL_23;
    }

    v21 = __ptr;
    v22 = v17 - __ptr;
    v23 = v49;
    v24 = v49 - (v17 - __ptr);
    if (v20 <= v24)
    {
      v25 = v48;
LABEL_22:
      bzero(v17, v20);
      v48 = &v25[v20];
      *v21 += v20;
LABEL_23:
      v13[1] = 794;
      v13[8] = 0;
      v46 = 0;
      pthread_threadid_np(0, &v46);
      *(v13 + 1) = v46;
      strcpy(v13 + 36, "C@16x");
      *(v13 + 11) = *v9;
      v26 = *a2;
      v27 = *(a2 + 1);
      v28 = *(a2 + 2);
      *(v13 + 25) = *(a2 + 3);
      *(v13 + 21) = v28;
      *(v13 + 17) = v27;
      *(v13 + 13) = v26;
      v29 = byte_21B172;
      if (byte_21B172)
      {
        breakpoint_break(&__ptr, (&stru_2E8.offset + 2), 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v29 & 4))
      {
        v30 = mach_absolute_time();
        (*(*(v9 + 32) + 7928))(a1, a2);
        v31 = mach_absolute_time() - v30;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v32 = __ptr;
          *(__ptr + 2) = v30;
          v32[3] = v31;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v42 = __udivti3();
          v43 = __ptr;
          *(__ptr + 3) = v42;
          v43[2] = __udivti3();
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
      v33 = *(v9 + 3404);
      if (v33 && (gBreakOnError & 1) != 0)
      {
        v40 = 3;
        v41 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v29 & 2) == 0)
        {
LABEL_37:
          v34 = [DYGetGLGuestAppClient() defaultFbufStream];
          v35 = v34;
          while (atomic_exchange(v34 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v35 + 14);
          v36 = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v36 >= 1)
          {
            handle_opengl_thread_conflict(v9);
          }

          goto LABEL_45;
        }

        v40 = 2;
        v41 = 794;
      }

      breakpoint_break(&__ptr, v41, v40, v33, v9);
      goto LABEL_37;
    }

    v44 = (v20 - v24 + 255) & 0xFFFFFF00;
    v45 = v44 + v49;
    v49 += v44;
    if (__ptr)
    {
      v21 = reallocf(__ptr, v45);
      __ptr = v21;
      if (v21)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v21 = malloc_type_malloc(v44 + v23, 0xF962E99uLL);
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
  (*(*(v9 + 24) + 7928))(a1, a2);
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
      load_matrixx((v9 + 4640));
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
    v13 = *(*(v9 + 24) + 7928);

    v13(a1, a2);
  }

  else
  {
    (*(*(v9 + 32) + 7928))(a1, a2);
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
      load_matrixx((v9 + 4640));
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
    v16 = *(*(v9 + 24) + 7928);

    v16(a1, a2);
  }

  else
  {
    v12 = mach_absolute_time();
    (*(*(v9 + 32) + 7928))(a1, a2);
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

void sub_9D2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void materialx(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v38 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v38 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v39 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v39, 0, do_nothing);
      v40 = *(*(v13 + 24) + 7936);

      v40(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  __ptr = 0;
  v49 = 0;
  v50 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = __ptr;
    v16 = v49;
    v18 = v49 - __ptr;
    v19 = v50;
    if (v50 - (v49 - __ptr) <= 0x3F)
    {
      v50 += 256;
      v17 = malloc_type_malloc(v19 + 256, 0xF962E99uLL);
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

    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    v20 = v16 + 64;
    v49 = v16 + 64;
    v21 = v16 + 64 - v17;
    *v17 = v21;
    v22 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v23 = v22 - v21;
    if (v22 == v21)
    {
      goto LABEL_23;
    }

    v24 = __ptr;
    v25 = v20 - __ptr;
    v26 = v50;
    v27 = v50 - (v20 - __ptr);
    if (v23 <= v27)
    {
      v28 = v49;
LABEL_22:
      bzero(v20, v23);
      v49 = &v28[v23];
      *v24 += v23;
LABEL_23:
      v17[1] = 796;
      v17[8] = 0;
      v47 = 0;
      pthread_threadid_np(0, &v47);
      *(v17 + 1) = v47;
      strcpy(v17 + 36, "Ceex");
      *(v17 + 11) = *v13;
      v17[13] = a2;
      v17[14] = a3;
      v17[15] = a4;
      v29 = byte_21B174;
      if (byte_21B174)
      {
        breakpoint_break(&__ptr, &stru_2E8.align, 1, *(v13 + 3404), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v29 & 4))
      {
        v30 = mach_absolute_time();
        (*(*(v13 + 32) + 7936))(a1, a2, a3, a4);
        v31 = mach_absolute_time() - v30;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v32 = __ptr;
          *(__ptr + 2) = v30;
          v32[3] = v31;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v43 = __udivti3();
          v44 = __ptr;
          *(__ptr + 3) = v43;
          v44[2] = __udivti3();
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
      v33 = *(v13 + 3404);
      if (v33 && (gBreakOnError & 1) != 0)
      {
        v41 = 3;
        v42 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v29 & 2) == 0)
        {
LABEL_37:
          v34 = [DYGetGLGuestAppClient() defaultFbufStream];
          v35 = v34;
          while (atomic_exchange(v34 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v35 + 14);
          v36 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v36 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_45;
        }

        v41 = 2;
        v42 = 796;
      }

      breakpoint_break(&__ptr, v42, v41, v33, v13);
      goto LABEL_37;
    }

    v45 = (v23 - v27 + 255) & 0xFFFFFF00;
    v46 = v45 + v50;
    v50 += v45;
    if (__ptr)
    {
      v24 = reallocf(__ptr, v46);
      __ptr = v24;
      if (v24)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v24 = malloc_type_malloc(v45 + v26, 0xF962E99uLL);
      __ptr = v24;
      if (v24)
      {
LABEL_63:
        if ((v24 & 3) == 0)
        {
          v28 = v24 + v25;
          v20 = v28;
          goto LABEL_22;
        }

        v17 = v24;
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
  (*(*(v13 + 24) + 7936))(a1, a2, a3, a4);
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
    v38 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v38 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v39 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v39, 0, do_nothing);
      v40 = *(*(v13 + 24) + 7936);

      v40(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  __ptr = 0;
  v49 = 0;
  v50 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = __ptr;
    v16 = v49;
    v18 = v49 - __ptr;
    v19 = v50;
    if (v50 - (v49 - __ptr) <= 0x3F)
    {
      v50 += 256;
      v17 = malloc_type_malloc(v19 + 256, 0xF962E99uLL);
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

    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    v20 = v16 + 64;
    v49 = v16 + 64;
    v21 = v16 + 64 - v17;
    *v17 = v21;
    v22 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v23 = v22 - v21;
    if (v22 == v21)
    {
      goto LABEL_23;
    }

    v24 = __ptr;
    v25 = v20 - __ptr;
    v26 = v50;
    v27 = v50 - (v20 - __ptr);
    if (v23 <= v27)
    {
      v28 = v49;
LABEL_22:
      bzero(v20, v23);
      v49 = &v28[v23];
      *v24 += v23;
LABEL_23:
      v17[1] = 796;
      v17[8] = 0;
      v47 = 0;
      pthread_threadid_np(0, &v47);
      *(v17 + 1) = v47;
      strcpy(v17 + 36, "Ceex");
      *(v17 + 11) = *v13;
      v17[13] = a2;
      v17[14] = a3;
      v17[15] = a4;
      v29 = byte_21B174;
      if (byte_21B174)
      {
        breakpoint_break(&__ptr, &stru_2E8.align, 1, *(v13 + 3404), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v29 & 4))
      {
        v30 = mach_absolute_time();
        (*(*(v13 + 32) + 7936))(a1, a2, a3, a4);
        v31 = mach_absolute_time() - v30;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v32 = __ptr;
          *(__ptr + 2) = v30;
          v32[3] = v31;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v43 = __udivti3();
          v44 = __ptr;
          *(__ptr + 3) = v43;
          v44[2] = __udivti3();
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
      v33 = *(v13 + 3404);
      if (v33 && (gBreakOnError & 1) != 0)
      {
        v41 = 3;
        v42 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v29 & 2) == 0)
        {
LABEL_37:
          v34 = [DYGetGLGuestAppClient() defaultFbufStream];
          v35 = v34;
          while (atomic_exchange(v34 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v35 + 14);
          v36 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v36 >= 1)
          {
            handle_opengl_thread_conflict(v13);
          }

          goto LABEL_45;
        }

        v41 = 2;
        v42 = 796;
      }

      breakpoint_break(&__ptr, v42, v41, v33, v13);
      goto LABEL_37;
    }

    v45 = (v23 - v27 + 255) & 0xFFFFFF00;
    v46 = v45 + v50;
    v50 += v45;
    if (__ptr)
    {
      v24 = reallocf(__ptr, v46);
      __ptr = v24;
      if (v24)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v24 = malloc_type_malloc(v45 + v26, 0xF962E99uLL);
      __ptr = v24;
      if (v24)
      {
LABEL_63:
        if ((v24 & 3) == 0)
        {
          v28 = v24 + v25;
          v20 = v28;
          goto LABEL_22;
        }

        v17 = v24;
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
  (*(*(v13 + 24) + 7936))(a1, a2, a3, a4);
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
      v18 = *(*(v13 + 24) + 7936);

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

  (*(*(v13 + 32) + 7936))(a1, a2, a3, a4);
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
      v21 = *(*(v13 + 24) + 7936);

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
  (*(*(v13 + 32) + 7936))(a1, a2, a3, a4);
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