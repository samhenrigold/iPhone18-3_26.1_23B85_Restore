void sub_52220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform4f(__GLIContextRec *a1, uint64_t a2, float a3, float a4, float a5, float a6)
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v17 + 24) + 4840);
      v35.n128_f32[0] = a3;
      v36.n128_f32[0] = a4;
      v37.n128_f32[0] = a5;
      v38.n128_f32[0] = a6;

      v34(a1, a2, v35, v36, v37, v38);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v20 = wrapper_map_uniform_loc(v17, *(v17 + 2068), a2);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v17);
    *(v17 + 4709) = 67;
    v21 = (v17 + 4710);
    if (v20 == -1)
    {
      *v21 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v22 = 1;
    }

    else
    {
      *v21 = 1047084118;
      snprintf((v17 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v17 + 40), *(v17 + 2068), v20);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v17 + 4773));
      v22 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a6);
    strcpy(&v21[v22], "ffff");
    GPUTools::FB::Encode();
    v23 = byte_21B0CB;
    if (byte_21B0CB)
    {
      breakpoint_break(v47, (&stru_248.size + 3), 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v17 + 32) + 4840))(a1, v20, a3, a4, a5, a6);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v47[0];
        *(v47[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v41 = __udivti3();
        v42 = v47[0];
        *(v47[0] + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v17);
    }

LABEL_25:
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
      encode_driver_events(v17, v47);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), v47);
    v27 = *(v17 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v39 = 3;
      v40 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
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
        v30 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_43;
      }

      v39 = 2;
      v40 = 627;
    }

    breakpoint_break(v47, v40, v39, v27, v17);
    goto LABEL_34;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 4840))(a1, a2, a3, a4, a5, a6);
LABEL_43:
  if (v47[0])
  {
    free(v47[0]);
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v17 + 24) + 4840);
      v35.n128_f32[0] = a3;
      v36.n128_f32[0] = a4;
      v37.n128_f32[0] = a5;
      v38.n128_f32[0] = a6;

      v34(a1, a2, v35, v36, v37, v38);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v47[0] = 0;
  v47[1] = 0;
  v48 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v20 = wrapper_map_uniform_loc(v17, *(v17 + 2068), a2);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v43, *v17);
    *(v17 + 4709) = 67;
    v21 = (v17 + 4710);
    if (v20 == -1)
    {
      *v21 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v43, -1);
      v22 = 1;
    }

    else
    {
      *v21 = 1047084118;
      snprintf((v17 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v17 + 40), *(v17 + 2068), v20);
      GPUTools::FB::FIFOArgumentProvider::push(&v43, (v17 + 4773));
      v22 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v43, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a5);
    GPUTools::FB::FIFOArgumentProvider::push(&v43, a6);
    strcpy(&v21[v22], "ffff");
    GPUTools::FB::Encode();
    v23 = byte_21B0CB;
    if (byte_21B0CB)
    {
      breakpoint_break(v47, (&stru_248.size + 3), 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v17 + 32) + 4840))(a1, v20, a3, a4, a5, a6);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v47[0];
        *(v47[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v41 = __udivti3();
        v42 = v47[0];
        *(v47[0] + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v17);
    }

LABEL_25:
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
      encode_driver_events(v17, v47);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), v47);
    v27 = *(v17 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v39 = 3;
      v40 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
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
        v30 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v43);
        goto LABEL_43;
      }

      v39 = 2;
      v40 = 627;
    }

    breakpoint_break(v47, v40, v39, v27, v17);
    goto LABEL_34;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 4840))(a1, a2, a3, a4, a5, a6);
LABEL_43:
  if (v47[0])
  {
    free(v47[0]);
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
      v22 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v22, 0, do_nothing);
LABEL_29:
      v27 = *(*(v17 + 24) + 4840);
      v23.n128_f32[0] = a3;
      v24.n128_f32[0] = a4;
      v25.n128_f32[0] = a5;
      v26.n128_f32[0] = a6;

      v27(a1, a2, v23, v24, v25, v26);
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

  v20 = wrapper_map_uniform_loc(v17, *(v17 + 2068), a2);
  (*(*(v17 + 32) + 4840))(a1, v20, a3, a4, a5, a6);
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
      v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v25, 0, do_nothing);
LABEL_29:
      v30 = *(*(v17 + 24) + 4840);
      v26.n128_f32[0] = a3;
      v27.n128_f32[0] = a4;
      v28.n128_f32[0] = a5;
      v29.n128_f32[0] = a6;

      v30(a1, a2, v26, v27, v28, v29);
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

  v20 = wrapper_map_uniform_loc(v17, *(v17 + 2068), a2);
  v21 = mach_absolute_time();
  (*(*(v17 + 32) + 4840))(a1, v20, a3, a4, a5, a6);
  v22 = mach_absolute_time();
  v23 = vdupq_n_s64(1uLL);
  v23.i64[0] = v22 - v21;
  *(v17 + 3696) = vaddq_s64(v23, *(v17 + 3696));
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

void sub_527A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform1i(__GLIContextRec *a1, uint64_t a2, uint64_t a3)
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v11);
    v26 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v26 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v27 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v27, 0, do_nothing);
      v28 = *(*(v11 + 24) + 4848);

      v28(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v14 = wrapper_map_uniform_loc(v11, *(v11 + 2068), a2);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v33, *v11);
    *(v11 + 4709) = 67;
    v15 = (v11 + 4710);
    if (v14 == -1)
    {
      *v15 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v33, -1);
      v16 = 1;
    }

    else
    {
      *v15 = 1047084118;
      snprintf((v11 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v11 + 40), *(v11 + 2068), v14);
      GPUTools::FB::FIFOArgumentProvider::push(&v33, (v11 + 4773));
      v16 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v33, a3);
    *&v15[v16] = 105;
    GPUTools::FB::Encode();
    v17 = byte_21B0BB;
    if (byte_21B0BB)
    {
      breakpoint_break(v37, &stru_248.segname[11], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v17 & 4))
    {
      v18 = mach_absolute_time();
      (*(*(v11 + 32) + 4848))(a1, v14, a3);
      v19 = mach_absolute_time() - v18;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v20 = v37[0];
        *(v37[0] + 2) = v18;
        v20[3] = v19;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v31 = __udivti3();
        v32 = v37[0];
        *(v37[0] + 3) = v31;
        v32[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v11);
    }

LABEL_25:
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
      encode_driver_events(v11, v37);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v37);
    v21 = *(v11 + 3404);
    if (v21 && (gBreakOnError & 1) != 0)
    {
      v29 = 3;
      v30 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v17 & 2) == 0)
      {
LABEL_34:
        v22 = [DYGetGLGuestAppClient() defaultFbufStream];
        v23 = v22;
        while (atomic_exchange(v22 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v23 + 14);
        v24 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v24 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v33);
        goto LABEL_43;
      }

      v29 = 2;
      v30 = 611;
    }

    breakpoint_break(v37, v30, v29, v21, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 4848))(a1, a2, a3);
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
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
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
    v26 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v26 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v27 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v27, 0, do_nothing);
      v28 = *(*(v11 + 24) + 4848);

      v28(a1, a2, a3);
      return;
    }
  }

  *(v11 + 4838) = 1;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v14 = wrapper_map_uniform_loc(v11, *(v11 + 2068), a2);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v33, *v11);
    *(v11 + 4709) = 67;
    v15 = (v11 + 4710);
    if (v14 == -1)
    {
      *v15 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v33, -1);
      v16 = 1;
    }

    else
    {
      *v15 = 1047084118;
      snprintf((v11 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v11 + 40), *(v11 + 2068), v14);
      GPUTools::FB::FIFOArgumentProvider::push(&v33, (v11 + 4773));
      v16 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v33, a3);
    *&v15[v16] = 105;
    GPUTools::FB::Encode();
    v17 = byte_21B0BB;
    if (byte_21B0BB)
    {
      breakpoint_break(v37, &stru_248.segname[11], 1, *(v11 + 3404), v11);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v17 & 4))
    {
      v18 = mach_absolute_time();
      (*(*(v11 + 32) + 4848))(a1, v14, a3);
      v19 = mach_absolute_time() - v18;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v20 = v37[0];
        *(v37[0] + 2) = v18;
        v20[3] = v19;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v31 = __udivti3();
        v32 = v37[0];
        *(v37[0] + 3) = v31;
        v32[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v11);
    }

LABEL_25:
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
      encode_driver_events(v11, v37);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v11 + 3480), (v11 + 3520), v37);
    v21 = *(v11 + 3404);
    if (v21 && (gBreakOnError & 1) != 0)
    {
      v29 = 3;
      v30 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v17 & 2) == 0)
      {
LABEL_34:
        v22 = [DYGetGLGuestAppClient() defaultFbufStream];
        v23 = v22;
        while (atomic_exchange(v22 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v23 + 14);
        v24 = atomic_fetch_add((v11 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v24 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v33);
        goto LABEL_43;
      }

      v29 = 2;
      v30 = 611;
    }

    breakpoint_break(v37, v30, v29, v21, v11);
    goto LABEL_34;
  }

  atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v11 + 24) + 4848))(a1, a2, a3);
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
  v12 = atomic_fetch_add((v11 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v12 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v11 + 4640), 0xFFFFFFFF);
      v16 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v16, 0, do_nothing);
LABEL_29:
      v17 = *(*(v11 + 24) + 4848);

      v17(a1, a2, a3);
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

  v14 = wrapper_map_uniform_loc(v11, *(v11 + 2068), a2);
  (*(*(v11 + 32) + 4848))(a1, v14, a3);
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
      v19 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v19, 0, do_nothing);
LABEL_29:
      v20 = *(*(v11 + 24) + 4848);

      v20(a1, a2, a3);
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

  v14 = wrapper_map_uniform_loc(v11, *(v11 + 2068), a2);
  v15 = mach_absolute_time();
  (*(*(v11 + 32) + 4848))(a1, v14, a3);
  v16 = mach_absolute_time();
  v17 = vdupq_n_s64(1uLL);
  v17.i64[0] = v16 - v15;
  *(v11 + 3696) = vaddq_s64(v17, *(v11 + 3696));
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

void sub_52CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform2i(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v28 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v28 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v29 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v29, 0, do_nothing);
      v30 = *(*(v13 + 24) + 4856);

      v30(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v35, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v35, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v35, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v35, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v35, a4);
    strcpy(&v17[v18], "ii");
    GPUTools::FB::Encode();
    v19 = byte_21B0C1;
    if (byte_21B0C1)
    {
      breakpoint_break(v39, (&stru_248.addr + 1), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v20 = mach_absolute_time();
      (*(*(v13 + 32) + 4856))(a1, v16, a3, a4);
      v21 = mach_absolute_time() - v20;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v22 = v39[0];
        *(v39[0] + 2) = v20;
        v22[3] = v21;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v33 = __udivti3();
        v34 = v39[0];
        *(v39[0] + 3) = v33;
        v34[2] = __udivti3();
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

    if (*(v13 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v13, v39);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v39);
    v23 = *(v13 + 3404);
    if (v23 && (gBreakOnError & 1) != 0)
    {
      v31 = 3;
      v32 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v19 & 2) == 0)
      {
LABEL_34:
        v24 = [DYGetGLGuestAppClient() defaultFbufStream];
        v25 = v24;
        while (atomic_exchange(v24 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v25 + 14);
        v26 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v26 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v35);
        goto LABEL_43;
      }

      v31 = 2;
      v32 = 617;
    }

    breakpoint_break(v39, v32, v31, v23, v13);
    goto LABEL_34;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4856))(a1, a2, a3, a4);
LABEL_43:
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
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v28 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v28 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v29 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v29, 0, do_nothing);
      v30 = *(*(v13 + 24) + 4856);

      v30(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v35, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v35, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v35, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v35, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v35, a4);
    strcpy(&v17[v18], "ii");
    GPUTools::FB::Encode();
    v19 = byte_21B0C1;
    if (byte_21B0C1)
    {
      breakpoint_break(v39, (&stru_248.addr + 1), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4))
    {
      v20 = mach_absolute_time();
      (*(*(v13 + 32) + 4856))(a1, v16, a3, a4);
      v21 = mach_absolute_time() - v20;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v22 = v39[0];
        *(v39[0] + 2) = v20;
        v22[3] = v21;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v33 = __udivti3();
        v34 = v39[0];
        *(v39[0] + 3) = v33;
        v34[2] = __udivti3();
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

    if (*(v13 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v13, v39);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v39);
    v23 = *(v13 + 3404);
    if (v23 && (gBreakOnError & 1) != 0)
    {
      v31 = 3;
      v32 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v19 & 2) == 0)
      {
LABEL_34:
        v24 = [DYGetGLGuestAppClient() defaultFbufStream];
        v25 = v24;
        while (atomic_exchange(v24 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v25 + 14);
        v26 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v26 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v35);
        goto LABEL_43;
      }

      v31 = 2;
      v32 = 617;
    }

    breakpoint_break(v39, v32, v31, v23, v13);
    goto LABEL_34;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4856))(a1, a2, a3, a4);
LABEL_43:
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
  v14 = atomic_fetch_add((v13 + 4640), 1u) + 1;
  if (gCheckGLErrors != 1 || v14 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
LABEL_24:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v18 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v18, 0, do_nothing);
LABEL_29:
      v19 = *(*(v13 + 24) + 4856);

      v19(a1, a2, a3, a4);
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

  v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
  (*(*(v13 + 32) + 4856))(a1, v16, a3, a4);
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
      v21 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v21, 0, do_nothing);
LABEL_29:
      v22 = *(*(v13 + 24) + 4856);

      v22(a1, a2, a3, a4);
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

  v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
  v17 = mach_absolute_time();
  (*(*(v13 + 32) + 4856))(a1, v16, a3, a4);
  v18 = mach_absolute_time();
  v19 = vdupq_n_s64(1uLL);
  v19.i64[0] = v18 - v17;
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
}

void sub_53200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform3i(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v30 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v30 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v31 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v31, 0, do_nothing);
      v32 = *(*(v15 + 24) + 4864);

      v32(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v37, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v37, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v37, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v37, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v37, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v37, a5);
    *&v19[v20] = 6908265;
    GPUTools::FB::Encode();
    v21 = byte_21B0C7;
    if (byte_21B0C7)
    {
      breakpoint_break(v41, (&stru_248.addr + 7), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(*(v15 + 32) + 4864))(a1, v18, a3, a4, a5);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v41[0];
        *(v41[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v35 = __udivti3();
        v36 = v41[0];
        *(v41[0] + 3) = v35;
        v36[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v15);
    }

LABEL_25:
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
      encode_driver_events(v15, v41);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v41);
    v25 = *(v15 + 3404);
    if (v25 && (gBreakOnError & 1) != 0)
    {
      v33 = 3;
      v34 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v21 & 2) == 0)
      {
LABEL_34:
        v26 = [DYGetGLGuestAppClient() defaultFbufStream];
        v27 = v26;
        while (atomic_exchange(v26 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v27 + 14);
        v28 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v28 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v37);
        goto LABEL_43;
      }

      v33 = 2;
      v34 = 623;
    }

    breakpoint_break(v41, v34, v33, v25, v15);
    goto LABEL_34;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 4864))(a1, a2, a3, a4, a5);
LABEL_43:
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v30 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v30 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v31 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v31, 0, do_nothing);
      v32 = *(*(v15 + 24) + 4864);

      v32(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v37, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v37, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v37, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v37, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v37, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v37, a5);
    *&v19[v20] = 6908265;
    GPUTools::FB::Encode();
    v21 = byte_21B0C7;
    if (byte_21B0C7)
    {
      breakpoint_break(v41, (&stru_248.addr + 7), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v21 & 4))
    {
      v22 = mach_absolute_time();
      (*(*(v15 + 32) + 4864))(a1, v18, a3, a4, a5);
      v23 = mach_absolute_time() - v22;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v24 = v41[0];
        *(v41[0] + 2) = v22;
        v24[3] = v23;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v35 = __udivti3();
        v36 = v41[0];
        *(v41[0] + 3) = v35;
        v36[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v15);
    }

LABEL_25:
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
      encode_driver_events(v15, v41);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v41);
    v25 = *(v15 + 3404);
    if (v25 && (gBreakOnError & 1) != 0)
    {
      v33 = 3;
      v34 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v21 & 2) == 0)
      {
LABEL_34:
        v26 = [DYGetGLGuestAppClient() defaultFbufStream];
        v27 = v26;
        while (atomic_exchange(v26 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v27 + 14);
        v28 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v28 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v37);
        goto LABEL_43;
      }

      v33 = 2;
      v34 = 623;
    }

    breakpoint_break(v41, v34, v33, v25, v15);
    goto LABEL_34;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 4864))(a1, a2, a3, a4, a5);
LABEL_43:
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
LABEL_24:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v20 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v20, 0, do_nothing);
LABEL_29:
      v21 = *(*(v15 + 24) + 4864);

      v21(a1, a2, a3, a4, a5);
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

  v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
  (*(*(v15 + 32) + 4864))(a1, v18, a3, a4, a5);
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
      v23 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v23, 0, do_nothing);
LABEL_29:
      v24 = *(*(v15 + 24) + 4864);

      v24(a1, a2, a3, a4, a5);
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

  v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
  v19 = mach_absolute_time();
  (*(*(v15 + 32) + 4864))(a1, v18, a3, a4, a5);
  v20 = mach_absolute_time();
  v21 = vdupq_n_s64(1uLL);
  v21.i64[0] = v20 - v19;
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
}

void sub_5375C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform4i(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v17 + 24) + 4872);

      v34(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v20 = wrapper_map_uniform_loc(v17, *(v17 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v17);
    *(v17 + 4709) = 67;
    v21 = (v17 + 4710);
    if (v20 == -1)
    {
      *v21 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v22 = 1;
    }

    else
    {
      *v21 = 1047084118;
      snprintf((v17 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v17 + 40), *(v17 + 2068), v20);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v17 + 4773));
      v22 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v39, a5);
    GPUTools::FB::FIFOArgumentProvider::push(&v39, a6);
    strcpy(&v21[v22], "iiii");
    GPUTools::FB::Encode();
    v23 = byte_21B0CD;
    if (byte_21B0CD)
    {
      breakpoint_break(v43, (&stru_248.size + 5), 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v17 + 32) + 4872))(a1, v20, a3, a4, a5, a6);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v17);
    }

LABEL_25:
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
      encode_driver_events(v17, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), v43);
    v27 = *(v17 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
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
        v30 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_43;
      }

      v35 = 2;
      v36 = 629;
    }

    breakpoint_break(v43, v36, v35, v27, v17);
    goto LABEL_34;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 4872))(a1, a2, a3, a4, a5, a6);
LABEL_43:
  if (v43[0])
  {
    free(v43[0]);
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
      goto LABEL_47;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v17);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_47:
      atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v17 + 24) + 4872);

      v34(a1, a2, a3, a4, a5, a6);
      return;
    }
  }

  *(v17 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v20 = wrapper_map_uniform_loc(v17, *(v17 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v17);
    *(v17 + 4709) = 67;
    v21 = (v17 + 4710);
    if (v20 == -1)
    {
      *v21 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v22 = 1;
    }

    else
    {
      *v21 = 1047084118;
      snprintf((v17 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v17 + 40), *(v17 + 2068), v20);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v17 + 4773));
      v22 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
    GPUTools::FB::FIFOArgumentProvider::push(&v39, a5);
    GPUTools::FB::FIFOArgumentProvider::push(&v39, a6);
    strcpy(&v21[v22], "iiii");
    GPUTools::FB::Encode();
    v23 = byte_21B0CD;
    if (byte_21B0CD)
    {
      breakpoint_break(v43, (&stru_248.size + 5), 1, *(v17 + 3404), v17);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v17 + 32) + 4872))(a1, v20, a3, a4, a5, a6);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_25;
        }
      }

      check_errors(v17);
    }

LABEL_25:
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
      encode_driver_events(v17, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v17 + 3480), (v17 + 3520), v43);
    v27 = *(v17 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
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
        v30 = atomic_fetch_add((v17 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v17);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_43;
      }

      v35 = 2;
      v36 = 629;
    }

    breakpoint_break(v43, v36, v35, v27, v17);
    goto LABEL_34;
  }

  atomic_fetch_add((v17 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v17 + 24) + 4872))(a1, a2, a3, a4, a5, a6);
LABEL_43:
  if (v43[0])
  {
    free(v43[0]);
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
      v22 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v22, 0, do_nothing);
LABEL_29:
      v23 = *(*(v17 + 24) + 4872);

      v23(a1, a2, a3, a4, a5, a6);
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

  v20 = wrapper_map_uniform_loc(v17, *(v17 + 2068), a2);
  (*(*(v17 + 32) + 4872))(a1, v20, a3, a4, a5, a6);
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
      v25 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v25, 0, do_nothing);
LABEL_29:
      v26 = *(*(v17 + 24) + 4872);

      v26(a1, a2, a3, a4, a5, a6);
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

  v20 = wrapper_map_uniform_loc(v17, *(v17 + 2068), a2);
  v21 = mach_absolute_time();
  (*(*(v17 + 32) + 4872))(a1, v20, a3, a4, a5, a6);
  v22 = mach_absolute_time();
  v23 = vdupq_n_s64(1uLL);
  v23.i64[0] = v22 - v21;
  *(v17 + 3696) = vaddq_s64(v23, *(v17 + 3696));
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

void sub_53CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform1fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float *a4)
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v13 + 24) + 4880);

      v34(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((4 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%df", a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = v22;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4644));
      *v20 = 1046887509;
      v21 = 4;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0BA;
    if (byte_21B0BA)
    {
      breakpoint_break(v43, &stru_248.segname[10], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 4880))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
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
      encode_driver_events(v13, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v43);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_46;
      }

      v35 = 2;
      v36 = 610;
    }

    breakpoint_break(v43, v36, v35, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4880))(a1, a2, a3, a4);
LABEL_46:
  if (v43[0])
  {
    free(v43[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v13 + 24) + 4880);

      v34(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((4 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%df", a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = v22;
    }

    else
    {
      *v20 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = 1;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0BA;
    if (byte_21B0BA)
    {
      breakpoint_break(v43, &stru_248.segname[10], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 4880))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
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
      encode_driver_events(v13, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v43);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_46;
      }

      v35 = 2;
      v36 = 610;
    }

    breakpoint_break(v43, v36, v35, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4880))(a1, a2, a3, a4);
LABEL_46:
  if (v43[0])
  {
    free(v43[0]);
  }
}

void sub_542B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform2fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float *a4)
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v13 + 24) + 4888);

      v34(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((8 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%df", 2 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = v22;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4644));
      *v20 = 1046887509;
      v21 = 4;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0C0;
    if (byte_21B0C0)
    {
      breakpoint_break(v43, &stru_248.addr, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 4888))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
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
      encode_driver_events(v13, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v43);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_46;
      }

      v35 = 2;
      v36 = 616;
    }

    breakpoint_break(v43, v36, v35, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4888))(a1, a2, a3, a4);
LABEL_46:
  if (v43[0])
  {
    free(v43[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v13 + 24) + 4888);

      v34(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((8 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%df", 2 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = v22;
    }

    else
    {
      *v20 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = 1;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0C0;
    if (byte_21B0C0)
    {
      breakpoint_break(v43, &stru_248.addr, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 4888))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
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
      encode_driver_events(v13, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v43);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_46;
      }

      v35 = 2;
      v36 = 616;
    }

    breakpoint_break(v43, v36, v35, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4888))(a1, a2, a3, a4);
LABEL_46:
  if (v43[0])
  {
    free(v43[0]);
  }
}

void sub_54880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform3fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float *a4)
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v13 + 24) + 4896);

      v34(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((12 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%df", 3 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = v22;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4644));
      *v20 = 1046887509;
      v21 = 4;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0C6;
    if (byte_21B0C6)
    {
      breakpoint_break(v43, (&stru_248.addr + 6), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 4896))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
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
      encode_driver_events(v13, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v43);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_46;
      }

      v35 = 2;
      v36 = 622;
    }

    breakpoint_break(v43, v36, v35, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4896))(a1, a2, a3, a4);
LABEL_46:
  if (v43[0])
  {
    free(v43[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v13 + 24) + 4896);

      v34(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((12 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%df", 3 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = v22;
    }

    else
    {
      *v20 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = 1;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0C6;
    if (byte_21B0C6)
    {
      breakpoint_break(v43, (&stru_248.addr + 6), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 4896))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
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
      encode_driver_events(v13, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v43);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_46;
      }

      v35 = 2;
      v36 = 622;
    }

    breakpoint_break(v43, v36, v35, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4896))(a1, a2, a3, a4);
LABEL_46:
  if (v43[0])
  {
    free(v43[0]);
  }
}

void sub_54E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform4fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, float *a4)
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v13 + 24) + 4904);

      v34(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((16 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%df", 4 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = v22;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4644));
      *v20 = 1046887509;
      v21 = 4;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0CC;
    if (byte_21B0CC)
    {
      breakpoint_break(v43, &stru_248.size + 1, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 4904))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
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
      encode_driver_events(v13, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v43);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_46;
      }

      v35 = 2;
      v36 = 628;
    }

    breakpoint_break(v43, v36, v35, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4904))(a1, a2, a3, a4);
LABEL_46:
  if (v43[0])
  {
    free(v43[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v13 + 24) + 4904);

      v34(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((16 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%df", 4 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = v22;
    }

    else
    {
      *v20 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = 1;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0CC;
    if (byte_21B0CC)
    {
      breakpoint_break(v43, &stru_248.size + 1, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 4904))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
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
      encode_driver_events(v13, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v43);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_46;
      }

      v35 = 2;
      v36 = 628;
    }

    breakpoint_break(v43, v36, v35, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4904))(a1, a2, a3, a4);
LABEL_46:
  if (v43[0])
  {
    free(v43[0]);
  }
}

void sub_55410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform1iv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v13 + 24) + 4912);

      v34(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((4 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%di", a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = v22;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4644));
      *v20 = 1047084117;
      v21 = 4;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0BC;
    if (byte_21B0BC)
    {
      breakpoint_break(v43, &stru_248.segname[12], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 4912))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
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
      encode_driver_events(v13, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v43);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_46;
      }

      v35 = 2;
      v36 = 612;
    }

    breakpoint_break(v43, v36, v35, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4912))(a1, a2, a3, a4);
LABEL_46:
  if (v43[0])
  {
    free(v43[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v13 + 24) + 4912);

      v34(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((4 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%di", a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = v22;
    }

    else
    {
      *v20 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = 1;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0BC;
    if (byte_21B0BC)
    {
      breakpoint_break(v43, &stru_248.segname[12], 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 4912))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
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
      encode_driver_events(v13, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v43);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_46;
      }

      v35 = 2;
      v36 = 612;
    }

    breakpoint_break(v43, v36, v35, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4912))(a1, a2, a3, a4);
LABEL_46:
  if (v43[0])
  {
    free(v43[0]);
  }
}

void sub_559D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform2iv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v13 + 24) + 4920);

      v34(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((8 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%di", 2 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = v22;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4644));
      *v20 = 1047084117;
      v21 = 4;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0C2;
    if (byte_21B0C2)
    {
      breakpoint_break(v43, (&stru_248.addr + 2), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 4920))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
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
      encode_driver_events(v13, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v43);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_46;
      }

      v35 = 2;
      v36 = 618;
    }

    breakpoint_break(v43, v36, v35, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4920))(a1, a2, a3, a4);
LABEL_46:
  if (v43[0])
  {
    free(v43[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v13 + 24) + 4920);

      v34(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((8 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%di", 2 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = v22;
    }

    else
    {
      *v20 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = 1;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0C2;
    if (byte_21B0C2)
    {
      breakpoint_break(v43, (&stru_248.addr + 2), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 4920))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
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
      encode_driver_events(v13, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v43);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_46;
      }

      v35 = 2;
      v36 = 618;
    }

    breakpoint_break(v43, v36, v35, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4920))(a1, a2, a3, a4);
LABEL_46:
  if (v43[0])
  {
    free(v43[0]);
  }
}

void sub_55F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform3iv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v13 + 24) + 4928);

      v34(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((12 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%di", 3 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = v22;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4644));
      *v20 = 1047084117;
      v21 = 4;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0C8;
    if (byte_21B0C8)
    {
      breakpoint_break(v43, &stru_248.size, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 4928))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
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
      encode_driver_events(v13, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v43);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_46;
      }

      v35 = 2;
      v36 = 624;
    }

    breakpoint_break(v43, v36, v35, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4928))(a1, a2, a3, a4);
LABEL_46:
  if (v43[0])
  {
    free(v43[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v13 + 24) + 4928);

      v34(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((12 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%di", 3 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = v22;
    }

    else
    {
      *v20 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = 1;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0C8;
    if (byte_21B0C8)
    {
      breakpoint_break(v43, &stru_248.size, 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 4928))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
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
      encode_driver_events(v13, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v43);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_46;
      }

      v35 = 2;
      v36 = 624;
    }

    breakpoint_break(v43, v36, v35, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4928))(a1, a2, a3, a4);
LABEL_46:
  if (v43[0])
  {
    free(v43[0]);
  }
}

void sub_56564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform4iv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, int *a4)
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v13 + 24) + 4936);

      v34(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((16 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%di", 4 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = v22;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4644));
      *v20 = 1047084117;
      v21 = 4;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0CE;
    if (byte_21B0CE)
    {
      breakpoint_break(v43, (&stru_248.size + 6), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 4936))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
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
      encode_driver_events(v13, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v43);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_46;
      }

      v35 = 2;
      v36 = 630;
    }

    breakpoint_break(v43, v36, v35, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4936))(a1, a2, a3, a4);
LABEL_46:
  if (v43[0])
  {
    free(v43[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v13);
    v32 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v32 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
      v33 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v33, 0, do_nothing);
      v34 = *(*(v13 + 24) + 4936);

      v34(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v16 = wrapper_map_uniform_loc(v13, *(v13 + 2068), a2);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v39, *v13);
    *(v13 + 4709) = 67;
    v17 = (v13 + 4710);
    if (v16 == -1)
    {
      *v17 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, -1);
      v18 = 1;
    }

    else
    {
      *v17 = 1047084118;
      snprintf((v13 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v13 + 40), *(v13 + 2068), v16);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, (v13 + 4773));
      v18 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v39, a3);
    v19 = &v17[v18];
    *v19 = 105;
    v20 = v19 + 1;
    if ((16 * a3) < 0x41)
    {
      v22 = snprintf(v20, v13 + 4709 - v20 + 64, "@%di", 4 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = v22;
    }

    else
    {
      *v20 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v39, a4);
      v21 = 1;
    }

    v20[v21] = 0;
    GPUTools::FB::Encode();
    v23 = byte_21B0CE;
    if (byte_21B0CE)
    {
      breakpoint_break(v43, (&stru_248.size + 6), 1, *(v13 + 3404), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v23 & 4))
    {
      v24 = mach_absolute_time();
      (*(*(v13 + 32) + 4936))(a1, v16, a3, a4);
      v25 = mach_absolute_time() - v24;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v26 = v43[0];
        *(v43[0] + 2) = v24;
        v26[3] = v25;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v37 = __udivti3();
        v38 = v43[0];
        *(v43[0] + 3) = v37;
        v38[2] = __udivti3();
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
      encode_driver_events(v13, v43);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v13 + 3480), (v13 + 3520), v43);
    v27 = *(v13 + 3404);
    if (v27 && (gBreakOnError & 1) != 0)
    {
      v35 = 3;
      v36 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v23 & 2) == 0)
      {
LABEL_37:
        v28 = [DYGetGLGuestAppClient() defaultFbufStream];
        v29 = v28;
        while (atomic_exchange(v28 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v29 + 14);
        v30 = atomic_fetch_add((v13 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v30 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v39);
        goto LABEL_46;
      }

      v35 = 2;
      v36 = 630;
    }

    breakpoint_break(v43, v36, v35, v27, v13);
    goto LABEL_37;
  }

  atomic_fetch_add((v13 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 24) + 4936))(a1, a2, a3, a4);
LABEL_46:
  if (v43[0])
  {
    free(v43[0]);
  }
}

void sub_56B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform_matrix2fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5)
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v15 + 24) + 4944);

      v36(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v41, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v41, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
    v21 = &v19[v20];
    *v21 = 30057;
    v21[2] = 98;
    v22 = &v19[v20 + 3];
    if ((16 * a3) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 4 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, a5);
      v23 = v24;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v15 + 4644));
      *v22 = 1046887509;
      v23 = 4;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B0D2;
    if (byte_21B0D2)
    {
      breakpoint_break(v45, (&stru_248.offset + 2), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 4944))(a1, v18, a3, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v45[0];
        *(v45[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v39 = __udivti3();
        v40 = v45[0];
        *(v45[0] + 3) = v39;
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

    if (*(v15 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v15, v45);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v45);
    v29 = *(v15 + 3404);
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
        v32 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v41);
        goto LABEL_46;
      }

      v37 = 2;
      v38 = 634;
    }

    breakpoint_break(v45, v38, v37, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 4944))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v45[0])
  {
    free(v45[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v15 + 24) + 4944);

      v36(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v41, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v41, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
    v21 = &v19[v20];
    *v21 = 30057;
    v21[2] = 98;
    v22 = &v19[v20 + 3];
    if ((16 * a3) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 4 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, a5);
      v23 = v24;
    }

    else
    {
      *v22 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, a5);
      v23 = 1;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B0D2;
    if (byte_21B0D2)
    {
      breakpoint_break(v45, (&stru_248.offset + 2), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 4944))(a1, v18, a3, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v45[0];
        *(v45[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v39 = __udivti3();
        v40 = v45[0];
        *(v45[0] + 3) = v39;
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

    if (*(v15 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v15, v45);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v45);
    v29 = *(v15 + 3404);
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
        v32 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v41);
        goto LABEL_46;
      }

      v37 = 2;
      v38 = 634;
    }

    breakpoint_break(v45, v38, v37, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 4944))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v45[0])
  {
    free(v45[0]);
  }
}

void sub_57134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform_matrix3fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5)
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v15 + 24) + 4952);

      v36(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v41, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v41, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
    v21 = &v19[v20];
    *v21 = 30057;
    v21[2] = 98;
    v22 = &v19[v20 + 3];
    if ((36 * a3) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 9 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, a5);
      v23 = v24;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v15 + 4644));
      *v22 = 1046887509;
      v23 = 4;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B0D5;
    if (byte_21B0D5)
    {
      breakpoint_break(v45, (&stru_248.align + 1), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 4952))(a1, v18, a3, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v45[0];
        *(v45[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v39 = __udivti3();
        v40 = v45[0];
        *(v45[0] + 3) = v39;
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

    if (*(v15 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v15, v45);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v45);
    v29 = *(v15 + 3404);
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
        v32 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v41);
        goto LABEL_46;
      }

      v37 = 2;
      v38 = 637;
    }

    breakpoint_break(v45, v38, v37, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 4952))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v45[0])
  {
    free(v45[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v15 + 24) + 4952);

      v36(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v41, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v41, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
    v21 = &v19[v20];
    *v21 = 30057;
    v21[2] = 98;
    v22 = &v19[v20 + 3];
    if ((36 * a3) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 9 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, a5);
      v23 = v24;
    }

    else
    {
      *v22 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, a5);
      v23 = 1;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B0D5;
    if (byte_21B0D5)
    {
      breakpoint_break(v45, (&stru_248.align + 1), 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 4952))(a1, v18, a3, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v45[0];
        *(v45[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v39 = __udivti3();
        v40 = v45[0];
        *(v45[0] + 3) = v39;
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

    if (*(v15 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v15, v45);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v45);
    v29 = *(v15 + 3404);
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
        v32 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v41);
        goto LABEL_46;
      }

      v37 = 2;
      v38 = 637;
    }

    breakpoint_break(v45, v38, v37, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 4952))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v45[0])
  {
    free(v45[0]);
  }
}

void sub_5773C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

void uniform_matrix4fv(__GLIContextRec *a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5)
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v15 + 24) + 4960);

      v36(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v41, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v41, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
    v21 = &v19[v20];
    *v21 = 30057;
    v21[2] = 98;
    v22 = &v19[v20 + 3];
    if ((64 * a3) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 16 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, a5);
      v23 = v24;
    }

    else
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v15 + 4644));
      *v22 = 1046887509;
      v23 = 4;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B0D8;
    if (byte_21B0D8)
    {
      breakpoint_break(v45, &stru_248.reloff, 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 4960))(a1, v18, a3, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v45[0];
        *(v45[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v39 = __udivti3();
        v40 = v45[0];
        *(v45[0] + 3) = v39;
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

    if (*(v15 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v15, v45);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v45);
    v29 = *(v15 + 3404);
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
        v32 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v41);
        goto LABEL_46;
      }

      v37 = 2;
      v38 = 640;
    }

    breakpoint_break(v45, v38, v37, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 4960))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v45[0])
  {
    free(v45[0]);
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
      goto LABEL_50;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v34 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v34 >= 1)
    {
LABEL_50:
      atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
      v35 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v35, 0, do_nothing);
      v36 = *(*(v15 + 24) + 4960);

      v36(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v18 = wrapper_map_uniform_loc(v15, *(v15 + 2068), a2);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    GPUTools::FB::FIFOArgumentProvider::push(&v41, *v15);
    *(v15 + 4709) = 67;
    v19 = (v15 + 4710);
    if (v18 == -1)
    {
      *v19 = 105;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, -1);
      v20 = 1;
    }

    else
    {
      *v19 = 1047084118;
      snprintf((v15 + 4773), 0x40uLL, "u_%016lx_%u_%u", **(v15 + 40), *(v15 + 2068), v18);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, (v15 + 4773));
      v20 = 4;
    }

    GPUTools::FB::FIFOArgumentProvider::push(&v41, a3);
    GPUTools::FB::FIFOArgumentProvider::push(&v41, a4);
    v21 = &v19[v20];
    *v21 = 30057;
    v21[2] = 98;
    v22 = &v19[v20 + 3];
    if ((64 * a3) < 0x41)
    {
      v24 = snprintf(v22, v15 + 4709 - v22 + 64, "@%df", 16 * a3);
      GPUTools::FB::FIFOArgumentProvider::push(&v41, a5);
      v23 = v24;
    }

    else
    {
      *v22 = 112;
      GPUTools::FB::FIFOArgumentProvider::push(&v41, a5);
      v23 = 1;
    }

    v22[v23] = 0;
    GPUTools::FB::Encode();
    v25 = byte_21B0D8;
    if (byte_21B0D8)
    {
      breakpoint_break(v45, &stru_248.reloff, 1, *(v15 + 3404), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(*(v15 + 32) + 4960))(a1, v18, a3, a4, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v45[0];
        *(v45[0] + 2) = v26;
        v28[3] = v27;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v39 = __udivti3();
        v40 = v45[0];
        *(v45[0] + 3) = v39;
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

    if (*(v15 + 3404))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v15, v45);
    }

    GPUTools::FB::EncodeThreadQueueInfo((v15 + 3480), (v15 + 3520), v45);
    v29 = *(v15 + 3404);
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
        v32 = atomic_fetch_add((v15 + 4640), 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v32 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&v41);
        goto LABEL_46;
      }

      v37 = 2;
      v38 = 640;
    }

    breakpoint_break(v45, v38, v37, v29, v15);
    goto LABEL_37;
  }

  atomic_fetch_add((v15 + 4640), 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 24) + 4960))(a1, a2, a3, a4, a5);
LABEL_46:
  if (v45[0])
  {
    free(v45[0]);
  }
}

void sub_57D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  atomic_store(0, (v20 + 56));
  GPUTools::FB::FIFOArgumentProvider::~FIFOArgumentProvider(&a13);
  if (a20)
  {
    free(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t get_uniform_location_ARB(__GLIContextRec *a1, void *a2, const char *a3)
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
    v41 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v41 >= 1)
    {
LABEL_46:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v42 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v42, 0, do_nothing);
      v43 = *(*(v11 + 3) + 5000);

      return v43(a1, a2, a3);
    }
  }

  *(v11 + 4838) = 1;
  v48[0] = 0;
  v48[1] = 0;
  v49 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v48, 299, "CulcS", v14, v15, v16, v17, v18, *v11, a2, a3);
    v19 = byte_21AF83;
    if (byte_21AF83)
    {
      breakpoint_break(v48, (&stru_108.addr + 3), 1, v11[851], v11);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4)
    {
      goto LABEL_49;
    }

    v25 = mach_absolute_time();
    v26 = (*(*(v11 + 4) + 5000))(a1, a2, a3);
    v27 = mach_absolute_time() - v25;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v28 = v48[0];
      *(v48[0] + 2) = v25;
      v28[3] = v27;
      if (gCheckGLErrors != 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v46 = __udivti3();
      v47 = v48[0];
      *(v48[0] + 3) = v46;
      v47[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_23;
      }
    }

    check_errors(v11);
LABEL_23:
    if (v26 != -1)
    {
      snprintf(__str, 0x28uLL, "u_%016lx_%u_%u", **(v11 + 5), a2, v26);
      GPUTools::FB::Encode(v48, 4294955008, "V<i>", v29, v30, v31, v32, v33, __str);
      v34 = v26;
      goto LABEL_25;
    }

LABEL_49:
    v34 = 0xFFFFFFFFLL;
    GPUTools::FB::Encode(v48, 4294955008, "i", v20, v21, v22, v23, v24, 0xFFFFFFFFLL);
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
      encode_driver_events(v11, v48);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, v48);
    v35 = v11[851];
    if (v35 && (gBreakOnError & 1) != 0)
    {
      v44 = 3;
      v45 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v19 & 2) == 0)
      {
LABEL_34:
        v36 = [DYGetGLGuestAppClient() defaultFbufStream];
        v37 = v36;
        while (atomic_exchange(v36 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v37 + 14);
        v38 = atomic_fetch_add(v11 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v38 >= 1)
        {
          handle_opengl_thread_conflict(v11);
        }

        goto LABEL_42;
      }

      v44 = 2;
      v45 = 299;
    }

    breakpoint_break(v48, v45, v44, v35, v11);
    goto LABEL_34;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v34 = (*(*(v11 + 3) + 5000))(a1, a2, a3);
LABEL_42:
  if (v48[0])
  {
    free(v48[0]);
  }

  return v34;
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
    v35 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v35 >= 1)
    {
LABEL_44:
      atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
      v36 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v36, 0, do_nothing);
      v37 = *(*(v11 + 3) + 5000);

      return v37(a1, a2, a3);
    }
  }

  *(v11 + 4838) = 1;
  v42[0] = 0;
  v42[1] = 0;
  v43 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v42, 299, "CulcS", v14, v15, v16, v17, v18, *v11, a2, a3);
    v19 = byte_21AF83;
    if (byte_21AF83)
    {
      breakpoint_break(v42, (&stru_108.addr + 3), 1, v11[851], v11);
    }

    if ([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v19 & 4)
    {
      v26 = 0xFFFFFFFFLL;
      goto LABEL_23;
    }

    v25 = mach_absolute_time();
    v26 = (*(*(v11 + 4) + 5000))(a1, a2, a3);
    v27 = mach_absolute_time() - v25;
    if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
    {
      v28 = v42[0];
      *(v42[0] + 2) = v25;
      v28[3] = v27;
      if (gCheckGLErrors != 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v40 = __udivti3();
      v41 = v42[0];
      *(v42[0] + 3) = v40;
      v41[2] = __udivti3();
      if (gCheckGLErrors != 1)
      {
        goto LABEL_23;
      }
    }

    check_errors(v11);
LABEL_23:
    GPUTools::FB::Encode(v42, 4294955008, "i", v20, v21, v22, v23, v24, v26);
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
      encode_driver_events(v11, v42);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v11 + 435, v11 + 440, v42);
    v29 = v11[851];
    if (v29 && (gBreakOnError & 1) != 0)
    {
      v38 = 3;
      v39 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v19 & 2) == 0)
      {
LABEL_32:
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

        goto LABEL_40;
      }

      v38 = 2;
      v39 = 299;
    }

    breakpoint_break(v42, v39, v38, v29, v11);
    goto LABEL_32;
  }

  atomic_fetch_add(v11 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  v26 = (*(*(v11 + 3) + 5000))(a1, a2, a3);
LABEL_40:
  if (v42[0])
  {
    free(v42[0]);
  }

  return v26;
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
      v19 = *(*(v11 + 24) + 5000);

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

  result = (*(*(v11 + 32) + 5000))(a1, a2, a3);
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
      v21 = *(*(v11 + 24) + 5000);

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
  v15 = (*(*(v11 + 32) + 5000))(a1, a2, a3);
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

  v18 = *(*(v11 + 24) + 5000);

  return v18(a1, a2, a3);
}

void sub_58244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

void get_active_uniform_ARB(__GLIContextRec *a1, void *a2, uint64_t a3, uint64_t a4, int *a5, int *a6, unsigned int *a7, char *a8)
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
  v20 = atomic_fetch_add(v19 + 1160, 1u) + 1;
  if (gCheckGLErrors != 1 || v20 <= 1)
  {
    if ([DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions] >= 1)
    {
      goto LABEL_59;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v19);
    v44 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v44 >= 1)
    {
LABEL_59:
      atomic_fetch_add(v19 + 1160, 0xFFFFFFFF);
      v45 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v45, 0, do_nothing);
      v46 = *(v19[3] + 5008);

      v46(a1, a2, a3, a4, a5, a6, a7, a8);
      return;
    }
  }

  *(v19 + 4838) = 1;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v56 = 0;
    v22 = a5 == 0;
    v53 = a5;
    if (!a5)
    {
      a5 = &v56;
    }

    *a5 = 0;
    strcpy(v19 + 4709, "Culuii");
    if (v22)
    {
      v23 = "t";
    }

    else
    {
      v23 = "@1i";
    }

    strlcat(v19 + 4709, v23, 0x40uLL);
    if (a6)
    {
      v24 = "@1i";
    }

    else
    {
      v24 = "t";
    }

    strlcat(v19 + 4709, v24, 0x40uLL);
    if (a7)
    {
      v25 = "@1e";
    }

    else
    {
      v25 = "t";
    }

    strlcat(v19 + 4709, v25, 0x40uLL);
    strlcat(v19 + 4709, "t", 0x40uLL);
    GPUTools::FB::Encode(&v57, 212, 256, v19 + 4709, v26, v27, v28, v29, *v19, a2, a3, a4, v53, a6, a7, a8);
    v52 = a6;
    v30 = byte_21AF2C;
    if (byte_21AF2C)
    {
      breakpoint_break(&v57, &stru_B8.segname[12], 1, *(v19 + 851), v19);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v30 & 4))
    {
      v31 = mach_absolute_time();
      (*(v19[4] + 5008))(a1, a2, a3, a4, a5, v52, a7, a8);
      v32 = mach_absolute_time() - v31;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v33 = v57;
        v57[2] = v31;
        v33[3] = v32;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v49 = __udivti3();
        v50 = v57;
        v57[3] = v49;
        v50[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_34;
        }
      }

      check_errors(v19);
    }

LABEL_34:
    if (*a5 >= 1)
    {
      *(v19 + strlen(v19 + 4709) + 4708) = 83;
      v38 = v57;
      v51 = *(v57 + 1);
      v58 = v57;
      if (v59 >= 0x24)
      {
        *(v57 + 8) = 0;
        *v38 = 0u;
        v38[1] = 0u;
      }

      GPUTools::FB::Encode(&v57, 212, 256, v19 + 4709, v34, v35, v36, v37, *v19, a2, a3, (*a5 + 1), v53, v52, a7, a8);
      *(v57 + 1) = v51;
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      GPUTools::FB::EncodeCurrentBacktrace();
    }

    if (*(v19 + 851))
    {
      GPUTools::FB::EncodeGLError();
    }

    if ([objc_msgSend(DYGetGLGuestAppClient() "activeCaptureDescriptor")])
    {
      encode_driver_events(v19, &v57);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v19 + 435, v19 + 440, &v57);
    v39 = *(v19 + 851);
    if (v39 && (gBreakOnError & 1) != 0)
    {
      v47 = 3;
      v48 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v30 & 2) == 0)
      {
LABEL_47:
        v40 = [DYGetGLGuestAppClient() defaultFbufStream];
        v41 = v40;
        while (atomic_exchange(v40 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v41 + 14);
        v42 = atomic_fetch_add(v19 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v42 >= 1)
        {
          handle_opengl_thread_conflict(v19);
        }

        goto LABEL_55;
      }

      v47 = 2;
      v48 = 212;
    }

    breakpoint_break(&v57, v48, v47, v39, v19);
    goto LABEL_47;
  }

  atomic_fetch_add(v19 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v19[3] + 5008))(a1, a2, a3, a4, a5, a6, a7, a8);
LABEL_55:
  if (v57)
  {
    free(v57);
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
      goto LABEL_44;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v21);
    v36 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v36 >= 1)
    {
LABEL_44:
      atomic_fetch_add(v21 + 1160, 0xFFFFFFFF);
      v37 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v37, 0, do_nothing);
      v38 = *(*(v21 + 3) + 5008);

      v38(a1, a2, a3, a4, a5, a6, a7, a8);
      return;
    }
  }

  *(v21 + 4838) = 1;
  v44[0] = 0;
  v44[1] = 0;
  v45 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    GPUTools::FB::Encode(v44, 212, 2, "Culuiipppp", v24, v25, v26, v27, *v21, a2, a3, a4, a5, a6, a7, a8);
    v43 = byte_21AF2C;
    if (byte_21AF2C)
    {
      breakpoint_break(v44, &stru_B8.segname[12], 1, v21[851], v21);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v43 & 4))
    {
      v28 = mach_absolute_time();
      (*(*(v21 + 4) + 5008))(a1, a2, a3, a4, a5, a6, a7, a8);
      v29 = mach_absolute_time() - v28;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v30 = v44[0];
        *(v44[0] + 2) = v28;
        v30[3] = v29;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v41 = __udivti3();
        v42 = v44[0];
        *(v44[0] + 3) = v41;
        v42[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_23;
        }
      }

      check_errors(v21);
    }

LABEL_23:
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
      encode_driver_events(v21, v44);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v21 + 435, v21 + 440, v44);
    v31 = v21[851];
    if (v31 && (gBreakOnError & 1) != 0)
    {
      v39 = 3;
      v40 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v43 & 2) == 0)
      {
LABEL_32:
        v32 = [DYGetGLGuestAppClient() defaultFbufStream];
        v33 = v32;
        while (atomic_exchange(v32 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v33 + 14);
        v34 = atomic_fetch_add(v21 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v34 >= 1)
        {
          handle_opengl_thread_conflict(v21);
        }

        goto LABEL_40;
      }

      v39 = 2;
      v40 = 212;
    }

    breakpoint_break(v44, v40, v39, v31, v21);
    goto LABEL_32;
  }

  atomic_fetch_add(v21 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v21 + 3) + 5008))(a1, a2, a3, a4, a5, a6, a7, a8);
LABEL_40:
  if (v44[0])
  {
    free(v44[0]);
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
      v26 = *(*(v21 + 24) + 5008);

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

  (*(*(v21 + 32) + 5008))(a1, a2, a3, a4, a5, a6, a7, a8);
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
      v31 = *(*(v21 + 24) + 5008);

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
  (*(*(v21 + 32) + 5008))(a1, a2, a3, a4, a5, a6, a7, v25);
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

void sub_58814(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 104);
  if (v3)
  {
    free(v3);
  }

  _Unwind_Resume(exception_object);
}

void get_uniformfv_ARB(__GLIContextRec *a1, void *a2, uint64_t a3, float *a4)
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
    v38 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v38 >= 1)
    {
LABEL_48:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v39 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v39, 0, do_nothing);
      v40 = *(v13[3] + 5016);

      v40(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if ((a3 & 0x80000000) == 0)
    {
      snprintf(v13 + 4773, 0x40uLL, "u_%016lx_%u_%u", *v13[5], a2, a3);
      GPUTools::FB::Encode(&v56, 300, 256, "CulV<i>p", v20, v21, v22, v23, *v13, a2, v13 + 4773, a4);
      v24 = byte_21AF84;
      if (byte_21AF84)
      {
        breakpoint_break(&v56, &stru_108.addr + 1, 1, *(v13 + 851), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
      {
        v25 = mach_absolute_time();
        (*(v13[4] + 5016))(a1, a2, a3, a4);
        v26 = mach_absolute_time() - v25;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v27 = v56;
          *(v56 + 2) = v25;
          v27[3] = v26;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v49 = __udivti3();
          v50 = v56;
          *(v56 + 3) = v49;
          v50[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_24;
          }
        }

        check_errors(v13);
      }

LABEL_24:
      memset(v59, 0, sizeof(v59));
      (*(v13[4] + 5016))(v13[2], a2, a3, v59);
      v32 = v56;
      v55 = *(v56 + 1);
      v57 = v56;
      if (v58 >= 0x24)
      {
        *(v56 + 8) = 0;
        *v32 = 0u;
        v32[1] = 0u;
      }

      GPUTools::FB::Encode(&v56, 300, 256, "CulV<i>@16f", v28, v29, v30, v31, *v13, a2, v13 + 4773, v59);
      *(v56 + 1) = v55;
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
        encode_driver_events(v13, &v56);
      }

      GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, &v56);
      v33 = *(v13 + 851);
      if (v33 && (gBreakOnError & 1) != 0)
      {
        v47 = 3;
        v48 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v24 & 2) == 0)
        {
LABEL_35:
          v34 = [DYGetGLGuestAppClient() defaultFbufStream];
          v35 = v34;
          while (atomic_exchange(v34 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v35 + 14);
          goto LABEL_39;
        }

        v47 = 2;
        v48 = 300;
      }

      breakpoint_break(&v56, v48, v47, v33, v13);
      goto LABEL_35;
    }

    GPUTools::FB::Encode(&v56, 300, 256, "Culip", v16, v17, v18, v19, *v13, a2, a3, a4);
    v41 = byte_21AF84;
    if (byte_21AF84)
    {
      breakpoint_break(&v56, &stru_108.addr + 1, 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v41 & 4))
    {
      v42 = mach_absolute_time();
      (*(v13[4] + 5016))(a1, a2, a3, a4);
      v43 = mach_absolute_time() - v42;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v44 = v56;
        *(v56 + 2) = v42;
        v44[3] = v43;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v53 = __udivti3();
        v54 = v56;
        *(v56 + 3) = v53;
        v54[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_56;
        }
      }

      check_errors(v13);
    }

LABEL_56:
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
      encode_driver_events(v13, &v56);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, &v56);
    v45 = *(v13 + 851);
    if (v45 && (gBreakOnError & 1) != 0)
    {
      v51 = 3;
      v52 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v41 & 2) == 0)
      {
LABEL_65:
        v46 = [DYGetGLGuestAppClient() defaultFbufStream];
        GPUTools::FB::Stream::Write(v46, &v56, 1);
LABEL_39:
        v36 = atomic_fetch_add(v13 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v36 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_44;
      }

      v51 = 2;
      v52 = 300;
    }

    breakpoint_break(&v56, v52, v51, v45, v13);
    goto LABEL_65;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 5016))(a1, a2, a3, a4);
LABEL_44:
  if (v56)
  {
    free(v56);
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
    v29 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v29 >= 1)
    {
LABEL_44:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
      v31 = *(*(v13 + 3) + 5016);

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
    GPUTools::FB::Encode(v36, 300, 2, "Culip", v16, v17, v18, v19, *v13, a2, a3, a4);
    v20 = byte_21AF84;
    if (byte_21AF84)
    {
      breakpoint_break(v36, &stru_108.addr + 1, 1, v13[851], v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4))
    {
      v21 = mach_absolute_time();
      (*(*(v13 + 4) + 5016))(a1, a2, a3, a4);
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
      v33 = 300;
    }

    breakpoint_break(v36, v33, v32, v24, v13);
    goto LABEL_32;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 3) + 5016))(a1, a2, a3, a4);
LABEL_40:
  if (v36[0])
  {
    free(v36[0]);
  }
}

void sub_58F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void get_uniformiv_ARB(__GLIContextRec *a1, void *a2, uint64_t a3, int *a4)
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
    v38 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v38 >= 1)
    {
LABEL_48:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v39 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v39, 0, do_nothing);
      v40 = *(v13[3] + 5024);

      v40(a1, a2, a3, a4);
      return;
    }
  }

  *(v13 + 4838) = 1;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    if ((a3 & 0x80000000) == 0)
    {
      snprintf(v13 + 4773, 0x40uLL, "u_%016lx_%u_%u", *v13[5], a2, a3);
      GPUTools::FB::Encode(&v56, 301, 256, "CulV<i>p", v20, v21, v22, v23, *v13, a2, v13 + 4773, a4);
      v24 = byte_21AF85;
      if (byte_21AF85)
      {
        breakpoint_break(&v56, (&stru_108.addr + 5), 1, *(v13 + 851), v13);
      }

      if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v24 & 4))
      {
        v25 = mach_absolute_time();
        (*(v13[4] + 5024))(a1, a2, a3, a4);
        v26 = mach_absolute_time() - v25;
        if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
        {
          v27 = v56;
          *(v56 + 2) = v25;
          v27[3] = v26;
          if (gCheckGLErrors != 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v49 = __udivti3();
          v50 = v56;
          *(v56 + 3) = v49;
          v50[2] = __udivti3();
          if (gCheckGLErrors != 1)
          {
            goto LABEL_24;
          }
        }

        check_errors(v13);
      }

LABEL_24:
      v59[0] = 0;
      v59[1] = 0;
      (*(v13[4] + 5024))(v13[2], a2, a3, v59);
      v32 = v56;
      v55 = *(v56 + 1);
      v57 = v56;
      if (v58 >= 0x24)
      {
        *(v56 + 8) = 0;
        *v32 = 0u;
        v32[1] = 0u;
      }

      GPUTools::FB::Encode(&v56, 301, 256, "CulV<i>@4i", v28, v29, v30, v31, *v13, a2, v13 + 4773, v59);
      *(v56 + 1) = v55;
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
        encode_driver_events(v13, &v56);
      }

      GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, &v56);
      v33 = *(v13 + 851);
      if (v33 && (gBreakOnError & 1) != 0)
      {
        v47 = 3;
        v48 = 0xFFFFFFFFLL;
      }

      else
      {
        if ((v24 & 2) == 0)
        {
LABEL_35:
          v34 = [DYGetGLGuestAppClient() defaultFbufStream];
          v35 = v34;
          while (atomic_exchange(v34 + 14, 1u) == 1)
          {
              ;
            }
          }

          GPUTools::FB::Stream::Write_nolock();
          atomic_store(0, v35 + 14);
          goto LABEL_39;
        }

        v47 = 2;
        v48 = 301;
      }

      breakpoint_break(&v56, v48, v47, v33, v13);
      goto LABEL_35;
    }

    GPUTools::FB::Encode(&v56, 301, 256, "Culip", v16, v17, v18, v19, *v13, a2, a3, a4);
    v41 = byte_21AF85;
    if (byte_21AF85)
    {
      breakpoint_break(&v56, (&stru_108.addr + 5), 1, *(v13 + 851), v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v41 & 4))
    {
      v42 = mach_absolute_time();
      (*(v13[4] + 5024))(a1, a2, a3, a4);
      v43 = mach_absolute_time() - v42;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v44 = v56;
        *(v56 + 2) = v42;
        v44[3] = v43;
        if (gCheckGLErrors != 1)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v53 = __udivti3();
        v54 = v56;
        *(v56 + 3) = v53;
        v54[2] = __udivti3();
        if (gCheckGLErrors != 1)
        {
          goto LABEL_56;
        }
      }

      check_errors(v13);
    }

LABEL_56:
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
      encode_driver_events(v13, &v56);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v13 + 435, v13 + 440, &v56);
    v45 = *(v13 + 851);
    if (v45 && (gBreakOnError & 1) != 0)
    {
      v51 = 3;
      v52 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v41 & 2) == 0)
      {
LABEL_65:
        v46 = [DYGetGLGuestAppClient() defaultFbufStream];
        GPUTools::FB::Stream::Write(v46, &v56, 1);
LABEL_39:
        v36 = atomic_fetch_add(v13 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v36 >= 1)
        {
          handle_opengl_thread_conflict(v13);
        }

        goto LABEL_44;
      }

      v51 = 2;
      v52 = 301;
    }

    breakpoint_break(&v56, v52, v51, v45, v13);
    goto LABEL_65;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v13[3] + 5024))(a1, a2, a3, a4);
LABEL_44:
  if (v56)
  {
    free(v56);
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
    v29 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v29 >= 1)
    {
LABEL_44:
      atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
      v30 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v30, 0, do_nothing);
      v31 = *(*(v13 + 3) + 5024);

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
    GPUTools::FB::Encode(v36, 301, 2, "Culip", v16, v17, v18, v19, *v13, a2, a3, a4);
    v20 = byte_21AF85;
    if (byte_21AF85)
    {
      breakpoint_break(v36, (&stru_108.addr + 5), 1, v13[851], v13);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v20 & 4))
    {
      v21 = mach_absolute_time();
      (*(*(v13 + 4) + 5024))(a1, a2, a3, a4);
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
      v33 = 301;
    }

    breakpoint_break(v36, v33, v32, v24, v13);
    goto LABEL_32;
  }

  atomic_fetch_add(v13 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v13 + 3) + 5024))(a1, a2, a3, a4);
LABEL_40:
  if (v36[0])
  {
    free(v36[0]);
  }
}

void sub_5962C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  if (a15)
  {
    free(a15);
  }

  _Unwind_Resume(exception_object);
}

void get_shader_source_ARB(__GLIContextRec *a1, void *a2, uint64_t a3, int *a4, char *a5)
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
      goto LABEL_55;
    }
  }

  else
  {
    handle_opengl_thread_conflict(v15);
    v39 = [DYGetGLGuestAppClient() waitOnGraphicsSemaphoreAssertions];
    if (v39 >= 1)
    {
LABEL_55:
      atomic_fetch_add(v15 + 1160, 0xFFFFFFFF);
      v40 = [DYGetGLGuestAppClient() graphicsLockWaitQueue];
      dispatch_sync_f(v40, 0, do_nothing);
      v41 = *(v15[3] + 5032);

      v41(a1, a2, a3, a4, a5);
      return;
    }
  }

  *(v15 + 4838) = 1;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if ([DYGetGLGuestAppClient() state] != &dword_0 + 1 || !objc_msgSend(DYGetGLGuestAppClient(), "triggerCaptureOnNextGLCommand"))
  {
    v46 = 0;
    if (a4)
    {
      v18 = a4;
    }

    else
    {
      v18 = &v46;
    }

    *v18 = 0;
    v19 = v15 + 4709;
    v20 = "t";
    if (v18 == a4)
    {
      v20 = "@1i";
    }

    snprintf(v15 + 4709, 0x40uLL, "Culi%st", v20);
    GPUTools::FB::Encode(&v47, 280, 256, v15 + 4709, v21, v22, v23, v24, *v15, a2, a3, a4, a5);
    v25 = byte_21AF70;
    if (byte_21AF70)
    {
      breakpoint_break(&v47, stru_108.segname, 1, *(v15 + 851), v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v25 & 4))
    {
      v26 = mach_absolute_time();
      (*(v15[4] + 5032))(a1, a2, a3, v18, a5);
      v27 = mach_absolute_time() - v26;
      if (g_DYTimebaseInfo == *(&g_DYTimebaseInfo + 1))
      {
        v28 = v47;
        *(v47 + 3) = v27;
      }

      else
      {
        v44 = __udivti3();
        v28 = v47;
        *(v47 + 3) = v44;
        v26 = __udivti3();
      }

      v28[2] = v26;
      v19 = v15 + 4709;
      if (gCheckGLErrors == 1)
      {
        check_errors(v15);
      }
    }

    if (*v18 >= 1)
    {
      DYGetGLGuestAppClient();
      GPUTools::Interpose::DYSavePointer();
      v19[strlen(v19) - 1] = 0;
      strlcat(v19, "U<cb>", 0x40uLL);
      v33 = v47;
      v45 = *(v47 + 1);
      v48 = v47;
      if (v49 >= 0x24)
      {
        *(v47 + 8) = 0;
        *v33 = 0u;
        v33[1] = 0u;
      }

      GPUTools::FB::Encode(&v47, 280, 256, v19, v29, v30, v31, v32, *v15, a2, (*v18 + 1), a4, v15 + 4644);
      *(v47 + 1) = v45;
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
      encode_driver_events(v15, &v47);
    }

    GPUTools::FB::EncodeThreadQueueInfo(v15 + 435, v15 + 440, &v47);
    v34 = *(v15 + 851);
    if (v34 && (gBreakOnError & 1) != 0)
    {
      v42 = 3;
      v43 = 0xFFFFFFFFLL;
    }

    else
    {
      if ((v25 & 2) == 0)
      {
LABEL_43:
        v35 = [DYGetGLGuestAppClient() defaultFbufStream];
        v36 = v35;
        while (atomic_exchange(v35 + 14, 1u) == 1)
        {
            ;
          }
        }

        GPUTools::FB::Stream::Write_nolock();
        atomic_store(0, v36 + 14);
        v37 = atomic_fetch_add(v15 + 1160, 0xFFFFFFFF) - 1;
        if (gCheckGLErrors == 1 && v37 >= 1)
        {
          handle_opengl_thread_conflict(v15);
        }

        goto LABEL_51;
      }

      v42 = 2;
      v43 = 280;
    }

    breakpoint_break(&v47, v43, v42, v34, v15);
    goto LABEL_43;
  }

  atomic_fetch_add(v15 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(v15[3] + 5032))(a1, a2, a3, a4, a5);
LABEL_51:
  if (v47)
  {
    free(v47);
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
      v33 = *(*(v15 + 3) + 5032);

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
    GPUTools::FB::Encode(v38, 280, 2, "Culipp", v18, v19, v20, v21, *v15, a2, a3, a4, a5);
    v22 = byte_21AF70;
    if (byte_21AF70)
    {
      breakpoint_break(v38, stru_108.segname, 1, v15[851], v15);
    }

    if (!([DYGetGLGuestAppClient() overrideFlags] & 0x10 | v22 & 4))
    {
      v23 = mach_absolute_time();
      (*(*(v15 + 4) + 5032))(a1, a2, a3, a4, a5);
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
      v35 = 280;
    }

    breakpoint_break(v38, v35, v34, v26, v15);
    goto LABEL_32;
  }

  atomic_fetch_add(v15 + 1160, 0xFFFFFFFF);
  [DYGetGLGuestAppClient() triggerArmedCapture];
  (*(*(v15 + 3) + 5032))(a1, a2, a3, a4, a5);
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
      v20 = *(*(v15 + 24) + 5032);

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

  (*(*(v15 + 32) + 5032))(a1, a2, a3, a4, a5);
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
      v23 = *(*(v15 + 24) + 5032);

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
  (*(*(v15 + 32) + 5032))(a1, a2, a3, a4, a5);
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