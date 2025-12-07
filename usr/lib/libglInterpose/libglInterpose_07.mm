void sub_3EE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void blend_equation(__GLIContextRec *a1, uint64_t a2)
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
      blend_equation((v9 + 4640));
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
      *(v13 + 1) = 24;
      *(v13 + 8) = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v13 + 1) = v43;
      strcpy(v13 + 36, "Ce");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21AE70;
      if (byte_21AE70)
      {
        breakpoint_break(&__ptr, &dword_18, 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 2704))(a1, a2);
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
        v38 = 24;
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
  (*(*(v9 + 24) + 2704))(a1, a2);
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
      blend_equation((v9 + 4640));
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
      *(v13 + 1) = 24;
      *(v13 + 8) = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v13 + 1) = v43;
      strcpy(v13 + 36, "Ce");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21AE70;
      if (byte_21AE70)
      {
        breakpoint_break(&__ptr, &dword_18, 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 2704))(a1, a2);
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
        v38 = 24;
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
  (*(*(v9 + 24) + 2704))(a1, a2);
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
      blend_equation((v9 + 4640));
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
    v13 = *(*(v9 + 24) + 2704);

    v13(a1, a2);
  }

  else
  {
    (*(*(v9 + 32) + 2704))(a1, a2);
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
      blend_equation((v9 + 4640));
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
    v16 = *(*(v9 + 24) + 2704);

    v16(a1, a2);
  }

  else
  {
    v12 = mach_absolute_time();
    (*(*(v9 + 32) + 2704))(a1, a2);
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

void sub_3F368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void client_active_texture(__GLIContextRec *a1, uint64_t a2)
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
  v10 = atomic_fetch_add(v9 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_44:
      client_active_texture(v9 + 1160);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v25 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v25 >= 1)
    {
      goto LABEL_44;
    }
  }

  *(v9 + 4838) = 1;
  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v30, 44, 0, "Ce", v12, v13, v14, v15, *v9, a2);
    v16 = byte_21AE84;
    if (byte_21AE84)
    {
      breakpoint_break(v30, &stru_20.segname[4], 1, v9[851], v9);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v16 & 4))
    {
      v17 = mach_absolute_time();
      (*(*(v9 + 4) + 2728))(a1, a2);
      v18 = mach_absolute_time() - v17;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v19 = v30[0];
        *(v30[0] + 2) = v17;
        v19[3] = v18;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v28 = __udivti3();
        v29 = v30[0];
        *(v30[0] + 3) = v28;
        v29[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v9);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (v9[851])
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v9, v30);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v9 + 435, v9 + 440, v30);
    v20 = v9[851];
    if (v20 && (gBreakOnError & 1) != 0)
    {
      v26 = 3;
      v27 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v16 & 2) == 0)
      {
LABEL_32:
        v21 = [DYGetGLGuestAppClient() defaultFbufStream];
        v22 = v21;
        while (atomic_exchange(v21 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v22 + 14);
        v9[519] = a2;
        v23 = atomic_fetch_add(v9 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v23 >= 1)
        {
          handle_opengl_thread_conflict(v9);
        }

        goto LABEL_40;
      }

      v26 = 2;
      v27 = 44;
    }

    breakpoint_break(v30, v27, v26, v20, v9);
    goto LABEL_32;
  }

  atomic_fetch_add(v9 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v9 + 3) + 2728))(a1, a2);
LABEL_40:
  if (v30[0])
  {
    free(v30[0]);
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
  v10 = atomic_fetch_add(v9 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_44:
      client_active_texture(v9 + 1160);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v25 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v25 >= 1)
    {
      goto LABEL_44;
    }
  }

  *(v9 + 4838) = 1;
  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v30, 44, 0, "Ce", v12, v13, v14, v15, *v9, a2);
    v16 = byte_21AE84;
    if (byte_21AE84)
    {
      breakpoint_break(v30, &stru_20.segname[4], 1, v9[851], v9);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v16 & 4))
    {
      v17 = mach_absolute_time();
      (*(*(v9 + 4) + 2728))(a1, a2);
      v18 = mach_absolute_time() - v17;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v19 = v30[0];
        *(v30[0] + 2) = v17;
        v19[3] = v18;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v28 = __udivti3();
        v29 = v30[0];
        *(v30[0] + 3) = v28;
        v29[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v9);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (v9[851])
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v9, v30);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v9 + 435, v9 + 440, v30);
    v20 = v9[851];
    if (v20 && (gBreakOnError & 1) != 0)
    {
      v26 = 3;
      v27 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v16 & 2) == 0)
      {
LABEL_32:
        v21 = [DYGetGLGuestAppClient() defaultFbufStream];
        v22 = v21;
        while (atomic_exchange(v21 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v22 + 14);
        v9[519] = a2;
        v23 = atomic_fetch_add(v9 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v23 >= 1)
        {
          handle_opengl_thread_conflict(v9);
        }

        goto LABEL_40;
      }

      v26 = 2;
      v27 = 44;
    }

    breakpoint_break(v30, v27, v26, v20, v9);
    goto LABEL_32;
  }

  atomic_fetch_add(v9 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v9 + 3) + 2728))(a1, a2);
LABEL_40:
  if (v30[0])
  {
    free(v30[0]);
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
      client_active_texture((v9 + 4640));
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
    v13 = *(*(v9 + 24) + 2728);

    v13(a1, a2);
  }

  else
  {
    (*(*(v9 + 32) + 2728))(a1, a2);
    ++*(v9 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v9);
    }

    *(v9 + 2076) = a2;
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
      client_active_texture((v9 + 4640));
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
    v16 = *(*(v9 + 24) + 2728);

    v16(a1, a2);
  }

  else
  {
    v12 = mach_absolute_time();
    (*(*(v9 + 32) + 2728))(a1, a2);
    v13 = mach_absolute_time();
    v14 = vdupq_n_s64(1uLL);
    v14.i64[0] = v13 - v12;
    *(v9 + 3696) = vaddq_s64(v14, *(v9 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v9);
    }

    *(v9 + 2076) = a2;
    add = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v9);
    }
  }
}

void sub_3F73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void active_texture(__GLIContextRec *a1, uint64_t a2)
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
  v10 = atomic_fetch_add(v9 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_44:
      active_texture(v9 + 1160);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v25 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v25 >= 1)
    {
      goto LABEL_44;
    }
  }

  *(v9 + 4838) = 1;
  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v30, 2, 0, "Ce", v12, v13, v14, v15, *v9, a2);
    v16 = byte_21AE5A;
    if (byte_21AE5A)
    {
      breakpoint_break(v30, (&dword_0 + 2), 1, v9[851], v9);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v16 & 4))
    {
      v17 = mach_absolute_time();
      (*(*(v9 + 4) + 2736))(a1, a2);
      v18 = mach_absolute_time() - v17;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v19 = v30[0];
        *(v30[0] + 2) = v17;
        v19[3] = v18;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v28 = __udivti3();
        v29 = v30[0];
        *(v30[0] + 3) = v28;
        v29[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v9);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (v9[851])
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v9, v30);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v9 + 435, v9 + 440, v30);
    v20 = v9[851];
    if (v20 && (gBreakOnError & 1) != 0)
    {
      v26 = 3;
      v27 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v16 & 2) == 0)
      {
LABEL_32:
        v21 = [DYGetGLGuestAppClient() defaultFbufStream];
        v22 = v21;
        while (atomic_exchange(v21 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v22 + 14);
        v9[518] = a2;
        v23 = atomic_fetch_add(v9 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v23 >= 1)
        {
          handle_opengl_thread_conflict(v9);
        }

        goto LABEL_40;
      }

      v27 = 2;
      v26 = 2;
    }

    breakpoint_break(v30, v27, v26, v20, v9);
    goto LABEL_32;
  }

  atomic_fetch_add(v9 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v9 + 3) + 2736))(a1, a2);
LABEL_40:
  if (v30[0])
  {
    free(v30[0]);
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
  v10 = atomic_fetch_add(v9 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v10 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_44:
      active_texture(v9 + 1160);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v9);
    v25 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v25 >= 1)
    {
      goto LABEL_44;
    }
  }

  *(v9 + 4838) = 1;
  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v30, 2, 0, "Ce", v12, v13, v14, v15, *v9, a2);
    v16 = byte_21AE5A;
    if (byte_21AE5A)
    {
      breakpoint_break(v30, (&dword_0 + 2), 1, v9[851], v9);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v16 & 4))
    {
      v17 = mach_absolute_time();
      (*(*(v9 + 4) + 2736))(a1, a2);
      v18 = mach_absolute_time() - v17;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v19 = v30[0];
        *(v30[0] + 2) = v17;
        v19[3] = v18;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v28 = __udivti3();
        v29 = v30[0];
        *(v30[0] + 3) = v28;
        v29[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v9);
    }

LABEL_23:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (v9[851])
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v9, v30);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v9 + 435, v9 + 440, v30);
    v20 = v9[851];
    if (v20 && (gBreakOnError & 1) != 0)
    {
      v26 = 3;
      v27 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v16 & 2) == 0)
      {
LABEL_32:
        v21 = [DYGetGLGuestAppClient() defaultFbufStream];
        v22 = v21;
        while (atomic_exchange(v21 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v22 + 14);
        v9[518] = a2;
        v23 = atomic_fetch_add(v9 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v23 >= 1)
        {
          handle_opengl_thread_conflict(v9);
        }

        goto LABEL_40;
      }

      v27 = 2;
      v26 = 2;
    }

    breakpoint_break(v30, v27, v26, v20, v9);
    goto LABEL_32;
  }

  atomic_fetch_add(v9 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v9 + 3) + 2736))(a1, a2);
LABEL_40:
  if (v30[0])
  {
    free(v30[0]);
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
      active_texture((v9 + 4640));
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
    v13 = *(*(v9 + 24) + 2736);

    v13(a1, a2);
  }

  else
  {
    (*(*(v9 + 32) + 2736))(a1, a2);
    ++*(v9 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v9);
    }

    *(v9 + 2072) = a2;
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
      active_texture((v9 + 4640));
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
    v16 = *(*(v9 + 24) + 2736);

    v16(a1, a2);
  }

  else
  {
    v12 = mach_absolute_time();
    (*(*(v9 + 32) + 2736))(a1, a2);
    v13 = mach_absolute_time();
    v14 = vdupq_n_s64(1uLL);
    v14.i64[0] = v13 - v12;
    *(v9 + 3696) = vaddq_s64(v14, *(v9 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v9);
    }

    *(v9 + 2072) = a2;
    add = atomic_fetch_add((v9 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v9);
    }
  }
}

void sub_3FB08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  atomic_store(0, (v12 + 56));
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void multi_tex_coord4f(__GLIContextRec *a1, uint64_t a2, float a3, float a4, float a5, float a6)
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
      v45 = *(*(v17 + 24) + 2952);
      v46.n128_f32[0] = a3;
      v47.n128_f32[0] = a4;
      v48.n128_f32[0] = a5;
      v49.n128_f32[0] = a6;

      v45(a1, a2, v46, v47, v48, v49);
      return;
    }
  }

  *(v17 + 4838) = 1;
  __ptr = 0;
  v59 = 0;
  v60 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v21 = __ptr;
    v20 = v59;
    v22 = v59 - __ptr;
    v23 = v60;
    v24 = v60 - (v59 - __ptr);
    if (v24 <= 0x47)
    {
      v50 = (327 - v24) & 0x100;
      v60 += v50;
      v21 = malloc_type_malloc(v50 + v23, 0xF962E99uLL);
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

    *(v20 + 8) = 0;
    *(v20 + 2) = 0u;
    *(v20 + 3) = 0u;
    *v20 = 0u;
    *(v20 + 1) = 0u;
    v25 = v20 + 72;
    v59 = v20 + 72;
    v26 = v20 + 72 - v21;
    *v21 = v26;
    v27 = (v26 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v27 - v26;
    if (v27 == v26)
    {
      goto LABEL_23;
    }

    v29 = __ptr;
    v30 = v25 - __ptr;
    v31 = v60;
    v32 = v60 - (v25 - __ptr);
    if (v28 <= v32)
    {
      v33 = v59;
LABEL_22:
      bzero(v25, v28);
      v59 = &v33[v28];
      *v29 += v28;
LABEL_23:
      v21[1] = 412;
      v21[8] = 0;
      v57 = 0;
      pthread_threadid_np(0, &v57);
      *(v21 + 1) = v57;
      strcpy(v21 + 36, "Ceffff");
      *(v21 + 11) = *v17;
      v21[13] = a2;
      *(v21 + 14) = a3;
      *(v21 + 15) = a4;
      *(v21 + 16) = a5;
      *(v21 + 17) = a6;
      v34 = byte_21AFF4;
      if (byte_21AFF4)
      {
        breakpoint_break(&__ptr, &stru_158.reserved1, 1, *(v17 + 3404), v17);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v34 & 4))
      {
        v35 = mach_absolute_time();
        (*(*(v17 + 32) + 2952))(a1, a2, a3, a4, a5, a6);
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
          v53 = __udivti3();
          v54 = __ptr;
          *(__ptr + 3) = v53;
          v54[2] = __udivti3();
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
        v51 = 3;
        v52 = 0xFFFFFFFFLL;
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

        v51 = 2;
        v52 = 412;
      }

      breakpoint_break(&__ptr, v52, v51, v38, v17);
      goto LABEL_37;
    }

    v55 = (v28 - v32 + 255) & 0xFFFFFF00;
    v56 = v55 + v60;
    v60 += v55;
    if (__ptr)
    {
      v29 = reallocf(__ptr, v56);
      __ptr = v29;
      if (v29)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v29 = malloc_type_malloc(v55 + v31, 0xF962E99uLL);
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
  (*(*(v17 + 24) + 2952))(a1, a2, a3, a4, a5, a6);
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
      v45 = *(*(v17 + 24) + 2952);
      v46.n128_f32[0] = a3;
      v47.n128_f32[0] = a4;
      v48.n128_f32[0] = a5;
      v49.n128_f32[0] = a6;

      v45(a1, a2, v46, v47, v48, v49);
      return;
    }
  }

  *(v17 + 4838) = 1;
  __ptr = 0;
  v59 = 0;
  v60 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v21 = __ptr;
    v20 = v59;
    v22 = v59 - __ptr;
    v23 = v60;
    v24 = v60 - (v59 - __ptr);
    if (v24 <= 0x47)
    {
      v50 = (327 - v24) & 0x100;
      v60 += v50;
      v21 = malloc_type_malloc(v50 + v23, 0xF962E99uLL);
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

    *(v20 + 8) = 0;
    *(v20 + 2) = 0u;
    *(v20 + 3) = 0u;
    *v20 = 0u;
    *(v20 + 1) = 0u;
    v25 = v20 + 72;
    v59 = v20 + 72;
    v26 = v20 + 72 - v21;
    *v21 = v26;
    v27 = (v26 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v27 - v26;
    if (v27 == v26)
    {
      goto LABEL_23;
    }

    v29 = __ptr;
    v30 = v25 - __ptr;
    v31 = v60;
    v32 = v60 - (v25 - __ptr);
    if (v28 <= v32)
    {
      v33 = v59;
LABEL_22:
      bzero(v25, v28);
      v59 = &v33[v28];
      *v29 += v28;
LABEL_23:
      v21[1] = 412;
      v21[8] = 0;
      v57 = 0;
      pthread_threadid_np(0, &v57);
      *(v21 + 1) = v57;
      strcpy(v21 + 36, "Ceffff");
      *(v21 + 11) = *v17;
      v21[13] = a2;
      *(v21 + 14) = a3;
      *(v21 + 15) = a4;
      *(v21 + 16) = a5;
      *(v21 + 17) = a6;
      v34 = byte_21AFF4;
      if (byte_21AFF4)
      {
        breakpoint_break(&__ptr, &stru_158.reserved1, 1, *(v17 + 3404), v17);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v34 & 4))
      {
        v35 = mach_absolute_time();
        (*(*(v17 + 32) + 2952))(a1, a2, a3, a4, a5, a6);
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
          v53 = __udivti3();
          v54 = __ptr;
          *(__ptr + 3) = v53;
          v54[2] = __udivti3();
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
        v51 = 3;
        v52 = 0xFFFFFFFFLL;
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

        v51 = 2;
        v52 = 412;
      }

      breakpoint_break(&__ptr, v52, v51, v38, v17);
      goto LABEL_37;
    }

    v55 = (v28 - v32 + 255) & 0xFFFFFF00;
    v56 = v55 + v60;
    v60 += v55;
    if (__ptr)
    {
      v29 = reallocf(__ptr, v56);
      __ptr = v29;
      if (v29)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v29 = malloc_type_malloc(v55 + v31, 0xF962E99uLL);
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
  (*(*(v17 + 24) + 2952))(a1, a2, a3, a4, a5, a6);
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
      v26 = *(*(v17 + 24) + 2952);
      v22.n128_f32[0] = a3;
      v23.n128_f32[0] = a4;
      v24.n128_f32[0] = a5;
      v25.n128_f32[0] = a6;

      v26(a1, a2, v22, v23, v24, v25);
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

  (*(*(v17 + 32) + 2952))(a1, a2, a3, a4, a5, a6);
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
      v29 = *(*(v17 + 24) + 2952);
      v25.n128_f32[0] = a3;
      v26.n128_f32[0] = a4;
      v27.n128_f32[0] = a5;
      v28.n128_f32[0] = a6;

      v29(a1, a2, v25, v26, v27, v28);
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
  (*(*(v17 + 32) + 2952))(a1, a2, a3, a4, a5, a6);
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

void sub_4010C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void compressed_tex_image3D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10)
{
  v16 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v18 = *(v16 + 32);
    v19 = v18 >= a1;
    v20 = v18 < a1;
    if (v19)
    {
      v17 = v16;
    }

    v16 = *(v16 + 8 * v20);
  }

  while (v16);
  if (v17 == ContextInfo::activeCtxInfoMap + 8 || *(v17 + 32) > a1)
  {
LABEL_9:
    v17 = ContextInfo::activeCtxInfoMap + 8;
  }

  v21 = *(v17 + 40);
  v22 = atomic_fetch_add(v21 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v22 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v21);
    v38 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v38 >= 1)
    {
LABEL_48:
      atomic_fetch_add(v21 + 1160, 0xFFFFFFFF);
      v39 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v39, 0, do_nothing);
      v40 = *(v21[3] + 3032);

      v40(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      return;
    }
  }

  *(v21 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if (!a10 || *(v21 + 511))
    {
      strcpy(v21 + 4709, "Ceieiiiiit");
      v28 = a10;
    }

    else
    {
      DYGetGLGuestAppClient();
      v28 = v21 + 4644;
      GPUTools::Interpose::DYSavePointer();
      strcpy(v21 + 4709, "CeieiiiiiU");
    }

    GPUTools::FB::Encode(v47, 96, 4096, v21 + 4709, v24, v25, v26, v27, *v21, a2, a3, a4, a5, a6, a7, a8, a9, v28);
    v29 = byte_21AEB8;
    if (byte_21AEB8)
    {
      breakpoint_break(v47, &stru_20.nsects, 1, *(v21 + 851), v21);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v29 & 4))
    {
      v30 = mach_absolute_time();
      (*(v21[4] + 3032))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      v31 = mach_absolute_time() - v30;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v32 = v47[0];
        *(v47[0] + 2) = v30;
        v32[3] = v31;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v43 = __udivti3();
        v44 = v47[0];
        *(v47[0] + 3) = v43;
        v44[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      check_errors(v21);
    }

LABEL_27:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v21 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v21, v47);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v21 + 435, v21 + 440, v47);
    v33 = *(v21 + 851);
    if (v33 && (gBreakOnError & 1) != 0)
    {
      v41 = 3;
      v42 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v29 & 2) == 0)
      {
LABEL_36:
        v34 = [DYGetGLGuestAppClient() defaultFbufStream];
        v35 = v34;
        while (atomic_exchange(v34 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v35 + 14);
        wrapper_encode_texture_format_info(v21, a2, a3, a10);
        v36 = atomic_fetch_add(v21 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v36 >= 1)
        {
          handle_opengl_thread_conflict(v21);
        }

        goto LABEL_44;
      }

      v41 = 2;
      v42 = 96;
    }

    breakpoint_break(v47, v42, v41, v33, v21);
    goto LABEL_36;
  }

  atomic_fetch_add(v21 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v21[3] + 3032))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
LABEL_44:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_40680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  atomic_store(0, (v22 + 56));
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void compressed_tex_image2D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  v15 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v17 = *(v15 + 32);
    v18 = v17 >= a1;
    v19 = v17 < a1;
    if (v18)
    {
      v16 = v15;
    }

    v15 = *(v15 + 8 * v19);
  }

  while (v15);
  if (v16 == ContextInfo::activeCtxInfoMap + 8 || *(v16 + 32) > a1)
  {
LABEL_9:
    v16 = ContextInfo::activeCtxInfoMap + 8;
  }

  v20 = *(v16 + 40);
  v21 = atomic_fetch_add(v20 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v21 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v20);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_48:
      atomic_fetch_add(v20 + 1160, 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(v20[3] + 3040);

      v39(a1, a2, a3, a4, a5, a6, a7, a8, a9);
      return;
    }
  }

  *(v20 + 4838) = 1;
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if (!a9 || *(v20 + 511))
    {
      strcpy(v20 + 4709, "Ceieiiiit");
      v27 = a9;
    }

    else
    {
      DYGetGLGuestAppClient();
      v27 = v20 + 4644;
      GPUTools::Interpose::DYSavePointer();
      strcpy(v20 + 4709, "CeieiiiiU");
    }

    GPUTools::FB::Encode(v46, 95, 4096, v20 + 4709, v23, v24, v25, v26, *v20, a2, a3, a4, a5, a6, a7, a8, v27);
    v28 = byte_21AEB7;
    if (byte_21AEB7)
    {
      breakpoint_break(v46, (&stru_20.initprot + 3), 1, *(v20 + 851), v20);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
    {
      v29 = mach_absolute_time();
      (*(v20[4] + 3040))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
      v30 = mach_absolute_time() - v29;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v31 = v46[0];
        *(v46[0] + 2) = v29;
        v31[3] = v30;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v42 = __udivti3();
        v43 = v46[0];
        *(v46[0] + 3) = v42;
        v43[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      check_errors(v20);
    }

LABEL_27:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v20 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v20, v46);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v20 + 435, v20 + 440, v46);
    v32 = *(v20 + 851);
    if (v32 && (gBreakOnError & 1) != 0)
    {
      v40 = 3;
      v41 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v28 & 2) == 0)
      {
LABEL_36:
        v33 = [DYGetGLGuestAppClient() defaultFbufStream];
        v34 = v33;
        while (atomic_exchange(v33 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v34 + 14);
        wrapper_encode_texture_format_info(v20, a2, a3, a9);
        v35 = atomic_fetch_add(v20 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v35 >= 1)
        {
          handle_opengl_thread_conflict(v20);
        }

        goto LABEL_44;
      }

      v40 = 2;
      v41 = 95;
    }

    breakpoint_break(v46, v41, v40, v32, v20);
    goto LABEL_36;
  }

  atomic_fetch_add(v20 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v20[3] + 3040))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
LABEL_44:
  if (v46[0])
  {
    free(v46[0]);
  }
}

void sub_40BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(exception_object);
}

void compressed_tex_sub_image3D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11)
{
  v15 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v17 = *(v15 + 32);
    v18 = v17 >= a1;
    v19 = v17 < a1;
    if (v18)
    {
      v16 = v15;
    }

    v15 = *(v15 + 8 * v19);
  }

  while (v15);
  if (v16 == ContextInfo::activeCtxInfoMap + 8 || *(v16 + 32) > a1)
  {
LABEL_9:
    v16 = ContextInfo::activeCtxInfoMap + 8;
  }

  v20 = *(v16 + 40);
  v21 = atomic_fetch_add(v20 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v21 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v20);
    v42 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v42 >= 1)
    {
LABEL_48:
      atomic_fetch_add(v20 + 1160, 0xFFFFFFFF);
      v43 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v43, 0, do_nothing);
      v44 = *(v20[3] + 3056);

      v44(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      return;
    }
  }

  *(v20 + 4838) = 1;
  v53[0] = 0;
  v53[1] = 0;
  v54 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if (!a11 || *(v20 + 511))
    {
      strcpy(v20 + 4709, "Ceiiiiiiieit");
      v27 = a11;
    }

    else
    {
      DYGetGLGuestAppClient();
      v27 = v20 + 4644;
      GPUTools::Interpose::DYSavePointer();
      strcpy(v20 + 4709, "CeiiiiiiieiU");
    }

    GPUTools::FB::Encode(v53, 99, 4096, v20 + 4709, v23, v24, v25, v26, *v20, a2, a3, a4, a5, a6, a7, a8, a9, HIDWORD(a9), a10, v27);
    v28 = byte_21AEBB;
    if (byte_21AEBB)
    {
      breakpoint_break(v53, (&stru_20.nsects + 3), 1, *(v20 + 851), v20);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
    {
      v29 = mach_absolute_time();
      (*(v20[4] + 3056))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      v30 = mach_absolute_time() - v29;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v31 = v53[0];
        *(v53[0] + 2) = v29;
        v31[3] = v30;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v47 = __udivti3();
        v48 = v53[0];
        *(v53[0] + 3) = v47;
        v48[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      check_errors(v20);
    }

LABEL_27:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v20 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v20, v53);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v20 + 435, v20 + 440, v53);
    v32 = *(v20 + 851);
    if (v32 && (gBreakOnError & 1) != 0)
    {
      v45 = 3;
      v46 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v28 & 2) == 0)
      {
LABEL_36:
        v33 = [DYGetGLGuestAppClient() defaultFbufStream];
        v34 = v33;
        while (atomic_exchange(v33 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v34 + 14);
        v35 = *v20;
        v55[0] = 0;
        v55[1] = 0;
        v56 = 0;
        GPUTools::FB::Encode(v55, 4294955024, 0x2000, "Cietee", v36, v37, v38, v39, v35, 16, 0, a11, 0, 0);
        v40 = [DYGetGLGuestAppClient() defaultFbufStream];
        v41 = v40;
        while (atomic_exchange(v40 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        if (tex_sub_image2D(v41 + 14, v55))
        {
          handle_opengl_thread_conflict(v20);
        }

        goto LABEL_44;
      }

      v45 = 2;
      v46 = 99;
    }

    breakpoint_break(v53, v46, v45, v32, v20);
    goto LABEL_36;
  }

  atomic_fetch_add(v20 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v20[3] + 3056))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
LABEL_44:
  if (v53[0])
  {
    free(v53[0]);
  }
}

void sub_411A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  if (a26)
  {
    free(a26);
  }

  _Unwind_Resume(exception_object);
}

void compressed_tex_sub_image2D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10)
{
  v16 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v18 = *(v16 + 32);
    v19 = v18 >= a1;
    v20 = v18 < a1;
    if (v19)
    {
      v17 = v16;
    }

    v16 = *(v16 + 8 * v20);
  }

  while (v16);
  if (v17 == ContextInfo::activeCtxInfoMap + 8 || *(v17 + 32) > a1)
  {
LABEL_9:
    v17 = ContextInfo::activeCtxInfoMap + 8;
  }

  v21 = *(v17 + 40);
  v22 = atomic_fetch_add(v21 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v22 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v21);
    v43 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v43 >= 1)
    {
LABEL_48:
      atomic_fetch_add(v21 + 1160, 0xFFFFFFFF);
      v44 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v44, 0, do_nothing);
      v45 = *(v21[3] + 3064);

      v45(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      return;
    }
  }

  *(v21 + 4838) = 1;
  v52[0] = 0;
  v52[1] = 0;
  v53 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if (!a10 || *(v21 + 511))
    {
      strcpy(v21 + 4709, "Ceiiiiieit");
      v28 = a10;
    }

    else
    {
      DYGetGLGuestAppClient();
      v28 = v21 + 4644;
      GPUTools::Interpose::DYSavePointer();
      strcpy(v21 + 4709, "CeiiiiieiU");
    }

    GPUTools::FB::Encode(v52, 98, 4096, v21 + 4709, v24, v25, v26, v27, *v21, a2, a3, a4, a5, a6, a7, a8, a9, v28);
    v29 = byte_21AEBA;
    if (byte_21AEBA)
    {
      breakpoint_break(v52, (&stru_20.nsects + 2), 1, *(v21 + 851), v21);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v29 & 4))
    {
      v30 = mach_absolute_time();
      (*(v21[4] + 3064))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      v31 = mach_absolute_time() - v30;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v32 = v52[0];
        *(v52[0] + 2) = v30;
        v32[3] = v31;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v48 = __udivti3();
        v49 = v52[0];
        *(v52[0] + 3) = v48;
        v49[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      check_errors(v21);
    }

LABEL_27:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v21 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v21, v52);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v21 + 435, v21 + 440, v52);
    v33 = *(v21 + 851);
    if (v33 && (gBreakOnError & 1) != 0)
    {
      v46 = 3;
      v47 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v29 & 2) == 0)
      {
LABEL_36:
        v34 = [DYGetGLGuestAppClient() defaultFbufStream];
        v35 = v34;
        while (atomic_exchange(v34 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v35 + 14);
        v36 = *v21;
        v54[0] = 0;
        v54[1] = 0;
        v55 = 0;
        GPUTools::FB::Encode(v54, 4294955024, 0x2000, "Cietee", v37, v38, v39, v40, v36, 16, 0, a10, 0, 0);
        v41 = [DYGetGLGuestAppClient() defaultFbufStream];
        v42 = v41;
        while (atomic_exchange(v41 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        if (tex_sub_image2D(v42 + 14, v54))
        {
          handle_opengl_thread_conflict(v21);
        }

        goto LABEL_44;
      }

      v46 = 2;
      v47 = 98;
    }

    breakpoint_break(v52, v47, v46, v33, v21);
    goto LABEL_36;
  }

  atomic_fetch_add(v21 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v21[3] + 3064))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
LABEL_44:
  if (v52[0])
  {
    free(v52[0]);
  }
}

void sub_41794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (a22)
  {
    free(a22);
  }

  _Unwind_Resume(exception_object);
}

void get_compressed_tex_image(__GLIContextRec *a1, uint64_t a2, uint64_t a3, void *a4)
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
      v41 = *(*(v13 + 24) + 3080);

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
    if (v20 <= 0x43)
    {
      v42 = (323 - v20) & 0x100;
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

    *(v16 + 16) = 0;
    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    v21 = v16 + 68;
    v51 = v16 + 68;
    v22 = v16 + 68 - v17;
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
      v17[1] = 230;
      v17[8] = 256;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v17 + 1) = v49;
      strcpy(v17 + 36, "Ceip");
      *(v17 + 11) = *v13;
      v17[13] = a2;
      v17[14] = a3;
      *(v17 + 15) = a4;
      v30 = byte_21AF3E;
      if (byte_21AF3E)
      {
        breakpoint_break(&__ptr, (&stru_B8.size + 6), 1, *(v13 + 3404), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v30 & 4))
      {
        v31 = mach_absolute_time();
        (*(*(v13 + 32) + 3080))(a1, a2, a3, a4);
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
        v44 = 230;
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
  (*(*(v13 + 24) + 3080))(a1, a2, a3, a4);
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
      v41 = *(*(v13 + 24) + 3080);

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
    if (v20 <= 0x43)
    {
      v42 = (323 - v20) & 0x100;
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

    *(v16 + 16) = 0;
    *(v16 + 2) = 0u;
    *(v16 + 3) = 0u;
    *v16 = 0u;
    *(v16 + 1) = 0u;
    v21 = v16 + 68;
    v51 = v16 + 68;
    v22 = v16 + 68 - v17;
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
      v17[1] = 230;
      v17[8] = 256;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v17 + 1) = v49;
      strcpy(v17 + 36, "Ceip");
      *(v17 + 11) = *v13;
      v17[13] = a2;
      v17[14] = a3;
      *(v17 + 15) = a4;
      v30 = byte_21AF3E;
      if (byte_21AF3E)
      {
        breakpoint_break(&__ptr, (&stru_B8.size + 6), 1, *(v13 + 3404), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v30 & 4))
      {
        v31 = mach_absolute_time();
        (*(*(v13 + 32) + 3080))(a1, a2, a3, a4);
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
        v44 = 230;
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
  (*(*(v13 + 24) + 3080))(a1, a2, a3, a4);
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
      v18 = *(*(v13 + 24) + 3080);

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

  (*(*(v13 + 32) + 3080))(a1, a2, a3, a4);
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
      v21 = *(*(v13 + 24) + 3080);

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
  (*(*(v13 + 32) + 3080))(a1, a2, a3, a4);
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

void sub_41D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void draw_range_elements(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, GPUTools::GL *a6, const void *a7)
{
  v13 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v15 = *(v13 + 32);
    v16 = v15 >= a1;
    v17 = v15 < a1;
    if (v16)
    {
      v14 = v13;
    }

    v13 = *(v13 + 8 * v17);
  }

  while (v13);
  if (v14 == ContextInfo::activeCtxInfoMap + 8 || *(v14 + 32) > a1)
  {
LABEL_9:
    v14 = ContextInfo::activeCtxInfoMap + 8;
  }

  v18 = *(v14 + 40);
  v19 = atomic_fetch_add(v18 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v19 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_55;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v18);
    v43 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v43 >= 1)
    {
LABEL_55:
      atomic_fetch_add(v18 + 1160, 0xFFFFFFFF);
      v44 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v44, 0, do_nothing);
      v45 = *(v18[3] + 3240);

      v45(a1, a2, a3, a4, a5, a6, a7);
      return;
    }
  }

  *(v18 + 2419) = 257;
  v59[0] = 0;
  v59[1] = 0;
  v60 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    strlcpy(v18 + 4709, "Ceuiuiie", 0x40uLL);
    if (a5)
    {
      v57 = copyout_vertex_arrays2(v18);
      if (*(v18 + 509))
      {
        strlcat(v18 + 4709, "t", 0x40uLL);
        v26 = a7;
      }

      else
      {
        strlcat(v18 + 4709, "U", 0x40uLL);
        GPUTools::GL::dy_type_size(a6, v27);
        DYGetGLGuestAppClient();
        v26 = v18 + 4644;
        GPUTools::Interpose::DYSavePointer();
      }
    }

    else
    {
      strlcat(v18 + 4709, "t", 0x40uLL);
      v57 = 0;
      v26 = a7;
    }

    GPUTools::FB::Encode(v59, 146, v18 + 4709, v21, v22, v23, v24, v25, *v18, a2, a3, a4, a5, a6, v26);
    v28 = byte_21AEEA;
    if (byte_21AEEA)
    {
      breakpoint_break(v59, (&stru_68.size + 2), 1, *(v18 + 851), v18);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4)
    {
      goto LABEL_29;
    }

    if (![DYGetGLGuestAppClient() overrideFlags])
    {
      v29 = mach_absolute_time();
      (*(v18[4] + 3240))(a1, a2, a3, a4, a5, a6, a7);
      v30 = mach_absolute_time() - v29;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v31 = v59[0];
        *(v59[0] + 2) = v29;
        v31[3] = v30;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v53 = __udivti3();
        v54 = v59[0];
        *(v59[0] + 3) = v53;
        v54[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_29;
        }
      }

      check_errors(v18);
LABEL_29:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v18 + 851))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v18, v59);
      }

      GPUTools::FB::EncodeThreadQueueInfo(v18 + 435, v18 + 440, v59);
      v32 = *(v18 + 851);
      if (v32 && (gBreakOnError & 1) != 0)
      {
        v46 = 3;
        v47 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v28 & 2) == 0)
        {
LABEL_38:
          v33 = [DYGetGLGuestAppClient() defaultFbufStream];
          v34 = v33;
          while (atomic_exchange(v33 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v34 + 14);
          if (v57)
          {
            GPUTools::FB::Encode(v59, 4294955021, 4, "C", v35, v36, v37, v38, *v18);
            v39 = [DYGetGLGuestAppClient() defaultFbufStream];
            v40 = v39;
            while (atomic_exchange(v39 + 14, 1u) == 1)
            {
                ;
              }
            }

            GPUTools::FB::Stream::Write_nolock();
            atomic_store(0, v40 + 14);
          }

          v41 = atomic_fetch_add(v18 + 1160, 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v41 >= 1)
          {
            handle_opengl_thread_conflict(v18);
          }

          goto LABEL_51;
        }

        v46 = 2;
        v47 = 146;
      }

      breakpoint_break(v59, v47, v46, v32, v18);
      goto LABEL_38;
    }

    if (([DYGetGLGuestAppClient() overrideFlags] & 8) != 0)
    {
      goto LABEL_29;
    }

    v48 = [DYGetGLGuestAppClient() overrideFlags];
    apply_draw_overrides(v18, v48);
    v49 = mach_absolute_time();
    (*(v18[4] + 3240))(a1, a2, a3, a4, a5, a6, a7);
    v50 = mach_absolute_time() - v49;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v51 = v59[0];
      *(v59[0] + 2) = v49;
      v51[3] = v50;
      if (gCheckGLErrors != 1)
      {
LABEL_62:
        v52 = [DYGetGLGuestAppClient() overrideFlags];
        unapply_draw_overrides(v18, v52);
        goto LABEL_29;
      }
    }

    else
    {
      v55 = __udivti3();
      v56 = v59[0];
      *(v59[0] + 3) = v55;
      v56[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_62;
      }
    }

    check_errors(v18);
    goto LABEL_62;
  }

  atomic_fetch_add(v18 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v18[3] + 3240))(a1, a2, a3, a4, a5, a6, a7);
LABEL_51:
  if (v59[0])
  {
    free(v59[0]);
  }
}

void sub_42484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

void tex_image3D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10)
{
  v15 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v17 = *(v15 + 32);
    v18 = v17 >= a1;
    v19 = v17 < a1;
    if (v18)
    {
      v16 = v15;
    }

    v15 = *(v15 + 8 * v19);
  }

  while (v15);
  if (v16 == ContextInfo::activeCtxInfoMap + 8 || *(v16 + 32) > a1)
  {
LABEL_9:
    v16 = ContextInfo::activeCtxInfoMap + 8;
  }

  v20 = *(v16 + 40);
  v21 = atomic_fetch_add(v20 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v21 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v20);
    v37 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v37 >= 1)
    {
LABEL_50:
      atomic_fetch_add(v20 + 1160, 0xFFFFFFFF);
      v38 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v38, 0, do_nothing);
      v39 = *(v20[3] + 3504);

      v39(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      return;
    }
  }

  *(v20 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if (!a10 || *(v20 + 511))
    {
      strcpy(v20 + 4709, "Ceieiiiieet");
      v27 = a10;
      if ((a4 - 1) > 3)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v27 = v20 + 4644;
      save_texture(v20, a1, a2, HIDWORD(a9), a9, a5, a6, a7, 1, a10, v20 + 4644, 65, 1);
      strcpy(v20 + 4709, "CeieiiiieeU");
      if ((a4 - 1) > 3)
      {
LABEL_24:
        GPUTools::FB::Encode(v47, 595, 4096, v20 + 4709, v23, v24, v25, v26, *v20, a2, a3, a4, a5, a6, a7, a8, a9, HIDWORD(a9), v27);
        v28 = byte_21B0AB;
        if (byte_21B0AB)
        {
          breakpoint_break(v47, &stru_248.sectname[11], 1, *(v20 + 851), v20);
        }

        if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
        {
          v29 = mach_absolute_time();
          (*(v20[4] + 3504))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
          v30 = mach_absolute_time() - v29;
          if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
          {
            v31 = v47[0];
            *(v47[0] + 2) = v29;
            v31[3] = v30;
            if (gCheckGLErrors != 1)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v42 = __udivti3();
            v43 = v47[0];
            *(v47[0] + 3) = v42;
            v43[2] = __udivti3();
            if (gCheckGLErrors != 1)
            {
              goto LABEL_29;
            }
          }

          check_errors(v20);
        }

LABEL_29:
        if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
        {
          GPUTools::FB::EncodeCurrentBacktrace();
        }

        if (*(v20 + 851))
        {
          GPUTools::FB::EncodeGLError();
        }

        if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
        {
          encode_driver_events(v20, v47);
        }

        GPUTools::FB::EncodeThreadQueueInfo(v20 + 435, v20 + 440, v47);
        v32 = *(v20 + 851);
        if (v32 && (gBreakOnError & 1) != 0)
        {
          v40 = 3;
          v41 = 0xFFFFFFFFLL;
        }

        else
        {
          if ((v28 & 2) == 0)
          {
LABEL_38:
            v33 = [DYGetGLGuestAppClient() defaultFbufStream];
            v34 = v33;
            while (atomic_exchange(v33 + 14, 1u) == 1)
            {
                ;
              }
            }

            GPUTools::FB::Stream::Write_nolock();
            atomic_store(0, v34 + 14);
            wrapper_encode_texture_format_info(v20, a2, a3, a10);
            v35 = atomic_fetch_add(v20 + 1160, 0xFFFFFFFF) - 1;
            if (gCheckGLErrors == 1 && v35 >= 1)
            {
              handle_opengl_thread_conflict(v20);
            }

            goto LABEL_46;
          }

          v40 = 2;
          v41 = 595;
        }

        breakpoint_break(v47, v41, v40, v32, v20);
        goto LABEL_38;
      }
    }

    *(v20 + 4712) = 105;
    goto LABEL_24;
  }

  atomic_fetch_add(v20 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v20[3] + 3504))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
LABEL_46:
  if (v47[0])
  {
    free(v47[0]);
  }
}

void sub_42A4C(_Unwind_Exception *exception_object)
{
  atomic_store(0, (v1 + 56));
  v4 = *(v2 - 104);
  if (v4)
  {
    free(v4);
  }

  _Unwind_Resume(exception_object);
}

void tex_sub_image3D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11)
{
  v15 = *(ContextInfo::activeCtxInfoMap + 8);
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = ContextInfo::activeCtxInfoMap + 8;
  do
  {
    v17 = *(v15 + 32);
    v18 = v17 >= a1;
    v19 = v17 < a1;
    if (v18)
    {
      v16 = v15;
    }

    v15 = *(v15 + 8 * v19);
  }

  while (v15);
  if (v16 == ContextInfo::activeCtxInfoMap + 8 || *(v16 + 32) > a1)
  {
LABEL_9:
    v16 = ContextInfo::activeCtxInfoMap + 8;
  }

  v20 = *(v16 + 40);
  v21 = atomic_fetch_add(v20 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v21 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v20);
    v42 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v42 >= 1)
    {
LABEL_48:
      atomic_fetch_add(v20 + 1160, 0xFFFFFFFF);
      v43 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v43, 0, do_nothing);
      v44 = *(v20[3] + 3512);

      v44(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      return;
    }
  }

  *(v20 + 4838) = 1;
  v53[0] = 0;
  v53[1] = 0;
  v54 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if (!a11 || *(v20 + 511))
    {
      strcpy(v20 + 4709, "Ceiiiiiiieet");
      v27 = a11;
    }

    else
    {
      v27 = v20 + 4644;
      save_texture(v20, a1, a2, a10, HIDWORD(a9), a7, a8, a9, 1, a11, v20 + 4644, 65, 1);
      strcpy(v20 + 4709, "CeiiiiiiieeU");
    }

    GPUTools::FB::Encode(v53, 604, 4096, v20 + 4709, v23, v24, v25, v26, *v20, a2, a3, a4, a5, a6, a7, a8, a9, HIDWORD(a9), a10, v27);
    v28 = byte_21B0B4;
    if (byte_21B0B4)
    {
      breakpoint_break(v53, &stru_248.segname[4], 1, *(v20 + 851), v20);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
    {
      v29 = mach_absolute_time();
      (*(v20[4] + 3512))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      v30 = mach_absolute_time() - v29;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v31 = v53[0];
        *(v53[0] + 2) = v29;
        v31[3] = v30;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v47 = __udivti3();
        v48 = v53[0];
        *(v53[0] + 3) = v47;
        v48[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_27;
        }
      }

      check_errors(v20);
    }

LABEL_27:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v20 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v20, v53);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v20 + 435, v20 + 440, v53);
    v32 = *(v20 + 851);
    if (v32 && (gBreakOnError & 1) != 0)
    {
      v45 = 3;
      v46 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v28 & 2) == 0)
      {
LABEL_36:
        v33 = [DYGetGLGuestAppClient() defaultFbufStream];
        v34 = v33;
        while (atomic_exchange(v33 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v34 + 14);
        v35 = *v20;
        v55[0] = 0;
        v55[1] = 0;
        v56 = 0;
        GPUTools::FB::Encode(v55, 4294955024, 0x2000, "Cietee", v36, v37, v38, v39, v35, 16, 0, a11, 0, 0);
        v40 = [DYGetGLGuestAppClient() defaultFbufStream];
        v41 = v40;
        while (atomic_exchange(v40 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        if (tex_sub_image2D(v41 + 14, v55))
        {
          handle_opengl_thread_conflict(v20);
        }

        goto LABEL_44;
      }

      v45 = 2;
      v46 = 604;
    }

    breakpoint_break(v53, v46, v45, v32, v20);
    goto LABEL_36;
  }

  atomic_fetch_add(v20 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v20[3] + 3512))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
LABEL_44:
  if (v53[0])
  {
    free(v53[0]);
  }
}

void sub_4303C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  if (a26)
  {
    free(a26);
  }

  _Unwind_Resume(exception_object);
}

void copy_tex_sub_image3D(__GLIContextRec *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9)
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
      v45 = *(*(v17 + 24) + 3520);

      v45(a1, a2, a3, a4, a5, a6, a7, a8, a9);
      return;
    }
  }

  *(v17 + 4838) = 1;
  __ptr = 0;
  v60 = 0;
  v61 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v21 = __ptr;
    v20 = v60;
    v22 = v60 - __ptr;
    v23 = v61;
    v24 = v61 - (v60 - __ptr);
    if (v24 <= 0x5B)
    {
      v46 = (347 - v24) & 0x100;
      v61 += v46;
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

    *(v20 + 76) = 0u;
    v20[3] = 0u;
    v20[4] = 0u;
    v20[1] = 0u;
    v20[2] = 0u;
    *v20 = 0u;
    v25 = v20 + 92;
    v60 = v20 + 92;
    v26 = v20 + 92 - v21;
    *v21 = v26;
    v27 = (v26 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v27 - v26;
    if (v27 == v26)
    {
      goto LABEL_23;
    }

    v29 = __ptr;
    v30 = v25 - __ptr;
    v31 = v61;
    v32 = v61 - (v25 - __ptr);
    if (v28 <= v32)
    {
      v33 = v60;
LABEL_22:
      bzero(v25, v28);
      v60 = &v33[v28];
      *v29 += v28;
LABEL_23:
      v21[1] = 115;
      v21[8] = 0;
      v58 = 0;
      pthread_threadid_np(0, &v58);
      *(v21 + 1) = v58;
      strcpy(v21 + 36, "Ceiiiiiiii");
      *(v21 + 6) = *v17;
      v21[14] = a2;
      v21[15] = a3;
      v21[16] = a4;
      v21[17] = a5;
      v21[18] = a6;
      v21[19] = a7;
      v21[20] = a8;
      *(v21 + 21) = a9;
      v34 = byte_21AECB;
      if (byte_21AECB)
      {
        breakpoint_break(&__ptr, &stru_68.sectname[11], 1, *(v17 + 3404), v17);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v34 & 4))
      {
        v35 = mach_absolute_time();
        (*(*(v17 + 32) + 3520))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
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
        v48 = 115;
      }

      breakpoint_break(&__ptr, v48, v47, v38, v17);
      goto LABEL_37;
    }

    v51 = (v28 - v32 + 255) & 0xFFFFFF00;
    v52 = v51 + v61;
    v61 += v51;
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
  (*(*(v17 + 24) + 3520))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
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
      v45 = *(*(v17 + 24) + 3520);

      v45(a1, a2, a3, a4, a5, a6, a7, a8, a9);
      return;
    }
  }

  *(v17 + 4838) = 1;
  __ptr = 0;
  v60 = 0;
  v61 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v21 = __ptr;
    v20 = v60;
    v22 = v60 - __ptr;
    v23 = v61;
    v24 = v61 - (v60 - __ptr);
    if (v24 <= 0x5B)
    {
      v46 = (347 - v24) & 0x100;
      v61 += v46;
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

    *(v20 + 76) = 0u;
    v20[3] = 0u;
    v20[4] = 0u;
    v20[1] = 0u;
    v20[2] = 0u;
    *v20 = 0u;
    v25 = v20 + 92;
    v60 = v20 + 92;
    v26 = v20 + 92 - v21;
    *v21 = v26;
    v27 = (v26 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = v27 - v26;
    if (v27 == v26)
    {
      goto LABEL_23;
    }

    v29 = __ptr;
    v30 = v25 - __ptr;
    v31 = v61;
    v32 = v61 - (v25 - __ptr);
    if (v28 <= v32)
    {
      v33 = v60;
LABEL_22:
      bzero(v25, v28);
      v60 = &v33[v28];
      *v29 += v28;
LABEL_23:
      v21[1] = 115;
      v21[8] = 0;
      v58 = 0;
      pthread_threadid_np(0, &v58);
      *(v21 + 1) = v58;
      strcpy(v21 + 36, "Ceiiiiiiii");
      *(v21 + 6) = *v17;
      v21[14] = a2;
      v21[15] = a3;
      v21[16] = a4;
      v21[17] = a5;
      v21[18] = a6;
      v21[19] = a7;
      v21[20] = a8;
      *(v21 + 21) = a9;
      v34 = byte_21AECB;
      if (byte_21AECB)
      {
        breakpoint_break(&__ptr, &stru_68.sectname[11], 1, *(v17 + 3404), v17);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v34 & 4))
      {
        v35 = mach_absolute_time();
        (*(*(v17 + 32) + 3520))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
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
        v48 = 115;
      }

      breakpoint_break(&__ptr, v48, v47, v38, v17);
      goto LABEL_37;
    }

    v51 = (v28 - v32 + 255) & 0xFFFFFF00;
    v52 = v51 + v61;
    v61 += v51;
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
  (*(*(v17 + 24) + 3520))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
  }
}

void sub_436A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_uniform_indices(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const char *const *a4, unsigned int *a5)
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
      goto LABEL_54;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v42 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v42 >= 1)
    {
LABEL_54:
      atomic_fetch_add(v15 + 1160, 0xFFFFFFFF);
      v43 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v43, 0, do_nothing);
      v44 = *(v15[3] + 3528);

      v44(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = v15 + 4709;
    strcpy(v15 + 4709, "Cuii");
    if (a4)
    {
      v19 = __str;
      snprintf(__str, 0x10uLL, "@%dS", a3);
    }

    else
    {
      v19 = "t";
    }

    strlcat(v15 + 4709, v19, 0x40uLL);
    if (a5)
    {
      v20 = __str;
      snprintf(__str, 0x10uLL, "@%dui", a3);
    }

    else
    {
      v20 = "t";
    }

    strlcat(v15 + 4709, v20, 0x40uLL);
    GPUTools::FB::Encode(&v50, 831, 256, v15 + 4709, v21, v22, v23, v24, *v15, a2, a3, a4, a5);
    v25 = byte_21B197;
    if (byte_21B197)
    {
      breakpoint_break(&v50, &stru_338.sectname[7], 1, *(v15 + 851), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v30 = mach_absolute_time();
      (*(v15[4] + 3528))(a1, a2, a3, a4, a5);
      v48 = v15 + 4709;
      v31 = v15;
      v32 = v25;
      v33 = a3;
      v34 = mach_absolute_time() - v30;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v35 = v50;
        *(v50 + 3) = v34;
      }

      else
      {
        v47 = __udivti3();
        v35 = v50;
        *(v50 + 3) = v47;
        v30 = __udivti3();
      }

      v35[2] = v30;
      a3 = v33;
      v25 = v32;
      v15 = v31;
      v18 = v48;
      if (gCheckGLErrors == 1)
      {
        check_errors(v15);
      }
    }

    v36 = v50;
    v49 = *(v50 + 1);
    v51 = v50;
    if (v52 >= 0x24)
    {
      *(v50 + 8) = 0;
      *v36 = 0u;
      v36[1] = 0u;
    }

    GPUTools::FB::Encode(&v50, 831, 256, v18, v26, v27, v28, v29, *v15, a2, a3, a4, a5);
    *(v50 + 1) = v49;
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v15 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v15, &v50);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v15 + 435, v15 + 440, &v50);
    v37 = *(v15 + 851);
    if (v37 && (gBreakOnError & 1) != 0)
    {
      v45 = 3;
      v46 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_42:
        v38 = [DYGetGLGuestAppClient() defaultFbufStream];
        v39 = v38;
        while (atomic_exchange(v38 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v39 + 14);
        v40 = atomic_fetch_add(v15 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v40 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        goto LABEL_50;
      }

      v45 = 2;
      v46 = 831;
    }

    breakpoint_break(&v50, v46, v45, v37, v15);
    goto LABEL_42;
  }

  atomic_fetch_add(v15 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v15[3] + 3528))(a1, a2, a3, a4, a5);
LABEL_50:
  if (v50)
  {
    free(v50);
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
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v31 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v31 >= 1)
    {
LABEL_44:
      atomic_fetch_add(v15 + 1160, 0xFFFFFFFF);
      v32 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v32, 0, do_nothing);
      v33 = *(*(v15 + 3) + 3528);

      v33(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v38, 831, 2, "Cuiipp", v18, v19, v20, v21, *v15, a2, a3, a4, a5);
    v22 = byte_21B197;
    if (byte_21B197)
    {
      breakpoint_break(v38, &stru_338.sectname[7], 1, v15[851], v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(*(v15 + 4) + 3528))(a1, a2, a3, a4, a5);
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

      check_errors(v15);
    }

LABEL_23:
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
      encode_driver_events(v15, v38);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v15 + 435, v15 + 440, v38);
    v26 = v15[851];
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
        v29 = atomic_fetch_add(v15 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v29 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        goto LABEL_40;
      }

      v34 = 2;
      v35 = 831;
    }

    breakpoint_break(v38, v35, v34, v26, v15);
    goto LABEL_32;
  }

  atomic_fetch_add(v15 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 3) + 3528))(a1, a2, a3, a4, a5);
LABEL_40:
  if (v38[0])
  {
    free(v38[0]);
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
LABEL_24:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v19, 0, do_nothing);
LABEL_29:
      v20 = *(*(v15 + 24) + 3528);

      v20(a1, a2, a3, a4, a5);
      return;
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
    goto LABEL_29;
  }

  (*(*(v15 + 32) + 3528))(a1, a2, a3, a4, a5);
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
LABEL_24:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v22 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v22, 0, do_nothing);
LABEL_29:
      v23 = *(*(v15 + 24) + 3528);

      v23(a1, a2, a3, a4, a5);
      return;
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
    goto LABEL_29;
  }

  v18 = mach_absolute_time();
  (*(*(v15 + 32) + 3528))(a1, a2, a3, a4, a5);
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

void sub_43C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  atomic_store(0, (v17 + 56));
  if (a17)
  {
    free(a17);
  }

  _Unwind_Resume(exception_object);
}

void get_active_uniformsiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const unsigned int *a4, uint64_t a5, int *a6)
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
      goto LABEL_54;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v40 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v40 >= 1)
    {
LABEL_54:
      atomic_fetch_add(v17 + 1160, 0xFFFFFFFF);
      v41 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v41, 0, do_nothing);
      v42 = *(v17[3] + 3536);

      v42(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    strcpy(v17 + 4709, "Cuii");
    if (a4)
    {
      v20 = __str;
      snprintf(__str, 0x10uLL, "@%dui", a3);
    }

    else
    {
      v20 = "t";
    }

    strlcat(v17 + 4709, v20, 0x40uLL);
    strlcat(v17 + 4709, "e", 0x40uLL);
    if (a6)
    {
      v21 = __str;
      snprintf(__str, 0x10uLL, "@%d%c", a3, 105);
    }

    else
    {
      v21 = "t";
    }

    strlcat(v17 + 4709, v21, 0x40uLL);
    GPUTools::FB::Encode(&v47, 829, 256, v17 + 4709, v22, v23, v24, v25, *v17, a2, a3, a4, a5, a6);
    v26 = byte_21B195;
    if (byte_21B195)
    {
      breakpoint_break(&v47, &stru_338.sectname[5], 1, *(v17 + 851), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
    {
      v31 = mach_absolute_time();
      (*(v17[4] + 3536))(a1, a2, a3, a4, a5, a6);
      v32 = mach_absolute_time() - v31;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v33 = v47;
        *(v47 + 3) = v32;
      }

      else
      {
        v45 = __udivti3();
        v33 = v47;
        *(v47 + 3) = v45;
        v31 = __udivti3();
      }

      v33[2] = v31;
      if (gCheckGLErrors == 1)
      {
        check_errors(v17);
      }
    }

    v34 = v47;
    v46 = *(v47 + 1);
    v48 = v47;
    if (v49 >= 0x24)
    {
      *(v47 + 8) = 0;
      *v34 = 0u;
      v34[1] = 0u;
    }

    GPUTools::FB::Encode(&v47, 829, 256, v17 + 4709, v27, v28, v29, v30, *v17, a2, a3, a4, a5, a6);
    *(v47 + 1) = v46;
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
      encode_driver_events(v17, &v47);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v17 + 435, v17 + 440, &v47);
    v35 = *(v17 + 851);
    if (v35 && (gBreakOnError & 1) != 0)
    {
      v43 = 3;
      v44 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v26 & 2) == 0)
      {
LABEL_42:
        v36 = [DYGetGLGuestAppClient() defaultFbufStream];
        v37 = v36;
        while (atomic_exchange(v36 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v37 + 14);
        v38 = atomic_fetch_add(v17 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v38 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        goto LABEL_50;
      }

      v43 = 2;
      v44 = 829;
    }

    breakpoint_break(&v47, v44, v43, v35, v17);
    goto LABEL_42;
  }

  atomic_fetch_add(v17 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v17[3] + 3536))(a1, a2, a3, a4, a5, a6);
LABEL_50:
  if (v47)
  {
    free(v47);
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
      v35 = *(*(v17 + 3) + 3536);

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
    GPUTools::FB::Encode(v40, 829, 2, "Cuiipep", v20, v21, v22, v23, *v17, a2, a3, a4, a5, a6);
    v24 = byte_21B195;
    if (byte_21B195)
    {
      breakpoint_break(v40, &stru_338.sectname[5], 1, v17[851], v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v17 + 4) + 3536))(a1, a2, a3, a4, a5, a6);
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
      v37 = 829;
    }

    breakpoint_break(v40, v37, v36, v28, v17);
    goto LABEL_32;
  }

  atomic_fetch_add(v17 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 3) + 3536))(a1, a2, a3, a4, a5, a6);
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
      v22 = *(*(v17 + 24) + 3536);

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

  (*(*(v17 + 32) + 3536))(a1, a2, a3, a4, a5, a6);
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
      v25 = *(*(v17 + 24) + 3536);

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
  (*(*(v17 + 32) + 3536))(a1, a2, a3, a4, a5, a6);
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

void sub_44234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  atomic_store(0, (v19 + 56));
  if (a19)
  {
    free(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t get_uniform_block_index(__GLIContextRec *a1, uint64_t a2, const char *a3)
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
    v39 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v39 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v40 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v40, 0, do_nothing);
      v41 = *(*(v11 + 3) + 3552);

      return v41(a1, a2, a3);
    }
  }

  *(v11 + 4838) = 1;
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v46, 830, 0, "CuiS", v14, v15, v16, v17, *v11, a2, a3);
    v18 = byte_21B196;
    if (byte_21B196)
    {
      breakpoint_break(v46, &stru_338.sectname[6], 1, v11[851], v11);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4)
    {
      v20 = 0;
      goto LABEL_24;
    }

    v19 = mach_absolute_time();
    v20 = (*(*(v11 + 4) + 3552))(a1, a2, a3);
    v26 = mach_absolute_time() - v19;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v27 = v46[0];
      *(v46[0] + 2) = v19;
      v27[3] = v26;
      if (gCheckGLErrors != 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v44 = __udivti3();
      v45 = v46[0];
      *(v46[0] + 3) = v44;
      v45[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_23;
      }
    }

    check_errors(v11);
LABEL_23:
    if (v20 == -1)
    {
      v20 = 0xFFFFFFFFLL;
      GPUTools::FB::Encode(v46, 4294955008, "ui", v21, v22, v23, v24, v25, 0xFFFFFFFFLL);
LABEL_25:
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
        encode_driver_events(v11, v46);
      }

      GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, v46);
      v33 = v11[851];
      if (v33 && (gBreakOnError & 1) != 0)
      {
        v42 = 3;
        v43 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v18 & 2) == 0)
        {
LABEL_34:
          v34 = [DYGetGLGuestAppClient() defaultFbufStream];
          v35 = v34;
          while (atomic_exchange(v34 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v35 + 14);
          v36 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v36 >= 1)
          {
            handle_opengl_thread_conflict(v11);
          }

          goto LABEL_42;
        }

        v42 = 2;
        v43 = 830;
      }

      breakpoint_break(v46, v43, v42, v33, v11);
      goto LABEL_34;
    }

LABEL_24:
    snprintf(__str, 0x28uLL, "ub_%016lx_%u_%u", **(v11 + 5), a2, v20);
    GPUTools::FB::Encode(v46, 4294955008, "V<ui>", v28, v29, v30, v31, v32, __str);
    goto LABEL_25;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v20 = (*(*(v11 + 3) + 3552))(a1, a2, a3);
LABEL_42:
  if (v46[0])
  {
    free(v46[0]);
  }

  return v20;
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
      v36 = *(*(v11 + 3) + 3552);

      return v36(a1, a2, a3);
    }
  }

  *(v11 + 4838) = 1;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v41, 830, 0, "CuiS", v14, v15, v16, v17, *v11, a2, a3);
    v18 = byte_21B196;
    if (byte_21B196)
    {
      breakpoint_break(v41, &stru_338.sectname[6], 1, v11[851], v11);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v18 & 4)
    {
      v25 = 0;
      goto LABEL_23;
    }

    v24 = mach_absolute_time();
    v25 = (*(*(v11 + 4) + 3552))(a1, a2, a3);
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
    GPUTools::FB::Encode(v41, 4294955008, "ui", v19, v20, v21, v22, v23, v25);
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
      v38 = 830;
    }

    breakpoint_break(v41, v38, v37, v28, v11);
    goto LABEL_32;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v25 = (*(*(v11 + 3) + 3552))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 3552);

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

  result = (*(*(v11 + 32) + 3552))(a1, a2, a3);
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
      v21 = *(*(v11 + 24) + 3552);

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
  v15 = (*(*(v11 + 32) + 3552))(a1, a2, a3);
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

  v18 = *(*(v11 + 24) + 3552);

  return v18(a1, a2, a3);
}

void sub_44734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void get_active_uniform_blockiv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, GPUTools::GL *a4, int *a5)
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
      goto LABEL_60;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v44 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v44 >= 1)
    {
LABEL_60:
      atomic_fetch_add(v15 + 1160, 0xFFFFFFFF);
      v45 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v45, 0, do_nothing);
      v46 = *(v15[3] + 3560);

      v46(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  *&v53[1] = 0;
  v54 = 0;
  v55 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = v15 + 4709;
    if (a3 == -1)
    {
      strcpy(v15 + 4709, "Cuiuie");
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      strcpy(v15 + 4709, "CuiV<ui>e");
      if (a5)
      {
LABEL_20:
        v53[0] = 0;
        v52 = 0;
        GPUTools::GL::DYGetActiveUniformBlockParameterInfo(a4, &v52, v53, v18);
        v20 = 105;
        if (v53[0])
        {
          v20 = 101;
        }

        snprintf(__str, 0x10uLL, "@%u%c", v52, v20);
        strlcat(v15 + 4709, __str, 0x40uLL);
LABEL_25:
        if (a3 == -1)
        {
          GPUTools::FB::Encode(&v53[1], 827, 256, v15 + 4709, v21, v22, v23, v24, *v15, a2, 0xFFFFFFFFLL, a4, a5);
        }

        else
        {
          snprintf(__str, 0x28uLL, "ub_%016lx_%u_%u", *v15[5], a2, a3);
          GPUTools::FB::Encode(&v53[1], 827, 256, v15 + 4709, v25, v26, v27, v28, *v15, a2, __str, a4, a5);
        }

        v29 = byte_21B193;
        if (byte_21B193)
        {
          breakpoint_break(&v53[1], &stru_338.sectname[3], 1, *(v15 + 851), v15);
        }

        if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v29 & 4))
        {
          v34 = mach_absolute_time();
          (*(v15[4] + 3560))(a1, a2, a3, a4, a5);
          v50 = v15;
          v35 = v15 + 4709;
          v36 = mach_absolute_time() - v34;
          if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
          {
            v37 = *&v53[1];
            *(*&v53[1] + 24) = v36;
          }

          else
          {
            v49 = __udivti3();
            v37 = *&v53[1];
            *(*&v53[1] + 24) = v49;
            v34 = __udivti3();
          }

          *(v37 + 16) = v34;
          v19 = v35;
          v15 = v50;
          if (gCheckGLErrors == 1)
          {
            check_errors(v50);
          }
        }

        if (a3 != -1)
        {
          v38 = *&v53[1];
          v51 = *(*&v53[1] + 16);
          v54 = *&v53[1];
          if (v55 >= 0x24)
          {
            *(*&v53[1] + 32) = 0;
            *v38 = 0u;
            v38[1] = 0u;
          }

          GPUTools::FB::Encode(&v53[1], 827, 256, v19, v30, v31, v32, v33, *v15, a2, __str, a4, a5);
          *(*&v53[1] + 16) = v51;
        }

        if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
        {
          GPUTools::FB::EncodeCurrentBacktrace();
        }

        if (*(v15 + 851))
        {
          GPUTools::FB::EncodeGLError();
        }

        if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
        {
          encode_driver_events(v15, &v53[1]);
        }

        GPUTools::FB::EncodeThreadQueueInfo(v15 + 435, v15 + 440, &v53[1]);
        v39 = *(v15 + 851);
        if (v39 && (gBreakOnError & 1) != 0)
        {
          v47 = 3;
          v48 = 0xFFFFFFFFLL;
        }

        else
        {
          if ((v29 & 2) == 0)
          {
LABEL_48:
            v40 = [DYGetGLGuestAppClient() defaultFbufStream];
            v41 = v40;
            while (atomic_exchange(v40 + 14, 1u) == 1)
            {
                ;
              }
            }

            GPUTools::FB::Stream::Write_nolock();
            atomic_store(0, v41 + 14);
            v42 = atomic_fetch_add(v15 + 1160, 0xFFFFFFFF) - 1;
            if (gCheckGLErrors == 1 && v42 >= 1)
            {
              handle_opengl_thread_conflict(v15);
            }

            goto LABEL_56;
          }

          v47 = 2;
          v48 = 827;
        }

        breakpoint_break(&v53[1], v48, v47, v39, v15);
        goto LABEL_48;
      }
    }

    strlcat(v15 + 4709, "t", 0x40uLL);
    goto LABEL_25;
  }

  atomic_fetch_add(v15 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v15[3] + 3560))(a1, a2, a3, a4, a5);
LABEL_56:
  if (*&v53[1])
  {
    free(*&v53[1]);
  }
}

void sub_44D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

void get_active_uniform_block_name(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, char *a6)
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
      goto LABEL_61;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v45 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v45 >= 1)
    {
LABEL_61:
      atomic_fetch_add(v17 + 1160, 0xFFFFFFFF);
      v46 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v46, 0, do_nothing);
      v47 = *(v17[3] + 3568);

      v47(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v55 = 0;
    if (a5)
    {
      v20 = a5;
    }

    else
    {
      v20 = &v55;
    }

    *v20 = 0;
    if (a3 == -1)
    {
      strcpy(v17 + 4709, "Cuiuii");
    }

    else
    {
      strcpy(v17 + 4709, "CuiV<ui>i");
    }

    if (a5)
    {
      v21 = "@1i";
    }

    else
    {
      v21 = "t";
    }

    strlcat(v17 + 4709, v21, 0x40uLL);
    strlcat(v17 + 4709, "t", 0x40uLL);
    v53 = a5;
    v54 = a2;
    if (a3 == -1)
    {
      GPUTools::FB::Encode(&v56, 826, 256, v17 + 4709, v22, v23, v24, v25, *v17, a2, 0xFFFFFFFFLL, a4, a5, a6);
    }

    else
    {
      snprintf(__str, 0x28uLL, "ub_%016lx_%u_%u", *v17[5], a2, a3);
      GPUTools::FB::Encode(&v56, 826, 256, v17 + 4709, v26, v27, v28, v29, *v17, a2, __str, a4, a5, a6);
    }

    v30 = a6;
    v31 = byte_21B192;
    if (byte_21B192)
    {
      breakpoint_break(&v56, &stru_338.sectname[2], 1, *(v17 + 851), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v31 & 4))
    {
      v32 = mach_absolute_time();
      (*(v17[4] + 3568))(a1, v54, a3, a4, v20, v30);
      v33 = mach_absolute_time() - v32;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v34 = v56;
        *(v56 + 2) = v32;
        v34[3] = v33;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v50 = __udivti3();
        v51 = v56;
        *(v56 + 3) = v50;
        v51[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_35;
        }
      }

      check_errors(v17);
    }

LABEL_35:
    if (a3 != -1 && *v20 >= 1)
    {
      *(v17 + strlen(v17 + 4709) + 4708) = 83;
      v39 = v56;
      v52 = *(v56 + 1);
      v57 = v56;
      if (v58 >= 0x24)
      {
        *(v56 + 8) = 0;
        *v39 = 0u;
        v39[1] = 0u;
      }

      GPUTools::FB::Encode(&v56, 826, 256, v17 + 4709, v35, v36, v37, v38, *v17, v54, __str, (*v20 + 1), v53, v30);
      *(v56 + 1) = v52;
    }

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
      encode_driver_events(v17, &v56);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v17 + 435, v17 + 440, &v56);
    v40 = *(v17 + 851);
    if (v40 && (gBreakOnError & 1) != 0)
    {
      v48 = 3;
      v49 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v31 & 2) == 0)
      {
LABEL_49:
        v41 = [DYGetGLGuestAppClient() defaultFbufStream];
        v42 = v41;
        while (atomic_exchange(v41 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v42 + 14);
        v43 = atomic_fetch_add(v17 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v43 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        goto LABEL_57;
      }

      v48 = 2;
      v49 = 826;
    }

    breakpoint_break(&v56, v49, v48, v40, v17);
    goto LABEL_49;
  }

  atomic_fetch_add(v17 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v17[3] + 3568))(a1, a2, a3, a4, a5, a6);
LABEL_57:
  if (v56)
  {
    free(v56);
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
      v35 = *(*(v17 + 3) + 3568);

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
    GPUTools::FB::Encode(v40, 826, 2, "Cuiuiipp", v20, v21, v22, v23, *v17, a2, a3, a4, a5, a6);
    v24 = byte_21B192;
    if (byte_21B192)
    {
      breakpoint_break(v40, &stru_338.sectname[2], 1, v17[851], v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
    {
      v25 = mach_absolute_time();
      (*(*(v17 + 4) + 3568))(a1, a2, a3, a4, a5, a6);
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
      v37 = 826;
    }

    breakpoint_break(v40, v37, v36, v28, v17);
    goto LABEL_32;
  }

  atomic_fetch_add(v17 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 3) + 3568))(a1, a2, a3, a4, a5, a6);
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
      v22 = *(*(v17 + 24) + 3568);

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

  (*(*(v17 + 32) + 3568))(a1, a2, a3, a4, a5, a6);
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
      v25 = *(*(v17 + 24) + 3568);

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
  (*(*(v17 + 32) + 3568))(a1, a2, a3, a4, a5, a6);
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

void sub_453C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

void uniform_block_binding(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v30 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v30 >= 1)
    {
LABEL_44:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v31 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v31, 0, do_nothing);
      v32 = *(*(v13 + 3) + 3576);

      v32(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    snprintf(__str, 0x28uLL, "ub_%016lx_%u_%u", **(v13 + 5), a2, a3);
    GPUTools::FB::Encode(v37, 832, "CuiV<ui>ui", v16, v17, v18, v19, v20, *v13, a2, __str, a4);
    v21 = byte_21B198;
    if (byte_21B198)
    {
      breakpoint_break(v37, &stru_338.sectname[8], 1, v13[851], v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(*(v13 + 4) + 3576))(a1, a2, a3, a4);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v37[0];
        *(v37[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
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
    v25 = v13[851];
    if (v25 && (gBreakOnError & 1) != 0)
    {
      v33 = 3;
      v34 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v21 & 2) == 0)
      {
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
        v28 = atomic_fetch_add(v13 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v28 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_40;
      }

      v33 = 2;
      v34 = 832;
    }

    breakpoint_break(v37, v34, v33, v25, v13);
    goto LABEL_32;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 3) + 3576))(a1, a2, a3, a4);
LABEL_40:
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
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v30 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v30 >= 1)
    {
LABEL_44:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v31 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v31, 0, do_nothing);
      v32 = *(*(v13 + 3) + 3576);

      v32(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v37, 832, "Cuiuiui", v16, v17, v18, v19, v20, *v13, a2, a3, a4);
    v21 = byte_21B198;
    if (byte_21B198)
    {
      breakpoint_break(v37, &stru_338.sectname[8], 1, v13[851], v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(*(v13 + 4) + 3576))(a1, a2, a3, a4);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v37[0];
        *(v37[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
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
    v25 = v13[851];
    if (v25 && (gBreakOnError & 1) != 0)
    {
      v33 = 3;
      v34 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v21 & 2) == 0)
      {
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
        v28 = atomic_fetch_add(v13 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v28 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_40;
      }

      v33 = 2;
      v34 = 832;
    }

    breakpoint_break(v37, v34, v33, v25, v13);
    goto LABEL_32;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 3) + 3576))(a1, a2, a3, a4);
LABEL_40:
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
LABEL_24:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v17 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v17, 0, do_nothing);
LABEL_29:
      v18 = *(*(v13 + 24) + 3576);

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

  (*(*(v13 + 32) + 3576))(a1, a2, a3, a4);
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
      v21 = *(*(v13 + 24) + 3576);

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
  (*(*(v13 + 32) + 3576))(a1, a2, a3, a4);
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

void sub_45878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void blend_equation_separate(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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
      v39 = *(*(v11 + 24) + 3664);

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
      v15[1] = 25;
      v15[8] = 0;
      v47 = 0;
      pthread_threadid_np(0, &v47);
      *(v15 + 1) = v47;
      v15[9] = 6645059;
      *(v15 + 5) = *v11;
      v15[12] = a2;
      v15[13] = a3;
      v28 = byte_21AE71;
      if (byte_21AE71)
      {
        breakpoint_break(&__ptr, (&dword_18 + 1), 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 3664))(a1, a2, a3);
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
        v42 = 25;
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
  (*(*(v11 + 24) + 3664))(a1, a2, a3);
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
      v39 = *(*(v11 + 24) + 3664);

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
      v15[1] = 25;
      v15[8] = 0;
      v47 = 0;
      pthread_threadid_np(0, &v47);
      *(v15 + 1) = v47;
      v15[9] = 6645059;
      *(v15 + 5) = *v11;
      v15[12] = a2;
      v15[13] = a3;
      v28 = byte_21AE71;
      if (byte_21AE71)
      {
        breakpoint_break(&__ptr, (&dword_18 + 1), 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 3664))(a1, a2, a3);
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
        v42 = 25;
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
  (*(*(v11 + 24) + 3664))(a1, a2, a3);
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
      v16 = *(*(v11 + 24) + 3664);

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

  (*(*(v11 + 32) + 3664))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 3664);

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
  (*(*(v11 + 32) + 3664))(a1, a2, a3);
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

void sub_45E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void sample_coverage(__GLIContextRec *a1, float a2, uint64_t a3)
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
      v39 = *(*(v11 + 24) + 3672);
      v40.n128_f32[0] = a2;

      v39(a1, a3, v40);
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
      v41 = (315 - v18) & 0x100;
      v51 += v41;
      v15 = malloc_type_malloc(v41 + v17, 0xF962E99uLL);
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
      v15[1] = 514;
      v15[8] = 0;
      v48 = 0;
      pthread_threadid_np(0, &v48);
      *(v15 + 1) = v48;
      strcpy(v15 + 36, "Cfub");
      *(v15 + 11) = *v11;
      *(v15 + 13) = a2;
      *(v15 + 56) = a3;
      v28 = byte_21B05A;
      if (byte_21B05A)
      {
        breakpoint_break(&__ptr, &stru_1F8.sectname[10], 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 3672))(a1, a3, a2);
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
          v44 = __udivti3();
          v45 = __ptr;
          *(__ptr + 3) = v44;
          v45[2] = __udivti3();
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
        v42 = 3;
        v43 = 0xFFFFFFFFLL;
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

        v42 = 2;
        v43 = 514;
      }

      breakpoint_break(&__ptr, v43, v42, v32, v11);
      goto LABEL_37;
    }

    v46 = (v22 - v26 + 255) & 0xFFFFFF00;
    v47 = v46 + v51;
    v51 += v46;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v47);
      __ptr = v23;
      if (v23)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v46 + v25, 0xF962E99uLL);
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
  (*(*(v11 + 24) + 3672))(a1, a3, a2);
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
      v39 = *(*(v11 + 24) + 3672);
      v40.n128_f32[0] = a2;

      v39(a1, a3, v40);
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
      v41 = (315 - v18) & 0x100;
      v51 += v41;
      v15 = malloc_type_malloc(v41 + v17, 0xF962E99uLL);
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
      v15[1] = 514;
      v15[8] = 0;
      v48 = 0;
      pthread_threadid_np(0, &v48);
      *(v15 + 1) = v48;
      strcpy(v15 + 36, "Cfub");
      *(v15 + 11) = *v11;
      *(v15 + 13) = a2;
      *(v15 + 56) = a3;
      v28 = byte_21B05A;
      if (byte_21B05A)
      {
        breakpoint_break(&__ptr, &stru_1F8.sectname[10], 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 3672))(a1, a3, a2);
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
          v44 = __udivti3();
          v45 = __ptr;
          *(__ptr + 3) = v44;
          v45[2] = __udivti3();
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
        v42 = 3;
        v43 = 0xFFFFFFFFLL;
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

        v42 = 2;
        v43 = 514;
      }

      breakpoint_break(&__ptr, v43, v42, v32, v11);
      goto LABEL_37;
    }

    v46 = (v22 - v26 + 255) & 0xFFFFFF00;
    v47 = v46 + v51;
    v51 += v46;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v47);
      __ptr = v23;
      if (v23)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v46 + v25, 0xF962E99uLL);
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
  (*(*(v11 + 24) + 3672))(a1, a3, a2);
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
      v17 = *(*(v11 + 24) + 3672);
      v16.n128_f32[0] = a2;

      v17(a1, a3, v16);
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

  (*(*(v11 + 32) + 3672))(a1, a3, a2);
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
      v20 = *(*(v11 + 24) + 3672);
      v19.n128_f32[0] = a2;

      v20(a1, a3, v19);
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
  (*(*(v11 + 32) + 3672))(a1, a3, a2);
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

void sub_463F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void gen_fences_APPLE(__GLIContextRec *a1, uint64_t a2, unsigned int *a3)
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
      v35 = *(v11[3] + 3704);

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
    GPUTools::FB::Encode(&v41, 202, v11 + 4709, v14, v15, v16, v17, v18, *v11, a2, a3);
    v19 = byte_21AF22;
    if (byte_21AF22)
    {
      breakpoint_break(&v41, &stru_B8.segname[2], 1, *(v11 + 851), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v24 = mach_absolute_time();
      (*(v11[4] + 3704))(a1, a2, a3);
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

    GPUTools::FB::Encode(&v41, 202, 0, v11 + 4709, v20, v21, v22, v23, *v11, a2, a3);
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
      v37 = 202;
    }

    breakpoint_break(&v41, v37, v36, v28, v11);
    goto LABEL_34;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v11[3] + 3704))(a1, a2, a3);
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
      v35 = *(v11[3] + 3704);

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
    GPUTools::FB::Encode(&v41, 202, v11 + 4709, v14, v15, v16, v17, v18, *v11, a2, a3);
    v19 = byte_21AF22;
    if (byte_21AF22)
    {
      breakpoint_break(&v41, &stru_B8.segname[2], 1, *(v11 + 851), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v24 = mach_absolute_time();
      (*(v11[4] + 3704))(a1, a2, a3);
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

    GPUTools::FB::Encode(&v41, 202, 0, v11 + 4709, v20, v21, v22, v23, *v11, a2, a3);
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
      v37 = 202;
    }

    breakpoint_break(&v41, v37, v36, v28, v11);
    goto LABEL_34;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v11[3] + 3704))(a1, a2, a3);
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
      v16 = *(*(v11 + 24) + 3704);

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

  (*(*(v11 + 32) + 3704))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 3704);

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
  (*(*(v11 + 32) + 3704))(a1, a2, a3);
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