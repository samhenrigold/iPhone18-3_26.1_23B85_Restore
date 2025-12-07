void sub_7DB0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void bind_sampler(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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
      v39 = *(*(v11 + 24) + 6424);

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
      v15[1] = 850;
      v15[8] = 0;
      v47 = 0;
      pthread_threadid_np(0, &v47);
      *(v15 + 1) = v47;
      strcpy(v15 + 36, "Cuiui");
      *(v15 + 11) = *v11;
      v15[13] = a2;
      v15[14] = a3;
      v28 = byte_21B1AA;
      if (byte_21B1AA)
      {
        breakpoint_break(&__ptr, &stru_338.segname[10], 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 6424))(a1, a2, a3);
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
        v42 = 850;
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
  (*(*(v11 + 24) + 6424))(a1, a2, a3);
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
      v39 = *(*(v11 + 24) + 6424);

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
      v15[1] = 850;
      v15[8] = 0;
      v47 = 0;
      pthread_threadid_np(0, &v47);
      *(v15 + 1) = v47;
      strcpy(v15 + 36, "Cuiui");
      *(v15 + 11) = *v11;
      v15[13] = a2;
      v15[14] = a3;
      v28 = byte_21B1AA;
      if (byte_21B1AA)
      {
        breakpoint_break(&__ptr, &stru_338.segname[10], 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 6424))(a1, a2, a3);
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
        v42 = 850;
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
  (*(*(v11 + 24) + 6424))(a1, a2, a3);
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
      v16 = *(*(v11 + 24) + 6424);

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

  (*(*(v11 + 32) + 6424))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 6424);

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
  (*(*(v11 + 32) + 6424))(a1, a2, a3);
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

void sub_7E0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sampler_parameteri(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, uint64_t a4)
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
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(v13[3] + 6432);

      v33(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v38 = 0;
    GPUTools::GL::DYGetTextureParameterInfo(a3, 0, &v38, v16);
    v17 = 105;
    if (v38)
    {
      v17 = 101;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cuie%c", v17);
    GPUTools::FB::Encode(v39, 872, 0, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B1C0;
    if (byte_21B1C0)
    {
      breakpoint_break(v39, &stru_338.offset, 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(v13[4] + 6432))(a1, a2, a3, a4);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v39[0];
        *(v39[0] + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v36 = __udivti3();
        v37 = v39[0];
        *(v39[0] + 3) = v36;
        v37[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
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
      encode_driver_events(v13, v39);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, v39);
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
LABEL_34:
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

        goto LABEL_42;
      }

      v34 = 2;
      v35 = 872;
    }

    breakpoint_break(v39, v35, v34, v26, v13);
    goto LABEL_34;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 6432))(a1, a2, a3, a4);
LABEL_42:
  if (v39[0])
  {
    free(v39[0]);
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
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(v13[3] + 6432);

      v33(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v38 = 0;
    GPUTools::GL::DYGetTextureParameterInfo(a3, 0, &v38, v16);
    v17 = 105;
    if (v38)
    {
      v17 = 101;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cuie%c", v17);
    GPUTools::FB::Encode(v39, 872, 0, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B1C0;
    if (byte_21B1C0)
    {
      breakpoint_break(v39, &stru_338.offset, 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(v13[4] + 6432))(a1, a2, a3, a4);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v39[0];
        *(v39[0] + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v36 = __udivti3();
        v37 = v39[0];
        *(v39[0] + 3) = v36;
        v37[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
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
      encode_driver_events(v13, v39);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, v39);
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
LABEL_34:
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

        goto LABEL_42;
      }

      v34 = 2;
      v35 = 872;
    }

    breakpoint_break(v39, v35, v34, v26, v13);
    goto LABEL_34;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 6432))(a1, a2, a3, a4);
LABEL_42:
  if (v39[0])
  {
    free(v39[0]);
  }
}

void sub_7E554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sampler_parameteriv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, const int *a4)
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
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(v13[3] + 6440);

      v33(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v38, 0, sizeof(v38));
    GPUTools::GL::DYGetTextureParameterInfo(a3, &v38[1], v38, v16);
    v17 = 105;
    if (v38[0])
    {
      v17 = 101;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cuie@%u%c", *&v38[1], v17);
    GPUTools::FB::Encode(v39, 873, 0, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B1C1;
    if (byte_21B1C1)
    {
      breakpoint_break(v39, (&stru_338.offset + 1), 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(v13[4] + 6440))(a1, a2, a3, a4);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v39[0];
        *(v39[0] + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v36 = __udivti3();
        v37 = v39[0];
        *(v39[0] + 3) = v36;
        v37[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
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
      encode_driver_events(v13, v39);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, v39);
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
LABEL_34:
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

        goto LABEL_42;
      }

      v34 = 2;
      v35 = 873;
    }

    breakpoint_break(v39, v35, v34, v26, v13);
    goto LABEL_34;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 6440))(a1, a2, a3, a4);
LABEL_42:
  if (v39[0])
  {
    free(v39[0]);
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
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(v13[3] + 6440);

      v33(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v38, 0, sizeof(v38));
    GPUTools::GL::DYGetTextureParameterInfo(a3, &v38[1], v38, v16);
    v17 = 105;
    if (v38[0])
    {
      v17 = 101;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cuie@%u%c", *&v38[1], v17);
    GPUTools::FB::Encode(v39, 873, 0, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B1C1;
    if (byte_21B1C1)
    {
      breakpoint_break(v39, (&stru_338.offset + 1), 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(v13[4] + 6440))(a1, a2, a3, a4);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v39[0];
        *(v39[0] + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v36 = __udivti3();
        v37 = v39[0];
        *(v39[0] + 3) = v36;
        v37[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
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
      encode_driver_events(v13, v39);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, v39);
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
LABEL_34:
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

        goto LABEL_42;
      }

      v34 = 2;
      v35 = 873;
    }

    breakpoint_break(v39, v35, v34, v26, v13);
    goto LABEL_34;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 6440))(a1, a2, a3, a4);
LABEL_42:
  if (v39[0])
  {
    free(v39[0]);
  }
}

void sub_7E9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sampler_parameterf(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, float a4)
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
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(v13[3] + 6448);
      v34.n128_f32[0] = a4;

      v33(a1, a2, a3, v34);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v39 = 0;
    GPUTools::GL::DYGetTextureParameterInfo(a3, 0, &v39, v16);
    v17 = 102;
    if (v39)
    {
      v17 = 110;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cuie%c", v17);
    GPUTools::FB::Encode(v40, 870, 0, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B1BE;
    if (byte_21B1BE)
    {
      breakpoint_break(v40, (&stru_338.size + 6), 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(v13[4] + 6448))(a1, a2, a3, a4);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v40[0];
        *(v40[0] + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v40[0];
        *(v40[0] + 3) = v37;
        v38[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
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
      encode_driver_events(v13, v40);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, v40);
    v26 = *(v13 + 851);
    if (v26 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
LABEL_34:
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

        goto LABEL_42;
      }

      v35 = 2;
      v36 = 870;
    }

    breakpoint_break(v40, v36, v35, v26, v13);
    goto LABEL_34;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 6448))(a1, a2, a3, a4);
LABEL_42:
  if (v40[0])
  {
    free(v40[0]);
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
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(v13[3] + 6448);
      v34.n128_f32[0] = a4;

      v33(a1, a2, a3, v34);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v39 = 0;
    GPUTools::GL::DYGetTextureParameterInfo(a3, 0, &v39, v16);
    v17 = 102;
    if (v39)
    {
      v17 = 110;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cuie%c", v17);
    GPUTools::FB::Encode(v40, 870, 0, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B1BE;
    if (byte_21B1BE)
    {
      breakpoint_break(v40, (&stru_338.size + 6), 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(v13[4] + 6448))(a1, a2, a3, a4);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v40[0];
        *(v40[0] + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v40[0];
        *(v40[0] + 3) = v37;
        v38[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
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
      encode_driver_events(v13, v40);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, v40);
    v26 = *(v13 + 851);
    if (v26 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v22 & 2) == 0)
      {
LABEL_34:
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

        goto LABEL_42;
      }

      v35 = 2;
      v36 = 870;
    }

    breakpoint_break(v40, v36, v35, v26, v13);
    goto LABEL_34;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 6448))(a1, a2, a3, a4);
LABEL_42:
  if (v40[0])
  {
    free(v40[0]);
  }
}

void sub_7EE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void sampler_parameterfv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, const float *a4)
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
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(v13[3] + 6456);

      v33(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v38, 0, sizeof(v38));
    GPUTools::GL::DYGetTextureParameterInfo(a3, &v38[1], v38, v16);
    v17 = 102;
    if (v38[0])
    {
      v17 = 110;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cuie@%u%c", *&v38[1], v17);
    GPUTools::FB::Encode(v39, 871, 0, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B1BF;
    if (byte_21B1BF)
    {
      breakpoint_break(v39, (&stru_338.size + 7), 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(v13[4] + 6456))(a1, a2, a3, a4);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v39[0];
        *(v39[0] + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v36 = __udivti3();
        v37 = v39[0];
        *(v39[0] + 3) = v36;
        v37[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
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
      encode_driver_events(v13, v39);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, v39);
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
LABEL_34:
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

        goto LABEL_42;
      }

      v34 = 2;
      v35 = 871;
    }

    breakpoint_break(v39, v35, v34, v26, v13);
    goto LABEL_34;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 6456))(a1, a2, a3, a4);
LABEL_42:
  if (v39[0])
  {
    free(v39[0]);
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
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(v13[3] + 6456);

      v33(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    memset(v38, 0, sizeof(v38));
    GPUTools::GL::DYGetTextureParameterInfo(a3, &v38[1], v38, v16);
    v17 = 102;
    if (v38[0])
    {
      v17 = 110;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cuie@%u%c", *&v38[1], v17);
    GPUTools::FB::Encode(v39, 871, 0, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B1BF;
    if (byte_21B1BF)
    {
      breakpoint_break(v39, (&stru_338.size + 7), 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(v13[4] + 6456))(a1, a2, a3, a4);
      v24 = mach_absolute_time() - v23;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v25 = v39[0];
        *(v39[0] + 2) = v23;
        v25[3] = v24;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v36 = __udivti3();
        v37 = v39[0];
        *(v39[0] + 3) = v36;
        v37[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v13);
    }

LABEL_25:
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
      encode_driver_events(v13, v39);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, v39);
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
LABEL_34:
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

        goto LABEL_42;
      }

      v34 = 2;
      v35 = 871;
    }

    breakpoint_break(v39, v35, v34, v26, v13);
    goto LABEL_34;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 6456))(a1, a2, a3, a4);
LABEL_42:
  if (v39[0])
  {
    free(v39[0]);
  }
}

void sub_7F2F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void get_sampler_parameteriv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, int *a4)
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
      v38 = *(v13[3] + 6480);

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
    v17 = 105;
    if (v44[0])
    {
      v17 = 101;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cuie@%u%c", *&v44[1], v17);
    GPUTools::FB::Encode(&v45, 862, 256, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B1B6;
    if (byte_21B1B6)
    {
      breakpoint_break(&v45, (&stru_338.addr + 6), 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(v13[4] + 6480))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v45, 862, 256, v13 + 4709, v23, v24, v25, v26, *v13, a2, a3, a4);
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
      v40 = 862;
    }

    breakpoint_break(&v45, v40, v39, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 6480))(a1, a2, a3, a4);
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
      v38 = *(v13[3] + 6480);

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
    v17 = 105;
    if (v44[0])
    {
      v17 = 101;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cuie@%u%c", *&v44[1], v17);
    GPUTools::FB::Encode(&v45, 862, 256, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B1B6;
    if (byte_21B1B6)
    {
      breakpoint_break(&v45, (&stru_338.addr + 6), 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(v13[4] + 6480))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v45, 862, 256, v13 + 4709, v23, v24, v25, v26, *v13, a2, a3, a4);
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
      v40 = 862;
    }

    breakpoint_break(&v45, v40, v39, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 6480))(a1, a2, a3, a4);
LABEL_44:
  if (v45)
  {
    free(v45);
  }
}

void sub_7F7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_sampler_parameterfv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, float *a4)
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
      v38 = *(v13[3] + 6488);

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
    v17 = 102;
    if (v44[0])
    {
      v17 = 110;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cuie@%u%c", *&v44[1], v17);
    GPUTools::FB::Encode(&v45, 861, 256, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B1B5;
    if (byte_21B1B5)
    {
      breakpoint_break(&v45, (&stru_338.addr + 5), 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(v13[4] + 6488))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v45, 861, 256, v13 + 4709, v23, v24, v25, v26, *v13, a2, a3, a4);
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
      v40 = 861;
    }

    breakpoint_break(&v45, v40, v39, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 6488))(a1, a2, a3, a4);
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
      v38 = *(v13[3] + 6488);

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
    v17 = 102;
    if (v44[0])
    {
      v17 = 110;
    }

    snprintf(v13 + 4709, 0x40uLL, "Cuie@%u%c", *&v44[1], v17);
    GPUTools::FB::Encode(&v45, 861, 256, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21B1B5;
    if (byte_21B1B5)
    {
      breakpoint_break(&v45, (&stru_338.addr + 5), 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v27 = mach_absolute_time();
      (*(v13[4] + 6488))(a1, a2, a3, a4);
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

    GPUTools::FB::Encode(&v45, 861, 256, v13 + 4709, v23, v24, v25, v26, *v13, a2, a3, a4);
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
      v40 = 861;
    }

    breakpoint_break(&v45, v40, v39, v31, v13);
    goto LABEL_36;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 6488))(a1, a2, a3, a4);
LABEL_44:
  if (v45)
  {
    free(v45);
  }
}

void sub_7FCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void label_object_EXT(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
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
  v16 = atomic_fetch_add(v15 + 1160, 1u) + 1;
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
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_49:
      atomic_fetch_add(v15 + 1160, 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v15 + 3) + 6512);

      v36(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if (a2 == 35656)
    {
      wrapper_cache_shader_label(v15, a3);
    }

    GetStringToEncode(a4, a5);
    v23 = v22;
    if (v22)
    {
      v24 = "CeuiicS";
    }

    else
    {
      v24 = "Ceuiit";
    }

    GPUTools::FB::Encode(v41, 897, 2, v24, v18, v19, v20, v21, *v15, a2, a3, a4, a5);
    v25 = byte_21B1D9;
    if (byte_21B1D9)
    {
      breakpoint_break(v41, (&stru_338.reserved2 + 1), 1, v15[851], v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 4) + 6512))(a1, a2, a3, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v41[0];
        *(v41[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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
          goto LABEL_28;
        }
      }

      check_errors(v15);
    }

LABEL_28:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (v15[851])
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v15, v41);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v15 + 435, v15 + 440, v41);
    v29 = v15[851];
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        ReleaseStringToEncode(v23, a5);
        v32 = atomic_fetch_add(v15 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        goto LABEL_45;
      }

      v37 = 2;
      v38 = 897;
    }

    breakpoint_break(v41, v38, v37, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add(v15 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 3) + 6512))(a1, a2, a3, a4, a5);
LABEL_45:
  if (v41[0])
  {
    free(v41[0]);
  }
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
  v16 = atomic_fetch_add(v15 + 1160, 1u) + 1;
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
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_49:
      atomic_fetch_add(v15 + 1160, 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v15 + 3) + 6512);

      v36(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if (a2 == 35656)
    {
      wrapper_cache_shader_label(v15, a3);
    }

    GetStringToEncode(a4, a5);
    v23 = v22;
    if (v22)
    {
      v24 = "CeuiicS";
    }

    else
    {
      v24 = "Ceuiit";
    }

    GPUTools::FB::Encode(v41, 897, 2, v24, v18, v19, v20, v21, *v15, a2, a3, a4, a5);
    v25 = byte_21B1D9;
    if (byte_21B1D9)
    {
      breakpoint_break(v41, (&stru_338.reserved2 + 1), 1, v15[851], v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 4) + 6512))(a1, a2, a3, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v41[0];
        *(v41[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
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
          goto LABEL_28;
        }
      }

      check_errors(v15);
    }

LABEL_28:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (v15[851])
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v15, v41);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v15 + 435, v15 + 440, v41);
    v29 = v15[851];
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v37 = 3;
      v38 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_37:
        v30 = [DYGetGLGuestAppClient() defaultFbufStream];
        v31 = v30;
        while (atomic_exchange(v30 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v31 + 14);
        ReleaseStringToEncode(v23, a5);
        v32 = atomic_fetch_add(v15 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        goto LABEL_45;
      }

      v37 = 2;
      v38 = 897;
    }

    breakpoint_break(v41, v38, v37, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add(v15 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 3) + 6512))(a1, a2, a3, a4, a5);
LABEL_45:
  if (v41[0])
  {
    free(v41[0]);
  }
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
LABEL_26:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v19, 0, do_nothing);
LABEL_31:
      v20 = *(*(v15 + 24) + 6512);

      v20(a1, a2, a3, a4, a5);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_26;
    }
  }

  *(v15 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_31;
  }

  if (a2 == 35656)
  {
    wrapper_cache_shader_label(v15, a3);
  }

  (*(*(v15 + 32) + 6512))(a1, a2, a3, a4, a5);
  ++*(v15 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v15);
  }

  add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v15);
  }
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
LABEL_26:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v22 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v22, 0, do_nothing);
LABEL_31:
      v23 = *(*(v15 + 24) + 6512);

      v23(a1, a2, a3, a4, a5);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_26;
    }
  }

  *(v15 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_31;
  }

  if (a2 == 35656)
  {
    wrapper_cache_shader_label(v15, a3);
  }

  v18 = mach_absolute_time();
  (*(*(v15 + 32) + 6512))(a1, a2, a3, a4, a5);
  v19 = mach_absolute_time();
  v20 = vdupq_n_s64(1uLL);
  v20.i64[0] = v19 - v18;
  *(v15 + 3696) = vaddq_s64(v20, *(v15 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v15);
  }

  add = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v15);
  }
}

void sub_80184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void get_object_label_EXT(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, char *a6)
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
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_44:
      atomic_fetch_add(v17 + 1160, 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(*(v17 + 3) + 6520);

      v35(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v40, 892, 2, "Ceuiipp", v20, v21, v22, v23, *v17, a2, a3, a4, a5, a6);
    v24 = byte_21B1D4;
    if (byte_21B1D4)
    {
      breakpoint_break(v40, &stru_338.reserved1, 1, v17[851], v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v17 + 4) + 6520))(a1, a2, a3, a4, a5, a6);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v40[0];
        *(v40[0] + 2) = v25;
        v27[3] = v26;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v38 = __udivti3();
        v39 = v40[0];
        *(v40[0] + 3) = v38;
        v39[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v17);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (v17[851])
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v17, v40);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v17 + 435, v17 + 440, v40);
    v28 = v17[851];
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v36 = 3;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v24 & 2) == 0)
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
        v31 = atomic_fetch_add(v17 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        goto LABEL_40;
      }

      v36 = 2;
      v37 = 892;
    }

    breakpoint_break(v40, v37, v36, v28, v17);
    goto LABEL_32;
  }

  atomic_fetch_add(v17 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 3) + 6520))(a1, a2, a3, a4, a5, a6);
LABEL_40:
  if (v40[0])
  {
    free(v40[0]);
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
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
LABEL_44:
      atomic_fetch_add(v17 + 1160, 0xFFFFFFFF);
      v34 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v34, 0, do_nothing);
      v35 = *(*(v17 + 3) + 6520);

      v35(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v40[0] = 0;
  v40[1] = 0;
  v41 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v40, 892, 2, "Ceuiipp", v20, v21, v22, v23, *v17, a2, a3, a4, a5, a6);
    v24 = byte_21B1D4;
    if (byte_21B1D4)
    {
      breakpoint_break(v40, &stru_338.reserved1, 1, v17[851], v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v17 + 4) + 6520))(a1, a2, a3, a4, a5, a6);
      v26 = mach_absolute_time() - v25;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v27 = v40[0];
        *(v40[0] + 2) = v25;
        v27[3] = v26;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v38 = __udivti3();
        v39 = v40[0];
        *(v40[0] + 3) = v38;
        v39[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v17);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (v17[851])
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v17, v40);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v17 + 435, v17 + 440, v40);
    v28 = v17[851];
    if (v28 && (gBreakOnError & 1) != 0)
    {
      v36 = 3;
      v37 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v24 & 2) == 0)
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
        v31 = atomic_fetch_add(v17 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v31 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        goto LABEL_40;
      }

      v36 = 2;
      v37 = 892;
    }

    breakpoint_break(v40, v37, v36, v28, v17);
    goto LABEL_32;
  }

  atomic_fetch_add(v17 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 3) + 6520))(a1, a2, a3, a4, a5, a6);
LABEL_40:
  if (v40[0])
  {
    free(v40[0]);
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
      v22 = *(*(v17 + 24) + 6520);

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

  (*(*(v17 + 32) + 6520))(a1, a2, a3, a4, a5, a6);
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
      v25 = *(*(v17 + 24) + 6520);

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
  (*(*(v17 + 32) + 6520))(a1, a2, a3, a4, a5, a6);
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

void sub_805F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void insert_event_marker_EXT(__GLIContextRec *a1, uint64_t a2, char *a3)
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
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  v12 = atomic_fetch_add(v11 + 1160, 1u) + 1;
  if (gCheckGLErrors == 1 && v12 >= 2)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
    v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v30, 0, do_nothing);
    (*(v11[3] + 6528))(a1, a2, a3);
    goto LABEL_42;
  }

  if ((wrapper_handle_marker_event(v11, a2, a3) & 1) == 0)
  {
    GetStringToEncode(a2, a3);
    v15 = v14;
    v16 = 83;
    if (!v14)
    {
      v16 = 116;
    }

    snprintf(v11 + 4709, 0x40uLL, "Ci%c", v16);
    GPUTools::FB::Encode(v35, 895, 2, v11 + 4709, v17, v18, v19, v20, *v11, a2, v15);
    v21 = byte_21B1D7;
    if (byte_21B1D7)
    {
      breakpoint_break(v35, (&stru_338.reserved1 + 3), 1, *(v11 + 851), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(v11[4] + 6528))(a1, a2, v15);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v35[0];
        *(v35[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_24;
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
          goto LABEL_24;
        }
      }

      check_errors(v11);
    }

LABEL_24:
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
      encode_driver_events(v11, v35);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, v35);
    v25 = *(v11 + 851);
    if (v25 && (gBreakOnError & 1) != 0)
    {
      v31 = 3;
      v32 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v21 & 2) == 0)
      {
LABEL_33:
        v26 = [DYGetGLGuestAppClient() defaultFbufStream];
        v27 = v26;
        while (atomic_exchange(v26 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v27 + 14);
        ReleaseStringToEncode(v15, a3);
        goto LABEL_37;
      }

      v31 = 2;
      v32 = 895;
    }

    breakpoint_break(v35, v32, v31, v25, v11);
    goto LABEL_33;
  }

LABEL_37:
  v28 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v28 >= 1)
  {
    handle_opengl_thread_conflict(v11);
  }

LABEL_42:
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
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  v12 = atomic_fetch_add(v11 + 1160, 1u) + 1;
  if (gCheckGLErrors == 1 && v12 >= 2)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
    v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v30, 0, do_nothing);
    (*(v11[3] + 6528))(a1, a2, a3);
    goto LABEL_42;
  }

  if ((wrapper_handle_marker_event(v11, a2, a3) & 1) == 0)
  {
    GetStringToEncode(a2, a3);
    v15 = v14;
    v16 = 83;
    if (!v14)
    {
      v16 = 116;
    }

    snprintf(v11 + 4709, 0x40uLL, "Ci%c", v16);
    GPUTools::FB::Encode(v35, 895, 2, v11 + 4709, v17, v18, v19, v20, *v11, a2, v15);
    v21 = byte_21B1D7;
    if (byte_21B1D7)
    {
      breakpoint_break(v35, (&stru_338.reserved1 + 3), 1, *(v11 + 851), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(v11[4] + 6528))(a1, a2, v15);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v35[0];
        *(v35[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_24;
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
          goto LABEL_24;
        }
      }

      check_errors(v11);
    }

LABEL_24:
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
      encode_driver_events(v11, v35);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, v35);
    v25 = *(v11 + 851);
    if (v25 && (gBreakOnError & 1) != 0)
    {
      v31 = 3;
      v32 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v21 & 2) == 0)
      {
LABEL_33:
        v26 = [DYGetGLGuestAppClient() defaultFbufStream];
        v27 = v26;
        while (atomic_exchange(v26 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v27 + 14);
        ReleaseStringToEncode(v15, a3);
        goto LABEL_37;
      }

      v31 = 2;
      v32 = 895;
    }

    breakpoint_break(v35, v32, v31, v25, v11);
    goto LABEL_33;
  }

LABEL_37:
  v28 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v28 >= 1)
  {
    handle_opengl_thread_conflict(v11);
  }

LABEL_42:
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
      goto LABEL_26;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_26:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v16 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v16, 0, do_nothing);
      v17 = *(*(v11 + 24) + 6528);

      v17(a1, a2, a3);
      return;
    }
  }

  if ((wrapper_handle_marker_event(v11, a2, a3) & 1) == 0)
  {
    (*(*(v11 + 32) + 6528))(a1, a2, a3);
    ++*(v11 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v11);
    }
  }

  v14 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v14 >= 1)
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
      goto LABEL_26;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_26:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v19, 0, do_nothing);
      v20 = *(*(v11 + 24) + 6528);

      v20(a1, a2, a3);
      return;
    }
  }

  if ((wrapper_handle_marker_event(v11, a2, a3) & 1) == 0)
  {
    v14 = mach_absolute_time();
    (*(*(v11 + 32) + 6528))(a1, a2, a3);
    v15 = mach_absolute_time();
    v16 = vdupq_n_s64(1uLL);
    v16.i64[0] = v15 - v14;
    *(v11 + 3696) = vaddq_s64(v16, *(v11 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v11);
    }
  }

  v17 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v17 >= 1)
  {

    handle_opengl_thread_conflict(v11);
  }
}

void sub_809FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void push_group_marker_EXT(__GLIContextRec *a1, size_t a2, const char *a3)
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
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  v12 = atomic_fetch_add(v11 + 1160, 1u) + 1;
  if (gCheckGLErrors == 1 && v12 >= 2)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
    v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v30, 0, do_nothing);
    (*(v11[3] + 6536))(a1, a2, a3);
    goto LABEL_40;
  }

  GetStringToEncode(a2, a3);
  v15 = v14;
  v16 = 83;
  if (!v14)
  {
    v16 = 116;
  }

  snprintf(v11 + 4709, 0x40uLL, "Ci%c", v16);
  GPUTools::FB::Encode(v35, 919, 2, v11 + 4709, v17, v18, v19, v20, *v11, a2, v15);
  v21 = byte_21B1EF;
  if (byte_21B1EF)
  {
    breakpoint_break(v35, &stru_388.sectname[15], 1, *(v11 + 851), v11);
  }

  if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
  {
    v22 = mach_absolute_time();
    (*(v11[4] + 6536))(a1, a2, v15);
    v23 = mach_absolute_time() - v22;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v24 = v35[0];
      *(v35[0] + 2) = v22;
      v24[3] = v23;
      if (gCheckGLErrors != 1)
      {
        goto LABEL_23;
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
    encode_driver_events(v11, v35);
  }

  GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, v35);
  v25 = *(v11 + 851);
  if (v25 && (gBreakOnError & 1) != 0)
  {
    v31 = 3;
    v32 = 0xFFFFFFFFLL;
LABEL_48:
    breakpoint_break(v35, v32, v31, v25, v11);
    goto LABEL_32;
  }

  if ((v21 & 2) != 0)
  {
    v31 = 2;
    v32 = 919;
    goto LABEL_48;
  }

LABEL_32:
  v26 = [DYGetGLGuestAppClient() defaultFbufStream];
  v27 = v26;
  while (atomic_exchange(v26 + 14, 1u) == 1)
  {
      ;
    }
  }

  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v27 + 14);
  wrapper_push_group_marker(v11, a2, a3);
  ReleaseStringToEncode(v15, a3);
  v28 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v28 >= 1)
  {
    handle_opengl_thread_conflict(v11);
  }

LABEL_40:
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
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  v12 = atomic_fetch_add(v11 + 1160, 1u) + 1;
  if (gCheckGLErrors == 1 && v12 >= 2)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
    v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v30, 0, do_nothing);
    (*(v11[3] + 6536))(a1, a2, a3);
    goto LABEL_40;
  }

  GetStringToEncode(a2, a3);
  v15 = v14;
  v16 = 83;
  if (!v14)
  {
    v16 = 116;
  }

  snprintf(v11 + 4709, 0x40uLL, "Ci%c", v16);
  GPUTools::FB::Encode(v35, 919, 2, v11 + 4709, v17, v18, v19, v20, *v11, a2, v15);
  v21 = byte_21B1EF;
  if (byte_21B1EF)
  {
    breakpoint_break(v35, &stru_388.sectname[15], 1, *(v11 + 851), v11);
  }

  if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
  {
    v22 = mach_absolute_time();
    (*(v11[4] + 6536))(a1, a2, v15);
    v23 = mach_absolute_time() - v22;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v24 = v35[0];
      *(v35[0] + 2) = v22;
      v24[3] = v23;
      if (gCheckGLErrors != 1)
      {
        goto LABEL_23;
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
    encode_driver_events(v11, v35);
  }

  GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, v35);
  v25 = *(v11 + 851);
  if (v25 && (gBreakOnError & 1) != 0)
  {
    v31 = 3;
    v32 = 0xFFFFFFFFLL;
LABEL_48:
    breakpoint_break(v35, v32, v31, v25, v11);
    goto LABEL_32;
  }

  if ((v21 & 2) != 0)
  {
    v31 = 2;
    v32 = 919;
    goto LABEL_48;
  }

LABEL_32:
  v26 = [DYGetGLGuestAppClient() defaultFbufStream];
  v27 = v26;
  while (atomic_exchange(v26 + 14, 1u) == 1)
  {
      ;
    }
  }

  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v27 + 14);
  wrapper_push_group_marker(v11, a2, a3);
  ReleaseStringToEncode(v15, a3);
  v28 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v28 >= 1)
  {
    handle_opengl_thread_conflict(v11);
  }

LABEL_40:
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
      goto LABEL_25;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_25:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v16 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v16, 0, do_nothing);
      v17 = *(*(v11 + 24) + 6536);

      v17(a1, a2, a3);
      return;
    }
  }

  (*(*(v11 + 32) + 6536))(a1, a2, a3);
  ++*(v11 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  wrapper_push_group_marker(v11, a2, a3);
  v14 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v14 >= 1)
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
      goto LABEL_25;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_25:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v19, 0, do_nothing);
      v20 = *(*(v11 + 24) + 6536);

      v20(a1, a2, a3);
      return;
    }
  }

  v14 = mach_absolute_time();
  (*(*(v11 + 32) + 6536))(a1, a2, a3);
  v15 = mach_absolute_time();
  v16 = vdupq_n_s64(1uLL);
  v16.i64[0] = v15 - v14;
  *(v11 + 3696) = vaddq_s64(v16, *(v11 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v11);
  }

  wrapper_push_group_marker(v11, a2, a3);
  v17 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v17 >= 1)
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
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v16 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v16, 0, do_nothing);
    v17 = *(*(v11 + 24) + 6536);

    v17(a1, a2, a3);
  }

  else
  {
    wrapper_push_group_marker(v11, a2, a3);
    v14 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v14 >= 1)
    {

      handle_opengl_thread_conflict(v11);
    }
  }
}

{
  v5 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v7 = *(v5 + 32);
    v8 = v7 >= a1;
    v9 = v7 < a1;
    if (v8)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * v9);
  }

  while (v5);
  if (v6 == ContextInfo::activeCtxInfoMap + 8 || *(v6 + 32) > a1)
  {
LABEL_9:
    v6 = ContextInfo::activeCtxInfoMap + 8;
  }

  v10 = *(v6 + 40);
  (*(*(v10 + 4) + 6536))(a1, a2, a3);

  wrapper_push_group_marker(v10, a2, a3);
}

void sub_80E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void pop_group_marker_EXT(__GLIContextRec *a1)
{
  v2 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == ContextInfo::activeCtxInfoMap + 8 || *(v3 + 32) > a1)
  {
LABEL_9:
    v3 = ContextInfo::activeCtxInfoMap + 8;
  }

  v7 = *(v3 + 40);
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  v8 = atomic_fetch_add(v7 + 1160, 1u) + 1;
  if (gCheckGLErrors == 1 && v8 >= 2)
  {
    handle_opengl_thread_conflict(v7);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add(v7 + 1160, 0xFFFFFFFF);
    v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v23, 0, do_nothing);
    (*(*(v7 + 3) + 6544))(a1);
    goto LABEL_38;
  }

  GPUTools::FB::Encode(v28, 898, 2, "C", v10, v11, v12, v13, *v7);
  v14 = byte_21B1DA;
  if (byte_21B1DA)
  {
    breakpoint_break(v28, (&stru_338.reserved2 + 2), 1, v7[851], v7);
  }

  if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v14 & 4))
  {
    v15 = mach_absolute_time();
    (*(*(v7 + 4) + 6544))(a1);
    v16 = mach_absolute_time() - v15;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v17 = v28[0];
      *(v28[0] + 2) = v15;
      v17[3] = v16;
      if (gCheckGLErrors != 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v26 = __udivti3();
      v27 = v28[0];
      *(v28[0] + 3) = v26;
      v27[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_21;
      }
    }

    check_errors(v7);
  }

LABEL_21:
  if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
  {
    GPUTools::FB::EncodeCurrentBacktrace();
  }

  if (v7[851])
  {
    GPUTools::FB::EncodeGLError();
  }

  if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
  {
    encode_driver_events(v7, v28);
  }

  GPUTools::FB::EncodeThreadQueueInfo(v7 + 435, v7 + 440, v28);
  v18 = v7[851];
  if (v18 && (gBreakOnError & 1) != 0)
  {
    v24 = 3;
    v25 = 0xFFFFFFFFLL;
LABEL_46:
    breakpoint_break(v28, v25, v24, v18, v7);
    goto LABEL_30;
  }

  if ((v14 & 2) != 0)
  {
    v24 = 2;
    v25 = 898;
    goto LABEL_46;
  }

LABEL_30:
  v19 = [DYGetGLGuestAppClient() defaultFbufStream];
  v20 = v19;
  while (atomic_exchange(v19 + 14, 1u) == 1)
  {
      ;
    }
  }

  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v20 + 14);
  wrapper_pop_group_marker(v7);
  v21 = atomic_fetch_add(v7 + 1160, 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v21 >= 1)
  {
    handle_opengl_thread_conflict(v7);
  }

LABEL_38:
  if (v28[0])
  {
    free(v28[0]);
  }
}

{
  v2 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == ContextInfo::activeCtxInfoMap + 8 || *(v3 + 32) > a1)
  {
LABEL_9:
    v3 = ContextInfo::activeCtxInfoMap + 8;
  }

  v7 = *(v3 + 40);
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  v8 = atomic_fetch_add(v7 + 1160, 1u) + 1;
  if (gCheckGLErrors == 1 && v8 >= 2)
  {
    handle_opengl_thread_conflict(v7);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add(v7 + 1160, 0xFFFFFFFF);
    v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v23, 0, do_nothing);
    (*(*(v7 + 3) + 6544))(a1);
    goto LABEL_38;
  }

  GPUTools::FB::Encode(v28, 898, 2, "C", v10, v11, v12, v13, *v7);
  v14 = byte_21B1DA;
  if (byte_21B1DA)
  {
    breakpoint_break(v28, (&stru_338.reserved2 + 2), 1, v7[851], v7);
  }

  if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v14 & 4))
  {
    v15 = mach_absolute_time();
    (*(*(v7 + 4) + 6544))(a1);
    v16 = mach_absolute_time() - v15;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v17 = v28[0];
      *(v28[0] + 2) = v15;
      v17[3] = v16;
      if (gCheckGLErrors != 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v26 = __udivti3();
      v27 = v28[0];
      *(v28[0] + 3) = v26;
      v27[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_21;
      }
    }

    check_errors(v7);
  }

LABEL_21:
  if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
  {
    GPUTools::FB::EncodeCurrentBacktrace();
  }

  if (v7[851])
  {
    GPUTools::FB::EncodeGLError();
  }

  if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
  {
    encode_driver_events(v7, v28);
  }

  GPUTools::FB::EncodeThreadQueueInfo(v7 + 435, v7 + 440, v28);
  v18 = v7[851];
  if (v18 && (gBreakOnError & 1) != 0)
  {
    v24 = 3;
    v25 = 0xFFFFFFFFLL;
LABEL_46:
    breakpoint_break(v28, v25, v24, v18, v7);
    goto LABEL_30;
  }

  if ((v14 & 2) != 0)
  {
    v24 = 2;
    v25 = 898;
    goto LABEL_46;
  }

LABEL_30:
  v19 = [DYGetGLGuestAppClient() defaultFbufStream];
  v20 = v19;
  while (atomic_exchange(v19 + 14, 1u) == 1)
  {
      ;
    }
  }

  GPUTools::FB::Stream::Write_nolock();
  atomic_store(0, v20 + 14);
  wrapper_pop_group_marker(v7);
  v21 = atomic_fetch_add(v7 + 1160, 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v21 >= 1)
  {
    handle_opengl_thread_conflict(v7);
  }

LABEL_38:
  if (v28[0])
  {
    free(v28[0]);
  }
}

{
  v2 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == ContextInfo::activeCtxInfoMap + 8 || *(v3 + 32) > a1)
  {
LABEL_9:
    v3 = ContextInfo::activeCtxInfoMap + 8;
  }

  v7 = *(v3 + 40);
  v8 = atomic_fetch_add((v7 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v8 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_25:
      pop_group_marker_EXT((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_25;
    }
  }

  (*(*(v7 + 32) + 6544))(a1);
  ++*(v7 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v7);
  }

  wrapper_pop_group_marker(v7);
  v10 = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v10 >= 1)
  {

    handle_opengl_thread_conflict(v7);
  }
}

{
  v2 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 == ContextInfo::activeCtxInfoMap + 8 || *(v3 + 32) > a1)
  {
LABEL_9:
    v3 = ContextInfo::activeCtxInfoMap + 8;
  }

  v7 = *(v3 + 40);
  v8 = atomic_fetch_add((v7 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v8 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_25:
      pop_group_marker_EXT((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_25;
    }
  }

  v10 = mach_absolute_time();
  (*(*(v7 + 32) + 6544))(a1);
  v11 = mach_absolute_time();
  v12 = vdupq_n_s64(1uLL);
  v12.i64[0] = v11 - v10;
  *(v7 + 3696) = vaddq_s64(v12, *(v7 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v7);
  }

  wrapper_pop_group_marker(v7);
  v13 = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF) - 1;
  if (gCheckGLErrors == 1 && v13 >= 1)
  {

    handle_opengl_thread_conflict(v7);
  }
}

{
  v1 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v3 = *(v1 + 32);
    v4 = v3 >= a1;
    v5 = v3 < a1;
    if (v4)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * v5);
  }

  while (v1);
  if (v2 == ContextInfo::activeCtxInfoMap + 8 || *(v2 + 32) > a1)
  {
LABEL_9:
    v2 = ContextInfo::activeCtxInfoMap + 8;
  }

  v6 = *(v2 + 40);
  v7 = atomic_fetch_add((v6 + 4640), 1u) + 1;
  if (gCheckGLErrors == 1 && v7 > 1)
  {
    handle_opengl_thread_conflict(v6);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    pop_group_marker_EXT((v6 + 4640));
  }

  else
  {
    wrapper_pop_group_marker(v6);
    v9 = atomic_fetch_add((v6 + 4640), 0xFFFFFFFF) - 1;
    if (gCheckGLErrors == 1 && v9 >= 1)
    {

      handle_opengl_thread_conflict(v6);
    }
  }
}

{
  v1 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v3 = *(v1 + 32);
    v4 = v3 >= a1;
    v5 = v3 < a1;
    if (v4)
    {
      v2 = v1;
    }

    v1 = *(v1 + 8 * v5);
  }

  while (v1);
  if (v2 == ContextInfo::activeCtxInfoMap + 8 || *(v2 + 32) > a1)
  {
LABEL_9:
    v2 = ContextInfo::activeCtxInfoMap + 8;
  }

  v6 = *(v2 + 40);
  (*(*(v6 + 4) + 6544))(a1);

  wrapper_pop_group_marker(v6);
}

void sub_81190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  atomic_store(0, (v10 + 56));
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

void use_program_stages(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v29 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v29 >= 1)
    {
LABEL_49:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
      v31 = *(*(v13 + 3) + 6552);

      v31(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v37, 920, 512, "Cuiuiui", v16, v17, v18, v19, *v13, a2, a3, a4);
    query_pipeline_programs(v13, a2, v36);
    check_errors(v13);
    v20 = byte_21B1F0;
    if (byte_21B1F0)
    {
      breakpoint_break(v37, stru_388.segname, 1, v13[851], v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4))
    {
      v21 = mach_absolute_time();
      (*(*(v13 + 4) + 6552))(a1, a2, a3, a4);
      v22 = mach_absolute_time() - v21;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v23 = v37[0];
        *(v37[0] + 2) = v21;
        v23[3] = v22;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v34 = __udivti3();
        v35 = v37[0];
        *(v37[0] + 3) = v34;
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
      encode_driver_events(v13, v37);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, v37);
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
        if ((gCheckGLErrors & 1) == 0)
        {
          check_errors(v13);
        }

        if (a3 && !v13[851])
        {
          wrapper_cache_pipeline_use_stages(v13, a2, a3, a4, v36, 1);
        }

        v27 = atomic_fetch_add(v13 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v27 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_45;
      }

      v32 = 2;
      v33 = 920;
    }

    breakpoint_break(v37, v33, v32, v24, v13);
    goto LABEL_32;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 3) + 6552))(a1, a2, a3, a4);
LABEL_45:
  if (v37[0])
  {
    free(v37[0]);
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v29 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v29 >= 1)
    {
LABEL_49:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
      v31 = *(*(v13 + 3) + 6552);

      v31(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v37, 920, 512, "Cuiuiui", v16, v17, v18, v19, *v13, a2, a3, a4);
    query_pipeline_programs(v13, a2, v36);
    check_errors(v13);
    v20 = byte_21B1F0;
    if (byte_21B1F0)
    {
      breakpoint_break(v37, stru_388.segname, 1, v13[851], v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4))
    {
      v21 = mach_absolute_time();
      (*(*(v13 + 4) + 6552))(a1, a2, a3, a4);
      v22 = mach_absolute_time() - v21;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v23 = v37[0];
        *(v37[0] + 2) = v21;
        v23[3] = v22;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v34 = __udivti3();
        v35 = v37[0];
        *(v37[0] + 3) = v34;
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
      encode_driver_events(v13, v37);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, v37);
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
        if ((gCheckGLErrors & 1) == 0)
        {
          check_errors(v13);
        }

        if (a3 && !v13[851])
        {
          wrapper_cache_pipeline_use_stages(v13, a2, a3, a4, v36, 1);
        }

        v27 = atomic_fetch_add(v13 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v27 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_45;
      }

      v32 = 2;
      v33 = 920;
    }

    breakpoint_break(v37, v33, v32, v24, v13);
    goto LABEL_32;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 3) + 6552))(a1, a2, a3, a4);
LABEL_45:
  if (v37[0])
  {
    free(v37[0]);
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
LABEL_28:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v18, 0, do_nothing);
LABEL_33:
      v19 = *(*(v13 + 24) + 6552);

      v19(a1, a2, a3, a4);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v17 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v17 >= 1)
    {
      goto LABEL_28;
    }
  }

  *(v13 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_33;
  }

  query_pipeline_programs(v13, a2, v20);
  check_errors(v13);
  (*(*(v13 + 32) + 6552))(a1, a2, a3, a4);
  ++*(v13 + 3704);
  if (gCheckGLErrors != 1)
  {
    if (gCheckGLErrors)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  bind_texture(v13);
  if (!v21)
  {
LABEL_20:
    check_errors(v13);
  }

LABEL_21:
  if (a3 && !*(v13 + 3404))
  {
    wrapper_cache_pipeline_use_stages(v13, a2, a3, a4, v20, 0);
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
LABEL_29:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v21 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v21, 0, do_nothing);
LABEL_33:
      v22 = *(*(v13 + 24) + 6552);

      v22(a1, a2, a3, a4);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v20 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v20 >= 1)
    {
      goto LABEL_29;
    }
  }

  *(v13 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_33;
  }

  query_pipeline_programs(v13, a2, v23);
  check_errors(v13);
  v16 = mach_absolute_time();
  (*(*(v13 + 32) + 6552))(a1, a2, a3, a4);
  v17 = mach_absolute_time();
  v18 = vdupq_n_s64(1uLL);
  v18.i64[0] = v17 - v16;
  *(v13 + 3696) = vaddq_s64(v18, *(v13 + 3696));
  if (gCheckGLErrors != 1)
  {
    if (gCheckGLErrors)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  bind_texture(v13);
  if (!v24)
  {
LABEL_20:
    check_errors(v13);
  }

LABEL_21:
  if (a3 && !*(v13 + 3404))
  {
    wrapper_cache_pipeline_use_stages(v13, a2, a3, a4, v23, 0);
  }

  add = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {
    handle_opengl_thread_conflict(v13);
  }
}

void sub_81640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void active_shader_program(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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
      goto LABEL_53;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_53:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v11 + 24) + 6560);

      v39(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v50 = 0;
  v51 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v50;
    v16 = v50 - __ptr;
    v17 = v51;
    v18 = v51 - (v50 - __ptr);
    if (v18 <= 0x3B)
    {
      v40 = (315 - v18) & 0x100;
      v51 += v40;
      v15 = malloc_type_malloc(v40 + v17, 0xF962E99uLL);
      __ptr = v15;
      if (!v15)
      {
        goto LABEL_70;
      }

      if ((v15 & 3) != 0)
      {
LABEL_72:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v15, 4uLL);
        goto LABEL_73;
      }

      v14 = (v15 + v16);
    }

    *(v14 + 44) = 0u;
    v14[1] = 0u;
    v14[2] = 0u;
    *v14 = 0u;
    v19 = v14 + 60;
    v50 = v14 + 60;
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
    v25 = v51;
    v26 = v51 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v50;
LABEL_22:
      bzero(v19, v22);
      v50 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 886;
      v15[8] = 0;
      v48 = 0;
      pthread_threadid_np(0, &v48);
      *(v15 + 1) = v48;
      strcpy(v15 + 36, "Cuiui");
      *(v15 + 11) = *v11;
      v15[13] = a2;
      v15[14] = a3;
      query_pipeline_programs(v11, a2, v47);
      check_errors(v11);
      v28 = byte_21B1CE;
      if (byte_21B1CE)
      {
        breakpoint_break(&__ptr, (&stru_338.nreloc + 2), 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 6560))(a1, a2, a3);
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
          if ((gCheckGLErrors & 1) == 0)
          {
            check_errors(v11);
          }

          if (!*(v11 + 3404))
          {
            wrapper_cache_pipeline_active_shader_program(v11, a2, a3, v47);
          }

          v35 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v35 >= 1)
          {
            handle_opengl_thread_conflict(v11);
          }

          goto LABEL_49;
        }

        v41 = 2;
        v42 = 886;
      }

      breakpoint_break(&__ptr, v42, v41, v32, v11);
      goto LABEL_37;
    }

    v45 = (v22 - v26 + 255) & 0xFFFFFF00;
    v46 = v45 + v51;
    v51 += v45;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v46);
      __ptr = v23;
      if (v23)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v45 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (v23)
      {
LABEL_67:
        if ((v23 & 3) == 0)
        {
          v27 = v23 + v24;
          v19 = v27;
          goto LABEL_22;
        }

        v15 = v23;
        goto LABEL_72;
      }
    }

LABEL_70:
    dy_abort("failed to allocate fbuf buffer");
LABEL_73:
    __break(1u);
    return;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 6560))(a1, a2, a3);
LABEL_49:
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
      goto LABEL_53;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_53:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(*(v11 + 24) + 6560);

      v39(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v50 = 0;
  v51 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v50;
    v16 = v50 - __ptr;
    v17 = v51;
    v18 = v51 - (v50 - __ptr);
    if (v18 <= 0x3B)
    {
      v40 = (315 - v18) & 0x100;
      v51 += v40;
      v15 = malloc_type_malloc(v40 + v17, 0xF962E99uLL);
      __ptr = v15;
      if (!v15)
      {
        goto LABEL_70;
      }

      if ((v15 & 3) != 0)
      {
LABEL_72:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v15, 4uLL);
        goto LABEL_73;
      }

      v14 = (v15 + v16);
    }

    *(v14 + 44) = 0u;
    v14[1] = 0u;
    v14[2] = 0u;
    *v14 = 0u;
    v19 = v14 + 60;
    v50 = v14 + 60;
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
    v25 = v51;
    v26 = v51 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v50;
LABEL_22:
      bzero(v19, v22);
      v50 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 886;
      v15[8] = 0;
      v48 = 0;
      pthread_threadid_np(0, &v48);
      *(v15 + 1) = v48;
      strcpy(v15 + 36, "Cuiui");
      *(v15 + 11) = *v11;
      v15[13] = a2;
      v15[14] = a3;
      query_pipeline_programs(v11, a2, v47);
      check_errors(v11);
      v28 = byte_21B1CE;
      if (byte_21B1CE)
      {
        breakpoint_break(&__ptr, (&stru_338.nreloc + 2), 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 6560))(a1, a2, a3);
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
          if ((gCheckGLErrors & 1) == 0)
          {
            check_errors(v11);
          }

          if (!*(v11 + 3404))
          {
            wrapper_cache_pipeline_active_shader_program(v11, a2, a3, v47);
          }

          v35 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v35 >= 1)
          {
            handle_opengl_thread_conflict(v11);
          }

          goto LABEL_49;
        }

        v41 = 2;
        v42 = 886;
      }

      breakpoint_break(&__ptr, v42, v41, v32, v11);
      goto LABEL_37;
    }

    v45 = (v22 - v26 + 255) & 0xFFFFFF00;
    v46 = v45 + v51;
    v51 += v45;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v46);
      __ptr = v23;
      if (v23)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v45 + v25, 0xF962E99uLL);
      __ptr = v23;
      if (v23)
      {
LABEL_67:
        if ((v23 & 3) == 0)
        {
          v27 = v23 + v24;
          v19 = v27;
          goto LABEL_22;
        }

        v15 = v23;
        goto LABEL_72;
      }
    }

LABEL_70:
    dy_abort("failed to allocate fbuf buffer");
LABEL_73:
    __break(1u);
    return;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 6560))(a1, a2, a3);
LABEL_49:
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
LABEL_27:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v16 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v16, 0, do_nothing);
LABEL_32:
      v17 = *(*(v11 + 24) + 6560);

      v17(a1, a2, a3);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v15 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v15 >= 1)
    {
      goto LABEL_27;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_32;
  }

  query_pipeline_programs(v11, a2, v18);
  check_errors(v11);
  (*(*(v11 + 32) + 6560))(a1, a2, a3);
  ++*(v11 + 3704);
  if (gCheckGLErrors == 1)
  {
    bind_texture(v11);
    if (v19)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!gCheckGLErrors)
  {
LABEL_20:
    check_errors(v11);
  }

LABEL_21:
  if (!*(v11 + 3404))
  {
    wrapper_cache_pipeline_active_shader_program(v11, a2, a3, v18);
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
LABEL_27:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v19, 0, do_nothing);
LABEL_32:
      v20 = *(*(v11 + 24) + 6560);

      v20(a1, a2, a3);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v18 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v18 >= 1)
    {
      goto LABEL_27;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_32;
  }

  query_pipeline_programs(v11, a2, v21);
  check_errors(v11);
  v14 = mach_absolute_time();
  (*(*(v11 + 32) + 6560))(a1, a2, a3);
  v15 = mach_absolute_time();
  v16 = vdupq_n_s64(1uLL);
  v16.i64[0] = v15 - v14;
  *(v11 + 3696) = vaddq_s64(v16, *(v11 + 3696));
  if (gCheckGLErrors == 1)
  {
    bind_texture(v11);
    if (v22)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (!gCheckGLErrors)
  {
LABEL_20:
    check_errors(v11);
  }

LABEL_21:
  if (!*(v11 + 3404))
  {
    wrapper_cache_pipeline_active_shader_program(v11, a2, a3, v21);
  }

  add = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {
    handle_opengl_thread_conflict(v11);
  }
}

void sub_81C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t create_shader_programv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v7 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v7)
  {
    goto LABEL_9;
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
LABEL_9:
    v8 = ContextInfo::activeCtxInfoMap + 8;
  }

  v12 = *(v8 + 40);
  v13 = atomic_fetch_add(v12 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v13 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_93;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v12);
    v121 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v121 >= 1)
    {
LABEL_93:
      atomic_fetch_add(v12 + 1160, 0xFFFFFFFF);
      v122 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v122, 0, do_nothing);
      v123 = *(v12[3] + 6568);

      return v123(a1, a2, a3, a4);
    }
  }

  *(v12 + 4838) = 1;
  v163 = 0;
  v164 = &v163;
  v165 = 0x4812000000;
  v166 = __Block_byref_object_copy_;
  v167 = __Block_byref_object_dispose__1;
  v168 = &unk_20760A;
  v169 = 0;
  v170 = 0;
  v171 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v129 = malloc_type_malloc(73 * a3, 0x10040436913F5uLL);
    if (a3 >= 1)
    {
      v15 = a3;
      v17 = a4;
      v16 = v129;
      v18 = &v129[a3];
      do
      {
        *v16 = v18;
        strlen(*v17);
        DYGetGLGuestAppClient();
        GPUTools::Interpose::DYSavePointer();
        ++v17;
        ++v16;
        v18 += 65;
        --v15;
      }

      while (v15);
    }

    snprintf(v12 + 4709, 0x40uLL, "Cei@%dU<cb>", a3);
    GPUTools::FB::Encode((v164 + 6), 888, 2, v12 + 4709, v19, v20, v21, v22, *v12, a2, a3, v129);
    check_errors(v12);
    v23 = byte_21B1D0;
    if (byte_21B1D0)
    {
      breakpoint_break((v164 + 6), &stru_338.flags, 1, *(v12 + 851), v12);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4)
    {
      v30 = 0;
    }

    else
    {
      v29 = mach_absolute_time();
      v30 = (*(v12[4] + 6568))(a1, a2, a3, a4);
      v31 = mach_absolute_time() - v29;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v32 = v164 + 6;
        *(v164[6] + 24) = v31;
      }

      else
      {
        v126 = __udivti3();
        v32 = v164 + 6;
        *(v164[6] + 24) = v126;
        v29 = __udivti3();
      }

      *(*v32 + 16) = v29;
      if (gCheckGLErrors == 1)
      {
        check_errors(v12);
      }
    }

    GPUTools::FB::Encode((v164 + 6), 4294955008, "ui", v24, v25, v26, v27, v28, v30);
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v12 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v12, (v164 + 6));
    }

    GPUTools::FB::EncodeThreadQueueInfo(v12 + 435, v12 + 440, (v164 + 6));
    v33 = *(v12 + 851);
    if (v33 && (gBreakOnError & 1) != 0)
    {
      v124 = 3;
      v125 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
        goto LABEL_37;
      }

      v124 = 2;
      v125 = 888;
    }

    breakpoint_break((v164 + 6), v125, v124, v33, v12);
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
    if ((gCheckGLErrors & 1) == 0)
    {
      check_errors(v12);
    }

    if (*(v12 + 851))
    {
      goto LABEL_84;
    }

    v162 = 0;
    (*(v12[4] + 5264))(v12[2], v30, 35714, &v162);
    LODWORD(v160[0]) = 0;
    info_log = query_info_log(v12, v30, *(v12[4] + 5264), *(v12[4] + 5280), v160);
    v42 = info_log;
    if (LODWORD(v160[0]) < 0x401)
    {
      if (LODWORD(v160[0]))
      {
        info_log[SLODWORD(v160[0]) - 1] = 0;
      }

      v44 = "CiuiiSiieui";
      v43 = info_log;
      v45 = v162;
      if (v162 != 1)
      {
        goto LABEL_45;
      }
    }

    else
    {
      DYGetGLGuestAppClient();
      v43 = v12 + 4644;
      v127 = 0;
      GPUTools::Interpose::DYSavePointer();
      v44 = "CiuiiU<cb>iieui";
      v45 = v162;
      if (v162 != 1)
      {
LABEL_45:
        v46 = 0;
LABEL_50:
        GPUTools::FB::Encode((v164 + 6), 4294955024, v44, v37, v38, v39, v40, v41, *v12, 12, v30, LODWORD(v160[0]), v43, v45, 0, 35980, v46);
        v47 = [DYGetGLGuestAppClient() defaultFbufStream];
        v48 = v47;
        while (atomic_exchange(v47 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v48 + 14);
        free(v42);
        wrapper_cache_pipeline_create_shader_program(v12, v30, a2, a3, a4);
        if (v162 == 1)
        {
          v49 = v12[4];
          v130 = v12;
          v131 = v49;
          v160[0] = _NSConcreteStackBlock;
          v160[1] = 3221225472;
          v160[2] = ___ZL22create_shader_programvP15__GLIContextRecjiPPKc_block_invoke;
          v160[3] = &unk_20D130;
          v160[4] = &v163;
          v160[5] = v12;
          v161 = v30;
          GPUTools::GL::EnumerateProgramActiveAttributes();
          if (*(v12 + 865) >= 3)
          {
            v50 = v12[4];
            v130 = v12;
            v131 = v50;
            v153 = _NSConcreteStackBlock;
            v154 = 3221225472;
            v155 = ___ZL22create_shader_programvP15__GLIContextRecjiPPKc_block_invoke_2;
            v156 = &unk_20D158;
            v157 = &v163;
            v158 = v12;
            v159 = v30;
            GPUTools::GL::EnumerateProgramTransformFeedbackVaryings();
            v51 = v12[4];
            v130 = v12;
            v131 = v51;
            v146 = _NSConcreteStackBlock;
            v147 = 3221225472;
            v148 = ___ZL22create_shader_programvP15__GLIContextRecjiPPKc_block_invoke_3;
            v149 = &unk_20D180;
            v150 = &v163;
            v151 = v12;
            v152 = v30;
            GPUTools::GL::EnumerateProgramActiveUniformBlocks();
          }

          v52 = v12[4];
          v130 = v12;
          v131 = v52;
          v139 = _NSConcreteStackBlock;
          v140 = 3221225472;
          v141 = ___ZL22create_shader_programvP15__GLIContextRecjiPPKc_block_invoke_4;
          v142 = &unk_20D1A8;
          v143 = &v163;
          v144 = v12;
          v145 = v30;
          GPUTools::GL::EnumerateProgramActiveUniforms();
          GPUTools::FB::Encode((v164 + 6), 116, 516, "C", v53, v54, v55, v56, *v12);
          GPUTools::FB::Encode((v164 + 6), 4294955008, "ul", v57, v58, v59, v60, v61, v30);
          v62 = [DYGetGLGuestAppClient() defaultFbufStream];
          v63 = v62;
          while (atomic_exchange(v62 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v63 + 14);
          GPUTools::FB::Encode((v164 + 6), 467, 516, "Cuiee", v64, v65, v66, v67, *v12, v30, 33368, 1);
          v68 = [DYGetGLGuestAppClient() defaultFbufStream];
          v69 = v68;
          while (atomic_exchange(v68 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v69 + 14);
          GPUTools::FB::Encode((v164 + 6), 117, 516, "Ce", v70, v71, v72, v73, *v12, a2);
          GPUTools::FB::Encode((v164 + 6), 4294955008, "V<ul>", v74, v75, v76, v77, v78, "rhubarb");
          v79 = [DYGetGLGuestAppClient() defaultFbufStream];
          v80 = v79;
          while (atomic_exchange(v79 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v80 + 14);
          snprintf(v12 + 4709, 0x40uLL, "CV<ul>i@%dU<cb>t", a3);
          GPUTools::FB::Encode((v164 + 6), 540, 516, v12 + 4709, v81, v82, v83, v84, *v12, "rhubarb", a3, v129, 0);
          v85 = [DYGetGLGuestAppClient() defaultFbufStream];
          v86 = v85;
          while (atomic_exchange(v85 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v86 + 14);
          GPUTools::FB::Encode((v164 + 6), 93, 516, "CV<ul>", v87, v88, v89, v90, *v12, "rhubarb");
          v91 = [DYGetGLGuestAppClient() defaultFbufStream];
          v92 = v91;
          while (atomic_exchange(v91 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v92 + 14);
          GPUTools::FB::Encode((v164 + 6), 6, 516, "CulV<ul>", v93, v94, v95, v96, *v12, v30, "rhubarb");
          v97 = [DYGetGLGuestAppClient() defaultFbufStream];
          v98 = v97;
          while (atomic_exchange(v97 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v98 + 14);
          v99 = v12[4];
          v137 = v12;
          v138 = v99;
          v130 = _NSConcreteStackBlock;
          v131 = 3221225472;
          v132 = ___ZL22create_shader_programvP15__GLIContextRecjiPPKc_block_invoke_5;
          v133 = &unk_20D108;
          v134 = &v163;
          v135 = v12;
          v136 = v30;
          GPUTools::GL::EnumerateProgramActiveAttributes();
          GPUTools::FB::Encode((v164 + 6), 349, 516, "Cul", v100, v101, v102, v103, *v12, v30);
          v104 = [DYGetGLGuestAppClient() defaultFbufStream];
          v105 = v104;
          while (atomic_exchange(v104 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v105 + 14);
          GPUTools::FB::Encode((v164 + 6), 133, 516, "CulV<ul>", v106, v107, v108, v109, *v12, v30, "rhubarb");
          v110 = [DYGetGLGuestAppClient() defaultFbufStream];
          v111 = v110;
          while (atomic_exchange(v110 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v111 + 14);
          GPUTools::FB::Encode((v164 + 6), 123, 516, "CV<ul>", v112, v113, v114, v115, *v12, "rhubarb");
          v116 = [DYGetGLGuestAppClient() defaultFbufStream];
          v117 = v116;
          while (atomic_exchange(v116 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v117 + 14);
        }

LABEL_84:
        free(v129);
        v118 = atomic_fetch_add(v12 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v118 >= 1)
        {
          handle_opengl_thread_conflict(v12);
        }

        goto LABEL_89;
      }
    }

    LODWORD(v130) = v30;
    [*v12 getParameter:611 to:{&v130, v127}];
    v46 = v130;
    v45 = v162;
    goto LABEL_50;
  }

  atomic_fetch_add(v12 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v30 = (*(v12[3] + 6568))(a1, a2, a3, a4);
LABEL_89:
  _Block_object_dispose(&v163, 8);
  if (v169)
  {
    free(v169);
  }

  return v30;
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
      goto LABEL_64;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v50 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v50 >= 1)
    {
LABEL_64:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v51 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v51, 0, do_nothing);
      v52 = *(*(v13 + 3) + 6568);

      return v52(a1, a2, a3, a4);
    }
  }

  *(v13 + 4838) = 1;
  v66 = 0;
  v67 = &v66;
  v68 = 0x4812000000;
  v69 = __Block_byref_object_copy__0;
  v70 = __Block_byref_object_dispose__2;
  v71 = &unk_20760A;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode((v67 + 6), 888, "Ceip", v16, v17, v18, v19, v20, *v13, a2, a3, a4);
    check_errors(v13);
    v21 = byte_21B1D0;
    if (byte_21B1D0)
    {
      breakpoint_break((v67 + 6), &stru_338.flags, 1, v13[851], v13);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4)
    {
      v28 = 0;
    }

    else
    {
      v27 = mach_absolute_time();
      v28 = (*(*(v13 + 4) + 6568))(a1, a2, a3, a4);
      v29 = mach_absolute_time() - v27;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v30 = v67 + 6;
        *(v67[6] + 24) = v29;
      }

      else
      {
        v55 = __udivti3();
        v30 = v67 + 6;
        *(v67[6] + 24) = v55;
        v27 = __udivti3();
      }

      *(*v30 + 16) = v27;
      if (gCheckGLErrors == 1)
      {
        check_errors(v13);
      }
    }

    GPUTools::FB::Encode((v67 + 6), 4294955008, "ui", v22, v23, v24, v25, v26, v28);
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
      encode_driver_events(v13, (v67 + 6));
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, (v67 + 6));
    v31 = v13[851];
    if (v31 && (gBreakOnError & 1) != 0)
    {
      v53 = 3;
      v54 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v21 & 2) == 0)
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
        if ((gCheckGLErrors & 1) == 0)
        {
          check_errors(v13);
        }

        if (!v13[851])
        {
          v65 = 0;
          (*(*(v13 + 4) + 5264))(*(v13 + 2), v28, 35714, &v65);
          LODWORD(v56) = 0;
          info_log = query_info_log(v13, v28, *(*(v13 + 4) + 5264), *(*(v13 + 4) + 5280), &v56);
          v40 = info_log;
          if (v56)
          {
            if (v56 >= 0x400)
            {
              v41 = 1024;
            }

            else
            {
              v41 = v56;
            }

            info_log[v41 - 1] = 0;
          }

          v42 = v65;
          if (v65 == 1)
          {
            LODWORD(v63[0]) = v28;
            [*v13 getParameter:611 to:v63];
            v43 = LODWORD(v63[0]);
            v42 = v65;
          }

          else
          {
            v43 = 0;
          }

          GPUTools::FB::Encode((v67 + 6), 4294955024, "CiuiiSiieui", v35, v36, v37, v38, v39, *v13, 12, v28, v56, v40, v42, 0, 35980, v43);
          v44 = [DYGetGLGuestAppClient() defaultFbufStream];
          v45 = v44;
          while (atomic_exchange(v44 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v45 + 14);
          free(v40);
          wrapper_cache_pipeline_create_shader_program(v13, v28, a2, a3, a4);
          if (v65 == 1)
          {
            v46 = *(v13 + 4);
            v56 = v13;
            v57 = v46;
            v63[0] = _NSConcreteStackBlock;
            v63[1] = 3221225472;
            v63[2] = ___ZL22create_shader_programvP15__GLIContextRecjiPPKc_block_invoke_0;
            v63[3] = &unk_20D130;
            v63[4] = &v66;
            v63[5] = v13;
            v64 = v28;
            GPUTools::GL::EnumerateProgramActiveAttributes();
            if (v13[865] >= 3)
            {
              v56 = _NSConcreteStackBlock;
              v57 = 3221225472;
              v58 = ___ZL22create_shader_programvP15__GLIContextRecjiPPKc_block_invoke_2_0;
              v59 = &unk_20D158;
              v60 = &v66;
              v61 = v13;
              v62 = v28;
              GPUTools::GL::EnumerateProgramTransformFeedbackVaryings();
              GPUTools::GL::EnumerateProgramActiveUniformBlocks();
            }

            GPUTools::GL::EnumerateProgramActiveUniforms();
          }
        }

        v47 = atomic_fetch_add(v13 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v47 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_60;
      }

      v53 = 2;
      v54 = 888;
    }

    breakpoint_break((v67 + 6), v54, v53, v31, v13);
    goto LABEL_34;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v28 = (*(*(v13 + 3) + 6568))(a1, a2, a3, a4);
LABEL_60:
  _Block_object_dispose(&v66, 8);
  if (v72)
  {
    free(v72);
  }

  return v28;
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
LABEL_28:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
LABEL_33:
      v21 = *(*(v13 + 24) + 6568);

      return v21(a1, a2, a3, a4);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_28;
    }
  }

  *(v13 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_33;
  }

  check_errors(v13);
  v16 = (*(*(v13 + 32) + 6568))(a1, a2, a3, a4);
  v17 = v16;
  ++*(v13 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v13);
    if (v17)
    {
      goto LABEL_20;
    }
  }

  else if (v16)
  {
LABEL_20:
    if ((gCheckGLErrors & 1) == 0)
    {
      check_errors(v13);
    }

    if (!*(v13 + 3404))
    {
      wrapper_cache_pipeline_create_shader_program(v13, v17, a2, a3, a4);
    }
  }

  add = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors != 1 || (add - 1) < 1)
  {
    return v17;
  }

  handle_opengl_thread_conflict(v13);
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
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_29:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v22 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v22, 0, do_nothing);
LABEL_33:
      v23 = *(*(v13 + 24) + 6568);

      return v23(a1, a2, a3, a4);
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_29;
    }
  }

  *(v13 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_33;
  }

  check_errors(v13);
  v16 = mach_absolute_time();
  v17 = (*(*(v13 + 32) + 6568))(a1, a2, a3, a4);
  v18 = mach_absolute_time();
  v19 = vdupq_n_s64(1uLL);
  v19.i64[0] = v18 - v16;
  *(v13 + 3696) = vaddq_s64(v19, *(v13 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v13);
    if (v17)
    {
      goto LABEL_20;
    }
  }

  else if (v17)
  {
LABEL_20:
    if ((gCheckGLErrors & 1) == 0)
    {
      check_errors(v13);
    }

    if (!*(v13 + 3404))
    {
      wrapper_cache_pipeline_create_shader_program(v13, v17, a2, a3, a4);
    }
  }

  add = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {
    handle_opengl_thread_conflict(v13);
  }

  return v17;
}

{
  v8 = ContextInfo::activeCtxInfoMap + 8;
  if (!*(ContextInfo::activeCtxInfoMap + 8))
  {
    goto LABEL_8;
  }

  do
  {
    OUTLINED_FUNCTION_8_2();
    if (v12)
    {
      v9 = v10;
    }
  }

  while (*(v10 + 8 * v11));
  if (v9 == v8 || *(v9 + 32) > a1)
  {
LABEL_8:
    v9 = v8;
  }

  v13 = *(v9 + 40);
  OUTLINED_FUNCTION_8_0(v13);
  v14 = (*(*(v13 + 32) + 6568))(a1, a2, a3, a4);
  if (v14)
  {
    if ((gCheckGLErrors & 1) == 0)
    {
      OUTLINED_FUNCTION_8_0(v13);
    }

    if (!*(v13 + 3404))
    {
      wrapper_cache_pipeline_create_shader_program(v13, v14, a2, a3, a4);
    }
  }

  return v14;
}

void sub_82B24(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  v3 = *(v1 - 128);
  if (v3)
  {
    free(v3);
  }

  _Unwind_Resume(a1);
}

void bind_program_pipeline(__GLIContextRec *a1, uint64_t a2)
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
      bind_program_pipeline((v9 + 4640));
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

      v12 = v13 + v14;
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
      v13[1] = 887;
      v13[8] = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v13 + 1) = v43;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21B1CF;
      if (byte_21B1CF)
      {
        breakpoint_break(&__ptr, (&stru_338.nreloc + 3), 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 6576))(a1, a2);
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
        v38 = 887;
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
  (*(*(v9 + 24) + 6576))(a1, a2);
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
      bind_program_pipeline((v9 + 4640));
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

      v12 = v13 + v14;
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
      v13[1] = 887;
      v13[8] = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v13 + 1) = v43;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21B1CF;
      if (byte_21B1CF)
      {
        breakpoint_break(&__ptr, (&stru_338.nreloc + 3), 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 6576))(a1, a2);
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
        v38 = 887;
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
  (*(*(v9 + 24) + 6576))(a1, a2);
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
      bind_program_pipeline((v9 + 4640));
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
    v13 = *(*(v9 + 24) + 6576);

    v13(a1, a2);
  }

  else
  {
    (*(*(v9 + 32) + 6576))(a1, a2);
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
      bind_program_pipeline((v9 + 4640));
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
    v16 = *(*(v9 + 24) + 6576);

    v16(a1, a2);
  }

  else
  {
    v12 = mach_absolute_time();
    (*(*(v9 + 32) + 6576))(a1, a2);
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

void sub_83100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void delete_program_pipelines(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
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
      goto LABEL_23;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v19 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v19 >= 1)
    {
LABEL_23:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
      v21 = *(v11[3] + 6584);

      v21(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x4812000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose__1;
  v29 = &unk_20760A;
  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    (*(v11[3] + 6584))(a1, a2, a3);
  }

  else
  {
    snprintf(v11 + 4709, 0x40uLL, "Ci@%dui", a2);
    GPUTools::FB::Encode((v25 + 6), 889, 0, v11 + 4709, v14, v15, v16, v17, *v11, a2, a3);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = ___ZL24delete_program_pipelinesP15__GLIContextReciPKj_block_invoke_3;
    v22[3] = &unk_20D1D0;
    v22[4] = &v24;
    v22[5] = v11;
    v23 = a2;
    v22[6] = a1;
    v22[7] = a3;
    wrapper_cache_pipeline_delete(v11, a2, a3, v22);
    add = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {
      handle_opengl_thread_conflict(v11);
    }
  }

  link_program_ARB(&v24, v30);
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
      goto LABEL_23;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v19 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v19 >= 1)
    {
LABEL_23:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
      v21 = *(v11[3] + 6584);

      v21(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x4812000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__2;
  v29 = &unk_20760A;
  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    (*(v11[3] + 6584))(a1, a2, a3);
  }

  else
  {
    snprintf(v11 + 4709, 0x40uLL, "Ci@%dui", a2);
    GPUTools::FB::Encode((v25 + 6), 889, 0, v11 + 4709, v14, v15, v16, v17, *v11, a2, a3);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = ___ZL24delete_program_pipelinesP15__GLIContextReciPKj_block_invoke_4;
    v22[3] = &unk_20D1D0;
    v22[4] = &v24;
    v22[5] = v11;
    v23 = a2;
    v22[6] = a1;
    v22[7] = a3;
    wrapper_cache_pipeline_delete(v11, a2, a3, v22);
    add = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {
      handle_opengl_thread_conflict(v11);
    }
  }

  link_program_ARB(&v24, v30);
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
LABEL_22:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v16 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v16, 0, do_nothing);
LABEL_25:
      v17 = *(*(v11 + 24) + 6584);

      v17(a1, a2, a3);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v15 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v15 >= 1)
    {
      goto LABEL_22;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_25;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = ___ZL24delete_program_pipelinesP15__GLIContextReciPKj_block_invoke;
  v18[3] = &__block_descriptor_60_e5_v8__0l;
  v18[4] = v11;
  v18[5] = a1;
  v19 = a2;
  v18[6] = a3;
  wrapper_cache_pipeline_delete(v11, a2, a3, v18);
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
LABEL_22:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v16 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v16, 0, do_nothing);
LABEL_25:
      v17 = *(*(v11 + 24) + 6584);

      v17(a1, a2, a3);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v15 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v15 >= 1)
    {
      goto LABEL_22;
    }
  }

  *(v11 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_25;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = ___ZL24delete_program_pipelinesP15__GLIContextReciPKj_block_invoke_0;
  v18[3] = &__block_descriptor_60_e5_v8__0l;
  v18[4] = v11;
  v18[5] = a1;
  v19 = a2;
  v18[6] = a3;
  wrapper_cache_pipeline_delete(v11, a2, a3, v18);
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
  if (gCheckGLErrors == 1 && v12 > 1)
  {
    handle_opengl_thread_conflict(v11);
  }

  if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
  {
    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    v16 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
    dispatch_sync_f(v16, 0, do_nothing);
  }

  else
  {
    *(v11 + 4838) = 1;
    if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
    {
      wrapper_cache_pipeline_delete(v11, a2, a3, &__block_literal_global_1);
      v14 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
      if (gCheckGLErrors == 1 && v14 >= 1)
      {

        handle_opengl_thread_conflict(v11);
      }

      return;
    }

    atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
  }

  v17 = *(*(v11 + 24) + 6584);

  v17(a1, a2, a3);
}

void sub_83418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  _Block_object_dispose(&a22, 8);
  if (a28)
  {
    free(a28);
  }

  _Unwind_Resume(a1);
}

void gen_program_pipelines(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
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
      v35 = *(v11[3] + 6592);

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
    GPUTools::FB::Encode(&v41, 890, v11 + 4709, v14, v15, v16, v17, v18, *v11, a2, a3);
    v19 = byte_21B1D2;
    if (byte_21B1D2)
    {
      breakpoint_break(&v41, (&stru_338.flags + 2), 1, *(v11 + 851), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v24 = mach_absolute_time();
      (*(v11[4] + 6592))(a1, a2, a3);
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

    GPUTools::FB::Encode(&v41, 890, 0, v11 + 4709, v20, v21, v22, v23, *v11, a2, a3);
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
      v37 = 890;
    }

    breakpoint_break(&v41, v37, v36, v28, v11);
    goto LABEL_34;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v11[3] + 6592))(a1, a2, a3);
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
      v35 = *(v11[3] + 6592);

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
    GPUTools::FB::Encode(&v41, 890, v11 + 4709, v14, v15, v16, v17, v18, *v11, a2, a3);
    v19 = byte_21B1D2;
    if (byte_21B1D2)
    {
      breakpoint_break(&v41, (&stru_338.flags + 2), 1, *(v11 + 851), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v24 = mach_absolute_time();
      (*(v11[4] + 6592))(a1, a2, a3);
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

    GPUTools::FB::Encode(&v41, 890, 0, v11 + 4709, v20, v21, v22, v23, *v11, a2, a3);
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
      v37 = 890;
    }

    breakpoint_break(&v41, v37, v36, v28, v11);
    goto LABEL_34;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v11[3] + 6592))(a1, a2, a3);
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
      v16 = *(*(v11 + 24) + 6592);

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

  (*(*(v11 + 32) + 6592))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 6592);

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
  (*(*(v11 + 32) + 6592))(a1, a2, a3);
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

void sub_838AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  atomic_store(0, (v16 + 56));
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t is_program_pipeline(__GLIContextRec *a1, uint64_t a2)
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
      v44 = *(*(v9 + 24) + 6600);

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
      v13[1] = 896;
      v13[8] = 256;
      v52 = 0;
      pthread_threadid_np(0, &v52);
      *(v13 + 1) = v52;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21B1D8;
      if (byte_21B1D8)
      {
        breakpoint_break(&__ptr, &stru_338.reserved2, 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 6600))(a1, a2);
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
        v47 = 896;
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
  v33 = (*(*(v9 + 24) + 6600))(a1, a2);
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
      v44 = *(*(v9 + 24) + 6600);

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
      v13[1] = 896;
      v13[8] = 256;
      v52 = 0;
      pthread_threadid_np(0, &v52);
      *(v13 + 1) = v52;
      v13[9] = 6911299;
      *(v13 + 5) = *v9;
      v13[12] = a2;
      v26 = byte_21B1D8;
      if (byte_21B1D8)
      {
        breakpoint_break(&__ptr, &stru_338.reserved2, 1, *(v9 + 3404), v9);
      }

      if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4)
      {
        v33 = 0;
        goto LABEL_28;
      }

      v32 = mach_absolute_time();
      v33 = (*(*(v9 + 32) + 6600))(a1, a2);
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
        v47 = 896;
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
  v33 = (*(*(v9 + 24) + 6600))(a1, a2);
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
      v17 = *(*(v9 + 24) + 6600);

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

  result = (*(*(v9 + 32) + 6600))(a1, a2);
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
      v19 = *(*(v9 + 24) + 6600);

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
  v13 = (*(*(v9 + 32) + 6600))(a1, a2);
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

  v16 = *(*(v9 + 24) + 6600);

  return v16(a1, a2);
}