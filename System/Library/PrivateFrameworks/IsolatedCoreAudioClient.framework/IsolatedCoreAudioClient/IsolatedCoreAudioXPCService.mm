@interface IsolatedCoreAudioXPCService
- (IsolatedCoreAudioXPCService)init;
- (IsolatedCoreAudioXPCService)initWithClientReaper:(function<void)(int;
- (id).cxx_construct;
- (id)init;
- (shared_ptr<ServerSideAudioSwitchboard>)mServerSideSwitchboard;
- (uint64_t)init;
- (void)checkInForIsolatedAudioSharedResources:(unsigned int)resources with:(id)with;
- (void)checkOutForIsolatedAudioSharedResources:(unsigned int)resources;
- (void)getWorkgroupForIsolatedAudio:(unsigned int)audio with:(id)with;
- (void)init;
- (void)setMServerSideSwitchboard:(shared_ptr<ServerSideAudioSwitchboard>)switchboard;
- (void)startIsolatedAudioForUseCase:(unsigned int)case atTime:(unint64_t)time with:(id)with;
- (void)startIsolatedAudioForUseCase:(unsigned int)case with:(id)with;
- (void)stopIsolatedAudioForUseCase:(unsigned int)case with:(id)with;
@end

@implementation IsolatedCoreAudioXPCService

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  return self;
}

- (void)setMServerSideSwitchboard:(shared_ptr<ServerSideAudioSwitchboard>)switchboard
{
  p_mServerSideSwitchboard = &self->_mServerSideSwitchboard;
  v5 = *switchboard.__ptr_;
  v4 = *(switchboard.__ptr_ + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_mServerSideSwitchboard.__cntrl_;
  p_mServerSideSwitchboard->__ptr_ = v5;
  p_mServerSideSwitchboard->__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<ServerSideAudioSwitchboard>)mServerSideSwitchboard
{
  cntrl = self->_mServerSideSwitchboard.__cntrl_;
  *v2 = self->_mServerSideSwitchboard.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)stopIsolatedAudioForUseCase:(unsigned int)case with:(id)with
{
  v10 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v7 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 136315394;
    *&v9[4] = "IsolatedCoreAudioXPCService.mm";
    *&v9[12] = 1024;
    *&v9[14] = 141;
    _os_log_impl(&dword_255576000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - Stop", v9, 0x12u);
  }

  objc_msgSend_mServerSideSwitchboard(self);
  v8 = ServerSideAudioSwitchboard::stopServerIOThread(*v9, case);
  if (*&v9[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v9[8]);
  }

  withCopy[2](withCopy, v8);
}

- (void)startIsolatedAudioForUseCase:(unsigned int)case atTime:(unint64_t)time with:(id)with
{
  v21 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v9 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "IsolatedCoreAudioXPCService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 124;
    _os_log_impl(&dword_255576000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - StartAtTime", buf, 0x12u);
  }

  objc_msgSend_mServerSideSwitchboard(self);
  ServerSideAudioSwitchboard::GetClientForIO(buf, *v18, case);
  if (buf[16] == 1)
  {
    v10 = *buf;
    v11 = *(*buf + 16);
    if (*(v11 + 64) == 1)
    {
      atomic_store(0, (v11 + 65));
      v12 = *(*v18 + 40);
      v14 = *v10;
      v13 = v10[1];
      v16 = v14;
      v17 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = (*(*v12 + 64))(v12, &v16, time);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }
    }

    else
    {
      v15 = 4;
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }
  }

  else
  {
    v15 = 4;
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  withCopy[2](withCopy, v15);
}

- (void)startIsolatedAudioForUseCase:(unsigned int)case with:(id)with
{
  v35 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v7 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "IsolatedCoreAudioXPCService.mm";
    v31 = 1024;
    v32 = 107;
    _os_log_impl(&dword_255576000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - Start", buf, 0x12u);
  }

  objc_msgSend_mServerSideSwitchboard(self);
  ServerSideAudioSwitchboard::GetClientForIO(&v26, v21, case);
  v9 = v28;
  if (v28 == 1)
  {
    v10 = v26;
    v11 = *(v26 + 16);
    if (*(v11 + 64))
    {
      atomic_store(0, (v11 + 65));
      v12 = v21[5];
      v14 = *v10;
      v13 = *(v10 + 8);
      __p = v14;
      v24 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = (*(*v12 + 56))(v12, &__p);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

LABEL_13:
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      goto LABEL_15;
    }
  }

  v8.i32[0] = bswap32(case);
  v16 = vzip1_s8(v8, v8);
  v17.i64[0] = 0x1F0000001FLL;
  v17.i64[1] = 0x1F0000001FLL;
  v18.i64[0] = 0x5F0000005FLL;
  v18.i64[1] = 0x5F0000005FLL;
  v19 = vbsl_s8(vmovn_s32(vcgtq_u32(v18, vsraq_n_s32(v17, vshlq_n_s32(vmovl_u16(v16), 0x18uLL), 0x18uLL))), v16, 0x2E002E002E002ELL);
  v25 = 4;
  LODWORD(__p) = vuzp1_s8(v19, v19).u32[0];
  BYTE4(__p) = 0;
  v20 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "ServerSideAudioSwitchboard.cpp";
    v31 = 1024;
    v32 = 55;
    v33 = 2080;
    p_p = &__p;
    _os_log_impl(&dword_255576000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ServerSideAudioSwitchboard::startServerIOThread IO not started for client %s", buf, 0x1Cu);
    if (v25 < 0)
    {
      operator delete(__p);
    }
  }

  v15 = 4;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_15:
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  withCopy[2](withCopy, v15);
}

- (void)getWorkgroupForIsolatedAudio:(unsigned int)audio with:(id)with
{
  v16 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v7 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "IsolatedCoreAudioXPCService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 88;
    _os_log_impl(&dword_255576000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - getWorkgroupForIsolatedAudio", buf, 0x12u);
  }

  objc_msgSend_mServerSideSwitchboard(self);
  ServerSideAudioSwitchboard::GetClientForIO(buf, v13, audio);
  if (buf[16])
  {
    v8 = *&buf[8];
    v9 = v13[5];
    v10 = *(*buf + 8);
    *buf = **buf;
    *&buf[8] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = (*(*v9 + 80))(v9, buf);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v12 = v11;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    IOThreadWorkgroup::IOThreadWorkgroup(buf, v12);
  }

  std::__throw_bad_optional_access[abi:ne200100]();
}

- (void)checkOutForIsolatedAudioSharedResources:(unsigned int)resources
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "IsolatedCoreAudioXPCService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 75;
    _os_log_impl(&dword_255576000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - checkOutForIsolatedAudioSharedResources", buf, 0x12u);
  }

  objc_msgSend_mServerSideSwitchboard(self);
  ServerSideAudioSwitchboard::GetClientForIO(buf, *v11, resources);
  if (buf[16] == 1)
  {
    v6 = *(*v11 + 40);
    v7 = *buf;
    v8 = *(*buf + 8);
    v9 = **buf;
    v10 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v6 + 72))(v6, &v9);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    *(*(v7 + 16) + 64) = 0;
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

- (void)checkInForIsolatedAudioSharedResources:(unsigned int)resources with:(id)with
{
  v4 = *&resources;
  v53 = *MEMORY[0x277D85DE8];
  withCopy = with;
  v7 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "IsolatedCoreAudioXPCService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 46;
    _os_log_impl(&dword_255576000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - checkInForIsolatedAudioSharedResources", buf, 0x12u);
  }

  [(IsolatedCoreAudioClientNSXPCListenerDelegate *)self setUseCaseIDForCurrentConnection:v4];
  objc_msgSend_mServerSideSwitchboard(self);
  v8 = v43[1];
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v8 <= v4)
    {
      v10 = v4 % v8;
    }
  }

  else
  {
    v10 = (v8 - 1) & v4;
  }

  v11 = *(*v43 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_19:
    (*(*v43[5] + 16))(&v45);
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v4)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= v8)
      {
        v13 %= v8;
      }
    }

    else
    {
      v13 &= v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_19;
    }
  }

  if (*(v12 + 4) != v4)
  {
    goto LABEL_18;
  }

  v9.i32[0] = bswap32(v4);
  v37 = vzip1_s8(v9, v9);
  v38.i64[0] = 0x1F0000001FLL;
  v38.i64[1] = 0x1F0000001FLL;
  v39.i64[0] = 0x5F0000005FLL;
  v39.i64[1] = 0x5F0000005FLL;
  v40 = vbsl_s8(vmovn_s32(vcgtq_u32(v39, vsraq_n_s32(v38, vshlq_n_s32(vmovl_u16(v37), 0x18uLL), 0x18uLL))), v37, 0x2E002E002E002ELL);
  HIBYTE(v48) = 4;
  LODWORD(__p) = vuzp1_s8(v40, v40).u32[0];
  BYTE4(__p) = 0;
  v41 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "ServerSideAudioSwitchboard.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 121;
    v51 = 2080;
    p_p = &__p;
    _os_log_impl(&dword_255576000, v41, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ServerSideAudioSwitchboard::addClientUseCase client %s already exists", buf, 0x1Cu);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p);
    }
  }

  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v14 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "IsolatedCoreAudioXPCService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 54;
    _os_log_impl(&dword_255576000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - checkInForIsolatedAudioSharedResources - after adding client", buf, 0x12u);
  }

  objc_msgSend_mServerSideSwitchboard(self);
  ServerSideAudioSwitchboard::GetClientForIO(buf, *v46, v4);
  if ((buf[16] & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v17 = *buf;
  v16 = *&buf[8];
  if ((*(*buf + 64) & 1) == 0)
  {
    v23 = *(*buf + 24);
    *buf = *(*buf + 16);
    *&buf[8] = v23;
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](&buf[16], v17 + 32);
    v49 = 0;
    operator new();
  }

  v15.i32[0] = bswap32(v4);
  v18 = vzip1_s8(v15, v15);
  v19.i64[0] = 0x1F0000001FLL;
  v19.i64[1] = 0x1F0000001FLL;
  v20.i64[0] = 0x5F0000005FLL;
  v20.i64[1] = 0x5F0000005FLL;
  v21 = vbsl_s8(vmovn_s32(vcgtq_u32(v20, vsraq_n_s32(v19, vshlq_n_s32(vmovl_u16(v18), 0x18uLL), 0x18uLL))), v18, 0x2E002E002E002ELL);
  HIBYTE(v48) = 4;
  LODWORD(__p) = vuzp1_s8(v21, v21).u32[0];
  BYTE4(__p) = 0;
  v22 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "ServerSideAudioSwitchboard.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 42;
    v51 = 2080;
    p_p = &__p;
    _os_log_impl(&dword_255576000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ServerSideAudioSwitchboard::registerForIO client %s is already registered for IO", buf, 0x1Cu);
    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p);
    }
  }

  v24 = *(*v46 + 40);
  v25 = *(v17 + 8);
  __p = *v17;
  *&v48 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v24 + 24))(v24, &__p);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  v26 = *(*v46 + 40);
  v27 = *(v17 + 8);
  v43 = *v17;
  v44 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v26 + 40))(v26, &v43);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (*&v46[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v46[8]);
  }

  v28 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "IsolatedCoreAudioXPCService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 56;
    _os_log_impl(&dword_255576000, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - checkInForIsolatedAudioSharedResources - after registering", buf, 0x12u);
  }

  objc_msgSend_mServerSideSwitchboard(self);
  ServerSideAudioSwitchboard::GetClientForIO(buf, *v46, v4);
  if ((buf[16] & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v29 = *&buf[8];
  v30 = *(*buf + 16);
  *(v30 + 64) = 1;
  __p = (**(v30 + 24) | (**(v30 + 8) << 32));
  v48 = *(v30 + 48);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (*&v46[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v46[8]);
  }

  v31 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "IsolatedCoreAudioXPCService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 58;
    _os_log_impl(&dword_255576000, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - checkInForIsolatedAudioSharedResources - after exporting", buf, 0x12u);
  }

  v32 = [IOThreadXPCSemaphoreTransporter semaphores:&__p];
  v33 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "IsolatedCoreAudioXPCService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 60;
    _os_log_impl(&dword_255576000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - checkInForIsolatedAudioSharedResources - after allocating semaphore transporter", buf, 0x12u);
  }

  v34 = [IOThreadXPCMappedMemoryTransporter memory:&v48];
  v35 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "IsolatedCoreAudioXPCService.mm";
    *&buf[12] = 1024;
    *&buf[14] = 62;
    _os_log_impl(&dword_255576000, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - checkInForIsolatedAudioSharedResources - after allocating memory transporter", buf, 0x12u);
  }

  withCopy[2](withCopy, v32, v34);
  v36 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *v46 = 136315394;
    *&v46[4] = "IsolatedCoreAudioXPCService.mm";
    *&v46[12] = 1024;
    *&v46[14] = 70;
    _os_log_impl(&dword_255576000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - after to reply in checkInForIsolatedAudioSharedResources", v46, 0x12u);
  }
}

- (IsolatedCoreAudioXPCService)initWithClientReaper:(function<void)(int
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [(IsolatedCoreAudioXPCService *)self init];
  if (v4)
  {
    std::__function::__value_func<void ()(int)>::__value_func[abi:ne200100](v6, a3);
    [(IsolatedCoreAudioClientNSXPCListenerDelegate *)v4 setClientReaper:v6];
    std::__function::__value_func<void ()(int)>::~__value_func[abi:ne200100](v6);
  }

  return v4;
}

- (IsolatedCoreAudioXPCService)init
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = sIsolatedCoreAudioServerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315394;
    *&buf[1] = "IsolatedCoreAudioXPCService.mm";
    v9 = 1024;
    v10 = 18;
    _os_log_impl(&dword_255576000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IsolatedCoreAudioXPCService - Normal INIT", buf, 0x12u);
  }

  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286779AB8];
  v7.receiver = self;
  v7.super_class = IsolatedCoreAudioXPCService;
  v5 = [(IsolatedCoreAudioClientNSXPCListenerDelegate *)&v7 initWithInterface:v4 andEntitlement:@"com.apple.private.isolated.audio.coreaudioclient"];

  if (v5)
  {
    operator new();
  }

  return 0;
}

- (uint64_t)init
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z35-[IsolatedCoreAudioXPCService init]E3$_0"))
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)init
{

  JUMPOUT(0x259C39250);
}

- (id)init
{
  *a2 = &unk_2867760A0;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

@end