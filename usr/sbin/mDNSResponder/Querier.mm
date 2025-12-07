@interface Querier
@end

@implementation Querier

void __Querier_GetDNSServiceManager_block_invoke(uint64_t a1, int a2)
{
  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  switch(a2)
  {
    case 3:
      v5 = *(a1 + 32);
      if (_mdns_dns_service_queue_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
      }

      block = _NSConcreteStackBlock;
      v7 = 0x40000000;
      v8 = __mdns_dns_service_manager_apply_pending_updates_block_invoke;
      v9 = &__block_descriptor_tmp_41;
      v10 = v5;
      dispatch_sync(_mdns_dns_service_queue_s_queue, &block);
      mDNS_Lock_(mDNSStorage, "Querier_GetDNSServiceManager_block_invoke", 188);
      Querier_ProcessDNSServiceChanges(0);
      _Querier_LogDNSServices(*(a1 + 32));
      mDNS_Unlock_(mDNSStorage, "Querier_GetDNSServiceManager_block_invoke", 191);
      break;
    case 2:
      os_release(*(a1 + 32));
      break;
    case 1:
      v4 = *(a1 + 32);
      if (_mdns_dns_service_queue_s_once != -1)
      {
        dispatch_once(&_mdns_dns_service_queue_s_once, &__block_literal_global_249);
      }

      block = _NSConcreteStackBlock;
      v7 = 0x40000000;
      v8 = __mdns_dns_service_manager_invalidate_block_invoke;
      v9 = &__block_descriptor_tmp_19_898;
      v10 = v4;
      dispatch_sync(_mdns_dns_service_queue_s_queue, &block);
      if (Querier_GetDNSServiceManager_sDNSServiceManager && Querier_GetDNSServiceManager_sDNSServiceManager == *(a1 + 32))
      {
        os_release(Querier_GetDNSServiceManager_sDNSServiceManager);
        Querier_GetDNSServiceManager_sDNSServiceManager = 0;
      }

      break;
  }

  KQueueUnlock("DNS Service Manager event handler");
}

uint64_t ___Querier_LogDNSServices_block_invoke(uint64_t a1, uint64_t a2)
{
  ++*(*(*(a1 + 32) + 8) + 24);
  v4 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v5 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:
      v7 = *(*(*(a1 + 32) + 8) + 24);
      v8 = *(a1 + 40);
      v10[0] = 67109634;
      v10[1] = v7;
      v11 = 1024;
      v12 = v8;
      v13 = 2112;
      v14 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DNS service (%u/%u) -- %@", v10, 0x18u);
    }
  }

  else
  {
    v4 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }
  }

  return 1;
}

void ___Querier_GetMyUUID_block_invoke(id a1)
{
  if (_Querier_GetMyPID_sOnce != -1)
  {
    dispatch_once(&_Querier_GetMyPID_sOnce, &__block_literal_global_53);
  }

  v2 = _Querier_GetMyPID_sPID;

  mdns_system_pid_to_uuid(v2, _Querier_GetMyUUID_sUUID);
}

void ___Querier_EnsureNEDNSProxyStateWatchHasStarted_block_invoke(id a1)
{
  if (_Querier_InternalQueue_sOnce != -1)
  {
    dispatch_once(&_Querier_InternalQueue_sOnce, &__block_literal_global_44);
  }

  v1 = _Querier_InternalQueue_sQueue;
  v2 = &__block_literal_global_40;
  v3 = objc_autoreleasePoolPush();
  if (objc_opt_class())
  {
    v4 = _mdns_ne_dns_proxy_state_watch_queue();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __mdns_ne_dns_proxy_state_watch_start_block_invoke;
    v5[3] = &unk_10014FE88;
    v5[4] = v1;
    v5[5] = &__block_literal_global_40;
    dispatch_async(v4, v5);
  }

  objc_autoreleasePoolPop(v3);
}

void ___Querier_StartNEDNSProxyStateWatch_block_invoke(id a1, BOOL a2)
{
  v2 = a2;
  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  if (((gNEDNSProxyIsRunning == 0) ^ v2))
  {
    goto LABEL_23;
  }

  gNEDNSProxyIsRunning = v2;
  v3 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v4 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v11 = 67109120;
    v12 = v2;
    goto LABEL_11;
  }

  v3 = mDNSLogCategory_Default_redacted;
  if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 67109120;
    v12 = v2;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "NEDNSProxy state update -- running: %{mdns:yesno}d", &v11, 8u);
  }

LABEL_12:
  mDNS_Lock_(mDNSStorage, "_Querier_StartNEDNSProxyStateWatch_block_invoke", 104);
  Querier_ProcessDNSServiceChanges(0);
  for (i = 0; i != 499; ++i)
  {
    for (j = mDNSStorage[i + 34]; j; j = *j)
    {
      for (k = j[2]; k; k = *k)
      {
        v9 = k[7];
        if (v9)
        {
          v10 = *(v9 + 24);
          if (v10)
          {
            if (*(v10 + 281) == 1)
            {
              mDNS_PurgeCacheResourceRecord(mDNSStorage, k);
            }
          }
        }
      }
    }
  }

  mDNS_Unlock_(mDNSStorage, "_Querier_StartNEDNSProxyStateWatch_block_invoke", 131);
LABEL_23:
  KQueueUnlock("NetworkExtension DNS proxy state update");
}

BOOL __Querier_HandleUnicastQuestion_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a2 + 16) == &_mdns_querier_kind && (v2 = *(*(a2 + 96) + 70), v3 = *(a1 + 32), v3 == ((v2 >> 2) & 1)))
  {
    return v3 == ((v2 >> 1) & 1);
  }

  else
  {
    return 0;
  }
}

BOOL ___Querier_PopMatchedOrphanedClient_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (*(a2 + 32) == *(v3 + 80))
  {
    if ((*(*(a2 + 16) + 72))(a2, v3 + 376, *(v3 + 342), *(v3 + 344)))
    {
      v5 = a1[4];
      if (!v5 || (*(v5 + 16))(v5, a2))
      {
        *(*(a1[5] + 8) + 24) = a2;
      }
    }
  }

  return *(*(a1[5] + 8) + 24) == 0;
}

void __Querier_HandleUnicastQuestion_block_invoke_15(uint64_t a1)
{
  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  v2 = *(a1 + 32);
  v3 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v4 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  if (*(v2 + 255) == 1)
  {
    if (v5)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v3 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }
    }

    v6 = *(v2 + 232);
    v44 = 67109379;
    v45 = v6;
    v46 = 2117;
    v47 = v2;
    v7 = "[Q%u] Handling concluded querier: %{sensitive}@";
  }

  else
  {
    if (v5)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v3 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }
    }

    v8 = *(v2 + 232);
    v44 = 67109378;
    v45 = v8;
    v46 = 2112;
    v47 = v2;
    v7 = "[Q%u] Handling concluded querier: %@";
  }

  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v7, &v44, 0x12u);
LABEL_19:
  v9 = *(*(v2 + 32) + 276);
  v10 = *(*(*(v2 + 72) + 16) + 144);
  if (v10 >= 5)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0x203010100uLL >> (8 * v10);
  }

  if (atomic_load((v2 + 208)))
  {
    if (*(*(v2 + 96) + 40) && v11 != 0)
    {
      v14 = 3;
      if (v11 == 1)
      {
        v14 = 1;
      }

      v15 = 2 * (v11 != 1);
      if ((v9 & 8) != 0)
      {
        v15 = v14;
      }

      v16 = &s_dns_analytics + 104 * v15;
      if (v16)
      {
        *(v16 + 2) += *(*(v2 + 96) + 40);
      }
    }
  }

  v17 = *(v2 + 248);
  if (v17 != 1)
  {
    v26 = *(v2 + 32);
    goto LABEL_64;
  }

  if ((*(v2 + 253) & 1) == 0)
  {
    v18 = *(v2 + 136);
    if (v18)
    {
      v19 = *(v18 + 40);
      if (v19 && v11 != 0)
      {
        v4 = v11 == 1;
        v21 = v11 != 1;
        v22 = 3;
        if (v4)
        {
          v22 = 1;
        }

        v23 = 2 * v21;
        if ((v9 & 8) != 0)
        {
          v24 = v22;
        }

        else
        {
          v24 = v23;
        }

        v25 = &s_dns_analytics + 104 * v24;
        if (v25)
        {
          *(v25 + 3) += v19;
        }
      }
    }
  }

  v26 = *(v2 + 32);
  if ((*(v26 + 276) & 1) == 0)
  {
    v27 = *(v2 + 136);
    if (v27)
    {
      v28 = *(v27 + 40);
      v29 = v28;
      if (v28 >= 0x22F9)
      {
        v30 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
LABEL_58:
            v31 = *(v2 + 232);
            v44 = 67109632;
            v45 = v31;
            v46 = 2048;
            v47 = v29;
            v48 = 2048;
            v29 = 8952;
            v49 = 8952;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[Q%u] Large %lu-byte response will be truncated to fit mDNSCore's %lu-byte message buffer", &v44, 0x1Cu);
            goto LABEL_60;
          }
        }

        else
        {
          v30 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_58;
          }
        }

        v29 = &loc_1000022F8;
      }
    }

    else
    {
      v29 = 0;
    }

LABEL_60:
    __memcpy_chk();
    if ((*(v26 + 276) & 0x2000) != 0)
    {
      v32 = *(v26 + 256);
    }

    else
    {
      v32 = 0;
    }

    mDNSCoreReceiveForQuerier(&unk_100172040 + v29, v2, v26, v32);
  }

LABEL_64:
  Mutable = _Querier_GetOrphanedQuerierSet_sOrphanedQuerierSet;
  if (_Querier_GetOrphanedQuerierSet_sOrphanedQuerierSet || (Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &gMDNSObjectSetCallbacks), (_Querier_GetOrphanedQuerierSet_sOrphanedQuerierSet = Mutable) != 0))
  {
    CFSetRemoveValue(Mutable, v2);
  }

  LOBYTE(v44) = 0;
  DNSQuestion = Querier_GetDNSQuestion(v2, &v44);
  if (DNSQuestion)
  {
    v35 = DNSQuestion;
    if (*(*(*(v2 + 72) + 16) + 144))
    {
      v36 = atomic_load((v2 + 208));
      *(DNSQuestion + 260) += v36;
    }

    v38 = (DNSQuestion + 96);
    v37 = *(DNSQuestion + 96);
    if (v37)
    {
      os_release(v37);
      *v38 = 0;
    }

    v39 = *(v35 + 649);
    *(v35 + 649) = 0;
    if (!(*(v35 + 354) | v44))
    {
      if (v17 > 4)
      {
        if (v17 == 6)
        {
          if ((*(v26 + 276) & 0x800) == 0)
          {
            DNSServiceManager = Querier_GetDNSServiceManager();
            if (DNSServiceManager)
            {
              mdns_dns_service_manager_apply_pending_connection_problem_updates(DNSServiceManager);
            }
          }

          mDNS_Lock_(mDNSStorage, "_Querier_HandleQuerierResponse", 1003);
          mdns_client_replace((v35 + 96), v2);
          while (1)
          {
            mDNS_StopQuery_internal(mDNSStorage, v35);
            *(v35 + 650) = 1;
            mDNS_StartQuery_internal(mDNSStorage, v35);
            v42 = Querier_GetDNSQuestion(v2, &v44);
            v35 = v42;
            if (v42)
            {
              if (v44)
              {
                break;
              }
            }

            if (!v42)
            {
              goto LABEL_92;
            }
          }

          v43 = *(v42 + 96);
          if (v43)
          {
            os_release(v43);
            *(v35 + 96) = 0;
          }

LABEL_92:
          v40 = 1024;
        }

        else
        {
          if (v17 != 5)
          {
            goto LABEL_94;
          }

          mDNS_Lock_(mDNSStorage, "_Querier_HandleQuerierResponse", 982);
          *(v35 + 208) = dword_10016D258;
          *(v35 + 212) = 5000;
          SetNextQueryTime(mDNSStorage, v35);
          v40 = 986;
        }
      }

      else
      {
        if (v17 == 1)
        {
          if (!v39)
          {
            goto LABEL_94;
          }
        }

        else if (v17 != 2)
        {
          goto LABEL_94;
        }

        mDNS_Lock_(mDNSStorage, "_Querier_HandleQuerierResponse", 1035);
        Querier_HandleUnicastQuestion(v35);
        v40 = 1037;
      }

      mDNS_Unlock_(mDNSStorage, "_Querier_HandleQuerierResponse", v40);
    }
  }

LABEL_94:
  if (*(a1 + 42) == 1)
  {
    mDNSDisableSensitiveLoggingForQuestion(*(a1 + 40));
  }

  KQueueUnlock("querier result handler");
  os_release(*(a1 + 32));
}

void __Querier_HandleUnicastQuestion_block_invoke_2(uint64_t a1, int a2)
{
  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  switch(a2)
  {
    case 1:
      CFSetRemoveValue(*(a1 + 40), *(a1 + 32));
      _Querier_HandleSubscriberInvalidation(*(a1 + 32));
      v6 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_INFO))
        {
          v8 = *(*(a1 + 32) + 128);
          v10 = 134217984;
          v11 = v8;
          goto LABEL_16;
        }
      }

      else
      {
        v6 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_INFO))
        {
          v7 = *(*(a1 + 32) + 128);
          v10 = 134217984;
          v11 = v7;
LABEL_16:
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[Sub%llu] Subscriber has been invalidated", &v10, 0xCu);
        }
      }

      os_release(*(a1 + 32));
      break;
    case 3:
      if (CFSetContainsValue(*(a1 + 40), *(a1 + 32)))
      {
        CFSetRemoveValue(*(a1 + 40), *(a1 + 32));
        mdns_client_invalidate(*(a1 + 32));
        v4 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            break;
          }

          v9 = *(*(a1 + 32) + 128);
          v10 = 134217984;
          v11 = v9;
        }

        else
        {
          v4 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            break;
          }

          v5 = *(*(a1 + 32) + 128);
          v10 = 134217984;
          v11 = v5;
        }

        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Sub%llu] Orphaned subscriber removed due to timeout", &v10, 0xCu);
      }

      break;
    case 2:
      _Querier_ApplyUpdate(*(a1 + 32));
      break;
  }

  KQueueUnlock("Subscriber event handler");
}

uint64_t ___Querier_ApplyUpdate_block_invoke(uint64_t *a1, _DWORD *a2)
{
  v4 = a2[10];
  if (v4 == -2)
  {
    v5 = *((*(*(a1[6] + 16) + 88))() + 24);
    v6 = (*(*(a1[6] + 16) + 96))();
    v7 = mDNSLogCategory_uDNS;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_uDNS == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_uDNS, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1[6] + 128);
        v28 = v5;
        while (1)
        {
          if (!v28 || (v29 = *v28, v29 > 0x3F))
          {
LABEL_42:
            v11 = 257;
            goto LABEL_60;
          }

          if (!*v28)
          {
            break;
          }

          v28 += v29 + 1;
          if (v28 - v5 >= 256)
          {
            goto LABEL_42;
          }
        }

        v11 = (v28 - v5 + 1);
        goto LABEL_60;
      }
    }

    else
    {
      v7 = mDNSLogCategory_uDNS_redacted;
      if (os_log_type_enabled(mDNSLogCategory_uDNS_redacted, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1[6] + 128);
        v9 = v5;
        while (1)
        {
          if (!v9 || (v10 = *v9, v10 > 0x3F))
          {
LABEL_12:
            v11 = 257;
            goto LABEL_60;
          }

          if (!*v9)
          {
            break;
          }

          v9 += v10 + 1;
          if (v9 - v5 >= 256)
          {
            goto LABEL_12;
          }
        }

        v11 = (v9 - v5 + 1);
LABEL_60:
        *v41 = 134219011;
        *&v41[4] = v8;
        *&v41[12] = 2160;
        *&v41[14] = 1752392040;
        *&v41[22] = 1040;
        *&v41[24] = v11;
        *&v41[28] = 2101;
        *&v41[30] = v5;
        v42 = 1024;
        v43 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Sub%llu] Collectively removing record(s) -- name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, type: %{mdns:rrtype}d", v41, 0x2Cu);
      }
    }

    v38 = a1[4];
    v39 = a1[5];
    v37 = 1;
    _Querier_RemoveRecord(a2, v38, v39, 1);
    return v37;
  }

  if (v4 != -1)
  {
    v12 = gMessageBuilder;
    if (!gMessageBuilder)
    {
      v13 = _os_object_alloc();
      if (v13)
      {
        v12 = v13;
        v14 = &_mdns_message_builder_kind;
        *(v13 + 16) = &_mdns_message_builder_kind;
        do
        {
          v15 = v14[2];
          if (v15)
          {
            v15(v12);
          }

          v14 = *v14;
        }

        while (v14);
        v16 = _os_object_alloc();
        if (v16)
        {
          v17 = v16;
          v18 = &_mdns_domain_name_offset_map_kind;
          *(v16 + 16) = &_mdns_domain_name_offset_map_kind;
          do
          {
            v19 = v18[2];
            if (v19)
            {
              v19(v17);
            }

            v18 = *v18;
          }

          while (v18);
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &mdns_domain_name_offset_map_create_key_callbacks, &kCFTypeDictionaryValueCallBacks);
          v17[3] = Mutable;
          if (Mutable)
          {
            *(v12 + 32) = v17;
            gMessageBuilder = v12;
            goto LABEL_26;
          }

          os_release(v17);
        }

        *(v12 + 32) = 0;
        os_release(v12);
      }

      v37 = 0;
      gMessageBuilder = 0;
      return v37;
    }

LABEL_26:
    _mdns_message_builder_forget_questions_and_records(v12);
    *(v12 + 64) = 0;
    *(v12 + 80) = 0;
    *(v12 + 72) = 0;
    v21 = gMessageBuilder;
    *(gMessageBuilder + 72) = 0;
    *(v21 + 74) |= 0x8400u;
    v22 = a1[4];
    if (v22 && (*(v22 + 276) & 0x4000) == 0)
    {
      v23 = (*(*(a1[6] + 16) + 88))();
      v24 = (*(*(a1[6] + 16) + 96))();
      v25 = (*(*(a1[6] + 16) + 104))();
      if (v23)
      {
        os_retain(v23);
      }

      v26 = *(v21 + 24);
      if (v26)
      {
        os_release(v26);
      }

      *(v21 + 24) = v23;
      *(v21 + 76) = v24;
      *(v21 + 78) = v25;
      *(v21 + 64) = 0;
      *(v21 + 80) = 0;
      v21 = gMessageBuilder;
    }

    v27 = *(v21 + 40);
    if (v27)
    {
      if (CFArrayGetCount(*(v21 + 40)) >= 0xFFFF)
      {
LABEL_55:
        v36 = mdns_message_builder_write_message(gMessageBuilder, &unk_100172040, 0x22F8uLL);
        if (v36 <= 0x22F8)
        {
          mDNSCoreReceiveForQuerier(mDNSStorage + &loc_100004E28 + v36, a1[6], a1[4], a1[5]);
        }

        return 1;
      }
    }

    else
    {
      v30 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
      if (!v30)
      {
        goto LABEL_55;
      }

      v27 = v30;
      *(v21 + 40) = v30;
    }

    v31 = *(v21 + 64);
    if (v31)
    {
      memset(v41, 0, 32);
      _mdns_message_builder_write_record(v41, a2, 0, 0);
      v32 = __CFADD__(v31, *&v41[24]);
      v33 = v31 + *&v41[24];
      v34 = v32;
      CFArrayAppendValue(v27, a2);
      if ((v34 & 1) == 0 && v33)
      {
        v35 = 1;
LABEL_54:
        *(v21 + 64) = v33;
        *(v21 + 80) = v35;
        goto LABEL_55;
      }
    }

    else
    {
      CFArrayAppendValue(v27, a2);
    }

    v33 = mdns_message_builder_write_message(v21, 0, 0);
    v35 = 0;
    goto LABEL_54;
  }

  _Querier_RemoveRecord(a2, a1[4], a1[5], 0);
  return 1;
}

void __Querier_ProcessDNSServiceChangesAsync_block_invoke(uint64_t a1)
{
  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  mDNS_Lock_(mDNSStorage, "Querier_ProcessDNSServiceChangesAsync_block_invoke", 1475);
  Querier_ProcessDNSServiceChanges(*(a1 + 32));
  mDNS_Unlock_(mDNSStorage, "Querier_ProcessDNSServiceChangesAsync_block_invoke", 1477);

  KQueueUnlock("Querier_ProcessDNSServiceChangesAsync");
}

@end