void sub_334E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void materialfv(__GLIContextRec *a1, uint64_t a2, GPUTools::GL *a3, const float *a4)
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
      v33 = *(v13[3] + 1368);

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
    v17 = GPUTools::GL::DYMaterialParameterComponentCount(a3, v16);
    snprintf(v13 + 4709, 0x40uLL, "Cee@%df", v17);
    GPUTools::FB::Encode(v38, 373, 0, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21AFCD;
    if (byte_21AFCD)
    {
      breakpoint_break(v38, &stru_158.segname[13], 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(v13[4] + 1368))(a1, a2, a3, a4);
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
      v35 = 373;
    }

    breakpoint_break(v38, v35, v34, v26, v13);
    goto LABEL_32;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 1368))(a1, a2, a3, a4);
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
      v33 = *(v13[3] + 1368);

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
    v17 = GPUTools::GL::DYMaterialParameterComponentCount(a3, v16);
    snprintf(v13 + 4709, 0x40uLL, "Cee@%df", v17);
    GPUTools::FB::Encode(v38, 373, 0, v13 + 4709, v18, v19, v20, v21, *v13, a2, a3, a4);
    v22 = byte_21AFCD;
    if (byte_21AFCD)
    {
      breakpoint_break(v38, &stru_158.segname[13], 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(v13[4] + 1368))(a1, a2, a3, a4);
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
      v35 = 373;
    }

    breakpoint_break(v38, v35, v34, v26, v13);
    goto LABEL_32;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 1368))(a1, a2, a3, a4);
LABEL_40:
  if (v38[0])
  {
    free(v38[0]);
  }
}

void sub_33948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void matrix_mode(__GLIContextRec *a1, uint64_t a2)
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
      matrix_mode((v9 + 4640));
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
      *(v13 + 1) = 376;
      *(v13 + 8) = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v13 + 1) = v43;
      strcpy(v13 + 36, "Ce");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21AFD0;
      if (byte_21AFD0)
      {
        breakpoint_break(&__ptr, &stru_158.addr, 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 1392))(a1, a2);
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
        v38 = 376;
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
  (*(*(v9 + 24) + 1392))(a1, a2);
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
      matrix_mode((v9 + 4640));
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
      *(v13 + 1) = 376;
      *(v13 + 8) = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v13 + 1) = v43;
      strcpy(v13 + 36, "Ce");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21AFD0;
      if (byte_21AFD0)
      {
        breakpoint_break(&__ptr, &stru_158.addr, 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 1392))(a1, a2);
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
        v38 = 376;
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
  (*(*(v9 + 24) + 1392))(a1, a2);
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
      matrix_mode((v9 + 4640));
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
    v13 = *(*(v9 + 24) + 1392);

    v13(a1, a2);
  }

  else
  {
    (*(*(v9 + 32) + 1392))(a1, a2);
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
      matrix_mode((v9 + 4640));
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
    v16 = *(*(v9 + 24) + 1392);

    v16(a1, a2);
  }

  else
  {
    v12 = mach_absolute_time();
    (*(*(v9 + 32) + 1392))(a1, a2);
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

void sub_33E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void mult_matrixf(__GLIContextRec *a1, const float *a2)
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
      mult_matrixf((v9 + 4640));
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
      v13[1] = 379;
      v13[8] = 0;
      v46 = 0;
      pthread_threadid_np(0, &v46);
      *(v13 + 1) = v46;
      strcpy(v13 + 36, "C@16f");
      *(v13 + 11) = *v9;
      v26 = *a2;
      v27 = *(a2 + 1);
      v28 = *(a2 + 2);
      *(v13 + 25) = *(a2 + 3);
      *(v13 + 21) = v28;
      *(v13 + 17) = v27;
      *(v13 + 13) = v26;
      v29 = byte_21AFD3;
      if (byte_21AFD3)
      {
        breakpoint_break(&__ptr, (&stru_158.addr + 3), 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v29 & 4))
      {
        v30 = mach_absolute_time();
        (*(*(v9 + 32) + 1408))(a1, a2);
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
        v41 = 379;
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
  (*(*(v9 + 24) + 1408))(a1, a2);
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
      mult_matrixf((v9 + 4640));
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
      v13[1] = 379;
      v13[8] = 0;
      v46 = 0;
      pthread_threadid_np(0, &v46);
      *(v13 + 1) = v46;
      strcpy(v13 + 36, "C@16f");
      *(v13 + 11) = *v9;
      v26 = *a2;
      v27 = *(a2 + 1);
      v28 = *(a2 + 2);
      *(v13 + 25) = *(a2 + 3);
      *(v13 + 21) = v28;
      *(v13 + 17) = v27;
      *(v13 + 13) = v26;
      v29 = byte_21AFD3;
      if (byte_21AFD3)
      {
        breakpoint_break(&__ptr, (&stru_158.addr + 3), 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v29 & 4))
      {
        v30 = mach_absolute_time();
        (*(*(v9 + 32) + 1408))(a1, a2);
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
        v41 = 379;
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
  (*(*(v9 + 24) + 1408))(a1, a2);
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
      mult_matrixf((v9 + 4640));
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
    v13 = *(*(v9 + 24) + 1408);

    v13(a1, a2);
  }

  else
  {
    (*(*(v9 + 32) + 1408))(a1, a2);
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
      mult_matrixf((v9 + 4640));
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
    v16 = *(*(v9 + 24) + 1408);

    v16(a1, a2);
  }

  else
  {
    v12 = mach_absolute_time();
    (*(*(v9 + 32) + 1408))(a1, a2);
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

void sub_34404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void normal3f(__GLIContextRec *a1, float a2, float a3, float a4)
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
      v40 = *(*(v13 + 24) + 1456);
      v41.n128_f32[0] = a2;
      v42.n128_f32[0] = a3;
      v43.n128_f32[0] = a4;

      v40(a1, v41, v42, v43);
      return;
    }
  }

  *(v13 + 4838) = 1;
  __ptr = 0;
  v52 = 0;
  v53 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = __ptr;
    v16 = v52;
    v18 = v52 - __ptr;
    v19 = v53;
    if (v53 - (v52 - __ptr) <= 0x3F)
    {
      v53 += 256;
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
    v52 = v16 + 64;
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
    v26 = v53;
    v27 = v53 - (v20 - __ptr);
    if (v23 <= v27)
    {
      v28 = v52;
LABEL_22:
      bzero(v20, v23);
      v52 = &v28[v23];
      *v24 += v23;
LABEL_23:
      v17[1] = 423;
      v17[8] = 0;
      v50 = 0;
      pthread_threadid_np(0, &v50);
      *(v17 + 1) = v50;
      strcpy(v17 + 36, "Cfff");
      *(v17 + 11) = *v13;
      *(v17 + 13) = a2;
      *(v17 + 14) = a3;
      *(v17 + 15) = a4;
      v29 = byte_21AFFF;
      if (byte_21AFFF)
      {
        breakpoint_break(&__ptr, (&stru_158.reserved3 + 3), 1, *(v13 + 3404), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v29 & 4))
      {
        v30 = mach_absolute_time();
        (*(*(v13 + 32) + 1456))(a1, a2, a3, a4);
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
          v46 = __udivti3();
          v47 = __ptr;
          *(__ptr + 3) = v46;
          v47[2] = __udivti3();
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
        v44 = 3;
        v45 = 0xFFFFFFFFLL;
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

        v44 = 2;
        v45 = 423;
      }

      breakpoint_break(&__ptr, v45, v44, v33, v13);
      goto LABEL_37;
    }

    v48 = (v23 - v27 + 255) & 0xFFFFFF00;
    v49 = v48 + v53;
    v53 += v48;
    if (__ptr)
    {
      v24 = reallocf(__ptr, v49);
      __ptr = v24;
      if (v24)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v24 = malloc_type_malloc(v48 + v26, 0xF962E99uLL);
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
  (*(*(v13 + 24) + 1456))(a1, a2, a3, a4);
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
      v40 = *(*(v13 + 24) + 1456);
      v41.n128_f32[0] = a2;
      v42.n128_f32[0] = a3;
      v43.n128_f32[0] = a4;

      v40(a1, v41, v42, v43);
      return;
    }
  }

  *(v13 + 4838) = 1;
  __ptr = 0;
  v52 = 0;
  v53 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = __ptr;
    v16 = v52;
    v18 = v52 - __ptr;
    v19 = v53;
    if (v53 - (v52 - __ptr) <= 0x3F)
    {
      v53 += 256;
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
    v52 = v16 + 64;
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
    v26 = v53;
    v27 = v53 - (v20 - __ptr);
    if (v23 <= v27)
    {
      v28 = v52;
LABEL_22:
      bzero(v20, v23);
      v52 = &v28[v23];
      *v24 += v23;
LABEL_23:
      v17[1] = 423;
      v17[8] = 0;
      v50 = 0;
      pthread_threadid_np(0, &v50);
      *(v17 + 1) = v50;
      strcpy(v17 + 36, "Cfff");
      *(v17 + 11) = *v13;
      *(v17 + 13) = a2;
      *(v17 + 14) = a3;
      *(v17 + 15) = a4;
      v29 = byte_21AFFF;
      if (byte_21AFFF)
      {
        breakpoint_break(&__ptr, (&stru_158.reserved3 + 3), 1, *(v13 + 3404), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v29 & 4))
      {
        v30 = mach_absolute_time();
        (*(*(v13 + 32) + 1456))(a1, a2, a3, a4);
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
          v46 = __udivti3();
          v47 = __ptr;
          *(__ptr + 3) = v46;
          v47[2] = __udivti3();
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
        v44 = 3;
        v45 = 0xFFFFFFFFLL;
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

        v44 = 2;
        v45 = 423;
      }

      breakpoint_break(&__ptr, v45, v44, v33, v13);
      goto LABEL_37;
    }

    v48 = (v23 - v27 + 255) & 0xFFFFFF00;
    v49 = v48 + v53;
    v53 += v48;
    if (__ptr)
    {
      v24 = reallocf(__ptr, v49);
      __ptr = v24;
      if (v24)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v24 = malloc_type_malloc(v48 + v26, 0xF962E99uLL);
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
  (*(*(v13 + 24) + 1456))(a1, a2, a3, a4);
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
      v21 = *(*(v13 + 24) + 1456);
      v18.n128_f32[0] = a2;
      v19.n128_f32[0] = a3;
      v20.n128_f32[0] = a4;

      v21(a1, v18, v19, v20);
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

  (*(*(v13 + 32) + 1456))(a1, a2, a3, a4);
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
      v24 = *(*(v13 + 24) + 1456);
      v21.n128_f32[0] = a2;
      v22.n128_f32[0] = a3;
      v23.n128_f32[0] = a4;

      v24(a1, v21, v22, v23);
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
  (*(*(v13 + 32) + 1456))(a1, a2, a3, a4);
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

void sub_349D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void normal_pointer(__GLIContextRec *a1, uint64_t a2, uint64_t a3, const void *a4)
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
      v32 = *(*(v13 + 3) + 1504);

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
    v20 = v13[508];
    v13[319] = a2;
    v13[321] = a3;
    *(v13 + 158) = a4;
    v13[318] = v20;
    GPUTools::FB::Encode(v37, 429, 2 * (v20 == 0), "Ceit", v16, v17, v18, v19, *v13, a2, a3, a4);
    v21 = byte_21B005;
    if (byte_21B005)
    {
      breakpoint_break(v37, &stru_1A8.sectname[5], 1, v13[851], v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(*(v13 + 4) + 1504))(a1, a2, a3, a4);
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
      v34 = 429;
    }

    breakpoint_break(v37, v34, v33, v25, v13);
    goto LABEL_32;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 3) + 1504))(a1, a2, a3, a4);
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
      v32 = *(*(v13 + 3) + 1504);

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
    v20 = v13[508];
    v13[319] = a2;
    v13[321] = a3;
    *(v13 + 158) = a4;
    v13[318] = v20;
    GPUTools::FB::Encode(v37, 429, 2 * (v20 == 0), "Ceit", v16, v17, v18, v19, *v13, a2, a3, a4);
    v21 = byte_21B005;
    if (byte_21B005)
    {
      breakpoint_break(v37, &stru_1A8.sectname[5], 1, v13[851], v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(*(v13 + 4) + 1504))(a1, a2, a3, a4);
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
      v34 = 429;
    }

    breakpoint_break(v37, v34, v33, v25, v13);
    goto LABEL_32;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 3) + 1504))(a1, a2, a3, a4);
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
      v18 = *(*(v13 + 24) + 1504);

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

  (*(*(v13 + 32) + 1504))(a1, a2, a3, a4);
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
      v21 = *(*(v13 + 24) + 1504);

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
  (*(*(v13 + 32) + 1504))(a1, a2, a3, a4);
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

void sub_34E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  atomic_store(0, (v14 + 56));
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(exception_object);
}

void pixel_storei(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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
      v39 = *(*(v11 + 24) + 1560);

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
      v15[1] = 438;
      v15[8] = 0;
      v47 = 0;
      pthread_threadid_np(0, &v47);
      *(v15 + 1) = v47;
      v15[9] = 6907203;
      *(v15 + 5) = *v11;
      v15[12] = a2;
      v15[13] = a3;
      v28 = byte_21B00E;
      if (byte_21B00E)
      {
        breakpoint_break(&__ptr, &stru_1A8.sectname[14], 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 1560))(a1, a2, a3);
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
        v42 = 438;
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
  (*(*(v11 + 24) + 1560))(a1, a2, a3);
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
      v39 = *(*(v11 + 24) + 1560);

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
      v15[1] = 438;
      v15[8] = 0;
      v47 = 0;
      pthread_threadid_np(0, &v47);
      *(v15 + 1) = v47;
      v15[9] = 6907203;
      *(v15 + 5) = *v11;
      v15[12] = a2;
      v15[13] = a3;
      v28 = byte_21B00E;
      if (byte_21B00E)
      {
        breakpoint_break(&__ptr, &stru_1A8.sectname[14], 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 1560))(a1, a2, a3);
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
        v42 = 438;
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
  (*(*(v11 + 24) + 1560))(a1, a2, a3);
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
      v16 = *(*(v11 + 24) + 1560);

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

  (*(*(v11 + 32) + 1560))(a1, a2, a3);
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
      v19 = *(*(v11 + 24) + 1560);

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
  (*(*(v11 + 32) + 1560))(a1, a2, a3);
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

void sub_353EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void point_size(__GLIContextRec *a1, float a2)
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
      point_size((v9 + 4640), a2);
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
      *(v13 + 1) = 448;
      *(v13 + 8) = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v13 + 1) = v43;
      strcpy(v13 + 36, "Cf");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21B018;
      if (byte_21B018)
      {
        breakpoint_break(&__ptr, &stru_1A8.segname[8], 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 1592))(a1, a2);
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
        v38 = 448;
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
  (*(*(v9 + 24) + 1592))(a1, a2);
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
      point_size((v9 + 4640), a2);
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
      *(v13 + 1) = 448;
      *(v13 + 8) = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v13 + 1) = v43;
      strcpy(v13 + 36, "Cf");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21B018;
      if (byte_21B018)
      {
        breakpoint_break(&__ptr, &stru_1A8.segname[8], 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 1592))(a1, a2);
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
        v38 = 448;
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
  (*(*(v9 + 24) + 1592))(a1, a2);
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
      point_size((v9 + 4640), a2);
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
    v13 = *(*(v9 + 24) + 1592);
    v14.n128_f32[0] = a2;

    v13(a1, v14);
  }

  else
  {
    (*(*(v9 + 32) + 1592))(a1, a2);
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
      point_size((v9 + 4640), a2);
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
    v16 = *(*(v9 + 24) + 1592);
    v17.n128_f32[0] = a2;

    v16(a1, v17);
  }

  else
  {
    v12 = mach_absolute_time();
    (*(*(v9 + 32) + 1592))(a1, a2);
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

void sub_35944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void polygon_offset(__GLIContextRec *a1, float a2, float a3)
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
      v39 = *(*(v11 + 24) + 1608);
      v40.n128_f32[0] = a2;
      v41.n128_f32[0] = a3;

      v39(a1, v40, v41);
      return;
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v51 = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v51;
    v16 = v51 - __ptr;
    v17 = v52;
    v18 = v52 - (v51 - __ptr);
    if (v18 <= 0x37)
    {
      v42 = (311 - v18) & 0x100;
      v52 += v42;
      v15 = malloc_type_malloc(v42 + v17, 0xF962E99uLL);
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
    v51 = v14 + 56;
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
    v25 = v52;
    v26 = v52 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v51;
LABEL_22:
      bzero(v19, v22);
      v51 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 450;
      v15[8] = 0;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v15 + 1) = v49;
      v15[9] = 6710851;
      *(v15 + 5) = *v11;
      *(v15 + 12) = a2;
      *(v15 + 13) = a3;
      v28 = byte_21B01A;
      if (byte_21B01A)
      {
        breakpoint_break(&__ptr, &stru_1A8.segname[10], 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 1608))(a1, a2, a3);
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
          v45 = __udivti3();
          v46 = __ptr;
          *(__ptr + 3) = v45;
          v46[2] = __udivti3();
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
        v43 = 3;
        v44 = 0xFFFFFFFFLL;
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

        v43 = 2;
        v44 = 450;
      }

      breakpoint_break(&__ptr, v44, v43, v32, v11);
      goto LABEL_37;
    }

    v47 = (v22 - v26 + 255) & 0xFFFFFF00;
    v48 = v47 + v52;
    v52 += v47;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v48);
      __ptr = v23;
      if (v23)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v47 + v25, 0xF962E99uLL);
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
  (*(*(v11 + 24) + 1608))(a1, a2, a3);
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
      v39 = *(*(v11 + 24) + 1608);
      v40.n128_f32[0] = a2;
      v41.n128_f32[0] = a3;

      v39(a1, v40, v41);
      return;
    }
  }

  *(v11 + 4838) = 1;
  __ptr = 0;
  v51 = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v15 = __ptr;
    v14 = v51;
    v16 = v51 - __ptr;
    v17 = v52;
    v18 = v52 - (v51 - __ptr);
    if (v18 <= 0x37)
    {
      v42 = (311 - v18) & 0x100;
      v52 += v42;
      v15 = malloc_type_malloc(v42 + v17, 0xF962E99uLL);
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
    v51 = v14 + 56;
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
    v25 = v52;
    v26 = v52 - (v19 - __ptr);
    if (v22 <= v26)
    {
      v27 = v51;
LABEL_22:
      bzero(v19, v22);
      v51 = &v27[v22];
      *v23 += v22;
LABEL_23:
      v15[1] = 450;
      v15[8] = 0;
      v49 = 0;
      pthread_threadid_np(0, &v49);
      *(v15 + 1) = v49;
      v15[9] = 6710851;
      *(v15 + 5) = *v11;
      *(v15 + 12) = a2;
      *(v15 + 13) = a3;
      v28 = byte_21B01A;
      if (byte_21B01A)
      {
        breakpoint_break(&__ptr, &stru_1A8.segname[10], 1, *(v11 + 3404), v11);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v28 & 4))
      {
        v29 = mach_absolute_time();
        (*(*(v11 + 32) + 1608))(a1, a2, a3);
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
          v45 = __udivti3();
          v46 = __ptr;
          *(__ptr + 3) = v45;
          v46[2] = __udivti3();
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
        v43 = 3;
        v44 = 0xFFFFFFFFLL;
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

        v43 = 2;
        v44 = 450;
      }

      breakpoint_break(&__ptr, v44, v43, v32, v11);
      goto LABEL_37;
    }

    v47 = (v22 - v26 + 255) & 0xFFFFFF00;
    v48 = v47 + v52;
    v52 += v47;
    if (__ptr)
    {
      v23 = reallocf(__ptr, v48);
      __ptr = v23;
      if (v23)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v23 = malloc_type_malloc(v47 + v25, 0xF962E99uLL);
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
  (*(*(v11 + 24) + 1608))(a1, a2, a3);
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
      v18 = *(*(v11 + 24) + 1608);
      v16.n128_f32[0] = a2;
      v17.n128_f32[0] = a3;

      v18(a1, v16, v17);
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

  (*(*(v11 + 32) + 1608))(a1, a2, a3);
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
      v21 = *(*(v11 + 24) + 1608);
      v19.n128_f32[0] = a2;
      v20.n128_f32[0] = a3;

      v21(a1, v19, v20);
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
  (*(*(v11 + 32) + 1608))(a1, a2, a3);
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

void sub_35F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void pop_matrix(__GLIContextRec *a1)
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
LABEL_49:
      pop_matrix((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v7 + 4838) = 1;
  __ptr = 0;
  v43 = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v11 = __ptr;
    v10 = v43;
    v12 = v43 - __ptr;
    v13 = v44;
    v14 = v44 - (v43 - __ptr);
    if (v14 <= 0x2F)
    {
      v34 = (303 - v14) & 0x100;
      v44 += v34;
      v11 = malloc_type_malloc(v34 + v13, 0xF962E99uLL);
      __ptr = v11;
      if (!v11)
      {
        goto LABEL_64;
      }

      if ((v11 & 3) != 0)
      {
LABEL_66:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v11, 4uLL);
        goto LABEL_67;
      }

      v10 = v11 + v12;
    }

    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
    v15 = v10 + 48;
    v43 = v10 + 48;
    v16 = v10 + 48 - v11;
    *v11 = v16;
    v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v17 - v16;
    if (v17 == v16)
    {
      goto LABEL_23;
    }

    v19 = __ptr;
    v20 = v15 - __ptr;
    v21 = v44;
    v22 = v44 - (v15 - __ptr);
    if (v18 <= v22)
    {
      v23 = v43;
LABEL_22:
      bzero(v15, v18);
      v43 = &v23[v18];
      *v19 += v18;
LABEL_23:
      v11[1] = 454;
      v11[8] = 0;
      v41 = 0;
      pthread_threadid_np(0, &v41);
      *(v11 + 1) = v41;
      *(v11 + 18) = 67;
      *(v11 + 5) = *v7;
      v24 = byte_21B01E;
      if (byte_21B01E)
      {
        breakpoint_break(&__ptr, &stru_1A8.segname[14], 1, *(v7 + 3404), v7);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
      {
        v25 = mach_absolute_time();
        (*(*(v7 + 32) + 1640))(a1);
        v26 = mach_absolute_time() - v25;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v27 = __ptr;
          *(__ptr + 2) = v25;
          v27[3] = v26;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v37 = __udivti3();
          v38 = __ptr;
          *(__ptr + 3) = v37;
          v38[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v7);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v7 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v7, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v7 + 3480), (v7 + 3520), &__ptr);
      v28 = *(v7 + 3404);
      if (v28 && (gBreakOnError & 1) != 0)
      {
        v35 = 3;
        v36 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v24 & 2) == 0)
        {
LABEL_37:
          v29 = [DYGetGLGuestAppClient() defaultFbufStream];
          v30 = v29;
          while (atomic_exchange(v29 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v30 + 14);
          v31 = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v31 >= 1)
          {
            handle_opengl_thread_conflict(v7);
          }

          goto LABEL_45;
        }

        v35 = 2;
        v36 = 454;
      }

      breakpoint_break(&__ptr, v36, v35, v28, v7);
      goto LABEL_37;
    }

    v39 = (v18 - v22 + 255) & 0xFFFFFF00;
    v40 = v39 + v44;
    v44 += v39;
    if (__ptr)
    {
      v19 = reallocf(__ptr, v40);
      __ptr = v19;
      if (v19)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v19 = malloc_type_malloc(v39 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (v19)
      {
LABEL_61:
        if ((v19 & 3) == 0)
        {
          v23 = v19 + v20;
          v15 = v23;
          goto LABEL_22;
        }

        v11 = v19;
        goto LABEL_66;
      }
    }

LABEL_64:
    dy_abort("failed to allocate fbuf buffer");
LABEL_67:
    __break(1u);
    return;
  }

  atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v7 + 24) + 1640))(a1);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
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
LABEL_49:
      pop_matrix((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v7 + 4838) = 1;
  __ptr = 0;
  v43 = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v11 = __ptr;
    v10 = v43;
    v12 = v43 - __ptr;
    v13 = v44;
    v14 = v44 - (v43 - __ptr);
    if (v14 <= 0x2F)
    {
      v34 = (303 - v14) & 0x100;
      v44 += v34;
      v11 = malloc_type_malloc(v34 + v13, 0xF962E99uLL);
      __ptr = v11;
      if (!v11)
      {
        goto LABEL_64;
      }

      if ((v11 & 3) != 0)
      {
LABEL_66:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v11, 4uLL);
        goto LABEL_67;
      }

      v10 = v11 + v12;
    }

    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
    v15 = v10 + 48;
    v43 = v10 + 48;
    v16 = v10 + 48 - v11;
    *v11 = v16;
    v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v17 - v16;
    if (v17 == v16)
    {
      goto LABEL_23;
    }

    v19 = __ptr;
    v20 = v15 - __ptr;
    v21 = v44;
    v22 = v44 - (v15 - __ptr);
    if (v18 <= v22)
    {
      v23 = v43;
LABEL_22:
      bzero(v15, v18);
      v43 = &v23[v18];
      *v19 += v18;
LABEL_23:
      v11[1] = 454;
      v11[8] = 0;
      v41 = 0;
      pthread_threadid_np(0, &v41);
      *(v11 + 1) = v41;
      *(v11 + 18) = 67;
      *(v11 + 5) = *v7;
      v24 = byte_21B01E;
      if (byte_21B01E)
      {
        breakpoint_break(&__ptr, &stru_1A8.segname[14], 1, *(v7 + 3404), v7);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
      {
        v25 = mach_absolute_time();
        (*(*(v7 + 32) + 1640))(a1);
        v26 = mach_absolute_time() - v25;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v27 = __ptr;
          *(__ptr + 2) = v25;
          v27[3] = v26;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v37 = __udivti3();
          v38 = __ptr;
          *(__ptr + 3) = v37;
          v38[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v7);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v7 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v7, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v7 + 3480), (v7 + 3520), &__ptr);
      v28 = *(v7 + 3404);
      if (v28 && (gBreakOnError & 1) != 0)
      {
        v35 = 3;
        v36 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v24 & 2) == 0)
        {
LABEL_37:
          v29 = [DYGetGLGuestAppClient() defaultFbufStream];
          v30 = v29;
          while (atomic_exchange(v29 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v30 + 14);
          v31 = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v31 >= 1)
          {
            handle_opengl_thread_conflict(v7);
          }

          goto LABEL_45;
        }

        v35 = 2;
        v36 = 454;
      }

      breakpoint_break(&__ptr, v36, v35, v28, v7);
      goto LABEL_37;
    }

    v39 = (v18 - v22 + 255) & 0xFFFFFF00;
    v40 = v39 + v44;
    v44 += v39;
    if (__ptr)
    {
      v19 = reallocf(__ptr, v40);
      __ptr = v19;
      if (v19)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v19 = malloc_type_malloc(v39 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (v19)
      {
LABEL_61:
        if ((v19 & 3) == 0)
        {
          v23 = v19 + v20;
          v15 = v23;
          goto LABEL_22;
        }

        v11 = v19;
        goto LABEL_66;
      }
    }

LABEL_64:
    dy_abort("failed to allocate fbuf buffer");
LABEL_67:
    __break(1u);
    return;
  }

  atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v7 + 24) + 1640))(a1);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
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
LABEL_24:
      pop_matrix((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v7 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    pop_matrix((v7 + 4640));
  }

  else
  {
    (*(*(v7 + 32) + 1640))(a1);
    ++*(v7 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v7);
    }

    add = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v7);
    }
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
LABEL_24:
      pop_matrix((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v7 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    pop_matrix((v7 + 4640));
  }

  else
  {
    v10 = mach_absolute_time();
    (*(*(v7 + 32) + 1640))(a1);
    v11 = mach_absolute_time();
    v12 = vdupq_n_s64(1uLL);
    v12.i64[0] = v11 - v10;
    *(v7 + 3696) = vaddq_s64(v12, *(v7 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v7);
    }

    add = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v7);
    }
  }
}

void sub_36434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void push_matrix(__GLIContextRec *a1)
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
LABEL_49:
      push_matrix((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v7 + 4838) = 1;
  __ptr = 0;
  v43 = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v11 = __ptr;
    v10 = v43;
    v12 = v43 - __ptr;
    v13 = v44;
    v14 = v44 - (v43 - __ptr);
    if (v14 <= 0x2F)
    {
      v34 = (303 - v14) & 0x100;
      v44 += v34;
      v11 = malloc_type_malloc(v34 + v13, 0xF962E99uLL);
      __ptr = v11;
      if (!v11)
      {
        goto LABEL_64;
      }

      if ((v11 & 3) != 0)
      {
LABEL_66:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v11, 4uLL);
        goto LABEL_67;
      }

      v10 = v11 + v12;
    }

    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
    v15 = v10 + 48;
    v43 = v10 + 48;
    v16 = v10 + 48 - v11;
    *v11 = v16;
    v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v17 - v16;
    if (v17 == v16)
    {
      goto LABEL_23;
    }

    v19 = __ptr;
    v20 = v15 - __ptr;
    v21 = v44;
    v22 = v44 - (v15 - __ptr);
    if (v18 <= v22)
    {
      v23 = v43;
LABEL_22:
      bzero(v15, v18);
      v43 = &v23[v18];
      *v19 += v18;
LABEL_23:
      v11[1] = 471;
      v11[8] = 0;
      v41 = 0;
      pthread_threadid_np(0, &v41);
      *(v11 + 1) = v41;
      *(v11 + 18) = 67;
      *(v11 + 5) = *v7;
      v24 = byte_21B02F;
      if (byte_21B02F)
      {
        breakpoint_break(&__ptr, (&stru_1A8.size + 7), 1, *(v7 + 3404), v7);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
      {
        v25 = mach_absolute_time();
        (*(*(v7 + 32) + 1680))(a1);
        v26 = mach_absolute_time() - v25;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v27 = __ptr;
          *(__ptr + 2) = v25;
          v27[3] = v26;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v37 = __udivti3();
          v38 = __ptr;
          *(__ptr + 3) = v37;
          v38[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v7);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v7 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v7, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v7 + 3480), (v7 + 3520), &__ptr);
      v28 = *(v7 + 3404);
      if (v28 && (gBreakOnError & 1) != 0)
      {
        v35 = 3;
        v36 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v24 & 2) == 0)
        {
LABEL_37:
          v29 = [DYGetGLGuestAppClient() defaultFbufStream];
          v30 = v29;
          while (atomic_exchange(v29 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v30 + 14);
          v31 = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v31 >= 1)
          {
            handle_opengl_thread_conflict(v7);
          }

          goto LABEL_45;
        }

        v35 = 2;
        v36 = 471;
      }

      breakpoint_break(&__ptr, v36, v35, v28, v7);
      goto LABEL_37;
    }

    v39 = (v18 - v22 + 255) & 0xFFFFFF00;
    v40 = v39 + v44;
    v44 += v39;
    if (__ptr)
    {
      v19 = reallocf(__ptr, v40);
      __ptr = v19;
      if (v19)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v19 = malloc_type_malloc(v39 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (v19)
      {
LABEL_61:
        if ((v19 & 3) == 0)
        {
          v23 = v19 + v20;
          v15 = v23;
          goto LABEL_22;
        }

        v11 = v19;
        goto LABEL_66;
      }
    }

LABEL_64:
    dy_abort("failed to allocate fbuf buffer");
LABEL_67:
    __break(1u);
    return;
  }

  atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v7 + 24) + 1680))(a1);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
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
LABEL_49:
      push_matrix((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    v33 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v33 >= 1)
    {
      goto LABEL_49;
    }
  }

  *(v7 + 4838) = 1;
  __ptr = 0;
  v43 = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v11 = __ptr;
    v10 = v43;
    v12 = v43 - __ptr;
    v13 = v44;
    v14 = v44 - (v43 - __ptr);
    if (v14 <= 0x2F)
    {
      v34 = (303 - v14) & 0x100;
      v44 += v34;
      v11 = malloc_type_malloc(v34 + v13, 0xF962E99uLL);
      __ptr = v11;
      if (!v11)
      {
        goto LABEL_64;
      }

      if ((v11 & 3) != 0)
      {
LABEL_66:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v11, 4uLL);
        goto LABEL_67;
      }

      v10 = v11 + v12;
    }

    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *v10 = 0u;
    v15 = v10 + 48;
    v43 = v10 + 48;
    v16 = v10 + 48 - v11;
    *v11 = v16;
    v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v17 - v16;
    if (v17 == v16)
    {
      goto LABEL_23;
    }

    v19 = __ptr;
    v20 = v15 - __ptr;
    v21 = v44;
    v22 = v44 - (v15 - __ptr);
    if (v18 <= v22)
    {
      v23 = v43;
LABEL_22:
      bzero(v15, v18);
      v43 = &v23[v18];
      *v19 += v18;
LABEL_23:
      v11[1] = 471;
      v11[8] = 0;
      v41 = 0;
      pthread_threadid_np(0, &v41);
      *(v11 + 1) = v41;
      *(v11 + 18) = 67;
      *(v11 + 5) = *v7;
      v24 = byte_21B02F;
      if (byte_21B02F)
      {
        breakpoint_break(&__ptr, (&stru_1A8.size + 7), 1, *(v7 + 3404), v7);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
      {
        v25 = mach_absolute_time();
        (*(*(v7 + 32) + 1680))(a1);
        v26 = mach_absolute_time() - v25;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v27 = __ptr;
          *(__ptr + 2) = v25;
          v27[3] = v26;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v37 = __udivti3();
          v38 = __ptr;
          *(__ptr + 3) = v37;
          v38[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        check_errors(v7);
      }

LABEL_28:
      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        GPUTools::FB::EncodeCurrentBacktrace();
      }

      if (*(v7 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v7, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v7 + 3480), (v7 + 3520), &__ptr);
      v28 = *(v7 + 3404);
      if (v28 && (gBreakOnError & 1) != 0)
      {
        v35 = 3;
        v36 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v24 & 2) == 0)
        {
LABEL_37:
          v29 = [DYGetGLGuestAppClient() defaultFbufStream];
          v30 = v29;
          while (atomic_exchange(v29 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v30 + 14);
          v31 = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v31 >= 1)
          {
            handle_opengl_thread_conflict(v7);
          }

          goto LABEL_45;
        }

        v35 = 2;
        v36 = 471;
      }

      breakpoint_break(&__ptr, v36, v35, v28, v7);
      goto LABEL_37;
    }

    v39 = (v18 - v22 + 255) & 0xFFFFFF00;
    v40 = v39 + v44;
    v44 += v39;
    if (__ptr)
    {
      v19 = reallocf(__ptr, v40);
      __ptr = v19;
      if (v19)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v19 = malloc_type_malloc(v39 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (v19)
      {
LABEL_61:
        if ((v19 & 3) == 0)
        {
          v23 = v19 + v20;
          v15 = v23;
          goto LABEL_22;
        }

        v11 = v19;
        goto LABEL_66;
      }
    }

LABEL_64:
    dy_abort("failed to allocate fbuf buffer");
LABEL_67:
    __break(1u);
    return;
  }

  atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v7 + 24) + 1680))(a1);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
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
LABEL_24:
      push_matrix((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v7 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    push_matrix((v7 + 4640));
  }

  else
  {
    (*(*(v7 + 32) + 1680))(a1);
    ++*(v7 + 3704);
    if (gCheckGLErrors == 1)
    {
      alpha_func(v7);
    }

    add = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v7);
    }
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
LABEL_24:
      push_matrix((v7 + 4640));
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v7);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v7 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    push_matrix((v7 + 4640));
  }

  else
  {
    v10 = mach_absolute_time();
    (*(*(v7 + 32) + 1680))(a1);
    v11 = mach_absolute_time();
    v12 = vdupq_n_s64(1uLL);
    v12.i64[0] = v11 - v10;
    *(v7 + 3696) = vaddq_s64(v12, *(v7 + 3696));
    if (gCheckGLErrors == 1)
    {
      alpha_func(v7);
    }

    add = atomic_fetch_add((v7 + 4640), 0xFFFFFFFF);
    if (gCheckGLErrors == 1 && (add - 1) >= 1)
    {

      handle_opengl_thread_conflict(v7);
    }
  }
}

void sub_36968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void read_buffer(__GLIContextRec *a1, uint64_t a2)
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
      read_buffer((v9 + 4640));
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
      *(v13 + 1) = 497;
      *(v13 + 8) = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v13 + 1) = v43;
      strcpy(v13 + 36, "Ce");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21B049;
      if (byte_21B049)
      {
        breakpoint_break(&__ptr, (&stru_1A8.reserved2 + 1), 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 1888))(a1, a2);
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
        v38 = 497;
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
  (*(*(v9 + 24) + 1888))(a1, a2);
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
      read_buffer((v9 + 4640));
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
      *(v13 + 1) = 497;
      *(v13 + 8) = 0;
      v43 = 0;
      pthread_threadid_np(0, &v43);
      *(v13 + 1) = v43;
      strcpy(v13 + 36, "Ce");
      *(v13 + 5) = *v9;
      *(v13 + 12) = a2;
      v26 = byte_21B049;
      if (byte_21B049)
      {
        breakpoint_break(&__ptr, (&stru_1A8.reserved2 + 1), 1, *(v9 + 3404), v9);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v26 & 4))
      {
        v27 = mach_absolute_time();
        (*(*(v9 + 32) + 1888))(a1, a2);
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
        v38 = 497;
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
  (*(*(v9 + 24) + 1888))(a1, a2);
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
      read_buffer((v9 + 4640));
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
    v13 = *(*(v9 + 24) + 1888);

    v13(a1, a2);
  }

  else
  {
    (*(*(v9 + 32) + 1888))(a1, a2);
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
      read_buffer((v9 + 4640));
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
    v16 = *(*(v9 + 24) + 1888);

    v16(a1, a2);
  }

  else
  {
    v12 = mach_absolute_time();
    (*(*(v9 + 32) + 1888))(a1, a2);
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

void sub_36EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void read_pixels(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
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
      goto LABEL_55;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v20);
    v52 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v52 >= 1)
    {
LABEL_55:
      atomic_fetch_add(v20 + 1160, 0xFFFFFFFF);
      v53 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v53, 0, do_nothing);
      v54 = *(*(v20 + 3) + 1896);

      v54(a1, a2, a3, a4, a5, a6, a7, a8);
      return;
    }
  }

  *(v20 + 4838) = 1;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v62 = 0;
    (*(*(v20 + 4) + 832))(*(v20 + 2), 35739, &v62 + 4);
    (*(*(v20 + 4) + 832))(*(v20 + 2), 35738, &v62);
    GPUTools::FB::Encode(&v63, 4294955024, 0, "Ciee", v23, v24, v25, v26, *v20, 6, HIDWORD(v62), v62);
    v27 = [DYGetGLGuestAppClient() defaultFbufStream];
    v28 = v27;
    while (atomic_exchange(v27 + 14, 1u) == 1)
    {
        ;
      }
    }

    GPUTools::FB::Stream::Write_nolock();
    atomic_store(0, v28 + 14);
    GPUTools::FB::Encode(&v63, 498, 0, "Ciiiieet", v29, v30, v31, v32, *v20, a2, a3, a4, a5, a6, a7, a8);
    v59 = byte_21B04A;
    if (byte_21B04A)
    {
      breakpoint_break(&v63, (&stru_1A8.reserved2 + 2), 1, v20[851], v20);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v59 & 4))
    {
      v33 = mach_absolute_time();
      (*(*(v20 + 4) + 1896))(a1, a2, a3, a4, a5, a6, a7, a8);
      v58 = v20;
      v34 = a3;
      v35 = a4;
      v36 = a5;
      v37 = a6;
      v38 = a7;
      v39 = mach_absolute_time() - v33;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v40 = v63;
        v63[3] = v39;
      }

      else
      {
        v57 = __udivti3();
        v40 = v63;
        v63[3] = v57;
        v33 = __udivti3();
      }

      v40[2] = v33;
      a7 = v38;
      a6 = v37;
      a5 = v36;
      a4 = v35;
      a3 = v34;
      v20 = v58;
      if (gCheckGLErrors == 1)
      {
        check_errors(v58);
      }
    }

    if (!v20[510])
    {
      GPUTools::GL::SavePixelStorePackState();
      PixelsImageSize = GPUTools::GL::ComputeReadPixelsImageSize();
      if (a8)
      {
        if (PixelsImageSize)
        {
          DYGetGLGuestAppClient();
          GPUTools::Interpose::DYSavePointer();
          v46 = v63;
          v61 = *(v63 + 1);
          v64 = v63;
          if (v65 >= 0x24)
          {
            *(v63 + 8) = 0;
            *v46 = 0u;
            v46[1] = 0u;
          }

          GPUTools::FB::Encode(&v63, 498, 256, "CiiiieeU", v42, v43, v44, v45, *v20, a2, a3, a4, a5, a6, a7, v20 + 1161);
          *(v63 + 1) = v61;
        }
      }
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (v20[851])
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v20, &v63);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v20 + 435, v20 + 440, &v63);
    v47 = v20[851];
    if (v47 && (gBreakOnError & 1) != 0)
    {
      v55 = 3;
      v56 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v59 & 2) == 0)
      {
LABEL_43:
        v48 = [DYGetGLGuestAppClient() defaultFbufStream];
        v49 = v48;
        while (atomic_exchange(v48 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v49 + 14);
        v50 = atomic_fetch_add(v20 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v50 >= 1)
        {
          handle_opengl_thread_conflict(v20);
        }

        goto LABEL_51;
      }

      v55 = 2;
      v56 = 498;
    }

    breakpoint_break(&v63, v56, v55, v47, v20);
    goto LABEL_43;
  }

  atomic_fetch_add(v20 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v20 + 3) + 1896))(a1, a2, a3, a4, a5, a6, a7, a8);
LABEL_51:
  if (v63)
  {
    free(v63);
  }
}

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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v21);
    v42 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v42 >= 1)
    {
LABEL_47:
      atomic_fetch_add(v21 + 1160, 0xFFFFFFFF);
      v43 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v43, 0, do_nothing);
      v44 = *(*(v21 + 3) + 1896);

      v44(a1, a2, a3, a4, a5, a6, a7, a8);
      return;
    }
  }

  *(v21 + 4838) = 1;
  v51[0] = 0;
  v51[1] = 0;
  v52 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v50 = 0;
    (*(*(v21 + 4) + 832))(*(v21 + 2), 35739, &v50 + 4);
    (*(*(v21 + 4) + 832))(*(v21 + 2), 35738, &v50);
    GPUTools::FB::Encode(v51, 4294955024, 0, "Ciee", v24, v25, v26, v27, *v21, 6, HIDWORD(v50), v50);
    v28 = [DYGetGLGuestAppClient() defaultFbufStream];
    v29 = v28;
    while (atomic_exchange(v28 + 14, 1u) == 1)
    {
        ;
      }
    }

    GPUTools::FB::Stream::Write_nolock();
    atomic_store(0, v29 + 14);
    GPUTools::FB::Encode(v51, 498, 0, "Ciiiieep", v30, v31, v32, v33, *v21, a2, a3, a4, a5, a6, a7, a8);
    v49 = byte_21B04A;
    if (byte_21B04A)
    {
      breakpoint_break(v51, (&stru_1A8.reserved2 + 2), 1, v21[851], v21);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v49 & 4))
    {
      v34 = mach_absolute_time();
      (*(*(v21 + 4) + 1896))(a1, a2, a3, a4, a5, a6, a7, a8);
      v35 = mach_absolute_time() - v34;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v36 = v51[0];
        *(v51[0] + 2) = v34;
        v36[3] = v35;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v47 = __udivti3();
        v48 = v51[0];
        *(v51[0] + 3) = v47;
        v48[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_26;
        }
      }

      check_errors(v21);
    }

LABEL_26:
    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (v21[851])
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v21, v51);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v21 + 435, v21 + 440, v51);
    v37 = v21[851];
    if (v37 && (gBreakOnError & 1) != 0)
    {
      v45 = 3;
      v46 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v49 & 2) == 0)
      {
LABEL_35:
        v38 = [DYGetGLGuestAppClient() defaultFbufStream];
        v39 = v38;
        while (atomic_exchange(v38 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v39 + 14);
        v40 = atomic_fetch_add(v21 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v40 >= 1)
        {
          handle_opengl_thread_conflict(v21);
        }

        goto LABEL_43;
      }

      v45 = 2;
      v46 = 498;
    }

    breakpoint_break(v51, v46, v45, v37, v21);
    goto LABEL_35;
  }

  atomic_fetch_add(v21 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v21 + 3) + 1896))(a1, a2, a3, a4, a5, a6, a7, a8);
LABEL_43:
  if (v51[0])
  {
    free(v51[0]);
  }
}

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
  v22 = atomic_fetch_add((v21 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v22 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
      v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v25, 0, do_nothing);
LABEL_29:
      v26 = *(*(v21 + 24) + 1896);

      v26(a1, a2, a3, a4, a5, a6, a7, a8);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v21);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v21 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  (*(*(v21 + 32) + 1896))(a1, a2, a3, a4, a5, a6, a7, a8);
  ++*(v21 + 3704);
  if (gCheckGLErrors == 1)
  {
    alpha_func(v21);
  }

  add = atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v21);
  }
}

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
  v22 = atomic_fetch_add((v21 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v22 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
LABEL_29:
      v31 = *(*(v21 + 24) + 1896);

      v31(a1, a2, a3, a4, a5, a6, a7, a8);
      return;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v21);
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_24;
    }
  }

  *(v21 + 4838) = 1;
  if ([DYGetGLGuestAppClient() state] == &dword_0 + 1 && objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
    [DYGetGLGuestAppClient() triggerArmedCapture];
    goto LABEL_29;
  }

  v24 = mach_absolute_time();
  v25 = a8;
  v26 = v24;
  (*(*(v21 + 32) + 1896))(a1, a2, a3, a4, a5, a6, a7, v25);
  v27 = mach_absolute_time();
  v28 = vdupq_n_s64(1uLL);
  v28.i64[0] = v27 - v26;
  *(v21 + 3696) = vaddq_s64(v28, *(v21 + 3696));
  if (gCheckGLErrors == 1)
  {
    alpha_func(v21);
  }

  add = atomic_fetch_add((v21 + 4640), 0xFFFFFFFF);
  if (gCheckGLErrors == 1 && (add - 1) >= 1)
  {

    handle_opengl_thread_conflict(v21);
  }
}

void sub_37548(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

void rotatef(__GLIContextRec *a1, float a2, float a3, float a4, float a5)
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
    v41 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v41 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v42 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v42, 0, do_nothing);
      v43 = *(*(v15 + 24) + 1984);
      v44.n128_f32[0] = a2;
      v45.n128_f32[0] = a3;
      v46.n128_f32[0] = a4;
      v47.n128_f32[0] = a5;

      v43(a1, v44, v45, v46, v47);
      return;
    }
  }

  *(v15 + 4838) = 1;
  __ptr = 0;
  v57 = 0;
  v58 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = __ptr;
    v18 = v57;
    v20 = v57 - __ptr;
    v21 = v58;
    v22 = v58 - (v57 - __ptr);
    if (v22 <= 0x43)
    {
      v48 = (323 - v22) & 0x100;
      v58 += v48;
      v19 = malloc_type_malloc(v48 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_66;
      }

      if ((v19 & 3) != 0)
      {
LABEL_68:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v19, 4uLL);
        goto LABEL_69;
      }

      v18 = v19 + v20;
    }

    *(v18 + 16) = 0;
    *(v18 + 2) = 0u;
    *(v18 + 3) = 0u;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    v23 = v18 + 68;
    v57 = v18 + 68;
    v24 = v18 + 68 - v19;
    *v19 = v24;
    v25 = (v24 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v26 = v25 - v24;
    if (v25 == v24)
    {
      goto LABEL_23;
    }

    v27 = __ptr;
    v28 = v23 - __ptr;
    v29 = v58;
    v30 = v58 - (v23 - __ptr);
    if (v26 <= v30)
    {
      v31 = v57;
LABEL_22:
      bzero(v23, v26);
      v57 = &v31[v26];
      *v27 += v26;
LABEL_23:
      v19[1] = 513;
      v19[8] = 0;
      v55 = 0;
      pthread_threadid_np(0, &v55);
      *(v19 + 1) = v55;
      strcpy(v19 + 36, "Cffff");
      *(v19 + 11) = *v15;
      *(v19 + 13) = a2;
      *(v19 + 14) = a3;
      *(v19 + 15) = a4;
      *(v19 + 16) = a5;
      v32 = byte_21B059;
      if (byte_21B059)
      {
        breakpoint_break(&__ptr, &stru_1F8.sectname[9], 1, *(v15 + 3404), v15);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v32 & 4))
      {
        v33 = mach_absolute_time();
        (*(*(v15 + 32) + 1984))(a1, a2, a3, a4, a5);
        v34 = mach_absolute_time() - v33;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v35 = __ptr;
          *(__ptr + 2) = v33;
          v35[3] = v34;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v51 = __udivti3();
          v52 = __ptr;
          *(__ptr + 3) = v51;
          v52[2] = __udivti3();
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

      if (*(v15 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v15, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), &__ptr);
      v36 = *(v15 + 3404);
      if (v36 && (gBreakOnError & 1) != 0)
      {
        v49 = 3;
        v50 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v32 & 2) == 0)
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
          v39 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v39 >= 1)
          {
            handle_opengl_thread_conflict(v15);
          }

          goto LABEL_45;
        }

        v49 = 2;
        v50 = 513;
      }

      breakpoint_break(&__ptr, v50, v49, v36, v15);
      goto LABEL_37;
    }

    v53 = (v26 - v30 + 255) & 0xFFFFFF00;
    v54 = v53 + v58;
    v58 += v53;
    if (__ptr)
    {
      v27 = reallocf(__ptr, v54);
      __ptr = v27;
      if (v27)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v27 = malloc_type_malloc(v53 + v29, 0xF962E99uLL);
      __ptr = v27;
      if (v27)
      {
LABEL_63:
        if ((v27 & 3) == 0)
        {
          v31 = v27 + v28;
          v23 = v31;
          goto LABEL_22;
        }

        v19 = v27;
        goto LABEL_68;
      }
    }

LABEL_66:
    dy_abort("failed to allocate fbuf buffer");
LABEL_69:
    __break(1u);
    return;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 1984))(a1, a2, a3, a4, a5);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v41 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v41 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v42 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v42, 0, do_nothing);
      v43 = *(*(v15 + 24) + 1984);
      v44.n128_f32[0] = a2;
      v45.n128_f32[0] = a3;
      v46.n128_f32[0] = a4;
      v47.n128_f32[0] = a5;

      v43(a1, v44, v45, v46, v47);
      return;
    }
  }

  *(v15 + 4838) = 1;
  __ptr = 0;
  v57 = 0;
  v58 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = __ptr;
    v18 = v57;
    v20 = v57 - __ptr;
    v21 = v58;
    v22 = v58 - (v57 - __ptr);
    if (v22 <= 0x43)
    {
      v48 = (323 - v22) & 0x100;
      v58 += v48;
      v19 = malloc_type_malloc(v48 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_66;
      }

      if ((v19 & 3) != 0)
      {
LABEL_68:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v19, 4uLL);
        goto LABEL_69;
      }

      v18 = v19 + v20;
    }

    *(v18 + 16) = 0;
    *(v18 + 2) = 0u;
    *(v18 + 3) = 0u;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    v23 = v18 + 68;
    v57 = v18 + 68;
    v24 = v18 + 68 - v19;
    *v19 = v24;
    v25 = (v24 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v26 = v25 - v24;
    if (v25 == v24)
    {
      goto LABEL_23;
    }

    v27 = __ptr;
    v28 = v23 - __ptr;
    v29 = v58;
    v30 = v58 - (v23 - __ptr);
    if (v26 <= v30)
    {
      v31 = v57;
LABEL_22:
      bzero(v23, v26);
      v57 = &v31[v26];
      *v27 += v26;
LABEL_23:
      v19[1] = 513;
      v19[8] = 0;
      v55 = 0;
      pthread_threadid_np(0, &v55);
      *(v19 + 1) = v55;
      strcpy(v19 + 36, "Cffff");
      *(v19 + 11) = *v15;
      *(v19 + 13) = a2;
      *(v19 + 14) = a3;
      *(v19 + 15) = a4;
      *(v19 + 16) = a5;
      v32 = byte_21B059;
      if (byte_21B059)
      {
        breakpoint_break(&__ptr, &stru_1F8.sectname[9], 1, *(v15 + 3404), v15);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v32 & 4))
      {
        v33 = mach_absolute_time();
        (*(*(v15 + 32) + 1984))(a1, a2, a3, a4, a5);
        v34 = mach_absolute_time() - v33;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v35 = __ptr;
          *(__ptr + 2) = v33;
          v35[3] = v34;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v51 = __udivti3();
          v52 = __ptr;
          *(__ptr + 3) = v51;
          v52[2] = __udivti3();
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

      if (*(v15 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v15, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), &__ptr);
      v36 = *(v15 + 3404);
      if (v36 && (gBreakOnError & 1) != 0)
      {
        v49 = 3;
        v50 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v32 & 2) == 0)
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
          v39 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v39 >= 1)
          {
            handle_opengl_thread_conflict(v15);
          }

          goto LABEL_45;
        }

        v49 = 2;
        v50 = 513;
      }

      breakpoint_break(&__ptr, v50, v49, v36, v15);
      goto LABEL_37;
    }

    v53 = (v26 - v30 + 255) & 0xFFFFFF00;
    v54 = v53 + v58;
    v58 += v53;
    if (__ptr)
    {
      v27 = reallocf(__ptr, v54);
      __ptr = v27;
      if (v27)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v27 = malloc_type_malloc(v53 + v29, 0xF962E99uLL);
      __ptr = v27;
      if (v27)
      {
LABEL_63:
        if ((v27 & 3) == 0)
        {
          v31 = v27 + v28;
          v23 = v31;
          goto LABEL_22;
        }

        v19 = v27;
        goto LABEL_68;
      }
    }

LABEL_66:
    dy_abort("failed to allocate fbuf buffer");
LABEL_69:
    __break(1u);
    return;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 1984))(a1, a2, a3, a4, a5);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
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
      v24 = *(*(v15 + 24) + 1984);
      v20.n128_f32[0] = a2;
      v21.n128_f32[0] = a3;
      v22.n128_f32[0] = a4;
      v23.n128_f32[0] = a5;

      v24(a1, v20, v21, v22, v23);
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

  (*(*(v15 + 32) + 1984))(a1, a2, a3, a4, a5);
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
      v27 = *(*(v15 + 24) + 1984);
      v23.n128_f32[0] = a2;
      v24.n128_f32[0] = a3;
      v25.n128_f32[0] = a4;
      v26.n128_f32[0] = a5;

      v27(a1, v23, v24, v25, v26);
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
  (*(*(v15 + 32) + 1984))(a1, a2, a3, a4, a5);
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

void sub_37B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void scalef(__GLIContextRec *a1, float a2, float a3, float a4)
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
      v40 = *(*(v13 + 24) + 2000);
      v41.n128_f32[0] = a2;
      v42.n128_f32[0] = a3;
      v43.n128_f32[0] = a4;

      v40(a1, v41, v42, v43);
      return;
    }
  }

  *(v13 + 4838) = 1;
  __ptr = 0;
  v52 = 0;
  v53 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = __ptr;
    v16 = v52;
    v18 = v52 - __ptr;
    v19 = v53;
    if (v53 - (v52 - __ptr) <= 0x3F)
    {
      v53 += 256;
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
    v52 = v16 + 64;
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
    v26 = v53;
    v27 = v53 - (v20 - __ptr);
    if (v23 <= v27)
    {
      v28 = v52;
LABEL_22:
      bzero(v20, v23);
      v52 = &v28[v23];
      *v24 += v23;
LABEL_23:
      v17[1] = 517;
      v17[8] = 0;
      v50 = 0;
      pthread_threadid_np(0, &v50);
      *(v17 + 1) = v50;
      strcpy(v17 + 36, "Cfff");
      *(v17 + 11) = *v13;
      *(v17 + 13) = a2;
      *(v17 + 14) = a3;
      *(v17 + 15) = a4;
      v29 = byte_21B05D;
      if (byte_21B05D)
      {
        breakpoint_break(&__ptr, &stru_1F8.sectname[13], 1, *(v13 + 3404), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v29 & 4))
      {
        v30 = mach_absolute_time();
        (*(*(v13 + 32) + 2000))(a1, a2, a3, a4);
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
          v46 = __udivti3();
          v47 = __ptr;
          *(__ptr + 3) = v46;
          v47[2] = __udivti3();
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
        v44 = 3;
        v45 = 0xFFFFFFFFLL;
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

        v44 = 2;
        v45 = 517;
      }

      breakpoint_break(&__ptr, v45, v44, v33, v13);
      goto LABEL_37;
    }

    v48 = (v23 - v27 + 255) & 0xFFFFFF00;
    v49 = v48 + v53;
    v53 += v48;
    if (__ptr)
    {
      v24 = reallocf(__ptr, v49);
      __ptr = v24;
      if (v24)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v24 = malloc_type_malloc(v48 + v26, 0xF962E99uLL);
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
  (*(*(v13 + 24) + 2000))(a1, a2, a3, a4);
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
      v40 = *(*(v13 + 24) + 2000);
      v41.n128_f32[0] = a2;
      v42.n128_f32[0] = a3;
      v43.n128_f32[0] = a4;

      v40(a1, v41, v42, v43);
      return;
    }
  }

  *(v13 + 4838) = 1;
  __ptr = 0;
  v52 = 0;
  v53 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v17 = __ptr;
    v16 = v52;
    v18 = v52 - __ptr;
    v19 = v53;
    if (v53 - (v52 - __ptr) <= 0x3F)
    {
      v53 += 256;
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
    v52 = v16 + 64;
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
    v26 = v53;
    v27 = v53 - (v20 - __ptr);
    if (v23 <= v27)
    {
      v28 = v52;
LABEL_22:
      bzero(v20, v23);
      v52 = &v28[v23];
      *v24 += v23;
LABEL_23:
      v17[1] = 517;
      v17[8] = 0;
      v50 = 0;
      pthread_threadid_np(0, &v50);
      *(v17 + 1) = v50;
      strcpy(v17 + 36, "Cfff");
      *(v17 + 11) = *v13;
      *(v17 + 13) = a2;
      *(v17 + 14) = a3;
      *(v17 + 15) = a4;
      v29 = byte_21B05D;
      if (byte_21B05D)
      {
        breakpoint_break(&__ptr, &stru_1F8.sectname[13], 1, *(v13 + 3404), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v29 & 4))
      {
        v30 = mach_absolute_time();
        (*(*(v13 + 32) + 2000))(a1, a2, a3, a4);
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
          v46 = __udivti3();
          v47 = __ptr;
          *(__ptr + 3) = v46;
          v47[2] = __udivti3();
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
        v44 = 3;
        v45 = 0xFFFFFFFFLL;
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

        v44 = 2;
        v45 = 517;
      }

      breakpoint_break(&__ptr, v45, v44, v33, v13);
      goto LABEL_37;
    }

    v48 = (v23 - v27 + 255) & 0xFFFFFF00;
    v49 = v48 + v53;
    v53 += v48;
    if (__ptr)
    {
      v24 = reallocf(__ptr, v49);
      __ptr = v24;
      if (v24)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v24 = malloc_type_malloc(v48 + v26, 0xF962E99uLL);
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
  (*(*(v13 + 24) + 2000))(a1, a2, a3, a4);
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
      v21 = *(*(v13 + 24) + 2000);
      v18.n128_f32[0] = a2;
      v19.n128_f32[0] = a3;
      v20.n128_f32[0] = a4;

      v21(a1, v18, v19, v20);
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

  (*(*(v13 + 32) + 2000))(a1, a2, a3, a4);
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
      v24 = *(*(v13 + 24) + 2000);
      v21.n128_f32[0] = a2;
      v22.n128_f32[0] = a3;
      v23.n128_f32[0] = a4;

      v24(a1, v21, v22, v23);
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
  (*(*(v13 + 32) + 2000))(a1, a2, a3, a4);
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

void sub_38120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void scissor(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    v41 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v41 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v42 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v42, 0, do_nothing);
      v43 = *(*(v15 + 24) + 2008);

      v43(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  __ptr = 0;
  v53 = 0;
  v54 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = __ptr;
    v18 = v53;
    v20 = v53 - __ptr;
    v21 = v54;
    v22 = v54 - (v53 - __ptr);
    if (v22 <= 0x43)
    {
      v44 = (323 - v22) & 0x100;
      v54 += v44;
      v19 = malloc_type_malloc(v44 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_66;
      }

      if ((v19 & 3) != 0)
      {
LABEL_68:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v19, 4uLL);
        goto LABEL_69;
      }

      v18 = v19 + v20;
    }

    *(v18 + 16) = 0;
    *(v18 + 2) = 0u;
    *(v18 + 3) = 0u;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    v23 = v18 + 68;
    v53 = v18 + 68;
    v24 = v18 + 68 - v19;
    *v19 = v24;
    v25 = (v24 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v26 = v25 - v24;
    if (v25 == v24)
    {
      goto LABEL_23;
    }

    v27 = __ptr;
    v28 = v23 - __ptr;
    v29 = v54;
    v30 = v54 - (v23 - __ptr);
    if (v26 <= v30)
    {
      v31 = v53;
LABEL_22:
      bzero(v23, v26);
      v53 = &v31[v26];
      *v27 += v26;
LABEL_23:
      v19[1] = 518;
      v19[8] = 0;
      v51 = 0;
      pthread_threadid_np(0, &v51);
      *(v19 + 1) = v51;
      strcpy(v19 + 36, "Ciiii");
      *(v19 + 11) = *v15;
      v19[13] = a2;
      v19[14] = a3;
      v19[15] = a4;
      v19[16] = a5;
      v32 = byte_21B05E;
      if (byte_21B05E)
      {
        breakpoint_break(&__ptr, &stru_1F8.sectname[14], 1, *(v15 + 3404), v15);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v32 & 4))
      {
        v33 = mach_absolute_time();
        (*(*(v15 + 32) + 2008))(a1, a2, a3, a4, a5);
        v34 = mach_absolute_time() - v33;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v35 = __ptr;
          *(__ptr + 2) = v33;
          v35[3] = v34;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v47 = __udivti3();
          v48 = __ptr;
          *(__ptr + 3) = v47;
          v48[2] = __udivti3();
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

      if (*(v15 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v15, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), &__ptr);
      v36 = *(v15 + 3404);
      if (v36 && (gBreakOnError & 1) != 0)
      {
        v45 = 3;
        v46 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v32 & 2) == 0)
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
          v39 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v39 >= 1)
          {
            handle_opengl_thread_conflict(v15);
          }

          goto LABEL_45;
        }

        v45 = 2;
        v46 = 518;
      }

      breakpoint_break(&__ptr, v46, v45, v36, v15);
      goto LABEL_37;
    }

    v49 = (v26 - v30 + 255) & 0xFFFFFF00;
    v50 = v49 + v54;
    v54 += v49;
    if (__ptr)
    {
      v27 = reallocf(__ptr, v50);
      __ptr = v27;
      if (v27)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v27 = malloc_type_malloc(v49 + v29, 0xF962E99uLL);
      __ptr = v27;
      if (v27)
      {
LABEL_63:
        if ((v27 & 3) == 0)
        {
          v31 = v27 + v28;
          v23 = v31;
          goto LABEL_22;
        }

        v19 = v27;
        goto LABEL_68;
      }
    }

LABEL_66:
    dy_abort("failed to allocate fbuf buffer");
LABEL_69:
    __break(1u);
    return;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 2008))(a1, a2, a3, a4, a5);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
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
      goto LABEL_49;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v41 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v41 >= 1)
    {
LABEL_49:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v42 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v42, 0, do_nothing);
      v43 = *(*(v15 + 24) + 2008);

      v43(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  __ptr = 0;
  v53 = 0;
  v54 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v19 = __ptr;
    v18 = v53;
    v20 = v53 - __ptr;
    v21 = v54;
    v22 = v54 - (v53 - __ptr);
    if (v22 <= 0x43)
    {
      v44 = (323 - v22) & 0x100;
      v54 += v44;
      v19 = malloc_type_malloc(v44 + v21, 0xF962E99uLL);
      __ptr = v19;
      if (!v19)
      {
        goto LABEL_66;
      }

      if ((v19 & 3) != 0)
      {
LABEL_68:
        dy_abort("misaligned fbuf buffer: %p, required alignment=%zu", v19, 4uLL);
        goto LABEL_69;
      }

      v18 = v19 + v20;
    }

    *(v18 + 16) = 0;
    *(v18 + 2) = 0u;
    *(v18 + 3) = 0u;
    *v18 = 0u;
    *(v18 + 1) = 0u;
    v23 = v18 + 68;
    v53 = v18 + 68;
    v24 = v18 + 68 - v19;
    *v19 = v24;
    v25 = (v24 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v26 = v25 - v24;
    if (v25 == v24)
    {
      goto LABEL_23;
    }

    v27 = __ptr;
    v28 = v23 - __ptr;
    v29 = v54;
    v30 = v54 - (v23 - __ptr);
    if (v26 <= v30)
    {
      v31 = v53;
LABEL_22:
      bzero(v23, v26);
      v53 = &v31[v26];
      *v27 += v26;
LABEL_23:
      v19[1] = 518;
      v19[8] = 0;
      v51 = 0;
      pthread_threadid_np(0, &v51);
      *(v19 + 1) = v51;
      strcpy(v19 + 36, "Ciiii");
      *(v19 + 11) = *v15;
      v19[13] = a2;
      v19[14] = a3;
      v19[15] = a4;
      v19[16] = a5;
      v32 = byte_21B05E;
      if (byte_21B05E)
      {
        breakpoint_break(&__ptr, &stru_1F8.sectname[14], 1, *(v15 + 3404), v15);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v32 & 4))
      {
        v33 = mach_absolute_time();
        (*(*(v15 + 32) + 2008))(a1, a2, a3, a4, a5);
        v34 = mach_absolute_time() - v33;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v35 = __ptr;
          *(__ptr + 2) = v33;
          v35[3] = v34;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v47 = __udivti3();
          v48 = __ptr;
          *(__ptr + 3) = v47;
          v48[2] = __udivti3();
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

      if (*(v15 + 3404))
      {
        GPUTools::FB::EncodeGLError();
      }

      if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
      {
        encode_driver_events(v15, &__ptr);
      }

      GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), &__ptr);
      v36 = *(v15 + 3404);
      if (v36 && (gBreakOnError & 1) != 0)
      {
        v45 = 3;
        v46 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v32 & 2) == 0)
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
          v39 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
          if (gCheckGLErrors == 1 && v39 >= 1)
          {
            handle_opengl_thread_conflict(v15);
          }

          goto LABEL_45;
        }

        v45 = 2;
        v46 = 518;
      }

      breakpoint_break(&__ptr, v46, v45, v36, v15);
      goto LABEL_37;
    }

    v49 = (v26 - v30 + 255) & 0xFFFFFF00;
    v50 = v49 + v54;
    v54 += v49;
    if (__ptr)
    {
      v27 = reallocf(__ptr, v50);
      __ptr = v27;
      if (v27)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v27 = malloc_type_malloc(v49 + v29, 0xF962E99uLL);
      __ptr = v27;
      if (v27)
      {
LABEL_63:
        if ((v27 & 3) == 0)
        {
          v31 = v27 + v28;
          v23 = v31;
          goto LABEL_22;
        }

        v19 = v27;
        goto LABEL_68;
      }
    }

LABEL_66:
    dy_abort("failed to allocate fbuf buffer");
LABEL_69:
    __break(1u);
    return;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 2008))(a1, a2, a3, a4, a5);
LABEL_45:
  if (__ptr)
  {
    free(__ptr);
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
      v20 = *(*(v15 + 24) + 2008);

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

  (*(*(v15 + 32) + 2008))(a1, a2, a3, a4, a5);
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
      v23 = *(*(v15 + 24) + 2008);

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
  (*(*(v15 + 32) + 2008))(a1, a2, a3, a4, a5);
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