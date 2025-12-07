void AVVCRecordingEngine::safeWorkSync(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock((a1 + 528));
      v4[2]();
      std::recursive_mutex::unlock((a1 + 528));
    }

    else
    {
      v4[2]();
    }

    v3 = v4;
  }
}

void sub_1BA5BF91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::recursive_mutex::unlock((v10 + 528));

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_451(uint64_t a1)
{
  v127 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = *(a1 + 32) == 0;
  v4 = objc_alloc(MEMORY[0x1E695DF20]);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 64)];
  if (v3)
  {
    v6 = [v4 initWithObjectsAndKeys:{v5, @"activation trigger", 0}];
  }

  else
  {
    v6 = [v4 initWithObjectsAndKeys:{v5, @"activation trigger", *(a1 + 32), @"activation device uid", 0}];
  }

  v7 = v6;

  objc_storeStrong((*(a1 + 72) + 456), v7);
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 88);
    v11 = *(v2 + 456);
    *buf = 136315906;
    *&buf[4] = "ControllerImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 5558;
    *&buf[18] = 2048;
    *&buf[20] = v10;
    *&buf[28] = 2112;
    *&buf[30] = v11;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d About to activate audio session for stream(%lu). Current context: %@", buf, 0x26u);
  }

LABEL_11:
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SessionLock::SessionLock(v97, v12, v13);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3321888768;
  v80[2] = ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_452;
  v80[3] = &unk_1F3849000;
  v14 = *(a1 + 88);
  v15 = *(a1 + 96);
  v92 = *(a1 + 120);
  v85 = v14;
  v86 = v15;
  v16 = *(a1 + 104);
  v87 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v83 = &v98;
  v17 = v7;
  v19 = *(a1 + 72);
  v18 = *(a1 + 80);
  v81 = v17;
  v88 = v19;
  v89 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v82 = *(a1 + 48);
  v84 = &v93;
  v20 = *(a1 + 112);
  v90 = *(a1 + 64);
  v91 = v20;
  (*(*v15 + 344))(v15, v80);
  if ((v94[3] & 1) == 0)
  {
    v21 = *(a1 + 72);
    *(v21 + 528) = *(a1 + 64);
    v22 = *(a1 + 80);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SessionUnlocker::SessionUnlocker(v79, v21, v22);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    v23 = *(a1 + 72);
    v24 = *(a1 + 88);
    v25 = *(a1 + 120);
    v26 = *(a1 + 40);
    TraceMethod::TraceMethod(v120, "checkSession");
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v118, *(v23 + 8), *(v23 + 16));
    v114 = 0;
    v115 = &v114;
    v116 = 0x2020000000;
    v117 = 0;
    v110 = 0;
    v111 = &v110;
    v112 = 0x2020000000;
    v113 = 0;
    v106 = 0;
    v107 = &v106;
    v108 = 0x2020000000;
    v109 = 0;
    ControllerImpl::_lookupEngineForStreamID(&v104, *(v118 + 72), *(v118 + 73), v24);
    v27 = v104;
    if (v104)
    {
      v28 = v118;
      v29 = v119;
      if (v119)
      {
        atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      SessionLock::SessionLock(v103, v28, v29);
      if (v29)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      v30 = *(v118 + 59);
      *(v118 + 59) = v24;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3321888768;
      *&buf[16] = ___ZN14ControllerImpl12checkSessionEP17AVVoiceControllermb_block_invoke;
      *&buf[24] = &unk_1F384DE30;
      *&buf[32] = &v106;
      v31 = v105;
      v124 = v27;
      v125 = v105;
      if (v105)
      {
        atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v126 = v25;
      v122 = &v114;
      v123 = &v110;
      (*(*v27 + 344))(v27, buf);
      if ((v111[3] & 1) != 0 || *(v115 + 6) || *(v107 + 24) != 1)
      {
        *(v118 + 59) = v30;
      }

      else
      {
        v32 = (*(*v27 + 64))(v27, 0);
        v33 = [v32 isPrimary];

        v34 = v118;
        if (v33)
        {
          v35 = *(v118 + 488);
          v64 = v35;
          if (v35)
          {
            v36 = vcnt_s8(v35);
            v36.i16[0] = vaddlv_u8(v36);
            if (v36.u32[0] > 1uLL)
            {
              v37 = v24;
              if (v24 >= *&v35)
              {
                v37 = v24 % *&v35;
              }
            }

            else
            {
              v37 = (*&v35 - 1) & v24;
            }

            v61 = *(*(v118 + 60) + 8 * v37);
            if (v61)
            {
              for (i = *v61; i; i = *i)
              {
                v63 = i[1];
                if (v63 == v24)
                {
                  if (i[2] == v24)
                  {
                    goto LABEL_102;
                  }
                }

                else
                {
                  if (v36.u32[0] > 1uLL)
                  {
                    if (v63 >= *&v64)
                    {
                      v63 %= *&v64;
                    }
                  }

                  else
                  {
                    v63 &= *&v64 - 1;
                  }

                  if (v63 != v37)
                  {
                    break;
                  }
                }
              }
            }
          }

          operator new();
        }

LABEL_102:
        v102[0] = v27;
        v102[1] = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ControllerImpl::startKeepAliveQueue(*(v34 + 1), *(v34 + 2), v102);
        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }
      }

      if (*(v115 + 6) == -11795)
      {
        *(v118 + 59) = 0;
      }

      if (v125)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v125);
      }

      VCLocker::~VCLocker(v103);
      if (*(v115 + 6) || (+[AVVCKeepAliveManager sharedManager], v40 = objc_claimAutoreleasedReturnValue(), v41 = v40 == 0, v40, v41) || *(v118 + 90) || (v38 = ControllerImpl::configureAlerts(v118, v26), (*(v115 + 6) = v38) == 0))
      {
        v38 = *(v115 + 6);
      }

LABEL_57:
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      _Block_object_dispose(&v106, 8);
      _Block_object_dispose(&v110, 8);
      _Block_object_dispose(&v114, 8);
      if (v119)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v119);
      }

      TraceMethod::~TraceMethod(v120);

      v43 = v99;
      *(v99 + 6) = v38;
      if (!v38)
      {
        v45 = *(a1 + 121);
        if (v45 == 1)
        {
          v46 = *(a1 + 120) ^ 1;
        }

        else
        {
          v46 = 0;
        }

        v54 = v46 & 1;
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3321888768;
        v65[2] = ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_2_459;
        v65[3] = &unk_1F3847F68;
        v56 = *(a1 + 96);
        v55 = *(a1 + 104);
        v68 = v56;
        v69 = v55;
        if (v55)
        {
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          LOBYTE(v45) = *(a1 + 121);
        }

        v73 = v45;
        v74 = v54;
        v58 = *(a1 + 72);
        v57 = *(a1 + 80);
        v67 = &v98;
        v70 = v58;
        v71 = v57;
        if (v57)
        {
          atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v59 = *(a1 + 48);
        v60 = *(a1 + 88);
        v66 = v59;
        v72 = v60;
        (*(*v56 + 328))(v56, v65, "activateAudioSessionForStream_block_invoke");

        if (v71)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v71);
        }

        if (v69)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v69);
        }

        goto LABEL_81;
      }

      if (kAVVCScope)
      {
        v44 = *kAVVCScope;
        if (!v44)
        {
LABEL_71:
          v49 = *(a1 + 72);
          v50 = *(a1 + 48);
          v51 = v50 != 0;
          v75[0] = MEMORY[0x1E69E9820];
          v75[1] = 3221225472;
          v75[2] = ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_458;
          v75[3] = &unk_1E7EF5F40;
          v52 = v50;
          v53 = *(a1 + 88);
          v76 = v52;
          v77 = &v98;
          v78 = v53;
          ControllerImpl::safeNotifyAlwaysAsync(v49, v51, v75);

LABEL_81:
          VCUnlocker::~VCUnlocker(v79);
          goto LABEL_82;
        }
      }

      else
      {
        v44 = MEMORY[0x1E69E9C10];
        v47 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v48 = *(v43 + 6);
        *buf = 136315650;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 5648;
        *&buf[18] = 1024;
        *&buf[20] = v48;
        _os_log_impl(&dword_1BA5AC000, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d activateAudioSessionForStream ERROR: Failed checkSession at setAudioSessionActive OSStatus(%d).", buf, 0x18u);
      }

      goto LABEL_71;
    }

    if (kAVVCScope)
    {
      v39 = *kAVVCScope;
      if (!v39)
      {
LABEL_56:
        v38 = -11793;
        v31 = v105;
        goto LABEL_57;
      }
    }

    else
    {
      v39 = MEMORY[0x1E69E9C10];
      v42 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 5435;
      *&buf[18] = 2048;
      *&buf[20] = v24;
      _os_log_impl(&dword_1BA5AC000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d checkSession: Cannot find recording engine for streamID(%lu). Returning.", buf, 0x1Cu);
    }

    goto LABEL_56;
  }

LABEL_82:

  if (v89)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v89);
  }

  if (v87)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v87);
  }

  _Block_object_dispose(&v93, 8);
  VCLocker::~VCLocker(v97);
  _Block_object_dispose(&v98, 8);
}

void sub_1BA5C0698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, std::__shared_weak_count *a46, uint64_t a47, std::__shared_weak_count *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  operator delete(__p);
  v71 = *(v69 - 144);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  VCLocker::~VCLocker(&a64);
  if (a65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a65);
  }

  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  v72 = *(v69 - 224);
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  TraceMethod::~TraceMethod((v69 - 216));

  VCUnlocker::~VCUnlocker(&a34);
  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a48);
  }

  if (a46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a46);
  }

  _Block_object_dispose(&a52, 8);
  VCLocker::~VCLocker(&a56);
  _Block_object_dispose(&a58, 8);

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl28getRecordDeviceInfoForStreamEP17AVVoiceControllermU13block_pointerFvmP20AVVCRecordDeviceInfoP7NSErrorE_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v24, *(*(a1 + 40) + 576), *(*(a1 + 40) + 584), *(a1 + 56));
  v2 = v24;
  if (!v24)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 56);
      *buf = 136315650;
      v27 = "ControllerImpl.mm";
      v28 = 1024;
      v29 = 6076;
      v30 = 2048;
      v31 = v8;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d getRecordDeviceInfoForStream: Nil recording engine for streamID(%llu)", buf, 0x1Cu);
    }

LABEL_20:
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9 != 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = ___ZN14ControllerImpl28getRecordDeviceInfoForStreamEP17AVVoiceControllermU13block_pointerFvmP20AVVCRecordDeviceInfoP7NSErrorE_block_invoke_503;
    v21[3] = &unk_1E7EF6590;
    v12 = v9;
    v13 = *(a1 + 56);
    v22 = v12;
    v23 = v13;
    ControllerImpl::safeNotifyAlwaysAsync(v10, v11, v21);

    v3 = v25;
    if (!v25)
    {
      return;
    }

    goto LABEL_11;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl28getRecordDeviceInfoForStreamEP17AVVoiceControllermU13block_pointerFvmP20AVVCRecordDeviceInfoP7NSErrorE_block_invoke_2;
  v14[3] = &unk_1F3848470;
  v3 = v25;
  v16 = v24;
  v17 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 40);
  v18 = *(a1 + 56);
  v19 = v5;
  v20 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 32);
  (*(*v2 + 328))(v2, v14, "getRecordDeviceInfoForStream_block_invoke");

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v3)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1BA5C0AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (*(v23 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v23 - 88));
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl28getRecordDeviceInfoForStreamEP17AVVoiceControllermU13block_pointerFvmP20AVVCRecordDeviceInfoP7NSErrorE_block_invoke_2(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = [AVVCRecordDeviceInfo alloc];
  v3 = a1[6];
  v24 = a1[5];
  v25 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = [(AVVCRecordDeviceInfo *)v2 initWithRecordingEngine:&v24];
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[7];
    v9 = [(AVVCRecordDeviceInfo *)v4 recordRoute];
    v10 = [(AVVCRecordDeviceInfo *)v4 isRemoteDevice];
    v11 = [(AVVCRecordDeviceInfo *)v4 remoteProductIdentifier];
    v12 = [(AVVCRecordDeviceInfo *)v4 remoteDeviceUID];
    v13 = [(AVVCRecordDeviceInfo *)v4 remoteDeviceCategory];
    *buf = 136316930;
    v27 = "ControllerImpl.mm";
    v28 = 1024;
    v29 = 6084;
    v30 = 2048;
    v31 = v8;
    v32 = 2112;
    v33 = v9;
    v34 = 1024;
    v35 = v10;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v12;
    v40 = 1024;
    v41 = v13;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d StreamID(%llu). RecordRoute: %@, isRemoteDevice: %d, productID: %@, uuid: %@, category: %d", buf, 0x46u);
  }

LABEL_12:
  v14 = a1[8];
  v15 = a1[4];
  v16 = v15 != 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___ZN14ControllerImpl28getRecordDeviceInfoForStreamEP17AVVoiceControllermU13block_pointerFvmP20AVVCRecordDeviceInfoP7NSErrorE_block_invoke_505;
  v20[3] = &unk_1E7EF5DB0;
  v17 = v15;
  v18 = a1[7];
  v22 = v17;
  v23 = v18;
  v19 = v4;
  v21 = v19;
  ControllerImpl::safeNotifyAlwaysAsync(v14, v16, v20);
}

void ___ZN14ControllerImpl28getRecordDeviceInfoForStreamEP17AVVoiceControllerm_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v5 = *(a1 + 32);
  if (v5)
  {
    dispatch_semaphore_signal(v5);
  }
}

void ___ZN14ControllerImpl22setDuckOthersForStreamEmP16AVVCDuckSettingsPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZN14ControllerImpl22setDuckOthersForStreamEmP16AVVCDuckSettingsPU15__autoreleasingP7NSError_block_invoke_2;
  v13[3] = &unk_1E7EF6198;
  v15 = *(a1 + 40);
  v14 = v3;
  v7 = v3;
  v8 = v6;
  v9 = v13;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v22, *(v4 + 8), *(v4 + 16));
  v10 = v22;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3321888768;
  v16[2] = ___ZN14ControllerImpl22setDuckOthersForStreamEmP16AVVCDuckSettingsU13block_pointerFvmbP7NSErrorE_block_invoke;
  v16[3] = &unk_1F3848748;
  v11 = v8;
  v17 = v11;
  v19 = v22;
  v20 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = v5;
  v12 = v9;
  v18 = v12;
  ControllerImpl::safeWork(v10, v16, "setDuckOthersForStream");

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

void sub_1BA5C1238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  v28 = *(v26 - 56);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl22setDuckOthersForStreamEmP16AVVCDuckSettingsU13block_pointerFvmbP7NSErrorE_block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    return;
  }

  ControllerImpl::_lookupEngineForStreamID(&v28, *(*(a1 + 48) + 576), *(*(a1 + 48) + 584), *(a1 + 64));
  v2 = v28;
  if (!v28)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 64);
      *buf = 136315650;
      v31 = "ControllerImpl.mm";
      v32 = 1024;
      v33 = 6617;
      v34 = 2048;
      v35 = v11;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d setDuckOthersForStream: Cannot find recording engine for streamID(%lu). Returning.", buf, 0x1Cu);
    }

LABEL_21:
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = v12 != 0;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = ___ZN14ControllerImpl22setDuckOthersForStreamEmP16AVVCDuckSettingsU13block_pointerFvmbP7NSErrorE_block_invoke_557;
    v25[3] = &unk_1E7EF6590;
    v15 = v12;
    v16 = *(a1 + 64);
    v26 = v15;
    v27 = v16;
    ControllerImpl::safeNotifyAlwaysAsync(v13, v14, v25);

    v3 = v29;
    if (!v29)
    {
      return;
    }

    goto LABEL_12;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3321888768;
  v17[2] = ___ZN14ControllerImpl22setDuckOthersForStreamEmP16AVVCDuckSettingsU13block_pointerFvmbP7NSErrorE_block_invoke_2;
  v17[3] = &unk_1F38480B8;
  v3 = v29;
  v20 = v28;
  v21 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v18 = v4;
  v22 = v6;
  v23 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 64);
  v19 = v7;
  v24 = v8;
  (*(*v2 + 328))(v2, v17, "setDuckOthersForStream_block_invoke");

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v3)
  {
LABEL_12:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1BA5C1530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (*(v25 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v25 - 88));
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl22setDuckOthersForStreamEmP16AVVCDuckSettingsPU15__autoreleasingP7NSError_block_invoke_2(void *a1, uint64_t a2, char a3, void *a4)
{
  v8 = a4;
  *(*(a1[5] + 8) + 24) = a3;
  objc_storeStrong((*(a1[6] + 8) + 40), a4);
  v7 = a1[4];
  if (v7)
  {
    dispatch_semaphore_signal(v7);
  }
}

void ___ZN14ControllerImpl22setDuckOthersForStreamEmP16AVVCDuckSettingsU13block_pointerFvmbP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 64))(*(a1 + 48), 0);
  v3 = [*(a1 + 32) duckOverride];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 duckOthers];
    v6 = [v4 mixWithOthers];
    v39 = 0;
    v7 = [v2 setDuckOthers:v5 mixWithOthers:v6 error:&v39];
    v8 = v39;

    v9 = [v4 duckToLevel];

    if (v9)
    {
      if ([v4 isBlur])
      {
        v10 = [v4 duckToLevel];
        v38 = v8;
        v11 = &v38;
        [v2 setDuckToLevelDB:v10 error:&v38];
      }

      else
      {
        v10 = [v4 duckToLevel];
        v37 = v8;
        v11 = &v37;
        [v2 setDuckToLevelScalar:v10 error:&v37];
      }

      v12 = *v11;

      v8 = v12;
    }
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  v13 = [*(a1 + 32) duckLevel];
  v14 = v13;
  if (v13)
  {
    if ([v13 isBlur])
    {
      v15 = [v14 value];
      v36 = v8;
      v16 = &v36;
      [v2 setDuckToLevelDB:v15 error:&v36];
    }

    else
    {
      v15 = [v14 value];
      v35 = v8;
      v16 = &v35;
      [v2 setDuckToLevelScalar:v15 error:&v35];
    }

    v17 = *v16;

    v8 = v17;
  }

  v18 = [*(a1 + 32) fadeDuration];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 fadeOut];
    v21 = [v19 fadeIn];
    v34 = v8;
    v7 = [v2 setDuckingFadeOutDuration:v20 fadeInDuration:v21 error:&v34];
    v22 = v34;

    v8 = v22;
  }

  v23 = *(a1 + 64);
  v24 = *(a1 + 40);
  v25 = v24 != 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = ___ZN14ControllerImpl22setDuckOthersForStreamEmP16AVVCDuckSettingsU13block_pointerFvmbP7NSErrorE_block_invoke_3;
  v29[3] = &unk_1E7EF6148;
  v26 = v24;
  v27 = *(a1 + 80);
  v31 = v26;
  v32 = v27;
  v33 = v7;
  v28 = v8;
  v30 = v28;
  ControllerImpl::safeNotifyAlwaysAsync(v23, v25, v29);
}

void ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_480(void *a1)
{
  v1 = a1[6];
  v2 = a1[4];
  v3 = *(*(a1[5] + 8) + 24) == 0;
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:? userInfo:?];
  (*(v2 + 16))(v2, v1, v3);
}

void ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsm_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  *(*(*(a1 + 40) + 8) + 24) = [v6 code];
  v5 = *(a1 + 32);
  if (v5)
  {
    dispatch_semaphore_signal(v5);
  }
}

void ___ZN14ControllerImpl31enableSmartRoutingConsiderationEmbU13block_pointerFvmbP7NSErrorE_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48) == 0;
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:? userInfo:?];
  (*(v1 + 16))(v1, v2, v3);
}

void ___ZN14ControllerImpl31enableSmartRoutingConsiderationEmb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  *(*(*(a1 + 40) + 8) + 24) = [v6 code];
  v5 = *(a1 + 32);
  if (v5)
  {
    dispatch_semaphore_signal(v5);
  }
}

void ControllerImpl::safeWorkSync(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock((a1 + 104));
      v4[2]();
      std::recursive_mutex::unlock((a1 + 104));
    }

    else
    {
      v4[2]();
    }

    v3 = v4;
  }
}

void sub_1BA5C1F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  std::recursive_mutex::unlock((v10 + 104));

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl30getCurrentStreamStateForStreamEP17AVVoiceControllerm_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  v5 = a1[7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN14ControllerImpl30getCurrentStreamStateForStreamEP17AVVoiceControllerm_block_invoke_2;
  v11[3] = &unk_1E7EF5E00;
  v6 = a1[5];
  v12 = v3;
  v13 = v6;
  v7 = v3;
  v8 = v11;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v19, *(v4 + 8), *(v4 + 16));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl30getCurrentStreamStateForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke;
  v14[3] = &unk_1F3848BA0;
  v9 = v19;
  v16 = v19;
  v17 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v5;
  v10 = v8;
  v15 = v10;
  ControllerImpl::safeWork(v9, v14, "getCurrentStreamStateForStream");

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

void sub_1BA5C20A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  v25 = *(v23 - 40);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl30getCurrentStreamStateForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v25, *(*(a1 + 40) + 576), *(*(a1 + 40) + 584), *(a1 + 56));
  v2 = v25;
  if (!v25)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 56);
      *buf = 136315650;
      v28 = "ControllerImpl.mm";
      v29 = 1024;
      v30 = 5197;
      v31 = 2048;
      v32 = v9;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d getCurrentStreamState: Cannot find recording engine for streamID(%lu).", buf, 0x1Cu);
    }

LABEL_20:
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v10 != 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___ZN14ControllerImpl30getCurrentStreamStateForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_426;
    v22[3] = &unk_1E7EF6590;
    v13 = v10;
    v14 = *(a1 + 56);
    v23 = v13;
    v24 = v14;
    ControllerImpl::safeNotifyAlwaysAsync(v11, v12, v22);

    v3 = v26;
    if (!v26)
    {
      return;
    }

    goto LABEL_11;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = ___ZN14ControllerImpl30getCurrentStreamStateForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_2;
  v15[3] = &unk_1F38484A8;
  v3 = v26;
  v17 = v25;
  v18 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  v19 = *(a1 + 40);
  v20 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v16 = v5;
  v21 = v6;
  (*(*v2 + 328))(v2, v15, "getCurrentStreamStateForStream_block_invoke");

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v3)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1BA5C2374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (*(v23 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v23 - 88));
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl30getCurrentStreamStateForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 216);
  v4 = a1[7];
  v5 = v2 != 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZN14ControllerImpl30getCurrentStreamStateForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_3;
  v8[3] = &unk_1E7EF5E28;
  v6 = v2;
  v7 = a1[9];
  v9 = v6;
  v10 = v7;
  v11 = v3;
  ControllerImpl::safeNotifyAlwaysAsync(v4, v5, v8);
}

NSObject *___ZN14ControllerImpl30getCurrentStreamStateForStreamEP17AVVoiceControllerm_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 40) + 8) + 24) = a4;
  result = *(a1 + 32);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

uint64_t ControllerImpl::activateAudioSessionForStream(ControllerImpl *this, AVVoiceController *a2, uint64_t a3, char a4, char a5)
{
  v9 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbb_block_invoke;
  v13[3] = &unk_1E7EF5F68;
  v16 = this;
  v10 = v9;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v14 = v10;
  v15 = &v20;
  makeSynchronous(v13);
  v11 = *(v21 + 6);

  _Block_object_dispose(&v20, 8);
  return v11;
}

void sub_1BA5C25B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ControllerImpl::setContextForStream(ControllerImpl *this, AVVoiceController *a2, AVVCContextSettings *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsm_block_invoke;
  v13[3] = &unk_1E7EF5F90;
  v17 = this;
  v9 = v7;
  v14 = v9;
  v10 = v8;
  v18 = a4;
  v15 = v10;
  v16 = &v19;
  makeSynchronous(v13);
  v11 = *(v20 + 6);

  _Block_object_dispose(&v19, 8);
  return v11;
}

void sub_1BA5C26DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsm_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1[7];
  v4 = a1[8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsm_block_invoke_2;
  v14[3] = &unk_1E7EF5D60;
  v7 = a1[5];
  v6 = a1[6];
  v15 = v3;
  v16 = v6;
  v8 = v3;
  v9 = v7;
  v10 = v14;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v24, *(v5 + 8), *(v5 + 16));
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3321888768;
  v17[2] = ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke;
  v17[3] = &unk_1F3848400;
  v11 = v24;
  v21 = v24;
  v22 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = v4;
  v12 = v9;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  v20 = v26;
  ControllerImpl::safeWork(v11, v17, "setContextForStream");

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Block_object_dispose(v26, 8);
}

void sub_1BA5C28AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  v28 = *(v26 - 88);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Block_object_dispose((v26 - 80), 8);

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v42, *(*(a1 + 56) + 576), *(*(a1 + 56) + 584), *(a1 + 72));
  v2 = [*(a1 + 32) activationMode];
  v3 = v42;
  if (!v42)
  {
    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
LABEL_27:
        v21 = *(a1 + 56);
        v22 = *(a1 + 40);
        v23 = v22 != 0;
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_469;
        v39[3] = &unk_1E7EF6590;
        v24 = v22;
        v25 = *(a1 + 72);
        v40 = v24;
        v41 = v25;
        ControllerImpl::safeNotifyAlwaysAsync(v21, v23, v39);

        goto LABEL_28;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 72);
      *buf = 136315650;
      v45 = "ControllerImpl.mm";
      v46 = 1024;
      v47 = 5768;
      v48 = 2048;
      v49 = v20;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Cannot find recording engine for streamID(%lu). Returning.", buf, 0x1Cu);
    }

    goto LABEL_27;
  }

  v4 = *(*(a1 + 56) + 472);
  if (!v4 || v4 != *(a1 + 72))
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
LABEL_22:
        v14 = *(a1 + 56);
        v15 = *(a1 + 40);
        v16 = v15 != 0;
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_470;
        v36[3] = &unk_1E7EF6590;
        v17 = v15;
        v18 = *(a1 + 72);
        v37 = v17;
        v38 = v18;
        ControllerImpl::safeNotifyAlwaysAsync(v14, v16, v36);

        goto LABEL_28;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 72);
      v13 = *(*(a1 + 56) + 472);
      *buf = 136315906;
      v45 = "ControllerImpl.mm";
      v46 = 1024;
      v47 = 5777;
      v48 = 2048;
      v49 = v12;
      v50 = 2048;
      v51 = v13;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d setContextForStream: Error! Incoming engine with streamID(%llu) is different from engine that was used to activate the session, streamID(%llu)", buf, 0x26u);
    }

    goto LABEL_22;
  }

  v5 = v2;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3321888768;
  v27[2] = ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_2;
  v27[3] = &unk_1F3849188;
  v30 = v42;
  v31 = v43;
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v28 = *(a1 + 32);
  v7 = *(a1 + 56);
  v6 = *(a1 + 64);
  v32 = v5;
  v33 = v7;
  v34 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = *(a1 + 40);
  v8 = v26;
  v29 = v26;
  v35 = *(a1 + 72);
  (*(*v3 + 328))(v3, v27, "setContextForStream_block_invoke");

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

LABEL_28:
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }
}

void sub_1BA5C2D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  v25 = *(v23 - 104);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  AVVCRecordingEngine::setActivationContextSettings(*(a1 + 56), *(a1 + 32));
  *(*(a1 + 56) + 272) = *(a1 + 72);
  if (![*(a1 + 32) announceCallsEnabled])
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (!kAVVCScope)
  {
    v2 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
    goto LABEL_7;
  }

  v2 = *kAVVCScope;
  if (v2)
  {
LABEL_7:
    v5 = v2;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      CAX4CCString::CAX4CCString(v24, *(a1 + 72));
      *buf = 136315650;
      v26 = "ControllerImpl.mm";
      v27 = 1024;
      v28 = 5803;
      v29 = 2080;
      v30 = v24;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setContextForStream: Announce option set for %s activation mode", buf, 0x1Cu);
    }
  }

  v3 = 1;
LABEL_11:
  v6 = *(a1 + 80);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_471;
  v14[3] = &unk_1F3849070;
  v7 = *(a1 + 32);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v15 = v7;
  v17 = v8;
  v18 = v9;
  v10 = *(a1 + 88);
  v19 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 64);
  v20 = *(a1 + 56);
  v21 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 40);
  v12 = v13;
  v16 = v13;
  v22 = *(a1 + 96);
  v23 = v3;
  ControllerImpl::safeWork(v6, v14, "setContextForStream_block_invoke");

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_471(uint64_t a1)
{
  v2 = [*(a1 + 32) activationDeviceUID];

  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
  if (v2)
  {
    v5 = [*(a1 + 32) activationDeviceUID];
    v6 = [v3 initWithObjectsAndKeys:{v4, @"activation trigger", v5, @"activation device uid", 0}];
  }

  else
  {
    v6 = [v3 initWithObjectsAndKeys:{v4, @"activation trigger", 0}];
  }

  objc_storeStrong((*(a1 + 64) + 456), v6);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  SessionLock::SessionLock(v44, v7, v8);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v9 = *(*(a1 + 64) + 528);
  v10 = *(a1 + 80);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3321888768;
  v27[2] = ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_2_472;
  v27[3] = &unk_1F3848F90;
  v30 = *(a1 + 48);
  v11 = *(a1 + 88);
  v32 = v10;
  v33 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = v6;
  v14 = *(a1 + 64);
  v13 = *(a1 + 72);
  v28 = v12;
  v34 = v14;
  v35 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = *(a1 + 40);
  v31 = &v40;
  v15 = *(a1 + 56);
  v16 = *(a1 + 104);
  v36 = *(a1 + 96);
  v37 = v15;
  v38 = v16;
  v39 = v9;
  (*(*v10 + 344))(v10, v27);
  if ((v41[3] & 1) == 0)
  {
    v17 = *(a1 + 64);
    *(v17 + 528) = *(a1 + 56);
    v18 = *(a1 + 40);
    v19 = v18 != 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_480;
    v23[3] = &unk_1E7EF5F40;
    v20 = v18;
    v21 = *(a1 + 96);
    v22 = *(a1 + 48);
    v24 = v20;
    v25 = v22;
    v26 = v21;
    ControllerImpl::safeNotifyAlwaysAsync(v17, v19, v23);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Block_object_dispose(&v40, 8);
  VCLocker::~VCLocker(v44);
}

void ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_2_472(uint64_t a1)
{
  v92 = *MEMORY[0x1E69E9840];
  v2 = (*(**(a1 + 64) + 64))(*(a1 + 64), 0);
  *(*(*(a1 + 48) + 8) + 24) = [v2 setSessionActivationContext:*(a1 + 32)];

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_13:
        v8 = *(a1 + 80);
        v9 = *(a1 + 40);
        v10 = v9 != 0;
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_473;
        v82[3] = &unk_1E7EF5F40;
        v11 = v9;
        v12 = *(a1 + 96);
        v13 = *(a1 + 48);
        v83 = v11;
        v84 = v13;
        v85 = v12;
        ControllerImpl::safeNotifyAlwaysAsync(v8, v10, v82);
        *(*(*(a1 + 56) + 8) + 24) = 1;

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 136315650;
      v87 = "ControllerImpl.mm";
      v88 = 1024;
      v89 = 5835;
      v90 = 1024;
      v91 = v7;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d setContextForStream ERROR: Failed at setSessionActivationContext: %d", buf, 0x18u);
    }

    goto LABEL_13;
  }

  v4 = (*(**(a1 + 64) + 64))(*(a1 + 64), 0);
  *(*(*(a1 + 48) + 8) + 24) = [v4 setSessionCategoryModeOptionsForActivationMode:*(a1 + 104) withOptions:*(a1 + 112)];

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
LABEL_22:
        v18 = *(a1 + 80);
        v19 = *(a1 + 40);
        v20 = v19 != 0;
        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v78[2] = ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_474;
        v78[3] = &unk_1E7EF5F40;
        v21 = v19;
        v22 = *(a1 + 96);
        v23 = *(a1 + 48);
        v79 = v21;
        v80 = v23;
        v81 = v22;
        ControllerImpl::safeNotifyAlwaysAsync(v18, v20, v78);
        *(*(*(a1 + 56) + 8) + 24) = 1;

        return;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v17 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 136315650;
      v87 = "ControllerImpl.mm";
      v88 = 1024;
      v89 = 5846;
      v90 = 1024;
      v91 = v17;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d setContextForStream ERROR: Failed at setSessionCategoryModeOptionsForActivationMode: %d", buf, 0x18u);
    }

    goto LABEL_22;
  }

  v14 = (*(**(a1 + 64) + 64))(*(a1 + 64), 0);
  *(*(*(a1 + 48) + 8) + 24) = [v14 setSessionSampleRateForActivationMode:*(a1 + 104)];

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (kAVVCScope)
    {
      v15 = *kAVVCScope;
      if (!v15)
      {
LABEL_31:
        v28 = *(a1 + 80);
        v29 = *(a1 + 40);
        v30 = v29 != 0;
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_475;
        v74[3] = &unk_1E7EF5F40;
        v31 = v29;
        v32 = *(a1 + 96);
        v33 = *(a1 + 48);
        v75 = v31;
        v76 = v33;
        v77 = v32;
        ControllerImpl::safeNotifyAlwaysAsync(v28, v30, v74);
        *(*(*(a1 + 56) + 8) + 24) = 1;

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v27 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 136315650;
      v87 = "ControllerImpl.mm";
      v88 = 1024;
      v89 = 5857;
      v90 = 1024;
      v91 = v27;
      _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d setContextForStream ERROR: Failed at setSessionSampleRateForActivationMode: %d", buf, 0x18u);
    }

    goto LABEL_31;
  }

  v24 = (*(**(a1 + 64) + 64))(*(a1 + 64), 0);
  *(*(*(a1 + 48) + 8) + 24) = [v24 setSessionAudioHWControlFlagsForActivationMode:*(a1 + 104) withOptions:*(a1 + 112)];

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    if (kAVVCScope)
    {
      v25 = *kAVVCScope;
      if (!v25)
      {
LABEL_39:
        v38 = *(a1 + 80);
        v39 = *(a1 + 40);
        v40 = v39 != 0;
        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_476;
        v70[3] = &unk_1E7EF5F40;
        v41 = v39;
        v42 = *(a1 + 96);
        v43 = *(a1 + 48);
        v71 = v41;
        v72 = v43;
        v73 = v42;
        ControllerImpl::safeNotifyAlwaysAsync(v38, v40, v70);
        *(*(*(a1 + 56) + 8) + 24) = 1;

        return;
      }
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v37 = *(*(*(a1 + 48) + 8) + 24);
      *buf = 136315650;
      v87 = "ControllerImpl.mm";
      v88 = 1024;
      v89 = 5868;
      v90 = 1024;
      v91 = v37;
      _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d setContextForStream ERROR: Failed at setSessionAudioHWControlFlagsForActivationMode: %d", buf, 0x18u);
    }

    goto LABEL_39;
  }

  v34 = *(a1 + 120);
  if (v34 > 1918986610)
  {
    if (v34 != 1987012963)
    {
      v35 = 1918986611;
LABEL_43:
      if (v34 != v35)
      {
        return;
      }
    }
  }

  else if (v34 != 1668314723)
  {
    v35 = 1751414371;
    goto LABEL_43;
  }

  v64 = (*(**(a1 + 64) + 64))(*(a1 + 64), 0);
  if ([v64 isSessionActive])
  {
    v44 = *(a1 + 104);

    if (v44 == 1886352244)
    {
      v45 = (*(**(a1 + 64) + 64))(*(a1 + 64), 0);
      v46 = [v45 getSessionActivationOptions];

      v47 = CALog::LogObjIfEnabled(3, kAVVCScope);
      v48 = v47;
      if (v47 && os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v87 = "ControllerImpl.mm";
        v88 = 1024;
        v89 = 5887;
        v90 = 1024;
        v91 = v46;
        _os_log_impl(&dword_1BA5AC000, v48, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setContextForStream: finish 'live' switch by re-activating active session setActive:TRUE, session options : %d", buf, 0x18u);
      }

      v49 = (*(**(a1 + 64) + 56))(*(a1 + 64), 0);
      v69 = 0;
      v50 = [v49 setActive:1 withOptions:v46 error:&v69];
      v51 = v69;

      if (v50)
      {
        v52 = (*(**(a1 + 64) + 64))(*(a1 + 64), 0);
        [v52 setSessionState:7];

        v53 = CALog::LogObjIfEnabled(3, kAVVCScope);
        v54 = v53;
        if (v53 && os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v87 = "ControllerImpl.mm";
          v88 = 1024;
          v89 = 5897;
          _os_log_impl(&dword_1BA5AC000, v54, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setContextForStream: session re-activated -- calling getSessionProperties", buf, 0x12u);
        }

        *(*(*(a1 + 48) + 8) + 24) = AVVCRecordingEngine::getSessionProperties(*(a1 + 64));
      }

      else
      {
        v55 = CALog::LogObjIfEnabled(1, kAVVCScope);
        v56 = v55;
        if (v55)
        {
          v57 = v55;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v58 = [v51 code];
            *buf = 136315650;
            v87 = "ControllerImpl.mm";
            v88 = 1024;
            v89 = 5889;
            v90 = 1024;
            v91 = v58;
            _os_log_impl(&dword_1BA5AC000, v57, OS_LOG_TYPE_ERROR, "%25s:%-5d setContextForStream : Session re-activation failed with error : %d", buf, 0x18u);
          }
        }

        v59 = *(a1 + 80);
        v60 = *(a1 + 40);
        v61 = v60 != 0;
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_477;
        v65[3] = &unk_1E7EF5DB0;
        v62 = v60;
        v63 = *(a1 + 96);
        v67 = v62;
        v68 = v63;
        v66 = v51;
        ControllerImpl::safeNotifyAlwaysAsync(v59, v61, v65);
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }
    }
  }

  else
  {
  }
}

BOOL areDeviceUIDsSame(NSString *a1, NSString *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 caseInsensitiveCompare:v4] == 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void sub_1BA5C443C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  ElapsedTime::~ElapsedTime(va);
  if (HIDWORD(a12))
  {
    std::recursive_mutex::unlock((a11 + 24));
  }

  _Unwind_Resume(a1);
}

id getAVOutputContextClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAVOutputContextClass(void)::softClass;
  v7 = getAVOutputContextClass(void)::softClass;
  if (!getAVOutputContextClass(void)::softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___ZL23getAVOutputContextClassv_block_invoke;
    v3[3] = &unk_1E7EF6988;
    v3[4] = &v4;
    ___ZL23getAVOutputContextClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BA5C456C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl22setRecordModeForStreamEm27AVVoiceControllerRecordModeU13block_pointerFvmbP7NSErrorE_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v23, *(*(a1 + 40) + 576), *(*(a1 + 40) + 584), *(a1 + 56));
  v2 = v23;
  if (!v23)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 56);
      *buf = 136315650;
      v26 = "ControllerImpl.mm";
      v27 = 1024;
      v28 = 6349;
      v29 = 2048;
      v30 = v7;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d setRecordModeForStream: Cannot find recording engine for streamID(%lu). Returning.", buf, 0x1Cu);
    }

LABEL_20:
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v8 != 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___ZN14ControllerImpl22setRecordModeForStreamEm27AVVoiceControllerRecordModeU13block_pointerFvmbP7NSErrorE_block_invoke_538;
    v20[3] = &unk_1E7EF6590;
    v11 = v8;
    v12 = *(a1 + 56);
    v21 = v11;
    v22 = v12;
    ControllerImpl::safeNotifyAlwaysAsync(v9, v10, v20);

    v3 = v24;
    if (!v24)
    {
      return;
    }

    goto LABEL_11;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3321888768;
  v13[2] = ___ZN14ControllerImpl22setRecordModeForStreamEm27AVVoiceControllerRecordModeU13block_pointerFvmbP7NSErrorE_block_invoke_2;
  v13[3] = &unk_1F384DE68;
  v15 = *(a1 + 56);
  v3 = v24;
  v16 = v23;
  v17 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  v18 = *(a1 + 40);
  v19 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(a1 + 32);
  (*(*v2 + 328))(v2, v13, "setRecordModeForStream_block_invoke");

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v3)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1BA5C4810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (*(v25 - 88))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v25 - 88));
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl22setRecordModeForStreamEm27AVVoiceControllerRecordMode_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZN14ControllerImpl22setRecordModeForStreamEm27AVVoiceControllerRecordMode_block_invoke_2;
  v12[3] = &unk_1E7EF5D60;
  v7 = a1[4];
  v13 = v3;
  v14 = v7;
  v8 = v3;
  v9 = v12;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v21, *(v4 + 8), *(v4 + 16));
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = ___ZN14ControllerImpl22setRecordModeForStreamEm27AVVoiceControllerRecordModeU13block_pointerFvmbP7NSErrorE_block_invoke;
  v15[3] = &unk_1F3848828;
  v10 = v21;
  v17 = v21;
  v18 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v5;
  v11 = v9;
  v16 = v11;
  v20 = v6;
  ControllerImpl::safeWork(v10, v15, "setRecordModeForStream");

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_1BA5C49C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  v26 = *(v24 - 56);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

uint64_t ControllerImpl::setRecordModeForStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN14ControllerImpl22setRecordModeForStreamEm27AVVoiceControllerRecordMode_block_invoke;
  v5[3] = &unk_1E7EF6170;
  v5[6] = a2;
  v5[7] = a3;
  v5[4] = &v6;
  v5[5] = a1;
  makeSynchronous(v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void ___ZN14ControllerImpl22setRecordModeForStreamEm27AVVoiceControllerRecordModeU13block_pointerFvmbP7NSErrorE_block_invoke_2(void *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!isHACProduct() || a1[5] != 32769)
  {
    v8 = a1[6];
    v7 = a1[7];
    if (v8 == v7[41])
    {
      goto LABEL_15;
    }

    if (v8 != 1)
    {
      v11 = 0;
LABEL_13:
      v12 = (*(*v7 + 64))(v7, 0);
      [v12 setClientRequestsRecording:v11];

      v13 = (*(*a1[7] + 288))(a1[7]);
      if (v13)
      {
        v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v13 userInfo:0];
LABEL_28:
        v5 = v14;
LABEL_29:
        v15 = 0;
        goto LABEL_30;
      }

LABEL_15:
      v5 = 0;
      goto LABEL_16;
    }

    v9 = (*(*v7 + 64))(v7, 0);
    v10 = [v9 isSessionActive];

    if (v10)
    {
      v7 = a1[7];
      v11 = a1[6] == 1;
      goto LABEL_13;
    }

    if (kAVVCScope)
    {
      v18 = *kAVVCScope;
      if (!v18)
      {
LABEL_27:
        v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
        goto LABEL_28;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = a1[5];
      *buf = 136315650;
      *v34 = "ControllerImpl.mm";
      *&v34[8] = 1024;
      *&v34[10] = 6387;
      v35 = 1024;
      v36 = v20;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setRecordModeForStream: Switching to Recording mode when session is not active !! streamID(%d)", buf, 0x18u);
    }

    goto LABEL_27;
  }

  v2 = a1[6];
  v3 = (*(*a1[7] + 64))(a1[7], 0);
  v32 = 0;
  v4 = [v3 setIsUsingBuiltInMicForRecording:v2 == 1 error:&v32];
  v5 = v32;

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v16 = *kAVVCScope;
    v17 = CALog::Scope::oslog(*kAVVCScope);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109378;
      *v34 = 0;
      *&v34[4] = 2112;
      *&v34[6] = v5;
      _os_log_fault_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_FAULT, "setIsUsingBuiltInMicForRecording failed: return (%d), error (%@)", buf, 0x12u);
    }

    goto LABEL_29;
  }

  AVVCRecordingEngine::setRecordMode(a1[7], a1[6]);
LABEL_16:
  v15 = 1;
LABEL_30:
  v21 = a1[9];
  v22 = a1[4];
  v23 = v22 != 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = ___ZN14ControllerImpl22setRecordModeForStreamEm27AVVoiceControllerRecordModeU13block_pointerFvmbP7NSErrorE_block_invoke_539;
  v27[3] = &unk_1E7EF6148;
  v24 = v22;
  v25 = a1[5];
  v29 = v24;
  v30 = v25;
  v31 = v15;
  v28 = v5;
  v26 = v5;
  ControllerImpl::safeNotifyAlwaysAsync(v21, v23, v27);
}

uint64_t AVVCKeepAliveImpl_AudioQueue::start(AVVCKeepAliveImpl_AudioQueue *this)
{
  v10 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v5, "startKeepAliveQueue");
  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "AVVCKeepAliveImpl_AudioQueue.mm";
    v8 = 1024;
    v9 = 103;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d About to start keepAliveQueue", buf, 0x12u);
  }

LABEL_8:
  AVVCKeepAliveImpl_AudioQueue::keepHardwareActive(this, 1);
  TraceMethod::~TraceMethod(v5);
  return 0;
}

void AVVCAudioQueueRecordingEngine::handleAudioInput(AVVCAudioQueueRecordingEngine *this, OpaqueAudioQueue *a2, AudioQueueBuffer *a3, const AudioTimeStamp *a4, unsigned int a5, const AudioStreamPacketDescription *a6)
{
  v97 = *MEMORY[0x1E69E9840];
  atomic_fetch_add_explicit(this + 165, 0xFFFFFFFF, memory_order_relaxed);
  v7 = *(this + 159);
  mAudioDataByteSize = a3->mAudioDataByteSize;
  v9 = *(this + 160);
  if (*(this + 872) != 1)
  {
    goto LABEL_22;
  }

  inInputDataProcUserData = 4108;
  inInputDataProcUserData_4 = 0;
  v79 = 0u;
  v80 = 0u;
  kdebug_trace();
  v10 = objc_autoreleasePoolPush();
  v11 = +[AVVCMetricsManager sharedManager];
  [v11 logProfileMetrics:@"AVVC_PROFILE_Prop_FirstBufferReceived"];

  v12 = +[AVVCMetricsManager sharedManager];
  v13 = [v12 retrieveProfileMetrics];

  v14 = +[AVVCMetricsManager sharedManager];
  [v14 resetProfileMetrics];

  objc_autoreleasePoolPop(v10);
  v15 = mach_absolute_time();
  v16 = *(this + 85);
  mHostTime = a4->mHostTime;
  v18 = __udivti3();
  if (mHostTime >= v16)
  {
    v19 = v18;
  }

  else
  {
    v19 = -v18;
  }

  v20 = __udivti3();
  if (v15 >= v16)
  {
    v21 = v20;
  }

  else
  {
    v21 = -v20;
  }

  v22 = v19 / 1000000.0;
  if (!kAVVCScope)
  {
    v23 = MEMORY[0x1E69E9C10];
    v24 = MEMORY[0x1E69E9C10];
LABEL_12:
    v25 = v23;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&outOutputData, *(this + 1), *(this + 2));
      mSampleTime = a4->mSampleTime;
      v26 = a4->mHostTime;
      v28 = *(this + 85);
      buf[0] = 136317186;
      *&buf[1] = "AVVCAudioQueueRecordingEngine.mm";
      v82 = 1024;
      v83 = 1538;
      v84 = 2048;
      v85 = *&outOutputData.mNumberBuffers;
      v86 = 2048;
      v87 = v15;
      v88 = 2048;
      v89 = v26;
      v90 = 2048;
      *v91 = mSampleTime;
      *&v91[8] = 2048;
      v92 = v28;
      v93 = 2048;
      v94 = v21 / 1000000.0;
      v95 = 2048;
      *&v96 = v19 / 1000000.0;
      _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d First callback - AQ engine (%p) - Now:(ht: %llu), BuffStartTime:(ht: %llu st: %f), SiriRequestedStartTime:(ht: %llu). Now-SiriRequestedStartTime: %0.6f ms, BuffStartTime-SiriRequestedStartTime: %0.6f ms.", buf, 0x58u);
      if (*&outOutputData.mBuffers[0].mNumberChannels)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&outOutputData.mBuffers[0].mNumberChannels);
      }
    }

    goto LABEL_16;
  }

  v23 = *kAVVCScope;
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_16:
  v29 = objc_autoreleasePoolPush();
  v30 = +[AVVCMetricsManager sharedManager];
  v31 = [v30 callToStartRecordHostTime];

  v32 = mach_absolute_time();
  ReporterID = AVVCRecordingEngine::getReporterID(this);
  v34 = +[AVVCMetricsManager sharedManager];
  v35 = __udivti3();
  if (v32 >= v31)
  {
    v36 = v35;
  }

  else
  {
    v36 = -v35;
  }

  v37 = [MEMORY[0x1E696AD98] numberWithDouble:v36 / 1000000.0];
  [v34 logSessionMetric:@"avvcStartRecordTime" value:v37 category:2 type:1 reporterID:ReporterID];

  if (*(this + 34) == 1987012963)
  {
    v38 = +[AVVCMetricsManager sharedManager];
    v39 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
    [v38 logSessionMetric:@"avvcVoiceTriggerToRecordTime" value:v39 category:2 type:1 reporterID:ReporterID];
  }

  objc_autoreleasePoolPop(v29);
  *(this + 872) = 0;
  TraceWrapper::~TraceWrapper(&inInputDataProcUserData);
LABEL_22:
  v40 = ((v9 + 7) >> 3) * v7;
  *inNumberPCMFrames = mAudioDataByteSize / v40;
  if (kAVVCScope)
  {
    v41 = *kAVVCScope;
    if (!v41)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v41 = MEMORY[0x1E69E9C10];
    v42 = MEMORY[0x1E69E9C10];
  }

  v43 = v41;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    v44 = a4->mSampleTime;
    v45 = a4->mHostTime;
    v46 = a3->mAudioDataByteSize;
    v47 = *(this + 165);
    buf[0] = 136316674;
    *&buf[1] = "AVVCAudioQueueRecordingEngine.mm";
    v82 = 1024;
    v83 = 1559;
    v84 = 2048;
    v85 = v44;
    v86 = 2048;
    v87 = v45;
    v88 = 2048;
    v89 = mAudioDataByteSize / v40;
    v90 = 1024;
    *v91 = v46;
    *&v91[4] = 1024;
    *&v91[6] = v47;
    _os_log_impl(&dword_1BA5AC000, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d handleRecordAQInput: sample time: %f, host time %llu, %llu frames (%d bytes), %d buffers enqueued", buf, 0x3Cu);
  }

LABEL_29:
  v48 = *(this + 27);
  if (v48 != 6 && v48 > 3 || (*(this + 245) & 1) != 0)
  {
    if (v40 > mAudioDataByteSize)
    {
      if (v48 != 5)
      {
        return;
      }

      if (kAVVCScope)
      {
        v49 = *kAVVCScope;
        if (!v49)
        {
          return;
        }
      }

      else
      {
        v49 = MEMORY[0x1E69E9C10];
        v59 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315394;
        *&buf[1] = "AVVCAudioQueueRecordingEngine.mm";
        v82 = 1024;
        v83 = 1569;
        v56 = "%25s:%-5d handleRecordAQInput: throwing away zero-length buffer";
        v57 = v49;
        v58 = OS_LOG_TYPE_ERROR;
        goto LABEL_52;
      }

      goto LABEL_81;
    }

    *(this + 83) += *inNumberPCMFrames;
    [*(this + 98) setFrameLength:?];
    memcpy(*([*(this + 98) mutableAudioBufferList] + 16), a3->mAudioData, a3->mAudioDataByteSize);
    v50 = *(this + 102);
    if (!v50 || !*(this + 103))
    {
LABEL_68:
      (*(*this + 272))(this, *(this + 9), *(this + 98), 0);
      (*(*this + 272))(this, *(this + 105), *(this + 104), 0);
      if (*(this + 8) == 1819304813)
      {
        if (*(this + 96))
        {
          TraceMethod::TraceMethod(&inInputDataProcUserData, "DeinterleaveAudio");
          operator new[]();
        }

        v65 = *(this + 99);
        if (v65)
        {
          *v65 = 1;
        }

        if (*(this + 102) && *(this + 103))
        {
          v66 = [*(this + 104) audioBufferList];
          v67 = v66;
          *v65 = *(this + 13);
          v65[2] = 1;
          v68 = *(v66 + 12);
          v65[3] = v68;
          v69 = *(this + 100);
          *(v65 + 2) = v69;
          memcpy(v69, *(v67 + 16), v68);
          if (*(this + 13) >= 2u)
          {
            v65[6] = 1;
            v70 = *(v67 + 28);
            v65[7] = v70;
            v71 = (*(this + 100) + *(v67 + 12));
            *(v65 + 4) = v71;
            memcpy(v71, *(v67 + 32), v70);
          }

          AVVCRecordingEngine::audioBufferListReceived(this, v65, *v65, a4->mHostTime);
        }

        AVVCRecordingEngine::audioQueueBufferReceived(this, a3, a4->mHostTime);
      }

      AVVCRecordingEngine::lpcmAudioQueueBufferReceivedForNonLPCMClientFormat(this, a3, a4->mHostTime, (this + 608));
    }

    v51 = *(this + 104);
    v76 = 0;
    v52 = [v50 renderOffline:*inNumberPCMFrames toBuffer:v51 error:&v76];
    v53 = v76;
    if (v52)
    {
      if (kAVVCScope)
      {
        v54 = *kAVVCScope;
        if (!v54)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v54 = MEMORY[0x1E69E9C10];
        v61 = MEMORY[0x1E69E9C10];
      }

      v62 = v54;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        if (v53)
        {
          v63 = [v53 description];
        }

        else
        {
          v63 = &stru_1F384E730;
        }

        buf[0] = 136315650;
        *&buf[1] = "AVVCAudioQueueRecordingEngine.mm";
        v82 = 1024;
        v83 = 1595;
        v84 = 2112;
        v85 = *&v63;
        _os_log_impl(&dword_1BA5AC000, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d handleRecordAQInput: Error in AVAudioEngine renderOffline : %@", buf, 0x1Cu);
        if (v53)
        {
        }
      }
    }

    else
    {
      if (kAVVCScope)
      {
        v60 = *kAVVCScope;
        if (!v60)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v60 = MEMORY[0x1E69E9C10];
        v64 = MEMORY[0x1E69E9C10];
      }

      v62 = v60;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        buf[0] = 136315394;
        *&buf[1] = "AVVCAudioQueueRecordingEngine.mm";
        v82 = 1024;
        v83 = 1593;
        _os_log_impl(&dword_1BA5AC000, v62, OS_LOG_TYPE_DEBUG, "%25s:%-5d handleRecordAQInput: AVAudioEngine renderOffline returned SUCCESS", buf, 0x12u);
      }
    }

LABEL_67:
    goto LABEL_68;
  }

  if (!kAVVCScope)
  {
    v49 = MEMORY[0x1E69E9C10];
    v55 = MEMORY[0x1E69E9C10];
LABEL_47:
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      buf[0] = 136315394;
      *&buf[1] = "AVVCAudioQueueRecordingEngine.mm";
      v82 = 1024;
      v83 = 1563;
      v56 = "%25s:%-5d handleRecordAQInput: record internally stopped, so throwing away buffer";
      v57 = v49;
      v58 = OS_LOG_TYPE_DEBUG;
LABEL_52:
      _os_log_impl(&dword_1BA5AC000, v57, v58, v56, buf, 0x12u);
    }

LABEL_81:

    return;
  }

  v49 = *kAVVCScope;
  if (v49)
  {
    goto LABEL_47;
  }
}

void sub_1BA5C6DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, std::__shared_weak_count *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::__shared_weak_count *a47, uint64_t a48, uint64_t a49, char a50, std::__shared_weak_count *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56)
{
  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  if (v60 && a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  if (a56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a56);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  if (v56)
  {

    if (a47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a47);
    }
  }

  if (a51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a51);
  }

  _Unwind_Resume(a1);
}

uint64_t AVVCAudioQueueRecordingEngine::logAudioCaptures(AVVCAudioQueueRecordingEngine *this, AVVCAudioCapturer *a2, AVAudioBuffer *a3)
{
  v4 = a3;
  if (a2)
  {
    (*(*a2 + 24))(a2, v4, 0);
  }

  return 0;
}

void AVVCRecordingEngine::checkForEndpoint(AVVCRecordingEngine *this, AudioQueueBuffer *a2, float *a3)
{
  v4 = *(this + 27);
  v5 = v4 == 6 || v4 <= 3;
  if (!v5 || *(this + 245) == 1)
  {
    if (*(this + 17))
    {
      (*(*this + 184))(this, *(this + 3));
      if ((*(*(this + 17) + 16))())
      {
        AVVCRecordingEngine::setRecordErrorStatus(this, 0xFFFFD1F3, "checkForEndpoint");
        std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v9, *(this + 1), *(this + 2));
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3321888768;
        v7[2] = ___ZN19AVVCRecordingEngine16checkForEndpointEP16AudioQueueBufferPfj_block_invoke;
        v7[3] = &__block_descriptor_48_ea8_32c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE_e5_v8__0l;
        v6 = v9;
        v7[4] = v9;
        v8 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v6 + 328))(v6, v7, "checkForEndpoint");
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }
    }
  }
}

void sub_1BA5C7388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AVVCAudioQueueRecordingEngine::enableSiriListeningMode(AudioQueueRef *this, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  inData = a2;
  TraceMethod::TraceMethod(v5, "enableSiriListeningMode");
  if (this[75] && this[63] == 1)
  {
    ElapsedTime::ElapsedTime(v7, "enableSiriListeningMode", "AudioQueueSetProperty : kAudioQueueProperty_EnableSiriListening", 0);
    v3 = AudioQueueSetProperty(this[75], 0x6C73746Eu, &inData, 4u);
    ElapsedTime::~ElapsedTime(v7);
  }

  else
  {
    v3 = 0;
  }

  TraceMethod::~TraceMethod(v5);
  return v3;
}

void sub_1BA5C75B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ElapsedTime::~ElapsedTime(va1);
  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

void AVVCRecordingEngine::startedRecording(AVVCRecordingEngine *this)
{
  v19 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v12, "startedRecording");
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v10, *(this + 1), *(this + 2));
  v2 = *(v10 + 224);
  if (v2)
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(v10 + 224) userInfo:0];
  }

  else
  {
    AVVCRecordingEngine::setStreamState(v10, 5);
    v3 = 0;
  }

  v4 = v10;
  *(v10 + 80) = 0;
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _Block_copy(*(this + 11));
    *buf = 136315650;
    v14 = "AVVCRecordingEngine.mm";
    v15 = 1024;
    v16 = 950;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d calling completion block(%p)", buf, 0x1Cu);
  }

  v4 = v10;
LABEL_11:
  v9 = v4[11];
  if (v9)
  {
    (*(v9 + 16))(v9, v4[33], v2 == 0, v4[27], v3);
    v4 = v10;
  }

  (*(*v4 + 288))(v4);

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  TraceMethod::~TraceMethod(v12);
}

void sub_1BA5C77D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

void AVVCAudioQueueRecordingEngine::handleRecordQueuePropertyListener(AVVCAudioQueueRecordingEngine *this, OpaqueAudioQueue *a2, int a3)
{
  v116 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v101, "handleRecordQueuePropertyListener");
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v99, *(this + 1), *(this + 2));
  if (*(this + 27) <= 1)
  {
    p_superclass = AVAudioPCMBuffer.superclass;
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v105 = "AVVCAudioQueueRecordingEngine.mm";
      v106 = 1024;
      v107 = 1405;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d handleRecordAQPropertyChange: queue already destroyed -- noop", buf, 0x12u);
    }

LABEL_14:
    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
        goto LABEL_257;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    v12 = v10;
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
LABEL_83:

      goto LABEL_257;
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v102, *(this + 1), *(this + 2));
    v13 = v102;
    if (v102)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v97, *(this + 1), *(this + 2));
      p_superclass = (*(*v97 + 64))(v97, 0);
      v14 = [p_superclass sessionState];
      v15 = "ILLEGAL";
      if (v14 > 3)
      {
        if (v14 > 5)
        {
          if (v14 == 6)
          {
            v15 = "Activating";
          }

          else if (v14 == 7)
          {
            v15 = "Active";
          }
        }

        else if (v14 == 4)
        {
          v15 = "Deactivating";
        }

        else
        {
          v15 = "Prewarming";
        }

        goto LABEL_29;
      }

      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v15 = "InteruptedWhileRecording";
        }

        else
        {
          v15 = "InteruptedWhilePlaying";
        }

        goto LABEL_29;
      }

      if (v14)
      {
        if (v14 == 1)
        {
          v15 = "Inactive";
        }

        goto LABEL_29;
      }
    }

    v15 = "NotConfigured";
LABEL_29:
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v95, *(this + 1), *(this + 2));
    if (v95)
    {
      v18 = v96;
      if (v96)
      {
        v18 = (v96->__shared_owners_ + 1);
      }

      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v95, *(v95 + 264), v18];
    }

    else
    {
      v19 = @"(0x0) use_count:0";
    }

    v20 = v19;
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v93, *(this + 1), *(this + 2));
    v21 = v93;
    if (v93)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v91, *(this + 1), *(this + 2));
      v22 = (*(*v91 + 296))(v91);
      if (v22 > 4)
      {
        v23 = "ILLEGAL";
      }

      else
      {
        v23 = off_1E7EF6310[v22];
      }
    }

    else
    {
      v23 = "unconfigured";
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v89, *(this + 1), *(this + 2));
    if (v89)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v87, *(this + 1), *(this + 2));
      v35 = *(v87 + 216);
      if (v35 > 6)
      {
        v36 = "ILLEGAL";
      }

      else
      {
        v36 = off_1E7EF6338[v35];
      }

      *buf = 136316418;
      v105 = "AVVCAudioQueueRecordingEngine.mm";
      v106 = 1024;
      v107 = 1406;
      v108 = 2080;
      v109 = v15;
      v110 = 2112;
      v111 = v20;
      v112 = 2080;
      v113 = v23;
      v114 = 2080;
      v115 = v36;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
      if (v88)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v88);
      }
    }

    else
    {
      *buf = 136316418;
      v105 = "AVVCAudioQueueRecordingEngine.mm";
      v106 = 1024;
      v107 = 1406;
      v108 = 2080;
      v109 = v15;
      v110 = 2112;
      v111 = v20;
      v112 = 2080;
      v113 = v23;
      v114 = 2080;
      v115 = "unconfigured";
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
    }

    if (v90)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v90);
    }

    if (v21 && v92)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v92);
    }

    if (v94)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v94);
    }

    if (v96)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v96);
    }

    if (v13)
    {

      if (v98)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v98);
      }
    }

    if (v103)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v103);
    }

    goto LABEL_83;
  }

  if (a3 != 1902343781)
  {
    if (a3 != 1634824814)
    {
      goto LABEL_257;
    }

    v7 = QueueIsRunning(*(this + 75));
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    v8 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v102, *(this + 1), *(this + 2));
      v25 = *(this + 27);
      v26 = v25 > 6 ? "ILLEGAL" : off_1E7EF6338[v25];
      *buf = 136316162;
      v105 = "AVVCAudioQueueRecordingEngine.mm";
      v106 = 1024;
      v107 = 1414;
      v108 = 2048;
      v109 = v102;
      v110 = 2080;
      v111 = v26;
      v112 = 1024;
      LODWORD(v113) = v7;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d handleRecordQueuePropertyListener (%p): Stream State: %s. AQ Running: %d", buf, 0x2Cu);
      if (v103)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v103);
      }
    }

LABEL_88:
    if (v7)
    {
      if (*(this + 27) == 4)
      {
        kdebug_trace();
        if (kAVVCScope)
        {
          if (*(kAVVCScope + 8))
          {
            v37 = *kAVVCScope;
            if (v37)
            {
              v38 = v37;
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v105 = "AVVCAudioQueueRecordingEngine.mm";
                v106 = 1024;
                v107 = 1418;
                _os_log_impl(&dword_1BA5AC000, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d Record Listener: RUNNING", buf, 0x12u);
              }
            }
          }
        }

        AVVCRecordingEngine::startedRecording(v99);
        goto LABEL_257;
      }

      if (kAVVCScope)
      {
        if (*(kAVVCScope + 8))
        {
          v42 = *kAVVCScope;
          if (v42)
          {
            v43 = v42;
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v105 = "AVVCAudioQueueRecordingEngine.mm";
              v106 = 1024;
              v107 = 1422;
              _os_log_impl(&dword_1BA5AC000, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d Record Listener: RUNNING-PAUSED", buf, 0x12u);
            }
          }
        }
      }

      if (kAVVCScope)
      {
        v44 = *kAVVCScope;
        if (!v44)
        {
          goto LABEL_257;
        }
      }

      else
      {
        v44 = MEMORY[0x1E69E9C10];
        v59 = MEMORY[0x1E69E9C10];
      }

      v60 = v44;
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
LABEL_256:

        goto LABEL_257;
      }

      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v102, *(this + 1), *(this + 2));
      v61 = v102;
      if (v102)
      {
        std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v97, *(this + 1), *(this + 2));
        v8 = (*(*v97 + 64))(v97, 0);
        v62 = [v8 sessionState];
        if (v62 > 7)
        {
          v63 = "ILLEGAL";
LABEL_224:
          std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v85, *(this + 1), *(this + 2));
          v72 = engineToString(v85, v86);
          std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v93, *(this + 1), *(this + 2));
          v73 = v93;
          if (v93)
          {
            std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v91, *(this + 1), *(this + 2));
            v74 = (*(*v91 + 296))(v91);
            if (v74 > 4)
            {
              v75 = "ILLEGAL";
            }

            else
            {
              v75 = off_1E7EF6310[v74];
            }
          }

          else
          {
            v75 = "unconfigured";
          }

          std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v89, *(this + 1), *(this + 2));
          if (v89)
          {
            std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v87, *(this + 1), *(this + 2));
            v76 = *(v87 + 216);
            if (v76 > 6)
            {
              v77 = "ILLEGAL";
            }

            else
            {
              v77 = off_1E7EF6338[v76];
            }

            *buf = 136316418;
            v105 = "AVVCAudioQueueRecordingEngine.mm";
            v106 = 1024;
            v107 = 1423;
            v108 = 2080;
            v109 = v63;
            v110 = 2112;
            v111 = v72;
            v112 = 2080;
            v113 = v75;
            v114 = 2080;
            v115 = v77;
            _os_log_impl(&dword_1BA5AC000, v60, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
            if (v88)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v88);
            }
          }

          else
          {
            *buf = 136316418;
            v105 = "AVVCAudioQueueRecordingEngine.mm";
            v106 = 1024;
            v107 = 1423;
            v108 = 2080;
            v109 = v63;
            v110 = 2112;
            v111 = v72;
            v112 = 2080;
            v113 = v75;
            v114 = 2080;
            v115 = "unconfigured";
            _os_log_impl(&dword_1BA5AC000, v60, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
          }

          if (v90)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v90);
          }

          if (v73 && v92)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v92);
          }

          if (v94)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v94);
          }

          if (v86)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v86);
          }

          if (v61)
          {

            if (v98)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v98);
            }
          }

          if (v103)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v103);
          }

          goto LABEL_256;
        }
      }

      else
      {
        v62 = 0;
      }

      v63 = off_1E7EF63F8[v62];
      goto LABEL_224;
    }

    kdebug_trace();
    if (kAVVCScope)
    {
      if (*(kAVVCScope + 8))
      {
        v39 = *kAVVCScope;
        if (v39)
        {
          v40 = v39;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v105 = "AVVCAudioQueueRecordingEngine.mm";
            v106 = 1024;
            v107 = 1428;
            _os_log_impl(&dword_1BA5AC000, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d Record Listener: STOPPED", buf, 0x12u);
          }
        }
      }
    }

    if (kAVVCScope)
    {
      v41 = *kAVVCScope;
      if (!v41)
      {
LABEL_220:
        if (*(this + 27) == 6)
        {
          *(this + 165) = 0;
          *(this + 676) = 0;
          AVVCRecordingEngine::doneRecording(v99);
        }

        goto LABEL_257;
      }
    }

    else
    {
      v41 = MEMORY[0x1E69E9C10];
      v45 = MEMORY[0x1E69E9C10];
    }

    v46 = v41;
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
LABEL_219:

      goto LABEL_220;
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v102, *(this + 1), *(this + 2));
    v47 = v102;
    if (v102)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v97, *(this + 1), *(this + 2));
      v8 = (*(*v97 + 64))(v97, 0);
      v48 = [v8 sessionState];
      v49 = "ILLEGAL";
      if (v48 > 3)
      {
        if (v48 > 5)
        {
          if (v48 == 6)
          {
            v49 = "Activating";
          }

          else if (v48 == 7)
          {
            v49 = "Active";
          }
        }

        else if (v48 == 4)
        {
          v49 = "Deactivating";
        }

        else
        {
          v49 = "Prewarming";
        }

        goto LABEL_179;
      }

      if (v48 > 1)
      {
        if (v48 == 2)
        {
          v49 = "InteruptedWhileRecording";
        }

        else
        {
          v49 = "InteruptedWhilePlaying";
        }

        goto LABEL_179;
      }

      if (v48)
      {
        if (v48 == 1)
        {
          v49 = "Inactive";
        }

        goto LABEL_179;
      }
    }

    v49 = "NotConfigured";
LABEL_179:
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v83, *(this + 1), *(this + 2));
    if (v83)
    {
      v64 = v84;
      if (v84)
      {
        v64 = (v84->__shared_owners_ + 1);
      }

      v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v83, *(v83 + 264), v64];
    }

    else
    {
      v65 = @"(0x0) use_count:0";
    }

    v66 = v65;
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v93, *(this + 1), *(this + 2));
    v67 = v93;
    if (v93)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v91, *(this + 1), *(this + 2));
      v68 = (*(*v91 + 296))(v91);
      if (v68 > 4)
      {
        v69 = "ILLEGAL";
      }

      else
      {
        v69 = off_1E7EF6310[v68];
      }
    }

    else
    {
      v69 = "unconfigured";
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v89, *(this + 1), *(this + 2));
    if (v89)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v87, *(this + 1), *(this + 2));
      v70 = *(v87 + 216);
      if (v70 > 6)
      {
        v71 = "ILLEGAL";
      }

      else
      {
        v71 = off_1E7EF6338[v70];
      }

      *buf = 136316418;
      v105 = "AVVCAudioQueueRecordingEngine.mm";
      v106 = 1024;
      v107 = 1429;
      v108 = 2080;
      v109 = v49;
      v110 = 2112;
      v111 = v66;
      v112 = 2080;
      v113 = v69;
      v114 = 2080;
      v115 = v71;
      _os_log_impl(&dword_1BA5AC000, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
      if (v88)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v88);
      }
    }

    else
    {
      *buf = 136316418;
      v105 = "AVVCAudioQueueRecordingEngine.mm";
      v106 = 1024;
      v107 = 1429;
      v108 = 2080;
      v109 = v49;
      v110 = 2112;
      v111 = v66;
      v112 = 2080;
      v113 = v69;
      v114 = 2080;
      v115 = "unconfigured";
      _os_log_impl(&dword_1BA5AC000, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
    }

    if (v90)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v90);
    }

    if (v67 && v92)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v92);
    }

    if (v94)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v94);
    }

    if (v84)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v84);
    }

    if (v47)
    {

      if (v98)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v98);
      }
    }

    if (v103)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v103);
    }

    goto LABEL_219;
  }

  ioDataSize = 4;
  outData = 0;
  Property = AudioQueueGetProperty(*(this + 75), 0x71637665u, &outData, &ioDataSize);
  if (kAVVCScope)
  {
    v17 = *kAVVCScope;
    if (!v17)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E9C10];
    v27 = MEMORY[0x1E69E9C10];
  }

  v28 = v17;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    CAX4CCString::CAX4CCString(&v102, outData);
    *buf = 136315650;
    v105 = "AVVCAudioQueueRecordingEngine.mm";
    v106 = 1024;
    v107 = 1443;
    v108 = 2080;
    v109 = &v102;
    _os_log_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Record Listener: Converter error: %s", buf, 0x1Cu);
  }

LABEL_46:
  if (kAVVCScope)
  {
    v29 = *kAVVCScope;
    if (!v29)
    {
      goto LABEL_165;
    }
  }

  else
  {
    v29 = MEMORY[0x1E69E9C10];
    v30 = MEMORY[0x1E69E9C10];
  }

  v31 = v29;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v102, *(this + 1), *(this + 2));
    v32 = v102;
    if (v102)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v97, *(this + 1), *(this + 2));
      v78 = (*(*v97 + 64))(v97, 0);
      v33 = [v78 sessionState];
      v34 = "ILLEGAL";
      if (v33 > 3)
      {
        if (v33 > 5)
        {
          if (v33 == 6)
          {
            v34 = "Activating";
          }

          else if (v33 == 7)
          {
            v34 = "Active";
          }
        }

        else if (v33 == 4)
        {
          v34 = "Deactivating";
        }

        else
        {
          v34 = "Prewarming";
        }

        goto LABEL_129;
      }

      if (v33 > 1)
      {
        if (v33 == 2)
        {
          v34 = "InteruptedWhileRecording";
        }

        else
        {
          v34 = "InteruptedWhilePlaying";
        }

        goto LABEL_129;
      }

      if (v33)
      {
        if (v33 == 1)
        {
          v34 = "Inactive";
        }

        goto LABEL_129;
      }
    }

    v34 = "NotConfigured";
LABEL_129:
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v79, *(this + 1), *(this + 2));
    if (v79)
    {
      v50 = v80;
      if (v80)
      {
        v50 = (v80->__shared_owners_ + 1);
      }

      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v79, *(v79 + 264), v50];
    }

    else
    {
      v51 = @"(0x0) use_count:0";
    }

    v52 = v51;
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v93, *(this + 1), *(this + 2));
    v53 = v93;
    if (v93)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v91, *(this + 1), *(this + 2));
      v54 = (*(*v91 + 296))(v91);
      if (v54 > 4)
      {
        v55 = "ILLEGAL";
      }

      else
      {
        v55 = off_1E7EF6310[v54];
      }
    }

    else
    {
      v55 = "unconfigured";
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v89, *(this + 1), *(this + 2));
    if (v89)
    {
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v87, *(this + 1), *(this + 2));
      v56 = *(v87 + 216);
      if (v56 > 6)
      {
        v57 = "ILLEGAL";
      }

      else
      {
        v57 = off_1E7EF6338[v56];
      }

      *buf = 136316418;
      v105 = "AVVCAudioQueueRecordingEngine.mm";
      v106 = 1024;
      v107 = 1444;
      v108 = 2080;
      v109 = v34;
      v110 = 2112;
      v111 = v52;
      v112 = 2080;
      v113 = v55;
      v114 = 2080;
      v115 = v57;
      _os_log_impl(&dword_1BA5AC000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
      if (v88)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v88);
      }
    }

    else
    {
      *buf = 136316418;
      v105 = "AVVCAudioQueueRecordingEngine.mm";
      v106 = 1024;
      v107 = 1444;
      v108 = 2080;
      v109 = v34;
      v110 = 2112;
      v111 = v52;
      v112 = 2080;
      v113 = v55;
      v114 = 2080;
      v115 = "unconfigured";
      _os_log_impl(&dword_1BA5AC000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
    }

    if (v90)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v90);
    }

    if (v53 && v92)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v92);
    }

    if (v94)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v94);
    }

    if (v80)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v80);
    }

    if (v32)
    {

      if (v98)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v98);
      }
    }

    if (v103)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v103);
    }
  }

LABEL_165:
  if (!Property && (*(this + 752) & 1) == 0)
  {
    v58 = *(this + 15);
    if (v58)
    {
      (*(v58 + 16))(v58, outData);
    }

    *(this + 752) = 1;
  }

LABEL_257:
  if (v100)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v100);
  }

  TraceMethod::~TraceMethod(v101);
}

void sub_1BA5C8BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, std::__shared_weak_count *a33, ...)
{
  va_start(va, a33);
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (v37 && a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (v36)
  {

    if (a31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a31);
    }
  }

  v40 = *(v38 - 184);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (a33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a33);
  }

  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

void AVVCKeepAliveImpl_AudioQueue::keepHardwareActive(AVVCKeepAliveImpl_AudioQueue *this, int a2)
{
  v48 = *MEMORY[0x1E69E9840];
  ElapsedTime::ElapsedTime(v47, "keepHardwareActive", 0, 0);
  TraceMethod::TraceMethod(v32, "keepHardwareActive");
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "false";
    v40 = "AVVCKeepAliveImpl_AudioQueue.mm";
    *buf = 136315650;
    if (a2)
    {
      v6 = "true";
    }

    v41 = 1024;
    v42 = 61;
    v43 = 2080;
    v44 = v6;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d keep-alive _keepHardwareActive: %s", buf, 0x1Cu);
  }

LABEL_10:
  if (!*(this + 1))
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_77;
    }

    *buf = 136315394;
    v40 = "AVVCKeepAliveImpl_AudioQueue.mm";
    v41 = 1024;
    v42 = 94;
    v16 = "%25s:%-5d keep-alive keepHardwareActive: queue is null -- noop";
    v17 = v9;
    v18 = OS_LOG_TYPE_DEFAULT;
    v19 = 18;
    goto LABEL_76;
  }

  ElapsedTime::ElapsedTime(buf, "keepHardwareActive", "keepHardwareActive: queue running check", 0);
  v7 = QueueIsRunning(*(this + 1));
  ElapsedTime::~ElapsedTime(buf);
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "FALSE";
    if (a2)
    {
      v11 = "TRUE";
    }

    v40 = "AVVCKeepAliveImpl_AudioQueue.mm";
    v41 = 1024;
    v42 = 71;
    v12 = "Running";
    *buf = 136315906;
    v44 = v11;
    v43 = 2080;
    if (!v7)
    {
      v12 = "Not Running";
    }

    v45 = 2080;
    v46 = v12;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVC keep-alive state : makeActive - %s : QueueRuning - %s", buf, 0x26u);
  }

LABEL_25:
  if (!(v7 & 1 | ((a2 & 1) == 0)))
  {
    ElapsedTime::ElapsedTime(buf, "keepHardwareActive", "mKeepAliveQueue: AudioQueueStart", 0);
    v13 = AudioQueueStart(*(this + 1), 0);
    if (v13)
    {
      if (kAVVCScope)
      {
        v14 = *kAVVCScope;
        if (!v14)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_60;
      }

      *v33 = 136315650;
      v34 = "AVVCKeepAliveImpl_AudioQueue.mm";
      v35 = 1024;
      v36 = 79;
      v37 = 1024;
      v38 = v13;
      v21 = "%25s:%-5d AVVC started keep-alive queue but failed (%d)";
      v22 = v14;
      v23 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (kAVVCScope)
      {
        v14 = *kAVVCScope;
        if (!v14)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v24 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_60;
      }

      *v33 = 136315650;
      v34 = "AVVCKeepAliveImpl_AudioQueue.mm";
      v35 = 1024;
      v36 = 81;
      v37 = 1024;
      v38 = 0;
      v21 = "%25s:%-5d AVVC started keep-alive queue (%d)";
      v22 = v14;
      v23 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(&dword_1BA5AC000, v22, v23, v21, v33, 0x18u);
    goto LABEL_60;
  }

  if (a2 & 1) != 0 || ((v7 ^ 1))
  {
    goto LABEL_78;
  }

  ElapsedTime::ElapsedTime(buf, "keepHardwareActive", "mKeepAliveQueue: AudioQueueStop", 0);
  v13 = AudioQueueStop(*(this + 1), 1u);
  if (v13)
  {
    if (kAVVCScope)
    {
      v14 = *kAVVCScope;
      if (!v14)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v33 = 136315650;
      v34 = "AVVCKeepAliveImpl_AudioQueue.mm";
      v35 = 1024;
      v36 = 87;
      v37 = 1024;
      v38 = v13;
      v26 = "%25s:%-5d AVVC stopped keep-alive queue but failed (%d)";
      v27 = v14;
      v28 = OS_LOG_TYPE_ERROR;
LABEL_59:
      _os_log_impl(&dword_1BA5AC000, v27, v28, v26, v33, 0x18u);
      goto LABEL_60;
    }

    goto LABEL_60;
  }

  if (!kAVVCScope)
  {
    v14 = MEMORY[0x1E69E9C10];
    v29 = MEMORY[0x1E69E9C10];
LABEL_57:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *v33 = 136315650;
      v34 = "AVVCKeepAliveImpl_AudioQueue.mm";
      v35 = 1024;
      v36 = 89;
      v37 = 1024;
      v38 = 0;
      v26 = "%25s:%-5d AVVC stopped keep-alive queue (%d)";
      v27 = v14;
      v28 = OS_LOG_TYPE_DEBUG;
      goto LABEL_59;
    }

LABEL_60:

    goto LABEL_61;
  }

  v14 = *kAVVCScope;
  if (v14)
  {
    goto LABEL_57;
  }

LABEL_61:
  ElapsedTime::~ElapsedTime(buf);
  if (v13)
  {
    if ((v13 + 199999) > 0x61A7E)
    {
      if (kAVVCScope)
      {
        v9 = *kAVVCScope;
        if (!v9)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v31 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_77;
      }

      *buf = 136315650;
      v40 = "AVVCKeepAliveImpl_AudioQueue.mm";
      v41 = 1024;
      v42 = 91;
      v43 = 1024;
      LODWORD(v44) = v13;
      v16 = "%25s:%-5d ERROR: _keepHardwareActive: AudioQueueStart/Stop err %{audio:4CC}d";
    }

    else
    {
      if (kAVVCScope)
      {
        v9 = *kAVVCScope;
        if (!v9)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v30 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_77;
      }

      *buf = 136315650;
      v40 = "AVVCKeepAliveImpl_AudioQueue.mm";
      v41 = 1024;
      v42 = 91;
      v43 = 1024;
      LODWORD(v44) = v13;
      v16 = "%25s:%-5d ERROR: _keepHardwareActive: AudioQueueStart/Stop err %d";
    }

    v17 = v9;
    v18 = OS_LOG_TYPE_ERROR;
    v19 = 24;
LABEL_76:
    _os_log_impl(&dword_1BA5AC000, v17, v18, v16, buf, v19);
LABEL_77:
  }

LABEL_78:
  TraceMethod::~TraceMethod(v32);
  ElapsedTime::~ElapsedTime(v47);
}

void sub_1BA5C95B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  ElapsedTime::~ElapsedTime(&a15);
  TraceMethod::~TraceMethod(&a10);
  ElapsedTime::~ElapsedTime(va);
  _Unwind_Resume(a1);
}

void ___ZN19AVVCRecordingEngine19dispatchAndSafeWorkEU13block_pointerFvvEPKc_block_invoke(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  if (!v2)
  {
    v3 = 0;
    goto LABEL_10;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3 || (v4 = a1[5]) == 0)
  {
LABEL_10:
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315650;
      v11 = "AVVCRecordingEngine.mm";
      v12 = 1024;
      v13 = 1111;
      v14 = 2048;
      v15 = 0;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (engine: %p). Bailing", &v10, 0x1Cu);
    }

LABEL_17:
    if (!v3)
    {
      return;
    }

    goto LABEL_18;
  }

  std::recursive_mutex::lock((v4 + 528));
  if (*(v4 + 512) == 1)
  {
    v5 = *kAVVCScope;
    v6 = CALog::Scope::oslog(*kAVVCScope);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v9 = a1[7];
      v10 = 136315138;
      v11 = v9;
      _os_log_fault_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_FAULT, "Warning: Trying to do safeWork on engine work queue while in tearDown. Caller: %s", &v10, 0xCu);
    }
  }

  (*(a1[4] + 16))();
  std::recursive_mutex::unlock((v4 + 528));
LABEL_18:
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void sub_1BA5C97A8(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock((v2 + 528));
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_40c44_ZTSNSt3__18weak_ptrI19AVVCRecordingEngineEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void __destroy_helper_block_ea8_32c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t AVVCRecordingEngine::setRecordBufferDuration(AVVCRecordingEngine *this, double a2)
{
  v21 = *MEMORY[0x1E69E9840];
  TraceMethod::TraceMethod(v14, "setRecordBufferDuration");
  if (*(this + 27) < 4)
  {
    if (*(this + 32) == a2)
    {
LABEL_24:
      v5 = 0;
      goto LABEL_30;
    }

    if (a2 >= 0.01)
    {
LABEL_22:
      *(this + 32) = a2;
      if (kAVVCScope)
      {
        v4 = *kAVVCScope;
        if (!v4)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v4 = MEMORY[0x1E69E9C10];
        v11 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(this + 32);
        *buf = 136315650;
        v16 = "AVVCRecordingEngine.mm";
        v17 = 1024;
        v18 = 436;
        v19 = 2048;
        v20 = v12;
        _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d setRecordBufferDuration: duration now %.3f", buf, 0x1Cu);
      }

      v5 = 0;
      goto LABEL_29;
    }

    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_21:
        a2 = 0.01;
        goto LABEL_22;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v16 = "AVVCRecordingEngine.mm";
      v17 = 1024;
      v18 = 418;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d setRecordBufferDuration: specified buffer duration too small -- setting to minimum allowed", buf, 0x12u);
    }

    goto LABEL_21;
  }

  if (!kAVVCScope)
  {
    v4 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
    goto LABEL_11;
  }

  v4 = *kAVVCScope;
  if (v4)
  {
LABEL_11:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = *(this + 27);
      if (v8 > 6)
      {
        v9 = "ILLEGAL";
      }

      else
      {
        v9 = off_1E7EF6338[v8];
      }

      *buf = 136315650;
      v16 = "AVVCRecordingEngine.mm";
      v17 = 1024;
      v18 = 410;
      v19 = 2080;
      v20 = v9;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d setRecordBufferDuration: Attempting to setRecordBufferDuration while record is active. Stream State(%s)", buf, 0x1Cu);
    }

    v5 = 4294955516;
LABEL_29:

    goto LABEL_30;
  }

  v5 = 4294955516;
LABEL_30:
  TraceMethod::~TraceMethod(v14);
  return v5;
}

_BYTE *RecordLock::RecordLock(_BYTE *a1, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  VCLocker::VCLocker(a1, a2, 1u);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  return a1;
}

void sub_1BA5C9AFC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AVVCAudioQueueRecordingEngine::prepareRecording(AVVCAudioQueueRecordingEngine *this, NSDictionary *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  TraceMethod::TraceMethod(v21, "prepareRecording");
  Recorder = AVVCRecordingEngine::setupASBDAndCreateRecorder(this, v3);
  v5 = Recorder;
  if (Recorder == -66680)
  {
    v5 = 4294955506;
    goto LABEL_38;
  }

  if (!Recorder)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    v8 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = AVVCRouteManager::getRecordDeviceUID(*(this + 46));
      *buf = 136315650;
      v23 = "AVVCAudioQueueRecordingEngine.mm";
      v24 = 1024;
      v25 = 936;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Device is built in device (%@)- update channel count", buf, 0x1Cu);
    }

LABEL_11:
    v5 = AVVCAudioQueueRecordingEngine::setupDSPGraph(this);
    if (v5)
    {
      goto LABEL_38;
    }

    v10 = *(this + 102);
    if (v10 && *(this + 103))
    {
      *(this + 9) |= 0x20u;
    }

    *buf = 0;
    if (CAStreamBasicDescription::IdentifyCommonPCMFormat(this + 152, buf) && *buf == 1)
    {
      v11 = 1;
      if (!v10)
      {
LABEL_25:
        if ((*(this + 36) & 0x20) != 0)
        {
          v17 = *(this + 159);
        }

        else
        {
          v17 = 0;
        }

        if (*(this + 102) && *(this + 103))
        {
          v17 += 2;
        }

        if (v17)
        {
          v18 = *(this + 99);
          if (v18)
          {
            MEMORY[0x1BFAF57D0](v18, 0x1000C8077774924);
            *(this + 99) = 0;
          }

          v19 = *(this + 100);
          if (v19)
          {
            free(v19);
            *(this + 100) = 0;
          }

          operator new[]();
        }

        AVVCRecordingEngine::setStreamState(this, 2);
        v5 = 0;
        goto LABEL_38;
      }
    }

    else
    {
      *buf = 0;
      v12 = CAStreamBasicDescription::IdentifyCommonPCMFormat(this + 152, buf);
      if ((v12 & (*buf == 2)) != 0)
      {
        v11 = 3;
      }

      else
      {
        v11 = 0;
      }

      if (!v10)
      {
        goto LABEL_25;
      }
    }

    if (*(this + 103))
    {
      v13 = [[AVAudioChannelLayout alloc] initWithLayoutTag:9633794];
      v14 = [[AVAudioFormat alloc] initWithCommonFormat:v11 sampleRate:0 interleaved:v13 channelLayout:*(this + 3)];
      v15 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:v14 frameCapacity:*(this + 202)];
      v16 = *(this + 104);
      *(this + 104) = v15;
    }

    goto LABEL_25;
  }

LABEL_38:
  TraceMethod::~TraceMethod(v21);

  return v5;
}

void sub_1BA5C9E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

uint64_t AVVCRecordingEngine::setupASBDAndCreateRecorder(AVVCRecordingEngine *this, NSDictionary *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a2;
  ProfileMetrics(&cfstr_AvvcProfilePro_2.isa);
  if (!v3)
  {
    v4 = (*(*this + 16))(this, 0, this + 24);
    if (v4)
    {
      goto LABEL_81;
    }

    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v48 = "AVVCRecordingEngine.mm";
      v49 = 1024;
      v50 = 155;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Settings are nil, rebuilding queue", buf, 0x12u);
    }

LABEL_49:
    if (kAVVCScope)
    {
      v23 = *kAVVCScope;
      if (!v23)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    v25 = v23;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      CAStreamBasicDescription::AsString((this + 24), buf, 0x100uLL, v26, v27);
      LODWORD(v46.var0) = 136315650;
      *(&v46.var0 + 4) = "AVVCRecordingEngine.mm";
      LOWORD(v46.var2) = 1024;
      *(&v46.var2 + 2) = 157;
      HIWORD(v46.var3) = 2080;
      *&v46.var4 = buf;
      _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d prepareRecord: NEW FORMAT: %s", &v46, 0x1Cu);
    }

LABEL_56:
    LODWORD(v46.var0) = 4102;
    BYTE4(v46.var0) = 1;
    memset(&v46.var1, 0, 32);
    kdebug_trace();
    v4 = (*(*this + 24))(this, 0);
    TraceWrapper::~TraceWrapper(&v46);
    if (!v4)
    {
      goto LABEL_80;
    }

    if ((v4 + 199999) >= 0x61A7F)
    {
      if (kAVVCScope)
      {
        v28 = *kAVVCScope;
        if (!v28)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v28 = MEMORY[0x1E69E9C10];
        v34 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      LODWORD(v46.var0) = 136315650;
      *(&v46.var0 + 4) = "AVVCRecordingEngine.mm";
      LOWORD(v46.var2) = 1024;
      *(&v46.var2 + 2) = 163;
      HIWORD(v46.var3) = 1024;
      v46.var4 = v4;
      v33 = "%25s:%-5d ERROR: prepareRecord: createRecordQueue err %{audio:4CC}d";
    }

    else
    {
      if (kAVVCScope)
      {
        v28 = *kAVVCScope;
        if (!v28)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v28 = MEMORY[0x1E69E9C10];
        v32 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      LODWORD(v46.var0) = 136315650;
      *(&v46.var0 + 4) = "AVVCRecordingEngine.mm";
      LOWORD(v46.var2) = 1024;
      *(&v46.var2 + 2) = 163;
      HIWORD(v46.var3) = 1024;
      v46.var4 = v4;
      v33 = "%25s:%-5d ERROR: prepareRecord: createRecordQueue err %d";
    }

    _os_log_impl(&dword_1BA5AC000, v28, OS_LOG_TYPE_ERROR, v33, &v46, 0x18u);
LABEL_79:

    goto LABEL_80;
  }

  memset(&v46, 0, sizeof(v46));
  v4 = (*(*this + 16))(this, v3, &v46);
  if (!v4)
  {
    if (*(this + 3) == v46.var0 && *(this + 8) == v46.var1 && *(this + 9) == v46.var2 && *(this + 13) == v46.var6)
    {
      if (!*(this + 56))
      {
        goto LABEL_37;
      }

      if (kAVVCScope)
      {
        v5 = *kAVVCScope;
        if (!v5)
        {
LABEL_86:
          v38 = +[AVVCMetricsManager sharedManager];
          v39 = [MEMORY[0x1E696AD98] numberWithInt:*(this + 56)];
          [v38 logSessionMetric:@"avvcDestroyRecordQueueOnError" value:v39 category:2 type:5 reporterID:AVVCRecordingEngine::getReporterID(this)];

          AVVCRecordingEngine::destroyRecordEngineWithRecordLock(*(this + 18));
LABEL_37:
          v20 = (*(*this + 24))(this, v3);
          v4 = v20;
          if (v20)
          {
            if ((v20 + 199999) >= 0x61A7F)
            {
              if (kAVVCScope)
              {
                v21 = *kAVVCScope;
                if (!v21)
                {
                  goto LABEL_80;
                }
              }

              else
              {
                v21 = MEMORY[0x1E69E9C10];
                v31 = MEMORY[0x1E69E9C10];
              }

              if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_71;
              }

              *buf = 136315650;
              v48 = "AVVCRecordingEngine.mm";
              v49 = 1024;
              v50 = 193;
              v51 = 1024;
              v52 = v4;
              v30 = "%25s:%-5d ERROR: prepareRecord: createRecordQueue err %{audio:4CC}d";
            }

            else
            {
              if (kAVVCScope)
              {
                v21 = *kAVVCScope;
                if (!v21)
                {
                  goto LABEL_80;
                }
              }

              else
              {
                v21 = MEMORY[0x1E69E9C10];
                v29 = MEMORY[0x1E69E9C10];
              }

              if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_71;
              }

              *buf = 136315650;
              v48 = "AVVCRecordingEngine.mm";
              v49 = 1024;
              v50 = 193;
              v51 = 1024;
              v52 = v4;
              v30 = "%25s:%-5d ERROR: prepareRecord: createRecordQueue err %d";
            }

            _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_ERROR, v30, buf, 0x18u);
LABEL_71:
          }

LABEL_80:
          ProfileMetrics(&cfstr_AvvcProfilePro_3.isa);
          goto LABEL_81;
        }
      }

      else
      {
        v5 = MEMORY[0x1E69E9C10];
        v36 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(this + 56);
        *buf = 136315650;
        v48 = "AVVCRecordingEngine.mm";
        v49 = 1024;
        v50 = 185;
        v51 = 1024;
        v52 = v37;
        _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d destroying engine because of record error: %d", buf, 0x18u);
      }

      goto LABEL_86;
    }

    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v48 = "AVVCRecordingEngine.mm";
      v49 = 1024;
      v50 = 173;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Formats differ, rebuilding queue", buf, 0x12u);
    }

LABEL_22:
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    v11 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      CAStreamBasicDescription::AsString((this + 24), buf, 0x100uLL, v12, v13);
      v40 = 136315650;
      v41 = "AVVCRecordingEngine.mm";
      v42 = 1024;
      v43 = 175;
      v44 = 2080;
      v45 = buf;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d prepareRecord: CURRENT FORMAT: %s", &v40, 0x1Cu);
    }

LABEL_29:
    if (kAVVCScope)
    {
      v14 = *kAVVCScope;
      if (!v14)
      {
LABEL_36:
        AVVCRecordingEngine::destroyRecordEngineWithRecordLock(*(this + 18));
        v19 = *&v46.var3;
        *(this + 24) = *&v46.var0;
        *(this + 40) = v19;
        *(this + 7) = *&v46.var7;
        goto LABEL_37;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    v16 = v14;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      CAStreamBasicDescription::AsString(&v46, buf, 0x100uLL, v17, v18);
      v40 = 136315650;
      v41 = "AVVCRecordingEngine.mm";
      v42 = 1024;
      v43 = 176;
      v44 = 2080;
      v45 = buf;
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d prepareRecord: NEW FORMAT: %s", &v40, 0x1Cu);
    }

    goto LABEL_36;
  }

LABEL_81:

  return v4;
}

uint64_t AVVCAudioQueueRecordingEngine::asbdForClientSettings(AVVCAudioQueueRecordingEngine *this, NSDictionary *a2, AudioStreamBasicDescription *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = (*(*this + 64))(this, 0);
  [v6 speechDetectionDeviceSampleRate];
  v8 = v7;

  if (v8 != 0.0)
  {
    (*(*this + 40))(this, v8);
    if (!v5)
    {
      v36[1] = 1;
      UpdateWithHardwareDeviceNumInputChannels(&v36[1]);
      v15 = 0;
      v16 = v36[1];
      a3->mSampleRate = 16000.0;
      *&a3->mFormatID = xmmword_1BA6CF430;
      a3->mBytesPerFrame = 0;
      a3->mChannelsPerFrame = v16;
      *&a3->mBitsPerChannel = 0;
      goto LABEL_63;
    }

    v10 = [(NSDictionary *)v5 mutableCopy];
    v35 = 16000.0;
    if (getFloat64ForKey(v10, &v35, v36, v11))
    {
      v12 = v35;
      if (v35 < 16000.0)
      {
        if (kAVVCScope)
        {
          v13 = *kAVVCScope;
          if (!v13)
          {
LABEL_31:
            v35 = 16000.0;
            goto LABEL_36;
          }
        }

        else
        {
          v13 = MEMORY[0x1E69E9C10];
          v19 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v36[1] = 136315650;
          v37 = "AVVCAudioQueueRecordingEngine.mm";
          v38 = 1024;
          v39 = 251;
          v40 = 2048;
          v41 = v12;
          _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d clientRequestedSR was:%.2f, setting to 16000.00", &v36[1], 0x1Cu);
        }

        goto LABEL_31;
      }

      if (kAVVCScope)
      {
        v17 = *kAVVCScope;
        if (!v17)
        {
LABEL_36:
          v21 = [MEMORY[0x1E696AD98] numberWithDouble:{v35, *&v35}];
          [(NSDictionary *)v10 setObject:v21 forKeyedSubscript:@"AVSampleRateKey"];

          v22 = (*(*this + 64))(this, 0);
          v15 = asbdFromSettings(v10, a3, v22, v24, v23);
          v36[0] = v15;
          v25 = IsDSPGraphSupported();
          if (*(this + 33) == 1)
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }

          if (v26 != 1)
          {
LABEL_46:
            if (!v15)
            {
LABEL_62:

              goto LABEL_63;
            }

            if ((v15 + 199999) > 0x61A7E)
            {
              if (kAVVCScope)
              {
                v30 = *kAVVCScope;
                if (!v30)
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v30 = MEMORY[0x1E69E9C10];
                v33 = MEMORY[0x1E69E9C10];
              }

              if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_61;
              }

              v36[1] = 136315650;
              v37 = "AVVCAudioQueueRecordingEngine.mm";
              v38 = 1024;
              v39 = 279;
              v40 = 1024;
              LODWORD(v41) = v15;
              v32 = "%25s:%-5d ERROR: setupRecordQueue: asbdFromSettings err %{audio:4CC}d";
            }

            else
            {
              if (kAVVCScope)
              {
                v30 = *kAVVCScope;
                if (!v30)
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v30 = MEMORY[0x1E69E9C10];
                v31 = MEMORY[0x1E69E9C10];
              }

              if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_61;
              }

              v36[1] = 136315650;
              v37 = "AVVCAudioQueueRecordingEngine.mm";
              v38 = 1024;
              v39 = 279;
              v40 = 1024;
              LODWORD(v41) = v15;
              v32 = "%25s:%-5d ERROR: setupRecordQueue: asbdFromSettings err %d";
            }

            _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_ERROR, v32, &v36[1], 0x18u);
LABEL_61:

            v15 = v36[0];
            goto LABEL_62;
          }

          mFormatFlags = a3->mFormatFlags;
          if ((mFormatFlags & 0x20) != 0)
          {
            mChannelsPerFrame = 1;
          }

          else
          {
            mChannelsPerFrame = a3->mChannelsPerFrame;
            if (!mChannelsPerFrame)
            {
              v29 = (a3->mBitsPerChannel + 7) >> 3;
LABEL_45:
              a3->mBytesPerFrame = v29;
              a3->mChannelsPerFrame = 2;
              a3->mBytesPerPacket = v29;
              a3->mFramesPerPacket = 1;
              a3->mFormatFlags = mFormatFlags | 0x20;
              goto LABEL_46;
            }
          }

          v29 = a3->mBytesPerFrame / mChannelsPerFrame;
          goto LABEL_45;
        }
      }

      else
      {
        v17 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v36[1] = 136315650;
        v37 = "AVVCAudioQueueRecordingEngine.mm";
        v38 = 1024;
        v39 = 255;
        v40 = 2048;
        v41 = v12;
        _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d clientRequestedSR was:%.2f", &v36[1], 0x1Cu);
      }
    }

    else
    {
      if (kAVVCScope)
      {
        v17 = *kAVVCScope;
        if (!v17)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v17 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v36[1] = 136315394;
        v37 = "AVVCAudioQueueRecordingEngine.mm";
        v38 = 1024;
        v39 = 259;
        _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d clientRequestedSR was not specified, setting to 16000.00", &v36[1], 0x12u);
      }
    }

    goto LABEL_36;
  }

  if (!kAVVCScope)
  {
    v9 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
    goto LABEL_12;
  }

  v9 = *kAVVCScope;
  if (v9)
  {
LABEL_12:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v36[1] = 136315394;
      v37 = "AVVCAudioQueueRecordingEngine.mm";
      v38 = 1024;
      v39 = 219;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Error getting input hardware sample rate", &v36[1], 0x12u);
    }
  }

  v15 = 4294955511;
LABEL_63:

  return v15;
}

uint64_t ControllerImpl::setupAlert(uint64_t a1, void *a2, int a3, void *a4)
{
  v100 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v93 = a3;
  outExtAudioFile = 0;
  ioPropertyDataSize = 0;
  inBuffer = 0;
  v90 = 0;
  v88 = 0;
  memset(outPropertyData, 0, sizeof(outPropertyData));
  TraceMethod::TraceMethod(v86, "setupAlert");
  if (isDarwinOSProduct(void)::onceToken != -1)
  {
    dispatch_once(&isDarwinOSProduct(void)::onceToken, &__block_literal_global_164);
  }

  if (isDarwinOSProduct(void)::isDarwinOS)
  {
    v8 = 0;
    goto LABEL_108;
  }

  if (!a4)
  {
    if (kAVVCScope)
    {
      v14 = *kAVVCScope;
      if (!v14)
      {
LABEL_18:
        v8 = 4294967246;
        goto LABEL_108;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "ControllerImpl.mm";
      LOWORD(v99) = 1024;
      *(&v99 + 2) = 2180;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d setupAlert: NULL alert URL", buf, 0x12u);
    }

    goto LABEL_18;
  }

  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(v95, *(a1 + 8), *(a1 + 16));
  v9 = a4;
  v10 = [v9 absoluteString];
  v11 = [v10 isEqualToString:@"/System/Library/PrivateFrameworks/AssistantServices.framework/jbl_begin_sae.caf"];

  if (!v11)
  {
    goto LABEL_40;
  }

  v12 = (a1 + 384);
  if (!*(a1 + 384))
  {
    v16 = [MEMORY[0x1E696AAE8] mainBundle];
    v17 = [v16 pathForResource:@"siri_activation" ofType:@"plist"];

    v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfFile:v17];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v9, *MEMORY[0x1E695A898], v18, *MEMORY[0x1E695A8A8], 0}];
    SystemSoundIDWithOptions = AudioServicesCreateSystemSoundIDWithOptions();
    if (!SystemSoundIDWithOptions)
    {
      if (kAVVCScope)
      {
        v24 = *kAVVCScope;
        if (!v24)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v24 = MEMORY[0x1E69E9C10];
        v26 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *v12;
        *buf = 136315650;
        *&buf[4] = "ControllerImpl.mm";
        LOWORD(v99) = 1024;
        *(&v99 + 2) = 1626;
        WORD3(v99) = 1024;
        DWORD2(v99) = v27;
        _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d createSAESystemSound: mSAESystemSoundID(%u)", buf, 0x18u);
      }

      goto LABEL_39;
    }

    if (kAVVCScope)
    {
      v21 = *kAVVCScope;
      if (!v21)
      {
LABEL_34:
        *v12 = 0;
LABEL_39:

        goto LABEL_40;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      LOWORD(v99) = 1024;
      *(&v99 + 2) = 1623;
      WORD3(v99) = 1024;
      DWORD2(v99) = SystemSoundIDWithOptions;
      _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d createSAESystemSound: AudioServicesCreateSystemSoundIDWithOptions: Failed to create SAE sonics+haptics system sound. err(%d)", buf, 0x18u);
    }

    goto LABEL_34;
  }

  if (kAVVCScope)
  {
    v13 = *kAVVCScope;
    if (!v13)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *v12;
    *buf = 136315650;
    *&buf[4] = "ControllerImpl.mm";
    LOWORD(v99) = 1024;
    *(&v99 + 2) = 1612;
    WORD3(v99) = 1024;
    DWORD2(v99) = v23;
    _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d createSAESystemSound: SystemSoundID was already created. mSAESystemSoundID(%u)", buf, 0x18u);
  }

LABEL_40:
  if (*&v95[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v95[8]);
  }

  v28 = v7;
  TraceMethod::TraceMethod(v95, "createAlertQueue");
  if (ControllerImpl::getAlertQueueFromImplQueue(a1))
  {
    v8 = 0;
    goto LABEL_68;
  }

  *(a1 + 216) = 0x40CF400000000000;
  *(a1 + 224) = xmmword_1BA6CF350;
  *(a1 + 240) = 0x100000002;
  *(a1 + 248) = 16;
  v29 = *(*(a1 + 192) + 128);
  outAQ = 0;
  v30 = AudioQueueNewOutput((a1 + 216), ControllerImpl::AlertAQOutputCallback, v28, v29, 0, 0, &outAQ);
  v8 = v30;
  if (v30)
  {
    if ((v30 + 199999) >= 0x61A7F)
    {
      if (kAVVCScope)
      {
        v31 = *kAVVCScope;
        if (!v31)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v31 = MEMORY[0x1E69E9C10];
        v35 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_66;
      }

      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      LOWORD(v99) = 1024;
      *(&v99 + 2) = 2063;
      WORD3(v99) = 1024;
      DWORD2(v99) = v8;
      v34 = "%25s:%-5d ERROR: createAlertQueue: AudioQueueNewOutput err %{audio:4CC}d";
    }

    else
    {
      if (kAVVCScope)
      {
        v31 = *kAVVCScope;
        if (!v31)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v31 = MEMORY[0x1E69E9C10];
        v33 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
LABEL_66:

LABEL_67:
        ControllerImpl::setAlertQueueState(a1, 0);
        goto LABEL_68;
      }

      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      LOWORD(v99) = 1024;
      *(&v99 + 2) = 2063;
      WORD3(v99) = 1024;
      DWORD2(v99) = v8;
      v34 = "%25s:%-5d ERROR: createAlertQueue: AudioQueueNewOutput err %d";
    }

    _os_log_impl(&dword_1BA5AC000, v31, OS_LOG_TYPE_ERROR, v34, buf, 0x18u);
    goto LABEL_66;
  }

  ControllerImpl::setAlertQueueFromImplQueue(a1, outAQ);
  ControllerImpl::setAlertQueueState(a1, 200);
  if (AudioQueueSetProperty(outAQ, 0x63756964u, &AudioQueueProperty_AlertQueueClientName, 8u))
  {
    if (kAVVCScope)
    {
      v32 = *kAVVCScope;
      if (!v32)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v32 = MEMORY[0x1E69E9C10];
      v50 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      LOWORD(v99) = 1024;
      *(&v99 + 2) = 2076;
      WORD3(v99) = 2112;
      *(&v99 + 1) = @"AVVoiceController_AlertQueue";
      v51 = "%25s:%-5d FAILED createAlertQueue : AudioQueueSetProperty(kAudioQueueProperty_ClientUID) - %@";
      v52 = v32;
      v53 = OS_LOG_TYPE_ERROR;
LABEL_118:
      _os_log_impl(&dword_1BA5AC000, v52, v53, v51, buf, 0x1Cu);
      goto LABEL_119;
    }

    goto LABEL_119;
  }

  if (!kAVVCScope)
  {
    v32 = MEMORY[0x1E69E9C10];
    v54 = MEMORY[0x1E69E9C10];
LABEL_116:
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      LOWORD(v99) = 1024;
      *(&v99 + 2) = 2078;
      WORD3(v99) = 2112;
      *(&v99 + 1) = @"AVVoiceController_AlertQueue";
      v51 = "%25s:%-5d createAlertQueue : AudioQueueSetProperty(kAudioQueueProperty_ClientUID) - %@";
      v52 = v32;
      v53 = OS_LOG_TYPE_DEBUG;
      goto LABEL_118;
    }

LABEL_119:

    goto LABEL_120;
  }

  v32 = *kAVVCScope;
  if (v32)
  {
    goto LABEL_116;
  }

LABEL_120:
  v55 = AudioQueueAddPropertyListener(outAQ, 0x6171726Eu, ControllerImpl::AlertAQPropertyListenerProc, v28);
  v8 = v55;
  if (!v55)
  {
    *(a1 + 204) = 0;
    goto LABEL_68;
  }

  if ((v55 + 199999) < 0x61A7F)
  {
    if (kAVVCScope)
    {
      v56 = *kAVVCScope;
      if (!v56)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v56 = MEMORY[0x1E69E9C10];
      v63 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      LOWORD(v99) = 1024;
      *(&v99 + 2) = 2082;
      WORD3(v99) = 1024;
      DWORD2(v99) = v8;
      _os_log_impl(&dword_1BA5AC000, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: createAlertQueue: AudioQueueAddPropertyListener err %d", buf, 0x18u);
    }

LABEL_146:

    goto LABEL_68;
  }

  if (!kAVVCScope)
  {
    v56 = MEMORY[0x1E69E9C10];
    v64 = MEMORY[0x1E69E9C10];
LABEL_148:
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      LOWORD(v99) = 1024;
      *(&v99 + 2) = 2082;
      WORD3(v99) = 1024;
      DWORD2(v99) = v8;
      _os_log_impl(&dword_1BA5AC000, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: createAlertQueue: AudioQueueAddPropertyListener err %{audio:4CC}d", buf, 0x18u);
    }

    goto LABEL_146;
  }

  v56 = *kAVVCScope;
  if (v56)
  {
    goto LABEL_148;
  }

LABEL_68:
  TraceMethod::~TraceMethod(v95);

  if (v8)
  {
LABEL_69:
    if (inBuffer)
    {
      AlertQueueFromImplQueue = ControllerImpl::getAlertQueueFromImplQueue(a1);
      AudioQueueFreeBuffer(AlertQueueFromImplQueue, inBuffer);
    }

    *buf = &v93;
    std::__tree<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>>>::__emplace_unique_key_args<AVVoiceAlertType,std::piecewise_construct_t const&,std::tuple<AVVoiceAlertType&&>,std::tuple<>>(a1 + 296, v93, buf)[5] = 0;
    goto LABEL_106;
  }

  v37 = ExtAudioFileOpenURL(v9, &outExtAudioFile);
  v8 = v37;
  if (v37)
  {
    if ((v37 + 199999) >= 0x61A7F)
    {
      if (kAVVCScope)
      {
        v38 = *kAVVCScope;
        if (!v38)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v38 = MEMORY[0x1E69E9C10];
        v46 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_98;
      }

      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      LOWORD(v99) = 1024;
      *(&v99 + 2) = 2196;
      WORD3(v99) = 1024;
      DWORD2(v99) = v8;
      v45 = "%25s:%-5d ERROR: setupAlert: ExtAudioFileOpenURL err %{audio:4CC}d";
    }

    else
    {
      if (kAVVCScope)
      {
        v38 = *kAVVCScope;
        if (!v38)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v38 = MEMORY[0x1E69E9C10];
        v44 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
LABEL_98:

LABEL_99:
        v47 = CFURLGetString(v9);
        CFStringGetCString(v47, buf, 1024, 0x600u);
        if (kAVVCScope)
        {
          v40 = *kAVVCScope;
          if (!v40)
          {
            goto LABEL_106;
          }
        }

        else
        {
          v40 = MEMORY[0x1E69E9C10];
          v48 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *v95 = 136315650;
          *&v95[4] = "ControllerImpl.mm";
          *&v95[12] = 1024;
          *&v95[14] = 2200;
          v96 = 2080;
          v97 = buf;
          _os_log_impl(&dword_1BA5AC000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d setupAlert: Failed to load alert '%s'", v95, 0x1Cu);
        }

LABEL_105:

        goto LABEL_106;
      }

      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      LOWORD(v99) = 1024;
      *(&v99 + 2) = 2196;
      WORD3(v99) = 1024;
      DWORD2(v99) = v8;
      v45 = "%25s:%-5d ERROR: setupAlert: ExtAudioFileOpenURL err %d";
    }

    _os_log_impl(&dword_1BA5AC000, v38, OS_LOG_TYPE_ERROR, v45, buf, 0x18u);
    goto LABEL_98;
  }

  ioPropertyDataSize = 40;
  Property = ExtAudioFileGetProperty(outExtAudioFile, 0x66666D74u, &ioPropertyDataSize, outPropertyData);
  v8 = Property;
  if (Property)
  {
    if ((Property + 199999) < 0x61A7F)
    {
      if (kAVVCScope)
      {
        v40 = *kAVVCScope;
        if (!v40)
        {
          goto LABEL_106;
        }
      }

      else
      {
        v40 = MEMORY[0x1E69E9C10];
        v61 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "ControllerImpl.mm";
        LOWORD(v99) = 1024;
        *(&v99 + 2) = 2206;
        WORD3(v99) = 1024;
        DWORD2(v99) = v8;
        _os_log_impl(&dword_1BA5AC000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: setupAlert: ExtAudioFileGetProperty(kExtAudioFileProperty_FileDataFormat) err %d", buf, 0x18u);
      }

      goto LABEL_105;
    }

    if (kAVVCScope)
    {
      v40 = *kAVVCScope;
      if (!v40)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v40 = MEMORY[0x1E69E9C10];
      v62 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      LOWORD(v99) = 1024;
      *(&v99 + 2) = 2206;
      WORD3(v99) = 1024;
      DWORD2(v99) = v8;
      _os_log_impl(&dword_1BA5AC000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: setupAlert: ExtAudioFileGetProperty(kExtAudioFileProperty_FileDataFormat) err %{audio:4CC}d", buf, 0x18u);
    }

    goto LABEL_105;
  }

  v41 = ExtAudioFileSetProperty(outExtAudioFile, 0x63666D74u, 0x28u, (a1 + 216));
  v8 = v41;
  if (v41)
  {
    v42 = v41 + 199999;
    v43 = CALog::LogObjIfEnabled(1, kAVVCScope);
    v40 = v43;
    if (v42 >= 0x61A7F)
    {
      if (v43 && os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "ControllerImpl.mm";
        LOWORD(v99) = 1024;
        *(&v99 + 2) = 2213;
        WORD3(v99) = 1024;
        DWORD2(v99) = v8;
        _os_log_impl(&dword_1BA5AC000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: setupAlert: ExtAudioFileSetProperty(kExtAudioFileProperty_ClientDataFormat) err %{audio:4CC}d", buf, 0x18u);
      }
    }

    else if (v43 && os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      LOWORD(v99) = 1024;
      *(&v99 + 2) = 2213;
      WORD3(v99) = 1024;
      DWORD2(v99) = v8;
      _os_log_impl(&dword_1BA5AC000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: setupAlert: ExtAudioFileSetProperty(kExtAudioFileProperty_ClientDataFormat) err %d", buf, 0x18u);
    }

    goto LABEL_105;
  }

  ioPropertyDataSize = 8;
  v57 = ExtAudioFileGetProperty(outExtAudioFile, 0x2366726Du, &ioPropertyDataSize, &v90);
  v8 = v57;
  if (v57)
  {
    v58 = v57 + 199999;
    v59 = CALog::LogObjIfEnabled(1, kAVVCScope);
    v60 = v59;
    if (v58 < 0x61A7F)
    {
      if (v59 && os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "ControllerImpl.mm";
        LOWORD(v99) = 1024;
        *(&v99 + 2) = 2219;
        WORD3(v99) = 1024;
        DWORD2(v99) = v8;
        _os_log_impl(&dword_1BA5AC000, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: setupAlert: ExtAudioFileGetProperty err %d", buf, 0x18u);
      }

LABEL_188:

      goto LABEL_189;
    }

    if (v59 && os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      LOWORD(v99) = 1024;
      *(&v99 + 2) = 2219;
      WORD3(v99) = 1024;
      DWORD2(v99) = v8;
      v77 = "%25s:%-5d ERROR: setupAlert: ExtAudioFileGetProperty err %{audio:4CC}d";
LABEL_180:
      _os_log_impl(&dword_1BA5AC000, v60, OS_LOG_TYPE_ERROR, v77, buf, 0x18u);
      goto LABEL_181;
    }

    goto LABEL_181;
  }

  *buf = &v93;
  if (std::__tree<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>>>::__emplace_unique_key_args<AVVoiceAlertType,std::piecewise_construct_t const&,std::tuple<AVVoiceAlertType&&>,std::tuple<>>(a1 + 296, v93, buf)[5])
  {
    if (*(a1 + 204) == v93)
    {
      v65 = CALog::LogObjIfEnabled(6, kAVVCScope);
      v66 = v65;
      if (v65 && os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "ControllerImpl.mm";
        LOWORD(v99) = 1024;
        *(&v99 + 2) = 2225;
        _os_log_impl(&dword_1BA5AC000, v66, OS_LOG_TYPE_DEBUG, "%25s:%-5d setupAlert: resetting alert queue", buf, 0x12u);
      }

      ElapsedTime::ElapsedTime(buf, "setupAlert", "AudioQueueReset : mAlertQueue", 0);
      v67 = ControllerImpl::getAlertQueueFromImplQueue(a1);
      AudioQueueReset(v67);
      ControllerImpl::setAlertQueueState(a1, 200);
      ElapsedTime::~ElapsedTime(buf);
    }

    v68 = ControllerImpl::getAlertQueueFromImplQueue(a1);
    *buf = &v93;
    v69 = std::__tree<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>>>::__emplace_unique_key_args<AVVoiceAlertType,std::piecewise_construct_t const&,std::tuple<AVVoiceAlertType&&>,std::tuple<>>(a1 + 296, v93, buf);
    AudioQueueFreeBuffer(v68, v69[5]);
    *buf = &v93;
    std::__tree<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>>>::__emplace_unique_key_args<AVVoiceAlertType,std::piecewise_construct_t const&,std::tuple<AVVoiceAlertType&&>,std::tuple<>>(a1 + 296, v93, buf)[5] = 0;
  }

  v70 = (*(a1 + 216) * v90 / *outPropertyData);
  v90 = v70;
  v71 = *(a1 + 240);
  v72 = ControllerImpl::getAlertQueueFromImplQueue(a1);
  v73 = v71 * v70;
  v74 = AudioQueueAllocateBuffer(v72, v73, &inBuffer);
  v8 = v74;
  if (v74)
  {
    v75 = v74 + 199999;
    v76 = CALog::LogObjIfEnabled(1, kAVVCScope);
    v60 = v76;
    if (v75 < 0x61A7F)
    {
      if (v76 && os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "ControllerImpl.mm";
        LOWORD(v99) = 1024;
        *(&v99 + 2) = 2242;
        WORD3(v99) = 1024;
        DWORD2(v99) = v8;
        _os_log_impl(&dword_1BA5AC000, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: setupAlert: AudioQueueAllocateBuffer err %d", buf, 0x18u);
      }

      goto LABEL_188;
    }

    if (v76 && os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      LOWORD(v99) = 1024;
      *(&v99 + 2) = 2242;
      WORD3(v99) = 1024;
      DWORD2(v99) = v8;
      v77 = "%25s:%-5d ERROR: setupAlert: AudioQueueAllocateBuffer err %{audio:4CC}d";
      goto LABEL_180;
    }

LABEL_181:

    goto LABEL_69;
  }

  v78 = *(a1 + 244);
  *buf = 1;
  *&buf[8] = v78;
  LODWORD(v99) = v73;
  *(&v99 + 4) = inBuffer->mAudioData;
  LODWORD(outAQ) = v90;
  v79 = ExtAudioFileRead(outExtAudioFile, &outAQ, buf);
  v8 = v79;
  if (v79)
  {
    v81 = v79 + 199999;
    v82 = CALog::LogObjIfEnabled(1, kAVVCScope);
    v60 = v82;
    if (v81 >= 0x61A7F)
    {
      if (v82 && os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        *v95 = 136315650;
        *&v95[4] = "ControllerImpl.mm";
        *&v95[12] = 1024;
        *&v95[14] = 2256;
        v96 = 1024;
        LODWORD(v97) = v8;
        _os_log_impl(&dword_1BA5AC000, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: setupAlert: ExtAudioFileRead err %{audio:4CC}d", v95, 0x18u);
      }
    }

    else if (v82 && os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      *v95 = 136315650;
      *&v95[4] = "ControllerImpl.mm";
      *&v95[12] = 1024;
      *&v95[14] = 2256;
      v96 = 1024;
      LODWORD(v97) = v8;
      _os_log_impl(&dword_1BA5AC000, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: setupAlert: ExtAudioFileRead err %d", v95, 0x18u);
    }

    goto LABEL_188;
  }

  v83 = v93;
  v84 = outAQ;
  v85 = inBuffer;
  inBuffer->mAudioDataByteSize = *(a1 + 240) * outAQ;
  if (v83 == 1)
  {
    *(a1 + 256) = v84;
    *(a1 + 264) = GetTrailingSilenceFromBuffer(v85->mAudioData, v84, v80);
    v85 = inBuffer;
    v83 = v93;
  }

  *v95 = &v93;
  std::__tree<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>>>::__emplace_unique_key_args<AVVoiceAlertType,std::piecewise_construct_t const&,std::tuple<AVVoiceAlertType&&>,std::tuple<>>(a1 + 296, v83, v95)[5] = v85;
LABEL_189:
  if (v8)
  {
    goto LABEL_69;
  }

LABEL_106:
  if (outExtAudioFile)
  {
    ExtAudioFileDispose(outExtAudioFile);
  }

LABEL_108:
  TraceMethod::~TraceMethod(v86);

  return v8;
}

void sub_1BA5CC280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint8_t buf, int a32, int a33, __int16 a34)
{
  TraceMethod::~TraceMethod(&a14);

  _Unwind_Resume(a1);
}

uint64_t ControllerImpl::getAlertQueueFromImplQueue(ControllerImpl *this)
{
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v4, *(this + 1), *(this + 2));
  v2 = *(this + 77);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>>>::__emplace_unique_key_args<AVVoiceAlertType,std::piecewise_construct_t const&,std::tuple<AVVoiceAlertType&&>,std::tuple<>>(uint64_t a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_348(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained endAudioSessionActivate:*(a1 + 40)];
  }

  else
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "ControllerImpl.mm";
      v8 = 1024;
      v9 = 4094;
      v10 = 2048;
      v11 = 0;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v6, 0x1Cu);
    }
  }

LABEL_10:
}

void ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_347(uint64_t a1, char a2)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *(a1 + 48);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v7 = *(a1 + 40);
  if (WeakRetained && v7)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_348;
    v10[3] = &unk_1E7EF5D10;
    objc_copyWeak(&v11, (a1 + 32));
    v12 = a2;
    ControllerImpl::safeNotify(v7, "endAudioSessionActivate", v10);
    objc_destroyWeak(&v11);
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_17;
  }

LABEL_8:
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v14 = "ControllerImpl.mm";
    v15 = 1024;
    v16 = 4092;
    v17 = 2048;
    v18 = WeakRetained;
    v19 = 2048;
    v20 = v7;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p, impl: %p). Bailing", buf, 0x26u);
  }

LABEL_15:
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_17:
}

void sub_1BA5CC7D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

void ControllerImpl::startKeepAliveQueue(uint64_t a1, std::__shared_weak_count *this, AVVCRecordingEngine **a3)
{
  v13 = *MEMORY[0x1E69E9840];
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v7, a1, this);
  if (AVVCRecordingEngine::canStartKeepAliveQueue(*a3))
  {
    v4 = +[AVVCKeepAliveManager sharedManager];
    [v4 createWithCompletion:0];

    v5 = +[AVVCKeepAliveManager sharedManager];
    [v5 startWithCompletion:0];
LABEL_9:

    goto LABEL_10;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
LABEL_7:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "ControllerImpl.mm";
      v11 = 1024;
      v12 = 2949;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d KeepAliveQueue will NOT be started since output is NOT hands free OR stream is NOT Running OR session is inactive", buf, 0x12u);
    }

    goto LABEL_9;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_1BA5CC940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

NSObject *AVVCRecordingEngine::canStartKeepAliveQueue(AVVCRecordingEngine *this)
{
  v15 = *MEMORY[0x1E69E9840];
  if (isDarwinOSProduct(void)::onceToken != -1)
  {
    dispatch_once(&isDarwinOSProduct(void)::onceToken, &__block_literal_global_164);
  }

  if (isDarwinOSProduct(void)::isDarwinOS == 1)
  {
    if (kAVVCScope)
    {
      result = *kAVVCScope;
      v3 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = "AVVCRecordingEngine.mm";
      v13 = 1024;
      v14 = 1547;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d canStartKeepAliveQueue: KeepAliveQueue not available on darwinos", &v11, 0x12u);
    }

    return 0;
  }

  else
  {
    v4 = (*(*this + 64))(this, 0);
    v5 = [v4 sessionState];

    v6 = *(this + 27);
    isOutputHandsFree = AVVCRouteManager::isOutputHandsFree(*(this + 46));
    v9 = v5 == 7 && v6 == 5;
    return (v9 & isOutputHandsFree);
  }
}

uint64_t AVVCRouteManager::isOutputHandsFree(AVVCRouteManager *this)
{
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v2 = IsSerializationEnabled(void)::enable;
  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::mutex::lock((this + 56));
  }

  if (([*(this + 5) isEqualToString:*MEMORY[0x1E698D670]] & 1) == 0 && (objc_msgSend(*(this + 5), "isEqualToString:", *MEMORY[0x1E698D688]) & 1) == 0 && (objc_msgSend(*(this + 5), "isEqualToString:", *MEMORY[0x1E698D6A0]) & 1) == 0)
  {
    v3 = [*(this + 5) isEqualToString:*MEMORY[0x1E698D6C0]] ^ 1;
    if (v2)
    {
      return v3;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 1) == 0)
  {
LABEL_9:
    std::mutex::unlock((this + 56));
  }

  return v3;
}

void sub_1BA5CCBF4(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::mutex::unlock((v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_2_459(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = (*(**(a1 + 48) + 64))(*(a1 + 48), 0);
  [v3 setClientRequestsRecording:v2];

  if (*(a1 + 89) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = (*(**(a1 + 48) + 288))(*(a1 + 48));
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = v5 != 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_3;
  v10[3] = &unk_1E7EF5F40;
  v7 = v5;
  v8 = *(a1 + 80);
  v9 = *(a1 + 40);
  v11 = v7;
  v12 = v9;
  v13 = v8;
  ControllerImpl::safeNotifyAlwaysAsync(v4, v6, v10);
}

void ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_3(void *a1)
{
  v1 = a1[6];
  v2 = a1[4];
  v3 = *(*(a1[5] + 8) + 24) == 0;
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:? userInfo:?];
  (*(v2 + 16))(v2, v1, v3);
}

void ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbb_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  *(*(*(a1 + 40) + 8) + 24) = [v6 code];
  v5 = *(a1 + 32);
  if (v5)
  {
    dispatch_semaphore_signal(v5);
  }
}

void VCUnlocker::~VCUnlocker(VCUnlocker *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(this + 8) == 1)
  {
    if (kAVVCScope)
    {
      v2 = *kAVVCScope;
      if (!v2)
      {
LABEL_9:
        (*(**this + 16))();
        return;
      }
    }

    else
    {
      v2 = MEMORY[0x1E69E9C10];
      v3 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(*this + 8);
      v5 = 136315650;
      v6 = "ControllerImpl.h";
      v7 = 1024;
      v8 = 802;
      v9 = 2080;
      v10 = v4;
      _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d unlocker about to relock %s", &v5, 0x1Cu);
    }

    goto LABEL_9;
  }
}

void sub_1BA5CD060(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t ControllerImpl::prepareRecordForStream(ControllerImpl *this, AVVoiceController *a2, AVVCPrepareRecordSettings *a3)
{
  v5 = a2;
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettings_block_invoke;
  v11[3] = &unk_1E7EF5D88;
  v15 = this;
  v7 = v5;
  v12 = v7;
  v8 = v6;
  v13 = v8;
  v14 = &v16;
  makeSynchronous(v11);
  v9 = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return v9;
}

void sub_1BA5CD1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettings_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettings_block_invoke_2;
  v9[3] = &unk_1E7EF5D60;
  v6 = a1[6];
  v7 = a1[7];
  v10 = v3;
  v11 = v6;
  v8 = v3;
  ControllerImpl::prepareRecordForStream(v7, v4, v5, v9);
}

BOOL ControllerImpl::shouldUseHACEngine(ControllerImpl *this, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(this + 23);
    v9 = 136315906;
    v10 = "ControllerImpl.mm";
    v11 = 1024;
    v12 = 3435;
    v13 = 1024;
    v14 = a2;
    v15 = 2048;
    v16 = v6;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d isMicrophoneBuiltin: %d mVoiceControllerClientType: %ld ", &v9, 0x22u);
  }

LABEL_8:
  v7 = isHACProduct();
  result = 0;
  if (v7)
  {
    if (a2)
    {
      return *(this + 23) == 1;
    }
  }

  return result;
}

uint64_t areNSStringsEqualOrBothNil(NSString *a1, NSString *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 | v4)
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqualToString:v4];
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void AVVCAudioQueueRecordingEngine::setHWSampleRate(AVVCAudioQueueRecordingEngine *this, double a2)
{
  v18 = *MEMORY[0x1E69E9840];
  *(this + 39) = a2;
  *(this + 320) = a2 < 16000.0;
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 33);
    v6 = *(this + 39);
    v7 = *(this + 320);
    v8 = 136316162;
    v9 = "AVVCAudioQueueRecordingEngine.mm";
    v10 = 1024;
    v11 = 202;
    v12 = 2048;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setHWSampleRate() streamID(%lu) sr(%.2f) upSamp(%d)", &v8, 0x2Cu);
  }
}

uint64_t asbdFromSettings(NSDictionary *a1, AudioStreamBasicDescription *a2, void *a3, double a4, objc_object *a5)
{
  v7 = a1;
  v8 = a3;
  v31[0] = 0;
  *&a2->mSampleRate = 0u;
  *&a2->mBytesPerPacket = 0u;
  *&a2->mBitsPerChannel = 0;
  v9 = v8;
  v30 = 0;
  if (getUInt32ForKey(v7, &cfstr_Avformatidkey.isa, &v30, v31))
  {
    v11 = v30;
    if (!v30)
    {
      v11 = 1936745848;
    }
  }

  else
  {
    v12 = v31[0];
    if (v31[0])
    {
      goto LABEL_59;
    }

    v11 = 1819304813;
  }

  a2->mFormatID = v11;
  p_mFormatID = &a2->mFormatID;
  v29 = 0.0;
  if (getFloat64ForKey(v7, &v29, v31, v10))
  {
    if (v29 != 0.0)
    {
      v14 = 8000.0;
      if (v29 >= 8000.0)
      {
        v14 = v29;
        if (v29 > 192000.0)
        {
          v14 = 192000.0;
        }
      }

      goto LABEL_15;
    }

LABEL_14:
    v14 = 16000.0;
    goto LABEL_15;
  }

  v12 = v31[0];
  if (v31[0])
  {
    goto LABEL_59;
  }

  if (*p_mFormatID == 1936745848)
  {
    goto LABEL_14;
  }

  [v9 speechDetectionDeviceSampleRate];
  if (v14 == 0.0)
  {
    v14 = 44100.0;
  }

LABEL_15:
  a2->mSampleRate = v14;
  if (getUInt32ForKey(v7, &cfstr_Avnumberofchan.isa, &v30, v31))
  {
    v15 = v30;
    if (v30)
    {
      if (v30 > 0x40)
      {
        v12 = 1718449215;
        goto LABEL_59;
      }
    }

    else
    {
      v15 = 1;
      v30 = 1;
    }
  }

  else
  {
    v12 = v31[0];
    if (v31[0])
    {
      goto LABEL_59;
    }

    if (*p_mFormatID == 1936745848)
    {
      a2->mChannelsPerFrame = 1;
LABEL_44:
      v12 = 0;
      a2->mFramesPerPacket = 0;
      goto LABEL_59;
    }

    v16 = [v9 inputNumberOfChannels];
    if (v16 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v16;
    }
  }

  a2->mChannelsPerFrame = v15;
  mFormatID = a2->mFormatID;
  if (mFormatID == 1936745848)
  {
    goto LABEL_44;
  }

  if (mFormatID != 1819304813)
  {
    v12 = 0;
    goto LABEL_59;
  }

  UInt32ForKey = getUInt32ForKey(v7, &cfstr_Avlinearpcmisn.isa, &v30, v31);
  if (v30)
  {
    v19 = UInt32ForKey;
  }

  else
  {
    v19 = 0;
  }

  mFormatFlags = a2->mFormatFlags;
  if (v19 == 1)
  {
    mFormatFlags |= 0x20u;
    a2->mFormatFlags = mFormatFlags;
  }

  a2->mFormatFlags = mFormatFlags | 8;
  v21 = getUInt32ForKey(v7, &cfstr_Avlinearpcmisf.isa, &v30, v31);
  if (v30)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v23 = a2->mFormatFlags;
  if (v22 == 1)
  {
    a2->mFormatFlags = v23 | 1;
    if (getUInt32ForKey(v7, &cfstr_Avlinearpcmbit.isa, &v30, v31))
    {
      v12 = 1718449215;
      v24 = v30 + 7;
      v25 = (v30 + 7) & 0xFFFFFFF8;
      a2->mBitsPerChannel = v25;
      if (v24 < 8 || v25 > 0x40)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }

    v12 = v31[0];
    if (v31[0])
    {
      goto LABEL_59;
    }

    v25 = 32;
  }

  else
  {
    a2->mFormatFlags = v23 | 4;
    if (getUInt32ForKey(v7, &cfstr_Avlinearpcmbit.isa, &v30, v31))
    {
      v12 = 1718449215;
      v26 = v30 + 7;
      v25 = (v30 + 7) & 0xFFFFFFF8;
      a2->mBitsPerChannel = v25;
      if (v26 < 8 || v25 > 0x20)
      {
        goto LABEL_59;
      }

      goto LABEL_55;
    }

    v12 = v31[0];
    if (v31[0])
    {
      goto LABEL_59;
    }

    v25 = 16;
  }

  a2->mBitsPerChannel = v25;
LABEL_55:
  a2->mFramesPerPacket = 1;
  v12 = 0;
  if ((a2->mFormatFlags & 0x20) != 0)
  {
    v27 = v25 >> 3;
  }

  else
  {
    v27 = (v25 >> 3) * a2->mChannelsPerFrame;
  }

  a2->mBytesPerPacket = v27;
  a2->mBytesPerFrame = v27;
LABEL_59:

  return v12;
}

uint64_t IsDSPGraphSupported(void)
{
  v0 = isHACProduct();
  if (isDarwinOSProduct(void)::onceToken != -1)
  {
    dispatch_once(&isDarwinOSProduct(void)::onceToken, &__block_literal_global_164);
  }

  return isDarwinOSProduct(void)::isDarwinOS & ~v0 & 1;
}

uint64_t AVVCAudioQueueRecordingEngine::createRecordQueue(AVVCAudioQueueRecordingEngine *this, NSDictionary *a2)
{
  v110 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v95 = 4102;
  v96 = 1;
  v97 = 0u;
  v98 = 0u;
  kdebug_trace();
  TraceMethod::TraceMethod(v94, "createRecordQueue");
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v92, *(this + 1), *(this + 2));
  if (*(this + 75))
  {
    if (*(this + 27) > 1)
    {
      (*(*v92 + 136))(v92);
      AudioConverter = 0;
      goto LABEL_188;
    }

    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
LABEL_21:
        AudioConverter = 4294955515;
        goto LABEL_188;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v107 = "AVVCAudioQueueRecordingEngine.mm";
      v108 = 1024;
      v109 = 294;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Record engine state does not match queue (previously assertion failure)", buf, 0x12u);
    }

    goto LABEL_21;
  }

  v5 = *(this + 8);
  v6 = *(this + 40);
  *&inFormat.mSampleRate = *(this + 24);
  *&inFormat.mBytesPerPacket = v6;
  *&inFormat.mBitsPerChannel = *(this + 7);
  inFormat.mFormatID = 1819304813;
  v90 = *(this + 13);
  v7 = IsDSPGraphSupported();
  if (*(this + 33) == 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    UpdateWithHardwareDeviceNumInputChannels(&v90);
  }

  if (v5 != 1819304813)
  {
    inFormat.mSampleRate = *(this + 3);
    *&inFormat.mFormatID = 0x96C70636DLL;
    inFormat.mBytesPerPacket = 4 * v90;
    inFormat.mFramesPerPacket = 1;
    inFormat.mBytesPerFrame = 4 * v90;
    inFormat.mChannelsPerFrame = v90;
    inFormat.mBitsPerChannel = 32;
    goto LABEL_25;
  }

  if ((inFormat.mFormatFlags & 0x20) != 0)
  {
    mChannelsPerFrame = 1;
    goto LABEL_23;
  }

  mChannelsPerFrame = inFormat.mChannelsPerFrame;
  if (inFormat.mChannelsPerFrame)
  {
LABEL_23:
    v10 = inFormat.mBytesPerFrame / mChannelsPerFrame;
    goto LABEL_24;
  }

  v10 = (inFormat.mBitsPerChannel + 7) >> 3;
LABEL_24:
  inFormat.mChannelsPerFrame = v90;
  inFormat.mFramesPerPacket = 1;
  inFormat.mBytesPerFrame = v10 * v90;
  inFormat.mFormatFlags &= ~0x20u;
  inFormat.mBytesPerPacket = v10 * v90;
LABEL_25:
  if (kAVVCScope)
  {
    v13 = *kAVVCScope;
    if (!v13)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  v15 = v13;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    CAStreamBasicDescription::AsString(&inFormat, buf, 0x100uLL, v16, v17);
    LODWORD(v105.mSampleRate) = 136315650;
    *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
    LOWORD(v105.mFormatFlags) = 1024;
    *(&v105.mFormatFlags + 2) = 332;
    HIWORD(v105.mBytesPerPacket) = 2080;
    *&v105.mFramesPerPacket = buf;
    _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Record Queue Format: %s", &v105, 0x1Cu);
  }

LABEL_32:
  v18 = *(this + 34);
  if (v18 == 1768764005 || v18 == 1768780647)
  {
    v20 = 4;
  }

  else
  {
    v20 = 4100;
  }

  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v21 = *kAVVCScope;
      if (v21)
      {
        v22 = v21;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(v105.mSampleRate) = 136315906;
          *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
          LOWORD(v105.mFormatFlags) = 1024;
          *(&v105.mFormatFlags + 2) = 345;
          HIWORD(v105.mBytesPerPacket) = 1024;
          v105.mFramesPerPacket = v20;
          LOWORD(v105.mBytesPerFrame) = 2080;
          *(&v105.mBytesPerFrame + 2) = "With";
          _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating queue with flags 0x%x. %s runloops", &v105, 0x22u);
        }
      }
    }
  }

  v23 = *(*(this + 95) + 128);
  v25 = v92;
  v24 = v93;
  if (v93)
  {
    atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = (this + 600);
  *(this + 107) = v25;
  v27 = *(this + 108);
  *(this + 108) = v24;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = AudioQueueNewInput(&inFormat, AVVCAudioQueueRecordingEngine::AudioQueueRecordInputCallback, this + 856, v23, 0, v20, this + 75);
  AudioConverter = v28;
  if (v28)
  {
    if ((v28 + 199999) < 0x61A7F)
    {
      if (kAVVCScope)
      {
        v29 = *kAVVCScope;
        if (!v29)
        {
          goto LABEL_188;
        }
      }

      else
      {
        v29 = MEMORY[0x1E69E9C10];
        v32 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v105.mSampleRate) = 136315650;
        *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
        LOWORD(v105.mFormatFlags) = 1024;
        *(&v105.mFormatFlags + 2) = 355;
        HIWORD(v105.mBytesPerPacket) = 1024;
        v105.mFramesPerPacket = AudioConverter;
        _os_log_impl(&dword_1BA5AC000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: createRecordQueue: AudioQueueNewInput err %d", &v105, 0x18u);
      }

LABEL_66:

      goto LABEL_188;
    }

    if (kAVVCScope)
    {
      v29 = *kAVVCScope;
      if (!v29)
      {
        goto LABEL_188;
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v105.mSampleRate) = 136315650;
      *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
      LOWORD(v105.mFormatFlags) = 1024;
      *(&v105.mFormatFlags + 2) = 355;
      HIWORD(v105.mBytesPerPacket) = 1024;
      v105.mFramesPerPacket = AudioConverter;
      _os_log_impl(&dword_1BA5AC000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: createRecordQueue: AudioQueueNewInput err %{audio:4CC}d", &v105, 0x18u);
    }

    goto LABEL_66;
  }

  if (AudioQueueSetProperty(*v26, 0x63756964u, &AudioQueueProperty_RecordQueueClientName, 8u))
  {
    if (kAVVCScope)
    {
      v30 = *kAVVCScope;
      if (!v30)
      {
        goto LABEL_79;
      }
    }

    else
    {
      v30 = MEMORY[0x1E69E9C10];
      v34 = MEMORY[0x1E69E9C10];
    }

    v35 = v30;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v105.mSampleRate) = 136315650;
      *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
      LOWORD(v105.mFormatFlags) = 1024;
      *(&v105.mFormatFlags + 2) = 363;
      HIWORD(v105.mBytesPerPacket) = 2112;
      *&v105.mFramesPerPacket = @"AVVoiceController_RecordQueue";
      v36 = "%25s:%-5d FAILED createRecordQueue : AudioQueueSetProperty(kAudioQueueProperty_ClientUID) - %@";
      v37 = v35;
      v38 = OS_LOG_TYPE_ERROR;
LABEL_77:
      _os_log_impl(&dword_1BA5AC000, v37, v38, v36, &v105, 0x1Cu);
      goto LABEL_78;
    }

    goto LABEL_78;
  }

  if (!kAVVCScope)
  {
    v31 = MEMORY[0x1E69E9C10];
    v39 = MEMORY[0x1E69E9C10];
LABEL_75:
    v35 = v31;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v105.mSampleRate) = 136315650;
      *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
      LOWORD(v105.mFormatFlags) = 1024;
      *(&v105.mFormatFlags + 2) = 365;
      HIWORD(v105.mBytesPerPacket) = 2112;
      *&v105.mFramesPerPacket = @"AVVoiceController_RecordQueue";
      v36 = "%25s:%-5d createRecordQueue : AudioQueueSetProperty(kAudioQueueProperty_ClientUID) - %@";
      v37 = v35;
      v38 = OS_LOG_TYPE_DEBUG;
      goto LABEL_77;
    }

LABEL_78:

    goto LABEL_79;
  }

  v31 = *kAVVCScope;
  if (v31)
  {
    goto LABEL_75;
  }

LABEL_79:
  inData = 127;
  v40 = AudioQueueSetProperty(*v26, 0x73726371u, &inData, 4u);
  AudioConverter = v40;
  if (v40)
  {
    if ((v40 + 199999) < 0x61A7F)
    {
      if (kAVVCScope)
      {
        v41 = *kAVVCScope;
        if (!v41)
        {
          goto LABEL_188;
        }
      }

      else
      {
        v41 = MEMORY[0x1E69E9C10];
        v46 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v105.mSampleRate) = 136315650;
        *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
        LOWORD(v105.mFormatFlags) = 1024;
        *(&v105.mFormatFlags + 2) = 399;
        HIWORD(v105.mBytesPerPacket) = 1024;
        v105.mFramesPerPacket = AudioConverter;
        _os_log_impl(&dword_1BA5AC000, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: createRecordQueue: AudioQueueSetProperty(kAudioConverterSampleRateConverterQuality, Max) err %d", &v105, 0x18u);
      }

LABEL_98:

      goto LABEL_188;
    }

    if (kAVVCScope)
    {
      v41 = *kAVVCScope;
      if (!v41)
      {
        goto LABEL_188;
      }
    }

    else
    {
      v41 = MEMORY[0x1E69E9C10];
      v47 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v105.mSampleRate) = 136315650;
      *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
      LOWORD(v105.mFormatFlags) = 1024;
      *(&v105.mFormatFlags + 2) = 399;
      HIWORD(v105.mBytesPerPacket) = 1024;
      v105.mFramesPerPacket = AudioConverter;
      _os_log_impl(&dword_1BA5AC000, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: createRecordQueue: AudioQueueSetProperty(kAudioConverterSampleRateConverterQuality, Max) err %{audio:4CC}d", &v105, 0x18u);
    }

    goto LABEL_98;
  }

  ioDataSize = 40;
  Property = AudioQueueGetProperty(*v26, 0x61716674u, &inFormat, &ioDataSize);
  AudioConverter = Property;
  if (!Property)
  {
    v44 = *&inFormat.mBytesPerPacket;
    *(this + 38) = *&inFormat.mSampleRate;
    *(this + 39) = v44;
    *(this + 80) = *&inFormat.mBitsPerChannel;
    v87 = 0;
    ioDataSize = 4;
    AudioQueueGetProperty(*(this + 75), 0x61716463u, &v87, &ioDataSize);
    if (kAVVCScope)
    {
      v45 = *kAVVCScope;
      if (!v45)
      {
        goto LABEL_110;
      }
    }

    else
    {
      v45 = MEMORY[0x1E69E9C10];
      v48 = MEMORY[0x1E69E9C10];
    }

    v49 = v45;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v105.mSampleRate) = 136315650;
      *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
      LOWORD(v105.mFormatFlags) = 1024;
      *(&v105.mFormatFlags + 2) = 413;
      HIWORD(v105.mBytesPerPacket) = 1024;
      v105.mFramesPerPacket = v87;
      _os_log_impl(&dword_1BA5AC000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d AQGetProperty - kAudioQueueDeviceProperty_NumberChannels returned : %u", &v105, 0x18u);
    }

LABEL_110:
    *(this + 168) = v87;
    v50 = AudioQueueAddPropertyListener(*(this + 75), 0x6171726Eu, AVVCAudioQueueRecordingEngine::AudioQueueRecordPropertyListenerProc, this + 856);
    v51 = v50;
    if (!v50)
    {
      goto LABEL_134;
    }

    if ((v50 + 199999) >= 0x61A7F)
    {
      if (kAVVCScope)
      {
        v55 = *kAVVCScope;
        if (!v55)
        {
LABEL_134:
          v60 = AudioQueueAddPropertyListener(*v26, 0x71637665u, AVVCAudioQueueRecordingEngine::AudioQueueRecordPropertyListenerProc, this + 856);
          v61 = v60;
          if (!v60)
          {
            goto LABEL_150;
          }

          if ((v60 + 199999) >= 0x61A7F)
          {
            if (kAVVCScope)
            {
              v63 = *kAVVCScope;
              if (!v63)
              {
LABEL_150:
                (*(*this + 152))(this, *(this + 288));
                *(this + 202) = 0;
                if (AVVCAudioQueueRecordingEngine::ShouldUseAudioConverter(this, (this + 24)))
                {
                  v105 = inFormat;
                  AudioConverter = AVVCAudioQueueRecordingEngine::createAudioConverter(this, &v105, v3, this + 202);
                  if (AudioConverter)
                  {
                    if (kAVVCScope)
                    {
                      v68 = *kAVVCScope;
                      if (!v68)
                      {
LABEL_187:
                        AVVCRecordingEngine::destroyRecordEngineWithRecordLock(*(this + 18));
                        goto LABEL_188;
                      }
                    }

                    else
                    {
                      v68 = MEMORY[0x1E69E9C10];
                      v85 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                    {
                      *v99 = 136315650;
                      v100 = "AVVCAudioQueueRecordingEngine.mm";
                      v101 = 1024;
                      v102 = 431;
                      v103 = 1024;
                      v104 = AudioConverter;
                      _os_log_impl(&dword_1BA5AC000, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d createRecordQueue: createAudioConverter error: %d. Destroying record queue.", v99, 0x18u);
                    }

                    goto LABEL_187;
                  }
                }

                else
                {
                  *(this + 202) = (*(this + 32) * *(this + 3));
                  if (kAVVCScope)
                  {
                    v69 = *kAVVCScope;
                    if (!v69)
                    {
                      goto LABEL_162;
                    }
                  }

                  else
                  {
                    v69 = MEMORY[0x1E69E9C10];
                    v70 = MEMORY[0x1E69E9C10];
                  }

                  v71 = v69;
                  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(v105.mSampleRate) = 136315394;
                    *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
                    LOWORD(v105.mFormatFlags) = 1024;
                    *(&v105.mFormatFlags + 2) = 438;
                    _os_log_impl(&dword_1BA5AC000, v71, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioConverter is not created.. reason: requested channels is 1 or requested interleaved audio or non-lpcm is requested", &v105, 0x12u);
                  }
                }

LABEL_162:
                v72 = *(this + 16);
                if (v72)
                {
                  (*(v72 + 16))(v72, *(this + 33), v5);
                }

                if (kAVVCScope)
                {
                  v73 = *kAVVCScope;
                  if (!v73)
                  {
                    goto LABEL_171;
                  }
                }

                else
                {
                  v73 = MEMORY[0x1E69E9C10];
                  v74 = MEMORY[0x1E69E9C10];
                }

                v75 = v73;
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEBUG))
                {
                  v76 = *(this + 202);
                  v77 = *(this + 32);
                  LODWORD(v105.mSampleRate) = 136315906;
                  *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
                  LOWORD(v105.mFormatFlags) = 1024;
                  *(&v105.mFormatFlags + 2) = 444;
                  HIWORD(v105.mBytesPerPacket) = 1024;
                  v105.mFramesPerPacket = v76;
                  LOWORD(v105.mBytesPerFrame) = 2048;
                  *(&v105.mBytesPerFrame + 2) = v77;
                  _os_log_impl(&dword_1BA5AC000, v75, OS_LOG_TYPE_DEBUG, "%25s:%-5d FrameCapacity: %d. Buffer duration: %f s", &v105, 0x22u);
                }

LABEL_171:
                AVVCRecordingEngine::populateRecordSettings(this);
                v78 = (1.0 / *(this + 32));
                if (v78 <= 0x10)
                {
                  v78 = 16;
                }

                *(this + 164) = v78;
                v79 = *(this + 202) / inFormat.mFramesPerPacket * inFormat.mBytesPerPacket;
                if (kAVVCScope)
                {
                  v80 = *kAVVCScope;
                  if (!v80)
                  {
                    goto LABEL_180;
                  }
                }

                else
                {
                  v80 = MEMORY[0x1E69E9C10];
                  v81 = MEMORY[0x1E69E9C10];
                }

                v82 = v80;
                if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
                {
                  v83 = *(this + 164);
                  LODWORD(v105.mSampleRate) = 136315906;
                  *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
                  LOWORD(v105.mFormatFlags) = 1024;
                  *(&v105.mFormatFlags + 2) = 462;
                  HIWORD(v105.mBytesPerPacket) = 1024;
                  v105.mFramesPerPacket = v83;
                  LOWORD(v105.mBytesPerFrame) = 1024;
                  *(&v105.mBytesPerFrame + 2) = v79;
                  _os_log_impl(&dword_1BA5AC000, v82, OS_LOG_TYPE_DEBUG, "%25s:%-5d createRecordQueue: creating %u queue buffers %u bytes each", &v105, 0x1Eu);
                }

LABEL_180:
                v84 = *(this + 81);
                if (v84)
                {
                  MEMORY[0x1BFAF57D0](v84, 0x20C8093837F09);
                }

                operator new[]();
              }
            }

            else
            {
              v63 = MEMORY[0x1E69E9C10];
              v67 = MEMORY[0x1E69E9C10];
            }

            v65 = v63;
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v105.mSampleRate) = 136315650;
              *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
              LOWORD(v105.mFormatFlags) = 1024;
              *(&v105.mFormatFlags + 2) = 420;
              HIWORD(v105.mBytesPerPacket) = 1024;
              v105.mFramesPerPacket = v61;
              v66 = "%25s:%-5d ERROR: createRecordQueue: AudioQueueAddPropertyListener(kAudioQueueProperty_ConverterError) err %{audio:4CC}d";
              goto LABEL_148;
            }
          }

          else
          {
            if (kAVVCScope)
            {
              v62 = *kAVVCScope;
              if (!v62)
              {
                goto LABEL_150;
              }
            }

            else
            {
              v62 = MEMORY[0x1E69E9C10];
              v64 = MEMORY[0x1E69E9C10];
            }

            v65 = v62;
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v105.mSampleRate) = 136315650;
              *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
              LOWORD(v105.mFormatFlags) = 1024;
              *(&v105.mFormatFlags + 2) = 420;
              HIWORD(v105.mBytesPerPacket) = 1024;
              v105.mFramesPerPacket = v61;
              v66 = "%25s:%-5d ERROR: createRecordQueue: AudioQueueAddPropertyListener(kAudioQueueProperty_ConverterError) err %d";
LABEL_148:
              _os_log_impl(&dword_1BA5AC000, v65, OS_LOG_TYPE_ERROR, v66, &v105, 0x18u);
            }
          }

          goto LABEL_150;
        }
      }

      else
      {
        v55 = MEMORY[0x1E69E9C10];
        v59 = MEMORY[0x1E69E9C10];
      }

      v57 = v55;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v105.mSampleRate) = 136315650;
        *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
        LOWORD(v105.mFormatFlags) = 1024;
        *(&v105.mFormatFlags + 2) = 418;
        HIWORD(v105.mBytesPerPacket) = 1024;
        v105.mFramesPerPacket = v51;
        v58 = "%25s:%-5d ERROR: createRecordQueue: AudioQueueAddPropertyListener(kAudioQueueProperty_IsRunning) err %{audio:4CC}d";
        goto LABEL_132;
      }
    }

    else
    {
      if (kAVVCScope)
      {
        v52 = *kAVVCScope;
        if (!v52)
        {
          goto LABEL_134;
        }
      }

      else
      {
        v52 = MEMORY[0x1E69E9C10];
        v56 = MEMORY[0x1E69E9C10];
      }

      v57 = v52;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v105.mSampleRate) = 136315650;
        *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
        LOWORD(v105.mFormatFlags) = 1024;
        *(&v105.mFormatFlags + 2) = 418;
        HIWORD(v105.mBytesPerPacket) = 1024;
        v105.mFramesPerPacket = v51;
        v58 = "%25s:%-5d ERROR: createRecordQueue: AudioQueueAddPropertyListener(kAudioQueueProperty_IsRunning) err %d";
LABEL_132:
        _os_log_impl(&dword_1BA5AC000, v57, OS_LOG_TYPE_ERROR, v58, &v105, 0x18u);
      }
    }

    goto LABEL_134;
  }

  if ((Property + 199999) < 0x61A7F)
  {
    if (kAVVCScope)
    {
      v43 = *kAVVCScope;
      if (!v43)
      {
        goto LABEL_188;
      }
    }

    else
    {
      v43 = MEMORY[0x1E69E9C10];
      v53 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v105.mSampleRate) = 136315650;
      *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
      LOWORD(v105.mFormatFlags) = 1024;
      *(&v105.mFormatFlags + 2) = 404;
      HIWORD(v105.mBytesPerPacket) = 1024;
      v105.mFramesPerPacket = AudioConverter;
      _os_log_impl(&dword_1BA5AC000, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: createRecordQueue: AudioQueueGetProperty(StreamDescription) err %d", &v105, 0x18u);
    }

LABEL_118:

    goto LABEL_188;
  }

  if (!kAVVCScope)
  {
    v43 = MEMORY[0x1E69E9C10];
    v54 = MEMORY[0x1E69E9C10];
LABEL_120:
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v105.mSampleRate) = 136315650;
      *(&v105.mSampleRate + 4) = "AVVCAudioQueueRecordingEngine.mm";
      LOWORD(v105.mFormatFlags) = 1024;
      *(&v105.mFormatFlags + 2) = 404;
      HIWORD(v105.mBytesPerPacket) = 1024;
      v105.mFramesPerPacket = AudioConverter;
      _os_log_impl(&dword_1BA5AC000, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: createRecordQueue: AudioQueueGetProperty(StreamDescription) err %{audio:4CC}d", &v105, 0x18u);
    }

    goto LABEL_118;
  }

  v43 = *kAVVCScope;
  if (v43)
  {
    goto LABEL_120;
  }

LABEL_188:
  if (v93)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v93);
  }

  TraceMethod::~TraceMethod(v94);
  TraceWrapper::~TraceWrapper(&v95);

  return AudioConverter;
}

void sub_1BA5CEFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v24 = va_arg(va1, void);
  v22 = v19;

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  TraceMethod::~TraceMethod(va);
  TraceWrapper::~TraceWrapper(va1);

  _Unwind_Resume(a1);
}

uint64_t AVVCAudioQueueRecordingEngine::setupDSPGraph(AVVCAudioQueueRecordingEngine *this)
{
  v172 = *MEMORY[0x1E69E9840];
  v2 = IsDSPGraphSupported();
  if (*(this + 33) == 1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    if (*(this + 103))
    {
      v4 = *(this + 102);
      if (v4)
      {
        [v4 stop];
        if (kAVVCScope)
        {
          v5 = *kAVVCScope;
          if (!v5)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v5 = MEMORY[0x1E69E9C10];
          v20 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v167 = "AVVCAudioQueueRecordingEngine.mm";
          v168 = 1024;
          v169 = 737;
          _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVC - Graph is already setup. Starting and stopping the engine/dsp", buf, 0x12u);
        }

LABEL_37:
        v21 = *(this + 102);
        v159 = 0;
        v22 = [v21 startAndReturnError:&v159];
        v9 = v159;
        if ((v22 & 1) == 0)
        {
          if (kAVVCScope)
          {
            v23 = *kAVVCScope;
            if (!v23)
            {
LABEL_65:
              v10 = [v9 code];
              goto LABEL_177;
            }
          }

          else
          {
            v23 = MEMORY[0x1E69E9C10];
            v33 = MEMORY[0x1E69E9C10];
          }

          v34 = v23;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = [v9 description];
            *buf = 136315650;
            v167 = "AVVCAudioQueueRecordingEngine.mm";
            v168 = 1024;
            v169 = 739;
            v170 = 2112;
            v171 = v35;
            _os_log_impl(&dword_1BA5AC000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVC - failed to restart AVAudioEngine: %@", buf, 0x1Cu);
          }

          goto LABEL_65;
        }

        goto LABEL_21;
      }
    }

    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    v12 = v7;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v167 = "AVVCAudioQueueRecordingEngine.mm";
      v168 = 1024;
      v169 = 747;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVC - Setting up DSPGraph", buf, 0x12u);
    }

LABEL_26:
    v157 = xmmword_1BA6CF420;
    v158 = 0;
    v13 = [[AVAudioUnitEffect alloc] initWithAudioComponentDescription:&v157];
    v14 = *(this + 103);
    *(this + 103) = v13;

    if (*(this + 103))
    {
      v15 = GetModelPathComponent();
      v16 = [@"/System/Library/Audio/Tunings/<UPPERCASE_MODEL>/AVVC/<LOWERCASE_MODEL>_mic_voice_recognition.dspg" stringByReplacingOccurrencesOfString:@"<UPPERCASE_MODEL>" withString:v15];

      v17 = GetLowercaseModelName();
      v149 = [v16 stringByReplacingOccurrencesOfString:@"<LOWERCASE_MODEL>" withString:v17];

      inData = v149;
      if (kAVVCScope)
      {
        v18 = *kAVVCScope;
        if (!v18)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
        v24 = MEMORY[0x1E69E9C10];
      }

      v25 = v18;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v167 = "AVVCAudioQueueRecordingEngine.mm";
        v168 = 1024;
        v169 = 770;
        v170 = 2112;
        v171 = v149;
        _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d dspGraphFilepath: %@", buf, 0x1Cu);
      }

LABEL_45:
      v10 = AudioUnitSetProperty([*(this + 103) audioUnit], 0x64737067u, 0, 0, &inData, 8u);
      if (v10)
      {
        if (kAVVCScope)
        {
          v26 = *kAVVCScope;
          if (!v26)
          {
            v9 = 0;
LABEL_176:

            goto LABEL_177;
          }
        }

        else
        {
          v26 = MEMORY[0x1E69E9C10];
          v31 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v167 = "AVVCAudioQueueRecordingEngine.mm";
          v168 = 1024;
          v169 = 773;
          v170 = 1024;
          LODWORD(v171) = v10;
          _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to setup DSPGraph text file: %d", buf, 0x18u);
        }

        v9 = 0;
LABEL_175:

        goto LABEL_176;
      }

      v27 = GetModelPathComponent();
      v28 = [@"/System/Library/Audio/Tunings/<UPPERCASE_MODEL>/AVVC/<LOWERCASE_MODEL>_mic_voice_recognition.propstrip" stringByReplacingOccurrencesOfString:@"<UPPERCASE_MODEL>" withString:v27];

      v29 = GetLowercaseModelName();
      v26 = [v28 stringByReplacingOccurrencesOfString:@"<LOWERCASE_MODEL>" withString:v29];

      if (kAVVCScope)
      {
        v30 = *kAVVCScope;
        if (!v30)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v30 = MEMORY[0x1E69E9C10];
        v36 = MEMORY[0x1E69E9C10];
      }

      v37 = v30;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v167 = "AVVCAudioQueueRecordingEngine.mm";
        v168 = 1024;
        v169 = 779;
        v170 = 2112;
        v171 = v26;
        _os_log_impl(&dword_1BA5AC000, v37, OS_LOG_TYPE_DEBUG, "%25s:%-5d dspGraphFilepath: %@", buf, 0x1Cu);
      }

LABEL_70:
      v38 = MEMORY[0x1E695DF20];
      v39 = [MEMORY[0x1E695DFF8] fileURLWithPath:v26];
      v154 = 0;
      v40 = [v38 dictionaryWithContentsOfURL:v39 error:&v154];
      v9 = v154;

      v155 = v40;
      if (!v9)
      {
        goto LABEL_78;
      }

      if (kAVVCScope)
      {
        v41 = *kAVVCScope;
        if (!v41)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v41 = MEMORY[0x1E69E9C10];
        v42 = MEMORY[0x1E69E9C10];
      }

      v43 = v41;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = [v9 description];
        *buf = 136315650;
        v167 = "AVVCAudioQueueRecordingEngine.mm";
        v168 = 1024;
        v169 = 782;
        v170 = 2112;
        v171 = v44;
        _os_log_impl(&dword_1BA5AC000, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to read contents of DSPGraph AUStrip file: %@", buf, 0x1Cu);
      }

LABEL_78:
      v10 = AudioUnitSetProperty([*(this + 103) audioUnit], 0x70727370u, 0, 0, &v155, 8u);
      if (v10)
      {
        if (kAVVCScope)
        {
          v45 = *kAVVCScope;
          if (!v45)
          {
            goto LABEL_175;
          }
        }

        else
        {
          v45 = MEMORY[0x1E69E9C10];
          v50 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v167 = "AVVCAudioQueueRecordingEngine.mm";
          v168 = 1024;
          v169 = 786;
          v170 = 1024;
          LODWORD(v171) = v10;
          _os_log_impl(&dword_1BA5AC000, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to setup DSPGraph AUStrip file: %d", buf, 0x18u);
        }

        goto LABEL_174;
      }

      v46 = GetModelPathComponent();
      v47 = [@"/System/Library/Audio/Tunings/<UPPERCASE_MODEL>/AVVC/<LOWERCASE_MODEL>_mic_voice_recognition.austrip" stringByReplacingOccurrencesOfString:@"<UPPERCASE_MODEL>" withString:v46];

      v48 = GetLowercaseModelName();
      v45 = [v47 stringByReplacingOccurrencesOfString:@"<LOWERCASE_MODEL>" withString:v48];

      if (kAVVCScope)
      {
        v49 = *kAVVCScope;
        if (!v49)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v49 = MEMORY[0x1E69E9C10];
        v51 = MEMORY[0x1E69E9C10];
      }

      v52 = v49;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v167 = "AVVCAudioQueueRecordingEngine.mm";
        v168 = 1024;
        v169 = 792;
        v170 = 2112;
        v171 = v45;
        _os_log_impl(&dword_1BA5AC000, v52, OS_LOG_TYPE_DEBUG, "%25s:%-5d dspGraphFilepath: %@", buf, 0x1Cu);
      }

LABEL_92:
      v53 = MEMORY[0x1E695DF20];
      v54 = [MEMORY[0x1E695DFF8] fileURLWithPath:v45];
      v152 = v9;
      v55 = [v53 dictionaryWithContentsOfURL:v54 error:&v152];
      v56 = v152;

      v9 = v56;
      v153 = v55;
      if (v56)
      {
        v57 = CALog::LogObjIfEnabled(1, kAVVCScope);
        v58 = v57;
        if (v57)
        {
          v59 = v57;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v60 = [v56 description];
            *buf = 136315650;
            v167 = "AVVCAudioQueueRecordingEngine.mm";
            v168 = 1024;
            v169 = 795;
            v170 = 2112;
            v171 = v60;
            _os_log_impl(&dword_1BA5AC000, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to read contents of DSPGraph AUStrip file: %@", buf, 0x1Cu);
          }
        }
      }

      v10 = AudioUnitSetProperty([*(this + 103) audioUnit], 0x61757370u, 0, 0, &v153, 8u);
      if (v10)
      {
        v61 = CALog::LogObjIfEnabled(1, kAVVCScope);
        v62 = v61;
        if (v61 && os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v167 = "AVVCAudioQueueRecordingEngine.mm";
          v168 = 1024;
          v169 = 799;
          v170 = 1024;
          LODWORD(v171) = v10;
          _os_log_impl(&dword_1BA5AC000, &v62->super, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to setup DSPGraph AUStrip file: %d", buf, 0x18u);
        }

        goto LABEL_173;
      }

      v62 = [[AVAudioChannelLayout alloc] initWithLayoutTag:*(this + 159) | 0x930000u];
      v63 = [[AVAudioChannelLayout alloc] initWithLayoutTag:9633794];
      *buf = 0;
      if (CAStreamBasicDescription::IdentifyCommonPCMFormat(this + 152, buf) && *buf == 1)
      {
        v64 = 1;
      }

      else
      {
        *buf = 0;
        v65 = CAStreamBasicDescription::IdentifyCommonPCMFormat(this + 152, buf);
        if ((v65 & (*buf == 2)) != 0)
        {
          v64 = 3;
        }

        else
        {
          v64 = 0;
        }
      }

      v144 = v63;
      v147 = [[AVAudioFormat alloc] initWithCommonFormat:v64 sampleRate:1 interleaved:v62 channelLayout:*(this + 3)];
      v148 = [[AVAudioFormat alloc] initWithCommonFormat:v64 sampleRate:0 interleaved:v63 channelLayout:*(this + 3)];
      v146 = [[AVAudioFormat alloc] initWithCommonFormat:1 sampleRate:0 interleaved:v62 channelLayout:*(this + 3)];
      v145 = [[AVAudioFormat alloc] initWithCommonFormat:1 sampleRate:0 interleaved:v63 channelLayout:*(this + 3)];
      v66 = *(this + 32);
      v67 = *(this + 3);
      v68 = objc_alloc_init(AVAudioEngine);
      v69 = *(this + 102);
      *(this + 102) = v68;

      v70 = CALog::LogObjIfEnabled(5, kAVVCScope);
      v71 = v70;
      if (v70)
      {
        v72 = v70;
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v167 = "AVVCAudioQueueRecordingEngine.mm";
          v168 = 1024;
          v169 = 826;
          _os_log_impl(&dword_1BA5AC000, v72, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVC: AVAudioEngine EnableManualRenderingMode Offline", buf, 0x12u);
        }
      }

      v73 = *(this + 102);
      v151[5] = v9;
      [v73 enableManualRenderingMode:0 format:v148 maximumFrameCount:? error:?];
      v74 = v9;

      if (v74)
      {
        v75 = CALog::LogObjIfEnabled(1, kAVVCScope);
        v76 = v75;
        if (v75)
        {
          v77 = v75;
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            v78 = [v74 description];
            *buf = 136315650;
            v167 = "AVVCAudioQueueRecordingEngine.mm";
            v168 = 1024;
            v169 = 829;
            v170 = 2112;
            v171 = v78;
            _os_log_impl(&dword_1BA5AC000, v77, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVC: Failed to EnableManualRenderingMode on AVAudioEngine: %@", buf, 0x1Cu);
          }
        }

        v79 = [v74 code];
      }

      else
      {
        v80 = CALog::LogObjIfEnabled(5, kAVVCScope);
        v81 = v80;
        if (v80)
        {
          v82 = v80;
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v167 = "AVVCAudioQueueRecordingEngine.mm";
            v168 = 1024;
            v169 = 833;
            _os_log_impl(&dword_1BA5AC000, v82, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVC: AVAudioEngine SetManualRenderingInputPCMFormat", buf, 0x12u);
          }
        }

        v83 = [*(this + 102) inputNode];
        v151[0] = MEMORY[0x1E69E9820];
        v151[1] = 3221225472;
        v151[2] = ___ZN29AVVCAudioQueueRecordingEngine13setupDSPGraphEv_block_invoke;
        v151[3] = &__block_descriptor_40_e49_r__AudioBufferList_I_1_AudioBuffer_II_v___12__0I8l;
        v151[4] = this;
        v84 = [v83 setManualRenderingInputPCMFormat:v147 inputBlock:v151];

        if ((v84 & 1) == 0)
        {
          v85 = CALog::LogObjIfEnabled(1, kAVVCScope);
          v86 = v85;
          if (v85)
          {
            v87 = v85;
            if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v167 = "AVVCAudioQueueRecordingEngine.mm";
              v168 = 1024;
              v169 = 849;
              _os_log_impl(&dword_1BA5AC000, v87, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVC: failed to set AVAudioEngine input rendering block", buf, 0x12u);
            }
          }
        }

        v88 = CALog::LogObjIfEnabled(5, kAVVCScope);
        v89 = v88;
        if (v88)
        {
          v90 = v88;
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v167 = "AVVCAudioQueueRecordingEngine.mm";
            v168 = 1024;
            v169 = 853;
            _os_log_impl(&dword_1BA5AC000, v90, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVC: Making AVAudioEngine node connections", buf, 0x12u);
          }
        }

        [*(this + 102) attachNode:*(this + 103)];
        v91 = *(this + 102);
        v92 = [v91 inputNode];
        [v91 connect:v92 to:*(this + 103) format:v146];

        v93 = *(this + 102);
        v94 = *(this + 103);
        v95 = [v93 outputNode];
        [v93 connect:v94 to:v95 format:v145];

        v96 = CALog::LogObjIfEnabled(5, kAVVCScope);
        v97 = v96;
        if (v96)
        {
          v98 = v96;
          if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
          {
            CAStreamBasicDescription::AsString((this + 24), buf, 0x100uLL, v99, v100);
            *v160 = 136315650;
            v161 = "AVVCAudioQueueRecordingEngine.mm";
            v162 = 1024;
            v163 = 859;
            v164 = 2080;
            v165 = buf;
            _os_log_impl(&dword_1BA5AC000, v98, OS_LOG_TYPE_DEBUG, "%25s:%-5d mRecordASBD = %s", v160, 0x1Cu);
          }
        }

        v101 = CALog::LogObjIfEnabled(5, kAVVCScope);
        v102 = v101;
        if (v101)
        {
          v103 = v101;
          if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
          {
            *v160 = 136315650;
            v161 = "AVVCAudioQueueRecordingEngine.mm";
            v162 = 1024;
            v163 = 860;
            v164 = 1024;
            LODWORD(v165) = (v66 * v67);
            _os_log_impl(&dword_1BA5AC000, v103, OS_LOG_TYPE_DEBUG, "%25s:%-5d numFrames = %d", v160, 0x18u);
          }
        }

        v104 = CALog::LogObjIfEnabled(5, kAVVCScope);
        v105 = v104;
        if (v104)
        {
          v106 = v104;
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
          {
            v107 = [(AVAudioFormat *)v147 description];
            v108 = v107;
            v109 = [v107 UTF8String];
            *v160 = 136315650;
            v161 = "AVVCAudioQueueRecordingEngine.mm";
            v162 = 1024;
            v163 = 861;
            v164 = 2080;
            v165 = v109;
            _os_log_impl(&dword_1BA5AC000, v106, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVAE input format = %s", v160, 0x1Cu);
          }
        }

        v110 = CALog::LogObjIfEnabled(5, kAVVCScope);
        v111 = v110;
        if (v110)
        {
          v112 = v110;
          if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
          {
            v113 = [(AVAudioFormat *)v148 description];
            v114 = v113;
            v115 = [v113 UTF8String];
            *v160 = 136315650;
            v161 = "AVVCAudioQueueRecordingEngine.mm";
            v162 = 1024;
            v163 = 862;
            v164 = 2080;
            v165 = v115;
            _os_log_impl(&dword_1BA5AC000, v112, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVAE output format = %s", v160, 0x1Cu);
          }
        }

        v116 = CALog::LogObjIfEnabled(5, kAVVCScope);
        v117 = v116;
        if (v116)
        {
          v118 = v116;
          if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
          {
            v119 = [(AVAudioFormat *)v146 description];
            v120 = v119;
            v121 = [v119 UTF8String];
            *v160 = 136315650;
            v161 = "AVVCAudioQueueRecordingEngine.mm";
            v162 = 1024;
            v163 = 863;
            v164 = 2080;
            v165 = v121;
            _os_log_impl(&dword_1BA5AC000, v118, OS_LOG_TYPE_DEBUG, "%25s:%-5d DSPGraph input format = %s", v160, 0x1Cu);
          }
        }

        v122 = CALog::LogObjIfEnabled(5, kAVVCScope);
        v123 = v122;
        if (v122)
        {
          v124 = v122;
          if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
          {
            v125 = [(AVAudioFormat *)v145 description];
            v126 = v125;
            v127 = [v125 UTF8String];
            *v160 = 136315650;
            v161 = "AVVCAudioQueueRecordingEngine.mm";
            v162 = 1024;
            v163 = 864;
            v164 = 2080;
            v165 = v127;
            _os_log_impl(&dword_1BA5AC000, v124, OS_LOG_TYPE_DEBUG, "%25s:%-5d DSPGraph output format = %s", v160, 0x1Cu);
          }
        }

        v128 = CALog::LogObjIfEnabled(5, kAVVCScope);
        v129 = v128;
        if (v128)
        {
          v130 = v128;
          if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
          {
            v131 = [*(this + 102) description];
            v132 = v131;
            v133 = [v131 UTF8String];
            *v160 = 136315650;
            v161 = "AVVCAudioQueueRecordingEngine.mm";
            v162 = 1024;
            v163 = 867;
            v164 = 2080;
            v165 = v133;
            _os_log_impl(&dword_1BA5AC000, v130, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVC: Starting AVAudioEngine with desc = %s", v160, 0x1Cu);
          }
        }

        v134 = *(this + 102);
        v150 = 0;
        v135 = [v134 startAndReturnError:&v150];
        v74 = v150;
        if (v135)
        {
          v136 = CALog::LogObjIfEnabled(5, kAVVCScope);
          v137 = v136;
          if (v136)
          {
            v138 = v136;
            if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
            {
              *v160 = 136315394;
              v161 = "AVVCAudioQueueRecordingEngine.mm";
              v162 = 1024;
              v163 = 874;
              _os_log_impl(&dword_1BA5AC000, v138, OS_LOG_TYPE_DEBUG, "%25s:%-5d Done setting up DSPGraph", v160, 0x12u);
            }
          }

          v10 = 0;
          goto LABEL_172;
        }

        v139 = CALog::LogObjIfEnabled(1, kAVVCScope);
        v140 = v139;
        if (v139)
        {
          v141 = v139;
          if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
          {
            v142 = [v74 description];
            *v160 = 136315650;
            v161 = "AVVCAudioQueueRecordingEngine.mm";
            v162 = 1024;
            v163 = 870;
            v164 = 2112;
            v165 = v142;
            _os_log_impl(&dword_1BA5AC000, v141, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVC: Failed to start AVAudioEngine: %@", v160, 0x1Cu);
          }
        }

        v79 = [v74 code];
      }

      v10 = v79;
LABEL_172:

      v9 = v74;
LABEL_173:

LABEL_174:
      goto LABEL_175;
    }

    if (kAVVCScope)
    {
      v19 = *kAVVCScope;
      if (!v19)
      {
LABEL_60:
        v9 = 0;
        v10 = 4294956421;
        goto LABEL_177;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v167 = "AVVCAudioQueueRecordingEngine.mm";
      v168 = 1024;
      v169 = 764;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to instantiate AUDSPGraph", buf, 0x12u);
    }

    goto LABEL_60;
  }

  if (!kAVVCScope)
  {
    v6 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_17;
  }

  v6 = *kAVVCScope;
  if (v6)
  {
LABEL_17:
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v167 = "AVVCAudioQueueRecordingEngine.mm";
      v168 = 1024;
      v169 = 726;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_INFO, "%25s:%-5d AVVC - Cannot use DSP Graph. ", buf, 0x12u);
    }
  }

  v9 = 0;
LABEL_21:
  v10 = 0;
LABEL_177:

  return v10;
}

void AVVCRecordingEngine::setStreamState(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 216);
    if (v6 > 6)
    {
      v7 = "ILLEGAL";
    }

    else
    {
      v7 = off_1E7EF6338[v6];
    }

    v8 = off_1E7EF6338[a2];
    v9 = 136315906;
    v10 = "AVVCRecordingEngine.mm";
    v11 = 1024;
    v12 = 361;
    v13 = 2080;
    v14 = v7;
    v15 = 2080;
    v16 = v8;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setStreamState (%s => %s)", &v9, 0x26u);
  }

LABEL_11:
  *(a1 + 216) = a2;
}

id AVVCRecordingEngine::audioSession(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__721;
  v11 = __Block_byref_object_dispose__722;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN19AVVCRecordingEngine12audioSessionEPU15__autoreleasingP7NSError_block_invoke;
  v6[3] = &unk_1E7EF64B0;
  v6[4] = &v7;
  v6[5] = a1;
  if (*(a1 + 336) == -1)
  {
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once((a1 + 336), v6);
  if (a2)
  {
LABEL_3:
    *a2 = v8[5];
  }

LABEL_4:
  v4 = *(a1 + 344);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t AVVCAudioQueueRecordingEngine::setSessionIsRecordingFlag(AVVCRecordingEngine *this)
{
  v16 = *MEMORY[0x1E69E9840];
  isSessionRecording = AVVCRecordingEngine::isSessionRecording(this);
  v3 = (*(*this + 144))(this, isSessionRecording ^ 1u);
  if (v3)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        return v3;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = "AVVCAudioQueueRecordingEngine.mm";
      v10 = 1024;
      v11 = 1893;
      v12 = 1024;
      v13 = isSessionRecording ^ 1;
      v14 = 1024;
      v15 = v3;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d setSessionIsRecordingFlag: Failed at enableSiriListeningMode(%u) with error: %d", &v8, 0x1Eu);
    }
  }

  else
  {
    v5 = 1;
    if (!isSessionRecording)
    {
      v5 = 2;
    }

    *(this + 41) = v5;
  }

  return v3;
}

uint64_t AVVCRecordingEngine::isSessionRecording(AVVCRecordingEngine *this)
{
  v2 = (*(*this + 64))(this, 0);
  v3 = [v2 clientRequestsRecording];

  v4 = (*(*this + 64))(this, 0);
  v5 = [v4 sessionState];

  if (v5 == 7)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  if (*(this + 27) == 5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t ControllerImpl::setDuckOthersForStream(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__5601;
  v21 = __Block_byref_object_dispose__5602;
  v22 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN14ControllerImpl22setDuckOthersForStreamEmP16AVVCDuckSettingsPU15__autoreleasingP7NSError_block_invoke;
  v11[3] = &unk_1E7EF61C0;
  v15 = a1;
  v16 = a2;
  v8 = v7;
  v12 = v8;
  v13 = &v23;
  v14 = &v17;
  makeSynchronous(v11);
  if (a4)
  {
    *a4 = v18[5];
  }

  v9 = *(v24 + 24);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v9;
}

void sub_1BA5D111C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v25 - 80), 8);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl48setEnableInterruptionByRecordingClientsForStreamEmb_block_invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 40) + 64))(*(a1 + 40), 0);
  v3 = *(a1 + 56);
  v5 = 0;
  [v2 setPrefersBeingInterruptedByNextActiveRecordingClient:v3 error:&v5];
  v4 = v5;

  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = [v4 code];
  }
}

id AVVCAudioQueueRecordingEngine::setDeviceIOBufferSizeFrames(AudioQueueRef *this, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  ElapsedTime::ElapsedTime(v24, "setDeviceIOBufferSizeFrames", "setDeviceIOBufferSizeFrames", 0);
  inData = a2;
  v4 = (*(*this + 8))(this, 0);
  v5 = [v4 siriInputSource];

  v6 = IsAnyAppRecording();
  if (v5 == 1936290660 && !v6)
  {
    v7 = AudioQueueSetProperty(this[75], 0x64766266u, &inData, 4u);
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_16:
        if (!v7)
        {
          *(this + 148) = inData;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v18 = "AVVCAudioQueueRecordingEngine.mm";
      v19 = 1024;
      v20 = 971;
      v21 = 1024;
      *v22 = inData;
      *&v22[4] = 1024;
      *&v22[6] = v7;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setDeviceIOBufferSizeFrames: AudioQueueSetProperty(kAudioQueueProperty_DeviceBufferSizeFrames) : %u err : %d", buf, 0x1Eu);
    }

    goto LABEL_16;
  }

  if (kAVVCScope)
  {
    v7 = *kAVVCScope;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v7;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = Get4CCFromInt(v5);
    *buf = 136315906;
    v18 = "AVVCAudioQueueRecordingEngine.mm";
    v19 = 1024;
    v20 = 977;
    v21 = 2112;
    *v22 = v11;
    *&v22[8] = 1024;
    v23 = v6;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setDeviceIOBufferSizeFrames: Not setting DeviceBufferSizeFrames. siri input source: %@, isAnyAppRecording: %d", buf, 0x22u);
  }

  v7 = 0;
LABEL_18:
  if (kAVVCScope)
  {
    v13 = *kAVVCScope;
    if (!v13)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v18 = "AVVCAudioQueueRecordingEngine.mm";
    v19 = 1024;
    v20 = 980;
    v21 = 1024;
    *v22 = inData;
    *&v22[4] = 1024;
    *&v22[6] = v7;
    _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d setDeviceIOBufferSizeFrames: %u err : %d", buf, 0x1Eu);
  }

LABEL_25:
  ElapsedTime::~ElapsedTime(v24);
  return v7;
}

void sub_1BA5D1540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  ElapsedTime::~ElapsedTime(va);
  _Unwind_Resume(a1);
}

BOOL IsAnyAppRecording(void)
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = GetRecordingAppsList();
  if (kAVVCScope)
  {
    v1 = *kAVVCScope;
    if (!v1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315650;
    v5 = "AVVCUtils.mm";
    v6 = 1024;
    v7 = 1501;
    v8 = 2112;
    v9 = v0;
    _os_log_impl(&dword_1BA5AC000, v1, OS_LOG_TYPE_DEBUG, "%25s:%-5d Apps currently recording: %@", &v4, 0x1Cu);
  }

LABEL_8:
  return v0 != 0;
}

void ___ZN14ControllerImpl26getRecordSettingsForStreamEP17AVVoiceControllermU13block_pointerFvmP12NSDictionaryP7NSErrorE_block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v24, *(*(a1 + 40) + 576), *(*(a1 + 40) + 584), *(a1 + 56));
  v2 = v24;
  if (!v24)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "ControllerImpl.mm";
      v28 = 1024;
      v29 = 6113;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d getRecordSettingsForStream: Nil recording engine", buf, 0x12u);
    }

LABEL_20:
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9 != 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = ___ZN14ControllerImpl26getRecordSettingsForStreamEP17AVVoiceControllermU13block_pointerFvmP12NSDictionaryP7NSErrorE_block_invoke_509;
    v21[3] = &unk_1E7EF6590;
    v12 = v9;
    v13 = *(a1 + 56);
    v22 = v12;
    v23 = v13;
    ControllerImpl::safeNotifyAlwaysAsync(v10, v11, v21);

    v3 = v25;
    if (!v25)
    {
      return;
    }

    goto LABEL_11;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl26getRecordSettingsForStreamEP17AVVoiceControllermU13block_pointerFvmP12NSDictionaryP7NSErrorE_block_invoke_2;
  v14[3] = &unk_1F38484A8;
  v3 = v25;
  v16 = v24;
  v17 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  v18 = *(a1 + 40);
  v19 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v15 = v5;
  v20 = v6;
  (*(*v2 + 328))(v2, v14, "getRecordSettingsForStream_block_invoke");

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v3)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1BA5D1900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (*(v23 - 72))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v23 - 72));
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl26getRecordSettingsForStreamEP17AVVoiceControllermU13block_pointerFvmP12NSDictionaryP7NSErrorE_block_invoke_2(void *a1)
{
  v2 = *(a1[5] + 64);
  v3 = a1[7];
  v4 = a1[4];
  v5 = v4 != 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN14ControllerImpl26getRecordSettingsForStreamEP17AVVoiceControllermU13block_pointerFvmP12NSDictionaryP7NSErrorE_block_invoke_3;
  v9[3] = &unk_1E7EF5DB0;
  v6 = v4;
  v7 = a1[9];
  v11 = v6;
  v12 = v7;
  v10 = v2;
  v8 = v2;
  ControllerImpl::safeNotifyAlwaysAsync(v3, v5, v9);
}

uint64_t ControllerImpl::startRecordForStream(ControllerImpl *this, AVVoiceController *a2, AVVCStartRecordSettings *a3)
{
  v5 = a2;
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettings_block_invoke;
  v11[3] = &unk_1E7EF5D88;
  v15 = this;
  v7 = v5;
  v12 = v7;
  v8 = v6;
  v13 = v8;
  v14 = &v16;
  makeSynchronous(v11);
  v9 = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return v9;
}

void sub_1BA5D1B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettings_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettings_block_invoke_2;
  v9[3] = &unk_1E7EF5E00;
  v6 = a1[6];
  v7 = a1[7];
  v10 = v3;
  v11 = v6;
  v8 = v3;
  ControllerImpl::startRecordForStream(v7, v4, v5, v9);
}

void ControllerImpl::startRecordForStream(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v10 = *kAVVCScope;
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 4890;
          v25 = 2048;
          v26 = [v8 streamID];
          _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d startRecordForStream streamID(%lu)", buf, 0x1Cu);
        }
      }
    }
  }

  v12 = +[AVVCMetricsManager sharedManager];
  [v12 setCallToStartRecordHostTime:mach_absolute_time()];

  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(buf, *(a1 + 8), *(a1 + 16));
  v13 = *buf;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3321888768;
  v17[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke;
  v17[3] = &unk_1F3848358;
  v21 = a1;
  v14 = v8;
  v18 = v14;
  v22 = v13;
  v23 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
  }

  v15 = v9;
  v20 = v15;
  v16 = v7;
  v19 = v16;
  ControllerImpl::safeWork(v13, v17, "startRecordForStream");

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v25, *(*(a1 + 56) + 576), *(*(a1 + 56) + 584), [*(a1 + 32) streamID]);
  v2 = v25;
  if (!v25)
  {
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) streamID];
      *buf = 136315650;
      v28 = "ControllerImpl.mm";
      v29 = 1024;
      v30 = 4901;
      v31 = 2048;
      v32 = v10;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d startRecordForStream: Cannot find recording engine for streamID(%lu). Returning.", buf, 0x1Cu);
    }

LABEL_20:
    v11 = *(a1 + 64);
    v12 = *(a1 + 48);
    v13 = v12 != 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_390;
    v22[3] = &unk_1E7EF6710;
    v24 = v12;
    v23 = *(a1 + 32);
    ControllerImpl::safeNotifyAlwaysAsync(v11, v13, v22);

    v3 = v26;
    if (!v26)
    {
      return;
    }

    goto LABEL_11;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_2;
  v14[3] = &unk_1F3848010;
  v3 = v26;
  v18 = v25;
  v19 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  v15 = v4;
  v20 = v6;
  v21 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 48);
  v16 = *(a1 + 40);
  (*(*v2 + 328))(v2, v14, "startRecordForStream_block_invoke");

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v3)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1BA5D2200(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 56) + 216);
  if (v2 <= 1)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_16:
        v9 = *(a1 + 48);
        v10 = *(*(a1 + 56) + 216);
        v11 = *(a1 + 72);
        v12 = v9 != 0;
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_391;
        v48[3] = &unk_1E7EF5DB0;
        v50 = v9;
        v49 = *(a1 + 32);
        v51 = v10;
        ControllerImpl::safeNotifyAlwaysAsync(v11, v12, v48);

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    v7 = v3;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) streamID];
      *buf = 136315650;
      v54 = "ControllerImpl.mm";
      v55 = 1024;
      v56 = 4910;
      v57 = 2048;
      v58 = v8;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d startRecordForStream: Attempt to start stream(%ld) without calling prepare.", buf, 0x1Cu);
    }

    goto LABEL_16;
  }

  if ((v2 & 0x7FFFFFFFFFFFFFFELL) == 4)
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
LABEL_36:
        v32 = *(a1 + 48);
        v33 = *(*(a1 + 56) + 216);
        v34 = *(a1 + 72);
        v35 = v32 != 0;
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_392;
        v44[3] = &unk_1E7EF5DB0;
        v46 = v32;
        v45 = *(a1 + 32);
        v47 = v33;
        ControllerImpl::safeNotifyAlwaysAsync(v34, v35, v44);

        return;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    v14 = v4;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) streamID];
      v16 = *(*(a1 + 56) + 216);
      if (v16 > 6)
      {
        v17 = "ILLEGAL";
      }

      else
      {
        v17 = off_1E7EF6338[v16];
      }

      *buf = 136315906;
      v54 = "ControllerImpl.mm";
      v55 = 1024;
      v56 = 4919;
      v57 = 2048;
      v58 = v15;
      v59 = 2080;
      v60 = v17;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d startRecordForStream: Attempt to start stream(%ld) while stream is already %s. No-op.", buf, 0x26u);
    }

    goto LABEL_36;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
    goto LABEL_22;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_22:
    v19 = v5;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = (*(**(a1 + 56) + 56))(*(a1 + 56), 0);
      v21 = (*(**(a1 + 56) + 64))(*(a1 + 56), 0);
      v22 = *(a1 + 56);
      CAX4CCString::CAX4CCString(v52, *(v22 + 272));
      v23 = AVVCRouteManager::getRecordDeviceUID(*(*(a1 + 56) + 368));
      *buf = 136316674;
      v54 = "ControllerImpl.mm";
      v55 = 1024;
      v56 = 4933;
      v57 = 2048;
      v58 = v20;
      v59 = 2048;
      v60 = v21;
      v61 = 2048;
      v62 = v22;
      v63 = 2080;
      v64 = v52;
      v65 = 2112;
      v66 = v23;
      _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d session (%p) and session mananger (%p) used for engine (%p) with context(%s, %@)", buf, 0x44u);
    }
  }

  v24 = *(a1 + 56);
  *(v24 + 232) = [*(a1 + 32) startHostTime];
  v25 = *(a1 + 56);
  *(v25 + 240) = [*(a1 + 32) startAnchorPoint];
  v26 = *(a1 + 56);
  *(v26 + 245) = 0;
  AVVCRecordingEngine::setStreamState(v26, 4);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3321888768;
  v36[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_393;
  v36[3] = &unk_1F3848048;
  v28 = *(a1 + 72);
  v27 = *(a1 + 80);
  v40 = v28;
  v41 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v29 = *(a1 + 32);
  v31 = *(a1 + 56);
  v30 = *(a1 + 64);
  v37 = v29;
  v42 = v31;
  v43 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = *(a1 + 48);
  v38 = *(a1 + 40);
  ControllerImpl::safeWork(v28, v36, "startRecordForStream_block_invoke");

  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }
}