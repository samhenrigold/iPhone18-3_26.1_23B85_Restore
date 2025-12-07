@interface AVHapticServerInstance
- (AVHapticServerInstance)initWithMaster:(id)master id:(unint64_t)id connection:(id)connection outError:(id *)error;
- (BOOL)handleClientApplicationStateChange:(id)change;
- (BOOL)handleClientApplicationStateChangeUsingAppState:(unint64_t)state;
- (BOOL)setupAudioSessionFromID:(unsigned int)d isShared:(BOOL)shared error:(id *)error;
- (id).cxx_construct;
- (id)getAsyncDelegateForMethod:(SEL)method errorHandler:(id)handler;
- (id)getSyncDelegateForMethod:(SEL)method errorHandler:(id)handler;
- (void)allocateClientResources:(id)resources;
- (void)configureWithOptions:(id)options reply:(id)reply;
- (void)copyCustomAudioEvent:(unint64_t)event options:(id)options reply:(id)reply;
- (void)createCustomAudioEvent:(id)event format:(id)format frames:(unint64_t)frames options:(id)options reply:(id)reply;
- (void)dealloc;
- (void)detachSequence:(unint64_t)sequence;
- (void)fadeClientForSessionInterruption:(BOOL)interruption affectHaptics:(BOOL)haptics fadeTime:(float)time fadeLevel:(float)level stopAfterFade:(BOOL)fade;
- (void)getHapticLatency:(id)latency;
- (void)handleClientRouteChange:(id)change;
- (void)handleConnectionError;
- (void)handleInterruptionForSession:(const void *)session command:(unsigned int)command dictionary:(id)dictionary;
- (void)loadHapticEvent:(id)event reply:(id)reply;
- (void)loadHapticSequenceFromData:(id)data reply:(id)reply;
- (void)loadHapticSequenceFromEvents:(id)events reply:(id)reply;
- (void)loadVibePattern:(id)pattern reply:(id)reply;
- (void)muteClientForRingerSwitch:(BOOL)switch;
- (void)notifyClientOnStopWithReason:(int64_t)reason error:(id)error;
- (void)prepareHapticSequence:(caulk::inplace_function_detail::wrapper<-[AVHapticServerInstance)prepareHapticSequence:reply:]::$_1> reply:;
- (void)prepareHapticSequence:(unint64_t)sequence reply:(id)reply;
- (void)prewarm:(id)prewarm;
- (void)queryCapabilities:(id)capabilities reply:(id)reply;
- (void)referenceCustomAudioEvent:(unint64_t)event reply:(id)reply;
- (void)releaseChannels;
- (void)releaseClientResources;
- (void)releaseCustomAudioEvent:(unint64_t)event reply:(id)reply;
- (void)removeChannel:(unint64_t)channel reply:(id)reply;
- (void)removeSessionListeners;
- (void)requestChannels:(unint64_t)channels reply:(id)reply;
- (void)setChannelEventBehavior:(unint64_t)behavior behavior:(unint64_t)a4 reply:(id)reply;
- (void)setPlayerBehavior:(unint64_t)behavior reply:(id)reply;
- (void)setSequenceEventBehavior:(unint64_t)behavior behavior:(unint64_t)a4 channelIndex:(unint64_t)index reply:(id)reply;
- (void)startRunning:(id)running;
- (void)stopPrewarm;
- (void)stopRunning;
- (void)stopRunning:(id)running;
- (void)unmuteClientAfterSessionInterruption:(float)interruption;
@end

@implementation AVHapticServerInstance

- (id).cxx_construct
{
  *(self + 76) = 0;
  *(self + 128) = 0;
  *(self + 136) = 0;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 108) = 0u;
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 57) = 0u;
  return self;
}

- (void)setSequenceEventBehavior:(unint64_t)behavior behavior:(unint64_t)a4 channelIndex:(unint64_t)index reply:(id)reply
{
  indexCopy = index;
  v27 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (kHSRVScope)
  {
    v11 = *kHSRVScope;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *v20 = 136316162;
    *&v20[4] = "AVHapticServer.mm";
    *&v20[12] = 1024;
    *&v20[14] = 1525;
    v21 = 2080;
    v22 = "[AVHapticServerInstance setSequenceEventBehavior:behavior:channelIndex:reply:]";
    v23 = 2048;
    v24 = clientID;
    v25 = 1024;
    v26 = a4;
    _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx behavior: %u", v20, 0x2Cu);
  }

LABEL_8:
  master = self->_master;
  if (!master)
  {
    *v20 = 0;
    *&v20[8] = 0;
    goto LABEL_18;
  }

  objc_msgSend_entryWithID_(master);
  if (!*v20)
  {
LABEL_18:
    v18 = -4812;
    goto LABEL_19;
  }

  [(AVHapticServer *)self->_master manager];
  v16 = *v20;
  v15 = *&v20[8];
  if (*&v20[8])
  {
    atomic_fetch_add_explicit((*&v20[8] + 8), 1uLL, memory_order_relaxed);
  }

  SequencerChannelForIndex = ClientEntry::getSequencerChannelForIndex(v16, behavior, indexCopy);
  if (SequencerChannelForIndex != -1)
  {
    ClientEntry::setChannelBehaviorForSynthChannel(v16, SequencerChannelForIndex, a4);
    v18 = 0;
    if (!v15)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v18 = -4804;
  if (v15)
  {
LABEL_14:
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

LABEL_15:
  if (SequencerChannelForIndex != -1)
  {
    v19 = 0;
    goto LABEL_20;
  }

LABEL_19:
  v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v18 userInfo:{0, *v20}];
LABEL_20:
  replyCopy[2](replyCopy, v19);

  if (*&v20[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v20[8]);
  }
}

- (void)setChannelEventBehavior:(unint64_t)behavior behavior:(unint64_t)a4 reply:(id)reply
{
  v34 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (kHSRVScope)
  {
    v9 = *kHSRVScope;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    v23 = "AVHapticServer.mm";
    v24 = 1024;
    v25 = 1512;
    v26 = 2080;
    v27 = "[AVHapticServerInstance setChannelEventBehavior:behavior:reply:]";
    v28 = 2048;
    v29 = clientID;
    v30 = 1024;
    behaviorCopy = a4;
    _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx behavior: %u", buf, 0x2Cu);
  }

LABEL_8:
  master = self->_master;
  if (!master)
  {
    v20 = 0;
    v21 = 0;
    goto LABEL_14;
  }

  objc_msgSend_entryWithID_(master);
  if (!v20)
  {
LABEL_14:
    v14 = -4812;
LABEL_15:
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v14 userInfo:{0, v20}];
    goto LABEL_22;
  }

  if (kHSRVScope)
  {
    v13 = *kHSRVScope;
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(v20 + 24);
    *buf = 136316418;
    v23 = "ClientEntry.mm";
    v24 = 1024;
    v25 = 820;
    v26 = 2080;
    v27 = "setChannelBehaviorForChannelID";
    v28 = 2048;
    v29 = v17;
    v30 = 1024;
    behaviorCopy = behavior;
    v32 = 1024;
    v33 = a4;
    _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Channel behavior change: Client ID 0x%lx, channelID: 0x%x, behavior: %u", buf, 0x32u);
  }

LABEL_20:
  AssignedChannelWithID = ClientEntry::getAssignedChannelWithID(v20, behavior);
  if (AssignedChannelWithID == -1)
  {
    v14 = -4804;
    goto LABEL_15;
  }

  ClientEntry::setChannelBehaviorForSynthChannel(v20, AssignedChannelWithID, a4);
  v15 = 0;
LABEL_22:
  v19 = v15;
  replyCopy[2](replyCopy, v19);

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

- (void)removeChannel:(unint64_t)channel reply:(id)reply
{
  v84 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (kHCHNScope)
  {
    v8 = *kHCHNScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    *&buf[4] = "AVHapticServer.mm";
    v75 = 1024;
    *v76 = 1492;
    *&v76[4] = 2080;
    *&v76[6] = "[AVHapticServerInstance removeChannel:reply:]";
    *&v76[14] = 2048;
    *&v76[16] = clientID;
    *&v76[24] = 1024;
    channelCopy = channel;
    _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx channelID: %u", buf, 0x2Cu);
  }

LABEL_8:
  v11 = self->_master;
  objc_sync_enter(v11);
  master = self->_master;
  if (master)
  {
    objc_msgSend_entryWithID_(master);
    if (v69)
    {
      if (kHCHNScope)
      {
        if (*(kHCHNScope + 8))
        {
          v13 = *kHCHNScope;
          if (v13)
          {
            channelCopy3 = v13;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              v14 = *(v69 + 24);
              *buf = 136316162;
              *&buf[4] = "ClientEntry.mm";
              *v76 = 229;
              *&v76[4] = 2080;
              v75 = 1024;
              *&v76[6] = "removeAssignedChannelWithID";
              *&v76[14] = 1024;
              *&v76[16] = v14;
              *&v76[20] = 1024;
              *&v76[22] = channel;
              _os_log_impl(&dword_1B9A08000, channelCopy3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x, key: %u", buf, 0x28u);
            }
          }
        }
      }

      v15 = atomic_load((v69 + 120));
      if (v15 == 5 || (v16 = atomic_load((v69 + 120)), v16 > 1))
      {
        if (kHCHNScope)
        {
          v17 = *kHCHNScope;
          if (!v17)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v17 = MEMORY[0x1E69E9C10];
          v20 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "ClientEntry.mm";
          v75 = 1024;
          *v76 = 252;
          *&v76[4] = 2080;
          *&v76[6] = "removeAssignedChannelWithID";
          _os_log_impl(&dword_1B9A08000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Flushing or running, so queueing chan ID for later release", buf, 0x1Cu);
        }

LABEL_28:
        caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(v69 + 488);
        v21 = *(v69 + 456);
        if (v21)
        {
          v22 = vcnt_s8(v21);
          v22.i16[0] = vaddlv_u8(v22);
          if (v22.u32[0] > 1uLL)
          {
            channelCopy3 = channel;
            if (v21 <= channel)
            {
              channelCopy3 = channel % v21;
            }
          }

          else
          {
            channelCopy3 = (v21 - 1) & channel;
          }

          v24 = *(*(v69 + 448) + 8 * channelCopy3);
          if (v24)
          {
            for (i = *v24; i; i = *i)
            {
              v26 = i[1];
              if (v26 == channel)
              {
                if (i[2] == channel)
                {
                  goto LABEL_134;
                }
              }

              else
              {
                if (v22.u32[0] > 1uLL)
                {
                  if (v26 >= v21)
                  {
                    v26 %= v21;
                  }
                }

                else
                {
                  v26 &= v21 - 1;
                }

                if (v26 != channelCopy3)
                {
                  break;
                }
              }
            }
          }
        }

        v27 = MEMORY[0x1E69E3C08];
        if (!*MEMORY[0x1E69E3C08])
        {
          goto LABEL_163;
        }

        v28 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *v28 = 0;
        *(v28 + 8) = channel;
        *(v28 + 16) = channel;
        *(v28 + 24) = 0;
        v29 = (*(v69 + 472) + 1);
        v30 = *(v69 + 480);
        if (v21 && (v30 * v21) >= v29)
        {
LABEL_124:
          v60 = *(v69 + 448);
          v61 = *(v60 + 8 * channelCopy3);
          if (v61)
          {
            *v28 = *v61;
          }

          else
          {
            *v28 = *(v69 + 464);
            *(v69 + 464) = v28;
            *(v60 + 8 * channelCopy3) = v69 + 464;
            if (!*v28)
            {
              goto LABEL_133;
            }

            v62 = *(*v28 + 8);
            if ((v21 & (v21 - 1)) != 0)
            {
              if (v62 >= v21)
              {
                v62 %= v21;
              }
            }

            else
            {
              v62 &= v21 - 1;
            }

            v61 = (*(v69 + 448) + 8 * v62);
          }

          *v61 = v28;
LABEL_133:
          ++*(v69 + 472);
LABEL_134:
          caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v69 + 488);
          goto LABEL_135;
        }

        v31 = 1;
        if (v21 >= 3)
        {
          v31 = (v21 & (v21 - 1)) != 0;
        }

        v32 = v31 | (2 * v21);
        v33 = vcvtps_u32_f32(v29 / v30);
        if (v32 <= v33)
        {
          prime = v33;
        }

        else
        {
          prime = v32;
        }

        if (*&prime == 1)
        {
          prime = 2;
        }

        else if ((*&prime & (*&prime - 1)) != 0)
        {
          prime = std::__next_prime(*&prime);
        }

        v21 = *(v69 + 456);
        if (*&prime > v21)
        {
LABEL_61:
          if (!(*&prime >> 61) && *v27)
          {
            v35 = caulk::rt_safe_memory_resource::rt_allocate(*v27);
            v36 = *(v69 + 448);
            *(v69 + 448) = v35;
            if (v36)
            {
              std::__bucket_list_deallocator<caulk::rt_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,BOOL>,void *> *> *>>::operator()[abi:ne200100](*(v69 + 456), v36);
            }

            v37 = 0;
            *(v69 + 456) = prime;
            do
            {
              *(*(v69 + 448) + 8 * v37++) = 0;
            }

            while (*&prime != v37);
            v38 = *(v69 + 464);
            if (v38)
            {
              v39 = v38[1];
              v40 = vcnt_s8(prime);
              v40.i16[0] = vaddlv_u8(v40);
              if (v40.u32[0] > 1uLL)
              {
                if (v39 >= *&prime)
                {
                  v39 %= *&prime;
                }
              }

              else
              {
                v39 &= *&prime - 1;
              }

              *(*(v69 + 448) + 8 * v39) = v69 + 464;
              v57 = *v38;
              if (*v38)
              {
                do
                {
                  v58 = v57[1];
                  if (v40.u32[0] > 1uLL)
                  {
                    if (v58 >= *&prime)
                    {
                      v58 %= *&prime;
                    }
                  }

                  else
                  {
                    v58 &= *&prime - 1;
                  }

                  if (v58 != v39)
                  {
                    v59 = *(v69 + 448);
                    if (!*(v59 + 8 * v58))
                    {
                      *(v59 + 8 * v58) = v38;
                      goto LABEL_115;
                    }

                    *v38 = *v57;
                    *v57 = **(v59 + 8 * v58);
                    **(v59 + 8 * v58) = v57;
                    v57 = v38;
                  }

                  v58 = v39;
LABEL_115:
                  v38 = v57;
                  v57 = *v57;
                  v39 = v58;
                }

                while (v57);
              }
            }

            v21 = prime;
            goto LABEL_119;
          }

LABEL_163:
          __break(1u);
          return;
        }

        if (*&prime < v21)
        {
          v41 = vcvtps_u32_f32(*(v69 + 472) / *(v69 + 480));
          if (v21 < 3 || (v42 = vcnt_s8(v21), v42.i16[0] = vaddlv_u8(v42), v42.u32[0] > 1uLL))
          {
            v41 = std::__next_prime(v41);
          }

          else
          {
            v43 = 1 << -__clz(v41 - 1);
            if (v41 >= 2)
            {
              v41 = v43;
            }
          }

          if (*&prime <= v41)
          {
            prime = v41;
          }

          if (*&prime >= v21)
          {
            v21 = *(v69 + 456);
          }

          else
          {
            if (prime)
            {
              goto LABEL_61;
            }

            v65 = *(v69 + 448);
            *(v69 + 448) = 0;
            if (v65)
            {
              std::__bucket_list_deallocator<caulk::rt_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long,BOOL>,void *> *> *>>::operator()[abi:ne200100](*(v69 + 456), v65);
            }

            v21 = 0;
            *(v69 + 456) = 0;
          }
        }

LABEL_119:
        if ((v21 & (v21 - 1)) != 0)
        {
          if (v21 <= channel)
          {
            channelCopy3 = channel % v21;
          }

          else
          {
            channelCopy3 = channel;
          }
        }

        else
        {
          channelCopy3 = (v21 - 1) & channel;
        }

        goto LABEL_124;
      }

      if (kHCHNScope)
      {
        v23 = *kHCHNScope;
        if (!v23)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v23 = MEMORY[0x1E69E9C10];
        v44 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "ClientEntry.mm";
        v75 = 1024;
        *v76 = 232;
        *&v76[4] = 2080;
        *&v76[6] = "removeAssignedChannelWithID";
        _os_log_impl(&dword_1B9A08000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Not flushing or running, so directly releasing assigned channel", buf, 0x1Cu);
      }

LABEL_80:
      __p = 0;
      v72 = 0;
      v45 = *(v69 + 432);
      v73 = 0;
      *buf = v69 + 256;
      buf[8] = 1;
      std::__shared_mutex_base::lock((v69 + 256));
      v46 = *(v69 + 240);
      *&v76[2] = v69 + 232;
      *&v76[10] = v69 + 424;
      *&v76[18] = v45;
      *(v69 + 424) = 1;
      if (!v46)
      {
        goto LABEL_88;
      }

      v47 = v69 + 240;
      do
      {
        v48 = *(v46 + 32);
        v49 = v48 >= channel;
        v50 = v48 < channel;
        if (v49)
        {
          v47 = v46;
        }

        v46 = *(v46 + 8 * v50);
      }

      while (v46);
      if (v47 != v69 + 240 && *(v47 + 32) <= channel)
      {
        if (*(v47 + 40) == -1)
        {
          if (kHCHNScope)
          {
            if (*(kHCHNScope + 8))
            {
              v66 = *kHCHNScope;
              if (v66)
              {
                v67 = v66;
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                {
                  *v78 = 136315650;
                  v79 = "ClientEntry.mm";
                  v80 = 1024;
                  v81 = 239;
                  v82 = 2080;
                  v83 = "operator()";
                  _os_log_impl(&dword_1B9A08000, v67, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Channel was already released", v78, 0x1Cu);
                }
              }
            }
          }

          v68 = 0;
        }

        else
        {
          std::vector<int>::push_back[abi:ne200100](&__p, (v47 + 40));
          v68 = -1;
        }

        std::__tree<std::__value_type<unsigned long,caulk::alloc::consolidating_free_map<AQ::SharedPageAllocator,10485760ul>::FreelistOfSize>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,caulk::alloc::consolidating_free_map<AQ::SharedPageAllocator,10485760ul>::FreelistOfSize>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,caulk::alloc::consolidating_free_map<AQ::SharedPageAllocator,10485760ul>::FreelistOfSize>>>::__remove_node_pointer((v69 + 232), v47);
        operator delete(v47);
        v51 = 1;
        v52 = v68;
      }

      else
      {
LABEL_88:
        v51 = 0;
        v52 = -1;
      }

      *(v69 + 424) = 0;
      std::__shared_mutex_base::unlock((v69 + 256));
      if ((v51 & 1) == 0)
      {
        if (kHCHNScope)
        {
          if (*(kHCHNScope + 8))
          {
            v53 = *kHCHNScope;
            if (v53)
            {
              v54 = v53;
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315906;
                *&buf[4] = "ClientEntry.mm";
                v75 = 1024;
                *v76 = 244;
                *&v76[4] = 2080;
                *&v76[6] = "removeAssignedChannelWithID";
                *&v76[14] = 1024;
                *&v76[16] = channel;
                _os_log_impl(&dword_1B9A08000, v54, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: ChannelID %u not found", buf, 0x22u);
              }
            }
          }
        }
      }

      v55 = __p;
      if (v72 != __p)
      {
        ClientEntry::releaseSynthChannels(v69, &__p);
        v52 = 0;
      }

      if (v55)
      {
        operator delete(v55);
      }

      if (!v52)
      {
LABEL_135:
        v19 = 0;
        goto LABEL_136;
      }

      if (kHCHNScope)
      {
        v56 = *kHCHNScope;
        if (!v56)
        {
LABEL_143:
          v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v52 userInfo:0];
          goto LABEL_23;
        }
      }

      else
      {
        v56 = MEMORY[0x1E69E9C10];
        v63 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v64 = self->_clientID;
        *buf = 136315906;
        *&buf[4] = "AVHapticServer.mm";
        v75 = 1024;
        *v76 = 1499;
        *&v76[4] = 2080;
        *&v76[6] = "[AVHapticServerInstance removeChannel:reply:]";
        *&v76[14] = 2048;
        *&v76[16] = v64;
        _os_log_impl(&dword_1B9A08000, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: clientID: 0x%lx - failed to release channel!", buf, 0x26u);
      }

      goto LABEL_143;
    }
  }

  else
  {
    v70 = 0;
  }

  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];
LABEL_23:
  v19 = v18;
LABEL_136:
  replyCopy[2](replyCopy, v19);

  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  objc_sync_exit(v11);
}

- (void)requestChannels:(unint64_t)channels reply:(id)reply
{
  v40 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (kHCHNScope)
  {
    v7 = *kHCHNScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1448;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticServerInstance requestChannels:reply:]";
    *&buf[28] = 2048;
    *&buf[30] = clientID;
    *&buf[38] = 1024;
    channelsCopy = channels;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx count: %u", buf, 0x2Cu);
  }

LABEL_8:
  v10 = self->_master;
  objc_sync_enter(v10);
  master = self->_master;
  if (!master)
  {
    v34 = 0;
    goto LABEL_52;
  }

  objc_msgSend_entryWithID_(master);
  if (!v33)
  {
    goto LABEL_52;
  }

  v32 = replyCopy;
  ClientEntry::getAssignedChannelIDs(buf, v33);
  v13 = *buf;
  v12 = *&buf[8];
  if (*buf)
  {
    operator delete(*buf);
  }

  if (v12 == v13)
  {
    if (channels >> 31)
    {
      CAAssertRtn();
      CAAssertRtn();
    }

    [(AVHapticServer *)self->_master getChannelID];
    channelsCopy2 = channels;
  }

  else
  {
    [(AVHapticServer *)self->_master getChannelID];
    channelsCopy2 = 1;
  }

  __p = 0;
  v36 = 0;
  v37 = 0;
  v31 = ClientEntry::requestAndInitializeSynthChannels(v33, &__p, channelsCopy2);
  if (!v31)
  {
    if (kHCHNScope)
    {
      v15 = *kHCHNScope;
      if (!v15)
      {
LABEL_25:
        if (__p != v36)
        {
          v17 = *(v33 + 432);
          *buf = v33 + 256;
          buf[8] = 1;
          std::__shared_mutex_base::lock((v33 + 256));
          *&buf[16] = v33 + 232;
          *&buf[24] = v33 + 424;
          *&buf[32] = v17;
          *(v33 + 424) = 1;
          operator new();
        }

        goto LABEL_27;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      *&buf[4] = "ClientEntry.mm";
      *&buf[12] = 1024;
      *&buf[14] = 209;
      *&buf[18] = 2080;
      *&buf[20] = "addChannels";
      *&buf[28] = 1024;
      *&buf[30] = (v36 - __p) >> 2;
      _os_log_impl(&dword_1B9A08000, v15, OS_LOG_TYPE_INFO, "%25s:%-5d %s: %u new synth channels now available -- binding to keys", buf, 0x22u);
    }

    goto LABEL_25;
  }

LABEL_27:
  std::__shared_mutex_base::lock_shared((v33 + 256));
  v18 = *(v33 + 248);
  std::__shared_mutex_base::unlock_shared((v33 + 256));
  LODWORD(v19) = channels;
  *(v33 + 440) = v18 != 0;
  replyCopy = v32;
  if (__p)
  {
    operator delete(__p);
  }

  if (v31)
  {
    if (kHCHNScope)
    {
      v20 = *kHCHNScope;
      if (!v20)
      {
LABEL_42:
        v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v31 userInfo:0];
        (*(v32 + 2))(v32, 0, v27);

        goto LABEL_52;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v26 = self->_clientID;
      *buf = 136315906;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1462;
      *&buf[18] = 2080;
      *&buf[20] = "[AVHapticServerInstance requestChannels:reply:]";
      *&buf[28] = 2048;
      *&buf[30] = v26;
      _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: clientID: 0x%lx - failed to get more channels!", buf, 0x26u);
    }

    goto LABEL_42;
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  ClientEntry::getAssignedChannelIDs(&__p, v33);
  v23 = __p;
  v22 = v36;
  if ((v36 - __p) >> 3 < channels)
  {
    v19 = (v36 - __p) >> 3;
  }

  if (!kHCHNScope)
  {
    v24 = MEMORY[0x1E69E9C10];
    v28 = MEMORY[0x1E69E9C10];
    goto LABEL_44;
  }

  v24 = *kHCHNScope;
  if (v24)
  {
LABEL_44:
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1476;
      *&buf[18] = 2080;
      *&buf[20] = "[AVHapticServerInstance requestChannels:reply:]";
      *&buf[28] = 1024;
      *&buf[30] = v19;
      _os_log_impl(&dword_1B9A08000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Placing %u assigned channel IDs in output NSArray", buf, 0x22u);
    }

    goto LABEL_47;
  }

  do
  {
LABEL_47:
    if (v22 == v23)
    {
      break;
    }

    v29 = *(v22 - 1);
    v22 -= 8;
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v29];
    [v21 addObject:v30];

    [(AVHapticServer *)self->_master incrementChannelID];
    LODWORD(v19) = v19 - 1;
  }

  while (v19);
  (*(v32 + 2))(v32, v21, 0);
  if (v23)
  {
    operator delete(v23);
  }

LABEL_52:
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  objc_sync_exit(v10);
}

- (void)releaseChannels
{
  v12 = *MEMORY[0x1E69E9840];
  if (kHCHNScope)
  {
    v3 = *kHCHNScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *v7 = 136315906;
    *&v7[4] = "AVHapticServer.mm";
    *&v7[12] = 1024;
    *&v7[14] = 1439;
    v8 = 2080;
    v9 = "[AVHapticServerInstance releaseChannels]";
    v10 = 2048;
    v11 = clientID;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", v7, 0x26u);
  }

LABEL_8:
  master = self->_master;
  if (master)
  {
    objc_msgSend_entryWithID_(master);
    if (*v7)
    {
      ClientEntry::clearAssignedChannels(*v7);
    }
  }

  else
  {
    *v7 = 0;
    *&v7[8] = 0;
  }

  if (*&v7[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v7[8]);
  }
}

- (void)setPlayerBehavior:(unint64_t)behavior reply:(id)reply
{
  v81 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (kHSRVScope)
  {
    v7 = *kHSRVScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1409;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticServerInstance setPlayerBehavior:reply:]";
    *&buf[28] = 2048;
    *&buf[30] = clientID;
    *&buf[38] = 1024;
    LODWORD(v77) = behavior;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx behavior: %u", buf, 0x2Cu);
  }

LABEL_8:
  v10 = self->_master;
  objc_sync_enter(v10);
  master = self->_master;
  if (!master)
  {
    v15 = 0;
    v58 = 0;
    goto LABEL_31;
  }

  objc_msgSend_entryWithID_(master);
  if (!v57)
  {
    v15 = 0;
    goto LABEL_31;
  }

  manager = [(AVHapticServer *)self->_master manager];
  if (v58)
  {
    atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (behavior >= 0x400)
  {
    if (kHSRVScope)
    {
      v16 = *kHSRVScope;
      if (!v16)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "ServerManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1290;
      *&buf[18] = 2080;
      *&buf[20] = "setClientPlayerBehavior";
      *&buf[28] = 1024;
      *&buf[30] = behavior;
      _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Illegal or unsupported player behavior: 0x%x", buf, 0x22u);
    }

LABEL_29:
    v15 = -4800;
    if (!v58)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  routeUsesReceiver = self->_routeUsesReceiver;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  if ((~behavior & 0x11) == 0)
  {
    if (kHSRVScope)
    {
      v14 = *kHSRVScope;
      if (!v14)
      {
LABEL_41:
        v15 = -4800;
        goto LABEL_126;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ServerManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1302;
      *&buf[18] = 2080;
      *&buf[20] = "setClientPlayerBehavior";
      _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Cannot set both haptics-only and audio-only", buf, 0x1Cu);
    }

    goto LABEL_41;
  }

  v55 = routeUsesReceiver;
  v56 = behavior & 0x10;
  if (kHSRVScope)
  {
    v17 = *kHSRVScope;
    if (!v17)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E9C10];
    v21 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(v57 + 24);
    v23 = "audio-only";
    *buf = 136316162;
    *&buf[4] = "ServerManager.mm";
    if ((behavior & 0x10) == 0)
    {
      v23 = "haptics+audio";
    }

    *&buf[12] = 1024;
    *&buf[14] = 1306;
    *&buf[20] = "setClientPlayerBehavior";
    *&buf[28] = 2048;
    *&buf[18] = 2080;
    if (behavior)
    {
      v23 = "haptics-only";
    }

    *&buf[30] = v22;
    *&buf[38] = 2080;
    v77 = v23;
    _os_log_impl(&dword_1B9A08000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client ID 0x%lx -> %s mode", buf, 0x30u);
  }

LABEL_50:
  v24 = (*(v57 + 96) & 0xFFFFFFFFFFFFFFFCLL | (2 * (behavior & 1)) | (v56 >> 4)) ^ 3;
  *(v57 + 96) = v24;
  if ((~behavior & 5) != 0)
  {
    goto LABEL_59;
  }

  if (!kHSRVScope)
  {
    v25 = MEMORY[0x1E69E9C10];
    v26 = MEMORY[0x1E69E9C10];
    goto LABEL_55;
  }

  v25 = *kHSRVScope;
  if (v25)
  {
LABEL_55:
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(v57 + 24);
      *buf = 136315906;
      *&buf[4] = "ServerManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1312;
      *&buf[18] = 2080;
      *&buf[20] = "setClientPlayerBehavior";
      *&buf[28] = 2048;
      *&buf[30] = v27;
      _os_log_impl(&dword_1B9A08000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Haptics-only client ID 0x%lx will not activate its audio session when starting", buf, 0x26u);
    }
  }

  v24 = *(v57 + 96) | 0x40;
  *(v57 + 96) = v24;
LABEL_59:
  if (((v24 >> 2) & 1) == (behavior & 2) >> 1)
  {
    goto LABEL_75;
  }

  *(v57 + 96) = v24 & 0xFFFFFFFFFFFFFFFBLL | (2 * (behavior & 2));
  if (!kHSRVScope)
  {
    v28 = MEMORY[0x1E69E9C10];
    v29 = MEMORY[0x1E69E9C10];
    goto LABEL_64;
  }

  v28 = *kHSRVScope;
  if (v28)
  {
LABEL_64:
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *&buf[4] = "ServerManager.mm";
      v30 = "now";
      v31 = *(v57 + 24);
      *buf = 136316162;
      *&buf[12] = 1024;
      if ((behavior & 2) == 0)
      {
        v30 = "no longer";
      }

      *&buf[14] = 1322;
      *&buf[18] = 2080;
      *&buf[20] = "setClientPlayerBehavior";
      *&buf[28] = 2048;
      *&buf[30] = v31;
      *&buf[38] = 2080;
      v77 = v30;
      _os_log_impl(&dword_1B9A08000, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client ID 0x%lx %s follows default route - updating mute state", buf, 0x30u);
    }
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3321888768;
  *&buf[16] = ___ZN13ServerManager23setClientPlayerBehaviorENSt3__110shared_ptrI11ClientEntryEEmb_block_invoke;
  *&buf[24] = &unk_1F37C5070;
  *&buf[32] = &v59;
  v77 = manager;
  v78 = v57;
  v79 = v58;
  if (v58)
  {
    atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v80 = v55;
  v32 = buf;
  if (AudioControlQueue(void)::once != -1)
  {
    dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
  }

  v33 = AudioControlQueue(void)::gAudioControlQueue;
  AT::DispatchBlock(v33, v32, 0, "executeSync", "ServerManager.mm", 325);

  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
  }

LABEL_75:
  v34 = behavior & 0x21;
  v35 = *(v57 + 96);
  if ((v34 != 0) == ((v35 >> 3) & 1))
  {
    goto LABEL_92;
  }

  if (!kHMUTScope)
  {
    v36 = MEMORY[0x1E69E9C10];
    v37 = MEMORY[0x1E69E9C10];
    goto LABEL_80;
  }

  v36 = *kHMUTScope;
  if (v36)
  {
LABEL_80:
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v38 = "Unmuting";
      v39 = *(v57 + 24);
      *v63 = 136316674;
      v64 = "ServerManager.mm";
      v65 = 1024;
      if ((behavior & 0x21) != 0)
      {
        v38 = "Muting";
      }

      v66 = 1331;
      v67 = 2080;
      v68 = "setClientPlayerBehavior";
      v69 = 2080;
      *v70 = v38;
      *&v70[8] = 2048;
      v71 = v39;
      v72 = 1024;
      v73 = (behavior >> 5) & 1;
      v74 = 1024;
      v75 = behavior & 1;
      _os_log_impl(&dword_1B9A08000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: %s audio on client ID 0x%lx due to player behaviors: MuteAudio %d, HapticsOnly %d", v63, 0x3Cu);
    }
  }

  if (kHMUTScope)
  {
    if (*(kHMUTScope + 8))
    {
      v40 = *kHMUTScope;
      if (v40)
      {
        v41 = v40;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v42 = *(v57 + 24);
          *v63 = 136316162;
          v64 = "ClientEntry.mm";
          v66 = 793;
          v67 = 2080;
          v65 = 1024;
          v68 = "setAudioBehaviorMuted";
          v69 = 1024;
          *v70 = v42;
          *&v70[4] = 1024;
          *&v70[6] = v34 != 0;
          _os_log_impl(&dword_1B9A08000, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x, mute all audio on this client: %d", v63, 0x28u);
        }
      }
    }
  }

  *(v57 + 96) = *(v57 + 96) & 0xFFFFFFFFFFFFFFF7 | (8 * (v34 != 0));
  ClientEntry::muteAudio(v57, v34 != 0, 6, 0.0);
  v35 = *(v57 + 96);
LABEL_92:
  v43 = behavior & 0x50;
  if ((v43 != 0) == ((v35 >> 4) & 1))
  {
    goto LABEL_109;
  }

  if (!kHMUTScope)
  {
    v44 = MEMORY[0x1E69E9C10];
    v45 = MEMORY[0x1E69E9C10];
    goto LABEL_97;
  }

  v44 = *kHMUTScope;
  if (v44)
  {
LABEL_97:
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(v57 + 24);
      v47 = "Unmuting";
      *v63 = 136316674;
      v64 = "ServerManager.mm";
      v65 = 1024;
      v66 = 1339;
      v67 = 2080;
      if ((behavior & 0x50) != 0)
      {
        v47 = "Muting";
      }

      v68 = "setClientPlayerBehavior";
      v69 = 2080;
      *v70 = v47;
      *&v70[8] = 2048;
      v71 = v46;
      v72 = 1024;
      v73 = (behavior >> 6) & 1;
      v74 = 1024;
      v75 = v56 >> 4;
      _os_log_impl(&dword_1B9A08000, v44, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: %s haptics on client ID 0x%lx due to player behaviors: MuteHaptics %d, AudioOnly %d", v63, 0x3Cu);
    }
  }

  if (kHMUTScope)
  {
    if (*(kHMUTScope + 8))
    {
      v48 = *kHMUTScope;
      if (v48)
      {
        v49 = v48;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          v50 = *(v57 + 24);
          *v63 = 136316162;
          v64 = "ClientEntry.mm";
          v66 = 799;
          v67 = 2080;
          v65 = 1024;
          v68 = "setHapticsBehaviorMuted";
          v69 = 1024;
          *v70 = v50;
          *&v70[4] = 1024;
          *&v70[6] = v43 != 0;
          _os_log_impl(&dword_1B9A08000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x, mute all haptics on this client: %d", v63, 0x28u);
        }
      }
    }
  }

  *(v57 + 96) = *(v57 + 96) & 0xFFFFFFFFFFFFFFEFLL | (16 * (v43 != 0));
  (*(*v57 + 48))(v57, 0.0);
  v35 = *(v57 + 96);
LABEL_109:
  if (behavior < 0x200 != ((v35 & 0x100) == 0))
  {
    if (kHMUTScope)
    {
      v51 = *kHMUTScope;
      if (!v51)
      {
LABEL_119:
        *(v57 + 96) = *(v57 + 96) & 0xFFFFFFFFFFFFFEFFLL | ((behavior > 0x1FF) << 8);
        if (*(*(v57 + 224) + 321) == 1)
        {
          (*(*v57 + 48))(v57, behavior < 0x200, 1, 0.0);
        }

        goto LABEL_121;
      }
    }

    else
    {
      v51 = MEMORY[0x1E69E9C10];
      v52 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v53 = *(v57 + 24);
      v54 = "no longer";
      *v63 = 136316162;
      v64 = "ServerManager.mm";
      v65 = 1024;
      if (behavior < 0x200)
      {
        v54 = "now";
      }

      v66 = 1347;
      v67 = 2080;
      v68 = "setClientPlayerBehavior";
      v69 = 2048;
      *v70 = v53;
      *&v70[8] = 2080;
      v71 = v54;
      _os_log_impl(&dword_1B9A08000, v51, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client ID 0x%lx will %s mute haptics while device is recording", v63, 0x30u);
    }

    goto LABEL_119;
  }

LABEL_121:
  if ((behavior & 0x80) != 0)
  {
    *(v57 + 104) = 1003;
  }

  if ((behavior & 0x100) != 0)
  {
    *(v57 + 108) = 1;
  }

  v15 = *(v60 + 6);
LABEL_126:
  _Block_object_dispose(&v59, 8);
  if (v58)
  {
LABEL_30:
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

LABEL_31:
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  objc_sync_exit(v10);

  if (v15)
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v15 userInfo:0];
  }

  else
  {
    v19 = 0;
  }

  replyCopy[2](replyCopy, v19);
}

- (void)getHapticLatency:(id)latency
{
  latencyCopy = latency;
  v5 = self->_master;
  objc_sync_enter(v5);
  master = self->_master;
  if (master)
  {
    objc_msgSend_entryWithID_(master);
    master = self->_master;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  manager = [(AVHapticServer *)master manager];
  v8 = (*(**(manager + 232) + 120))(*(manager + 232), (*(v11 + 96) >> 1) & 1, 9999999);
  if (v8 <= 0.0)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4806 userInfo:0];
  }

  else
  {
    v9 = 0;
  }

  latencyCopy[2](latencyCopy, v9, v8);

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  objc_sync_exit(v5);
}

- (void)stopRunning:(id)running
{
  v38 = *MEMORY[0x1E69E9840];
  runningCopy = running;
  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    v31 = "AVHapticServer.mm";
    v32 = 1024;
    v33 = 1366;
    v34 = 2080;
    v35 = "[AVHapticServerInstance stopRunning:]";
    v36 = 2048;
    v37 = clientID;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v8 = self->_master;
  objc_sync_enter(v8);
  master = self->_master;
  if (master)
  {
    objc_msgSend_entryWithID_(master);
    if (v24)
    {
      objc_initWeak(&location, self->_master);
      if (kHSRVScope)
      {
        if (*(kHSRVScope + 8))
        {
          v10 = *kHSRVScope;
          if (v10)
          {
            v11 = v10;
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v31 = "AVHapticServer.mm";
              v32 = 1024;
              v33 = 1373;
              v34 = 2080;
              v35 = "[AVHapticServerInstance stopRunning:]";
              _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Dispatching doStopRunning on ACQ", buf, 0x1Cu);
            }
          }
        }
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3321888768;
      v20[2] = __38__AVHapticServerInstance_stopRunning___block_invoke;
      v20[3] = &unk_1F37BD7B8;
      objc_copyWeak(v21, &location);
      v20[5] = &v26;
      v21[1] = v24;
      v22 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20[4] = self;
      if (AudioControlQueue(void)::once != -1)
      {
        dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
      }

      v12 = AudioControlQueue(void)::gAudioControlQueue;
      AT::DispatchBlock(v12, v20, 0, "[AVHapticServerInstance stopRunning:]", "AVHapticServer.mm", 1381);

      if (_os_feature_enabled_impl())
      {
        ptr = self->_hapticSession.__ptr_;
        if (ptr)
        {
          (*(*ptr + 56))(ptr, 0);
        }
      }

      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      objc_destroyWeak(v21);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  objc_sync_exit(v8);

  v14 = *(v27 + 6);
  if (v14)
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v14 userInfo:0];
  }

  else
  {
    v15 = 0;
  }

  if (kHSRVScope)
  {
    v16 = *kHSRVScope;
    if (!v16)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  v18 = v16;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = _Block_copy(runningCopy);
    *buf = 136315906;
    v31 = "AVHapticServer.mm";
    v32 = 1024;
    v33 = 1388;
    v34 = 2080;
    v35 = "[AVHapticServerInstance stopRunning:]";
    v36 = 2048;
    v37 = v19;
    _os_log_impl(&dword_1B9A08000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d %s: invoking callback %p", buf, 0x26u);
  }

LABEL_39:
  (*(runningCopy + 2))(runningCopy, v15);
  _Block_object_dispose(&v26, 8);
}

void __38__AVHapticServerInstance_stopRunning___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));

  if (!WeakRetained)
  {
    if (kHSRVScope)
    {
      v3 = *kHSRVScope;
      if (!v3)
      {
LABEL_9:
        *(*(*(a1 + 40) + 8) + 24) = -4898;
        goto LABEL_10;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "AVHapticServer.mm";
      v11 = 1024;
      v12 = 1377;
      _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: Haptic server master is nil - cannot stop!", buf, 0x12u);
    }

    goto LABEL_9;
  }

LABEL_10:
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = *(a1 + 64);
  v7 = *(a1 + 56);
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v5 doStopRunning:&v7 audio:objc_msgSend(*(a1 + 32) haptics:{"runIncludesAudio", v7), objc_msgSend(*(a1 + 32), "runIncludesHaptics")}];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

- (void)stopRunning
{
  v25 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v3 = *kHSRVScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    v18 = "AVHapticServer.mm";
    v19 = 1024;
    v20 = 1347;
    v21 = 2080;
    v22 = "[AVHapticServerInstance stopRunning]";
    v23 = 2048;
    v24 = clientID;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v6 = self->_master;
  objc_sync_enter(v6);
  master = self->_master;
  if (master)
  {
    objc_msgSend_entryWithID_(master);
    v8 = v15;
    if (v15)
    {
      if (kHSRVScope)
      {
        if (*(kHSRVScope + 8))
        {
          v9 = *kHSRVScope;
          if (v9)
          {
            v10 = v9;
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v18 = "AVHapticServer.mm";
              v19 = 1024;
              v20 = 1351;
              v21 = 2080;
              v22 = "[AVHapticServerInstance stopRunning]";
              _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Dispatching doStopRunning on ACQ", buf, 0x1Cu);
            }

            v8 = v15;
          }
        }
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3321888768;
      v13[2] = __37__AVHapticServerInstance_stopRunning__block_invoke;
      v13[3] = &unk_1F37BD828;
      v13[4] = self;
      v13[5] = v8;
      v14 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (AudioControlQueue(void)::once != -1)
      {
        dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
      }

      v11 = AudioControlQueue(void)::gAudioControlQueue;
      AT::DispatchBlock(v11, v13, 0, "[AVHapticServerInstance stopRunning]", "AVHapticServer.mm", 1356);

      if (_os_feature_enabled_impl())
      {
        ptr = self->_hapticSession.__ptr_;
        if (ptr)
        {
          (*(*ptr + 56))(ptr, 0);
        }
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  objc_sync_exit(v6);
}

void __37__AVHapticServerInstance_stopRunning__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setWasRunningAndSuspended:0];
  v2 = [*(a1 + 32) master];
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v2 doStopRunning:&v4 audio:objc_msgSend(*(a1 + 32) haptics:{"runIncludesAudio", v4), objc_msgSend(*(a1 + 32), "runIncludesHaptics")}];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

- (void)startRunning:(id)running
{
  v34 = *MEMORY[0x1E69E9840];
  runningCopy = running;
  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1319;
    v28 = 2080;
    v29 = "[AVHapticServerInstance startRunning:]";
    v30 = 2048;
    v31 = clientID;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v8 = self->_master;
  objc_sync_enter(v8);
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v9 = *kHSRVScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "AVHapticServer.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1323;
          v28 = 2080;
          v29 = "[AVHapticServerInstance startRunning:]";
          _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Dispatching unmuteClientAfterSessionInterruption on ACQ", buf, 0x1Cu);
        }
      }
    }
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __39__AVHapticServerInstance_startRunning___block_invoke;
  v26[3] = &unk_1E7ED02F0;
  v26[4] = self;
  if (AudioControlQueue(void)::once != -1)
  {
    dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
  }

  v11 = AudioControlQueue(void)::gAudioControlQueue;
  AT::DispatchBlock(v11, v26, 0, "[AVHapticServerInstance startRunning:]", "AVHapticServer.mm", 1326);

  master = self->_master;
  if (!master)
  {
    *buf = 0;
    *&buf[8] = 0;
    goto LABEL_24;
  }

  objc_msgSend_entryWithID_(master);
  if (!*buf)
  {
LABEL_24:
    v14 = -4812;
    goto LABEL_25;
  }

  [(AVHapticServerInstance *)self setWasRunningAndSuspended:0];
  objc_initWeak(&location, self);
  master = [(AVHapticServerInstance *)self master];
  v23 = *buf;
  v24 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __39__AVHapticServerInstance_startRunning___block_invoke_2;
  v21[3] = &unk_1E7ECEC50;
  objc_copyWeak(&v22, &location);
  v14 = [master doStartRunning:&v23 completedBlock:v21];
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
LABEL_25:
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  objc_sync_exit(v8);

  if (v14)
  {
    v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v14 userInfo:0];
  }

  else
  {
    v15 = 0;
  }

  if (kHSRVScope)
  {
    v16 = *kHSRVScope;
    if (!v16)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  v18 = v16;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = _Block_copy(runningCopy);
    if (v15)
    {
      localizedDescription = [v15 localizedDescription];
    }

    else
    {
      localizedDescription = @"(no err)";
    }

    *buf = 136316162;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1341;
    v28 = 2080;
    v29 = "[AVHapticServerInstance startRunning:]";
    v30 = 2048;
    v31 = v19;
    v32 = 2112;
    v33 = localizedDescription;
    _os_log_impl(&dword_1B9A08000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d %s: invoking callback %p: %@", buf, 0x30u);
    if (v15)
    {
    }
  }

LABEL_42:
  (*(runningCopy + 2))(runningCopy, v15);
}

void __39__AVHapticServerInstance_startRunning___block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(*a2 + 96) & 1;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setRunIncludesHaptics:v6];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 runIncludesHaptics];

  if (!v9)
  {
    goto LABEL_12;
  }

  if (kHSRVScope)
  {
    v10 = *kHSRVScope;
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315650;
    v19 = "AVHapticServer.mm";
    v20 = 1024;
    v21 = 1334;
    v22 = 2080;
    v23 = "[AVHapticServerInstance startRunning:]_block_invoke_2";
    _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: runIncludesHaptics set to YES for this client", &v18, 0x1Cu);
  }

LABEL_12:
  if (a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(*a2 + 96) >> 1) & 1;
  }

  v13 = objc_loadWeakRetained((a1 + 32));
  [v13 setRunIncludesAudio:v12];

  v14 = objc_loadWeakRetained((a1 + 32));
  v15 = [v14 runIncludesAudio];

  if (v15)
  {
    if (kHSRVScope)
    {
      v16 = *kHSRVScope;
      if (!v16)
      {
        return;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = "AVHapticServer.mm";
      v20 = 1024;
      v21 = 1336;
      v22 = 2080;
      v23 = "[AVHapticServerInstance startRunning:]_block_invoke";
      _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: runIncludesAudio set to YES for this client", &v18, 0x1Cu);
    }
  }
}

- (void)stopPrewarm
{
  v24 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v3 = *kHSRVScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    v17 = "AVHapticServer.mm";
    v18 = 1024;
    v19 = 1305;
    v20 = 2080;
    v21 = "[AVHapticServerInstance stopPrewarm]";
    v22 = 2048;
    v23 = clientID;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  master = self->_master;
  if (master)
  {
    objc_msgSend_entryWithID_(master);
    if (v14)
    {
      objc_initWeak(&location, self->_master);
      if (kHSRVScope)
      {
        if (*(kHSRVScope + 8))
        {
          v7 = *kHSRVScope;
          if (v7)
          {
            v8 = v7;
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v17 = "AVHapticServer.mm";
              v18 = 1024;
              v19 = 1309;
              v20 = 2080;
              v21 = "[AVHapticServerInstance stopPrewarm]";
              _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Dispatching doStopPrewarm on ACQ", buf, 0x1Cu);
            }
          }
        }
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3321888768;
      v10[2] = __37__AVHapticServerInstance_stopPrewarm__block_invoke;
      v10[3] = &unk_1F37BD7F0;
      v10[4] = self;
      objc_copyWeak(v11, &location);
      v11[1] = v14;
      v12 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (AudioControlQueue(void)::once != -1)
      {
        dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
      }

      v9 = AudioControlQueue(void)::gAudioControlQueue;
      AT::DispatchBlock(v9, v10, 0, "[AVHapticServerInstance stopPrewarm]", "AVHapticServer.mm", 1313);

      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      objc_destroyWeak(v11);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void __37__AVHapticServerInstance_stopPrewarm__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setWasPrewarmedAndSuspended:0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [WeakRetained doStopPrewarm:&v4 audio:objc_msgSend(*(a1 + 32) haptics:{"prewarmIncludesAudio", v4), objc_msgSend(*(a1 + 32), "prewarmIncludesHaptics")}];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

- (void)prewarm:(id)prewarm
{
  v38 = *MEMORY[0x1E69E9840];
  prewarmCopy = prewarm;
  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    v29 = "AVHapticServer.mm";
    v30 = 1024;
    v31 = 1284;
    v32 = 2080;
    v33 = "[AVHapticServerInstance prewarm:]";
    v34 = 2048;
    v35 = clientID;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = -4812;
  master = self->_master;
  if (master)
  {
    objc_msgSend_entryWithID_(master);
    if (v22)
    {
      objc_initWeak(&location, self->_master);
      if (kHSRVScope)
      {
        if (*(kHSRVScope + 8))
        {
          v9 = *kHSRVScope;
          if (v9)
          {
            v10 = v9;
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v29 = "AVHapticServer.mm";
              v30 = 1024;
              v31 = 1290;
              v32 = 2080;
              v33 = "[AVHapticServerInstance prewarm:]";
              _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Dispatching doPrewarm on ACQ", buf, 0x1Cu);
            }
          }
        }
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3321888768;
      v18[2] = __34__AVHapticServerInstance_prewarm___block_invoke;
      v18[3] = &unk_1F37BD7B8;
      v18[4] = self;
      v18[5] = &v24;
      objc_copyWeak(v19, &location);
      v19[1] = v22;
      v20 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (AudioControlQueue(void)::once != -1)
      {
        dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
      }

      v11 = AudioControlQueue(void)::gAudioControlQueue;
      AT::DispatchBlock(v11, v18, 0, "[AVHapticServerInstance prewarm:]", "AVHapticServer.mm", 1296);

      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      objc_destroyWeak(v19);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v12 = *(v25 + 6);
  if (v12)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v12 userInfo:0];
  }

  else
  {
    v13 = 0;
  }

  if (kHSRVScope)
  {
    v14 = *kHSRVScope;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  v16 = v14;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = _Block_copy(prewarmCopy);
    *buf = 136316162;
    v29 = "AVHapticServer.mm";
    v30 = 1024;
    v31 = 1299;
    v32 = 2080;
    v33 = "[AVHapticServerInstance prewarm:]";
    v34 = 2048;
    v35 = v17;
    v36 = 2112;
    v37 = v13;
    _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_INFO, "%25s:%-5d %s: invoking callback %p with %@", buf, 0x30u);
  }

LABEL_34:
  (*(prewarmCopy + 2))(prewarmCopy, v13);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  _Block_object_dispose(&v24, 8);
}

uint64_t __34__AVHapticServerInstance_prewarm___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setWasPrewarmedAndSuspended:0];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  v4 = *(a1 + 64);
  v8 = *(a1 + 56);
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(*(*(a1 + 40) + 8) + 24) = [WeakRetained doPrewarm:&v8];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(a1 + 56) + 96) & 1;
  }

  [*(a1 + 32) setPrewarmIncludesHaptics:{v5, v8}];
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v6 = 0;
  }

  else
  {
    v6 = (*(*(a1 + 56) + 96) >> 1) & 1;
  }

  return [*(a1 + 32) setPrewarmIncludesAudio:v6];
}

- (void)detachSequence:(unint64_t)sequence
{
  v20 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1273;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticServerInstance detachSequence:]";
    *&buf[28] = 2048;
    *&buf[30] = clientID;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  master = self->_master;
  if (!master)
  {
    v16 = 0;
    goto LABEL_26;
  }

  objc_msgSend_entryWithID_(master);
  if (!v15)
  {
    goto LABEL_26;
  }

  manager = [(AVHapticServer *)self->_master manager];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!kHSEQScope)
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
    goto LABEL_17;
  }

  v10 = *kHSEQScope;
  if (v10)
  {
LABEL_17:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = *(v15 + 24);
      *buf = 136316162;
      *&buf[4] = "ServerManager.mm";
      *&buf[14] = 1263;
      *&buf[18] = 2080;
      *&buf[12] = 1024;
      *&buf[20] = "detachSequence";
      *&buf[28] = 1024;
      *&buf[30] = v12;
      *&buf[34] = 1024;
      *&buf[36] = sequence;
      _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: client ID: 0x%x, asychronously detaching sequence with ID %u after 2-second delay", buf, 0x28u);
    }
  }

  v13 = dispatch_time(0, 2000000000);
  v14 = manager[41];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3321888768;
  *&buf[16] = ___ZN13ServerManager14detachSequenceENSt3__110shared_ptrI11ClientEntryEEm_block_invoke;
  *&buf[24] = &__block_descriptor_56_ea8_32c39_ZTSNSt3__110shared_ptrI11ClientEntryEE_e5_v8__0l;
  *&buf[32] = v15;
  v18 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sequenceCopy = sequence;
  dispatch_after(v13, v14, buf);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

LABEL_26:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

- (void)prepareHapticSequence:(unint64_t)sequence reply:(id)reply
{
  v30[4] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (kHSEQScope)
  {
    v8 = *kHSEQScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    *v22 = "AVHapticServer.mm";
    *&v22[8] = 1024;
    *&v22[10] = 1245;
    v23 = 2080;
    v24 = "[AVHapticServerInstance prepareHapticSequence:reply:]";
    v25 = 2048;
    v26 = clientID;
    v27 = 1024;
    LODWORD(v28) = sequence;
    _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx seqID: %u", buf, 0x2Cu);
  }

LABEL_8:
  master = self->_master;
  if (master)
  {
    objc_msgSend_entryWithID_(master);
    if (v19)
    {
      objc_initWeak(&location, self);
      manager = [(AVHapticServer *)self->_master manager];
      v17[0] = v19;
      v17[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      objc_copyWeak(buf, &location);
      *&v22[4] = a2;
      v29 = caulk::inplace_function<void ()(unsigned long),32ul,8ul,caulk::inplace_function_detail::vtable>::k_wrapper_vtable<[AVHapticServerInstance prepareHapticSequence:reply:]::$_1>;
      objc_moveWeak(v30, buf);
      v30[1] = *&v22[4];
      ServerManager::prepareSequence(manager, v17, sequence, &v29);
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];
  if (kHSEQScope)
  {
    if (*(kHSEQScope + 8))
    {
      v14 = *kHSEQScope;
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = _Block_copy(replyCopy);
          *buf = 136316162;
          *v22 = "AVHapticServer.mm";
          *&v22[8] = 1024;
          *&v22[10] = 1267;
          v23 = 2080;
          v24 = "[AVHapticServerInstance prepareHapticSequence:reply:]";
          v25 = 2048;
          v26 = v16;
          v27 = 2112;
          v28 = v13;
          _os_log_impl(&dword_1B9A08000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with %@", buf, 0x30u);
        }
      }
    }
  }

  (*(replyCopy + 2))(replyCopy, v13);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

- (void)prepareHapticSequence:(caulk::inplace_function_detail::wrapper<-[AVHapticServerInstance)prepareHapticSequence:reply:]::$_1> reply:
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  WeakRetained = objc_loadWeakRetained(self);
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [WeakRetained getAsyncDelegateForMethod:*(self + 8) errorHandler:&__block_literal_global_561];
    if (kHSRVScope)
    {
      v7 = *kHSRVScope;
      if (!v7)
      {
LABEL_9:
        [v6 sequenceFinished:v3 error:0];

        objc_autoreleasePoolPop(v5);
        goto LABEL_10;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = "AVHapticServer.mm";
      v11 = 1024;
      v12 = 1257;
      v13 = 2080;
      v14 = "operator()";
      v15 = 1024;
      v16 = v3;
      _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: <Calling sequenceFinished: on client delegate for seqID %u>", &v9, 0x22u);
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)loadVibePattern:(id)pattern reply:(id)reply
{
  v30 = *MEMORY[0x1E69E9840];
  patternCopy = pattern;
  replyCopy = reply;
  if (kHSEQScope)
  {
    v8 = *kHSEQScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    *&buf[4] = "AVHapticServer.mm";
    v22 = 1024;
    v23 = 1225;
    v24 = 2080;
    v25 = "[AVHapticServerInstance loadVibePattern:reply:]";
    v26 = 2048;
    v27 = clientID;
    v28 = 2048;
    v29 = patternCopy;
    _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx pattern: %p", buf, 0x30u);
  }

LABEL_8:
  master = self->_master;
  if (!master)
  {
    v19 = 0;
    v20 = 0;
    goto LABEL_17;
  }

  objc_msgSend_entryWithID_(master);
  if (!v19)
  {
LABEL_17:
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:{0, v19}];
    v13 = -1;
    goto LABEL_18;
  }

  [(AVHapticServer *)self->_master manager];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *buf = -1;
  v12 = (*(*v19 + 56))(v19, patternCopy, buf);
  v13 = *buf;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (!v12)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v12 userInfo:0];
LABEL_18:
  v15 = v14;
LABEL_19:
  if (kHSEQScope)
  {
    if (*(kHSEQScope + 8))
    {
      v16 = *kHSEQScope;
      if (v16)
      {
        v17 = v16;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v18 = _Block_copy(replyCopy);
          *buf = 136316162;
          *&buf[4] = "AVHapticServer.mm";
          v22 = 1024;
          v23 = 1237;
          v24 = 2080;
          v25 = "[AVHapticServerInstance loadVibePattern:reply:]";
          v26 = 2048;
          v27 = v18;
          v28 = 2112;
          v29 = v15;
          _os_log_impl(&dword_1B9A08000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with %@", buf, 0x30u);
        }
      }
    }
  }

  (*(replyCopy + 2))(replyCopy, v13, v15);

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

- (void)loadHapticSequenceFromEvents:(id)events reply:(id)reply
{
  v34 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  replyCopy = reply;
  if (kHSEQScope)
  {
    v8 = *kHSEQScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    *&buf[4] = "AVHapticServer.mm";
    v22 = 1024;
    v23 = 1202;
    v24 = 2080;
    v25 = "[AVHapticServerInstance loadHapticSequenceFromEvents:reply:]";
    v26 = 2048;
    v27 = clientID;
    v28 = 1024;
    v29 = [(NSArray *)eventsCopy count];
    _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx array of %u events", buf, 0x2Cu);
  }

LABEL_8:
  master = self->_master;
  if (master)
  {
    objc_msgSend_entryWithID_(master);
    if (v17)
    {
      [(AVHapticServer *)self->_master manager];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = 0.0;
      *buf = -1;
      v19 = 0;
      ClientEntry::loadAndAddSequence(v17, eventsCopy, buf, &v20, &v19);
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:{0, v17}];
  if (kHSEQScope)
  {
    if (*(kHSEQScope + 8))
    {
      v14 = *kHSEQScope;
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = _Block_copy(replyCopy);
          *buf = 136316674;
          *&buf[4] = "AVHapticServer.mm";
          v23 = 1219;
          v24 = 2080;
          v22 = 1024;
          v25 = "[AVHapticServerInstance loadHapticSequenceFromEvents:reply:]";
          v26 = 2048;
          v27 = v16;
          v28 = 1024;
          v29 = -1;
          v30 = 1024;
          v31 = 0;
          v32 = 2112;
          v33 = v13;
          _os_log_impl(&dword_1B9A08000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with seqID %u, channelCount %u, and error %@", buf, 0x3Cu);
        }
      }
    }
  }

  (*(replyCopy + 2))(replyCopy, -1, 0, v13, 0.0);

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

- (void)loadHapticSequenceFromData:(id)data reply:(id)reply
{
  v31 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  replyCopy = reply;
  if (kHSEQScope)
  {
    v8 = *kHSEQScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  v10 = v8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316418;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1179;
    v26 = 2080;
    v27 = "[AVHapticServerInstance loadHapticSequenceFromData:reply:]";
    v28 = 2048;
    *v29 = clientID;
    *&v29[8] = 2048;
    *&v29[10] = dataCopy;
    *&v29[18] = 1024;
    v30[0] = [dataCopy length];
    _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx data: %p length: %u", buf, 0x36u);
  }

LABEL_8:
  master = self->_master;
  if (master)
  {
    objc_msgSend_entryWithID_(master);
    if (v22)
    {
      [(AVHapticServer *)self->_master manager];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = dataCopy;
      if (kHSEQScope)
      {
        v14 = *kHSEQScope;
        if (!v14)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v17 = v22[3];
        *buf = 136316162;
        *&buf[4] = "ClientEntry.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1241;
        v26 = 2080;
        v27 = "loadAndAddSequence";
        v28 = 1024;
        *v29 = v17;
        *&v29[4] = 2048;
        *&v29[6] = v13;
        _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x, sequenceData: %p", buf, 0x2Cu);
      }

LABEL_21:
      v18 = v22[11];
      *buf = v22[10];
      *&buf[8] = v18;
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      std::allocate_shared[abi:ne200100]<HapticSequence,std::allocator<HapticSequence>,std::shared_ptr<MuteManager>,0>(&v24, buf);
    }
  }

  else
  {
    v23 = 0;
  }

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];
  if (kHSEQScope)
  {
    if (*(kHSEQScope + 8))
    {
      v19 = *kHSEQScope;
      if (v19)
      {
        v20 = v19;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v21 = _Block_copy(replyCopy);
          *buf = 136316674;
          *&buf[4] = "AVHapticServer.mm";
          *&buf[14] = 1196;
          v26 = 2080;
          *&buf[12] = 1024;
          v27 = "[AVHapticServerInstance loadHapticSequenceFromData:reply:]";
          v28 = 2048;
          *v29 = v21;
          *&v29[8] = 1024;
          *&v29[10] = -1;
          *&v29[14] = 1024;
          *&v29[16] = 0;
          LOWORD(v30[0]) = 2112;
          *(v30 + 2) = v15;
          _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with seqID %u, channelCount %u, and error %@", buf, 0x3Cu);
        }
      }
    }
  }

  (*(replyCopy + 2))(replyCopy, -1, 0, v15, 0.0);

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

- (void)loadHapticEvent:(id)event reply:(id)reply
{
  v55 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  replyCopy = reply;
  if (kHSRVScope)
  {
    v8 = *kHSRVScope;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    v46 = "AVHapticServer.mm";
    v47 = 1024;
    v48 = 1155;
    v49 = 2080;
    v50 = "[AVHapticServerInstance loadHapticEvent:reply:]";
    v51 = 2048;
    v52 = clientID;
    v53 = 2048;
    v54 = eventCopy;
    _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx preset: %p", buf, 0x30u);
  }

LABEL_8:
  master = self->_master;
  if (!master)
  {
    v37 = 0;
    goto LABEL_15;
  }

  objc_msgSend_entryWithID_(master);
  if (!v36)
  {
LABEL_15:
    v14 = -4812;
LABEL_27:
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v14 userInfo:0];
    goto LABEL_28;
  }

  v12 = atomic_load((v36 + 120));
  if (v12 > 1)
  {
    if (kHSRVScope)
    {
      v13 = *kHSRVScope;
      if (!v13)
      {
LABEL_26:
        v14 = -4806;
        goto LABEL_27;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v46 = "AVHapticServer.mm";
      v47 = 1024;
      v48 = 1165;
      v49 = 2080;
      v50 = "[AVHapticServerInstance loadHapticEvent:reply:]";
      _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Player must be stopped to load a preset", buf, 0x1Cu);
    }

    goto LABEL_26;
  }

  manager = [(AVHapticServer *)self->_master manager];
  os_unfair_recursive_lock_lock_with_options();
  v16 = manager[29];
  v43 = eventCopy;
  v44 = 0;
  if (eventCopy)
  {
    v42 = 0;
    if (CACFDictionary::GetUInt32(&v43, @"TypeID", &v42))
    {
      if (v42 == 1000 || v42 == 2000 || v42 == 3000)
      {
        if (CACFDictionary::HasKey(&v43, @"Layers"))
        {
          theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
          v41 = 257;
          CACFDictionary::GetCACFArray(&v43, @"Layers", &theArray);
          if (theArray)
          {
            Count = CFArrayGetCount(theArray);
          }

          else
          {
            Count = 0;
          }

          if (kHPRSScope)
          {
            v25 = *kHPRSScope;
            if (!v25)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v25 = MEMORY[0x1E69E9C10];
            v26 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            v46 = "HapticSynth_Parser.mm";
            v47 = 1024;
            v48 = 136;
            v49 = 2080;
            v50 = "loadEventDictionary";
            v51 = 1024;
            LODWORD(v52) = Count;
            _os_log_impl(&dword_1B9A08000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Event has %u layers", buf, 0x22u);
          }

LABEL_66:
          if (!Count)
          {
            if (kHPRSScope)
            {
              v27 = *kHPRSScope;
              if (!v27)
              {
                goto LABEL_90;
              }
            }

            else
            {
              v27 = MEMORY[0x1E69E9C10];
              v32 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v46 = "HapticSynth_Parser.mm";
              v47 = 1024;
              v48 = 138;
              v49 = 2080;
              v50 = "loadEventDictionary";
              _os_log_impl(&dword_1B9A08000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Empty layers array", buf, 0x1Cu);
            }

            goto LABEL_89;
          }

          if (Count >= 3)
          {
            if (kHPRSScope)
            {
              v27 = *kHPRSScope;
              if (!v27)
              {
                goto LABEL_90;
              }
            }

            else
            {
              v27 = MEMORY[0x1E69E9C10];
              v33 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v46 = "HapticSynth_Parser.mm";
              v47 = 1024;
              v48 = 142;
              v49 = 2080;
              v50 = "loadEventDictionary";
              _os_log_impl(&dword_1B9A08000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Single event dictionary cannot have more than 2 layers", buf, 0x1Cu);
            }

LABEL_89:

LABEL_90:
            PropertyInfo = -50;
LABEL_101:
            CACFArray::~CACFArray(&theArray);
            goto LABEL_81;
          }

          outDataSize = 0;
          outWritable = 0;
          v28 = *(v16 + 112);
          if (v28)
          {
            v29 = *(v28 + 16);
          }

          else
          {
            v29 = 0;
          }

          PropertyInfo = AudioUnitGetPropertyInfo(v29, 0x102Cu, 4u, 0, &outDataSize, &outWritable);
          if (!PropertyInfo)
          {
            operator new[]();
          }

          if (kHPRSScope)
          {
            v34 = *kHPRSScope;
            if (!v34)
            {
LABEL_100:

              goto LABEL_101;
            }
          }

          else
          {
            v34 = MEMORY[0x1E69E9C10];
            v35 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v46 = "HapticSynth_Parser.mm";
            v47 = 1024;
            v48 = 151;
            v49 = 2080;
            v50 = "loadEventDictionary";
            v51 = 1024;
            LODWORD(v52) = PropertyInfo;
            _os_log_impl(&dword_1B9A08000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Call mSynthUnit.GetPropertyInfo(kAUSamplerProperty_LayerIDs, kAudioUnitScope_Part, 0, &propSize, &writable) failed with error %d", buf, 0x22u);
          }

          goto LABEL_100;
        }

        if (kHPRSScope)
        {
          v20 = *kHPRSScope;
          if (!v20)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v20 = MEMORY[0x1E69E9C10];
          v24 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v46 = "HapticSynth_Parser.mm";
          v47 = 1024;
          v48 = 202;
          v49 = 2080;
          v50 = "loadEventDictionary";
          _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: No layers array", buf, 0x1Cu);
        }
      }

      else
      {
        if (kHPRSScope)
        {
          v20 = *kHPRSScope;
          if (!v20)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v20 = MEMORY[0x1E69E9C10];
          v30 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v46 = "HapticSynth_Parser.mm";
          v47 = 1024;
          v48 = 124;
          v49 = 2080;
          v50 = "loadEventDictionary";
          _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Unrecognized event dictionary 'LoadAs' key", buf, 0x1Cu);
        }
      }
    }

    else
    {
      if (kHPRSScope)
      {
        v20 = *kHPRSScope;
        if (!v20)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v20 = MEMORY[0x1E69E9C10];
        v22 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v46 = "HapticSynth_Parser.mm";
        v47 = 1024;
        v48 = 129;
        v49 = 2080;
        v50 = "loadEventDictionary";
        _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Single event dictionary must provide a 'LoadAs' type key", buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (kHPRSScope)
    {
      v20 = *kHPRSScope;
      if (!v20)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v46 = "HapticSynth_Parser.mm";
      v47 = 1024;
      v48 = 207;
      v49 = 2080;
      v50 = "loadEventDictionary";
      _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Invalid event dictionary", buf, 0x1Cu);
    }
  }

LABEL_80:
  PropertyInfo = -50;
LABEL_81:
  CACFDictionary::~CACFDictionary(&v43);
  os_unfair_recursive_lock_unlock();
  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:PropertyInfo userInfo:0];
LABEL_28:
  v19 = v18;
  replyCopy[2](replyCopy, 0, v18);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }
}

- (void)releaseCustomAudioEvent:(unint64_t)event reply:(id)reply
{
  eventCopy = event;
  v32 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (kHCARScope)
  {
    v7 = *kHCARScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    v24 = "AVHapticServer.mm";
    v25 = 1024;
    v26 = 1137;
    v27 = 2080;
    v28 = "[AVHapticServerInstance releaseCustomAudioEvent:reply:]";
    v29 = 2048;
    *v30 = clientID;
    *&v30[8] = 1024;
    LODWORD(v31) = eventCopy;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx, eventID %u", buf, 0x2Cu);
  }

LABEL_8:
  v10 = self->_master;
  objc_sync_enter(v10);
  master = self->_master;
  if (!master)
  {
    v21 = 0;
    v22 = 0;
    goto LABEL_14;
  }

  objc_msgSend_entryWithID_(master);
  if (!v21)
  {
LABEL_14:
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:{0, v21}];
LABEL_15:
    v14 = v13;
    goto LABEL_24;
  }

  if (kHCARScope)
  {
    v12 = *kHCARScope;
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(v21 + 24);
    *buf = 136316162;
    v24 = "ClientEntry.mm";
    v26 = 534;
    v27 = 2080;
    v25 = 1024;
    v28 = "releaseCustomAudioEvent";
    v29 = 1024;
    *v30 = v16;
    *&v30[4] = 1024;
    *&v30[6] = eventCopy;
    _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x eventID %u", buf, 0x28u);
  }

LABEL_20:
  if (!ClientEntry::sendRealTimeCommand(v21, 2, eventCopy))
  {
    v17 = ClientEntry::handleReleaseCustomAudioEvent(v21, eventCopy);
    if (v17)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v17 userInfo:0];
      goto LABEL_15;
    }
  }

  v14 = 0;
LABEL_24:
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  objc_sync_exit(v10);

  if (kHCARScope)
  {
    if (*(kHCARScope + 8))
    {
      v18 = *kHCARScope;
      if (v18)
      {
        v19 = v18;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v20 = _Block_copy(replyCopy);
          *buf = 136316162;
          v24 = "AVHapticServer.mm";
          v25 = 1024;
          v26 = 1149;
          v27 = 2080;
          v28 = "[AVHapticServerInstance releaseCustomAudioEvent:reply:]";
          v29 = 2048;
          *v30 = v20;
          *&v30[8] = 2112;
          v31 = v14;
          _os_log_impl(&dword_1B9A08000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with %@", buf, 0x30u);
        }
      }
    }
  }

  (*(replyCopy + 2))(replyCopy, v14);
}

- (void)referenceCustomAudioEvent:(unint64_t)event reply:(id)reply
{
  eventCopy = event;
  v27 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  if (kHCARScope)
  {
    v7 = *kHCARScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    *&buf[4] = "AVHapticServer.mm";
    v24 = 1024;
    *v25 = 1117;
    *&v25[4] = 2080;
    *&v25[6] = "[AVHapticServerInstance referenceCustomAudioEvent:reply:]";
    *&v25[14] = 2048;
    *&v25[16] = clientID;
    *&v25[24] = 1024;
    LODWORD(v26) = eventCopy;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx, eventID %u", buf, 0x2Cu);
  }

LABEL_8:
  v10 = self->_master;
  objc_sync_enter(v10);
  master = self->_master;
  if (master)
  {
    objc_msgSend_entryWithID_(master);
    if (v20)
    {
      if (kHCARScope)
      {
        if (*(kHCARScope + 8))
        {
          v12 = *kHCARScope;
          if (v12)
          {
            v13 = v12;
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              v14 = *(v20 + 24);
              *buf = 136316162;
              *&buf[4] = "ClientEntry.mm";
              *v25 = 485;
              *&v25[4] = 2080;
              v24 = 1024;
              *&v25[6] = "referenceCustomAudioEvent";
              *&v25[14] = 1024;
              *&v25[16] = v14;
              *&v25[20] = 1024;
              *&v25[22] = eventCopy;
              _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x, eventID %u", buf, 0x28u);
            }
          }
        }
      }

      v15 = *(v20 + 832);
      *buf = v20 + 656;
      buf[8] = 1;
      std::__shared_mutex_base::lock((v20 + 656));
      *&v25[2] = v20 + 632;
      *&v25[10] = v20 + 824;
      *&v25[18] = v15;
      *(v20 + 824) = 1;
      v22 = eventCopy | 0x100000000;
      std::__tree<std::__value_type<unsigned int const,unsigned int>,std::__map_value_compare<unsigned int const,std::__value_type<unsigned int const,unsigned int>,std::less<unsigned int const>,true>,std::allocator<std::__value_type<unsigned int const,unsigned int>>>::__emplace_unique_impl<std::tuple<unsigned int const,unsigned int> &>((v20 + 632), &v22);
    }
  }

  else
  {
    v21 = 0;
  }

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  objc_sync_exit(v10);

  if (kHCARScope)
  {
    if (*(kHCARScope + 8))
    {
      v17 = *kHCARScope;
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v19 = _Block_copy(replyCopy);
          *buf = 136316162;
          *&buf[4] = "AVHapticServer.mm";
          v24 = 1024;
          *v25 = 1129;
          *&v25[4] = 2080;
          *&v25[6] = "[AVHapticServerInstance referenceCustomAudioEvent:reply:]";
          *&v25[14] = 2048;
          *&v25[16] = v19;
          *&v25[24] = 2112;
          v26 = v16;
          _os_log_impl(&dword_1B9A08000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with %@", buf, 0x30u);
        }
      }
    }
  }

  (*(replyCopy + 2))(replyCopy, v16);
}

- (void)copyCustomAudioEvent:(unint64_t)event options:(id)options reply:(id)reply
{
  eventCopy = event;
  v67 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  if (kHCARScope)
  {
    v10 = *kHCARScope;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    v62 = 1024;
    *v63 = 1098;
    *&v63[4] = 2080;
    *&v63[6] = "[AVHapticServerInstance copyCustomAudioEvent:options:reply:]";
    *&v63[14] = 2048;
    *&v63[16] = clientID;
    _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v13 = self->_master;
  objc_sync_enter(v13);
  master = self->_master;
  if (!master)
  {
    v52 = 0;
    goto LABEL_26;
  }

  objc_msgSend_entryWithID_(master);
  if (!v51)
  {
LABEL_26:
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];
    LODWORD(v26) = 0;
    goto LABEL_69;
  }

  if (kHCARScope)
  {
    if (*(kHCARScope + 8))
    {
      v15 = *kHCARScope;
      if (v15)
      {
        v16 = v15;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(v51 + 24);
          *buf = 136316162;
          *&buf[4] = "ClientEntry.mm";
          *v63 = 454;
          *&v63[4] = 2080;
          v62 = 1024;
          *&v63[6] = "copyCustomAudioEvent";
          *&v63[14] = 1024;
          *&v63[16] = v17;
          *&v63[20] = 1024;
          *&v63[22] = eventCopy;
          _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x eventID %u", buf, 0x28u);
        }
      }
    }
  }

  v18 = *(*(v51 + 224) + 264);
  if (kHCARScope)
  {
    if (*(kHCARScope + 8))
    {
      v19 = *kHCARScope;
      if (v19)
      {
        v20 = v19;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "AudioEventManager.mm";
          v62 = 1024;
          *v63 = 47;
          *&v63[4] = 2080;
          *&v63[6] = "copyCustomAudioEvent";
          *&v63[14] = 1024;
          *&v63[16] = eventCopy;
          _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Requesting copy of event ID %u from synth", buf, 0x22u);
        }
      }
    }
  }

  v50 = optionsCopy;
  std::mutex::lock((v18 + 1));
  v21 = *v18;
  v22 = *(*v18 + 328);
  v23 = *(*v18 + 340);
  *v58 = 0;
  v56 = v50;
  v57 = 0;
  v55 = 1;
  CACFDictionary::GetBool(&v56, @"UseVolumeEnvelope", &v55);
  v54 = 0;
  CACFDictionary::GetBool(&v56, @"LoopEnabled", &v54);
  if (kHCARScope)
  {
    v24 = *kHCARScope;
    if (!*kHCARScope)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v24 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "HapticAudioUnit.cpp";
    v62 = 1024;
    *v63 = 1162;
    *&v63[4] = 2080;
    *&v63[6] = "copyCustomAudioEvent";
    *&v63[14] = 1024;
    *&v63[16] = eventCopy;
    _os_log_impl(&dword_1B9A08000, v24, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Adding new zone from a copy of the sampleID for audio event ID %u", buf, 0x22u);
  }

LABEL_30:
  if (HapticAudioUnit::getLayerWithKey((v21 + 56), 10, &v58[1]))
  {
    LayerWithKey = HapticAudioUnit::getLayerWithKey((v21 + 56), 11, &v58[1]);
    if (LayerWithKey)
    {
      if (kHCARScope)
      {
        v26 = *kHCARScope;
        if (!*kHCARScope)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v26 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HapticAudioUnit.cpp";
        v62 = 1024;
        *v63 = 1167;
        *&v63[4] = 2080;
        *&v63[6] = "copyCustomAudioEvent";
        _os_log_impl(&dword_1B9A08000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Unable to access layers for custom events", buf, 0x1Cu);
      }

      goto LABEL_57;
    }
  }

  if (v55)
  {
    v28 = 10;
  }

  else
  {
    v28 = 11;
  }

  if (!HapticAudioUnit::getLayerWithKey((v21 + 56), v28, v58))
  {
LABEL_59:
    inElement = 0;
    if (HapticAudioUnit::getZoneWithVelocity((v21 + 56), v58[1], BYTE1(eventCopy), &inElement))
    {
      goto LABEL_64;
    }

    outData = 0;
    *buf = 4;
    v34 = *(v21 + 112);
    v35 = v34 ? *(v34 + 16) : 0;
    if (AudioUnitGetProperty(v35, 0x1068u, 7u, inElement, &outData, buf))
    {
      goto LABEL_64;
    }

    inData = outData;
    if (outData == -1)
    {
      goto LABEL_64;
    }

    v40 = v58[0];
    CustomZoneVelocity = HapticAudioUnit::getCustomZoneVelocity((v21 + 56), v58[0]);
    if (CustomZoneVelocity == -1)
    {
      if (kHCARScope)
      {
        v26 = *kHCARScope;
        if (!*kHCARScope)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v26 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
LABEL_64:
        LODWORD(v26) = 0;
LABEL_65:
        LayerWithKey = -1;
        goto LABEL_66;
      }

      *buf = 136315650;
      *&buf[4] = "HapticAudioUnit.cpp";
      v62 = 1024;
      *v63 = 1189;
      *&v63[4] = 2080;
      *&v63[6] = "copyCustomAudioEvent";
      v46 = "%25s:%-5d %s: Unable to find a velocity slot for this event";
      v47 = v26;
      v48 = 28;
    }

    else
    {
      os_unfair_recursive_lock_lock_with_options();
      v42 = *(v21 + 112);
      if (v42)
      {
        v43 = *(v42 + 16);
      }

      else
      {
        v43 = 0;
      }

      v44 = AudioUnitSetProperty(v43, 0x1033u, 4u, 0, &inData, 4u);
      os_unfair_recursive_lock_unlock();
      if (!v44)
      {
        v45 = HapticAudioUnit::addZoneForSample((v21 + 56), inData, v40, v28, CustomZoneVelocity, v54, 1, 0, buf, v49);
        if (v45)
        {
          LODWORD(v26) = 0;
        }

        else
        {
          LODWORD(v26) = v28 | (CustomZoneVelocity << 8);
        }

        if (v45)
        {
          LayerWithKey = -1;
        }

        else
        {
          LayerWithKey = 0;
        }

        goto LABEL_66;
      }

      if (kHCARScope)
      {
        v26 = *kHCARScope;
        if (!*kHCARScope)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v26 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      *buf = 136315906;
      *&buf[4] = "HapticAudioUnit.cpp";
      v62 = 1024;
      *v63 = 1195;
      *&v63[4] = 2080;
      *&v63[6] = "copyCustomAudioEvent";
      *&v63[14] = 1024;
      *&v63[16] = inData;
      v46 = "%25s:%-5d %s: Unable to reference sampleID %u";
      v47 = v26;
      v48 = 34;
    }

    _os_log_impl(&dword_1B9A08000, v47, OS_LOG_TYPE_ERROR, v46, buf, v48);
    goto LABEL_64;
  }

  HIDWORD(v49) = v28;
  v29 = v55;
  inElement = 0;
  if (v55)
  {
    v30 = "Custom Audio Waveforms";
  }

  else
  {
    v30 = "Custom Audio Waveforms No Envelope";
  }

  v31 = CFStringCreateWithCString(0, v30, 0x600u);
  *buf = v31;
  if (v29)
  {
    v32 = 10;
  }

  else
  {
    v32 = 11;
  }

  LayerWithKey = HapticAudioUnit::addLayer((v21 + 56), 0, v22, v32, v31, &inElement);
  if (!LayerWithKey)
  {
    v33 = inElement;
    LayerWithKey = HapticAudioUnit::addDefaultGainConnections((v21 + 56), inElement, v23, 0, 0);
    if (!LayerWithKey)
    {
      outData = 0;
      LayerWithKey = HapticAudioUnit::addEnvelope((v21 + 56), v33, 0, v23, &outData);
      if (!LayerWithKey && (!v29 || (LayerWithKey = HapticAudioUnit::addCustomAudioEnvelopeConnections((v21 + 56), v33, outData)) == 0))
      {
        LayerWithKey = HapticAudioUnit::addPitchConnection((v21 + 56), v33, 0, 4.0);
        if (!LayerWithKey)
        {
          LayerWithKey = HapticAudioUnit::addFilterConnection((v21 + 56), v33, 24000.0, 2048.0);
          if (!LayerWithKey)
          {
            LayerWithKey = HapticAudioUnit::addCustomAudioOffsetStartTimeConnection((v21 + 56), v33);
            if (!LayerWithKey)
            {
              v58[0] = v33;
              Smart<__CFString const*>::~Smart(buf);
              v28 = HIDWORD(v49);
              goto LABEL_59;
            }
          }
        }
      }
    }
  }

  Smart<__CFString const*>::~Smart(buf);
LABEL_57:
  LODWORD(v26) = 0;
LABEL_66:
  CACFDictionary::~CACFDictionary(&v56);
  std::mutex::unlock((v18 + 1));
  if (!LayerWithKey)
  {
    v36 = v18[34];
    *buf = v18 + 12;
    buf[8] = 1;
    std::__shared_mutex_base::lock((v18 + 12));
    *&v63[2] = v18 + 9;
    *&v63[10] = v18 + 33;
    *&v63[18] = v36;
    *(v18 + 264) = 1;
    v56 = v26 | 0x100000000;
    std::__tree<std::__value_type<unsigned int const,unsigned int>,std::__map_value_compare<unsigned int const,std::__value_type<unsigned int const,unsigned int>,std::less<unsigned int const>,true>,std::allocator<std::__value_type<unsigned int const,unsigned int>>>::__emplace_unique_impl<std::tuple<unsigned int const,unsigned int> &>(v18 + 9, &v56);
  }

  v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:LayerWithKey userInfo:0];
  optionsCopy = v50;
LABEL_69:
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  objc_sync_exit(v13);

  if (kHCARScope)
  {
    if (*(kHCARScope + 8))
    {
      v37 = *kHCARScope;
      if (v37)
      {
        v38 = v37;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v39 = _Block_copy(replyCopy);
          *buf = 136316418;
          *&buf[4] = "AVHapticServer.mm";
          v62 = 1024;
          *v63 = 1111;
          *&v63[4] = 2080;
          *&v63[6] = "[AVHapticServerInstance copyCustomAudioEvent:options:reply:]";
          *&v63[14] = 2048;
          *&v63[16] = v39;
          *&v63[24] = 1024;
          v64 = v26;
          v65 = 2112;
          v66 = v25;
          _os_log_impl(&dword_1B9A08000, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with eventID %u and error %@", buf, 0x36u);
        }
      }
    }
  }

  (*(replyCopy + 2))(replyCopy, v26, v25);
}

- (void)createCustomAudioEvent:(id)event format:(id)format frames:(unint64_t)frames options:(id)options reply:(id)reply
{
  framesCopy = frames;
  v95 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  formatCopy = format;
  optionsCopy = options;
  replyCopy = reply;
  clientID = self->_clientID;
  v64[0] = 1;
  v65 = "AVHapticServerInstance_createCustomAudioEvent";
  v66 = clientID;
  v67 = 0;
  XOSTransactor::beginTransaction(v64);
  if (kHCARScope)
  {
    v16 = *kHCARScope;
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = self->_clientID;
    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    v88 = 1024;
    *v89 = 1077;
    *&v89[4] = 2080;
    *&v89[6] = "[AVHapticServerInstance createCustomAudioEvent:format:frames:options:reply:]";
    *&v89[14] = 2048;
    *&v89[16] = v18;
    _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v19 = self->_master;
  objc_sync_enter(v19);
  master = self->_master;
  v60 = formatCopy;
  if (!master)
  {
    v63 = 0;
    goto LABEL_26;
  }

  objc_msgSend_entryWithID_(master);
  if (!v62)
  {
LABEL_26:
    v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];
    LODWORD(v33) = 0;
    goto LABEL_63;
  }

  v21 = eventCopy;
  v59 = eventCopy;
  bytes = [eventCopy bytes];
  v58 = objc_msgSend_streamDescription(formatCopy);
  if (kHCARScope)
  {
    if (*(kHCARScope + 8))
    {
      v22 = *kHCARScope;
      if (v22)
      {
        v23 = v22;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(v62 + 24);
          *buf = 136315906;
          *&buf[4] = "ClientEntry.mm";
          v88 = 1024;
          *v89 = 441;
          *&v89[4] = 2080;
          *&v89[6] = "createCustomAudioEvent";
          *&v89[14] = 1024;
          *&v89[16] = v24;
          _os_log_impl(&dword_1B9A08000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x", buf, 0x22u);
        }
      }
    }
  }

  v25 = *(*(v62 + 224) + 264);
  v56 = *(v62 + 216);
  if (kHCARScope)
  {
    if (*(kHCARScope + 8))
    {
      v26 = *kHCARScope;
      if (v26)
      {
        v27 = v26;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "AudioEventManager.mm";
          v88 = 1024;
          *v89 = 34;
          *&v89[4] = 2080;
          *&v89[6] = "createCustomAudioEvent";
          _os_log_impl(&dword_1B9A08000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Requesting new event from synth", buf, 0x1Cu);
        }
      }
    }
  }

  std::mutex::lock((v25 + 1));
  v28 = *v25;
  v29 = *(*v25 + 328);
  v30 = *(*v25 + 340);
  inElement = 0;
  v70 = optionsCopy;
  v71 = 0;
  v69 = 1;
  CACFDictionary::GetBool(&v70, @"UseVolumeEnvelope", &v69);
  v68 = 0;
  CACFDictionary::GetBool(&v70, @"LoopEnabled", &v68);
  v55 = framesCopy;
  if (kHCARScope)
  {
    v31 = *kHCARScope;
    if (!*kHCARScope)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v31 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *&buf[4] = "HapticAudioUnit.cpp";
    v88 = 1024;
    if (v68)
    {
      v34 = "looped";
    }

    else
    {
      v34 = "unlooped";
    }

    v35 = "without";
    *v89 = 1102;
    *&v89[6] = "createCustomAudioEvent";
    *buf = 136316162;
    *&v89[4] = 2080;
    *&v89[14] = 2080;
    if (v69)
    {
      v35 = "with";
    }

    *&v89[16] = v34;
    *&v89[24] = 2080;
    *&v90 = v35;
    _os_log_impl(&dword_1B9A08000, v31, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Adding layer/zone/waveform for %s custom audio event %s envelope", buf, 0x30u);
  }

LABEL_35:
  if (v69)
  {
    v36 = 10;
  }

  else
  {
    v36 = 11;
  }

  if (!HapticAudioUnit::getLayerWithKey((v28 + 56), v36, &inElement))
  {
    v39 = inElement;
    goto LABEL_54;
  }

  if (v69)
  {
    v37 = "Custom Audio Waveforms";
  }

  else
  {
    v37 = "Custom Audio Waveforms No Envelope";
  }

  *buf = CFStringCreateWithCString(0, v37, 0x600u);
  started = HapticAudioUnit::addLayer((v28 + 56), 0, v29, v36, *buf, &inElement);
  if (!started)
  {
    v39 = inElement;
    started = HapticAudioUnit::addDefaultGainConnections((v28 + 56), inElement, v30, 0, 0);
    if (!started)
    {
      v73[0] = 0;
      started = HapticAudioUnit::addEnvelope((v28 + 56), v39, 0, v30, v73);
      if (!started && (!v69 || (started = HapticAudioUnit::addCustomAudioEnvelopeConnections((v28 + 56), v39, v73[0])) == 0))
      {
        started = HapticAudioUnit::addPitchConnection((v28 + 56), v39, 0, 4.0);
        if (!started)
        {
          started = HapticAudioUnit::addFilterConnection((v28 + 56), v39, 24000.0, 2048.0);
          if (!started)
          {
            started = HapticAudioUnit::addCustomAudioOffsetStartTimeConnection((v28 + 56), v39);
            Smart<__CFString const*>::~Smart(buf);
            if (started)
            {
              goto LABEL_50;
            }

LABEL_54:
            v54 = v39;
            CustomZoneVelocity = HapticAudioUnit::getCustomZoneVelocity((v28 + 56), v39);
            if (CustomZoneVelocity != -1)
            {
              v41 = *(v58 + 24);
              if (kHPRSScope)
              {
                if (*(kHPRSScope + 8))
                {
                  v42 = *kHPRSScope;
                  if (*kHPRSScope)
                  {
                    if (os_log_type_enabled(*kHPRSScope, OS_LOG_TYPE_DEBUG))
                    {
                      v43 = *(v58 + 28);
                      *buf = 136317186;
                      *&buf[4] = "HapticAudioUnit.cpp";
                      v88 = 1024;
                      *v89 = 39;
                      *&v89[4] = 2080;
                      *&v89[6] = "addAudioSample";
                      *&v89[14] = 2048;
                      *&v89[16] = bytes;
                      *&v89[24] = 1024;
                      LODWORD(v90) = v41 * v55;
                      WORD2(v90) = 1024;
                      *(&v90 + 6) = v43;
                      WORD5(v90) = 1024;
                      HIDWORD(v90) = v55;
                      v91 = 1024;
                      v92 = v41;
                      v93 = 1024;
                      LODWORD(v94) = v56;
                      _os_log_impl(&dword_1B9A08000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Adding raw audio sample %p, size %u bytes. Raw audio has %u channels, %u frames, %u Bytes per frame, clientProcessTaskToken: %u", buf, 0x44u);
                    }
                  }
                }
              }

              v78 = 0;
              *v73 = bytes;
              v74 = (v41 * v55);
              v44 = *v58;
              v45 = *(v58 + 16);
              v77 = *(v58 + 32);
              v75 = v44;
              v76 = v45;
              LODWORD(v78) = v56;
              v94 = 0x200000000;
              *buf = v73;
              os_unfair_recursive_lock_lock_with_options();
              v46 = *(v28 + 112);
              if (v46)
              {
                v47 = *(v46 + 16);
              }

              else
              {
                v47 = 0;
              }

              started = AudioUnitSetProperty(v47, 0x1030u, 4u, 0, buf, 0x48u);
              os_unfair_recursive_lock_unlock();
              if (!started)
              {
                started = HapticAudioUnit::addZoneForSample((v28 + 56), v94, v54, v36, CustomZoneVelocity, v68, 1, 0, buf, v53);
                LODWORD(v33) = v36 | (CustomZoneVelocity << 8);
                goto LABEL_51;
              }

              if (kHPRSScope)
              {
                v52 = *kHPRSScope;
                if (!*kHPRSScope)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v52 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                *v79 = 136315906;
                v80 = "HapticAudioUnit.cpp";
                v81 = 1024;
                v82 = 46;
                v83 = 2080;
                v84 = "addAudioSample";
                v85 = 1024;
                v86 = started;
                _os_log_impl(&dword_1B9A08000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Unable to load generated sample: err %d", v79, 0x22u);
              }

              goto LABEL_50;
            }

            if (kHCARScope)
            {
              v33 = *kHCARScope;
              if (!*kHCARScope)
              {
LABEL_88:
                started = -4825;
                goto LABEL_51;
              }
            }

            else
            {
              v33 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "HapticAudioUnit.cpp";
              v88 = 1024;
              *v89 = 1137;
              *&v89[4] = 2080;
              *&v89[6] = "createCustomAudioEvent";
              _os_log_impl(&dword_1B9A08000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Unable to find a velocity slot for this event", buf, 0x1Cu);
            }

            LODWORD(v33) = 0;
            goto LABEL_88;
          }
        }
      }
    }
  }

  Smart<__CFString const*>::~Smart(buf);
LABEL_50:
  LODWORD(v33) = 0;
LABEL_51:
  CACFDictionary::~CACFDictionary(&v70);
  std::mutex::unlock((v25 + 1));
  if (!started)
  {
    v48 = v25[34];
    *buf = v25 + 12;
    buf[8] = 1;
    std::__shared_mutex_base::lock((v25 + 12));
    *&v89[2] = v25 + 9;
    *&v89[10] = v25 + 33;
    *&v89[18] = v48;
    *(v25 + 264) = 1;
    *v73 = v33 | 0x100000000;
    std::__tree<std::__value_type<unsigned int const,unsigned int>,std::__map_value_compare<unsigned int const,std::__value_type<unsigned int const,unsigned int>,std::less<unsigned int const>,true>,std::allocator<std::__value_type<unsigned int const,unsigned int>>>::__emplace_unique_impl<std::tuple<unsigned int const,unsigned int> &>(v25 + 9, v73);
  }

  v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:started userInfo:0];
  eventCopy = v59;
LABEL_63:
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  objc_sync_exit(v19);

  if (kHCARScope)
  {
    if (*(kHCARScope + 8))
    {
      v49 = *kHCARScope;
      if (v49)
      {
        v50 = v49;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          v51 = _Block_copy(replyCopy);
          *buf = 136316418;
          *&buf[4] = "AVHapticServer.mm";
          v88 = 1024;
          *v89 = 1092;
          *&v89[4] = 2080;
          *&v89[6] = "[AVHapticServerInstance createCustomAudioEvent:format:frames:options:reply:]";
          *&v89[14] = 2048;
          *&v89[16] = v51;
          *&v89[24] = 1024;
          LODWORD(v90) = v33;
          WORD2(v90) = 2112;
          *(&v90 + 6) = v32;
          _os_log_impl(&dword_1B9A08000, v50, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with eventID %u and error %@", buf, 0x36u);
        }
      }
    }
  }

  (*(replyCopy + 2))(replyCopy, v33, v32);

  XOSTransactor::endTransaction(v64);
  XOSTransactor::~XOSTransactor(v64);
}

- (void)releaseClientResources
{
  v32 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v3 = *kHSRVScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    v25 = "AVHapticServer.mm";
    v26 = 1024;
    v27 = 1050;
    v28 = 2080;
    v29 = "[AVHapticServerInstance releaseClientResources]";
    v30 = 2048;
    v31 = clientID;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v6 = self->_master;
  objc_sync_enter(v6);
  master = self->_master;
  if (master)
  {
    objc_msgSend_entryWithID_(master);
    v8 = self->_master;
  }

  else
  {
    v8 = 0;
    v22 = 0;
    v23 = 0;
  }

  objc_initWeak(&location, v8);
  objc_initWeak(&from, self);
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v9 = *kHSRVScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v25 = "AVHapticServer.mm";
          v26 = 1024;
          v27 = 1056;
          v28 = 2080;
          v29 = "[AVHapticServerInstance releaseClientResources]";
          _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Dispatching doStopRunning on ACQ", buf, 0x1Cu);
        }
      }
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3321888768;
  v16[2] = __48__AVHapticServerInstance_releaseClientResources__block_invoke;
  v16[3] = &unk_1F37BD748;
  objc_copyWeak(&v17, &from);
  objc_copyWeak(v18, &location);
  v18[1] = v22;
  v19 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16[4] = self;
  if (AudioControlQueue(void)::once != -1)
  {
    dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
  }

  v11 = AudioControlQueue(void)::gAudioControlQueue;
  AT::DispatchBlock(v11, v16, 0, "[AVHapticServerInstance releaseClientResources]", "AVHapticServer.mm", 1060);

  if (_os_feature_enabled_impl())
  {
    ptr = self->_hapticSession.__ptr_;
    if (ptr)
    {
      (*(*ptr + 56))(ptr, 0);
    }
  }

  v13 = self->_master;
  v14 = v22;
  v15 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(AVHapticServer *)v13 doReleaseClientResources:&v14];
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  objc_destroyWeak(v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  objc_sync_exit(v6);
}

void __48__AVHapticServerInstance_releaseClientResources__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setWasRunningAndSuspended:0];

  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 64);
  v5 = *(a1 + 56);
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v3 doStopRunning:&v5 audio:objc_msgSend(*(a1 + 32) haptics:{"runIncludesAudio", v5), objc_msgSend(*(a1 + 32), "runIncludesHaptics")}];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

- (void)allocateClientResources:(id)resources
{
  v52 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    v41 = "AVHapticServer.mm";
    v42 = 1024;
    v43 = 1021;
    v44 = 2080;
    v45 = "[AVHapticServerInstance allocateClientResources:]";
    v46 = 2048;
    v47 = clientID;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v8 = self->_master;
  objc_sync_enter(v8);
  master = self->_master;
  v39 = 0;
  v10 = [(AVHapticServer *)master incrementInit:&v39];
  v11 = v39;
  if (!v10)
  {
    (*(resourcesCopy + 2))(resourcesCopy, 0, 0, v11);
    goto LABEL_61;
  }

  v12 = self->_master;
  if (!v12)
  {
    v37 = 0;
    v38 = 0;
    goto LABEL_18;
  }

  objc_msgSend_entryWithID_(v12);
  if (!v37)
  {
LABEL_18:
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];

    v11 = v17;
    (*(resourcesCopy + 2))(resourcesCopy, 0, 0, v17);
    goto LABEL_59;
  }

  v36 = xpc_null_create();
  v35 = 2688;
  v13 = v37;
  ptr = self->_hapticSession.__ptr_;
  cntrl = self->_hapticSession.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  if (kHSRVScope)
  {
    v16 = *kHSRVScope;
    if (!v16)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v19 = v37[3];
    *buf = 136315906;
    v41 = "ClientEntry.mm";
    v42 = 1024;
    v43 = 152;
    v44 = 2080;
    v45 = "initialize";
    v46 = 1024;
    LODWORD(v47) = v19;
    _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client ID: 0x%x", buf, 0x22u);
  }

LABEL_23:
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v20 = v37[9];
  v37[8] = ptr;
  *(v13 + 72) = cntrl;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = HapticSharedMemoryReader::allocate((v13 + 128), &v36, &v35);
  if (v21)
  {
    goto LABEL_40;
  }

  ClientEntry::setState(v13, 1u);
  if (*(v13 + 472))
  {
    CAAssertRtn();
    goto LABEL_63;
  }

  if (SupportsMultiAudioOutput::once != -1)
  {
LABEL_63:
    dispatch_once(&SupportsMultiAudioOutput::once, &__block_literal_global_3_12895);
  }

  v21 = 0;
  if (gHapticAudioMultiOutputEnabled == 1 && ptr)
  {
    if (kHSRVScope)
    {
      v22 = *kHSRVScope;
      if (!v22)
      {
LABEL_39:
        v25 = *(*(v13 + 224) + 232);
        v26 = *(v13 + 24);
        v27 = (*(**(v13 + 64) + 16))(*(v13 + 64));
        v21 = (*(*v25 + 136))(v25, v26, v27, v13 + 32);
        goto LABEL_40;
      }
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v24 = *(v13 + 24);
      *buf = 136315906;
      v41 = "ClientEntry.mm";
      v42 = 1024;
      v43 = 191;
      v44 = 2080;
      v45 = "addAudioOutput";
      v46 = 2048;
      v47 = v24;
      _os_log_impl(&dword_1B9A08000, v22, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Registering audio SynthOutput for client ID: 0x%lx", buf, 0x26u);
    }

    goto LABEL_39;
  }

LABEL_40:
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  if (v21)
  {
    v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v21 userInfo:0];
  }

  else
  {
    v28 = 0;
  }

  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v29 = *kHSRVScope;
      if (v29)
      {
        v30 = v29;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v31 = _Block_copy(resourcesCopy);
          *buf = 136316418;
          v41 = "AVHapticServer.mm";
          v42 = 1024;
          v43 = 1040;
          v44 = 2080;
          v45 = "[AVHapticServerInstance allocateClientResources:]";
          v46 = 2048;
          v47 = v31;
          v48 = 1024;
          v49 = v35;
          v50 = 2112;
          v51 = v28;
          _os_log_impl(&dword_1B9A08000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: invoking callback %p with sharedBufferSize %u and error %@", buf, 0x36u);
        }
      }
    }
  }

  v32 = v36;
  (*(resourcesCopy + 2))(resourcesCopy, v36, v35, v28);
  if (!kHSRVScope)
  {
    v33 = MEMORY[0x1E69E9C10];
    v34 = MEMORY[0x1E69E9C10];
    goto LABEL_55;
  }

  v33 = *kHSRVScope;
  if (v33)
  {
LABEL_55:
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v41 = "AVHapticServer.mm";
      v42 = 1024;
      v43 = 1042;
      v44 = 2080;
      v45 = "[AVHapticServerInstance allocateClientResources:]";
      _os_log_impl(&dword_1B9A08000, v33, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Done", buf, 0x1Cu);
    }
  }

  v11 = v28;
LABEL_59:
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

LABEL_61:

  objc_sync_exit(v8);
}

- (void)queryCapabilities:(id)capabilities reply:(id)reply
{
  v72 = *MEMORY[0x1E69E9840];
  capabilitiesCopy = capabilities;
  replyCopy = reply;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__4369;
  v67 = __Block_byref_object_dispose__4370;
  v68 = 0;
  v9 = unk_1F37DF1E0(capabilitiesCopy, "objectForKey:", @"RequestedLocality");
  memset(&__p, 0, sizeof(__p));
  if ([v9 length])
  {
    v10 = v9;
    std::string::basic_string[abi:ne200100]<0>(buf, [v9 UTF8String]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = *buf;
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (std::__tree<std::__value_type<std::string,applesauce::CF::TypeRef>,std::__map_value_compare<std::string,std::__value_type<std::string,applesauce::CF::TypeRef>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,applesauce::CF::TypeRef>>>::__count_unique<std::string>(*(*([(AVHapticServer *)self->_master manager]+ 232) + 16), &__p))
    {
      if (kHSRVScope)
      {
        v12 = *kHSRVScope;
        if (!v12)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v12 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "AVHapticServer.mm";
        *&buf[12] = 1024;
        *&buf[14] = 848;
        *&buf[18] = 2080;
        *&buf[20] = "[AVHapticServerInstance queryCapabilities:reply:]";
        v70 = 2080;
        v71 = p_p;
        _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Found Locality: %s", buf, 0x26u);
      }

LABEL_21:
      v16 = *([(AVHapticServer *)self->_master manager]+ 232);
      *buf = &__p;
      std::__tree<std::__value_type<std::string,Locality>,std::__map_value_compare<std::string,std::__value_type<std::string,Locality>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,Locality>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v16 + 8), &__p, buf);
      operator new();
    }
  }

  else
  {
    if (kHSRVScope)
    {
      v13 = *kHSRVScope;
      if (!v13)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 843;
      *&buf[18] = 2080;
      *&buf[20] = "[AVHapticServerInstance queryCapabilities:reply:]";
      _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: No Locality passed in", buf, 0x1Cu);
    }
  }

LABEL_26:
  master = self->_master;
  if (!master)
  {
    v60 = 0;
    v61 = 0;
    goto LABEL_35;
  }

  objc_msgSend_entryWithID_(master);
  if (!v60)
  {
LABEL_35:
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4812 userInfo:0];
    v26 = v64[5];
    v64[5] = v25;

    replyCopy[2](replyCopy, 0, v64[5]);
    v27 = v9;
    goto LABEL_104;
  }

  v19 = unk_1F37DF1E8(capabilitiesCopy, "objectForKey:", @"RequestedPriority");
  v20 = v19;
  if (!v19)
  {
    goto LABEL_39;
  }

  unsignedIntegerValue = [v19 unsignedIntegerValue];
  v22 = unsignedIntegerValue;
  if (unsignedIntegerValue > 1)
  {
    switch(unsignedIntegerValue)
    {
      case 2:
        v23 = v60;
        v24 = 1001;
        goto LABEL_48;
      case 3:
        v23 = v60;
        v24 = 1003;
        goto LABEL_48;
      case 4:
        v23 = v60;
        v24 = 1002;
LABEL_48:
        *(v23 + 104) = v24;
        goto LABEL_49;
    }

    goto LABEL_65;
  }

  if (!unsignedIntegerValue)
  {
LABEL_39:
    if (kHSRVScope)
    {
      v28 = *kHSRVScope;
      if (!v28)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v28 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 883;
      *&buf[18] = 2080;
      *&buf[20] = "[AVHapticServerInstance queryCapabilities:reply:]";
      _os_log_impl(&dword_1B9A08000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: No Priority passed in", buf, 0x1Cu);
    }

LABEL_49:
    v30 = unk_1F37DF1F0(capabilitiesCopy, "objectForKey:", @"RequestedPowerUsage");

    if (v30)
    {
      unsignedIntegerValue2 = [v30 unsignedIntegerValue];
      v32 = unsignedIntegerValue2;
      if (unsignedIntegerValue2)
      {
        if (unsignedIntegerValue2 == 11)
        {
          *(v60 + 108) = 1;
          goto LABEL_73;
        }

        if (unsignedIntegerValue2 == 10)
        {
          *(v60 + 108) = 0;
          goto LABEL_73;
        }

        if (kHSRVScope)
        {
          v35 = *kHSRVScope;
          if (!v35)
          {
LABEL_72:
            v38 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4850 userInfo:0];
            v39 = v64[5];
            v64[5] = v38;

            replyCopy[2](replyCopy, 0, v64[5]);
            goto LABEL_73;
          }
        }

        else
        {
          v35 = MEMORY[0x1E69E9C10];
          v37 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "AVHapticServer.mm";
          *&buf[12] = 1024;
          *&buf[14] = 912;
          *&buf[18] = 2080;
          *&buf[20] = "[AVHapticServerInstance queryCapabilities:reply:]";
          v70 = 1024;
          LODWORD(v71) = v32;
          _os_log_impl(&dword_1B9A08000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Illegal power usage: %u", buf, 0x22u);
        }

        goto LABEL_72;
      }
    }

    if (kHSRVScope)
    {
      v33 = *kHSRVScope;
      if (!v33)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v33 = MEMORY[0x1E69E9C10];
      v34 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 909;
      *&buf[18] = 2080;
      *&buf[20] = "[AVHapticServerInstance queryCapabilities:reply:]";
      _os_log_impl(&dword_1B9A08000, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: No Power usage passed in", buf, 0x1Cu);
    }

LABEL_73:
    v40 = unk_1F37DF1F8(capabilitiesCopy, "objectForKey:", @"AllowBackgroundHaptics");

    v41 = v40;
    if (v40)
    {
      *(v60 + 220) = [v40 BOOLValue];
    }

    v27 = unk_1F37DF200(capabilitiesCopy, "objectForKey:", @"RequestedUsageCategory");

    if (!v27)
    {
      goto LABEL_83;
    }

    v42 = v27;
    if ([v42 isEqualToString:@"UIFeedback"])
    {
      v43 = 1;
    }

    else
    {
      if (![v42 isEqualToString:@"iOSKeyboard"])
      {
        *(v60 + 112) = 0;
        goto LABEL_82;
      }

      v43 = 2;
    }

    *(v60 + 112) = v43;
LABEL_82:

LABEL_83:
    if (HardwareSupportsHaptics::sCheckServer_Once[0] != -1)
    {
      dispatch_once(HardwareSupportsHaptics::sCheckServer_Once, &__block_literal_global_12884);
    }

    v44 = HardwareSupportsHaptics::sHapticsSupported;
    if (kHSRVScope)
    {
      if (*(kHSRVScope + 8))
      {
        v45 = *kHSRVScope;
        if (v45)
        {
          v46 = v45;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = "AVHapticServer.mm";
            *&buf[12] = 1024;
            *&buf[14] = 934;
            *&buf[18] = 2080;
            *&buf[20] = "[AVHapticServerInstance queryCapabilities:reply:]";
            v70 = 2112;
            v71 = capabilitiesCopy;
            _os_log_impl(&dword_1B9A08000, v46, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: queries: %@", buf, 0x26u);
          }
        }
      }
    }

    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3321888768;
    v51[2] = __50__AVHapticServerInstance_queryCapabilities_reply___block_invoke;
    v51[3] = &unk_1F37BD780;
    v47 = v8;
    v59 = v44;
    v52 = v47;
    v54 = v60;
    v55 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56 = 0;
    v57 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v58, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v58 = __p;
    }

    v53 = &v63;
    unk_1F37DF208(capabilitiesCopy, "enumerateKeysAndObjectsUsingBlock:", v51);
    (replyCopy)[2](replyCopy, v47, v64[5]);
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }

    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    goto LABEL_103;
  }

  if (unsignedIntegerValue == 1)
  {
    v23 = v60;
    v24 = 1000;
    goto LABEL_48;
  }

LABEL_65:
  if (!kHSRVScope)
  {
    v36 = MEMORY[0x1E69E9C10];
    v48 = MEMORY[0x1E69E9C10];
    goto LABEL_110;
  }

  v36 = *kHSRVScope;
  if (v36)
  {
LABEL_110:
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 886;
      *&buf[18] = 2080;
      *&buf[20] = "[AVHapticServerInstance queryCapabilities:reply:]";
      v70 = 1024;
      LODWORD(v71) = v22;
      _os_log_impl(&dword_1B9A08000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Illegal priority: %u", buf, 0x22u);
    }
  }

  v49 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:-4850 userInfo:0];
  v50 = v64[5];
  v64[5] = v49;

  replyCopy[2](replyCopy, 0, v64[5]);
  v41 = v20;
  v27 = v9;
LABEL_103:

LABEL_104:
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v63, 8);
}

void __50__AVHapticServerInstance_queryCapabilities_reply___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v9 = *kHSRVScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v60 = "AVHapticServer.mm";
          v61 = 1024;
          v62 = 938;
          v63 = 2080;
          v64 = "[AVHapticServerInstance queryCapabilities:reply:]_block_invoke";
          v65 = 2112;
          v66 = v7;
          _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: key: %@", buf, 0x26u);
        }
      }
    }
  }

  if ([v7 isEqualToString:@"SupportsHapticPlayback"])
  {
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 104)];
    [v11 setObject:v12 forKey:v7];

    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"SupportsAudioPlayback"] || objc_msgSend(v7, "isEqualToString:", @"SupportsAdvancedPatternPlayers"))
  {
    goto LABEL_15;
  }

  if ([v7 isEqualToString:@"HapticContinuousTimeLimit"])
  {
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:30];
    [v13 setObject:v14 forKey:v7];

    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"UsingInternalHaptics"])
  {
LABEL_15:
    v15 = *(a1 + 32);
    v16 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v15 setObject:v16 forKey:v7];

    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"BuiltInAudioEventIDs"])
  {
    v17 = *(a1 + 32);
    v18 = ClientEntry::getBuiltInAudioEventsDictionary(*(a1 + 48));
    [v17 setObject:v18 forKey:v7];

    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"HapticTransientDefaultIntensity"])
  {
    v20 = *(a1 + 64);
    if (v20)
    {
      v21 = *(a1 + 32);
      LODWORD(v19) = *(v20 + 36);
      v22 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
      [v21 setObject:v22 forKey:v7];
    }

    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"HapticTransientDefaultSharpness"])
  {
    v24 = *(a1 + 64);
    if (v24)
    {
      v25 = *(a1 + 32);
      LODWORD(v23) = *(v24 + 40);
      v26 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
      [v25 setObject:v26 forKey:v7];
    }

    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"HapticContinuousDefaultIntensity"])
  {
    v28 = *(a1 + 64);
    if (v28)
    {
      v29 = *(a1 + 32);
      LODWORD(v27) = *(v28 + 44);
      v30 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
      [v29 setObject:v30 forKey:v7];
    }

    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"HapticContinuousDefaultSharpness"])
  {
    v32 = *(a1 + 64);
    if (v32)
    {
      v33 = *(a1 + 32);
      LODWORD(v31) = *(v32 + 48);
      v34 = [MEMORY[0x1E696AD98] numberWithFloat:v31];
      [v33 setObject:v34 forKey:v7];
    }

    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"HapticTransientEventIDs"])
  {
    v35 = *(a1 + 64);
    if (!v35)
    {
      goto LABEL_42;
    }

    v36 = *(a1 + 32);
    memset(v58, 0, sizeof(v58));
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v58, *(v35 + 56), *(v35 + 64), (*(v35 + 64) - *(v35 + 56)) >> 2);
    v37 = vectorOfUInt32ToNSArray(v58);
    [v36 setObject:v37 forKey:v7];

    v38 = v58[0];
    if (!v58[0])
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if ([v7 isEqualToString:@"HapticContinuousSustainedEventIDs"])
  {
    v39 = *(a1 + 64);
    if (!v39)
    {
      goto LABEL_42;
    }

    v40 = *(a1 + 32);
    memset(v57, 0, sizeof(v57));
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v57, *(v39 + 80), *(v39 + 88), (*(v39 + 88) - *(v39 + 80)) >> 2);
    v41 = vectorOfUInt32ToNSArray(v57);
    [v40 setObject:v41 forKey:v7];

    v38 = v57[0];
    if (!v57[0])
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if ([v7 isEqualToString:@"HapticContinuousNonsustainedEventIDs"])
  {
    v42 = *(a1 + 64);
    if (!v42)
    {
      goto LABEL_42;
    }

    v43 = *(a1 + 32);
    memset(__p, 0, sizeof(__p));
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(__p, *(v42 + 104), *(v42 + 112), (*(v42 + 112) - *(v42 + 104)) >> 2);
    v44 = vectorOfUInt32ToNSArray(__p);
    [v43 setObject:v44 forKey:v7];

    v38 = __p[0];
    if (!__p[0])
    {
      goto LABEL_42;
    }

LABEL_41:
    operator delete(v38);
    goto LABEL_42;
  }

  if ([v7 isEqualToString:@"RequestedPriority"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"RequestedPowerUsage") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"RequestedUsageCategory") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"AllowBackgroundHaptics"))
  {
    goto LABEL_42;
  }

  v46 = *(a1 + 103);
  if (v46 < 0)
  {
    v46 = *(a1 + 88);
  }

  if (!v46)
  {
    v49 = CALog::LogObjIfEnabled(2, kHSRVScope, v45);
    v48 = v49;
    if (v49 && os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v60 = "AVHapticServer.mm";
      v61 = 1024;
      v62 = 1009;
      v63 = 2080;
      v64 = "[AVHapticServerInstance queryCapabilities:reply:]_block_invoke";
      v65 = 2112;
      v66 = v7;
      _os_log_impl(&dword_1B9A08000, v48, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: WARNING: Unrecognized server query: '%@'", buf, 0x26u);
    }

    goto LABEL_55;
  }

  if (*(a1 + 104) != 1 || *(a1 + 64))
  {
    v47 = CALog::LogObjIfEnabled(4, kHSRVScope, v45);
    v48 = v47;
    if (v47 && os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v60 = "AVHapticServer.mm";
      v61 = 1024;
      v62 = 1005;
      v63 = 2080;
      v64 = "[AVHapticServerInstance queryCapabilities:reply:]_block_invoke";
      _os_log_impl(&dword_1B9A08000, v48, OS_LOG_TYPE_INFO, "%25s:%-5d %s: No Localities supported by server - ignoring", buf, 0x1Cu);
    }

LABEL_55:

    goto LABEL_42;
  }

  v50 = CALog::LogObjIfEnabled(1, kHSRVScope, v45);
  v51 = v50;
  if (v50 && os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    v52 = (a1 + 80);
    if (*(a1 + 103) < 0)
    {
      v52 = *v52;
    }

    *buf = 136315906;
    v60 = "AVHapticServer.mm";
    v61 = 1024;
    v62 = 1000;
    v63 = 2080;
    v64 = "[AVHapticServerInstance queryCapabilities:reply:]_block_invoke";
    v65 = 2080;
    v66 = v52;
    _os_log_impl(&dword_1B9A08000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Failed to find Locality: %s", buf, 0x26u);
  }

  v53 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-4850 userInfo:0];
  v54 = *(*(a1 + 40) + 8);
  v55 = *(v54 + 40);
  *(v54 + 40) = v53;

  *a4 = 1;
LABEL_42:
}

- (void)configureWithOptions:(id)options reply:(id)reply
{
  v50 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  v36 = [optionsCopy objectForKey:@"AudioSessionID"];
  v35 = [optionsCopy objectForKey:@"AudioSessionIsShared"];
  v34 = [optionsCopy objectForKey:@"BypassAudioSession"];
  v8 = [optionsCopy objectForKey:@"ClientProcessTaskToken"];
  unsignedIntegerValue = [v36 unsignedIntegerValue];
  bOOLValue = [v35 BOOLValue];
  bOOLValue2 = [v34 BOOLValue];
  if (kHSRVScope)
  {
    v12 = *kHSRVScope;
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v14 = "not shared";
    *buf = 136316418;
    v41 = "AVHapticServer.mm";
    v43 = 792;
    v42 = 1024;
    v45 = "[AVHapticServerInstance configureWithOptions:reply:]";
    v44 = 2080;
    if (bOOLValue)
    {
      v14 = "shared";
    }

    v46 = 1024;
    *v47 = unsignedIntegerValue;
    *&v47[4] = 2080;
    *&v47[6] = v14;
    v48 = 1024;
    v49 = bOOLValue2;
    _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [via xpc] called by client with sessionID: %u (%s), bypassAudioSession: %u", buf, 0x32u);
  }

LABEL_10:
  if (v8)
  {
    taskTokenDictionary = [v8 taskTokenDictionary];
    v16 = xpc_dictionary_copy_mach_send();
  }

  else
  {
    v16 = 0;
  }

  if (kHSRVScope)
  {
    v17 = *kHSRVScope;
    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v41 = "AVHapticServer.mm";
    v42 = 1024;
    v43 = 796;
    v44 = 2080;
    v45 = "[AVHapticServerInstance configureWithOptions:reply:]";
    v46 = 1024;
    *v47 = v16;
    _os_log_impl(&dword_1B9A08000, v17, OS_LOG_TYPE_INFO, "%25s:%-5d %s: taskToken: %u", buf, 0x22u);
  }

LABEL_20:
  master = self->_master;
  if (!master)
  {
    v38 = 0;
    v39 = 0;
LABEL_27:
    if (kHSRVScope)
    {
      v21 = *kHSRVScope;
      if (!v21)
      {
LABEL_34:
        v24 = 0;
LABEL_45:
        replyCopy[2](replyCopy, v24);
        v31 = 0;
        goto LABEL_46;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      clientID = self->_clientID;
      *buf = 136315906;
      v41 = "AVHapticServer.mm";
      v42 = 1024;
      v43 = 814;
      v44 = 2080;
      v45 = "[AVHapticServerInstance configureWithOptions:reply:]";
      v46 = 2048;
      *v47 = clientID;
      _os_log_impl(&dword_1B9A08000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: No matching entry found for clientID 0x%lx", buf, 0x26u);
    }

    goto LABEL_34;
  }

  objc_msgSend_entryWithID_(master);
  if (!v38)
  {
    goto LABEL_27;
  }

  *(v38 + 216) = v16;
  if (bOOLValue2)
  {
    if (kHSRVScope)
    {
      v20 = *kHSRVScope;
      if (!v20)
      {
LABEL_44:
        v24 = self->_clientID;
        goto LABEL_45;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v30 = self->_clientID;
      *buf = 136315906;
      v41 = "AVHapticServer.mm";
      v42 = 1024;
      v43 = 802;
      v44 = 2080;
      v45 = "[AVHapticServerInstance configureWithOptions:reply:]";
      v46 = 2048;
      *v47 = v30;
      _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Skipping setting up AudioSession; replying with 0x%lx", buf, 0x26u);
    }

    goto LABEL_44;
  }

  v37 = 0;
  v25 = [(AVHapticServerInstance *)self setupAudioSessionFromID:unsignedIntegerValue isShared:bOOLValue error:&v37];
  v26 = v37;
  if (v25)
  {
    if (kHSRVScope)
    {
      v27 = *kHSRVScope;
      if (!v27)
      {
LABEL_53:
        v28 = self->_clientID;
        goto LABEL_54;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v33 = self->_clientID;
      *buf = 136315906;
      v41 = "AVHapticServer.mm";
      v42 = 1024;
      v43 = 806;
      v44 = 2080;
      v45 = "[AVHapticServerInstance configureWithOptions:reply:]";
      v46 = 2048;
      *v47 = v33;
      _os_log_impl(&dword_1B9A08000, v27, OS_LOG_TYPE_INFO, "%25s:%-5d %s: replying with 0x%lx", buf, 0x26u);
    }

    goto LABEL_53;
  }

  v28 = 0;
LABEL_54:
  replyCopy[2](replyCopy, v28);
  v31 = v26;
LABEL_46:
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }
}

- (BOOL)setupAudioSessionFromID:(unsigned int)d isShared:(BOOL)shared error:(id *)error
{
  v8 = *MEMORY[0x1E69E9840];
  memset(&buf, 0, sizeof(buf));
  HapticSession::create_shared(number, d, shared, &buf);
}

- (void)handleConnectionError
{
  v62 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v3 = *kHSRVScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    clientID = self->_clientID;
    *buf = 136315906;
    v54 = "AVHapticServer.mm";
    v55 = 1024;
    v56 = 687;
    v57 = 2080;
    v58 = "[AVHapticServerInstance handleConnectionError]";
    v59 = 2048;
    *v60 = clientID;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: [xpc] clientID: 0x%lx", buf, 0x26u);
  }

LABEL_8:
  v6 = self->_master;
  objc_sync_enter(v6);
  [(AVHapticServerInstance *)self removeSessionListeners];
  master = self->_master;
  if (!master)
  {
    v51 = 0;
    v52 = 0;
    goto LABEL_93;
  }

  objc_msgSend_entryWithID_(master);
  if (!v51)
  {
    goto LABEL_93;
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, self->_master);
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v8 = *kHSRVScope;
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v54 = "AVHapticServer.mm";
          v55 = 1024;
          v56 = 694;
          v57 = 2080;
          v58 = "[AVHapticServerInstance handleConnectionError]";
          _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Dispatching doStopPrewarm and doStopRunning on ACQ", buf, 0x1Cu);
        }
      }
    }
  }

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3321888768;
  v45[2] = __47__AVHapticServerInstance_handleConnectionError__block_invoke;
  v45[3] = &unk_1F37BD748;
  objc_copyWeak(&v46, &from);
  objc_copyWeak(v47, &location);
  v47[1] = v51;
  v48 = v52;
  if (v52)
  {
    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v45[4] = self;
  if (AudioControlQueue(void)::once != -1)
  {
    dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
  }

  v10 = AudioControlQueue(void)::gAudioControlQueue;
  AT::DispatchBlock(v10, v45, 0, "[AVHapticServerInstance handleConnectionError]", "AVHapticServer.mm", 705);

  if (_os_feature_enabled_impl())
  {
    ptr = self->_hapticSession.__ptr_;
    if (ptr)
    {
      (*(*ptr + 56))(ptr, 0);
    }
  }

  if (kHSRVScope)
  {
    v12 = *kHSRVScope;
    if (!v12)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v54 = "AVHapticServer.mm";
    v55 = 1024;
    v56 = 709;
    v57 = 2080;
    v58 = "[AVHapticServerInstance handleConnectionError]";
    v59 = 2048;
    *v60 = v51;
    _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Releasing resources (if necessary), unregistering and destroying client entry %p", buf, 0x26u);
  }

LABEL_31:
  v14 = self->_master;
  v43 = v51;
  v44 = v52;
  if (v52)
  {
    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(AVHapticServer *)v14 doReleaseClientResources:&v43];
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v15 = v51[54];
  if (v15 - 1 > 0xFFFFFFFD)
  {
    goto LABEL_51;
  }

  if (!kHSRVScope)
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
    goto LABEL_40;
  }

  v16 = *kHSRVScope;
  if (v16)
  {
LABEL_40:
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v54 = "AVHapticServer.mm";
      v55 = 1024;
      v56 = 713;
      v57 = 2080;
      v58 = "[AVHapticServerInstance handleConnectionError]";
      v59 = 1024;
      *v60 = v15;
      _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: deallocating client process task token: %u", buf, 0x22u);
    }
  }

  v18 = mach_port_deallocate(*MEMORY[0x1E69E9A60], v15);
  if (!v18)
  {
    goto LABEL_51;
  }

  if (kHSRVScope)
  {
    v19 = *kHSRVScope;
    if (!v19)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v54 = "AVHapticServer.mm";
    v55 = 1024;
    v56 = 715;
    v57 = 2080;
    v58 = "[AVHapticServerInstance handleConnectionError]";
    v59 = 1024;
    *v60 = v15;
    *&v60[4] = 1024;
    *&v60[6] = v18;
    _os_log_impl(&dword_1B9A08000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: mach_port_deallocate of client process task token %u failed with %d", buf, 0x28u);
  }

LABEL_51:
  manager = [(AVHapticServer *)self->_master manager];
  v23 = v51;
  v22 = v52;
  if (v52)
  {
    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v24 = *kHSRVScope;
      if (v24)
      {
        v25 = v24;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v26 = *(v23 + 3);
          *buf = 136315906;
          v54 = "ServerManager.mm";
          v55 = 1024;
          v56 = 1211;
          v57 = 2080;
          v58 = "removeEntry";
          v59 = 2048;
          *v60 = v26;
          _os_log_impl(&dword_1B9A08000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client ID: 0x%lx", buf, 0x26u);
        }
      }
    }
  }

  std::__shared_mutex_base::lock((manager + 3));
  v27 = manager[1];
  v28 = 1;
  *(manager + 192) = 1;
  if (v27)
  {
    v29 = *(v23 + 3);
    v30 = (manager + 1);
    v31 = v27;
    do
    {
      v32 = v31[4];
      v33 = v32 >= v29;
      v34 = v32 < v29;
      if (v33)
      {
        v30 = v31;
      }

      v31 = v31[v34];
    }

    while (v31);
    if (v30 == (manager + 1) || v29 < v30[4])
    {
      v28 = 1;
    }

    else
    {
      v35 = v30[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        v37 = v30;
        do
        {
          v36 = v37[2];
          v38 = *v36 == v37;
          v37 = v36;
        }

        while (!v38);
      }

      if (*manager == v30)
      {
        *manager = v36;
      }

      manager[2] = (manager[2] - 1);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v27, v30);
      v39 = v30[6];
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      operator delete(v30);
      v28 = 0;
    }
  }

  *(manager + 192) = 0;
  std::__shared_mutex_base::unlock((manager + 3));
  if (v28)
  {
    if (kHSRVScope)
    {
      v40 = *kHSRVScope;
      if (!v40)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v40 = MEMORY[0x1E69E9C10];
      v41 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v42 = *(v23 + 3);
      *buf = 136316162;
      v54 = "ServerManager.mm";
      v55 = 1024;
      v56 = 1213;
      v57 = 2080;
      v58 = "removeEntry";
      v59 = 2048;
      *v60 = v23;
      *&v60[8] = 2048;
      v61 = v42;
      _os_log_impl(&dword_1B9A08000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Invalid client entry: %p (connectionID 0x%lx)", buf, 0x30u);
    }

    goto LABEL_88;
  }

  ClientEntry::uninitialize(v23);
LABEL_88:
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  objc_destroyWeak(v47);
  objc_destroyWeak(&v46);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
LABEL_93:
  [(AVHapticServer *)self->_master removeProcessEntry:self->_clientID];
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  objc_sync_exit(v6);
}

void __47__AVHapticServerInstance_handleConnectionError__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (!WeakRetained)
  {
    if (kHSRVScope)
    {
      v3 = *kHSRVScope;
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v20 = "AVHapticServer.mm";
      v21 = 1024;
      v22 = 696;
      v23 = 2080;
      v24 = "[AVHapticServerInstance handleConnectionError]_block_invoke";
      _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: WARNING: Server master is already nil - no call to stop prewarm or running possible", buf, 0x1Cu);
    }
  }

LABEL_9:
  v5 = objc_loadWeakRetained((a1 + 48));
  [v5 setWasPrewarmedAndSuspended:0];

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = *(a1 + 64);
  v17 = *(a1 + 56);
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v6 doStopPrewarm:&v17 audio:objc_msgSend(*(a1 + 32) haptics:{"prewarmIncludesAudio"), objc_msgSend(*(a1 + 32), "prewarmIncludesHaptics")}];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v8 = objc_loadWeakRetained((a1 + 48));
  [v8 setWasRunningAndSuspended:0];

  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = *(a1 + 64);
  v15 = *(a1 + 56);
  v16 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v9 doStopRunning:&v15 audio:objc_msgSend(*(a1 + 32) haptics:{"runIncludesAudio", v15), objc_msgSend(*(a1 + 32), "runIncludesHaptics")}];
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v11 = objc_loadWeakRetained((a1 + 48));
  [v11 setClientSuspended:0];

  v12 = objc_loadWeakRetained((a1 + 48));
  [v12 setWasPrewarmedAndSuspended:0];

  v13 = objc_loadWeakRetained((a1 + 48));
  [v13 setClientInterrupted:0];

  v14 = objc_loadWeakRetained((a1 + 48));
  [v14 setRunningInBackground:0];
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v3 = *kHSRVScope;
      if (v3)
      {
        v4 = v3;
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v8 = "AVHapticServer.mm";
          v9 = 1024;
          v10 = 680;
          v11 = 2080;
          v12 = "[AVHapticServerInstance dealloc]";
          _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Entered", buf, 0x1Cu);
        }
      }
    }
  }

  [(AVHapticServerInstance *)self removeSessionListeners];
  connection = self->_connection;
  self->_connection = 0;

  v6.receiver = self;
  v6.super_class = AVHapticServerInstance;
  [(AVHapticServerInstance *)&v6 dealloc];
}

- (void)removeSessionListeners
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_listenerWrapper)
  {
    if (kHSRVScope)
    {
      v3 = *kHSRVScope;
      if (!v3)
      {
LABEL_9:
        MEMORY[0x1BFAE2A20]();
        v6 = FigNotificationCenterRemoveWeakListener();
        MEMORY[0x1BFAE2A20](v6);
        FigNotificationCenterRemoveWeakListener();
        master = [(AVHapticServerInstance *)self master];
        v8 = self->_listenerWrapper;
        v9 = (*(*self->_hapticSession.__ptr_ + 16))(self->_hapticSession.__ptr_);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __48__AVHapticServerInstance_removeSessionListeners__block_invoke;
        block[3] = &unk_1E7ECEC00;
        v14 = master;
        v15 = v8;
        v16 = v9;
        v10 = v8;
        v11 = master;
        dispatch_async(MEMORY[0x1E69E96A0], block);
        listenerWrapper = self->_listenerWrapper;
        self->_listenerWrapper = 0;

        return;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      clientID = self->_clientID;
      *buf = 136315906;
      v18 = "AVHapticServer.mm";
      v19 = 1024;
      v20 = 664;
      v21 = 2080;
      v22 = "[AVHapticServerInstance removeSessionListeners]";
      v23 = 2048;
      v24 = clientID;
      _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Removing session listeners on client 0x%lx", buf, 0x26u);
    }

    goto LABEL_9;
  }
}

- (AVHapticServerInstance)initWithMaster:(id)master id:(unint64_t)id connection:(id)connection outError:(id *)error
{
  masterCopy = master;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = AVHapticServerInstance;
  v12 = [(AVHapticServerInstance *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_master, master);
    objc_storeStrong(&v13->_connection, connection);
    v13->_clientID = id;
    *&v13->_clientSuspended = 0;
    v13->_runningInBackground = 0;
  }

  return v13;
}

- (void)handleInterruptionForSession:(const void *)session command:(unsigned int)command dictionary:(id)dictionary
{
  v56 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!AQMESession::isSameAudioSession(&self->_aqmeSession, session))
  {
    goto LABEL_93;
  }

  if (kHSRVScope)
  {
    v9 = *kHSRVScope;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    clientID = self->_clientID;
    *buf = 136316162;
    v47 = "AVHapticServer.mm";
    v48 = 1024;
    v49 = 528;
    v50 = 2080;
    v51 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
    v52 = 2048;
    v53 = clientID;
    v54 = 1024;
    commandCopy = command;
    _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Handling session interruption notification for client 0x%lx, interruption cmd: %u", buf, 0x2Cu);
  }

LABEL_9:
  master = self->_master;
  if (!master)
  {
    v44 = 0;
    v45 = 0;
    goto LABEL_91;
  }

  objc_msgSend_entryWithID_(master);
  if (!v44)
  {
    goto LABEL_91;
  }

  v42 = dictionaryCopy;
  v43 = 0;
  v40 = 0.5;
  v41 = 0.0;
  if (command <= 3)
  {
    if (command <= 1)
    {
      if (command)
      {
        if (command == 1)
        {
          if (!kHSRVScope)
          {
            goto LABEL_90;
          }

          if ((*(kHSRVScope + 8) & 1) == 0)
          {
            goto LABEL_90;
          }

          v15 = *kHSRVScope;
          if (!v15)
          {
            goto LABEL_90;
          }

          v16 = v15;
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_74;
          }

          *buf = 136315650;
          v47 = "AVHapticServer.mm";
          v48 = 1024;
          v49 = 548;
          v50 = 2080;
          v51 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
          v17 = "%25s:%-5d %s: Ignoring InterruptionEnded";
          v18 = v16;
          v19 = 28;
          goto LABEL_73;
        }

LABEL_82:
        if (!kHSRVScope)
        {
          goto LABEL_90;
        }

        if ((*(kHSRVScope + 8) & 1) == 0)
        {
          goto LABEL_90;
        }

        v39 = *kHSRVScope;
        if (!v39)
        {
          goto LABEL_90;
        }

        v16 = v39;
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_74;
        }

        *buf = 136315906;
        v47 = "AVHapticServer.mm";
        v48 = 1024;
        v49 = 585;
        v50 = 2080;
        v51 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
        v52 = 1024;
        LODWORD(v53) = command;
        v17 = "%25s:%-5d %s: Ignoring cmd: 0x%x";
        v18 = v16;
        v19 = 34;
        goto LABEL_73;
      }

      if (kHSRVScope)
      {
        if (*(kHSRVScope + 8))
        {
          v30 = *kHSRVScope;
          if (v30)
          {
            v31 = v30;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v47 = "AVHapticServer.mm";
              v48 = 1024;
              v49 = 541;
              v50 = 2080;
              v51 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
              _os_log_impl(&dword_1B9A08000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Handling StopNow", buf, 0x1Cu);
            }
          }
        }
      }

      goto LABEL_60;
    }

    if (command == 2)
    {
      if (kHSRVScope)
      {
        if (*(kHSRVScope + 8))
        {
          v34 = *kHSRVScope;
          if (v34)
          {
            v35 = v34;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v47 = "AVHapticServer.mm";
              v48 = 1024;
              v49 = 564;
              v50 = 2080;
              v51 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
              _os_log_impl(&dword_1B9A08000, v35, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Handling BeginQuietTime", buf, 0x1Cu);
            }
          }
        }
      }

      v41 = 0.0;
      CACFDictionary::GetFloat32(&v42, *MEMORY[0x1E69AFA00], &v41);
      v24 = 0;
      v22 = 0;
      v23 = 1;
      *&v14 = v41;
      goto LABEL_68;
    }

    if (kHSRVScope)
    {
      if (*(kHSRVScope + 8))
      {
        v25 = *kHSRVScope;
        if (v25)
        {
          v26 = v25;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v47 = "AVHapticServer.mm";
            v48 = 1024;
            v49 = 571;
            v50 = 2080;
            v51 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
            _os_log_impl(&dword_1B9A08000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Handling EndQuietTime", buf, 0x1Cu);
          }
        }
      }
    }

    v24 = 0;
    v22 = 0;
    v23 = 0;
    v41 = 1.0;
LABEL_38:
    LODWORD(v14) = 1.0;
    goto LABEL_68;
  }

  if (command > 5)
  {
    if (command == 6)
    {
      if (!kHSRVScope || (*(kHSRVScope + 8) & 1) == 0 || (v38 = *kHSRVScope) == 0)
      {
        v29 = 1;
        goto LABEL_89;
      }

      v28 = v38;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v47 = "AVHapticServer.mm";
        v48 = 1024;
        v49 = 577;
        v50 = 2080;
        v51 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
        _os_log_impl(&dword_1B9A08000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Handling Silent Mute", buf, 0x1Cu);
      }

      v29 = 1;
    }

    else
    {
      if (command != 7)
      {
        goto LABEL_82;
      }

      if (!kHSRVScope || (*(kHSRVScope + 8) & 1) == 0 || (v27 = *kHSRVScope) == 0)
      {
        v29 = 0;
        goto LABEL_89;
      }

      v28 = v27;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v47 = "AVHapticServer.mm";
        v48 = 1024;
        v49 = 581;
        v50 = 2080;
        v51 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
        _os_log_impl(&dword_1B9A08000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Handling Silent UnMute", buf, 0x1Cu);
      }

      v29 = 0;
    }

LABEL_89:
    [(AVHapticServerInstance *)self muteClientForRingerSwitch:v29];
    goto LABEL_90;
  }

  if (command != 4)
  {
    if (kHSRVScope)
    {
      if (*(kHSRVScope + 8))
      {
        v20 = *kHSRVScope;
        if (v20)
        {
          v21 = v20;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v47 = "AVHapticServer.mm";
            v48 = 1024;
            v49 = 558;
            v50 = 2080;
            v51 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
            _os_log_impl(&dword_1B9A08000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Handling Resume", buf, 0x1Cu);
          }
        }
      }
    }

    CACFDictionary::GetFloat32(&v42, *MEMORY[0x1E69AFA18], &v40);
    v22 = 0;
    v23 = 0;
    v41 = 1.0;
    v24 = 1;
    goto LABEL_38;
  }

  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v32 = *kHSRVScope;
      if (v32)
      {
        v33 = v32;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v47 = "AVHapticServer.mm";
          v48 = 1024;
          v49 = 551;
          v50 = 2080;
          v51 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
          _os_log_impl(&dword_1B9A08000, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Handling Pause", buf, 0x1Cu);
        }
      }
    }
  }

LABEL_60:
  CACFDictionary::GetFloat32(&v42, *MEMORY[0x1E69AFA18], &v40);
  v41 = 0.0;
  v24 = 1;
  v14 = 0.0;
  v22 = 1;
  v23 = 1;
LABEL_68:
  *&v13 = v40;
  [(AVHapticServerInstance *)self fadeClientForSessionInterruption:v23 affectHaptics:v24 fadeTime:v22 fadeLevel:v13 stopAfterFade:v14];
  if (!kHSRVScope)
  {
    goto LABEL_90;
  }

  if ((*(kHSRVScope + 8) & 1) == 0)
  {
    goto LABEL_90;
  }

  v36 = *kHSRVScope;
  if (!v36)
  {
    goto LABEL_90;
  }

  v16 = v36;
  if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_74;
  }

  v37 = self->_clientID;
  *buf = 136315906;
  v47 = "AVHapticServer.mm";
  v48 = 1024;
  v49 = 589;
  v50 = 2080;
  v51 = "[AVHapticServerInstance handleInterruptionForSession:command:dictionary:]";
  v52 = 2048;
  v53 = v37;
  v17 = "%25s:%-5d %s: Done handling interruption notification for client 0x%lx";
  v18 = v16;
  v19 = 38;
LABEL_73:
  _os_log_impl(&dword_1B9A08000, v18, OS_LOG_TYPE_DEBUG, v17, buf, v19);
LABEL_74:

LABEL_90:
  CACFDictionary::~CACFDictionary(&v42);
LABEL_91:
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

LABEL_93:
}

- (void)unmuteClientAfterSessionInterruption:(float)interruption
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_clientInterrupted)
  {
    self->_clientInterrupted = 0;
    master = self->_master;
    if (master)
    {
      objc_msgSend_entryWithID_(master, a2, self->_clientID);
      if (v18)
      {
        if (kHSRVScope)
        {
          v6 = *kHSRVScope;
          if (!v6)
          {
LABEL_17:
            manager = [(AVHapticServer *)self->_master manager];
            v14 = v19;
            v17[0] = v18;
            v17[1] = v19;
            if (v19)
            {
              atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            ServerManager::handleSessionInterruptionForEntry(manager, v17, 0, 1, interruption, 1.0);
            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

            if (!kHSRVScope)
            {
              goto LABEL_28;
            }

            if ((*(kHSRVScope + 8) & 1) == 0)
            {
              goto LABEL_28;
            }

            v15 = *kHSRVScope;
            if (!v15)
            {
              goto LABEL_28;
            }

            v8 = v15;
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_27;
            }

            clientID = self->_clientID;
            *buf = 136315906;
            v21 = "AVHapticServer.mm";
            v22 = 1024;
            v23 = 514;
            v24 = 2080;
            v25 = "[AVHapticServerInstance unmuteClientAfterSessionInterruption:]";
            v26 = 2048;
            v27 = clientID;
            v10 = "%25s:%-5d %s: Done unmuting client 0x%lx";
            goto LABEL_26;
          }
        }

        else
        {
          v6 = MEMORY[0x1E69E9C10];
          v11 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v12 = self->_clientID;
          *buf = 136315906;
          v21 = "AVHapticServer.mm";
          v22 = 1024;
          v23 = 512;
          v24 = 2080;
          v25 = "[AVHapticServerInstance unmuteClientAfterSessionInterruption:]";
          v26 = 2048;
          v27 = v12;
          _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Interrupted client 0x%lx being unmuted on restart", buf, 0x26u);
        }

        goto LABEL_17;
      }
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    if (!kHSRVScope)
    {
      goto LABEL_28;
    }

    if ((*(kHSRVScope + 8) & 1) == 0)
    {
      goto LABEL_28;
    }

    v7 = *kHSRVScope;
    if (!v7)
    {
      goto LABEL_28;
    }

    v8 = v7;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
LABEL_27:

LABEL_28:
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      return;
    }

    v9 = self->_clientID;
    *buf = 136315906;
    v21 = "AVHapticServer.mm";
    v22 = 1024;
    v23 = 517;
    v24 = 2080;
    v25 = "[AVHapticServerInstance unmuteClientAfterSessionInterruption:]";
    v26 = 2048;
    v27 = v9;
    v10 = "%25s:%-5d %s: Client 0x%lx did not stop on interruption (or was not found)";
LABEL_26:
    _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_DEBUG, v10, buf, 0x26u);
    goto LABEL_27;
  }
}

- (void)fadeClientForSessionInterruption:(BOOL)interruption affectHaptics:(BOOL)haptics fadeTime:(float)time fadeLevel:(float)level stopAfterFade:(BOOL)fade
{
  v60 = *MEMORY[0x1E69E9840];
  if (self->_clientInterrupted != interruption)
  {
    fadeCopy = fade;
    hapticsCopy = haptics;
    interruptionCopy = interruption;
    self->_clientInterrupted = interruption;
    master = self->_master;
    if (master)
    {
      objc_msgSend_entryWithID_(master, a2, self->_clientID);
      if (!interruptionCopy)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v42 = 0;
      v43 = 0;
      if (!interruption)
      {
        goto LABEL_10;
      }
    }

    if ((*(*self->_hapticSession.__ptr_ + 48))(self->_hapticSession.__ptr_))
    {
      if (kHSRVScope)
      {
        v14 = *kHSRVScope;
        if (!v14)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v29 = MEMORY[0x1E69E9C10];
      }

      v17 = v14;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        clientID = self->_clientID;
        v31 = (*(*self->_hapticSession.__ptr_ + 16))(self->_hapticSession.__ptr_);
        *buf = 136316162;
        v45 = "AVHapticServer.mm";
        v46 = 1024;
        v47 = 481;
        v48 = 2080;
        v49 = "[AVHapticServerInstance fadeClientForSessionInterruption:affectHaptics:fadeTime:fadeLevel:stopAfterFade:]";
        v50 = 2048;
        v51 = clientID;
        v52 = 1024;
        LODWORD(v53) = v31;
        _os_log_impl(&dword_1B9A08000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client 0x%lx's private audio session %d has been deactivated by caller process or application backgrounded. Not proceeding with fading and stopping for Session Interruption", buf, 0x2Cu);
      }

      goto LABEL_44;
    }

LABEL_10:
    if (!v42)
    {
      if (!kHSRVScope)
      {
        goto LABEL_45;
      }

      if ((*(kHSRVScope + 8) & 1) == 0)
      {
        goto LABEL_45;
      }

      v16 = *kHSRVScope;
      if (!v16)
      {
        goto LABEL_45;
      }

      v17 = v16;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_44;
      }

      v18 = self->_clientID;
      *buf = 136315906;
      v45 = "AVHapticServer.mm";
      v46 = 1024;
      v47 = 501;
      v48 = 2080;
      v49 = "[AVHapticServerInstance fadeClientForSessionInterruption:affectHaptics:fadeTime:fadeLevel:stopAfterFade:]";
      v50 = 2048;
      v51 = v18;
      v19 = "%25s:%-5d %s: Client 0x%lx does not respond to interruptions (or was not found)";
      goto LABEL_19;
    }

    if (kHSRVScope)
    {
      v15 = *kHSRVScope;
      if (!v15)
      {
LABEL_26:
        manager = [(AVHapticServer *)self->_master manager];
        v26 = v43;
        v41[0] = v42;
        v41[1] = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ServerManager::handleSessionInterruptionForEntry(manager, v41, interruptionCopy, hapticsCopy, time, level);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        if (!fadeCopy)
        {
          goto LABEL_45;
        }

        v27 = atomic_load((v42 + 120));
        if (v27 < 2 || (v28 = atomic_load((v42 + 120)), v28 == 2))
        {
          if (kHSRVScope)
          {
            v17 = *kHSRVScope;
            if (!v17)
            {
LABEL_45:
              if (v43)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v43);
              }

              return;
            }
          }

          else
          {
            v17 = MEMORY[0x1E69E9C10];
            v32 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v33 = self->_clientID;
            *buf = 136315906;
            v45 = "AVHapticServer.mm";
            v46 = 1024;
            v47 = 496;
            v48 = 2080;
            v49 = "[AVHapticServerInstance fadeClientForSessionInterruption:affectHaptics:fadeTime:fadeLevel:stopAfterFade:]";
            v50 = 2048;
            v51 = v33;
            v19 = "%25s:%-5d %s: Client 0x%lx is stopping or is not running - noop";
            v20 = v17;
            v21 = OS_LOG_TYPE_DEFAULT;
            goto LABEL_43;
          }

LABEL_44:

          goto LABEL_45;
        }

        if (!interruptionCopy)
        {
          CAAssertRtn();
        }

        if (kHSRVScope)
        {
          if (*(kHSRVScope + 8))
          {
            v34 = *kHSRVScope;
            if (v34)
            {
              v35 = v34;
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315650;
                v45 = "AVHapticServer.mm";
                v46 = 1024;
                v47 = 490;
                v48 = 2080;
                v49 = "[AVHapticServerInstance fadeClientForSessionInterruption:affectHaptics:fadeTime:fadeLevel:stopAfterFade:]";
                _os_log_impl(&dword_1B9A08000, v35, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling doStopRunningForInterrupt (async on ACQ) due to client interruption", buf, 0x1Cu);
              }
            }
          }
        }

        v36 = self->_master;
        v39 = v42;
        v40 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        [(AVHapticServer *)v36 doStopRunningForInterrupt:&v39 audio:[(AVHapticServerInstance *)self runIncludesAudio] haptics:[(AVHapticServerInstance *)self runIncludesHaptics]];
        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        [(AVHapticServerInstance *)self notifyClientOnStopWithReason:1 error:0];
        if (!kHSRVScope)
        {
          goto LABEL_45;
        }

        if ((*(kHSRVScope + 8) & 1) == 0)
        {
          goto LABEL_45;
        }

        v37 = *kHSRVScope;
        if (!v37)
        {
          goto LABEL_45;
        }

        v17 = v37;
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_44;
        }

        v38 = self->_clientID;
        *buf = 136315906;
        v45 = "AVHapticServer.mm";
        v46 = 1024;
        v47 = 493;
        v48 = 2080;
        v49 = "[AVHapticServerInstance fadeClientForSessionInterruption:affectHaptics:fadeTime:fadeLevel:stopAfterFade:]";
        v50 = 2048;
        v51 = v38;
        v19 = "%25s:%-5d %s: Done stopping interrupted client 0x%lx";
LABEL_19:
        v20 = v17;
        v21 = OS_LOG_TYPE_DEBUG;
LABEL_43:
        _os_log_impl(&dword_1B9A08000, v20, v21, v19, buf, 0x26u);
        goto LABEL_44;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_clientID;
      v24 = "ending interruption";
      *buf = 136316930;
      v45 = "AVHapticServer.mm";
      v46 = 1024;
      if (interruptionCopy)
      {
        v24 = "being interrupted";
      }

      v47 = 485;
      v48 = 2080;
      v49 = "[AVHapticServerInstance fadeClientForSessionInterruption:affectHaptics:fadeTime:fadeLevel:stopAfterFade:]";
      v50 = 2048;
      v51 = v23;
      v52 = 2080;
      v53 = v24;
      v54 = 2048;
      timeCopy = time;
      v56 = 2048;
      levelCopy = level;
      v58 = 1024;
      v59 = hapticsCopy;
      _os_log_impl(&dword_1B9A08000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Client 0x%lx %s with fade time %.3f level %.3f. affectHaptics: %u", buf, 0x4Au);
    }

    goto LABEL_26;
  }
}

- (void)muteClientForRingerSwitch:(BOOL)switch
{
  v21 = *MEMORY[0x1E69E9840];
  master = self->_master;
  if (master)
  {
    switchCopy = switch;
    objc_msgSend_entryWithID_(master, a2, self->_clientID);
    if (v9)
    {
      [(AVHapticServer *)self->_master manager];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (kHSRVScope)
      {
        if (*(kHSRVScope + 8))
        {
          v6 = *kHSRVScope;
          if (v6)
          {
            v7 = v6;
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
            {
              v8 = *(v9 + 24);
              *buf = 136316162;
              v12 = "ServerManager.mm";
              v13 = 1024;
              v14 = 1174;
              v15 = 2080;
              v16 = "handleRingerSwitchForEntry";
              v17 = 2048;
              v18 = v8;
              v19 = 1024;
              v20 = switchCopy;
              _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client ID: 0x%lx, ringer switch: %d", buf, 0x2Cu);
            }
          }
        }
      }

      os_unfair_recursive_lock_lock_with_options();
      ClientEntry::muteAudio(v9, switchCopy, 1, 0.0);
      os_unfair_recursive_lock_unlock();
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

- (BOOL)handleClientApplicationStateChange:(id)change
{
  v23 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clientID = self->_clientID;
    v15 = 136315906;
    v16 = "AVHapticServer.mm";
    v17 = 1024;
    v18 = 458;
    v19 = 2080;
    v20 = "[AVHapticServerInstance handleClientApplicationStateChange:]";
    v21 = 2048;
    v22 = clientID;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Handling app (client) state change for client 0x%lx", &v15, 0x26u);
  }

LABEL_8:
  v8 = *MEMORY[0x1E69AFA58];
  v9 = [changeCopy objectForKey:v8];
  v10 = -[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:](self, "handleClientApplicationStateChangeUsingAppState:", [v9 unsignedIntegerValue]);
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v11 = *kHSRVScope;
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v13 = self->_clientID;
          v15 = 136315906;
          v16 = "AVHapticServer.mm";
          v17 = 1024;
          v18 = 463;
          v19 = 2080;
          v20 = "[AVHapticServerInstance handleClientApplicationStateChange:]";
          v21 = 2048;
          v22 = v13;
          _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Done handling state change for client 0x%lx", &v15, 0x26u);
        }
      }
    }
  }

  return v10;
}

- (BOOL)handleClientApplicationStateChangeUsingAppState:(unint64_t)state
{
  v77 = *MEMORY[0x1E69E9840];
  if (state == 8)
  {
    if (![(AVHapticServerInstance *)self runningInBackground])
    {
      goto LABEL_106;
    }

    [(AVHapticServerInstance *)self setRunningInBackground:0];
    master = self->_master;
    if (master)
    {
      objc_msgSend_entryWithID_(master);
      if (v70)
      {
        if (kHSRVScope)
        {
          v8 = *kHSRVScope;
          if (!v8)
          {
LABEL_100:
            manager = [(AVHapticServer *)self->_master manager];
            v42 = v71;
            v63[0] = v70;
            v63[1] = v71;
            if (v71)
            {
              atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            ServerManager::handleAppBackgroundingForEntry(manager, v63, 0);
            if (v42)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v42);
            }

            goto LABEL_104;
          }
        }

        else
        {
          v8 = MEMORY[0x1E69E9C10];
          v39 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          clientID = self->_clientID;
          *buf = 136315906;
          *&buf[4] = "AVHapticServer.mm";
          *&buf[12] = 1024;
          *&buf[14] = 425;
          v73 = 2080;
          v74 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
          v75 = 2048;
          v76 = clientID;
          _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: App for backgrounded client 0x%lx returning to foreground - unmute haptics", buf, 0x26u);
        }

        goto LABEL_100;
      }
    }

    else
    {
      v70 = 0;
      v71 = 0;
    }

LABEL_104:
    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v71);
    }

LABEL_106:
    if (![(AVHapticServerInstance *)self clientSuspended])
    {
      return 0;
    }

    if (kHSRVScope)
    {
      v43 = *kHSRVScope;
      if (!v43)
      {
        goto LABEL_114;
      }
    }

    else
    {
      v43 = MEMORY[0x1E69E9C10];
      v44 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v45 = self->_clientID;
      *buf = 136315906;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 430;
      v73 = 2080;
      v74 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
      v75 = 2048;
      v76 = v45;
      _os_log_impl(&dword_1B9A08000, v43, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: App for suspended client 0x%lx now resuming", buf, 0x26u);
    }

LABEL_114:
    [(AVHapticServerInstance *)self setClientSuspended:0];
    if (![(AVHapticServerInstance *)self wasPrewarmedAndSuspended])
    {
      goto LABEL_136;
    }

    [(AVHapticServerInstance *)self setWasPrewarmedAndSuspended:0];
    v46 = self->_master;
    if (v46)
    {
      objc_msgSend_entryWithID_(v46);
      v47 = v70;
      if (v70)
      {
        if (kHSRVScope)
        {
          if (*(kHSRVScope + 8))
          {
            v48 = *kHSRVScope;
            if (v48)
            {
              v49 = v48;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315650;
                *&buf[4] = "AVHapticServer.mm";
                *&buf[12] = 1024;
                *&buf[14] = 436;
                v73 = 2080;
                v74 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
                _os_log_impl(&dword_1B9A08000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling doPrewarm (on ACQ) due to client resume", buf, 0x1Cu);
              }

              v47 = v70;
            }
          }
        }

        v50 = self->_master;
        v61 = v47;
        v62 = v71;
        if (v71)
        {
          atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        [(AVHapticServer *)v50 doPrewarm:&v61];
        if (v62)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v62);
        }

LABEL_134:
        if (v71)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v71);
        }

LABEL_136:
        if (![(AVHapticServerInstance *)self wasRunningAndSuspended])
        {
          return 0;
        }

        if (kHSRVScope)
        {
          v53 = *kHSRVScope;
          if (!v53)
          {
LABEL_144:
            [(AVHapticServerInstance *)self setWasRunningAndSuspended:0];
            return 0;
          }
        }

        else
        {
          v53 = MEMORY[0x1E69E9C10];
          v54 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "AVHapticServer.mm";
          *&buf[12] = 1024;
          *&buf[14] = 444;
          v73 = 2080;
          v74 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
          _os_log_impl(&dword_1B9A08000, v53, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Not restarting engine after client leaves suspended state", buf, 0x1Cu);
        }

        goto LABEL_144;
      }
    }

    else
    {
      v70 = 0;
      v71 = 0;
    }

    if (kHSRVScope)
    {
      if (*(kHSRVScope + 8))
      {
        v51 = *kHSRVScope;
        if (v51)
        {
          v52 = v51;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "AVHapticServer.mm";
            *&buf[12] = 1024;
            *&buf[14] = 440;
            v73 = 2080;
            v74 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
            _os_log_impl(&dword_1B9A08000, v52, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client gone - noop", buf, 0x1Cu);
          }
        }
      }
    }

    goto LABEL_134;
  }

  stateCopy = state;
  if (state == 4)
  {
    if ([(AVHapticServerInstance *)self runningInBackground])
    {
      return 0;
    }

    if (kHSRVScope)
    {
      v6 = *kHSRVScope;
      if (!v6)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_clientID;
      *buf = 136315906;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 404;
      v73 = 2080;
      v74 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
      v75 = 2048;
      v76 = v12;
      _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: App for client 0x%lx being run in background", buf, 0x26u);
    }

LABEL_28:
    [(AVHapticServerInstance *)self setRunningInBackground:1];
    if (![(AVHapticServerInstance *)self clientSuspended])
    {
      if (kHSRVScope)
      {
        v14 = *kHSRVScope;
        if (!v14)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v14 = MEMORY[0x1E69E9C10];
        v35 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "AVHapticServer.mm";
        *&buf[12] = 1024;
        *&buf[14] = 411;
        v73 = 2080;
        v74 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
        _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: App coming from foreground - mute haptics", buf, 0x1Cu);
      }

      goto LABEL_87;
    }

    if (kHSRVScope)
    {
      v13 = *kHSRVScope;
      if (!v13)
      {
LABEL_82:
        [(AVHapticServerInstance *)self setClientSuspended:0];
LABEL_87:
        v36 = self->_master;
        if (v36)
        {
          objc_msgSend_entryWithID_(v36);
          if (*buf)
          {
            manager2 = [(AVHapticServer *)self->_master manager];
            v38 = *&buf[8];
            v64[0] = *buf;
            v64[1] = *&buf[8];
            if (*&buf[8])
            {
              atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
            }

            ServerManager::handleAppBackgroundingForEntry(manager2, v64, 1);
            if (v38)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v38);
            }
          }
        }

        else
        {
          *buf = 0;
          *&buf[8] = 0;
        }

        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        return 0;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v34 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 407;
      v73 = 2080;
      v74 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
      _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: App coming from suspended - re-mute haptics", buf, 0x1Cu);
    }

    goto LABEL_82;
  }

  if (state != 2)
  {
    if (kHSRVScope)
    {
      if (*(kHSRVScope + 8))
      {
        v9 = *kHSRVScope;
        if (v9)
        {
          v10 = v9;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = "AVHapticServer.mm";
            *&buf[12] = 1024;
            *&buf[14] = 450;
            v73 = 2080;
            v74 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
            v75 = 1024;
            LODWORD(v76) = stateCopy;
            _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: New app state %d ignored", buf, 0x22u);
          }
        }
      }
    }

    return 0;
  }

  if ([(AVHapticServerInstance *)self clientSuspended])
  {
    return 0;
  }

  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_clientID;
    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 369;
    v73 = 2080;
    v74 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
    v75 = 2048;
    v76 = v16;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: App for client 0x%lx being suspended", buf, 0x26u);
  }

LABEL_40:
  [(AVHapticServerInstance *)self setClientSuspended:1];
  v17 = self->_master;
  if (v17)
  {
    objc_msgSend_entryWithID_(v17);
  }

  else
  {
    v70 = 0;
    v71 = 0;
  }

  if ([(AVHapticServerInstance *)self runningInBackground])
  {
    [(AVHapticServerInstance *)self setRunningInBackground:0];
    if (!v70)
    {
      goto LABEL_73;
    }

    if (kHSRVScope)
    {
      if (*(kHSRVScope + 8))
      {
        v19 = *kHSRVScope;
        if (v19)
        {
          v20 = v19;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "AVHapticServer.mm";
            *&buf[12] = 1024;
            *&buf[14] = 375;
            v73 = 2080;
            v74 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
            _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: App was in background-running - unmute haptics for suspend", buf, 0x1Cu);
          }
        }
      }
    }

    manager3 = [(AVHapticServer *)self->_master manager];
    v22 = v71;
    v69[0] = v70;
    v69[1] = v71;
    if (v71)
    {
      atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ServerManager::handleAppBackgroundingForEntry(manager3, v69, 0);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

  if (!v70)
  {
LABEL_73:
    if (!kHSRVScope)
    {
      goto LABEL_160;
    }

    if ((*(kHSRVScope + 8) & 1) == 0)
    {
      goto LABEL_160;
    }

    v30 = *kHSRVScope;
    if (!v30)
    {
      goto LABEL_160;
    }

    v29 = v30;
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_159;
    }

    *buf = 136315650;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 397;
    v73 = 2080;
    v74 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
    v31 = "%25s:%-5d %s: Client gone - noop";
    v32 = v29;
    v33 = OS_LOG_TYPE_DEBUG;
LABEL_158:
    _os_log_impl(&dword_1B9A08000, v32, v33, v31, buf, 0x1Cu);
LABEL_159:

    goto LABEL_160;
  }

  if (*(v70 + 116) == 1)
  {
    [(AVHapticServerInstance *)self setWasPrewarmedAndSuspended:1];
    if (kHSRVScope)
    {
      if (*(kHSRVScope + 8))
      {
        v23 = *kHSRVScope;
        if (v23)
        {
          v24 = v23;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "AVHapticServer.mm";
            *&buf[12] = 1024;
            *&buf[14] = 382;
            v73 = 2080;
            v74 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
            _os_log_impl(&dword_1B9A08000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling doStopPrewarm (on ACQ) due to client suspend", buf, 0x1Cu);
          }
        }
      }
    }

    v25 = self->_master;
    v67 = v70;
    v68 = v71;
    if (v71)
    {
      atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(AVHapticServer *)v25 doStopPrewarm:&v67 audio:[(AVHapticServerInstance *)self prewarmIncludesAudio] haptics:[(AVHapticServerInstance *)self prewarmIncludesHaptics]];
    if (v68)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v68);
    }
  }

  v26 = atomic_load((v70 + 120));
  if (v26 >= 2)
  {
    v27 = atomic_load((v70 + 120));
    if (v27 != 2)
    {
      v57 = CALog::LogObjIfEnabled(6, kHSRVScope, v18);
      v58 = v57;
      if (v57 && os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "AVHapticServer.mm";
        *&buf[12] = 1024;
        *&buf[14] = 386;
        v73 = 2080;
        v74 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
        _os_log_impl(&dword_1B9A08000, v58, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Calling doStopRunning (on ACQ) due to client suspend", buf, 0x1Cu);
      }

      [(AVHapticServerInstance *)self setWasRunningAndSuspended:1];
      v59 = self->_master;
      v65 = v70;
      v66 = v71;
      if (v71)
      {
        atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [(AVHapticServer *)v59 doStopRunning:&v65 audio:[(AVHapticServerInstance *)self runIncludesAudio] haptics:[(AVHapticServerInstance *)self runIncludesHaptics]];
      if (v66)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
      }

      v55 = _os_feature_enabled_impl();
      [(AVHapticServerInstance *)self notifyClientOnStopWithReason:2 error:0];
      goto LABEL_161;
    }
  }

  v28 = atomic_load((v70 + 120));
  if (v28 == 2)
  {
    if (kHSRVScope)
    {
      v29 = *kHSRVScope;
      if (!v29)
      {
        goto LABEL_160;
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
      v60 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_159;
    }

    *buf = 136315650;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 393;
    v73 = 2080;
    v74 = "[AVHapticServerInstance handleClientApplicationStateChangeUsingAppState:]";
    v31 = "%25s:%-5d %s: Client already stopping when suspended - noop";
    v32 = v29;
    v33 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_158;
  }

LABEL_160:
  v55 = 0;
LABEL_161:
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  return v55;
}

- (void)handleClientRouteChange:(id)change
{
  v30 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v5 = *kHSRVScope;
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          clientID = self->_clientID;
          *buf = 136315906;
          v23 = "AVHapticServer.mm";
          v24 = 1024;
          v25 = 348;
          v26 = 2080;
          v27 = "[AVHapticServerInstance handleClientRouteChange:]";
          v28 = 2048;
          v29 = clientID;
          _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Handling client route change for client 0x%lx", buf, 0x26u);
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69AED30];
  v9 = [changeCopy objectForKey:v8];
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v10 = *kHSRVScope;
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v23 = "AVHapticServer.mm";
          v24 = 1024;
          v25 = 351;
          v26 = 2080;
          v27 = "[AVHapticServerInstance handleClientRouteChange:]";
          v28 = 2112;
          v29 = v9;
          _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: New route: %@", buf, 0x26u);
        }
      }
    }
  }

  if ([v9 isEqualToString:@"Receiver"])
  {
    v12 = 1;
  }

  else
  {
    v12 = [v9 isEqualToString:@"ReceiverAndMicrophone"];
  }

  self->_routeUsesReceiver = v12;
  v13 = [v9 isEqualToString:@"Speaker"];
  master = self->_master;
  if (master)
  {
    objc_msgSend_entryWithID_(master);
    if (v20)
    {
      manager = [(AVHapticServer *)self->_master manager];
      v19[0] = v20;
      v19[1] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ServerManager::handleRouteChangeForEntry(manager, v19, self->_routeUsesReceiver, v13 | 0x100);
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v16 = *kHSRVScope;
      if (v16)
      {
        v17 = v16;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v18 = self->_clientID;
          *buf = 136315906;
          v23 = "AVHapticServer.mm";
          v24 = 1024;
          v25 = 360;
          v26 = 2080;
          v27 = "[AVHapticServerInstance handleClientRouteChange:]";
          v28 = 2048;
          v29 = v18;
          _os_log_impl(&dword_1B9A08000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Done handling route change for client 0x%lx", buf, 0x26u);
        }
      }
    }
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

- (void)notifyClientOnStopWithReason:(int64_t)reason error:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v8 = [(AVHapticServerInstance *)self getAsyncDelegateForMethod:a2 errorHandler:&__block_literal_global_21];
  if (kHSRVScope)
  {
    v9 = *kHSRVScope;
    if (!v9)
    {
      goto LABEL_8;
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
    localizedDescription = [errorCopy localizedDescription];
    v13 = 136316162;
    v14 = "AVHapticServer.mm";
    v15 = 1024;
    v16 = 342;
    v17 = 2080;
    v18 = "[AVHapticServerInstance notifyClientOnStopWithReason:error:]";
    v19 = 1024;
    reasonCopy = reason;
    v21 = 2112;
    v22 = localizedDescription;
    _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: <Calling clientStoppedForReason:%d error:'%@' on client delegate>", &v13, 0x2Cu);
  }

LABEL_8:
  [v8 clientStoppedForReason:reason error:errorCopy];
}

void __61__AVHapticServerInstance_notifyClientOnStopWithReason_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (kHSRVScope)
  {
    v3 = *kHSRVScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v2 localizedDescription];
    v7 = 136315906;
    v8 = "AVHapticServer.mm";
    v9 = 1024;
    v10 = 340;
    v11 = 2080;
    v12 = "[AVHapticServerInstance notifyClientOnStopWithReason:error:]_block_invoke";
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to notify client of stop: %@", &v7, 0x26u);
  }

LABEL_8:
}

- (id)getSyncDelegateForMethod:(SEL)method errorHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  connection = self->_connection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__AVHapticServerInstance_getSyncDelegateForMethod_errorHandler___block_invoke;
  v11[3] = &unk_1E7ECEB68;
  v13[1] = method;
  objc_copyWeak(v13, &location);
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  return v9;
}

void __64__AVHapticServerInstance_getSyncDelegateForMethod_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (kHSRVScope)
    {
      v4 = *kHSRVScope;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    v6 = v4;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(*(a1 + 48));
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v9 = [WeakRetained clientID];
      v10 = [v3 localizedDescription];
      v11 = 136316418;
      v12 = "AVHapticServer.mm";
      v13 = 1024;
      v14 = 331;
      v15 = 2080;
      v16 = "[AVHapticServerInstance getSyncDelegateForMethod:errorHandler:]_block_invoke";
      v17 = 2112;
      v18 = v7;
      v19 = 1024;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Sync XPC call for '%@' (client ID 0x%x) failed: %@", &v11, 0x36u);
    }
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();
}

- (id)getAsyncDelegateForMethod:(SEL)method errorHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  connection = self->_connection;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__AVHapticServerInstance_getAsyncDelegateForMethod_errorHandler___block_invoke;
  v11[3] = &unk_1E7ECEB68;
  v13[1] = method;
  objc_copyWeak(v13, &location);
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v11];

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  return v9;
}

void __65__AVHapticServerInstance_getAsyncDelegateForMethod_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (kHSRVScope)
    {
      v4 = *kHSRVScope;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    v6 = v4;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(*(a1 + 48));
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v9 = [WeakRetained clientID];
      v10 = [v3 localizedDescription];
      v11 = 136316418;
      v12 = "AVHapticServer.mm";
      v13 = 1024;
      v14 = 320;
      v15 = 2080;
      v16 = "[AVHapticServerInstance getAsyncDelegateForMethod:errorHandler:]_block_invoke";
      v17 = 2112;
      v18 = v7;
      v19 = 1024;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Async XPC call for '%@' (client ID 0x%x) failed: %@", &v11, 0x36u);
    }
  }

LABEL_9:
  (*(*(a1 + 32) + 16))();
}

@end