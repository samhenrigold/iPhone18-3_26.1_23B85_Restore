void ___ZN2re22ResourceSharingManager7connectERKNS_3xpc16ListenerEndpointEy_block_invoke(id *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *re::resourceSharingLogObjects(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "Resource connection with server %@ was interrupted", buf, 0xCu);
  }

  v4 = [a1[4] resourceSharingManager];
  if (v4)
  {
    v5 = v4;
    v6 = a1[4];
    v7 = v6;
    re::ResourceSharingManager::connectionInterruptedOrInvalidated(v5, &v7);
  }
}

void re::ResourceSharingManager::connectionInterruptedOrInvalidated(uint64_t a1, id *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 40));
  v59 = a2;
  v4 = [*a2 peerID];
  v5 = re::PeerIDValidator::instance(v4);
  re::PeerIDValidator::remove_impl(v5, v4);
  v7 = *(a1 + 80);
  if (!v7)
  {
LABEL_5:
    v12 = *re::resourceSharingLogObjects(v6);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    v13 = *a2;
    *buf = 138412290;
    *&buf[4] = v13;
    v14 = v12;
    v15 = "Resource connection with server %@ interrupted/invalidated: not found in connection list";
LABEL_48:
    _os_log_debug_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEBUG, v15, buf, 0xCu);

    return;
  }

  v8 = 0;
  v9 = *(a1 + 96);
  v10 = 120;
  while (1)
  {
    v11 = v9 + v10;
    if (*(v9 + v10 - 112) == *a2)
    {
      break;
    }

    ++v8;
    v10 += 168;
    if (v7 == v8)
    {
      goto LABEL_5;
    }
  }

  v16 = *(v11 - 64);
  if (v16)
  {
    v17 = 0;
    v18 = (*(v9 + v10 - 80) + 8);
    while (1)
    {
      v19 = *v18;
      v18 += 6;
      if (v19 < 0)
      {
        break;
      }

      if (v16 == ++v17)
      {
        LODWORD(v17) = *(v11 - 64);
        break;
      }
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  if (v17 != v16)
  {
    v20 = v9 + v10;
    do
    {
      v21 = *(*(v20 - 80) + 24 * v17 + 16);
      v22 = *v59;
      re::DynamicArray<REResourceSharingClientObject * {__strong}>::remove(v21 + 72, v22);

      v23 = *(v11 - 64);
      if (v23 <= v17 + 1)
      {
        v23 = v17 + 1;
      }

      while (v23 - 1 != v17)
      {
        LODWORD(v17) = v17 + 1;
        if ((*(*(v20 - 80) + 24 * v17 + 8) & 0x80000000) != 0)
        {
          goto LABEL_21;
        }
      }

      LODWORD(v17) = v23;
LABEL_21:
      ;
    }

    while (v17 != v16);
    v7 = *(a1 + 80);
  }

  if (v7 <= v8)
  {
    v60 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    *buf = 0u;
    v45 = MEMORY[0x1E69E9C10];
    v61 = 136315906;
    v62 = "operator[]";
    v63 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v46 = 3;
    }

    else
    {
      v46 = 2;
    }

    v64 = 789;
    v65 = 2048;
    v66 = v8;
    v67 = 2048;
    v68 = v7;
    _os_log_send_and_compose_impl(v46, &v60, buf, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v59);
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(*(a1 + 96) + v10 - 96);
  v7 = *(a1 + 80);
  if (v7 <= v8)
  {
LABEL_53:
    v60 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    *buf = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v61 = 136315906;
    v62 = "operator[]";
    v63 = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v64 = 789;
    v65 = 2048;
    v66 = v8;
    v67 = 2048;
    v68 = v7;
    _os_log_send_and_compose_impl(v49, &v60, buf, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v59);
    _os_crash_msg();
    __break(1u);
    goto LABEL_57;
  }

  [*(*(a1 + 96) + v10 - 120) invalidate];
  v7 = *(a1 + 80);
  if (v7 <= v8)
  {
LABEL_57:
    v60 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    *buf = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v61 = 136315906;
    v62 = "operator[]";
    v63 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v64 = 789;
    v65 = 2048;
    v66 = v8;
    v67 = 2048;
    v68 = v7;
    _os_log_send_and_compose_impl(v52, &v60, buf, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v59);
    _os_crash_msg();
    __break(1u);
    goto LABEL_61;
  }

  [*(*(a1 + 96) + v10 - 112) invalidate];
  v7 = *(a1 + 80);
  if (v7 <= v8)
  {
LABEL_61:
    v60 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    *buf = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v61 = 136315906;
    v62 = "operator[]";
    v63 = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    v64 = 789;
    v65 = 2048;
    v66 = v8;
    v67 = 2048;
    v68 = v7;
    _os_log_send_and_compose_impl(v55, &v60, buf, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v59);
    _os_crash_msg();
    __break(1u);
LABEL_65:
    v60 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    *buf = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v61 = 136315906;
    v62 = "removeAt";
    v63 = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    v64 = 931;
    v65 = 2048;
    v66 = v8;
    v67 = 2048;
    v68 = v7;
    _os_log_send_and_compose_impl(v58, &v60, buf, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v61, 38, v59);
    _os_crash_msg();
    __break(1u);
  }

  (*(**(a1 + 24) + 392))(*(a1 + 24), *(*(a1 + 96) + v10 - 104));
  v7 = *(a1 + 80);
  if (v7 <= v8)
  {
    goto LABEL_65;
  }

  if (v7 - 1 > v8)
  {
    v24 = *(a1 + 96);
    v25 = v24 + 168 * v7;
    v26 = v10 - 168 * v7;
    v27 = v24 + v10;
    if (v26 != -48)
    {
      v28 = *(v25 - 168);
      *(v25 - 168) = 0;
      v29 = *(v27 - 120);
      *(v27 - 120) = v28;
    }

    v30 = *(v25 - 160);
    *(v25 - 160) = 0;
    v31 = *(v27 - 112);
    *(v27 - 112) = v30;

    *(v27 - 104) = *(v25 - 152);
    if (v26 != -48)
    {
      v32 = (v25 - 144);
      v35 = *(v27 - 96);
      v34 = (v27 - 96);
      v33 = v35;
      if (!v35 || (v36 = *v32, v33 == *v32))
      {
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v34, v32);
      }

      else
      {
        re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(v34);
        if (v36)
        {
          v37 = *(v25 - 116);
          if (*(v24 + v10 - 72) < v37)
          {
            re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::setCapacity(v34, v37);
          }

          v38 = *(v25 - 112);
          if (v38)
          {
            v39 = 0;
            for (i = 0; i < v38; ++i)
            {
              v41 = *(v25 - 128) + v39;
              if ((*(v41 + 8) & 0x80000000) != 0)
              {
                re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::addAsCopy(v34, *v41 % *(v24 + v10 - 72), *v41, (v41 + 16));
                v38 = *(v25 - 112);
              }

              v39 += 24;
            }
          }

          ++*(v24 + v10 - 56);
        }
      }
    }

    re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(v24 + v10 - 48, v25 - 96);
    re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(v24 + v10, v25 - 48);
    v7 = *(a1 + 80);
  }

  v42 = *(a1 + 96) + 168 * v7;
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v42 - 48));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v42 - 96));
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit((v42 - 144));

  --*(a1 + 80);
  ++*(a1 + 88);
  v44 = *re::resourceSharingLogObjects(v43);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    v13 = *v59;
    *buf = 138412290;
    *&buf[4] = v13;
    v14 = v44;
    v15 = "Resource connection with server %@ interrupted/invalidated: removed from connection list";
    goto LABEL_48;
  }
}

void ___ZN2re22ResourceSharingManager7connectERKNS_3xpc16ListenerEndpointEy_block_invoke_54(id *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *re::resourceSharingLogObjects(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "Resource connection with server %@ was invalidated", buf, 0xCu);
  }

  v4 = [a1[4] resourceSharingManager];
  if (v4)
  {
    v5 = v4;
    v6 = a1[4];
    v7 = v6;
    re::ResourceSharingManager::connectionInterruptedOrInvalidated(v5, &v7);
  }
}

void ___ZN2re22ResourceSharingManager7connectERKNS_3xpc16ListenerEndpointEy_block_invoke_55(uint64_t a1)
{
  v2 = *(a1 + 48);
  *v18 = [*(a1 + 64) processIdentifier];
  v3 = *(a1 + 64);
  if (v3)
  {
    v3 = objc_msgSend_auditToken(v3);
  }

  else
  {
    memset(&v18[4], 0, 32);
  }

  *&v18[36] = 0;
  v4 = re::PeerIDValidator::instance(v3);
  *(*(*(a1 + 40) + 8) + 24) = re::PeerIDValidator::validateOrAdd_impl(v4, &v17);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v5 = *(a1 + 64);
    v6 = *(a1 + 32);
    v7 = v6;
    v8 = *(a1 + 56);
    *&v18[8] = v8;
    v23 = 0;
    v29 = 0;
    v35 = 0;
    v34 = 0x7FFFFFFF;
    v9 = *(v2 + 72);
    v10 = *(v2 + 80);
    if (v10 >= v9)
    {
      v11 = v10 + 1;
      if (v9 < v10 + 1)
      {
        if (*(v2 + 64))
        {
          v12 = 2 * v9;
          v13 = v9 == 0;
          v14 = 8;
          if (!v13)
          {
            v14 = v12;
          }

          if (v14 <= v11)
          {
            v15 = v11;
          }

          else
          {
            v15 = v14;
          }

          re::DynamicArray<re::ResourceSharingManager::Connection>::setCapacity((v2 + 64), v15);
        }

        else
        {
          re::DynamicArray<re::ResourceSharingManager::Connection>::setCapacity((v2 + 64), v11);
          ++*(v2 + 88);
        }
      }

      v10 = *(v2 + 80);
    }

    v16 = *(v2 + 96) + 168 * v10;
    v17 = 0;
    *v18 = 0;
    *v16 = v5;
    *(v16 + 8) = v7;
    *(v16 + 64) = 0;
    *(v16 + 16) = v8;
    *(v16 + 24) = 0;
    *&v18[16] = 0;
    *(v16 + 32) = 0;
    *&v18[24] = 0;
    *(v16 + 40) = 0;
    *&v18[32] = 0;
    *(v16 + 48) = 0;
    v19 = 0;
    *(v16 + 52) = 0;
    v20 = 0;
    *(v16 + 56) = 0;
    v21 = 0;
    *(v16 + 60) = 0x7FFFFFFF;
    v22 = 0x7FFFFFFF;
    *(v16 + 72) = 0;
    v24[0] = 0;
    *(v16 + 80) = 0;
    v24[1] = 0;
    *(v16 + 88) = 0;
    v24[2] = 0;
    *(v16 + 96) = 0;
    v25 = 0;
    *(v16 + 100) = 0;
    v26 = 0;
    *(v16 + 104) = 0;
    v27 = 0;
    *(v16 + 108) = 0x7FFFFFFF;
    v28 = 0x7FFFFFFF;
    *(v16 + 112) = 1;
    *(v16 + 120) = 0;
    v30[0] = 0;
    *(v16 + 128) = 0;
    v30[1] = 0;
    *(v16 + 136) = 0;
    v30[2] = 0;
    *(v16 + 144) = 0;
    v31 = 0;
    *(v16 + 148) = 0;
    v32 = 0;
    *(v16 + 152) = 0;
    v33 = 0;
    *(v16 + 156) = v34;
    v34 = 0x7FFFFFFF;
    *(v16 + 160) = 1;
    ++*(v2 + 80);
    ++*(v2 + 88);
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v30);
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v24);
    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v18[16]);
  }
}

id __copy_helper_block_a8_64c25_ZTSN2re3xpc10ConnectionE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 64);
  *(a1 + 64) = result;
  return result;
}

uint64_t re::ResourceSharingManager::connectedPeers@<X0>(re::ResourceSharingManager *this@<X0>, uint64_t a2@<X8>)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x5812000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = "";
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v15 = 0;
  v3 = *(this + 5);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZNK2re22ResourceSharingManager14connectedPeersEv_block_invoke;
  block[3] = &unk_1E871AD68;
  block[4] = &v6;
  block[5] = this;
  dispatch_sync(v3, block);
  re::DynamicArray<char const*>::DynamicArray(a2, v7 + 6);
  _Block_object_dispose(&v6, 8);
  result = v12;
  if (v12)
  {
    if (v16)
    {
      return (*(*v12 + 40))();
    }
  }

  return result;
}

_anonymous_namespace_ *___ZNK2re22ResourceSharingManager14connectedPeersEv_block_invoke(_anonymous_namespace_ *result)
{
  v1 = *(result + 5);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = result;
    v4 = 168 * v2;
    v5 = (*(v1 + 96) + 16);
    do
    {
      result = re::DynamicArray<re::TransitionCondition *>::add((*(*(v3 + 4) + 8) + 48), v5);
      v5 += 21;
      v4 -= 168;
    }

    while (v4);
  }

  return result;
}

void re::ResourceSharingManager::pushDirectCommit(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_not_V2(*(a1 + 40));
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN2re22ResourceSharingManager16pushDirectCommitEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
  v6[3] = &unk_1E871AD90;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_sync(v4, v6);
}

void ___ZN2re22ResourceSharingManager16pushDirectCommitEPU24objcproto13OS_xpc_object8NSObject_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 80);
  if (v2)
  {
    v4 = *(v1 + 96);
    v5 = 168 * v2;
    do
    {
      v6 = re::ResourceFetchManager::Connection::remoteObjectProxy(v4);
      v7 = [[REXPCObject alloc] initWithObject:*(a1 + 32)];
      [v6 receiveDirectResourceCommit:v7];

      v4 += 21;
      v5 -= 168;
    }

    while (v5);
  }
}

void re::ResourceSharingManager::sendTrackableResource(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  dispatch_assert_queue_not_V2(*(a1 + 40));
  v6 = *(a1 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re22ResourceSharingManager21sendTrackableResourceEPU24objcproto13OS_xpc_object8NSObjecti_block_invoke;
  block[3] = &unk_1E871ADB8;
  v9 = v5;
  v10 = a1;
  v11 = a3;
  v7 = v5;
  dispatch_sync(v6, block);
}

void ___ZN2re22ResourceSharingManager21sendTrackableResourceEPU24objcproto13OS_xpc_object8NSObjecti_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 80);
  if (v2)
  {
    v4 = *(v1 + 96);
    v5 = 168 * v2;
    do
    {
      v6 = re::ResourceFetchManager::Connection::remoteObjectProxy(v4);
      v7 = [[REXPCObject alloc] initWithObject:*(a1 + 32)];
      [v6 receiveTrackableResource:v7 withType:*(a1 + 48)];

      v4 += 21;
      v5 -= 168;
    }

    while (v5);
  }
}

uint64_t re::ResourceSharingManager::decodeShaderGraph@<X0>(dispatch_queue_t *this@<X0>, const re::Data *a2@<X1>, const re::Data *a3@<X2>, uint64_t a4@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_not_V2(this[5]);
  v33 = 0;
  v34 = &v33;
  v35 = 0x5812000000;
  v36 = __Block_byref_object_copy__59;
  v37 = __Block_byref_object_dispose__60;
  v38 = "";
  v41 = 0;
  memset(v39, 0, sizeof(v39));
  v40 = 0;
  v8 = this[5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2re22ResourceSharingManager17decodeShaderGraphERKNS_4DataES3__block_invoke;
  block[3] = &unk_1E871AD68;
  block[4] = &v33;
  block[5] = this;
  dispatch_sync(v8, block);
  if (v34[8] >= 2)
  {
    v10 = *re::resourceSharingLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = v34[8];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v21;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Expected num connections <= 1, have %zu", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v43 = 0x3812000000;
  v44 = __Block_byref_object_copy__62;
  v45 = __Block_byref_object_dispose__63;
  v46 = 0;
  v47 = [MEMORY[0x1E696ABC0] errorWithDomain:@"No XPC connection" code:0 userInfo:0];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3812000000;
  v28 = __Block_byref_object_copy__66;
  v30 = 0;
  v31 = 0;
  v29 = __Block_byref_object_dispose__67;
  v11 = v34[8];
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v34[10];
  v13 = MEMORY[0x1E69E9820];
  v14 = 8 * v11;
  do
  {
    v23[0] = v13;
    v23[1] = 3221225472;
    v23[2] = ___ZN2re22ResourceSharingManager17decodeShaderGraphERKNS_4DataES3__block_invoke_68;
    v23[3] = &unk_1E871ADE0;
    v23[4] = &buf;
    re::xpc::Connection::syncRemoteObjectProxy(v12, v23, &v24);
    v15 = *a2;
    v16 = *a3;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___ZN2re22ResourceSharingManager17decodeShaderGraphERKNS_4DataES3__block_invoke_2;
    v22[3] = &unk_1E871AE08;
    v22[4] = &buf;
    v22[5] = &v25;
    [v24 decodeShaderGraph:v15 withFnConsts:v16 withReply:v22];

    ++v12;
    v14 -= 8;
  }

  while (v14);
  v17 = v26[6];
  if (v17)
  {
    v18 = 1;
  }

  else
  {
LABEL_9:
    v18 = 0;
    v17 = *(*(&buf + 1) + 48);
  }

  v19 = v17;
  *a4 = v18;
  *(a4 + 8) = v19;
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v33, 8);
  return re::DynamicArray<re::ObjCObject>::deinit(v39);
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 80) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 72) = 0;
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v3 = *(result + 64);
  *(result + 64) = *(a2 + 64);
  *(a2 + 64) = v3;
  v4 = *(result + 80);
  *(result + 80) = *(a2 + 80);
  *(a2 + 80) = v4;
  ++*(a2 + 72);
  ++*(result + 72);
  return result;
}

_anonymous_namespace_ *___ZN2re22ResourceSharingManager17decodeShaderGraphERKNS_4DataES3__block_invoke(_anonymous_namespace_ *result)
{
  v1 = *(result + 5);
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 96);
    v5 = 168 * v2;
    do
    {
      v6 = *(*(v3 + 4) + 8);
      v7 = *(v6 + 56);
      v8 = *(v6 + 64);
      if (v8 >= v7)
      {
        v9 = v8 + 1;
        if (v7 < v9)
        {
          if (*(v6 + 48))
          {
            if (v7)
            {
              v10 = 2 * v7;
            }

            else
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

            re::DynamicArray<re::ObjCObject>::setCapacity((v6 + 48), v11);
          }

          else
          {
            re::DynamicArray<re::ObjCObject>::setCapacity((v6 + 48), v9);
            ++*(v6 + 72);
          }
        }

        v8 = *(v6 + 64);
      }

      v12 = *(v6 + 80);
      v13 = *v4;
      v4 += 21;
      result = v13;
      *(v12 + 8 * v8) = result;
      ++*(v6 + 64);
      ++*(v6 + 72);
      v5 -= 168;
    }

    while (v5);
  }

  return result;
}

uint64_t __Block_byref_object_copy__62(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_copy__66(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void ___ZN2re22ResourceSharingManager17decodeShaderGraphERKNS_4DataES3__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = 32;
    v8 = v5;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_6;
    }

    v7 = 40;
    v8 = v9;
  }

  re::ObjCObject::operator=((*(*(a1 + v7) + 8) + 48), v8);
LABEL_6:
}

void re::ResourceSharingManager::payloadDidChange(dispatch_queue_t *this, const re::AssetHandle *a2)
{
  dispatch_assert_queue_V2(this[4]);
  v4 = this[5];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN2re22ResourceSharingManager16payloadDidChangeERKNS_11AssetHandleE_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = this;
  v5[5] = a2;
  dispatch_sync(v4, v5);
}

void ___ZN2re22ResourceSharingManager16payloadDidChangeERKNS_11AssetHandleE_block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = re::AssetHandle::assetInfo(*(a1 + 40));
  v4 = re::Hash<re::DynamicString>::operator()(buf, v3 + 12);
  v5 = *(v2 + 10);
  if (v5)
  {
    v6 = 0;
    v7 = *(v2 + 12);
    v8 = v7 + 168 * v5;
    do
    {
      v9 = *(v7 + 56);
      if (v9)
      {
        v10 = 0;
        v11 = (*(v7 + 40) + 8);
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
            LODWORD(v10) = *(v7 + 56);
            break;
          }
        }
      }

      else
      {
        LODWORD(v10) = 0;
      }

      if (v10 != v9)
      {
        v13 = *(v7 + 40);
        while (*(*(v13 + 24 * v10 + 16) + 56) != v4)
        {
          if (v9 <= v10 + 1)
          {
            v14 = v10 + 1;
          }

          else
          {
            v14 = *(v7 + 56);
          }

          while (v14 - 1 != v10)
          {
            LODWORD(v10) = v10 + 1;
            if ((*(v13 + 24 * v10 + 8) & 0x80000000) != 0)
            {
              goto LABEL_19;
            }
          }

          LODWORD(v10) = v14;
LABEL_19:
          if (v10 == v9)
          {
            goto LABEL_22;
          }
        }

        v6 = *(v13 + 24 * v10 + 16);
      }

LABEL_22:
      v7 += 168;
    }

    while (v7 != v8);
    if (v6 && v6[11])
    {
      v15 = *re::resourceSharingLogObjects(v4);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v39 = *(a1 + 40);
        v40 = v15;
        v41 = re::AssetHandle::assetInfo(v39);
        if (v41[17])
        {
          v42 = v41[18];
        }

        else
        {
          v42 = v41 + 137;
        }

        v43 = v6[11];
        *buf = 136315394;
        *v51 = v42;
        *&v51[8] = 2048;
        *&v51[10] = v43;
        _os_log_debug_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEBUG, "Sending updated resource payload for '%s' to %zu subscribed servers", buf, 0x16u);
      }

      re::ResourceSharingManager::makeFetchRequestResult(v46, v2, *(a1 + 40));
      v17 = v6[11];
      if (v17)
      {
        v18 = v6[13];
        v19 = &v18[v17];
        *&v16 = 138412290;
        v44 = v16;
        v45 = v19;
        do
        {
          v20 = *v18;
          v21 = v46[0];
          v22 = v47;
          v23 = v22;
          v24 = *(v2 + 10);
          if (v24)
          {
            v25 = *(v2 + 12);
            v26 = 168 * v24;
            while (*(v25 + 8) != v20)
            {
              v25 += 168;
              v26 -= 168;
              if (!v26)
              {
                goto LABEL_32;
              }
            }

            if (v6[4])
            {
              v30 = v6[5];
            }

            else
            {
              v30 = v6 + 33;
            }

            v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v30, v44}];
            v48[0] = v21;
            v49 = v23;
            re::ResourceSharingManager::validateResult(buf, v2, v25, v6, v48);

            v32 = buf[0];
            v33 = *&v51[4];
            if (buf[0])
            {
              v34 = *&v51[4];
            }

            else
            {
              v34 = 0;
            }

            v35 = v34;
            if (v32)
            {
              v36 = 0;
            }

            else
            {
              v36 = v33;
            }

            v37 = v36;

            v38 = re::ResourceFetchManager::Connection::remoteObjectProxy(v25);
            [v38 resourceAtAssetPath:v31 payloadDidUpdate:v35 error:v37];

            v19 = v45;
          }

          else
          {
LABEL_32:
            v27 = *re::resourceSharingLogObjects(v22);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
            {
              v28 = v20;
              *buf = v44;
              *v51 = v28;
              v29 = v27;
              _os_log_fault_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_FAULT, "No resource connection exists for server %@", buf, 0xCu);
            }
          }

          ++v18;
        }

        while (v18 != v19);
      }
    }
  }
}

uint64_t re::ResourceSharingManager::makeFetchRequestResult(re::ResourceSharingManager *this, const re::AssetHandle *a2, const re::AssetHandle *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  memset(buf, 0, 32);
  v7 = snprintf_l(buf, 0x20uLL, 0, "%llu", v6);
  if ((v7 - 32) <= 0xFFFFFFE0)
  {
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "0 < ret && ret < sizeof(str)", "peerIDToString", 202);
    _os_crash("assertion failure: (0 < ret && ret < sizeof(str)) ");
    __break(1u);
  }

  v9 = *(a2 + 3);
  re::AssetHandle::AssetHandle(v26, a3);
  if (v29)
  {
    v10 = *&v30[7];
  }

  else
  {
    v10 = v30;
  }

  (*(*v9 + 232))(&v27, v9, v26, v10);
  re::AssetHandle::~AssetHandle(v26);
  if (v27)
  {
    v12 = *re::resourceSharingLogObjects(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v18 = v12;
      v19 = re::AssetHandle::assetInfo(a3);
      if (v19[17])
      {
        v20 = v19[18];
      }

      else
      {
        v20 = v19 + 137;
      }

      *buf = 136315138;
      *&buf[4] = v20;
      _os_log_debug_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEBUG, "Created shared resource payload for '%s'", buf, 0xCu);
    }

    v13 = v27;
    *this = 1;
    *(this + 1) = v13;
  }

  else
  {
    re::makeResourceSharingError(&v25, 1, 0);
    v15 = *re::resourceSharingLogObjects(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21 = v15;
      v22 = re::AssetHandle::assetInfo(a3);
      if (v22[17])
      {
        v23 = v22[18];
      }

      else
      {
        v23 = v22 + 137;
      }

      v24 = v25;
      *buf = 136315394;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = v24;
      _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Failed to makeFetchRequestResult for '%s': %@", buf, 0x16u);
    }

    v16 = v25;
    *this = 0;
    *(this + 1) = v16;
  }

  result = v28;
  if (v28)
  {
    if (v29)
    {
      return (*(*v28 + 40))();
    }
  }

  return result;
}

void re::ResourceSharingManager::releaseAssets(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a2 + 8)];
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *a2;
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v8];
      [v4 addObject:v9];

      v7 -= 8;
    }

    while (v7);
  }

  v10 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];
  v11 = *(a1 + 40);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZN2re22ResourceSharingManager13releaseAssetsERKNS_5SliceIyEE_block_invoke;
  v13[3] = &unk_1E871AD90;
  v14 = v10;
  v15 = a1;
  v12 = v10;
  dispatch_sync(v11, v13);
}

void ___ZN2re22ResourceSharingManager13releaseAssetsERKNS_5SliceIyEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 80);
  if (v2)
  {
    v4 = *(v1 + 96);
    v5 = 168 * v2;
    do
    {
      v6 = re::ResourceFetchManager::Connection::remoteObjectProxy(v4);
      [v6 releaseResourcesWithAssetIds:*(a1 + 32)];

      v4 += 21;
      v5 -= 168;
    }

    while (v5);
  }
}

unint64_t re::ResourceSharingManager::drainResourceRequestQueue(re::ResourceSharingManager *this, dispatch_time_t a2)
{
  v3 = *(this + 7);
  v4 = *(v3 + 48);
  re::internal::ResourceRequestQueue::flushSync(v3, a2);
  v5 = *(*(this + 7) + 48);
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

unint64_t non-virtual thunk tore::ResourceSharingManager::drainResourceRequestQueue(re::ResourceSharingManager *this, dispatch_time_t a2)
{
  v3 = *(this + 6);
  v4 = *(v3 + 48);
  re::internal::ResourceRequestQueue::flushSync(v3, a2);
  v5 = *(*(this + 6) + 48);
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

void re::DynamicArray<REResourceSharingClientObject * {__strong}>::remove(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  i = v3;
  if (v4)
  {
    v6 = 8 * v4;
    for (i = *(a1 + 32); *i != a2; i += 8)
    {
      v6 -= 8;
      if (!v6)
      {
        return;
      }
    }
  }

  v7 = &v3[8 * v4];
  if (i != v7)
  {
    v8 = i - v3;
    v9 = v8 >> 3;
    if (v4 <= v8 >> 3)
    {
      v16 = 0;
      memset(v25, 0, sizeof(v25));
      v13 = MEMORY[0x1E69E9C10];
      v17 = 136315906;
      v18 = "removeAt";
      v19 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v20 = 931;
      v21 = 2048;
      v22 = v9;
      v23 = 2048;
      v24 = v4;
      _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
      _os_crash_msg();
      __break(1u);
    }

    if (v4 - 1 > v9)
    {
      v10 = *(v7 - 1);
      *(v7 - 1) = 0;
      v11 = *(a1 + 32);
      v12 = *(v11 + v8);
      *(v11 + v8) = v10;

      v4 = *(a1 + 16);
      v3 = *(a1 + 32);
    }

    --*(a1 + 16);
    ++*(a1 + 24);
  }
}

uint64_t ___ZN2re22ResourceSharingManager19enqueueFetchRequestENS0_12FetchRequestE_block_invoke(uint64_t a1)
{
  v88 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v44 = *(a1 + 40);
  re::DynamicString::DynamicString(&v45, (a1 + 48));
  re::DynamicString::DynamicString(v47, (a1 + 80));
  v3 = *(a1 + 120);
  v48 = *(a1 + 112);
  v49 = v3;
  aBlock = _Block_copy(*(a1 + 128));
  dispatch_assert_queue_V2(*(v2 + 32));
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v4 = *(v2 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2re22ResourceSharingManager19processFetchRequestENS0_12FetchRequestE_block_invoke;
  block[3] = &unk_1F5CBCD70;
  block[5] = v2;
  v63 = v44;
  v5 = v4;
  re::DynamicString::DynamicString(v64, &v45);
  re::DynamicString::DynamicString(v65, v47);
  v65[4] = v48;
  v66 = v49;
  v67 = _Block_copy(aBlock);
  block[4] = &v68;
  dispatch_sync(v5, block);

  if (v69[3])
  {
    (***(v2 + 24))(&v60);
    if (v61)
    {
      v7 = *(v61 + 280);
    }

    else
    {
      v7 = 0;
    }

    v9 = re::AssetHandle::assetInfo(&v60);
    if (v9[10] == -1)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9[10];
    }

    if (v7)
    {
      v12 = *v7;
    }

    else
    {
      v12 = 0;
    }

    v13 = re::AssetSignpost::fireImpulse(0x80D, v11, v12, v10);
    if (v61)
    {
      v14 = atomic_load((v61 + 896));
      if (v14 == 2)
      {
        if (re::assetsHighFrequencyLoggingEnabled(void)::onceToken != -1)
        {
          dispatch_once(&re::assetsHighFrequencyLoggingEnabled(void)::onceToken, &__block_literal_global_0);
        }

        if (re::assetsHighFrequencyLoggingEnabled(void)::shouldLog == 1)
        {
          v15 = *re::assetsLogObjects(v13);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v40 = v15;
            re::AssetPath::fullAssetPath(&v44, &buf);
            if (BYTE8(buf))
            {
              v41 = v73;
            }

            else
            {
              v41 = (&buf + 9);
            }

            v42 = *(re::AssetHandle::assetInfo(&v60) + 10);
            if (v42 == -1)
            {
              v42 = 0;
            }

            *v84 = 136315394;
            *&v84[4] = v41;
            *&v84[12] = 2048;
            *&v84[14] = v42;
            _os_log_debug_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEBUG, "Handled resource fetch request for '%s': asset with id '%llu'", v84, 0x16u);

            if (buf && (BYTE8(buf) & 1) != 0)
            {
              (*(*buf + 40))();
            }
          }
        }

        re::ResourceSharingManager::makeFetchRequestResult(v58, v2, &v60);
        *v84 = 0;
        *&v84[8] = v84;
        *&v84[16] = 0x3032000000;
        v85 = __Block_byref_object_copy__90;
        v86 = __Block_byref_object_dispose__91;
        v87 = 0;
        v52 = 0;
        v53 = &v52;
        v54 = 0x3032000000;
        v55 = __Block_byref_object_copy__90;
        v56 = __Block_byref_object_dispose__91;
        v57 = 0;
        v16 = *(v2 + 40);
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3321888768;
        v73 = ___ZN2re22ResourceSharingManager19processFetchRequestENS0_12FetchRequestE_block_invoke_92;
        v74 = &unk_1F5CBCDA8;
        v77[1] = v2;
        v75 = &v68;
        v17 = v16;
        re::AssetHandle::AssetHandle(v78, &v60);
        BYTE8(v79) = v58[0];
        v18 = v59;
        *&v80 = v18;
        v76 = v84;
        v77[0] = &v52;
        dispatch_sync(v17, &buf);

        v19 = aBlock;
        v20 = *(*&v84[8] + 40);
        v51 = v20;

        re::AssetHandle::~AssetHandle(v78);
        _Block_object_dispose(&v52, 8);

        _Block_object_dispose(v84, 8);
        goto LABEL_42;
      }

      v21 = atomic_load((v61 + 896));
      v22 = v21 == 3;
    }

    else
    {
      v22 = 0;
    }

    v23 = *re::resourceSharingLogObjects(v13);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
    if (v22)
    {
      if (!v24)
      {
LABEL_32:
        v34 = aBlock;
        re::ResourceSharingManager::makeFetchRequestError(&buf, v25, v26, v27);

LABEL_42:
        re::AssetHandle::~AssetHandle(&v60);
        goto LABEL_43;
      }

      v28 = v23;
      re::AssetPath::fullAssetPath(&v44, &buf);
      if (BYTE8(buf))
      {
        v29 = v73;
      }

      else
      {
        v29 = (&buf + 9);
      }

      *v84 = 136315138;
      *&v84[4] = v29;
      v30 = "Handled resource fetch request for '%s': asset loading has already failed";
    }

    else
    {
      if (v24)
      {
        v38 = v23;
        re::AssetPath::fullAssetPath(&v44, &buf);
        v39 = (BYTE8(buf) & 1) != 0 ? v73 : (&buf + 9);
        *v84 = 136315138;
        *&v84[4] = v39;
        _os_log_debug_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEBUG, "Requesting async load of '%s' due to resource fetch request", v84, 0xCu);

        if (buf)
        {
          if (BYTE8(buf))
          {
            (*(*buf + 40))();
          }
        }
      }

      re::AssetHandle::loadAsync(&v60);
      if (!v61 || (v32 = atomic_load((v61 + 896)), v32 != 3))
      {
        v35 = *(v2 + 40);
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3321888768;
        v73 = ___ZN2re22ResourceSharingManager19processFetchRequestENS0_12FetchRequestE_block_invoke_93;
        v74 = &unk_1F5CBCDE0;
        v75 = &v68;
        v76 = v2;
        v36 = v35;
        re::AssetHandle::AssetHandle(v77, &v60);
        v78[2] = v44;
        re::DynamicString::DynamicString(&v79, &v45);
        re::DynamicString::DynamicString(v81, v47);
        v81[4] = v48;
        v82 = v49;
        v83 = _Block_copy(aBlock);
        dispatch_sync(v36, &buf);

        if (v81[0])
        {
          if (v81[1])
          {
            (*(*v81[0] + 40))();
          }

          memset(v81, 0, 32);
        }

        if (v79)
        {
          if (BYTE8(v79))
          {
            (*(*v79 + 40))();
          }

          v79 = 0u;
          v80 = 0u;
        }

        re::AssetHandle::~AssetHandle(v77);
        goto LABEL_42;
      }

      v33 = *re::resourceSharingLogObjects(v31);
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_32;
      }

      v28 = v33;
      re::AssetPath::fullAssetPath(&v44, &buf);
      if (BYTE8(buf))
      {
        v43 = v73;
      }

      else
      {
        v43 = (&buf + 9);
      }

      *v84 = 136315138;
      *&v84[4] = v43;
      v30 = "Handled resource fetch request for '%s': asset loading failed to begin";
    }

    _os_log_debug_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEBUG, v30, v84, 0xCu);

    if (buf && (BYTE8(buf) & 1) != 0)
    {
      (*(*buf + 40))();
    }

    goto LABEL_32;
  }

  v8 = *re::resourceSharingLogObjects(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v49;
    _os_log_fault_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_FAULT, "No resource connection exists for server %@", &buf, 0xCu);
  }

LABEL_43:

  if (v65[0])
  {
    if (v65[1])
    {
      (*(*v65[0] + 40))();
    }

    memset(v65, 0, 32);
  }

  if (v64[0])
  {
    if (v64[1])
    {
      (*(*v64[0] + 40))();
    }

    memset(v64, 0, sizeof(v64));
  }

  _Block_object_dispose(&v68, 8);

  if (v47[0])
  {
    if (v47[1])
    {
      (*(*v47[0] + 40))();
    }

    memset(v47, 0, sizeof(v47));
  }

  result = v45;
  if (v45)
  {
    if (v46)
    {
      return (*(*v45 + 40))();
    }
  }

  return result;
}

void *__copy_helper_block_a8_40c48_ZTSKN2re22ResourceSharingManager12FetchRequestE(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  re::DynamicString::DynamicString((a1 + 48), (a2 + 48));
  re::DynamicString::DynamicString((a1 + 80), (a2 + 80));
  v4 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v4;
  result = _Block_copy(*(a2 + 128));
  *(a1 + 128) = result;
  return result;
}

double __destroy_helper_block_a8_40c48_ZTSKN2re22ResourceSharingManager12FetchRequestE(id *a1)
{
  re::DynamicString::deinit((a1 + 10));

  return re::DynamicString::deinit((a1 + 6));
}

uint64_t ___ZN2re22ResourceSharingManager25enqueueUnsubscribeRequestENS0_18UnsubscribeRequestE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = ___ZN2re22ResourceSharingManager25enqueueUnsubscribeRequestENS0_18UnsubscribeRequestE_block_invoke_2;
  v9[3] = &__block_descriptor_80_a8_40c54_ZTSKN2re22ResourceSharingManager18UnsubscribeRequestE_e5_v8__0l;
  v9[4] = v2;
  v4 = v3;
  re::DynamicString::DynamicString(&v10, (a1 + 40));
  v13 = *(a1 + 72);
  dispatch_sync(v4, v9);

  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))(v10, v12, v5, v6, v7);
    }
  }

  return result;
}

uint64_t ___ZN2re22ResourceSharingManager25enqueueUnsubscribeRequestENS0_18UnsubscribeRequestE_block_invoke_2(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  re::DynamicString::DynamicString(&v42, (a1 + 40));
  v46 = *(a1 + 72);
  dispatch_assert_queue_V2(*(v2 + 32));
  dispatch_assert_queue_V2(*(v2 + 40));
  v4 = *(v2 + 80);
  if (v4)
  {
    v5 = 0;
    v6 = *(v2 + 96);
    v7 = 168 * v4;
    while (*(v6 + v5 + 8) != v46)
    {
      v5 += 168;
      if (v7 == v5)
      {
        goto LABEL_5;
      }
    }

    v9 = *(v6 + v5 + 56);
    if (v9)
    {
      v10 = 0;
      v11 = (*(v6 + v5 + 40) + 8);
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
          LODWORD(v10) = *(v6 + v5 + 56);
          break;
        }
      }
    }

    else
    {
      LODWORD(v10) = 0;
    }

    if (v10 == v9)
    {
LABEL_24:
      v20 = *re::resourceSharingLogObjects(v3);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        if (v43)
        {
          v33 = v45;
        }

        else
        {
          v33 = v44;
        }

        *buf = 138412546;
        v48 = v46;
        v49 = 2080;
        v50 = v33;
        _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "Resource connection %@ ignored an unsubscribe request for '%s': no subscription exists", buf, 0x16u);
      }
    }

    else
    {
      v13 = v6 + v5;
      v14 = *(v6 + v5 + 40);
      while (1)
      {
        v15 = v14 + 24 * v10;
        v18 = *(v15 + 16);
        v16 = (v15 + 16);
        v17 = v18;
        v3 = re::DynamicString::operator==(v18 + 24, &v42);
        if (v3)
        {
          break;
        }

        if (v9 <= v10 + 1)
        {
          v19 = v10 + 1;
        }

        else
        {
          v19 = v9;
        }

        while (v19 - 1 != v10)
        {
          LODWORD(v10) = v10 + 1;
          if ((*(v14 + 24 * v10 + 8) & 0x80000000) != 0)
          {
            goto LABEL_23;
          }
        }

        LODWORD(v10) = v19;
LABEL_23:
        if (v10 == v9)
        {
          goto LABEL_24;
        }
      }

      re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v6 + v5 + 72, (v17 + 64));
      re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v6 + v5 + 120, (*v16 + 64));
      v22 = *v16;
      if (*v16)
      {
        v23 = (v22 + 8);
      }

      re::DynamicArray<REResourceSharingClientObject * {__strong}>::remove(v22 + 72, v46);
      v25 = *(v6 + v5 + 48);
      if (v25)
      {
        v26 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) >> 27));
        v27 = (v26 ^ (v26 >> 31)) % v25;
        v28 = *(v6 + v5 + 32);
        v29 = *(v28 + 4 * v27);
        if (v29 != 0x7FFFFFFF)
        {
          v30 = *(v13 + 40);
          if (*(v30 + 24 * v29 + 16) == v22)
          {
            *(v28 + 4 * v27) = *(v30 + 24 * v29 + 8) & 0x7FFFFFFF;
LABEL_42:
            v34 = *(v13 + 40) + 24 * v29;
            v35 = *(v34 + 8);
            if (v35 < 0)
            {
              *(v34 + 8) = v35 & 0x7FFFFFFF;
              v36 = *(v34 + 16);
              if (v36)
              {

                *(v34 + 16) = 0;
              }
            }

            v37 = (v6 + v5);
            v38 = *(v13 + 40) + 24 * v29;
            *(v38 + 8) = *(v38 + 8) & 0x80000000 | *(v6 + v5 + 60);
            v37[13] = *(v6 + v5 + 52) - 1;
            v39 = *(v6 + v5 + 64) + 1;
            v37[15] = v29;
            v37[16] = v39;
          }

          else
          {
            while (1)
            {
              v31 = v29;
              v32 = *(v30 + 24 * v29 + 8);
              v29 = v32 & 0x7FFFFFFF;
              if ((v32 & 0x7FFFFFFF) == 0x7FFFFFFF)
              {
                break;
              }

              if (*(v30 + 24 * v29 + 16) == v22)
              {
                *(v30 + 24 * v31 + 8) = *(v30 + 24 * v31 + 8) & 0x80000000 | *(v30 + 24 * v29 + 8) & 0x7FFFFFFF;
                goto LABEL_42;
              }
            }
          }
        }
      }

      v40 = *re::resourceSharingLogObjects(v24);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        if (v43)
        {
          v41 = v45;
        }

        else
        {
          v41 = v44;
        }

        *buf = 138412546;
        v48 = v46;
        v49 = 2080;
        v50 = v41;
        _os_log_debug_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEBUG, "Resource connection %@ unsubscribed from '%s'", buf, 0x16u);
        if (!v22)
        {
          goto LABEL_25;
        }
      }

      else if (!v22)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_5:
    v8 = *re::resourceSharingLogObjects(v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v48 = v46;
      _os_log_fault_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_FAULT, "No resource connection exists for server %@", buf, 0xCu);
    }
  }

LABEL_25:

  result = v42;
  if (v42)
  {
    if (v43)
    {
      return (*(*v42 + 40))();
    }
  }

  return result;
}

id __copy_helper_block_a8_40c54_ZTSKN2re22ResourceSharingManager18UnsubscribeRequestE(uint64_t a1, uint64_t a2)
{
  re::DynamicString::DynamicString((a1 + 40), (a2 + 40));
  result = *(a2 + 72);
  *(a1 + 72) = result;
  return result;
}

double __destroy_helper_block_a8_40c54_ZTSKN2re22ResourceSharingManager18UnsubscribeRequestE(uint64_t a1)
{

  return re::DynamicString::deinit((a1 + 40));
}

uint64_t ___ZN2re22ResourceSharingManager24enqueueSetOptionsRequestENS0_17SetOptionsRequestE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN2re22ResourceSharingManager24enqueueSetOptionsRequestENS0_17SetOptionsRequestE_block_invoke_2;
  block[3] = &__block_descriptor_88_a8_40c52_ZTSN2re22ResourceSharingManager17SetOptionsRequestE_e5_v8__0l;
  block[4] = v2;
  v4 = v3;
  re::DynamicString::DynamicString(&v7, (a1 + 40));
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  dispatch_sync(v4, block);

  result = v7;
  if (v7)
  {
    if (v8)
    {
      return (*(*v7 + 40))();
    }
  }

  return result;
}

uint64_t ___ZN2re22ResourceSharingManager24enqueueSetOptionsRequestENS0_17SetOptionsRequestE_block_invoke_2(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  re::DynamicString::DynamicString(&v36, (a1 + 40));
  v40 = *(a1 + 72);
  v41 = *(a1 + 80);
  dispatch_assert_queue_V2(*(v2 + 32));
  dispatch_assert_queue_V2(*(v2 + 40));
  v3 = re::Hash<re::DynamicString>::operator()(buf, &v36);
  v4 = *(v2 + 80);
  if (!v4)
  {
LABEL_5:
    v7 = *re::resourceSharingLogObjects(v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v49 = v40;
      _os_log_fault_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_FAULT, "No resource connection exists for server %@", buf, 0xCu);
    }

    goto LABEL_25;
  }

  v5 = *(v2 + 96) + 40;
  v6 = 168 * v4;
  while (*(v5 - 32) != v40)
  {
    v5 += 168;
    v6 -= 168;
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (*v5 + 8);
    while (1)
    {
      v11 = *v10;
      v10 += 6;
      if (v11 < 0)
      {
        break;
      }

      if (v8 == ++v9)
      {
        LODWORD(v9) = *(v5 + 16);
        break;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 == v8)
  {
LABEL_24:
    v17 = *re::resourceSharingLogObjects(v3);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      if (v37)
      {
        v26 = v39;
      }

      else
      {
        v26 = v38;
      }

      *buf = 138412546;
      v49 = v40;
      v50 = 2080;
      *v51 = v26;
      _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Resource connection %@ ignored a set-options request for '%s': no subscription exists", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v12 = *v5;
  while (1)
  {
    v13 = v12 + 24 * v9;
    v15 = *(v13 + 16);
    v14 = (v13 + 16);
    if (*(v15 + 56) == v3)
    {
      break;
    }

    if (v8 <= v9 + 1)
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = v8;
    }

    while (v16 - 1 != v9)
    {
      LODWORD(v9) = v9 + 1;
      if ((*(v12 + 24 * v9 + 8) & 0x80000000) != 0)
      {
        goto LABEL_23;
      }
    }

    LODWORD(v9) = v16;
LABEL_23:
    if (v9 == v8)
    {
      goto LABEL_24;
    }
  }

  v19 = (*(**(v2 + 24) + 112))(buf);
  if ((buf[0] & 1) == 0)
  {
    v22 = *re::resourceSharingLogObjects(v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = v39;
      if ((v37 & 1) == 0)
      {
        v23 = v38;
      }

      v24 = *v14;
      if (*(*v14 + 32))
      {
        v25 = *(v24 + 40);
      }

      else
      {
        v25 = (v24 + 33);
      }

      *v42 = 138412802;
      v43 = v40;
      v44 = 2080;
      v45 = v23;
      v46 = 2080;
      v47 = v25;
      _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Resource connection %@ has a subscription for '%s', but no AssetHandle '%s' could be found in AssetService.", v42, 0x20u);
    }

    goto LABEL_51;
  }

  if (!*&v51[2])
  {
    v29 = *re::resourceSharingLogObjects(v19);
    goto LABEL_50;
  }

  v20 = atomic_load((*&v51[2] + 896));
  if (v20 != 2)
  {
    v27 = atomic_load((*&v51[2] + 896));
    v28 = re::resourceSharingLogObjects(v19);
    v29 = *v28;
    if (v27 == 3)
    {
      if (os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
      {
        if (v37)
        {
          v30 = v39;
        }

        else
        {
          v30 = v38;
        }

        *v42 = 136315138;
        v43 = v30;
        _os_log_debug_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEBUG, "Handled set-options request for '%s': asset loading has already failed", v42, 0xCu);
      }

      goto LABEL_51;
    }

LABEL_50:
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      if (v37)
      {
        v31 = v39;
      }

      else
      {
        v31 = v38;
      }

      *v42 = 136315138;
      v43 = v31;
      _os_log_fault_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_FAULT, "Set-options request for '%s' arrived while asset is loading, which isn't yet implemented", v42, 0xCu);
    }

    goto LABEL_51;
  }

  v21 = *re::resourceSharingLogObjects(v19);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    if (v37)
    {
      v32 = v39;
    }

    else
    {
      v32 = v38;
    }

    v33 = v40;
    v34 = v41;
    *v42 = 138412802;
    v43 = v33;
    v44 = 2080;
    v45 = v32;
    v46 = 2112;
    v47 = v34;
    v35 = v21;
    _os_log_debug_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEBUG, "Resource connection %@ set payload options on '%s': %@", v42, 0x20u);
  }

  re::AssetManager::setAssetPayloadRequestOptions(*(*&v51[2] + 24), *&v51[2], &v41);
LABEL_51:
  if (buf[0] == 1)
  {
    re::AssetHandle::~AssetHandle((&v49 + 4));
  }

LABEL_25:

  result = v36;
  if (v36)
  {
    if (v37)
    {
      return (*(*v36 + 40))();
    }
  }

  return result;
}

id __copy_helper_block_a8_40c52_ZTSN2re22ResourceSharingManager17SetOptionsRequestE(void *a1, id *a2)
{
  re::DynamicString::DynamicString((a1 + 5), (a2 + 5));
  a1[9] = a2[9];
  result = a2[10];
  a1[10] = result;
  return result;
}

double __destroy_helper_block_a8_40c52_ZTSN2re22ResourceSharingManager17SetOptionsRequestE(id *a1)
{

  return re::DynamicString::deinit((a1 + 5));
}

void re::ResourceSharingManager::pushLoadedAssetWithPayload(re::ResourceSharingManager *this, const re::AssetHandle *a2, char a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 1);
  if (v6)
  {
    v7 = *(v6 + 280);
  }

  else
  {
    v7 = 0;
  }

  if (re::assetsHighFrequencyLoggingEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::assetsHighFrequencyLoggingEnabled(void)::onceToken, &__block_literal_global_0);
  }

  if (re::assetsHighFrequencyLoggingEnabled(void)::shouldLog == 1)
  {
    v8 = *re::assetsLogObjects(this);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = v8;
      v15 = *(re::AssetHandle::assetInfo(a2) + 10);
      if (v15 == -1)
      {
        v15 = 0;
      }

      *buf = 134217984;
      v27 = v15;
      _os_log_debug_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEBUG, "Pushing loaded asset with payload: %llu", buf, 0xCu);
    }
  }

  RequestResult = re::ResourceSharingManager::makeFetchRequestResult(v24, this, a2);
  if (v24[0])
  {
    v10 = *(this + 5);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3321888768;
    v19[2] = ___ZN2re22ResourceSharingManager26pushLoadedAssetWithPayloadERKNS_11AssetHandleEb_block_invoke;
    v19[3] = &__block_descriptor_73_a8_48c63_ZTSN2re6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEE_e5_v8__0l;
    v19[4] = this;
    v19[5] = a2;
    v20 = v24[0];
    v11 = v10;
    v12 = v25;
    v21 = v12;
    v22 = v7;
    v23 = a3;
    dispatch_sync(v11, v19);
  }

  else
  {
    v13 = *re::resourceSharingLogObjects(RequestResult);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = v13;
      v17 = re::AssetHandle::assetInfo(a2);
      if (v17[10] == -1)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17[10];
      }

      v12 = v25;
      *buf = 134218242;
      v27 = v18;
      v28 = 2112;
      v29 = v12;
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Failed to push loaded asset(%llu) to peers: %@", buf, 0x16u);
    }

    else
    {
      v12 = v25;
    }
  }
}

void ___ZN2re22ResourceSharingManager26pushLoadedAssetWithPayloadERKNS_11AssetHandleEb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 10);
  if (v2)
  {
    v4 = *(v1 + 12);
    v5 = 168 * v2;
    do
    {
      re::ResourceSharingManager::findOrAddSubscription(&v21, v1, v4, *(a1 + 40));
      v6 = v21;
      v17[0] = *(a1 + 48);
      v18 = *(a1 + 56);
      re::ResourceSharingManager::validateResult(v19, v1, v4, v6, v17);

      v7 = v19[0];
      v8 = v20;
      if (v19[0])
      {
        v9 = v20;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      if (v7)
      {
        v11 = 0;
      }

      else
      {
        v11 = v8;
      }

      v12 = v11;

      if (!v12)
      {
        v13 = re::ResourceFetchManager::Connection::remoteObjectProxy(v4);
        v14 = re::AssetHandle::assetInfo(*(a1 + 40));
        if (v14[10] == -1)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14[10];
        }

        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:**(a1 + 64)];
        [v13 pushLoadedResourceWithPayloadAndAssetId:v15 assetType:v16 payload:v10 isPriorityAsset:*(a1 + 72)];
      }

      v4 = (v4 + 168);
      v5 -= 168;
    }

    while (v5);
  }
}

id re::ResourceSharingManager::findOrAddSubscription(re::ResourceSharingManager *this, Connection *a2, const re::AssetHandle *a3, re::AssetHandle *a4)
{
  v8 = re::AssetHandle::assetInfo(a4);
  v9 = re::Hash<re::DynamicString>::operator()(v40, v8 + 12);
  v10 = *(a3 + 14);
  if (v10)
  {
    v11 = 0;
    v12 = (*(a3 + 5) + 8);
    while (1)
    {
      v13 = *v12;
      v12 += 6;
      if (v13 < 0)
      {
        break;
      }

      if (v10 == ++v11)
      {
        LODWORD(v11) = *(a3 + 14);
        break;
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v11 != v10)
  {
    v14 = *(a3 + 5);
    while (1)
    {
      v15 = *(v14 + 24 * v11 + 16);
      if (*(v15 + 56) == v9)
      {
        break;
      }

      if (v10 <= v11 + 1)
      {
        v16 = v11 + 1;
      }

      else
      {
        v16 = *(a3 + 14);
      }

      while (v16 - 1 != v11)
      {
        LODWORD(v11) = v11 + 1;
        if ((*(v14 + 24 * v11 + 8) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v11) = v16;
LABEL_17:
      if (v11 == v10)
      {
        goto LABEL_18;
      }
    }

    *this = v15;
    v39 = (v15 + 8);
    return v39;
  }

LABEL_18:
  v17 = *(a2 + 10);
  if (v17)
  {
    v18 = *(a2 + 12);
    v19 = v18 + 168 * v17;
    while (1)
    {
      if (*(a3 + 1) != *(v18 + 8))
      {
        v20 = *(v18 + 56);
        if (v20)
        {
          v21 = 0;
          v22 = (*(v18 + 40) + 8);
          while (1)
          {
            v23 = *v22;
            v22 += 6;
            if (v23 < 0)
            {
              break;
            }

            if (v20 == ++v21)
            {
              LODWORD(v21) = *(v18 + 56);
              break;
            }
          }
        }

        else
        {
          LODWORD(v21) = 0;
        }

        if (v21 != v20)
        {
          break;
        }
      }

LABEL_38:
      v18 += 168;
      if (v18 == v19)
      {
        goto LABEL_39;
      }
    }

    v24 = *(v18 + 40);
    while (1)
    {
      v25 = v24 + 24 * v21;
      v28 = *(v25 + 16);
      v27 = (v25 + 16);
      v26 = v28;
      if (*(v28 + 56) == v9)
      {
        break;
      }

      if (v20 <= v21 + 1)
      {
        v29 = v21 + 1;
      }

      else
      {
        v29 = *(v18 + 56);
      }

      while (v29 - 1 != v21)
      {
        LODWORD(v21) = v21 + 1;
        if ((*(v24 + 24 * v21 + 8) & 0x80000000) != 0)
        {
          goto LABEL_37;
        }
      }

      LODWORD(v21) = v29;
LABEL_37:
      if (v21 == v20)
      {
        goto LABEL_38;
      }
    }

    re::DynamicArray<REResourceSharingClientObject * {__strong}>::add(v26 + 72, a3 + 1);
    result = re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::add(a3 + 24, v27);
    v38 = *v27;
    *this = *v27;
    if (v38)
    {
      v39 = (v38 + 8);
      return v39;
    }
  }

  else
  {
LABEL_39:
    v30 = re::globalAllocators(v9);
    v31 = (*(*v30[2] + 32))(v30[2], 160, 8);
    *v31 = 0u;
    *(v31 + 16) = 0u;
    *(v31 + 32) = 0u;
    *(v31 + 48) = 0u;
    *(v31 + 64) = 0u;
    *(v31 + 80) = 0u;
    *(v31 + 96) = 0u;
    *(v31 + 112) = 0u;
    *(v31 + 128) = 0u;
    *(v31 + 144) = 0u;
    ArcSharedObject::ArcSharedObject(v31, 0);
    *v31 = &unk_1F5CBCFB0;
    *(v31 + 40) = 0u;
    *(v31 + 24) = 0u;
    re::DynamicString::setCapacity((v31 + 24), 0);
    *(v31 + 96) = 0;
    *(v31 + 72) = 0;
    *(v31 + 80) = 0;
    *(v31 + 88) = 0;
    *(v31 + 152) = 0;
    *(v31 + 104) = 0u;
    *(v31 + 120) = 0u;
    *(v31 + 132) = 0u;
    *this = v31;
    v33 = re::AssetHandle::assetInfo(a4);
    if (*(v33 + 13))
    {
      v34 = *(v33 + 14);
    }

    else
    {
      v34 = v33 + 105;
    }

    v35 = strlen(v34);
    v40[0] = v34;
    v40[1] = v35;
    re::DynamicString::operator=((v31 + 24), v40);
    *(v31 + 56) = re::Hash<re::DynamicString>::operator()(v40, (v31 + 24));
    v36 = *(re::AssetHandle::assetInfo(a4) + 10);
    if (v36 == -1)
    {
      v36 = 0;
    }

    *(v31 + 64) = v36;
    re::DynamicArray<REResourceSharingClientObject * {__strong}>::add(v31 + 72, a3 + 1);
    return re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::add(a3 + 24, this);
  }

  return result;
}

void re::ResourceSharingManager::validateResult(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = *a5;
  v8 = *(a5 + 1);
  if (v7 == 1 && v8)
  {
    v12 = v8;
    re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a3 + 72, a4 + 8);
    re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a3 + 120, a4 + 8);
    v13 = *(a3 + 152);
    if (v13)
    {
      v14 = 0;
      v15 = *(a3 + 136);
      while (1)
      {
        v16 = *v15;
        v15 += 8;
        if (v16 < 0)
        {
          break;
        }

        if (v13 == ++v14)
        {
          LODWORD(v14) = *(a3 + 152);
          break;
        }
      }
    }

    else
    {
      LODWORD(v14) = 0;
    }

    if (v14 == v13)
    {
      v17 = 0;
    }

    else
    {
      v17 = 0;
      v18 = *(a3 + 136);
      do
      {
        v17 += *(v18 + 32 * v14 + 16);
        if (v13 <= v14 + 1)
        {
          v19 = v14 + 1;
        }

        else
        {
          v19 = *(a3 + 152);
        }

        while (v19 - 1 != v14)
        {
          LODWORD(v14) = v14 + 1;
          if ((*(v18 + 32 * v14) & 0x80000000) != 0)
          {
            goto LABEL_21;
          }
        }

        LODWORD(v14) = v19;
LABEL_21:
        ;
      }

      while (v14 != v13);
    }

    v20 = *(a3 + 104);
    if (v20)
    {
      v21 = 0;
      v22 = *(a3 + 88);
      while (1)
      {
        v23 = *v22;
        v22 += 8;
        if (v23 < 0)
        {
          break;
        }

        if (v20 == ++v21)
        {
          LODWORD(v21) = *(a3 + 104);
          break;
        }
      }
    }

    else
    {
      LODWORD(v21) = 0;
    }

    if (v21 == v20)
    {
      v24 = 0;
    }

    else
    {
      v24 = 0;
      v25 = *(a3 + 88);
      do
      {
        v24 += *(v25 + 32 * v21 + 16);
        if (v20 <= v21 + 1)
        {
          v26 = v21 + 1;
        }

        else
        {
          v26 = *(a3 + 104);
        }

        while (v26 - 1 != v21)
        {
          LODWORD(v21) = v21 + 1;
          if ((*(v25 + 32 * v21) & 0x80000000) != 0)
          {
            goto LABEL_39;
          }
        }

        LODWORD(v21) = v26;
LABEL_39:
        ;
      }

      while (v21 != v20);
    }

    v27 = malloc_size(v12);
    v41 = v27;
    v28 = *re::resourceSharingLogObjects(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      if (a4[4])
      {
        v33 = a4[5];
      }

      else
      {
        v33 = a4 + 33;
      }

      *buf = 136315394;
      v43 = v33;
      v44 = 2048;
      v45 = v27;
      _os_log_debug_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEBUG, "Asset '%s' estimated to be size:%zu", buf, 0x16u);
    }

    if (v27 + v24 + v17 <= (*(**(a2 + 24) + 408))(*(a2 + 24)))
    {
      re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a3 + 72, a4 + 8, &v41);
      v32 = *(a5 + 1);
      *a1 = 1;
      *(a1 + 8) = v32;
    }

    else
    {
      re::makeResourceSharingError(&v40, 0x258, 0);
      v30 = *re::resourceSharingLogObjects(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v34 = *(a2 + 24);
        v35 = *(*v34 + 408);
        v36 = v30;
        v37 = v35(v34);
        if (a4[4])
        {
          v38 = a4[5];
        }

        else
        {
          v38 = (a4 + 33);
        }

        v39 = v40;
        *buf = 134218498;
        v43 = v37;
        v44 = 2080;
        v45 = v38;
        v46 = 2112;
        v47 = v39;
        _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "Specified upperBound limit of %zu was hit. Failed send payload for '%s': %@", buf, 0x20u);
      }

      v31 = v40;
      *a1 = 0;
      *(a1 + 8) = v31;
    }
  }

  else
  {
    *a1 = v7;
    *(a5 + 1) = 0;
    *(a1 + 8) = v8;
  }
}

id __copy_helper_block_a8_48c63_ZTSN2re6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

void *___ZN2re22ResourceSharingManager19processFetchRequestENS0_12FetchRequestE_block_invoke(void *result)
{
  v1 = result[5];
  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = *(v1 + 96);
    v4 = 168 * v2;
    while (*(v3 + 8) != result[16])
    {
      v3 += 168;
      v4 -= 168;
      if (!v4)
      {
        return result;
      }
    }

    *(*(result[4] + 8) + 24) = v3;
  }

  return result;
}

void *__copy_helper_block_a8_48c48_ZTSKN2re22ResourceSharingManager12FetchRequestE(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  re::DynamicString::DynamicString((a1 + 56), (a2 + 56));
  re::DynamicString::DynamicString((a1 + 88), (a2 + 88));
  v4 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v4;
  result = _Block_copy(*(a2 + 136));
  *(a1 + 136) = result;
  return result;
}

double __destroy_helper_block_a8_48c48_ZTSKN2re22ResourceSharingManager12FetchRequestE(id *a1)
{
  re::DynamicString::deinit((a1 + 11));

  return re::DynamicString::deinit((a1 + 7));
}

uint64_t __Block_byref_object_copy__90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN2re22ResourceSharingManager19processFetchRequestENS0_12FetchRequestE_block_invoke_92(uint64_t a1)
{
  v2 = *(a1 + 56);
  re::ResourceSharingManager::findOrAddSubscription(&v13, v2, *(*(*(a1 + 32) + 8) + 24), (a1 + 64));
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = v13;
  v9[0] = *(a1 + 88);
  v10 = *(a1 + 96);
  re::ResourceSharingManager::validateResult(v11, v2, v3, v4, v9);

  v5 = v11[0];
  v6 = v12;
  if (v11[0])
  {
    v7 = v12;
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);
}

id __copy_helper_block_a8_64c23_ZTSKN2re11AssetHandleE88c63_ZTSN2re6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEE(uint64_t a1, uint64_t a2)
{
  re::AssetHandle::AssetHandle((a1 + 64), (a2 + 64));
  *(a1 + 88) = *(a2 + 88);
  result = *(a2 + 96);
  *(a1 + 96) = result;
  return result;
}

void __destroy_helper_block_a8_64c23_ZTSKN2re11AssetHandleE88c63_ZTSN2re6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEE(uint64_t a1)
{

  re::AssetHandle::~AssetHandle((a1 + 64));
}

void re::anonymous namespace::internalSendFetchResponse(void *a1, void *a2, void *a3, re::AssetHandle *a4)
{
  v7 = a3;
  v14 = a1;
  v8 = re::AssetHandle::assetInfo(a4);
  v10 = *(a4 + 1);
  if (v10 && (v11 = *(v10 + 280)) != 0)
  {
    v12 = *v11;
  }

  else
  {
    v12 = 0;
  }

  if (v8[10] == -1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v8[10];
  }

  re::AssetSignpost::fireImpulse(0x80E, v13, v12, v9);
  v14[2](v14, *a2, v7);
}

void re::anonymous namespace::sendFetchResponse(void *a1, uint64_t a2, re::AssetHandle *a3)
{
  v5 = a1;
  v6 = re::AssetHandle::assetInfo(a3);
  if (v6[10] == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6[10];
  }

  v9 = *(a3 + 1);
  if (v9 && (v10 = *(v9 + 280)) != 0)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  re::AssetSignpost::fireImpulse(0x80E, v8, v11, v7);
  if (*a2)
  {
    v12 = *(a2 + 8);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  if (*a2)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = v14;

  v16 = v13;
  v17 = v16;
}

void re::ResourceSharingManager::makeFetchRequestError(re::ResourceSharingManager *this, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  re::makeResourceSharingError(&v6, 0x190, 0);
  v5 = v6;
  v6 = 0;
  *this = 0;
  *(this + 1) = v5;
}

void ___ZN2re22ResourceSharingManager19processFetchRequestENS0_12FetchRequestE_block_invoke_93(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  re::ResourceSharingManager::findOrAddSubscription(&v22, v2, *(*(*(a1 + 32) + 8) + 24), (a1 + 48));
  v3 = v22;
  if (!*(v22 + 112))
  {
    (*(**(v2 + 3) + 208))(v23);
    v4 = *(v3 + 112);
    v5 = v23[0];
    *(v3 + 112) = v23[0];
    v23[0] = v4;
    if (v4)
    {

      v5 = *(v3 + 112);
    }

    v6 = (v3 + 8);
    v23[2] = v3;
    v24 = 0;
    v23[0] = &unk_1F5CBCEC0;
    v23[1] = v2;
    v7 = (v3 + 8);
    v24 = v23;
    re::AssetLoadRequest::setCompletionHandler(v5, v23, 0);
    std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](v23);

    re::AssetLoadRequest::addAsset(v5, (a1 + 48));
  }

  v8 = *(*(*(a1 + 32) + 8) + 24);
  v9 = *(a1 + 160);
  v10 = re::globalAllocators(v9);
  v11 = (*(*v10[2] + 32))(v10[2], 40, 8);
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  ArcSharedObject::ArcSharedObject(v11, 0);
  *(v11 + 24) = 0;
  *v11 = &unk_1F5CBCFF8;
  *(v11 + 32) = v8;
  v12 = _Block_copy(v9);

  v13 = *(v11 + 24);
  *(v11 + 24) = v12;

  v15 = *(v3 + 128);
  v16 = *(v3 + 136);
  if (v16 >= v15)
  {
    v17 = v16 + 1;
    if (v15 < v16 + 1)
    {
      if (*(v3 + 120))
      {
        v18 = 2 * v15;
        v19 = v15 == 0;
        v20 = 8;
        if (!v19)
        {
          v20 = v18;
        }

        if (v20 <= v17)
        {
          v21 = v17;
        }

        else
        {
          v21 = v20;
        }

        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((v3 + 120), v21);
      }

      else
      {
        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((v3 + 120), v17);
        ++*(v3 + 144);
      }
    }

    v16 = *(v3 + 136);
  }

  *(*(v3 + 152) + 8 * v16) = v11;
  *(v3 + 136) = v16 + 1;
  ++*(v3 + 144);
}

void *__copy_helper_block_a8_48c23_ZTSKN2re11AssetHandleE72c48_ZTSKN2re22ResourceSharingManager12FetchRequestE(uint64_t a1, uint64_t a2)
{
  re::AssetHandle::AssetHandle((a1 + 48), (a2 + 48));
  *(a1 + 72) = *(a2 + 72);
  re::DynamicString::DynamicString((a1 + 80), (a2 + 80));
  re::DynamicString::DynamicString((a1 + 112), (a2 + 112));
  v4 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v4;
  result = _Block_copy(*(a2 + 160));
  *(a1 + 160) = result;
  return result;
}

void __destroy_helper_block_a8_48c23_ZTSKN2re11AssetHandleE72c48_ZTSKN2re22ResourceSharingManager12FetchRequestE(id *a1)
{
  re::DynamicString::deinit((a1 + 14));
  re::DynamicString::deinit((a1 + 10));

  re::AssetHandle::~AssetHandle((a1 + 6));
}

uint64_t re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v9);
  v5 = v11;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = *(v6 + 32 * v11) & 0x7FFFFFFF;
    if (v12 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v10) = v7;
      v5 = v11;
    }

    else
    {
      *(v6 + 32 * v12) = *(v6 + 32 * v12) & 0x80000000 | v7;
    }

    v8 = *(a1 + 40);
    *(v6 + 32 * v5) = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v8 + 1;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, void *a2, uint64_t *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  v8 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v11, v10);
    v9 = *a3;
    *(result + 8) = *a2;
    *(result + 16) = v9;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 32 * v8 + 16) = *a3;
  }

  return result;
}

id re::DynamicArray<REResourceSharingClientObject * {__strong}>::add(uint64_t a1, id *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v6)
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

        re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32);
  result = *a2;
  *(v11 + 8 * v5) = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::add(uint64_t result, unint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(result + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(result + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(result + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return result;
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
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  result = re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::addAsCopy(result, v8, v6, a2);
  ++*(v3 + 40);
  return result;
}

void re::make::shared::object<re::internal::ResourceRequestQueue>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 80, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5CBCE78;
  *(v4 + 24) = 0;
  *(v4 + 64) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = 0;
  *(v4 + 56) = 0;
  *(v4 + 72) = 0;
  *a2 = v4;
}

void re::internal::ResourceRequestQueue::~ResourceRequestQueue(re::internal::ResourceRequestQueue *this)
{
  *this = &unk_1F5CBCE78;
  re::DynamicArray<re::ObjCObject>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CBCE78;
  re::DynamicArray<re::ObjCObject>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::ResourceSharingManager::Connection>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ResourceSharingManager::Connection>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA8uLL))
        {
          v2 = 168 * a2;
          result = (*(*result + 32))(result, 168 * a2, 8);
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

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 168, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
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
        v10 = (v8 + 168 * v9);
        v11 = v7;
        do
        {
          v12 = *v8;
          *v8 = 0;
          *(v8 + 1) = 0;
          *v11 = v12;
          v11[2] = *(v8 + 2);
          *(v11 + 5) = 0u;
          *(v11 + 14) = 0;
          *(v11 + 3) = 0u;
          *(v11 + 60) = 0x7FFFFFFFLL;
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v11 + 3, v8 + 3);
          *(v11 + 26) = 0;
          *(v11 + 11) = 0u;
          *(v11 + 9) = 0u;
          *(v11 + 108) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v11 + 9, v8 + 9);
          *(v11 + 15) = 0u;
          v13 = v11 + 15;
          *(v13 + 8) = 0;
          *(v13 + 1) = 0u;
          *(v13 + 36) = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v13, v8 + 15);
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v8 + 15);
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v8 + 9);
          re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v8 + 3);

          v14 = *v8;
          v8 = (v8 + 168);

          v11 = v13 + 6;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

void re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::setCapacity(__int128 *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 6) != a2 && *(a1 + 7) <= a2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v22, v4, a2);
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
                re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::setCapacity(a1, 2 * v11);
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

      re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v22);
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

uint64_t re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  v12 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(v12 + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  v13 = *a4;
  *(*(a1 + 16) + 24 * v8 + 16) = *a4;
  if (v13)
  {
    v14 = (v13 + 8);
    v12 = *(a1 + 8);
  }

  *(v12 + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
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
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9);
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

void *re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<REResourceSharingClientObject * {__strong}>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
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
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
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
        do
        {
          *v11++ = *v8;
          v12 = *v8++;

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

void *std::__function::__func<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0,std::allocator<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F5CBCEC0;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  return a1;
}

void std::__function::__func<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0,std::allocator<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F5CBCEC0;
  v2 = a1[2];
  if (v2)
  {

    a1[2] = 0;
  }

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0,std::allocator<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0>,void ()(BOOL)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F5CBCEC0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    return (v2 + 8);
  }

  return result;
}

void std::__function::__func<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0,std::allocator<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0>,void ()(BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {

    *(a1 + 16) = 0;
  }
}

void std::__function::__func<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0,std::allocator<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0>,void ()(BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
  }

  operator delete(__p);
}

uint64_t std::__function::__func<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0,std::allocator<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0>,void ()(BOOL)>::operator()(_anonymous_namespace_ *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *(a1 + 1);
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x5012000000;
  v62[3] = __Block_byref_object_copy__160;
  v62[4] = __Block_byref_object_dispose__161;
  v62[5] = "";
  v63 = 0u;
  v64 = 0u;
  re::DynamicString::setCapacity(&v63, 0);
  v53 = 0;
  v54 = &v53;
  v55 = 0x5812000000;
  v56 = __Block_byref_object_copy__163;
  v57 = __Block_byref_object_dispose__164;
  v58 = "";
  v61 = 0;
  memset(v59, 0, sizeof(v59));
  v60 = 0;
  v5 = *(v4 + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZZN2re22ResourceSharingManager22createAssetLoadRequestERKNS_9SharedPtrINS0_12SubscriptionEEERKNS_11AssetHandleEENK3__0clEb_block_invoke;
  block[3] = &unk_1F5CBCF28;
  v28 = a1;
  v6 = *(a1 + 2);
  v52 = v6;
  if (v6)
  {
    v7 = (v6 + 8);
  }

  block[4] = v62;
  block[5] = &v53;
  dispatch_sync(v5, block);

  (*(**(v4 + 24) + 112))(&v49);
  if (v3 && v49 == 1)
  {
    re::ResourceSharingManager::makeFetchRequestResult(v47, v4, v50);
  }

  else
  {
    re::ResourceSharingManager::makeFetchRequestError(v47, v8, v9, v10);
  }

  v11 = v47[0];
  v12 = v54[10];
  v13 = v54[8];
  if (v47[0])
  {
    if (v13)
    {
      v14 = v48;
      v15 = 8 * v13;
      do
      {
        v16 = *v12;
        if (*v12)
        {
          v17 = (v16 + 8);
        }

        v41 = 0;
        v42 = &v41;
        v43 = 0x3032000000;
        v44 = __Block_byref_object_copy__90;
        v45 = __Block_byref_object_dispose__91;
        v46 = 0;
        v35 = 0;
        v36 = &v35;
        v37 = 0x3032000000;
        v38 = __Block_byref_object_copy__90;
        v39 = __Block_byref_object_dispose__91;
        v40 = 0;
        v18 = *(v4 + 40);
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3321888768;
        v30[2] = ___ZZN2re22ResourceSharingManager22createAssetLoadRequestERKNS_9SharedPtrINS0_12SubscriptionEEERKNS_11AssetHandleEENK3__0clEb_block_invoke_166;
        v30[3] = &unk_1F5CBCF60;
        v30[6] = v4;
        v31 = v16;
        if (v16)
        {
          v19 = (v16 + 8);
        }

        v20 = *(v28 + 2);
        v32 = v20;
        if (v20)
        {
          v21 = (v20 + 8);
        }

        v33 = v11;
        v34 = v14;
        v30[4] = &v41;
        v30[5] = &v35;
        dispatch_sync(v18, v30);

        v22 = *(v16 + 24);
        v23 = v42[5];
        v29 = v23;

        if (v32)
        {

          v32 = 0;
        }

        if (v31)
        {

          v31 = 0;
        }

        _Block_object_dispose(&v35, 8);

        _Block_object_dispose(&v41, 8);
        ++v12;
        v15 -= 8;
      }

      while (v15);
    }
  }

  else if (v13)
  {
    v24 = 8 * v13;
    do
    {
      v25 = *v12;
      if (*v12)
      {
        v26 = (v25 + 8);
      }

      ++v12;
      v24 -= 8;
    }

    while (v24);
  }

  if (v49 == 1)
  {
    re::AssetHandle::~AssetHandle(v50);
  }

  if (v52)
  {

    v52 = 0;
  }

  _Block_object_dispose(&v53, 8);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v59);
  _Block_object_dispose(v62, 8);
  result = v63;
  if (v63)
  {
    if (BYTE8(v63))
    {
      return (*(*v63 + 40))(v63, v64);
    }
  }

  return result;
}

uint64_t std::__function::__func<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0,std::allocator<re::ResourceSharingManager::createAssetLoadRequest(re::SharedPtr<re::ResourceSharingManager::Subscription> const&,re::AssetHandle const&)::$_0>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double __Block_byref_object_copy__160(uint64_t a1, void *a2)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 72) = a2[9];
  v3 = a2[7];
  *(a1 + 48) = a2[6];
  a2[6] = 0;
  v4 = a2[8];
  a2[9] = 0;
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  *(a1 + 56) = v3;
  *(a1 + 64) = v4;
  a2[7] = v6;
  a2[8] = v5;
  return result;
}

uint64_t __Block_byref_object_copy__163(uint64_t result, uint64_t a2)
{
  *(result + 80) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 72) = 0;
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v3 = *(result + 64);
  *(result + 64) = *(a2 + 64);
  *(a2 + 64) = v3;
  v4 = *(result + 80);
  *(result + 80) = *(a2 + 80);
  *(a2 + 80) = v4;
  ++*(a2 + 72);
  ++*(result + 72);
  return result;
}

void ___ZZN2re22ResourceSharingManager22createAssetLoadRequestERKNS_9SharedPtrINS0_12SubscriptionEEERKNS_11AssetHandleEENK3__0clEb_block_invoke(void *a1)
{
  re::DynamicString::operator=((*(a1[4] + 8) + 48), (a1[6] + 24));
  v2 = a1[6];
  v3 = (v2 + 120);
  v4 = *(a1[5] + 8);
  if (v4 + 48 != v2 + 120)
  {
    v5 = *v3;
    if (*(v4 + 48))
    {
      v6 = (v4 + 48);
      if (v5)
      {
        re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::copy(v6, v2 + 120);
        ++*(v4 + 72);
      }

      else
      {
        re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(v6);
      }
    }

    else if (v5)
    {
      v7 = *(v2 + 136);
      *(v4 + 48) = v5;
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity((v4 + 48), v7);
      ++*(v4 + 72);
      re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::copy((v4 + 48), v3);
    }
  }

  v8 = a1[6];
  v9 = *(v8 + 112);
  if (v9)
  {

    *(v8 + 112) = 0;
    v8 = a1[6];
  }

  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(v8 + 120);
}

void re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 8 * v2;
    do
    {
      if (*v3)
      {

        *v3 = 0;
      }

      v3 += 8;
      v4 -= 8;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void *__copy_helper_block_a8_48c65_ZTSRKN2re9SharedPtrINS_22ResourceSharingManager12SubscriptionEEE(void *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  result[6] = v2;
  if (v2)
  {
    return (v2 + 8);
  }

  return result;
}

void ___ZZN2re22ResourceSharingManager22createAssetLoadRequestERKNS_9SharedPtrINS0_12SubscriptionEEERKNS_11AssetHandleEENK3__0clEb_block_invoke_166(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 56) + 32);
  v4 = *(a1 + 64);
  v8[0] = *(a1 + 72);
  v9 = *(a1 + 80);
  re::ResourceSharingManager::validateResult(v10, v2, v3, v4, v8);

  if (*(a1 + 72) == 1)
  {
    v5 = *(a1 + 80);
  }

  else
  {
    v5 = 0;
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v5);
  if (*(a1 + 72))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 80);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);

  v7 = v11;
}

id __copy_helper_block_a8_56c61_ZTSN2re9SharedPtrINS_22ResourceSharingManager10CompletionEEE64c65_ZTSRKN2re9SharedPtrINS_22ResourceSharingManager12SubscriptionEEE72c63_ZTSN2re6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  *(a1 + 56) = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  v6 = *(a2 + 64);
  *(a1 + 64) = v6;
  if (v6)
  {
    v7 = (v6 + 8);
  }

  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 80);
  *(a1 + 80) = result;
  return result;
}

void __destroy_helper_block_a8_56c61_ZTSN2re9SharedPtrINS_22ResourceSharingManager10CompletionEEE64c65_ZTSRKN2re9SharedPtrINS_22ResourceSharingManager12SubscriptionEEE72c63_ZTSN2re6ResultINS_21SharedResourcePayloadENS_12WrappedErrorEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {

    *(a1 + 56) = 0;
  }
}

void re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    v14 = a1[4];
    if (v13)
    {
      v15 = 8 * v13;
      do
      {
        v16 = *v12++;
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v14++, v16);
        v15 -= 8;
      }

      while (v15);
      v14 = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v17 = &v12[v13];
      v18 = &v14[v13];
      v19 = 8 * v4 - 8 * v13;
      do
      {
        v20 = *v17;
        *v18 = *v17;
        if (v20)
        {
          v21 = (v20 + 8);
        }

        ++v17;
        ++v18;
        v19 -= 8;
      }

      while (v19);
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
        v9 = *v7++;
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v6++, v9);
        v8 -= 8;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = &v6[v4];
      v11 = 8 * v5 - 8 * v4;
      do
      {
        if (*v10)
        {

          *v10 = 0;
        }

        ++v10;
        v11 -= 8;
      }

      while (v11);
    }
  }

  a1[2] = v4;
}

void re::ResourceSharingManager::Subscription::~Subscription(re::ResourceSharingManager::Subscription *this)
{
  re::ResourceSharingManager::Subscription::~Subscription(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CBCFB0;
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 120);
  v2 = *(this + 14);
  if (v2)
  {

    *(this + 14) = 0;
  }

  v3 = *(this + 9);
  if (v3)
  {
    v4 = *(this + 13);
    if (v4)
    {
      v5 = *(this + 11);
      if (v5)
      {
        v6 = 8 * v5;
        do
        {
          v7 = *v4++;

          v6 -= 8;
        }

        while (v6);
        v3 = *(this + 9);
        v4 = *(this + 13);
      }

      (*(*v3 + 40))(v3, v4);
    }

    *(this + 13) = 0;
    *(this + 10) = 0;
    *(this + 11) = 0;
    *(this + 9) = 0;
    ++*(this + 24);
  }

  re::DynamicString::deinit((this + 24));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

void re::ResourceSharingManager::Completion::~Completion(id *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

void *re::allocInfo_DynamicAssetHeader(re *this)
{
  if ((atomic_load_explicit(&qword_1EE193AA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193AA8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193B58, "DynamicAssetHeader");
    __cxa_guard_release(&qword_1EE193AA8);
  }

  return &unk_1EE193B58;
}

void re::initInfo_DynamicAssetHeader(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v11[0] = 0x8CA13F8BC694F7FCLL;
  v11[1] = "DynamicAssetHeader";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE193AB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193AB8))
  {
    v7 = re::introspectionAllocator();
    re::introspect_AssetSerializationFormat(v7, v8);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "assetSerializationFormat";
    *(v9 + 16) = &qword_1EE193B10;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE193AB0 = v9;
    __cxa_guard_release(&qword_1EE193AB8);
  }

  *(this + 2) = 0x400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE193AB0;
  *(this + 9) = re::internal::defaultConstruct<re::DynamicAssetHeader>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::DynamicAssetHeader>;
  *(this + 13) = re::internal::defaultConstructV2<re::DynamicAssetHeader>;
  *(this + 14) = re::internal::defaultDestructV2<re::DynamicAssetHeader>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v10 = v12;
}

void re::introspect_AssetSerializationFormat(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE193AD0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE193AD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193AD8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE193B10, "AssetSerializationFormat", 4, 4, 1, 1);
      qword_1EE193B10 = &unk_1F5D0C658;
      qword_1EE193B50 = &re::introspect_AssetSerializationFormat(BOOL)::enumTable;
      dword_1EE193B20 = 9;
      __cxa_guard_release(&qword_1EE193AD8);
    }

    if (_MergedGlobals_57)
    {
      break;
    }

    _MergedGlobals_57 = 1;
    re::IntrospectionRegistry::add(&qword_1EE193B10, a2);
    v37 = 0x69029CD6B845AE2ELL;
    v38 = "AssetSerializationFormat";
    v41 = 208862;
    v42 = "int";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE193B50;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE193B30 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v36);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE193AD0))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Unknown";
      qword_1EE193AF0 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "JSON";
      qword_1EE193AF8 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "Binary";
      qword_1EE193B00 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "OPACK";
      qword_1EE193B08 = v35;
      __cxa_guard_release(&qword_1EE193AD0);
    }
  }
}

void re::AssetUtilities::init(re::AssetUtilities *this)
{
  if ((atomic_load_explicit(&qword_1EE193AE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193AE8))
  {
    qword_1EE193AE0 = re::internal::getOrCreateInfo("DynamicAssetHeader", re::allocInfo_DynamicAssetHeader, re::initInfo_DynamicAssetHeader, &unk_1EE193AC0, 0);

    __cxa_guard_release(&qword_1EE193AE8);
  }
}

uint64_t re::AssetUtilities::deserializeOPACK(uint64_t a1, uint64_t a2, re **a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v54[6] = *MEMORY[0x1E69E9840];
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v26);
  if (v24)
  {
    re::AssetOPACKDeserializer::AssetOPACKDeserializer(&v36);
    v42[14] = a4;
    re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::open(&v36, a1, a5, a6);
    if (v40 != 1)
    {
      (v36[9])(&v36, "asset", 1, a2, v25, v25, 0);
    }

    (v36[7])(&v36);
    v15 = re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::close(&v39);
    v16 = v40;
    if (v40 == 1)
    {
      v17 = *re::assetsLogObjects(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v22 = re::TypeInfo::name(v25)[1];
        buf[0] = v40;
        if (v40)
        {
          *&v28[4] = v41;
          re::DynamicString::DynamicString(&v29, v42);
          v23 = (v30 & 1) != 0 ? *&v31[7] : v31;
        }

        else
        {
          v23 = v31;
        }

        *v32 = 136315394;
        v33 = v22;
        v34 = 2080;
        v35 = v23;
        _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Asset deserialization failed. Type %s. Details: %s", v32, 0x16u);
        if (buf[0] == 1 && v29 && (v30 & 1) != 0)
        {
          (*(*v29 + 40))();
        }
      }
    }

    v36 = off_1F5CBAD70;
    v18 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v54);
    if (v49)
    {
      if (v53)
      {
        (*(*v49 + 40))(v18);
      }

      v53 = 0;
      v50 = 0;
      v51 = 0;
      v49 = 0;
      ++v52;
    }

    v14 = v16 ^ 1u;
    v19 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v48);
    if (v43)
    {
      if (v47)
      {
        (*(*v43 + 40))(v19);
      }

      v47 = 0;
      v44 = 0;
      v45 = 0;
      v43 = 0;
      ++v46;
    }

    re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::~Serializer(&v36);
  }

  else
  {
    PrettyTypeName = re::getPrettyTypeName(&v36, a3);
    v13 = *re::assetsLogObjects(PrettyTypeName);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if (v37)
      {
        v21 = *&v38[7];
      }

      else
      {
        v21 = v38;
      }

      *buf = 136315138;
      *v28 = v21;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Asset serialization failed. Type info (%s) not found.", buf, 0xCu);
    }

    if (v36 && (v37 & 1) != 0)
    {
      (*(*v36 + 5))();
    }

    v14 = 0;
  }

  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v26);
  return v14;
}

uint64_t re::AssetUtilities::serializeIntrospectedAsset(_anonymous_namespace_ *a1, const re::IntrospectionBase **a2, const re::AssetPath *a3, uint64_t a4, int a5, const re::AssetPathMapping *a6, char a7)
{
  re::RemappedAssetSerialize::RemappedAssetSerialize(&v24, a3, a6);
  v24 = &unk_1F5CB9600;
  v30 = a7;
  v22 = 0u;
  v23 = 0u;
  v21 = &v24;
  if (a5 == 3)
  {
LABEL_9:
    if (v18[0] & 1) == 0 && v19 && (v20)
    {
      (*(*v19 + 40))();
    }

    goto LABEL_13;
  }

  if (a5 != 2)
  {
    if (a5 != 1)
    {
      re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Invalid asset serialization format.", "!Unreachable code", "serializeIntrospectedAsset", 383);
      result = _os_crash("assertion failure: (!Unreachable code) Invalid asset serialization format.");
      __break(1u);
      return result;
    }

    goto LABEL_9;
  }

  if (*(a4 + 16) == 8 && !strcmp(*(a4 + 48), "SceneAsset"))
  {
    goto LABEL_9;
  }

LABEL_13:
  v24 = &unk_1F5CB95D0;
  if (v25 == 1)
  {
    if (v28)
    {
      if (BYTE8(v28))
      {
        (*(*v28 + 40))();
      }

      v29 = 0u;
      v28 = 0u;
    }

    if (v26)
    {
      if (v27)
      {
        (*(*v26 + 40))();
      }
    }
  }

  return v16;
}

uint64_t anonymous namespace::unwrap(re *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((*a1 & 1) == 0)
  {
    v2 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 2))
      {
        v4 = *(a1 + 3);
      }

      else
      {
        v4 = a1 + 17;
      }

      v5 = 136446210;
      v6 = v4;
      _os_log_error_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_ERROR, "%{public}s", &v5, 0xCu);
    }
  }

  return *a1;
}

uint64_t deserializeIntrospectedAssetWithVersioning@<X0>(re *a1@<X0>, const char **a2@<X1>, uint64_t *a3@<X2>, re::PersistedSchema *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*a8 == 1)
  {
    v17 = *(a8 + 8);
  }

  else
  {
    v17 = 0;
  }

  re::AssetSignpost::ScopeGuard::ScopeGuard(v47, 2054, v17, *a2);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v47, v18, v19);
  v21 = a5;
  if (!a4)
  {
    goto LABEL_12;
  }

  re::getPrettyTypeName(&v41, a5);
  if (BYTE8(v41))
  {
    v22 = v42;
  }

  else
  {
    v22 = &v41 + 9;
  }

  v23 = re::PersistedSchema::introspectionInfo(a4, v22);
  if (v23)
  {
    v21 = v23;
    if (v41 && (BYTE8(v41) & 1) != 0)
    {
      (*(*v41 + 40))();
    }

LABEL_12:
    v49 = 0;
    v50 = 0;
    *buf = a6;
    *&buf[8] = 0;
    v51 = deserializeIntrospectedAssetWithVersioning(re::SeekableInputStream &,re::AssetType const&,re::AssetLoadData const&,re::PersistedSchema const*,re::IntrospectionBase const&,re::AssetSerializationScheme &,re::AssetSerializationFormat,re::Optional<unsigned long long>)::$_0::__invoke;
    v24 = *a3;
    *&v41 = a2;
    v25 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v24, &v41);
    (*(**v25 + 128))(*v25);
    v26 = *v25;
    v28 = (*(*v26 + 136))(v26);
    if (a7 == 3)
    {
    }

    else
    {
      if (a7 != 2)
      {
        re::internal::assertLog(4, v27, "assertion failure: '%s' (%s:line %i) Unexpected asset serialization format.", "!Unreachable code", "deserializeIntrospectedAssetWithVersioning", 468);
        result = _os_crash("assertion failure: (!Unreachable code) Unexpected asset serialization format.");
        __break(1u);
        return result;
      }

      if (*(a5 + 16) != 8 || strcmp(*(a5 + 48), "SceneAsset"))
      {
        *&v41 = &unk_1F5D0AE00;
        *(&v41 + 1) = a1;
        v42 = 0;
        LODWORD(v43) = 0;
        v44 = 0;
        v45 = (*(*a1 + 40))(a1);
        v46 = 0;
        v30 = result;
        if (v43)
        {
          result = (*(**(&v41 + 1) + 24))(*(&v41 + 1));
        }

LABEL_23:
        if (v30)
        {
          *a9 = 1;
          *(a9 + 8) = v28;
        }

        else
        {
          v31 = (*(*v26 + 16))(v26, v28);
          v32 = v41;
          v33 = v42;
          v34 = v43;
          *a9 = 0;
          *(a9 + 8) = v32;
          *(a9 + 24) = v33;
          *(a9 + 32) = v34;
        }

        return result;
      }
    }

    v30 = result;
    if ((v41 & 1) == 0)
    {
      result = *(&v41 + 1);
      if (*(&v41 + 1))
      {
        if (v42)
        {
          result = (*(**(&v41 + 1) + 40))();
        }
      }
    }

    goto LABEL_23;
  }

  v35 = *re::assetsLogObjects(0);
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
  if (v36)
  {
    if (BYTE8(v41))
    {
      v40 = v42;
    }

    else
    {
      v40 = &v41 + 9;
    }

    *buf = 136315138;
    *&buf[4] = v40;
    _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, "Failed to find asset schema '%s'", buf, 0xCu);
  }

  v37 = *buf;
  v38 = v49;
  v39 = v50;
  *a9 = 0;
  *(a9 + 8) = v37;
  *(a9 + 24) = v38;
  *(a9 + 32) = v39;
  result = v41;
  if (v41 && (BYTE8(v41) & 1) != 0)
  {
    return (*(*v41 + 40))();
  }

  return result;
}

uint64_t re::AssetUtilities::deserializeIntrospectedAsset(re *a1, const char **a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v8[0] = *a7;
  if (v8[0] == 1)
  {
    v9 = *(a7 + 8);
  }

  deserializeIntrospectedAssetWithVersioning(a1, a2, a3, 0, a4, a5, a6, v8, v10);
  result = v11;
  if ((v10[0] & 1) == 0 && v11)
  {
    if (v12)
    {
      (*(*v11 + 40))();
    }

    return 0;
  }

  return result;
}

__n128 re::AssetUtilities::saveAssetHandleToPath@<Q0>(re::AssetHandle *this@<X1>, re::FileStreamWriter *a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = *(this + 1);
  if (!v8)
  {
    v11 = 0;
    v9 = 0;
    goto LABEL_5;
  }

  v9 = *(v8 + 280);
  v10 = atomic_load((v8 + 896));
  if (v10 != 2)
  {
    v11 = *(this + 1);
LABEL_5:
    re::AssetHandle::loadNow(v11, 0);
  }

  v12 = *(this + 1);
  if (v12 && (v13 = atomic_load((v12 + 896)), v13 == 2))
  {
    re::AssetHandle::serializableAsset(&v22, this);
    v14 = v22.n128_u64[0];
    v15 = re::AssetHandle::legacy_assetPath(this);
    re::AssetUtilities::saveCompiledAssetToPath(a2, v14, v15, v9, a3, a4);
    std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v22);
  }

  else
  {
    v17 = re::AssetHandle::assetInfo(this);
    if (v17[17])
    {
      v19 = v17[18];
    }

    else
    {
      v19 = v17 + 137;
    }

    re::DynamicString::format(&v22, "Asset '%s' failed to load", v18, v19);
    result = v22;
    v20 = v23;
    v21 = v24;
    *a4 = 0;
    *(a4 + 8) = result;
    *(a4 + 24) = v20;
    *(a4 + 32) = v21;
  }

  return result;
}

FILE *re::AssetUtilities::saveCompiledAssetToPath@<X0>(re::FileStreamWriter *a1@<X0>, const re::IntrospectionBase **a2@<X1>, const re::AssetPath *a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (re::ensureFolderExistsForFile(a1, a2))
  {
    re::FileStreamWriter::open(&v23, a1);
    if (v23)
    {
      v13.n128_f64[0] = re::AssetUtilities::saveCompiledAssetToStream(&v23 + 8, a2, a3, a4, a5, a6);
    }

    else
    {
      re::formattedErrorMessage<re::DetailedError>(&v23 + 8, &v20);
      v13 = v20;
      v18 = v21;
      v19 = v22;
      *a6 = 0;
      *(a6 + 8) = v13;
      *(a6 + 24) = v18;
      *(a6 + 32) = v19;
    }

    if (v23 == 1)
    {
      result = v24;
      if (v24)
      {
        if (v25 == 1)
        {
          return fclose(v24);
        }
      }
    }

    else
    {
      result = v25;
      if (v25 && (v26 & 1) != 0)
      {
        return (*(v25->_p + 5))(v13);
      }
    }
  }

  else
  {
    result = re::DynamicString::format(&v23, "Failed to create directory for '%s'", v12, a1);
    v15 = v23;
    v16 = v24;
    v17 = v25;
    *a6 = 0;
    *(a6 + 8) = v15;
    *(a6 + 24) = v16;
    *(a6 + 32) = v17;
  }

  return result;
}

double re::AssetUtilities::saveCompiledAssetToStream@<D0>(uint64_t a1@<X0>, const re::IntrospectionBase **a2@<X1>, const re::AssetPath *a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  re::AssetUtilities::saveCompiledAssetToStreamChunked(a1, a2, a3, a4, a5, &v11);
  if (v11 == 1)
  {
    *a6 = v11;
  }

  else
  {
    re::DynamicString::DynamicString(&v8, v12);
    *a6 = 0;
    *(a6 + 8) = v8;
    *(a6 + 32) = v10;
    result = *&v9;
    *(a6 + 16) = v9;
    if ((v11 & 1) == 0)
    {
      return re::DynamicString::deinit(v12);
    }
  }

  if (v12[0])
  {
    if (v12[4])
    {
      (*(*v12[0] + 40))();
    }

    memset(v12, 0, 24);
  }

  return result;
}

__n128 re::AssetUtilities::saveAssetHandleToStream@<Q0>(re::AssetHandle *this@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = *(this + 1);
  if (!v8)
  {
    v11 = 0;
    v9 = 0;
    goto LABEL_5;
  }

  v9 = *(v8 + 280);
  v10 = atomic_load((v8 + 896));
  if (v10 != 2)
  {
    v11 = *(this + 1);
LABEL_5:
    re::AssetHandle::loadNow(v11, 0);
  }

  v12 = *(this + 1);
  if (v12 && (v13 = atomic_load((v12 + 896)), v13 == 2))
  {
    re::AssetHandle::serializableAsset(&v22, this);
    v14 = v22.n128_u64[0];
    v15 = re::AssetHandle::legacy_assetPath(this);
    re::AssetUtilities::saveCompiledAssetToStream(a2, v14, v15, v9, a3, a4);
    std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v22);
  }

  else
  {
    v17 = re::AssetHandle::assetInfo(this);
    if (v17[17])
    {
      v19 = v17[18];
    }

    else
    {
      v19 = v17 + 137;
    }

    re::DynamicString::format(&v22, "Asset '%s' failed to load", v18, v19);
    result = v22;
    v20 = v23;
    v21 = v24;
    *a4 = 0;
    *(a4 + 8) = result;
    *(a4 + 24) = v20;
    *(a4 + 32) = v21;
  }

  return result;
}

uint64_t re::AssetUtilities::saveCompiledAssetToStreamChunked@<X0>(uint64_t a1@<X0>, const re::IntrospectionBase **a2@<X1>, const re::AssetPath *a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v146 = *MEMORY[0x1E69E9840];
  v12 = **a5;
  buf[0].n128_u64[0] = a4;
  v13 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v12, buf);
  (*(**v13 + 128))(*v13);
  v14 = *v13;
  v15 = (*(*v14 + 128))(v14);
  v16 = (*(*v14 + 144))(v14, a2);
  v17 = v16;
  if (v16 == 1)
  {
    v18 = *re::assetsLogObjects(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *a4;
      buf[0].n128_u32[0] = 136315138;
      *(buf[0].n128_u64 + 4) = v19;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Asset may not be fully serialized. Type %s", buf, 0xCu);
    }
  }

  v120 = 0;
  v117[1] = 0;
  v118 = 0;
  v117[0] = 0;
  v119 = 0;
  v20 = *(a5 + 32);
  if (v20 == 2)
  {
    LODWORD(v122) = 0;
    memset(buf, 0, sizeof(buf));
    *(&v122 + 4) = 0x7FFFFFFFLL;
    re::PersistedSchema::addIntrospectionGraph(buf, v15);
    *v75 = &unk_1F5D0A7B0;
    *&v75[8] = v117;
    *&v75[16] = 0;
    if ((v81 & 1) == 0)
    {
      re::DynamicString::DynamicString(v75, &v82);
      *a6 = 0;
      *(a6 + 8) = *v75;
      *(a6 + 32) = v76;
      *(a6 + 16) = *&v75[8];
      if (v81 & 1) == 0 && v82 && (v83)
      {
        (*(*v82 + 40))();
      }

      v26.n128_f64[0] = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(buf);
      goto LABEL_92;
    }

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(buf);
    v20 = *(a5 + 32);
  }

  v116 = 0;
  v113[1] = 0;
  v114 = 0;
  v112[2] = 0;
  v113[0] = 0;
  v115 = 0;
  v112[0] = &unk_1F5D0A7B0;
  v112[1] = v113;
  if (re::AssetUtilities::serializeIntrospectedAsset(v112, a2, a3, v15, v20, *(a5 + 16), *(a5 + 37)))
  {
    v111 = 0;
    v108[1] = 0;
    v109 = 0;
    v107 = 0;
    v108[0] = 0;
    v110 = 0;
    v104[1] = 0;
    v105 = 0;
    v106 = 0;
    v103[0] = &unk_1F5D0A7B0;
    v103[1] = v108;
    v103[2] = v104;
    v104[0] = 0;
    v22 = (*(*v14 + 72))(v14, v103, a2, *(a5 + 24));
    if ((v22 & 1) == 0)
    {
      v28 = *(a3 + 1);
      v83 = 0;
      v84 = 0;
      v81 = v28;
      v82 = 0;
      re::DynamicString::setCapacity(&v81, 0);
      re::AssetPath::fullAssetPath(a3, &v81);
      if (v82)
      {
        v30 = v83;
      }

      else
      {
        v30 = &v82 + 1;
      }

      re::DynamicString::format(buf, "Serializing compiled file blob failed for %s", v29, v30);
      v26 = buf[0];
      v31 = buf[1];
      *a6 = 0;
      *(a6 + 8) = v26;
      *(a6 + 24) = v31;
      if (v81 && (v82 & 1) != 0)
      {
        (*(*v81 + 40))();
      }

      goto LABEL_83;
    }

    v100[0] = 825246019;
    v24 = *(a5 + 36);
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v32 = *(a5 + 32);
      if (v32 == 2)
      {
        v25 = 1;
      }

      else
      {
        if (v32 != 3)
        {
          re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Unsupported compiled asset serialization format.", "!Unreachable code", "headerVersion", 201);
          result = _os_crash("assertion failure: (!Unreachable code) Unsupported compiled asset serialization format.");
          __break(1u);
          return result;
        }

        v25 = 2;
      }
    }

    v100[1] = v25;
    v100[2] = 1;
    v102 = *(a5 + 8);
    v33 = v118 != 0;
    v101 = v33;
    if (v109)
    {
      v33 |= 2u;
      v101 = v33;
    }

    if (v24)
    {
      v101 = v33 | 4;
      v99 = 0;
      v96 = 0;
      v97 = 0;
      v95 = 0;
      v98 = 0;
      re::DynamicAssetHeader::DynamicAssetHeader(v22);
      v94 = *(a5 + 32);
      re::IntrospectionSharedLock::IntrospectionSharedLock(&v93);
      if ((atomic_load_explicit(&qword_1EE193AE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193AE8))
      {
        qword_1EE193AE0 = re::internal::getOrCreateInfo("DynamicAssetHeader", re::allocInfo_DynamicAssetHeader, re::initInfo_DynamicAssetHeader, &unk_1EE193AC0, 0);
        __cxa_guard_release(&qword_1EE193AE8);
      }

      if ((v138 & 1) == 0)
      {
        v43 = buf[0];
        v44 = buf[1];
        *a6 = 0;
        *(a6 + 8) = v43;
        *(a6 + 24) = v44;
LABEL_78:
        re::IntrospectionSharedLock::~IntrospectionSharedLock(&v93);
LABEL_79:
        if (v95)
        {
          if (v99)
          {
            (*(*v95 + 40))();
          }

          v99 = 0;
        }

LABEL_83:
        if (v104[0] && v107)
        {
          (*(*v104[0] + 40))();
        }

        if (v108[0] && v111)
        {
          (*(*v108[0] + 40))();
        }

        goto LABEL_89;
      }

      LOWORD(v82) = 0;
      v83 = &v95;
      v81 = &unk_1F5D0A850;
      v84 = &unk_1F5D0A8A8;
      v85 = 0;
      v86 = &unk_1F5CAC9D0;
      v87 = &v84;
      LOWORD(v88) = 0;
      v89 = 0;
      v90 = 0;
      v91 = 0x2000;
      v92 = 0;
      *v75 = 0x7F1E19097D86D060;
      *&v75[8] = "DynamicAssetHeaderSerializer";
      v35 = re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SerializerV2(buf, v75);
      if (v75[0])
      {
        if (v75[0])
        {
        }
      }

      v36 = re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::open(buf, &v81, 0, 0);
      if (v124[0] == 1 || (v36 = (*(buf[0].n128_u64[0] + 72))(buf, "DynamicAssetHeader", 0, &v94, &v139 + 4, &v139 + 4, 0), (v36 & 1) == 0))
      {
        v58 = *v75;
        v59 = *&v75[16];
        v60 = v76;
        *a6 = 0;
        *(a6 + 8) = v58;
        *(a6 + 24) = v59;
        *(a6 + 32) = v60;
LABEL_69:
        buf[0].n128_u64[0] = off_1F5CB5A48;
        v61 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v137);
        if (v132)
        {
          if (v136)
          {
            (*(*v132 + 40))(v61);
          }

          v136 = 0;
          v133 = 0;
          v134 = 0;
          v132 = 0;
          ++v135;
        }

        v62 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v131);
        if (v126)
        {
          if (v130)
          {
            (*(*v126 + 40))(v62);
          }

          v130 = 0;
          v127 = 0;
          v128 = 0;
          v126 = 0;
          ++v129;
        }

        re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(buf);
        re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(&v81);
        goto LABEL_78;
      }

      if (v124[0] == 1)
      {
        v75[0] = v124[0];
        *&v75[8] = *&v124[8];
        re::DynamicString::DynamicString(&v76, &v125);
        if (v77[0])
        {
          v54 = v77[1];
        }

        else
        {
          v54 = v77 + 1;
        }

        re::DynamicString::format(&v78, "%s", v53, v54);
        v55 = v78;
        v56 = v79;
        v57 = v80;
        *&v78 = 0;
        v79 = 0;
        *a6 = 0;
        *(a6 + 8) = v55;
        *(a6 + 24) = v56;
        *(a6 + 32) = v57;
        if (v75[0] == 1 && v76 && (v77[0] & 1) != 0)
        {
          (*(*v76 + 40))();
        }

        goto LABEL_69;
      }

      (*(buf[0].n128_u64[0] + 56))(buf);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::close(&buf[1].n128_u8[8]);
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::deinit(buf);
      re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~SerializerV2(buf);
      re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(&v81);
      re::IntrospectionSharedLock::~IntrospectionSharedLock(&v93);
      if (*(a5 + 36))
      {
        v81 = 88;
        v82 = v97;
        v64 = v118;
        if (v101)
        {
          v65 = v97 + 88;
        }

        else
        {
          v65 = 0;
        }

        if ((v101 & 1) == 0)
        {
          v64 = 0;
        }

        v83 = v65;
        v84 = v64;
        v85 = v97 + v64 + 88;
        v86 = v114;
        if ((v101 & 2) != 0)
        {
          v87 = (v114 + v97 + v64 + 88);
          v88 = v109;
        }

        else
        {
          v87 = 0;
          v88 = 0;
        }
      }
    }

    else
    {
      v99 = 0;
      v96 = 0;
      v97 = 0;
      v95 = 0;
      v98 = 0;
    }

    v77[0] = 0;
    memset(v75, 0, sizeof(v75));
    LODWORD(v76) = 0;
    v37 = (*(*a1 + 16))(a1, v100, 24);
    if (v37 == 24)
    {
      if (*(a5 + 36) == 1)
      {
        v38 = (*(*a1 + 16))(a1, &v81, 64);
        if (v38 != 64)
        {
          v41 = "Failed to write CompiledAssetOffsets bytes.";
          goto LABEL_44;
        }

        v39 = (*(*a1 + 16))(a1, v99, v97);
        if (v39 != v97)
        {
          v41 = "Failed to write DynamicAssetHeader bytes.";
          goto LABEL_44;
        }

        v40 = v39 + 88;
      }

      else
      {
        v40 = 24;
      }

      if (v118)
      {
        v45 = (*(*a1 + 16))(a1, v120);
        if (v45 != v118)
        {
          v41 = "write compiled file schema failed";
          goto LABEL_44;
        }

        v40 += v45;
      }

      buf[0].n128_u64[0] = v40;
      buf[0].n128_u8[8] = 1;
      v46 = re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(v75, buf);
      v47 = (*(*a1 + 16))(a1, v116, v114, v46);
      if (v47 == v114)
      {
        buf[0].n128_u64[0] = v47;
        buf[0].n128_u8[8] = 0;
        v48 = re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(v75, buf);
        if (!v109)
        {
          goto LABEL_122;
        }

        v49 = (*(*a1 + 16))(a1, v111, v48);
        if (v49 == v109)
        {
          v50 = v49;
          v51 = v105;
          if (v105)
          {
            if (v105 == 1)
            {
              v52 = 0;
            }

            else
            {
              v66 = 0;
              v67 = 1;
              do
              {
                if (v51 <= v67 - 1)
                {
                  *&v78 = 0;
                  v123 = 0u;
                  *v124 = 0u;
                  v122 = 0u;
                  memset(buf, 0, sizeof(buf));
                  v70 = MEMORY[0x1E69E9C10];
                  v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v138 = 136315906;
                  v139 = "operator[]";
                  v140 = 1024;
                  if (v71)
                  {
                    v72 = 3;
                  }

                  else
                  {
                    v72 = 2;
                  }

                  v141 = 789;
                  v142 = 2048;
                  v143 = v67 - 1;
                  v144 = 2048;
                  v145 = v51;
                  _os_log_send_and_compose_impl(v72, &v78, buf, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v138, 38, v73, v74);
                  _os_crash_msg();
                  __break(1u);
                }

                if (*(v107 + v66 + 16) != *(v107 + v66))
                {
                  buf[0].n128_u64[0] = *(v107 + v66 + 16) - *(v107 + v66);
                  buf[0].n128_u8[8] = *(v107 + v66 + 8);
                  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(v75, buf);
                  v51 = v105;
                }

                ++v67;
                v66 += 16;
              }

              while (v67 < v51);
              v50 = v109;
              v52 = v51 - 1;
            }

            v68 = re::DynamicArray<re::DynamicArrayStreamWriter::ChunkInfo>::operator[](v51, v107, v52);
            if (v50 == *v68)
            {
              goto LABEL_122;
            }

            buf[0].n128_u64[0] = v50 - *v68;
            buf[0].n128_u8[8] = *(re::DynamicArray<re::DynamicArrayStreamWriter::ChunkInfo>::operator[](v105, v107, v105 - 1) + 8);
          }

          else
          {
            buf[0].n128_u64[0] = v49;
            buf[0].n128_u8[8] = 0;
          }

          re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(v75, buf);
LABEL_122:
          re::DynamicArray<re::RealityArchiveChunkInfo>::DynamicArray(buf, v75);
          *a6 = 1;
          v69 = v122;
          *(a6 + 8) = buf[0].n128_u64[0];
          v26 = *(buf + 8);
          *(a6 + 16) = *(buf + 8);
          *(a6 + 40) = v69;
          *(a6 + 32) = 1;
          goto LABEL_45;
        }

        v41 = "write compiled file blob failed";
      }

      else
      {
        v41 = "write compiled file data failed";
      }
    }

    else
    {
      v41 = "write compiled file header failed";
    }

LABEL_44:
    v26 = buf[0];
    v42 = buf[1];
    *a6 = 0;
    *(a6 + 8) = v26;
    *(a6 + 24) = v42;
LABEL_45:
    if (*v75 && v77[0])
    {
      (*(**v75 + 40))();
    }

    goto LABEL_79;
  }

  re::DynamicString::format(buf, "Serializing compiled file failed", v21);
  v26 = buf[0];
  v27 = buf[1];
  *a6 = 0;
  *(a6 + 8) = v26;
  *(a6 + 24) = v27;
LABEL_89:
  if (v113[0] && v116)
  {
    (*(*v113[0] + 40))();
  }

LABEL_92:
  result = v117[0];
  if (v117[0] && v120)
  {
    result = (*(*v117[0] + 40))(v26);
  }

  if (v17)
  {
    return (*(*v14 + 152))(v14, a2, v26);
  }

  return result;
}

void re::DynamicAssetHeader::DynamicAssetHeader(re::DynamicAssetHeader *this)
{
  if ((atomic_load_explicit(&qword_1EE193AE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193AE8))
  {
    qword_1EE193AE0 = re::internal::getOrCreateInfo("DynamicAssetHeader", re::allocInfo_DynamicAssetHeader, re::initInfo_DynamicAssetHeader, &unk_1EE193AC0, 0);
    __cxa_guard_release(&qword_1EE193AE8);
  }

  qword_1EE193AC8 = qword_1EE193AE0;
}

uint64_t re::DynamicArray<re::DynamicArrayStreamWriter::ChunkInfo>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1 <= a3)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 789;
    v14 = 2048;
    v15 = a3;
    v16 = 2048;
    v17 = a1;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 16 * a3;
}

uint64_t *re::AssetUtilities::loadCompiledAsset@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, const char **a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  re::DynamicString::setCapacity(&v16, 0);
  if (re::AssetPath::filePathToAsset(a1, &v16, 0, *(a2 + 16)))
  {
    if (v17)
    {
      v12 = v18;
    }

    else
    {
      v12 = &v17 + 1;
    }

    v14[0] = *a6;
    if (v14[0] == 1)
    {
      v15 = *(a6 + 8);
    }

    re::AssetUtilities::loadCompiledAssetFromPath(v12, a2, a4, a5, v14, a3);
  }

  else
  {
    *a3 = 1;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  result = v16;
  if (v16)
  {
    if (v17)
    {
      return (*(*v16 + 40))();
    }
  }

  return result;
}

void re::AssetUtilities::loadCompiledAssetFromPath(char *a1@<X0>, uint64_t *a2@<X1>, const char **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  re::FileSeekableInputStream::FileSeekableInputStream(v31, a1, 0, -1);
  if (v33 == -1)
  {
    if (v31[48])
    {
      v17 = *&v32[7];
    }

    else
    {
      v17 = v32;
    }

    re::DynamicString::format(&v28, "Attempt to open compiled file '%s' did not succeed: %s", v12, a1, v17);
    if (v29)
    {
      v18 = v30[0];
    }

    else
    {
      v18 = &v29 + 1;
    }

    re::WrappedError::make(&v24, @"REAssetLoadingErrorDomain", 0x12C, v18);
    v19 = v24;
    v24 = 0;
    *a6 = 0;
    *(a6 + 8) = v19;

    if (v28 && (v29 & 1) != 0)
    {
      (*(*v28 + 40))();
    }
  }

  else
  {
    v24 = 0;
    v25[0] = 0;
    v26[0] = *a5;
    if (v26[0] == 1)
    {
      v27 = *(a5 + 8);
    }

    re::AssetUtilities::loadCompiledAssetFromStream(v31, &v24, a2, a3, a4, 0, 0, v26, &v28);
    if (v28 == 1)
    {
      v15 = v29;
      v14 = v30[0];
      if (v30[0])
      {
        v16 = (v30[0] + 8);
      }

      *a6 = 1;
      *(a6 + 8) = v15;
      *(a6 + 16) = v14;
    }

    else
    {
      if (v30[0])
      {
        v20 = v30[1];
      }

      else
      {
        v20 = v30 + 1;
      }

      re::DynamicString::format(&v24, "Error loading compiled file '%s': %s", v13, a1, v20);
      if (v25[0])
      {
        v21 = v25[1];
      }

      else
      {
        v21 = v25 + 1;
      }

      re::WrappedError::make(&v23, @"REAssetLoadingErrorDomain", 0x12C, v21);
      v22 = v23;
      v23 = 0;
      *a6 = 0;
      *(a6 + 8) = v22;

      if (v24 && (v25[0] & 1) != 0)
      {
        (*(*v24 + 40))();
      }
    }

    re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::DynamicString>::~Result(&v28);
  }

  re::FileSeekableInputStream::~FileSeekableInputStream(v31);
}

void re::AssetUtilities::loadCompiledAssetFromStream(re *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, const char **a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v146[7] = *MEMORY[0x1E69E9840];
  v133[0] = 0;
  *&v132 = 0;
  v131 = 0uLL;
  DWORD2(v132) = 0;
  *&v129[8] = 0;
  *&v129[16] = 0;
  *v129 = a1;
  LODWORD(v130) = 0;
  Next = re::SeekableInputStreamBufferedReader::readNext(v129, 0x18uLL);
  if (*&v129[16] <= 0x17uLL)
  {
    v16 = *re::assetsLogObjects(Next);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Compiled file is too short", buf, 2u);
    }

    v18 = "Compiled file is too short";
LABEL_14:
    v26 = 0;
    v116 = 0;
    *v117 = *buf;
    *&v117[16] = *&buf[16];
    v118 = v121;
    goto LABEL_15;
  }

  v19 = **&v129[8];
  if (**&v129[8] != 825246019)
  {
    v24 = *re::assetsLogObjects(Next);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      *buf = 67109376;
      *&buf[4] = v19;
      *&buf[8] = 1024;
      *&buf[10] = 825246019;
      _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "Compiled file has incorrect file tag (got %x, expected %x)", buf, 0xEu);
    }

    v18 = "Compiled file has incorrect file tag";
    goto LABEL_14;
  }

  v20 = *(*&v129[8] + 4);
  v21 = *(*&v129[8] + 8);
  if (a4 && v21 != 1)
  {
    v22 = *re::assetsLogObjects(Next);
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      *buf = 67109376;
      *&buf[4] = v21;
      *&buf[8] = 1024;
      *&buf[10] = 1;
      _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Compiled file has an incorrect asset version (got %d, expected %d)", buf, 0xEu);
    }

    v18 = "Compiled file has an incorrect asset version";
    goto LABEL_14;
  }

  v26 = 1;
  v116 = 1;
  *v117 = 825246019;
  *&v117[4] = v20;
  *&v117[12] = *(*&v129[8] + 12);
  v41 = *(*&v129[8] + 20);
  *&v117[8] = v21;
  *&v117[20] = v41;
LABEL_15:
  if (v130)
  {
    (*(**v129 + 24))(*v129);
    LODWORD(v130) = 0;
  }

  memset(v129, 0, sizeof(v129));
  v27 = v131;
  if (v131 && v133[0])
  {
    v27 = (*(*v131 + 40))();
  }

  if (v26)
  {
    memset(v115, 0, sizeof(v115));
    if ((v117[12] & 4) != 0)
    {
      v37 = (*(*a1 + 104))(a1, 64, v115);
      if (v37 <= 0x3F)
      {
        v111 = 0;
        v112 = *v129;
        v113 = *&v129[16];
        v114 = v130;
        re::DynamicString::DynamicString(v129, &v112);
        *a9 = 0;
        v38 = v130;
        *(a9 + 8) = *v129;
        *(a9 + 32) = v38;
        *(a9 + 16) = *&v129[8];
LABEL_109:
        if (v112 && (BYTE8(v112) & 1) != 0)
        {
          (*(*v112 + 40))();
        }

LABEL_112:
        if (v116)
        {
          return;
        }

        goto LABEL_113;
      }

      v111 = 1;
      re::DynamicAssetHeader::DynamicAssetHeader(v37);
      v110 = 0;
      if ((atomic_load_explicit(&qword_1EE193AE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193AE8))
      {
        qword_1EE193AE0 = re::internal::getOrCreateInfo("DynamicAssetHeader", re::allocInfo_DynamicAssetHeader, re::initInfo_DynamicAssetHeader, &unk_1EE193AC0, 0);
        __cxa_guard_release(&qword_1EE193AE8);
      }

      v119 = *(qword_1EE193AE0 + 32);
      re::IntrospectionSharedLock::IntrospectionSharedLock(&v97);
      re::TypeRegistry::typeInfo(v119, &v119, v129);
      re::TypeInfo::TypeInfo(v99, &v129[8]);
      *buf = 0x2568151B0860AFE2;
      *&buf[8] = "DynamicAssetHeaderDeserializer";
      v42 = re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::SerializerV2(v129, buf);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::init(v129, v119);
      v43 = re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::open(v129, a1, 0, 0);
      if (LOBYTE(v133[0]) == 1 || (v43 = (*(*v129 + 72))(v129, "DynamicAssetHeader", 0, &v110, v99, v99, 0), (v43 & 1) == 0))
      {
        v58 = 0;
        v106 = 0;
        v107 = *buf;
        v108 = *&buf[16];
        v109 = v121;
      }

      else
      {
        (*(*v129 + 56))(v129);
        re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::close(&v130);
        if (LOBYTE(v133[0]) == 1)
        {
          buf[0] = v133[0];
          *&buf[8] = *&v133[1];
          re::DynamicString::DynamicString(&v121, &v134);
          if (v122)
          {
            v57 = v123;
          }

          else
          {
            v57 = &v122 + 1;
          }

          re::DynamicString::format(v127, "%s", v56, v57);
          v106 = 0;
          v107 = *v127;
          v108 = *&v127[16];
          v109 = v128;
          if (buf[0] == 1 && v121 && (v122 & 1) != 0)
          {
            (*(*v121 + 40))();
          }

          v58 = 0;
        }

        else
        {
          re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::deinit(v129);
          v58 = 1;
        }
      }

      *v129 = off_1F5CBAD70;
      v59 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v146);
      if (v141)
      {
        if (v145)
        {
          (*(*v141 + 40))(v59);
        }

        v145 = 0;
        v142 = 0;
        v143 = 0;
        v141 = 0;
        ++v144;
      }

      v60 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v140);
      if (v135)
      {
        if (v139)
        {
          (*(*v135 + 40))(v60);
        }

        v139 = 0;
        v136 = 0;
        v137 = 0;
        v135 = 0;
        ++v138;
      }

      re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::~Serializer(v129);
      re::IntrospectionSharedLock::~IntrospectionSharedLock(&v97);
      if ((v58 & 1) == 0)
      {
        if ((v106 & 1) == 0)
        {
          re::DynamicString::DynamicString(v129, &v107);
          *a9 = 0;
          v61 = v130;
          *(a9 + 8) = *v129;
          *(a9 + 32) = v61;
          *(a9 + 16) = *&v129[8];
LABEL_141:
          if (v107 && (BYTE8(v107) & 1) != 0)
          {
            (*(*v107 + 40))();
          }

          goto LABEL_108;
        }

LABEL_24:
        v29 = v110;
        if (!v110)
        {
          v40 = *&v117[4];
          if (*&v117[4] == 1)
          {
            v29 = 2;
          }

          else
          {
            if (*&v117[4] != 2)
            {
              v62 = *re::assetsLogObjects(v28);
              v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
              if (v63)
              {
                *v129 = 67109120;
                *&v129[4] = v40;
                _os_log_error_impl(&dword_1E1C61000, v62, OS_LOG_TYPE_ERROR, "Compiled file has an incompatible header version (got %d, expected a valid CompiledAssetHeaderVersion enum value).", v129, 8u);
              }

              v64 = *v129;
              v65 = *&v129[16];
              v66 = v130;
              *a9 = 0;
              *(a9 + 8) = v64;
              *(a9 + 24) = v65;
              *(a9 + 32) = v66;
              goto LABEL_108;
            }

            v29 = 3;
          }
        }

        v92 = a7;
        v93 = a6;
        v30 = *a3;
        *v129 = a4;
        v31 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v30, v129);
        (*(**v31 + 128))(*v31);
        v32 = *v31;
        v33 = (*(**v31 + 128))(*v31);
        v129[16] = 0;
        *v129 = &unk_1F5CCF6E8;
        *&v129[8] = "schema";
        v131 = 0u;
        v132 = 0u;
        LODWORD(v133[0]) = 0;
        *(v133 + 4) = 0x7FFFFFFFLL;
        v34 = v117[12];
        if (v117[12])
        {
          v39 = *(v33 + 16) != 8 || strcmp(*(v33 + 48), "SceneAsset") != 0;
          *buf = &unk_1F5D0AE00;
          *&buf[8] = a1;
          *&buf[16] = 0;
          LODWORD(v121) = 0;
          v122 = 0;
          v123 = (*(*a1 + 40))(a1);
          LOBYTE(v124) = 0;
          if ((v99[0] & 1) == 0)
          {
            v54 = *re::assetsLogObjects(v44);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              if (BYTE8(v100))
              {
                v91 = v101;
              }

              else
              {
                v91 = &v100 + 9;
              }

              *v127 = 136315138;
              *&v127[4] = v91;
              _os_log_error_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_ERROR, "%s", v127, 0xCu);
            }

            re::DynamicString::DynamicString(v127, &v100);
            *a9 = 0;
            v55 = v128;
            *(a9 + 8) = *v127;
            *(a9 + 32) = v55;
            *(a9 + 16) = *&v127[8];
            if (v99[0])
            {
              if (v121)
              {
                (*(**&buf[8] + 24))(*&buf[8]);
              }
            }

            else
            {
              if (v100 && (BYTE8(v100) & 1) != 0)
              {
                (*(*v100 + 40))();
              }

              if (v121)
              {
                (*(**&buf[8] + 24))(*&buf[8]);
                LODWORD(v121) = 0;
              }
            }

            goto LABEL_107;
          }

          v35 = v100;
          if (v121)
          {
            (*(**&buf[8] + 24))(*&buf[8], v45);
          }
        }

        else
        {
          v35 = 0;
        }

        if (a5)
        {
          v104[0] = *a8;
          if (v104[0] == 1)
          {
            v105 = *(a8 + 8);
          }

          deserializeIntrospectedAssetWithVersioning(a1, a4, a3, v35, v33, a5, v29, v104, buf);
          if (buf[0] != 1)
          {
LABEL_94:
            re::DynamicString::DynamicString(v99, &buf[8]);
            *a9 = 0;
            *(a9 + 8) = *v99;
            *(a9 + 32) = v101;
            *(a9 + 16) = v100;
            if (*&buf[8] && (buf[16] & 1) != 0)
            {
              (*(**&buf[8] + 40))();
            }

LABEL_107:
            re::AutoFreeAllocator::~AutoFreeAllocator(v129);
            goto LABEL_108;
          }
        }

        else
        {
          *v127 = &unk_1F5CB9778;
          v102[0] = *a8;
          if (v102[0] == 1)
          {
            v103 = *(a8 + 8);
          }

          v46 = deserializeIntrospectedAssetWithVersioning(a1, a4, a3, v35, v33, v127, v29, v102, buf);
          if ((buf[0] & 1) == 0)
          {
            v67 = *re::assetsLogObjects(v46);
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              *v99 = 0;
              _os_log_error_impl(&dword_1E1C61000, v67, OS_LOG_TYPE_ERROR, "Failed to deserialize asset data", v99, 2u);
            }

            goto LABEL_94;
          }
        }

        v47 = *&buf[8];
        if ((v34 & 2) == 0)
        {
          v48 = (*(*a1 + 40))(a1);
          v49 = (*(*a1 + 64))(a1);
          if (v48 != v49)
          {
            v69 = *re::assetsLogObjects(v49);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1E1C61000, v69, OS_LOG_TYPE_ERROR, "Extra data in file", buf, 2u);
            }

            v70 = (*(*v32 + 16))(v32, v47);
            v71 = *buf;
            v72 = *&buf[16];
            v73 = v121;
            *a9 = 0;
            *(a9 + 8) = v71;
            *(a9 + 24) = v72;
            *(a9 + 32) = v73;
            goto LABEL_107;
          }
        }

        v119 = v47;
        re::SeekableInputStreamSlice::SeekableInputStreamSlice(v99, a1, -1);
        if (v93)
        {
          if ((v34 & 2) == 0)
          {
            goto LABEL_136;
          }

          v126 = 0;
          v123 = 0;
          v124 = 0;
          v122 = 0;
          v125 = 0;
          *&buf[8] = 0;
          *&buf[16] = 0;
          *buf = a1;
          LODWORD(v121) = 0;
          v50 = re::SeekableInputStreamBufferedReader::readNext(buf, 0xFFFFFFFFFFFFFFFFLL);
          v51 = v50;
          if (v50)
          {
            re::Data::makeDataWithBytes(v127, *&buf[8], *&buf[16]);
            if (v127 != v93)
            {
              v52 = *v127;
              *v127 = 0;
              v53 = *v93;
              *v93 = v52;
            }
          }

          else
          {
            v85 = *re::assetsLogObjects(v50);
            if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
            {
              *v127 = 0;
              _os_log_error_impl(&dword_1E1C61000, v85, OS_LOG_TYPE_ERROR, "Error reading asset blob", v127, 2u);
            }

            v86 = (*(*v32 + 16))(v32, v47);
            v87 = *v127;
            v88 = *&v127[16];
            v89 = v128;
            *a9 = 0;
            *(a9 + 8) = v87;
            *(a9 + 24) = v88;
            *(a9 + 32) = v89;
          }

          if (v121)
          {
            (*(**buf + 24))(*buf);
            LODWORD(v121) = 0;
          }

          memset(buf, 0, sizeof(buf));
          if (v122 && v126)
          {
            (*(*v122 + 40))();
          }

          if (v51)
          {
LABEL_136:
            v83 = 0;
LABEL_137:
            *a9 = 1;
            *(a9 + 8) = v47;
            *(a9 + 16) = v83;
          }
        }

        else
        {
          if (*a8 == 1)
          {
            v68 = *(a8 + 8);
          }

          else
          {
            v68 = 0;
          }

          re::AssetSignpost::ScopeGuard::ScopeGuard(v127, 2056, v68, *a4);
          v74 = (*(*v32 + 40))(&v97, v32, v47, v99, a2, v92);
          v75 = v97;
          if (v97)
          {
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v119 + 1, v98);
          }

          else
          {
            v76 = *re::assetsLogObjects(v74);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1E1C61000, v76, OS_LOG_TYPE_ERROR, "Failed to create runtime data for asset.", buf, 2u);
            }

            (*(*v32 + 16))(v32, v47);
            v77 = re::WrappedError::localizedDescription(&v98);
            v78 = *buf;
            v79 = *&buf[16];
            v80 = v121;
            *a9 = 0;
            *(a9 + 8) = v78;
            *(a9 + 24) = v79;
            *(a9 + 32) = v80;
          }

          re::Result<re::SharedPtr<re::RealityFileWriter::AssetInfo>,re::WrappedError>::~Result(&v97);
          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v127, v81, v82);
          if (v75)
          {
            v83 = *(&v119 + 1);
            v47 = v119;
            if (*(&v119 + 1))
            {
              v84 = (*(&v119 + 1) + 8);
            }

            goto LABEL_137;
          }
        }

        re::SeekableInputStreamSlice::detach(v99);
        if (*(&v119 + 1))
        {
        }

        v90 = v106;
        re::AutoFreeAllocator::~AutoFreeAllocator(v129);
        if ((v90 & 1) == 0)
        {
          goto LABEL_141;
        }

LABEL_108:
        if (v111)
        {
          goto LABEL_112;
        }

        goto LABEL_109;
      }
    }

    else
    {
      v111 = 1;
      re::DynamicAssetHeader::DynamicAssetHeader(v27);
      v110 = 0;
    }

    v106 = 1;
    goto LABEL_24;
  }

  re::DynamicString::DynamicString(v129, v117);
  *a9 = 0;
  v36 = v130;
  *(a9 + 8) = *v129;
  *(a9 + 32) = v36;
  *(a9 + 16) = *&v129[8];
LABEL_113:
  if (*v117)
  {
    if (v117[8])
    {
      (*(**v117 + 40))();
    }
  }
}

uint64_t re::AssetUtilities::loadCompiledAssetFromData@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, const char **a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v17 = *a1;
  re::DataSeekableInputStream::DataSeekableInputStream(v18, &v17, 1, 0);

  v16[0] = 0;
  v16[1] = 0;
  v14[0] = *a6;
  if (v14[0] == 1)
  {
    v15 = *(a6 + 8);
  }

  re::AssetUtilities::loadCompiledAssetFromStream(v18, v16, a2, a3, a4, a5, 0, v14, a7);
  v18[0] = &unk_1F5D0A4F8;

  v18[0] = &unk_1F5D0A468;
  return re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v19);
}

uint64_t re::AssetUtilities::loadLocalCompiledOrSourceAsset@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, const char **a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = a3[1];
  re::DynamicString::insert(&v63, 0, ".", 1uLL);
  v15 = *(a1 + 1);
  if (v15)
  {
    v16 = v15 >> 1;
  }

  else
  {
    v16 = v15 >> 1;
  }

  if (v64[0])
  {
    v17 = v64[1];
  }

  else
  {
    v17 = v64 + 1;
  }

  if (v64[0])
  {
    v18 = v64[0] >> 1;
  }

  else
  {
    v18 = LOBYTE(v64[0]) >> 1;
  }

  re::DynamicString::rfind(v62, a1, v17, v18, v16 - 1);
  if (LOBYTE(v62[0]) == 1)
  {
    v19 = (v64[0] & 1) != 0 ? v64[0] >> 1 : LOBYTE(v64[0]) >> 1;
    if (v62[1] == v16 - v19)
    {
      if (*(a1 + 1))
      {
        v20 = *(a1 + 2);
      }

      else
      {
        v20 = a1 + 9;
      }

      v60[0] = *a5;
      if (v60[0] == 1)
      {
        v61 = *(a5 + 1);
      }

      re::AssetUtilities::loadCompiledAssetFromPath(v20, a2, a3, a4, v60, &v74);
      if (v74 == 1)
      {
        v22 = *(&v74 + 1);
        v21 = v75;
        if (v75)
        {
          v23 = (v75 + 8);
        }

        *a7 = 1;
        *(a7 + 8) = v22;
        *(a7 + 16) = v21;
      }

      else
      {
        v45 = re::WrappedError::localizedDescription(&v74 + 1);
        v46 = v68;
        v47 = v69;
        v48 = v70;
        *a7 = 0;
        *(a7 + 8) = v46;
        *(a7 + 24) = v47;
        *(a7 + 32) = v48;
      }

      re::Result<re::AssetUtilities::CompiledAssetLoadResult,re::WrappedError>::~Result(&v74);
      goto LABEL_69;
    }
  }

  if (*a5 == 1)
  {
    v59 = *(a5 + 1);
  }

  else
  {
    v59 = 0;
  }

  if (*(a1 + 1))
  {
    v24 = *(a1 + 2);
  }

  else
  {
    v24 = (a1 + 9);
  }

  v25 = *a2;
  *&v68 = a3;
  v26 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v25, &v68);
  (*(**v26 + 128))(*v26);
  v27 = *v26;
  v28 = *a3;
  v30 = re::path::ext(v24, v29);
  if (*v30 != 46)
  {
    goto LABEL_38;
  }

  v31 = (***(a2 + 8))(*(a2 + 8), v30 + 1);
  (*(*v31 + 16))(&v68);
  v32 = v69 & 1;
  if (v69)
  {
    v33 = v70;
  }

  else
  {
    v33 = &v69 + 1;
  }

  v34 = strcmp(v28, v33);
  v30 = *(&v68 + 1);
  if (*(&v68 + 1) && v32)
  {
    v30 = (*(**(&v68 + 1) + 40))();
  }

  if (v34)
  {
LABEL_38:
    re::DynamicString::operator+(&v68, &v74, &v72);
    v36 = v68;
    v68 = 0uLL;
    v37 = v69;
    v38 = v70;
    v69 = 0;
    v70 = 0;
    *a7 = 0;
    *(a7 + 8) = v36;
    *(a7 + 24) = v37;
    *(a7 + 32) = v38;
    if (v72 && (v73 & 1) != 0)
    {
      (*(*v72 + 40))();
    }

    if (v74 && (BYTE8(v74) & 1) != 0)
    {
      (*(*v74 + 40))();
    }

    goto LABEL_69;
  }

  v39 = (*(*v27 + 192))(v27, a6);
  v40 = (*(*v31 + 40))(&v68, v31, v24, v39, a4);
  if (v68)
  {
    v41 = *(&v68 + 1);
    re::AssetSignpost::ScopeGuard::ScopeGuard(v65, 2056, v59, v28);
    v42 = (*(*v27 + 24))(v27, v41, 0, 0);
    if ((v42 & 1) == 0)
    {
      re::DynamicString::operator+(&v74, &v72, &v66);
      v55 = v74;
      v74 = 0uLL;
      v56 = v75;
      v57 = v76;
      v75 = 0;
      v76 = 0;
      *a7 = 0;
      *(a7 + 8) = v55;
      *(a7 + 24) = v56;
      *(a7 + 32) = v57;
      if (v66 && (v67 & 1) != 0)
      {
        (*(*v66 + 40))();
      }

      if (v72 && (v73 & 1) != 0)
      {
        (*(*v72 + 40))();
      }

      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v65, v53, v54);
      goto LABEL_63;
    }

    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v65, v43, v44);
    *a7 = 1;
    *(a7 + 8) = v41;
    *(a7 + 16) = 0;
  }

  else
  {
    re::DynamicString::DynamicString(&v66, &v70);
    re::DynamicString::operator+(&v74, &v72, &v66);
    v49 = v74;
    v74 = 0uLL;
    v50 = v75;
    v51 = v76;
    v75 = 0;
    v76 = 0;
    *a7 = 0;
    *(a7 + 8) = v49;
    *(a7 + 24) = v50;
    *(a7 + 32) = v51;
    if (v66 && (v67 & 1) != 0)
    {
      (*(*v66 + 40))();
    }

    if (v72 && (v73 & 1) != 0)
    {
      (*(*v72 + 40))();
    }
  }

  v41 = 0;
LABEL_63:
  if (v68 & 1) == 0 && v70 && (v71)
  {
    (*(*v70 + 40))();
  }

  (*(*v31 + 56))(v31, v39);
  if (v41)
  {
    (*(*v27 + 16))(v27, v41);
  }

LABEL_69:
  result = v63;
  if (v63)
  {
    if (v64[0])
    {
      return (*(*v63 + 40))();
    }
  }

  return result;
}

uint64_t *re::AssetUtilities::readSourceJson@<X0>(uint64_t *__return_ptr a1@<X8>, re::AssetUtilities *this@<X0>, const char *a3@<X1>, _OWORD *a4@<X2>, const re::IntrospectionBase *a5@<X3>)
{
  re::FileStreamReader::open(&v31, this);
  if (v31)
  {
    v30 = 0u;
    v29 = 0u;
    v28 = a5;
    v20 = a4[2];
    if (v23 == 1)
    {
      *a1 = v23;
    }

    else
    {
      if (v26)
      {
        v16 = *&v27[7];
      }

      else
      {
        v16 = v27;
      }

      re::DynamicString::format(&v20, "Failed to read JSON source asset %s: %s", v11, this, v16);
      v17 = v20;
      v18 = v21;
      v19 = v22;
      *a1 = 0;
      *(a1 + 1) = v17;
      a1[3] = v18;
      a1[4] = v19;
      if (v23 & 1) == 0 && v25 && (v26)
      {
        (*(*v25 + 40))();
      }
    }
  }

  else
  {
    re::formattedErrorMessage<re::DetailedError>(&v32, &v23);
    v12 = v23;
    v13 = v24;
    v14 = v25;
    *a1 = 0;
    *(a1 + 1) = v12;
    a1[3] = v13;
    a1[4] = v14;
  }

  if (v31 == 1)
  {
    result = v33;
    if (v33)
    {
      if (v35 == 1)
      {
        return fclose(v33);
      }
    }
  }

  else
  {
    result = v34;
    if (v34 && (v35 & 1) != 0)
    {
      return (*(*v34 + 40))();
    }
  }

  return result;
}

uint64_t re::AssetUtilities::estimateSize_introspectionLockedShared(re::AssetUtilities *this, re::TypeInfo *a2, const re::TypeInfo *a3)
{
  if (!this)
  {
    return 0;
  }

  v4 = this;
  if (a3)
  {
    v5 = *(*(a2 + 2) + 8);
  }

  else
  {
    v5 = 0;
  }

  if (*(a2 + 12) == 8)
  {
    v6 = re::TypeInfo::name(a2);
    if (*v6 >> 1 == 94623636)
    {
      v7 = v6[1];
      if (v7 == "char*" || !strcmp(v7, "char*"))
      {
        v12 = *v4;
        goto LABEL_19;
      }
    }

    v8 = re::TypeInfo::name(a2);
    if (*v8 >> 1 == 0x134375A94D9F7110)
    {
      v9 = v8[1];
      if (v9 == "DynamicString" || !strcmp(v9, "DynamicString"))
      {
        v14 = *(v4 + 1);
        if (v14)
        {
          v15 = v14 >> 1;
        }

        else
        {
          v15 = v14 >> 1;
        }

        v13 = v5 + v15;
        goto LABEL_24;
      }
    }

    v10 = re::TypeInfo::name(a2);
    if (*v10 >> 1 == 0x22C6ED80D0CLL)
    {
      v11 = v10[1];
      if (v11 == "StringID" || !strcmp(v11, "StringID")) && (*v4)
      {
        v12 = *(v4 + 1);
LABEL_19:
        v13 = v5 + strlen(v12);
LABEL_24:
        v5 = v13 + 1;
      }
    }
  }

  v16 = *(a2 + 2);
  if ((*(v16 + 48) & 2) != 0)
  {
    return v5;
  }

  v17 = *(a2 + 12);
  if (v17 > 5)
  {
    if (*(a2 + 12) > 7u)
    {
      if (v17 == 8)
      {
        re::TypeRegistry::typeInfo(*a2, *(v16 + 80), &v47);
        if (v47 == 1)
        {
          v5 += re::AssetUtilities::estimateSize_introspectionLockedShared(v4, &v48, 0);
        }

        re::TypeMemberCollection::TypeMemberCollection(&v44, *a2, *(a2 + 2));
        v33 = v46;
        if (v46)
        {
          v34 = 0;
          do
          {
            re::TypeMemberCollection::operator[](&v44, v34, v50);
            re::TypeRegistry::typeInfo(v50[0], *v51, v52);
            re::TypeInfo::TypeInfo(v43, &v52[1]);
            v5 += re::AssetUtilities::estimateSize_introspectionLockedShared((v4 + *(v51 + 24)), v43, 0);
            ++v34;
          }

          while (v33 != v34);
        }

        return v5;
      }

      if (v17 == 9)
      {
        v22 = *v4;
        if (*v4)
        {
          re::TypeRegistry::typeInfo(*a2, *(v16 + 80), v52);
          re::TypeInfo::TypeInfo(&v47, &v52[1]);
          if (re::TypeInfo::isPointerToPolymorphicType(a2))
          {
            re::TypeInfo::getActualTypeFromPointer(&v44, a2, v4);
            if (v44 || (re::TypeInfo::getActualType(v52, &v47, v22), v44 = *v52, v52[0]))
            {
              re::TypeRegistry::typeInfo(*a2, &v44, v52);
              re::TypeInfo::operator=(&v47, &v52[1]);
            }
          }

          v19 = &v47;
          v20 = v22;
          v21 = 1;
          goto LABEL_46;
        }

        return v5;
      }
    }

    else
    {
      if (v17 == 6)
      {
        re::TypeInfo::TypeInfo(&v47, a2);
        re::TypeRegistry::typeInfo(v47, *(v49 + 80), v52);
        re::TypeInfo::TypeInfo(&v44, &v52[1]);
        re::TypeRegistry::typeInfo(v47, *(v49 + 88), v52);
        re::TypeInfo::TypeInfo(v50, &v52[1]);
        v27 = (*(v49 + 96))(v4);
        v5 += (*(v51 + 8) + *(v45 + 8)) * v27;
        v28 = *(v45 + 48);
        v29 = *(v51 + 48);
        if ((v28 & 2) == 0 || (v29 & 2) == 0)
        {
          if ((*(v49 + 128))())
          {
            do
            {
              if ((v28 & 2) == 0)
              {
                v31 = (*(v49 + 136))(v30);
                v5 += re::AssetUtilities::estimateSize_introspectionLockedShared(v31, &v44, 0);
              }

              if ((v29 & 2) == 0)
              {
                v32 = (*(v49 + 144))(v30);
                v5 += re::AssetUtilities::estimateSize_introspectionLockedShared(v32, v50, 0);
              }
            }

            while (((*(v49 + 128))(v30) & 1) != 0);
          }
        }

        return v5;
      }

      if (v17 == 7)
      {
        re::TypeInfo::TypeInfo(&v47, a2);
        re::UnionAccessor::activeMemberType(v52, &v47, v4);
        if (LOBYTE(v52[0]) == 1)
        {
          v19 = &v52[1];
          goto LABEL_37;
        }

        return v5;
      }
    }
  }

  else if (*(a2 + 12) > 3u)
  {
    if (v17 == 4)
    {
      re::TypeInfo::TypeInfo(&v47, a2);
      re::TypeRegistry::typeInfo(v47, *(v49 + 80), v52);
      re::TypeInfo::TypeInfo(&v44, &v52[1]);
      v35 = re::ArrayAccessor::size(&v47, v4);
      v36 = v35;
      if ((*(v49 + 92) & 0xFFFFFF) != 0)
      {
        v5 += v35 * *(v45 + 8);
      }

      if ((*(v45 + 48) & 2) == 0 && v35)
      {
        v37 = 0;
        do
        {
          v38 = re::ArrayAccessor::elementAt(&v47, v4, v37);
          v5 += re::AssetUtilities::estimateSize_introspectionLockedShared(v38, &v44, 0);
          ++v37;
        }

        while (v36 != v37);
      }

      return v5;
    }

    if (v17 == 5)
    {
      re::TypeInfo::TypeInfo(&v47, a2);
      re::TypeRegistry::typeInfo(v47, *(v49 + 80), v52);
      re::TypeInfo::TypeInfo(&v44, &v52[1]);
      v23 = (*(v49 + 88))(v4);
      v5 += v23 * *(v45 + 8);
      if ((*(v45 + 48) & 2) == 0)
      {
        if (*(v49 + 104))
        {
          v24 = v23;
          if (v23)
          {
            v25 = 0;
            do
            {
              v26 = (*(v49 + 104))(v4, v25);
              v5 += re::AssetUtilities::estimateSize_introspectionLockedShared(v26, &v44, 0);
              v25 = (v25 + 1);
            }

            while (v24 != v25);
          }
        }

        else if (*(v49 + 112) && *(v49 + 120) && *(v49 + 128))
        {
          for (i = *(v49 + 120); ; i = *(v49 + 120))
          {
            v42 = i();
            if (!v42)
            {
              break;
            }

            v5 += re::AssetUtilities::estimateSize_introspectionLockedShared(v42, &v44, 0);
          }
        }
      }

      return v5;
    }
  }

  else
  {
    if (v17 - 1 < 2)
    {
      return v5;
    }

    if (v17 == 3)
    {
      re::TypeInfo::TypeInfo(&v47, a2);
      v18 = (*(v49 + 88))(v4);
      if (v18)
      {
        v4 = v18;
        re::TypeRegistry::typeInfo(v47, *(v49 + 80), v52);
        re::TypeInfo::TypeInfo(&v44, &v52[1]);
        v19 = &v44;
LABEL_37:
        v20 = v4;
        v21 = 0;
LABEL_46:
        v5 += re::AssetUtilities::estimateSize_introspectionLockedShared(v20, v19, v21);
        return v5;
      }

      return v5;
    }
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected type category.", "!Unreachable code", "estimateSize_introspectionLockedShared", 1451);
  result = _os_crash("assertion failure: (!Unreachable code) Unexpected type category.");
  __break(1u);
  return result;
}

uint64_t re::AssetUtilities::computeIntrospectedDataSizeV2(re::AssetUtilities *this, re **a2, const re::IntrospectionBase *a3)
{
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
  if (v13)
  {
    locked = re::AssetUtilities::estimateSize_introspectionLockedShared(this, &v14, 1);
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    return locked;
  }

  else
  {
    re::getPrettyTypeName(&v10, a2);
    re::DynamicString::~DynamicString(&v10);
    re::getPrettyTypeName(&v10, a2);
    if (v11)
    {
      v8 = *&v12[7];
    }

    else
    {
      v8 = v12;
    }

    re::internal::assertLog(5, v7, "assertion failure: '%s' (%s:line %i) Type info (%s) is missing.", "type", "computeIntrospectedDataSizeV2", 1467, v8);
    re::DynamicString::~DynamicString(&v10);
    result = _os_crash("assertion failure: (type) Type info (%s) is missing.", v9);
    __break(1u);
  }

  return result;
}

uint64_t deserializeIntrospectedAssetWithVersioning(re::SeekableInputStream &,re::AssetType const&,re::AssetLoadData const&,re::PersistedSchema const*,re::IntrospectionBase const&,re::AssetSerializationScheme &,re::AssetSerializationFormat,re::Optional<unsigned long long>)::$_0::__invoke(uint64_t a1)
{
  if (*(a1 + 16) != 8)
  {
    return 0;
  }

  v2 = *(a1 + 48);
  if (strlen(v2) >= 0x10 && !strncmp(v2, "CustomComponent", 0xFuLL))
  {
    return 1;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    for (i = *(a1 + 64); ; ++i)
    {
      v5 = *i;
      if (**i == 1 && v5[10] == 3)
      {
        break;
      }

      if (!--v3)
      {
        return 0;
      }
    }

    v7 = *(v5 + 2);
    if (v7)
    {
      while (*(v7 + 16) == 8)
      {
        if (!strcmp(*(v7 + 48), "Component"))
        {
          return 1;
        }

        v8 = *(v7 + 56);
        if (!v8)
        {
          break;
        }

        for (j = *(v7 + 64); ; ++j)
        {
          v10 = *j;
          if (**j == 1 && v10[10] == 3)
          {
            break;
          }

          if (!--v8)
          {
            return 0;
          }
        }

        result = 0;
        v7 = *(v10 + 2);
        if (!v7)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t re::DynamicArray<re::RealityArchiveChunkInfo>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v5);
    ++*(a1 + 24);
    v6 = a2[2];
    if (v6 >= *(a1 + 16))
    {
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a2[2]);
      v7 = *(a1 + 16);
      if (v7)
      {
        memmove(*(a1 + 32), a2[4], 16 * v7);
        v7 = *(a1 + 16);
      }

      memcpy((*(a1 + 32) + 16 * v7), (a2[4] + 16 * v7), 16 * (v6 - v7));
    }

    else if (v6)
    {
      memmove(*(a1 + 32), a2[4], 16 * v6);
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

BOOL re::isDoubleCompressed(uint64_t a1)
{
  v1 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v1 = *v1;
  }

  v2 = strlen(v1);
  return v2 >= 4 && *&v1[v2 - 4] == 2054316334;
}

uint64_t re::RealityArchiveEntryTable::RealityArchiveEntryTable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  v6 = *(a3 + 184);
  *(a1 + 24) = 0u;
  *a1 = &unk_1F5CBD040;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0x7FFFFFFFLL;
  *(a1 + 72) = a2;
  v8 = *(a3 + 184);
  if (v8)
  {
    for (i = 0; v8 != i; ++i)
    {
      v10 = i + *(a3 + 176);
      v11 = *(*(a3 + 152) + 8 * (v10 / 0x27));
      v12 = v10 % 0x27;
      v13 = v11 + 104 * v12;
      v14 = (v13 + 8);
      v15 = *(v13 + 31);
      if (v15 < 0)
      {
        v17 = *(v13 + 16);
        if (!v17)
        {
          if (!zip_entry_is_alignment(v13))
          {
            goto LABEL_15;
          }

          continue;
        }

        v16 = *v14;
      }

      else
      {
        if (!*(v13 + 31))
        {
          if (!zip_entry_is_alignment(v11 + 104 * v12))
          {
            goto LABEL_16;
          }

          continue;
        }

        v16 = (v13 + 8);
        v17 = *(v13 + 31);
      }

      if (v16[v17 - 1] != 47 && !zip_entry_is_alignment(v13))
      {
        if ((v15 & 0x80000000) != 0)
        {
LABEL_15:
          v14 = *v14;
        }

LABEL_16:
        isDoubleCompressed = re::isDoubleCompressed(v13);
        if (isDoubleCompressed)
        {
          v19 = strlen(v14);
          v20 = v19 - 4;
        }

        else
        {
        }

        v29 = 0;
        v30 = 0;
        v31 = 0;
        v21 = re::Hash<re::DynamicString>::operator()(&v32, &v26);
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1 + 24, v21, &v29, &v26);
        if (HIDWORD(v30) == 0x7FFFFFFF)
        {
          v22 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1 + 24, v30, v29);
          *(v22 + 8) = v26;
          v23 = v28;
          v24 = v27;
          v26 = 0;
          *(&v27 + 1) = 0;
          v28 = 0;
          *(v22 + 16) = v24;
          *(v22 + 32) = v23;
          *(v22 + 40) = i;
          ++*(a1 + 64);
        }

        else if (v26 && (v27 & 1) != 0)
        {
          (*(*v26 + 40))();
        }
      }
    }
  }

  return a1;
}

uint64_t re::RealityArchiveEntryTable::tryFindEntryIndex(re::RealityArchiveEntryTable *this, char *a2)
{
  v4 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(this + 24, a2);
  if (!v4)
  {
    re::filePathURLConverted(&v7, a2);
    if (v8)
    {
      v6 = *&v9[7];
    }

    else
    {
      v6 = v9;
    }

    v4 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(this + 24, v6);
    if (v7 && (v8 & 1) != 0)
    {
      (*(*v7 + 40))();
    }
  }

  return v4;
}

void re::RealityArchive::~RealityArchive(re::RealityArchive *this)
{
  *this = &unk_1F5CBD070;
  zip_close(*(this + 3));
  *(this + 3) = 0;
  v2 = *(this + 10);
  if (v2)
  {
    fclose(v2);
  }

  re::DynamicString::deinit((this + 40));
  v3 = *(this + 4);
  if (v3)
  {

    *(this + 4) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::RealityArchive::~RealityArchive(this);

  JUMPOUT(0x1E6906520);
}

void *re::RealityArchive::findEntry(re::RealityArchive *this, char *a2)
{
  v2 = *(this + 3);
  result = re::RealityArchiveEntryTable::tryFindEntryIndex(*(this + 4), a2);
  if (result)
  {
    return (*(*(v2 + 152) + 8 * ((*(v2 + 176) + *result) / 0x27uLL)) + 104 * ((*(v2 + 176) + *result) % 0x27uLL));
  }

  return result;
}

id re::RealityArchive::createOrReuseTable@<X0>(re *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a3 && *(a3 + 72) == a1)
  {
    *a4 = a3;

    return (a3 + 8);
  }

  else
  {
    v8 = re::globalAllocators(a1);
    v9 = (*(*v8[2] + 32))(v8[2], 80, 8);
    result = re::RealityArchiveEntryTable::RealityArchiveEntryTable(v9, a1, a2);
    *a4 = result;
  }

  return result;
}

__n128 re::RealityArchive::makeByOpeningFileAtPath@<Q0>(uint64_t *__return_ptr a1@<X8>, re::RealityArchive *this@<X0>, const char *a3@<X1>)
{
  v26 = *MEMORY[0x1E69E9840];
  *__error() = 0;
  v6 = fopen(this, "rb");
  if (!v6)
  {
    v16 = __error();
    v21 = strerror(*v16);
    re::DynamicString::format(&v23, "RERealityArchive: Failed to open FILE pointer due to error: %s", v17, v21);
LABEL_12:
    result = v23;
    v19 = v24;
    v20 = v25;
    *a1 = 0;
    *(a1 + 1) = result;
    a1[3] = v19;
    a1[4] = v20;
    return result;
  }

  v7 = v6;
  v8 = zip_file_read(v6);
  if (!v8)
  {
    fclose(v7);
    re::DynamicString::format(&v23, "RERealityArchive: Failed to open archive, file corrupted or not a proper archive file", v18);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = strlen(this);
  if (v10)
  {
    MurmurHash3_x64_128(this, v10, 0, v23.n128_u64);
    v10 = ((v23.n128_u64[1] + (v23.n128_u64[0] << 6) + (v23.n128_u64[0] >> 2) - 0x61C8864680B583E9) ^ v23.n128_u64[0]);
  }

  v11 = re::RealityArchive::createOrReuseTable(v10, v9, a3, &v22);
  v12 = re::globalAllocators(v11);
  v13 = (*(*v12[2] + 32))(v12[2], 88, 8);
  v14 = v22;
  re::RealityArchive::RealityArchive(v13, v9, v22);
  v13[10] = v7;
  re::DynamicString::operator=((v13 + 5), &v23);
  *a1 = 1;
  a1[1] = v13;
  if (v23.n128_u64[0] && (v23.n128_u8[8] & 1) != 0)
  {
    (*(*v23.n128_u64[0] + 40))();
  }

  if (v14)
  {
  }

  return result;
}

__n128 re::RealityArchive::makeFromFile@<Q0>(FILE *this@<X0>, __sFILE *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = zip_file_read(this);
  if (v6)
  {
    v8 = v6;
    v9 = re::RealityArchive::createOrReuseTable(this, v6, a2, &v17);
    v10 = re::globalAllocators(v9);
    v11 = (*(*v10[2] + 32))(v10[2], 88, 8);
    v12 = v17.n128_u64[0];
    v13 = re::RealityArchive::RealityArchive(v11, v8, v17.n128_i64[0]);
    *a3 = 1;
    *(a3 + 8) = v13;
    if (v12)
    {
    }
  }

  else
  {
    re::DynamicString::format(&v17, "RERealityArchive: Failed to create archive", v7);
    result = v17;
    v15 = v18;
    v16 = v19;
    *a3 = 0;
    *(a3 + 8) = result;
    *(a3 + 24) = v15;
    *(a3 + 32) = v16;
  }

  return result;
}

__n128 re::RealityArchive::makeByReadingBuffer@<Q0>(uint64_t *__return_ptr a1@<X8>, id *this@<X0>, const re::Data *a3@<X1>)
{
  *__error() = 0;
  v6 = fmemopen([*this bytes], objc_msgSend(*this, "length"), "rb");
  if (!v6)
  {
    v16 = __error();
    v21 = strerror(*v16);
    re::DynamicString::format(&v22, "Failed to open FILE pointer due to error: %s", v17, v21);
LABEL_7:
    result = v22;
    v19 = v23;
    v20 = v24;
    *a1 = 0;
    *(a1 + 1) = result;
    a1[3] = v19;
    a1[4] = v20;
    return result;
  }

  v7 = v6;
  v8 = zip_file_read(v6);
  if (!v8)
  {
    fclose(v7);
    re::DynamicString::format(&v22, "RERealityArchive: Failed to create archive", v18);
    goto LABEL_7;
  }

  v9 = v8;
  v10 = re::RealityArchive::createOrReuseTable([*this bytes], v8, a3, &v22);
  v11 = re::globalAllocators(v10);
  v12 = (*(*v11[2] + 32))(v11[2], 88, 8);
  v13 = v22.n128_u64[0];
  v14 = re::RealityArchive::RealityArchive(v12, v9, v22.n128_i64[0]);
  *(v14 + 80) = v7;
  re::ObjCObject::operator=((v14 + 72), this);
  *a1 = 1;
  a1[1] = v12;
  if (v13)
  {
  }

  return result;
}

__n128 re::RealityArchive::verifyRealityArchiveAtFilePath@<Q0>(uint64_t *__return_ptr a1@<X8>, re::RealityArchive *this@<X0>)
{
  *__error() = 0;
  v4 = fopen(this, "rb");
  if (v4)
  {
    v5 = v4;
    v6 = zip_file_read(v4);
    if (v6)
    {
      v7 = v6;
      v8 = zip_verify_crc_archive(v6);
      zip_close(v7);
      fclose(v5);
      *a1 = 1;
      *(a1 + 8) = v8;
      return result;
    }

    fclose(v5);
    re::DynamicString::format(&v16, "RERealityArchive: Failed to create archive from provided file path: %s", v12, this);
  }

  else
  {
    v10 = __error();
    v15 = strerror(*v10);
    re::DynamicString::format(&v16, "Failed to open FILE pointer due to error: %s", v11, v15);
  }

  result = v16;
  v13 = v17;
  v14 = v18;
  *a1 = 0;
  *(a1 + 1) = result;
  a1[3] = v13;
  a1[4] = v14;
  return result;
}

__n128 re::RealityArchive::copy@<Q0>(uint64_t *__return_ptr a1@<X8>, re::RealityArchive *this@<X0>)
{
  v4 = *(this + 6);
  if (v4)
  {
    v5 = v4 >> 1;
  }

  else
  {
    v5 = v4 >> 1;
  }

  if (v5)
  {
    *__error() = 0;
    if (*(this + 48))
    {
      v6 = *(this + 7);
    }

    else
    {
      v6 = this + 49;
    }

    v7 = fopen(v6, "rb");
  }

  else
  {
    if (!*(this + 9))
    {
      goto LABEL_15;
    }

    *__error() = 0;
    v7 = fmemopen([*(this + 9) bytes], objc_msgSend(*(this + 9), "length"), "rb");
  }

  if (v7)
  {
    zip_copy_with_read_handle(*(this + 3), v7);
  }

  v8 = __error();
  v13 = strerror(*v8);
  re::DynamicString::format(&v14, "Failed to open FILE pointer due to error: %s", v9, v13);
LABEL_15:
  result = v14;
  v11 = v15;
  v12 = v16;
  *a1 = 0;
  *(a1 + 1) = result;
  a1[3] = v11;
  a1[4] = v12;
  return result;
}

uint64_t *re::RealityArchive::entryNames@<X0>(uint64_t *__return_ptr a1@<X8>, re::RealityArchive *this@<X0>)
{
  v4 = *(*(this + 4) + 52);
  a1[4] = 0;
  a1[1] = 0;
  a1[2] = 0;
  *(a1 + 6) = 0;
  result = re::DynamicArray<re::DynamicString>::setCapacity(a1, v4);
  ++*(a1 + 6);
  v6 = *(this + 4);
  v7 = *(v6 + 56);
  if (v7)
  {
    v8 = 0;
    v9 = *(v6 + 40);
    while (1)
    {
      v10 = *v9;
      v9 += 14;
      if (v10 < 0)
      {
        break;
      }

      if (v7 == ++v8)
      {
        LODWORD(v8) = *(v6 + 56);
        break;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  while (v8 != v7)
  {
    result = re::DynamicArray<re::DynamicString>::add(a1, (*(v6 + 40) + 56 * v8 + 8));
    v11 = *(v6 + 56);
    if (v11 <= v8 + 1)
    {
      v11 = v8 + 1;
    }

    while (v11 - 1 != v8)
    {
      LODWORD(v8) = v8 + 1;
      if ((*(*(v6 + 40) + 56 * v8) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v8) = v11;
LABEL_14:
    ;
  }

  return result;
}

void re::RealityArchive::newDataByLoadingEntryWithName(uint64_t *__return_ptr a1@<X8>, re::RealityArchive *this@<X0>, char *a3@<X1>)
{
  v5 = *(this + 3);
  EntryIndex = re::RealityArchiveEntryTable::tryFindEntryIndex(*(this + 4), a3);
  if (EntryIndex)
  {
    v8 = *(v5 + 176) + *EntryIndex;
    v9 = *(*(v5 + 152) + 8 * (v8 / 0x27));
    if (v9)
    {
      reality_v1_entry_load_data_begin(v9 + 104 * (v8 % 0x27));
    }
  }

  re::DynamicString::format(v12, "Could not find archive entry named %s.", v7, a3);
  v10 = v12[0];
  v11 = v12[1];
  *a1 = 0;
  *(a1 + 1) = v10;
  *(a1 + 3) = v11;
}

uint64_t re::RealityArchive::uncompressedEntryRange(re::RealityArchive *this, char *a2, unint64_t *a3, unint64_t *a4)
{
  v6 = *(this + 3);
  EntryIndex = re::RealityArchiveEntryTable::tryFindEntryIndex(*(this + 4), a2);
  if (EntryIndex && (v8 = *(v6 + 176) + *EntryIndex, (v9 = *(*(v6 + 152) + 8 * (v8 / 0x27))) != 0) && (v10 = v9 + 104 * (v8 % 0x27), !re::isDoubleCompressed(v10)) && *(v10 + 40) == *(v10 + 48))
  {
    *a3 = zip_entry_data_offset(v10);
    v11 = *(v10 + 48);
    result = 1;
  }

  else
  {
    v11 = 0;
    result = 0;
    *a3 = 0;
  }

  *a4 = v11;
  return result;
}

uint64_t *re::RealityArchive::unarchiveToDirectory@<X0>(re::RealityArchive *this@<X0>, re *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = this;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  re::DynamicString::setCapacity(&v47, 0);
  v7 = re::ensureFolderExists(a2, v6);
  if ((v7 & 1) == 0)
  {
    re::DynamicString::format(v43, "Failed to create directory %s.", v8, a2);
    v34 = *v43;
    v35 = *&v43[16];
    v36 = v44;
    *a3 = 0;
    *(a3 + 8) = v34;
    *(a3 + 24) = v35;
    *(a3 + 32) = v36;
    goto LABEL_61;
  }

  v40 = *(*(v4 + 3) + 184);
  if (!v40)
  {
    goto LABEL_60;
  }

  v10 = 0;
  v38 = 1;
  v39 = v4;
  do
  {
    v11 = *(v4 + 3);
    v12 = *(v11 + 176) + v10;
    v13 = *(*(v11 + 152) + 8 * (v12 / 0x27));
    v14 = strlen(a2);
    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v14;
    if (v14)
    {
      memcpy(&__dst, a2, v14);
    }

    v16 = v13 + 104 * (v12 % 0x27);
    __dst.__r_.__value_.__s.__data_[v15] = 0;
    std::string::append(&__dst, "/");
    v17 = (v16 + 8);
    v18 = (v16 + 8);
    if (*(v16 + 31) < 0)
    {
      v18 = *v17;
    }

    std::string::append(&__dst, v18);
    v20 = *(v16 + 31);
    if (v20 < 0)
    {
      v20 = *(v16 + 16);
      if (!v20)
      {
LABEL_22:
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        goto LABEL_25;
      }

      v21 = *v17;
    }

    else
    {
      v21 = (v16 + 8);
      if (!*(v16 + 31))
      {
        goto LABEL_22;
      }
    }

    v22 = v21[v20 - 1];
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if (v22 == 47)
    {
      re::ensureFolderExists(p_dst, v19);
      v4 = v39;
      v32 = 0;
      goto LABEL_50;
    }

LABEL_25:
    re::ensureFolderExistsForFile(p_dst, v19);
    v24 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    v25 = __dst.__r_.__value_.__r.__words[0];
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &__dst;
    }

    else
    {
      v26 = __dst.__r_.__value_.__r.__words[0];
    }

    v27 = strrchr(v26, 46);
    if (v27)
    {
      v28 = v27;
      if (!strcmp(v27, ".arz"))
      {
        std::string::erase(&__dst, v28 - v26, 4uLL);
        v24 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        v25 = __dst.__r_.__value_.__r.__words[0];
      }
    }

    if (v24 >= 0)
    {
      v29 = &__dst;
    }

    else
    {
      v29 = v25;
    }

    re::FileStreamWriter::open(v43, v29);
    if (v43[0])
    {
      reality_v1_entry_load_data_begin(v16);
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &__dst;
    }

    else
    {
      v31 = __dst.__r_.__value_.__r.__words[0];
    }

    re::DynamicString::format(&v41, "RERealityArchive: Failed to open file for writing at %s.", v30, v31);
    re::DynamicString::operator=(&v47, &v41);
    if (v41 && (v42 & 1) != 0)
    {
      (*(*v41 + 40))();
    }

    v4 = v39;
    if (v43[0] == 1)
    {
      if (*&v43[16] && v44 == 1)
      {
        fclose(*&v43[16]);
      }
    }

    else if (v44 && (v45 & 1) != 0)
    {
      (*(*v44 + 40))();
    }

    v32 = 1;
    v38 = 0;
LABEL_50:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (++v10 == v40)
    {
      v33 = 1;
    }

    else
    {
      v33 = v32;
    }
  }

  while (v33 != 1);
  if ((v38 & 1) == 0)
  {
    re::DynamicString::DynamicString(v43, &v47);
    *a3 = 0;
    *(a3 + 8) = *v43;
    *(a3 + 32) = v44;
    *(a3 + 16) = *&v43[8];
    goto LABEL_61;
  }

LABEL_60:
  *a3 = 1;
LABEL_61:
  result = v47;
  if (v47)
  {
    if (v48)
    {
      return (*(*v47 + 40))(v47, v49);
    }
  }

  return result;
}

__n128 re::RealityArchive::archiveFromDirectory@<Q0>(char *a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (stat(a1, &v14) || (v14.st_mode & 0x4000) == 0)
  {
    re::DynamicString::format(&v14, "Could not find directory %s.", v8, a1);
  }

  else if (re::ensureFolderExistsForFile(a2, v8))
  {
    v10 = reality_archive_file_pack(a1, a2, a3 == 1);
    if (v10)
    {
      *a4 = 1;
      return result;
    }
  }

  else
  {
    re::DynamicString::format(&v14, "Could not create parent folders for file path %s.", v9, a2);
  }

  result = *&v14.st_dev;
  v12 = *&v14.st_uid;
  v13 = *&v14.st_rdev;
  *a4 = 0;
  *(a4 + 8) = result;
  *(a4 + 24) = v12;
  *(a4 + 32) = v13;
  return result;
}

uint64_t re::RealityArchive::RealityArchive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = a2;
  *a1 = &unk_1F5CBD070;
  *(a1 + 32) = a3;
  if (a3)
  {
    v6 = (a3 + 8);
  }

  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  re::DynamicString::setCapacity((a1 + 40), 0);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

void re::RealityArchiveEntryTable::~RealityArchiveEntryTable(re::RealityArchiveEntryTable *this)
{
  *this = &unk_1F5CBD040;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CBD040;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::anonymous namespace::ArchiveEntryData::~ArchiveEntryData(CFTypeRef *this)
{
  *this = &unk_1F5CBD0D0;
  CFRelease(this[3]);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  *this = &unk_1F5CBD0D0;
  CFRelease(this[3]);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphEmitterAsset::~RenderGraphEmitterAsset(re::RenderGraphEmitterAsset *this)
{
  *this = &unk_1F5CBD118;
  v2 = *(this + 2);
  if (v2)
  {
    v3 = re::globalAllocators(this)[2];
    (**v2)(v2);
    (*(*v3 + 40))(v3, v2);
    *(this + 2) = 0;
  }
}

{
  re::RenderGraphEmitterAsset::~RenderGraphEmitterAsset(this);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::RenderGraphEmitterAsset::assetType(re::RenderGraphEmitterAsset *this)
{
  {
    re::RenderGraphEmitterAsset::assetType(void)::type = "RenderGraphEmitter";
    qword_1EE1C67C8 = 0;
    re::AssetType::generateCompiledExtension(&re::RenderGraphEmitterAsset::assetType(void)::type);
  }

  return &re::RenderGraphEmitterAsset::assetType(void)::type;
}

uint64_t re::RenderGraphEmitterAssetLoader::introspectionType(re::RenderGraphEmitterAssetLoader *this)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::RenderGraphEmitterAsset>(BOOL)::info = re::internal::getOrCreateInfo("RenderGraphEmitterAsset", re::allocInfo_RenderGraphEmitterAsset, re::initInfo_RenderGraphEmitterAsset, &re::internal::introspectionInfoStorage<re::RenderGraphEmitterAsset>, 0);
      v1 = &unk_1EE187000;
    }
  }

  return v1[187];
}

re *re::internal::destroyPersistent<re::RenderGraphEmitterAsset>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::RenderGraphEmitterAssetLoader::findDependencies(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
}

_anonymous_namespace_ *re::ServiceLocator::service<re::AssetService>(re::StringID *a1)
{
  result = re::ServiceLocator::serviceOrNull<re::AssetService>(a1);
  if (!result)
  {
    v2 = re::introspect<re::AssetService>(0);
    re::StringID::invalid(v7);
    re::internal::missingServiceErrorMessage(&v8, v2, v7);
    re::DynamicString::~DynamicString(&v8);
    re::StringID::~StringID(v7);
    v3 = re::introspect<re::AssetService>(0);
    re::StringID::invalid(v7);
    re::internal::missingServiceErrorMessage(&v8, v3, v7);
    if (v9)
    {
      v5 = *&v10[7];
    }

    else
    {
      v5 = v10;
    }

    re::internal::assertLog(5, v4, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v5);
    re::DynamicString::~DynamicString(&v8);
    re::StringID::~StringID(v7);
    result = _os_crash("assertion failure: (service) %s", v6);
    __break(1u);
  }

  return result;
}

void *re::allocInfo_RenderGraphEmitterPointer(re *this)
{
  if ((atomic_load_explicit(&qword_1EE193BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193BF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193C78, "RenderGraphEmitterPointer");
    __cxa_guard_release(&qword_1EE193BF0);
  }

  return &unk_1EE193C78;
}

void re::initInfo_RenderGraphEmitterPointer(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0x32C67EAE114248ELL;
  v15[1] = "RenderGraphEmitterPointer";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE193BF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193BF8))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::RenderGraphEmitterBase *>::get(v7, v8);
    v10 = re::introspect_size_t(1, v9);
    v11 = (*(*v7 + 32))(v7, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "emitter";
    *(v11 + 16) = &qword_1EE193C38;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x800000001;
    *(v11 + 40) = 2;
    *(v11 + 48) = v10;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE193C28 = v11;
    v12 = re::introspectionAllocator();
    v13 = (*(*v12 + 32))(v12, 8, 4);
    *v13 = 0x100000004;
    qword_1EE193C30 = v13;
    __cxa_guard_release(&qword_1EE193BF8);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE193C28;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphEmitterPointer>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphEmitterPointer>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphEmitterPointer>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphEmitterPointer>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

void re::IntrospectionInfo<re::RenderGraphEmitterBase *>::get(uint64_t a1, BOOL a2)
{
  if ((atomic_load_explicit(&qword_1EE193C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193C20))
  {
    re::IntrospectionPointer::IntrospectionPointer(&qword_1EE193C38);
    __cxa_guard_release(&qword_1EE193C20);
  }

  if ((_MergedGlobals_58 & 1) == 0)
  {
    _MergedGlobals_58 = 1;
    v2 = re::introspect_RenderGraphEmitterBase(1);
    ArcSharedObject::ArcSharedObject(&qword_1EE193C38, 0);
    qword_1EE193C48 = 0x800000001;
    dword_1EE193C50 = 8;
    word_1EE193C54 = 0;
    *&xmmword_1EE193C58 = 0;
    *(&xmmword_1EE193C58 + 1) = 0xFFFFFFFFLL;
    qword_1EE193C38 = &unk_1F5CBD2C0;
    qword_1EE193C68 = v2;
    unk_1EE193C70 = 0;
    re::IntrospectionRegistry::add(v3, v4);
    re::getPrettyTypeName(&v9, &qword_1EE193C38);
    if (BYTE8(v9))
    {
      v5 = v10;
    }

    else
    {
      v5 = &v9 + 9;
    }

    if (v9 && (BYTE8(v9) & 1) != 0)
    {
      (*(*v9 + 40))();
    }

    if (v11 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
    {
      v7 = v9;
    }

    else
    {
      v9 = *(v2 + 32);
      v7 = v8;
    }

    xmmword_1EE193C58 = v7;
    if (v11)
    {
      if (v11)
      {
      }
    }
  }
}

void *re::allocInfo_RenderGraphEmitterAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE193C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193C08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193D08, "RenderGraphEmitterAsset");
    __cxa_guard_release(&qword_1EE193C08);
  }

  return &unk_1EE193D08;
}

void re::initInfo_RenderGraphEmitterAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0xA52A22BD1BA272F4;
  v15[1] = "RenderGraphEmitterAsset";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE193C18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193C18))
  {
    v7 = re::introspectionAllocator();
    v8 = v7;
    v9 = qword_1EE193C00;
    if (!qword_1EE193C00)
    {
      v9 = re::allocInfo_RenderGraphEmitterPointer(v7);
      qword_1EE193C00 = v9;
      re::initInfo_RenderGraphEmitterPointer(v9, v10, v11, v12);
    }

    v13 = (*(*v8 + 32))(v8, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "data";
    *(v13 + 16) = v9;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x800000001;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE193C10 = v13;
    __cxa_guard_release(&qword_1EE193C18);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE193C10;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphEmitterAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphEmitterAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphEmitterAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphEmitterAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

void *re::internal::defaultConstructV2<re::RenderGraphEmitterAsset>(void *result)
{
  *result = &unk_1F5CBD118;
  result[2] = 0;
  return result;
}

uint64_t re::introspect<re::AssetService>(unsigned int a1)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::AssetService>(BOOL)::info = re::introspect_AssetService(a1, v4, v5, v6, v7, v8);
      v1 = &unk_1EE187000;
    }
  }

  return v1[241];
}

re::IntrospectionPointer *re::IntrospectionPointer::IntrospectionPointer(re::IntrospectionPointer *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CBD2C0;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  return this;
}

void re::IntrospectionPointer::~IntrospectionPointer(re::IntrospectionPointer *this)
{
  *this = &unk_1F5CBD2C0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CBD2C0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::IntrospectionPointer::childInfo(re::IntrospectionPointer *this, uint64_t a2)
{
  if (!a2)
  {
    return *(this + 6);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "index == 0", "childInfo", 976, v2, v3);
  result = _os_crash("assertion failure: (index == 0) Index out of range.");
  __break(1u);
  return result;
}

void *re::allocInfo_BuiltinTextureLoadDescriptorParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_59, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_59))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE193DC8, "BuiltinTextureLoadDescriptorParameters");
    __cxa_guard_release(&_MergedGlobals_59);
  }

  return &unk_1EE193DC8;
}

void re::initInfo_BuiltinTextureLoadDescriptorParameters(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v12[0] = 0xAFF0BF94697C90EELL;
  v12[1] = "BuiltinTextureLoadDescriptorParameters";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE193DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193DA8))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE193DA0 = v10;
    __cxa_guard_release(&qword_1EE193DA8);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE193DA0;
  *(this + 9) = re::internal::defaultConstruct<re::BuiltinTextureLoadDescriptorParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BuiltinTextureLoadDescriptorParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::BuiltinTextureLoadDescriptorParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::BuiltinTextureLoadDescriptorParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v11 = v13;
}

void *re::internal::defaultConstruct<re::BuiltinTextureLoadDescriptorParameters>(_anonymous_namespace_ *a1, uint64_t a2, re::DynamicString *a3)
{
  *a3 = 0u;
  *(a3 + 1) = 0u;

  return re::DynamicString::setCapacity(a3, 0);
}

void *re::internal::defaultConstructV2<re::BuiltinTextureLoadDescriptorParameters>(_anonymous_namespace_ *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;

  return re::DynamicString::setCapacity(a1, 0);
}

_anonymous_namespace_ *re::BuiltinTextureAssetProvider::BuiltinTextureAssetProvider(_anonymous_namespace_ *a1, uint64_t a2, re::StringID *a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CBD318;
  if ((atomic_load_explicit(&qword_1EE193DC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE193DC0))
  {
    qword_1EE193DB8 = re::internal::getOrCreateInfo("BuiltinTextureLoadDescriptorParameters", re::allocInfo_BuiltinTextureLoadDescriptorParameters, re::initInfo_BuiltinTextureLoadDescriptorParameters, &unk_1EE193DB0, 0);
    __cxa_guard_release(&qword_1EE193DC0);
  }

  re::BuiltinTextureAssetProvider::s_loadDescriptorParametersIntrospect = qword_1EE193DB8;
  *(a1 + 3) = a2;
  *(a1 + 4) = re::ServiceLocator::serviceOrNull<re::RenderManager>(a3);
  return a1;
}

void re::BuiltinTextureAssetProvider::~BuiltinTextureAssetProvider(re::BuiltinTextureAssetProvider *this)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::BuiltinTextureAssetProvider::makeDescriptor@<X0>(uint64_t *__return_ptr a1@<X8>, re::BuiltinTextureAssetProvider *this@<X0>)
{
  re::BuiltinTextureAssetProvider::makeDescriptor(&v6, a1);
  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 40))();
    }
  }

  return result;
}

uint64_t *re::BuiltinTextureAssetProvider::makeDescriptor@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v4 = re::DynamicString::setCapacity(a2, 0);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 56) = 0;
  *(a2 + 48) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0;
  re::DynamicString::setCapacity((a2 + 112), 0);
  v13 = "BuiltinTexture";
  v14 = 14;
  v5 = re::DynamicString::operator=(a2, &v13);
  v6 = *re::TextureAsset::assetType(v5);
  v7 = strlen(v6);
  v13 = v6;
  v14 = v7;
  v8 = re::DynamicString::operator=((a2 + 112), &v13);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  re::DynamicString::setCapacity(&v13, 0);
  re::DynamicString::operator=(&v13, a1);
  re::DynamicString::DynamicString(v12, &v13);
  re::AssetLoadDescriptor::setIntrospectableData(a2, re::BuiltinTextureAssetProvider::s_loadDescriptorParametersIntrospect, v12, 0);
  if (*&v12[0])
  {
    if (BYTE8(v12[0]))
    {
      (*(**&v12[0] + 40))();
    }

    memset(v12, 0, sizeof(v12));
  }

  result = v13;
  if (v13)
  {
    if (v14)
    {
      return (*(*v13 + 40))(v13, v15, v9, v10);
    }
  }

  return result;
}

re::DynamicString *re::BuiltinTextureAssetProvider::load@<X0>(re::BuiltinTextureAssetProvider *this@<X0>, const re::AssetLoadDescriptor *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 8))
  {
    v6 = *(a2 + 2);
  }

  else
  {
    v6 = a2 + 9;
  }

  v7 = strcmp(v6, "BuiltinTexture");
  v8 = v7;
  v9 = *re::TextureAsset::assetType(v7);
  if (*(a2 + 15))
  {
    v10 = *(a2 + 16);
  }

  else
  {
    v10 = a2 + 121;
  }

  v11 = strcmp(v10, v9);
  if (v8 | v11)
  {
    v13 = v45;
    v14 = v46;
    v15 = v47;
    *a3 = 0;
    *(a3 + 8) = v13;
    *(a3 + 24) = v14;
    *(a3 + 32) = v15;
    return result;
  }

  v56 = 0uLL;
  v57 = 0;
  re::DynamicString::setCapacity(&v55, 0);
  v16 = re::AssetLoadDescriptor::getIntrospectableData<re::BuiltinTextureLoadDescriptorParameters>(a2, &v55);
  if (v16)
  {
    v53 = 0;
    v54 = 0;
    v17 = *(this + 4);
    if (!v17)
    {
      goto LABEL_35;
    }

    v18 = *(v17 + 56);
    if (v18)
    {
      if (v56)
      {
        v20 = *(&v56 + 1);
        v16 = strncmp(*(&v56 + 1), "fallback.", 9uLL);
        if (v16)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (*(&v56 + 1) != 0x6B6361626C6C6166 || BYTE9(v56) != 46)
        {
          goto LABEL_31;
        }

        v20 = &v56 + 1;
      }

      v24 = *(v18 + 240);
      v25 = v20[9];
      if (v20[9])
      {
        v26 = v20[10];
        if (v26)
        {
          v27 = (v20 + 11);
          do
          {
            v25 = 31 * v25 + v26;
            v28 = *v27++;
            v26 = v28;
          }

          while (v28);
        }

        v25 &= ~0x8000000000000000;
      }

      *&v45 = v25;
      v16 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v24 + 1, &v45);
      if (v16 != -1)
      {
        (*(*v24 + 24))(&v40, v24, *(v24[2] + 16 * v16 + 9));
        *&v45 = v40;
        DWORD2(v45) = 0;
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(&v53, &v45);
        if (DWORD2(v45) != -1)
        {
          (off_1F5CBD3A8[DWORD2(v45)])(&v58, &v45);
        }

        DWORD2(v45) = -1;
        v16 = v40;
        if (v40)
        {
        }
      }
    }

LABEL_31:
    if (v54)
    {
      if (v54 != 1)
      {
        v38 = std::__throw_bad_variant_access[abi:nn200100]();
        return re::AssetLoadDescriptor::getIntrospectableData<re::BuiltinTextureLoadDescriptorParameters>(v38, v39);
      }

      if (!*(v53 + 48))
      {
        goto LABEL_48;
      }

      v29 = (v53 + 24);
LABEL_36:
      if (*v29)
      {
        LOWORD(v45) = 0;
        v46 = 0;
        v47 = 0;
        *(&v45 + 1) = 0;
        v49 = 0u;
        memset(v50, 0, 28);
        v51 = 0;
        v52 = 0;
        TextureAsset = re::TextureAsset::makeTextureAsset(&v53, &v45, 6, 0);
        if (*&v50[0])
        {
          if (v51)
          {
            (*(**&v50[0] + 40))();
          }

          v51 = 0;
          memset(v50, 0, 24);
          ++DWORD2(v50[1]);
        }

        if (v49)
        {
        }

        *(&v45 + 1) = 0;
        v46 = 0;
        v47 = 0;
        re::DynamicString::setCapacity(&v45, 0);
        BYTE8(v49) = 0;
        LOBYTE(v50[0]) = 0;
        v48 = TextureAsset;
        *&v49 = 0;
        re::DynamicString::operator=(&v45, (a2 + 112));
        re::types::Ok<re::AssetLoadResult>::Ok(&v40, &v45);
        *a3 = 1;
        *(a3 + 8) = v40;
        *(a3 + 32) = v42;
        *(a3 + 16) = v41;
        v32 = v44;
        *(a3 + 40) = v43;
        *(a3 + 56) = v32;
        if (v49)
        {

          *&v49 = 0;
        }

        v33 = v45;
        if (!v45 || (BYTE8(v45) & 1) == 0)
        {
          goto LABEL_52;
        }

        v34 = v46;
        goto LABEL_51;
      }

LABEL_48:
      re::DynamicString::operator+(&v45, &v40, &v55);
      v35 = v45;
      v45 = 0uLL;
      v36 = v46;
      v37 = v47;
      v46 = 0;
      v47 = 0;
      *a3 = 0;
      *(a3 + 8) = v35;
      *(a3 + 24) = v36;
      *(a3 + 32) = v37;
      v33 = v40;
      if (!v40 || (v41 & 1) == 0)
      {
LABEL_52:
        if (v54 != -1)
        {
          (off_1F5CBD3A8[v54])(&v45, &v53);
        }

        goto LABEL_54;
      }

      v34 = *(&v41 + 1);
LABEL_51:
      (*(*v33 + 40))(v33, v34);
      goto LABEL_52;
    }

LABEL_35:
    v29 = &v53;
    goto LABEL_36;
  }

  v21 = v45;
  v22 = v46;
  v23 = v47;
  *a3 = 0;
  *(a3 + 8) = v21;
  *(a3 + 24) = v22;
  *(a3 + 32) = v23;
LABEL_54:
  result = v55;
  if (v55)
  {
    if (v56)
    {
      return (*(*v55 + 5))();
    }
  }

  return result;
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<re::BuiltinTextureLoadDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString ***a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE193DC0, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE193DC0);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE193DB8 = re::internal::getOrCreateInfo("BuiltinTextureLoadDescriptorParameters", re::allocInfo_BuiltinTextureLoadDescriptorParameters, re::initInfo_BuiltinTextureLoadDescriptorParameters, &unk_1EE193DB0, 0);
      __cxa_guard_release(&qword_1EE193DC0);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE193DB8;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

__n128 re::BuiltinTextureAssetProvider::resolveChild@<Q0>(re::BuiltinTextureAssetProvider *this@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

uint64_t *re::BuiltinTextureAssetProvider::getDescription(re::BuiltinTextureAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  re::DynamicString::setCapacity(&v6, 0);
  if (re::AssetLoadDescriptor::getIntrospectableData<re::BuiltinTextureLoadDescriptorParameters>(a2, &v6))
  {
    re::DynamicString::operator=(a3, &v6);
  }

  else
  {
    v10[0] = "mangled";
    v10[1] = 7;
    re::DynamicString::operator=(a3, v10);
  }

  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 5))();
    }
  }

  return result;
}

void *re::BuiltinTextureAssetProvider::buildFallbackTextureDescriptors@<X0>(void *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  v4 = this[4];
  if (v4)
  {
    v5 = *(v4 + 56);
    if (v5)
    {
      v6 = v5[30];
      v7 = v5[32];
      v8 = v5[33];
      v9 = (v6 + 8);
      v40[0] = v6 + 8;
      v10 = *(v6 + 24);
      if (v10 >= 0x10)
      {
        v11 = 0;
        v12 = *v9;
        v13 = v10 >> 4;
        v14 = -1.79399301e-307;
        v15 = 4.74803907e-38;
        while (1)
        {
          v16 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v12), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v40[1] = v16 ^ 0xFFFFLL;
          if (v16 != 0xFFFFLL)
          {
            break;
          }

          v11 -= 16;
          ++v12;
          if (!--v13)
          {
            return this;
          }
        }

        v17 = __clz(__rbit64(v16 ^ 0xFFFFLL));
        v18 = v17 - v11;
        v41 = v17 - v11;
        if (v17 + 1 != v11)
        {
          while (1)
          {
            v19 = *(*(v40[0] + 8) + 16 * v18 + 8) >> 8;
            if (v7 <= v19)
            {
              break;
            }

            v20 = v8 + 32 * v19;
            if (*(v20 + 8))
            {
              v21 = *(v20 + 16);
            }

            else
            {
              v21 = v20 + 9;
            }

            re::DynamicString::format(&v25, "fallback.%s", a2, v21);
            re::BuiltinTextureAssetProvider::makeDescriptor(&v25, v27);
            v22.n128_f64[0] = re::DynamicArray<re::AssetLoadDescriptor>::add(a3, v27);
            if (v38)
            {
              if (BYTE8(v38))
              {
                (*(*v38 + 40))(v22.n128_f64[0]);
              }

              v22 = 0uLL;
              v38 = 0u;
              v39 = 0u;
            }

            if (v33)
            {
              if (v37)
              {
                (*(*v33 + 40))(v22);
              }

              v37 = 0;
              v34 = 0;
              v35 = 0;
              v33 = 0;
              ++v36;
            }

            if (v28)
            {
              if (v32)
              {
                (*(*v28 + 40))(v22);
              }

              v32 = 0;
              v29 = 0;
              v30 = 0;
              v28 = 0;
              ++v31;
            }

            if (*&v27[0])
            {
              if (BYTE8(v27[0]))
              {
                (*(**&v27[0] + 40))(v22);
              }

              v22 = 0uLL;
              memset(v27, 0, sizeof(v27));
            }

            if (v25)
            {
              if (v26)
              {
                (*(*v25 + 40))(v22);
              }
            }

            this = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v40);
            v18 = v41;
            if (v41 == -1)
            {
              return this;
            }
          }

          re::internal::assertLog(6, a2, v14, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(*(v40[0] + 8) + 16 * v18 + 8) >> 8, v7);
          this = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v23, v24);
          __break(1u);
        }
      }
    }
  }

  return this;
}

uint64_t (***re::BuiltinTextureAssetProvider::getAssetPathForRelease@<X0>(_anonymous_namespace_ *a1@<X0>, re::AssetLoadDescriptor *a2@<X1>, unsigned int a3@<W4>, uint64_t a4@<X8>))(void)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  re::DynamicString::setCapacity(&v19, 0);
  if (re::AssetLoadDescriptor::getIntrospectableData<re::BuiltinTextureLoadDescriptorParameters>(a2, &v19))
  {
    if (a3 < 0xA)
    {
      if (v20)
      {
        v14 = v21;
      }

      else
      {
        v14 = &v20 + 1;
      }

      re::DynamicString::format(&v16, "memory:%s.compiledtexture", v7, v14);
    }

    else
    {
      if (*(a2 + 1))
      {
        v8 = *(a2 + 2);
      }

      else
      {
        v8 = a2 + 9;
      }

      if (v20)
      {
        v9 = v21;
      }

      else
      {
        v9 = &v20 + 1;
      }

      re::DynamicString::format(&v16, "%s:%s.compiledtexture", v7, v8, v9);
    }

    v11 = v16;
    v12 = v17;
    v13 = v18;
    *a4 = 1;
  }

  else
  {
    if (*(a2 + 1))
    {
      v10 = *(a2 + 2);
    }

    else
    {
      v10 = a2 + 9;
    }

    re::DynamicString::format(&v16, "Failed to deserialize parameters for %s", v7, v10);
    v11 = v16;
    v12 = v17;
    v13 = v18;
    *a4 = 0;
  }

  *(a4 + 8) = v11;
  *(a4 + 24) = v12;
  *(a4 + 32) = v13;
  result = v19;
  if (v19)
  {
    if (v20)
    {
      return (*v19)[5]();
    }
  }

  return result;
}

__n128 re::BuiltinTextureAssetProvider::makeDescriptorFromAssetPath@<Q0>(const re::AssetPath *a1@<X1>, uint64_t a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a1 + 17;
  if (*(a1 + 2))
  {
    v5 = *(a1 + 3);
  }

  else
  {
    v5 = a1 + 17;
  }

  v6 = strcmp(v5, "BuiltinTexture");
  if (v6)
  {
    v7 = *re::assetsLogObjects(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 2))
      {
        v13 = *(a1 + 3);
      }

      else
      {
        v13 = v4;
      }

      *v14 = 136315394;
      *&v14[4] = v13;
      *&v14[12] = 2080;
      *&v14[14] = "BuiltinTexture";
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Unexpected scheme: %s, expected: %s", v14, 0x16u);
    }

    *a2 = 0;
  }

  else
  {
    if (*(a1 + 6))
    {
      v9 = *(a1 + 7);
    }

    else
    {
      v9 = (a1 + 49);
    }

    re::BuiltinTextureAssetProvider::makeDescriptor(v14, v9);
    *a2 = 1;
    *(a2 + 8) = *v14;
    *(a2 + 16) = *&v14[8];
    v10 = v16;
    *(a2 + 32) = v15;
    *(a2 + 40) = v10;
    *(a2 + 48) = v17;
    *(a2 + 64) = 1;
    v11 = v19;
    *(a2 + 72) = v18;
    *(a2 + 88) = v11;
    *(a2 + 104) = 1;
    result = v20;
    *(a2 + 144) = v22;
    v12 = v21;
    *(a2 + 112) = result;
    *(a2 + 128) = v12;
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(a2 + 8);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_1F5CBD3A8[v3])(&v6, result, a2);
    *(v2 + 8) = -1;
    return result;
  }

  v5 = result;
  return (off_1F5CBD3B8[v4])(&v5, result, a2);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSD_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSC_SG_EEEEEEDcSK_DpT0_(uint64_t a1, id *a2)
{
  if (*a2)
  {

    *a2 = 0;
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__dtorINS0_8__traitsIJN2NS9SharedPtrIN3MTL7TextureEEEN2re9SharedPtrINSD_10CPUTextureEEEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSC_SG_EEEEEEDcSK_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {

    *a2 = 0;
  }
}

void **std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__assign_alt[abi:nn200100]<0ul,NS::SharedPtr<MTL::Texture>,NS::SharedPtr<MTL::Texture>>(void **result, void **a2, void **a3)
{
  v4 = result;
  v5 = *(result + 2);
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    result = (off_1F5CBD3A8[v5])(&v6, result);
LABEL_7:
    *v4 = *a3;
    *a3 = 0;
    *(v4 + 8) = 0;
    return result;
  }

  return NS::SharedPtr<MTL::Texture>::operator=(a2, a3);
}

void **NS::SharedPtr<MTL::Texture>::operator=(void **a1, void **a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == *a2)
  {
  }

  else
  {
    if (v4)
    {

      v5 = *a2;
    }

    *a1 = v5;
  }

  *a2 = 0;
  return a1;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Texture>,re::SharedPtr<re::CPUTexture>>>::__assign_alt[abi:nn200100]<1ul,re::SharedPtr<re::CPUTexture>,re::SharedPtr<re::CPUTexture>>(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = result;
  v5 = *(result + 8);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      v6 = *a2;
      *a2 = *a3;
      *a3 = v6;
      return result;
    }

    result = (off_1F5CBD3A8[v5])(&v7, result);
  }

  *v4 = *a3;
  *a3 = 0;
  *(v4 + 8) = 1;
  return result;
}

uint64_t re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(void *a1, void *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  v6 = v5 % v3;
  v7 = vdupq_n_s8(v5 & 0x7F);
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = v5 % v3;
  while (1)
  {
    v10 = *(*a1 + 16 * v9);
    v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v7, v10), xmmword_1E304FAD0)))), 0x3830282018100800);
    v12 = __clz(__rbit64(v11));
    if (v12 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v10, v8), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v9 + 1 == v3)
    {
      v9 = 0;
    }

    else
    {
      ++v9;
    }

    v14 = -1;
    if (v9 == v6)
    {
      return v14;
    }
  }

  v13 = 16 * v9;
  while (1)
  {
    v14 = v12 + v13;
    if (*a2 == *(a1[1] + 16 * (v12 + v13)))
    {
      return v14;
    }

    if (v12 <= 0x3E)
    {
      v12 = __clz(__rbit64((-2 << v12) & v11));
      if (v12 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}