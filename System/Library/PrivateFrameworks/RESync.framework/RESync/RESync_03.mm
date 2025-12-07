_anonymous_namespace_ *re::DynamicArray<re::internal::SyncSnapshotEntry>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::internal::SyncSnapshotEntry>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 24 * v4;
  v6 = *a2;
  *v5 = *a2;
  if (v6)
  {
    this = (v6 + 8);
  }

  v7 = a2[1];
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 8) = v7;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

void *re::SharedAppSyncManager::session@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[51];
  *a2 = v2;
  if (v2)
  {
    return (v2 + 8);
  }

  return this;
}

void re::SharedAppSyncManager::requestOwnership(re *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *re::networkLogObjects(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(*a2 + 24);
    v5 = 134217984;
    v6 = v4;
    _os_log_error_impl(&dword_26168F000, v3, OS_LOG_TYPE_ERROR, "[Ownership] Requesting ownership when using Shared App Sync (guid: %llu)", &v5, 0xCu);
  }
}

double re::SharedAppSyncManager::adjustTimeForSender(re::SharedAppSyncManager *this, double a2, uint64_t a3)
{
  Peer = re::SharedAppSyncManager::findPeer(this, a3);
  if (Peer)
  {
    v6 = *(Peer + 112);
    if (v6)
    {
      re::Transport::connectionStats(&v9, (*(this + 51) + 2320), *(v6 + 32));
      if (v9 == 1)
      {
        LODWORD(v7) = HIDWORD(v9);
        return a2 + v7 / 1000.0 * 0.5;
      }
    }
  }

  return a2;
}

uint64_t re::SharedAppSyncManager::pausePeer(re::SharedAppSyncManager *this, uint64_t a2)
{
  result = re::SharedAppSyncManager::findPeer(this, a2);
  if (result)
  {
    if (*(result + 112))
    {
      *(result + 162) = 1;
    }
  }

  return result;
}

uint64_t re::SharedAppSyncManager::resumePeer(re::SharedAppSyncManager *this, uint64_t a2)
{
  result = re::SharedAppSyncManager::findPeer(this, a2);
  if (result)
  {
    if (*(result + 112))
    {
      *(result + 162) = 0;
    }
  }

  return result;
}

void re::SharedAppSyncManager::PeerState::~PeerState(re::SharedAppSyncManager::PeerState *this)
{
  *this = &unk_2873F4848;
  re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(this + 256);
  re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 21);
  objc_destroyWeak(this + 19);
  *(this + 19) = 0;
  v2 = *(this + 16);
  if (v2)
  {

    *(this + 16) = 0;
  }

  objc_destroyWeak(this + 15);
  *(this + 15) = 0;
  v3 = *(this + 14);
  if (v3)
  {

    *(this + 14) = 0;
  }

  *this = &unk_2873F5B80;
  re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 8);

  re::SyncViewer::~SyncViewer(this);
}

{
  *this = &unk_2873F4848;
  re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(this + 256);
  re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 21);
  objc_destroyWeak(this + 19);
  *(this + 19) = 0;
  v2 = *(this + 16);
  if (v2)
  {

    *(this + 16) = 0;
  }

  objc_destroyWeak(this + 15);
  *(this + 15) = 0;
  v3 = *(this + 14);
  if (v3)
  {

    *(this + 14) = 0;
  }

  *this = &unk_2873F5B80;
  re::HashTable<re::SharedPtr<re::SyncObject>,re::internal::SyncSnapshotEvents,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 8);
  re::SyncViewer::~SyncViewer(this);

  JUMPOUT(0x266708EC0);
}

void re::internal::Callable<re::SharedAppSyncManager::reevaluateAllViewers(void)::$_0,void ()(re::SyncView *)>::operator()(uint64_t result, re::SyncView **a2)
{
  v2 = *(result + 8);
  v3 = v2[59];
  if (v3)
  {
    v4 = *a2;
    v5 = v2[61];
    v6 = &v5[v3];
    do
    {
      v7 = *v5;
      if (*(*v5 + 7) == *(v4 + 24))
      {
        v8 = *(v4 + 104);
        if (v8)
        {
          v9 = 8 * v8;
          v10 = *(v4 + 120);
          while (*v10 != v7)
          {
            ++v10;
            v9 -= 8;
            if (!v9)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          v10 = *(v4 + 120);
        }

        if (v10 != (*(v4 + 120) + 8 * v8))
        {
          goto LABEL_31;
        }
      }

      else
      {
        v11 = v2[63];
        if (!v11)
        {
          v16 = *(v4 + 104);
          if (v16)
          {
            v17 = 8 * v16;
            v18 = *(v4 + 120);
            while (*v18 != v7)
            {
              ++v18;
              v17 -= 8;
              if (!v17)
              {
                goto LABEL_31;
              }
            }
          }

          else
          {
            v18 = *(v4 + 120);
          }

          if (v18 == (*(v4 + 120) + 8 * v16))
          {
            goto LABEL_31;
          }

LABEL_30:
          re::SyncView::removeViewer(v4, v7);
          goto LABEL_31;
        }

        v12 = (*(v11 + 16))(v11, v2);
        v7 = *v5;
        v13 = *(v4 + 104);
        if (v13)
        {
          v14 = 8 * v13;
          v15 = *(v4 + 120);
          while (*v15 != v7)
          {
            ++v15;
            v14 -= 8;
            if (!v14)
            {
              if (v12)
              {
                goto LABEL_27;
              }

              goto LABEL_31;
            }
          }
        }

        else
        {
          v15 = *(v4 + 120);
        }

        if (v12 == (v15 != (*(v4 + 120) + 8 * v13)))
        {
          goto LABEL_31;
        }

        if (!v12)
        {
          goto LABEL_30;
        }
      }

LABEL_27:
      re::SyncView::addViewer(v4, v7);
LABEL_31:
      ++v5;
    }

    while (v5 != v6);
  }
}

void *re::internal::Callable<re::SharedAppSyncManager::reevaluateAllViewers(void)::$_0,void ()(re::SyncView *)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2873F4948;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::SharedAppSyncManager::reevaluateAllViewers(void)::$_0,void ()(re::SyncView *)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2873F4948;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::SharedAppSyncManager::onViewAdded(re::SyncViewManager *,re::SyncView *)::$_0,void ()(re::SyncViewer *)>::operator()(uint64_t a1, re::SyncViewer **a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  if (re::SharedAppSyncManager::findPeer(v4, *(*a2 + 7)))
  {
    v5 = *(v3 + 7);
    v6 = *(a1 + 16);
    if (v5 != *(v6 + 24) && v5 != *(v6 + 32))
    {
      v7 = *(v4 + 63);
      if (!v7 || !(*(v7 + 16))(v7, v4))
      {
        return;
      }

      v6 = *(a1 + 16);
    }

    re::SyncView::addViewer(v6, v3);
  }
}

uint64_t re::internal::Callable<re::SharedAppSyncManager::onViewAdded(re::SyncViewManager *,re::SyncView *)::$_0,void ()(re::SyncViewer *)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F49A0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::SharedAppSyncManager::onViewAdded(re::SyncViewManager *,re::SyncView *)::$_0,void ()(re::SyncViewer *)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F49A0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void re::internal::Callable<re::SharedAppSyncManager::addPeerStateForParticipant(re::SharedPtr<re::SessionParticipant>)::$_0,void ()(re::SyncView *)>::operator()(uint64_t a1, re::SyncView **a2)
{
  v2 = *a2;
  v3 = **(a1 + 16);
  if (*(v3 + 7) != *(v2 + 24))
  {
    if (!(*(*(*(a1 + 8) + 504) + 16))())
    {
      return;
    }

    v3 = **(a1 + 16);
  }

  re::SyncView::addViewer(v2, v3);
}

uint64_t re::internal::Callable<re::SharedAppSyncManager::addPeerStateForParticipant(re::SharedPtr<re::SessionParticipant>)::$_0,void ()(re::SyncView *)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F49F8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::SharedAppSyncManager::addPeerStateForParticipant(re::SharedPtr<re::SessionParticipant>)::$_0,void ()(re::SyncView *)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873F49F8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

BOOL re::SyncObjectViewer::isViewChangePending(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v4 = (a2 + 8);
  }

  if (*(a1 + 64) && (v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27)), v6 = *(*(a1 + 72) + 4 * ((v5 ^ (v5 >> 31)) % *(a1 + 88))), v6 != 0x7FFFFFFF))
  {
    v9 = *(a1 + 80);
    v10 = 0x7FFFFFFFLL;
    while (*(v9 + 32 * v6 + 8) != a2)
    {
      v6 = *(v9 + 32 * v6) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        goto LABEL_13;
      }
    }

    v10 = v6;
LABEL_13:
    v7 = v10 != 0x7FFFFFFF;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a2)
    {
LABEL_6:
    }
  }

  return v7;
}

uint64_t re::Event<re::Session>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::Session*))::{lambda(re::Session*,re::Event<re::Session>::Subscription const&)#1}::__invoke(uint64_t a1, void *a2)
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

uint64_t re::Event<re::Session,re::SessionError>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::Session*,re::SessionError))::{lambda(re::Session*,re::Event<re::Session,re::SessionError>::Subscription const&,re::SessionError&&)#1}::__invoke(uint64_t a1, void *a2, unsigned int *a3)
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

uint64_t re::Event<re::Session,re::SharedPtr<re::SessionParticipant>>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::Session*,re::SharedPtr<re::SessionParticipant>))::{lambda(re::Session*,re::Event<re::Session,re::SharedPtr<re::SessionParticipant>>::Subscription const&,re::SharedPtr<re::SessionParticipant>&&)#1}::__invoke(uint64_t a1, void *a2, uint64_t *a3)
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

uint64_t re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::Session*,re::SharedPtr<re::SessionParticipant>,re::ParticipantError))::{lambda(re::Session*,re::Event<re::Session,re::SharedPtr<re::SessionParticipant>,re::ParticipantError>::Subscription const&,re::SharedPtr<re::SessionParticipant>&&,re::ParticipantError&&)#1}::__invoke(uint64_t a1, void *a2, uint64_t *a3, unsigned int *a4)
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

uint64_t re::Event<re::Session,unsigned long long>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::Session*,unsigned long long))::{lambda(re::Session*,re::Event<re::Session,unsigned long long>::Subscription const&,unsigned long long &&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::Event<re::PacketStatsFilter,re::CongestionEventData const&>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::PacketStatsFilter*,re::CongestionEventData const&))::{lambda(re::PacketStatsFilter*,re::Event<re::PacketStatsFilter,re::CongestionEventData const&>::Subscription const&,re::CongestionEventData const&)#1}::__invoke(uint64_t a1, void *a2)
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

uint64_t re::Event<re::SyncViewManager,re::SyncView *>::createSubscription<re::SharedAppSyncManager>(re::SharedAppSyncManager *,REEventHandlerResult (re::SharedAppSyncManager::*)(re::SyncViewManager*,re::SyncView *))::{lambda(re::SyncViewManager*,re::Event<re::SyncViewManager,re::SyncView *>::Subscription const&,re::SyncView *&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

void *re::DynamicArray<std::unique_ptr<re::SharedAppSyncManager::PeerState,re::SyncDeleter<re::SharedAppSyncManager::PeerState>>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<std::unique_ptr<re::SharedAppSyncManager::PeerState,re::SyncDeleter<re::SharedAppSyncManager::PeerState>>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 8 * v9;
        v11 = v7;
        v12 = v5[4];
        do
        {
          v13 = *v8;
          *v12 = 0;
          v12 = (v12 + 8);
          *v11++ = v13;
          std::unique_ptr<re::SharedAppSyncManager::PeerState,re::SyncDeleter<re::SharedAppSyncManager::PeerState>>::~unique_ptr[abi:nn200100](v8);
          v8 = v12;
          v10 -= 8;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void addToViewRecursive(re::SyncObject **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(v4 + 8) != *(v4 + 9))
  {
    LatestState = re::SyncObject::getLatestState(v4);
    if ((!LatestState || *(LatestState + 88) != a3) && (*(*a1 + 128) & 4) == 0)
    {
      re::SyncSnapshot::addToView((a2 + 32), a1);
    }

    v8 = *(*a1 + 25);
    if (v8)
    {
      v9 = *(*a1 + 27);
      v10 = 8 * v8;
      do
      {
        v11 = *v9;
        v13 = v11;
        if (v11)
        {
          v12 = (v11 + 8);
        }

        addToViewRecursive(&v13, a2, a3);
        if (v13)
        {
        }

        ++v9;
        v10 -= 8;
      }

      while (v10);
    }
  }
}

_anonymous_namespace_ *re::DynamicArray<re::internal::SyncSnapshotEntry>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::internal::SyncSnapshotEntry>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::internal::SyncSnapshotEntry>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

double RESyncDiscoveryViewObserverCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 80, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_2873F4AB8;
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  return result;
}

void *RESyncDiscoveryViewObserverOnCreate(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 24) = result;
  return result;
}

void *RESyncDiscoveryViewObserverOnDestroy(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 32) = result;
  return result;
}

void *RESyncDiscoveryViewObserverOnGetIdentitiesCount(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 40) = result;
  return result;
}

void *RESyncDiscoveryViewObserverOnGetIdentityAtIndex(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 48) = result;
  return result;
}

void *RESyncDiscoveryViewObserverOnGetAuthData(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 56) = result;
  return result;
}

void *RESyncDiscoveryViewObserverOnRequestIdentity(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 64) = result;
  return result;
}

void *RESyncDiscoveryViewObserverOnCreateProtocolLayer(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 72) = result;
  return result;
}

double RESyncDiscoveryIdentityObserverCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 64, 8);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *v2 = &unk_2873F4B00;
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0;
  return result;
}

void *RESyncDiscoveryIdentityObserverOnCreate(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 24) = result;
  return result;
}

void *RESyncDiscoveryIdentityObserverOnDestroy(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 32) = result;
  return result;
}

void *RESyncDiscoveryIdentityObserverOnGetDisplayName(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 40) = result;
  return result;
}

void *RESyncDiscoveryIdentityObserverOnGetAddress(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 48) = result;
  return result;
}

void *RESyncDiscoveryIdentityObserverOnIsLocal(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 56) = result;
  return result;
}

uint64_t RESyncDiscoveryViewCreateWithAddresses(const char **a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v27[5] = *MEMORY[0x277D85DE8];
  if (!a1 && a2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid addresses.", "addresses != nullptr || addressesCount == 0", "RESyncDiscoveryViewCreateWithAddresses", 359);
    _os_crash("assertion failure: (addresses != nullptr || addressesCount == 0) Invalid addresses.");
    __break(1u);
LABEL_30:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid protocol provided.", "protocolLayer != nullptr", "RESyncDiscoveryViewCreateWithAddresses", 360);
    _os_crash("assertion failure: (protocolLayer != nullptr) Invalid protocol provided.");
    __break(1u);
  }

  if (!a3)
  {
    goto LABEL_30;
  }

  v26 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v25 = 0;
  if (a2)
  {
    do
    {
      v6 = *v5;
      if (*v5)
      {
        v7 = re::DynamicString::DynamicString(v21, &v19);
        v8 = v24;
        if (v24 >= v23)
        {
          v9 = v24 + 1;
          if (v23 < v24 + 1)
          {
            if (v22)
            {
              if (v23)
              {
                v10 = 2 * v23;
              }

              else
              {
                v10 = 8;
              }

              if (v10 <= v9)
              {
                v11 = v24 + 1;
              }

              else
              {
                v11 = v10;
              }

              re::DynamicArray<re::Address>::setCapacity(&v22, v11);
            }

            else
            {
              re::DynamicArray<re::Address>::setCapacity(&v22, v9);
              ++v25;
            }
          }

          v8 = v24;
        }

        re::DynamicString::DynamicString((v26 + 32 * v8), v21);
        ++v24;
        ++v25;
        if (*&v21[0])
        {
          if (BYTE8(v21[0]))
          {
            (*(**&v21[0] + 40))();
          }

          memset(v21, 0, sizeof(v21));
        }

        a1 = v19;
        if (v19 && (v20 & 1) != 0)
        {
          a1 = (*(*v19 + 40))();
        }
      }

      ++v5;
      --v4;
    }

    while (v4);
  }

  v12 = (a3 + 8);
  v13 = v26;
  v14 = v24;
  v15 = re::globalAllocators((a3 + 8))[2];
  v27[0] = &unk_2873F4A50;
  v27[1] = a3;
  v27[3] = v15;
  v27[4] = v27;
  re::DebugDiscoveryView::createWithAddresses(v13, v14, v27, v21);
  re::FunctionBase<24ul,re::SharedPtr<re::ProtocolLayer> ()(void)>::destroyCallable(v27);
  v16 = *&v21[0];
  v17 = (*&v21[0] + 8);
  if (v16)
  {
  }

  re::DynamicArray<re::DynamicString>::deinit(&v22);
  return v16;
}

uint64_t RESyncDiscoveryViewAddAddress(_anonymous_namespace_ *a1, const char *a2)
{
  re::DynamicString::DynamicString(v7, &v5);
  re::DebugDiscoveryView::addIdentityWithAddress(a1, v7);
  if (*&v7[0])
  {
    if (BYTE8(v7[0]))
    {
      (*(**&v7[0] + 40))();
    }

    memset(v7, 0, sizeof(v7));
  }

  result = v5;
  if (v5)
  {
    if (v6)
    {
      return (*(*v5 + 40))();
    }
  }

  return result;
}

uint64_t RESyncDiscoveryViewRemoveAddress(_anonymous_namespace_ *a1, const char *a2)
{
  re::DynamicString::DynamicString(v7, &v5);
  re::DebugDiscoveryView::removeIdentityWithAddress(a1, v7);
  if (*&v7[0])
  {
    if (BYTE8(v7[0]))
    {
      (*(**&v7[0] + 40))();
    }

    memset(v7, 0, sizeof(v7));
  }

  result = v5;
  if (v5)
  {
    if (v6)
    {
      return (*(*v5 + 40))();
    }
  }

  return result;
}

uint64_t RESyncDiscoveryViewGetIdentityAtIndex(uint64_t a1, unint64_t a2)
{
  if ((*(*a1 + 48))(a1) <= a2)
  {
    return 0;
  }

  (*(*a1 + 56))(&v6, a1, a2);
  v4 = v6;
  if (v6)
  {
  }

  return v4;
}

uint64_t RESyncDiscoveryViewGetIdentityWithAddress(uint64_t a1, const char *a2)
{
  v4 = (*(*a1 + 48))(a1);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      while (1)
      {
        (*(*a1 + 56))(&v17, a1, v6);
        if (v17)
        {
          break;
        }

LABEL_14:
        if (++v6 == v5)
        {
          return 0;
        }
      }

      (*(*v17 + 40))(&v14);
      v7 = v15 & 1;
      if (v15)
      {
        v8 = *&v16[7];
      }

      else
      {
        v8 = v16;
      }

      v9 = strcmp(v8, a2);
      if (v14)
      {
        v10 = v7 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        (*(*v14 + 40))();
      }

      v11 = v17;
      if (v17)
      {

        if (!v9)
        {
          return v11;
        }

        goto LABEL_14;
      }

      ++v6;
      if (v9)
      {
        v12 = v6 == v5;
      }

      else
      {
        v12 = 1;
      }
    }

    while (!v12);
  }

  return 0;
}

void RESyncDiscoveryViewNotifyJoin(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 32))(a1);
  if (a2)
  {
    v5 = (a2 + 8);
  }

  re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::raise(v4, a1);
  if (a2)
  {
  }
}

void re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::raise(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = *(result + 20);
  *(result + 20) = v3 + 1;
  if (*(result + 2))
  {
    v5 = 0;
    do
    {
      if ((*(*(result + 4) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(result, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(result + 2));
    v3 = *(result + 20) - 1;
  }

  *(result + 20) = v3;
  if (!v3)
  {

    re::Event<re::SyncViewManager,re::SyncView *>::doDeferredActions(result);
  }
}

void RESyncDiscoveryViewNotifyLeave(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 40))(a1);
  if (a2)
  {
    v5 = (a2 + 8);
  }

  re::Event<re::DiscoveryView,re::SharedPtr<re::DiscoveryIdentity>>::raise(v4, a1);
  if (a2)
  {
  }
}

uint64_t RESyncDiscoveryViewCreateWithObserver(char *a1)
{
  v1 = a1;
  if (a1)
  {
    a1 = a1 + 8;
  }

  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 208, 8);
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = v1;
  *v3 = &unk_2873F4B48;
  v4 = v1 + 8;
  v5 = *(v3 + 24);
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 96) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  *(v3 + 184) = 0;
  *(v3 + 168) = 0u;
  *(v3 + 152) = 0u;
  v6 = *(v5 + 24);
  if (v6)
  {
    v6 = v6[2]();
  }

  v7 = re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((v3 + 32), 0);
  ++*(v3 + 56);
  re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::setCapacity((v3 + 120), 0);
  ++*(v3 + 144);

  v8 = (v3 + 8);
  return v3;
}

void *RESyncIdentityCreateWithObserver(char *a1)
{
  v1 = a1;
  if (a1)
  {
    a1 = a1 + 8;
  }

  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 32, 8);
  ArcSharedObject::ArcSharedObject(v3, 0);
  v3[3] = v1;
  *v3 = &unk_2873F4BD0;
  v4 = v1 + 8;
  v5 = *(v3[3] + 24);
  if (v5)
  {
    (*(v5 + 16))();
  }

  v6 = v3 + 1;
  return v3;
}

size_t RESyncIdentityGetAddress(uint64_t a1, char *a2, size_t a3)
{
  (*(*a1 + 40))(&v11);
  v5 = v12;
  if (v12)
  {
    v6 = *&v13[7];
  }

  else
  {
    v6 = v13;
  }

  v7 = strlen(v6);
  v8 = v7;
  if (a2 && v7 < a3)
  {
    strcpy(a2, v6);
  }

  if (v11)
  {
    v9 = (v5 & 1) == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    (*(*v11 + 40))();
  }

  return v8;
}

void *re::internal::Callable<RESyncDiscoveryViewCreateWithAddresses::$_0,re::SharedPtr<re::ProtocolLayer> ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F4A50;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  return a1;
}

void re::internal::Callable<RESyncDiscoveryViewCreateWithAddresses::$_0,re::SharedPtr<re::ProtocolLayer> ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_2873F4A50;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  JUMPOUT(0x266708EC0);
}

void *re::internal::Callable<RESyncDiscoveryViewCreateWithAddresses::$_0,re::SharedPtr<re::ProtocolLayer> ()(void)>::operator()@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = v2;
  if (v2)
  {
    return (v2 + 8);
  }

  return result;
}

void *re::internal::Callable<RESyncDiscoveryViewCreateWithAddresses::$_0,re::SharedPtr<re::ProtocolLayer> ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = &unk_2873F4A50;
  a2[1] = v3;
  if (v3)
  {
    v4 = (v3 + 8);
  }

  return a2;
}

void *re::internal::Callable<RESyncDiscoveryViewCreateWithAddresses::$_0,re::SharedPtr<re::ProtocolLayer> ()(void)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2873F4A50;
  a2[1] = v2;
  *(a1 + 8) = 0;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,re::SharedPtr<re::ProtocolLayer> ()(void)>::destroyCallable(uint64_t a1))(void)
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

void anonymous namespace::DiscoveryViewObserver::~DiscoveryViewObserver(_anonymous_namespace_::DiscoveryViewObserver *this)
{
  *this = &unk_2873F4AB8;
  v2 = *(this + 3);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = *(this + 8);
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = *(this + 9);
  if (v8)
  {
    _Block_release(v8);
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{

  JUMPOUT(0x266708EC0);
}

void anonymous namespace::DiscoveryIdentityObserver::~DiscoveryIdentityObserver(_anonymous_namespace_::DiscoveryIdentityObserver *this)
{
  *this = &unk_2873F4B00;
  v2 = *(this + 3);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    _Block_release(v6);
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{

  JUMPOUT(0x266708EC0);
}

void *re::DynamicArray<re::Address>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Address>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 32 * v9;
        v11 = v7;
        do
        {
          re::DynamicString::DynamicString(v11, v8);
          re::DynamicString::deinit(v8);
          v8 = (v8 + 32);
          v11 = (v11 + 32);
          v10 -= 32;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void anonymous namespace::DiscoveryViewProxy::~DiscoveryViewProxy(_anonymous_namespace_::DiscoveryViewProxy *this)
{
  v2 = *(*(this + 3) + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  if (*(this + 15))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 120);
  }

  if (*(this + 4))
  {
    re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 32);
  }

  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(this + 15);
  re::Event<re::SyncSession,re::SharedPtr<re::SyncObject> const&,unsigned long long>::~Event(this + 4);
  v3 = *(this + 3);
  if (v3)
  {

    *(this + 3) = 0;
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{

  JUMPOUT(0x266708EC0);
}

char *anonymous namespace::DiscoveryViewProxy::identityAtIndex@<X0>(_anonymous_namespace_::DiscoveryViewProxy *this@<X0>, void *a2@<X8>)
{
  result = (*(*(*(this + 3) + 48) + 16))();
  *a2 = result;
  if (result)
  {
    v4 = result + 8;

    return v4;
  }

  return result;
}

uint64_t anonymous namespace::DiscoveryViewProxy::authData(_anonymous_namespace_::DiscoveryViewProxy *this)
{
  v3 = 0;
  v4 = 0;
  v2 = 0;
  (*(*(*(this + 3) + 56) + 16))(&v2);
  return v3;
}

uint64_t anonymous namespace::DiscoveryViewProxy::requestIdentity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = 0;
  v7[1] = a3;
  v7[2] = a4;
  v4 = *(*(a1 + 24) + 64);
  if (*(a2 + 8))
  {
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = a2 + 9;
  }

  return (*(v4 + 16))(v4, v5, v7);
}

uint64_t anonymous namespace::DiscoveryViewProxy::createProtocolLayer@<X0>(_anonymous_namespace_::DiscoveryViewProxy *this@<X0>, void *a2@<X8>)
{
  result = (*(*(*(this + 3) + 72) + 16))();
  *a2 = result;
  return result;
}

void anonymous namespace::DiscoveryIdentityProxy::~DiscoveryIdentityProxy(_anonymous_namespace_::DiscoveryIdentityProxy *this)
{
  v2 = *(this + 3);
  v3 = *(v2 + 32);
  if (!v3 || ((*(v3 + 16))(), (v2 = *(this + 3)) != 0))
  {

    *(this + 3) = 0;
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{

  JUMPOUT(0x266708EC0);
}

uint64_t anonymous namespace::DiscoveryIdentityProxy::address@<X0>(_anonymous_namespace_::DiscoveryIdentityProxy *this@<X0>, re::DynamicString *a2@<X8>)
{
  v3 = (*(*(*(this + 3) + 48) + 16))();
  re::DynamicString::DynamicString(a2, &v5);
  result = v5;
  if (v5)
  {
    if (v6)
    {
      return (*(*v5 + 40))();
    }
  }

  return result;
}

re::RoutingTable *re::RoutingTable::RoutingTable(re::RoutingTable *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_2873F4C60;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 92) = 0u;
  *(this + 108) = 0x7FFFFFFFLL;
  *(this + 15) = 0;
  uuid_generate_random(v4);
  *(this + 3) = (v4[1] + (v4[0] << 6) + (v4[0] >> 2) - 0x61C8864680B583E9) ^ v4[0];
  return this;
}

unint64_t *re::RoutingTable::getRoute@<X0>(re::RoutingTable *this@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v12 = a2;
  result = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 72, &v12);
  if (result)
  {
    v6 = *result;
    v7 = *(this + 6);
    if (v7 <= *result)
    {
      v13 = 0;
      memset(v22, 0, sizeof(v22));
      v9 = MEMORY[0x277D86220];
      v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v14 = 136315906;
      v15 = "operator[]";
      v16 = 1024;
      if (v10)
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      v17 = 789;
      v18 = 2048;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_26168F000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
      _os_crash_msg();
      __break(1u);
    }

    v8 = *(this + 8) + 40 * v6;
    *(v8 + 32) = *(this + 15);
    *a3 = 1;
    *(a3 + 8) = *(v8 + 8);
    *(a3 + 24) = *(v8 + 24);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 16;
  }
}

unint64_t *re::RoutingTable::addRoute(uint64_t a1, size_t a2, __int128 *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v25 = a2;
  result = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 72, &v25);
  if (result)
  {
    v6 = *result;
    v7 = *(a1 + 48);
    if (v7 <= *result)
    {
      v26 = 0;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      v22 = MEMORY[0x277D86220];
      v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      *v27 = 136315906;
      *&v27[4] = "operator[]";
      *&v27[12] = 1024;
      if (v23)
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      *&v27[14] = 789;
      *&v27[18] = 2048;
      v28 = v6;
      v29 = 2048;
      v30 = v7;
      _os_log_send_and_compose_impl(v24, &v26, &v31, 80, &dword_26168F000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v27, 38, v25);
      _os_crash_msg();
      __break(1u);
    }

    v8 = *(a1 + 64) + 40 * v6;
    if (*(a3 + 4) < *(v8 + 24))
    {
      v9 = *a3;
      *(v8 + 24) = *(a3 + 4);
      *(v8 + 8) = v9;
    }
  }

  else
  {
    v10 = v25;
    *v27 = *a3;
    *&v27[16] = *(a3 + 4);
    v11 = *(a1 + 120);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    if (v13 >= v12)
    {
      v14 = v13 + 1;
      if (v12 < v13 + 1)
      {
        if (*(a1 + 32))
        {
          v15 = 2 * v12;
          v16 = v12 == 0;
          v17 = 8;
          if (!v16)
          {
            v17 = v15;
          }

          if (v17 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v17;
          }

          re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity((a1 + 32), v18);
        }

        else
        {
          re::DynamicArray<re::Pair<BOOL,re::Event<re::Session>::Subscription,true>>::setCapacity((a1 + 32), v14);
          ++*(a1 + 56);
        }
      }

      v13 = *(a1 + 48);
    }

    v19 = *(a1 + 64) + 40 * v13;
    *v19 = v10;
    *(v19 + 8) = *v27;
    *(v19 + 24) = *&v27[16];
    *(v19 + 32) = v11;
    v20 = *(a1 + 48);
    *(a1 + 48) = v20 + 1;
    ++*(a1 + 56);
    v31 = 0uLL;
    *&v32 = 0;
    v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v25 ^ (v25 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v25 ^ (v25 >> 30))) >> 27));
    result = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1 + 72, &v25, v21 ^ (v21 >> 31), &v31);
    if (HIDWORD(v31) == 0x7FFFFFFF)
    {
      result = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1 + 72, DWORD2(v31), v31);
      result[1] = v25;
      result[2] = v20;
      ++*(a1 + 112);
    }
  }

  return result;
}

unint64_t *re::RoutingTable::removeRouteForPeerID(re::RoutingTable *this, uint64_t a2)
{
  v4 = a2;
  result = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 72, &v4);
  if (result)
  {
    return re::RoutingTable::removeEntryAtIndex(this, *result);
  }

  return result;
}

BOOL re::RoutingTable::removeEntryAtIndex(re::RoutingTable *this, unint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = *(this + 6);
  if (v3 <= a2)
  {
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v14 = MEMORY[0x277D86220];
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v3;
    _os_log_send_and_compose_impl(v15, &v21, &v30, 80, &dword_26168F000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19, v20);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v21 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
    v16 = MEMORY[0x277D86220];
    v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v22 = 136315906;
    v23 = "operator[]";
    v24 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v25 = 789;
    v26 = 2048;
    v27 = a2;
    v28 = 2048;
    v29 = v3;
    _os_log_send_and_compose_impl(v18, &v21, &v30, 80, &dword_26168F000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v19, v20);
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(this + 8);
  v6 = (v5 + 40 * a2);
  v7 = v5 + 40 * v3;
  v8 = *v6;
  v9 = v6[1];
  v10 = *(v6 + 4);
  v11 = *(v7 - 8);
  v12 = *(v7 - 24);
  *v6 = *(v7 - 40);
  v6[1] = v12;
  *(v6 + 4) = v11;
  *(v7 - 8) = v10;
  *(v7 - 24) = v9;
  *(v7 - 40) = v8;
  v3 = *(this + 6);
  if (v3 <= a2)
  {
    goto LABEL_8;
  }

  *re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this + 72, (*(this + 8) + 40 * a2)) = a2;
  result = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 72, (*(this + 8) + 40 * *(this + 6) - 40));
  --*(this + 6);
  ++*(this + 14);
  return result;
}

BOOL re::RoutingTable::removeRoutesForTransport(_BOOL8 this, re::Transport *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(this + 48);
  if (v2)
  {
    v4 = this;
    v5 = v2 - 1;
    v6 = 40 * v2 - 32;
    do
    {
      v7 = *(v4 + 6);
      if (v7 <= v5)
      {
        v11 = 0;
        memset(v20, 0, sizeof(v20));
        v8 = MEMORY[0x277D86220];
        v12 = 136315906;
        v13 = "operator[]";
        v14 = 1024;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v9 = 3;
        }

        else
        {
          v9 = 2;
        }

        v15 = 789;
        v16 = 2048;
        v17 = v5;
        v18 = 2048;
        v19 = v7;
        _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_26168F000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
        _os_crash_msg();
        __break(1u);
      }

      if (*(*(v4 + 8) + v6) == a2)
      {
        this = re::RoutingTable::removeEntryAtIndex(v4, v5);
      }

      --v5;
      v6 -= 40;
    }

    while (v5 != -1);
  }

  return this;
}

BOOL re::RoutingTable::removeRoutesForConnection(_BOOL8 this, re::Transport *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(this + 48);
  if (v3)
  {
    v6 = this;
    v7 = v3 - 1;
    v8 = 40 * v3;
    do
    {
      v9 = *(v6 + 6);
      if (v9 <= v7)
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

        v18 = 789;
        v19 = 2048;
        v20 = v7;
        v21 = 2048;
        v22 = v9;
        _os_log_send_and_compose_impl(v12, &v14, v23, 80, &dword_26168F000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v15, 38, v13);
        _os_crash_msg();
        __break(1u);
      }

      v10 = *(v6 + 8) + v8;
      if (*(v10 - 32) == a2 && *(v10 - 24) == a3)
      {
        this = re::RoutingTable::removeEntryAtIndex(v6, v7);
      }

      --v7;
      v8 -= 40;
    }

    while (v7 != -1);
  }

  return this;
}

uint64_t re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  return *(a1 + 16) + 32 * v6 + 16;
}

BOOL re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(a1, v5);
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep re::RoutingTable::update(re::RoutingTable *this)
{
  v21 = *MEMORY[0x277D85DE8];
  result = std::chrono::steady_clock::now().__d_.__rep_;
  *(this + 15) = result / 1000000000;
  v3 = *(this + 6);
  if (v3 >= 0x200)
  {
    v4 = v3 - 1;
    v5 = 40 * v3;
    do
    {
      v6 = *(this + 6);
      if (v6 <= v4)
      {
        v11 = 0;
        memset(v20, 0, sizeof(v20));
        v8 = MEMORY[0x277D86220];
        v12 = 136315906;
        v13 = "operator[]";
        v14 = 1024;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v9 = 3;
        }

        else
        {
          v9 = 2;
        }

        v15 = 789;
        v16 = 2048;
        v17 = v4;
        v18 = 2048;
        v19 = v6;
        _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_26168F000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
        _os_crash_msg();
        __break(1u);
      }

      v7 = *(this + 8) + v5;
      if (*(v7 - 16) >= 2u && *(this + 15) - *(v7 - 8) >= 0x258uLL)
      {
        result = re::RoutingTable::removeEntryAtIndex(this, v4);
      }

      --v4;
      v5 -= 40;
    }

    while (v4 != -1);
  }

  return result;
}

void re::RoutingTable::~RoutingTable(re::RoutingTable *this)
{
  *this = &unk_2873F4C60;
  v2 = this + 32;
  re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 9);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v2);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F4C60;
  v2 = this + 32;
  re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 9);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v2);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

void re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_1, 4 * v10);
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

uint64_t re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 32 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 32 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 32 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 32 * v8) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,void *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24), *(v7 + v5 + 24));
        v7 = *(a2 + 16);
        *(result + 8) = *(v7 + v5 + 8);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

BOOL re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v3 = a2[4];
    v4 = *(a1 + 16);
    v5 = *(v4 + 32 * v2) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v5;
      v6 = a2[3];
      v7 = a2[3];
    }

    else
    {
      *(v4 + 32 * v3) = *(v4 + 32 * v3) & 0x80000000 | v5;
      v6 = v2;
      v7 = v2;
    }

    v8 = *(a1 + 40);
    *(v4 + 32 * v6) = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v7;
    *(a1 + 40) = v8 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

void re::NetworkClockDefault::~NetworkClockDefault(re::NetworkClockDefault *this)
{
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

void re::DynamicPacketBitWriter::~DynamicPacketBitWriter(re::DynamicPacketBitWriter *this)
{
  if (*(this + 6))
  {
    (*(**(this + 5) + 24))(*(this + 5));
    *(this + 6) = 0;
  }
}

{
  if (*(this + 6))
  {
    (*(**(this + 5) + 24))(*(this + 5));
    *(this + 6) = 0;
  }

  JUMPOUT(0x266708EC0);
}

void **re::DynamicPacketBitWriter::grow(void **this, uint64_t a2)
{
  v2 = a2;
  v3 = this;
  if (a2 <= 0x10000)
  {
    a2 = 0x10000;
  }

  else
  {
    a2 = a2;
  }

  v4 = this[6];
  if (!v4 || ((v5 = *(this + 4), v6 = v5 + v2, 2 * v5 <= v6) ? (a2 = v6) : (a2 = (2 * v5)), a2 > v4[7]))
  {
    this = (*(*this[5] + 16))(this[5], a2);
    if (this)
    {
      v7 = this;
      this = memmove(this[2], v3[1], *(v3 + 4));
      if (v3[6])
      {
        this = (*(*v3[5] + 24))(v3[5]);
      }

      v3[6] = v7;
      v3[1] = v7[2];
      *(v3 + 4) = *(v7 + 7);
    }

    else
    {
      *(v3 + 20) = 1;
    }
  }

  return this;
}

re::SyncObjectTypeInfo *RESyncSyncableTypeInfoCreate(re *a1)
{
  v1 = re::globalAllocators(a1);
  v2 = (*(*v1[2] + 32))(v1[2], 144, 8);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;

  return re::SyncObjectTypeInfo::SyncObjectTypeInfo(v2);
}

uint64_t RESyncSyncableTypeInfoSetTypeId(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoGetTypeId(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

_anonymous_namespace_ *RESyncSyncableTypeInfoSetDebugName(_anonymous_namespace_ *result, const char *a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      re::DynamicString::operator=((v3 + 40), &v4);
      result = v4;
      if (v4)
      {
        if (v5)
        {
          return (*(*v4 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoGetDebugName(uint64_t result)
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

uint64_t RESyncSyncableTypeInfoSetSupportsNetworkSync(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoSupportsNetworkSync(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t RESyncSyncableTypeInfoSetSupportsOwnershipTransfer(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 73) = a2;
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoSupportsOwnershipTransfer(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 73);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t RESyncSyncableTypeInfoSetSupportsViews(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 74) = a2;
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoSupportsViews(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 74);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t RESyncSyncableTypeInfoGetReadSnapshotCb(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoSetReadSnapshotCb(uint64_t result, void *a2)
{
  if (result)
  {
    return re::SyncObjectTypeInfo::setReadSnapshotCb(result, a2);
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoGetWriteSnapshotCb(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoSetWriteSnapshotCb(uint64_t result, void *a2)
{
  if (result)
  {
    return re::SyncObjectTypeInfo::setWriteSnapshotCb(result, a2);
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoGetReadPayloadCb(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoSetReadPayloadCb(uint64_t result, void *a2)
{
  if (result)
  {
    return re::SyncObjectTypeInfo::setReadPayloadCb(result, a2);
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoGetReadPayloadDeltaCb(uint64_t result)
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoSetReadPayloadDeltaCb(uint64_t result, void *a2)
{
  if (result)
  {
    return re::SyncObjectTypeInfo::setReadPayloadDeltaCb(result, a2);
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoGetWritePayloadCb(uint64_t result)
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoSetWritePayloadCb(uint64_t result, void *a2)
{
  if (result)
  {
    return re::SyncObjectTypeInfo::setWritePayloadCb(result, a2);
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoGetWritePayloadDeltaCb(uint64_t result)
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoSetWritePayloadDeltaCb(uint64_t result, void *a2)
{
  if (result)
  {
    return re::SyncObjectTypeInfo::setWritePayloadDeltaCb(result, a2);
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoSetShouldPackCb(uint64_t result, void *a2)
{
  if (result)
  {
    return re::SyncObjectTypeInfo::setShouldPackCb(result, a2);
  }

  return result;
}

uint64_t RESyncSyncableTypeInfoSetShouldUnpackCb(uint64_t result, void *a2)
{
  if (result)
  {
    return re::SyncObjectTypeInfo::setShouldUnpackCb(result, a2);
  }

  return result;
}

void *RESyncCongestionCreateBandwidthEventDataNoAlloc(void *result, unint64_t a2)
{
  if (!result || a2 < 0x18)
  {
    return 0;
  }

  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t RESyncCongestionBandwidthEventDataSetTotalAvailableBitsPerSecond(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 8) = 1;
  }

  v2 = 0;
  *(a1 + 16) = a2;
  return v2;
}

uint64_t re::NWProtocolLayer::NWProtocolLayer(uint64_t a1, uint64_t a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = 0;
  *a1 = &unk_2873F4D50;
  *(a1 + 32) = *a2;
  re::DynamicString::DynamicString((a1 + 40), (a2 + 8));
  v4 = *(a2 + 40);
  *(a1 + 88) = *(a2 + 56);
  *(a1 + 72) = v4;
  *(a1 + 96) = 10;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v5 = objc_alloc_init(NWProtocolDelegate);
  *(a1 + 120) = v5;
  *(a1 + 128) = 0;
  *(a1 + 136) = re::NWProtocolFramer::definition(v5);
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0x7FFFFFFFLL;
  *(a1 + 216) = 0;
  *(*(a1 + 120) + 8) = a1;
  return a1;
}

void re::NWProtocolLayer::~NWProtocolLayer(re::NWProtocolLayer *this)
{
  *this = &unk_2873F4D50;
  if (*(this + 3))
  {
    re::NWProtocolLayer::deinit(this);
  }

  re::HashSetBase<re::SharedPtr<re::SyncView>,re::SharedPtr<re::SyncView>,re::internal::ValueAsKey<re::SharedPtr<re::SyncView>>,re::Hash<re::SharedPtr<re::SyncView>>,re::EqualTo<re::SharedPtr<re::SyncView>>,true,false>::deinit(this + 21);
  v2 = *(this + 20);
  *(this + 20) = 0;

  re::DynamicString::deinit((this + 40));
  v3 = *(this + 3);
  if (v3)
  {

    *(this + 3) = 0;
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::NWProtocolLayer::~NWProtocolLayer(this);

  JUMPOUT(0x266708EC0);
}

void re::NWProtocolLayer::assertNetworkQueue(re::NWProtocolLayer *this)
{
  v1 = this;
  dispatch_assert_queue_V2(v1);
}

uint64_t re::NWProtocolLayer::init(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  v6 = *(a1 + 24);
  *(a1 + 24) = v4;
  if (v6)
  {
  }

  objc_storeStrong((a1 + 160), *a2);
  v7 = MEMORY[0x2667096A0]();
  v8 = *(a1 + 152);
  *(a1 + 152) = v7;

  nw_parameters_set_reuse_local_address(*(a1 + 152), 1);
  nw_parameters_set_no_delay();
  v9 = nw_parameters_copy_default_protocol_stack(*(a1 + 152));
  v10 = MEMORY[0x266709720]();
  v11 = v10;
  if (*(a1 + 96))
  {
    MEMORY[0x266709730](v10, 1);
    MEMORY[0x266709750](v11, *(a1 + 96));
    MEMORY[0x266709740](v11, 4);
    MEMORY[0x266709760](v11, 5);
  }

  else
  {
    MEMORY[0x266709730](v10, 0);
  }

  nw_protocol_stack_set_transport_protocol(v9, v11);
  options = nw_framer_create_options(*(a1 + 136));
  nw_protocol_stack_prepend_application_protocol(v9, options);

  v13 = MEMORY[0x2667096A0]();
  v14 = *(a1 + 144);
  *(a1 + 144) = v13;

  v15 = 1;
  nw_parameters_set_reuse_local_address(*(a1 + 144), 1);
  nw_parameters_set_no_delay();
  v16 = nw_parameters_copy_default_protocol_stack(*(a1 + 144));
  v17 = nw_framer_create_options(*(a1 + 136));
  nw_protocol_stack_prepend_application_protocol(v16, v17);

  v18 = nw_context_create();
  nw_context_set_isolate_protocol_stack();
  nw_context_set_scheduling_mode();
  nw_parameters_set_context();

  if (*(a1 + 32) == 1)
  {
    v19 = [[NWListener alloc] initWithLayer:a1];
    v20 = *(a1 + 128);
    *(a1 + 128) = v19;

    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_get_global_queue(21, 0);
    v23 = dispatch_queue_create_with_target_V2("re-nw-protocol-listener", v21, v22);
    v24 = *(a1 + 128);
    v25 = *(v24 + 8);
    *(v24 + 8) = v23;

    objc_storeStrong((*(a1 + 128) + 16), *(a1 + 160));
    v26 = MEMORY[0x266709680](*(a1 + 152));
    v27 = v26;
    v28 = *(a1 + 48);
    v29 = v28 >> 1;
    if ((v28 & 1) == 0)
    {
      v29 = v28 >> 1;
    }

    if (v29)
    {
      host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
      nw_parameters_set_local_endpoint(v27, host_with_numeric_port);
    }

    v31 = *(a1 + 72);
    v32 = *re::networkLogObjects(v26);
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);
    if (v31)
    {
      if (v33)
      {
        v34 = *(a1 + 48);
        v35 = v34 >> 1;
        if ((v34 & 1) == 0)
        {
          v35 = v34 >> 1;
        }

        if (v35)
        {
          if (v34)
          {
            v36 = *(a1 + 56);
          }

          else
          {
            v36 = (a1 + 49);
          }
        }

        else
        {
          v36 = "any";
        }

        v40 = *(a1 + 72);
        *buf = 136315394;
        v49 = v36;
        v50 = 1024;
        v51 = v40;
        _os_log_impl(&dword_26168F000, v32, OS_LOG_TYPE_INFO, "NWListener.init address=%s port=%d", buf, 0x12u);
      }

      snprintf(buf, 0x10uLL, "%d", *(a1 + 72));
      v41 = *(a1 + 128);
      v42 = nw_listener_create_with_port(buf, v27);
    }

    else
    {
      if (v33)
      {
        v37 = *(a1 + 48);
        v38 = v37 >> 1;
        if ((v37 & 1) == 0)
        {
          v38 = v37 >> 1;
        }

        if (v38)
        {
          if (v37)
          {
            v39 = *(a1 + 56);
          }

          else
          {
            v39 = (a1 + 49);
          }
        }

        else
        {
          v39 = "any";
        }

        *buf = 136315138;
        v49 = v39;
        _os_log_impl(&dword_26168F000, v32, OS_LOG_TYPE_INFO, "NWListener.init address=%s port=any", buf, 0xCu);
      }

      v41 = *(a1 + 128);
      v42 = nw_listener_create(v27);
    }

    v43 = v42;
    [v41 setListener:v42];

    [*(a1 + 128) waitForReady];
    v44 = *(*(a1 + 128) + 40);

    if (v44 == 2)
    {
      return 1;
    }

    else
    {
      v46 = *re::networkLogObjects(v45);
      v15 = 0;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26168F000, v46, OS_LOG_TYPE_DEFAULT, "Unable to initialize listener", buf, 2u);
        return 0;
      }
    }
  }

  return v15;
}

void re::NWProtocolLayer::deinit(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 54);
  while (this[49]._os_unfair_lock_opaque)
  {
    os_unfair_lock_opaque = this[50]._os_unfair_lock_opaque;
    v3 = *&this[46]._os_unfair_lock_opaque;
    if (os_unfair_lock_opaque)
    {
      v4 = 0;
      v5 = (v3 + 8);
      while (1)
      {
        v6 = *v5;
        v5 += 6;
        if (v6 < 0)
        {
          break;
        }

        if (os_unfair_lock_opaque == ++v4)
        {
          LODWORD(v4) = this[50];
          break;
        }
      }

      v7 = v4;
    }

    else
    {
      v7 = 0;
    }

    re::NWProtocolLayer::removeConnection(this, *(v3 + 24 * v7 + 16), 1);
  }

  v8 = *&this[32]._os_unfair_lock_opaque;
  if (v8)
  {
    [v8 stopListening];
    v9 = *&this[32]._os_unfair_lock_opaque;
    v9[6] = 0;
    *&this[32]._os_unfair_lock_opaque = 0;
  }

  *(*&this[30]._os_unfair_lock_opaque + 8) = 0;
  v10 = *&this[6]._os_unfair_lock_opaque;
  if (v10)
  {

    *&this[6]._os_unfair_lock_opaque = 0;
  }

  os_unfair_lock_unlock(this + 54);
}

void re::NWProtocolLayer::removeConnection(uint64_t a1, unint64_t a2, int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  re::NWProtocolLayer::assertNetworkQueue(*(a1 + 160));
  v7 = *re::networkLogObjects(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v26 = 134217984;
    v27 = a2;
    _os_log_debug_impl(&dword_26168F000, v7, OS_LOG_TYPE_DEBUG, "NWProtocolLayer.removeConnection %p", &v26, 0xCu);
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a2)
  {
LABEL_3:
    v8 = (a2 + 8);
  }

LABEL_4:
  v9 = *(a2 + 1768);
  if (v9)
  {
    nw_connection_set_state_changed_handler(v9, 0);
    if (*(a2 + 1776) != 5)
    {
      v11 = *re::networkLogObjects(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v26 = 134217984;
        v27 = a2;
        _os_log_debug_impl(&dword_26168F000, v11, OS_LOG_TYPE_DEBUG, "NWProtocolLayer.cancelling %p", &v26, 0xCu);
      }

      v12 = *(a2 + 1768);
      if (a3)
      {
        nw_connection_force_cancel(v12);
      }

      else
      {
        nw_connection_cancel(v12);
      }
    }
  }

  v13 = *(a1 + 192);
  if (!v13 || (v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27)), v15 = (v14 ^ (v14 >> 31)) % v13, v16 = *(a1 + 176), v17 = *(v16 + 4 * v15), v17 == 0x7FFFFFFF))
  {
    re::NWProtocolHandle::reset(a2);
LABEL_24:

    return;
  }

  v18 = *(a1 + 184);
  if (*(v18 + 24 * v17 + 16) == a2)
  {
    *(v16 + 4 * v15) = *(v18 + 24 * v17 + 8) & 0x7FFFFFFF;
LABEL_19:
    v21 = *(a1 + 184) + 24 * v17;
    v22 = *(v21 + 8);
    if (v22 < 0)
    {
      *(v21 + 8) = v22 & 0x7FFFFFFF;
      v23 = *(v21 + 16);
      if (v23)
      {

        *(v21 + 16) = 0;
      }
    }

    v24 = *(a1 + 184) + 24 * v17;
    *(v24 + 8) = *(v24 + 8) & 0x80000000 | *(a1 + 204);
    --*(a1 + 196);
    v25 = *(a1 + 208) + 1;
    *(a1 + 204) = v17;
    *(a1 + 208) = v25;
  }

  else
  {
    while (1)
    {
      v19 = v17;
      v20 = *(v18 + 24 * v17 + 8);
      v17 = v20 & 0x7FFFFFFF;
      if ((v20 & 0x7FFFFFFF) == 0x7FFFFFFF)
      {
        break;
      }

      if (*(v18 + 24 * v17 + 16) == a2)
      {
        *(v18 + 24 * v19 + 8) = *(v18 + 24 * v19 + 8) & 0x80000000 | *(v18 + 24 * v17 + 8) & 0x7FFFFFFF;
        goto LABEL_19;
      }
    }
  }

  re::NWProtocolHandle::reset(a2);
  if (a2)
  {
    goto LABEL_24;
  }
}

void re::NWProtocolLayer::open(nw_parameters_t *this@<X0>, const re::Address *a2@<X1>, void *a3@<X8>)
{
  v29[4] = *MEMORY[0x277D85DE8];
  IPPortPair = re::Address::getIPPortPair(&v28, a2);
  if (v28 != 1)
  {
    if (*(a2 + 8))
    {
      v13 = *(a2 + 2);
      if (strncmp(v13, "fd://", 5uLL))
      {
LABEL_16:
        v12 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      v13 = a2 + 9;
      if (*(a2 + 9) != 792355942 || *(a2 + 13) != 47)
      {
        goto LABEL_16;
      }
    }

    v25 = 0;
    v15 = strtol(v13 + 5, &v25, 10);
    v16 = v15;
    if (v15 < 1)
    {
      goto LABEL_24;
    }

    v17 = *(a2 + 1);
    v18 = *(a2 + 2);
    if ((v17 & 1) == 0)
    {
      v18 = a2 + 9;
    }

    v19 = v17 >> 1;
    v20 = v17 >> 1;
    if (*(a2 + 1))
    {
      v20 = v19;
    }

    if (v25 != &v18[v20])
    {
      goto LABEL_24;
    }

    v21 = *re::networkLogObjects(v15);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *&buf.sa_len = 67109120;
      *&buf.sa_data[2] = v16;
      _os_log_impl(&dword_26168F000, v21, OS_LOG_TYPE_INFO, "NWProtocolLayer.openConnection file-descriptor=%d", &buf.sa_len, 8u);
    }

    *&buf.sa_len = 0;
    *&buf.sa_data[6] = 0;
    v26 = 16;
    getsockname(v16, &buf, &v26);
    v22 = nw_connection_create_with_connected_socket_and_parameters();
    if (v22)
    {
      v23 = v22;
      re::NWProtocolLayer::addConnection(&buf.sa_len, this, v22);
      v12 = *&buf.sa_len;

      if (v12)
      {

        v24 = (v12 + 8);
      }
    }

    else
    {
LABEL_24:
      v12 = 0;
    }

    goto LABEL_25;
  }

  v7 = *re::networkLogObjects(IPPortPair);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (*(a2 + 1))
    {
      v9 = *(a2 + 2);
    }

    else
    {
      v9 = a2 + 9;
    }

    *&buf.sa_len = 136315138;
    *&buf.sa_data[2] = v9;
    _os_log_impl(&dword_26168F000, v8, OS_LOG_TYPE_INFO, "NWProtocolLayer.open address=%s", &buf.sa_len, 0xCu);
  }

  re::IP::generateString(&buf, v29);
  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port();
  if (*&buf.sa_len && (buf.sa_data[6] & 1) != 0)
  {
    (*(**&buf.sa_len + 40))();
  }

  v11 = nw_connection_create(host_with_numeric_port, this[19]);
  re::NWProtocolLayer::addConnection(&buf.sa_len, this, v11);
  v12 = *&buf.sa_len;

LABEL_25:
  if (v12)
  {
    re::DynamicString::operator=((v12 + 1784), a2);
  }

LABEL_27:
  *a3 = v12;
}

void re::NWProtocolLayer::addConnection(unint64_t *a1, uint64_t a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  re::NWProtocolLayer::assertNetworkQueue(*(a2 + 160));
  os_unfair_lock_lock((a2 + 216));
  v8 = re::globalAllocators(v7);
  v9 = (*(*v8[2] + 32))(v8[2], 1872, 8);
  bzero(v9, 0x750uLL);
  v10 = re::ProtocolHandle::ProtocolHandle(v9);
  *v9 = &unk_2873F4E18;
  *(v9 + 1768) = 0;
  *(v9 + 1776) = 0;
  *(v9 + 1784) = 0u;
  *(v9 + 1800) = 0u;
  re::DynamicString::setCapacity((v9 + 1784), 0);
  *(v9 + 1864) = 0;
  *(v9 + 1832) = 0u;
  *(v9 + 1848) = 0u;
  *(v9 + 1816) = 0u;
  *a1 = v9;
  objc_storeStrong((v9 + 1768), a3);
  v12 = *re::networkLogObjects(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v55 = v9;
    _os_log_debug_impl(&dword_26168F000, v12, OS_LOG_TYPE_DEBUG, "NWProtocolLayer.addConnection %p", buf, 0xCu);
  }

  v13 = *(a2 + 120);
  v14 = *(a2 + 160);
  nw_connection_set_queue(v6, v14);

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = ___ZN2re15NWProtocolLayer13addConnectionEPU27objcproto16OS_nw_connection8NSObject_block_invoke;
  handler[3] = &unk_279AE3D20;
  v15 = v13;
  v52 = v15;
  v16 = v6;
  v53 = v16;
  nw_connection_set_state_changed_handler(v16, handler);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___ZN2re15NWProtocolLayer13addConnectionEPU27objcproto16OS_nw_connection8NSObject_block_invoke_2;
  aBlock[3] = &unk_279AE3D48;
  v17 = v15;
  v49 = v17;
  v18 = v16;
  v50 = v18;
  v19 = _Block_copy(aBlock);
  v20 = *(v9 + 1816);
  *(v9 + 1816) = v19;

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = ___ZN2re15NWProtocolLayer13addConnectionEPU27objcproto16OS_nw_connection8NSObject_block_invoke_3;
  v45[3] = &unk_279AE3D70;
  v21 = v17;
  v46 = v21;
  v22 = v18;
  v47 = v22;
  v23 = _Block_copy(v45);
  v24 = *(v9 + 1824);
  *(v9 + 1824) = v23;

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = ___ZN2re15NWProtocolLayer13addConnectionEPU27objcproto16OS_nw_connection8NSObject_block_invoke_4;
  v42[3] = &unk_279AE3D98;
  v25 = v21;
  v43 = v25;
  v26 = v22;
  v44 = v26;
  v27 = _Block_copy(v42);
  v28 = *(v9 + 1832);
  *(v9 + 1832) = v27;

  nw_connection_start(v26);
  v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
  v30 = v29 ^ (v29 >> 31);
  v31 = *(a2 + 192);
  if (v31)
  {
    v32 = v30 % v31;
    v33 = *(*(a2 + 176) + 4 * (v30 % v31));
    if (v33 != 0x7FFFFFFF)
    {
      v34 = *(a2 + 184);
      if (*(v34 + 24 * v33 + 16) == v9)
      {
        goto LABEL_18;
      }

      while (1)
      {
        LODWORD(v33) = *(v34 + 24 * v33 + 8) & 0x7FFFFFFF;
        if (v33 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v34 + 24 * v33 + 16) == v9)
        {
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
    LODWORD(v32) = 0;
  }

  v35 = *(a2 + 204);
  if (v35 == 0x7FFFFFFF)
  {
    v35 = *(a2 + 200);
    v36 = v35;
    if (v35 == v31)
    {
      re::HashSetBase<re::SharedPtr<re::NWProtocolHandle>,re::SharedPtr<re::NWProtocolHandle>,re::internal::ValueAsKey<re::SharedPtr<re::NWProtocolHandle>>,re::Hash<re::SharedPtr<re::NWProtocolHandle>>,re::EqualTo<re::SharedPtr<re::NWProtocolHandle>>,true,false>::setCapacity((a2 + 168), 2 * *(a2 + 196));
      LODWORD(v32) = v30 % *(a2 + 192);
      v36 = *(a2 + 200);
    }

    *(a2 + 200) = v36 + 1;
    v37 = *(a2 + 184);
    v38 = *(v37 + 24 * v35 + 8);
  }

  else
  {
    v37 = *(a2 + 184);
    v38 = *(v37 + 24 * v35 + 8);
    *(a2 + 204) = v38 & 0x7FFFFFFF;
  }

  *(v37 + 24 * v35 + 8) = v38 | 0x80000000;
  v39 = *(a2 + 176);
  *(*(a2 + 184) + 24 * v35 + 8) = *(*(a2 + 184) + 24 * v35 + 8) & 0x80000000 | *(v39 + 4 * v32);
  *(*(a2 + 184) + 24 * v35) = v30;
  v40 = *a1;
  *(*(a2 + 184) + 24 * v35 + 16) = *a1;
  if (v40)
  {
    v41 = (v40 + 8);
    v39 = *(a2 + 176);
  }

  *(v39 + 4 * v32) = v35;
  ++*(a2 + 196);
  ++*(a2 + 208);
LABEL_18:

  os_unfair_lock_unlock((a2 + 216));
}

void re::NWProtocolLayer::close(uint64_t a1, unint64_t a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  re::NWProtocolLayer::assertNetworkQueue(*(a1 + 160));
  v7 = *re::networkLogObjects(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134218240;
    v9 = a2;
    v10 = 1024;
    v11 = a3;
    _os_log_impl(&dword_26168F000, v7, OS_LOG_TYPE_INFO, "NWProtocolLayer.close %p force=%d", &v8, 0x12u);
  }

  os_unfair_lock_lock((a1 + 216));
  re::NWProtocolLayer::removeConnection(a1, a2, 0);
  os_unfair_lock_unlock((a1 + 216));
}

void re::NWProtocolLayer::disconnect(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  re::NWProtocolLayer::assertNetworkQueue(*(a1 + 160));
  v7 = *re::networkLogObjects(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 134218240;
    v10 = a2;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&dword_26168F000, v7, OS_LOG_TYPE_INFO, "NWProtocolLayer.disconnect %p force=%d", &v9, 0x12u);
  }

  if (a3)
  {
    nw_connection_force_cancel(*(a2 + 1768));
    *(a2 + 1776) = 5;
    *(a2 + 1864) = 257;
    v8 = *(a1 + 112);
    if (v8)
    {
      (*(*v8 + 8))(v8, a1, a2, a2 + 1784);
    }
  }

  else
  {
    *(a2 + 1865) = 1;
    nw_connection_send(*(a2 + 1768), 0, *MEMORY[0x277CD9220], 1, *MEMORY[0x277CD9210]);
  }
}

void re::NWProtocolLayer::update(re::NWProtocolLayer *this)
{
  re::NWProtocolLayer::assertNetworkQueue(*(this + 20));
  os_unfair_lock_lock(this + 54);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v31, 6022, this, 0, 0, 0);
  v2 = *(this + 50);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 23) + 8);
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
        LODWORD(v3) = *(this + 50);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  v6 = *(this + 50);
  while (v3 != v2)
  {
    v7 = *(*(this + 23) + 24 * v3 + 16);
    if (*(v7 + 1768))
    {
      v8 = 936;
      do
      {
        explicit = atomic_load_explicit((v7 + v8), memory_order_acquire);
        if (explicit)
        {
          break;
        }

        v10 = v8 == 1296;
        v8 += 40;
      }

      while (!v10);
      if (explicit)
      {
        v11 = *(v7 + 1768);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = ___ZN2re15NWProtocolLayer6updateEv_block_invoke;
        v30[3] = &__block_descriptor_48_e5_v8__0l;
        v30[4] = this;
        v30[5] = v7;
        nw_connection_batch(v11, v30);
      }
    }

    v6 = *(this + 50);
    if (v6 <= v3 + 1)
    {
      v12 = v3 + 1;
    }

    else
    {
      v12 = *(this + 50);
    }

    while (v12 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 23) + 24 * v3 + 8) & 0x80000000) != 0)
      {
        goto LABEL_22;
      }
    }

    LODWORD(v3) = v12;
LABEL_22:
    ;
  }

  if (v6)
  {
    v13 = 0;
    v14 = (*(this + 23) + 8);
    while (1)
    {
      v15 = *v14;
      v14 += 6;
      if (v15 < 0)
      {
        break;
      }

      if (v6 == ++v13)
      {
        LODWORD(v13) = v6;
        break;
      }
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  while (v13 != v6)
  {
    re::NWProtocolLayer::scheduleReceives(this, *(*(this + 23) + 24 * v13 + 16));
    v16 = *(this + 50);
    if (v16 <= v13 + 1)
    {
      v16 = v13 + 1;
    }

    while (v16 - 1 != v13)
    {
      LODWORD(v13) = v13 + 1;
      if ((*(*(this + 23) + 24 * v13 + 8) & 0x80000000) != 0)
      {
        goto LABEL_36;
      }
    }

    LODWORD(v13) = v16;
LABEL_36:
    ;
  }

  if (CFAbsoluteTimeGetCurrent() - *(this + 13) > 1.0)
  {
    *(this + 13) = CFAbsoluteTimeGetCurrent();
    v17 = *(this + 50);
    if (v17)
    {
      v18 = 0;
      v19 = (*(this + 23) + 8);
      while (1)
      {
        v20 = *v19;
        v19 += 6;
        if (v20 < 0)
        {
          break;
        }

        if (v17 == ++v18)
        {
          LODWORD(v18) = *(this + 50);
          break;
        }
      }
    }

    else
    {
      LODWORD(v18) = 0;
    }

    if (v18 != v17)
    {
      v21 = *(this + 50);
      do
      {
        v22 = *(*(this + 23) + 24 * v18 + 16);
        v23 = *(v22 + 1768);
        if (v23 && *(v22 + 1776) == 3)
        {
          v24 = *(v22 + 1848);
          if (v24)
          {
            v25 = *(this + 20);
            nw_data_transfer_report_collect(v24, v25, *(v22 + 1832));

            v26 = *(v22 + 1848);
            *(v22 + 1848) = 0;

            v23 = *(v22 + 1768);
          }

          new_data_transfer_report = nw_connection_create_new_data_transfer_report(v23);
          v28 = *(v22 + 1848);
          *(v22 + 1848) = new_data_transfer_report;

          v21 = *(this + 50);
        }

        if (v21 <= v18 + 1)
        {
          v29 = v18 + 1;
        }

        else
        {
          v29 = v21;
        }

        while (v29 - 1 != v18)
        {
          LODWORD(v18) = v18 + 1;
          if ((*(*(this + 23) + 24 * v18 + 8) & 0x80000000) != 0)
          {
            goto LABEL_58;
          }
        }

        LODWORD(v18) = v29;
LABEL_58:
        ;
      }

      while (v18 != v17);
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v31);
  os_unfair_lock_unlock(this + 54);
}

uint64_t ___ZN2re15NWProtocolLayer6updateEv_block_invoke(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9 = v3 + 912;
  do
  {
    result = re::PacketQueue::dequeue((v9 + 40 * v1));
    if (result)
    {
      v5 = result;
      do
      {
        message = nw_framer_protocol_create_message(*(v2 + 136));
        nw_framer_message_set_value(message, "channel", v1, 0);
        v7 = nw_content_context_create("re-nw");
        nw_content_context_set_metadata_for_protocol(v7, message);
        v8 = dispatch_data_create(*(v5 + 16), *(v5 + 24), 0, 0);
        atomic_fetch_add((v3 + 1856), 1u);
        nw_connection_send(*(v3 + 1768), v8, v7, 1, *(v3 + 1816));
        if (re::internal::enableSignposts(0, 0))
        {
          if (re::internal::enableHighFrequencyNetworkTracing(0, 0))
          {
            kdebug_trace();
          }
        }

        re::PacketPool::free(*(v2 + 24), v5);

        result = re::PacketQueue::dequeue((v9 + 40 * v1));
        v5 = result;
      }

      while (result);
    }

    v1 = v1 + 1;
  }

  while (v1 != 10);
  return result;
}

void re::NWProtocolLayer::scheduleReceives(uint64_t a1, uint64_t a2)
{
  re::NWProtocolLayer::assertNetworkQueue(*(a1 + 160));
  if (*(a2 + 1768) && *(a2 + 1776) == 3 && (*(a2 + 1864) & 1) == 0)
  {
    v4 = atomic_load((a2 + 1860));
    v5 = *(a1 + 80);
    if (!v5)
    {
      v5 = 10;
    }

    if (v4 < v5)
    {
      v6 = 0;
      for (i = 1344; i != 1744; i += 40)
      {
        v6 += atomic_load_explicit((a2 + i), memory_order_acquire);
      }

      v8 = *(a1 + 88);
      if (!v8)
      {
        v8 = 10485760;
      }

      if (v6 < v8)
      {
        v9 = *(a2 + 1768);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = ___ZN2re15NWProtocolLayer16scheduleReceivesEPNS_16NWProtocolHandleE_block_invoke;
        v10[3] = &__block_descriptor_48_e5_v8__0l;
        v10[4] = a1;
        v10[5] = a2;
        nw_connection_batch(v9, v10);
      }
    }
  }
}

void ___ZN2re15NWProtocolLayer13addConnectionEPU27objcproto16OS_nw_connection8NSObject_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 32) + 8);
  if (v3)
  {
    v5 = a2;
    v6 = *(a1 + 40);
    v7 = a3;
    re::NWProtocolLayer::assertNetworkQueue(*(v3 + 160));
    v8 = re::NWProtocolLayer::handleFor(v3, v6);
    if (v8)
    {
      v9 = v8;
      *(v8 + 444) = v5;
      v10 = *re::networkLogObjects(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = v10;
        v15 = 134218498;
        v16 = v9;
        v17 = 2080;
        v18 = nw_connection_state_to_string();
        v19 = 2080;
        v20 = nw_connection_state_to_string();
        _os_log_impl(&dword_26168F000, v11, OS_LOG_TYPE_INFO, "NWProtocolLayer.onConnectionStateChanged %p prevState=%s newState=%s", &v15, 0x20u);
      }

      switch(v5)
      {
        case 5:
          re::NWProtocolHandle::reset(v9);
          break;
        case 4:
          v14 = *(v3 + 112);
          if (v14 && (*(v9 + 1864) & 1) == 0)
          {
            if (v7)
            {
              (*(*v14 + 16))(v14, v3, v9, 2);
            }

            else
            {
              (*(*v14 + 8))(v14, v3, v9, v9 + 1784);
            }
          }

          break;
        case 3:
          v12 = *(v3 + 112);
          if (v12)
          {
            (**v12)(v12, v3, v9, v9 + 1784);
          }

          re::NWProtocolLayer::scheduleReceives(v3, v9);
          break;
      }
    }

    else
    {
      v13 = *re::networkLogObjects(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_26168F000, v13, OS_LOG_TYPE_INFO, "NWProtocolLayer.onConnectionStateChanged for unknown connection", &v15, 2u);
      }
    }
  }
}

uint64_t ___ZN2re15NWProtocolLayer13addConnectionEPU27objcproto16OS_nw_connection8NSObject_block_invoke_2(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (v1)
  {
    v2 = *(result + 40);
    re::NWProtocolLayer::assertNetworkQueue(*(v1 + 160));
    v3 = re::NWProtocolLayer::handleFor(v1, v2);

    if (v3)
    {
      atomic_fetch_add((v3 + 1856), 0xFFFFFFFF);
      result = re::internal::enableSignposts(0, 0);
      if (!result)
      {
        return result;
      }

      result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = re::internal::enableSignposts(0, 0);
      if (!result)
      {
        return result;
      }

      result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
      if (!result)
      {
        return result;
      }
    }

    return kdebug_trace();
  }

  return result;
}

void ___ZN2re15NWProtocolLayer13addConnectionEPU27objcproto16OS_nw_connection8NSObject_block_invoke_3(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = *(*(a1 + 32) + 8);
  if (v5)
  {
    v10 = *(a1 + 40);
    v11 = a2;
    v12 = a3;
    v13 = a5;
    re::NWProtocolLayer::assertNetworkQueue(*(v5 + 160));
    v14 = re::NWProtocolLayer::handleFor(v5, v10);
    if (v14)
    {
      v15 = v14;
      atomic_fetch_add((v14 + 1860), 0xFFFFFFFF);
      if (v11 && v12)
      {
        v30 = 0;
        v31 = &v30;
        v32 = 0x2020000000;
        v33 = 0;
        v16 = nw_content_context_copy_protocol_metadata(v12, *(v5 + 136));
        v17 = v16;
        if (v16 && nw_protocol_metadata_is_framer_message(v16))
        {
          access_value[0] = MEMORY[0x277D85DD0];
          access_value[1] = 3221225472;
          access_value[2] = ___ZN2re15NWProtocolLayer16onReceiveMessageEPU27objcproto16OS_nw_connection8NSObjectPU27objcproto16OS_dispatch_dataS1_PU32objcproto21OS_nw_content_contextS1_bPU22objcproto11OS_nw_errorS1__block_invoke;
          access_value[3] = &unk_279AE3B70;
          access_value[4] = &v30;
          nw_framer_message_access_value(v17, "channel", access_value);
        }

        v18 = *(v5 + 24);
        size = dispatch_data_get_size(v11);
        v20 = v11;
        v21 = re::PacketPool::allocate(v18, size);
        *(v21 + 6) = size;
        v22 = *(v21 + 2);
        *&applier = MEMORY[0x277D85DD0];
        *(&applier + 1) = 3221225472;
        v35 = ___ZN12_GLOBAL__N_119newPacketForContentEPN2re10PacketPoolEPU27objcproto16OS_dispatch_data8NSObject_block_invoke;
        v36 = &__block_descriptor_40_e47_B40__0__NSObject_OS_dispatch_data__8Q16r_v24Q32l;
        v37 = v22;
        dispatch_data_apply(v20, &applier);

        if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
        {
          kdebug_trace();
        }

        v23 = *(v5 + 112);
        if (v23)
        {
          (*(*v23 + 24))(v23, v5, v15, *(v31 + 24), *(v21 + 2), *(v21 + 6));
        }

        re::PacketPool::free(*(v5 + 24), v21);
        _Block_object_dispose(&v30, 8);
      }

      else if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
      {
        kdebug_trace();
      }

      if (v12 && a4 && (is_final = nw_content_context_get_is_final(v12)))
      {
        if ((*(v15 + 1864) & 1) == 0 && *(v15 + 1776) == 3)
        {
          v27 = *re::networkLogObjects(is_final);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            LODWORD(applier) = 134217984;
            *(&applier + 4) = v15;
            _os_log_impl(&dword_26168F000, v27, OS_LOG_TYPE_INFO, "NWProtocolLayer.onReceiveMessage %p readClosed", &applier, 0xCu);
          }

          *(v15 + 1864) = 1;
          v28 = *(v5 + 112);
          if (v28)
          {
            (*(*v28 + 8))(v28, v5, v15, v15 + 1784);
          }
        }
      }

      else
      {
        re::NWProtocolLayer::scheduleReceives(v5, v15);
      }
    }

    else
    {
      error_domain = re::internal::enableSignposts(0, 0);
      if (error_domain)
      {
        error_domain = re::internal::enableHighFrequencyNetworkTracing(0, 0);
        if (error_domain)
        {
          error_domain = kdebug_trace();
        }
      }

      if (!v13 || (error_domain = nw_error_get_error_domain(v13), error_domain != 1) || (error_domain = nw_error_get_error_code(v13), error_domain != 89))
      {
        v25 = *re::networkLogObjects(error_domain);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          LOWORD(applier) = 0;
          _os_log_impl(&dword_26168F000, v25, OS_LOG_TYPE_INFO, "NWProtocolLayer.onReceiveMessage for unknown connection", &applier, 2u);
        }
      }
    }
  }
}

void ___ZN2re15NWProtocolLayer13addConnectionEPU27objcproto16OS_nw_connection8NSObject_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = *(a1 + 40);
    report = a2;
    v4 = v3;
    re::NWProtocolLayer::assertNetworkQueue(*(v2 + 160));
    v5 = re::NWProtocolLayer::handleFor(v2, v4);

    if (v5)
    {
      os_unfair_lock_lock((v5 + 1760));
      v6 = *(v5 + 1736);
      v7 = *(v5 + 1744);
      v8 = *(v5 + 1748);
      v9 = *(v5 + 1752);
      v10 = *(v5 + 1756);
      os_unfair_lock_unlock((v5 + 1760));
      v11 = *MEMORY[0x277CD9228];
      sent_transport_byte_count = nw_data_transfer_report_get_sent_transport_byte_count(report, *MEMORY[0x277CD9228]);
      sent_transport_retransmitted_byte_count = nw_data_transfer_report_get_sent_transport_retransmitted_byte_count(report, v11);
      v14 = v7 + nw_data_transfer_report_get_received_transport_byte_count(report, v11);
      v15 = v8 + sent_transport_byte_count;
      v16 = v9 + nw_data_transfer_report_get_received_ip_packet_count(report, v11);
      v17 = v10 + nw_data_transfer_report_get_sent_ip_packet_count(report, v11);
      if (sent_transport_byte_count)
      {
        v18 = sent_transport_retransmitted_byte_count / sent_transport_byte_count;
      }

      else
      {
        v18 = 0.0;
      }

      os_unfair_lock_lock((v5 + 1760));
      *(v5 + 1736) = v6;
      *(v5 + 1740) = v18;
      *(v5 + 1744) = v14;
      *(v5 + 1748) = v15;
      *(v5 + 1752) = v16;
      *(v5 + 1756) = v17;
      os_unfair_lock_unlock((v5 + 1760));
    }
  }
}

void re::NWProtocolHandle::reset(re::NWProtocolHandle *this)
{
  v2 = *(this + 221);
  *(this + 221) = 0;

  *(this + 444) = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  re::DynamicString::setCapacity(&v9, 0);
  re::DynamicString::operator=((this + 1784), &v9);
  if (v9 && (v10 & 1) != 0)
  {
    (*(*v9 + 40))();
  }

  v4 = *(this + 227);
  *(this + 227) = 0;

  v5 = *(this + 228);
  *(this + 228) = 0;

  v6 = *(this + 229);
  *(this + 229) = 0;

  *(this + 932) = 0;
  v7 = *(this + 230);
  *(this + 230) = 0;

  v8 = *(this + 231);
  *(this + 231) = 0;
}

uint64_t re::NWProtocolLayer::handleFor(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 216));
  v4 = *(a1 + 200);
  if (v4)
  {
    v5 = 0;
    v6 = (*(a1 + 184) + 8);
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
        LODWORD(v5) = *(a1 + 200);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 == v4)
  {
LABEL_18:
    v9 = 0;
  }

  else
  {
    v8 = *(a1 + 184);
    while (1)
    {
      v9 = *(v8 + 24 * v5 + 16);
      if (*(v9 + 1768) == v3)
      {
        break;
      }

      if (v4 <= v5 + 1)
      {
        v10 = v5 + 1;
      }

      else
      {
        v10 = *(a1 + 200);
      }

      while (v10 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 24 * v5 + 8) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v5) = v10;
LABEL_17:
      if (v5 == v4)
      {
        goto LABEL_18;
      }
    }
  }

  os_unfair_lock_unlock((a1 + 216));

  return v9;
}

uint64_t ___ZN2re15NWProtocolLayer16scheduleReceivesEPNS_16NWProtocolHandleE_block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 80))
  {
    v2 = *(*(a1 + 32) + 80);
  }

  else
  {
    v2 = 10;
  }

  v3 = atomic_load((*(a1 + 40) + 1860));
  if (v3 < v2)
  {
    do
    {
      atomic_fetch_add((*(a1 + 40) + 1860), 1u);
      nw_connection_receive_message(*(*(a1 + 40) + 1768), *(*(a1 + 40) + 1824));
      v4 = atomic_load((*(a1 + 40) + 1860));
    }

    while (v4 < v2);
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {
    result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
    if (result)
    {

      return kdebug_trace();
    }
  }

  return result;
}

void re::NWProtocolLayer::wait(re::NWProtocolLayer *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Implementation required to support update synchronization.", "!Unreachable code", "wait", 857);
  _os_crash("assertion failure: (!Unreachable code) Implementation required to support update synchronization.");
  __break(1u);
}

void re::NWProtocolLayer::wakeup(re::NWProtocolLayer *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Implementation required to support update synchronization.", "!Unreachable code", "wakeup", 862);
  _os_crash("assertion failure: (!Unreachable code) Implementation required to support update synchronization.");
  __break(1u);
}

unint64_t re::NWProtocolLayer::localAddresses(re::NWProtocolLayer *this, re::Address *a2, unint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(this + 16);
  if (!v3 || *(v3 + 40) != 2)
  {
    return 0;
  }

  port = nw_listener_get_port(*(v3 + 32));
  if (*(this + 48))
  {
    v8 = *(this + 7);
  }

  else
  {
    v8 = (this + 49);
  }

  if (*v8 && strcmp(v8, "0.0.0.0"))
  {
    if (a3)
    {
      re::Address::makeFromIPAndPort(buf, v8, port);
      re::DynamicString::operator=(a2, buf);
      if (*buf)
      {
        if (v28)
        {
          (*(**buf + 40))();
        }
      }
    }

    return 1;
  }

  v25 = 0;
  v10 = getifaddrs(&v25);
  if ((v10 & 0x80000000) != 0)
  {
    v21 = *re::networkLogObjects(v10);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = *__error();
      *buf = 67109120;
      *&buf[4] = v23;
      _os_log_impl(&dword_26168F000, v22, OS_LOG_TYPE_DEFAULT, "NWProtocolLayer: Unable to list network adapters(errno=%d).", buf, 8u);
    }

    return 0;
  }

  v12 = v25;
  if (v25)
  {
    v9 = 0;
    do
    {
      ifa_addr = v12->ifa_addr;
      if (ifa_addr)
      {
        ifa_flags = v12->ifa_flags;
        if ((ifa_flags & 1) != 0 && ifa_addr->sa_family == 2)
        {
          v15 = *&ifa_addr->sa_data[2];
          ifa_addr = (ifa_addr + 4);
          v14 = v15;
          if (v15 != 65193 && ((ifa_flags & 8) == 0 || v14 == 16777343))
          {
            v16 = inet_ntop(2, ifa_addr, v26, 0x11u);
            if (v16)
            {
              if (v9 < a3)
              {
                re::Address::makeFromIPAndPort(buf, v16, port);
                re::DynamicString::operator=((a2 + 32 * v9), buf);
                if (*buf)
                {
                  if (v28)
                  {
                    (*(**buf + 40))();
                  }
                }
              }

              ++v9;
            }

            else
            {
              v17 = *re::networkLogObjects(0);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                v18 = v17;
                v19 = *__error();
                *buf = 67109120;
                *&buf[4] = v19;
                _os_log_impl(&dword_26168F000, v18, OS_LOG_TYPE_DEFAULT, "NWProtocolLayer: Failed to get string representation of ip(errno=%d).", buf, 8u);
              }
            }
          }
        }
      }

      v12 = v12->ifa_next;
    }

    while (v12);
    v20 = v25;
  }

  else
  {
    v20 = 0;
    v9 = 0;
  }

  MEMORY[0x2667091C0](v20, ifa_addr);
  return v9;
}

uint64_t re::NWProtocolLayer::hostStats(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 200);
  if (v4)
  {
    v5 = 0;
    v6 = (*(a1 + 184) + 8);
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
        LODWORD(v5) = *(a1 + 200);
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
    v8 = *(*(a1 + 184) + 24 * v5 + 16);
    os_unfair_lock_lock((v8 + 1760));
    v9 = *(v8 + 1736);
    v10 = *(v8 + 1740);
    v14 = *(v8 + 1744);
    os_unfair_lock_unlock((v8 + 1760));
    *(a2 + 8) = vaddq_s32(*(a2 + 8), v14);
    *(a2 + 4) = v10 + *(a2 + 4);
    *a2 += v9;
    v11 = *(a1 + 200);
    if (v11 <= v5 + 1)
    {
      v11 = v5 + 1;
    }

    while (v11 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(a1 + 184) + 24 * v5 + 8) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v5) = v11;
LABEL_14:
    ;
  }

  v12 = *(a1 + 196);
  if (v12)
  {
    *(a2 + 4) = *(a2 + 4) / v12;
    *a2 /= v12;
  }

  return 1;
}

uint64_t re::NWProtocolLayer::setDisconnectTimeout(uint64_t this, unsigned int a2)
{
  if (a2 <= 0x3E8)
  {
    v2 = 1000;
  }

  else
  {
    v2 = a2;
  }

  *(this + 96) = v2 / 0x3E8;
  return this;
}

void re::NWProtocolHandle::~NWProtocolHandle(id *this)
{
  re::NWProtocolHandle::~NWProtocolHandle(this);

  JUMPOUT(0x266708EC0);
}

{
  *this = &unk_2873F4E18;
  re::NWProtocolHandle::reset(this);

  re::DynamicString::deinit((this + 223));

  re::ProtocolHandle::~ProtocolHandle(this);
}

void re::HashSetBase<re::SharedPtr<re::NWProtocolHandle>,re::SharedPtr<re::NWProtocolHandle>,re::internal::ValueAsKey<re::SharedPtr<re::NWProtocolHandle>>,re::Hash<re::SharedPtr<re::NWProtocolHandle>>,re::EqualTo<re::SharedPtr<re::NWProtocolHandle>>,true,false>::setCapacity(__int128 *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 6) != a2 && *(a1 + 7) <= a2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::init(v22, v4, a2);
      v5 = *a1;
      *a1 = *v22;
      v6 = *(a1 + 2);
      v7 = *&v22[8];
      *v22 = v5;
      *&v22[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v22[24];
      *&v22[24] = *(a1 + 24);
      v8 = *&v22[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = DWORD1(v9);
        v12 = v7;
        v13 = (v6 + 16);
        do
        {
          if ((*(v13 - 1) & 0x80000000) != 0)
          {
            v14 = *(v13 - 2);
            v15 = *(a1 + 6);
            v16 = v14 % v15;
            v17 = *(a1 + 9);
            if (v17 == 0x7FFFFFFF)
            {
              v17 = *(a1 + 8);
              v18 = v17;
              if (v17 == v15)
              {
                re::HashSetBase<re::SharedPtr<re::NWProtocolHandle>,re::SharedPtr<re::NWProtocolHandle>,re::internal::ValueAsKey<re::SharedPtr<re::NWProtocolHandle>>,re::Hash<re::SharedPtr<re::NWProtocolHandle>>,re::EqualTo<re::SharedPtr<re::NWProtocolHandle>>,true,false>::setCapacity(a1, 2 * v11);
                v16 = v14 % *(a1 + 6);
                v18 = *(a1 + 8);
                v12 = *(a1 + 1);
              }

              *(a1 + 8) = v18 + 1;
              v19 = *(a1 + 2);
              v20 = *(v19 + 24 * v17 + 8);
            }

            else
            {
              v19 = *(a1 + 2);
              v20 = *(v19 + 24 * v17 + 8);
              *(a1 + 9) = v20 & 0x7FFFFFFF;
            }

            *(v19 + 24 * v17 + 8) = v20 | 0x80000000;
            *(*(a1 + 2) + 24 * v17 + 8) = *(*(a1 + 2) + 24 * v17 + 8) & 0x80000000 | *(v12 + 4 * v16);
            *(*(a1 + 2) + 24 * v17) = v14;
            *(*(a1 + 2) + 24 * v17 + 16) = *v13;
            *v13 = 0;
            *(v12 + 4 * v16) = v17;
            v11 = *(a1 + 7) + 1;
            *(a1 + 7) = v11;
          }

          v13 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::SharedPtr<re::SyncView>,re::SharedPtr<re::SyncView>,re::internal::ValueAsKey<re::SharedPtr<re::SyncView>>,re::Hash<re::SharedPtr<re::SyncView>>,re::EqualTo<re::SharedPtr<re::SyncView>>,true,false>::deinit(v22);
    }
  }

  else
  {
    if (a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = 3;
    }
  }
}

uint64_t re::SyncOwnershipRequest::write(re::SyncOwnershipRequest *this, re::BitWriter *a2)
{
  v4 = *(this + 1);
  re::BitWriter::writeUInt32Bits(a2, *this, 0x20u);
  re::BitWriter::writeUInt32Bits(a2, v4, 0x20u);
  v5 = *(this + 3);
  re::BitWriter::writeUInt32Bits(a2, *(this + 2), 0x20u);
  re::BitWriter::writeUInt32Bits(a2, v5, 0x20u);
  re::BitWriter::writeUInt32Bits(a2, *(this + 16), 1u);
  re::BitWriter::writeUInt32Bits(a2, *(this + 18), 0x20u);
  v6 = *(this + 8);
  v7 = *(this + 18);

  return re::BitWriter::writeData(a2, v6, v7);
}

uint64_t re::SyncOwnershipRequest::read(re::SyncOwnershipRequest *this, re::BitReader *a2)
{
  re::BitReader::readUInt64(a2, this);
  re::BitReader::readUInt64(a2, this + 1);
  v9 = 0;
  re::BitReader::readUInt32Bits(a2, 1u, &v9);
  *(this + 16) = v9 != 0;
  v10 = 0;
  re::BitReader::readUInt32Bits(a2, 0x20u, &v10);
  result = 0;
  v5 = v10;
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  if (v10 <= v6 - v7)
  {
    if (*(a2 + 12) == 1)
    {
      result = 0;
      *(this + 8) = 0;
      *(this + 9) = v5;
    }

    else
    {
      *(this + 8) = *a2 + v7;
      *(this + 9) = v5;
      *(a2 + 3) = 0;
      v8 = v7 + v5;
      *(a2 + 2) = v8;
      result = 1;
      if (v8 > v6)
      {
        *(a2 + 12) = 1;
        return 0;
      }
    }
  }

  return result;
}

uint64_t re::DynamicArray<unsigned char>::DynamicArray(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    re::DynamicArray<unsigned char>::setCapacity(a1, v3);
    ++*(a1 + 24);
    re::DynamicArray<unsigned char>::copy(a1, 0, *a2, *(a2 + 8));
  }

  return a1;
}

_anonymous_namespace_ *re::DynamicArray<unsigned char>::copy(_anonymous_namespace_ *this, unint64_t a2, char *__src, size_t __len)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!__len)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = *(this + 2);
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v20 = 0;
    memset(v26, 0, sizeof(v26));
    v13 = MEMORY[0x277D86220];
    *v21 = 136315906;
    *&v21[4] = "copy";
    *&v21[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    *&v21[14] = 643;
    v22 = 2048;
    v23 = v5;
    v24 = 2048;
    v25 = v8;
    _os_log_send_and_compose_impl(v14, &v20, v26, 80, &dword_26168F000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v21, 38, v17, v19);
    _os_crash_msg();
    __break(1u);
LABEL_15:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v20, *v21);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v15, v16, v18);
    __break(1u);
  }

  v4 = __len;
  v9 = a2 + __len;
  if (__CFADD__(a2, __len))
  {
    goto LABEL_15;
  }

  if (v7 >= v9)
  {
    this = memmove((*(this + 4) + a2), __src, __len);
  }

  else
  {
    re::DynamicArray<unsigned char>::growCapacity(this, a2 + __len);
    v11 = *(v6 + 2);
    v12 = v11 - v5;
    if (v11 != v5)
    {
      memmove((*(v6 + 4) + v5), __src, v12);
      v5 = *(v6 + 2);
    }

    this = memcpy((*(v6 + 4) + v5), &__src[v12], v4 - v12);
    *(v6 + 2) = v9;
  }

  ++*(v6 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<unsigned char>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<unsigned char>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<unsigned char>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::entryIsAddable(re::SyncObject **a1, void *a2)
{
  v2 = *a1;
  if (*a1)
  {
    while ((*(*(*(v2 + 11) + 16) + 74) & 1) == 0)
    {
      v2 = *(v2 + 10);
      if (!v2)
      {
        return 0;
      }
    }

    if (*(v2 + 12))
    {
      result = (*(*a2 + 16))(a2);
      if (!result)
      {
        return result;
      }

      v6 = *a1;
      v7 = a2[7];
      LatestState = re::SyncObject::getLatestState(v6);
      if (!LatestState || *(LatestState + 88) != v7)
      {
        return !re::SyncObjectViewer::isViewChangePending(a2, v2);
      }
    }
  }

  return 0;
}

void re::SyncCommitBuilder::~SyncCommitBuilder(re::SyncCommitBuilder *this)
{
  re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(this + 304);
  re::DynamicArray<re::SyncCommit>::deinit(this + 232);
  re::DynamicArray<re::SyncCommit>::deinit(this + 168);
  re::DynamicArray<re::SyncCommit>::deinit(this + 104);
  re::DynamicArray<re::SyncCommit>::deinit(this + 40);
}

uint64_t re::SyncCommitBuilder::buildUpdate(uint64_t result, uint64_t a2)
{
  if (*(a2 + 28) == 1 && *(a2 + 8) == *(*(result + 8) + 56))
  {
    return result;
  }

  v4 = result;
  if (*(a2 + 28))
  {
    v5 = *(result + 144);
    result += 144;
    if (v5)
    {
      v6 = *(v4 + 160);
      goto LABEL_11;
    }
  }

  else
  {
    v7 = *(result + 208);
    result += 208;
    if (v7)
    {
      v6 = *(v4 + 224);
      goto LABEL_11;
    }
  }

  result = re::SyncCommitChannel::newCommit(result);
  v6 = result;
LABEL_11:
  v8 = *(a2 + 48);
  if (v8)
  {
    v9 = *(a2 + 64);
    v10 = &v9[3 * v8];
    do
    {
      v11 = *v9;
      v12 = *(*v9 + 10);
      if (v12)
      {
        do
        {
          v13 = v11;
          v11 = v12;
          if (*(*(*(v13 + 11) + 16) + 73))
          {
            break;
          }

          v12 = *(v12 + 10);
          v13 = v11;
        }

        while (v12);
      }

      else
      {
        v13 = *v9;
      }

      if ((*(v13 + 170) & 1) != 0 || (*v4 & 1) != 0 || *(v4 + 1) == 1)
      {
        result = re::entryIsAddable(v9, *(v4 + 8));
        if (result)
        {
          result = re::DynamicArray<re::internal::SyncSnapshotEntry>::add((v6 + 32), v9);
        }
      }

      v9 += 3;
    }

    while (v9 != v10);
  }

  return result;
}

void re::SyncCommitBuilder::buildOwnershipChanges(uint64_t a1, re::SyncObject **a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = a2;
    v5 = &a2[a3];
    do
    {
      v6 = *v3;
      if (*v3)
      {
        v7 = *v3;
        while ((*(*(*(v7 + 11) + 16) + 74) & 1) == 0)
        {
          v7 = *(v7 + 10);
          if (!v7)
          {
            goto LABEL_26;
          }
        }

        if (*(v7 + 12))
        {
          while ((*(*(*(v6 + 11) + 16) + 74) & 1) == 0)
          {
            v6 = *(v6 + 10);
            if (!v6)
            {
              v8 = 0;
              goto LABEL_13;
            }
          }

          v8 = *(v6 + 12);
LABEL_13:
          v9 = (*(**(a1 + 8) + 16))(*(a1 + 8), v8);
          if (v9)
          {
            v10 = *re::networkLogObjects(v9);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              v11 = *(*v3 + 3);
              *buf = 134217984;
              *&buf[4] = v11;
              _os_log_impl(&dword_26168F000, v10, OS_LOG_TYPE_INFO, "[Ownership] Adding ownership changes for: %llu", buf, 0xCu);
            }

            v12 = re::SyncObject::takeOverLatestState(*v3);
            if (v12)
            {
              v13 = *v3;
              *buf = v13;
              if (v13)
              {
                v14 = v13 + 8;
                v15 = *v3;
              }

              else
              {
                v15 = 0;
              }

              *&buf[8] = re::SyncObject::latestStateHandle(v15);
              buf[16] &= 0xF0u;
              re::DynamicArray<re::internal::SyncSnapshotEntry>::add((a1 + 304), buf);
              if (*buf)
              {
              }
            }

            else
            {
              v16 = *re::networkLogObjects(v12);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                v17 = *(*v3 + 3);
                v18 = *(*(*v3 + 11) + 16);
                v19 = v18[4];
                v20 = v18[6];
                v21 = v18[7];
                v22 = v18 + 49;
                if (v20)
                {
                  v22 = v21;
                }

                *buf = 134218498;
                *&buf[4] = v17;
                *&buf[12] = 2048;
                *&buf[14] = v19;
                v24 = 2080;
                v25 = v22;
                _os_log_error_impl(&dword_26168F000, v16, OS_LOG_TYPE_ERROR, "Encountered sync object without snapshot while packing ownership broadcasts! (id: %llu, type: %llu[%s])", buf, 0x20u);
              }
            }
          }
        }
      }

LABEL_26:
      ++v3;
    }

    while (v3 != v5);
  }
}

void re::SyncCommitBuilder::buildViewAdd(uint64_t a1, re **a2)
{
  v5 = *(a1 + 16);
  v4 = (a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = re::SyncCommitChannel::newCommit(v4);
  }

  re::SyncCommitBuilder::addToViewRecursive(a1, a2, v6);
}

void re::SyncCommitBuilder::addToViewRecursive(uint64_t a1, re **a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*(*a2 + 8) == *(*a2 + 9))
  {
    v6 = *re::networkLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*a2 + 3);
      v8 = *(*(*a2 + 11) + 16);
      v9 = v8[4];
      v10 = v8[6];
      v11 = v8[7];
      v12 = v8 + 49;
      if (v10)
      {
        v12 = v11;
      }

      *v21 = 134218498;
      *&v21[4] = v7;
      v22 = 2048;
      v23 = v9;
      v24 = 2080;
      v25 = v12;
      _os_log_error_impl(&dword_26168F000, v6, OS_LOG_TYPE_ERROR, "Sync object without snapshot while adding view to commit (id: %llu, type: %llu[%s]).", v21, 0x20u);
    }
  }

  else
  {
    v14 = *(*(a1 + 8) + 56);
    LatestState = re::SyncObject::getLatestState(v5);
    if ((!LatestState || *(LatestState + 88) != v14) && (*(*a2 + 128) & 4) == 0)
    {
      re::SyncSnapshot::addToView((a3 + 32), a2);
    }

    v16 = *(*a2 + 25);
    if (v16)
    {
      v17 = *(*a2 + 27);
      v18 = 8 * v16;
      do
      {
        v19 = *v17;
        *v21 = v19;
        if (v19)
        {
          v20 = (v19 + 8);
        }

        re::SyncCommitBuilder::addToViewRecursive(a1, v21, a3);
        if (*v21)
        {
        }

        ++v17;
        v18 -= 8;
      }

      while (v18);
    }
  }
}

void re::SyncCommitBuilder::buildViewRemoval(uint64_t a1, re **a2)
{
  v5 = *(a1 + 80);
  v4 = (a1 + 80);
  if (v5)
  {
    v6 = *(a1 + 96);
  }

  else
  {
    v6 = re::SyncCommitChannel::newCommit(v4);
  }

  re::SyncCommitBuilder::removeFromViewRecursive(a1, a2, v6);
}

void re::SyncCommitBuilder::removeFromViewRecursive(uint64_t a1, re **a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*(*a2 + 8) == *(*a2 + 9))
  {
    v6 = *re::networkLogObjects(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*a2 + 3);
      v8 = *(*(*a2 + 11) + 16);
      v9 = v8[4];
      v10 = v8[6];
      v11 = v8[7];
      v12 = v8 + 49;
      if (v10)
      {
        v12 = v11;
      }

      *v21 = 134218498;
      *&v21[4] = v7;
      v22 = 2048;
      v23 = v9;
      v24 = 2080;
      v25 = v12;
      _os_log_error_impl(&dword_26168F000, v6, OS_LOG_TYPE_ERROR, "Sync object without snapshot while removing view from commit (id: %llu, type: %llu[%s]).", v21, 0x20u);
    }
  }

  else
  {
    if ((*(v5 + 128) & 4) == 0 || (v14 = *(*(a1 + 8) + 56), (LatestState = re::SyncObject::getLatestState(v5)) == 0) || *(LatestState + 88) != v14)
    {
      re::SyncSnapshot::removeFromView((a3 + 32), a2);
    }

    v16 = *(*a2 + 25);
    if (v16)
    {
      v17 = *(*a2 + 27);
      v18 = 8 * v16;
      do
      {
        v19 = *v17;
        *v21 = v19;
        if (v19)
        {
          v20 = (v19 + 8);
        }

        re::SyncCommitBuilder::removeFromViewRecursive(a1, v21, a3);
        if (*v21)
        {
        }

        ++v17;
        v18 -= 8;
      }

      while (v18);
    }
  }
}

re::SyncCommitChannel *re::SyncCommitBuilder::begin(re::SyncCommitBuilder *this)
{
  v3 = *(this + 4);
  v2 = (this + 16);
  if ((v3 - 1) <= 1)
  {
    re::SyncCommitChannel::newCommit(v2);
  }

  if ((*(this + 20) - 1) <= 1)
  {
    re::SyncCommitChannel::newCommit((this + 80));
  }

  result = (this + 144);
  if ((*(this + 36) - 1) <= 1)
  {
    result = re::SyncCommitChannel::newCommit(result);
  }

  v6 = *(this + 52);
  v5 = (this + 208);
  if ((v6 - 1) <= 1)
  {

    return re::SyncCommitChannel::newCommit(v5);
  }

  return result;
}

uint64_t re::SyncCommitBuilder::end(void *a1, _anonymous_namespace_ *a2)
{
  v11 = *(a1[1] + 56);
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  v14 = 0;
  v18 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  re::SyncCommitChannel::endFrame((a1 + 2), &v11);
  re::SyncCommitChannel::endFrame((a1 + 10), &v11);
  re::SyncCommitChannel::endFrame((a1 + 18), &v11);
  re::SyncCommitChannel::endFrame((a1 + 26), &v11);
  if (a1[40])
  {
    re::DynamicArray<re::SyncCommit>::add((&v15 + 8), (a1 + 34));
  }

  v4 = *(&v16 + 1);
  v5 = v13 + *(a2 + 2) + *(&v16 + 1);
  if (*(a2 + 1) < v5)
  {
    re::DynamicArray<re::SyncCommit>::setCapacity(a2, v5);
    v4 = *(&v16 + 1);
  }

  if (v4)
  {
    v6 = v18;
    v7 = 72 * v4;
    do
    {
      re::DynamicArray<re::SyncCommit>::add(a2, v6);
      v6 += 72;
      v7 -= 72;
    }

    while (v7);
  }

  if (v13)
  {
    v8 = v15;
    v9 = 72 * v13;
    do
    {
      re::DynamicArray<re::SyncCommit>::add(a2, v8);
      v8 += 72;
      v9 -= 72;
    }

    while (v9);
  }

  re::DynamicArray<re::SyncCommit>::deinit(&v15 + 8);
  return re::DynamicArray<re::SyncCommit>::deinit(v12);
}

uint64_t re::SyncCommitChannel::endFrame(re::SyncCommitChannel *this, re::SyncCommitResult *a2)
{
  *(this + 2) = 0;
  v3 = *(this + 5);
  if (v3)
  {
    v5 = *(this + 7);
    v6 = v5 + 72 * v3;
    do
    {
      if (*(v5 + 48))
      {
        if (*this == 2)
        {
          v7 = re::SyncCommitResult::sharedCommit(a2, *(this + 4));
          if (*(v5 + 48))
          {
            v8 = v7;
            v9 = 0;
            v10 = 0;
            do
            {
              re::DynamicArray<re::internal::SyncSnapshotEntry>::add((v8 + 32), (*(v5 + 64) + v9));
              ++v10;
              v9 += 24;
            }

            while (v10 < *(v5 + 48));
          }
        }

        else
        {
          re::DynamicArray<re::SyncCommit>::add((a2 + 48), v5);
        }
      }

      v5 += 72;
    }

    while (v5 != v6);
  }

  return re::DynamicArray<re::SyncCommit>::clear(this + 24);
}

uint64_t re::SyncCommitChannel::newCommit(re::SyncCommitChannel *this)
{
  *(&v4 + 1) = *(this + 1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  LOBYTE(v4) = *(this + 4);
  re::DynamicArray<re::SyncCommit>::add((this + 24), &v4);
  v2 = *(this + 7) + 72 * *(this + 5) - 72;
  *(this + 2) = v2;
  re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v8);
  return v2;
}

unsigned __int8 *re::SyncCommitResult::sharedCommit(re::SyncCommitResult *this, int a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(this + 5);
    v5 = 72 * v3;
    while (*v4 != a2)
    {
      v4 += 72;
      v5 -= 72;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(&v7 + 1) = *this;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v13 = 0;
    memset(v11, 0, sizeof(v11));
    v12 = 0;
    LOBYTE(v7) = a2;
    re::DynamicArray<re::SyncCommit>::add((this + 8), &v7);
    v4 = (*(this + 5) + 72 * *(this + 3) - 72);
    re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(v11);
  }

  return v4;
}

_anonymous_namespace_ *re::TransportStream::TransportStream(_anonymous_namespace_ *a1, id *a2, uint64_t a3, uint64_t a4)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_2873F4E60;
  *(a1 + 3) = &unk_2873F4EB8;
  *(v8 + 32) = 0;
  objc_copyWeak((v8 + 32), a2);
  *(a1 + 5) = a3;
  *(a1 + 6) = a4;
  return a1;
}

void re::TransportStream::~TransportStream(re::TransportStream *this)
{
  *this = &unk_2873F4E60;
  v3 = (this + 32);
  v2 = *(this + 4);
  *(this + 3) = &unk_2873F4EB8;
  if (v2)
  {
    v4 = (v2 - 8);
  }

  else
  {
    v4 = 0;
  }

  re::Transport::removeStream(v4, *(this + 5), *(this + 6));
  objc_destroyWeak(v3);
  *v3 = 0;
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

uint64_t re::SharedAppSyncPacker::packCommit(unsigned __int8 *a1, unsigned __int8 *a2, re::BitWriter *this, uint64_t *a4, unint64_t a5)
{
  v7 = this;
  v97 = *MEMORY[0x277D85DE8];
  re::BitWriter::alignToByte(this);
  v11 = re::BitWriter::bytesLeft(v7, v10);
  LODWORD(v12) = *(v7 + 6);
  if (*(v7 + 7))
  {
    v12 = (v12 + 1);
  }

  else
  {
    v12 = v12;
  }

  v89 = v7;
  v90 = v12;
  v91 = 0;
  v13 = *(v7 + 1);
  v14 = &v79;
  v79 = &unk_2873F6A68;
  v80 = v13 + v12;
  v81 = 0;
  v82 = v11;
  v83 = &v89;
  v84 = re::SharedAppSyncPacker::packCommit(re::SyncCommit const&,re::BitWriter &,re::SyncObjectWriteContext const&,unsigned long)::$_0::__invoke;
  v85 = 0u;
  v86 = 0u;
  re::DynamicString::setCapacity(&v85, 0);
  v87 = 6;
  v88 = 0;
  v79 = &unk_2873F6BA8;
  v91 = &v79;
  if (*(a2 + 6) >= 0xFFFFFFFFuLL)
  {
    re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) ", "commit.snapshot.size() < ~uint32_t()", "writeCommit", 72);
    _os_crash("assertion failure: (commit.snapshot.size() < ~uint32_t()) ");
    __break(1u);
    goto LABEL_105;
  }

  LODWORD(v14) = v81;
  re::snapshot::EncoderOPACK::beginObject(&v79);
  v16 = v81;
  if (v81 >= v82)
  {
LABEL_105:
    re::snapshot::EncoderOPACK::writeInteger(&v79, 1);
    goto LABEL_7;
  }

  ++v81;
  *(v80 + v16) = 9;
LABEL_7:
  re::snapshot::EncoderOPACK::writeInteger(&v79, *a2);
  if ((*a2 & 2) != 0)
  {
    v17 = v81;
    if (v81 >= v82)
    {
      re::snapshot::EncoderOPACK::writeInteger(&v79, 2);
    }

    else
    {
      ++v81;
      *(v80 + v17) = 10;
    }

    re::snapshot::EncoderOPACK::writeInteger(&v79, *(a2 + 2));
  }

  re::snapshot::EncoderOPACK::endObject(&v79);
  re::snapshot::EncoderOPACK::beginObject(&v79);
  if (v81 >= v82 && (re::snapshot::BufferEncoder::grow(&v79, v81 + 1) & 1) == 0)
  {
    v72 = 0;
    v81 = v14;
    goto LABEL_96;
  }

  v76 = v7;
  if (*(a2 + 6) <= a5)
  {
    v77 = 0;
    v18 = 0;
    goto LABEL_95;
  }

  v75 = a1;
  v18 = 0;
  v77 = 0;
  while (1)
  {
    v19 = (*(a2 + 8) + 24 * a5);
    v20 = *v19;
    v21 = *(*(*(*v19 + 88) + 16) + 128);
    if (v21)
    {
      if (!(*(v21 + 16))(v21, a4))
      {
        ++v77;
        goto LABEL_72;
      }

      v20 = *v19;
    }

    v78 = v81;
    re::snapshot::EncoderOPACK::writeInteger(&v79, *(v20 + 24));
    if ((v19[16] & 2) != 0)
    {
      v22 = 5;
    }

    else
    {
      v22 = 1;
    }

    v23 = *(v20 + 80);
    v24 = v20;
    if (v23)
    {
      v25 = v20;
      do
      {
        v24 = v25;
        v25 = v23;
        if (*(*(v24[11] + 16) + 73))
        {
          break;
        }

        v23 = v23[10];
        v24 = v25;
      }

      while (v23);
    }

    if (!v24[20] && v24[17])
    {
      v22 |= 0x10u;
    }

    re::snapshot::EncoderOPACK::beginObject(&v79);
    v26 = v81;
    if (v81 >= v82)
    {
      re::snapshot::EncoderOPACK::writeInteger(&v79, 1);
    }

    else
    {
      ++v81;
      *(v80 + v26) = 9;
    }

    re::snapshot::EncoderOPACK::writeInteger(&v79, v22);
    v27 = *(v20 + 176);
    v28 = v81;
    if (v81 >= v82)
    {
      re::snapshot::EncoderOPACK::writeInteger(&v79, 2);
    }

    else
    {
      ++v81;
      *(v80 + v28) = 10;
    }

    re::snapshot::EncoderOPACK::writeInteger(&v79, v27);
    v29 = *(v20 + 80);
    if (v29)
    {
      v30 = (v29 + 8);
    }

    else
    {
      v31 = v81;
      if (v81 >= v82)
      {
        re::snapshot::EncoderOPACK::writeInteger(&v79, 3);
      }

      else
      {
        ++v81;
        *(v80 + v31) = 11;
      }

      re::snapshot::EncoderOPACK::beginObject(&v79);
      re::snapshotMapFields(&v79, (v20 + 136), v32);
      re::snapshot::EncoderOPACK::endObject(&v79);
    }

    v33 = *(*(*(v20 + 88) + 16) + 32);
    v34 = v81;
    if (v81 >= v82)
    {
      re::snapshot::EncoderOPACK::writeInteger(&v79, 6);
    }

    else
    {
      ++v81;
      *(v80 + v34) = 14;
    }

    re::snapshot::EncoderOPACK::writeInteger(&v79, v33);
    v35 = *(v20 + 80);
    if (v35)
    {
      v36 = (v35 + 8);

      v37 = *(v20 + 80);
      if (v37)
      {
        v38 = (v37 + 8);
      }

      v39 = *(*(*(v37 + 88) + 16) + 32);
      v40 = v81;
      if (v81 >= v82)
      {
        re::snapshot::EncoderOPACK::writeInteger(&v79, 8);
      }

      else
      {
        ++v81;
        *(v80 + v40) = 16;
      }

      re::snapshot::EncoderOPACK::writeInteger(&v79, v39);

      v41 = *(v20 + 80);
      if (v41)
      {
        v42 = (v41 + 8);
      }

      v43 = *(v41 + 24);
      v44 = v81;
      if (v81 >= v82)
      {
        re::snapshot::EncoderOPACK::writeInteger(&v79, 9);
      }

      else
      {
        ++v81;
        *(v80 + v44) = 17;
      }

      re::snapshot::EncoderOPACK::writeInteger(&v79, v43);
    }

    v45 = v81;
    if (v81 >= v82)
    {
      re::snapshot::EncoderOPACK::writeInteger(&v79, 11);
    }

    else
    {
      ++v81;
      *(v80 + v45) = 19;
    }

    LatestState = re::SyncObject::getLatestState(v20);
    if (LatestState)
    {
      v47 = LatestState;
      v48 = *(LatestState + 24);
      v49 = *(LatestState + 28) ? v48 + 1 : v48;
      re::snapshot::EncoderOPACK::beginData(&v79, v49, v49);
      v50 = *(v47 + 24);
      v51 = *(v47 + 28) ? v50 + 1 : v50;
      re::snapshot::BufferEncoder::writeRaw<true>(&v79, *(v47 + 8), v51);
    }

    else
    {
      v52 = *re::networkLogObjects(0);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v63 = *(v20 + 24);
        v64 = *(*(v20 + 88) + 16);
        v65 = v64[4];
        v66 = v64[6];
        v67 = v64[7];
        v68 = v64 + 49;
        if (v66)
        {
          v68 = v67;
        }

        *buf = 134218498;
        *&buf[4] = v63;
        v93 = 2048;
        v94 = v65;
        v95 = 2080;
        v96 = v68;
        _os_log_error_impl(&dword_26168F000, v52, OS_LOG_TYPE_ERROR, "Could not find latest state for object (id: %llu, type: %llu[%s]).", buf, 0x20u);
      }
    }

    v53 = re::snapshot::EncoderOPACK::endObject(&v79);
    if ((BYTE8(v85) & 1) != 0 ? *(&v85 + 1) >> 1 : BYTE8(v85) >> 1)
    {
      break;
    }

    if (v81 >= v82 && !re::snapshot::BufferEncoder::grow(&v79, v81 + 1))
    {
      goto LABEL_94;
    }

    ++v18;
    v55 = *a4;
    if (*a4)
    {
      v56 = v81;
      (*(*a4[1] + 32))(buf);
      v57 = *buf;
      if (*buf)
      {
      }

      v58 = *(*v19 + 80);
      v59 = *(*(*(*v19 + 88) + 16) + 32);
      v60 = *(*v19 + 24);
      if (v58)
      {
        v61 = *(v58 + 24);
      }

      else
      {
        v61 = 0;
      }

      v62 = (*(*v55 + 80))(v55);
      re::Event<re::NetworkSyncService,re::Session *,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned int>::raise(v62, v55, v57, a4[2], v59, v60, v61, 8 * (v56 - v78));
    }

LABEL_72:
    if (++a5 >= *(a2 + 6))
    {
      goto LABEL_95;
    }
  }

  v69 = *v75;
  v70 = *re::networkLogObjects(v53);
  if (v69 == 1)
  {
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      if (BYTE8(v85))
      {
        v71 = v86;
      }

      else
      {
        v71 = &v85 + 9;
      }

      *buf = 136315138;
      *&buf[4] = v71;
      _os_log_debug_impl(&dword_26168F000, v70, OS_LOG_TYPE_DEBUG, "Error writing OPACK object data: %s", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
  {
    if (BYTE8(v85))
    {
      v74 = v86;
    }

    else
    {
      v74 = &v85 + 9;
    }

    *buf = 136315138;
    *&buf[4] = v74;
    _os_log_error_impl(&dword_26168F000, v70, OS_LOG_TYPE_ERROR, "Error writing OPACK object data: %s", buf, 0xCu);
  }

LABEL_94:
  v81 = v78;
LABEL_95:
  re::snapshot::EncoderOPACK::endObject(&v79);
  v72 = v18 + v77;
  LODWORD(v14) = v81;
  v7 = v76;
LABEL_96:
  re::BitWriter::rollbackTo(v7, (v14 + v90));
  v79 = &unk_2873F6A68;
  if (v85 && (BYTE8(v85) & 1) != 0)
  {
    (*(*v85 + 40))();
  }

  return v72;
}

re::snapshot::BufferEncoder *re::snapshot::EncoderOPACK::beginObject(re::snapshot::BufferEncoder *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2 < *(this + 5))
  {
    goto LABEL_2;
  }

  this = re::snapshot::BufferEncoder::grow(this, v2 + 1);
  if (this)
  {
    LODWORD(v2) = *(v1 + 4);
LABEL_2:
    v3 = *(v1 + 1);
    *(v1 + 4) = v2 + 1;
    *(v3 + v2) = -17;
  }

  return this;
}

re::snapshot::BufferEncoder *re::snapshot::EncoderOPACK::endObject(re::snapshot::BufferEncoder *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2 < *(this + 5))
  {
    goto LABEL_2;
  }

  this = re::snapshot::BufferEncoder::grow(this, v2 + 1);
  if (this)
  {
    LODWORD(v2) = *(v1 + 4);
LABEL_2:
    v3 = *(v1 + 1);
    *(v1 + 4) = v2 + 1;
    *(v3 + v2) = 3;
  }

  return this;
}

void re::Event<re::NetworkSyncService,re::Session *,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned int>::raise(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = *(result + 20);
  *(result + 20) = v9 + 1;
  if (*(result + 2))
  {
    v11 = 0;
    do
    {
      if ((*(*(result + 4) + 32 * v11 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SyncViewManager,re::SyncView *>::Subscription>::removeStableAt(result, v11);
      }

      else
      {
        ++v11;
      }
    }

    while (v11 < *(result + 2));
    v9 = *(result + 20) - 1;
  }

  *(result + 20) = v9;
  if (!v9)
  {
    re::Event<re::SyncViewManager,re::SyncView *>::doDeferredActions(result);
  }
}

re::snapshot::BufferEncoder *re::snapshot::BufferEncoder::writeRaw<true>(re::snapshot::BufferEncoder *this, void *__src, size_t __len)
{
  v5 = this;
  v6 = *(this + 4);
  if (v6 + __len <= *(this + 5))
  {
    if (!__len)
    {
LABEL_4:
      *(v5 + 4) = v6 + __len;
      return this;
    }

LABEL_3:
    this = memmove((*(v5 + 1) + v6), __src, __len);
    LODWORD(v6) = *(v5 + 4);
    goto LABEL_4;
  }

  this = re::snapshot::BufferEncoder::grow(this, v6 + __len);
  if (this)
  {
    LODWORD(v6) = *(v5 + 4);
    if (!__len)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  return this;
}

uint64_t re::SharedAppSyncPacker::packCommit(re::SyncCommit const&,re::BitWriter &,re::SyncObjectWriteContext const&,unsigned long)::$_0::__invoke(re::BitWriter **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  re::BitWriter::rollbackTo(*a1, (*(a1[2] + 4) + v5));
  (*(*v4 + 16))(v4, a3);
  re::BitWriter::bytesLeft(v4, v6);
  return *(v4 + 1) + v5;
}

uint64_t re::snapshot::BufferEncoder::grow(re::snapshot::BufferEncoder *this, unint64_t a2)
{
  v4 = (*(this + 4))(*(this + 3), *(this + 1), a2);
  *(this + 1) = v4;
  *(this + 5) = v5;
  if (v4)
  {
    v6 = a2 > v5;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    re::snapshot::BufferEncoder::error(this, "couldn't grow buffer to %zu bytes (buffer = %p, capacity = %d)", a2, v4, v5);
  }

  return v7;
}

double re::SyncView::SyncView(re::SyncView *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_2873F4F30;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *&result = 0x7FFFFFFFLL;
  *(this + 76) = 0x7FFFFFFFLL;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  return result;
}

void re::SyncView::~SyncView(re::SyncView *this)
{
  *this = &unk_2873F4F30;
  while (*(this + 13))
  {
    re::SyncView::removeFromViewersAtWithoutNotifying(this, 0);
  }

  v2 = *(this + 11);
  if (v2)
  {
    if (*(this + 15))
    {
      (*(*v2 + 40))(v2);
    }

    *(this + 15) = 0;
    *(this + 12) = 0;
    *(this + 13) = 0;
    *(this + 11) = 0;
    ++*(this + 28);
  }

  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 5);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  re::SyncView::~SyncView(this);

  JUMPOUT(0x266708EC0);
}

uint64_t re::SyncView::removeFromViewersAtWithoutNotifying(uint64_t this, unint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = *(this + 104);
  if (v4 <= a2)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v7 = MEMORY[0x277D86220];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v21 = 789;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v4;
    _os_log_send_and_compose_impl(v12, &v17, &v26, 80, &dword_26168F000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_19;
  }

  v5 = *(*(this + 120) + 8 * a2);
  v6 = *(v5 + 40);
  v7 = *(v5 + 24);
  v8 = v6;
  if (v7)
  {
    v9 = 8 * v7;
    v8 = *(v5 + 40);
    while (*v8 != this)
    {
      v8 += 8;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_12;
      }
    }
  }

  v10 = &v6[8 * v7];
  if (v8 != v10)
  {
    v11 = v8 - v6;
    v2 = v11 >> 3;
    if (v7 > v11 >> 3)
    {
      if (v7 - 1 > v2)
      {
        *&v6[v11] = *(v10 - 1);
      }

      *(v5 + 24) = v7 - 1;
      ++*(v5 + 32);
      goto LABEL_12;
    }

LABEL_19:
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v13 = MEMORY[0x277D86220];
    v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "removeAt";
    v20 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 931;
    v22 = 2048;
    v23 = v2;
    v24 = 2048;
    v25 = v7;
    _os_log_send_and_compose_impl(v15, &v17, &v26, 80, &dword_26168F000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
  }

LABEL_12:
  if (v4 - 1 > a2)
  {
    *(*(this + 120) + 8 * a2) = *(*(this + 120) + 8 * v4 - 8);
  }

  *(this + 104) = v4 - 1;
  ++*(this + 112);
  return this;
}

void re::SyncView::addViewer(re::SyncViewer ***this, re::SyncViewer *a2)
{
  v3 = this;
  v4 = this[13];
  if (v4)
  {
    v5 = 8 * v4;
    v6 = this[15];
    while (*v6 != a2)
    {
      ++v6;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v6 = this[15];
  }

  if (v6 != &this[15][v4])
  {
    v7 = *re::networkLogObjects(this);
    this = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (this)
    {
      v26[0] = 0;
      _os_log_impl(&dword_26168F000, v7, OS_LOG_TYPE_DEFAULT, "SyncViewer already viewing this View", v26, 2u);
    }
  }

LABEL_10:
  v8 = v3[12];
  v9 = v3[13];
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (v3[11])
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        this = re::DynamicArray<re::Allocator const*>::setCapacity(v3 + 11, v14);
      }

      else
      {
        this = re::DynamicArray<re::Allocator const*>::setCapacity(v3 + 11, v10);
        ++*(v3 + 28);
      }
    }

    v9 = v3[13];
  }

  v3[15][v9] = a2;
  v3[13] = (v9 + 1);
  ++*(v3 + 28);
  v15 = *(a2 + 2);
  v16 = *(a2 + 3);
  if (v16 >= v15)
  {
    v17 = v16 + 1;
    if (v15 < v16 + 1)
    {
      if (*(a2 + 1))
      {
        v18 = 2 * v15;
        v12 = v15 == 0;
        v19 = 8;
        if (!v12)
        {
          v19 = v18;
        }

        if (v19 <= v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        re::DynamicArray<re::Allocator const*>::setCapacity(a2 + 1, v20);
      }

      else
      {
        re::DynamicArray<re::Allocator const*>::setCapacity(a2 + 1, v17);
        ++*(a2 + 8);
      }
    }

    v16 = *(a2 + 3);
  }

  *(*(a2 + 5) + 8 * v16) = v3;
  *(a2 + 3) = v16 + 1;
  ++*(a2 + 8);
  v21 = *(v3 + 18);
  if (v21)
  {
    v22 = 0;
    v23 = (v3[7] + 1);
    while (1)
    {
      v24 = *v23;
      v23 += 6;
      if (v24 < 0)
      {
        break;
      }

      if (v21 == ++v22)
      {
        LODWORD(v22) = *(v3 + 18);
        break;
      }
    }
  }

  else
  {
    LODWORD(v22) = 0;
  }

  while (v22 != v21)
  {
    (*(*a2 + 24))(a2, v3[7][3 * v22 + 2]);
    v25 = *(v3 + 18);
    if (v25 <= v22 + 1)
    {
      v25 = v22 + 1;
    }

    while (v25 - 1 != v22)
    {
      LODWORD(v22) = v22 + 1;
      if ((v3[7][3 * v22 + 1] & 0x80000000) != 0)
      {
        goto LABEL_45;
      }
    }

    LODWORD(v22) = v25;
LABEL_45:
    ;
  }
}

uint64_t re::SyncView::removeViewer(uint64_t this, re::SyncViewer *a2)
{
  v3 = this;
  v4 = *(this + 120);
  v5 = *(this + 104);
  if (v5)
  {
    v6 = 8 * v5;
    for (i = *(this + 120); *i != a2; ++i)
    {
      v6 -= 8;
      if (!v6)
      {
        return this;
      }
    }
  }

  else
  {
    i = *(this + 120);
  }

  if (i != (v4 + 8 * v5))
  {
    v8 = (i - v4) >> 3;
    v9 = *(this + 72);
    if (v9)
    {
      v10 = 0;
      v11 = (*(this + 56) + 8);
      while (1)
      {
        v12 = *v11;
        v11 += 6;
        if (v12 < 0)
        {
          break;
        }

        if (v9 == ++v10)
        {
          LODWORD(v10) = *(this + 72);
          break;
        }
      }
    }

    else
    {
      LODWORD(v10) = 0;
    }

    while (v10 != v9)
    {
      (*(*a2 + 32))(a2, *(*(v3 + 56) + 24 * v10 + 16));
      v13 = *(v3 + 72);
      if (v13 <= v10 + 1)
      {
        v13 = v10 + 1;
      }

      while (v13 - 1 != v10)
      {
        LODWORD(v10) = v10 + 1;
        if ((*(*(v3 + 56) + 24 * v10 + 8) & 0x80000000) != 0)
        {
          goto LABEL_22;
        }
      }

      LODWORD(v10) = v13;
LABEL_22:
      ;
    }

    return re::SyncView::removeFromViewersAtWithoutNotifying(v3, v8);
  }

  return this;
}

uint64_t re::SyncView::removeFromViewersWithoutNotifying(re::SyncView *this, re::SyncViewer *a2)
{
  v2 = *(this + 15);
  v3 = *(this + 13);
  if (v3)
  {
    v4 = 8 * v3;
    for (i = *(this + 15); *i != a2; ++i)
    {
      v4 -= 8;
      if (!v4)
      {
        return 0;
      }
    }
  }

  else
  {
    i = *(this + 15);
  }

  if (i == (v2 + 8 * v3))
  {
    return 0;
  }

  re::SyncView::removeFromViewersAtWithoutNotifying(this, (i - v2) >> 3);
  return 1;
}

void re::HashSetBase<re::SyncViewable *,re::SyncViewable *,re::internal::ValueAsKey<re::SyncViewable *>,re::Hash<re::SyncViewable *>,re::EqualTo<re::SyncViewable *>,true,false>::add(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(a1 + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a1 + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return;
      }

      while (1)
      {
        LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 24 * v9 + 16) == v4)
        {
          return;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v11 = *(a1 + 36);
  if (v11 == 0x7FFFFFFF)
  {
    v11 = *(a1 + 32);
    v12 = v11;
    if (v11 == v7)
    {
      re::HashSetBase<re::SyncViewer *,re::SyncViewer *,re::internal::ValueAsKey<re::SyncViewer *>,re::Hash<re::SyncViewer *>,re::EqualTo<re::SyncViewer *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      LODWORD(v8) = v6 % *(a1 + 24);
      v12 = *(a1 + 32);
      v4 = *a2;
    }

    *(a1 + 32) = v12 + 1;
    v13 = *(a1 + 16);
    v14 = *(v13 + 24 * v11 + 8);
  }

  else
  {
    v13 = *(a1 + 16);
    v14 = *(v13 + 24 * v11 + 8);
    *(a1 + 36) = v14 & 0x7FFFFFFF;
  }

  *(v13 + 24 * v11 + 8) = v14 | 0x80000000;
  *(*(a1 + 16) + 24 * v11 + 8) = *(*(a1 + 16) + 24 * v11 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * v8);
  *(*(a1 + 16) + 24 * v11) = v6;
  *(*(a1 + 16) + 24 * v11 + 16) = v4;
  *(*(a1 + 8) + 4 * v8) = v11;
  ++*(a1 + 28);
  ++*(a1 + 40);
}

void re::SyncView::removeObject(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  if (re::HashSetBase<re::SyncViewer *,re::SyncViewer *,re::internal::ValueAsKey<re::SyncViewer *>,re::Hash<re::SyncViewer *>,re::EqualTo<re::SyncViewer *>,true,false>::remove(a1 + 40, &v8))
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      v4 = *(a1 + 120);
      v5 = 8 * v3;
      do
      {
        v6 = *v4++;
        (*(*v6 + 32))(v6, v8);
        v5 -= 8;
      }

      while (v5);
    }

    v7 = v8;
    if (*v8)
    {

      *v7 = 0;
    }
  }
}

void re::SyncView::transferObject(void *a1, uint64_t *a2)
{
  v36 = a2;
  v3 = *a2;
  if (*a2)
  {
    if (v3 == a1)
    {
      return;
    }

    re::HashSetBase<re::SyncViewer *,re::SyncViewer *,re::internal::ValueAsKey<re::SyncViewer *>,re::Hash<re::SyncViewer *>,re::EqualTo<re::SyncViewer *>,true,false>::remove(v3 + 40, &v36);
    re::HashSetBase<re::SyncViewable *,re::SyncViewable *,re::internal::ValueAsKey<re::SyncViewable *>,re::Hash<re::SyncViewable *>,re::EqualTo<re::SyncViewable *>,true,false>::add((a1 + 5), &v36);
    if (a1)
    {
      v4 = a1 + 1;
    }

    v5 = *v36;
    *v36 = a1;
    if (v5)
    {
    }

    __dst = 0;
    v32[1] = 0;
    v33 = 0;
    v32[0] = 0;
    v34 = 0;
    if (*(v3 + 88))
    {
      v6 = *(v3 + 104);
      v32[0] = *(v3 + 88);
      re::DynamicArray<re::Allocator const*>::setCapacity(v32, v6);
      ++v34;
      v7 = *(v3 + 104);
      if (v7 >= v33)
      {
        re::DynamicArray<re::Allocator const*>::setCapacity(v32, *(v3 + 104));
        v17 = v33;
        v8 = __dst;
        if (v33)
        {
          v18 = 8 * v33;
          memmove(__dst, *(v3 + 120), 8 * v33);
        }

        else
        {
          v18 = 0;
        }

        memcpy(&v8[v17], (*(v3 + 120) + v18), 8 * (v7 - v17));
        v33 = v7;
        v9 = &v8[v7];
        if (v7)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v8 = __dst;
        if (v7)
        {
          memmove(__dst, *(v3 + 120), 8 * v7);
          v33 = v7;
          v9 = &v8[v7];
LABEL_25:
          v19 = 126 - 2 * __clz(v7);
          v20 = 1;
LABEL_27:
          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::SyncViewer **,false>(v8, v9, v19, 1);
          v21 = a1[13];
          v22 = 126 - 2 * __clz(v21);
          if (v21)
          {
            v23 = v22;
          }

          else
          {
            v23 = 0;
          }

          std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::SyncViewer **,false>(a1[15], (a1[15] + 8 * v21), v23, 1);
          v24 = a1[15];
          v25 = a1[13];
          if ((v20 & 1) != 0 || v25)
          {
            v26 = &v24[v25];
            v27 = v8;
            do
            {
              if (v27 == v9)
              {
                v30 = *v24++;
                (*(*v30 + 24))(v30, v36);
                v27 = v9;
              }

              else if (v24 == v26)
              {
                v31 = *v27++;
                (*(*v31 + 32))(v31, v36);
                v24 = v26;
              }

              else
              {
                v28 = *v24;
                v29 = *v27;
                if (*v24 >= *v27)
                {
                  if (v29 >= v28)
                  {
                    ++v24;
                  }

                  else
                  {
                    (*(*v29 + 32))(v29, v36);
                  }

                  ++v27;
                }

                else
                {
                  (*(*v28 + 24))(*v24++, v36);
                }
              }
            }

            while (v27 != v9 || v24 != v26);
          }

          if (v8)
          {
            if (v32[0])
            {
              (*(*v32[0] + 40))(v32[0], v8);
            }
          }

          return;
        }

        v33 = 0;
        v9 = __dst;
      }
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v20 = 0;
    v19 = 0;
    goto LABEL_27;
  }

  v32[0] = a2;
  re::HashSetBase<re::SyncViewable *,re::SyncViewable *,re::internal::ValueAsKey<re::SyncViewable *>,re::Hash<re::SyncViewable *>,re::EqualTo<re::SyncViewable *>,true,false>::add((a1 + 5), v32);
  if (a1)
  {
    v11 = a1 + 1;
  }

  v12 = *a2;
  *a2 = a1;
  if (v12)
  {
  }

  v13 = a1[13];
  if (v13)
  {
    v14 = a1[15];
    v15 = 8 * v13;
    do
    {
      v16 = *v14++;
      (*(*v16 + 24))(v16, a2);
      v15 -= 8;
    }

    while (v15);
  }
}

void re::SyncViewer::~SyncViewer(re::SyncView ***this)
{
  *this = &unk_2873F4F60;
  while (this[3])
  {
    re::SyncView::removeFromViewersWithoutNotifying(*this[5], this);
  }

  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit((this + 1));
}

BOOL re::SyncViewer::includes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  if (v2)
  {
    v3 = 8 * v2;
    for (i = *(a2 + 120); *i != a1; ++i)
    {
      v3 -= 8;
      if (!v3)
      {
        return 0;
      }
    }
  }

  else
  {
    i = *(a2 + 120);
  }

  return i != (*(a2 + 120) + 8 * v2);
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::SyncViewer **,false>(unint64_t result, unint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v70 = *(a2 - 1);
        v71 = *v8;
        if (v70 < *v8)
        {
          *v8 = v70;
          *(a2 - 1) = v71;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v75 = v8 + 1;
      v76 = v8[1];
      v77 = v8 + 2;
      v78 = v8[2];
      v79 = *v8;
      if (v76 >= *v8)
      {
        if (v78 >= v76)
        {
          goto LABEL_187;
        }

        *v75 = v78;
        *v77 = v76;
        v80 = v8;
        v81 = v8 + 1;
        result = v76;
        if (v78 < v79)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v80 = v8;
        v81 = v8 + 2;
        result = *v8;
        if (v78 >= v76)
        {
          *v8 = v76;
          v8[1] = v79;
          v80 = v8 + 1;
          v81 = v8 + 2;
          result = v79;
          if (v78 >= v79)
          {
LABEL_187:
            v76 = v78;
            goto LABEL_188;
          }
        }

LABEL_180:
        *v80 = v78;
        *v81 = v79;
        v76 = result;
      }

LABEL_188:
      v123 = *(a2 - 1);
      if (v123 < v76)
      {
        *v77 = v123;
        *(a2 - 1) = v76;
        v124 = *v77;
        v125 = *v75;
        if (v124 < v125)
        {
          v8[1] = v124;
          v8[2] = v125;
          v126 = *v8;
          if (v124 < *v8)
          {
            *v8 = v124;
            v8[1] = v126;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {
      v61 = v8 + 1;
      v62 = v8[1];
      v64 = v8 + 2;
      v63 = v8[2];
      v65 = *v8;
      if (v62 >= *v8)
      {
        if (v63 >= v62)
        {
          v68 = *v8;
          v65 = v8[1];
        }

        else
        {
          v66 = v8;
          v67 = v8 + 1;
          *v61 = v63;
          *v64 = v62;
          v68 = v63;
          result = v65;
          v69 = v62;
          if (v63 < v65)
          {
            goto LABEL_193;
          }

          v68 = v65;
          v65 = v63;
          v63 = v62;
        }
      }

      else
      {
        if (v63 < v62)
        {
          v66 = v8;
          v67 = v8 + 2;
          v68 = v8[2];
          result = v8[1];
          v69 = *v8;
          goto LABEL_193;
        }

        v66 = v8 + 1;
        v67 = v8 + 2;
        *v8 = v62;
        v8[1] = v65;
        v68 = v62;
        result = v63;
        v69 = v65;
        if (v63 >= v65)
        {
          v68 = v62;
        }

        else
        {
LABEL_193:
          *v66 = v63;
          *v67 = v65;
          v65 = result;
          v63 = v69;
        }
      }

      v128 = v8[3];
      if (v128 >= v63)
      {
        v63 = v8[3];
      }

      else
      {
        v8[2] = v128;
        v8[3] = v63;
        if (v128 < v65)
        {
          *v61 = v128;
          *v64 = v65;
          if (v128 < v68)
          {
            *v8 = v128;
            v8[1] = v68;
          }
        }
      }

      v129 = *(a2 - 1);
      if (v129 >= v63)
      {
        return result;
      }

      v8[3] = v129;
      *(a2 - 1) = v63;
      v130 = v8[2];
      v120 = v8[3];
      if (v120 >= v130)
      {
        return result;
      }

      v8[2] = v120;
      v8[3] = v130;
      v131 = v8[1];
      if (v120 >= v131)
      {
        return result;
      }

      v8[1] = v120;
      v8[2] = v131;
LABEL_208:
      v132 = *v8;
      if (v120 < *v8)
      {
        *v8 = v120;
        v8[1] = v132;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v82 = v8 + 1;
      v84 = v8 == a2 || v82 == a2;
      if (a4)
      {
        if (!v84)
        {
          v85 = 8;
          v86 = v8;
          do
          {
            v88 = *v86;
            v87 = v86[1];
            v86 = v82;
            if (v87 < v88)
            {
              v89 = v85;
              while (1)
              {
                *(v8 + v89) = v88;
                v90 = v89 - 8;
                if (v89 == 8)
                {
                  break;
                }

                v88 = *(v8 + v89 - 16);
                v89 -= 8;
                if (v87 >= v88)
                {
                  v91 = (v8 + v90);
                  goto LABEL_129;
                }
              }

              v91 = v8;
LABEL_129:
              *v91 = v87;
            }

            v82 = v86 + 1;
            v85 += 8;
          }

          while (v86 + 1 != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v122 = *v7;
          v121 = v7[1];
          v7 = v82;
          if (v121 < v122)
          {
            do
            {
              *v82 = v122;
              v122 = *(v82 - 2);
              --v82;
            }

            while (v121 < v122);
            *v82 = v121;
          }

          v82 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v92 = (v9 - 2) >> 1;
        v93 = v92;
        do
        {
          v94 = v93;
          if (v92 >= v93)
          {
            v95 = (2 * v93) | 1;
            v96 = &v8[v95];
            if (2 * v94 + 2 >= v9)
            {
              v97 = *v96;
            }

            else
            {
              v97 = v96[1];
              v98 = *v96 >= v97;
              if (*v96 < v97)
              {
                ++v96;
              }

              else
              {
                v97 = *v96;
              }

              if (!v98)
              {
                v95 = 2 * v94 + 2;
              }
            }

            v99 = &v8[v94];
            v100 = *v99;
            if (v97 >= *v99)
            {
              do
              {
                *v99 = v97;
                v99 = v96;
                if (v92 < v95)
                {
                  break;
                }

                v101 = (2 * v95) | 1;
                v96 = &v8[v101];
                v95 = 2 * v95 + 2;
                if (v95 >= v9)
                {
                  v97 = *v96;
                  v95 = v101;
                }

                else
                {
                  v97 = *v96;
                  result = v96[1];
                  if (*v96 >= result)
                  {
                    v95 = v101;
                  }

                  else
                  {
                    v97 = v96[1];
                    ++v96;
                  }
                }
              }

              while (v97 >= v100);
              *v99 = v100;
            }
          }

          v93 = v94 - 1;
        }

        while (v94);
        do
        {
          v102 = 0;
          v103 = *v8;
          v104 = v8;
          do
          {
            v105 = &v104[v102];
            v106 = v105 + 1;
            v107 = (2 * v102) | 1;
            v102 = 2 * v102 + 2;
            if (v102 >= v9)
            {
              v108 = *v106;
              v102 = v107;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              v108 = v110;
              v111 = *(v109 - 1);
              v112 = v111 >= v110;
              if (v111 < v110)
              {
                v106 = v109;
              }

              else
              {
                v108 = *(v109 - 1);
              }

              if (v112)
              {
                v102 = v107;
              }
            }

            *v104 = v108;
            v104 = v106;
          }

          while (v102 <= ((v9 - 2) >> 1));
          if (v106 == --a2)
          {
            *v106 = v103;
          }

          else
          {
            *v106 = *a2;
            *a2 = v103;
            v113 = (v106 - v8 + 8) >> 3;
            v114 = v113 < 2;
            v115 = v113 - 2;
            if (!v114)
            {
              v116 = v115 >> 1;
              v117 = &v8[v116];
              v118 = *v117;
              v119 = *v106;
              if (*v117 < *v106)
              {
                do
                {
                  *v106 = v118;
                  v106 = v117;
                  if (!v116)
                  {
                    break;
                  }

                  v116 = (v116 - 1) >> 1;
                  v117 = &v8[v116];
                  v118 = *v117;
                }

                while (*v117 < v119);
                *v106 = v119;
              }
            }
          }

          v114 = v9-- <= 2;
        }

        while (!v114);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      v14 = *v8;
      if (*v10 >= *v8)
      {
        if (v12 < v13)
        {
          *v10 = v12;
          *(a2 - 1) = v13;
          v17 = *v8;
          if (*v10 < *v8)
          {
            *v8 = *v10;
            *v10 = v17;
          }
        }
      }

      else
      {
        if (v12 < v13)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v13;
        *v10 = v14;
        v19 = *(a2 - 1);
        if (v19 < v14)
        {
          *v10 = v19;
LABEL_27:
          *(a2 - 1) = v14;
        }
      }

      v20 = v10 - 1;
      v21 = *(v10 - 1);
      v22 = v8[1];
      v23 = *(a2 - 2);
      if (v21 >= v22)
      {
        if (v23 < v21)
        {
          *v20 = v23;
          *(a2 - 2) = v21;
          v24 = v8[1];
          if (*v20 < v24)
          {
            v8[1] = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v23 < v21)
        {
          v8[1] = v23;
          goto LABEL_39;
        }

        v8[1] = v21;
        *v20 = v22;
        v26 = *(a2 - 2);
        if (v26 < v22)
        {
          *v20 = v26;
LABEL_39:
          *(a2 - 2) = v22;
        }
      }

      v29 = v10[1];
      v27 = v10 + 1;
      v28 = v29;
      v30 = v8[2];
      v31 = *(a2 - 3);
      if (v29 >= v30)
      {
        if (v31 < v28)
        {
          *v27 = v31;
          *(a2 - 3) = v28;
          v32 = v8[2];
          if (*v27 < v32)
          {
            v8[2] = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[2] = v31;
          goto LABEL_48;
        }

        v8[2] = v28;
        *v27 = v30;
        v33 = *(a2 - 3);
        if (v33 < v30)
        {
          *v27 = v33;
LABEL_48:
          *(a2 - 3) = v30;
        }
      }

      v34 = *v11;
      v35 = *v20;
      v36 = *v27;
      if (*v11 >= *v20)
      {
        if (v36 >= v34)
        {
          goto LABEL_56;
        }

        *v11 = v36;
        *v27 = v34;
        v27 = v11;
        v34 = v35;
        if (v36 >= v35)
        {
          v34 = v36;
          goto LABEL_56;
        }
      }

      else if (v36 >= v34)
      {
        *v20 = v34;
        *v11 = v35;
        v20 = v11;
        v34 = v36;
        if (v36 >= v35)
        {
          v34 = v35;
LABEL_56:
          v37 = *v8;
          *v8 = v34;
          *v11 = v37;
          goto LABEL_57;
        }
      }

      *v20 = v36;
      *v27 = v35;
      goto LABEL_56;
    }

    v15 = *v8;
    v16 = *v11;
    if (*v8 >= *v11)
    {
      if (v12 < v15)
      {
        *v8 = v12;
        *(a2 - 1) = v15;
        v18 = *v11;
        if (*v8 < *v11)
        {
          *v11 = *v8;
          *v8 = v18;
        }
      }

      goto LABEL_57;
    }

    if (v12 >= v15)
    {
      *v11 = v15;
      *v8 = v16;
      v25 = *(a2 - 1);
      if (v25 >= v16)
      {
        goto LABEL_57;
      }

      *v8 = v25;
    }

    else
    {
      *v11 = v12;
    }

    *(a2 - 1) = v16;
LABEL_57:
    --a3;
    v38 = *v8;
    if ((a4 & 1) != 0 || *(v8 - 1) < v38)
    {
      v39 = 0;
      do
      {
        v40 = v8[++v39];
      }

      while (v40 < v38);
      v41 = &v8[v39];
      v42 = a2;
      if (v39 == 1)
      {
        v42 = a2;
        do
        {
          if (v41 >= v42)
          {
            break;
          }

          v44 = *--v42;
        }

        while (v44 >= v38);
      }

      else
      {
        do
        {
          v43 = *--v42;
        }

        while (v43 >= v38);
      }

      if (v41 >= v42)
      {
        v50 = v41 - 1;
      }

      else
      {
        v45 = *v42;
        v46 = &v8[v39];
        v47 = v42;
        do
        {
          *v46 = v45;
          *v47 = v40;
          do
          {
            v48 = v46[1];
            ++v46;
            v40 = v48;
          }

          while (v48 < v38);
          do
          {
            v49 = *--v47;
            v45 = v49;
          }

          while (v49 >= v38);
        }

        while (v46 < v47);
        v50 = v46 - 1;
      }

      if (v50 != v8)
      {
        *v8 = *v50;
      }

      *v50 = v38;
      if (v41 < v42)
      {
        goto LABEL_80;
      }

      v51 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::SyncViewer **>(v8, v50);
      v8 = v50 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::SyncViewer **>(v50 + 1, a2);
      if (result)
      {
        a2 = v50;
        if (!v51)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v51)
      {
LABEL_80:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::SyncViewer **,false>(v7, v50, a3, a4 & 1);
        a4 = 0;
        v8 = v50 + 1;
      }
    }

    else
    {
      if (v38 >= *(a2 - 1))
      {
        v53 = (v8 + 1);
        do
        {
          v8 = v53;
          if (v53 >= a2)
          {
            break;
          }

          v53 += 8;
        }

        while (v38 >= *v8);
      }

      else
      {
        do
        {
          v52 = v8[1];
          ++v8;
        }

        while (v38 >= v52);
      }

      v54 = a2;
      if (v8 < a2)
      {
        v54 = a2;
        do
        {
          v55 = *--v54;
        }

        while (v38 < v55);
      }

      if (v8 < v54)
      {
        v56 = *v8;
        v57 = *v54;
        do
        {
          *v8 = v57;
          *v54 = v56;
          do
          {
            v58 = v8[1];
            ++v8;
            v56 = v58;
          }

          while (v38 >= v58);
          do
          {
            v59 = *--v54;
            v57 = v59;
          }

          while (v38 < v59);
        }

        while (v8 < v54);
      }

      v60 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v60;
      }

      a4 = 0;
      *v60 = v38;
    }
  }

  v72 = *v8;
  v73 = v8[1];
  v74 = *(a2 - 1);
  if (v73 >= *v8)
  {
    if (v74 >= v73)
    {
      return result;
    }

    v8[1] = v74;
    *(a2 - 1) = v73;
    v120 = v8[1];
    goto LABEL_208;
  }

  if (v74 >= v73)
  {
    *v8 = v73;
    v8[1] = v72;
    v127 = *(a2 - 1);
    if (v127 >= v72)
    {
      return result;
    }

    v8[1] = v127;
  }

  else
  {
    *v8 = v74;
  }

  *(a2 - 1) = v72;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::SyncViewer **>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 24; ; i += 8)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v38 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

uint64_t re::SyncSendBuffer::SyncSendBuffer(uint64_t a1, id *a2, id *a3, uint64_t a4)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_2873F4FC0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0x7FFFFFFFLL;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0x7FFFFFFFLL;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 196) = 0x7FFFFFFFLL;
  *(a1 + 208) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 264) = 0;
  *(a1 + 256) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 229) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  objc_copyWeak((a1 + 280), a2);
  *(a1 + 288) = 0;
  objc_copyWeak((a1 + 288), a3);
  *(a1 + 296) = a4;
  if (a4)
  {
    v8 = (a4 + 8);
  }

  *(a1 + 304) = 500;
  return a1;
}

void re::SyncSendBuffer::resend(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
  v116 = *MEMORY[0x277D85DE8];
  v111 = *(a1 + 144);
  if (v111)
  {
    v7 = 0;
    v8 = *(a1 + 128);
    while ((*v8 & 0x80000000) == 0)
    {
      v8 += 244;
      if (v111 == ++v7)
      {
        LODWORD(v7) = *(a1 + 144);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  v9 = *(a1 + 144);
  if (v7 != v111)
  {
    v10 = a4 + 4;
    do
    {
      v11 = *(a1 + 128) + 976 * v7;
      v12 = v11 + 16;
      v13 = *(v11 + 624) - 32;
      v14 = v11 + 528;
      v15 = v11 + 592;
      do
      {
        v16 = v13 & 0x1F;
        if (*(v14 + 2 * v16) == v13 && *(v15 + v16) == 1)
        {
          if ((v17 = *a4, v18 = v17 - v13, v17 >= v13) && v18 < 0x8000 || v17 < v13 && v13 - v17 >= 0x8000)
          {
            v19 = v18 >= 0x8000 ? v18 + 0x10000 : v18;
            if (v19 <= 0xFF && ((*&v10[4 * re::Bitset<256>::toWordIndex((a4 + 4), v19)] >> v19) & 1) != 0)
            {
              *(v12 + 16 * v16 + 10) = 1;
            }
          }
        }

        ++v13;
      }

      while (*(v12 + 608) != v13);
      v9 = *(a1 + 144);
      if (v9 <= v7 + 1)
      {
        v20 = v7 + 1;
      }

      else
      {
        v20 = *(a1 + 144);
      }

      while (v20 - 1 != v7)
      {
        LODWORD(v7) = v7 + 1;
        if ((*(*(a1 + 128) + 976 * v7) & 0x80000000) != 0)
        {
          goto LABEL_30;
        }
      }

      LODWORD(v7) = v20;
LABEL_30:
      ;
    }

    while (v7 != v111);
  }

  if (!a3)
  {
    goto LABEL_46;
  }

  v21 = a2;
  do
  {
    v22 = *(v21 + 48);
    if (v22)
    {
      v23 = *(v21 + 64);
      v24 = &v23[3 * v22];
      do
      {
        v25 = *v23;
        *buf = v25;
        v26 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v25 ^ (v25 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v25 ^ (v25 >> 30))) >> 27));
        v27 = v26 ^ (v26 >> 31);
        v28 = *(a1 + 184);
        if (v28)
        {
          v29 = v27 % v28;
          v30 = *(*(a1 + 168) + 4 * (v27 % v28));
          if (v30 != 0x7FFFFFFF)
          {
            v31 = *(a1 + 176);
            while (*(v31 + 24 * v30 + 16) != v25)
            {
              LODWORD(v30) = *(v31 + 24 * v30 + 8) & 0x7FFFFFFF;
              if (v30 == 0x7FFFFFFF)
              {
                goto LABEL_42;
              }
            }

            goto LABEL_43;
          }
        }

        else
        {
          LODWORD(v29) = 0;
        }

LABEL_42:
        re::HashSetBase<re::SyncObject *,re::SyncObject *,re::internal::ValueAsKey<re::SyncObject *>,re::Hash<re::SyncObject *>,re::EqualTo<re::SyncObject *>,true,false>::addAsMove(a1 + 160, v29, v27, buf);
        ++*(a1 + 200);
LABEL_43:
        v23 += 3;
      }

      while (v23 != v24);
    }

    v21 += 72;
  }

  while (v21 != a2 + 72 * a3);
  v9 = *(a1 + 144);
LABEL_46:
  if (v9)
  {
    v32 = 0;
    v33 = *(a1 + 128);
    while ((*v33 & 0x80000000) == 0)
    {
      v33 += 244;
      if (v9 == ++v32)
      {
        LODWORD(v32) = v9;
        break;
      }
    }
  }

  else
  {
    LODWORD(v32) = 0;
  }

  if (v32 != v9)
  {
    v106 = v9;
    do
    {
      v34 = *(a1 + 128) + 976 * v32;
      v36 = *(v34 + 8);
      v35 = (v34 + 8);
      v37 = re::SyncObject::latestStateHandle(v36);
      v112 = v35;
      if (v37 == -1)
      {
        v62 = *re::networkLogObjects(0xFFFFFFFFFFFFFFFFLL);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v63 = *(*v35 + 24);
          v64 = *(*(*v35 + 88) + 16);
          v65 = v64[4];
          v66 = v64[6];
          v67 = v64[7];
          v68 = v64 + 49;
          if (v66)
          {
            v68 = v67;
          }

          *buf = 134218498;
          *&buf[4] = v63;
          *&buf[12] = 2048;
          *&buf[14] = v65;
          v114 = 2080;
          v115 = v68;
          _os_log_error_impl(&dword_26168F000, v62, OS_LOG_TYPE_ERROR, "Sync object without snapshot among snapshot resend entries (id: %llu, type: %llu[%s]).", buf, 0x20u);
        }
      }

      else
      {
        v38 = v35 + 4;
        v39 = v35[308];
        v40 = v39 - 32;
        v41 = (v39 - 32);
        v42 = v35;
        if (v39 > 0x1F || v41 - v39 >= 0x8000)
        {
          v43 = v35[308];
          v44 = v35[308];
          while (v44 <= v40 || !((v43 - v41) >> 15))
          {
            v45 = --v44 & 0x1F;
            if (v35[v45 + 260] == v44 && *(v35 + v45 + 584) == 1)
            {
              v46 = &v38[8 * v45];
              goto LABEL_65;
            }

            v43 = v44;
            if (v44 <= v40 && !((v41 - v44) >> 15))
            {
              break;
            }
          }
        }

        v46 = 0;
LABEL_65:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = (*(*v42 + 128) >> 2) & 1;
        v51 = *(*v42 + 176);
        v52 = v111;
        do
        {
          v53 = v40 & 0x1F;
          if (v38[v53 + 256] == v40 && *(v38 + v53 + 576) == 1)
          {
            v54 = &v38[8 * v53];
            v49 = *(v54 + 10);
            if (v49)
            {
              v55 = v46;
              WeakRetained = objc_loadWeakRetained((a1 + 288));
              if (WeakRetained)
              {
                v57 = WeakRetained;
                re::SyncAckedStateBuffer::addAcked(WeakRetained - 8, v112, *v54, v54[6]);
              }

              v37 = *v54;
              v46 = v55;
              v58 = *v54 == *v55 && *(v54 + 9) == *(v55 + 9) && v54[6] == v55[6];
              v47 |= v58;
              v49 = *(v54 + 10);
              LOWORD(v39) = v38[304];
            }

            else
            {
              v37 = *v54;
            }

            v48 = *(v54 + 8);
            LOBYTE(v50) = *(v54 + 9);
            v52 = *(v54 + 11);
            v51 = v54[6];
          }

          ++v40;
        }

        while (v40 != v39);
        v59 = *v112;
        v60 = *(*v112 + 80);
        if (v60)
        {
          v110 = v50;
          v108 = v37;
          LODWORD(v111) = v52;
          do
          {
            v61 = v59;
            v59 = v60;
            if (*(*(*(v61 + 88) + 16) + 73))
            {
              break;
            }

            v60 = *(v60 + 80);
            v61 = v59;
          }

          while (v60);
        }

        else
        {
          v110 = v50;
          v108 = v37;
          LODWORD(v111) = v52;
          v61 = *v112;
        }

        v69 = v47 | *(v61 + 170) ^ 1;
        v70 = objc_loadWeakRetained((a1 + 288));
        if (v70)
        {
          v71 = v70;
          if (v69 & 1) != 0 || (v110)
          {
            re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(v70 + 16, v112);
          }
        }

        v72 = *v112;
        if (v69)
        {
          if (v72)
          {
            v70 = (v72 + 8);
          }

          v73 = *(a1 + 80);
          v74 = *(a1 + 88);
          v75 = v108;
          v76 = v110;
          if (v74 >= v73)
          {
            v77 = v74 + 1;
            if (v73 < v74 + 1)
            {
              if (*(a1 + 72))
              {
                v78 = 2 * v73;
                v79 = v73 == 0;
                v80 = 8;
                if (!v79)
                {
                  v80 = v78;
                }

                if (v80 <= v77)
                {
                  v81 = v77;
                }

                else
                {
                  v81 = v80;
                }

                re::DynamicArray<re::Pair<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::StateData,true>>::setCapacity((a1 + 72), v81);
              }

              else
              {
                re::DynamicArray<re::Pair<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::StateData,true>>::setCapacity((a1 + 72), v77);
                ++*(a1 + 96);
              }

              v75 = v108;
              v76 = v110;
            }

            v74 = *(a1 + 88);
          }

          v88 = *(a1 + 104) + 24 * v74;
          *v88 = v72;
          *(v88 + 8) = v75;
          *(v88 + 16) = v48;
          *(v88 + 17) = v76;
          *(v88 + 18) = v49;
          *(v88 + 19) = v111;
          *(v88 + 20) = v51;
          ++*(a1 + 88);
          ++*(a1 + 96);
          v9 = v106;
        }

        else
        {
          v82 = *(a1 + 184);
          if (!v82 || (v83 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v72 ^ (v72 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v72 ^ (v72 >> 30))) >> 27)), v84 = *(*(a1 + 168) + 4 * ((v83 ^ (v83 >> 31)) % v82)), v84 == 0x7FFFFFFF))
          {
LABEL_111:
            v9 = v106;
            if ((*(**(a1 + 296) + 32))(*(a1 + 296)) - *(v38 + 118) > *(a1 + 304))
            {
              v86 = *v112;
              *buf = v86;
              if (v86)
              {
                v87 = (v86 + 8);
              }

              *&buf[8] = v108;
              buf[16] = (buf[16] & 0xF0) + 2 * v110;
              re::DynamicArray<re::internal::SyncSnapshotEntry>::add((a1 + 240), buf);
              if (*buf)
              {
              }
            }
          }

          else
          {
            v85 = *(a1 + 176);
            while (*(v85 + 24 * v84 + 16) != v72)
            {
              LODWORD(v84) = *(v85 + 24 * v84 + 8) & 0x7FFFFFFF;
              if (v84 == 0x7FFFFFFF)
              {
                goto LABEL_111;
              }
            }

            v9 = v106;
          }
        }
      }

      v89 = *(a1 + 144);
      if (v89 <= v32 + 1)
      {
        v89 = v32 + 1;
      }

      while (v89 - 1 != v32)
      {
        LODWORD(v32) = v32 + 1;
        if ((*(*(a1 + 128) + 976 * v32) & 0x80000000) != 0)
        {
          goto LABEL_129;
        }
      }

      LODWORD(v32) = v89;
LABEL_129:
      ;
    }

    while (v32 != v9);
  }

  if (*(a1 + 188))
  {
    v90 = *(a1 + 184);
    if (v90)
    {
      memset_pattern16(*(a1 + 168), &unk_261710510, 4 * v90);
    }

    v91 = *(a1 + 192);
    if (v91)
    {
      v92 = 8;
      do
      {
        v93 = *(a1 + 176);
        v94 = *(v93 + v92);
        if (v94 < 0)
        {
          *(v93 + v92) = v94 & 0x7FFFFFFF;
        }

        v92 += 24;
        --v91;
      }

      while (v91);
    }

    *(a1 + 188) = 0;
    *(a1 + 192) = 0;
    v95 = *(a1 + 200) + 1;
    *(a1 + 196) = 0x7FFFFFFF;
    *(a1 + 200) = v95;
  }

  if (*(a1 + 256))
  {
    *(a1 + 208) = 0x80;
    (*(**(a5 + 32) + 16))(*(a5 + 32), a1 + 208);
  }

  re::DynamicArray<re::internal::SyncSnapshotEntry>::clear(a1 + 240);
  v96 = *(a1 + 88);
  if (v96)
  {
    v97 = *(a1 + 104);
    v98 = 24 * v96;
    do
    {
      re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(a1 + 112, v97);
      if (*(v97 + 17) == 1)
      {
        v99 = objc_loadWeakRetained((a1 + 280));
        if (v99)
        {
          v100 = v99 - 8;
        }

        else
        {
          v100 = 0;
        }

        v101 = v100 + 8;
        (*(*v100 + 40))(v100, *(*v97 + 24), *(*(*(*v97 + 88) + 16) + 32));
      }

      v97 += 24;
      v98 -= 24;
    }

    while (v98);
    v102 = *(a1 + 88);
    v103 = *(a1 + 104);
    *(a1 + 88) = 0;
    if (v102)
    {
      v104 = 24 * v102;
      do
      {
        if (*v103)
        {

          *v103 = 0;
        }

        v103 += 24;
        v104 -= 24;
      }

      while (v104);
    }
  }

  ++*(a1 + 96);
}

BOOL re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::removeInternal(a1, v5);
}

void re::SyncSendBuffer::objectsSent(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v55 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = a2;
    v7 = a2 + 24 * a3;
    v8 = a4 + 1;
    v9 = a4 & 0x1F;
    do
    {
      v10 = re::SyncObject::latestStateHandle(*v5);
      if (v10 == -1)
      {
        v25 = *re::networkLogObjects(0xFFFFFFFFFFFFFFFFLL);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = *(*v5 + 24);
          v27 = *(*(*v5 + 88) + 16);
          v28 = v27[4];
          v29 = v27[6];
          v30 = v27[7];
          v31 = v27 + 49;
          if (v29)
          {
            v31 = v30;
          }

          *buf = 134218498;
          v48 = v26;
          v49 = 2048;
          v50 = v28;
          v51 = 2080;
          v52 = v31;
          _os_log_error_impl(&dword_26168F000, v25, OS_LOG_TYPE_ERROR, "Sync object without snapshot among sent snapshot entries (id: %llu, type: %llu[%s]).", buf, 0x20u);
        }

        goto LABEL_27;
      }

      v11 = v10;
      for (i = 0; i != 512; i += 16)
      {
        v13 = &buf[i];
        *(v13 + 4) = 0;
        v13[10] = 0;
        *(v13 + 6) = 0;
      }

      v14 = 0;
      v15 = 0;
      v53[48] = 32;
      v16.i64[0] = 0x10001000100010;
      v16.i64[1] = 0x10001000100010;
      do
      {
        *(&v53[32] + v15) = 0;
        v53[v15] = v15;
        v17 = &buf[v14];
        *(v17 + 6) = 0;
        *v17 = 0;
        *(v17 + 7) = 0;
        ++v15;
        v14 += 16;
      }

      while (v15 != 32);
      v53[212] = 64;
      v18 = 744;
      v19 = 872;
      v20 = xmmword_261711030;
      v21 = xmmword_261711020;
      do
      {
        *&buf[v19] = 0uLL;
        v22 = &buf[v18];
        *v22 = v20;
        *(v22 + 1) = v21;
        v20 = vaddq_s16(v20, v16);
        v21 = vaddq_s16(v21, v16);
        v19 += 16;
        v18 += 32;
      }

      while (v18 != 872);
      v54 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v23 = 0xBF58476D1CE4E5B9 * (*v5 ^ (*v5 >> 30));
      re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(a1 + 112, v5, (0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31), &v44);
      if (HIDWORD(v45) == 0x7FFFFFFF)
      {
        v24 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addInternal<re::SharedPtr<re::SyncObject> const&,re::SyncSendBuffer::ResendData>(a1 + 112, &v44, v5, buf);
      }

      else
      {
        v24 = *(a1 + 128) + 976 * HIDWORD(v45) + 16;
      }

      *(v24 + 944) = (*(**(a1 + 296) + 32))(*(a1 + 296));
      v32 = *(v24 + 608);
      if ((v32 > a4 || a4 - v32 >= 0x8000) && (v32 <= a4 || v32 - a4 < 0x8000))
      {
        v38 = v32 - 32;
        v39 = (v32 - 32);
        if (v39 <= a4 && a4 - v38 < 0x8000)
        {
          goto LABEL_24;
        }

        v40 = (v39 - a4) >> 15;
        if (a4 < v38 && v40 != 0)
        {
          goto LABEL_24;
        }

        v42 = v32 - (v32 < 0x20);
        do
        {
          *(v24 + 576 + (v38 & 0x1F)) = 0;
          v43 = v24 + 16 * (v38 & 0x1F);
          *(v43 + 12) = 0;
          *v43 = 0;
          *(v43 + 7) = 0;
          ++v38;
        }

        while (v38 != v42);
      }

      else
      {
        v33 = v8 - (v32 > v8);
        if (v32 != v33)
        {
          do
          {
            *(v24 + 576 + (v32 & 0x1F)) = 0;
            v34 = v24 + 16 * (v32 & 0x1F);
            *(v34 + 12) = 0;
            *v34 = 0;
            *(v34 + 7) = 0;
            ++v32;
          }

          while (v32 != v33);
        }
      }

      *(v24 + 608) = v8;
LABEL_24:
      LOBYTE(v35) = 1;
      *(v24 + v9 + 576) = 1;
      *(v24 + 2 * v9 + 512) = a4;
      v36 = *v5;
      if ((*(*v5 + 128) & 4) == 0)
      {
        v35 = (*(v5 + 16) >> 1) & 1;
      }

      v37 = v24 + 16 * v9;
      *(v37 + 9) = v35;
      *v37 = v11;
      *(v37 + 12) = *(v36 + 88);
LABEL_27:
      v5 += 24;
    }

    while (v5 != v7);
  }
}

void *re::SyncSendBuffer::resetAcks(uint64_t a1, uint64_t *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 288));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncAckedStateBuffer::AckData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(WeakRetained + 16, a2);
  }

  for (i = 0; i != 512; i += 16)
  {
    v7 = &v18[i];
    *(v7 + 4) = 0;
    v7[10] = 0;
    *(v7 + 6) = 0;
  }

  v8 = 0;
  v9 = 0;
  v19 = 32;
  do
  {
    v18[v9 + 576] = 0;
    *&v18[2 * v9 + 512] = v9;
    v10 = &v18[v8];
    *(v10 + 6) = 0;
    *v10 = 0;
    *(v10 + 7) = 0;
    ++v9;
    v8 += 16;
  }

  while (v9 != 32);
  v20 = 64;
  v11 = xmmword_261711020;
  v12 = xmmword_261711030;
  v13 = 872;
  v14 = 744;
  v15.i64[0] = 0x10001000100010;
  v15.i64[1] = 0x10001000100010;
  do
  {
    *&v18[v13] = 0uLL;
    v16 = &v18[v14];
    *v16 = v12;
    v16[1] = v11;
    v12 = vaddq_s16(v12, v15);
    v11 = vaddq_s16(v11, v15);
    v13 += 16;
    v14 += 32;
  }

  while (v14 != 872);
  v21 = 0;
  return re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addOrReplace(a1 + 112, a2, v18);
}

void *re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, const void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  v7 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    return re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addInternal<re::SharedPtr<re::SyncObject> const&,re::SyncSendBuffer::ResendData>(a1, &v10, a2, a3);
  }

  ++*(a1 + 40);
  v8 = (*(a1 + 16) + 976 * v7 + 16);
  memcpy(v8, a3, 0x3B8uLL);
  return v8;
}

BOOL re::SyncSendBuffer::addAck(uint64_t a1, re::SyncObject **a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 288));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = WeakRetained - 8;
    v7 = re::SyncObject::latestStateHandle(*a2);
    re::SyncAckedStateBuffer::addAcked(v6, a2, v7, *(*a2 + 88));
  }

  return re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::remove(a1 + 112, a2);
}

void re::SyncSendBuffer::~SyncSendBuffer(re::SyncSendBuffer *this)
{
  re::SyncSendBuffer::~SyncSendBuffer(this);

  JUMPOUT(0x266708EC0);
}

{
  *this = &unk_2873F4FC0;
  v2 = *(this + 37);
  if (v2)
  {

    *(this + 37) = 0;
  }

  objc_destroyWeak(this + 36);
  *(this + 36) = 0;
  objc_destroyWeak(this + 35);
  *(this + 35) = 0;
  re::DynamicArray<re::internal::SyncSnapshotEntry>::deinit(this + 240);
  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 20);
  v3.n128_f64[0] = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(this + 14);
  v4 = *(this + 9);
  if (v4)
  {
    v5 = *(this + 13);
    if (v5)
    {
      v6 = *(this + 11);
      if (v6)
      {
        v7 = 24 * v6;
        do
        {
          if (*v5)
          {

            *v5 = 0;
          }

          v5 += 24;
          v7 -= 24;
        }

        while (v7);
        v4 = *(this + 9);
        v5 = *(this + 13);
      }

      (*(*v4 + 40))(v4, v5, v3);
    }

    *(this + 13) = 0;
    *(this + 10) = 0;
    *(this + 11) = 0;
    *(this + 9) = 0;
    ++*(this + 24);
  }

  v9 = (this + 24);
  v8 = *(this + 3);
  if (v8)
  {
    v10 = *(this + 14);
    if (v10)
    {
      v11 = 0;
      for (i = 0; i < v10; ++i)
      {
        v13 = *(this + 5);
        v14 = *(v13 + v11);
        if (v14 < 0)
        {
          v15 = v13 + v11;
          *(v13 + v11) = v14 & 0x7FFFFFFF;
          v16 = *(v13 + v11 + 8);
          if (v16)
          {

            *(v15 + 8) = 0;
            v10 = *(this + 14);
          }
        }

        v11 += 40;
      }

      v8 = *v9;
    }

    (*(*v8 + 40))(v8, *(this + 4), v3);
    *(this + 14) = 0;
    *v9 = 0u;
    *(this + 40) = 0u;
    *(this + 60) = 0x7FFFFFFFLL;
  }

  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

void re::HashSetBase<re::SyncObject *,re::SyncObject *,re::internal::ValueAsKey<re::SyncObject *>,re::Hash<re::SyncObject *>,re::EqualTo<re::SyncObject *>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, void *a4)
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
          memset(v23, 0, 36);
          *&v23[36] = 0x7FFFFFFFLL;
          re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::init(v23, v11, v10);
          v13 = *v23;
          *v23 = *a1;
          *a1 = v13;
          v14 = *&v23[16];
          v15 = *(a1 + 16);
          *&v23[16] = v15;
          *(a1 + 16) = v14;
          v17 = *&v23[24];
          *&v23[24] = *(a1 + 24);
          v16 = *&v23[32];
          *(a1 + 24) = v17;
          v18 = v16;
          if (v16)
          {
            v19 = (v15 + 16);
            do
            {
              if ((*(v19 - 1) & 0x80000000) != 0)
              {
                re::HashSetBase<re::SyncObject *,re::SyncObject *,re::internal::ValueAsKey<re::SyncObject *>,re::Hash<re::SyncObject *>,re::EqualTo<re::SyncObject *>,true,false>::addAsMove(a1, *(v19 - 2) % *(a1 + 24), *(v19 - 2), v19);
              }

              v19 += 3;
              --v18;
            }

            while (v18);
          }

          re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v23);
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
    v21 = *(v20 + 24 * v7 + 8);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 24 * v7 + 8);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  *(v20 + 24 * v7 + 8) = v21 | 0x80000000;
  *(*(a1 + 16) + 24 * v7 + 8) = *(*(a1 + 16) + 24 * v7 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v7) = a3;
  *(*(a1 + 16) + 24 * v7 + 16) = *a4;
  *(*(a1 + 8) + 4 * a2) = v7;
  ++*(a1 + 28);
}

void *re::DynamicArray<re::Pair<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::StateData,true>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Pair<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::StateData,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
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
        v10 = 24 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          *v8 = 0;
          *(v11 + 1) = *(v8 + 8);
          if (*v8)
          {

            *v8 = 0;
          }

          v8 += 24;
          v11 += 3;
          v10 -= 24;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

BOOL re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 976 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = v8;
    }

    else
    {
      *(v6 + 976 * v5) = *(v6 + 976 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = v6 + 976 * v8;
    if ((*v10 & 0x80000000) != 0)
    {
      *v10 &= ~0x80000000;
      v11 = *(v10 + 8);
      if (v11)
      {

        *(v10 + 8) = 0;
        v9 = a2[3];
        v6 = *(a1 + 16);
      }
    }

    v12 = *(a1 + 40);
    *(v6 + 976 * v9) = *(v6 + 976 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v12 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::findEntry<re::SharedPtr<re::SyncObject>>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_10;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(result + 16);
  if (*(v7 + 976 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 976 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 976 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 976 * v8) & 0x7FFFFFFF;
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
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addInternal<re::SharedPtr<re::SyncObject> const&,re::SyncSendBuffer::ResendData>(uint64_t a1, uint64_t a2, uint64_t *a3, const void *a4)
{
  v7 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 8) = *a3;
  if (v8)
  {
    v9 = (v8 + 8);
  }

  memcpy((v7 + 16), a4, 0x3B8uLL);
  ++*(a1 + 40);
  return v7 + 16;
}

uint64_t re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v24, 0, 36);
          *&v24[36] = 0x7FFFFFFFLL;
          re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::init(v24, v9, v8);
          v11 = *v24;
          *v24 = *a1;
          *a1 = v11;
          v12 = *&v24[16];
          v13 = a1[2];
          *&v24[16] = v13;
          a1[2] = v12;
          v15 = *&v24[24];
          *&v24[24] = *(a1 + 3);
          v14 = *&v24[32];
          *(a1 + 3) = v15;
          ++*&v24[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::allocEntry(a1, *(v13 + 968) % *(a1 + 6), *(v13 + 968));
                *(v17 + 8) = *(v13 + 8);
                *(v13 + 8) = 0;
                memcpy((v17 + 16), (v13 + 16), 0x3B8uLL);
              }

              v13 += 976;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(v24);
        }
      }

      else
      {
        if (v8)
        {
          v20 = 2 * v7;
        }

        else
        {
          v20 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v18 = a1[2];
    v19 = *(v18 + 976 * v5);
  }

  else
  {
    v18 = a1[2];
    v19 = *(v18 + 976 * v5);
    *(a1 + 9) = v19 & 0x7FFFFFFF;
  }

  v21 = v18 + 976 * v5;
  *v21 = v19 | 0x80000000;
  v22 = a1[1];
  *v21 = *(v22 + 4 * a2) | 0x80000000;
  *(v22 + 4 * a2) = v5;
  *(v21 + 968) = a3;
  ++*(a1 + 7);
  return v18 + 976 * v5;
}

void re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 976 * v10, 16);
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

double re::HashTable<re::SharedPtr<re::SyncObject>,re::SyncSendBuffer::ResendData,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = *(v6 + v4 + 8);
          if (v9)
          {

            *(v8 + 8) = 0;
            v3 = *(a1 + 8);
          }
        }

        v4 += 976;
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

uint64_t re::SyncUnpacker::unpackCommit(_anonymous_namespace_ *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a4 + 24) & 0x20) != 0)
  {
    v9 = *(a2 + 16);
    if (*(a2 + 12))
    {
      v10 = 0;
    }

    else
    {
      v10 = *a2 + v9;
    }

    v11 = (*(a2 + 8) - v9);
    v15 = v10;
    v16 = v11;
    v19 = -1;
    v20 = 0;
    v21 = 0;
    v23 = 0;
    v17 = v10;
    v18 = v10 + v11;
    v14 = &unk_2873F6CE8;
    result = re::SyncUnpacker::parseCommit(this, &v14, a3, a4);
    if ((*(a2 + 12) & 1) == 0)
    {
      v12 = v17 - v15;
      *(a2 + 24) = 0;
      v13 = *(a2 + 16) + v12;
      *(a2 + 16) = v13;
      if (v13 > *(a2 + 8))
      {
        *(a2 + 12) = 1;
      }
    }
  }

  else
  {

    return re::SyncUnpacker::parseCommit(this, a2, a3, a4);
  }

  return result;
}

uint64_t re::SyncUnpacker::parseCommit(uint64_t **a1, re::snapshot::DecoderOPACK *this, uint64_t a3, uint64_t a4)
{
  v160 = *MEMORY[0x277D85DE8];
  v8 = re::snapshot::DecoderOPACK::beginObject(this, 0);
  if ((v8 & 1) == 0)
  {
    v11 = *re::networkLogObjects(v8);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      v12 = "Commit doesn't begin with an object header";
      goto LABEL_208;
    }

    return result;
  }

  re::snapshot::DecoderOPACK::field<1,unsigned char>(this, a3);
  re::snapshot::DecoderOPACK::field<2,unsigned long long>(this, (a3 + 16));
  re::snapshot::DecoderOPACK::endObject(this, 0);
  *(a3 + 8) = a1[2];
  v129 = 0;
  v9 = re::snapshot::DecoderOPACK::beginDictionary(this, &v129);
  if (v9)
  {
    if (re::snapshot::DecoderOPACK::endDictionary(this, &v129))
    {
      return 2;
    }

    v128 = a4;
    while (1)
    {
      Integer = re::snapshot::DecoderOPACK::readInteger(this, 0);
      v14 = Integer;
      if (Integer == -1)
      {
        v120 = *re::networkLogObjects(Integer);
        shouldAcceptUpdate = os_log_type_enabled(v120, OS_LOG_TYPE_ERROR);
        if (!shouldAcceptUpdate)
        {
          goto LABEL_206;
        }

        *buf = 0;
        v121 = "Expected object short id";
        goto LABEL_211;
      }

      v15 = re::snapshot::DecoderOPACK::beginObject(this, 0);
      if ((v15 & 1) == 0)
      {
        v120 = *re::networkLogObjects(v15);
        shouldAcceptUpdate = os_log_type_enabled(v120, OS_LOG_TYPE_ERROR);
        if (!shouldAcceptUpdate)
        {
          goto LABEL_206;
        }

        *buf = 0;
        v121 = "Expected object header";
        goto LABEL_211;
      }

      v142 = 0;
      re::snapshot::DecoderOPACK::field<1,unsigned char>(this, &v142);
      v141 = 0;
      re::snapshot::DecoderOPACK::field<2,unsigned short>(this, &v141);
      *&v138 = 0;
      WORD4(v138) = 0;
      LOBYTE(v139[0]) = 0;
      v139[1] = 0;
      *v140 = 0x10000;
      re::snapshot::DecoderOPACK::field<3,re::SyncOwnershipInfo>(this, &v138);
      v16 = v139[1];
      if (!v139[1])
      {
        v16 = a1[2];
        v139[1] = v16;
      }

      v17 = v16 == a1[3] || *(a1 + 120) == 1 && v16 == *(a4 + 8);
      LOBYTE(v140[1]) = v17;
      v18 = v142;
      v136 = -1;
      v137 = 0;
      v19 = v142 & 5;
      if (v19)
      {
        if (re::snapshot::DecoderOPACK::beginField<5>(this))
        {
          v20 = re::snapshot::DecoderOPACK::readInteger(this, 0);
          v137 = v20;
          re::snapshot::DecoderOPACK::endField(this);
        }

        else
        {
          v20 = 0;
        }

        re::snapshot::DecoderOPACK::field<6,unsigned long long>(this, &v136);
      }

      else
      {
        v20 = 0;
      }

      v21 = *(this + 10);
      if (v21 > 6)
      {
LABEL_36:
        if (v21 == 7)
        {
          v26 = re::snapshot::DecoderOPACK::readInteger(this, 0);
          re::snapshot::DecoderOPACK::endField(this);
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        while (1)
        {
          v22 = *(this + 3);
          if (v22 >= *(this + 4))
          {
            v23 = 0;
          }

          else
          {
            *(this + 3) = v22 + 1;
            v23 = *v22;
          }

          re::snapshot::DecoderOPACK::skip(this, v23);
          v24 = *(this + 3);
          if (v24 >= *(this + 4))
          {
            break;
          }

          v25 = *v24;
          if (v25 == 3)
          {
            break;
          }

          if ((v25 - 7) > 0x28)
          {
            v21 = re::snapshot::DecoderOPACK::readInteger(this, 0x7FFFFFFFLL);
          }

          else
          {
            *(this + 3) = v24 + 1;
            v21 = v25 - 8;
          }

          *(this + 10) = v21;
          if (v21 >= 7)
          {
            goto LABEL_36;
          }
        }

        v26 = 0;
        *(this + 10) = 0x7FFFFFFF;
      }

      v134 = -1;
      v135 = 0;
      if (v18)
      {
        re::snapshot::DecoderOPACK::field<8,unsigned long long>(this, &v134);
        re::snapshot::DecoderOPACK::field<9,unsigned long long>(this, &v135);
      }

      v132 = 0;
      v133 = 0;
      v27 = re::snapshot::DecoderOPACK::field<11,re::Slice<unsigned char>>(this, &v132);
      if (*(this + 4) == *(this + 3))
      {
        v120 = *re::networkLogObjects(v27);
        shouldAcceptUpdate = os_log_type_enabled(v120, OS_LOG_TYPE_ERROR);
        if (!shouldAcceptUpdate)
        {
          goto LABEL_206;
        }

        *buf = 0;
        v121 = "Failed to unpack sync object.";
LABEL_211:
        _os_log_error_impl(&dword_26168F000, v120, OS_LOG_TYPE_ERROR, v121, buf, 2u);
LABEL_206:
        v11 = *re::networkLogObjects(shouldAcceptUpdate);
        result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *buf = 0;
          v12 = "Failure reading object in commit";
LABEL_208:
          _os_log_error_impl(&dword_26168F000, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
          return 0;
        }

        return result;
      }

      re::snapshot::DecoderOPACK::endObject(this, 0);
      v28 = *a1;
      if (v19)
      {
        v29 = *v28;
        if ((v18 & 4) != 0)
        {
          (*(v29 + 64))();
        }

        else
        {
          (*(v29 + 48))();
        }
      }

      else
      {
        v20 = (*(*v28 + 56))(v28, v14);
        v136 = v30;
        v137 = v20;
      }

      v31 = a1[1];
      *buf = v136;
      v32 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((v31 + 9), buf);
      if (!v32 || (v33 = *(*v32 + 16)) == 0)
      {
        v34 = *re::networkLogObjects(v32);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v136;
          _os_log_impl(&dword_26168F000, v34, OS_LOG_TYPE_DEFAULT, "Unknown object typeID=%llu. Assuming opaque type.", buf, 0xCu);
        }

        v35 = a1[1];
        re::SyncOpaqueTypeInfo::make(v136, buf);
        re::SyncObjectStore::addType(v35, buf);
        re::SyncObjectTypeInfo::~SyncObjectTypeInfo(buf);
        v36 = a1[1];
        *buf = v136;
        v37 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((v36 + 9), buf);
        if (v37)
        {
          v33 = *(*v37 + 16);
        }

        else
        {
          v33 = 0;
        }
      }

      v38 = *(v33 + 136);
      if (!v38)
      {
        break;
      }

      v38 = (*(v38 + 2))(v38, a4);
      if (v38)
      {
        break;
      }

LABEL_140:
      if (re::snapshot::DecoderOPACK::endDictionary(this, &v129))
      {
        return 2;
      }
    }

    if (!v20)
    {
      v43 = *re::networkLogObjects(v38);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        *&buf[4] = v14;
        *&buf[8] = 1024;
        *&buf[10] = v142;
        _os_log_debug_impl(&dword_26168F000, v43, OS_LOG_TYPE_DEBUG, "Cannot find guid for object with id=%d, flags=0x%02X. Skipping update.", buf, 0xEu);
      }

      goto LABEL_140;
    }

    Object = re::SyncObjectStore::findObject(&v131, a1[1], v136, v20);
    v40 = v131;
    if (v131)
    {
      if (v18)
      {
        v42 = 0;
      }

      else
      {
        Baseline = re::SyncObject::findBaseline(v131, v26, a1[2]);
        if (!Baseline)
        {
          v69 = *re::networkLogObjects(0);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v33 + 48))
            {
              v70 = *(v33 + 56);
            }

            else
            {
              v70 = v33 + 49;
            }

            *buf = 134218498;
            *&buf[4] = v20;
            *&buf[12] = 2080;
            *&buf[14] = v70;
            *&buf[22] = 2048;
            *v155 = v136;
            _os_log_impl(&dword_26168F000, v69, OS_LOG_TYPE_DEFAULT, "Got object delta update but missing baseline for it.(guid=%llu, type=%s(%llu))", buf, 0x20u);
          }

          if ((v18 & 4) == 0)
          {
            *buf = v136;
            *&buf[8] = v20;
            re::DynamicArray<re::SyncHistoryResetRequest>::add((a1 + 10), buf);
          }

          v42 = 0;
          v49 = 0;
          goto LABEL_72;
        }

        v42 = Baseline;
      }

      v49 = 1;
LABEL_72:
      v50 = v40;
LABEL_73:
      shouldAcceptUpdate = re::SyncObject::shouldAcceptUpdate(v50, v139[1], v140[0]);
      if ((*(a1 + 121) & 1) != 0 || shouldAcceptUpdate)
      {
        if (shouldAcceptUpdate && (v51 = a1[3], v52 = *(v50 + 84), v53 = *v139, *(v50 + 136) = v138, *(v50 + 152) = v53, *(v50 + 42) = *v140, *(*(*(v50 + 11) + 16) + 73) == 1) && (v52 < v140[0] || (v138 == v51 ? (v54 = v138 == 0) : (v54 = 1), !v54)))
        {
          v127 = 4;
          if (!v49)
          {
            goto LABEL_95;
          }
        }

        else
        {
          v127 = 0;
          if (!v49)
          {
            goto LABEL_95;
          }
        }

        if (re::SyncObject::isStateDataChanged(v50, v141, a1[2]))
        {
          v126 = v141;
          v122 = v132;
          log = v133;
          DWORD2(v149) = 0;
          BYTE12(v149) = 0;
          v150 = 0uLL;
          v148 = &unk_2873F59F8;
          *&v149 = 0;
          v153 = 0;
          v152 = 0;
          memset(v151, 0, sizeof(v151));
          if (*(v50 + 9) - *(v50 + 8) == *(v50 + 6) && (OldestState = re::SyncObject::getOldestState(v50), OldestState == v42))
          {
            v87 = *re::networkLogObjects(OldestState);
            if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_26168F000, v87, OS_LOG_TYPE_INFO, "Baseline would be invalidated by new state! Will read into temp location.", buf, 2u);
            }

            v57 = &v148;
            v56 = v126;
          }

          else
          {
            v56 = v126;
            v57 = re::SyncObject::addState(v50, v126, a1[2]);
          }

          *(v50 + 88) = v56;
          v143 = v122;
          v144 = log;
          v145 = 0;
          v146 = 0;
          v147 = 0;
          if (v42)
          {
            v58 = *(v33 + 104);
            if (!v58)
            {
              v82 = v57;
              loga = *re::networkLogObjects(0);
              v61 = os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT);
              if (v61)
              {
                v83 = *(v50 + 3);
                v84 = *(v33 + 32);
                if (*(v33 + 48))
                {
                  v85 = *(v33 + 56);
                }

                else
                {
                  v85 = v33 + 49;
                }

                *buf = 134218498;
                *&buf[4] = v83;
                *&buf[12] = 2048;
                *&buf[14] = v84;
                *&buf[22] = 2080;
                *v155 = v85;
                _os_log_impl(&dword_26168F000, loga, OS_LOG_TYPE_DEFAULT, "Cannot parse state for syncobject %llu of type %llu(%s), readDeltaCb not available.", buf, 0x20u);
              }

              if (v82 == &v148 || (v86 = *(v50 + 9), *(v50 + 8) == v86))
              {
                v80 = 0;
              }

              else
              {
                v80 = 0;
                *(v50 + 9) = v86 - 1;
              }

              goto LABEL_167;
            }

            v59 = *(v42 + 24);
            if (*(v42 + 28))
            {
              ++v59;
            }

            *buf = *(v42 + 8);
            *&buf[8] = v59;
            buf[12] = 0;
            *&buf[16] = 0;
            *v155 = 0;
            v60 = v57;
            v61 = (*(v58 + 16))(v58, &v143, buf, v57, v128);
            if ((v61 & 1) == 0)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v79 = *(v33 + 96);
            if (!v79)
            {
              v60 = v57;
              v88 = *re::networkLogObjects(0);
              v61 = os_log_type_enabled(v88, OS_LOG_TYPE_ERROR);
              if (v61)
              {
                v117 = *(v50 + 3);
                v118 = *(v33 + 32);
                if (*(v33 + 48))
                {
                  v119 = *(v33 + 56);
                }

                else
                {
                  v119 = v33 + 49;
                }

                *buf = 134218498;
                *&buf[4] = v117;
                *&buf[12] = 2048;
                *&buf[14] = v118;
                *&buf[22] = 2080;
                *v155 = v119;
                _os_log_error_impl(&dword_26168F000, v88, OS_LOG_TYPE_ERROR, "Cannot parse state for syncobject %llu of type %llu(%s), readCb not available.", buf, 0x20u);
              }

              goto LABEL_157;
            }

            v60 = v57;
            v61 = (*(v79 + 16))(v79, &v143, v57, v128);
            if (!v61)
            {
LABEL_157:
              if (v60 != &v148)
              {
                v89 = *(v50 + 9);
                if (*(v50 + 8) != v89)
                {
                  *(v50 + 9) = v89 - 1;
                }
              }

              v90 = *re::networkLogObjects(v61);
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                v111 = *(v50 + 3);
                v112 = a1[2];
                *buf = 134218240;
                *&buf[4] = v111;
                *&buf[12] = 2048;
                *&buf[14] = v112;
                _os_log_error_impl(&dword_26168F000, v90, OS_LOG_TYPE_ERROR, "Failed to parse object data.(guid=%llu, peerID=%llu)", buf, 0x16u);
              }

              v91 = 0;
              goto LABEL_177;
            }
          }

          v80 = v60;
LABEL_167:
          if (v144 != v146)
          {
            v98 = v80;
            logb = *re::networkLogObjects(v61);
            v99 = os_log_type_enabled(logb, OS_LOG_TYPE_DEFAULT);
            v80 = v98;
            if (v99)
            {
              v100 = "readDeltaCb";
              if (!v42)
              {
                v100 = "readCb";
              }

              if (*(v33 + 48))
              {
                v101 = *(v33 + 56);
              }

              else
              {
                v101 = v33 + 49;
              }

              v102 = *(v33 + 32);
              *buf = 136315650;
              *&buf[4] = v100;
              *&buf[12] = 2080;
              *&buf[14] = v101;
              *&buf[22] = 2048;
              *v155 = v102;
              _os_log_impl(&dword_26168F000, logb, OS_LOG_TYPE_DEFAULT, "Read buffer is not fully consumed by %s of type %s: %llu", buf, 0x20u);
              v80 = v98;
            }
          }

          if (v80 == &v148)
          {
            v105 = re::SyncObject::addState(v50, v126, a1[2]);
            v106 = *(v105 + 40);
            v105 += 40;
            v107 = *(v105 - 32);
            *v155 = *(v105 - 16);
            *&buf[8] = v107;
            *buf = &unk_2873F59F8;
            *&v155[16] = v106;
            *v105 = 0;
            v108 = *(v105 + 16);
            v156 = *(v105 + 8);
            *(v105 + 8) = 0;
            v157 = v108;
            *(v105 + 16) = 0;
            v159 = *(v105 + 32);
            *(v105 + 32) = 0;
            ++*(v105 + 24);
            v158 = 1;
            v109 = v150;
            *(v105 - 32) = v149;
            *(v105 - 16) = v109;
            re::DynamicArray<unsigned char>::operator=(v105, v151);
            v149 = *&buf[8];
            v150 = *v155;
            re::DynamicArray<unsigned char>::operator=(v151, &v155[16]);
            if (*&v155[16])
            {
              if (v159)
              {
                (*(**&v155[16] + 40))();
              }
            }
          }

          v91 = 1;
LABEL_177:
          v103 = v151[0];
          if (v151[0] && v153)
          {
            v103 = (*(*v151[0] + 40))();
          }

          if (v91)
          {
            v62 = 8;
            v50 = v131;
LABEL_96:
            if (v135 && !*(v50 + 10))
            {
              *buf = v134;
              *&buf[8] = v135;
              re::HashTable<re::SharedPtr<re::SyncObject>,re::Pair<unsigned long long,unsigned long long,true>,re::Hash<re::SharedPtr<re::SyncObject>>,re::EqualTo<re::SharedPtr<re::SyncObject>>,true,false>::addOrReplace((a1 + 4), &v131, buf);
              v50 = v131;
            }

            v63 = re::SyncObject::latestStateHandle(v50);
            if (v63 != -1)
            {
              v64 = v63;
              memset(buf, 0, 17);
              re::SharedPtr<re::SyncObject>::reset(buf, v131);
              *&buf[8] = v64;
              v65 = v127 | v62 | buf[16] & 0xF2 | (v40 == 0);
              buf[16] = v65;
              if ((v18 & 4) != 0)
              {
                *(v131 + 128) |= 4u;
                buf[16] = v65 | 2;
              }

              shouldAcceptUpdate = re::DynamicArray<re::internal::SyncSnapshotEntry>::add((a3 + 32), buf);
              a4 = v128;
              if (*buf)
              {
              }

              v66 = 0;
LABEL_137:
              if (v131)
              {
              }

              if (v66)
              {
                goto LABEL_206;
              }

              goto LABEL_140;
            }

            v71 = *re::networkLogObjects(0xFFFFFFFFFFFFFFFFLL);
            shouldAcceptUpdate = os_log_type_enabled(v71, OS_LOG_TYPE_ERROR);
            if (shouldAcceptUpdate)
            {
              v92 = *(v131 + 3);
              v93 = *(*(v131 + 11) + 16);
              v94 = v93[4];
              v95 = v93[6];
              v96 = v93[7];
              v97 = v93 + 49;
              if (v95)
              {
                v97 = v96;
              }

              *buf = 134218498;
              *&buf[4] = v92;
              *&buf[12] = 2048;
              *&buf[14] = v94;
              *&buf[22] = 2080;
              *v155 = v97;
              _os_log_error_impl(&dword_26168F000, v71, OS_LOG_TYPE_ERROR, "Sync object without snapshot while parsing object (id: %llu, type: %llu[%s]).", buf, 0x20u);
            }

LABEL_112:
            v66 = 1;
            a4 = v128;
            goto LABEL_137;
          }

          v104 = *re::networkLogObjects(v103);
          shouldAcceptUpdate = os_log_type_enabled(v104, OS_LOG_TYPE_ERROR);
          if (shouldAcceptUpdate)
          {
            if (*(v33 + 48))
            {
              v110 = *(v33 + 56);
            }

            else
            {
              v110 = v33 + 49;
            }

            v113 = a1[2];
            *buf = 134218754;
            *&buf[4] = v20;
            *&buf[12] = 2048;
            *&buf[14] = v136;
            *&buf[22] = 2080;
            *v155 = v110;
            *&v155[8] = 2048;
            *&v155[10] = v113;
            _os_log_error_impl(&dword_26168F000, v104, OS_LOG_TYPE_ERROR, "Failed to parse object state.(guid=%llu, type=%llu(%s), peerID=%llu)", buf, 0x2Au);
            if (v40)
            {
              goto LABEL_184;
            }
          }

          else if (v40)
          {
LABEL_184:
            v66 = 1;
            goto LABEL_124;
          }

          v114 = a1[1];
          v115 = v131;
          v130 = v131;
          if (v131)
          {
            v116 = v131 + 8;
            re::SyncObjectStore::removeObject(v114, &v130);
          }

          else
          {
            re::SyncObjectStore::removeObject(v114, &v130);
          }

          goto LABEL_112;
        }

LABEL_95:
        v62 = 0;
        goto LABEL_96;
      }

LABEL_123:
      v66 = 0;
LABEL_124:
      a4 = v128;
      goto LABEL_137;
    }

    if ((v18 & 4) != 0)
    {
      v67 = *re::networkLogObjects(Object);
      shouldAcceptUpdate = os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);
      if (!shouldAcceptUpdate)
      {
        goto LABEL_123;
      }

      a4 = v128;
      if (*(v33 + 48))
      {
        v68 = *(v33 + 56);
      }

      else
      {
        v68 = v33 + 49;
      }

      *buf = 134218498;
      *&buf[4] = v20;
      *&buf[12] = 2080;
      *&buf[14] = v68;
      *&buf[22] = 2048;
      *v155 = v136;
      v75 = v67;
      v76 = "Discarding incoming object already in destroyed state, guid=%llu, type=%s(%llu)";
    }

    else
    {
      v44 = a1[1];
      v45 = re::SyncObjectTombstoneInfo::contains((v44 + 15), &v137, &v136);
      if (v45)
      {
        v46 = *re::networkLogObjects(v45);
        shouldAcceptUpdate = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
        if (!shouldAcceptUpdate)
        {
          goto LABEL_123;
        }

        a4 = v128;
        if (*(v33 + 48))
        {
          v48 = *(v33 + 56);
        }

        else
        {
          v48 = v33 + 49;
        }

        *buf = 134218498;
        *&buf[4] = v20;
        *&buf[12] = 2080;
        *&buf[14] = v48;
        *&buf[22] = 2048;
        *v155 = v136;
        v75 = v46;
        v76 = "Discarding incoming object already tombstoned, guid=%llu, type=%s(%llu)";
      }

      else
      {
        v72 = re::SyncObjectTombstoneInfo::contains((v44 + 15), &v135, &v134);
        if (v72)
        {
          v73 = *re::networkLogObjects(v72);
          shouldAcceptUpdate = os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT);
          if (!shouldAcceptUpdate)
          {
            goto LABEL_123;
          }

          a4 = v128;
          if (*(v33 + 48))
          {
            v74 = *(v33 + 56);
          }

          else
          {
            v74 = v33 + 49;
          }

          *buf = 134218754;
          *&buf[4] = v20;
          *&buf[12] = 2080;
          *&buf[14] = v74;
          *&buf[22] = 2048;
          *v155 = v136;
          *&v155[8] = 2048;
          *&v155[10] = v135;
          v75 = v73;
          v76 = "Discarding incoming object with parent already tombstoned, guid=%llu, type=%s(%llu), parentGuid=%llu";
          v81 = 42;
LABEL_136:
          _os_log_impl(&dword_26168F000, v75, OS_LOG_TYPE_DEFAULT, v76, buf, v81);
          v66 = 0;
          goto LABEL_137;
        }

        if (v18)
        {
          re::SyncObjectStore::createIncomingObject(buf, v44, &v138, v136, v20);
          v42 = 0;
          v50 = *buf;
          v131 = *buf;
          v49 = 1;
          goto LABEL_73;
        }

        v77 = *re::networkLogObjects(v72);
        shouldAcceptUpdate = os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT);
        if (!shouldAcceptUpdate)
        {
          goto LABEL_123;
        }

        a4 = v128;
        if (*(v33 + 48))
        {
          v78 = *(v33 + 56);
        }

        else
        {
          v78 = v33 + 49;
        }

        *buf = 134218498;
        *&buf[4] = v20;
        *&buf[12] = 2080;
        *&buf[14] = v78;
        *&buf[22] = 2048;
        *v155 = v136;
        v75 = v77;
        v76 = "Got object delta update but missing object for it.(guid=%llu, type=%s(%llu))";
      }
    }

    v81 = 32;
    goto LABEL_136;
  }

  v11 = *re::networkLogObjects(v9);
  result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 0;
    v12 = "Expected dictionary of entries";
    goto LABEL_208;
  }

  return result;
}