@interface AVVCRecordDeviceInfo
- (AVVCRecordDeviceInfo)initWithRecordingEngine:(shared_ptr<AVVCRecordingEngine>)engine;
- (void)dealloc;
@end

@implementation AVVCRecordDeviceInfo

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v3 = *kAVVCScope;
      if (v3)
      {
        v4 = v3;
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v7 = "AVVoiceController.mm";
          v8 = 1024;
          v9 = 231;
          v10 = 2048;
          selfCopy = self;
          _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCRecordDeviceInfo dealloc. self(%p)", buf, 0x1Cu);
        }
      }
    }
  }

  v5.receiver = self;
  v5.super_class = AVVCRecordDeviceInfo;
  [(AVVCRecordDeviceInfo *)&v5 dealloc];
}

- (AVVCRecordDeviceInfo)initWithRecordingEngine:(shared_ptr<AVVCRecordingEngine>)engine
{
  var0 = engine.var0;
  v47 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = AVVCRecordDeviceInfo;
  v4 = [(AVVCRecordDeviceInfo *)&v38 init:engine.var0];
  if (v4)
  {
    if (!kAVVCScope)
    {
      goto LABEL_17;
    }

    if ((*(kAVVCScope + 8) & 1) == 0)
    {
      goto LABEL_17;
    }

    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_17;
    }

    v6 = v5;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
LABEL_16:

LABEL_17:
      recordRoute = v4->_recordRoute;
      v4->_recordRoute = 0;

      (*(**var0 + 304))(*var0, &v4->_recordRoute);
      v14 = *var0;
      v4->_isUpsamplingSourceAudio = *(*var0 + 320);
      v15 = AVVCRouteManager::getRecordDeviceUID(*(v14 + 368));
      if (v15)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithString:v15];
      }

      else
      {
        v16 = 0;
      }

      remoteDeviceUIDString = v4->_remoteDeviceUIDString;
      v4->_remoteDeviceUIDString = v16;

      if ((*(**var0 + 296))(*var0) == 2)
      {
        v4->_isRemoteDevice = 0;
        remoteProductIdentifier = v4->_remoteProductIdentifier;
        v4->_remoteProductIdentifier = 0;

        remoteDeviceUID = v4->_remoteDeviceUID;
        v4->_remoteDeviceUID = 0;
      }

      else
      {
        v4->_isRemoteDevice = 1;
        if ((*(**var0 + 296))(*var0) == 1)
        {
          v20 = *(*var0 + 368);
          if (IsSerializationEnabled(void)::onceToken != -1)
          {
            dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
          }

          if (IsSerializationEnabled(void)::enable == 1)
          {
            v21 = *v20;
          }

          else
          {
            std::mutex::lock((v20 + 56));
            v21 = *v20;
            std::mutex::unlock((v20 + 56));
          }

          if (kAVVCScope)
          {
            if (*(kAVVCScope + 8))
            {
              v24 = *kAVVCScope;
              if (v24)
              {
                v25 = v24;
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315650;
                  v40 = "AVVoiceController.mm";
                  v41 = 1024;
                  v42 = 213;
                  v43 = 2112;
                  v44 = v21;
                  _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCRecordDeviceInfo initWithRecordingEngine: recordDeviceName(%@)", buf, 0x1Cu);
                }
              }
            }
          }

          if (v21)
          {
            v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v21];
          }

          else
          {
            v26 = 0;
          }

          v27 = v4->_remoteProductIdentifier;
          v4->_remoteProductIdentifier = v26;

          if (kAVVCScope)
          {
            if (*(kAVVCScope + 8))
            {
              v28 = *kAVVCScope;
              if (v28)
              {
                v29 = v28;
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315650;
                  v40 = "AVVoiceController.mm";
                  v41 = 1024;
                  v42 = 215;
                  v43 = 2112;
                  v44 = v15;
                  _os_log_impl(&dword_1BA5AC000, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCRecordDeviceInfo initWithRecordingEngine: remoteDeviceUUID(%@)", buf, 0x1Cu);
                }
              }
            }
          }

          if (v15)
          {
            v30 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v15];
          }

          else
          {
            v30 = 0;
          }

          v31 = v4->_remoteDeviceUID;
          v4->_remoteDeviceUID = v30;

          v32 = *(*var0 + 368);
          if (IsSerializationEnabled(void)::onceToken != -1)
          {
            dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
          }

          if (IsSerializationEnabled(void)::enable == 1)
          {
            v33 = *(v32 + 8);
          }

          else
          {
            std::mutex::lock((v32 + 56));
            v33 = *(v32 + 8);
            std::mutex::unlock((v32 + 56));
          }

          v4->_remoteDeviceCategory = v33;
          if (kAVVCScope)
          {
            if (*(kAVVCScope + 8))
            {
              v34 = *kAVVCScope;
              if (v34)
              {
                v35 = v34;
                if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                {
                  remoteDeviceCategory = v4->_remoteDeviceCategory;
                  *buf = 136315650;
                  v40 = "AVVoiceController.mm";
                  v41 = 1024;
                  v42 = 218;
                  v43 = 1024;
                  LODWORD(v44) = remoteDeviceCategory;
                  _os_log_impl(&dword_1BA5AC000, v35, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCRecordDeviceInfo initWithVoiceController: remoteDeviceCategory(%d)", buf, 0x18u);
                }
              }
            }
          }

          goto LABEL_60;
        }

        v22 = v4->_remoteProductIdentifier;
        v4->_remoteProductIdentifier = 0;

        v23 = v4->_remoteDeviceUID;
        v4->_remoteDeviceUID = 0;
      }

      v4->_remoteDeviceCategory = 0;
LABEL_60:

      return v4;
    }

    v7 = *var0;
    v8 = *(var0 + 1);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v7)
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = *(v7 + 264);
        v11 = v8->__shared_owners_ + 1;
LABEL_11:
        v12 = [v9 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v7, v10, v11];
LABEL_13:
        *buf = 136315906;
        v40 = "AVVoiceController.mm";
        v41 = 1024;
        v42 = 192;
        v43 = 2112;
        v44 = v12;
        v45 = 2048;
        v46 = v4;
        _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCRecordDeviceInfo initWithRecordingEngine[%@]. self(%p)", buf, 0x26u);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        goto LABEL_16;
      }
    }

    else if (v7)
    {
      v11 = 0;
      v9 = MEMORY[0x1E696AEC0];
      v10 = *(v7 + 264);
      goto LABEL_11;
    }

    v12 = @"(0x0) use_count:0";
    goto LABEL_13;
  }

  return v4;
}

@end