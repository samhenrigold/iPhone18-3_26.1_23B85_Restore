void re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v24, 0, 36);
      *&v24[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::init(v24, v4, v2);
      v5 = *a1;
      *a1 = *v24;
      v6 = a1[2];
      v7 = *&v24[8];
      *v24 = v5;
      *&v24[16] = v6;
      *(a1 + 1) = v7;
      v9 = *&v24[24];
      *&v24[24] = *(a1 + 3);
      v8 = *&v24[32];
      *(a1 + 3) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = DWORD1(v9);
        v12 = v7;
        v13 = v6 + 16;
        do
        {
          if ((*(v13 - 8) & 0x80000000) != 0)
          {
            v14 = *(v13 - 16);
            v15 = *(a1 + 6);
            v16 = v14 % v15;
            v17 = *(a1 + 9);
            if (v17 == 0x7FFFFFFF)
            {
              v17 = *(a1 + 8);
              v18 = v17;
              if (v17 == v15)
              {
                re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::setCapacity(a1, (2 * v11));
                v16 = v14 % *(a1 + 6);
                v18 = *(a1 + 8);
                v12 = a1[1];
              }

              *(a1 + 8) = v18 + 1;
              v19 = a1[2];
              v20 = *(v19 + 40 * v17 + 8);
            }

            else
            {
              v19 = a1[2];
              v20 = *(v19 + 40 * v17 + 8);
              *(a1 + 9) = v20 & 0x7FFFFFFF;
            }

            *(v19 + 40 * v17 + 8) = v20 | 0x80000000;
            *(a1[2] + 40 * v17 + 8) = *(a1[2] + 40 * v17 + 8) & 0x80000000 | *(v12 + 4 * v16);
            *(a1[2] + 40 * v17) = v14;
            v21 = a1[2] + 40 * v17;
            v22 = *v13;
            *(v21 + 32) = *(v13 + 16);
            *(v21 + 16) = v22;
            v12 = a1[1];
            *(v12 + 4 * v16) = v17;
            v11 = *(a1 + 7) + 1;
            *(a1 + 7) = v11;
          }

          v13 += 40;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::deinit(v24);
    }
  }

  else
  {
    if (v2)
    {
      v23 = v2;
    }

    else
    {
      v23 = 3;
    }
  }
}

void re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_261710510, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

_anonymous_namespace_ *re::DynamicArray<re::SharedPtr<anonymous namespace::MCProtocolHandle>>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*result)
    {
      v9 = 2 * v4;
      v10 = v4 == 0;
      v11 = 8;
      if (!v10)
      {
        v11 = v9;
      }

      if (v11 <= v6)
      {
        v12 = v6;
      }

      else
      {
        v12 = v11;
      }

      result = re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(result, v12);
    }

    else
    {
      result = re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(v3, v6);
      ++*(v3 + 6);
    }
  }

  v8 = *(v3 + 2);
  *(*(v3 + 4) + 8 * v8) = *a2;
  *a2 = 0;
  *(v3 + 2) = v8 + 1;
  ++*(v3 + 6);
  return result;
}

void anonymous namespace::MCProtocolHandle::make(_anonymous_namespace_::MCProtocolHandle *this, MCPeerID *a2)
{
  v5 = a2;
  v3 = re::globalAllocators(v5);
  v4 = (*(*v3[2] + 32))(v3[2], 1800, 8);
  bzero(v4, 0x708uLL);
  re::ProtocolHandle::ProtocolHandle(v4);
  *v4 = &unk_2873F5790;
  v4[221] = 0;
  *(v4 + 1776) = 0;
  v4[223] = 250000000;
  v4[224] = 0;
  *this = v4;
  re::ObjCObject::operator=(v4 + 221, v5);
}

uint64_t *re::DynamicArray<re::SharedPtr<anonymous namespace::MCProtocolHandle>>::~DynamicArray(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[4];
    if (v3)
    {
      v4 = a1[2];
      if (v4)
      {
        v5 = 8 * v4;
        do
        {
          if (*v3)
          {

            *v3 = 0;
          }

          v3 += 8;
          v5 -= 8;
        }

        while (v5);
        v2 = *a1;
        v3 = a1[4];
      }

      (*(*v2 + 40))(v2, v3);
    }

    a1[4] = 0;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    ++*(a1 + 6);
  }

  return a1;
}

uint64_t re::MultipeerProtocolLayer::MultipeerProtocolLayer(uint64_t a1, id *a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = 0;
  *a1 = &unk_2873F56C8;
  v4 = *a2;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  re::DynamicString::setCapacity((a1 + 48), 0);
  return a1;
}

void re::MultipeerProtocolLayer::~MultipeerProtocolLayer(void **this)
{
  re::ObjCObject::operator=(this + 4, 0);
  re::ObjCObject::operator=(this + 5, 0);
  re::DynamicString::deinit((this + 6));

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 1);
}

{
  re::MultipeerProtocolLayer::~MultipeerProtocolLayer(this);

  JUMPOUT(0x266708EC0);
}

void **re::MultipeerProtocolLayer::deinit(void **this)
{
  re::ObjCObject::operator=(this + 4, 0);

  return re::ObjCObject::operator=(this + 5, 0);
}

uint64_t re::MultipeerProtocolLayer::init(id *a1)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v2 = [a1[4] myPeerID];
  objc_msgSend_makeAddressFromPeerID_(REMultipeerHelper);
  re::DynamicString::operator=((a1 + 6), &v4);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  re::ObjCObject::operator=(a1 + 5, 0);

  return 1;
}

void re::MultipeerProtocolLayer::open(id *this@<X0>, const re::Address *a2@<X1>, void *a3@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = this[5];
  v7 = [v6 handlesLock];
  [v7 lock];

  if (!v6)
  {
LABEL_27:
    *&v36 = 0;
    v34 = 0u;
    v35 = 0u;
    goto LABEL_18;
  }

  objc_msgSend_handles(v6);
  v8 = v35;
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      objc_msgSend_handles(v6);
      v10 = v23;
      if (v23 <= v9)
      {
        break;
      }

      v3 = *(v24 + 8 * v9);
      if (v3)
      {
        v11 = (v3 + 8);
      }

      objc_msgSend_makeAddressFromPeerID_(REMultipeerHelper);
      v12 = BYTE8(v34);
      if (BYTE8(v34))
      {
        v13 = v35;
      }

      else
      {
        v13 = &v34 + 9;
      }

      if (*(a2 + 1))
      {
        v14 = *(a2 + 2);
      }

      else
      {
        v14 = a2 + 9;
      }

      if (!strcmp(v13, v14))
      {
        goto LABEL_19;
      }

      if (v34 && (v12 & 1) != 0)
      {
        (*(*v34 + 40))();
      }

      ++v9;
      objc_msgSend_handles(v6);
      v15 = v35;
      if (v9 >= v15)
      {
        goto LABEL_18;
      }
    }

    v25 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v6 = MEMORY[0x277D86220];
    v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v26 = 136315906;
    v27 = "operator[]";
    v28 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v29 = 789;
    v30 = 2048;
    v31 = v9;
    v32 = 2048;
    v33 = v10;
    _os_log_send_and_compose_impl(v19, &v25, &v34, 80, &dword_26168F000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v26, 38, v20, v21);
    _os_crash_msg();
    __break(1u);
    goto LABEL_27;
  }

LABEL_18:
  v6 = [v6 handlesLock];
  [v6 unlock];

  re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Unknown new connection requested.", "!Unreachable code", "open", 414);
  _os_crash("assertion failure: (!Unreachable code) Unknown new connection requested.");
  __break(1u);
LABEL_19:
  v17 = [v6 handlesLock];
  [v17 unlock];

  *a3 = v3;
  if (v34 && (BYTE8(v34) & 1) != 0)
  {
    (*(*v34 + 40))();
  }
}

void re::MultipeerProtocolLayer::close(id *a1, unint64_t a2, int a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = a2;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    _os_log_impl(&dword_26168F000, v6, OS_LOG_TYPE_DEFAULT, "MPC: Closing peer handle=%p force=%d", buf, 0x12u);
  }

  v7 = a1[5];
  v8 = [v7 handlesLock];
  [v8 lock];

  if (!v7)
  {
    *&v45 = 0;
    memset(buf, 0, sizeof(buf));
    goto LABEL_23;
  }

  objc_msgSend_handles(v7);
  v9 = *&buf[16];
  if (v9)
  {
    v10 = 0;
    v11 = -8;
    while (1)
    {
      objc_msgSend_handles(v7);
      v12 = v32;
      if (v32 <= v10)
      {
        break;
      }

      v13 = *(v34 + 8 * v10);
      if (v13)
      {
        v14 = (v13 + 8);
        if (v13 == a2)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (!a2)
        {
LABEL_14:
          v16 = *(v13 + 1768);
          *(v13 + 1768) = 0;

          objc_msgSend_handles(v7);
          a2 = v32;
          if (v32 > v10)
          {
            v17 = v32 - 1;
            if (v32 - 1 > v10 && v11 + 8 * v32)
            {
              v18 = (v34 - v11);
              v19 = *(v34 + 8 * v10);
              v20 = v11 + 8 * v32;
              do
              {
                *(v18 - 1) = *v18;
                *v18++ = v19;
                v20 -= 8;
              }

              while (v20);
            }

            v21 = v34 + 8 * a2;
            v22 = *(v21 - 8);
            if (v22)
            {

              *(v21 - 8) = 0;
              v17 = v32 - 1;
            }

            v32 = v17;
            ++v33;
            if (v13)
            {
            }

            goto LABEL_23;
          }

LABEL_28:
          v35 = 0;
          v46 = 0u;
          v47 = 0u;
          v45 = 0u;
          memset(buf, 0, sizeof(buf));
          v27 = MEMORY[0x277D86220];
          v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v36 = 136315906;
          v37 = "removeStableAt";
          v38 = 1024;
          if (v28)
          {
            v29 = 3;
          }

          else
          {
            v29 = 2;
          }

          v39 = 969;
          v40 = 2048;
          v41 = v10;
          v42 = 2048;
          v43 = a2;
          _os_log_send_and_compose_impl(v29, &v35, buf, 80, &dword_26168F000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v30, v31);
          _os_crash_msg();
          __break(1u);
        }
      }

      ++v10;
      objc_msgSend_handles(v7);
      v15 = *&buf[16];
      v11 -= 8;
      if (v10 >= v15)
      {
        goto LABEL_23;
      }
    }

    v35 = 0;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    memset(buf, 0, sizeof(buf));
    v24 = MEMORY[0x277D86220];
    v25 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v36 = 136315906;
    v37 = "operator[]";
    v38 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v39 = 789;
    v40 = 2048;
    v41 = v10;
    v42 = 2048;
    v43 = v12;
    _os_log_send_and_compose_impl(v26, &v35, buf, 80, &dword_26168F000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v36, 38, v30, v31);
    _os_crash_msg();
    __break(1u);
    goto LABEL_28;
  }

LABEL_23:
  v23 = [v7 handlesLock];
  [v23 unlock];
}

void re::MultipeerProtocolLayer::disconnect(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 134218240;
    *&v12[4] = a2;
    v13 = 1024;
    LODWORD(v14) = a3;
    _os_log_impl(&dword_26168F000, v6, OS_LOG_TYPE_DEFAULT, "MPC: Disconnecting peer handle=%p force=%d", v12, 0x12u);
  }

  v7 = *(a1 + 40);
  v8 = [v7 handlesLock];
  [v8 lock];

  v9 = *(a2 + 1768);
  if (v9)
  {
    if (*(a1 + 24))
    {
      v10 = v9;
      objc_msgSend_makeAddressFromPeerID_(REMultipeerHelper);
      (*(**(a1 + 24) + 8))(*(a1 + 24), a1, a2, v12);

      if (*v12 && (v12[8] & 1) != 0)
      {
        (*(**v12 + 40))();
      }

      v9 = *(a2 + 1768);
    }

    *(a2 + 1768) = 0;
  }

  v11 = [v7 handlesLock];
  [v11 unlock];
}

void re::MultipeerProtocolLayer::send(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v32[1] = *MEMORY[0x277D85DE8];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v28, 6078, a1, 0, 0, 0);
  if (*(a2 + 1776) == 1 && *(a2 + 1768))
  {
    v6 = *(a1 + 32);
    v7 = *a3;
    if (*a3 != *(a3 + 1))
    {
      do
      {
        v8 = atomic_load(*(v7 + 8));
        explicit = atomic_load_explicit((*a3 + 16), memory_order_acquire);
        if (v8)
        {
          v10 = explicit + 1;
          do
          {
            if (!--v10)
            {
              break;
            }

            v11 = a3[16];
            v12 = *(v8 + 24);
            v13 = malloc_type_malloc(v12 + 9, 0x100004077774924uLL);
            *(v13 + 8) = v11;
            memcpy(v13 + 9, *(v8 + 16), *(v8 + 24));
            v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v13 length:v12 + 9];
            v15 = *(v8 + 32) == 2;
            v32[0] = *(a2 + 1768);
            v16 = MEMORY[0x277CBEA60];
            v17 = v32[0];
            v18 = [v16 arrayWithObjects:v32 count:1];
            v29 = 0;
            LOBYTE(v15) = [v6 sendData:v14 toPeers:v18 withMode:v15 error:&v29];
            v19 = v29;

            if ((v15 & 1) == 0)
            {
              v21 = *re::networkLogObjects(v20);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                v24 = v21;
                v25 = [v19 description];
                v26 = [v25 UTF8String];
                *buf = 136315138;
                v31 = v26;
                _os_log_error_impl(&dword_26168F000, v24, OS_LOG_TYPE_ERROR, "MPC: Error sending packet: %s.", buf, 0xCu);
              }

              v22 = *(a1 + 24);
              if (v22)
              {
                (*(*v22 + 16))(v22, a1, a2, 2);

                goto LABEL_15;
              }
            }

            v23 = re::PacketQueue::dequeue(*a3);
            re::PacketPool::free(v23[7], v23);
            v8 = atomic_load(*(*a3 + 8));
          }

          while (v8);
        }

        v27 = *(a3 + 1);
        v7 = *a3 + 40;
        *a3 = v7;
        ++a3[16];
      }

      while (v7 != v27);
    }

LABEL_15:
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v28);
}

void re::MultipeerProtocolLayer::update(id *this)
{
  v43 = *MEMORY[0x277D85DE8];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v33, 6022, this, 0, 0, 0);
  v2 = this[5];
  v3 = this[4];
  v4 = [v2 handlesLock];
  [v4 lock];

  v28 = v2;
  if (v2)
  {
    objc_msgSend_handles(v2);
    if (v31)
    {
      v5 = v32;
      v6 = 8 * v31;
      v29 = v3;
      do
      {
        v7 = *v5;
        if (*v5)
        {
          v8 = (v7 + 8);
        }

        if (*(v7 + 1768))
        {
          v9 = v3;
          if ((*(v7 + 1776) & 1) == 0)
          {
            v10.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
            if (v10.__d_.__rep_ >= *(v7 + 1792))
            {
              rep = v10.__d_.__rep_;
              qmemcpy(v42, "com.apple.rekit.hello", sizeof(v42));
              v12 = v9;
              v41 = -1;
              v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&v40 length:30 freeWhenDone:0];
              v39 = *(v7 + 1768);
              v14 = MEMORY[0x277CBEA60];
              v15 = v39;
              v16 = [v14 arrayWithObjects:&v39 count:1];
              v34 = 0;
              v17 = [v12 sendData:v13 toPeers:v16 withMode:0 error:&v34];

              v18 = v34;
              if ((v17 & 1) == 0)
              {
                v20 = *re::networkLogObjects(v19);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  log = v20;
                  v22 = [v18 description];
                  v23 = [v22 UTF8String];
                  v24 = [v18 description];
                  v25 = [v24 UTF8String];
                  *buf = 136315394;
                  v36 = v23;
                  v37 = 2080;
                  v38 = v25;
                  _os_log_error_impl(&dword_26168F000, log, OS_LOG_TYPE_ERROR, "MPC: Error sending handshake: %s, reason: %s", buf, 0x16u);
                }
              }

              v21 = 2 * *(v7 + 1784);
              if (v21 >= 8000000000)
              {
                v21 = 8000000000;
              }

              *(v7 + 1784) = v21;
              *(v7 + 1792) = v21 + rep;
              v3 = v29;
            }
          }
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
    }
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

  v26 = [v28 handlesLock];
  [v26 unlock];

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v33);
}

void re::MultipeerProtocolLayer::wait(re::MultipeerProtocolLayer *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not implemented", "!Unreachable code", "wait", 516);
  _os_crash("assertion failure: (!Unreachable code) Not implemented");
  __break(1u);
}

void re::MultipeerProtocolLayer::wakeup(re::MultipeerProtocolLayer *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not implemented", "!Unreachable code", "wakeup", 521);
  _os_crash("assertion failure: (!Unreachable code) Not implemented");
  __break(1u);
}

void re::MultipeerProtocolLayer::setListener(re::MultipeerProtocolLayer *this, ProtocolLayerListener *a2)
{
  if (a2)
  {
    *(this + 3) = a2;
    v3 = [[MCSessionHandler alloc] initWithSession:*(this + 4) protocolLayer:this];
    re::ObjCObject::operator=(this + 5, v3);
  }
}

uint64_t re::MultipeerProtocolLayer::localAddresses(re::MultipeerProtocolLayer *this, re::Address *a2, uint64_t a3)
{
  if (a3)
  {
    re::DynamicString::operator=(a2, (this + 48));
  }

  return 1;
}

void anonymous namespace::MCProtocolHandle::~MCProtocolHandle(id *this)
{
  *this = &unk_2873F5790;

  re::ProtocolHandle::~ProtocolHandle(this);
}

{
  *this = &unk_2873F5790;

  re::ProtocolHandle::~ProtocolHandle(this);

  JUMPOUT(0x266708EC0);
}

BOOL anonymous namespace::readSignatureUnsafe(_anonymous_namespace_ *this, char *a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  if ((a2 - 9) >= 0x40)
  {
    v5 = 64;
  }

  else
  {
    v5 = (a2 - 9);
  }

  MurmurHash3_x64_128(this + 9, v5, 0, v9);
  v6 = (v9[1] + (v9[0] << 6) + (v9[0] >> 2) - 0x61C8864680B583E9) ^ v9[0];
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ 0x149153915)) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ 0x149153915)) >> 27));
  return *this == (((v7 ^ (v7 >> 31)) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6);
}

unint64_t *anonymous namespace::writeSignatureUnsafe(unint64_t *this, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = this;
  v9[2] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a4 >= 0x40)
    {
      v6 = 64;
    }

    else
    {
      v6 = a4;
    }

    this = MurmurHash3_x64_128(a3, v6, 0, v9);
    v7 = (v9[1] - 0x61C8864680B583E9 + (v9[0] << 6) + (v9[0] >> 2)) ^ v9[0];
  }

  else
  {
    v7 = 0;
  }

  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ 0x149153915)) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ 0x149153915)) >> 27));
  *v5 = ((v8 ^ (v8 >> 31)) - 0x61C8864680B583E9 + (v7 << 6) + (v7 >> 2)) ^ v7;
  return this;
}

void re::DynamicArray<re::SharedPtr<anonymous namespace::MCProtocolHandle>>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity(a1, *(a2 + 16));
    v14 = *(a2 + 32);
    v15 = a1[2];
    v16 = a1[4];
    if (v15)
    {
      v17 = 8 * v15;
      do
      {
        v18 = *v14;
        v19 = *v16;
        if (*v16 != *v14)
        {
          if (v18)
          {
            v20 = (v18 + 8);
            v19 = *v16;
          }

          if (v19)
          {
          }

          *v16 = v18;
        }

        ++v14;
        ++v16;
        v17 -= 8;
      }

      while (v17);
      v16 = a1[4];
      v15 = a1[2];
      v14 = *(a2 + 32);
    }

    if (v15 != v4)
    {
      v21 = &v14[v15];
      v22 = &v16[v15];
      v23 = 8 * v4 - 8 * v15;
      do
      {
        v24 = *v21;
        *v22 = *v21;
        if (v24)
        {
          v25 = (v24 + 8);
        }

        ++v21;
        ++v22;
        v23 -= 8;
      }

      while (v23);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 8 * v4;
      do
      {
        v9 = *v7;
        v10 = *v6;
        if (*v6 != *v7)
        {
          if (v9)
          {
            v11 = (v9 + 8);
            v10 = *v6;
          }

          if (v10)
          {
          }

          *v6 = v9;
        }

        ++v7;
        ++v6;
        v8 -= 8;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v12 = &v6[v4];
      v13 = 8 * v5 - 8 * v4;
      do
      {
        if (*v12)
        {

          *v12 = 0;
        }

        ++v12;
        v13 -= 8;
      }

      while (v13);
    }
  }

  a1[2] = v4;
}

void re::TransportCommandsQueued::~TransportCommandsQueued(re::TransportCommandsQueued *this)
{
  *this = &unk_2873F57D8;
  for (i = 64; i != -32; i -= 48)
  {
    re::Queue<re::Function<void ()(void)>>::deinit((this + i));
  }
}

{
  *this = &unk_2873F57D8;
  for (i = 64; i != -32; i -= 48)
  {
    re::Queue<re::Function<void ()(void)>>::deinit((this + i));
  }

  JUMPOUT(0x266708EC0);
}

void re::TransportCommandsQueued::async(uint64_t result, uint64_t a2)
{
  if ((*(result + 120) & 1) == 0)
  {
    re::network::EventQueue<re::Function<void ()(void)>>::push((result + 8), a2);
  }
}

void re::network::EventQueue<re::Function<void ()(void)>>::push(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 26);
  re::Queue<re::Function<void ()(void)>>::enqueue(&a1[12 * a1[1]._os_unfair_lock_opaque + 2], a2);

  os_unfair_lock_unlock(a1 + 26);
}

uint64_t (***re::TransportCommandsQueued::update(re::TransportCommandsQueued *this))(void)
{
  os_unfair_lock_lock(this + 28);
  *(this + 1) = vrev64_s32(*(this + 8));
  os_unfair_lock_unlock(this + 28);
  v2 = *(this + 2);
  v3 = (this + 48 * v2 + 16);
  v4 = v3[2];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = *(v3[5] + 40 * ((i + v3[3]) % v3[1]) + 32);
      (*(*v6 + 16))(v6);
    }

    v2 = *(this + 2);
  }

  return re::Queue<re::Function<void ()(void)>>::clear(this + 6 * v2 + 2);
}

uint64_t (***re::Queue<re::Function<void ()(void)>>::clear(uint64_t (***result)(void)))(void)
{
  v1 = result;
  if (result[2])
  {
    v2 = 0;
    do
    {
      result = re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v1[5][5 * ((v1[3] + v2++) % v1[1])]);
    }

    while (v2 < v1[2]);
  }

  v1[2] = 0;
  ++*(v1 + 8);
  return result;
}

void re::TransportCommandsThreadedProtocol::TransportCommandsThreadedProtocol(re::TransportCommandsThreadedProtocol *this, re::ProtocolLayer *a2)
{
  *this = &unk_2873F5810;
  *(this + 1) = a2;
  if (a2)
  {
    v3 = a2 + 8;
  }

  *(this + 2) = 0x100000000;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 92) = 0u;
  *(this + 17) = 0;
  atomic_store(1u, this + 128);
  operator new();
}

void re::TransportCommandsThreadedProtocol::threadLoop(re::TransportCommandsThreadedProtocol *this)
{
  v2 = this + 24;
  while (1)
  {
    os_unfair_lock_lock(this + 30);
    *(this + 2) = vrev64_s32(*(this + 16));
    os_unfair_lock_unlock(this + 30);
    v3 = *(this + 4);
    v4 = &v2[48 * v3];
    v5 = *(v4 + 2);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = *(*(v4 + 5) + 40 * ((i + *(v4 + 3)) % *(v4 + 1)) + 32);
        (*(*v7 + 16))(v7);
      }

      v3 = *(this + 4);
    }

    re::Queue<re::Function<void ()(void)>>::clear(&v2[48 * v3]);
    v8 = atomic_load(this + 128);
    if ((v8 & 1) == 0)
    {
      break;
    }

    (*(**(this + 1) + 96))(*(this + 1));
  }

  os_unfair_lock_lock(this + 30);
  *(this + 2) = vrev64_s32(*(this + 16));
  os_unfair_lock_unlock(this + 30);
  v9 = &v2[48 * *(this + 4)];
  v10 = *(v9 + 2);
  if (v10)
  {
    for (j = 0; j != v10; ++j)
    {
      v12 = *(*(v9 + 5) + 40 * ((j + *(v9 + 3)) % *(v9 + 1)) + 32);
      (*(*v12 + 16))(v12);
    }

    v13 = &v2[48 * *(this + 4)];

    re::Queue<re::Function<void ()(void)>>::clear(v13);
  }
}

void re::TransportCommandsThreadedProtocol::~TransportCommandsThreadedProtocol(std::thread *this)
{
  this->__t_ = &unk_2873F5810;
  std::thread::~thread(this + 17);
  for (i = 9; i != -3; i -= 6)
  {
    re::Queue<re::Function<void ()(void)>>::deinit(&this[i]);
  }

  t = this[1].__t_;
  if (t)
  {

    this[1].__t_ = 0;
  }
}

{
  re::TransportCommandsThreadedProtocol::~TransportCommandsThreadedProtocol(this);

  JUMPOUT(0x266708EC0);
}

void re::TransportCommandsThreadedProtocol::async(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 128));
  if (v2)
  {
    re::network::EventQueue<re::Function<void ()(void)>>::push((a1 + 16), a2);
  }
}

void re::TransportCommandsThreadedProtocol::finish(re::TransportCommandsThreadedProtocol *this)
{
  atomic_store(0, this + 128);
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 104))(v2);
  }

  std::thread::join(this + 17);
  v3 = *(this + 1);
  if (v3)
  {

    *(this + 1) = 0;
  }
}

uint64_t re::TransportCommandsThreadedProtocol::update(re::TransportCommandsThreadedProtocol *this)
{
  result = *(this + 1);
  if (result)
  {
    return (*(*result + 104))();
  }

  return result;
}

re::TransportCommandsDispatch *re::TransportCommandsDispatch::TransportCommandsDispatch(re::TransportCommandsDispatch *this)
{
  *this = &unk_2873F5848;
  *(this + 8) = 0;
  *(this + 2) = 0;
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_attr_make_with_qos_class(v2, QOS_CLASS_USER_INTERACTIVE, 0);
  v4 = dispatch_queue_create("com.apple.re.networking.network", v3);
  v5 = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v6 = *(this + 2);
  *(this + 2) = v5;
  if (v6)
  {
    dispatch_release(v6);
  }

  dispatch_release(v5);
  return this;
}

void re::TransportCommandsDispatch::async(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    v5 = re::globalAllocators(a1);
    v6 = (*(*v5[2] + 32))(v5[2], 40, 8);
    v6[3] = *(a2 + 24);
    v6[4] = 0;
    re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v6, a2);
    v7 = *(a1 + 16);

    dispatch_async_f(v7, v6, re::TransportCommandsDispatch::async(re::Function<void ()(void)> &&)::$_0::__invoke);
  }
}

void re::TransportCommandsDispatch::finish(re::TransportCommandsDispatch *this)
{
  *(this + 8) = 1;
  dispatch_async_and_wait(*(this + 2), &__block_literal_global_1);
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {

    dispatch_release(v2);
  }
}

void re::TransportCommandsDispatch::~TransportCommandsDispatch(re::TransportCommandsDispatch *this)
{
  *this = &unk_2873F5848;
  v1 = *(this + 2);
  if (v1)
  {
    dispatch_release(v1);
  }
}

{
  *this = &unk_2873F5848;
  v1 = *(this + 2);
  if (v1)
  {
    dispatch_release(v1);
  }

  JUMPOUT(0x266708EC0);
}

double re::Queue<re::Function<void ()(void)>>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[5];
    if (v3)
    {
      if (a1[2])
      {
        v4 = 0;
        do
        {
          re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1[5] + 40 * ((v4 + a1[3]) % a1[1]));
          ++v4;
        }

        while (v4 != a1[2]);
        v2 = *a1;
        v3 = a1[5];
      }

      (*(*v2 + 40))(v2, v3);
    }

    a1[5] = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(void)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

uint64_t re::TransportCommandsDispatch::async(re::Function<void ()(void)> &&)::$_0::__invoke(uint64_t a1)
{
  v2 = (*(**(a1 + 32) + 16))(*(a1 + 32));
  v3 = re::globalAllocators(v2)[2];
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1);
  v4 = *(*v3 + 40);

  return v4(v3, a1);
}

uint64_t re::Queue<re::Function<void ()(void)>>::enqueue(_anonymous_namespace_ *this, uint64_t a2)
{
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v4 + 1 >= v5)
  {
    re::Queue<re::Function<void ()(void)>>::growCapacity(this, v4 + 1);
    v5 = *(this + 1);
    v4 = *(this + 2);
  }

  v6 = *(this + 5) + 40 * ((*(this + 3) + v4) % v5);
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 32) = 0;
  result = re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v6, a2);
  ++*(this + 2);
  ++*(this + 8);
  return result;
}

_anonymous_namespace_ *re::Queue<re::Function<void ()(void)>>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::Queue<re::Function<void ()(void)>>::setCapacity(this, a2);
    }

    else
    {
      this = re::Queue<re::Function<void ()(void)>>::setCapacity(v4, v3);
      *(v4 + 2) = 0;
      *(v4 + 3) = 0;
      *(v4 + 8) = 0;
    }
  }

  return this;
}

void *re::Queue<re::Function<void ()(void)>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    v6 = result + 2;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::Queue<re::Function<void ()(void)>>::setCapacity(v5, a2);
        *v6 = 0;
        v6[1] = 0;
        *(v6 + 4) = 0;
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v8 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 440, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in Queue<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 444, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) Queue<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
        __break(1u);
        return result;
      }

      v8 = 0;
      if (!v3)
      {
LABEL_18:
        v5[5] = v8;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      if (v5[2])
      {
        v9 = 0;
        v10 = v5[3];
        do
        {
          v11 = v5[5] + 40 * ((v9 + v5[3]) % v5[1]);
          v12 = &v8[5 * v10];
          *(v12 + 24) = *(v11 + 24);
          *(v12 + 32) = 0;
          re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v12, v11);
          re::FunctionBase<24ul,void ()(void)>::destroyCallable(v11);
          if (v10 + 1 < a2)
          {
            ++v10;
          }

          else
          {
            v10 = 0;
          }

          ++v9;
        }

        while (v9 != v5[2]);
      }

      result = (*(**v5 + 40))(*v5, v5[5]);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (re::TransportCommandsThreadedProtocol::*)(void),re::TransportCommandsThreadedProtocol*>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = a1[2];
  v5 = a1[1];
  v6 = (a1[3] + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v5(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (re::TransportCommandsThreadedProtocol::*)(void),re::TransportCommandsThreadedProtocol*>>::~unique_ptr[abi:nn200100](&v8);
  return 0;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (re::TransportCommandsThreadedProtocol::*)(void),re::TransportCommandsThreadedProtocol*>>::~unique_ptr[abi:nn200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x266708EC0](v3, 0xA0C40F20CD8FBLL);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x266708D30]();
    MEMORY[0x266708EC0](v3, 0x20C4093837F09);
  }

  return a1;
}

re::SyncObject *re::SyncObject::SyncObject(re::SyncObject *this, re::Allocator *a2, uint64_t a3, re::Allocator *a4, unint64_t a5)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *v10 = &unk_2873F58F8;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0;
  *(v10 + 104) = v10;
  *(v10 + 136) = 0;
  *(v10 + 144) = 0;
  *(v10 + 152) = 0;
  *(v10 + 160) = 0;
  *(v10 + 168) = 0x10000;
  *(v10 + 112) = 0;
  *(v10 + 120) = 0;
  *(v10 + 128) = 0;
  *(v10 + 176) = 0;
  *(v10 + 216) = 0;
  *(v10 + 184) = 0;
  *(v10 + 192) = 0;
  *(v10 + 208) = 0;
  *(v10 + 200) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  re::FixedArray<re::SyncObjectState>::init<>(v10 + 40, a4, a5);
  return this;
}

void re::SyncObject::~SyncObject(const void **this)
{
  *this = &unk_2873F58F8;
  re::SyncObject::unbindFromParent(this);
  v2 = this[25];
  if (v2)
  {
    v3 = this[27];
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      *(v5 + 80) = 0;
      v4 -= 8;
    }

    while (v4);
  }

  v6 = this[14];
  this[25] = 0;
  ++*(this + 52);
  if (v6)
  {
    v7 = this[15];
    if (v7)
    {
      v7[2]();
    }
  }

  _Block_release(this[15]);
  this[14] = 0;
  this[15] = 0;
  v8 = this[23];
  if (v8)
  {
    if (this[27])
    {
      (*(*v8 + 40))(v8);
    }

    this[27] = 0;
    this[24] = 0;
    this[25] = 0;
    this[23] = 0;
    ++*(this + 52);
  }

  v10 = this + 12;
  v9 = this[12];
  if (v9)
  {
    re::SyncView::removeObject(v9, (this + 12));
    if (*v10)
    {

      *v10 = 0;
    }
  }

  this[8] = 0;
  this[9] = 0;
  re::FixedArray<re::SyncObjectState>::deinit(this + 5);
  re::FixedArray<re::SyncObjectState>::deinit(this + 5);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 1);
}

{
  re::SyncObject::~SyncObject(this);

  JUMPOUT(0x266708EC0);
}

void *re::SyncObject::unbindFromParent(void *this)
{
  v1 = this[10];
  if (v1)
  {
    this[10] = 0;
    v2 = v1[25];
    if (v2)
    {
      v3 = 0;
      while (*(v1[27] + 8 * v3) != this)
      {
        if (v2 == ++v3)
        {
          return this;
        }
      }

      return re::DynamicArray<re::Allocator const*>::removeStableAt(v1 + 23, v3);
    }
  }

  return this;
}

unint64_t re::SyncObject::latestStateHandle(re::SyncObject *this)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(this + 9);
  if (*(this + 8) == v1)
  {
    return -1;
  }

  v3 = *(this + 6);
  v4 = (v3 - 1) & (v1 - 1);
  if (v3 <= v4)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x277D86220];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 476;
    v14 = 2048;
    v15 = v4;
    v16 = 2048;
    v17 = v3;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_26168F000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return (v3 - 1) & (v1 - 1) | (*(*(this + 7) + 96 * ((v3 - 1) & (v1 - 1)) + 80) << 32);
}

uint64_t re::SyncObject::addState(re::SyncObject *this, __int16 a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  v4 = v3 - *(this + 8);
  v5 = *(this + 6);
  v6 = v3 + 1;
  if (v4 == v5)
  {
    *(this + 8) = v6 - v4;
  }

  *(this + 9) = v6;
  v7 = (v5 - 1) & v3;
  if (v5 <= v7)
  {
    v12 = 0;
    memset(v21, 0, sizeof(v21));
    v9 = MEMORY[0x277D86220];
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 468;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = v5;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_26168F000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  result = *(this + 7) + 96 * v7;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 84) = a2;
  *(result + 88) = a3;
  ++*(result + 80);
  return result;
}

BOOL re::SyncObject::takeOverLatestState(re::SyncObject *this)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(this + 8);
  v3 = *(this + 9);
  if (v3 != v2)
  {
    v4 = *(this + 6);
    v5 = v4 - 1;
    v6 = (v4 - 1) & (v3 - 1);
    if (v4 <= v6)
    {
      v20 = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      v14 = MEMORY[0x277D86220];
      v21 = 136315906;
      v22 = "operator[]";
      v23 = 1024;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      v24 = 468;
      v25 = 2048;
      v26 = (v4 - 1) & (v3 - 1);
      v27 = 2048;
      v28 = v4;
      _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_26168F000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v7 = v3 + 1;
      if (v3 - v2 == v4)
      {
        *(this + 8) = v7 - v4;
      }

      v8 = *(this + 7);
      *(this + 9) = v7;
      v1 = v5 & v3;
      if (v4 > (v5 & v3))
      {
        v9 = v8 + 96 * v6;
        v10 = *(v9 + 8);
        v11 = v8 + 96 * v1;
        *(v11 + 24) = *(v9 + 24);
        *(v11 + 8) = v10;
        re::DynamicArray<unsigned char>::operator=(v11 + 40, (v9 + 40));
        v12 = *(v9 + 80);
        *(v11 + 80) = v12;
        *(v11 + 88) = 0;
        *(v11 + 84) = 0;
        *(v11 + 80) = v12 + 1;
        return v3 != v2;
      }
    }

    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v16 = MEMORY[0x277D86220];
    v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v24 = 468;
    v25 = 2048;
    v26 = v1;
    v27 = 2048;
    v28 = v4;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_26168F000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  return v3 != v2;
}

uint64_t re::SyncObject::findBaseline(re::SyncObject *this, int a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  v4 = *(this + 8) - v3;
  if (!v4)
  {
    return 0;
  }

  v5 = *(this + 6);
  v6 = v5 - 1;
  for (i = v3 - 1; ; --i)
  {
    v8 = i & v6;
    if (v5 <= (i & v6))
    {
      v15 = 0;
      memset(v24, 0, sizeof(v24));
      v12 = MEMORY[0x277D86220];
      v16 = 136315906;
      v17 = "operator[]";
      v18 = 1024;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      v19 = 476;
      v20 = 2048;
      v21 = v8;
      v22 = 2048;
      v23 = v5;
      _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_26168F000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
      _os_crash_msg();
      __break(1u);
    }

    v9 = *(this + 7) + 96 * v8;
    if (*(v9 + 84) == a2 && *(v9 + 88) == a3)
    {
      break;
    }

    if (__CFADD__(v4++, 1))
    {
      return 0;
    }
  }

  return v9;
}

__n128 re::SyncObject::bindWithParent(re::SyncObject *this, re::SyncObject *a2)
{
  if (*(this + 10) != a2)
  {
    v12[3] = v2;
    v12[4] = v3;
    *(this + 10) = a2;
    v6 = this + 8;
    v12[0] = this;
    re::DynamicArray<re::Allocator const*>::add((a2 + 184), v12);

    v7 = *(this + 10);
    v8 = this;
    if (v7)
    {
      v9 = this;
      do
      {
        v8 = v9;
        v9 = v7;
        if (*(*(*(v8 + 11) + 16) + 73))
        {
          break;
        }

        v7 = *(v7 + 10);
        v8 = v9;
      }

      while (v7);
    }

    result = *(v8 + 136);
    v11 = *(v8 + 152);
    *(this + 42) = *(v8 + 42);
    *(this + 152) = v11;
    *(this + 136) = result;
  }

  return result;
}

uint64_t re::SyncObject::getLatestState(re::SyncObject *this)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(this + 9);
  if (*(this + 8) == v1)
  {
    return 0;
  }

  v3 = *(this + 6);
  v4 = (v3 - 1) & (v1 - 1);
  if (v3 <= v4)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x277D86220];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 476;
    v13 = 2048;
    v14 = v4;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_26168F000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 7) + 96 * v4;
}

uint64_t re::SyncObject::getOldestState(re::SyncObject *this)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(this + 8);
  if (v1 == *(this + 9))
  {
    return 0;
  }

  v3 = *(this + 6);
  v4 = (v3 - 1) & v1;
  if (v3 <= v4)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x277D86220];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 476;
    v13 = 2048;
    v14 = v4;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_26168F000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 7) + 96 * v4;
}

uint64_t re::SyncObject::getState(re::SyncObject *this, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(this + 6);
  if (v2 <= a2)
  {
    return 0;
  }

  v3 = *(this + 8);
  v4 = *(this + 9);
  v5 = v4 - v3;
  if (v4 == v3)
  {
    return 0;
  }

  v7 = *(this + 7);
  v8 = v7 + 96 * a2;
  if (v5 < v2)
  {
    v9 = v3 & (v2 - 1);
    if (v2 <= v9)
    {
      v23 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      v13 = MEMORY[0x277D86220];
      v14 = v2;
      v15 = v9;
      v24 = 136315906;
      v25 = "operator[]";
      v26 = 1024;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      v27 = 476;
      v28 = 2048;
      v29 = v15;
      v30 = 2048;
      v31 = v14;
      _os_log_send_and_compose_impl(v16, &v23, &v32, 80, &dword_26168F000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v10 = (v4 - 1) & (v2 - 1);
      if (v2 > v10)
      {
        v11 = v7 + 96 * v9;
        if (v9 > v10)
        {
          v12 = -v2;
        }

        else
        {
          v12 = 0;
        }

        if (-1431655765 * ((v8 - (v11 + 96 * v12)) >> 5) >= v5)
        {
          return 0;
        }

        goto LABEL_12;
      }
    }

    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v17 = MEMORY[0x277D86220];
    v18 = v2;
    v19 = v10;
    v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (v20)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    v27 = 476;
    v28 = 2048;
    v29 = v19;
    v30 = 2048;
    v31 = v18;
    _os_log_send_and_compose_impl(v21, &v23, &v32, 80, &dword_26168F000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
    _os_crash_msg();
    __break(1u);
  }

LABEL_12:
  if (*(v8 + 80) == HIDWORD(a2))
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::SyncObject::fromPeerID(re::SyncObject *this)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(this + 9);
  if (*(this + 8) == v1)
  {
    return 0;
  }

  v3 = *(this + 6);
  v4 = (v3 - 1) & (v1 - 1);
  if (v3 <= v4)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x277D86220];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 476;
    v13 = 2048;
    v14 = v4;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_26168F000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 7) + 96 * v4 + 88);
}

uint64_t re::SyncObject::handOff(re::SyncObject *this, uint64_t a2)
{
  v2 = *(this + 10);
  v3 = this;
  if (v2)
  {
    v4 = this;
    do
    {
      v3 = v4;
      v4 = v2;
      if (*(*(*(v3 + 11) + 16) + 73))
      {
        break;
      }

      v2 = *(v2 + 10);
      v3 = v4;
    }

    while (v2);
  }

  if (*(v3 + 20) || !*(this + 20) && *(this + 17))
  {
    return 0;
  }

  v6 = *(this + 84) + 1;
  *(this + 17) = a2;
  *(this + 72) = v6;
  return 1;
}

BOOL re::SyncObject::isStateDataChanged(re::SyncObject *this, unsigned int a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(this + 9);
  v4 = *(this + 8) - v3;
  v5 = v3 - 1;
  while (v4)
  {
    v6 = *(this + 6);
    v7 = (v6 - 1) & v5;
    if (v6 <= v7)
    {
      v14 = 0;
      memset(v23, 0, sizeof(v23));
      v11 = MEMORY[0x277D86220];
      v15 = 136315906;
      v16 = "operator[]";
      v17 = 1024;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v18 = 476;
      v19 = 2048;
      v20 = v7;
      v21 = 2048;
      v22 = v6;
      _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_26168F000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
      _os_crash_msg();
      __break(1u);
    }

    v8 = *(this + 7) + 96 * v7;
    ++v4;
    --v5;
    if (*(v8 + 88) == a3)
    {
      v9 = *(v8 + 84);
      if (v9 >= a2 && v9 - a2 < 0x8000)
      {
        return 0;
      }

      if (v9 < a2)
      {
        return a2 - v9 < 0x8000;
      }

      return 1;
    }
  }

  return 1;
}

BOOL re::SyncObject::shouldAcceptUpdate(re::SyncObject *this, uint64_t a2, unsigned int a3)
{
  v3 = *(this + 10);
  if (v3)
  {
    do
    {
      v4 = this;
      this = v3;
      if (*(*(*(v4 + 11) + 16) + 73))
      {
        break;
      }

      v3 = *(v3 + 10);
      v4 = this;
    }

    while (v3);
  }

  else
  {
    v4 = this;
  }

  v5 = *(v4 + 20);
  v6 = *(v4 + 84);
  if (v5 == a2)
  {
    if (v6 > a3 || a3 - v6 >= 0x8000)
    {
      return v6 > a3 && ((v6 - a3) & 0xFFFF8000) != 0;
    }

    else
    {
      return 1;
    }
  }

  else if (v6 < a3 || v6 - a3 >= 0x8000)
  {
    return v6 >= a3 || a3 - v6 < 0x8000;
  }

  else
  {
    return 0;
  }
}

void re::SyncObject::setViewDirectly(re::SyncObject *this, re::SyncView *a2)
{
  if (!a2 || (*(this + 128) & 4) == 0)
  {
    v3 = (this + 96);
    v2 = *(this + 12);
    if (v2 != a2)
    {
      if (a2)
      {
        re::SyncView::transferObject(a2, v3);
      }

      else
      {
        re::SyncView::removeObject(v2, v3);
      }
    }
  }
}

void *re::SyncObject::setUserData(uint64_t a1, uint64_t a2, const void *a3)
{
  if (*(a1 + 112))
  {
    v6 = *(a1 + 120);
    if (v6)
    {
      (*(v6 + 16))();
    }
  }

  _Block_release(*(a1 + 120));
  *(a1 + 112) = a2;
  result = _Block_copy(a3);
  *(a1 + 120) = result;
  return result;
}

void *re::FixedArray<re::SyncObjectState>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 96 * v2;
      v5 = result[2] + 40;
      do
      {
        re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v5);
        v5 += 96;
        v4 -= 96;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t re::FixedArray<re::SyncObjectState>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x2AAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 96, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v8, v9);
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 96 * a3, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_10:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    v7 = result;
    do
    {
      *(result + 40) = 0uLL;
      *(result + 56) = 0uLL;
      *(result + 72) = 0uLL;
      *(result + 24) = 0uLL;
      *(result + 8) = 0uLL;
      *result = &unk_2873F59F8;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0;
      *(result + 64) = 0;
      *(result + 84) = 0;
      *(result + 88) = 0;
      result += 96;
      v7 += 96;
      --v6;
    }

    while (v6);
  }

  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  *(result + 24) = 0u;
  *(result + 8) = 0u;
  *result = &unk_2873F59F8;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 84) = 0;
  *(result + 88) = 0;
  return result;
}

double RESyncCreateSyncObjectReadContext(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 80, 8);
  result = 0.0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 68) = 0x7FFFFFFF;
  return result;
}

re *RESyncDestroySyncObjectReadContext(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    v3.n128_f64[0] = re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v1 + 4);
    v4 = *(*v2 + 40);

    return v4(v2, v1, v3);
  }

  return result;
}

uint64_t RESyncCreateSyncObjectReadContextNoAlloc(uint64_t result, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    v2 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v3 = 136315394;
    v4 = "RESyncCreateSyncObjectReadContextNoAlloc";
    v5 = 2080;
    v6 = "bytes != __null";
LABEL_10:
    _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
    return 0;
  }

  if (a2 <= 0x4F)
  {
    v2 = *re::networkLogObjects(result);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v3 = 136315394;
    v4 = "RESyncCreateSyncObjectReadContextNoAlloc";
    v5 = 2080;
    v6 = "size >= sizeof(SyncObjectReadContext)";
    goto LABEL_10;
  }

  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *(result + 68) = 0x7FFFFFFF;
  return result;
}

void RESyncDestroySyncObjectReadContextNoDealloc(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = (a1 + 32);

    re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v1);
  }

  else
  {
    v2 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "RESyncDestroySyncObjectReadContextNoDealloc";
      v5 = 2080;
      v6 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
    }
  }
}

BOOL RESyncAddSyncObjectReadContextEntry(re *a1, uint64_t a2, unint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a2;
  if (!a1)
  {
    v9 = *re::networkLogObjects(0);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136315394;
    v13 = "RESyncAddSyncObjectReadContextEntry";
    v14 = 2080;
    v15 = "context != __null";
    v6 = "%s: Invalid parameter not satisfying %s.";
    goto LABEL_13;
  }

  if (!a2)
  {
    v9 = *re::networkLogObjects(a1);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 136315394;
    v13 = "RESyncAddSyncObjectReadContextEntry";
    v14 = 2080;
    v15 = "entry != __null";
    v6 = "%s: Invalid parameter not satisfying %s.";
LABEL_13:
    v7 = v9;
    v8 = 22;
    goto LABEL_6;
  }

  v3 = re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 32, &v10, &v11);
  if (*v3 == v11)
  {
    return 1;
  }

  v4 = *re::networkLogObjects(v3);
  result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 134217984;
    v13 = v10;
    v6 = "RESyncAddSyncObjectReadContextEntry: Failed to add entry using id=%llu, possible duplicate!";
    v7 = v4;
    v8 = 12;
LABEL_6:
    _os_log_error_impl(&dword_26168F000, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
    return 0;
  }

  return result;
}

uint64_t RESyncGetSyncObjectReadContextEntry(uint64_t a1, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (a1)
  {
    v2 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, &v6);
    if (v2)
    {
      return *v2;
    }

    v4 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v8 = v6;
      _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_INFO, "RESyncGetSyncObjectReadContextEntry: Couldn't find entry with id=%llu.", buf, 0xCu);
    }
  }

  else
  {
    v5 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "RESyncGetSyncObjectReadContextEntry";
      v9 = 2080;
      v10 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", buf, 0x16u);
    }
  }

  return 0;
}

BOOL RESyncRemoveSyncObjectReadContextEntry(uint64_t a1, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (a1)
  {
    v2 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 32, &v6);
    if (v2)
    {
      return 1;
    }

    v4 = *re::networkLogObjects(v2);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 134217984;
      v8 = v6;
      _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "RESyncRemoveSyncObjectReadContextEntry: Couldn't find entry with id=%llu.", buf, 0xCu);
      return 0;
    }
  }

  else
  {
    v5 = *re::networkLogObjects(0);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 136315394;
      v8 = "RESyncRemoveSyncObjectReadContextEntry";
      v9 = 2080;
      v10 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", buf, 0x16u);
      return 0;
    }
  }

  return result;
}

uint64_t RESyncObjectReadContextGetSession(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    return *a1;
  }

  v2 = *re::networkLogObjects(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "RESyncObjectReadContextGetSession";
    v5 = 2080;
    v6 = "context != __null";
    _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
  }

  return 0;
}

uint64_t RESyncObjectReadContextGetSourcePeerID(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    return *(a1 + 8);
  }

  v2 = *re::networkLogObjects(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "RESyncObjectReadContextGetSourcePeerID";
    v5 = 2080;
    v6 = "context != __null";
    _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
  }

  return 0;
}

uint64_t RESyncObjectReadContextGetSyncableGuid(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    return *(a1 + 16);
  }

  v2 = *re::networkLogObjects(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "RESyncObjectReadContextGetSyncableGuid";
    v5 = 2080;
    v6 = "context != __null";
    _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
  }

  return 0;
}

BOOL RESyncObjectReadContextSupportsProtocolLevel(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    return (a2 & ~*(a1 + 24)) == 0;
  }

  v3 = *re::networkLogObjects(0);
  result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v4 = 136315394;
    v5 = "RESyncObjectReadContextSupportsProtocolLevel";
    v6 = 2080;
    v7 = "context != __null";
    _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v4, 0x16u);
    return 0;
  }

  return result;
}

uint64_t RESyncObjectReadContextIsLocalSession(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    (*(**a1 + 32))(v4);
    v1 = *(*v4 + 2219);
  }

  else
  {
    v3 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 136315394;
      *&v4[4] = "RESyncObjectReadContextIsLocalSession";
      v5 = 2080;
      v6 = "context != __null";
      _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", v4, 0x16u);
    }

    v1 = 0;
  }

  return v1 & 1;
}

double re::Packet::swap(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v2;
  v3 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  LODWORD(v3) = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  result = *(a2 + 28);
  v5 = *(a1 + 28);
  *(a1 + 28) = result;
  *(a2 + 28) = v5;
  v6 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v6;
  v7 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v8;
  return result;
}

void re::PacketPool::free(os_unfair_lock_s *this, re::Packet *a2)
{
  v4 = *(a2 + 1);
  v5 = *(a2 + 7) + *(a2 + 4) - v4;
  *(a2 + 2) = v4;
  *(a2 + 6) = 0;
  *(a2 + 7) = v5;
  os_unfair_lock_lock(this + 64);
  v6 = *(a2 + 7);
  if (v6 <= this[70]._os_unfair_lock_opaque && (v7 = this[67]._os_unfair_lock_opaque + v6, v7 <= this[71]._os_unfair_lock_opaque))
  {
    v10 = *&this[44]._os_unfair_lock_opaque;
    *&this[44]._os_unfair_lock_opaque = a2;
    *(a2 + 6) = v10;
    ++this[68]._os_unfair_lock_opaque;
    this[67]._os_unfair_lock_opaque = v7;
  }

  else
  {
    --this[66]._os_unfair_lock_opaque;
    this[65]._os_unfair_lock_opaque -= v6;
    v8 = (*(**&this[6]._os_unfair_lock_opaque + 40))(*&this[6]._os_unfair_lock_opaque, *(a2 + 1));
    v9 = re::globalAllocators(v8);
    (*(*v9[2] + 40))(v9[2], a2);
  }

  os_unfair_lock_unlock(this + 64);
}

re::PacketQueue *re::PacketQueue::PacketQueue(re::PacketQueue *this)
{
  *this = 0;
  *(this + 1) = 0;
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 128, 128);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 40) = 0;
  *this = v3;
  *(this + 1) = v3;
  atomic_store(0, this + 6);
  atomic_store(0, this + 2);
  atomic_store(0, this + 4);
  return this;
}

void re::PacketQueue::~PacketQueue(re::PacketQueue *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = re::globalAllocators(this);
    (*(*v3[2] + 40))(v3[2], v2);
  }

  *this = 0;
  *(this + 1) = 0;
}

uint64_t re::PacketQueue::dequeue(re::PacketQueue *this)
{
  explicit = atomic_load_explicit(*(this + 1), memory_order_acquire);
  if (!explicit)
  {
    return 0;
  }

  re::Packet::swap(*(this + 1), explicit);
  result = *(this + 1);
  *(this + 1) = explicit;
  atomic_fetch_add_explicit(this + 6, -*(result + 24), memory_order_release);
  atomic_fetch_add_explicit(this + 4, -*(result + 28), memory_order_release);
  atomic_fetch_add_explicit(this + 2, 0xFFFFFFFFFFFFFFFFLL, memory_order_release);
  atomic_store(0, result);
  return result;
}

uint64_t re::InlineString<32ul>::assignf(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  *a1 = 0;
  return re::InlineString<32ul>::vappendf(a1, "PacketPool%s", va);
}

void re::PacketPool::~PacketPool(re::PacketPool *this)
{
  *this = &unk_2873F5940;
  for (i = *(this + 22); i; i = *(this + 22))
  {
    *(this + 22) = *(i + 48);
    *(i + 48) = 0;
    --*(this + 68);
    *(this + 67) -= *(i + 28);
    v3 = (*(**(this + 3) + 40))(*(this + 3), *(i + 8));
    v4 = re::globalAllocators(v3);
    (*(*v4[2] + 40))(v4[2], i);
  }

  v5 = *(this + 3);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 3) = 0;
  *(this + 36) = 0;
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::PacketPool::~PacketPool(this);

  JUMPOUT(0x266708EB0);
}

void re::PacketPool::make(re::PacketPool *this@<X0>, re::MallocZoneAllocator *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = re::globalAllocators(this);
  v7 = (*(*v6[2] + 32))(v6[2], 384, 128);
  ArcSharedObject::ArcSharedObject(v7, 0);
  *(v7 + 24) = 0;
  *v7 = &unk_2873F5940;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0u;
  *(v7 + 160) = 0;
  *(v7 + 176) = 0;
  *(v7 + 184) = 0;
  *(v7 + 168) = 0;
  *(v7 + 256) = 0;
  *(v7 + 264) = 0;
  *(v7 + 272) = 0;
  *(v7 + 276) = 0x10000000002000;
  *(v7 + 284) = 0x1000000;
  *(v7 + 288) = 0u;
  *(v7 + 304) = 0u;
  v15 = "";
  if (a2)
  {
    v15 = a2;
  }

  *(v7 + 320) = 0;
  re::InlineString<32ul>::assignf((v7 + 288), v8, v9, v10, v11, v12, v13, v14, v15);
  if (!this)
  {
    operator new();
  }

  *(v7 + 24) = this;
  re::Defaults::intValue(&v22, "network.packetpool.minPacketSize", v16);
  if (v22)
  {
    v18 = &v22 + 1;
  }

  else
  {
    v18 = (v7 + 276);
  }

  *(v7 + 276) = *v18;
  re::Defaults::intValue(&v22, "network.packetpool.maxFreePacketSize", v17);
  if (v22)
  {
    v20 = &v22 + 1;
  }

  else
  {
    v20 = (v7 + 280);
  }

  *(v7 + 280) = *v20;
  re::Defaults::intValue(&v22, "network.packetpool.maxFreePacketPoolMemory", v19);
  v21 = (v7 + 284);
  if (v22)
  {
    v21 = &v22 + 1;
  }

  *(v7 + 284) = *v21;
  *a3 = v7;
}

void re::PacketPool::emitAriadneSignpost(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 64);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  os_unfair_lock_unlock(this + 64);
}

char *re::PacketPool::allocate(re::PacketPool *this, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 64);
  v5 = this + 128;
  while (1)
  {
    v6 = v5;
    v5 = *(v5 + 6);
    if (!v5)
    {
      break;
    }

    LODWORD(v7) = *(v5 + 7);
    if (v7 >= a2)
    {
      *(v6 + 6) = *(v5 + 6);
      *(v5 + 6) = 0;
      --*(this + 68);
      *(this + 67) -= v7;
      goto LABEL_10;
    }
  }

  v8 = *(this + 69);
  if (v8 <= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v8;
  }

  v9 = (*(**(this + 3) + 32))(*(this + 3), v7, 0);
  if (!v9)
  {
    re::internal::assertLog(0xA, v10, "assertion failure: '%s' (%s:line %i) [Network] Failed to allocate packet buffer of size %u(%u), totalCount=%d, totalBytes=%u, availableCount=%d, availableBytes=%u", "false", "allocate", 188, v7, a2, *(this + 66), *(this + 65), *(this + 68), *(this + 67));
    result = _os_crash("assertion failure: (false) [Network] Failed to allocate packet buffer of size %u(%u), totalCount=%d, totalBytes=%u, availableCount=%d, availableBytes=%u", v20, v21, v22, v23, v24, v25);
    __break(1u);
    return result;
  }

  v11 = v9;
  v12 = re::globalAllocators(v9);
  v4 = (*(*v12[2] + 32))(v12[2], 128, 128);
  v5 = v4;
  *v4 = 0;
  *(v4 + 8) = v11;
  *(v4 + 16) = v11;
  *(v4 + 24) = 0;
  *(v4 + 28) = v7;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = this;
  *(this + 260) = vadd_s32(*(this + 260), (v7 | 0x100000000));
LABEL_10:
  if (v7 > *(this + 70))
  {
    v13 = *re::networkLogObjects(v4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v5 + 7);
      v15 = *(this + 66);
      v16 = *(this + 65);
      v17 = *(this + 68);
      v18 = *(this + 67);
      *buf = 67110144;
      v27 = v14;
      v28 = 1024;
      v29 = v15;
      v30 = 1024;
      v31 = v16;
      v32 = 1024;
      v33 = v17;
      v34 = 1024;
      v35 = v18;
      _os_log_impl(&dword_26168F000, v13, OS_LOG_TYPE_DEFAULT, "Large packet buffer allocated: %u, totalCount=%d, totalBytes=%u, availableCount=%d, availableBytes=%u", buf, 0x20u);
    }
  }

  os_unfair_lock_unlock(this + 64);
  return v5;
}

uint64_t re::SessionParticipant::SessionParticipant(uint64_t a1, uint64_t a2, int a3, char *a4, size_t a5)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = a2;
  *a1 = &unk_2873F5988;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  v11 = re::DynamicString::setCapacity((a1 + 40), 0);
  *(a1 + 72) = a3;
  *(a1 + 96) = 0u;
  *(a1 + 80) = 0u;
  re::DynamicString::setCapacity((a1 + 80), 0);
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  if (a4 && !((a5 - 1) >> 22))
  {
    re::DynamicArray<unsigned char>::copy((a1 + 112), 0, a4, a5);
  }

  return a1;
}

uint64_t re::SessionParticipant::SessionParticipant(uint64_t a1, uint64_t a2, uint64_t a3, const re::DynamicString *a4, int a5, char *a6, size_t a7)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = a2;
  *a1 = &unk_2873F5988;
  *(a1 + 32) = a3;
  v14 = re::DynamicString::DynamicString((a1 + 40), a4);
  *(a1 + 72) = a5;
  *(a1 + 96) = 0u;
  *(a1 + 80) = 0u;
  re::DynamicString::setCapacity((a1 + 80), 0);
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  if (a6 && !((a7 - 1) >> 22))
  {
    re::DynamicArray<unsigned char>::copy((a1 + 112), 0, a6, a7);
  }

  return a1;
}

void re::SessionParticipant::~SessionParticipant(re::SessionParticipant *this)
{
  *this = &unk_2873F5988;
  v2 = *(this + 19);
  if (v2)
  {

    *(this + 19) = 0;
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 112);
  re::DynamicString::deinit((this + 80));
  re::DynamicString::deinit((this + 40));
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F5988;
  v2 = *(this + 19);
  if (v2)
  {

    *(this + 19) = 0;
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 112);
  re::DynamicString::deinit((this + 80));
  re::DynamicString::deinit((this + 40));
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

BOOL re::BitWriter::rollbackTo(uint64_t a1, unint64_t a2)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  if (HIDWORD(a2))
  {
    v2 = a2 + 1;
  }

  else
  {
    v2 = a2;
  }

  v3 = *(a1 + 16);
  *(a1 + 20) = v2 > v3;
  if (HIDWORD(a2) && v2 <= v3)
  {
    *(a1 + 32) = (0xFFuLL >> (8 - BYTE4(a2))) & *(*(a1 + 8) + a2);
  }

  return v2 <= v3;
}

uint64_t re::BitWriter::writeUInt32Bits(uint64_t this, unsigned int a2, unsigned int a3)
{
  if ((*(this + 20) & 1) == 0)
  {
    v5 = this;
    v6 = *(this + 16);
    v7 = *(this + 24);
    v8 = *(this + 28);
    v9 = 8 * (v6 - v7) - v8;
    v10 = a3 >= v9;
    v11 = a3 - v9;
    if (v11 != 0 && v10 && (this = (*(*this + 16))(this, (v11 >> 3) + 1), v6 = *(v5 + 16), v7 = *(v5 + 24), v8 = *(v5 + 28), 8 * (v6 - v7) - v8 < a3))
    {
      *(v5 + 24) = v6;
      *(v5 + 28) = 0;
      *(v5 + 20) = 1;
    }

    else
    {
      v12 = (a2 << v8) | *(v5 + 32);
      *(v5 + 32) = v12;
      v13 = v8 + a3;
      *(v5 + 28) = v13;
      if (v13 >= 8)
      {
        do
        {
          v14 = *(v5 + 8);
          v15 = *(v5 + 24);
          *(v5 + 24) = v15 + 1;
          *(v14 + v15) = v12;
          v12 = *(v5 + 32) >> 8;
          *(v5 + 32) = v12;
          v13 = *(v5 + 28) - 8;
          *(v5 + 28) = v13;
        }

        while (v13 > 7);
        v7 = *(v5 + 24);
        v6 = *(v5 + 16);
      }

      if (v7 < v6)
      {
        *(*(v5 + 8) + v7) = (-1 << v13) & *(*(v5 + 8) + v7) | v12 & ~(-1 << v13);
      }
    }
  }

  return this;
}

uint64_t re::BitWriter::writeUInt64Bits(re::BitWriter *this, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v5 = this;
  if (a3 >= 0x21)
  {
    re::BitWriter::writeUInt32Bits(this, a2, 0x20u);
    a2 = HIDWORD(v4);
    a3 = v3 - 32;
    this = v5;
  }

  return re::BitWriter::writeUInt32Bits(this, a2, a3);
}

uint64_t re::BitWriter::writeUInt32At(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 + 4) > *(a1 + 16))
  {
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Marker is out of bounds", "marker.byteOffset + 4 <= m_dataSize", "writeUInt32At", 84);
    result = _os_crash("assertion failure: (marker.byteOffset + 4 <= m_dataSize) Marker is out of bounds");
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = *(a1 + 24);
    re::BitWriter::rollbackTo(a1, a2);
    re::BitWriter::writeUInt32Bits(a1, v3, 0x20u);

    return re::BitWriter::rollbackTo(a1, v5);
  }

  return result;
}

uint64_t re::BitWriter::writeData(re::BitWriter *this, const void *a2, uint64_t a3)
{
  v3 = a3;
  if (!a2 && a3)
  {
    re::internal::assertLog(5, 0, "assertion failure: '%s' (%s:line %i) data==null, dataSize==%u", "!(data == nullptr && dataSize > 0)", "writeData", 117, a3);
    _os_crash("assertion failure: (!(data == nullptr && dataSize > 0)) data==null, dataSize==%u", v12);
    __break(1u);
  }

  else
  {
    if (re::BitWriter::bytesLeft(this, a2) < a3)
    {
      v7 = re::BitWriter::bytesLeft(this, v6);
      (*(*this + 16))(this, v3 - v7);
      if (re::BitWriter::bytesLeft(this, v8) < v3)
      {
        *(this + 6) = *(this + 4);
        *(this + 7) = 0;
        *(this + 20) = 1;
        return (*(this + 20) & 1) == 0;
      }
    }

    re::BitWriter::alignToByte(this);
    v10 = *(this + 1);
    if (v10)
    {
      if (a2)
      {
        if (v3)
        {
          memcpy((v10 + *(this + 6)), a2, v3);
          *(this + 6) += v3;
          *(this + 4) = 0;
        }
      }

      return (*(this + 20) & 1) == 0;
    }
  }

  re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) memcpy destination data is null", "m_data != nullptr", "operator()", 120);
  result = _os_crash("assertion failure: (m_data != nullptr) memcpy destination data is null");
  __break(1u);
  return result;
}

uint64_t re::BitWriter::bytesLeft(re::BitWriter *this, uint64_t a2)
{
  v2 = *(this + 4);
  v3 = *(this + 6);
  v4 = v2 >= v3;
  v5 = v2 - v3;
  if (v4)
  {
    v6 = *(this + 7);
    if (v5 != 0 && v4)
    {
      if (v6)
      {
        v6 = -1;
      }

      else
      {
        v6 = 0;
      }
    }

    else if (v6)
    {
      goto LABEL_10;
    }

    return v5 + v6;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Writer is in inconsistent state", "m_dataSize >= m_byteOffset", "bytesLeft", 171);
  _os_crash("assertion failure: (m_dataSize >= m_byteOffset) Writer is in inconsistent state");
  __break(1u);
LABEL_10:
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Writer is in inconsistent state", "m_byteOffset < m_dataSize || m_bitOffset == 0", "bytesLeft", 172);
  result = _os_crash("assertion failure: (m_byteOffset < m_dataSize || m_bitOffset == 0) Writer is in inconsistent state");
  __break(1u);
  return result;
}

_DWORD *re::BitWriter::alignToByte(_DWORD *this)
{
  v1 = this;
  v2 = this[6];
  v3 = this[7];
  v4 = 8 - v3;
  if (8 * (this[4] - v2) != 8 && 8 - v3 >= (8 * (this[4] - v2) - v3) && (this = (*(*this + 16))(this, ((8 - 8 * (this[4] - v2)) >> 3) + 1), v5 = v1[4], v2 = v1[6], v3 = v1[7], 8 * (v5 - v2) - v3 < v4))
  {
    v1[6] = v5;
    v1[7] = 0;
    *(v1 + 20) = 1;
  }

  else
  {
    if (v3)
    {
      ++v2;
    }

    v1[6] = v2;
    v1[7] = 0;
    *(v1 + 4) = 0;
  }

  return this;
}

void *re::BitWriter::copyDataTo(re::BitWriter *this, void *__dst, size_t a3)
{
  LODWORD(v5) = *(this + 6);
  if (*(this + 7))
  {
    v5 = (v5 + 1);
  }

  else
  {
    v5 = v5;
  }

  if (v5 < a3)
  {
    re::internal::assertLog(4, __dst, "assertion failure: '%s' (%s:line %i) ", "bytesToCopy <= size()", "copyDataTo", 204, v3, v4);
    result = _os_crash("assertion failure: (bytesToCopy <= size()) ");
    __break(1u);
  }

  else
  {
    v6 = *(this + 1);

    return memcpy(__dst, v6, a3);
  }

  return result;
}

void re::DynamicBitWriter::grow(re::DynamicBitWriter *this, unsigned int a2)
{
  v3 = *(this + 7);
  v4 = v3 + a2;
  v5 = 2 * v3;
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  re::DynamicArray<unsigned char>::resize(this + 40, v6);
  *(this + 1) = *(this + 9);
  *(this + 4) = *(this + 7);
}

uint64_t re::BackedBitWriter::grow(uint64_t this, int a2)
{
  v2 = *(this + 40);
  if (v2)
  {
    v3 = this;
    v4 = *(this + 16) + a2;
    this = v2(*(this + 48), *(this + 8));
    *(v3 + 8) = this;
    *(v3 + 16) = v4;
  }

  return this;
}

void re::DynamicBitWriter::~DynamicBitWriter(re::DynamicBitWriter *this)
{
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 40);
}

{
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 40);

  JUMPOUT(0x266708EC0);
}

double re::NetworkSyncManager::NetworkSyncManager(re::NetworkSyncManager *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_2873F5A88;
  *(this + 29) = 0;
  *(this + 60) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 56) = 0;
  *(this + 31) = 0;
  *(this + 16) = 0u;
  *(this + 68) = 0;
  *(this + 40) = 0;
  *(this + 82) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 78) = 0;
  *(this + 42) = 0;
  *(this + 344) = 0u;
  *(this + 90) = 0;
  *(this + 51) = 0;
  *(this + 104) = 0;
  *(this + 100) = 0;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 55) = 0;
  *(this + 112) = 0;
  *(this + 424) = 0u;
  *(this + 62) = 0;
  *(this + 126) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 122) = 0;
  *(this + 66) = 0;
  *(this + 134) = 0;
  *(this + 32) = 0u;
  *(this + 73) = 0;
  *(this + 148) = 0;
  *(this + 144) = 0;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 156) = 0;
  *(this + 77) = 0;
  *(this + 600) = 0u;
  *(this + 84) = 0;
  *(this + 170) = 0;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 166) = 0;
  *(this + 43) = 0u;
  *(this + 178) = 0;
  *(this + 88) = 0;
  *(this + 95) = 0;
  *(this + 192) = 0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 188) = 0;
  *(this + 776) = 0u;
  *(this + 200) = 0;
  *(this + 99) = 0;
  *(this + 106) = 0;
  *(this + 214) = 0;
  *(this + 210) = 0;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 48) = 0;
  *(this + 5) = 0;
  *(this + 22) = 0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 32) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 46) = 0;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  return result;
}

void re::NetworkSyncManager::~NetworkSyncManager(re::NetworkSyncManager *this)
{
  *this = &unk_2873F5A88;
  if (*(this + 48) == 1)
  {
    re::NetworkSyncManager::stopSync(this);
    while (1)
    {
      v2 = *(this + 15);
      if (!v2)
      {
        break;
      }

      re::NetworkSyncManager::removeSession(this, *(*(this + 17) + 8 * v2 - 8));
    }

    v3 = *(this + 19);
    if (v3)
    {

      *(this + 19) = 0;
    }

    if (*(this + 53))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 424);
    }

    if (*(this + 42))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 336);
    }

    if (*(this + 97))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 776);
    }

    if (*(this + 86))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 688);
    }

    if (*(this + 75))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 600);
    }

    if (*(this + 64))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 512);
    }

    if (*(this + 31))
    {
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 248);
    }

    v4 = (this + 160);
    if (*(this + 20))
    {
      v4 = re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v4);
    }

    *(this + 48) = 0;
    v5 = *re::networkLogObjects(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_26168F000, v5, OS_LOG_TYPE_DEFAULT, "NetworkSyncManager: uninitialized", v17, 2u);
    }
  }

  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(this + 97);
  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(this + 86);
  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(this + 75);
  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(this + 64);
  if (*(this + 53))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 424);
  }

  v6 = *(this + 58);
  if (v6)
  {
    if (*(this + 62))
    {
      (*(*v6 + 40))(v6);
    }

    *(this + 62) = 0;
    *(this + 59) = 0;
    *(this + 60) = 0;
    *(this + 58) = 0;
    ++*(this + 122);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 424);
  if (*(this + 42))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 336);
  }

  v7 = *(this + 47);
  if (v7)
  {
    if (*(this + 51))
    {
      (*(*v7 + 40))(v7);
    }

    *(this + 51) = 0;
    *(this + 48) = 0;
    *(this + 49) = 0;
    *(this + 47) = 0;
    ++*(this + 100);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 336);
  re::Event<re::Session>::~Event(this + 248);
  re::Event<re::Session>::~Event(this + 160);
  v8 = *(this + 19);
  if (v8)
  {

    *(this + 19) = 0;
  }

  v9 = *(this + 18);
  if (v9)
  {

    *(this + 18) = 0;
  }

  v10 = *(this + 13);
  if (v10)
  {
    if (*(this + 17))
    {
      (*(*v10 + 40))(v10);
    }

    *(this + 17) = 0;
    *(this + 14) = 0;
    *(this + 15) = 0;
    *(this + 13) = 0;
    ++*(this + 32);
  }

  v11 = *(this + 8);
  if (v11)
  {
    v12 = *(this + 12);
    if (v12)
    {
      v13 = *(this + 10);
      if (v13)
      {
        v14 = 8 * v13;
        do
        {
          if (*v12)
          {

            *v12 = 0;
          }

          v12 += 8;
          v14 -= 8;
        }

        while (v14);
        v11 = *(this + 8);
        v12 = *(this + 12);
      }

      (*(*v11 + 40))(v11, v12);
    }

    *(this + 12) = 0;
    *(this + 9) = 0;
    *(this + 10) = 0;
    *(this + 8) = 0;
    ++*(this + 22);
  }

  v15 = *(this + 7);
  if (v15)
  {

    *(this + 7) = 0;
  }

  v16 = *(this + 4);
  if (v16)
  {

    *(this + 4) = 0;
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::NetworkSyncManager::~NetworkSyncManager(this);

  JUMPOUT(0x266708EC0);
}

void re::NetworkSyncManager::init(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  *(a1 + 24) = v5;
  re::SharedPtr<re::SyncObject>::reset((a1 + 32), v4);
  *(a1 + 40) = a2[2];
  v7 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 160), 0);
  ++*(a1 + 184);
  v8 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 248), 0);
  ++*(a1 + 272);
  v9 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 512), 0);
  ++*(a1 + 536);
  v10 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 600), 0);
  ++*(a1 + 624);
  v11 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 688), 0);
  ++*(a1 + 712);
  v12 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 776), 0);
  ++*(a1 + 800);
  v13 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 336), 0);
  ++*(a1 + 360);
  v14 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((a1 + 424), 0);
  ++*(a1 + 448);
  v15 = re::make::shared::object<re::RoutingTable>(v14, &v25);
  v16 = *(a1 + 144);
  *(a1 + 144) = v25;
  v25 = v16;
  if (v16)
  {
  }

  v17 = re::globalAllocators(v15);
  v18 = (*(*v17[2] + 32))(v17[2], 208, 8);
  v19 = re::SyncViewManager::SyncViewManager(v18);
  v20 = *(a1 + 152);
  *(a1 + 152) = v19;
  if (v20)
  {
  }

  re::SharedPtr<re::SyncObject>::reset((a1 + 56), a2[1]);
  v22 = *(a1 + 32);
  if (v22)
  {

    *(a1 + 32) = 0;
  }

  *(a1 + 48) = 1;
  v23 = *re::networkLogObjects(v21);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&dword_26168F000, v23, OS_LOG_TYPE_DEFAULT, "NetworkSyncManager: initialized", v24, 2u);
  }
}

uint64_t re::NetworkSyncManager::startSyncWithSession(re *a1, re::Session **a2)
{
  v62 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) & 1) == 0)
  {
    v32 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v33 = "NetworkSyncManager: Not initialized.";
      v34 = v32;
      v35 = 2;
LABEL_61:
      _os_log_error_impl(&dword_26168F000, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);
      return 0;
    }

    return 0;
  }

  if (!*a2 || (*(*a2 + 2272) & 1) == 0)
  {
    v36 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v47 = *a2;
      *buf = 134217984;
      *&buf[4] = v47;
      v33 = "NetworkSyncManager: Invalid session object (%p).";
LABEL_60:
      v34 = v36;
      v35 = 12;
      goto LABEL_61;
    }

    return 0;
  }

  v3 = a1;
  v4 = *(a1 + 10);
  if (v4)
  {
    v5 = *(a1 + 12);
    v6 = 8 * v4;
    while (1)
    {
      a1 = (*(**v5 + 32))(buf);
      v7 = *a2;
      v8 = *buf;
      if (*buf)
      {
      }

      if (v8 == v7)
      {
        break;
      }

      v5 += 8;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_10;
      }
    }

    v36 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v46 = *a2;
    *buf = 134217984;
    *&buf[4] = v46;
    v33 = "NetworkSyncManager: Session already used to sync (%p).";
    goto LABEL_60;
  }

LABEL_10:
  v9 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a2;
    *buf = 134217984;
    *&buf[4] = v10;
    _os_log_impl(&dword_26168F000, v9, OS_LOG_TYPE_DEFAULT, "NetworkSyncManager: Starting sync with session (%p).", buf, 0xCu);
  }

  v11 = *a2;
  v12 = *(v3 + 18);
  v51 = v12;
  if (v12)
  {
    v13 = (v12 + 8);
  }

  re::Session::setRoutingTable(v11, &v51);
  if (v51)
  {

    v51 = 0;
  }

  v14 = *a2;
  *buf = v3;
  *&buf[8] = re::NetworkSyncManager::sessionDataDidArrive;
  v53 = 0;
  v54 = re::Event<re::Session>::createSubscription<re::NetworkSyncManager>(re::NetworkSyncManager *,REEventHandlerResult (re::NetworkSyncManager::*)(re::Session*))::{lambda(re::Session*,re::Event<re::Session>::Subscription const&)#1}::__invoke;
  re::Event<re::Session>::addSubscription(v14 + 404, buf);
  *buf = v3;
  *&buf[8] = re::NetworkSyncManager::sessionDidStop;
  v53 = 0;
  v54 = re::Event<re::Session,re::SessionError>::createSubscription<re::NetworkSyncManager>(re::NetworkSyncManager *,REEventHandlerResult (re::NetworkSyncManager::*)(re::Session*,re::SessionError))::{lambda(re::Session*,re::Event<re::Session,re::SessionError>::Subscription const&,re::SessionError&&)#1}::__invoke;
  re::Event<re::Session>::addSubscription(v14 + 52, buf);
  v16 = re::NetworkFeatureFlags::enableSharedAppSpecialization(v15);
  v17 = *a2;
  if (v16 && *(v17 + 2219) == 1)
  {
    v18 = re::globalAllocators(v16);
    v19 = (*(*v18[2] + 32))(v18[2], 552, 8);
    bzero(v19, 0x228uLL);
    ArcSharedObject::ArcSharedObject(v19, 0);
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    *(v19 + 12) = 0;
    v19[12] = 0;
    *(v19 + 26) = 0;
    *(v19 + 7) = 0u;
    *(v19 + 9) = 0u;
    *(v19 + 22) = 0;
    v19[15] = 0;
    v19[16] = 0;
    v19[14] = 0;
    *(v19 + 34) = 0;
    v19[23] = 0;
    *(v19 + 48) = 0;
    *(v19 + 9) = 0u;
    *(v19 + 10) = 0u;
    *(v19 + 44) = 0;
    v19[25] = 0;
    v19[26] = 0;
    *(v19 + 56) = 0;
    v19[27] = 0;
    v19[34] = 0;
    *(v19 + 70) = 0;
    *(v19 + 29) = 0u;
    *(v19 + 31) = 0u;
    *(v19 + 66) = 0;
    v19[37] = 0;
    v19[38] = 0;
    *(v19 + 78) = 0;
    v19[36] = 0;
    v19[45] = 0;
    *(v19 + 92) = 0;
    *(v19 + 20) = 0u;
    *(v19 + 21) = 0u;
    *(v19 + 88) = 0;
    *v19 = &unk_2873F4880;
    v19[47] = 0;
    v19[48] = 30;
    v19[49] = 0xFFFFFFFF00010000;
    *(v19 + 400) = 0;
    *(v19 + 51) = 0u;
    *(v19 + 53) = 0u;
    *(v19 + 110) = 500;
    *(v19 + 224) = 0;
    v19[57] = 0;
    v19[58] = 0;
    *(v19 + 120) = 0;
    v19[59] = 0;
    v19[68] = 0;
    *(v19 + 134) = 0;
    *(v19 + 63) = 0u;
    *(v19 + 65) = 0u;
    *(v19 + 61) = 0u;
    *buf = xmmword_261711760;
    v53 = 0xFFFFFFFF00010000;
    v21 = *a2;
    LOBYTE(v54) = *(*a2 + 2216);
    v55 = v21;
    v22 = v21 + 8;
    v23 = *(v3 + 7);
    v56 = v23;
    if (v23)
    {
      v24 = (v23 + 8);
    }

    v25 = *(v3 + 19);
    v57 = v25;
    if (v25)
    {
      v26 = (v25 + 8);
    }

    v58 = v3;
    v27 = *a2;
    v59 = *(*a2 + 556);
    v28 = *(v27 + 557);
    if (v28)
    {
      LODWORD(v53) = v28;
      HIDWORD(v53) = v28;
    }

    re::SharedAppSyncManager::init(v19, buf);
    v50 = v19;
    v29 = v19 + 1;
    v30 = (*(*v3 + 96))(v3, &v50);
    if (v50)
    {

      v50 = 0;
    }

    if (v57)
    {

      v57 = 0;
    }

    if (v56)
    {

      v56 = 0;
    }

    if (v55)
    {
    }

    v31 = v19 + 1;
    goto LABEL_56;
  }

  *buf = xmmword_261711760;
  v53 = 0xFFFFFFFF00010000;
  LOBYTE(v54) = *(v17 + 2216);
  v55 = v17;
  v38 = v17 + 8;
  v39 = *(v3 + 7);
  v56 = v39;
  if (v39)
  {
    v40 = (v39 + 8);
  }

  v41 = *(v3 + 19);
  v57 = v41;
  if (v41)
  {
    v42 = (v41 + 8);
  }

  v58 = v3;
  v43 = *a2;
  LOBYTE(v59) = *(*a2 + 2223);
  v60 = *(v43 + 556);
  v61 = *(v43 + 2237);
  v44 = *(v43 + 557);
  if (v44)
  {
    LODWORD(v53) = v44;
    HIDWORD(v53) = v44;
  }

  re::make::shared::object<re::SyncObjectManager,re::SyncObjectManager::Config &>(buf, &v49);
  v48 = v49;
  if (v49)
  {
    v45 = (v49 + 8);
  }

  v30 = (*(*v3 + 96))(v3, &v48);
  if (v48)
  {

    v48 = 0;
  }

  if (v49)
  {
  }

  if (v57)
  {

    v57 = 0;
  }

  if (v56)
  {

    v56 = 0;
  }

  if (v55)
  {
    v31 = v55 + 8;
LABEL_56:
  }

  return v30;
}

void re::NetworkSyncManager::createSessionAndStartSync(re *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  v6 = *(a2 + 16);
  v18 = *a2;
  v19 = v6;
  v7 = *(a2 + 32);
  v20 = v7;
  if (v7)
  {
    a1 = (v7 + 8);
  }

  v21 = *(a2 + 40);
  v8 = *(a2 + 64);
  v22 = *(a2 + 56);
  v23 = v8;
  if (v8)
  {
    a1 = (v8 + 8);
  }

  v24[0] = *(a2 + 72);
  *(v24 + 12) = *(a2 + 84);
  v9 = *(a2 + 104);
  v25 = v9;
  if (v9)
  {
    a1 = (v9 + 8);
  }

  v10 = *(a2 + 112);
  v26 = v10;
  if (v10)
  {
    a1 = (v10 + 8);
  }

  v27 = *(a2 + 120);
  v11 = *(v4 + 3);
  *&v18 = *(v4 + 5);
  *&v19 = v11;
  re::make::shared::object<re::Session>(a1, &v17);
  v12 = re::Session::init(v17, &v18);
  if (v12)
  {
    v15 = v17;
    if (v17)
    {
      v13 = (v17 + 8);
    }

    (*(*v4 + 88))(v4, &v15);
    if (v15)
    {

      v15 = 0;
    }

    *a3 = v17;
  }

  else
  {
    v14 = *re::networkLogObjects(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26168F000, v14, OS_LOG_TYPE_ERROR, "Failed to init session with provided config.", buf, 2u);
    }

    *a3 = 0;
    if (v17)
    {
    }
  }

  if (v26)
  {

    v26 = 0;
  }

  if (v25)
  {

    v25 = 0;
  }

  if (v23)
  {

    v23 = 0;
  }

  if (v20)
  {
  }
}

uint64_t re::NetworkSyncManager::startSync(uint64_t a1, uint64_t *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = (*(**a2 + 64))();
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  if (v6 >= v5)
  {
    v7 = v6 + 1;
    if (v5 < v6 + 1)
    {
      if (*(a1 + 64))
      {
        v8 = 2 * v5;
        v9 = v5 == 0;
        v10 = 8;
        if (!v9)
        {
          v10 = v8;
        }

        if (v10 <= v7)
        {
          v11 = v7;
        }

        else
        {
          v11 = v10;
        }

        re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity((a1 + 64), v11);
      }

      else
      {
        re::DynamicArray<re::SharedPtr<re::SyncObject>>::setCapacity((a1 + 64), v7);
        ++*(a1 + 88);
      }
    }

    v6 = *(a1 + 80);
  }

  v12 = *a2;
  *(*(a1 + 96) + 8 * v6) = *a2;
  v13 = (v12 + 8);
  v14 = *a2;
  ++*(a1 + 80);
  ++*(a1 + 88);
  (*(*v14 + 32))(&v22);
  re::Event<re::NetworkSyncService,re::SharedPtr<re::Session>>::raise(a1 + 160, a1);
  if (v22)
  {

    v22 = 0;
  }

  v16 = *re::networkLogObjects(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    (*(**a2 + 32))(&v21);
    v17 = v21;
    (*(**a2 + 32))(&v20);
    v18 = re::Session::peerID(v20);
    *buf = 134218240;
    v24 = v17;
    v25 = 2048;
    v26 = v18;
    _os_log_impl(&dword_26168F000, v16, OS_LOG_TYPE_DEFAULT, "NetworkSyncManager: Added new session: %p (peerID=%llu)", buf, 0x16u);
    if (v20)
    {
    }

    if (v21)
    {
    }
  }

  return 1;
}

void re::Event<re::NetworkSyncService,re::SharedPtr<re::Session>>::raise(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        v9 = *(a1 + 56);
        if (v9 <= i)
        {
          v17 = 0;
          memset(v28, 0, sizeof(v28));
          v13 = MEMORY[0x277D86220];
          v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v20 = 136315906;
          v21 = "operator[]";
          v22 = 1024;
          if (v14)
          {
            v15 = 3;
          }

          else
          {
            v15 = 2;
          }

          v23 = 789;
          v24 = 2048;
          v25 = i;
          v26 = 2048;
          v27 = v9;
          _os_log_send_and_compose_impl(v15, &v17, v28, 80, &dword_26168F000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v16);
          _os_crash_msg();
          __break(1u);
        }

        v10 = *(a1 + 72) + v7;
        v11 = *(v10 + 32);
        v12 = *(v10 + 16);
        v18[0] = *v10;
        v18[1] = v12;
        v19 = v11;
        if (LOBYTE(v18[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, v18 + 1, v28);
          if ((v28[0] & 1) == 0)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(a1, v18 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, v18 + 1, v28);
          if (LOBYTE(v28[0]) == 1)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, *(&v28[0] + 1));
          }
        }

        v7 += 40;
      }
    }
  }
}

void re::NetworkSyncManager::beforeFrameUpdate(re::RoutingTable **this)
{
  re::RoutingTable::update(this[18]);
  v2 = this[7];
  if (v2)
  {
    re::SyncObjectTombstoneInfo::update((v2 + 120));
  }

  v3 = this[10];
  if (v3)
  {
    v4 = this[12];
    v5 = 8 * v3;
    do
    {
      (*(**v4 + 32))(&v6);
      (*(*v6 + 48))(v6);
      if (v6)
      {
      }

      v4 = (v4 + 8);
      v5 -= 8;
    }

    while (v5);
  }
}

void re::NetworkSyncManager::afterFrameUpdate(re::NetworkSyncManager *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = *(this + 12);
    v4 = 8 * v2;
    do
    {
      (*(**v3 + 32))(&v6);
      (*(*v6 + 56))(v6);
      if (v6)
      {
      }

      v3 += 8;
      v4 -= 8;
    }

    while (v4);
  }

  while (1)
  {
    v5 = *(this + 15);
    if (!v5)
    {
      break;
    }

    re::NetworkSyncManager::removeSession(this, *(*(this + 17) + 8 * v5 - 8));
  }
}

uint64_t re::NetworkSyncManager::sessionDataDidArrive(re::NetworkSyncManager *this, re::Session *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(this + 104);
  *(this + 104) = v3 + 1;
  if (*(this + 44))
  {
    v4 = 0;
    do
    {
      if ((*(*(this + 46) + 32 * v4 + 24))(this) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(this + 42, v4);
      }

      else
      {
        ++v4;
      }
    }

    while (v4 < *(this + 44));
    v3 = *(this + 104) - 1;
  }

  *(this + 104) = v3;
  if (!v3)
  {
    v5 = *(this + 49);
    if (v5)
    {
      v6 = 0;
      for (i = 0; i != v5; ++i)
      {
        v8 = *(this + 49);
        if (v8 <= i)
        {
          v17 = 0;
          memset(v28, 0, sizeof(v28));
          v13 = MEMORY[0x277D86220];
          v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v20 = 136315906;
          v21 = "operator[]";
          v22 = 1024;
          if (v14)
          {
            v15 = 3;
          }

          else
          {
            v15 = 2;
          }

          v23 = 789;
          v24 = 2048;
          v25 = i;
          v26 = 2048;
          v27 = v8;
          _os_log_send_and_compose_impl(v15, &v17, v28, 80, &dword_26168F000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v16);
          _os_crash_msg();
          __break(1u);
        }

        v9 = *(this + 51) + v6;
        v10 = *(v9 + 32);
        v11 = *(v9 + 16);
        v18[0] = *v9;
        v18[1] = v11;
        v19 = v10;
        if (LOBYTE(v18[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(this + 336, v18 + 1, v28);
          if ((v28[0] & 1) == 0)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add((this + 336), v18 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(this + 336, v18 + 1, v28);
          if (LOBYTE(v28[0]) == 1)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(this + 42, *(&v28[0] + 1));
          }
        }

        v6 += 40;
      }
    }
  }

  return 0;
}

uint64_t re::NetworkSyncManager::sessionDidStop(re *a1, re::Session *a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = a2;
    v10 = 1024;
    v11 = a3;
    _os_log_impl(&dword_26168F000, v6, OS_LOG_TYPE_DEFAULT, "NetworkSyncManager: session stopped (%p) with error: %d.", &v8, 0x12u);
  }

  re::NetworkSyncManager::removeSessionDeferred(a1, a2);
  return 1;
}

void re::NetworkSyncManager::removeSessionDeferred(re::NetworkSyncManager *this, re::Session *a2)
{
  v3 = this;
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(this + 17);
  v5 = *(this + 15);
  v6 = v4;
  if (v5)
  {
    v7 = 8 * v5;
    v6 = *(this + 17);
    while (*v6 != a2)
    {
      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  if (v6 == &v4[v5])
  {
LABEL_7:
    v8 = *(this + 14);
    if (v5 >= v8)
    {
      v9 = v5 + 1;
      if (v8 < v5 + 1)
      {
        if (*(this + 13))
        {
          v10 = 2 * v8;
          if (!v8)
          {
            v10 = 8;
          }

          if (v10 <= v9)
          {
            v11 = v9;
          }

          else
          {
            v11 = v10;
          }

          this = re::DynamicArray<re::Allocator const*>::setCapacity(this + 13, v11);
        }

        else
        {
          this = re::DynamicArray<re::Allocator const*>::setCapacity(v3 + 13, v9);
          ++*(v3 + 32);
        }
      }

      v5 = *(v3 + 15);
      v4 = *(v3 + 17);
    }

    v4[v5] = a2;
    *(v3 + 15) = v5 + 1;
    ++*(v3 + 32);
    v12 = *re::networkLogObjects(this);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = a2;
      _os_log_impl(&dword_26168F000, v12, OS_LOG_TYPE_DEFAULT, "NetworkSyncManager: session scheduled (%p) for removal.", &v13, 0xCu);
    }
  }
}

void re::NetworkSyncManager::requestOwnership(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (!*a2)
  {
    v14 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v15 = "Requesting ownership for invalid object. Request is ignored.";
    v16 = v14;
    v17 = 2;
LABEL_28:
    _os_log_impl(&dword_26168F000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    return;
  }

  v12 = *(v6 + 80);
  if (v12)
  {
    do
    {
      v13 = v6;
      v6 = v12;
      if (*(*(*(v13 + 88) + 16) + 73))
      {
        break;
      }

      v12 = *(v12 + 80);
      v13 = v6;
    }

    while (v12);
  }

  else
  {
    v13 = *a2;
  }

  if (!*(v13 + 160))
  {
    v28 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v29 = *(*a2 + 24);
    *buf = 134217984;
    *&buf[4] = v29;
    v15 = "Requesting ownership for already owned object '%llu'. Request is ignored.";
    v16 = v28;
    v17 = 12;
    goto LABEL_28;
  }

  v18 = a1[10];
  if (v18)
  {
    v19 = a1[12];
    v20 = &v19[v18];
    do
    {
      (*(**v19 + 32))(buf);
      v21 = *a2;
      v22 = *(*a2 + 80);
      if (v22)
      {
        do
        {
          v23 = v21;
          v21 = v22;
          if (*(*(*(v23 + 88) + 16) + 73))
          {
            break;
          }

          v22 = *(v22 + 80);
          v23 = v21;
        }

        while (v22);
      }

      else
      {
        v23 = *a2;
      }

      hasPeerID = re::Session::hasPeerID(*buf, *(v23 + 160));
      if (*buf)
      {
      }

      if (hasPeerID)
      {
        v25 = *v19;
        v26 = *a2;
        v30 = v26;
        if (v26)
        {
          v27 = (v26 + 8);
        }

        (*(*v25 + 104))(v25, &v30, a3, a4, a5, a6);
        if (v30)
        {

          v30 = 0;
        }
      }

      ++v19;
    }

    while (v19 != v20);
  }
}

double re::NetworkSyncManager::adjustTimeForSender(re::NetworkSyncManager *this, double a2, uint64_t a3)
{
  v4 = *(this + 10);
  if (v4)
  {
    v6 = *(this + 12);
    v7 = 8 * v4;
    while (1)
    {
      (*(**v6 + 32))(&v10);
      hasPeerID = re::Session::hasPeerID(v10, a3);
      if (v10)
      {
      }

      if (hasPeerID)
      {
        break;
      }

      ++v6;
      v7 -= 8;
      if (!v7)
      {
        return a2;
      }
    }

    return (*(**v6 + 112))(*v6, a3, a2);
  }

  return a2;
}

void re::NetworkSyncManager::removeSession(re::NetworkSyncManager *this, unint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = *(this + 12);
  v5 = *(this + 10);
  if (v5)
  {
    v6 = 8 * v5;
    v7 = v4 + 8 * v5;
    while (1)
    {
      (*(**v4 + 32))(buf);
      v8 = *buf;
      if (*buf)
      {
      }

      if (v8 == a2)
      {
        break;
      }

      v4 += 8;
      v6 -= 8;
      if (!v6)
      {
        v4 = v7;
        break;
      }
    }

    v9 = v4;
    v4 = *(this + 12);
    v5 = *(this + 10);
  }

  else
  {
    v9 = *(this + 12);
  }

  if (v9 != v4 + 8 * v5)
  {
    (*(**v9 + 32))(&v38);
    re::Event<re::NetworkSyncService,re::SharedPtr<re::Session>>::raise(this + 248, this);
    if (v38)
    {

      v38 = 0;
    }

    if (*(a2 + 2272) == 1)
    {
      if (*(a2 + 1632))
      {
        v11 = 0;
        do
        {
          v12 = (*(a2 + 1648) + 32 * v11);
          if (*v12 == this)
          {
            if (!*(a2 + 1696))
            {
              v10 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((a2 + 1616), v11);
              continue;
            }

            buf[0] = 0;
            v13 = *v12;
            *&buf[24] = *(v12 + 1);
            *&buf[8] = v13;
            re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((a2 + 1656), buf);
          }

          ++v11;
        }

        while (v11 < *(a2 + 1632));
      }

      if (*(a2 + 224))
      {
        v14 = 0;
        do
        {
          v15 = (*(a2 + 240) + 32 * v14);
          if (*v15 == this)
          {
            if (!*(a2 + 288))
            {
              v10 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((a2 + 208), v14);
              continue;
            }

            buf[0] = 0;
            v16 = *v15;
            *&buf[24] = *(v15 + 1);
            *&buf[8] = v16;
            re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((a2 + 248), buf);
          }

          ++v14;
        }

        while (v14 < *(a2 + 224));
      }
    }

    v17 = *(this + 12);
    v18 = v9 - v17;
    v19 = (v9 - v17) >> 3;
    v20 = *(this + 10);
    if (v20 <= v18 >> 3)
    {
      v39 = 0;
      v49 = 0u;
      v50 = 0u;
      memset(buf, 0, sizeof(buf));
      v32 = MEMORY[0x277D86220];
      v33 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v40 = 136315906;
      v41 = "removeAt";
      v42 = 1024;
      if (v33)
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      v43 = 931;
      v44 = 2048;
      v45 = v19;
      v46 = 2048;
      v47 = v20;
      _os_log_send_and_compose_impl(v34, &v39, buf, 80, &dword_26168F000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v38);
      _os_crash_msg();
      __break(1u);
      goto LABEL_54;
    }

    v21 = v20 - 1;
    if (v20 - 1 > v19)
    {
      v22 = *(v17 + v18);
      v23 = v17 + 8 * v20;
      *(v17 + v18) = *(v23 - 8);
      *(v23 - 8) = v22;
      v17 = *(this + 12);
    }

    v24 = v17 + 8 * v20;
    v25 = *(v24 - 8);
    if (v25)
    {

      *(v24 - 8) = 0;
      v21 = *(this + 10) - 1;
    }

    *(this + 10) = v21;
    ++*(this + 22);
    v26 = *re::networkLogObjects(v10);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_26168F000, v26, OS_LOG_TYPE_DEFAULT, "NetworkSyncManager: session removed (%p).", buf, 0xCu);
    }
  }

  v27 = *(this + 17);
  v20 = *(this + 15);
  i = v27;
  if (v20)
  {
    v29 = 8 * v20;
    for (i = *(this + 17); *i != a2; i += 8)
    {
      v29 -= 8;
      if (!v29)
      {
        return;
      }
    }
  }

  v30 = &v27[8 * v20];
  if (i != v30)
  {
    v31 = i - v27;
    a2 = v31 >> 3;
    if (v20 > v31 >> 3)
    {
      if (v20 - 1 > a2)
      {
        *&v27[v31] = *(v30 - 1);
      }

      *(this + 15) = v20 - 1;
      ++*(this + 32);
      return;
    }

LABEL_54:
    v39 = 0;
    v49 = 0u;
    v50 = 0u;
    memset(buf, 0, sizeof(buf));
    v35 = MEMORY[0x277D86220];
    v36 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v40 = 136315906;
    v41 = "removeAt";
    v42 = 1024;
    if (v36)
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    v43 = 931;
    v44 = 2048;
    v45 = a2;
    v46 = 2048;
    v47 = v20;
    _os_log_send_and_compose_impl(v37, &v39, buf, 80, &dword_26168F000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v40, 38, v38);
    _os_crash_msg();
    __break(1u);
  }
}

void re::NetworkSyncManager::stopSyncWithSession(re::NetworkSyncManager *a1, re::Session **a2)
{
  v4 = *a2;
  if (v4)
  {

    re::NetworkSyncManager::removeSessionDeferred(a1, v4);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26168F000, v5, OS_LOG_TYPE_ERROR, "Invalid session object passed to stopSyncWithSession", v6, 2u);
    }
  }
}

void re::NetworkSyncManager::stopSync(re::NetworkSyncManager *this)
{
  v1 = *(this + 10);
  if (v1)
  {
    v3 = *(this + 12);
    v4 = 8 * v1;
    do
    {
      (*(**v3 + 32))(&v5);
      re::NetworkSyncManager::removeSessionDeferred(this, v5);
      if (v5)
      {
      }

      v3 += 8;
      v4 -= 8;
    }

    while (v4);
  }
}

uint64_t re::NetworkSyncManager::localPeerID(re::NetworkSyncManager *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return 0;
  }
}

unint64_t *re::NetworkSyncManager::getRoute@<X0>(re::NetworkSyncManager *this@<X0>, size_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = *(this + 18);
  if (result)
  {
    return re::RoutingTable::getRoute(result, a2, a3);
  }

  *a3 = 0;
  return result;
}

uint64_t re::make::shared::object<re::SyncObjectManager,re::SyncObjectManager::Config &>@<X0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 664, 8);
  result = re::SyncObjectManager::SyncObjectManager(v5, a1);
  *a2 = result;
  return result;
}

uint64_t re::Event<re::Session>::createSubscription<re::NetworkSyncManager>(re::NetworkSyncManager *,REEventHandlerResult (re::NetworkSyncManager::*)(re::Session*))::{lambda(re::Session*,re::Event<re::Session>::Subscription const&)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a1);
}

uint64_t re::Event<re::Session,re::SessionError>::createSubscription<re::NetworkSyncManager>(re::NetworkSyncManager *,REEventHandlerResult (re::NetworkSyncManager::*)(re::Session*,re::SessionError))::{lambda(re::Session*,re::Event<re::Session,re::SessionError>::Subscription const&,re::SessionError&&)#1}::__invoke(uint64_t a1, void *a2, unsigned int *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3);
}

uint64_t re::SyncAckedStateBuffer::addAcked(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  result = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::tryGet(a1 + 24, a2);
  if (result)
  {
    v9 = *(result + 8);
    if (v9 <= a4 && a4 - v9 < 0x8000 || v9 > a4 && v9 - a4 >= 0x8000)
    {
      *result = a3;
      *(result + 8) = a4;
    }
  }

  else
  {
    *&v10 = a3;
    WORD4(v10) = a4;
    return re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::add(a1 + 24, a2, &v10);
  }

  return result;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v6 + 16;
  }
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::add(uint64_t a1, uint64_t *a2, _OWORD *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addInternal<re::SharedPtr<re::SyncObject> const&,re::SyncAckedStateBuffer::AckData>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 40 * HIDWORD(v9) + 16;
  }
}

BOOL re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::removeInternal(a1, v5);
}

uint64_t *re::SyncAckedStateBuffer::getLatestAckedState(uint64_t a1, re::SyncObject **a2)
{
  result = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::tryGet(a1 + 24, a2);
  if (result)
  {
    return re::SyncObject::getState(*a2, *result);
  }

  return result;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addInternal<re::SharedPtr<re::SyncObject> const&,re::SyncAckedStateBuffer::AckData>(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  v7 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 8) = *a3;
  if (v8)
  {
    v9 = (v8 + 8);
  }

  *(v7 + 16) = *a4;
  ++*(a1 + 40);
  return v7 + 16;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 16;
            do
            {
              if ((*(v18 - 16) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(a1, *(v18 + 16) % *(a1 + 24), *(v18 + 16));
                *(v19 + 8) = *(v18 - 8);
                *(v18 - 8) = 0;
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 40;
            }

            while (v17 < v16);
          }

          re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 40 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 32) = a3;
  ++*(a1 + 28);
  return v20 + 40 * v5;
}

BOOL re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 40 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 40 * v5) = *(v6 + 40 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::free(a1, v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 40 * v9) = *(*(a1 + 16) + 40 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

void re::SyncObjectViewer::objectEnteredView(re *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  v4 = v3[10];
  v5 = v3;
  if (v4)
  {
    v6 = *(a2 + 8);
    do
    {
      v5 = v6;
      v6 = v4;
      if (*(*(v5[11] + 16) + 73))
      {
        break;
      }

      v4 = v4[10];
      v5 = v6;
    }

    while (v4);
  }

  if (*(v5 + 170) == 1)
  {
    v7 = *re::networkLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 7);
      v14 = *(v3[11] + 16);
      v15 = *(v14 + 48);
      v16 = *(v14 + 56);
      v17 = v14 + 49;
      if (v15)
      {
        v17 = v16;
      }

      v18 = v3[3];
      *buf = 134218498;
      *&buf[4] = v13;
      v21 = 2080;
      v22 = v17;
      v23 = 2048;
      v24 = v18;
      _os_log_debug_impl(&dword_26168F000, v7, OS_LOG_TYPE_DEBUG, "Peer %llu became aware of %s Guid=%llu", buf, 0x20u);
      v8 = a1 + 64;
      *buf = v3;
      v9 = v3 == 0;
      goto LABEL_9;
    }
  }

  v8 = a1 + 64;
  *buf = v3;
  if (v3)
  {
    v9 = 0;
LABEL_9:
    v10 = v3 + 1;
    goto LABEL_11;
  }

  v9 = 1;
LABEL_11:
  v19 = 0;
  v11 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::add(v8, buf, &v19);
  if (*buf)
  {
  }

  if (*v11)
  {
    if (v9)
    {
      re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(v8, v3);
    }

    else
    {
      v12 = v3 + 1;
      re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(v8, v3);
    }
  }
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::add(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::SharedPtr<re::SyncObject>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(&v9, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 16) = *a3;
  result = v7 + 16;
  *(result - 8) = *a2;
  *a2 = 0;
  ++*(a1 + 40);
  return result;
}

void re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::SharedPtr<re::SyncObject>,std::chrono::time_point<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(v11, a1, a2, v3 ^ (v3 >> 31));
  v4 = v13;
  if (v13 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = (v5 + 32 * v13);
    v7 = *v6 & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v12) = v7;
    }

    else
    {
      *(v5 + 32 * v14) = *(v5 + 32 * v14) & 0x80000000 | v7;
    }

    v8 = *v6;
    if (*v6 < 0)
    {
      v8 &= ~0x80000000;
      *v6 = v8;
      v9 = *(v6 + 1);
      if (v9)
      {

        *(v6 + 1) = 0;
        v5 = *(a1 + 16);
        v8 = *(v5 + 32 * v4);
      }
    }

    v10 = *(a1 + 40);
    *(v5 + 32 * v4) = *(a1 + 36) | v8 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v4;
    *(a1 + 40) = v10 + 1;
  }
}

void re::SyncObjectViewer::objectExitedView(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  v4 = [v3 + 1 retainCount];
  if (v4 <= 0)
  {
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) ", "object->retainCount() > 0", "objectExitedView", 38);
    _os_crash("assertion failure: (object->retainCount() > 0) ");
    __break(1u);
  }

  v6 = v3[10];
  v7 = v3;
  if (v6)
  {
    v8 = v3;
    do
    {
      v7 = v8;
      v8 = v6;
      if (*(*(v7[11] + 16) + 73))
      {
        break;
      }

      v6 = v6[10];
      v7 = v8;
    }

    while (v6);
  }

  if (*(v7 + 170) == 1)
  {
    v9 = *re::networkLogObjects(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 56);
      v16 = *(v3[11] + 16);
      v17 = *(v16 + 48);
      v18 = *(v16 + 56);
      v19 = v16 + 49;
      if (v17)
      {
        v19 = v18;
      }

      v20 = v3[3];
      *buf = 134218498;
      *&buf[4] = v15;
      v23 = 2080;
      v24 = v19;
      v25 = 2048;
      v26 = v20;
      _os_log_debug_impl(&dword_26168F000, v9, OS_LOG_TYPE_DEBUG, "Peer %llu lost awareness of %s Guid=%llu", buf, 0x20u);
      v10 = a1 + 64;
      *buf = v3;
      v11 = v3 == 0;
      goto LABEL_10;
    }
  }

  v10 = a1 + 64;
  *buf = v3;
  if (v3)
  {
    v11 = 0;
LABEL_10:
    v12 = v3 + 1;
    goto LABEL_12;
  }

  v11 = 1;
LABEL_12:
  v21 = 1;
  v13 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::add(v10, buf, &v21);
  if (*buf)
  {
  }

  if (*v13 != 1)
  {
    if (v11)
    {
      re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(v10, v3);
    }

    else
    {
      v14 = v3 + 1;
      re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(v10, v3);
    }
  }
}

void re::SyncObjectViewer::~SyncObjectViewer(re::SyncObjectViewer *this)
{
  *this = &unk_2873F5B80;
  re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 8);

  re::SyncViewer::~SyncViewer(this);
}

{
  *this = &unk_2873F5B80;
  re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 8);
  re::SyncViewer::~SyncViewer(this);

  JUMPOUT(0x266708EC0);
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DataArrayHandle<re::internal::TypeInfoIndex>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 16;
            do
            {
              if ((*(v18 - 16) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncObjectViewer::Op,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(a1, *(v18 + 8) % *(a1 + 24), *(v18 + 8));
                *(v19 + 8) = *(v18 - 8);
                *(v18 - 8) = 0;
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 32;
            }

            while (v17 < v16);
          }

          re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + 32 * v5;
}

void *RESyncWriteContextMarkDestroyed(void *result)
{
  *(*result + 16) |= 2u;
  *(**result + 128) |= 4u;
  v1 = result[1];
  *(v1 + 84) = 0;
  *(v1 + 88) = 0;
  ++*(v1 + 80);
  return result;
}

uint64_t re::SyncPacker::packCommit(void *a1, unsigned __int8 *a2, re::BitWriter *this, uint64_t a4, unint64_t a5)
{
  v8 = a4;
  v10 = a2;
  v202 = *MEMORY[0x277D85DE8];
  if ((*(a4 + 32) & 0x20) != 0)
  {
    v5 = v190;
    re::BitWriter::alignToByte(this);
    v16 = re::BitWriter::bytesLeft(this, v15);
    LODWORD(v17) = *(this + 6);
    if (*(this + 7))
    {
      v17 = (v17 + 1);
    }

    else
    {
      v17 = v17;
    }

    v177 = this;
    v178 = v17;
    v179 = 0;
    v18 = *(this + 1);
    v6 = &unk_2873F6A68;
    *v190 = &unk_2873F6A68;
    *&v190[8] = v18 + v17;
    *&v190[16] = 0;
    *&v190[20] = v16;
    v191 = &v177;
    v192 = re::SyncPacker::packCommit(re::SyncCommit const&,re::BitWriter &,re::SyncObjectWriteContext const&,unsigned long)::$_0::__invoke;
    v193 = 0u;
    v194 = 0u;
    re::DynamicString::setCapacity(&v193, 0);
    v195 = 6;
    v196 = 0;
    *v190 = &unk_2873F6BA8;
    v179 = v190;
    if (*(v10 + 6) < 0xFFFFFFFFuLL)
    {
      LODWORD(v5) = *&v190[16];
      re::snapshot::EncoderOPACK::beginObject(v190);
      v20 = *&v190[16];
      if (*&v190[16] < *&v190[20])
      {
        ++*&v190[16];
        *(*&v190[8] + v20) = 9;
LABEL_13:
        re::snapshot::EncoderOPACK::writeInteger(v190, *v10);
        if ((*v10 & 2) != 0)
        {
          v21 = *&v190[16];
          if (*&v190[16] >= *&v190[20])
          {
            re::snapshot::EncoderOPACK::writeInteger(v190, 2);
          }

          else
          {
            ++*&v190[16];
            *(*&v190[8] + v21) = 10;
          }

          re::snapshot::EncoderOPACK::writeInteger(v190, *(v10 + 2));
        }

        re::snapshot::EncoderOPACK::endObject(v190);
        re::snapshot::EncoderOPACK::beginObject(v190);
        if (*&v190[16] >= *&v190[20] && (re::snapshot::BufferEncoder::grow(v190, *&v190[16] + 1) & 1) == 0)
        {
          v14 = 0;
          *&v190[16] = v5;
          goto LABEL_206;
        }

        v166 = v6;
        if (*(v10 + 6) <= a5)
        {
          v168 = 0;
          v175 = 0;
          goto LABEL_205;
        }

        v175 = 0;
        v168 = 0;
        while (1)
        {
          v22 = *(v10 + 8) + 24 * a5;
          v23 = *v22;
          v24 = *(*(*v22 + 88) + 16);
          v25 = *(v24 + 128);
          if (v25)
          {
            if (!(*(v25 + 16))(v25, v8))
            {
              ++v168;
              goto LABEL_99;
            }

            v23 = *v22;
            v24 = *(*(*v22 + 88) + 16);
          }

          v170 = *&v190[16];
          v26 = (*(**a1 + 32))(*a1, *(v23 + 24), *(v24 + 32));
          re::snapshot::EncoderOPACK::writeInteger(v190, v26);
          v27 = a1[1];
          if (!v27 || ((v28 = *(*(v23 + 88) + 16), v29 = *(v28 + 104), v30 = *(v28 + 120), v29) ? (v31 = v30 == 0) : (v31 = 1), v31 || (*(v22 + 16) & 1) != 0))
          {
            v32 = 0;
            LatestAckedState = 0;
          }

          else
          {
            LatestAckedState = re::SyncAckedStateBuffer::getLatestAckedState(v27, v22);
            v32 = v87;
          }

          v34 = *(v23 + 80);
          v35 = v23;
          if (v34)
          {
            v36 = v23;
            do
            {
              v35 = v36;
              v36 = v34;
              if (*(*(v35[11] + 16) + 73))
              {
                break;
              }

              v34 = v34[10];
              v35 = v36;
            }

            while (v34);
          }

          v37 = (LatestAckedState == 0) | (2 * *(v22 + 16)) & 5;
          if (!v35[20] && v35[17])
          {
            v37 |= 0x10u;
          }

          re::snapshot::EncoderOPACK::beginObject(v190);
          v38 = *&v190[16];
          if (*&v190[16] >= *&v190[20])
          {
            re::snapshot::EncoderOPACK::writeInteger(v190, 1);
          }

          else
          {
            ++*&v190[16];
            *(*&v190[8] + v38) = 9;
          }

          re::snapshot::EncoderOPACK::writeInteger(v190, v37);
          v39 = *(v23 + 176);
          v40 = *&v190[16];
          if (*&v190[16] >= *&v190[20])
          {
            re::snapshot::EncoderOPACK::writeInteger(v190, 2);
          }

          else
          {
            ++*&v190[16];
            *(*&v190[8] + v40) = 10;
          }

          re::snapshot::EncoderOPACK::writeInteger(v190, v39);
          v41 = *(v23 + 80);
          v42 = v23;
          if (v41)
          {
            v43 = v23;
            do
            {
              v42 = v43;
              v43 = v41;
              if (*(*(*(v42 + 88) + 16) + 73))
              {
                break;
              }

              v41 = *(v41 + 80);
              v42 = v43;
            }

            while (v41);
          }

          v44 = *&v190[16];
          if (*&v190[16] >= *&v190[20])
          {
            re::snapshot::EncoderOPACK::writeInteger(v190, 3);
          }

          else
          {
            ++*&v190[16];
            *(*&v190[8] + v44) = 11;
          }

          re::snapshot::EncoderOPACK::beginObject(v190);
          re::snapshotMapFields(v190, (v42 + 136), v45);
          re::snapshot::EncoderOPACK::endObject(v190);
          if ((v37 & 5) != 0)
          {
            v46 = *(v23 + 24);
            v47 = *&v190[16];
            if (*&v190[16] >= *&v190[20])
            {
              re::snapshot::EncoderOPACK::writeInteger(v190, 5);
            }

            else
            {
              ++*&v190[16];
              *(*&v190[8] + v47) = 13;
            }

            re::snapshot::EncoderOPACK::writeInteger(v190, v46);
            v48 = *(*(*(v23 + 88) + 16) + 32);
            v49 = *&v190[16];
            if (*&v190[16] >= *&v190[20])
            {
              re::snapshot::EncoderOPACK::writeInteger(v190, 6);
            }

            else
            {
              ++*&v190[16];
              *(*&v190[8] + v49) = 14;
            }

            re::snapshot::EncoderOPACK::writeInteger(v190, v48);
          }

          if (LatestAckedState)
          {
            v50 = *&v190[16];
            if (*&v190[16] >= *&v190[20])
            {
              re::snapshot::EncoderOPACK::writeInteger(v190, 7);
            }

            else
            {
              ++*&v190[16];
              *(*&v190[8] + v50) = 15;
            }

            re::snapshot::EncoderOPACK::writeInteger(v190, v32);
          }

          if (v37)
          {
            v51 = *(v23 + 80);
            if (v51)
            {
              v52 = (v51 + 8);

              v53 = *(v23 + 80);
              if (v53)
              {
                v54 = (v53 + 8);
              }

              v55 = *(*(*(v53 + 88) + 16) + 32);
              v56 = *&v190[16];
              if (*&v190[16] >= *&v190[20])
              {
                re::snapshot::EncoderOPACK::writeInteger(v190, 8);
              }

              else
              {
                ++*&v190[16];
                *(*&v190[8] + v56) = 16;
              }

              re::snapshot::EncoderOPACK::writeInteger(v190, v55);

              v57 = *(v23 + 80);
              if (v57)
              {
                v58 = (v57 + 8);
              }

              v59 = *(v57 + 24);
              v60 = *&v190[16];
              if (*&v190[16] >= *&v190[20])
              {
                re::snapshot::EncoderOPACK::writeInteger(v190, 9);
              }

              else
              {
                ++*&v190[16];
                *(*&v190[8] + v60) = 17;
              }

              re::snapshot::EncoderOPACK::writeInteger(v190, v59);
            }
          }

          v61 = *&v190[16];
          if (*&v190[16] >= *&v190[20])
          {
            re::snapshot::EncoderOPACK::writeInteger(v190, 11);
          }

          else
          {
            ++*&v190[16];
            *(*&v190[8] + v61) = 19;
          }

          LatestState = re::SyncObject::getLatestState(v23);
          if (LatestState)
          {
            v63 = *(*(v23 + 88) + 16);
            v64 = *(LatestState + 24);
            if (*(LatestState + 28))
            {
              ++v64;
            }

            v180 = *(LatestState + 8);
            v181 = v64;
            v182 = 0;
            v183 = 0;
            v184 = 0;
            v65 = *&v190[16];
            re::snapshot::EncoderOPACK::beginData(v190, 0, 0xFFFFFFFFuLL);
            v66 = *&v190[16];
            *&buf[8] = *&v190[8] + *&v190[16];
            *&buf[16] = *&v190[20] - *&v190[16];
            buf[20] = 0;
            v198 = 0;
            v199 = 0;
            *buf = &unk_2873F5BD0;
            v200 = *&v190[16];
            v201 = v190;
            if (LatestAckedState)
            {
              v67 = *(LatestAckedState + 6);
              if (*(LatestAckedState + 7))
              {
                ++v67;
              }

              v185 = LatestAckedState[1];
              v186 = v67;
              v187 = 0;
              v188 = 0;
              v189 = 0;
              (*(*(v63 + 120) + 16))();
            }

            else
            {
              (*(*(v63 + 112) + 16))();
            }

            re::BitWriter::alignToByte(buf);
            v75 = v198 + v200;
            if (HIDWORD(v198))
            {
              ++v75;
            }

            *(v201 + 4) = v75;
            v76 = *&v190[16];
            *&v190[16] = v65;
            re::snapshot::EncoderOPACK::beginData(v190, v76 - v66, 0xFFFFFFFFuLL);
            *&v190[16] = v76;
          }

          else
          {
            v68 = *re::networkLogObjects(0);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              v69 = *(v23 + 24);
              v70 = *(*(v23 + 88) + 16);
              v71 = v70[4];
              v72 = v70[6];
              v73 = v70[7];
              v74 = v70 + 49;
              if (v72)
              {
                v74 = v73;
              }

              *buf = 134218498;
              *&buf[4] = v69;
              *&buf[12] = 2048;
              *&buf[14] = v71;
              *&buf[22] = 2080;
              v198 = v74;
              _os_log_error_impl(&dword_26168F000, v68, OS_LOG_TYPE_ERROR, "Could not find latest state for object (id: %llu, type: %llu[%s]).", buf, 0x20u);
            }
          }

          v77 = re::snapshot::EncoderOPACK::endObject(v190);
          if (BYTE8(v193))
          {
            v78 = *(&v193 + 1) >> 1;
          }

          else
          {
            v78 = BYTE8(v193) >> 1;
          }

          v8 = a4;
          if (v78)
          {
            v159 = *(a1 + 16);
            v160 = *re::networkLogObjects(v77);
            if (v159 == 1)
            {
              if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
              {
                if (BYTE8(v193))
                {
                  v161 = v194;
                }

                else
                {
                  v161 = &v193 + 9;
                }

                *buf = 136315138;
                *&buf[4] = v161;
                _os_log_debug_impl(&dword_26168F000, v160, OS_LOG_TYPE_DEBUG, "Error writing OPACK object data: %s", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
            {
              if (BYTE8(v193))
              {
                v163 = v194;
              }

              else
              {
                v163 = &v193 + 9;
              }

              *buf = 136315138;
              *&buf[4] = v163;
              _os_log_error_impl(&dword_26168F000, v160, OS_LOG_TYPE_ERROR, "Error writing OPACK object data: %s", buf, 0xCu);
            }

LABEL_204:
            *&v190[16] = v170;
LABEL_205:
            re::snapshot::EncoderOPACK::endObject(v190);
            v14 = v175 + v168;
            LODWORD(v5) = *&v190[16];
            v6 = v166;
LABEL_206:
            re::BitWriter::rollbackTo(this, (v5 + v178));
            *v190 = v6;
            if (v193 && (BYTE8(v193) & 1) != 0)
            {
              (*(*v193 + 40))();
            }

            return v14;
          }

          if (*&v190[16] >= *&v190[20] && !re::snapshot::BufferEncoder::grow(v190, *&v190[16] + 1))
          {
            goto LABEL_204;
          }

          ++v175;
          v79 = *a4;
          if (*a4)
          {
            v80 = *&v190[16];
            (*(**(a4 + 8) + 32))(buf);
            v81 = *buf;
            if (*buf)
            {
            }

            v82 = *(*v22 + 80);
            v83 = *(*(*(*v22 + 88) + 16) + 32);
            v84 = *(*v22 + 24);
            if (v82)
            {
              v85 = *(v82 + 24);
            }

            else
            {
              v85 = 0;
            }

            v86 = (*(*v79 + 80))(v79);
            re::Event<re::NetworkSyncService,re::Session *,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned int>::raise(v86, v79, v81, *(a4 + 16), v83, v84, v85, 8 * (v80 - v170));
          }

          v10 = a2;
LABEL_99:
          if (++a5 >= *(v10 + 6))
          {
            goto LABEL_205;
          }
        }
      }

LABEL_216:
      re::snapshot::EncoderOPACK::writeInteger(v190, 1);
      goto LABEL_13;
    }

LABEL_215:
    re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) ", "commit.snapshot.size() < ~uint32_t()", "writeCommit", 123);
    _os_crash("assertion failure: (commit.snapshot.size() < ~uint32_t()) ");
    __break(1u);
    goto LABEL_216;
  }

  if (*(a2 + 6) >= 0xFFFFFFFFuLL)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "commit.snapshot.size() < ~uint32_t()", "writeCommit", 189);
    _os_crash("assertion failure: (commit.snapshot.size() < ~uint32_t()) ");
    __break(1u);
    goto LABEL_215;
  }

  v11 = *(this + 3);
  re::BitWriter::writeUInt32Bits(this, *a2, 8u);
  if ((*v10 & 2) != 0)
  {
    v12 = *(a2 + 5);
    re::BitWriter::writeUInt32Bits(this, *(a2 + 4), 0x20u);
    re::BitWriter::writeUInt32Bits(this, v12, 0x20u);
  }

  v13 = *(this + 3);
  re::BitWriter::writeUInt32Bits(this, 0, 0x20u);
  if (*(this + 20))
  {
    re::BitWriter::rollbackTo(this, v11);
    return 0;
  }

  v164 = v13;
  v88 = a2;
  if (*(a2 + 6) <= a5)
  {
    v167 = 0;
    v89 = 0;
    goto LABEL_202;
  }

  v89 = 0;
  v167 = 0;
  while (1)
  {
    v90 = *(v88 + 8) + 24 * a5;
    v91 = *v90;
    v92 = *(*(*(*v90 + 88) + 16) + 128);
    if (!v92)
    {
      break;
    }

    if ((*(v92 + 16))(v92, v8))
    {
      v91 = *v90;
      break;
    }

    ++v167;
LABEL_190:
    if (++a5 >= *(v88 + 6))
    {
      goto LABEL_202;
    }
  }

  v93 = a1[1];
  v169 = *(this + 3);
  if (!v93 || ((v94 = *(*(v91 + 88) + 16), v95 = *(v94 + 104), v96 = *(v94 + 120), v95) ? (v97 = v96 == 0) : (v97 = 1), v97 || (*(v90 + 16) & 1) != 0))
  {
    v98 = 0;
    v99 = 0;
  }

  else
  {
    v99 = re::SyncAckedStateBuffer::getLatestAckedState(v93, v90);
    v98 = v158;
  }

  v176 = v90;
  v100 = *(v91 + 80);
  v101 = v91;
  if (v100)
  {
    v102 = v91;
    do
    {
      v101 = v102;
      v102 = v100;
      if (*(*(v101[11] + 16) + 73))
      {
        break;
      }

      v100 = v100[10];
      v101 = v102;
    }

    while (v100);
  }

  v103 = (v99 == 0) | (2 * *(v90 + 16)) & 5;
  if (!v101[20] && v101[17])
  {
    v103 |= 0x10u;
  }

  re::BitWriter::alignToByte(this);
  re::BitWriter::writeUInt32Bits(this, v103, 8u);
  re::BitWriter::writeUInt32Bits(this, *(v91 + 176), 0x10u);
  v104 = *(v91 + 80);
  v105 = v91;
  if (v104)
  {
    v106 = v91;
    do
    {
      v105 = v106;
      v106 = v104;
      if (*(*(*(v105 + 88) + 16) + 73))
      {
        break;
      }

      v104 = *(v104 + 80);
      v105 = v106;
    }

    while (v104);
  }

  re::SyncOwnershipInfo::write((v105 + 136), this, 1);
  v107 = (*(**a1 + 32))(*a1, *(v91 + 24), *(*(*(v91 + 88) + 16) + 32));
  *v190 = 0;
  re::BiasedVLQ::write(v190, this, v107);
  if ((v103 & 5) != 0)
  {
    v108 = *(v91 + 28);
    re::BitWriter::writeUInt32Bits(this, *(v91 + 24), 0x20u);
    re::BitWriter::writeUInt32Bits(this, v108, 0x20u);
    v109 = *(*(v91 + 88) + 16);
    v110 = *(v109 + 36);
    re::BitWriter::writeUInt32Bits(this, *(v109 + 32), 0x20u);
    re::BitWriter::writeUInt32Bits(this, v110, 0x20u);
  }

  if (v99)
  {
    re::BitWriter::writeUInt32Bits(this, v98, 0x10u);
  }

  if (v103)
  {
    v111 = *(v91 + 80);
    if (v111)
    {
      v112 = (v111 + 8);

      v113 = *(v91 + 80);
      if (v113)
      {
        v114 = (v113 + 8);
      }

      v115 = *(*(*(v113 + 88) + 16) + 32);

      v116 = *(v91 + 80);
      if (v116)
      {
        v117 = (v116 + 8);
      }

      v118 = *(v116 + 24);
    }

    else
    {
      v115 = 0;
      v118 = 0;
    }

    re::BitWriter::writeUInt32Bits(this, v115, 0x20u);
    re::BitWriter::writeUInt32Bits(this, HIDWORD(v115), 0x20u);
    re::BitWriter::writeUInt32Bits(this, v118, 0x20u);
    re::BitWriter::writeUInt32Bits(this, HIDWORD(v118), 0x20u);
  }

  v119 = v176;
  if ((*(this + 20) & 1) == 0)
  {
    v120 = re::SyncObject::getLatestState(v91);
    v171 = v89;
    if (v120)
    {
      v121 = *(*(v91 + 88) + 16);
      v122 = *(v120 + 24);
      if (*(v120 + 28))
      {
        ++v122;
      }

      *buf = *(v120 + 8);
      *&buf[8] = v122;
      buf[12] = 0;
      *&buf[16] = 0;
      v198 = 0;
      v123 = *(this + 3);
      re::BitWriter::writeUInt32Bits(this, 0, 8u);
      v124 = *(this + 3);
      if (v99)
      {
        v125 = *(v99 + 6);
        if (*(v99 + 7))
        {
          ++v125;
        }

        *v190 = v99[1];
        *&v190[8] = v125;
        v190[12] = 0;
        *&v190[16] = 0;
        v191 = 0;
        (*(*(v121 + 120) + 16))();
      }

      else
      {
        (*(*(v121 + 112) + 16))();
      }

      re::BitWriter::alignToByte(this);
      v133 = *(this + 3);
      v134 = (v133 - v124);
      if (v134 >= 0x80)
      {
        v165 = v123;
        v135 = 0;
        v136 = (v133 - v124);
        do
        {
          v137 = v135;
          v138 = v136 >> 14;
          v136 >>= 7;
          ++v135;
        }

        while (v138);
        if (HIDWORD(v133))
        {
          LODWORD(v133) = v133 + 1;
        }

        *v190 = *(this + 1);
        *&v190[8] = v133;
        v190[12] = 0;
        *&v190[16] = 0;
        v191 = 0;
        re::BitReader::seekTo(v190, v124);
        v139 = *&v190[8];
        v140 = *v190;
        v141 = *&v190[16];
        v142 = *&v190[20];
        v143 = v191;
        v144 = ~v137;
        v145 = v190[12];
        do
        {
          if (v145)
          {
            v146 = 0;
            v145 = 1;
          }

          else if (v142 + 8 * (v139 - v141) >= 8)
          {
            if (v142 <= 7)
            {
              v147 = *(v140 + v141++);
              v143 |= v147 << v142;
              v142 |= 8u;
            }

            v145 = 0;
            v146 = v143;
            v143 >>= 8;
            v142 -= 8;
          }

          else
          {
            v142 = 0;
            v146 = 0;
            v145 = 1;
            v141 = v139;
          }

          re::BitWriter::writeUInt32Bits(this, v146, 8u);
        }

        while (!__CFADD__(v144++, 1));
        v8 = a4;
        v89 = v171;
        v119 = v176;
        v123 = v165;
      }

      if ((*(this + 20) & 1) == 0)
      {
        v149 = *(this + 3);
        re::BitWriter::rollbackTo(this, v123);
        *v190 = 0;
        re::BiasedVLQ::write(v190, this, v134);
        re::BitWriter::rollbackTo(this, v149);
      }
    }

    else
    {
      v126 = *re::networkLogObjects(0);
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        v127 = *(v91 + 24);
        v128 = *(*(v91 + 88) + 16);
        v129 = v128[4];
        v130 = v128[6];
        v131 = v128[7];
        v132 = (v128 + 49);
        if (v130)
        {
          v132 = v131;
        }

        *v190 = 134218498;
        *&v190[4] = v127;
        *&v190[12] = 2048;
        *&v190[14] = v129;
        *&v190[22] = 2080;
        v191 = v132;
        _os_log_error_impl(&dword_26168F000, v126, OS_LOG_TYPE_ERROR, "Could not find latest state for object (id: %llu, type: %llu[%s]).", v190, 0x20u);
      }
    }

    if ((*(this + 20) & 1) == 0)
    {
      v150 = *v8;
      if (*v8)
      {
        v152 = *(this + 6);
        v151 = *(this + 7);
        (*(**(v8 + 8) + 32))(v190);
        v153 = *v190;
        if (*v190)
        {
        }

        v154 = *(*v119 + 80);
        v89 = *(*(*(*v119 + 88) + 16) + 32);
        v155 = *(*v119 + 24);
        if (v154)
        {
          v156 = *(v154 + 24);
        }

        else
        {
          v156 = 0;
        }

        v157 = (*(*v150 + 80))(v150);
        re::Event<re::NetworkSyncService,re::Session *,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned int>::raise(v157, v150, v153, *(v8 + 16), v89, v155, v156, v151 - HIDWORD(v169) + 8 * (v152 - v169));
        LODWORD(v89) = v171;
      }

      v89 = (v89 + 1);
      v88 = a2;
      goto LABEL_190;
    }
  }

  re::BitWriter::rollbackTo(this, v169);
LABEL_202:
  re::BitWriter::writeUInt32At(this, v164, v89);
  return (v89 + v167);
}

uint64_t re::SyncPacker::packCommit(re::SyncCommit const&,re::BitWriter &,re::SyncObjectWriteContext const&,unsigned long)::$_0::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  re::BitWriter::rollbackTo(*a1, (*(*(a1 + 16) + 16) + v5));
  (*(*v4 + 16))(v4, a3);
  re::BitWriter::bytesLeft(v4, v6);
  return *(v4 + 1) + v5;
}

uint64_t anonymous namespace::SnapshotBitWriter::grow(_anonymous_namespace_::SnapshotBitWriter *this, unsigned int a2)
{
  result = *(this + 6);
  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = v4 + a2;
  if (v6 <= v5)
  {
    goto LABEL_2;
  }

  result = re::snapshot::BufferEncoder::grow(result, v6);
  if (result)
  {
    result = *(this + 6);
    LODWORD(v4) = *(result + 16);
    LODWORD(v5) = *(result + 20);
LABEL_2:
    *(this + 1) = *(result + 8) + *(this + 5);
    *(this + 4) = v5 - v4;
  }

  return result;
}

double RESyncViewCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 136, 8);

  return re::SyncView::SyncView(v2);
}

void RESyncViewSetUserData(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *(a1 + 128) = a2;
  }

  else
  {
    v2 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "RESyncViewSetUserData";
      v5 = 2080;
      v6 = "view != __null";
      _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
    }
  }
}

uint64_t RESyncViewGetUserData(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    return *(a1 + 128);
  }

  v2 = *re::networkLogObjects(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "RESyncViewGetUserData";
    v5 = 2080;
    v6 = "view != __null";
    _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
  }

  return 0;
}

uint64_t RESyncViewGetObjectCount(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    return *(a1 + 68);
  }

  v2 = *re::networkLogObjects(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "RESyncViewGetObjectCount";
    v5 = 2080;
    v6 = "view != __null";
    _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
  }

  return 0;
}

void RESyncViewSetOwnerPeerID(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *(a1 + 32) = a2;
  }

  else
  {
    v2 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "RESyncViewSetOwnerPeerID";
      v5 = 2080;
      v6 = "view != __null";
      _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
    }
  }
}

uint64_t RESyncViewGetOwnerPeerID(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    return *(a1 + 32);
  }

  v2 = *re::networkLogObjects(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "RESyncViewGetOwnerPeerID";
    v5 = 2080;
    v6 = "view != __null";
    _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
  }

  return 0;
}

void RESyncViewSetFromPeerID(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *(a1 + 24) = a2;
  }

  else
  {
    v2 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "RESyncViewSetFromPeerID";
      v5 = 2080;
      v6 = "view != __null";
      _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
    }
  }
}

uint64_t RESyncViewGetFromPeerID(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    return *(a1 + 24);
  }

  v2 = *re::networkLogObjects(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "RESyncViewGetFromPeerID";
    v5 = 2080;
    v6 = "view != __null";
    _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
  }

  return 0;
}

void RESyncViewEnumerateObjects(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v9 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = 136315394;
    v11 = "RESyncViewEnumerateObjects";
    v12 = 2080;
    v13 = "view != __null";
    goto LABEL_23;
  }

  if (!a2)
  {
    v9 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v10 = 136315394;
    v11 = "RESyncViewEnumerateObjects";
    v12 = 2080;
    v13 = "cb != __null";
LABEL_23:
    _os_log_error_impl(&dword_26168F000, v9, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v10, 0x16u);
    return;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = 0;
    v6 = (*(a1 + 56) + 8);
    while (1)
    {
      v7 = *v6;
      v6 += 6;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a1 + 72);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  while (v5 != v4)
  {
    if (!(*(a2 + 16))(a2, *(*(*(a1 + 56) + 24 * v5 + 16) + 8)))
    {
      break;
    }

    v8 = *(a1 + 72);
    if (v8 <= v5 + 1)
    {
      v8 = v5 + 1;
    }

    while (v8 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(a1 + 56) + 24 * v5 + 8) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v5) = v8;
LABEL_17:
    ;
  }
}

uint64_t re::LeaderElectionLowestPeerID::setup(re::LeaderElectionLowestPeerID *this, uint64_t a2)
{
  result = (*(*this + 72))(this);
  if (result)
  {
    *(*(this + 4) + 3136) = a2;
  }

  return result;
}

uint64_t re::LeaderElectionLowestPeerID::processCapabilities(uint64_t this)
{
  v1 = *(this + 32);
  if (*(v1 + 2184) == 1)
  {
    *(v1 + 3280) |= 1u;
  }

  return this;
}

unint64_t re::LeaderElectionLowestPeerID::handleMigration(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(a3 + 32);
  v5 = 8 * v3;
  v6 = a2;
  do
  {
    v7 = *v4++;
    v8 = *(v7 + 24);
    if (v6 >= v8)
    {
      v6 = v8;
    }

    v5 -= 8;
  }

  while (v5);
  if (v6 == a2)
  {
LABEL_7:
    *(*(a1 + 32) + 3280) |= 1u;
    return a2;
  }

  return v6;
}

void re::LeaderElectionLowestPeerID::removePeer(re::LeaderElectionLowestPeerID *this, uint64_t a2)
{
  v2 = *(this + 4);
  if (*(v2 + 3136) == a2)
  {
    re::Session::stateEvent(v2, 4);
  }
}

void re::LeaderElectionLowestPeerID::~LeaderElectionLowestPeerID(re::LeaderElectionLowestPeerID *this)
{
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

re::Transport *re::Transport::Transport(re::Transport *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_2873F5CB0;
  *(this + 3) = &unk_2873F5D18;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 152) = 0u;
  *(this + 42) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 92) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 172) = 0x1FFFFFFFFLL;
  *(this + 46) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 54) = 0;
  *(this + 24) = 0;
  *(this + 64) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 292) = 0u;
  *(this + 308) = 0x7FFFFFFFLL;
  *(this + 340) = 0;
  *(this + 92) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 336) = 0;
  *(this + 47) = 0;
  *(this + 48) = 0;
  *(this + 392) = 1;
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 106) = 0;
  *(this + 50) = 0;
  *(this + 116) = 0;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 63) = 0;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  re::DynamicString::setCapacity(this + 60, 0);
  *(this + 64) = 0;
  *(this + 70) = 0;
  *(this + 72) = 0;
  *(this + 71) = 0;
  *(this + 292) = 257;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  re::PacketPool::make(0, 0, &v5);
  v3 = *(this + 48);
  *(this + 48) = v5;
  if (v3)
  {
  }

  return this;
}

void re::Transport::~Transport(re::Transport *this)
{
  *this = &unk_2873F5CB0;
  *(this + 3) = &unk_2873F5D18;
  if (*(this + 9))
  {
    re::Transport::deinit(this);
  }

  v2 = *(this + 72);
  if (v2)
  {

    *(this + 72) = 0;
  }

  v3 = *(this + 71);
  if (v3)
  {

    *(this + 71) = 0;
  }

  v4 = *(this + 70);
  if (v4)
  {

    *(this + 70) = 0;
  }

  re::DynamicString::deinit((this + 480));
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 440);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 400);
  v5 = *(this + 48);
  if (v5)
  {

    *(this + 48) = 0;
  }

  v6 = *(this + 47);
  if (v6)
  {
    dispatch_release(v6);
  }

  re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::deinit(this + 34);
  re::DynamicArray<re::SharedPtr<re::SyncObject>>::deinit(this + 232);
  re::DynamicArray<re::SharedPtr<re::SyncObject>>::deinit(this + 192);
  re::DataArray<re::Connection>::deinit(this + 120);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 120);
  re::DynamicArray<re::DynamicString>::deinit(this + 80);
  v7 = *(this + 9);
  if (v7)
  {

    *(this + 9) = 0;
  }

  v8 = *(this + 4);
  if (v8)
  {
    v9 = *(this + 8);
    if (v9)
    {
      v10 = *(this + 6);
      if (v10)
      {
        v11 = 8 * v10;
        do
        {
          objc_destroyWeak(v9);
          *v9++ = 0;
          v11 -= 8;
        }

        while (v11);
        v8 = *(this + 4);
        v9 = *(this + 8);
      }

      (*(*v8 + 40))(v8, v9);
    }

    *(this + 8) = 0;
    *(this + 5) = 0;
    *(this + 6) = 0;
    *(this + 4) = 0;
    ++*(this + 14);
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::Transport::~Transport(this);

  JUMPOUT(0x266708EC0);
}

double re::Transport::deinit(re::Transport *this)
{
  v27 = *MEMORY[0x277D85DE8];
  atomic_store(0, this + 336);
  v2 = *(this + 72);
  if (v2)
  {

    *(this + 72) = 0;
  }

  dispatch_queue_set_specific(*(this + 47), this, 0, 0);
  v3 = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::DataArrayIterator(&v22, this + 120);
  v20 = v22;
  v21 = v23;
  if ((this + 120) != v22 || v23 != 0xFFFFFFFFLL)
  {
    do
    {
      v5 = *(this + 70);
      if (v5)
      {
        v6 = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::handle(&v20);
        (*(*v5 + 40))(v5, this, v6);
      }

      if (*re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(&v20) == 1)
      {
        v7 = *(this + 76);
        v8 = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::handle(&v20);
        (*(*v7 + 8))(v7, v8);
        v9 = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(&v20);
        v10 = *(v9 + 5);
        if (v10)
        {
          v11 = (v10 + 8);
          v9 = (v10 + 8);
        }

        v12 = re::globalAllocators(v9)[2];
        v24 = v10;
        v25 = v12;
        v22 = &unk_2873F5DA8;
        v23 = this;
        v26 = &v22;
        (*(**(this + 41) + 16))(*(this + 41), &v22);
        re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v22);
        if (v10)
        {
        }
      }

      if (*(re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(&v20) + 40))
      {
        v13 = *(re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(&v20) + 40);
        if (v13)
        {
          v14 = (v13 + 8);
        }

        os_unfair_lock_lock((v13 + 1764));
        *(v13 + 24) = 0;
        os_unfair_lock_unlock((v13 + 1764));
        v15 = re::globalAllocators((v13 + 8))[2];
        v24 = v13;
        v25 = v15;
        v22 = &unk_2873F5E00;
        v23 = this;
        v26 = &v22;
        (*(**(this + 41) + 16))(*(this + 41), &v22);
        re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v22);
      }

      v3 = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(&v20);
    }

    while (v20 != (this + 120) || v21 != 0xFFFF || HIWORD(v21) != 0xFFFF);
  }

  v25 = re::globalAllocators(v3)[2];
  v26 = &v22;
  v22 = &unk_2873F5E58;
  v23 = this;
  (*(**(this + 41) + 16))(*(this + 41), &v22);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v22);
  (*(**(this + 41) + 32))(*(this + 41));
  (*(**(this + 40) + 32))(*(this + 40));
  re::DataArray<re::Connection>::deinit(this + 120);
  re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::deinit(this + 34);
  re::internal::destroyPersistent<re::TransportCommands>(*(this + 41));
  *(this + 41) = 0;
  re::internal::destroyPersistent<re::TransportCommands>(*(this + 40));
  *(this + 40) = 0;
  v16 = *(this + 9);
  if (v16)
  {

    *(this + 9) = 0;
  }

  v17 = *(this + 47);
  *(this + 47) = 0;
  if (v17)
  {
    dispatch_release(v17);
  }

  v18 = *(this + 48);
  if (v18)
  {

    *(this + 48) = 0;
  }

  result = 0.0;
  *(this + 600) = 0u;
  return result;
}

BOOL re::Transport::init(uint64_t a1, uint64_t *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  *(a1 + 600) = a2[12];
  v4 = *a2;
  v5 = *(a1 + 72);
  if (v5 != *a2)
  {
    if (v4)
    {
      v6 = (v4 + 8);
      v5 = *(a1 + 72);
    }

    if (v5)
    {
    }

    *(a1 + 72) = v4;
  }

  re::SharedPtr<re::SyncObject>::reset((a1 + 568), a2[4]);
  v7 = a2[12];
  if (v7)
  {
    v8 = v7 + 24;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 608) = v8;
  v9 = a2[1];
  if (v9)
  {
    dispatch_retain(a2[1]);
  }

  v10 = (a1 + 376);
  v11 = *(a1 + 376);
  *(a1 + 376) = v9;
  if (v11)
  {
    dispatch_release(v11);
    v9 = *v10;
  }

  dispatch_queue_set_specific(v9, a1, a1, 0);
  if (!*(a1 + 376))
  {
    v13 = *re::networkLogObjects(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26168F000, v13, OS_LOG_TYPE_ERROR, "Invalid transport queue. Should be the same dispatch_queue that transport api will be called on.", buf, 2u);
    }
  }

  *buf = *v10;
  v14 = (*(**(a1 + 72) + 32))(*(a1 + 72), buf);
  if (v14)
  {
    re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity((a1 + 120), 0);
    ++*(a1 + 144);
    *(a1 + 164) = 64;
    v15 = re::DataArray<re::Connection>::allocBlock((a1 + 120));
    re::Defaults::intValue(&v59, "network.transport.compressionMethod", v16);
    if (v59)
    {
      v17 = (&v59 + 4);
    }

    else
    {
      v17 = a2 + 2;
    }

    *(a1 + 392) = *v17;
    v18 = (*(**(a1 + 72) + 120))(*(a1 + 72), 0, 0);
    v19 = v18;
    v20 = *(a1 + 96);
    if (v20 >= v18)
    {
      if (v20 <= v18)
      {
        goto LABEL_35;
      }

      v26 = 32 * v18;
      v27 = v18;
      do
      {
        re::DynamicString::deinit((*(a1 + 112) + v26));
        ++v27;
        v26 += 32;
      }

      while (v27 < *(a1 + 96));
    }

    else
    {
      if (*(a1 + 88) < v18)
      {
        v18 = re::DynamicArray<re::Address>::setCapacity((a1 + 80), v18);
        v20 = *(a1 + 96);
      }

      v21 = v19 - v20;
      if (v19 > v20)
      {
        v22 = 32 * v20;
        do
        {
          v23 = *(a1 + 112) + v22;
          *v23 = 0u;
          *(v23 + 16) = 0u;
          v18 = re::DynamicString::setCapacity(v23, 0);
          v22 += 32;
          --v21;
        }

        while (v21);
      }
    }

    *(a1 + 96) = v19;
    ++*(a1 + 104);
LABEL_35:
    v28 = (*(**(a1 + 72) + 120))(*(a1 + 72), *(a1 + 112), v19);
    atomic_store(1u, (a1 + 336));
    v29 = re::globalAllocators(v28);
    v30 = (*(*v29[2] + 32))(v29[2], 128, 8);
    *v30 = &unk_2873F57D8;
    *(v30 + 8) = 0x100000000;
    *(v30 + 16) = 0u;
    *(v30 + 32) = 0u;
    *(v30 + 48) = 0;
    *(v30 + 104) = 0;
    *(v30 + 112) = 0;
    *(v30 + 56) = 0u;
    *(v30 + 72) = 0u;
    *(v30 + 84) = 0u;
    *(v30 + 120) = 0;
    *(a1 + 320) = v30;
    v31 = (*(**(a1 + 72) + 152))(*(a1 + 72));
    if (v31)
    {
      if (v31 == 2)
      {
        v35 = re::globalAllocators(v31);
        v34 = (*(*v35[2] + 32))(v35[2], 128, 8);
        *v34 = &unk_2873F57D8;
        *(v34 + 1) = 0x100000000;
        *(v34 + 1) = 0u;
        *(v34 + 2) = 0u;
        *(v34 + 12) = 0;
        *(v34 + 13) = 0;
        *(v34 + 28) = 0;
        *(v34 + 56) = 0u;
        *(v34 + 72) = 0u;
        *(v34 + 84) = 0u;
        *(v34 + 120) = 0;
        goto LABEL_43;
      }

      if (v31 == 1)
      {
        v32 = re::globalAllocators(v31);
        v33 = (*(*v32[2] + 32))(v32[2], 24, 8);
        v34 = re::TransportCommandsDispatch::TransportCommandsDispatch(v33);
LABEL_43:
        *(a1 + 328) = v34;
        v39 = (*(**(a1 + 72) + 112))(*(a1 + 72), a1 + 24);
        *&buf[8] = 0;
        v61 = 0;
        v62 = 0;
        re::DynamicString::setCapacity(buf, 0);
        if ((*(**(a1 + 72) + 120))(*(a1 + 72), buf, 1))
        {
          if (buf[8])
          {
            v40 = v61;
          }

          else
          {
            v40 = &buf[9];
          }
        }

        else
        {
          v40 = "n/a";
        }

        v41 = strlen(v40);
        *v63 = v40;
        v64 = v41;
        re::DynamicString::operator=((a1 + 480), v63);
        re::SharedPtr<re::SyncObject>::reset((a1 + 560), a2[3]);
        v42 = *(a2 + 5);
        v43 = *(a2 + 7);
        *(a1 + 552) = a2[9];
        *(a1 + 520) = v42;
        *(a1 + 536) = v43;
        v44 = (*(**(a1 + 72) + 144))(*(a1 + 72));
        *(a1 + 512) = v44;
        v45 = *re::networkLogObjects(v44);
        v46 = os_log_type_enabled(v45, OS_LOG_TYPE_INFO);
        if (v46)
        {
          v47 = *(a1 + 512);
          *v63 = 67109120;
          *&v63[4] = v47;
          _os_log_impl(&dword_26168F000, v45, OS_LOG_TYPE_INFO, "Transport preferred packet size: %d", v63, 8u);
        }

        v48 = *(a1 + 512);
        v25 = v48 > 0x14;
        if (v48 > 0x14)
        {
          *(a1 + 516) = v48 - 3;
          re::SharedPtr<re::SyncObject>::reset((a1 + 576), a2[10]);
          *(a1 + 584) = *(a2 + 88);
          v50 = *re::networkLogObjects(v49);
          v51 = os_log_type_enabled(v50, OS_LOG_TYPE_INFO);
          if (v51)
          {
            v52 = *(a1 + 584);
            *v63 = 67109120;
            *&v63[4] = v52;
            _os_log_impl(&dword_26168F000, v50, OS_LOG_TYPE_INFO, "Transport throttling enabled: %d", v63, 8u);
          }

          *(a1 + 585) = *(a2 + 89);
          v53 = *re::networkLogObjects(v51);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            v54 = *(a1 + 585);
            *v63 = 67109120;
            *&v63[4] = v54;
            _os_log_impl(&dword_26168F000, v53, OS_LOG_TYPE_INFO, "Transport message fragmentation enabled: %d", v63, 8u);
          }
        }

        else
        {
          v55 = *re::networkLogObjects(v46);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v58 = *(a1 + 512);
            *v63 = 67109120;
            *&v63[4] = v58;
            _os_log_error_impl(&dword_26168F000, v55, OS_LOG_TYPE_ERROR, "Invalid preferred packet size for transport: %u", v63, 8u);
          }
        }

        if (*buf && (buf[8] & 1) != 0)
        {
          (*(**buf + 40))();
        }

        return v25;
      }

      v36 = *re::networkLogObjects(v31);
      v31 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      if (v31)
      {
        *buf = 0;
        _os_log_impl(&dword_26168F000, v36, OS_LOG_TYPE_DEFAULT, "Unknown thread mode. Defaulting to ThreadWaitAndWake", buf, 2u);
      }
    }

    v37 = re::globalAllocators(v31);
    v38 = (*(*v37[2] + 32))(v37[2], 144, 8);
    re::TransportCommandsThreadedProtocol::TransportCommandsThreadedProtocol(v38, *(a1 + 72));
  }

  v24 = *(a1 + 72);
  if (v24)
  {

    *(a1 + 72) = 0;
  }

  return 0;
}

re *re::internal::destroyPersistent<re::TransportCommands>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    (**v1)(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(unsigned __int16 *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1[5];
  v2 = *(*a1 + 16);
  if (v2 <= v1)
  {
    v7 = 0;
    memset(v16, 0, sizeof(v16));
    v4 = MEMORY[0x277D86220];
    v8 = 136315906;
    v9 = "operator[]";
    v10 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v11 = 797;
    v12 = 2048;
    v13 = v1;
    v14 = 2048;
    v15 = v2;
    _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_26168F000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(*a1 + 32) + 16 * v1) + 136 * a1[4];
}

uint64_t re::DataArray<re::Connection>::deinit(uint64_t result)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(result + 44))
  {
    v2 = result;
    re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::DataArrayIterator(&v28, result);
    if (v28 != v2 || DWORD2(v28) != 0xFFFFFFFFLL)
    {
      do
      {
        v4 = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::handle(&v28);
        re::DataArray<re::Connection>::destroy(v2, v4);
        re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(&v28);
      }

      while (v28 != v2 || WORD4(v28) != 0xFFFF || WORD5(v28) != 0xFFFF);
    }

    v7 = v2[2];
    v8 = v7 - 1;
    if (v7 != 1)
    {
      v9 = 16 * v7 - 16;
      do
      {
        if (v7 <= v8)
        {
          v19 = 0;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v28 = 0u;
          v13 = MEMORY[0x277D86220];
          v20 = 136315906;
          v21 = "operator[]";
          v22 = 1024;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v14 = 3;
          }

          else
          {
            v14 = 2;
          }

          v23 = 789;
          v24 = 2048;
          v25 = v8;
          v26 = 2048;
          v27 = v7;
          _os_log_send_and_compose_impl(v14, &v19, &v28, 80, &dword_26168F000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
          _os_crash_msg();
          __break(1u);
LABEL_33:
          v19 = 0;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v28 = 0u;
          v15 = MEMORY[0x277D86220];
          v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v20 = 136315906;
          v21 = "removeAt";
          v22 = 1024;
          if (v16)
          {
            v17 = 3;
          }

          else
          {
            v17 = 2;
          }

          v23 = 931;
          v24 = 2048;
          v25 = v8;
          v26 = 2048;
          v27 = v1;
          _os_log_send_and_compose_impl(v17, &v19, &v28, 80, &dword_26168F000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
          _os_crash_msg();
          __break(1u);
        }

        v10 = (v2[4] + v9);
        (*(**v2 + 40))(*v2, *v10);
        (*(**v2 + 40))(*v2, v10[1]);
        v1 = v2[2];
        if (v1 <= v8)
        {
          goto LABEL_33;
        }

        v7 = v1 - 1;
        if (v1 - 1 > v8)
        {
          *(v2[4] + v9) = *(v2[4] + 16 * v1 - 16);
          v7 = v2[2] - 1;
        }

        v2[2] = v7;
        ++*(v2 + 6);
        v9 -= 16;
        --v8;
      }

      while (v8);
      v2[6] = 0xFFFFFFFF00000000;
      if (v7)
      {
        goto LABEL_27;
      }

      v19 = 0;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      v2 = MEMORY[0x277D86220];
      v20 = 136315906;
      v21 = "operator[]";
      v22 = 1024;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v23 = 789;
      v24 = 2048;
      v25 = 0;
      v26 = 2048;
      v27 = 0;
      _os_log_send_and_compose_impl(v11, &v19, &v28, 80, &dword_26168F000, v2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
      _os_crash_msg();
      __break(1u);
    }

    v2[6] = 0xFFFFFFFF00000000;
LABEL_27:
    v12 = v2[4];
    (*(**v2 + 40))(*v2, *v12);
    (*(**v2 + 40))(*v2, v12[1]);
    result = re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v2);
    *(v2 + 11) = 0;
  }

  return result;
}

double re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicString::deinit((v6 + v4 + 8));
          v3 = *(a1 + 8);
        }

        v4 += 56;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

_WORD *re::Transport::flushNetworkEvents(re::Transport *this)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = *(this + 41);
  v3 = re::globalAllocators(this)[2];
  *buf = &unk_2873F5EB0;
  v44 = this;
  v46 = v3;
  v47 = buf;
  (*(*v2 + 16))(v2, buf);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(buf);
  result = (*(**(this + 41) + 24))(*(this + 41));
  if (*(this + 585) == 1)
  {
    result = (*(**(this + 71) + 32))(*(this + 71));
    if (result - *(this + 74) >= 0x3E8)
    {
      v5 = result;
      result = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::DataArrayIterator(buf, this + 120);
      v41 = *buf;
      v42 = v44;
      if ((this + 120) != *buf || v44 != 0xFFFFFFFFLL)
      {
        do
        {
          v6 = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(&v41);
          v7 = *(v6 + 5);
          if (v7)
          {
            for (i = 0; i != 10; ++i)
            {
              v9 = v7 + 432 + 48 * i;
              v10 = *(v9 + 32);
              if (v10)
              {
                v11 = 0;
                v12 = *(v9 + 16);
                v13 = v12;
                while (1)
                {
                  v14 = *v13;
                  v13 += 20;
                  if (v14 < 0)
                  {
                    break;
                  }

                  if (v10 == ++v11)
                  {
                    v11 = *(v9 + 32);
                    break;
                  }
                }

                if (v10 <= v11 || v12[20 * v11] < 0)
                {
LABEL_17:
                  if (v10 != v11)
                  {
                    v17 = v11;
                    do
                    {
                      LODWORD(v18) = v11;
                      v19 = *(v9 + 16);
                      v20 = v19 + 80 * v17;
                      v21 = *(v20 + 4);
                      if (v10 <= v11 + 1)
                      {
                        v11 = (v11 + 1);
                      }

                      else
                      {
                        v11 = v10;
                      }

                      while (v11 - 1 != v18)
                      {
                        v18 = (v18 + 1);
                        if ((*(v19 + 80 * v18) & 0x80000000) != 0)
                        {
                          v17 = v18;
                          LODWORD(v11) = v18;
                          goto LABEL_26;
                        }
                      }

                      v17 = v11;
LABEL_26:
                      v22 = *(v20 + 64);
                      if (v22 && v22 < v5)
                      {
                        v23 = *re::networkLogObjects(v6);
                        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                        {
                          v24 = *(v20 + 56);
                          *buf = 67109632;
                          *&buf[4] = v21;
                          LOWORD(v44) = 1024;
                          *(&v44 + 2) = i;
                          HIWORD(v44) = 1024;
                          v45 = v24;
                          _os_log_impl(&dword_26168F000, v23, OS_LOG_TYPE_DEFAULT, "Message %u on channel %u timed-out waiting for fragment %u.", buf, 0x14u);
                        }

                        v6 = re::Transport::discardPacketFragments(v7, i, v21);
                        LODWORD(v10) = *(v9 + 32);
                      }
                    }

                    while (v10 != v11);
                  }
                }

                else
                {
                  v15 = &v12[20 * v11 + 20];
                  while (v10 - 1 != v11)
                  {
                    v16 = *v15;
                    v15 += 20;
                    LODWORD(v11) = v11 + 1;
                    if (v16 < 0)
                    {
                      goto LABEL_17;
                    }
                  }
                }
              }
            }
          }

          result = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(&v41);
        }

        while (v41 != (this + 120) || v42 != 0xFFFF || HIWORD(v42) != 0xFFFF);
      }

      *(this + 74) = v5;
    }
  }

  if (*(this + 70))
  {
    result = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::DataArrayIterator(buf, this + 120);
    if ((this + 120) != *buf || v44 != 0xFFFFFFFFLL)
    {
      do
      {
        v27 = *(re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(buf) + 40);
        if (v27)
        {
          v28 = 0;
          do
          {
            v29 = *(this + 70);
            v30 = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::handle(buf);
            v31 = v28;
            v32 = (*(*v29 + 64))(v29, this, v30, v28);
            if (v33)
            {
              v34 = v32;
              v35 = v33;
              do
              {
                re::Transport::onReceiveData(this, v27, v28, v34, v35);
                v36 = *(this + 70);
                v37 = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::handle(buf);
                v34 = (*(*v36 + 64))(v36, this, v37, v28);
                v35 = v38;
              }

              while (v38);
            }

            ++v28;
          }

          while (v31 < 9);
        }

        result = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(buf);
      }

      while (*buf != (this + 120) || v44 != 0xFFFF || WORD1(v44) != 0xFFFF);
    }
  }

  return result;
}

uint64_t re::Transport::onReceiveData(re *a1, uint64_t a2, char a3, unsigned __int8 *a4, size_t a5)
{
  v6 = a1;
  v134 = *MEMORY[0x277D85DE8];
  src_buffer = a4;
  src_size = a5;
  LOBYTE(v7) = a3;
  v116 = 0;
  LOBYTE(v8) = 1;
  v117 = 1;
  v118 = a3;
  v119 = 0;
  if (a5)
  {
    v9 = *a4;
    LOBYTE(v116) = v9 & 1;
    HIBYTE(v116) = (v9 & 2) != 0;
    v117 = (v9 & 4) != 0;
    if (v9 >= 0x10)
    {
      LODWORD(v7) = (v9 >> 4) - 1;
      v118 = (v9 >> 4) - 1;
    }

    v119 = *(a4 + 1);
    if (v7 >= 0xBu)
    {
      v10 = *re::networkLogObjects(a1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v7;
        _os_log_error_impl(&dword_26168F000, v10, OS_LOG_TYPE_ERROR, "Transport cannot receive on invalid channel id: %hhu", buf, 8u);
      }

      result = re::internal::enableSignposts(0, 0);
      if (result)
      {
        return kdebug_trace();
      }

      return result;
    }

    v8 = v9 >> 2;
    v12 = v9 >> 1;
    src_buffer = re::Slice<unsigned char>::range(&src_buffer, 3uLL, a5);
    src_size = v13;
  }

  else
  {
    LOBYTE(v9) = 0;
    LOBYTE(v12) = 0;
  }

  v14 = re::internal::enableHighFrequencyNetworkTracing(0, 0);
  if (v14)
  {
    v15 = *(v6 + 75);
    if (v15)
    {
      v16 = *(v15 + 2296);
      if (v16)
      {
        v111 = v8;
        v17 = v7;
        v7 = v6;
        v18 = a2;
        v19 = *(a2 + 24);
        v20 = *(v15 + 2312);
        v21 = 8 * v16;
        while (1)
        {
          v22 = *v20;
          if (*(*v20 + 32) == v19)
          {
            break;
          }

          ++v20;
          v21 -= 8;
          if (!v21)
          {
            goto LABEL_20;
          }
        }

        v23 = (v22 + 8);

LABEL_20:
        a2 = v18;
        v6 = v7;
        LOBYTE(v7) = v17;
        LOBYTE(v8) = v111;
      }
    }

    v14 = re::internal::enableSignposts(0, 0);
    if (v14)
    {
      v14 = re::internal::enableHighFrequencyNetworkTracing(0, 0);
      if (v14)
      {
        v14 = kdebug_trace();
      }
    }
  }

  v113 = 0;
  v114 = 0;
  v115 = 0;
  v24 = src_size;
  if ((v12 & 1) == 0)
  {
    goto LABEL_85;
  }

  v25 = buf;
  if (src_size <= 9)
  {
    v26 = *re::networkLogObjects(v14);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(&dword_26168F000, v26, OS_LOG_TYPE_INFO, "Discarding fragment with invalid size (channel=%u)", buf, 8u);
    }

LABEL_28:
    memset(buf, 0, 24);
    goto LABEL_69;
  }

  v27 = src_buffer;
  *buf = src_buffer;
  *&buf[8] = src_size;
  buf[12] = 0;
  *&buf[16] = 0uLL;
  if ((src_size & 0x1FFFFFFE) == 0)
  {
    v28 = 0;
    goto LABEL_36;
  }

  v28 = *src_buffer;
  if ((8 * src_size - 16) < 0x20)
  {
LABEL_36:
    LODWORD(v30) = 0;
    LODWORD(v33) = 0;
    buf[12] = 1;
    *&buf[16] = src_size;
    goto LABEL_41;
  }

  v29 = 0;
  v30 = 0;
  v31 = src_buffer + 2;
  do
  {
    v32 = *v31++;
    v30 |= v32 << v29;
    v29 += 8;
  }

  while (v29 != 32);
  v33 = HIDWORD(v30);
  *&buf[24] = HIDWORD(v30);
  if ((8 * src_size - 48) >= 0x20)
  {
    v34 = 0;
    v35 = src_buffer + 6;
    do
    {
      v36 = *v35++;
      v33 |= v36 << v34;
      v34 += 8;
    }

    while (v34 != 32);
    *&buf[16] = 10;
    *&buf[24] = HIDWORD(v33);
  }

  else
  {
    LODWORD(v33) = 0;
    buf[12] = 1;
    *&buf[16] = src_size;
  }

  *&buf[20] = 0;
LABEL_41:
  v122 = 0;
  *v123 = 0;
  v37 = re::BiasedVLQ::read(&v122, buf, v123);
  if (!v37 || (v38 = *v123, v122 = 0, v37 = re::BiasedVLQ::read(&v122, buf, v123), (v37 & 1) == 0))
  {
    v50 = *re::networkLogObjects(v37);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      v51 = "Discarding fragment with unreadable header (channel=%u)";
LABEL_67:
      _os_log_impl(&dword_26168F000, v50, OS_LOG_TYPE_INFO, v51, buf, 8u);
    }

LABEL_68:
    memset(buf, 0, 24);
    v25 = buf;
    goto LABEL_69;
  }

  if (!v33)
  {
    v24 = *re::networkLogObjects(v37);
    v52 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (!v52)
    {
      goto LABEL_65;
    }

    *buf = 67110144;
    *&buf[4] = 0;
    *&buf[8] = 1024;
    *&buf[10] = 1;
    *&buf[14] = 1024;
    *&buf[16] = -1;
    *&buf[20] = 1024;
    *&buf[22] = v28;
    *&buf[26] = 1024;
    *&buf[28] = v30;
    v53 = "Fragment count is not within range %u [%u, %u]. Fragment %u, %u will be discarded.";
    v54 = v24;
    v55 = 32;
    goto LABEL_64;
  }

  if (v30 >= v33)
  {
    v24 = *re::networkLogObjects(v37);
    v52 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (!v52)
    {
      goto LABEL_65;
    }

    *buf = 67109888;
    *&buf[4] = v30;
    *&buf[8] = 1024;
    *&buf[10] = v33;
    *&buf[14] = 1024;
    *&buf[16] = v28;
    *&buf[20] = 1024;
    *&buf[22] = v30;
    v53 = "Fragment index is out of bounds [%u, %u]. Fragment %u, %u will be discarded.";
    v54 = v24;
    v55 = 26;
    goto LABEL_64;
  }

  if (!v38)
  {
    v24 = *re::networkLogObjects(v37);
    v52 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (!v52)
    {
      goto LABEL_65;
    }

    *buf = 67109376;
    *&buf[4] = v28;
    *&buf[8] = 1024;
    *&buf[10] = v30;
    v53 = "Big packet size is not set. Fragment %u, %u will be discarded.";
    v54 = v24;
    v55 = 14;
LABEL_64:
    _os_log_error_impl(&dword_26168F000, v54, OS_LOG_TYPE_ERROR, v53, buf, v55);
LABEL_65:
    v50 = *re::networkLogObjects(v52);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      v51 = "Discarding fragment with invalid header values (channel=%u)";
      goto LABEL_67;
    }

    goto LABEL_68;
  }

  v39 = 11;
  if (v38 >= 0x80)
  {
    v40 = v38;
    do
    {
      v41 = v40 >> 14;
      v40 >>= 7;
      ++v39;
    }

    while (v41);
  }

  v42 = 1;
  if ((*v123 & 0xFFFFFF80) != 0)
  {
    v43 = *v123;
    do
    {
      ++v42;
      v44 = v43 >> 14;
      v43 >>= 7;
    }

    while (v44);
  }

  v45 = (v42 + v39);
  if (v24 <= v45)
  {
    v50 = *re::networkLogObjects(v37);
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      goto LABEL_68;
    }

    *buf = 67109120;
    *&buf[4] = v7;
    v51 = "Discarding fragment with empty payload (channel=%u)";
    goto LABEL_67;
  }

  v108 = v38;
  v109 = v24 - v45;
  v110 = v45;
  v112 = *v123;
  v46 = a2 + 48 * v7 + 432;
  v47 = re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::tryGet(v46, v28);
  if (!v47)
  {
    memset(buf, 0, 24);
    v48 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v28) ^ ((0xBF58476D1CE4E5B9 * v28) >> 27));
    v49 = re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::findEntry<unsigned short>(buf, v46, v28, v48 ^ (v48 >> 31));
    if (*&buf[12] == 0x7FFFFFFF)
    {
      v49 = re::HashTable<unsigned short,re::PendingPacketFragments,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::allocEntry(v46, *&buf[8], *buf);
      *(v49 + 8) = 0u;
      v47 = v49 + 8;
      *(v49 + 4) = v28;
      *(v49 + 24) = 0u;
      *(v49 + 40) = 0u;
      *(v49 + 56) = 0u;
      ++*(v46 + 40);
    }

    else
    {
      v47 = *(a2 + 48 * v7 + 448) + 80 * *&buf[12] + 8;
    }

    *(v47 + 32) = v33;
    *(v47 + 40) = v84;
    if (!v84)
    {
      re::internal::assertLog(4, v85, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      result = _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
      return result;
    }

    v86 = v84;
    v87 = v33 - 1;
    if (v87)
    {
      bzero(v84, v87);
      v86 += v87;
    }

    *v86 = 0;
    *(v47 + 48) = 0;
  }

  if ((v8 & 1) == 0)
  {
    *(v47 + 56) = (*(**(v6 + 71) + 32))(*(v6 + 71)) + 1000;
  }

  memcpy((*(v47 + 16) + v112), &v27[v110], v109);
  v24 = *(v47 + 32);
  if (v24 <= v30)
  {
    v122 = 0;
    v132 = 0u;
    v133 = 0u;
    v131 = 0u;
    memset(buf, 0, sizeof(buf));
    v97 = MEMORY[0x277D86220];
    v98 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    *v123 = 136315906;
    *&v123[4] = "operator[]";
    v124 = 1024;
    if (v98)
    {
      v99 = 3;
    }

    else
    {
      v99 = 2;
    }

    v125 = 468;
    v126 = 2048;
    v127 = v30;
    v128 = 2048;
    v129 = v24;
    _os_log_send_and_compose_impl(v99, &v122, buf, 80, &dword_26168F000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v123, 38, v104, v107);
    _os_crash_msg();
    __break(1u);
  }

  v88 = *(v47 + 40);
  *(v88 + v30) = 1;
  v89 = *(v47 + 48);
  v25 = buf;
  if (v24 > v89)
  {
    v90 = v89 + 1;
    while ((*(v88 + v89) & 1) != 0)
    {
      *(v47 + 48) = v90;
      v89 = v90;
      if (v24 <= v90++)
      {
        goto LABEL_127;
      }
    }

    goto LABEL_28;
  }

LABEL_127:
  *buf = *v47;
  *v47 = 0;
  *(v47 + 8) = 0;
  *&buf[16] = *(v47 + 16);
  *(v47 + 16) = 0;
  re::Transport::discardPacketFragments(a2, v7, v28);
LABEL_69:
  re::FixedArray<unsigned char>::operator=(&v113, buf);
  v57 = *buf;
  if (*buf)
  {
    v58 = *&buf[8] == 0;
  }

  else
  {
    v58 = 1;
  }

  if (!v58)
  {
    v57 = (*(**buf + 40))();
  }

  v59 = v114;
  if (!v114)
  {
    goto LABEL_109;
  }

  v9 = *v115;
  LOBYTE(v116) = v9 & 1;
  HIBYTE(v116) = (v9 & 2) != 0;
  v117 = (v9 & 4) != 0;
  if (v9 >= 0x10)
  {
    LOBYTE(v7) = (v9 >> 4) - 1;
    v118 = v7;
  }

  v119 = *(v115 + 1);
  if (v7 < 0xBu)
  {
    v61 = (v114 + 1);
    if ((v114 + 1) <= 3)
    {
      v122 = 0;
      v132 = 0u;
      v133 = 0u;
      v131 = 0u;
      memset(buf, 0, sizeof(buf));
      v92 = MEMORY[0x277D86220];
      v93 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      *v123 = 136315906;
      *&v123[4] = "slice";
      v124 = 1024;
      if (v93)
      {
        v94 = 3;
      }

      else
      {
        v94 = 2;
      }

      v125 = 502;
      v126 = 2048;
      v127 = 3;
      v128 = 2048;
      v129 = v61;
      _os_log_send_and_compose_impl(v94, &v122, buf, 80, &dword_26168F000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v123, 38, v104, v107);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v24 = (v114 - 3);
      if ((v114 - 3) < 0xFFFFFFFFFFFFFFFDLL)
      {
        src_buffer = v115 + 3;
        src_size = v114 - 3;
LABEL_85:
        if ((v9 & 1) != 0 && v24 > 3)
        {
          v62 = *src_buffer;
          v63 = re::Slice<unsigned char>::range(&src_buffer, 4uLL, v24);
          src_buffer = v63;
          src_size = v64;
          if (v62 > 0x8000000)
          {
            v80 = *re::networkLogObjects(v63);
            if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              *&buf[4] = v62;
              *&buf[8] = 2048;
              *&buf[10] = 0x8000000;
              _os_log_error_impl(&dword_26168F000, v80, OS_LOG_TYPE_ERROR, "Inbound message decompressedLen(%u) exceeds kMaxSupportedMessageSize (%zu), message may be corrupted.", buf, 0x12u);
            }

            goto LABEL_109;
          }

          v61 = re::PacketPool::allocate(*(v6 + 48), (v62 + 3));
          re::Packet::offsetBy(v61, 3);
          v65 = *(v61 + 1);
          *(v65 + 2) = 0;
          *v65 = 0;
          re::Transport::writePacketHeader(v61, &v116, 8);
          v67 = compression_decode_scratch_buffer_size(v66);
          if (*(v6 + 56) < v67)
          {
            re::DynamicArray<unsigned char>::resize(v6 + 440, v67);
          }

          v68 = compression_decode_buffer(*(v61 + 2), *(v61 + 7), src_buffer, src_size, *(v6 + 59), v66);
          if (v68 != v62)
          {
            v69 = v68;
            v70 = *re::networkLogObjects(v68);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *&buf[4] = v69;
              *&buf[12] = 1024;
              *&buf[14] = v62;
              _os_log_error_impl(&dword_26168F000, v70, OS_LOG_TYPE_ERROR, "Inbound message decompressed length (%zu) is not the expected length (%u), message discarded!", buf, 0x12u);
            }

            re::PacketPool::free(*(v6 + 48), v61);
            goto LABEL_109;
          }
        }

        else
        {
          v61 = re::PacketPool::allocate(*(v6 + 48), (v24 + 3));
          re::Packet::offsetBy(v61, 3);
          v71 = *(v61 + 1);
          *(v71 + 2) = 0;
          *v71 = 0;
          re::Transport::writePacketHeader(v61, &v116, 8);
          memcpy(*(v61 + 2), src_buffer, src_size);
          LODWORD(v62) = src_size;
        }

        *(v61 + 6) = v62;
        os_unfair_lock_lock((a2 + 1764));
        v72 = a2;
        v73 = *(a2 + 24);
        v74 = v72;
        os_unfair_lock_unlock(v72 + 441);
        if (!v73)
        {
          v81 = *re::networkLogObjects(v75);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_26168F000, v81, OS_LOG_TYPE_DEBUG, "Received data for unbound connection object.", buf, 2u);
          }

          goto LABEL_107;
        }

        v25 = v6;
        if (v7 != 1)
        {
          v76 = v74;
          v79 = &v74[10 * v7 + 328];
          goto LABEL_105;
        }

        v76 = v74;
        v77 = v25;
        v78 = re::Transport::dispatchPacketToStream(v25, v61, *&v74[6]._os_unfair_lock_opaque);
        if (!v78)
        {
LABEL_106:
          (*(*&v77[76]->_os_unfair_lock_opaque + 24))(v77[76], *&v76[6]._os_unfair_lock_opaque, v7, *(v61 + 2), *(v61 + 6));
          v6 = v77;
          goto LABEL_107;
        }

        if (v78 == 2)
        {
          v76 = v74;
          v79 = &v74[338];
LABEL_105:
          atomic_fetch_add_explicit((v79 + 24), *(v61 + 6), memory_order_release);
          atomic_fetch_add_explicit((v79 + 32), *(v61 + 7), memory_order_release);
          atomic_fetch_add_explicit((v79 + 16), 1uLL, memory_order_release);
          atomic_store(v61, *v79);
          *v79 = v61;
          v77 = v25;
          goto LABEL_106;
        }

LABEL_133:
        v6 = v25;
        re::PacketPool::free(v25[48], v61);
LABEL_107:
        v82 = *(v6 + 72);
        if (v82)
        {
          (*(*v82 + 40))(v82, src_size);
        }

        goto LABEL_109;
      }
    }

    re::internal::assertLog(7, v56, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", "!overflow", "slice", 508, 3, v24, v59);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::slice(size_t,size_t). index, %zu, count = %zu, array size = %zu", v100, v102, v105);
    __break(1u);
    re::internal::assertLog(7, v95, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 512, 3, v24, v96);
    _os_crash("assertion failure: (endIndexExclusive <= m_size) Invalid count. index = %zu, count = %zu, array size = %zu", v101, v103, v106);
    __break(1u);
    goto LABEL_133;
  }

  v60 = *re::networkLogObjects(v57);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v7;
    _os_log_error_impl(&dword_26168F000, v60, OS_LOG_TYPE_ERROR, "Transport cannot receive on invalid channel id: %hhu", buf, 8u);
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

LABEL_109:
  result = v113;
  if (v113 && v114)
  {
    return (*(*v113 + 40))();
  }

  return result;
}

void re::Transport::flushOutgoingData(re::Transport *this)
{
  v1 = this;
  v4[5] = *MEMORY[0x277D85DE8];
  if (*(this + 584) == 1)
  {
    this = re::Transport::queueThrottledPacketsForSend(this);
  }

  v2 = *(v1 + 41);
  v3 = re::globalAllocators(this)[2];
  v4[0] = &unk_2873F5F08;
  v4[1] = v1;
  v4[3] = v3;
  v4[4] = v4;
  (*(*v2 + 16))(v2, v4);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v4);
  (*(**(v1 + 41) + 24))(*(v1 + 41));
  re::PacketPool::emitAriadneSignpost(*(v1 + 48));
}

_WORD *re::Transport::queueThrottledPacketsForSend(re::Transport *this)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = (*(**(this + 71) + 32))(*(this + 71));
  v4 = v2 - *(this + 176);
  *(this + 88) = v2;
  if (v4 <= 0x3E8)
  {
    v5 = *(this + 174);
    if (v5 >= 0x14)
    {
      re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) ", "m_index < kHistorySize", "measure", 1985);
      _os_crash("assertion failure: (m_index < kHistorySize) ");
      __break(1u);
    }

    *(this + 175) = *(this + 175) + v4 - *(this + v5 + 154);
    *(this + v5 + 154) = v4;
    v6 = *(this + 174);
    if ((v6 + 1) <= 0x13)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 0;
    }

    *(this + 174) = v7;
  }

  v8 = *(this + 175);
  if (v8 < 0x14)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 / 0x14;
  }

  v10 = *(this + 72);
  if (v10)
  {
    v11 = *(v10 + 80) * v9 / 0x3E8uLL;
  }

  else
  {
    v11 = -1;
  }

  v12 = this + 120;
  result = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::DataArrayIterator(buf, this + 120);
  v58 = *buf;
  v59 = *&buf[8];
  if ((this + 120) == *buf && *&buf[8] == 0xFFFFFFFFLL)
  {
    return result;
  }

  v14 = 0;
  do
  {
    v15 = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(&v58);
    if (*(v15 + 96))
    {
      ++v14;
      *(v15 + 112) = 1023;
    }

    result = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(&v58);
  }

  while (v58 != v12 || v59 != 0xFFFF || HIWORD(v59) != 0xFFFF);
  v56 = this;
  if (!v14 || !v11)
  {
    return result;
  }

  do
  {
    v57 = v14;
    result = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::DataArrayIterator(buf, v12);
    v58 = *buf;
    v59 = *&buf[8];
    if (v12 == *buf && *&buf[8] == 0xFFFFFFFFLL)
    {
      goto LABEL_92;
    }

    while (2)
    {
      v19 = re::DataArray<re::Connection>::DataArrayIterator<re::Connection,re::Connection&>::operator*(&v58);
      if (!*(v19 + 28))
      {
        goto LABEL_62;
      }

      v20 = v19;
      v21 = re::NetworkFeatureFlags::enableTransportLog(v19);
      if (v21)
      {
        v22 = *re::networkLogObjects(v21);
        v21 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
        if (v21)
        {
          v49 = *(v20 + 24);
          if ((*(v20 + 16) & 1) == 0)
          {
            v49 = v20 + 17;
          }

          v50 = *(v56 + 72);
          if (v50)
          {
            v51 = *(v50 + 72);
          }

          else
          {
            v51 = -1;
          }

          *buf = 136315906;
          *&buf[4] = v49;
          v61 = 1024;
          v62 = v51;
          v63 = 1024;
          v64 = v9;
          v65 = 2048;
          v66 = v11;
          _os_log_debug_impl(&dword_26168F000, v22, OS_LOG_TYPE_DEBUG, "Trying to send packet for connection: %s, total available bandwidth: %d bps, time slice: %d ms, slice bandwidth: %llu bits\n", buf, 0x22u);
        }
      }

      v23 = *(v20 + 96);
      if (v23)
      {
        v24 = v11 == 0;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        goto LABEL_54;
      }

      v25 = v11;
      if (!*(v20 + 116))
      {
        v43 = *(v56 + 75);
        if (v43)
        {
          v21 = re::DataArray<re::Connection>::handle(v12, v20);
          v44 = *(v43 + 2296);
          if (v44)
          {
            v45 = *(v43 + 2312);
            v46 = 8 * v44;
            while (1)
            {
              v47 = *v45;
              if (*(*v45 + 32) == v21)
              {
                break;
              }

              ++v45;
              v46 -= 8;
              if (!v46)
              {
                goto LABEL_41;
              }
            }

            v48 = (v47 + 8);
            *(v20 + 116) = *(v47 + 72);
          }
        }
      }

LABEL_41:
      v26 = *(v20 + 108);
      v27 = *(v20 + 112);
      v28 = v26;
      while (1)
      {
        v29 = 1 << (v28 % 0xAu);
        if ((v29 & v27) != 0)
        {
          break;
        }

LABEL_45:
        if (++v28 >= (v26 + 10))
        {
          goto LABEL_53;
        }
      }

      v30 = *(v20 + 40) + 40 * (v28 % 0xAu);
      if (!atomic_load(*(v30 + 40)))
      {
        v27 = *(v20 + 112) & (v29 ^ 0x3FF);
        *(v20 + 112) = v27;
        v26 = *(v20 + 108);
        goto LABEL_45;
      }

      v32 = re::PacketQueue::dequeue((v30 + 32));
      v33 = v32;
      --*(v20 + 96);
      v34 = (8 * *(v32 + 6));
      v35 = v25 >= v34;
      v36 = v25 - v34;
      if (v35)
      {
        v25 = v36;
      }

      else
      {
        v25 = 0;
      }

      v37 = re::NetworkFeatureFlags::enableTransportLog(v32);
      if (v37)
      {
        log = *re::networkLogObjects(v37);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          if (*(v20 + 16))
          {
            v53 = *(v20 + 24);
          }

          else
          {
            v53 = v20 + 17;
          }

          v54 = *(v33 + 6);
          *buf = 136315650;
          *&buf[4] = v53;
          v61 = 1024;
          v62 = v28 % 0xAu;
          v63 = 1024;
          v64 = v54;
        }
      }

      v21 = re::Transport::queuePacketForProtocol(v56, v33, v20, v28 % 0xAu);
      *(v20 + 108) = (v28 + 1) % 0xAu;
LABEL_53:
      v23 = *(v20 + 96);
      v11 = v25;
LABEL_54:
      if (v23)
      {
        v38 = *(v20 + 112) == 0;
      }

      else
      {
        v38 = 1;
      }

      if (v38)
      {
        v39 = re::NetworkFeatureFlags::enableTransportLog(v21);
        if (v39)
        {
          v40 = *re::networkLogObjects(v39);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            if (*(v20 + 16))
            {
              v52 = *(v20 + 24);
            }

            else
            {
              v52 = v20 + 17;
            }

            *buf = 136315138;
            *&buf[4] = v52;
            _os_log_debug_impl(&dword_26168F000, v40, OS_LOG_TYPE_DEBUG, "No more send channels for connection: %s", buf, 0xCu);
          }
        }

        --v57;
        *(v20 + 112) = 0;
      }

LABEL_62:
      result = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(&v58);
      if (v58 != v12 || v59 != 0xFFFF || HIWORD(v59) != 0xFFFF)
      {
        continue;
      }

      break;
    }

LABEL_92:
    v14 = v57;
  }

  while (v57 && v11);
  return result;
}

unint64_t re::Transport::connect(re::Transport *this, const re::Address *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::tryGet(this + 272, a2);
  if (v4)
  {
    return *v4;
  }

  Connection = re::Transport::createConnection(this, a2);
  v7 = re::DynamicString::DynamicString(&v10, a2);
  v12 = Connection;
  v8 = re::globalAllocators(v7)[2];
  v14 = v8;
  v15 = 0;
  if (v8)
  {
    v9 = (*(*v8 + 32))(v8, 56, 0);
  }

  else
  {
    v9 = 0;
  }

  *v9 = &unk_2873F5F60;
  v9[1] = this;
  re::DynamicString::DynamicString((v9 + 2), &v10);
  v9[6] = v12;
  v15 = v9;
  (*(**(this + 41) + 16))(*(this + 41), v13);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v13);
  if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))();
  }

  return Connection;
}

uint64_t re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::tryGet(uint64_t a1, re::Address *this)
{
  v4 = re::Address::hash(this);
  re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::findEntry<re::Address>(a1, this, v4, &v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v7 + 40;
  }
}

unint64_t re::Transport::createConnection(re::Transport *this, const re::Address *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = *re::networkLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 488))
    {
      v6 = *(this + 62);
    }

    else
    {
      v6 = this + 489;
    }

    if (*(a2 + 1))
    {
      v7 = *(a2 + 2);
    }

    else
    {
      v7 = a2 + 9;
    }

    *buf = 136315394;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = v7;
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "Create connection(%s->%s)", buf, 0x16u);
  }

  v8 = *(this + 44);
  if ((v8 + 1) >> 24)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 + 1;
  }

  *(this + 44) = v9;
  v10 = *(this + 86);
  v11 = *(this + 87);
  if (v10 != 0xFFFF || v11 != 0xFFFF)
  {
    v13 = *(this + 17);
    if (v13 > v11)
    {
      v14 = (*(this + 19) + 16 * v11);
      *(v14[1] + 4 * v10) = v9;
      v15 = *v14 + 136 * v10;
      *(this + 43) = *v15;
      goto LABEL_23;
    }

    v31 = 0;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    memset(buf, 0, sizeof(buf));
    v23 = MEMORY[0x277D86220];
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v35 = 789;
    v36 = 2048;
    v37 = v11;
    v38 = 2048;
    v39 = v13;
    _os_log_send_and_compose_impl(v24, &v31, buf, 80, &dword_26168F000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v29, v30);
    _os_crash_msg();
    __break(1u);
    goto LABEL_32;
  }

  if (*(this + 42) >= *(this + 41))
  {
    re::DataArray<re::Connection>::allocBlock(this + 15);
  }

  v16 = *(this + 17);
  v11 = (v16 - 1);
  if (!v16)
  {
LABEL_32:
    v31 = 0;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    memset(buf, 0, sizeof(buf));
    v25 = MEMORY[0x277D86220];
    v26 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    if (v26)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    v35 = 789;
    v36 = 2048;
    v37 = v11;
    v38 = 2048;
    v39 = 0;
    _os_log_send_and_compose_impl(v27, &v31, buf, 80, &dword_26168F000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v29, v30);
    _os_crash_msg();
    __break(1u);
LABEL_36:
    re::internal::assertLog(5, v5, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v10);
    _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v28);
    __break(1u);
  }

  v10 = *(this + 42);
  if (v10 >= 0x10000)
  {
    goto LABEL_36;
  }

  v17 = (*(this + 19) + 16 * v11);
  *(this + 42) = v10 + 1;
  *(v17[1] + 4 * v10) = *(this + 44);
  v15 = *v17 + 136 * v10;
LABEL_23:
  ++*(this + 40);
  *v15 = 0;
  re::DynamicString::DynamicString((v15 + 8), a2);
  *(v15 + 68) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 40) = 0u;
  *(v15 + 84) = 0x7FFFFFFFLL;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *(v15 + 108) = 0;
  *(v15 + 112) = 0;
  *(v15 + 120) = 0;
  *(v15 + 128) = 0x8000000000000000;
  v18 = v10 + (v11 << 16) + ((*(this + 44) & 0xFFFFFF) << 32);
  memset(buf, 0, 24);
  v19 = re::Address::hash(a2);
  re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::findEntry<re::Address>(this + 272, a2, v19, buf);
  if (*&buf[12] == 0x7FFFFFFF)
  {
    v20 = re::HashTable<re::Address,unsigned long long,re::Address::Hasher,re::EqualTo<re::Address>,true,false>::allocEntry(this + 272, *&buf[8], *buf);
    re::DynamicString::DynamicString((v20 + 8), a2);
    *(v20 + 40) = v18;
    ++*(this + 78);
  }

  v21 = *(this + 70);
  if (v21)
  {
    (*(*v21 + 32))(v21, this, v18);
  }

  return v18;
}

void re::Transport::disconnect(re::Transport *this, unint64_t a2, int a3)
{
  v6 = re::DataArray<re::Connection>::tryGet(this + 120, a2);
  if (v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    re::DynamicString::setCapacity(&v9, 0);
    v8 = 1;
    v13 = a3;
    re::Transport::connectionStateEvent(this, a2, &v8);
    if (v9)
    {
      if (v10)
      {
        (*(*v9 + 40))();
      }
    }
  }

  else
  {
    v7 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v8) = 0;
      _os_log_debug_impl(&dword_26168F000, v7, OS_LOG_TYPE_DEBUG, "Attempt to disconnect connection that does not exist. This can happen if connection broke right before this request.", &v8, 2u);
    }
  }
}

uint64_t re::DataArray<re::Connection>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 136 * a2;
  }

  else
  {
    return 0;
  }
}

void re::Transport::connectionStateEvent(re::Transport *a1, unint64_t a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = re::DataArray<re::Connection>::get(a1 + 120, a2);
  v7 = *v6;
  if (*v6 == 2)
  {
    v14 = *a3;
    if (*a3 == 3)
    {
LABEL_24:
      (*(**(a1 + 76) + 16))(*(a1 + 76), a2, *(a3 + 40));
      goto LABEL_25;
    }

    if (v14 == 2)
    {
LABEL_25:

      re::Transport::destroyConnection(a1, a2);
      return;
    }

    if (!v14)
    {
      v15 = re::DataArray<re::Connection>::get(a1 + 120, a2);
      v16 = *(v15 + 5);
      if (v16)
      {
        v17 = (v16 + 8);
        v15 = (v16 + 8);
      }

      v18 = re::globalAllocators(v15)[2];
      v32 = v16;
      v33 = v18;
      v30 = &unk_2873F6118;
      v31 = a1;
      v34 = &v30;
      (*(**(a1 + 41) + 16))(*(a1 + 41), &v30);
      re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v30);
      if (!v16)
      {
        return;
      }

      v19 = (v16 + 8);
LABEL_43:

      return;
    }

    v21 = *re::networkLogObjects(v6);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v24 = *a3;
    LODWORD(v30) = 67109120;
    HIDWORD(v30) = v24;
    v23 = "Unexpected event: %d in 'Closing' state.";
LABEL_36:
    _os_log_impl(&dword_26168F000, v21, OS_LOG_TYPE_DEFAULT, v23, &v30, 8u);
    return;
  }

  if (v7 == 1)
  {
    v9 = re::DataArray<re::Connection>::get(a1 + 120, a2);
    v10 = *a3;
    if (*a3 == 3)
    {
      v9 = (*(**(a1 + 76) + 16))(*(a1 + 76), a2, *(a3 + 40));
    }

    else if (v10 != 2)
    {
      if (v10 == 1)
      {
        v11 = *(v9 + 5);
        if (v11)
        {
          v12 = (v11 + 8);
          v13 = *(a3 + 44);
          v9 = (v11 + 8);
        }

        else
        {
          v13 = *(a3 + 44);
        }

        v33 = re::globalAllocators(v9)[2];
        v27 = (*(*v33 + 32))(v33, 32, 0);
        *v27 = &unk_2873F6010;
        *(v27 + 8) = a1;
        *(v27 + 16) = v11;
        *(v27 + 24) = v13 != 0;
        v34 = v27;
        (*(**(a1 + 41) + 16))(*(a1 + 41), &v30);
        re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v30);
        re::Transport::connectionSetState(a1, a2, 2);
        v29 = re::globalAllocators(v28)[2];
        v32 = a2;
        v33 = v29;
        v30 = &unk_2873F6068;
        v31 = a1;
        v34 = &v30;
        (*(**(a1 + 40) + 16))(*(a1 + 40), &v30);
        re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v30);
        if (!v11)
        {
          return;
        }

        v19 = (v11 + 8);
        goto LABEL_43;
      }

      v21 = *re::networkLogObjects(v9);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v22 = *a3;
      LODWORD(v30) = 67109120;
      HIDWORD(v30) = v22;
      v23 = "Unexpected event: %d in 'Active' state.";
      goto LABEL_36;
    }

    v20 = re::globalAllocators(v9)[2];
    v32 = a2;
    v33 = v20;
    v30 = &unk_2873F60C0;
    v31 = a1;
    v34 = &v30;
    (*(**(a1 + 40) + 16))(*(a1 + 40), &v30);
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v30);
    return;
  }

  if (v7)
  {
    return;
  }

  v8 = *a3;
  if (*a3 > 1)
  {
    if (v8 != 2)
    {
      if (v8 != 3)
      {
LABEL_34:
        v21 = *re::networkLogObjects(v6);
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v25 = *a3;
        LODWORD(v30) = 67109120;
        HIDWORD(v30) = v25;
        v23 = "Unexpected event: %d in 'Pending' state.";
        goto LABEL_36;
      }

      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (v8)
  {
    if (v8 == 1)
    {

      re::Transport::connectionSetState(a1, a2, 2);
      return;
    }

    goto LABEL_34;
  }

  re::Transport::connectionSetState(a1, a2, 1);
  v26 = ***(a1 + 76);

  v26();
}

uint64_t re::DataArray<re::Connection>::handle(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (*(a1 + 32) + 8);
    v5 = 0x10000;
    while (v5)
    {
      v6 = a2 - *(v4 - 1);
      if (v6 >= -135)
      {
        v7 = 0xF0F0F0F0F0F0F0F1 * (v6 >> 3);
        if (v7 < *(a1 + 44))
        {
          goto LABEL_8;
        }
      }

      v3 -= 0x10000;
      --v5;
      v4 += 2;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) blockIndex (%zu) is too large for a 16-bit unsigned integer", "!overflow", "handle", 692, 0x10000);
    _os_crash("assertion failure: (!overflow) blockIndex (%zu) is too large for a 16-bit unsigned integer", v9);
    __break(1u);
  }

  else
  {
LABEL_7:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) element isn't in data array", "!Unreachable code", "handle", 707);
    _os_crash("assertion failure: (!Unreachable code) element isn't in data array");
    __break(1u);
LABEL_8:
    if (v7 < 0x10000)
    {
      return v7 + ((*(*v4 + 4 * v7) & 0xFFFFFF) << 32) - v3;
    }
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) arrayIndex (%zu) is too large for a 16-bit unsigned integer", "!overflow", "handle", 700, v7);
  result = _os_crash("assertion failure: (!overflow) arrayIndex (%zu) is too large for a 16-bit unsigned integer", v10);
  __break(1u);
  return result;
}