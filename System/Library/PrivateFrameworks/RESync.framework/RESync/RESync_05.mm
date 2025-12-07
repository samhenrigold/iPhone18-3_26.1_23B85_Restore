void re::Event<re::Session,unsigned long long>::raise(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 80);
  *(a1 + 80) = v4 + 1;
  if (*(a1 + 16))
  {
    v6 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v6 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, v6);
      }

      else
      {
        ++v6;
      }
    }

    while (v6 < *(a1 + 16));
    v4 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v4;
  if (!v4)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = 0;
      for (i = 0; i != v7; ++i)
      {
        v10 = *(a1 + 56);
        if (v10 <= i)
        {
          v18 = 0;
          memset(v29, 0, sizeof(v29));
          v14 = MEMORY[0x277D86220];
          v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          v21 = 136315906;
          v22 = "operator[]";
          v23 = 1024;
          if (v15)
          {
            v16 = 3;
          }

          else
          {
            v16 = 2;
          }

          v24 = 789;
          v25 = 2048;
          v26 = i;
          v27 = 2048;
          v28 = v10;
          _os_log_send_and_compose_impl(v16, &v18, v29, 80, &dword_26168F000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, a3);
          _os_crash_msg();
          __break(1u);
        }

        v11 = *(a1 + 72) + v8;
        v12 = *(v11 + 32);
        v13 = *(v11 + 16);
        v19[0] = *v11;
        v19[1] = v13;
        v20 = v12;
        if (LOBYTE(v19[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, v19 + 1, v29);
          if ((v29[0] & 1) == 0)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(a1, v19 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, v19 + 1, v29);
          if (LOBYTE(v29[0]) == 1)
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(a1, *(&v29[0] + 1));
          }
        }

        v8 += 40;
      }
    }
  }
}

BOOL re::Session::isLocalPeer(re::Session *this, uint64_t a2)
{
  v2 = *(this + 380);
  if (v2)
  {
    return *(v2 + 24) == a2;
  }

  v4 = *re::networkLogObjects(this);
  result = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (result)
  {
    *v5 = 0;
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_INFO, "Routing table is nil", v5, 2u);
    return 0;
  }

  return result;
}

uint64_t re::Session::hasPeerID(re::Session *this, uint64_t a2)
{
  v2 = *(this + 287);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 289);
  v4 = 8 * v2;
  while (1)
  {
    v5 = *v3;
    if (*(*v3 + 24) == a2)
    {
      break;
    }

    ++v3;
    v4 -= 8;
    if (!v4)
    {
      return 0;
    }
  }

  v7 = (v5 + 8);

  return 1;
}

uint64_t re::DynamicArray<re::Session::SendHandshakeInProgressEntry>::removeAt(uint64_t result, unint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(result + 16);
  if (v3 <= a2)
  {
    v12 = 0;
    memset(v21, 0, sizeof(v21));
    v9 = MEMORY[0x277D86220];
    v13 = 136315906;
    v14 = "removeAt";
    v15 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 931;
    v17 = 2048;
    v18 = a2;
    v19 = 2048;
    v20 = v3;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_26168F000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v4 = v3 - 1;
  if (v3 - 1 > a2)
  {
    v5 = *(result + 32);
    v6 = v5 + 32 * v3;
    v7 = (v5 + 32 * a2);
    v8 = *(v6 - 16);
    *v7 = *(v6 - 32);
    v7[1] = v8;
    v4 = *(result + 16) - 1;
  }

  *(result + 16) = v4;
  ++*(result + 24);
  return result;
}

uint64_t re::Session::removePendingPeerHelloForConnection(uint64_t this, uint64_t a2)
{
  v2 = *(this + 3200);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 3216) + 16);
    while (1)
    {
      v5 = *v4;
      v4 += 4;
      if (v5 == a2)
      {
        break;
      }

      if (v2 == ++v3)
      {
        return this;
      }
    }

    return re::DynamicArray<re::Session::SendHandshakeInProgressEntry>::removeAt(this + 3184, v3);
  }

  return this;
}

_anonymous_namespace_ *re::Session::onConnected(re::Session *this, uint64_t a2)
{
  re::Event<re::Session,unsigned long long>::raise(this + 1792, this, a2);
  if (!re::Session::findBacklogItemWithConnectionHandle(this, a2, 0))
  {
    v21 = 0;
    v14[1] = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v19 = 0u;
    v20 = 0;
    re::DynamicArray<unsigned char>::setCapacity(&v18, 0);
    ++v20;
    v14[0] = a2;
    v17 = (*(**(this + 282) + 32))(*(this + 282));
    re::DynamicArray<re::Session::BacklogItem>::add(this + 3144, v14);
    if (v18)
    {
      if (v21)
      {
        (*(*v18 + 40))();
      }

      v21 = 0;
      v19 = 0uLL;
      v18 = 0;
      ++v20;
    }

    if (v15)
    {
    }
  }

  result = (*(**(this + 282) + 32))(*(this + 282));
  v5 = result;
  v6 = *(this + 400);
  v7 = *(this + 399);
  if (v6 >= v7)
  {
    v8 = v6 + 1;
    if (v7 < v6 + 1)
    {
      if (*(this + 398))
      {
        v9 = 2 * v7;
        v10 = v7 == 0;
        v11 = 8;
        if (!v10)
        {
          v11 = v9;
        }

        if (v11 <= v8)
        {
          v12 = v8;
        }

        else
        {
          v12 = v11;
        }

        result = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(this + 398, v12);
      }

      else
      {
        result = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity(this + 398, v8);
        ++*(this + 802);
      }
    }

    v6 = *(this + 400);
  }

  v13 = (*(this + 402) + 32 * v6);
  *v13 = v5;
  v13[1] = 0;
  v13[2] = a2;
  v13[3] = 0;
  ++*(this + 400);
  ++*(this + 802);
  return result;
}

uint64_t re::Session::findBacklogItemWithConnectionHandle(re::Session *this, uint64_t a2, unint64_t *a3)
{
  v9[5] = *MEMORY[0x277D85DE8];
  v6 = re::globalAllocators(this)[2];
  v9[0] = &unk_2873F51B8;
  v9[1] = a2;
  v9[3] = v6;
  v9[4] = v9;
  BacklogItem = re::Session::findBacklogItem(this, v9, a3);
  re::FunctionBase<24ul,BOOL ()(re::Session::BacklogItem const&)>::destroyCallable(v9);
  return BacklogItem;
}

uint64_t re::DynamicArray<re::Session::BacklogItem>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::Session::BacklogItem>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::Session::BacklogItem>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 80 * v5;
  *v11 = *a2;
  v12 = *(a2 + 16);
  *(v11 + 16) = v12;
  if (v12)
  {
    v13 = (v12 + 8);
  }

  *(v11 + 24) = *(a2 + 24);
  result = re::DynamicArray<unsigned char>::DynamicArray(v11 + 40, (a2 + 40));
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::Session::onDisconnected(uint64_t **this, uint64_t a2)
{
  re::Event<re::Session,unsigned long long>::raise((this + 235), this, a2);
  v15 = 0;
  v16 = 0;
  BacklogItemWithConnectionHandle = re::Session::findBacklogItemWithConnectionHandle(this, a2, &v15);
  if (BacklogItemWithConnectionHandle)
  {
    re::SharedPtr<re::SyncObject>::reset(&v16, *(BacklogItemWithConnectionHandle + 16));
    re::DynamicArray<re::Session::BacklogItem>::removeAt((this + 393), v15);
  }

  v5 = this[287];
  if (v5)
  {
    v6 = this[289];
    v7 = 8 * v5;
    while (1)
    {
      v8 = *v6;
      if (*(*v6 + 32) == a2)
      {
        break;
      }

      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    v9 = (v8 + 8);
    re::SharedPtr<re::SyncObject>::reset(&v16, *(v8 + 152));
    v14 = v8;
    v10 = (v8 + 8);
    re::Session::removeParticipant(this, &v14);
  }

LABEL_9:
  v11 = this[276];
  if (v11)
  {
    if (v16)
    {
      v13 = v16;
      v12 = (v16 + 8);
      (*(*v11 + 80))(v11, &v13);
      if (v13)
      {

        v13 = 0;
      }
    }
  }

  re::Session::removePendingPeerHelloForConnection(this, a2);
  if (v16)
  {
  }
}

void re::DynamicArray<re::Session::BacklogItem>::removeAt(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x277D86220];
    v15 = 136315906;
    v16 = "removeAt";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 931;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v3;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_26168F000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  if (v3 - 1 > a2)
  {
    v5 = *(a1 + 32);
    v6 = v5 + 80 * v3;
    v7 = v5 + 80 * a2;
    *v7 = *(v6 - 80);
    v8 = *(v7 + 16);
    *(v7 + 16) = *(v6 - 64);
    *(v6 - 64) = v8;
    *(v7 + 24) = *(v6 - 56);
    re::DynamicArray<unsigned char>::operator=((v7 + 40), (v6 - 40));
    v3 = *(a1 + 16);
  }

  v9 = *(a1 + 32) + 80 * v3;
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v9 - 40);
  v10 = *(v9 - 64);
  if (v10)
  {

    *(v9 - 64) = 0;
  }

  --*(a1 + 16);
  ++*(a1 + 24);
}

uint64_t re::Session::removeParticipant(uint64_t a1, uint64_t *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(*a2 + 24);
  v18 = *a2;
  v5 = (*a2 + 8);
  re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::raise(a1 + 384, a1);
  if (v18)
  {

    v18 = 0;
  }

  re::RoutingTable::removeRoutesForConnection(*(a1 + 3040), (a1 + 2320), *(*a2 + 32));
  v6 = *(a1 + 2312);
  v7 = *(a1 + 2296);
  if (v7)
  {
    v8 = 8 * v7;
    v9 = *(a1 + 2312);
    while (*v9 != *a2)
    {
      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v9 = *(a1 + 2312);
  }

  if (v9 != (v6 + 8 * v7))
  {
    re::DynamicArray<re::SharedPtr<re::SessionParticipant>>::removeAt(a1 + 2280, (v9 - v6) >> 3);
  }

LABEL_11:
  v10 = *(a1 + 3064);
  if (v10)
  {
    v11 = v10 - 1;
    v12 = 40 * v10;
    do
    {
      v13 = *(a1 + 3064);
      if (v13 <= v11)
      {
        v19 = 0;
        memset(v28, 0, sizeof(v28));
        v16 = MEMORY[0x277D86220];
        v20 = 136315906;
        v21 = "operator[]";
        v22 = 1024;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v23 = 789;
        v24 = 2048;
        v25 = v11;
        v26 = 2048;
        v27 = v13;
        _os_log_send_and_compose_impl(v17, &v19, v28, 80, &dword_26168F000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
        _os_crash_msg();
        __break(1u);
      }

      v14 = *(a1 + 3080) + v12;
      if (*(v14 - 32) == v4)
      {
        re::PacketPool::free(*(a1 + 2704), *(v14 - 40));
        re::DynamicArray<re::Session::PendingMessage>::removeStableAt((a1 + 3048), v11);
      }

      --v11;
      v12 -= 40;
    }

    while (v11 != -1);
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::Session::stateEvent(a1, 5);
  return (*(**(a1 + 7424) + 96))(*(a1 + 7424), v4);
}

uint64_t re::Session::onError(uint64_t this, uint64_t a2, int a3)
{
  if ((a3 & 0xFFFFFFFB) == 0)
  {
    v5 = this;
    v6 = *(this + 3160);
    if (v6)
    {
      v7 = 0;
      v8 = *(this + 3176);
      while (1)
      {
        v9 = *v8;
        v8 += 10;
        if (v9 == a2)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_8;
        }
      }

      re::DynamicArray<re::Session::BacklogItem>::removeAt(this + 3144, v7);
    }

LABEL_8:

    return re::Session::removePendingPeerHelloForConnection(v5, a2);
  }

  return this;
}

_anonymous_namespace_ *re::Session::onReceive(_anonymous_namespace_ *result, uint64_t a2, int a3)
{
  if (a3 != 1)
  {
    v4 = result;
    v5 = *(result + 407);
    v6 = *(result + 405);
    if (v6)
    {
      v7 = 8 * v6;
      v8 = *(result + 407);
      while (*v8 != a2)
      {
        ++v8;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v9 = *(result + 404);
      if (v6 >= v9)
      {
        v10 = v6 + 1;
        if (v9 < v6 + 1)
        {
          if (*(result + 403))
          {
            v11 = 2 * v9;
            if (!v9)
            {
              v11 = 8;
            }

            if (v11 <= v10)
            {
              v12 = v10;
            }

            else
            {
              v12 = v11;
            }

            result = re::DynamicArray<re::Allocator const*>::setCapacity(result + 403, v12);
          }

          else
          {
            result = re::DynamicArray<re::Allocator const*>::setCapacity(v4 + 403, v10);
            ++*(v4 + 812);
          }
        }

        v6 = *(v4 + 405);
        v5 = *(v4 + 407);
      }

      *(v5 + 8 * v6) = a2;
      *(v4 + 405) = v6 + 1;
      ++*(v4 + 812);
    }
  }

  return result;
}

void re::Session::onConnectionPaused(re::Session *this, uint64_t a2)
{
  v2 = *(this + 287);
  if (v2)
  {
    v4 = *(this + 289);
    v5 = 8 * v2;
    while (1)
    {
      v6 = *v4;
      if (*(*v4 + 32) == a2)
      {
        break;
      }

      ++v4;
      v5 -= 8;
      if (!v5)
      {
        return;
      }
    }

    v7 = (v6 + 8);
    re::Event<re::Session,unsigned long long>::raise(this + 1968, this, *(v6 + 24));
  }
}

void re::Session::onConnectionResumed(re::Session *this, uint64_t a2)
{
  v2 = *(this + 287);
  if (v2)
  {
    v4 = *(this + 289);
    v5 = 8 * v2;
    while (1)
    {
      v6 = *v4;
      if (*(*v4 + 32) == a2)
      {
        break;
      }

      ++v4;
      v5 -= 8;
      if (!v5)
      {
        return;
      }
    }

    v7 = (v6 + 8);
    re::Event<re::Session,unsigned long long>::raise(this + 2056, this, *(v6 + 24));
  }
}

uint64_t re::Session::findBacklogItem(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 3160);
  if (!v3)
  {
    return 0;
  }

  v7 = *(a1 + 3176);
  v8 = -v7;
  v9 = 80 * v3;
  while (!(*(**(a2 + 32) + 16))(*(a2 + 32), v7))
  {
    v7 += 80;
    v8 -= 80;
    v9 -= 80;
    if (!v9)
    {
      return 0;
    }
  }

  if (a3)
  {
    *a3 = 0xCCCCCCCCCCCCCCCDLL * ((-v8 - *(a1 + 3176)) >> 4);
  }

  return v7;
}

void re::Session::findParticipantWithIdentity(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v7 = v5;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  re::Session::findParticipant<re::Session::findParticipantWithIdentity(re::SharedPtr<re::DiscoveryIdentity> const&)::{lambda(re::SessionParticipant const*)#1}>(a1, &v7, a3);
  if (v7)
  {
  }
}

void re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::raise(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  HIDWORD(v16) = 0;
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

void re::DynamicArray<re::SharedPtr<re::SessionParticipant>>::removeAt(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v14 = 0;
    memset(v23, 0, sizeof(v23));
    v11 = MEMORY[0x277D86220];
    v15 = 136315906;
    v16 = "removeAt";
    v17 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v18 = 931;
    v19 = 2048;
    v20 = a2;
    v21 = 2048;
    v22 = v3;
    _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_26168F000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
    _os_crash_msg();
    __break(1u);
  }

  v5 = v3 - 1;
  if (v3 - 1 > a2)
  {
    v6 = *(a1 + 32);
    v7 = v6 + 8 * v3;
    v8 = *(v6 + 8 * a2);
    *(v6 + 8 * a2) = *(v7 - 8);
    *(v7 - 8) = v8;
  }

  v9 = *(a1 + 32) + 8 * v3;
  v10 = *(v9 - 8);
  if (v10)
  {

    *(v9 - 8) = 0;
    v5 = *(a1 + 16) - 1;
  }

  *(a1 + 16) = v5;
  ++*(a1 + 24);
}

void re::Session::onLeaderChange(re::Session *this, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *re::networkLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134218240;
    v6 = a2;
    v7 = 2048;
    v8 = re::Session::peerID(this);
    _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "Picked session leader %llu (localPeerID=%llu)", &v5, 0x16u);
  }

  re::Event<re::Session,unsigned long long>::raise(this + 1704, this, a2);
}

void re::DynamicArray<unsigned char>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<unsigned char>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      bzero((*(a1 + 32) + v4), v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::unsubscribe<re::Session>(void *result, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (result[2])
  {
    v4 = 0;
    do
    {
      v5 = (result[4] + 32 * v4);
      if (*v5 == a2)
      {
        if (!*(result + 20))
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(result, v4);
          continue;
        }

        v7[0] = 0;
        v6 = v5[1];
        v8 = *v5;
        v9 = v6;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::Subscription,true>>::add((result + 5), v7);
      }

      ++v4;
    }

    while (v4 < result[2]);
  }
}

float re::Session::averagedStatsAggregated@<S0>(re::Session *this@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(this + 926);
  v4 = *(this + 925);
  v5 = v3 - v4;
  if ((v3 - v4) >= 2)
  {
    v6 = this + 32 * ((v3 - 1) & 0x7F) + 3304;
    v7 = this + 32 * (*(this + 925) & 0x7FLL) + 3304;
    a3 = (((*(v6 + 3) - *(v7 + 3)) / 1000000) / 1000.0);
    if (a3 > 0.0001)
    {
      v8 = vsubq_s32(*(v6 + 8), *(v7 + 8));
      v9.i64[0] = v8.u32[0];
      v9.i64[1] = v8.u32[1];
      v10 = vcvtq_f64_u64(v9);
      v9.i64[0] = v8.u32[2];
      v9.i64[1] = v8.u32[3];
      v11 = vdupq_lane_s64(*&a3, 0);
      *(a2 + 8) = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v10, v11)), vdivq_f64(vcvtq_f64_u64(v9), v11));
      v12 = 0.0;
      if (v3 != v4)
      {
        v13 = 0.0;
        do
        {
          v14 = (this + 32 * (v4 & 0x7F) + 3304);
          v13 = v13 + v14[1];
          v12 = v12 + *v14;
          ++v4;
        }

        while (v3 != v4);
        *(a2 + 4) = v13;
      }

      *&a3 = v12 / v5;
      *a2 = LODWORD(a3);
    }
  }

  return *&a3;
}

double re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = a1[2];
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 32;
        --v3;
      }

      while (v3);
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

void *re::internal::Callable<re::Session::findBacklogItemWithConnectionHandle(unsigned long long,unsigned long *)::{lambda(re::Session::BacklogItem const&)#1},BOOL ()(re::Session::BacklogItem const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2873F51B8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Session::findBacklogItemWithConnectionHandle(unsigned long long,unsigned long *)::{lambda(re::Session::BacklogItem const&)#1},BOOL ()(re::Session::BacklogItem const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2873F51B8;
  a2[1] = v2;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,BOOL ()(re::Session::BacklogItem const&)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *re::internal::Callable<re::Session::discoveryViewDidJoin(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F5220;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::Session::discoveryViewDidJoin(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F5220;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x266708EC0);
}

void re::internal::Callable<re::Session::discoveryViewDidJoin(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (*(**(a1 + 16) + 32))(*(a1 + 16));
    *v7 = 136315138;
    *&v7[4] = v4;
    _os_log_impl(&dword_26168F000, v3, OS_LOG_TYPE_DEFAULT, "Discovered new peer: %s", v7, 0xCu);
  }

  v5 = *(a1 + 16);
  *v7 = v5;
  if (v5)
  {
    v6 = (v5 + 8);
    re::Session::addIdentity(v2, v7);
  }

  else
  {
    re::Session::addIdentity(v2, v7);
  }
}

void *re::internal::Callable<re::Session::discoveryViewDidJoin(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_2873F5220;
  a2[1] = v4;
  a2[2] = v3;
  if (v3)
  {
    v5 = (v3 + 8);
  }

  return a2;
}

uint64_t re::internal::Callable<re::Session::discoveryViewDidJoin(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F5220;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,void ()(void)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *re::internal::Callable<re::Session::discoveryViewDidLeave(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F5278;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void re::internal::Callable<re::Session::discoveryViewDidLeave(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F5278;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x266708EC0);
}

void re::internal::Callable<re::Session::discoveryViewDidLeave(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::operator()(re *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1);
  v3 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (*(**(a1 + 2) + 32))(*(a1 + 2));
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_26168F000, v3, OS_LOG_TYPE_DEFAULT, "Lost peer: %s", buf, 0xCu);
  }

  v5 = *(a1 + 2);
  v23 = v5;
  if (v5)
  {
    v6 = (v5 + 8);
    v31 = 0;
    v34 = re::globalAllocators((v5 + 8))[2];
    v35 = 0;
    *buf = &unk_2873F52D0;
    *&buf[8] = v5;
    v7 = (v5 + 8);
    v35 = buf;
    BacklogItem = re::Session::findBacklogItem(v2, buf, &v31);
    re::FunctionBase<24ul,BOOL ()(re::Session::BacklogItem const&)>::destroyCallable(buf);

    if (BacklogItem)
    {
      v9 = *BacklogItem;
      re::DynamicArray<re::Session::BacklogItem>::removeAt((v2 + 393), v31);
      if (v9)
      {
        v11 = *re::networkLogObjects(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          re::Transport::connectionAddress(&v27, (v2 + 290), v9);
          if (v28)
          {
            v12 = v30;
          }

          else
          {
            v12 = v29;
          }

          v13 = (*(*v5 + 32))(v5);
          (*(*v5 + 40))(&v24, v5);
          if (v25)
          {
            v14 = *&v26[7];
          }

          else
          {
            v14 = v26;
          }

          *buf = 136315650;
          *&buf[4] = v12;
          *&buf[12] = 2080;
          *&buf[14] = v13;
          v33 = 2080;
          v34 = v14;
          _os_log_impl(&dword_26168F000, v11, OS_LOG_TYPE_DEFAULT, "Dropping pending connection %s. because its identity '%s (%s)' left.", buf, 0x20u);
          if (v24 && (v25 & 1) != 0)
          {
            (*(*v24 + 40))();
          }

          if (v27 && (v28 & 1) != 0)
          {
            (*(*v27 + 40))();
          }
        }

        re::Transport::disconnect((v2 + 290), v9, 1);
        re::Session::removePendingPeerHelloForConnection(v2, v9);
      }
    }

    re::Session::findParticipantWithIdentity(v2, &v23, &v24);
    if (v24)
    {
      v16 = *re::networkLogObjects(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = (*(v24 + 48) & 1) != 0 ? *(v24 + 56) : v24 + 49;
        v18 = (*(*v23 + 32))(v23);
        (*(*v23 + 40))(&v27);
        v19 = (v28 & 1) != 0 ? v30 : v29;
        *buf = 136315650;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = v18;
        v33 = 2080;
        v34 = v19;
        _os_log_impl(&dword_26168F000, v16, OS_LOG_TYPE_DEFAULT, "Deleting participant '%s' for identity '%s (%s)'.", buf, 0x20u);
        if (v27)
        {
          if (v28)
          {
            (*(*v27 + 40))();
          }
        }
      }

      v20 = v24;
      v21 = *(v24 + 32);
      *buf = v24;
      v22 = (v24 + 8);
      re::Session::removeParticipant(v2, buf);

      re::Transport::disconnect((v2 + 290), v21, 1);
      re::Session::removePendingPeerHelloForConnection(v2, v21);
      if (v24)
      {
      }
    }

    if (v23)
    {
    }
  }
}

void *re::internal::Callable<re::Session::discoveryViewDidLeave(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = &unk_2873F5278;
  a2[1] = v4;
  a2[2] = v3;
  if (v3)
  {
    v5 = (v3 + 8);
  }

  return a2;
}

uint64_t re::internal::Callable<re::Session::discoveryViewDidLeave(re::DiscoveryView *,re::SharedPtr<re::DiscoveryIdentity>)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F5278;
  *(a2 + 8) = *(a1 + 8);
  *(a1 + 16) = 0;
  return a2;
}

void *re::internal::Callable<re::Session::findBacklogItemWithIdentity(re::SharedPtr<re::DiscoveryIdentity> const&,unsigned long *)::{lambda(re::Session::BacklogItem const&)#1},BOOL ()(re::Session::BacklogItem const&)>::~Callable(void *a1)
{
  *a1 = &unk_2873F52D0;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  return a1;
}

void re::internal::Callable<re::Session::findBacklogItemWithIdentity(re::SharedPtr<re::DiscoveryIdentity> const&,unsigned long *)::{lambda(re::Session::BacklogItem const&)#1},BOOL ()(re::Session::BacklogItem const&)>::~Callable(void *a1)
{
  *a1 = &unk_2873F52D0;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  JUMPOUT(0x266708EC0);
}

void *re::internal::Callable<re::Session::findBacklogItemWithIdentity(re::SharedPtr<re::DiscoveryIdentity> const&,unsigned long *)::{lambda(re::Session::BacklogItem const&)#1},BOOL ()(re::Session::BacklogItem const&)>::cloneInto(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = &unk_2873F52D0;
  a2[1] = v3;
  if (v3)
  {
    v4 = (v3 + 8);
  }

  return a2;
}

void *re::internal::Callable<re::Session::findBacklogItemWithIdentity(re::SharedPtr<re::DiscoveryIdentity> const&,unsigned long *)::{lambda(re::Session::BacklogItem const&)#1},BOOL ()(re::Session::BacklogItem const&)>::moveInto(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = &unk_2873F52D0;
  a2[1] = v3;
  if (v3)
  {
    v4 = (v3 + 8);
  }

  return a2;
}

void *re::Session::findParticipant<re::Session::findParticipantWithIdentity(re::SharedPtr<re::DiscoveryIdentity> const&)::{lambda(re::SessionParticipant const*)#1}>@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = result[287];
  if (v3)
  {
    v4 = result[289];
    v5 = 8 * v3;
    while (1)
    {
      v6 = *v4;
      if (*(*v4 + 152) == *a2)
      {
        break;
      }

      ++v4;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    *a3 = v6;
    return (v6 + 8);
  }

  else
  {
LABEL_5:
    *a3 = 0;
  }

  return result;
}

uint64_t re::Event<re::Session>::~Event(uint64_t a1)
{
  if (*a1)
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    if (*(a1 + 72))
    {
      (*(*v2 + 40))(v2);
    }

    *(a1 + 72) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    ++*(a1 + 64);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(a1);
  return a1;
}

double re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::addSubscription(_anonymous_namespace_ *a1, __int128 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(a1, a2, v6);
  if ((v6[0] & 1) == 0)
  {
    if (*(a1 + 20))
    {
      v6[0] = 1;
      v5 = a2[1];
      v7 = *a2;
      v8 = v5;
      *&result = re::DynamicArray<re::Pair<BOOL,re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::Subscription,true>>::add(a1 + 40, v6).n128_u64[0];
    }

    else
    {
      *&result = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(a1, a2).n128_u64[0];
    }
  }

  return result;
}

__n128 re::DynamicArray<re::Pair<BOOL,re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::Subscription,true>>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 40 * v5;
  result = *a2;
  v13 = *(a2 + 16);
  *(v11 + 32) = *(a2 + 32);
  *v11 = result;
  *(v11 + 16) = v13;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::createSubscription<re::Session>(re::Session *,REEventHandlerResult (re::Session::*)(re::DiscoveryView*,re::SharedPtr<re::DiscoveryIdentity>))::{lambda(re::DiscoveryView*,re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::Subscription const&,re::SharedPtr<re::DiscoveryIdentity>&&)#1}::__invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2[1];
  v4 = a2[2];
  v6 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v7 = *a3;
  v11 = v7;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  v9 = v5(v6, a1, &v11);
  if (v11)
  {
  }

  return v9;
}

re::RoutingTable *re::make::shared::object<re::RoutingTable>@<X0>(re *a1@<X0>, re::RoutingTable **a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 128, 8);
  result = re::RoutingTable::RoutingTable(v4);
  *a2 = result;
  return result;
}

uint64_t re::DynamicArray<re::Event<re::Session,unsigned long long,re::SessionError>::Subscription>::indexOf(uint64_t result, uint64_t a2, char *a3, void *a4)
{
  v4 = a3;
  if (a2)
  {
    v5 = 32 * a2;
    v4 = a3;
    while (*v4 != *a4 || *(v4 + 1) != a4[1] || *(v4 + 2) != a4[2])
    {
      v4 += 32;
      v5 -= 32;
      if (!v5)
      {
        goto LABEL_12;
      }
    }
  }

  if (v4 == &a3[32 * a2])
  {
LABEL_12:
    v7 = 0;
  }

  else
  {
    *(result + 8) = (v4 - a3) >> 5;
    v7 = 1;
  }

  *result = v7;
  return result;
}

__n128 re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, __n128 *a4)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      v9 = *(a1 + 28);
      v10 = 2 * v9;
      v11 = *a1;
      if (*a1)
      {
        if (v10)
        {
          v12 = v7 == v10;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && (v9 & 0x80000000) == 0)
        {
          memset(v24, 0, 36);
          *&v24[36] = 0x7FFFFFFFLL;
          re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::init(v24, v11, v10);
          v13 = *v24;
          *v24 = *a1;
          *a1 = v13;
          v14 = *&v24[16];
          v15 = *(a1 + 16);
          *&v24[16] = v15;
          *(a1 + 16) = v14;
          v17 = *&v24[24];
          *&v24[24] = *(a1 + 24);
          v16 = *&v24[32];
          *(a1 + 24) = v17;
          v18 = v16;
          if (v16)
          {
            v19 = v15 + 1;
            do
            {
              if ((v19[-1].n128_u32[2] & 0x80000000) != 0)
              {
                re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::addAsMove(a1, v19[-1].n128_u64[0] % *(a1 + 24), v19[-1].n128_u64[0], v19);
              }

              v19 += 2;
              --v18;
            }

            while (v18);
          }

          re::HashSetBase<re::Pair<unsigned long long,unsigned long long,true>,re::Pair<unsigned long long,unsigned long long,true>,re::internal::ValueAsKey<re::Pair<unsigned long long,unsigned long long,true>>,re::Hash<re::Pair<unsigned long long,unsigned long long,true>>,re::EqualTo<re::Pair<unsigned long long,unsigned long long,true>>,true,false>::deinit(v24);
        }
      }

      else
      {
        if (v10)
        {
          v22 = v10;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v7 + 8);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v7 + 8);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  *(v20 + 32 * v7 + 8) = v21 | 0x80000000;
  *(*(a1 + 16) + 32 * v7 + 8) = *(*(a1 + 16) + 32 * v7 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 32 * v7) = a3;
  result = *a4;
  *(*(a1 + 16) + 32 * v7 + 16) = *a4;
  *(*(a1 + 8) + 4 * a2) = v7;
  ++*(a1 + 28);
  return result;
}

void *re::DynamicArray<re::Session::BacklogItem>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::Session::BacklogItem>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x50uLL))
        {
          v2 = 80 * a2;
          result = (*(*result + 32))(result, 80 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 80, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v19, v21);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v20, v22);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 0;
        v11 = 80 * v9;
        do
        {
          v12 = &v7[v10 / 8];
          v13 = v8 + v10;
          *v12 = *(v8 + v10);
          v12[2] = *(v8 + v10 + 16);
          *(v13 + 16) = 0;
          *(v12 + 3) = *(v8 + v10 + 24);
          v12[9] = 0;
          v12[6] = 0;
          v12[7] = 0;
          v12[5] = 0;
          *(v12 + 16) = 0;
          v14 = (v8 + v10 + 40);
          v15 = *(v8 + v10 + 48);
          v12[5] = *v14;
          *v14 = 0;
          v12[6] = v15;
          *(v13 + 48) = 0;
          v16 = v7[v10 / 8 + 7];
          v12[7] = *(v8 + v10 + 56);
          *(v13 + 56) = v16;
          v17 = v7[v10 / 8 + 9];
          v12[9] = *(v8 + v10 + 72);
          *(v13 + 72) = v17;
          *(v13 + 64) = *(v8 + v10 + 64) + 1;
          *(v12 + 16) = LODWORD(v7[v10 / 8 + 8]) + 1;
          re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v14);
          v18 = *(v8 + v10 + 16);
          if (v18)
          {

            *(v13 + 16) = 0;
          }

          v10 += 80;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void re::StaticPacketBitWriter::~StaticPacketBitWriter(re::StaticPacketBitWriter *this)
{
  if (*(this + 6))
  {
    (*(**(this + 5) + 40))(*(this + 5));
    *(this + 6) = 0;
  }
}

{
  if (*(this + 6))
  {
    (*(**(this + 5) + 40))(*(this + 5));
    *(this + 6) = 0;
  }

  JUMPOUT(0x266708EC0);
}

uint64_t re::StaticPacketBitWriter::grow(uint64_t this)
{
  if (!*(this + 48))
  {
    v1 = this;
    this = (*(**(this + 40) + 32))(*(this + 40), *(this + 56));
    *(v1 + 48) = this;
    *(v1 + 8) = *(this + 16);
    *(v1 + 16) = *(v1 + 56);
  }

  return this;
}

void re::SyncSnapshotDump::log(NSObject *a1, char *a2, uint64_t *a3, uint64_t a4, const char *a5)
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  if (*a3)
  {
    v10 = (v5 + 8);
    v11 = *(v5 + 80);
    v12 = *(*(v5 + 88) + 16);
    v13 = *(v12 + 48);
    v14 = *(v12 + 56);
    v15 = v12 + 49;
    if (v13)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    v17 = os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v17)
      {
        v18 = *(v5 + 24);
        v19 = *(v5 + 176);
        v20 = *(v11 + 24);
        v21 = *(a3 + 16);
        v22 = "";
        v23 = "(new)";
        if ((v21 & 1) == 0)
        {
          v23 = "";
        }

        v24 = "(data)";
        v25 = *a2;
        if ((a3[2] & 8) == 0)
        {
          v24 = "";
        }

        v26 = a2[28];
        v27 = "(destroyed)";
        v28 = *(a2 + 1);
        if ((a3[2] & 2) == 0)
        {
          v27 = "";
        }

        v50 = 136318210;
        if ((v21 & 4) != 0)
        {
          v29 = "(ownerChange)";
        }

        else
        {
          v29 = "";
        }

        v51 = v16;
        v52 = 2048;
        v53 = v18;
        if (a5)
        {
          v30 = a5;
        }

        else
        {
          v30 = "Commit";
        }

        v54 = 1024;
        v55 = v19;
        if (v25)
        {
          v31 = "(Atomic)";
        }

        else
        {
          v31 = "";
        }

        v56 = 2048;
        v57 = v20;
        v58 = 2080;
        if ((v25 & 2) != 0)
        {
          v32 = "(Held)";
        }

        else
        {
          v32 = "";
        }

        v59 = v23;
        v60 = 2080;
        if (v26)
        {
          v22 = "(Fwd)";
        }

        v61 = v24;
        v62 = 2080;
        v63 = v27;
        v64 = 2080;
        v65 = v29;
        v66 = 2080;
        v67 = v30;
        v68 = 2080;
        v69 = v31;
        v70 = 2080;
        v71 = v32;
        v72 = 2080;
        v73 = v22;
        v74 = 2048;
        v75 = v28;
        v33 = "\t%s Id=%llu(v#%u) Parent=%llu %s%s%s%s \t%s %s%s%s Peer=%llu";
        v34 = a1;
        v35 = 128;
LABEL_50:
        _os_log_debug_impl(&dword_26168F000, v34, OS_LOG_TYPE_DEBUG, v33, &v50, v35);
      }
    }

    else if (v17)
    {
      v36 = *(v5 + 24);
      v37 = *(v5 + 176);
      v38 = *(a3 + 16);
      v39 = "";
      v40 = "(new)";
      if ((v38 & 1) == 0)
      {
        v40 = "";
      }

      v41 = *a2;
      v42 = "(data)";
      v43 = a2[28];
      if ((a3[2] & 8) == 0)
      {
        v42 = "";
      }

      v44 = *(a2 + 1);
      v45 = "(destroyed)";
      if ((a3[2] & 2) == 0)
      {
        v45 = "";
      }

      v50 = 136317954;
      v46 = "(ownerChange)";
      v51 = v16;
      v52 = 2048;
      if ((v38 & 4) == 0)
      {
        v46 = "";
      }

      v53 = v36;
      v47 = "Commit";
      v54 = 1024;
      if (a5)
      {
        v47 = a5;
      }

      v55 = v37;
      v56 = 2080;
      v57 = v40;
      if (v41)
      {
        v48 = "(Atomic)";
      }

      else
      {
        v48 = "";
      }

      v58 = 2080;
      v59 = v42;
      if ((v41 & 2) != 0)
      {
        v49 = "(Held)";
      }

      else
      {
        v49 = "";
      }

      v60 = 2080;
      v61 = v45;
      if (v43)
      {
        v39 = "(Fwd)";
      }

      v62 = 2080;
      v63 = v46;
      v64 = 2080;
      v65 = v47;
      v66 = 2080;
      v67 = v48;
      v68 = 2080;
      v69 = v49;
      v70 = 2080;
      v71 = v39;
      v72 = 2048;
      v73 = v44;
      v33 = "\t%s Id=%llu(v#%u) %s%s%s%s \t%s %s%s%s Peer=%llu";
      v34 = a1;
      v35 = 118;
      goto LABEL_50;
    }
  }
}

uint64_t re::SyncSnapshotDump::log(NSObject *a1, uint64_t a2, const char *a3)
{
  re::DynamicArray<re::internal::SyncSnapshotEntry>::DynamicArray(v10, (a2 + 32));
  if (v11)
  {
    for (i = 0; i < v11; ++i)
    {
      v7 = re::SyncSnapshot::readAt(v10, i);
      re::SyncSnapshotDump::log(a1, a2, v7, v8, a3);
    }
  }

  return re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v10);
}

uint64_t re::SyncSelectiveAckedUnicast::SyncSelectiveAckedUnicast(uint64_t a1, id *a2, id *a3, uint64_t a4, uint64_t a5, uint64_t a6, id *a7, char a8, char a9, char a10, int a11)
{
  v76 = a4;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_2873F5378;
  *(v19 + 24) = 0;
  objc_copyWeak((v19 + 24), a2);
  *(a1 + 32) = 0u;
  v73 = (a1 + 32);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  re::make::shared::object<re::SyncObjectShortIDManagerImpl>(v20, &to);
  *(a1 + 72) = to;
  *(a1 + 96) = 0;
  *(a1 + 80) = a5;
  *(a1 + 88) = a6;
  objc_copyWeak((a1 + 96), a7);
  *(a1 + 104) = a8;
  *(a1 + 105) = a9;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a5;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0x7FFFFFFFLL;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  v22 = re::globalAllocators(v21);
  v23 = (*(*v22[2] + 32))(v22[2], 208, 8);
  to = 0;
  objc_copyWeak(&to, a3);
  re::UnreliableAckedUnicastStream::UnreliableAckedUnicastStream(v23, &to, a4, 1, 4, 0);
  objc_destroyWeak(&to);
  if (*a3)
  {
    v24 = (*a3 - 8);
  }

  else
  {
    v24 = 0;
  }

  WeakRetained = objc_loadWeakRetained(a2);
  if (WeakRetained)
  {
    v26 = WeakRetained - 8;
  }

  else
  {
    v26 = 0;
  }

  (*(*v26 + 32))(&to, v26);
  v27 = re::Transport::registerStream(v24, v23, 4uLL, a4);
  if (to)
  {

    to = 0;
  }

  if (v27)
  {
    v28 = *(a1 + 56);
    *(a1 + 56) = v23;
    v23 = v28;
  }

  LODWORD(location) = 0;
  v75 = 1;
  v74 = 5;
  re::make::shared::object<re::UnicastStream,re::ArcWeakPtr<re::Transport> &,unsigned long long &,re::DeliveryMethod,BOOL,re::SyncStreamID::{unnamed type#1},decltype(nullptr)>(&to, a3, &v76, &location, &v75, &v74);
  v29 = to;
  if (*a3)
  {
    v30 = (*a3 - 8);
  }

  else
  {
    v30 = 0;
  }

  v31 = v76;
  v32 = objc_loadWeakRetained(a2);
  if (v32)
  {
    v33 = v32 - 8;
  }

  else
  {
    v33 = 0;
  }

  (*(*v33 + 32))(&to, v33);
  v34 = re::Transport::registerStream(v30, v29, 5uLL, v31);
  if (to)
  {

    to = 0;
  }

  if (v34)
  {
    v36 = *(a1 + 48);
    *(a1 + 48) = v29;
    v29 = v36;
  }

  if (a10)
  {
    re::make::shared::object<re::SyncAckedStateBuffer>(v35, &to);
    v37 = *v73;
    *v73 = to;
    to = v37;
    if (v37)
    {
    }

    LODWORD(location) = 0;
    v75 = 1;
    v74 = 3;
    re::make::shared::object<re::UnicastStream,re::ArcWeakPtr<re::Transport> &,unsigned long long &,re::DeliveryMethod,BOOL,re::SyncStreamID::{unnamed type#1},decltype(nullptr)>(&to, a3, &v76, &location, &v75, &v74);
    v38 = to;
    if (*a3)
    {
      v39 = (*a3 - 8);
    }

    else
    {
      v39 = 0;
    }

    v40 = v76;
    v41 = objc_loadWeakRetained(a2);
    if (v41)
    {
      v42 = v41 - 8;
    }

    else
    {
      v42 = 0;
    }

    (*(*v42 + 32))(&to, v42);
    v43 = re::Transport::registerStream(v39, v38, 3uLL, v40);
    if (to)
    {

      to = 0;
    }

    if (v43)
    {
      v45 = re::globalAllocators(v44);
      v46 = (*(*v45[2] + 32))(v45[2], 32, 8);
      ArcSharedObject::ArcSharedObject(v46, 0);
      *(v46 + 3) = v38;
      *v46 = &unk_2873F54B8;
      if (v38)
      {
        v47 = v38 + 8;
      }

      v38 = *(a1 + 40);
      *(a1 + 40) = v46;
    }

    if (v38)
    {
    }
  }

  LODWORD(location) = 0;
  v75 = 1;
  v74 = 2;
  re::make::shared::object<re::UnicastStream,re::ArcWeakPtr<re::Transport> &,unsigned long long &,re::DeliveryMethod,BOOL,re::SyncStreamID::{unnamed type#1},decltype(nullptr)>(&to, a3, &v76, &location, &v75, &v74);
  v48 = to;
  if (*a3)
  {
    v49 = (*a3 - 8);
  }

  else
  {
    v49 = 0;
  }

  v50 = v76;
  v51 = objc_loadWeakRetained(a2);
  if (v51)
  {
    v52 = v51 - 8;
  }

  else
  {
    v52 = 0;
  }

  (*(*v52 + 32))(&to, v52);
  v53 = re::Transport::registerStream(v49, v48, 2uLL, v50);
  if (to)
  {

    to = 0;
  }

  if (v53)
  {
    v55 = re::globalAllocators(v54);
    v56 = (*(*v55[2] + 32))(v55[2], 32, 8);
    to = v48;
    v54 = re::MessageStreamer<re::SyncOwnershipRequest>::MessageStreamer(v56, &to);
    if (to)
    {
    }

    v57 = *(a1 + 64);
    *(a1 + 64) = v56;
    if (v57)
    {
    }

    v48 = 0;
  }

  v58 = *(a1 + 72);
  v59 = *(a1 + 32);
  if (*a3)
  {
    v60 = *a3 - 8;
  }

  else
  {
    v60 = 0;
  }

  v61 = *(v60 + 71);
  v62 = re::globalAllocators(v54);
  v63 = (*(*v62[2] + 32))(v62[2], 312, 8);
  if (v58)
  {
    v64 = (v58 + 8);
  }

  else
  {
    v64 = 0;
  }

  objc_initWeak(&to, v64);
  if (v59)
  {
    v65 = (v59 + 8);
  }

  else
  {
    v65 = 0;
  }

  objc_initWeak(&location, v65);
  re::SyncSendBuffer::SyncSendBuffer(v63, &to, &location, v61);
  objc_destroyWeak(&location);
  location = 0;
  objc_destroyWeak(&to);
  v66 = *(a1 + 280);
  *(a1 + 280) = v63;
  if (v66)
  {

    v63 = *(a1 + 280);
  }

  *(v63 + 216) = *(a1 + 80);
  *(v63 + 304) = a11;
  to = 0;
  v67 = v76;
  if (*a3)
  {
    v68 = *a3 - 8;
  }

  else
  {
    v68 = 0;
  }

  if (re::Transport::receive(v68, v76, 1u, &to))
  {
    do
    {
      if (*a3)
      {
        v69 = (*a3 - 8);
      }

      else
      {
        v69 = 0;
      }

      if (re::Transport::dispatchPacketToStream(v69, to, v67))
      {
        if (*a3)
        {
          v70 = (*a3 - 8);
        }

        else
        {
          v70 = 0;
        }

        re::PacketPool::free(v70[48], to);
      }

      if (*a3)
      {
        v71 = *a3 - 8;
      }

      else
      {
        v71 = 0;
      }
    }

    while (re::Transport::receive(v71, v67, 1u, &to));
  }

  if (v48)
  {
  }

  if (v29)
  {
  }

  if (v23)
  {
  }

  return a1;
}

void re::SyncSelectiveAckedUnicast::send(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v98 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) && (v6 = *(a1 + 56)) != 0 && *(a1 + 72))
  {
    *(a1 + 112) = 0;
    v11 = *(v6 + 32);
    if (v11)
    {
      v12 = v11 - 8;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v12 + 512);
    if (v13 >= 0x10000)
    {
      v13 = 0x10000;
    }

    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v46 = &unk_2873F5338;
    v47 = 0;
    v52 = v6;
    v53 = 0;
    v54 = v13;
    v45 = 0;
    v42[1] = 0;
    v43 = 0;
    v42[0] = 0;
    v44 = 0;
    v14 = *(a1 + 104);
    v56 = a4;
    v59 = *(a4 + 56);
    v63 = 0;
    v60 = 0u;
    v61 = 0u;
    v62 = 0;
    v66 = v59;
    v70 = 0;
    v67 = 0u;
    v68 = 0u;
    v69 = 0;
    v73 = v59;
    v77 = 0;
    v74 = 0u;
    v75 = 0u;
    v76 = 0;
    v80 = v59;
    v84 = 0;
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    v85 = 0;
    v86 = v59;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v94 = 0;
    v90 = 0;
    v91 = 0;
    v93 = 0;
    v92 = 0;
    *buf = v14;
    v58 = 1;
    v57 = 1;
    v65 = 0;
    v64 = 2;
    v79 = 0;
    v78 = 2;
    v72 = 0;
    v71 = 0;
    re::SyncCommitBuilder::begin(buf);
    v15 = *(a4 + 96);
    if (v15)
    {
      v16 = 0;
      v17 = *(a4 + 80);
      while (1)
      {
        v18 = *v17;
        v17 += 8;
        if (v18 < 0)
        {
          break;
        }

        if (v15 == ++v16)
        {
          LODWORD(v16) = *(a4 + 96);
          break;
        }
      }
    }

    else
    {
      LODWORD(v16) = 0;
    }

LABEL_39:
    while (v16 != v15)
    {
      v23 = *(a4 + 80) + 32 * v16;
      v26 = *(v23 + 8);
      v24 = v23 + 8;
      v25 = v26;
      v27 = *(v26 + 80);
      if (v27)
      {
        do
        {
          v28 = v25;
          v25 = v27;
          if (*(*(*(v28 + 88) + 16) + 73))
          {
            break;
          }

          v27 = *(v27 + 80);
          v28 = v25;
        }

        while (v27);
      }

      else
      {
        v28 = v25;
      }

      if ((*(v28 + 170) & 1) != 0 || (buf[0] & 1) != 0 || buf[1] == 1)
      {
        if (*(v24 + 8))
        {
          re::SyncCommitBuilder::buildViewRemoval(buf, v24);
        }

        else
        {
          re::SyncCommitBuilder::buildViewAdd(buf, v24);
        }
      }

      v29 = *(a4 + 96);
      if (v29 <= v16 + 1)
      {
        v29 = v16 + 1;
      }

      while (v29 - 1 != v16)
      {
        LODWORD(v16) = v16 + 1;
        if ((*(*(a4 + 80) + 32 * v16) & 0x80000000) != 0)
        {
          goto LABEL_39;
        }
      }

      LODWORD(v16) = v29;
    }

    v30 = a2[1];
    if (v30)
    {
      v31 = *a2;
      v32 = 72 * v30;
      do
      {
        re::SyncCommitBuilder::buildUpdate(buf, v31);
        v31 += 72;
        v32 -= 72;
      }

      while (v32);
    }

    re::SyncCommitBuilder::buildOwnershipChanges(buf, *a3, *(a3 + 8));
    re::SyncCommitBuilder::end(buf, v42);
    re::SyncCommitBuilder::~SyncCommitBuilder(buf);
    v34 = v45;
    if (v43)
    {
      v35 = 72 * v43;
      do
      {
        re::SyncSelectiveAckedUnicast::sendCommit(a1, v34, &v46, a5);
        v34 += 72;
        v35 -= 72;
      }

      while (v35);
      v34 = v45;
      v36 = v43;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a1 + 280);
    v38 = *(a1 + 56);
    v96 = re::globalAllocators(v33)[2];
    v39 = (*(*v96 + 32))(v96, 32, 0);
    *v39 = &unk_2873F5408;
    v39[1] = a1;
    v39[2] = &v46;
    v39[3] = a5;
    v97 = v39;
    re::SyncSendBuffer::resend(v37, v34, v36, (v38 + 152), v95);
    if (v97)
    {
      (**v97)(v97);
      if (v97 != v95)
      {
        (*(*v96 + 40))(v96);
      }

      v97 = 0;
    }

    v40 = v50;
    if (HIDWORD(v50))
    {
      v40 = v50 + 1;
    }

    if (v40)
    {
      v41 = *(a1 + 56);
      *(v53 + 24) = v40;
      v50 = 0;
      v51 = 0;
      v47 = 0;
      v48 = 0;
      v53 = 0;
      (*(*v41 + 48))(v41);
    }

    re::UnreliableAckedUnicastStream::update(*(a1 + 56));
    re::DynamicArray<re::SyncCommit>::deinit(v42);
    if (v53)
    {
      (*(*v52 + 40))(v52);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    if (WeakRetained)
    {
      v20 = WeakRetained - 8;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20 + 8;
    (*(*v20 + 32))(buf);
    v22 = *(*buf + 3272);

    *buf = 0;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26168F000, v22, OS_LOG_TYPE_ERROR, "Transport is destroyed but trying to send.", buf, 2u);
    }
  }
}

void re::SyncSelectiveAckedUnicast::sendCommit(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 < 0)
  {
    v8 = "ReSendCommit";
  }

  else
  {
    v8 = "SendCommit";
  }

  re::SyncCommitDump::log(a2, 1, v8);
  if (*a2)
  {

    re::SyncSelectiveAckedUnicast::sendCommitReliable(a1, a2, a4);
  }

  else
  {
    v9 = a1[4];
    v21[0] = a1[9];
    v21[1] = v9;
    v22 = 1;
    if (*(a2 + 6))
    {
      v10 = 0;
      do
      {
        v11 = re::SyncPacker::packCommit(v21, a2, a3, a4, v10);
        v13 = a1[14] + v11;
        a1[14] = v13;
        if (v13)
        {
          v14 = v11;
          re::SyncSendBuffer::objectsSent(a1[35], *(a2 + 8) + 24 * v10, v11, *(a1[7] + 192));
          v10 += v14;
          if (v10 < *(a2 + 6))
          {
            v15 = a1[7];
            v16 = *(a3 + 24);
            if (*(a3 + 28))
            {
              ++v16;
            }

            *(*(a3 + 48) + 24) = v16;
            *(a3 + 24) = 0;
            *(a3 + 32) = 0;
            *(a3 + 8) = 0;
            *(a3 + 16) = 0;
            *(a3 + 48) = 0;
            (*(*v15 + 48))(v15);
            a1[14] = 0;
          }
        }

        else
        {
          v17 = *(a2 + 6);
          if (v17 <= v10)
          {
            re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, v17);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v19, v20);
            __break(1u);
            return;
          }

          v18 = *(a2 + 8);
          v32 = 0;
          memset(v30, 0, sizeof(v30));
          v31 = 0;
          re::DynamicArray<re::internal::SyncSnapshotEntry>::add(v30, (v18 + 24 * v10));
          v29 = 0;
          memset(v27, 0, sizeof(v27));
          v28 = 0;
          v24 = *(a2 + 8);
          v25 = *(a2 + 6);
          v23[0] = *a2;
          v26 = a2[28];
          re::DynamicArray<re::internal::SyncSnapshotEntry>::operator=(v27, v30);
          re::SyncSelectiveAckedUnicast::sendCommitReliable(a1, v23, a4);
          re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v27);
          re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v30);
          ++v10;
        }
      }

      while (v10 < *(a2 + 6));
    }
  }
}

uint64_t re::SyncSelectiveAckedUnicast::sendCommitReliable(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[6] + 24;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v14 = &unk_2873F4D10;
  v15 = 0;
  v20 = v5;
  v21 = 0;
  v12[0] = a1[9];
  v12[1] = 0;
  v13 = 0;
  result = re::SyncPacker::packCommit(v12, a2, &v14, a3, 0);
  v7 = *(a2 + 48);
  if (v7)
  {
    v8 = *(a2 + 64);
    v9 = 24 * v7;
    do
    {
      result = re::SyncSendBuffer::addAck(a1[35], v8);
      v8 += 3;
      v9 -= 24;
    }

    while (v9);
  }

  v10 = v18;
  if (HIDWORD(v18))
  {
    v10 = v18 + 1;
  }

  if (v10)
  {
    v11 = a1[6];
    *(v21 + 24) = v10;
    v18 = 0;
    v19 = 0;
    v15 = 0;
    v16 = 0;
    v21 = 0;
    result = (*(*v11 + 48))(v11);
  }

  if (v21)
  {
    return (*(*v20 + 24))(v20);
  }

  return result;
}

uint64_t re::SyncSelectiveAckedUnicast::receive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 48);
  if (!v5 || !*(a1 + 56) || !*(a1 + 72))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    if (WeakRetained)
    {
      v13 = WeakRetained - 8;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 + 8;
    (*(*v13 + 32))(buf);
    v15 = *(*buf + 3272);

    *buf = 0;
    result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      _os_log_error_impl(&dword_26168F000, v15, OS_LOG_TYPE_ERROR, "Transport is destroyed but trying to receive.", buf, 2u);
      return 0;
    }

    return result;
  }

  result = re::SyncSelectiveAckedUnicast::receiveFromStream(a1, v5, a2);
  if (!result)
  {
    return result;
  }

  result = re::SyncSelectiveAckedUnicast::receiveFromStream(a1, *(a1 + 56), a2);
  if (!result)
  {
    return result;
  }

  buf[0] = 0;
  v73 = 0;
  v70[1] = 0;
  v71 = 0;
  v70[0] = 0;
  v72 = 0;
  v68 = *(a1 + 80);
  v69[0] = 0;
  *(v69 + 5) = 0;
  v8 = *(a1 + 224);
  if (v8)
  {
    v9 = 0;
    v10 = *(a1 + 208);
    while (1)
    {
      v11 = *v10;
      v10 += 18;
      if (v11 < 0)
      {
        break;
      }

      if (v8 == ++v9)
      {
        LODWORD(v9) = *(a1 + 224);
        break;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v66 = a3;
  if (v9 != v8)
  {
    v16 = 0;
    while (1)
    {
      v50 = *(a1 + 208) + 72 * v9;
      if (!*(v50 + 24))
      {
        break;
      }

      if ((*(v50 + 48) & 2) != 0)
      {
        goto LABEL_86;
      }

      v51 = objc_loadWeakRetained((a1 + 96));
      v52 = v51;
      if (v51)
      {
        v53 = (v51 - 8);
      }

      else
      {
        v53 = 0;
      }

      re::SyncObjectStore::findObject(&v76, v53, *(v50 + 16), *(v50 + 24));
      if (v52)
      {
      }

      v54 = v76;
      if (v76)
      {
        v55 = *(v50 + 8);
        if (*(v55 + 10))
        {
          v56 = objc_loadWeakRetained((a1 + 24));
          if (v56)
          {
            v57 = v56 - 8;
          }

          else
          {
            v57 = 0;
          }

          v58 = v57 + 8;
          (*(*v57 + 32))(v82);
          v59 = *(*v82 + 3272);

          *v82 = 0;
          v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
          v54 = v76;
          if (v60)
          {
            v61 = *(v50 + 8);
            v62 = *(v61 + 24);
            v63 = *(*(v61 + 80) + 24);
            v64 = *(v76 + 3);
            *v82 = 134218496;
            *&v82[4] = v62;
            *v83 = 2048;
            *&v83[2] = v63;
            v84 = 2048;
            v85 = v64;
            _os_log_impl(&dword_26168F000, v59, OS_LOG_TYPE_DEFAULT, "Parent already bound for object: %llu, current parent: %llu, attempted new parent: %llu", v82, 0x20u);
          }
        }

        else
        {
          re::SyncObject::bindWithParent(v55, v76);
        }

        re::DynamicArray<re::internal::SyncSnapshotEntry>::add(v70, v50 + 32);
        re::DynamicArray<re::SharedPtr<re::SyncObject>>::add((a1 + 240), (v50 + 8));
        if (v54)
        {
        }
      }

LABEL_87:
      v65 = *(a1 + 224);
      if (v65 <= v9 + 1)
      {
        v65 = v9 + 1;
      }

      while (v65 - 1 != v9)
      {
        LODWORD(v9) = v9 + 1;
        if ((*(*(a1 + 208) + 72 * v9) & 0x80000000) != 0)
        {
          goto LABEL_93;
        }
      }

      LODWORD(v9) = v65;
LABEL_93:
      if (v9 == v8)
      {
        goto LABEL_20;
      }
    }

    if (*(v50 + 56) & 1) == 0 && (*(v50 + 48))
    {
      goto LABEL_87;
    }

    v16 = *(v50 + 56) | v16 & 1;
    re::DynamicArray<re::internal::SyncSnapshotEntry>::add(v70, v50 + 32);
LABEL_86:
    re::DynamicArray<re::SharedPtr<re::SyncObject>>::add((a1 + 240), (v50 + 8));
    goto LABEL_87;
  }

  v16 = 0;
LABEL_20:
  v17 = *(a1 + 256);
  if (v17)
  {
    v18 = 8 * v17;
    v19 = *(a1 + 272);
    do
    {
      v20 = 0xBF58476D1CE4E5B9 * (*v19 ^ (*v19 >> 30));
      re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(v82, a1 + 192, *v19, (0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31));
      v21 = *v83;
      if (*v83 != 0x7FFFFFFF)
      {
        v22 = *(a1 + 208);
        v23 = (v22 + 72 * *v83);
        v24 = *v23 & 0x7FFFFFFF;
        if (*&v83[4] == 0x7FFFFFFF)
        {
          *(*(a1 + 200) + 4 * *&v82[8]) = v24;
        }

        else
        {
          *(v22 + 72 * *&v83[4]) = *(v22 + 72 * *&v83[4]) & 0x80000000 | v24;
        }

        re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::EntryBase::free(v23);
        *(*(a1 + 208) + 72 * v21) = *(*(a1 + 208) + 72 * v21) & 0x80000000 | *(a1 + 228);
        --*(a1 + 220);
        v25 = *(a1 + 232) + 1;
        *(a1 + 228) = v21;
        *(a1 + 232) = v25;
      }

      ++v19;
      v18 -= 8;
    }

    while (v18);
  }

  if (((v71 != 0) & v16) != 0)
  {
    buf[0] |= 1u;
  }

  re::DynamicArray<re::SharedPtr<re::SyncObject>>::clear(a1 + 240);
  v26 = *(a1 + 40);
  if (v26)
  {
    v27 = (*(**(v26 + 24) + 56))(*(v26 + 24));
    if (v27)
    {
      v28 = v27;
      while (1)
      {
        v29 = *(v28 + 24);
        v76 = *(v28 + 16);
        v77 = v29;
        v78 = 0;
        v79 = 0;
        v80 = 0;
        if (v29)
        {
          break;
        }

LABEL_65:
        (*(**(v26 + 24) + 40))(*(v26 + 24), v28);
        v28 = (*(**(v26 + 24) + 56))(*(v26 + 24));
        if (!v28)
        {
          goto LABEL_66;
        }
      }

      while (1)
      {
        v74 = 0;
        v75 = 0;
        re::BitReader::readUInt64(&v76, &v74);
        re::BitReader::readUInt64(&v76, &v75);
        if (v78)
        {
          break;
        }

        v30 = objc_loadWeakRetained((a1 + 96));
        v31 = v30;
        if (v30)
        {
          v32 = (v30 - 8);
        }

        else
        {
          v32 = 0;
        }

        re::SyncObjectStore::findObject(&v81, v32, v74, v75);
        if (v31)
        {
        }

        v33 = v81;
        if (v81)
        {
          while ((*(*(v33[11] + 16) + 74) & 1) == 0)
          {
            v33 = v33[10];
            if (!v33)
            {
              goto LABEL_54;
            }
          }

          v41 = v33[12];
          if (v41)
          {
            v42 = *(v41 + 104);
            if (v42)
            {
              v43 = *(v41 + 120);
              v44 = 8 * v42;
              while (*(*v43 + 56) != *(a1 + 80))
              {
                v43 += 8;
                v44 -= 8;
                if (!v44)
                {
                  goto LABEL_54;
                }
              }

              re::SyncSendBuffer::resetAcks(*(a1 + 280), &v81);
              goto LABEL_60;
            }
          }

LABEL_54:
          v45 = objc_loadWeakRetained((a1 + 24));
          if (v45)
          {
            v46 = v45 - 8;
          }

          else
          {
            v46 = 0;
          }

          v47 = v46 + 8;
          (*(*v46 + 32))(v82);
          v48 = *(*v82 + 3272);

          *v82 = 0;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = *(a1 + 80);
            *v82 = 134218496;
            *&v82[4] = v74;
            *v83 = 2048;
            *&v83[2] = v75;
            v84 = 2048;
            v85 = v49;
            v38 = v48;
            v39 = "Received history reset request for object {%llu, %llu}.But the object is not viewed by peer %llu.";
            v40 = 32;
            goto LABEL_59;
          }
        }

        else
        {
          v34 = objc_loadWeakRetained((a1 + 24));
          if (v34)
          {
            v35 = v34 - 8;
          }

          else
          {
            v35 = 0;
          }

          v36 = v35 + 8;
          (*(*v35 + 32))(v82);
          v37 = *(*v82 + 3272);

          *v82 = 0;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *v82 = 134218240;
            *&v82[4] = v74;
            *v83 = 2048;
            *&v83[2] = v75;
            v38 = v37;
            v39 = "Received history reset request for object {%llu, %llu}.But the object does not exist.";
            v40 = 22;
LABEL_59:
            _os_log_impl(&dword_26168F000, v38, OS_LOG_TYPE_DEFAULT, v39, v82, v40);
          }
        }

LABEL_60:
        if (v81)
        {
        }

        HIDWORD(v79) = 0;
        v80 = 0;
        if (v77 == v79)
        {
          goto LABEL_65;
        }
      }
    }
  }

LABEL_66:
  (*(v66 + 16))(v66, buf, a2);
  re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v70);
  return 1;
}

uint64_t re::SyncSelectiveAckedUnicast::receiveFromStream(uint64_t a1, void *a2, uint64_t a3)
{
  v85 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) && *(a1 + 56) && (v4 = *(a1 + 72)) != 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 96));
    v7 = *(a1 + 104);
    v8 = WeakRetained - 8;
    if (!WeakRetained)
    {
      v8 = 0;
    }

    *buf = v4;
    v63 = v8;
    v64 = *(a1 + 80);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
    v68 = 0x7FFFFFFFLL;
    v73 = 0;
    v70 = 0;
    v71 = 0;
    v69 = 0;
    v72 = 0;
    v74 = v7;
    if (WeakRetained)
    {
    }

    v9 = (*(*a2 + 56))(a2);
    if (v9)
    {
      v11 = v9;
      do
      {
        v12 = *(v11 + 24);
        v75 = *(v11 + 16);
        LODWORD(v76) = v12;
        BYTE4(v76) = 0;
        v77 = 0;
        v78 = 0;
        if (v12)
        {
          v54 = v10;
          v55 = v11;
          v13 = 2;
          do
          {
            v14 = re::SyncUnpacker::unpackCommit(buf, &v75, a1 + 120, a3);
            if (v14 < v13)
            {
              v13 = v14;
            }

            if (!v13)
            {
              v45 = a2[4];
              if (v45)
              {
                v46 = (v45 - 8);
              }

              else
              {
                v46 = 0;
              }

              re::Transport::connectionAddress(&v59, v46, a2[5]);
              v47 = objc_loadWeakRetained((a1 + 24));
              if (v47)
              {
                v48 = v47 - 8;
              }

              else
              {
                v48 = 0;
              }

              v49 = v48 + 8;
              (*(*v48 + 32))(v82);
              v50 = *(*v82 + 3272);

              *v82 = 0;
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                v52 = *(a1 + 80);
                if (v60)
                {
                  v53 = v61;
                }

                else
                {
                  v53 = &v60 + 1;
                }

                *v82 = 134218242;
                *&v82[4] = v52;
                v83 = 2082;
                v84 = v53;
                _os_log_error_impl(&dword_26168F000, v50, OS_LOG_TYPE_ERROR, "Failed to parse incoming packet. Will drop peer.(peerID=%llu, address=%{public}s)", v82, 0x16u);
              }

              re::DynamicArray<re::internal::SyncSnapshotEntry>::clear(a1 + 152);
              (*(*a2 + 40))(a2, v55);
              if (v59 && (v60 & 1) != 0)
              {
                (*(*v59 + 40))();
              }

              v40 = 0;
              goto LABEL_63;
            }

            v57 = v13;
            re::SyncCommitDump::log((a1 + 120), 1, "RecvCommit");
            v15 = *(a1 + 168);
            if (v15)
            {
              v16 = *(a1 + 120) & 1;
              v17 = *(a1 + 184);
              v18 = 24 * v15;
              do
              {
                v19 = 0xBF58476D1CE4E5B9 * (*v17 ^ (*v17 >> 30));
                re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(&v65, v17, (0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) ^ ((0x94D049BB133111EBLL * (v19 ^ (v19 >> 27))) >> 31), &v59);
                v20 = 0uLL;
                if (HIDWORD(v60) != 0x7FFFFFFF)
                {
                  v20 = *(v66 + 40 * HIDWORD(v60) + 16);
                }

                v58 = v20;
                v21 = *v17;
                if (*v17)
                {
                  v22 = (v21 + 8);
                  v23 = *v17;
                }

                else
                {
                  v23 = 0;
                }

                *v82 = v17[1];
                v82[8] = *(v17 + 16);
                v59 = 0;
                v60 = 0;
                v61 = 0;
                v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) >> 27));
                re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(&v59, a1 + 192, v23, v24 ^ (v24 >> 31));
                if (HIDWORD(v60) == 0x7FFFFFFF)
                {
                  v25 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry((a1 + 192), v60, v59);
                  v26 = *v17;
                  *(v25 + 8) = *v17;
                  if (v26)
                  {
                    v27 = (v26 + 8);
                  }

                  *(v25 + 16) = v58;
                  v28 = v25 + 16;
                  v29 = *v82;
                  *(v28 + 16) = v21;
                  *(v28 + 24) = v29;
                  *(v28 + 32) = v82[8];
                  *(v28 + 40) = v16;
                  ++*(a1 + 232);
                }

                else
                {
                  v28 = *(a1 + 208) + 72 * HIDWORD(v60) + 16;
                  if (v21)
                  {
                  }
                }

                *(v28 + 40) |= v16;
                v30 = *(v28 + 32);
                v31 = v17[2] & 1 | v30;
                *(v28 + 32) = v31;
                v32 = v31 & 0xFFFFFFFD | (2 * (((*(v17 + 16) | v30) >> 1) & 1));
                *(v28 + 32) = v32;
                LOBYTE(v32) = v32 & 0xFB | (4 * (((*(v17 + 16) | v30) & 4) != 0));
                *(v28 + 32) = v32;
                *(v28 + 32) = v32 & 0xF7 | (*(v17 + 16) | v30) & 8;
                if ((v17[2] & 8) != 0)
                {
                  *(v28 + 24) = v17[1];
                }

                v17 += 3;
                v18 -= 24;
              }

              while (v18);
            }

            re::DynamicArray<re::internal::SyncSnapshotEntry>::clear(a1 + 152);
            v13 = v57;
          }

          while (v76 != v77);
          v10 = v54;
          v11 = v55;
          if (v57 != 2)
          {
            goto LABEL_34;
          }
        }

        (*(*a2 + 64))(a2, v10);
LABEL_34:
        (*(*a2 + 40))(a2, v11);
        v11 = (*(*a2 + 56))(a2);
      }

      while (v11);
    }

    v33 = *(a1 + 40);
    if (v33)
    {
      v34 = v73;
      v35 = *(v33 + 24) + 24;
      LODWORD(v77) = 0;
      BYTE4(v77) = 0;
      v78 = 0;
      v79 = 0;
      v75 = &unk_2873F4D10;
      v76 = 0;
      v80 = v35;
      v81 = 0;
      if (v71)
      {
        v36 = 16 * v71;
        do
        {
          re::SyncHistoryResetRequest::write(v34, &v75);
          re::BitWriter::alignToByte(&v75);
          v34 = (v34 + 16);
          v36 -= 16;
        }

        while (v36);
        v37 = v78;
        v38 = v81;
        if (HIDWORD(v78))
        {
          v37 = v78 + 1;
        }

        if (v37)
        {
          v39 = *(v33 + 24);
          *(v81 + 24) = v37;
          v78 = 0;
          v79 = 0;
          v76 = 0;
          LODWORD(v77) = 0;
          v81 = 0;
          (*(*v39 + 48))(v39);
          v38 = v81;
        }

        if (v38)
        {
          (*(*v80 + 24))(v80);
        }
      }
    }

    v40 = 1;
LABEL_63:
    if (v69)
    {
      if (v73)
      {
        (*(*v69 + 40))();
      }

      v73 = 0;
      v70 = 0;
      v71 = 0;
      v69 = 0;
      ++v72;
    }

    re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(&v65);
  }

  else
  {
    v41 = objc_loadWeakRetained((a1 + 24));
    if (v41)
    {
      v42 = v41 - 8;
    }

    else
    {
      v42 = 0;
    }

    v43 = v42 + 8;
    (*(*v42 + 32))(buf);
    v44 = *(*buf + 3272);

    *buf = 0;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26168F000, v44, OS_LOG_TYPE_ERROR, "Transport is destroyed but trying to receive.", buf, 2u);
    }

    return 0;
  }

  return v40;
}

_DWORD *re::MessageStreamer<re::SyncOwnershipRequest>::send(_DWORD *result, re::SyncOwnershipRequest *this, uint64_t a3)
{
  v3 = *(result + 3) + 24;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v10 = &unk_2873F4D10;
  v11 = 0;
  v16 = v3;
  v17 = 0;
  if (a3)
  {
    v5 = result;
    v6 = 80 * a3;
    do
    {
      re::SyncOwnershipRequest::write(this, &v10);
      result = re::BitWriter::alignToByte(&v10);
      this = (this + 80);
      v6 -= 80;
    }

    while (v6);
    v7 = v14;
    v8 = v17;
    if (HIDWORD(v14))
    {
      v7 = v14 + 1;
    }

    if (v7)
    {
      v9 = *(v5 + 3);
      *(v17 + 24) = v7;
      v14 = 0;
      v15 = 0;
      v11 = 0;
      v12 = 0;
      v17 = 0;
      result = (*(*v9 + 48))(v9);
      v8 = v17;
    }

    if (v8)
    {
      return (*(*v16 + 24))(v16);
    }
  }

  return result;
}

uint64_t re::SyncSelectiveAckedUnicast::receiveOwnershipRequests(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v11 = *(a2 + 24);
  v12 = 0;
  if (v10 != a2)
  {
    re::FunctionBase<24ul,void ()(re::SyncOwnershipRequest const&)>::destroyCallable(v10);
    v4 = *(a2 + 32);
    if (v11 != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        if (v6 >= 0x19)
        {
          if (v11)
          {
            v7 = (*(*v11 + 32))(v11, v6, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v7 = v10;
        }

        v12 = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(re::SyncOwnershipRequest const&)>::destroyCallable(a2);
      }
    }

    else
    {
      v12 = *(a2 + 32);
      *(a2 + 32) = 0;
    }
  }

  v8 = re::MessageStreamer<re::SyncOwnershipRequest>::receive<re::Function<void ()(re::SyncOwnershipRequest const&)>>(v2, v10);
  re::FunctionBase<24ul,void ()(re::SyncOwnershipRequest const&)>::destroyCallable(v10);
  return v8;
}

uint64_t re::MessageStreamer<re::SyncOwnershipRequest>::receive<re::Function<void ()(re::SyncOwnershipRequest const&)>>(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 24) + 56))(*(a1 + 24));
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  while (1)
  {
    v6 = *(v5 + 24);
    v17 = *(v5 + 16);
    v18 = v6;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    if (v6)
    {
      break;
    }

LABEL_10:
    (*(**(a1 + 24) + 40))(*(a1 + 24), v5);
    v5 = (*(**(a1 + 24) + 56))(*(a1 + 24));
    if (!v5)
    {
      return 1;
    }
  }

  while (1)
  {
    v10 = 0;
    v11 = 0;
    v13 = 0;
    v12 = 0;
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    if (!re::SyncOwnershipRequest::read(v8, &v17) || (v19 & 1) != 0)
    {
      break;
    }

    (*(**(a2 + 32) + 16))(*(a2 + 32), v8);
    HIDWORD(v20) = 0;
    v21 = 0;
    if (v10)
    {
      if (v14)
      {
        (*(*v10 + 40))();
      }
    }

    if (v18 == v20)
    {
      goto LABEL_10;
    }
  }

  if (v10 && v14)
  {
    (*(*v10 + 40))();
  }

  return 0;
}

void re::SyncSelectiveAckedUnicast::~SyncSelectiveAckedUnicast(re::SyncSelectiveAckedUnicast *this)
{
  re::SyncSelectiveAckedUnicast::~SyncSelectiveAckedUnicast(this);

  JUMPOUT(0x266708EC0);
}

{
  v2 = *(this + 35);
  if (v2)
  {

    *(this + 35) = 0;
  }

  re::DynamicArray<re::SharedPtr<re::SyncObject>>::deinit(this + 240);
  re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 24);
  re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(this + 152);
  objc_destroyWeak(this + 12);
  *(this + 12) = 0;
  v3 = *(this + 9);
  if (v3)
  {

    *(this + 9) = 0;
  }

  v4 = *(this + 8);
  if (v4)
  {

    *(this + 8) = 0;
  }

  v5 = *(this + 7);
  if (v5)
  {

    *(this + 7) = 0;
  }

  v6 = *(this + 6);
  if (v6)
  {

    *(this + 6) = 0;
  }

  v7 = *(this + 5);
  if (v7)
  {

    *(this + 5) = 0;
  }

  v8 = *(this + 4);
  if (v8)
  {

    *(this + 4) = 0;
  }

  objc_destroyWeak(this + 3);
  *(this + 3) = 0;
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

uint64_t re::internal::Callable<re::SyncSelectiveAckedUnicast::send(re::Slice<re::SyncCommit> const&,re::Slice<re::SharedPtr<re::SyncObject>> const&,re::SyncObjectViewer *,re::SyncObjectWriteContext &)::$_0,void ()(re::SyncCommit const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F5408;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::SyncSelectiveAckedUnicast::send(re::Slice<re::SyncCommit> const&,re::Slice<re::SharedPtr<re::SyncObject>> const&,re::SyncObjectViewer *,re::SyncObjectWriteContext &)::$_0,void ()(re::SyncCommit const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F5408;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

double re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 72;
      }

      while (v4 < *(a1 + 8));
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

void re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::EntryBase::free(uint64_t a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = *(a1 + 8);
    if (v2)
    {

      *(a1 + 8) = 0;
    }

    v3 = *(a1 + 32);
    if (v3)
    {

      *(a1 + 32) = 0;
    }
  }
}

re::SyncObjectShortIDManagerImpl *re::make::shared::object<re::SyncObjectShortIDManagerImpl>@<X0>(re *a1@<X0>, re::SyncObjectShortIDManagerImpl **a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 232, 8);
  result = re::SyncObjectShortIDManagerImpl::SyncObjectShortIDManagerImpl(v4);
  *a2 = result;
  return result;
}

void re::make::shared::object<re::UnicastStream,re::ArcWeakPtr<re::Transport> &,unsigned long long &,re::DeliveryMethod,BOOL,re::SyncStreamID::{unnamed type#1},decltype(nullptr)>(re *a1, id *a2, uint64_t *a3, int *a4, char *a5, unsigned int *a6)
{
  v12 = re::globalAllocators(a1);
  v13 = (*(*v12[2] + 32))(v12[2], 112, 8);
  to = 0;
  objc_copyWeak(&to, a2);
  re::UnicastStream::UnicastStream(v13, &to, *a3, *a4, *a5, *a6, 0);
  *a1 = v13;
  objc_destroyWeak(&to);
}

double re::make::shared::object<re::SyncAckedStateBuffer>@<D0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 72, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_2873F5470;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v4 + 60) = 0x7FFFFFFFLL;
  *a2 = v4;
  return result;
}

void re::SyncAckedStateBuffer::~SyncAckedStateBuffer(re::SyncAckedStateBuffer *this)
{
  *this = &unk_2873F5470;
  re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 3);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F5470;
  re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 3);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

void *re::MessageStreamer<re::SyncHistoryResetRequest>::~MessageStreamer(void *a1)
{
  *a1 = &unk_2873F54B8;
  v2 = a1[3];
  if (v2)
  {

    a1[3] = 0;
  }

  *a1 = &unk_2873F3D98;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::MessageStreamer<re::SyncHistoryResetRequest>::~MessageStreamer(void *a1)
{
  *a1 = &unk_2873F54B8;
  v2 = a1[3];
  if (v2)
  {

    a1[3] = 0;
  }

  *a1 = &unk_2873F3D98;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x266708EC0);
}

_anonymous_namespace_ *re::MessageStreamer<re::SyncOwnershipRequest>::MessageStreamer(_anonymous_namespace_ *a1, uint64_t *a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_2873F5500;
  v4 = *a2;
  *(a1 + 3) = *a2;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  return a1;
}

void *re::MessageStreamer<re::SyncOwnershipRequest>::~MessageStreamer(void *a1)
{
  *a1 = &unk_2873F5500;
  v2 = a1[3];
  if (v2)
  {

    a1[3] = 0;
  }

  *a1 = &unk_2873F3D98;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::MessageStreamer<re::SyncOwnershipRequest>::~MessageStreamer(void *a1)
{
  *a1 = &unk_2873F5500;
  v2 = a1[3];
  if (v2)
  {

    a1[3] = 0;
  }

  *a1 = &unk_2873F3D98;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x266708EC0);
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_10;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 72 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 72 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 72 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 72 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 9);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    v6 = v5;
    if (v5 == *(a1 + 6))
    {
      v7 = *(a1 + 7);
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
          re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = a1[2];
          *&v26[16] = v13;
          a1[2] = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 3);
          v14 = *&v26[32];
          *(a1 + 3) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(a1, *(v17 + 32) % *(a1 + 6), *(v17 + 32));
                *(v18 + 8) = *(v17 - 24);
                *(v17 - 24) = 0;
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 32) = *v17;
                *v17 = 0;
                v19 = *(v17 + 16);
                *(v18 + 40) = *(v17 + 8);
                *(v18 + 48) = v19;
                *(v18 + 56) = *(v17 + 24);
              }

              v17 += 72;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(v26);
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

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v20 = a1[2];
    v21 = *(v20 + 72 * v5);
  }

  else
  {
    v20 = a1[2];
    v21 = *(v20 + 72 * v5);
    *(a1 + 9) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 72 * v5;
  *v23 = v21 | 0x80000000;
  v24 = a1[1];
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 64) = a3;
  ++*(a1 + 7);
  return v20 + 72 * v5;
}

void re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSelectiveAckedUnicast::BacklogEntry,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 72 * v10, 16);
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
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

uint64_t re::SyncReliableOrderedUnicast::SyncReliableOrderedUnicast(uint64_t a1, id *a2, re *a3, unint64_t a4, uint64_t a5, uint64_t a6, id *a7, char a8, char a9, char a10)
{
  v52 = a4;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_2873F5548;
  *(a1 + 24) = 0;
  v17 = (a1 + 24);
  *(v18 + 32) = 0;
  objc_copyWeak((v18 + 32), a2);
  *(a1 + 40) = 0;
  v19 = (a1 + 40);
  *(a1 + 48) = 0;
  re::make::shared::object<re::SyncObjectShortIDManagerImpl>(v20, &v53);
  *(a1 + 56) = v53;
  *(a1 + 64) = a5;
  *(a1 + 72) = a6;
  *(a1 + 80) = 0;
  objc_copyWeak((a1 + 80), a7);
  *(a1 + 88) = a8;
  *(a1 + 89) = a9;
  *(a1 + 90) = 0;
  *(a1 + 92) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0x7FFFFFFFLL;
  *(a1 + 144) = 0x8000000000000000;
  v51 = 0;
  v50 = 1;
  v49 = 1;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 0x40000000;
  v47[2] = ___ZN2re26SyncReliableOrderedUnicastC2ENS_10ArcWeakPtrINS_11SyncSessionEEENS1_INS_9TransportEEEyyyNS1_INS_15SyncObjectStoreEEEbbb_block_invoke;
  v47[3] = &__block_descriptor_tmp_4;
  v47[4] = a1;
  v48 = v47;
  re::make::shared::object<re::UnicastStream,re::ArcWeakPtr<re::Transport> &,unsigned long long &,re::DeliveryMethod,BOOL,re::SyncStreamID::{unnamed type#1},void({block_pointer})(unsigned long long)>(a3, &v52, &v51, &v50, &v49, &v48, &v53);
  v21 = v53;
  if (*a3)
  {
    v22 = (*a3 - 8);
  }

  else
  {
    v22 = 0;
  }

  v23 = v52;
  WeakRetained = objc_loadWeakRetained(a2);
  if (WeakRetained)
  {
    v25 = WeakRetained - 8;
  }

  else
  {
    v25 = 0;
  }

  (*(*v25 + 32))(&v53, v25);
  v26 = re::Transport::registerStream(v22, v21, 1uLL, v23);
  if (v53)
  {

    v53 = 0;
  }

  if (v26)
  {
    v28 = *v19;
    *v19 = v21;
    v21 = v28;
  }

  if (a10)
  {
    re::make::shared::object<re::SyncAckedStateBuffer>(v27, &v53);
    v29 = *v17;
    *v17 = v53;
    v53 = v29;
    if (v29)
    {
    }
  }

  v51 = 0;
  v50 = 1;
  v49 = 2;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 0x40000000;
  v46[2] = ___ZN2re26SyncReliableOrderedUnicastC2ENS_10ArcWeakPtrINS_11SyncSessionEEENS1_INS_9TransportEEEyyyNS1_INS_15SyncObjectStoreEEEbbb_block_invoke_2;
  v46[3] = &__block_descriptor_tmp_1;
  v46[4] = a1;
  v48 = v46;
  re::make::shared::object<re::UnicastStream,re::ArcWeakPtr<re::Transport> &,unsigned long long &,re::DeliveryMethod,BOOL,re::SyncStreamID::{unnamed type#1},void({block_pointer})(unsigned long long)>(a3, &v52, &v51, &v50, &v49, &v48, &v53);
  v30 = v53;
  if (*a3)
  {
    v31 = (*a3 - 8);
  }

  else
  {
    v31 = 0;
  }

  v32 = v52;
  v33 = objc_loadWeakRetained(a2);
  if (v33)
  {
    v34 = v33 - 8;
  }

  else
  {
    v34 = 0;
  }

  (*(*v34 + 32))(&v53, v34);
  v35 = re::Transport::registerStream(v31, v30, 2uLL, v32);
  if (v53)
  {

    v53 = 0;
  }

  if (v35)
  {
    v37 = re::globalAllocators(v36);
    v38 = (*(*v37[2] + 32))(v37[2], 32, 8);
    v53 = v30;
    if (v30)
    {
      v39 = v30 + 8;
    }

    re::MessageStreamer<re::SyncOwnershipRequest>::MessageStreamer(v38, &v53);
    if (v53)
    {
    }

    v40 = *(a1 + 48);
    *(a1 + 48) = v38;
    if (v40)
    {
    }
  }

  v53 = 0;
  if (*a3)
  {
    v41 = *a3 - 8;
  }

  else
  {
    v41 = 0;
  }

  if (re::Transport::receive(v41, v52, 1u, &v53))
  {
    do
    {
      if (*a3)
      {
        v42 = (*a3 - 8);
      }

      else
      {
        v42 = 0;
      }

      if (re::Transport::dispatchPacketToStream(v42, v53, v52))
      {
        if (*a3)
        {
          v43 = *a3 - 8;
        }

        else
        {
          v43 = 0;
        }

        re::PacketPool::free(*(v43 + 384), v53);
      }

      if (*a3)
      {
        v44 = *a3 - 8;
      }

      else
      {
        v44 = 0;
      }
    }

    while (re::Transport::receive(v44, v52, 1u, &v53));
  }

  if (v30)
  {
  }

  if (v21)
  {
  }

  return a1;
}

void re::SyncReliableOrderedUnicast::send(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, __n128 a5, uint64_t a6)
{
  v188 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) && *(a1 + 56))
  {
    memset(v170, 0, 28);
    *v182 = 0;
    v179 = 0;
    v180 = 0;
    v178 = 0;
    v181 = 0;
    v10 = *a3;
    v9 = *(a3 + 8);
    *&v171 = 0;
    v11 = *(a4 + 56);
    if (v9)
    {
      v12 = &v10[v9];
      a5.n128_u64[0] = 134218498;
      v166 = a5;
      do
      {
        v13 = *v10;
        if (*v10)
        {
          while ((*(*(*(v13 + 11) + 16) + 74) & 1) == 0)
          {
            v13 = *(v13 + 10);
            if (!v13)
            {
              goto LABEL_35;
            }
          }

          v14 = *(v13 + 12);
          if (v14)
          {
            v15 = *(v14 + 120);
            v16 = *(v14 + 104);
            if (v16)
            {
              v17 = 8 * v16;
              v18 = v15;
              while (*v18 != a4)
              {
                ++v18;
                v17 -= 8;
                if (!v17)
                {
                  goto LABEL_35;
                }
              }
            }

            else
            {
              v18 = v15;
            }

            if (v18 != &v15[v16])
            {
              WeakRetained = objc_loadWeakRetained((a1 + 32));
              if (WeakRetained)
              {
                v20 = WeakRetained - 8;
              }

              else
              {
                v20 = 0;
              }

              v21 = v20 + 8;
              (*(*v20 + 32))(buf);
              v22 = *(*buf + 3272);

              *buf = 0;
              if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                v23 = *(*v10 + 3);
                *buf = 134217984;
                *&buf[4] = v23;
                _os_log_impl(&dword_26168F000, v22, OS_LOG_TYPE_INFO, "[Ownership] Adding ownership changes for: %llu", buf, 0xCu);
              }

              v24 = re::SyncObject::takeOverLatestState(*v10);
              if (v24)
              {
                if (v180)
                {
                  v25 = *v182 + 72 * v180;
                }

                else
                {
                  buf[0] = 0;
                  *&buf[8] = v11;
                  *&buf[16] = 0;
                  *&buf[24] = 0;
                  buf[28] = 0;
                  *&v187 = 0;
                  *&v186 = 0;
                  v185 = 0uLL;
                  DWORD2(v186) = 0;
                  re::DynamicArray<re::SyncCommit>::add(&v178, buf);
                  re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(&v185);
                  v25 = *v182 + 72 * v180;
                  *(v25 - 72) = 1;
                }

                *buf = *v10;
                if (*buf)
                {
                  v33 = (*buf + 8);
                  v34 = *v10;
                }

                else
                {
                  v34 = 0;
                }

                *&buf[8] = re::SyncObject::latestStateHandle(v34);
                buf[16] &= 0xF0u;
                re::DynamicArray<re::internal::SyncSnapshotEntry>::add((v25 - 40), buf);
                if (*buf)
                {
                }
              }

              else
              {
                v26 = *re::networkLogObjects(v24);
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  v27 = *(*v10 + 3);
                  v28 = *(*(*v10 + 11) + 16);
                  v29 = v28[4];
                  v30 = v28[6];
                  v31 = v28[7];
                  v32 = v28 + 49;
                  if (v30)
                  {
                    v32 = v31;
                  }

                  *buf = v166.n128_u32[0];
                  *&buf[4] = v27;
                  *&buf[12] = 2048;
                  *&buf[14] = v29;
                  *&buf[22] = 2080;
                  *&buf[24] = v32;
                  _os_log_error_impl(&dword_26168F000, v26, OS_LOG_TYPE_ERROR, "Sync object without snapshot while packing ownership broadcasts (id: %llu, type: %llu[%s]).", buf, 0x20u);
                }
              }
            }
          }
        }

LABEL_35:
        ++v10;
      }

      while (v10 != v12);
    }

    v35 = *(a4 + 96);
    if (v35)
    {
      v36 = 0;
      v37 = *(a4 + 80);
      while (1)
      {
        v38 = *v37;
        v37 += 8;
        if (v38 < 0)
        {
          break;
        }

        if (v35 == ++v36)
        {
          LODWORD(v36) = *(a4 + 96);
          break;
        }
      }
    }

    else
    {
      LODWORD(v36) = 0;
    }

    while (v36 != v35)
    {
      v43 = *(a4 + 80) + 32 * v36;
      v46 = *(v43 + 8);
      v45 = v43 + 8;
      v44 = v46;
      v47 = *(v46 + 80);
      v48 = v46;
      if (v47)
      {
        v49 = v44;
        do
        {
          v48 = v49;
          v49 = v47;
          if (*(*(*(v48 + 88) + 16) + 73))
          {
            break;
          }

          v47 = *(v47 + 80);
          v48 = v49;
        }

        while (v47);
      }

      if ((*(v48 + 170) & 1) != 0 || (*(a1 + 88) & 1) != 0 || *(a1 + 89) == 1)
      {
        if (*(v45 + 8))
        {
          *buf = v44;
          re::DynamicArray<re::Allocator const*>::add(v170, buf);
        }

        else
        {
          if (v180)
          {
            v50 = *v182 + 72 * v180 - 72;
          }

          else
          {
            buf[0] = 0;
            *&buf[8] = v11;
            *&buf[16] = 0;
            *&buf[24] = 0;
            buf[28] = 0;
            *&v187 = 0;
            *&v186 = 0;
            v185 = 0uLL;
            DWORD2(v186) = 0;
            re::DynamicArray<re::SyncCommit>::add(&v178, buf);
            re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(&v185);
            v51 = *v182 + 72 * v180;
            *(v51 - 72) = 1;
            v50 = v51 - 72;
          }

          addToViewRecursive(v45, v50, *(a4 + 56));
        }
      }

      v52 = *(a4 + 96);
      if (v52 <= v36 + 1)
      {
        v52 = v36 + 1;
      }

      while (v52 - 1 != v36)
      {
        LODWORD(v36) = v36 + 1;
        if ((*(*(a4 + 80) + 32 * v36) & 0x80000000) != 0)
        {
          goto LABEL_68;
        }
      }

      LODWORD(v36) = v52;
LABEL_68:
      ;
    }

    if (*&v170[1])
    {
      v53 = v171;
      v54 = 8 * *&v170[1];
      do
      {
        v55 = *v53;
        *v183 = v55;
        if (v55)
        {
          v56 = (v55 + 8);
        }

        if (v180)
        {
          v57 = *v182 + 72 * v180 - 72;
        }

        else
        {
          buf[0] = 0;
          *&buf[8] = v11;
          *&buf[16] = 0;
          *&buf[24] = 0;
          buf[28] = 0;
          *&v187 = 0;
          *&v186 = 0;
          v185 = 0uLL;
          DWORD2(v186) = 0;
          re::DynamicArray<re::SyncCommit>::add(&v178, buf);
          re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(&v185);
          v58 = *v182 + 72 * v180;
          *(v58 - 72) = 1;
          v57 = v58 - 72;
        }

        removeFromViewRecursive(v183, v57, *(a4 + 56));
        if (*v183)
        {
        }

        ++v53;
        v54 -= 8;
      }

      while (v54);
    }

    *&v183[32] = 0;
    memset(v183, 0, 28);
    v59 = a2[1];
    if (v59)
    {
      v60 = *a2;
      v61 = *a2 + 72 * v59;
      do
      {
        v62 = *(v60 + 28);
        if (v62 != 1 || *(v60 + 8) != *(a4 + 56))
        {
          if (v62)
          {
            v64 = *(v60 + 48);
            if (v64)
            {
              v65 = *(v60 + 64);
              v66 = &v65[3 * v64];
              do
              {
                v67 = *v65;
                v68 = *(*v65 + 80);
                if (v68)
                {
                  do
                  {
                    v69 = v67;
                    v67 = v68;
                    if (*(*(*(v69 + 88) + 16) + 73))
                    {
                      break;
                    }

                    v68 = *(v68 + 80);
                    v69 = v67;
                  }

                  while (v68);
                }

                else
                {
                  v69 = *v65;
                }

                if (((*(v69 + 170) & 1) != 0 || (*(a1 + 88) & 1) != 0 || *(a1 + 89) == 1) && entryIsAddable(v65, a4))
                {
                  if (v180)
                  {
                    v70 = *v182 + 72 * v180;
                  }

                  else
                  {
                    buf[0] = 0;
                    *&buf[8] = v11;
                    *&buf[16] = 0;
                    *&buf[24] = 0;
                    buf[28] = 0;
                    *&v187 = 0;
                    *&v186 = 0;
                    v185 = 0uLL;
                    DWORD2(v186) = 0;
                    re::DynamicArray<re::SyncCommit>::add(&v178, buf);
                    re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(&v185);
                    v70 = *v182 + 72 * v180;
                    *(v70 - 72) = 1;
                  }

                  re::DynamicArray<re::internal::SyncSnapshotEntry>::add((v70 - 40), v65);
                }

                v65 += 3;
              }

              while (v65 != v66);
            }
          }

          else
          {
            *buf = v60;
            re::DynamicArray<re::Allocator const*>::add(v183, buf);
          }
        }

        v60 += 72;
      }

      while (v60 != v61);
      if (*&v183[16])
      {
        v71 = *&v183[32];
        v72 = *&v183[32] + 8 * *&v183[16];
        do
        {
          v73 = *(*v71 + 48);
          if (v73)
          {
            v74 = *(*v71 + 64);
            v75 = &v74[3 * v73];
            do
            {
              v76 = *v74;
              v77 = *(*v74 + 80);
              if (v77)
              {
                do
                {
                  v78 = v76;
                  v76 = v77;
                  if (*(*(*(v78 + 88) + 16) + 73))
                  {
                    break;
                  }

                  v77 = *(v77 + 80);
                  v78 = v76;
                }

                while (v77);
              }

              else
              {
                v78 = *v74;
              }

              if (((*(v78 + 170) & 1) != 0 || (*(a1 + 88) & 1) != 0 || *(a1 + 89) == 1) && entryIsAddable(v74, a4))
              {
                if (v180)
                {
                  v79 = *v182 + 72 * v180;
                }

                else
                {
                  buf[0] = 0;
                  *&buf[8] = v11;
                  *&buf[16] = 0;
                  *&buf[24] = 0;
                  buf[28] = 0;
                  *&v187 = 0;
                  *&v186 = 0;
                  v185 = 0uLL;
                  DWORD2(v186) = 0;
                  re::DynamicArray<re::SyncCommit>::add(&v178, buf);
                  re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(&v185);
                  v79 = *v182 + 72 * v180;
                  *(v79 - 72) = 1;
                }

                re::DynamicArray<re::internal::SyncSnapshotEntry>::add((v79 - 40), v74);
              }

              v74 += 3;
            }

            while (v74 != v75);
          }

          v71 += 8;
        }

        while (v71 != v72);
      }
    }

    if (*v183 && *&v183[32])
    {
      (*(**v183 + 40))(a5);
    }

    if (*&v170[0] && v171)
    {
      (*(**&v170[0] + 40))(a5);
    }

    re::SyncCommitDump::log(*v182, v180, "SendCommit");
    if (*(a1 + 90) == 1)
    {
      if (v180)
      {
        v80 = *v182;
        v81 = *v182 + 72 * v180;
        v82 = 1;
        do
        {
          v83 = *(v80 + 6);
          if (v83)
          {
            v84 = 24 * v83;
            v85 = (*(v80 + 8) + 16);
            do
            {
              v86 = (v85 - 16);
              if ((*v85 & 2) != 0)
              {
                re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addOrReplace(a1 + 96, v86, v85);
              }

              else
              {
                v87 = re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::add(a1 + 96, v86, v85);
                if ((*v87 & 2) != 0)
                {
                  *v87 = *v85;
                }
              }

              v85 += 24;
              v84 -= 24;
            }

            while (v84);
            v82 = 0;
          }

          v80 = (v80 + 72);
        }

        while (v80 != v81);
      }

      else
      {
        v82 = 1;
      }

      if (std::chrono::steady_clock::now().__d_.__rep_ >= *(a1 + 144) && (v82 & 1) == 0)
      {
        v92.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        *(a1 + 144) = v92.__d_.__rep_ + 5000000000;
        LODWORD(v185) = 0;
        memset(buf, 0, sizeof(buf));
        *(&v185 + 4) = 0x7FFFFFFFLL;
        if (v180)
        {
          v93 = *v182;
          v167 = *v182 + 72 * v180;
          while (1)
          {
            v169 = v93;
            v94 = *(v93 + 6);
            if (v94)
            {
              break;
            }

LABEL_166:
            v93 = (v169 + 72);
            if ((v169 + 72) == v167)
            {
              goto LABEL_167;
            }
          }

          v95 = *(v93 + 8);
          v96 = v95 + 24 * v94;
          while (1)
          {
            v97 = *(*(*v95 + 88) + 16);
            v98 = re::Hash<re::DynamicString>::operator()(v170, v97 + 40);
            v99 = v98;
            if (*&buf[24])
            {
              v100 = v98 % *&buf[24];
              v101 = *(*&buf[8] + 4 * v100);
              if (v101 != 0x7FFFFFFF)
              {
                v102 = *&buf[16];
                do
                {
                  v92.__d_.__rep_ = re::DynamicString::operator==(v102 + 48 * v101 + 16, v97 + 40);
                  if (v92.__d_.__rep_)
                  {
                    goto LABEL_165;
                  }

                  v101 = *(v102 + 48 * v101 + 8) & 0x7FFFFFFF;
                }

                while (v101 != 0x7FFFFFFF);
              }
            }

            else
            {
              LODWORD(v100) = 0;
            }

            v92.__d_.__rep_ = re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addAsCopy(buf, v100, v99, v97 + 40, (v97 + 40));
            ++DWORD2(v185);
LABEL_165:
            v95 += 24;
            if (v95 == v96)
            {
              goto LABEL_166;
            }
          }
        }

LABEL_167:
        memset(v170 + 8, 0, 24);
        re::DynamicString::setCapacity(v170, 0);
        v103 = v185;
        if (v185)
        {
          v104 = 0;
          v105 = (*&buf[16] + 8);
          while (1)
          {
            v106 = *v105;
            v105 += 12;
            if (v106 < 0)
            {
              break;
            }

            if (v185 == ++v104)
            {
              LODWORD(v104) = v185;
              break;
            }
          }
        }

        else
        {
          LODWORD(v104) = 0;
        }

        if (v104 != v185)
        {
          v140 = *&buf[16];
          do
          {
            v141 = v140 + 48 * v104;
            v142 = *(v141 + 24);
            v143 = *(v141 + 32);
            v144 = (v141 + 25);
            v145 = (v142 & 1) == 0;
            if (v142)
            {
              v146 = v143;
            }

            else
            {
              v146 = v144;
            }

            v147 = v142 >> 1;
            v148 = v142 >> 1;
            if (v145)
            {
              v149 = v148;
            }

            else
            {
              v149 = v147;
            }

            re::DynamicString::append(v170, v146, v149);
            re::DynamicString::append(v170, " ", 1uLL);
            v140 = *&buf[16];
            if (v185 <= v104 + 1)
            {
              v150 = v104 + 1;
            }

            else
            {
              v150 = v185;
            }

            while (v150 - 1 != v104)
            {
              LODWORD(v104) = v104 + 1;
              if ((*(*&buf[16] + 48 * v104 + 8) & 0x80000000) != 0)
              {
                goto LABEL_245;
              }
            }

            LODWORD(v104) = v150;
LABEL_245:
            ;
          }

          while (v104 != v103);
        }

        v151 = objc_loadWeakRetained((a1 + 32));
        if (v151)
        {
          v152 = v151 - 8;
        }

        else
        {
          v152 = 0;
        }

        v153 = v152 + 8;
        (*(*v152 + 32))(v183);
        v154 = *(*v183 + 3272);

        *v183 = 0;
        if (os_log_type_enabled(v154, OS_LOG_TYPE_INFO))
        {
          v155 = objc_loadWeakRetained((a1 + 32));
          if (v155)
          {
            v156 = v155 - 8;
          }

          else
          {
            v156 = 0;
          }

          (*(*v156 + 32))(&v177, v156);
          v157 = re::Session::peerID(v177);
          v158 = *(a1 + 40);
          v159 = *(v158 + 32);
          if (v159)
          {
            v160 = (v159 - 8);
          }

          else
          {
            v160 = 0;
          }

          re::Transport::connectionAddress(&v174, v160, *(v158 + 40));
          if (v175)
          {
            v161 = *&v176[7];
          }

          else
          {
            v161 = v176;
          }

          if (BYTE8(v170[0]))
          {
            v162 = *&v170[1];
          }

          else
          {
            v162 = v170 + 9;
          }

          *v183 = 134218498;
          *&v183[4] = v157;
          *&v183[12] = 2080;
          *&v183[14] = v161;
          *&v183[22] = 2080;
          *&v183[24] = v162;
          _os_log_impl(&dword_26168F000, v154, OS_LOG_TYPE_INFO, "Sending sync data on paused connection to %llx ('%s'): %s", v183, 0x20u);
          if (v174 && (v175 & 1) != 0)
          {
            (*(*v174 + 40))();
          }

          if (v177)
          {

            v177 = 0;
          }
        }

        if (*&v170[0])
        {
          if (BYTE8(v170[0]))
          {
            (*(**&v170[0] + 40))();
          }
        }

        re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(buf);
      }
    }

    else
    {
      if (*(a1 + 124))
      {
        v88 = *(a4 + 96);
        if (v88)
        {
          v89 = 0;
          v90 = *(a4 + 80);
          while (1)
          {
            v91 = *v90;
            v90 += 8;
            if (v91 < 0)
            {
              break;
            }

            if (v88 == ++v89)
            {
              LODWORD(v89) = *(a4 + 96);
              break;
            }
          }
        }

        else
        {
          LODWORD(v89) = 0;
        }

LABEL_179:
        while (v89 != v88)
        {
          re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(a1 + 96, (*(a4 + 80) + 32 * v89 + 8));
          v107 = *(a4 + 96);
          if (v107 <= v89 + 1)
          {
            v107 = v89 + 1;
          }

          while (v107 - 1 != v89)
          {
            LODWORD(v89) = v89 + 1;
            if ((*(*(a4 + 80) + 32 * v89) & 0x80000000) != 0)
            {
              goto LABEL_179;
            }
          }

          LODWORD(v89) = v107;
        }

        v173 = 0;
        v171 = 0u;
        v172 = 0u;
        memset(v170, 0, sizeof(v170));
        LOBYTE(v170[0]) = 1;
        v108 = *(a1 + 128);
        if (v108)
        {
          v109 = 0;
          v110 = *(a1 + 112);
          while (1)
          {
            v111 = *v110;
            v110 += 8;
            if (v111 < 0)
            {
              break;
            }

            if (v108 == ++v109)
            {
              LODWORD(v109) = *(a1 + 128);
              break;
            }
          }
        }

        else
        {
          LODWORD(v109) = 0;
        }

LABEL_187:
        while (v109 != v108)
        {
          v112 = *(a1 + 112) + 32 * v109;
          v115 = *(v112 + 8);
          v114 = v112 + 8;
          v113 = v115;
          *buf = v115;
          if (v115)
          {
            v116 = (v113 + 8);
            v117 = *v114;
          }

          else
          {
            v117 = 0;
          }

          *&buf[8] = re::SyncObject::latestStateHandle(v117);
          buf[16] = *(v114 + 8);
          re::DynamicArray<re::internal::SyncSnapshotEntry>::add(&v171, buf);
          if (*buf)
          {
          }

          v118 = *(a1 + 128);
          if (v118 <= v109 + 1)
          {
            v118 = v109 + 1;
          }

          while (v118 - 1 != v109)
          {
            LODWORD(v109) = v109 + 1;
            if ((*(*(a1 + 112) + 32 * v109) & 0x80000000) != 0)
            {
              goto LABEL_187;
            }
          }

          LODWORD(v109) = v118;
        }

        re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::clear(a1 + 96);
        v119 = v180;
        if (v180 == -1)
        {
          v174 = 0;
          v186 = 0u;
          v187 = 0u;
          v185 = 0u;
          memset(buf, 0, sizeof(buf));
          v163 = MEMORY[0x277D86220];
          v164 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          *v183 = 136315906;
          *&v183[4] = "insert";
          *&v183[12] = 1024;
          if (v164)
          {
            v165 = 3;
          }

          else
          {
            v165 = 2;
          }

          *&v183[14] = 887;
          *&v183[18] = 2048;
          *&v183[20] = 0;
          *&v183[28] = 2048;
          *&v183[30] = 0;
          _os_log_send_and_compose_impl(v165, &v174, buf, 80, &dword_26168F000, v163, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v183, 38, v166.n128_u64[0], v166.n128_u64[1]);
          _os_crash_msg();
          __break(1u);
        }

        if (v180 >= v179)
        {
          re::DynamicArray<re::SyncCommit>::growCapacity(&v178, v180 + 1);
          v119 = v180;
        }

        v120 = *v182 + 72 * v119;
        if (v119)
        {
          re::SyncCommit::SyncCommit(v120, v120 - 72);
          v121 = *v182;
          if (*v182 + 72 * v180 - 72 != *v182)
          {
            v122 = *v182 + 72 * v180 - 144;
            v123 = 72 - 72 * v180;
            do
            {
              *(v122 + 72) = *v122;
              *(v122 + 85) = *(v122 + 13);
              re::DynamicArray<re::internal::SyncSnapshotEntry>::operator=(v122 + 104, (v122 + 32));
              v122 -= 72;
              v123 += 72;
            }

            while (v123);
            v121 = *v182;
          }

          v124 = v170[0];
          *(v121 + 13) = *(v170 + 13);
          *v121 = v124;
          re::DynamicArray<re::internal::SyncSnapshotEntry>::operator=(v121 + 32, &v171);
        }

        else
        {
          v125 = v170[0];
          *(v120 + 13) = *(v170 + 13);
          *v120 = v125;
          *(v120 + 64) = 0;
          *(v120 + 40) = 0;
          *(v120 + 48) = 0;
          *(v120 + 32) = 0;
          *(v120 + 56) = 0;
          *(v120 + 32) = v171;
          *&v171 = 0;
          *(v120 + 40) = *(&v171 + 1);
          *(&v171 + 1) = 0;
          v126 = *(v120 + 48);
          *(v120 + 48) = v172;
          *&v172 = v126;
          v127 = *(v120 + 64);
          *(v120 + 64) = v173;
          v173 = v127;
          ++DWORD2(v172);
          ++*(v120 + 56);
        }

        ++v180;
        ++v181;
        re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(&v171);
      }

      v128 = *(a1 + 40) + 24;
      *&buf[16] = 0;
      buf[20] = 0;
      *&buf[24] = 0;
      *&v185 = 0;
      *buf = &unk_2873F4D10;
      *&buf[8] = 0;
      *(&v185 + 1) = v128;
      *&v186 = 0;
      v129 = *(a1 + 24);
      *&v170[0] = *(a1 + 56);
      *(&v170[0] + 1) = v129;
      LOBYTE(v170[1]) = 0;
      if (v180)
      {
        v130 = *v182;
        v131 = 72 * v180;
        do
        {
          re::SyncPacker::packCommit(v170, v130, buf, a6, 0);
          v130 = (v130 + 72);
          v131 -= 72;
        }

        while (v131);
        v132 = *&buf[24];
        if (*&buf[28])
        {
          v132 = *&buf[24] + 1;
        }

        if (v132)
        {
          v133 = *(a1 + 40);
          *(v186 + 24) = v132;
          *&buf[24] = 0;
          *&v185 = 0;
          *&buf[8] = 0;
          *&buf[16] = 0;
          *&v186 = 0;
          (*(*v133 + 48))(v133);
        }
      }

      if (*(a1 + 24) && v180)
      {
        v134 = *v182;
        v135 = *v182 + 72 * v180;
        do
        {
          v136 = *(v134 + 6);
          if (v136)
          {
            v137 = *(v134 + 8);
            v138 = 24 * v136;
            do
            {
              v139 = *(a1 + 24);
              if ((*(v137 + 16) & 2) != 0)
              {
                re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(v139 + 24, v137);
              }

              else
              {
                re::SyncAckedStateBuffer::addAcked(v139, v137, *(v137 + 8), *(*v137 + 176));
              }

              v137 += 24;
              v138 -= 24;
            }

            while (v138);
          }

          v134 = (v134 + 72);
        }

        while (v134 != v135);
      }

      if (v186)
      {
        (*(**(&v185 + 1) + 24))(*(&v185 + 1));
      }
    }

    re::DynamicArray<re::SyncCommit>::deinit(&v178);
  }

  else
  {
    v39 = objc_loadWeakRetained((a1 + 32));
    if (v39)
    {
      v40 = v39 - 8;
    }

    else
    {
      v40 = 0;
    }

    v41 = v40 + 8;
    (*(*v40 + 32))(buf);
    v42 = *(*buf + 3272);

    *buf = 0;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26168F000, v42, OS_LOG_TYPE_ERROR, "Transport is destroyed but trying to send.", buf, 2u);
    }
  }
}

BOOL re::SyncReliableOrderedUnicast::receive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (v4 && *(a1 + 56))
  {
    if (*(a1 + 91) == 1 && (*(a1 + 91) = 0, (v6 = (*(*v4 + 56))(v4)) != 0))
    {
      v7 = v6;
      v58 = a2;
      do
      {
        v8 = *(v7 + 16);
        v57 = v7;
        v9 = *(v7 + 24);
        v82 = v8;
        v83 = v9;
        v84 = 0;
        v85 = 0;
        v86 = 0;
        while (v83 != v85)
        {
          v10 = *(a1 + 56);
          WeakRetained = objc_loadWeakRetained((a1 + 80));
          v12 = *(a1 + 88);
          v13 = WeakRetained - 8;
          if (!WeakRetained)
          {
            v13 = 0;
          }

          *v69 = v10;
          v70 = v13;
          v71 = *(a1 + 64);
          v72 = 0u;
          v73 = 0u;
          v74 = 0;
          v75 = 0x7FFFFFFFLL;
          v80 = 0;
          v77 = 0;
          v78 = 0;
          v76 = 0;
          v79 = 0;
          v81 = v12;
          if (WeakRetained)
          {
          }

          v62[0] = 0;
          v68 = 0;
          v65[1] = 0;
          v66 = 0;
          v65[0] = 0;
          v67 = 0;
          v63 = 0;
          v64[0] = 0;
          *(v64 + 5) = 0;
          v14 = re::SyncUnpacker::unpackCommit(v69, &v82, v62, a2);
          v15 = v14;
          if (v14)
          {
            v60 = v14;
            v16 = v74;
            if (v74)
            {
              v17 = 0;
              v18 = v73;
              while (1)
              {
                v19 = *v18;
                v18 += 10;
                if (v19 < 0)
                {
                  break;
                }

                if (v74 == ++v17)
                {
                  LODWORD(v17) = v74;
                  break;
                }
              }
            }

            else
            {
              LODWORD(v17) = 0;
            }

            if (v17 != v74)
            {
              v32 = v73;
              do
              {
                v33 = v32 + 40 * v17;
                v34 = *(v33 + 16);
                v35 = *(v33 + 24);
                v36 = objc_loadWeakRetained((a1 + 80));
                v37 = v36;
                if (v36)
                {
                  v38 = (v36 - 8);
                }

                else
                {
                  v38 = 0;
                }

                re::SyncObjectStore::findObject(v87, v38, v34, v35);
                if (v37)
                {
                }

                v39 = *v87;
                if (*v87)
                {
                  re::SyncObject::bindWithParent(*(v33 + 8), *v87);
                }

                else
                {
                  v41 = objc_loadWeakRetained((a1 + 80));
                  if (v41)
                  {
                    v42 = v41;
                    v43 = objc_loadWeakRetained((a1 + 80));
                    v44 = v43 - 8;
                    if (!v43)
                    {
                      v44 = 0;
                    }

                    v45 = *(v33 + 8);
                    *buf = *(v45 + 24);
                    v61 = *(*(*(v45 + 88) + 16) + 32);
                    v46 = re::SyncObjectTombstoneInfo::contains((v44 + 120), buf, &v61);
                    if (v43)
                    {
                    }

                    if (!v46)
                    {
                      v48 = *re::networkLogObjects(v47);
                      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                      {
                        v49 = *(*(v33 + 8) + 24);
                        *buf = 134218240;
                        *&buf[4] = v49;
                        v91 = 2048;
                        *v92 = v35;
                        _os_log_error_impl(&dword_26168F000, v48, OS_LOG_TYPE_ERROR, "BindFailure: Object %llu with parent %llu", buf, 0x16u);
                      }
                    }
                  }
                }

                if (v74 <= v17 + 1)
                {
                  v40 = v17 + 1;
                }

                else
                {
                  v40 = v74;
                }

                v32 = v73;
                while (v40 - 1 != v17)
                {
                  LODWORD(v17) = v17 + 1;
                  if ((*(v73 + 40 * v17) & 0x80000000) != 0)
                  {
                    goto LABEL_63;
                  }
                }

                LODWORD(v17) = v40;
LABEL_63:
                ;
              }

              while (v17 != v16);
            }

            a2 = v58;
            if (v66)
            {
              v27 = (v68 + 16);
              v28 = 24 * v66;
              do
              {
                v29 = *(v27 - 2);
                if ((*v27 & 2) != 0 || (*(v29 + 128) & 4) != 0)
                {
                  (*(**(a1 + 56) + 40))(*(a1 + 56), *(v29 + 24), *(*(*(v29 + 88) + 16) + 32));
                }

                v27 += 24;
                v28 -= 24;
              }

              while (v28);
            }

            if (*(a1 + 24) && v66)
            {
              v30 = v68;
              v31 = 24 * v66;
              do
              {
                re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(*(a1 + 24) + 24, v30);
                v30 += 3;
                v31 -= 24;
              }

              while (v31);
            }

            re::SyncCommitDump::log(v62, 1, "RecvCommit");
            (*(a3 + 16))(a3, v62, v58);
            v15 = v60;
          }

          else
          {
            v20 = *(a1 + 40);
            v21 = *(v20 + 32);
            if (v21)
            {
              v22 = (v21 - 8);
            }

            else
            {
              v22 = 0;
            }

            re::Transport::connectionAddress(buf, v22, *(v20 + 40));
            v23 = objc_loadWeakRetained((a1 + 32));
            if (v23)
            {
              v24 = v23 - 8;
            }

            else
            {
              v24 = 0;
            }

            v25 = v24 + 8;
            (*(*v24 + 32))(v87);
            v26 = *(*v87 + 3272);

            *v87 = 0;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v50 = *(a1 + 64);
              v51 = &buf[9];
              if (buf[8])
              {
                v51 = *&v92[2];
              }

              *v87 = 134218242;
              *&v87[4] = v50;
              v88 = 2082;
              v89 = v51;
              _os_log_error_impl(&dword_26168F000, v26, OS_LOG_TYPE_ERROR, "Failed to parse incoming packet. Will drop peer.(peerID=%llu, address=%{public}s)", v87, 0x16u);
            }

            (*(**(a1 + 40) + 40))(*(a1 + 40), v57);
            if (*buf && (buf[8] & 1) != 0)
            {
              (*(**buf + 40))();
            }
          }

          re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v65);
          if (v76)
          {
            if (v80)
            {
              (*(*v76 + 40))();
            }

            v80 = 0;
            v77 = 0;
            v78 = 0;
            v76 = 0;
            ++v79;
          }

          re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(&v72);
          if (!v15)
          {
            return 0;
          }
        }

        (*(**(a1 + 40) + 40))(*(a1 + 40), v57);
        v7 = (*(**(a1 + 40) + 56))(*(a1 + 40));
        result = 1;
      }

      while (v7);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v53 = objc_loadWeakRetained((a1 + 32));
    if (v53)
    {
      v54 = v53 - 8;
    }

    else
    {
      v54 = 0;
    }

    v55 = v54 + 8;
    (*(*v54 + 32))(v69);
    v56 = *(*v69 + 3272);

    *v69 = 0;
    result = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v69 = 0;
      _os_log_error_impl(&dword_26168F000, v56, OS_LOG_TYPE_ERROR, "Transport is destroyed but trying to receive.", v69, 2u);
      return 0;
    }
  }

  return result;
}

uint64_t re::SyncReliableOrderedUnicast::receiveOwnershipRequests(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 92) != 1)
  {
    return 1;
  }

  *(a1 + 92) = 0;
  v3 = *(a1 + 48);
  v10 = *(a2 + 24);
  v11 = 0;
  if (v9 != a2)
  {
    re::FunctionBase<24ul,void ()(re::SyncOwnershipRequest const&)>::destroyCallable(v9);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      if (v5 >= 0x19)
      {
        if (v10)
        {
          v6 = (*(*v10 + 32))(v10, v5, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = v9;
      }

      v11 = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  v7 = re::MessageStreamer<re::SyncOwnershipRequest>::receive<re::Function<void ()(re::SyncOwnershipRequest const&)>>(v3, v9);
  re::FunctionBase<24ul,void ()(re::SyncOwnershipRequest const&)>::destroyCallable(v9);
  return v7;
}

void re::SyncReliableOrderedUnicast::~SyncReliableOrderedUnicast(re::SyncReliableOrderedUnicast *this)
{
  re::SyncReliableOrderedUnicast::~SyncReliableOrderedUnicast(this);

  JUMPOUT(0x266708EC0);
}

{
  re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 12);
  objc_destroyWeak(this + 10);
  *(this + 10) = 0;
  v2 = *(this + 7);
  if (v2)
  {

    *(this + 7) = 0;
  }

  v3 = *(this + 6);
  if (v3)
  {

    *(this + 6) = 0;
  }

  v4 = *(this + 5);
  if (v4)
  {

    *(this + 5) = 0;
  }

  objc_destroyWeak(this + 4);
  *(this + 4) = 0;
  v5 = *(this + 3);
  if (v5)
  {

    *(this + 3) = 0;
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

uint64_t RESyncParticipantListCount(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t RESyncParticipantListAtIndex(uint64_t result, unint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = *(result + 16);
    if (v3 >= a2)
    {
      if (v3 <= a2)
      {
        v8 = 0;
        memset(v17, 0, sizeof(v17));
        v4 = MEMORY[0x277D86220];
        v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        v9 = 136315906;
        v10 = "operator[]";
        v11 = 1024;
        if (v5)
        {
          v6 = 3;
        }

        else
        {
          v6 = 2;
        }

        v12 = 789;
        v13 = 2048;
        v14 = a2;
        v15 = 2048;
        v16 = v3;
        _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_26168F000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
        _os_crash_msg();
        __break(1u);
      }

      return *(*(result + 32) + 8 * a2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t RESyncNetSessionCreate(re *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = *re::networkLogObjects(0);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *v6 = 136315394;
    *&v6[4] = "RESyncNetSessionCreate";
    v7 = 2080;
    v8 = "configuration != __null";
    v5 = "%s: Invalid parameter not satisfying %s.";
LABEL_15:
    _os_log_error_impl(&dword_26168F000, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x16u);
    return 0;
  }

  v1 = (a1 + 24);
  if (!*(a1 + 3))
  {
    v4 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *v6 = 136315394;
    *&v6[4] = "RESyncNetSessionCreate";
    v7 = 2080;
    v8 = "Use RESyncNetSessionConfigurationSetTransportQueue() to configure transport queue.";
    v5 = "%s: %s";
    goto LABEL_15;
  }

  if (!*(a1 + 11))
  {
    v4 = *re::networkLogObjects(a1);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *v6 = 136315394;
    *&v6[4] = "RESyncNetSessionCreate";
    v7 = 2080;
    v8 = "Use RESyncNetSessionConfigurationSetDiscoveryView() to configure discovery view.";
    v5 = "%s: %s";
    goto LABEL_15;
  }

  re::make::shared::object<re::Session>(a1, v6);
  v2 = re::Session::init(*v6, v1);
  result = *v6;
  if ((v2 & 1) == 0 && *v6)
  {

    return 0;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetTransportQueue(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionIsInitialized(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 2272);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL RESyncNetSessionIsActive(_BOOL8 result)
{
  if (result)
  {
    return *(result + 3264) == 2;
  }

  return result;
}

re::Session *RESyncNetSessionPeerID(re::Session *result)
{
  if (result)
  {
    return re::Session::peerID(result);
  }

  return result;
}

uint64_t RESyncNetSessionLeader(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[392];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[287];
  if (!v2)
  {
    return 0;
  }

  v3 = a1[289];
  v4 = 8 * v2;
  while (1)
  {
    v5 = *v3;
    if (*(*v3 + 24) == v1)
    {
      break;
    }

    ++v3;
    v4 -= 8;
    if (!v4)
    {
      return 0;
    }
  }

  v7 = (v5 + 8);

  return v5;
}

uint64_t RESyncNetSessionGetDiscoveryView(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 2208);
  if (v1)
  {
    v2 = (v1 + 8);
  }

  return v1;
}

double RESyncNetSessionObserverCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 144, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_2873F55C0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 100) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(v2 + 116) = 0x7FFFFFFFLL;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  return result;
}

double RESyncNetSessionAddObserver(_DWORD *a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    v15 = a2;
    *(&v16 + 1) = 0;
    re::Event<re::Session>::addSubscription(a1 + 30, &v15);
    v15 = a2;
    *(&v16 + 1) = 0;
    re::Event<re::Session>::addSubscription(a1 + 52, &v15);
    v15 = a2;
    *(&v16 + 1) = 0;
    re::Event<re::Session>::addSubscription(a1 + 74, &v15);
    v15 = a2;
    *(&v16 + 1) = 0;
    re::Event<re::Session>::addSubscription(a1 + 96, &v15);
    v15 = a2;
    *(&v16 + 1) = 0;
    re::Event<re::Session>::addSubscription(a1 + 426, &v15);
    v4 = *(a2 + 112);
    if (v4)
    {
      v5 = 0;
      v6 = *(a2 + 96);
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
          v5 = *(a2 + 112);
          break;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    if (v4 != v5)
    {
      LODWORD(v8) = v5;
      do
      {
        v9 = &a1[22 * *(*(a2 + 96) + 24 * v5 + 4) + 140];
        *&v13 = a2;
        *&v14 = 0;
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v9, &v13, &v15);
        if ((v15 & 1) == 0)
        {
          if (*(v9 + 20))
          {
            LOBYTE(v15) = 1;
            v16 = v13;
            v17 = v14;
            re::DynamicArray<re::Pair<BOOL,re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::Subscription,true>>::add(v9 + 40, &v15);
          }

          else
          {
            re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add(v9, &v13);
          }
        }

        v10 = *(a2 + 112);
        if (v10 <= v8 + 1)
        {
          v11 = (v8 + 1);
        }

        else
        {
          v11 = v10;
        }

        while (v11 - 1 != v8)
        {
          v8 = (v8 + 1);
          if ((*(*(a2 + 96) + 24 * v8) & 0x80000000) != 0)
          {
            v5 = v8;
            LODWORD(v11) = v8;
            goto LABEL_22;
          }
        }

        v5 = v11;
LABEL_22:
        LODWORD(v8) = v11;
      }

      while (v10 != v11);
    }

    v15 = a2;
    *(&v16 + 1) = 0;
    re::Event<re::Session>::addSubscription(a1 + 448, &v15);
    v15 = a2;
    *(&v16 + 1) = 0;
    re::Event<re::Session>::addSubscription(a1 + 470, &v15);
    v15 = a2;
    *(&v16 + 1) = 0;
    re::Event<re::Session>::addSubscription(a1 + 492, &v15);
    v15 = a2;
    *(&v16 + 1) = 0;
    return re::Event<re::Session>::addSubscription(a1 + 514, &v15);
  }

  return result;
}

void RESyncNetSessionRemoveObserver(void *result, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!result || !a2)
  {
    return;
  }

  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(result + 257, a2);
  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(result + 246, a2);
  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(result + 235, a2);
  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(result + 224, a2);
  v4 = *(a2 + 112);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 96);
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
        v5 = *(a2 + 112);
        break;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (v4 == v5)
  {
    goto LABEL_28;
  }

  LODWORD(v8) = v5;
  do
  {
    v9 = &result[11 * *(*(a2 + 96) + 24 * v5 + 4) + 70];
    if (!v9[2])
    {
      goto LABEL_20;
    }

    v10 = 0;
    do
    {
      v11 = v9[4] + 32 * v10;
      if (*v11 != a2)
      {
        goto LABEL_16;
      }

      if (*(v9 + 20))
      {
        v25[0] = 0;
        v26 = *v11;
        v27 = *(v11 + 16);
        re::DynamicArray<re::Pair<BOOL,re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::Subscription,true>>::add((v9 + 5), v25);
LABEL_16:
        ++v10;
        continue;
      }

      re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(v9, v10);
    }

    while (v10 < v9[2]);
    LODWORD(v4) = *(a2 + 112);
LABEL_20:
    if (v4 <= v8 + 1)
    {
      v12 = (v8 + 1);
    }

    else
    {
      v12 = v4;
    }

    while (v12 - 1 != v8)
    {
      v8 = (v8 + 1);
      if ((*(*(a2 + 96) + 24 * v8) & 0x80000000) != 0)
      {
        v5 = v8;
        LODWORD(v12) = v8;
        goto LABEL_27;
      }
    }

    v5 = v12;
LABEL_27:
    LODWORD(v8) = v12;
  }

  while (v4 != v12);
LABEL_28:
  if (result[50])
  {
    v13 = 0;
    do
    {
      v14 = (result[52] + 32 * v13);
      if (*v14 == a2)
      {
        if (!*(result + 116))
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(result + 48, v13);
          continue;
        }

        v25[0] = 0;
        v15 = *v14;
        v27 = v14[1];
        v26 = v15;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((result + 53), v25);
      }

      ++v13;
    }

    while (v13 < result[50]);
  }

  if (result[39])
  {
    v16 = 0;
    do
    {
      v17 = (result[41] + 32 * v16);
      if (*v17 == a2)
      {
        if (!*(result + 94))
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(result + 37, v16);
          continue;
        }

        v25[0] = 0;
        v18 = *v17;
        v27 = v17[1];
        v26 = v18;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((result + 42), v25);
      }

      ++v16;
    }

    while (v16 < result[39]);
  }

  if (result[28])
  {
    v19 = 0;
    do
    {
      v20 = (result[30] + 32 * v19);
      if (*v20 == a2)
      {
        if (!*(result + 72))
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(result + 26, v19);
          continue;
        }

        v25[0] = 0;
        v21 = *v20;
        v27 = v20[1];
        v26 = v21;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((result + 31), v25);
      }

      ++v19;
    }

    while (v19 < result[28]);
  }

  if (result[17])
  {
    v22 = 0;
    do
    {
      v23 = (result[19] + 32 * v22);
      if (*v23 == a2)
      {
        if (!*(result + 50))
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(result + 15, v22);
          continue;
        }

        v25[0] = 0;
        v24 = *v23;
        v27 = v23[1];
        v26 = v24;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::add((result + 20), v25);
      }

      ++v22;
    }

    while (v22 < result[17]);
  }

  re::Event<re::Session,unsigned long long>::unsubscribe<re::SyncObjectManager>(result + 213, a2);
}

void *RESyncNetSessionObserverOnStart(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 24));
  result = _Block_copy(a2);
  *(a1 + 24) = result;
  return result;
}

void *RESyncNetSessionObserverOnStop(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 32));
  result = _Block_copy(a2);
  *(a1 + 32) = result;
  return result;
}

void *RESyncNetSessionObserverOnParticipantJoin(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 40));
  result = _Block_copy(a2);
  *(a1 + 40) = result;
  return result;
}

void *RESyncNetSessionObserverOnParticipantLeave(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 48));
  result = _Block_copy(a2);
  *(a1 + 48) = result;
  return result;
}

uint64_t anonymous namespace::SessionObserverProxy::setOnReceiveData(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::tryGet(a1 + 80, a3);
  if (v6)
  {
    _Block_release(*v6);
  }

  v7 = _Block_copy(a2);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v3) ^ ((0xBF58476D1CE4E5B9 * v3) >> 27));
  result = re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::findEntry<re::ChannelId>(&v11, a1 + 80, v3, v8 ^ (v8 >> 31));
  v10 = HIDWORD(v12);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    result = re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::allocEntry((a1 + 80), v12, v11);
    *(result + 4) = v3;
    *(result + 8) = v7;
    ++*(a1 + 120);
  }

  else
  {
    ++*(a1 + 120);
    *(*(a1 + 96) + 24 * v10 + 8) = v7;
  }

  return result;
}

void *RESyncNetSessionObserverOnLeaderChanged(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 56));
  result = _Block_copy(a2);
  *(a1 + 56) = result;
  return result;
}

void *RESyncNetSessionObserverOnConnectionConnected(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 64));
  result = _Block_copy(a2);
  *(a1 + 64) = result;
  return result;
}

void *RESyncNetSessionObserverOnConnectionDisconnected(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 72));
  result = _Block_copy(a2);
  *(a1 + 72) = result;
  return result;
}

void *RESyncNetSessionObserverOnPeerDidPause(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 128));
  result = _Block_copy(a2);
  *(a1 + 128) = result;
  return result;
}

void *RESyncNetSessionObserverOnPeerDidResume(uint64_t a1, const void *a2)
{
  _Block_release(*(a1 + 136));
  result = _Block_copy(a2);
  *(a1 + 136) = result;
  return result;
}

uint64_t RESyncNetSessionParticipantsCount(uint64_t result)
{
  if (result)
  {
    (*(*result + 40))(result);
    return v1;
  }

  return result;
}

uint64_t RESyncNetSessionGetParticipantAtIndex(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v3 = (*(*result + 40))(result);
    if (v4 <= a2)
    {
      re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a2, v4);
      result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v5, v6);
      __break(1u);
    }

    else
    {
      return *(v3 + 8 * a2);
    }
  }

  return result;
}

uint64_t RESyncNetSessionGetParticipantWithIdentity(void *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v6 = a2;
    v4 = (a2 + 8);
    re::Session::findParticipantWithIdentity(a1, &v6, &v7);
    v2 = v7;
    if (v7)
    {

      v7 = 0;
    }

    if (v6)
    {
    }
  }

  return v2;
}

uint64_t RESyncNetSessionGetParticipantWithPeerID(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 2296);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 2312);
  v4 = 8 * v2;
  while (1)
  {
    v5 = *v3;
    if (*(*v3 + 24) == a2)
    {
      break;
    }

    ++v3;
    v4 -= 8;
    if (!v4)
    {
      return 0;
    }
  }

  v7 = (v5 + 8);

  return v5;
}

void RESyncNetSessionDropParticipant(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      re::Transport::disconnect((result + 2320), *(a2 + 32), 1);
    }
  }
}

uint64_t (***RESyncNetSessionSetDisconnectTimeout(uint64_t (***result)(void), int a2))(void)
{
  if (result)
  {
    return re::Transport::setDisconnectTimeout((result + 290), a2);
  }

  return result;
}

uint64_t RESyncNetSessionGetIsLocalPeer(uint64_t result)
{
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

uint64_t RESyncNetSessionGetIsLocal(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 2219);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t RESyncNetSessionSetIsLocal(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 2219) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionSendData(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    return (*(*result + 64))(result, a2, a3, a4, a5, 1, 0);
  }

  return result;
}

uint64_t RESyncNetSessionSendDataUnreliableUnordered(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    return (*(*result + 64))(result, a2, a3, a4, a5, 1, 2);
  }

  return result;
}

uint64_t RESyncNetSessionIncomingUpdate(uint64_t result)
{
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t RESyncNetSessionOutgoingUpdate(uint64_t result)
{
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t RESyncNetSessionLastStatsAggregated@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v2 = result + 32 * ((*(result + 7408) - 1) & 0x7F);
    v3 = *(v2 + 3308);
    *a2 = *(v2 + 3304);
    *(a2 + 4) = v3;
    *(a2 + 8) = *(v2 + 3312);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void RESyncNetSessionAveragedStatsAggregated(re::Session *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a1)
  {
    v4 = 0uLL;
    v5 = 0;
    re::Session::averagedStatsAggregated(a1, &v4, a3);
    *a2 = v4;
    *(a2 + 16) = v5;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }
}

re *RESyncNetSessionCopyLocalAddresses(re *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 304);
  v2 = *(a1 + 302);
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 8 * v2, 0);
  v5 = v4;
  if (v2)
  {
    v6 = 0;
    v7 = (v1 + 16);
    do
    {
      if (*(v7 - 1))
      {
        v8 = *v7;
      }

      else
      {
        v8 = v7 - 7;
      }

      *(v4 + v6++) = v8;
      v7 += 4;
    }

    while (v2 != v6);
    v9 = RESyncAddressListCreate(v4, v2);
    v10 = v9;
    goto LABEL_11;
  }

  v9 = RESyncAddressListCreate(v4, 0);
  v10 = v9;
  if (v5)
  {
LABEL_11:
    v11 = re::globalAllocators(v9);
    (*(*v11[2] + 40))(v11[2], v5);
  }

  return v10;
}

uint64_t RESyncParticipantGetIdentity(uint64_t result)
{
  if (result)
  {
    return *(result + 152);
  }

  return result;
}

uint64_t RESyncParticipantGetPeerID(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t RESyncParticipantGetUserContext@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    *a2 = 0;
    v2 = *(result + 128);
    if (v2)
    {
      v3 = *(result + 144);
    }

    else
    {
      v3 = 0;
    }

    *(a2 + 8) = v3;
    *(a2 + 16) = v2;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t RESyncParticipantGetAddress(uint64_t result)
{
  if (result)
  {
    if (*(result + 48))
    {
      return *(result + 56);
    }

    else
    {
      result += 49;
    }
  }

  return result;
}

uint64_t RESyncParticipantHasForceAuthorityCapability(uint64_t result)
{
  if (result)
  {
    return (*(result + 72) >> 1) & 1;
  }

  return result;
}

BOOL RESyncParticipantHasCapability(_BOOL8 result, int a2)
{
  if (result)
  {
    return (a2 & ~*(result + 72)) == 0;
  }

  return result;
}

double RESyncNetSessionConfigurationCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 152, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v2 + 32) = 0x7B61A86B3;
  *(v2 + 48) = 0x61A800000000;
  *v2 = &unk_2873F5608;
  *(v2 + 24) = MEMORY[0x277D85CD0];
  *(v2 + 40) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 100) = 16777473;
  *&result = 500;
  *(v2 + 104) = 500;
  *(v2 + 112) = 10485760;
  *(v2 + 116) = 257;
  *(v2 + 120) = 10;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  return result;
}

uint64_t RESyncNetSessionConfigurationSetIsLeader(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

void RESyncNetSessionSetLeader(re::Session *this, uint64_t a2)
{
  if (this)
  {
    *(this + 392) = a2;
    re::Session::onLeaderChange(this, a2);
  }
}

void RESyncNetSessionConfigurationSetAllowLeaderMigration(re *a1, char a2)
{
  if (a1)
  {
    if (a2)
    {
      re::make::shared::object<re::LeaderElectionLowestPeerID>(a1, &v4);
      v3 = v4;
      RESyncNetSessionConfigurationSetLeaderElection(a1, v4);
      if (v3)
      {
      }
    }

    else
    {

      RESyncNetSessionConfigurationSetLeaderElection(a1, 0);
    }
  }
}

void RESyncNetSessionConfigurationSetLeaderElection(re *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2;
    if (a2)
    {
      v4 = (a2 + 8);
    }

    else
    {
      v5 = re::globalAllocators(a1);
      v2 = (*(*v5[2] + 32))(v5[2], 40, 8);
      *v2 = 0u;
      *(v2 + 16) = 0u;
      *(v2 + 32) = 0;
      ArcSharedObject::ArcSharedObject(v2, 0);
      *v2 = &unk_2873F4140;
    }

    v6 = *(a1 + 7);
    *(a1 + 7) = v2;
    if (v6)
    {
    }
  }
}

void RESyncNetSessionConfigurationSetLeaderElectionPolicy(re *a1, int a2)
{
  if (a1)
  {
    if (a2 == 1)
    {
      re::make::shared::object<re::LeaderElectionLowestPeerID>(a1, &v4);
      v3 = v4;
      RESyncNetSessionConfigurationSetLeaderElection(a1, v4);
      if (v3)
      {
      }
    }

    else
    {

      RESyncNetSessionConfigurationSetLeaderElection(a1, 0);
    }
  }
}

uint64_t RESyncNetSessionConfigurationSetUserContext(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(a2 + 16);
    *(result + 72) = *(a2 + 8);
    *(result + 80) = v2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetAllowTimeSync(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 97) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetAuthorityPolicy(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 96) = a2;
  }

  return result;
}

void RESyncNetSessionConfigurationSetDiscoveryView(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = (a2 + 8);
    }

    v5 = *(a1 + 88);
    *(a1 + 88) = a2;
    if (v5)
    {
    }
  }
}

uint64_t RESyncNetSessionConfigurationSetIsPrivileged(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 98) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetUnreliableSyncEnabled(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 103) = a2 ^ 1;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetUnreliableResendTimeout(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 104) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetCompressionMethod(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 116) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetSyncDeltaCompression(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 117) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetInitTimeOutMs(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 48) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetHandshakeTimeOutMs(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 52) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetMaxHelloPacketsSendCount(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (a2 <= 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = a2;
    }

    *(result + 120) = v2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetShutdownOnVersionMismatch(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 102) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetMaxUnreliablePacketSize(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 108) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetIsLocal(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 99) = a2;
  }

  return result;
}

uint64_t RESyncNetSessionConfigurationSetTransportIsThrottled(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 100) = a2;
  }

  return result;
}

void RESyncNetSessionConfigurationSetTransportIsFragmented(uint64_t a1, char a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *(a1 + 101) = a2;
  }

  else
  {
    v2 = *re::networkLogObjects(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "RESyncNetSessionConfigurationSetTransportIsFragmented";
      v5 = 2080;
      v6 = "configuration != __null";
      _os_log_error_impl(&dword_26168F000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", &v3, 0x16u);
    }
  }
}

uint64_t RESyncNetSessionPublishBandwidthEvent(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
LABEL_26:
    v17 = *re::networkLogObjects(a1);
    v12 = 16;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RESyncNetSessionPublishBandwidthEvent";
      *&buf[12] = 2080;
      *&buf[14] = "session != __null";
LABEL_30:
      _os_log_error_impl(&dword_26168F000, v17, OS_LOG_TYPE_ERROR, "%s: Invalid parameter not satisfying %s.", buf, 0x16u);
      return v12;
    }

    return v12;
  }

  if (a2)
  {
    v2 = a1;
    v3 = *(a1 + 7512);
    *(a1 + 7512) = v3 + 1;
    if (*(a1 + 7448))
    {
      v4 = 0;
      do
      {
        if ((*(*(v2 + 7464) + 32 * v4 + 24))(v2) == 1)
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v2 + 7432), v4);
        }

        else
        {
          ++v4;
        }
      }

      while (v4 < *(v2 + 7448));
      v3 = *(v2 + 7512) - 1;
    }

    *(v2 + 7512) = v3;
    if (v3)
    {
      return 1;
    }

    v5 = *(v2 + 7488);
    if (!v5)
    {
      return 1;
    }

    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = *(v2 + 7488);
      if (v8 <= v7)
      {
        break;
      }

      v9 = *(v2 + 7504) + v6;
      v10 = *(v9 + 32);
      v11 = *(v9 + 16);
      v20[0] = *v9;
      v20[1] = v11;
      v21 = v10;
      if (LOBYTE(v20[0]) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v2 + 7432, v20 + 1, buf);
        if ((buf[0] & 1) == 0)
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::add((v2 + 7432), v20 + 8);
        }
      }

      else
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::indexOf(v2 + 7432, v20 + 1, buf);
        if (buf[0] == 1)
        {
          re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt((v2 + 7432), *&buf[8]);
        }
      }

      ++v7;
      v6 += 40;
      if (v5 == v7)
      {
        return 1;
      }
    }

    v19 = 0;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(buf, 0, sizeof(buf));
    v14 = MEMORY[0x277D86220];
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = v7;
    v28 = 2048;
    v29 = v8;
    _os_log_send_and_compose_impl(v16, &v19, buf, 80, &dword_26168F000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v18);
    a1 = _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  v17 = *re::networkLogObjects(a1);
  v12 = 16;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "RESyncNetSessionPublishBandwidthEvent";
    *&buf[12] = 2080;
    *&buf[14] = "bwEvent != __null";
    goto LABEL_30;
  }

  return v12;
}

uint64_t RESyncNetSessionSetCapabilitiesIsLeader(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 3280) = *(result + 3280) & 0xFFFFFFFE | a2;
  }

  return result;
}

uint64_t anonymous namespace::SessionObserverProxy::didStart(_anonymous_namespace_::SessionObserverProxy *this, re::Session *a2)
{
  v2 = *(this + 3);
  if (v2)
  {
    (*(v2 + 16))(v2, a2);
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::didStop(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::didJoin(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, a2, *a3);
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::didLeave(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, a2, *a3);
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::didChangeLeader(_anonymous_namespace_::SessionObserverProxy *this, re::Session *a2)
{
  v2 = *(this + 7);
  if (v2)
  {
    (*(v2 + 16))(v2, a2);
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::didReceiveCustomData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::tryGet(a1 + 80, a3);
  if (v3)
  {
    (*(*v3 + 16))();
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::didConnectConnection(_anonymous_namespace_::SessionObserverProxy *this, re::Session *a2, uint64_t a3)
{
  if (*(this + 8))
  {
    re::Transport::connectionAddress(&v7, (a2 + 2320), a3);
    if (v8)
    {
      v5 = *&v9[7];
    }

    else
    {
      v5 = v9;
    }

    (*(*(this + 8) + 16))(*(this + 8), a2, v5);
    if (v7 && (v8 & 1) != 0)
    {
      (*(*v7 + 40))();
    }
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::didDisconnectConnection(_anonymous_namespace_::SessionObserverProxy *this, re::Session *a2, uint64_t a3)
{
  if (*(this + 9))
  {
    re::Transport::connectionAddress(&v7, (a2 + 2320), a3);
    if (v8)
    {
      v5 = *&v9[7];
    }

    else
    {
      v5 = v9;
    }

    (*(*(this + 9) + 16))(*(this + 9), a2, v5);
    if (v7 && (v8 & 1) != 0)
    {
      (*(*v7 + 40))();
    }
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::peerDidPause(_anonymous_namespace_::SessionObserverProxy *this, re::Session *a2)
{
  v2 = *(this + 16);
  if (v2)
  {
    (*(v2 + 16))(v2, a2);
  }

  return 0;
}

uint64_t anonymous namespace::SessionObserverProxy::peerDidResume(_anonymous_namespace_::SessionObserverProxy *this, re::Session *a2)
{
  v2 = *(this + 17);
  if (v2)
  {
    (*(v2 + 16))(v2, a2);
  }

  return 0;
}

uint64_t re::Event<re::Session>::createSubscription<anonymous namespace::SessionObserverProxy>(anonymous namespace::SessionObserverProxy *,REEventHandlerResult (anonymous namespace::SessionObserverProxy::*)(re::Session*))::{lambda(re::Session*,re::Event<re::Session>::Subscription const&)#1}::__invoke(uint64_t a1, void *a2)
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

uint64_t re::Event<re::Session,re::SessionError>::createSubscription<anonymous namespace::SessionObserverProxy>(anonymous namespace::SessionObserverProxy *,REEventHandlerResult (anonymous namespace::SessionObserverProxy::*)(re::Session*,re::SessionError))::{lambda(re::Session*,re::Event<re::Session,re::SessionError>::Subscription const&,re::SessionError&&)#1}::__invoke(uint64_t a1, void *a2, unsigned int *a3)
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

uint64_t re::Event<re::Session,re::SharedPtr<re::SessionParticipant>>::createSubscription<anonymous namespace::SessionObserverProxy>(anonymous namespace::SessionObserverProxy *,REEventHandlerResult (anonymous namespace::SessionObserverProxy::*)(re::Session*,re::SharedPtr<re::SessionParticipant>))::{lambda(re::Session*,re::Event<re::Session,re::SharedPtr<re::SessionParticipant>>::Subscription const&,re::SharedPtr<re::SessionParticipant>&&)#1}::__invoke(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = a2[1];
  v4 = a2[2];
  v6 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v7 = *a3;
  v11 = v7;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  v9 = v5(v6, a1, &v11);
  if (v11)
  {
  }

  return v9;
}

uint64_t re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::createSubscription<anonymous namespace::SessionObserverProxy>(anonymous namespace::SessionObserverProxy *,REEventHandlerResult (anonymous namespace::SessionObserverProxy::*)(re::Session*,re::SharedPtr<re::SessionParticipant>,re::ParticipantError))::{lambda(re::Session*,re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::Subscription const&,re::SharedPtr<re::SessionParticipant>&&,re::ParticipantError&&)#1}::__invoke(uint64_t a1, void *a2, uint64_t *a3, unsigned int *a4)
{
  v7 = a2[1];
  v6 = a2[2];
  v8 = (*a2 + (v6 >> 1));
  if (v6)
  {
    v7 = *(*v8 + v7);
  }

  v9 = *a3;
  v13 = v9;
  if (v9)
  {
    v10 = (v9 + 8);
  }

  v11 = v7(v8, a1, &v13, *a4);
  if (v13)
  {
  }

  return v11;
}

uint64_t re::Event<re::Session,unsigned long long>::createSubscription<anonymous namespace::SessionObserverProxy>(anonymous namespace::SessionObserverProxy *,REEventHandlerResult (anonymous namespace::SessionObserverProxy::*)(re::Session*,unsigned long long))::{lambda(re::Session*,re::Event<re::Session,unsigned long long>::Subscription const&,unsigned long long &&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::Event<re::Session,re::ChannelId,unsigned long long,void const*,unsigned int>::createSubscription<anonymous namespace::SessionObserverProxy>(anonymous namespace::SessionObserverProxy *,REEventHandlerResult (anonymous namespace::SessionObserverProxy::*)(re::Session*,re::ChannelId,unsigned long long,void const*,unsigned int))::{lambda(re::Session*,re::Event<re::Session,re::ChannelId,unsigned long long,void const*,unsigned int>::Subscription const&,re::ChannelId&&,unsigned long long &&,void const*&&,unsigned int &&)#1}::__invoke(uint64_t a1, void *a2, unsigned __int8 *a3, void *a4, void *a5, unsigned int *a6)
{
  v7 = a2[1];
  v8 = a2[2];
  v9 = (*a2 + (v8 >> 1));
  if (v8)
  {
    v7 = *(*v9 + v7);
  }

  return v7(v9, a1, *a3, *a4, *a5, *a6);
}

uint64_t re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::tryGet(uint64_t a1, uint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a2) ^ ((0xBF58476D1CE4E5B9 * a2) >> 27));
  re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::findEntry<re::ChannelId>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 24 * v6 + 8;
  }
}

uint64_t re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::findEntry<re::ChannelId>(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 24 * v6 + 4) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 24 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 24 * v8 + 4) == a3)
      {
        break;
      }

      v8 = *(v7 + 24 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 9);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    v6 = v5;
    if (v5 == *(a1 + 6))
    {
      v7 = *(a1 + 7);
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
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = a1[2];
          *&v25[16] = v13;
          a1[2] = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 3);
          v14 = *&v25[32];
          *(a1 + 3) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 8);
            do
            {
              if ((*(v17 - 1) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::allocEntry(a1, v17[1] % *(a1 + 6), v17[1]);
                *(v18 + 4) = *(v17 - 4);
                *(v18 + 8) = *v17;
              }

              v17 += 3;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v19 = a1[2];
    v20 = *(v19 + 24 * v5);
  }

  else
  {
    v19 = a1[2];
    v20 = *(v19 + 24 * v5);
    *(a1 + 9) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 24 * v5;
  *v22 = v20 | 0x80000000;
  v23 = a1[1];
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 16) = a3;
  ++*(a1 + 7);
  return v19 + 24 * v5;
}

void re::HashTable<re::ChannelId,void({block_pointer})(RESyncNetSession *,unsigned long long,void const*,unsigned int),re::Hash<re::ChannelId>,re::EqualTo<re::ChannelId>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
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
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

re::Session *re::make::shared::object<re::Session>@<X0>(re *a1@<X0>, void *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 7656, 8);
  bzero(v4, 0x1DE8uLL);
  result = re::Session::Session(v4);
  *a2 = v4;
  return result;
}

re::Session *re::Session::Session(re::Session *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  v2 = 0;
  *this = &unk_2873F5090;
  *(this + 3) = &unk_2873F5128;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  *(this + 36) = 0;
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 46) = 0;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 58) = 0;
  *(this + 28) = 0;
  *(this + 35) = 0;
  *(this + 72) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 68) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 80) = 0;
  *(this + 39) = 0;
  *(this + 46) = 0;
  *(this + 94) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 90) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 102) = 0;
  *(this + 50) = 0;
  *(this + 57) = 0;
  *(this + 116) = 0;
  *(this + 112) = 0;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 124) = 0;
  *(this + 61) = 0;
  *(this + 68) = 0;
  *(this + 138) = 0;
  *(this + 134) = 0;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  do
  {
    v3 = this + v2;
    *(v3 + 146) = 0;
    *(v3 + 72) = 0;
    *(v3 + 35) = 0uLL;
    *(v3 + 79) = 0;
    *(v3 + 160) = 0;
    *(v3 + 37) = 0uLL;
    *(v3 + 38) = 0uLL;
    v2 += 88;
    *(v3 + 156) = 0;
  }

  while (v2 != 880);
  *(this + 366) = 0;
  *(this + 182) = 0;
  *(this + 90) = 0u;
  *(this + 189) = 0;
  *(this + 380) = 0;
  *(this + 92) = 0u;
  *(this + 93) = 0u;
  *(this + 376) = 0;
  *(this + 191) = 0;
  *(this + 96) = 0u;
  *(this + 388) = 0;
  *(this + 200) = 0;
  *(this + 402) = 0;
  *(this + 398) = 0;
  *(this + 1560) = 0u;
  *(this + 1576) = 0u;
  *(this + 204) = 0;
  *(this + 410) = 0;
  *(this + 101) = 0u;
  *(this + 211) = 0;
  *(this + 424) = 0;
  *(this + 103) = 0u;
  *(this + 104) = 0u;
  *(this + 420) = 0;
  *(this + 215) = 0;
  *(this + 432) = 0;
  *(this + 1704) = 0u;
  *(this + 222) = 0;
  *(this + 446) = 0;
  *(this + 1736) = 0u;
  *(this + 1752) = 0u;
  *(this + 442) = 0;
  *(this + 226) = 0;
  *(this + 454) = 0;
  *(this + 112) = 0u;
  *(this + 233) = 0;
  *(this + 468) = 0;
  *(this + 464) = 0;
  *(this + 115) = 0u;
  *(this + 114) = 0u;
  *(this + 1880) = 0u;
  *(this + 476) = 0;
  *(this + 237) = 0;
  *(this + 244) = 0;
  *(this + 490) = 0;
  *(this + 1912) = 0u;
  *(this + 1928) = 0u;
  *(this + 486) = 0;
  *(this + 123) = 0u;
  *(this + 498) = 0;
  *(this + 248) = 0;
  *(this + 255) = 0;
  *(this + 512) = 0;
  *(this + 125) = 0u;
  *(this + 126) = 0u;
  *(this + 508) = 0;
  *(this + 520) = 0;
  *(this + 259) = 0;
  *(this + 2056) = 0u;
  *(this + 266) = 0;
  *(this + 534) = 0;
  *(this + 2088) = 0u;
  *(this + 2104) = 0u;
  *(this + 530) = 0;
  *(this + 268) = MEMORY[0x277D85CD0];
  *(this + 269) = 0x7B61A86B3;
  *(this + 270) = 0;
  *(this + 271) = 0x61A800000000;
  *(this + 272) = 0;
  *(this + 2184) = 0;
  *(this + 276) = 0;
  *(this + 554) = 0;
  *(this + 137) = 0u;
  *(this + 555) = 16777473;
  *(this + 278) = 500;
  *(this + 558) = 10485760;
  *(this + 1118) = 257;
  *(this + 560) = 10;
  *(this + 566) = 0;
  *(this + 2248) = 0u;
  *(this + 2272) = 0;
  *(this + 289) = 0;
  *(this + 576) = 0;
  *(this + 287) = 0;
  *(this + 2280) = 0u;
  re::Transport::Transport((this + 2320));
  *(this + 758) = 1;
  *(this + 190) = 0u;
  *(this + 191) = 0u;
  *(this + 768) = 0;
  *(this + 3080) = 0u;
  *(this + 3096) = 0u;
  *(this + 3108) = 0u;
  *(this + 3124) = 0x7FFFFFFFLL;
  *(this + 407) = 0;
  *(this + 816) = 0;
  *(this + 409) = 0;
  *(this + 820) = 0;
  *(this + 411) = 0;
  *(this + 196) = 0u;
  *(this + 197) = 0u;
  *(this + 792) = 0;
  *(this + 802) = 0;
  *(this + 3176) = 0u;
  *(this + 3192) = 0u;
  *(this + 812) = 0;
  *(this + 202) = 0u;
  *(this + 201) = 0u;
  *(this + 412) = 500;
  *(this + 938) = 0;
  *(this + 1878) = 0;
  *(this + 7464) = 0u;
  *(this + 7480) = 0u;
  *(this + 1874) = 0;
  *(this + 940) = 0;
  bzero(this + 3304, 0x103CuLL);
  *(this + 941) = &unk_2873F57D8;
  *(this + 942) = 0x100000000;
  *(this + 7544) = 0u;
  *(this + 7560) = 0u;
  *(this + 1894) = 0;
  *(this + 954) = 0;
  *(this + 1910) = 0;
  *(this + 474) = 0u;
  *(this + 475) = 0u;
  *(this + 7612) = 0u;
  *(this + 7648) = 0;
  return this;
}

void anonymous namespace::SessionObserverProxy::~SessionObserverProxy(_anonymous_namespace_::SessionObserverProxy *this)
{
  *this = &unk_2873F55C0;
  _Block_release(*(this + 3));
  _Block_release(*(this + 4));
  _Block_release(*(this + 5));
  _Block_release(*(this + 6));
  _Block_release(*(this + 7));
  _Block_release(*(this + 16));
  _Block_release(*(this + 17));
  v2 = *(this + 28);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 12);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        v3 = *(this + 28);
        break;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  if (v2 != v3)
  {
    LODWORD(v6) = v3;
    do
    {
      LODWORD(v7) = v6;
      _Block_release(*(*(this + 12) + 24 * v3 + 8));
      v8 = *(this + 28);
      if (v8 <= v7 + 1)
      {
        v6 = (v7 + 1);
      }

      else
      {
        v6 = v8;
      }

      while (v6 - 1 != v7)
      {
        v7 = (v7 + 1);
        if ((*(*(this + 12) + 24 * v7) & 0x80000000) != 0)
        {
          v3 = v7;
          LODWORD(v6) = v7;
          goto LABEL_16;
        }
      }

      v3 = v6;
LABEL_16:
      ;
    }

    while (v8 != v6);
  }

  _Block_release(*(this + 8));
  _Block_release(*(this + 9));
  re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 10);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{

  JUMPOUT(0x266708EC0);
}

void RESyncNetSessionConfig::~RESyncNetSessionConfig(RESyncNetSessionConfig *this)
{
  *this = &unk_2873F5608;
  v2 = *(this + 17);
  if (v2)
  {

    *(this + 17) = 0;
  }

  v3 = *(this + 16);
  if (v3)
  {

    *(this + 16) = 0;
  }

  v4 = *(this + 11);
  if (v4)
  {

    *(this + 11) = 0;
  }

  v5 = *(this + 7);
  if (v5)
  {

    *(this + 7) = 0;
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F5608;
  v2 = *(this + 17);
  if (v2)
  {

    *(this + 17) = 0;
  }

  v3 = *(this + 16);
  if (v3)
  {

    *(this + 16) = 0;
  }

  v4 = *(this + 11);
  if (v4)
  {

    *(this + 11) = 0;
  }

  v5 = *(this + 7);
  if (v5)
  {

    *(this + 7) = 0;
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

uint64_t re::SyncObjectTypedStore::SyncObjectTypedStore(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2873F5650;
  *(a1 + 8) = 0;
  *(a1 + 16) = *a2;
  *a2 = 0;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  v5 = *(a1 + 16);
  if (*(v5 + 104) && *(v5 + 120))
  {
    v6 = re::NetworkFeatureFlags::syncObjectStateHistoryBufferSize(a1);
  }

  else
  {
    v6 = 1;
  }

  *(a1 + 40) = v6;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0x7FFFFFFFLL;
  return a1;
}

void re::SyncObjectTypedStore::~SyncObjectTypedStore(re::SyncObjectTypedStore *this)
{
  *this = &unk_2873F5650;
  if (*(this + 8) == 1)
  {
    *(this + 8) = 0;
  }

  re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 11);
  re::DynamicArray<re::SharedPtr<re::SyncObject>>::deinit(this + 48);
  v2 = *(this + 2);
  if (v2)
  {

    *(this + 2) = 0;
  }
}

{
  re::SyncObjectTypedStore::~SyncObjectTypedStore(this);

  JUMPOUT(0x266708EC0);
}

_anonymous_namespace_ *re::SyncObjectTypedStore::createWithGuid@<X0>(re::SyncObjectTypedStore *this@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(this + 3);
  v7 = *(this + 4);
  v8 = *(this + 5);
  v9 = (*(*v6 + 32))(v6, 224, 8);
  v10 = re::SyncObject::SyncObject(v9, v6, a2, v7, v8);
  *a3 = v10;
  v11 = *(v10 + 3);
  v13 = *(this + 8);
  v14 = v11;
  re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 88, &v14, &v13);
  result = re::DynamicArray<re::SharedPtr<re::SyncObject>>::add((this + 48), a3);
  *(*a3 + 88) = this;
  return result;
}

uint64_t re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  *(result - 8) = v8;
  ++*(a1 + 40);
  return result;
}

unint64_t *re::SyncObjectTypedStore::findObjectWithGuid(re::SyncObjectTypedStore *this, size_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a2;
  result = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 88, &v9);
  if (result)
  {
    v4 = *result;
    v5 = *(this + 8);
    if (v5 <= *result)
    {
      v10 = 0;
      memset(v19, 0, sizeof(v19));
      v6 = MEMORY[0x277D86220];
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v11 = 136315906;
      v12 = "operator[]";
      v13 = 1024;
      if (v7)
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v14 = 797;
      v15 = 2048;
      v16 = v4;
      v17 = 2048;
      v18 = v5;
      _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_26168F000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
      _os_crash_msg();
      __break(1u);
    }

    return *(*(this + 10) + 8 * v4);
  }

  return result;
}

void re::SyncObjectTypedStore::removeObject(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  *&v25[0] = *(*a2 + 24);
  v4 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 88, v25);
  if (v4)
  {
    v5 = *(a1 + 64);
    v6 = *v4;
    if (v5 <= *v4)
    {
      v16 = 0;
      memset(v25, 0, sizeof(v25));
      v13 = MEMORY[0x277D86220];
      v17 = 136315906;
      v18 = "operator[]";
      v19 = 1024;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v20 = 789;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = v5;
      _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_26168F000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
      _os_crash_msg();
      __break(1u);
    }

    v7 = *(a1 + 80);
    v8 = v7 + 8 * v5;
    v9 = *(v8 - 8);
    *(v8 - 8) = 0;
    *(v8 - 8) = *(v7 + 8 * v6);
    *(v7 + 8 * v6) = v9;
    *&v25[0] = *(*(*(a1 + 80) + 8 * v6) + 24);
    *re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 88, v25) = v6;
    *&v25[0] = *(*a2 + 24);
    re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 88, v25);
    v10 = *(a1 + 64);
    v11 = *(a1 + 80) + 8 * v10;
    v12 = *(v11 - 8);
    if (v12)
    {

      *(v11 - 8) = 0;
      v10 = *(a1 + 64);
    }

    *(a1 + 64) = v10 - 1;
    ++*(a1 + 72);
  }
}

re::SyncObjectStore *re::SyncObjectStore::SyncObjectStore(re::SyncObjectStore *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_2873F5670;
  re::Allocator::Allocator((this + 24), "SyncObject", 1);
  *(this + 3) = &unk_2873F3D28;
  re::Allocator::Allocator((this + 48), "SyncObjectStateHistory", 1);
  *(this + 6) = &unk_2873F3D28;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 15) = 0x20000000ALL;
  *(this + 108) = 0x7FFFFFFFLL;
  *(this + 16) = 0;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 188) = 0u;
  *(this + 204) = 0x7FFFFFFFLL;
  return this;
}

void re::SyncObjectStore::~SyncObjectStore(re::SyncObjectStore *this)
{
  *this = &unk_2873F5670;
  v2 = *(this + 26);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 11);
    while (1)
    {
      v5 = *v4;
      v4 += 8;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 26);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  LODWORD(v6) = *(this + 26);
LABEL_9:
  while (v3 != v2)
  {
    re::internal::destroyPersistent<re::SyncObjectTypedStore>(*(*(this + 11) + 32 * v3 + 16));
    LODWORD(v6) = *(this + 26);
    if (v6 <= v3 + 1)
    {
      v7 = v3 + 1;
    }

    else
    {
      v7 = *(this + 26);
    }

    while (v7 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 11) + 32 * v3) & 0x80000000) != 0)
      {
        goto LABEL_9;
      }
    }

    LODWORD(v3) = v7;
  }

  if (*(this + 25))
  {
    v8 = *(this + 24);
    if (v8)
    {
      memset_pattern16(*(this + 10), &unk_261710510, 4 * v8);
      LODWORD(v6) = *(this + 26);
    }

    if (v6)
    {
      v9 = *(this + 11);
      v6 = v6;
      do
      {
        if ((*v9 & 0x80000000) != 0)
        {
          *v9 &= ~0x80000000;
        }

        v9 += 8;
        --v6;
      }

      while (v6);
    }

    *(this + 25) = 0;
    *(this + 26) = 0;
    v10 = *(this + 28) + 1;
    *(this + 27) = 0x7FFFFFFF;
    *(this + 28) = v10;
  }

  re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::clear(this + 168);
  *(this + 18) = 0;
  ++*(this + 38);
  re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::clear(this + 168);
  *(this + 18) = 0;
  ++*(this + 38);
  v11 = re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::deinit(this + 21);
  v12 = *(this + 16);
  if (v12)
  {
    if (*(this + 20))
    {
      (*(*v12 + 40))(v12, v11);
    }

    *(this + 20) = 0;
    *(this + 17) = 0;
    *(this + 18) = 0;
    *(this + 16) = 0;
    ++*(this + 38);
  }

  re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 9);
  re::Allocator::~Allocator((this + 48));
  re::Allocator::~Allocator((this + 24));
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::SyncObjectStore::~SyncObjectStore(this);

  JUMPOUT(0x266708EC0);
}

re *re::internal::destroyPersistent<re::SyncObjectTypedStore>(re *result)
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

void re::SyncObjectTombstoneInfo::update(re::SyncObjectTombstoneInfo *this)
{
  Current = CFAbsoluteTimeGetCurrent();
  v4 = *(this + 3);
  if (v4)
  {
    v5 = Current;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(this + 5);
      LODWORD(v3) = *this;
      v3 = *&v3;
      if (v5 - *(v9 + v6) < v3)
      {
        break;
      }

      v10 = v9 + v6;
      v11 = *(v10 + 8);
      if (*(this + 1) <= v11)
      {
        re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::remove(this + 48, (v10 + 16));
        ++v8;
        v4 = *(this + 3);
      }

      else
      {
        *(v10 + 8) = v11 + 1;
      }

      ++v7;
      v6 += 40;
    }

    while (v7 < v4);
    if (v8)
    {

      re::DynamicArray<re::SyncObjectTombstoneInfo::LogEntry>::removeManyStableAt(this + 1, 0, v8);
    }
  }
}

void re::SyncObjectStore::addType(re::SyncObjectStore *this, const re::SyncObjectTypeInfo *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*(a2 + 4) ^ (*(a2 + 4) >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*(a2 + 4) ^ (*(a2 + 4) >> 30))) >> 27));
  v5 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 72, a2 + 4, v4 ^ (v4 >> 31), buf);
  if (v18[0] == 0x7FFFFFFF)
  {
    v6 = re::globalAllocators(v5);
    v7 = (*(*v6[2] + 32))(v6[2], 144, 8);
    v8 = re::SyncObjectTypeInfo::SyncObjectTypeInfo(v7, a2);
    v9 = re::globalAllocators(v8);
    v10 = (*(*v9[2] + 32))(v9[2], 136, 8);
    v16 = v7;
    if (v7)
    {
      v11 = (v7 + 8);
    }

    re::SyncObjectTypedStore::SyncObjectTypedStore(v10, &v16, this + 24, this + 48);
    *buf = v10;
    v12 = re::HashTable<unsigned long long,re::SyncObjectTypedStore *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(this + 72, (v7 + 32), buf);
    if (v16)
    {
    }

    v13 = *re::networkLogObjects(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      if (*(v7 + 48))
      {
        v14 = *(v7 + 56);
      }

      else
      {
        v14 = v7 + 49;
      }

      v15 = *(v7 + 32);
      *buf = 136380931;
      *&buf[4] = v14;
      LOWORD(v18[0]) = 2048;
      *(v18 + 2) = v15;
      _os_log_impl(&dword_26168F000, v13, OS_LOG_TYPE_INFO, "Registered sync object type %{private}s:%llu", buf, 0x16u);
      goto LABEL_13;
    }

    if (v7)
    {
LABEL_13:
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::SyncObjectTypedStore *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(uint64_t a1, void *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::SyncObjectTypedStore *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
    v8 = *a3;
    *(result + 8) = *a2;
    *(result + 16) = v8;
    ++*(a1 + 40);
  }

  return result;
}

void re::SyncObjectStore::addType(re::SyncObjectStore *this, re::SyncObjectTypeInfo *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = (a2 + 32);
    v5 = 0xBF58476D1CE4E5B9 * (*(a2 + 4) ^ (*(a2 + 4) >> 30));
    re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 72, a2 + 4, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), buf);
    if (v15[0] == 0x7FFFFFFF)
    {
      v6 = re::globalAllocators(a2 + 8);
      v7 = (*(*v6[2] + 32))(v6[2], 136, 8);
      v13 = a2;
      v8 = a2 + 8;
      re::SyncObjectTypedStore::SyncObjectTypedStore(v7, &v13, this + 24, this + 48);
      *buf = v7;
      v9 = re::HashTable<unsigned long long,re::SyncObjectTypedStore *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(this + 72, v4, buf);
      if (v13)
      {
      }

      v10 = *re::networkLogObjects(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        if (*(a2 + 48))
        {
          v11 = *(a2 + 7);
        }

        else
        {
          v11 = a2 + 49;
        }

        v12 = *v4;
        *buf = 136380931;
        *&buf[4] = v11;
        LOWORD(v15[0]) = 2048;
        *(v15 + 2) = v12;
        _os_log_impl(&dword_26168F000, v10, OS_LOG_TYPE_INFO, "Registered sync object type %{private}s:%llu", buf, 0x16u);
      }
    }
  }
}

_anonymous_namespace_ *re::SyncObjectStore::create@<X0>(re::SyncObjectStore *this@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2;
  v4 = *re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this + 72, &v6);
  uuid_generate_random(out);
  return re::SyncObjectTypedStore::createWithGuid(v4, (*&out[8] + (*out << 6) + (*out >> 2) - 0x61C8864680B583E9) ^ *out, a3);
}

uint64_t *re::SyncObjectStore::createIncomingObject@<X0>(uint64_t *__return_ptr a1@<X8>, re::SyncObjectStore *this@<X0>, const re::SyncOwnershipInfo *a3@<X3>, uint64_t a4@<X1>, uint64_t a5@<X2>)
{
  v13 = a4;
  v8 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this + 72, &v13);
  re::SyncObjectTypedStore::createWithGuid(*v8, a5, a1);
  v9 = *a1;
  v10 = *(a3 + 8);
  v11 = *(a3 + 1);
  *(v9 + 136) = *a3;
  *(v9 + 168) = v10;
  *(v9 + 152) = v11;
  return re::SyncObject::addState(v9, 0, *(a3 + 3));
}

uint64_t *re::SyncObjectStore::findObject@<X0>(uint64_t *__return_ptr a1@<X8>, re::SyncObjectStore *this@<X0>, uint64_t a3@<X1>, size_t a4@<X2>)
{
  v7 = a3;
  result = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 72, &v7);
  if (result)
  {
    result = re::SyncObjectTypedStore::findObjectWithGuid(*result, a4);
    *a1 = result;
    if (result)
    {
      return result + 1;
    }
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

void re::SyncObjectStore::removeObject(uint64_t a1, uint64_t *a2)
{
  v13 = *(*(*(*a2 + 88) + 16) + 32);
  v4 = *re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 72, &v13);
  v5 = *a2;
  v12 = v5;
  if (v5)
  {
    v6 = (v5 + 8);
    re::SyncObjectTypedStore::removeObject(v4, &v12);
  }

  else
  {
    re::SyncObjectTypedStore::removeObject(v4, &v12);
  }

  v7 = *(*a2 + 24);
  v8 = *(*a2 + 80);
  v10 = *(*(*(*a2 + 88) + 16) + 32);
  v11 = v7;
  if (v8)
  {
    v8 = *(v8 + 24);
  }

  v9 = v8;
  re::SyncObjectTombstoneInfo::addEntry((a1 + 120), &v11, &v10, &v9);
}

void re::SyncObjectTombstoneInfo::addEntry(re::SyncObjectTombstoneInfo *this, const unint64_t *a2, const unint64_t *a3, const unint64_t *a4)
{
  v5 = *a2;
  v6 = *a3;
  v7 = *a4;
  v8 = ((*a2 << 6) + (*a2 >> 2) + *a3 - 0x61C8864680B583E9) ^ *a2;
  v9 = *(this + 18);
  if (v9)
  {
    v10 = v8 % v9;
    v11 = *(*(this + 7) + 4 * (v8 % v9));
    if (v11 != 0x7FFFFFFF)
    {
      v12 = *(this + 8);
      v13 = v12 + 40 * v11;
      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      v16 = v15 == v5 && v14 == v6;
      if (v16)
      {
        goto LABEL_21;
      }

      while (1)
      {
        LODWORD(v11) = *(v12 + 40 * v11 + 8) & 0x7FFFFFFF;
        if (v11 == 0x7FFFFFFF)
        {
          break;
        }

        v17 = v12 + 40 * v11;
        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        if (v19 == v5 && v18 == v6)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  v21 = *(this + 21);
  if (v21 == 0x7FFFFFFF)
  {
    v21 = *(this + 20);
    v22 = v21;
    if (v21 == v9)
    {
      re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::setCapacity(this + 6, (2 * *(this + 19)));
      LODWORD(v10) = v8 % *(this + 18);
      v22 = *(this + 20);
    }

    *(this + 20) = v22 + 1;
    v23 = *(this + 8);
    v24 = *(v23 + 40 * v21 + 8);
  }

  else
  {
    v23 = *(this + 8);
    v24 = *(v23 + 40 * v21 + 8);
    *(this + 21) = v24 & 0x7FFFFFFF;
  }

  *(v23 + 40 * v21 + 8) = v24 | 0x80000000;
  v25 = *(this + 7);
  *(*(this + 8) + 40 * v21 + 8) = *(*(this + 8) + 40 * v21 + 8) & 0x80000000 | *(v25 + 4 * v10);
  *(*(this + 8) + 40 * v21) = v8;
  v26 = (*(this + 8) + 40 * v21);
  v26[2] = v5;
  v26[3] = v6;
  v26[4] = v7;
  *(v25 + 4 * v10) = v21;
  ++*(this + 19);
  ++*(this + 22);
LABEL_21:
  Current = CFAbsoluteTimeGetCurrent();
  v29 = *(this + 2);
  v30 = *(this + 3);
  if (v30 >= v29)
  {
    v31 = v30 + 1;
    if (v29 < v30 + 1)
    {
      if (*(this + 1))
      {
        v32 = 2 * v29;
        v16 = v29 == 0;
        v33 = 8;
        if (!v16)
        {
          v33 = v32;
        }

        if (v33 <= v31)
        {
          v34 = v31;
        }

        else
        {
          v34 = v33;
        }

        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity(this + 1, v34);
      }

      else
      {
        re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity(this + 1, v31);
        ++*(this + 8);
      }
    }

    v30 = *(this + 3);
  }

  v35 = *(this + 5) + 40 * v30;
  *v35 = Current;
  *(v35 + 8) = 0;
  *(v35 + 16) = v5;
  *(v35 + 24) = v6;
  *(v35 + 32) = v7;
  ++*(this + 3);
  ++*(this + 8);
}

void *re::SyncObjectStore::types@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v4 = *(this + 25);
  if (v4)
  {
    this = re::DynamicArray<re::Allocator const*>::setCapacity(a2, v4);
  }

  v5 = *(v2 + 26);
  if (v5)
  {
    v6 = 0;
    v7 = v2[11];
    while (1)
    {
      v8 = *v7;
      v7 += 8;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(v2 + 26);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

LABEL_16:
  while (v6 != v5)
  {
    this = re::DynamicArray<re::Allocator const*>::add(a2, (v2[11] + 32 * v6 + 16));
    v9 = *(v2 + 26);
    if (v9 <= v6 + 1)
    {
      v9 = v6 + 1;
    }

    while (v9 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(v2[11] + 32 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v9;
  }

  return this;
}

void re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_261710510, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = *(a1 + 16);
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 40;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v7 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v7;
  }
}

BOOL re::SyncObjectTombstoneInfo::contains(re::SyncObjectTombstoneInfo *this, const unint64_t *a2, const unint64_t *a3)
{
  v3 = *(this + 18);
  if (!v3)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *a3;
  v6 = *(*(this + 7) + 4 * (((*a3 + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2) % v3));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(this + 8);
  v9 = v8 + 40 * v6;
  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  if (v11 == v4 && v10 == v5)
  {
    return 1;
  }

  do
  {
    LODWORD(v6) = *(v8 + 40 * v6 + 8) & 0x7FFFFFFF;
    result = v6 != 0x7FFFFFFF;
    if (v6 == 0x7FFFFFFF)
    {
      break;
    }

    v13 = v8 + 40 * v6;
    v15 = *(v13 + 16);
    v14 = *(v13 + 24);
  }

  while (v15 != v4 || v14 != v5);
  return result;
}

uint64_t re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::remove(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = ((v4 + (*a2 << 6) + (*a2 >> 2) - 0x61C8864680B583E9) ^ *a2) % v2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v10 = v9 + 40 * v7;
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  if (v12 != v3 || v11 != v4)
  {
    while (1)
    {
      v14 = v7;
      LODWORD(v7) = *(v9 + 40 * v7 + 8) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        return 0;
      }

      v15 = v9 + 40 * v7;
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      if (v17 == v3 && v16 == v4)
      {
        *(v9 + 40 * v14 + 8) = *(v9 + 40 * v14 + 8) & 0x80000000 | *(v9 + 40 * v7 + 8) & 0x7FFFFFFF;
        goto LABEL_16;
      }
    }
  }

  *(v6 + 4 * v5) = *(v9 + 40 * v7 + 8) & 0x7FFFFFFF;
LABEL_16:
  v19 = *(a1 + 16);
  v20 = v19 + 40 * v7;
  v23 = *(v20 + 8);
  v22 = (v20 + 8);
  v21 = v23;
  if (v23 < 0)
  {
    *v22 = v21 & 0x7FFFFFFF;
    v19 = *(a1 + 16);
    v21 = *(v19 + 40 * v7 + 8);
  }

  v24 = *(a1 + 40);
  *(v19 + 40 * v7 + 8) = *(a1 + 36) | v21 & 0x80000000;
  --*(a1 + 28);
  *(a1 + 36) = v7;
  *(a1 + 40) = v24 + 1;
  return 1;
}

void *re::DynamicArray<re::SyncObjectTombstoneInfo::LogEntry>::removeManyStableAt(void *result, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = result;
    v5 = a2 + a3 - 1;
    v6 = result[2];
    if (v5 >= v6)
    {
      v13 = 0;
      memset(v22, 0, sizeof(v22));
      v10 = MEMORY[0x277D86220];
      v14 = 136315906;
      v15 = "removeManyStableAt";
      v16 = 1024;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v17 = 986;
      v18 = 2048;
      v19 = v5;
      v20 = 2048;
      v21 = v6;
      _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_26168F000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
      _os_crash_msg();
      __break(1u);
    }

    if (v5 < v6 - 1)
    {
      v7 = result[4];
      result = (v7 + 40 * a2);
      v8 = &result[5 * a3];
      v9 = (v7 + 40 * v6);
      if (v9 != v8)
      {
        result = memmove(result, v8, v9 - v8);
        v6 = v4[2];
      }
    }

    v4[2] = v6 - a3;
    ++*(v4 + 6);
  }

  return result;
}

double re::HashSetBase<re::SyncObjectTombstone,re::SyncObjectTombstone,re::internal::ValueAsKey<re::SyncObjectTombstone>,re::Hash<re::SyncObjectTombstone>,re::EqualTo<re::SyncObjectTombstone>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = a1[2];
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 40;
        --v3;
      }

      while (v3);
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

uint64_t re::HashTable<unsigned long long,re::SyncObjectTypedStore *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::SyncObjectTypedStore *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24), v17[1]);
                v19 = *v17;
                *(v18 + 8) = *(v17 - 1);
                *(v18 + 16) = v19;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
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