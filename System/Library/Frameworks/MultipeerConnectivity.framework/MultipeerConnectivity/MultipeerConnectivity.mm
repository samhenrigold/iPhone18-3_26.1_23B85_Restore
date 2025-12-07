uint64_t ec_log(uint64_t a1, uint64_t a2)
{
  if (ec_log_onceToken != -1)
  {
    ec_log_cold_1();
  }

  return ec_log___logger;
}

os_log_t __ec_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "EventCallback");
  ec_log___logger = result;
  return result;
}

uint64_t agps_log(uint64_t a1, uint64_t a2)
{
  if (agps_log_onceToken != -1)
  {
    agps_log_cold_1();
  }

  return agps_log___logger;
}

os_log_t __agps_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "AGPSession");
  agps_log___logger = result;
  return result;
}

uint64_t gcks_log(uint64_t a1, uint64_t a2)
{
  if (gcks_log_onceToken != -1)
  {
    gcks_log_cold_1();
  }

  return gcks_log___logger;
}

os_log_t __gcks_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "GCKSession");
  gcks_log___logger = result;
  return result;
}

uint64_t mcadvertiser_log(uint64_t a1, uint64_t a2)
{
  if (mcadvertiser_log_onceToken != -1)
  {
    mcadvertiser_log_cold_1();
  }

  return mcadvertiser_log___logger;
}

os_log_t __mcadvertiser_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "MCNearbyServiceAdvertiser");
  mcadvertiser_log___logger = result;
  return result;
}

uint64_t mcadvertiser_ui_log(uint64_t a1, uint64_t a2)
{
  if (mcadvertiser_ui_log_onceToken != -1)
  {
    mcadvertiser_ui_log_cold_1();
  }

  return mcadvertiser_ui_log___logger;
}

os_log_t __mcadvertiser_ui_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "MCAdvertiserAssistant");
  mcadvertiser_ui_log___logger = result;
  return result;
}

uint64_t mcbrowser_log(uint64_t a1, uint64_t a2)
{
  if (mcbrowser_log_onceToken != -1)
  {
    mcbrowser_log_cold_1();
  }

  return mcbrowser_log___logger;
}

os_log_t __mcbrowser_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "MCNearbyServiceBrowser");
  mcbrowser_log___logger = result;
  return result;
}

uint64_t mcbrowser_ui_log(uint64_t a1, uint64_t a2)
{
  if (mcbrowser_ui_log_onceToken != -1)
  {
    mcbrowser_ui_log_cold_1();
  }

  return mcbrowser_ui_log___logger;
}

os_log_t __mcbrowser_ui_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "MCBrowserViewController");
  mcbrowser_ui_log___logger = result;
  return result;
}

uint64_t mcdp_log(uint64_t a1, uint64_t a2)
{
  if (mcdp_log_onceToken != -1)
  {
    mcdp_log_cold_1();
  }

  return mcdp_log___logger;
}

os_log_t __mcdp_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "MCNearbyDiscoveryPeer");
  mcdp_log___logger = result;
  return result;
}

uint64_t mcdpc_log(uint64_t a1, uint64_t a2)
{
  if (mcdpc_log_onceToken != -1)
  {
    mcdpc_log_cold_1();
  }

  return mcdpc_log___logger;
}

os_log_t __mcdpc_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "MCNearbyDiscoveryPeerConnection");
  mcdpc_log___logger = result;
  return result;
}

uint64_t mcpid_log(uint64_t a1, uint64_t a2)
{
  if (mcpid_log_onceToken != -1)
  {
    mcpid_log_cold_1();
  }

  return mcpid_log___logger;
}

os_log_t __mcpid_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "MCPeerID");
  mcpid_log___logger = result;
  return result;
}

uint64_t mcs_log(uint64_t a1, uint64_t a2)
{
  if (mcs_log_onceToken != -1)
  {
    mcs_log_cold_1();
  }

  return mcs_log___logger;
}

os_log_t __mcs_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "MCSession");
  mcs_log___logger = result;
  return result;
}

uint64_t ospf_log(uint64_t a1, uint64_t a2)
{
  if (ospf_log_onceToken != -1)
  {
    ospf_log_cold_1();
  }

  return ospf_log___logger;
}

os_log_t __ospf_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "OSPF");
  ospf_log___logger = result;
  return result;
}

uint64_t MCDashboardLog(char *__format, ...)
{
  va_start(va, __format);
  v5 = *MEMORY[0x277D85DE8];
  if (MCDashboardClient_onceToken != -1)
  {
    MCDashboardLog_cold_1();
  }

  v2 = MCDashboardClient_client;
  vsnprintf(__str, 0x400uLL, __format, va);
  return [v2 logf:{"MC: p=%{pid}; %s", getpid(), __str, va}];
}

uint64_t MCDashboardLogJSON(uint64_t a1, __CFString *a2, void *a3)
{
  if (MCDashboardClient_onceToken != -1)
  {
    MCDashboardLog_cold_1();
  }

  v6 = MCDashboardClient_client;
  if (![(__CFString *)a2 length])
  {
    a2 = @"MC";
  }

  v7 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a1];
  [v7 setObject:a2 forKey:@"_cat"];
  [v7 setObject:objc_msgSend(objc_msgSend(MEMORY[0x277CCAC38] forKey:{"processInfo"), "processName"), @"pid"}];
  if ([a3 length])
  {
    [v7 setObject:a3 forKey:@"_op"];
  }

  return [v6 logJSON:v7];
}

void MCMetricsLog(__CFString *a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(__CFString *)a1 length])
  {
    if (a2)
    {
      if (metrics_log_onceToken != -1)
      {
        MCMetricsLog_cold_1();
      }

      v6 = metrics_log___logger;
      if (os_log_type_enabled(metrics_log___logger, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412546;
        v10 = a1;
        v11 = 2112;
        v12 = a2;
        _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "MetricEvent '%@' : %@\n", &v9, 0x16u);
      }

      AnalyticsSendEvent();
      if (a3)
      {
        MCDashboardLogJSON(a2, a1, @"metrics");
      }
    }

    else
    {
      if (metrics_log_onceToken != -1)
      {
        MCMetricsLog_cold_1();
      }

      v8 = metrics_log___logger;
      if (os_log_type_enabled(metrics_log___logger, OS_LOG_TYPE_ERROR))
      {
        MCMetricsLog_cold_3(v8);
      }
    }
  }

  else
  {
    if (metrics_log_onceToken != -1)
    {
      MCMetricsLog_cold_1();
    }

    v7 = metrics_log___logger;
    if (os_log_type_enabled(metrics_log___logger, OS_LOG_TYPE_ERROR))
    {
      MCMetricsLog_cold_5(a1, v7);
    }
  }
}

uint64_t __MCDashboardClient_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D02858]);
  MCDashboardClient_client = v0;

  return [v0 activate];
}

os_log_t __metrics_log_block_invoke()
{
  result = os_log_create("com.apple.multipeerconnectivity", "Metrics");
  metrics_log___logger = result;
  return result;
}

const char *GCKEventName(unsigned int a1)
{
  if (a1 > 6)
  {
    return "?";
  }

  else
  {
    return off_278B44140[a1];
  }
}

const char *XDataControlTypeName(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v6 = *MEMORY[0x277D85DE8];
  if (a1 > 30)
  {
    switch(a1)
    {
      case 0x1F:
        return "XDataStreamCloseFromReceiver";
      case 0x28:
        return "XDataPeerIDPush";
      case 0x29:
        return "XDataConnectionBlobPush";
    }
  }

  else
  {
    switch(a1)
    {
      case 0x14:
        return "XDataStreamOpenRequest";
      case 0x15:
        return "XDataStreamOpenResponse";
      case 0x1E:
        return "XDataStreamCloseFromSender";
    }
  }

  v4 = mcs_log(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Unrecognized type [%d].", v5, 8u);
  }

  return "invalid";
}

void sub_239FBFE0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void GCKEventListenerForMCSession(void *a1, uint64_t a2, unsigned int *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = mcs_log(a1, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *a3;
    if (v8 > 6)
    {
      v9 = "?";
    }

    else
    {
      v9 = off_278B44140[v8];
    }

    v10 = a3[4];
    v11 = a3[5];
    v12 = 136316162;
    v13 = v9;
    v14 = 1024;
    v15 = v10;
    v16 = 1024;
    v17 = v11;
    v18 = 2048;
    v19 = a1;
    v20 = 1024;
    v21 = a2;
    _os_log_debug_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEBUG, "Event %s size=%d status=%d (%p) from pid[%08X].", &v12, 0x28u);
  }

  v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  AGPSessionEvent([a1 agpSession], a2, a3);
}

void AGPEventListenerForMCSession(void *a1, uint64_t a2, unsigned int *a3)
{
  v4 = a2;
  v32 = *MEMORY[0x277D85DE8];
  v6 = mcs_log(a1, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v16 = *a3;
    if (v16 > 6)
    {
      v17 = "?";
    }

    else
    {
      v17 = off_278B44140[v16];
    }

    v18 = a3[4];
    v19 = a3[5];
    *buf = 136316162;
    v23 = v17;
    v24 = 1024;
    v25 = v18;
    v26 = 1024;
    v27 = v19;
    v28 = 2048;
    v29 = a1;
    v30 = 1024;
    v31 = v4;
    _os_log_debug_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEBUG, "Event %s size=%d status=%d (%p) from pid[%08X].", buf, 0x28u);
  }

  v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  v8 = malloc_type_malloc(a3[4] + 24, 0x101004035137979uLL);
  if (v8)
  {
    v10 = v8;
    v11 = *a3;
    v8[2] = *(a3 + 2);
    *v8 = v11;
    v12 = a3[4];
    if (v12 >= 1)
    {
      v13 = *(a3 + 1);
      if (v13)
      {
        memcpy(v8 + 3, v13, v12);
        v10[1] = v10 + 3;
      }
    }

    v14 = [a1 syncQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __AGPEventListenerForMCSession_block_invoke;
    block[3] = &unk_278B440E8;
    block[4] = a1;
    block[5] = v10;
    v21 = v4;
    dispatch_async(v14, block);
  }

  else
  {
    v15 = mcs_log(0, v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      AGPEventListenerForMCSession_cold_1();
    }
  }
}

void sub_239FC11AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_239FC19C4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_239FC2BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __AGPEventListenerForMCSession_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = 1;
  [*(a1 + 32) syncHandleNetworkEvent:*(a1 + 40) pid:*(a1 + 48) freeEventWhenDone:&v3];
  if (v3 == 1)
  {
    free(*(a1 + 40));
  }

  objc_autoreleasePoolPop(v2);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t UpdateRTO(unsigned int *a1, int a2)
{
  if (a2 >= 1)
  {
    v3 = *a1;
    v2 = a1[1];
    v4 = *a1 + 1;
    *a1 = v4;
    if (v3 <= 0x3F)
    {
      v5 = v2 + a2;
      v6 = (v2 + a2) / v4;
      v7 = a2 - v6;
      if ((a2 - v6) < 0)
      {
        v7 = v6 - a2;
      }

      v8 = a1[2] - (a1[2] >> 5) + v7;
      a1[1] = v5;
      a1[2] = v8;
      goto LABEL_11;
    }

    v9 = a2 - (v2 >> 6);
    if (v9 >= 0)
    {
      v10 = a2 - (v2 >> 6);
    }

    else
    {
      v10 = (v2 >> 6) - a2;
    }

    v11 = a1[2];
    if (v10 < (3 * v11) >> 5)
    {
      v12 = v9 + v2;
      v13 = v10 - (v11 >> 5) + v11;
      a1[1] = v12;
      a1[2] = v13;
      v6 = (v13 >> 5) + (v12 >> 6);
LABEL_11:
      a1[3] = v6;
    }
  }

  return a1[3];
}

void TracePrintNodes(uint64_t a1, int a2, uint64_t a3, int a4, int a5)
{
  v53 = *MEMORY[0x277D85DE8];
  v11 = micro();
  if (v11 - *(a1 + 7160) > 1.0)
  {
    *(a1 + 7160) = v11;
    *(a1 + 7152) = 1;
    goto LABEL_6;
  }

  v12 = *(a1 + 7152);
  *(a1 + 7152) = v12 + 1;
  if (v12 < 201)
  {
LABEL_6:
    v14 = gcks_log(v9, v10);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (a4)
    {
      if (!v15)
      {
        goto LABEL_12;
      }

      *buf = 67109120;
      v38 = a2;
      v17 = "My routing table: %d nodes.";
      v18 = v14;
      v19 = 8;
    }

    else
    {
      if (!v15)
      {
        goto LABEL_12;
      }

      *buf = 67109376;
      v38 = a5;
      v39 = 1024;
      v40 = a2;
      v17 = "Participant %08X routing table: %d nodes.";
      v18 = v14;
      v19 = 14;
    }

    _os_log_impl(&dword_239FB7000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_12:
    if (a2 >= 1)
    {
      v20 = 0;
      v21 = (a3 + 292);
      do
      {
        v22 = gcks_log(v15, v16);
        v15 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          v23 = a3 + 416 * v20;
          v24 = *v23;
          v25 = *(v23 + 4);
          v26 = *(v23 + 272);
          v27 = *(v23 + 274);
          v28 = *(v23 + 276);
          v29 = *(v23 + 280);
          LODWORD(v23) = *(v23 + 284);
          *buf = 67110912;
          v38 = v20;
          v39 = 1024;
          v40 = v24;
          v41 = 1024;
          v42 = v25;
          v43 = 1024;
          v44 = v26;
          v45 = 1024;
          v46 = v27;
          v47 = 1024;
          v48 = v28;
          v49 = 1024;
          v50 = v29;
          v51 = 1024;
          v52 = v23;
          _os_log_impl(&dword_239FB7000, v22, OS_LOG_TYPE_DEFAULT, "Node %d [%08X]: NextHop[%08X], SN[%u], LSASN [%u], New flag[%d], From[%08X], # of neighbors [%d]", buf, 0x32u);
        }

        v30 = a3 + 416 * v20;
        if (*(v30 + 284) >= 1)
        {
          v31 = 0;
          v32 = v21;
          do
          {
            v33 = gcks_log(v15, v16);
            v15 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
            if (v15)
            {
              v34 = *(v32 - 1);
              v35 = *v32;
              *buf = 67109632;
              v38 = v31;
              v39 = 1024;
              v40 = v34;
              v41 = 1024;
              v42 = v35;
              _os_log_impl(&dword_239FB7000, v33, OS_LOG_TYPE_DEFAULT, "\tneighbor %d: %08X - RTT[%u]", buf, 0x14u);
            }

            ++v31;
            v32 += 2;
          }

          while (v31 < *(v30 + 284));
        }

        ++v20;
        v21 += 104;
      }

      while (v20 != a2);
    }

    return;
  }

  v13 = gcks_log(v9, v10);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    TracePrintNodes_cold_1();
  }
}

void gckSessionUpdateRoutingTable(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 420);
  v3 = a1 + 424;
  v4 = *(a1 + 420);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &buf[-((v6 + 15) & 0x7FFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &buf[-v9];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &buf[-v12];
  TracePrintNodes(v11, v2, v3, 1, *(v11 + 416));
  memset(v7, 255, 4 * v2);
  memset(v10, 255, 4 * v2);
  bzero(v13, 4 * v2);
  *v7 = 0;
  if (v2 >= 1)
  {
    v16 = 0;
    v17 = -1;
    v18 = -1;
    do
    {
      do
      {
        if (!*&v13[4 * v16] && *&v7[4 * v16] < v18)
        {
          v18 = *&v7[4 * v16];
          v17 = v16;
        }

        ++v16;
      }

      while (v16 != v2);
      if (v17 == -1)
      {
        break;
      }

      *&v13[4 * v17] = 1;
      v19 = v3 + 416 * v17;
      v20 = *(v19 + 284);
      if (v20 >= 1)
      {
        v21 = 0;
        v22 = v19 + 288;
        do
        {
          if (v4 < 1)
          {
            LODWORD(v23) = 0;
          }

          else
          {
            v23 = 0;
            v24 = v3;
            while (*v24 != *(v22 + 8 * v21))
            {
              v24 += 104;
              if (v2 == ++v23)
              {
                goto LABEL_18;
              }
            }
          }

          if (v23 != v4 && !*&v13[4 * v23])
          {
            v25 = *(v22 + 8 * v21 + 4);
            if (v25 != -1)
            {
              v26 = v25 + v18;
              if (v26 < *&v7[4 * v23])
              {
                *&v7[4 * v23] = v26;
                *&v10[4 * v23] = v17;
              }
            }
          }

LABEL_18:
          ++v21;
        }

        while (v21 != v20);
      }

      v16 = 0;
      v17 = -1;
      v18 = -1;
    }

    while (v4 >= 1);
  }

  v27 = *(a1 + 708);
  if (v27 >= 1)
  {
    v28 = 0;
    v29 = a1 + 712;
    do
    {
      if (v4 < 1)
      {
        LODWORD(v30) = 0;
      }

      else
      {
        v30 = 0;
        v31 = v3;
        while (*v31 != *(v29 + 8 * v28))
        {
          v31 += 104;
          if (v2 == ++v30)
          {
            goto LABEL_35;
          }
        }
      }

      if (v30 != v4 && *(v29 + 8 * v28 + 4) != -1)
      {
        *&v10[4 * v30] = 0;
      }

LABEL_35:
      ++v28;
    }

    while (v28 != v27);
  }

  if (v4 > 1)
  {
    v32 = 1;
    do
    {
      v33 = v32;
      while (1)
      {
        v34 = v33;
        v33 = *&v10[4 * v33];
        if (v33 == -1)
        {
          break;
        }

        if (!v33)
        {
          *(v3 + 416 * v32 + 4) = *(v3 + 416 * v34);
          v35 = *&v7[4 * v32];
          goto LABEL_43;
        }
      }

      v35 = -1;
      *(v3 + 416 * v32 + 4) = -1;
LABEL_43:
      *(v3 + 416 * v32++ + 268) = v35;
    }

    while (v32 != v2);
  }

  v36 = gcks_log(v14, v15);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_239FB7000, v36, OS_LOG_TYPE_DEFAULT, "Updated routing table.", buf, 2u);
  }

  TracePrintNodes(a1, *(a1 + 420), v3, 1, *(a1 + 416));
}

const char *GCKSessionInterfaceNameForPriority(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1 - 1;
  if (a1 - 1) < 7 && ((0x7Du >> v3))
  {
    return off_278B44350[v3];
  }

  v5 = gcks_log(a1, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Unrecognized interface priority type [%d].", v6, 8u);
  }

  return "UNKNOWN";
}

uint64_t GCKSessionCreate(int a1, const void *a2, uint64_t a3, uint64_t a4, const void *a5, void *a6)
{
  v47 = *MEMORY[0x277D85DE8];
  if ((GCKSessionCreate_s_fInit & 1) == 0)
  {
    GCKSessionCreate_s_fInit = 1;
  }

  v12 = 2149187587;
  v13 = malloc_type_calloc(1uLL, 0x1D80uLL, 0x10E0040C953D487uLL);
  if (!v13)
  {
    v25 = gcks_log(0, v14);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      return v12;
    }

LABEL_14:
    GCKSessionCreate_cold_4(v25, v26, v27, v28, v29, v30, v31, v32);
    return v12;
  }

  v15 = v13;
  v16 = malloc_type_calloc(1uLL, 0x138uLL, 0x10A00406F2D52ADuLL);
  *(v15 + 51) = v16;
  if (!v16)
  {
    free(v15);
    v25 = gcks_log(v33, v34);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      return v12;
    }

    goto LABEL_14;
  }

  Handle = CreateHandle();
  if (Handle == 0xFFFFFFFFLL)
  {
    free(v15);
    return 2149187589;
  }

  v18 = Handle;
  *(v15 + 104) = a1;
  v19 = *(v15 + 51);
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = 0;
  v19[4] = 0;
  *(v15 + 4) = -1;
  *(v15 + 9) = 0xFFFFFFFFLL;
  *(v15 + 100) = 0;
  *(v15 + 3) = xmmword_239FEC2E0;
  *(v15 + 16) = 1;
  *(v15 + 24) = xmmword_239FEC2F0;
  *(v15 + 10) = 1;
  *(v15 + 1884) = 0;
  pthread_mutex_init((v15 + 80), 0);
  pthread_mutex_init((v15 + 7080), 0);
  pthread_rwlock_init((v15 + 7192), 0);
  pthread_mutex_init((v15 + 7400), 0);
  pthread_cond_init((v15 + 7464), 0);
  pthread_cond_init((*(v15 + 51) + 112), 0);
  pthread_mutex_init((*(v15 + 51) + 48), 0);
  pthread_mutex_init((*(v15 + 51) + 248), 0);
  __sprintf_chk(v15 + 433, 0, 0x100uLL, "%08X", a1);
  v15[432] = 8;
  *(v15 + 106) = a1;
  *(v15 + 107) = a1;
  *(v15 + 173) = 0;
  *(v15 + 348) = 0;
  *(v15 + 175) = 0;
  *(v15 + 176) = a1;
  *(v15 + 177) = 0;
  *(v15 + 105) = 1;
  *(v15 + 1788) = 0;
  *(v15 + 895) = micro();
  *(v15 + 940) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  v20 = CheckInHandleDebug();
  if (!v20)
  {
    v12 = 2149187586;
LABEL_19:
    v35 = gcks_log(v20, v21);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      GCKSessionCreate_cold_3();
    }

    goto LABEL_21;
  }

  qword_27DF919F8 = 0x404E000000000000;
  v46 = 0;
  v43 = 0;
  v45 = 0u;
  *buf = gckSessionSendICEPacket;
  *&buf[8] = gckSessionRecvICEPacketWithTimeout;
  *&buf[16] = gckSessionConnectedCallback;
  v42 = gckSessionCancelRecvUDP;
  v44 = gckSessionICEListRemoveCallback;
  v12 = ICECreateHandleWithCallback();
  ICEDisableCandidatePairFilter();
  v20 = CheckOutHandleDebug();
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  v22 = pthread_create(v15 + 896, 0, gckSessionRecvProc, v18);
  if (v22)
  {
    v12 = v22 | 0xC01A0000;
    v24 = gcks_log(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      GCKSessionCreate_cold_1();
    }

LABEL_21:
    GCKSessionRelease(v18);
    return v12;
  }

  v37 = pthread_create(v15 + 897, 0, gckSessionSendProc, v18);
  if (v37)
  {
    v12 = v37 | 0xC01A0000;
    v39 = gcks_log(v37, v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      GCKSessionCreate_cold_2();
    }

    goto LABEL_21;
  }

  *(v15 + 1886) = 0;
  *(v15 + 941) = a5;
  if (a5)
  {
    v37 = CFRetain(a5);
  }

  *a6 = v18;
  v40 = gcks_log(v37, v38);
  v12 = 0;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Oct 10 2025";
    *&buf[12] = 2080;
    *&buf[14] = "23:44:36";
    _os_log_impl(&dword_239FB7000, v40, OS_LOG_TYPE_DEFAULT, "GCKSessionCreate: [GKS: %s - %s].", buf, 0x16u);
    return 0;
  }

  return v12;
}

double micro()
{
  if ((_MergedGlobals & 1) == 0)
  {
    micro_cold_1();
  }

  v0 = *&qword_27DF91D30;
  return v0 * mach_absolute_time();
}

uint64_t GCKSessionRelease(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v25.tv_sec = 0;
  *&v25.tv_usec = 50000;
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2149187586;
  }

  v3 = v1;
  v4 = gcks_log(v1, v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Oct 10 2025";
    v27 = 2080;
    v28 = "23:44:36";
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "GCKSessionRelease: Disposing all connections [GKS: %s - %s].", buf, 0x16u);
  }

  gckSessionDisposeAllConnections(v3);
  v5 = micro() + 1.0;
  while (1)
  {
    pthread_rwlock_rdlock((v3 + 7192));
    v6 = *(v3 + 7184);
    if (!v6)
    {
      break;
    }

    while (1)
    {
      pthread_mutex_lock((v6 + 768));
      v7 = *(v6 + 600);
      if (v7)
      {
        break;
      }

LABEL_9:
      pthread_mutex_unlock((v6 + 768));
      v6 = *(v6 + 832);
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    while (*v7 != 4)
    {
      v7 = *(v7 + 64);
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    pthread_mutex_unlock((v6 + 768));
    pthread_rwlock_unlock((v3 + 7192));
    select(0, 0, 0, 0, &v25);
    if (micro() >= v5)
    {
      goto LABEL_14;
    }
  }

LABEL_13:
  v8 = pthread_rwlock_unlock((v3 + 7192));
LABEL_14:
  v10 = gcks_log(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "Oct 10 2025";
    v27 = 2080;
    v28 = "23:44:36";
    _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Stop ICE connectionchecks [GKS: %s - %s].", buf, 0x16u);
  }

  pthread_rwlock_rdlock((v3 + 7192));
  for (i = *(v3 + 7184); i; i = *(i + 832))
  {
    ICEStopConnectivityCheck();
  }

  *v3 = 0x100000001;
  v12 = *(v3 + 16);
  if (v12 != -1)
  {
    *(v3 + 16) = -1;
    close(v12);
  }

  pthread_rwlock_unlock((v3 + 7192));
  do
  {
    do
    {
      select(0, 0, 0, 0, &v25);
    }

    while (*(v3 + 7176) && !*(v3 + 7516));
  }

  while (*(v3 + 7168) && !*(v3 + 7512));
  CheckOutHandleDebug();
  v13 = CheckInHandleDebug();
  pthread_rwlock_wrlock((v13 + 7192));
  for (j = *(v13 + 7184); j; j = *(j + 832))
  {
    *j = -1;
  }

  pthread_rwlock_unlock((v13 + 7192));
  v15 = *(v13 + 7168);
  if (v15)
  {
    *buf = 0;
    pthread_join(v15, buf);
  }

  v16 = *(v13 + 7176);
  if (v16)
  {
    *buf = 0;
    pthread_join(v16, buf);
  }

  CheckOutHandleDebug();
  StopEventCallbackThread(*(v13 + 408));
  *(v13 + 408) = 0;
  ICECloseHandle();
  pthread_rwlock_wrlock((v13 + 7192));
  v18 = *(v13 + 7184);
  if (v18)
  {
    do
    {
      v19 = *(v18 + 832);
      gckSessionFreeCList(v18, v17);
      v18 = v19;
    }

    while (v19);
  }

  pthread_rwlock_unlock((v13 + 7192));
  pthread_mutex_lock((v13 + 7400));
  v20 = *(v13 + 7392);
  if (v20)
  {
    do
    {
      v21 = v20[525];
      free(v20);
      v20 = v21;
    }

    while (v21);
  }

  pthread_mutex_unlock((v13 + 7400));
  pthread_mutex_destroy((v13 + 80));
  pthread_mutex_destroy((v13 + 7080));
  pthread_rwlock_destroy((v13 + 7192));
  pthread_mutex_destroy((v13 + 7400));
  pthread_cond_destroy((v13 + 7464));
  v22 = *(v13 + 7520);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(v13 + 7528);
  if (v23)
  {
    CFRelease(v23);
  }

  free(v13);
  return 0;
}

uint64_t gckSessionRecvProc(uint64_t a1)
{
  v225 = *MEMORY[0x277D85DE8];
  v1 = -2145779708;
  v213.tv_sec = 0;
  *&v213.tv_usec = 0;
  pthread_setname_np("com.apple.multipeerconnectivity.gcksession.recvproc");
  v2 = CheckInHandleDebug();
  if (!v2)
  {
    return -2145779710;
  }

  v3 = v2;
  memset(&v215, 0, sizeof(v215));
  v214.tv_sec = 0;
  *&v214.tv_usec = 0;
  global_queue = dispatch_get_global_queue(2, 0);
  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, global_queue);
  if (!v5)
  {
    v194 = gcks_log(0, v6);
    if (os_log_type_enabled(v194, OS_LOG_TYPE_ERROR))
    {
      gckSessionRecvProc_cold_3();
    }

    return v1;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 0x40000000;
  handler[2] = __gckSessionRecvProc_block_invoke;
  handler[3] = &__block_descriptor_tmp_91;
  handler[4] = v3;
  source = v5;
  dispatch_source_set_event_handler(v5, handler);
  v7 = 0;
  v207 = micro() + 30.0;
  v208 = (v3 + 7184);
  while (1)
  {
    v8 = micro();
    if (v8 - *(v3 + 7144) > 15.0)
    {
      pthread_mutex_lock((v3 + 7080));
      *(v3 + 7144) = v8;
      TracePrintNodes(v3, *(v3 + 420), v3 + 424, 1, *(v3 + 416));
      pthread_mutex_unlock((v3 + 7080));
    }

    memset(&v215, 0, sizeof(v215));
    v9 = *(v3 + 408);
    v10 = micro();
    ServiceWaitEventCallbacks(v9, v10);
    pthread_rwlock_wrlock((v3 + 7192));
    if (*v3)
    {
      v198 = pthread_rwlock_unlock((v3 + 7192));
LABEL_336:
      v200 = source;
      goto LABEL_340;
    }

    if (*(v3 + 16) == -1)
    {
      v11 = socket(2, 1, 6);
      *(v3 + 16) = v11;
      if (v11 == -1)
      {
        break;
      }
    }

    v12 = micro();
    if (v12 >= v207)
    {
      v207 = v12 + 30.0;
      goto LABEL_303;
    }

    v13 = *(v3 + 16);
    if (__darwin_check_fd_set_overflow(v13, &v215, 0))
    {
      *(v215.fds_bits + ((v13 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v13;
    }

    v14 = *(v3 + 16);
    v15 = *(v3 + 7184);
    if (v15)
    {
      v16 = v12 + 0.015;
      v17 = v12 + 0.5;
      v18 = v207;
      v19 = v208;
      while (1)
      {
        v210 = v19;
        v211 = v14;
        v20 = pthread_mutex_lock((v15 + 768));
        if ((*(v15 + 40) & 2) != 0 && (*(v15 + 80) & 0x80000000) == 0)
        {
          v22 = *(v15 + 600);
          if (!v22)
          {
            goto LABEL_28;
          }

          v23 = 0;
          v24 = (v15 + 600);
          do
          {
            if (*v22 == 8)
            {
              if (v23)
              {
                v25 = gcks_log(v20, v21);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_239FB7000, v25, OS_LOG_TYPE_DEFAULT, "Removing duplicate heartbeat.", buf, 2u);
                }

                free(*(v23 + 40));
                free(v23);
              }

              v26 = *(v22 + 64);
              *v24 = v26;
              v23 = v22;
            }

            else
            {
              v26 = *(v22 + 64);
              v24 = (v22 + 64);
            }

            v22 = v26;
          }

          while (v26);
          if (v23)
          {
            *v24 = v23;
            *(v23 + 64) = 0;
          }

          else
          {
LABEL_28:
            v27 = gcks_log(v20, v21);
            v20 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
            if (v20)
            {
              v176 = *(v15 + 88);
              v177 = *(v15 + 72);
              *buf = 67109376;
              *v223 = v176;
              *&v223[4] = 1024;
              *&v223[6] = v177;
              _os_log_error_impl(&dword_239FB7000, v27, OS_LOG_TYPE_ERROR, "Expected heartbeat in the retry list not found for participant [%08X] channel [%d].", buf, 0xEu);
            }

            for (i = *v208; i; i = *(i + 832))
            {
              v29 = gcks_log(v20, v21);
              v20 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
              if (v20)
              {
                v30 = *(i + 88);
                v31 = v3;
                v33 = *(i + 60);
                v32 = *(i + 64);
                v34 = IPPORTToString();
                *v216 = 67109890;
                *v217 = v30;
                *&v217[4] = 1024;
                *&v217[6] = v33;
                LOWORD(v218) = 1024;
                *(&v218 + 2) = v32;
                v3 = v31;
                HIWORD(v218) = 2080;
                *v219 = v34;
                _os_log_impl(&dword_239FB7000, v29, OS_LOG_TYPE_DEFAULT, "Participant %08X: sentDD [%d], receivedDD [%d] address [%s].", v216, 0x1Eu);
              }

              for (j = *(i + 600); j; j = *(j + 8))
              {
                v36 = gcks_log(v20, v21);
                v20 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
                if (v20)
                {
                  v37 = gckWaitForString(*j);
                  v38 = *(j + 1);
                  v39 = *(j + 2);
                  v40 = v12 - v38;
                  if (v38 == 0.0)
                  {
                    v40 = 0.0;
                  }

                  v41 = v39 - v12;
                  if (v39 == 0.0)
                  {
                    v41 = 0.0;
                  }

                  v42 = *(j + 4);
                  v43 = v42 - v12;
                  *v216 = 136315906;
                  *v217 = v37;
                  *&v217[8] = 2048;
                  if (v42 == 0.0)
                  {
                    v43 = 0.0;
                  }

                  v218 = v40;
                  *v219 = 2048;
                  *&v219[2] = v41;
                  v220 = 2048;
                  v221 = v43;
                  _os_log_impl(&dword_239FB7000, v36, OS_LOG_TYPE_DEFAULT, "    WaitFor [%s] timerAdd [%.1lf] nextFire [%.1lf] waitUntil [%.1lf].", v216, 0x2Au);
                }
              }
            }
          }
        }

        v44 = (v15 + 600);
        v45 = *(v15 + 600);
        v209 = (v15 + 600);
        if (v45)
        {
          while (1)
          {
            if (*(v45 + 2) != 0.0)
            {
              goto LABEL_70;
            }

            v21 = *(v45 + 5);
            if (v21)
            {
              break;
            }

            v52 = *v45;
            if (v52 == 12)
            {
              goto LABEL_58;
            }

            if (v52 == 11)
            {
              v20 = gckSessionPerformDTLSHandshake(v3, v15);
              v7 = v20;
              if (*(v15 + 640) == 1)
              {
                goto LABEL_206;
              }

              if ((v20 & 0x80000000) != 0)
              {
                *v44 = *(v45 + 8);
                free(v45);
                v116 = gcks_log(v114, v115);
                if (!os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_265;
                }

LABEL_211:
                v126 = *(v15 + 88);
                v127 = *(v15 + 72);
                *buf = 67109632;
                *v223 = v126;
                *&v223[4] = 1024;
                *&v223[6] = v127;
                *&v223[10] = 2048;
                *&v223[12] = v7;
                v111 = v116;
                v112 = "Perform DTLS Handshake for participant [%08X] on channel [%d] failed with hResult [%ld].";
                v113 = 24;
                goto LABEL_264;
              }

              v7 = 0;
LABEL_58:
              *(v45 + 4) = v12 + *(v45 + 4);
              *(v45 + 2) = v12 + *(v45 + 1);
LABEL_70:
              v52 = *v45;
            }

            if (v52 == 1 && !*(v45 + 5) && v12 >= *(v45 + 4))
            {
              v60 = *(v15 + 16);
              v61 = *(v15 + 352);
              if (v12 - v60 < v61)
              {
                *(v45 + 1) = 0x3FB0A3D70A3D70A4;
                v62 = v60 + v61;
                *(v45 + 4) = v62;
                *(v45 + 2) = v62;
              }
            }

            if (v12 < *(v45 + 4))
            {
              v63 = *(v45 + 2);
              if (v12 < v63 || !*(v45 + 5))
              {
                goto LABEL_198;
              }

              if (v52 > 3)
              {
                if (v52 == 4)
                {
                  v104 = gcks_log(v20, v21);
                  if (!os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_186;
                  }

                  v105 = *(v45 + 28);
                  v106 = *(v15 + 88);
                  v107 = *(v15 + 72);
                  *buf = 67109632;
                  *v223 = v105;
                  *&v223[4] = 1024;
                  *&v223[6] = v106;
                  *&v223[10] = 1024;
                  *&v223[12] = v107;
                  v68 = v104;
                  v69 = "Retransmitting LSA with SN [%d] to participant [%08X] over channel [%d].";
                }

                else
                {
                  if (v52 != 8)
                  {
                    goto LABEL_186;
                  }

                  v86 = *(v15 + 360);
                  v87 = *(v15 + 48) + v86 * 0.5;
                  if (v87 >= *(v15 + 16) + v86 * 0.5)
                  {
                    v87 = *(v15 + 16) + v86 * 0.5;
                  }

                  *(v45 + 2) = v87;
                  *(v45 + 4) = v87 + v86 * 0.5;
                  v88 = gcks_log(v20, v21);
                  v20 = os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG);
                  if (v20)
                  {
                    v152 = *(v15 + 88);
                    v153 = *(v45 + 2);
                    v154 = *(v45 + 4);
                    *buf = 67109888;
                    *v223 = v152;
                    *&v223[4] = 2048;
                    *&v223[6] = v12;
                    *&v223[14] = 2048;
                    *&v223[16] = v153;
                    *&v223[24] = 2048;
                    v224 = v154;
                    _os_log_debug_impl(&dword_239FB7000, v88, OS_LOG_TYPE_DEBUG, "Heartbeat state for [%08X]: Now [%.3lf] NextFire [%.3lf] WaitUntil [%.3lf].", buf, 0x26u);
                  }

                  v89 = *(v45 + 2);
                  if (v12 < v89)
                  {
                    v44 = v45 + 64;
                    if (v18 > v89)
                    {
                      v18 = *(v45 + 2);
                    }

                    goto LABEL_266;
                  }

                  v117 = gcks_log(v20, v21);
                  if (!os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_186;
                  }

                  v118 = *(v45 + 28);
                  v119 = *(v15 + 88);
                  v120 = *(v15 + 72);
                  *buf = 67109632;
                  *v223 = v118;
                  *&v223[4] = 1024;
                  *&v223[6] = v119;
                  *&v223[10] = 1024;
                  *&v223[12] = v120;
                  v68 = v117;
                  v69 = "Retransmitting Heartbeat with SN [%d] to participant [%08X] over channel [%d].";
                }
              }

              else
              {
                if (v52 != 1)
                {
                  if (v52 == 2)
                  {
                    v64 = gcks_log(v20, v21);
                    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                    {
                      v65 = *(v45 + 28);
                      v66 = *(v15 + 88);
                      v67 = *(v15 + 72);
                      *buf = 67109632;
                      *v223 = v65;
                      *&v223[4] = 1024;
                      *&v223[6] = v66;
                      *&v223[10] = 1024;
                      *&v223[12] = v67;
                      v68 = v64;
                      v69 = "Retransmitting DD with SN [%d] to participant [%08X] over channel [%d].";
                      goto LABEL_185;
                    }
                  }

LABEL_186:
                  v20 = SendUDPPacketCList(v15, *(v45 + 5), *(v45 + 12), 0, 1);
                  v7 = v20;
                  if ((v20 & 0x80000000) == 0)
                  {
                    v121 = *v45;
                    goto LABEL_188;
                  }

                  if (v20 == -1072037876 || v20 == -1072037833)
                  {
                    v121 = *v45;
                    if (v20 != -1072037876 || v121 == 8)
                    {
                      goto LABEL_188;
                    }

                    *(v45 + 4) = v12 + *(v45 + 4) - *(v45 + 2) + 0.5;
                    *(v45 + 2) = v17;
                    v63 = v12 + 0.5;
                    v7 = -1072037876;
                  }

                  else
                  {
                    v121 = *v45;
                    if (v121 != 8 && v121 != 1 || !*(v15 + 80))
                    {
                      *v44 = *(v45 + 8);
                      v128 = *(v45 + 5);
                      if (v128)
                      {
                        free(v128);
                      }

                      free(v45);
                      if (v121 != 8)
                      {
                        v131 = gcks_log(v129, v130);
                        if (!os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_265;
                        }

                        *buf = 67109120;
                        *v223 = v7;
                        v111 = v131;
                        v112 = "SendUDPPacketCList failed with error (%X).";
                        goto LABEL_156;
                      }

                      goto LABEL_256;
                    }

                    *(v15 + 80) = -1;
LABEL_188:
                    if (v121 == 1 && *(v45 + 6))
                    {
                      v20 = arc4random();
                      v63 = v16 + vcvtd_n_f64_u32(v20 & 0x7FFFFFFF, 0x1FuLL) * 0.005;
                      *(v45 + 2) = v63;
                      --*(v45 + 6);
                    }

                    else
                    {
                      *(v45 + 6) = 0;
                      v122 = v12 + *(v45 + 1);
                      v20 = arc4random();
                      v63 = v122 + vcvtd_n_f64_u32(v20 & 0x7FFFFFFF, 0x1FuLL) * 0.02;
                      v123 = *(v45 + 1) + *(v45 + 1);
                      *(v45 + 1) = v123;
                      *(v45 + 2) = v63;
                      if (v123 > 1.0)
                      {
                        v20 = arc4random();
                        *(v45 + 1) = vcvtd_n_f64_u32(v20 & 0x7FFFFFFF, 0x1FuLL) * 0.02 + 1.0;
                        v63 = *(v45 + 2);
                      }
                    }
                  }

LABEL_198:
                  if (v12 >= v63 && *v45 == 11)
                  {
                    v20 = gckSessionPerformDTLSHandshake(v3, v15);
                    v7 = v20;
                    if (*(v15 + 640) != 1)
                    {
                      if ((v20 & 0x80000000) != 0)
                      {
                        *v44 = *(v45 + 8);
                        free(v45);
                        v116 = gcks_log(v124, v125);
                        if (!os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_265;
                        }

                        goto LABEL_211;
                      }

                      v7 = 0;
                      v63 = v12 + *(v45 + 1);
                      *(v45 + 2) = v63;
                      goto LABEL_203;
                    }
                  }

                  else
                  {
LABEL_203:
                    if (v12 < v63 || *v45 != 12)
                    {
                      goto LABEL_208;
                    }

                    if (*(v15 + 376) != 3)
                    {
                      v63 = v12 + *(v45 + 1);
                      *(v45 + 2) = v63;
LABEL_208:
                      v44 = v45 + 64;
                      if (v18 > v63)
                      {
                        v18 = v63;
                      }

                      goto LABEL_266;
                    }
                  }

LABEL_206:
                  *v44 = *(v45 + 8);
                  free(v45);
                  goto LABEL_266;
                }

                v100 = gcks_log(v20, v21);
                if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_186;
                }

                v101 = *(v45 + 28);
                v102 = *(v15 + 88);
                v103 = *(v15 + 72);
                *buf = 67109632;
                *v223 = v101;
                *&v223[4] = 1024;
                *&v223[6] = v102;
                *&v223[10] = 1024;
                *&v223[12] = v103;
                v68 = v100;
                v69 = "Retransmitting Hello with SN [%d] to participant [%08X] over channel [%d].";
              }

LABEL_185:
              _os_log_impl(&dword_239FB7000, v68, OS_LOG_TYPE_DEFAULT, v69, buf, 0x14u);
              goto LABEL_186;
            }

            *v44 = *(v45 + 8);
            v70 = *(v45 + 5);
            if (v70)
            {
              free(v70);
            }

            free(v45);
            v73 = gcks_log(v71, v72);
            v74 = os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT);
            if (v52 <= 7)
            {
              if (v52 != 1)
              {
                if (v52 != 2)
                {
                  if (v52 == 4)
                  {
                    if (v74)
                    {
                      v76 = *(v15 + 376);
                      if (v76 > 2)
                      {
                        switch(v76)
                        {
                          case 3:
                            v77 = "Connected";
                            break;
                          case 4:
                            v77 = "Disconnected";
                            break;
                          case 255:
                            v77 = "Invalid";
                            break;
                          default:
                            goto LABEL_242;
                        }
                      }

                      else if (v76)
                      {
                        if (v76 == 1)
                        {
                          v77 = "ICE";
                        }

                        else
                        {
                          if (v76 == 2)
                          {
                            v77 = "Connecting";
                            goto LABEL_250;
                          }

LABEL_242:
                          v77 = "?";
                        }
                      }

                      else
                      {
                        v77 = "Created";
                      }

LABEL_250:
                      v140 = *(v15 + 88);
                      v141 = *(v15 + 72);
                      *buf = 67109634;
                      *v223 = v140;
                      *&v223[4] = 1024;
                      *&v223[6] = v141;
                      *&v223[10] = 2080;
                      *&v223[12] = v77;
                      v134 = v73;
                      v135 = "LSAACK timeout expired for participant [%08X] on channel [%d] state [%s].";
LABEL_255:
                      _os_log_impl(&dword_239FB7000, v134, OS_LOG_TYPE_DEFAULT, v135, buf, 0x18u);
                    }

LABEL_256:
                    attempt_failover(v3, v15);
                    goto LABEL_266;
                  }

LABEL_130:
                  if (!v74)
                  {
                    goto LABEL_256;
                  }

                  v94 = *(v15 + 376);
                  if (v94 > 2)
                  {
                    switch(v94)
                    {
                      case 3:
                        v95 = "Connected";
                        goto LABEL_245;
                      case 4:
                        v95 = "Disconnected";
                        goto LABEL_245;
                      case 255:
                        v95 = "Invalid";
                        goto LABEL_245;
                    }
                  }

                  else
                  {
                    switch(v94)
                    {
                      case 0:
                        v95 = "Created";
                        goto LABEL_245;
                      case 1:
                        v95 = "ICE";
                        goto LABEL_245;
                      case 2:
                        v95 = "Connecting";
LABEL_245:
                        v138 = *(v15 + 88);
                        v139 = *(v15 + 72);
                        *buf = 67109634;
                        *v223 = v138;
                        *&v223[4] = 1024;
                        *&v223[6] = v139;
                        *&v223[10] = 2080;
                        *&v223[12] = v95;
                        v134 = v73;
                        v135 = "Unknown timeout expired for participant [%08X] on channel [%d] state [%s].";
                        goto LABEL_255;
                    }
                  }

                  v95 = "?";
                  goto LABEL_245;
                }

                if (!v74)
                {
                  goto LABEL_256;
                }

                v96 = *(v15 + 376);
                if (v96 > 2)
                {
                  switch(v96)
                  {
                    case 3:
                      v97 = "Connected";
                      goto LABEL_254;
                    case 4:
                      v97 = "Disconnected";
                      goto LABEL_254;
                    case 255:
                      v97 = "Invalid";
                      goto LABEL_254;
                  }
                }

                else
                {
                  switch(v96)
                  {
                    case 0:
                      v97 = "Created";
                      goto LABEL_254;
                    case 1:
                      v97 = "ICE";
                      goto LABEL_254;
                    case 2:
                      v97 = "Connecting";
LABEL_254:
                      v142 = *(v15 + 88);
                      v143 = *(v15 + 72);
                      *buf = 67109634;
                      *v223 = v142;
                      *&v223[4] = 1024;
                      *&v223[6] = v143;
                      *&v223[10] = 2080;
                      *&v223[12] = v97;
                      v134 = v73;
                      v135 = "DD timeout expired for participant [%08X] on channel [%d] state [%s].";
                      goto LABEL_255;
                  }
                }

                v97 = "?";
                goto LABEL_254;
              }

              if (!v74)
              {
                goto LABEL_256;
              }

              v90 = *(v15 + 376);
              if (v90 > 2)
              {
                switch(v90)
                {
                  case 3:
                    v91 = "Connected";
                    goto LABEL_237;
                  case 4:
                    v91 = "Disconnected";
                    goto LABEL_237;
                  case 255:
                    v91 = "Invalid";
                    goto LABEL_237;
                }
              }

              else
              {
                switch(v90)
                {
                  case 0:
                    v91 = "Created";
                    goto LABEL_237;
                  case 1:
                    v91 = "ICE";
                    goto LABEL_237;
                  case 2:
                    v91 = "Connecting";
LABEL_237:
                    v132 = *(v15 + 88);
                    v133 = *(v15 + 72);
                    *buf = 67109634;
                    *v223 = v132;
                    *&v223[4] = 1024;
                    *&v223[6] = v133;
                    *&v223[10] = 2080;
                    *&v223[12] = v91;
                    v134 = v73;
                    v135 = "Hello timeout expired for participant [%08X] on channel [%d] state [%s].";
                    goto LABEL_255;
                }
              }

              v91 = "?";
              goto LABEL_237;
            }

            if (v52 == 8)
            {
              if (!v74)
              {
                goto LABEL_256;
              }

              v92 = *(v15 + 376);
              if (v92 > 2)
              {
                switch(v92)
                {
                  case 3:
                    v93 = "Connected";
                    goto LABEL_239;
                  case 4:
                    v93 = "Disconnected";
                    goto LABEL_239;
                  case 255:
                    v93 = "Invalid";
                    goto LABEL_239;
                }
              }

              else
              {
                switch(v92)
                {
                  case 0:
                    v93 = "Created";
                    goto LABEL_239;
                  case 1:
                    v93 = "ICE";
                    goto LABEL_239;
                  case 2:
                    v93 = "Connecting";
LABEL_239:
                    v136 = *(v15 + 88);
                    v137 = *(v15 + 72);
                    *buf = 67109634;
                    *v223 = v136;
                    *&v223[4] = 1024;
                    *&v223[6] = v137;
                    *&v223[10] = 2080;
                    *&v223[12] = v93;
                    v134 = v73;
                    v135 = "Heartbeat timeout expired for participant [%08X] on channel [%d] state [%s].";
                    goto LABEL_255;
                }
              }

              v93 = "?";
              goto LABEL_239;
            }

            if (v52 == 12)
            {
              if (v74)
              {
                v98 = *(v15 + 376);
                if (v98 > 2)
                {
                  switch(v98)
                  {
                    case 3:
                      v99 = "Connected";
                      break;
                    case 4:
                      v99 = "Disconnected";
                      break;
                    case 255:
                      v99 = "Invalid";
                      break;
                    default:
                      goto LABEL_247;
                  }
                }

                else if (v98)
                {
                  if (v98 == 1)
                  {
                    v99 = "ICE";
                  }

                  else
                  {
                    if (v98 == 2)
                    {
                      v99 = "Connecting";
                      goto LABEL_258;
                    }

LABEL_247:
                    v99 = "?";
                  }
                }

                else
                {
                  v99 = "Created";
                }

LABEL_258:
                v144 = *(v15 + 88);
                v145 = *(v15 + 72);
                *buf = 67109634;
                *v223 = v144;
                *&v223[4] = 1024;
                *&v223[6] = v145;
                *&v223[10] = 2080;
                *&v223[12] = v99;
                _os_log_impl(&dword_239FB7000, v73, OS_LOG_TYPE_DEFAULT, "ICE timeout expired for participant [%08X] on channel [%d] state [%s].", buf, 0x18u);
              }

              v146 = *(v15 + 376);
              v147 = gcks_log(v74, v75);
              v85 = v147;
              if (v146 != 3)
              {
                if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_263;
                }

                goto LABEL_265;
              }

              v20 = os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT);
              if (v20)
              {
LABEL_261:
                v148 = *(v15 + 88);
                v149 = *(v15 + 72);
                *buf = 67109376;
                *v223 = v148;
                *&v223[4] = 1024;
                *&v223[6] = v149;
                _os_log_impl(&dword_239FB7000, v85, OS_LOG_TYPE_DEFAULT, "Participant [%08X] on channel [%d] already connected, ignore this timeout.", buf, 0xEu);
                goto LABEL_266;
              }

              goto LABEL_266;
            }

            if (v52 != 11)
            {
              goto LABEL_130;
            }

            if (v74)
            {
              v78 = *(v15 + 88);
              v79 = *(v15 + 72);
              v80 = *(v15 + 640);
              v81 = "?";
              if (!v80)
              {
                v81 = "DTLSNotConnected";
              }

              v159 = v80 == 1;
              v82 = "DTLSConnected";
              if (!v159)
              {
                v82 = v81;
              }

              *buf = 67109634;
              *v223 = v78;
              *&v223[4] = 1024;
              *&v223[6] = v79;
              *&v223[10] = 2080;
              *&v223[12] = v82;
              _os_log_impl(&dword_239FB7000, v73, OS_LOG_TYPE_DEFAULT, "DTLS Handshake timeout expired for participant [%08X] on channel [%d] DTLS state [%s].", buf, 0x18u);
            }

            v83 = *(v15 + 640);
            v84 = gcks_log(v74, v75);
            v85 = v84;
            if (v83 != 1)
            {
              if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
              {
LABEL_263:
                v150 = *(v15 + 88);
                v151 = *(v15 + 72);
                *buf = 67109376;
                *v223 = v150;
                *&v223[4] = 1024;
                *&v223[6] = v151;
                v111 = v85;
                v112 = "Not in connected state, so giving up for participant [%08X] on channel [%d].";
                v113 = 14;
LABEL_264:
                _os_log_error_impl(&dword_239FB7000, v111, OS_LOG_TYPE_ERROR, v112, buf, v113);
              }

LABEL_265:
              v20 = gckSessionChangeStateCList(v3);
              goto LABEL_266;
            }

            v20 = os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT);
            if (v20)
            {
              goto LABEL_261;
            }

LABEL_266:
            v45 = *v44;
            if (!*v44)
            {
              goto LABEL_267;
            }
          }

          v46 = SendUDPPacketCList(v15, v21, *(v45 + 12), 0, 1);
          v7 = v46;
          v48 = gcks_log(v46, v47);
          v20 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
          if (v20)
          {
            v49 = gckWaitForString(*v45);
            v50 = *(v15 + 88);
            v51 = *(v15 + 72);
            *buf = 136315906;
            *v223 = v49;
            *&v223[8] = 1024;
            *&v223[10] = v50;
            *&v223[14] = 1024;
            *&v223[16] = v51;
            *&v223[20] = 1024;
            *&v223[22] = v7;
            _os_log_impl(&dword_239FB7000, v48, OS_LOG_TYPE_DEFAULT, "Sent %s packet to participant %08X on channel %d with error %d.", buf, 0x1Eu);
          }

          if (v7 < 0)
          {
            if (v7 == -1072037876)
            {
              *(v45 + 4) = v12 + *(v45 + 4) - *(v45 + 2) + 0.5;
              *(v45 + 2) = v17;
              v7 = -1072037876;
              goto LABEL_70;
            }

            if (v7 != -1072037833)
            {
              v55 = *v45;
              if (v55 != 8 && v55 != 1 || !*(v15 + 80))
              {
                *v44 = *(v45 + 8);
                free(*(v45 + 5));
                free(v45);
                v110 = gcks_log(v108, v109);
                if (!os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_265;
                }

                *buf = 67109120;
                *v223 = v7;
                v111 = v110;
                v112 = "Send UDP packet failed with error (%X).";
LABEL_156:
                v113 = 8;
                goto LABEL_264;
              }

              v56 = gcks_log(v20, v21);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                v57 = gckWaitForString(*v45);
                v58 = *(v15 + 88);
                v59 = *(v15 + 72);
                *buf = 136315650;
                *v223 = v57;
                *&v223[8] = 1024;
                *&v223[10] = v58;
                *&v223[14] = 1024;
                *&v223[16] = v59;
                _os_log_impl(&dword_239FB7000, v56, OS_LOG_TYPE_DEFAULT, "Failed to send %s packet to participant %08X. Will mark channel %d as invalid.", buf, 0x18u);
              }

              *(v15 + 80) = -1;
            }
          }

          if (*v45 == 1 && *(v45 + 6))
          {
            v20 = arc4random();
            *(v45 + 2) = v16 + vcvtd_n_f64_u32(v20 & 0x7FFFFFFF, 0x1FuLL) * 0.005;
            *(v45 + 4) = v12 + *(v45 + 4);
            --*(v45 + 6);
          }

          else
          {
            *(v45 + 6) = 0;
            v53 = v12 + *(v45 + 1);
            v20 = arc4random();
            *(v45 + 4) = v12 + *(v45 + 4);
            v54 = *(v45 + 1) + *(v45 + 1);
            *(v45 + 1) = v54;
            *(v45 + 2) = v53 + vcvtd_n_f64_u32(v20 & 0x7FFFFFFF, 0x1FuLL) * 0.02;
            if (v54 > 1.0)
            {
              v20 = arc4random();
              *(v45 + 1) = vcvtd_n_f64_u32(v20 & 0x7FFFFFFF, 0x1FuLL) * 0.02 + 1.0;
            }
          }

          goto LABEL_70;
        }

LABEL_267:
        v155 = *(v15 + 8);
        if (!*(v15 + 56) || v155 != 0.0)
        {
          goto LABEL_282;
        }

        v156 = *v209;
        if (*v209)
        {
          break;
        }

LABEL_281:
        *(v15 + 600) = 0;
        pthread_mutex_unlock((v15 + 768));
        v19 = v210;
        *v210 = *(v15 + 832);
        gckSessionFreeCList(v15, v162);
        v14 = v211;
LABEL_295:
        v15 = *v19;
        if (!*v19)
        {
          goto LABEL_298;
        }
      }

      v157 = *v209;
      while (1)
      {
        v158 = *v157;
        v159 = v158 == 8 || v158 == 1;
        if (!v159)
        {
          break;
        }

        v157 = *(v157 + 8);
        if (!v157)
        {
          if (v156)
          {
            do
            {
              v160 = *(v156 + 8);
              v161 = *(v156 + 5);
              if (v161)
              {
                free(v161);
              }

              free(v156);
              v156 = v160;
            }

            while (v160);
          }

          goto LABEL_281;
        }
      }

LABEL_282:
      if (v155 == 0.0 || v155 > micro())
      {
        v163 = pthread_mutex_unlock((v15 + 768));
        if (*(v15 + 376) == 4)
        {
          v165 = gcks_log(v163, v164);
          if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
          {
            v166 = *v15;
            v167 = *(v15 + 72);
            v168 = *(v15 + 88);
            *buf = 67109632;
            *v223 = v166;
            *&v223[4] = 1024;
            *&v223[6] = v167;
            *&v223[10] = 1024;
            *&v223[12] = v168;
            _os_log_impl(&dword_239FB7000, v165, OS_LOG_TYPE_DEFAULT, "Don't read from socket %d channel %d for disconnected participant %08X.", buf, 0x14u);
          }
        }

        else
        {
          v169 = *v15;
          if (__darwin_check_fd_set_overflow(*v15, &v215, 0))
          {
            *(v215.fds_bits + ((v169 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v169;
          }
        }

        v19 = (v15 + 832);
        if (*v15 <= v211)
        {
          v14 = v211;
        }

        else
        {
          v14 = *v15;
        }
      }

      else
      {
        v170 = pthread_mutex_unlock((v15 + 768));
        v172 = gcks_log(v170, v171);
        v14 = v211;
        if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
        {
          v174 = *(v15 + 88);
          v175 = *(v15 + 72);
          *buf = 67109376;
          *v223 = v174;
          *&v223[4] = 1024;
          *&v223[6] = v175;
          _os_log_impl(&dword_239FB7000, v172, OS_LOG_TYPE_DEFAULT, "Closing connection to participant [%08X] on channel [%d].", buf, 0xEu);
        }

        v19 = v210;
        *v210 = *(v15 + 832);
        gckSessionFreeCList(v15, v173);
      }

      goto LABEL_295;
    }

    v18 = v207;
LABEL_298:
    pthread_rwlock_unlock((v3 + 7192));
    v178 = v18 - v12;
    if (v178 > 0.0)
    {
      v179 = dispatch_time(0, (v178 * 1000000000.0));
      dispatch_source_set_timer(source, v179, 0xFFFFFFFFFFFFFFFFLL, (v178 / 10.0 * 1000000000.0));
      dispatch_resume(source);
      v214.tv_sec = v178;
      v214.tv_usec = ((v178 - v178) * 1000000.0);
      v180 = select(v14 + 1, &v215, 0, 0, &v214);
      dispatch_suspend(source);
      v181 = micro();
      if (v180 == -1)
      {
        if (*__error() != 9)
        {
          v195 = __error();
          v7 = *v195 | 0xC01A0000;
          v197 = gcks_log(v195, v196);
          v198 = os_log_type_enabled(v197, OS_LOG_TYPE_ERROR);
          if (v198)
          {
            gckSessionRecvProc_cold_1();
          }

          goto LABEL_336;
        }
      }

      else
      {
        v182 = v181;
        if (v180)
        {
          gettimeofday(&v213, 0);
        }

        if (v182 > v18)
        {
          v207 = micro() + 30.0;
        }

        if (v180)
        {
          v183 = *(v3 + 16);
          if (v183 != -1)
          {
            if (__darwin_check_fd_set_overflow(*(v3 + 16), &v215, 0))
            {
              if ((*(v215.fds_bits + ((v183 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v183))
              {
                v184 = close(*(v3 + 16));
                *(v3 + 16) = -1;
                v186 = gcks_log(v184, v185);
                if (os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_239FB7000, v186, OS_LOG_TYPE_DEFAULT, "Read condition for pGCKSession->sReset.", buf, 2u);
                }
              }
            }
          }

          pthread_rwlock_rdlock((v3 + 7192));
          for (k = *v208; k; k = *(k + 832))
          {
            v188 = *k;
            if (__darwin_check_fd_set_overflow(*k, &v215, 0) && ((*(v215.fds_bits + ((v188 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v188) & 1) != 0)
            {
              v214.tv_sec = 0;
              v214.tv_usec = 0;
              do
              {
                v189 = *k;
                if (!__darwin_check_fd_set_overflow(*k, &v215, 0) || ((*(v215.fds_bits + ((v189 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v189) & 1) == 0)
                {
                  break;
                }

                micro();
                v190 = gckSessionRecvMessage(v3);
                if ((v190 & 0x80000000) != 0 && (v190 == -1072037831 || v190 == -2145779679))
                {
                  v192 = gcks_log(v190, v191);
                  if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
                  {
                    v193 = *k;
                    *buf = 67109120;
                    *v223 = v193;
                    _os_log_impl(&dword_239FB7000, v192, OS_LOG_TYPE_DEFAULT, "Socket %d is no longer connected.", buf, 8u);
                  }

                  pthread_mutex_lock((k + 768));
                  gckSessionChangeStateCList(v3);
                  pthread_mutex_unlock((k + 768));
                  break;
                }
              }

              while (select(v14 + 1, &v215, 0, 0, &v214) > 0);
            }
          }

LABEL_303:
          pthread_rwlock_unlock((v3 + 7192));
        }
      }
    }
  }

  v201 = __error();
  v7 = *v201 | 0xC01A0000;
  v203 = gcks_log(v201, v202);
  v200 = source;
  if (os_log_type_enabled(v203, OS_LOG_TYPE_ERROR))
  {
    gckSessionRecvProc_cold_2();
  }

  v198 = pthread_rwlock_unlock((v3 + 7192));
LABEL_340:
  v204 = gcks_log(v198, v199);
  if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *v223 = v7;
    _os_log_impl(&dword_239FB7000, v204, OS_LOG_TYPE_DEFAULT, "RecvProc thread end (%X).", buf, 8u);
  }

  *(v3 + 7512) = 1;
  dispatch_resume(v200);
  dispatch_source_cancel(v200);
  dispatch_release(v200);
  CheckOutHandleDebug();
  return v7;
}

uint64_t gckSessionSendProc(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  pthread_setname_np("com.apple.multipeerconnectivity.gcksession.sendproc");
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return -2145779710;
  }

  v3 = v1;
  v14.tv_sec = 0;
  for (*&v14.tv_usec = 0; !*(v3 + 4); v1 = select(0, 0, 0, 0, &v14))
  {
    v4 = *(v3 + 408);
    if (v4 && *(v4 + 24))
    {
      pthread_mutex_lock((v3 + 7080));
      v5 = *(v3 + 408);
      v6 = *(v5 + 168);
      if (v6 <= 0)
      {
        pthread_mutex_unlock((v3 + 7080));
      }

      else
      {
        v7 = 0;
        do
        {
          if (v6 <= 0x10)
          {
            *&buf[4 * v7++] = *(v5 + 172 + 4 * (v6 - 1));
            v6 = *(v5 + 168);
          }

          v8 = __OFSUB__(v6--, 1);
          *(v5 + 168) = v6;
        }

        while (!((v6 < 0) ^ v8 | (v6 == 0)));
        pthread_mutex_unlock((v3 + 7080));
        if (v7 >= 1)
        {
          v9 = v7;
          v10 = buf;
          do
          {
            HIDWORD(v13) = 1;
            BYTE2(v13) = 0;
            LOWORD(v13) = 0;
            (*(*(v3 + 408) + 24))(*(*(v3 + 408) + 32), v10, 0xFFFFFFFFLL, 0, 0, 0, 0, 0, v13);
            v10 += 4;
            --v9;
          }

          while (v9);
        }
      }

      HIDWORD(v13) = 1;
      BYTE2(v13) = 0;
      LOWORD(v13) = 0;
      (*(*(v3 + 408) + 24))(*(*(v3 + 408) + 32), 0, 0, 0, 0, 0, 0, 0, v13);
    }

    v14.tv_sec = 0;
    v14.tv_usec = 25000;
  }

  v11 = gcks_log(v1, v2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v16 = 0;
    _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "SendProc thread end (%X).", buf, 8u);
  }

  *(v3 + 7516) = 1;
  CheckOutHandleDebug();
  return 0;
}

uint64_t gckSessionDisposeAllConnections(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  pthread_rwlock_wrlock((a1 + 7192));
  v2 = pthread_mutex_lock((a1 + 7080));
  v4 = *(a1 + 708);
  v5 = a1 + 712;
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = gcks_log(v2, v3);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v5 + 8 * i);
        *buf = 67109120;
        *&buf[4] = v8;
        _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Disposing connection to participant %08X. Stop ICE check.", buf, 8u);
      }

      v2 = ICEStopConnectivityCheck();
      v3 = *(v5 + 8 * i);
      v9 = *(a1 + 420);
      v10 = (a1 + 424);
      if (v9 < 1)
      {
LABEL_8:
        gckSessionDisconnectParticipant(a1, v3, 0, 0, 1);
      }

      else
      {
        while (*v10 != v3)
        {
          v10 += 104;
          if (!--v9)
          {
            goto LABEL_8;
          }
        }
      }
    }
  }

  if (v4)
  {
    gckSessionCancelRecvUDPInternal(a1);
  }

  memcpy(buf, (a1 + 424), sizeof(buf));
  *&buf[284] = 0;
  gckSessionRequestLSAUpdateForNode(buf, v11);
  gckSessionSendLSA(a1, 1, buf, -1, 1);
  while (1)
  {
    v12 = *(a1 + 708);
    if (!v12)
    {
      break;
    }

    gckSessionDeleteNeighbor(a1, (v5 + 8 * v12 - 8));
  }

  *(a1 + 696) = *&buf[272];
  gckSessionUpdateRoutingTable(a1);
  gckSessionHandleRemainingDisconnectedNodes(a1);
  pthread_mutex_unlock((a1 + 7080));
  return pthread_rwlock_unlock((a1 + 7192));
}

void gckSessionFreeCList(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = gcks_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 88);
    v5 = *(a1 + 72);
    v13[0] = 67109376;
    v13[1] = v4;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Closing clist for participant [%08X] channel [%d].", v13, 0xEu);
  }

  pthread_mutex_lock((a1 + 768));
  v6 = *(a1 + 632);
  if (v6)
  {
    SSLClose(v6);
    CFRelease(*(a1 + 632));
    *(a1 + 632) = 0;
  }

  pthread_mutex_unlock((a1 + 768));
  v7 = *(a1 + 648);
  if (v7)
  {
    _Block_release(v7);
    *(a1 + 648) = 0;
  }

  v8 = *(a1 + 656);
  if (v8)
  {
    do
    {
      v9 = v8[525];
      free(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = *(a1 + 600);
  if (v10)
  {
    do
    {
      v11 = v10[8];
      v12 = v10[5];
      if (v12)
      {
        free(v12);
      }

      free(v10);
      v10 = v11;
    }

    while (v11);
  }

  close(*a1);
  pthread_mutex_destroy((a1 + 768));
  free(*(a1 + 688));
  free(a1);
}

uint64_t GCKSessionPrepareConnection(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v152 = *MEMORY[0x277D85DE8];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149187586;
  }

  v6 = v5;
  v124 = -2145779690;
  v128 = 0;
  *(v5 + 64) = 0;
  v7 = micro();
  v8 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 0x40000000;
  aBlock[2] = __GCKSessionPrepareConnection_block_invoke;
  aBlock[3] = &__block_descriptor_tmp;
  aBlock[4] = v8;
  v9 = _Block_copy(aBlock);
  v10 = pthread_mutex_lock((v6 + 80));
  v12 = 0;
  v13 = (v6 + 152);
  v14 = 16;
  do
  {
    if (*(v13 - 2) == v4 && *v13)
    {
      pthread_mutex_unlock((v6 + 80));
      dispatch_release(v8);
      v21 = gcks_log(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *&buf[0].sa_len = 67109120;
        *&buf[0].sa_data[2] = v4;
        _os_log_impl(&dword_239FB7000, v21, OS_LOG_TYPE_DEFAULT, "Another PrepareConnection is already waiting for participant [%08X], bailing.", &buf[0].sa_len, 8u);
      }

      goto LABEL_133;
    }

    if (v14 == 16)
    {
      if (*v13)
      {
        v14 = 16;
      }

      else
      {
        v14 = v12;
      }
    }

    ++v12;
    v13 += 2;
  }

  while (v12 != 16);
  if (v14 == 16)
  {
    pthread_mutex_unlock((v6 + 80));
    dispatch_release(v8);
    v17 = gcks_log(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *&buf[0].sa_len = 67109120;
      *&buf[0].sa_data[2] = v4;
      _os_log_impl(&dword_239FB7000, v17, OS_LOG_TYPE_DEFAULT, "No empty signal block slot for participant [%08X].", &buf[0].sa_len, 8u);
    }

    goto LABEL_133;
  }

  v22 = gcks_log(v10, v11);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *&buf[0].sa_len = 67109376;
    *&buf[0].sa_data[2] = v4;
    *&buf[0].sa_data[6] = 1024;
    *&buf[0].sa_data[8] = v14;
    _os_log_impl(&dword_239FB7000, v22, OS_LOG_TYPE_DEFAULT, "Insert signal block for participant [%08X] at slot %d.", &buf[0].sa_len, 0xEu);
  }

  v23 = v6 + 144 + 16 * v14;
  *v23 = v4;
  *(v23 + 8) = v9;
  pthread_mutex_unlock((v6 + 80));
  if (ICEStopConnectivityCheck() == -2146107370)
  {
    gckCallICEListRemoveSignalBlock(v6, v4);
    v24 = 0;
  }

  else
  {
    gckSessionCancelRecvUDPInternal(v6);
    pthread_rwlock_wrlock((v6 + 7192));
    v26 = *(v6 + 7184);
    if (v26)
    {
      v27 = (v6 + 7184);
      do
      {
        if (*(v26 + 88) == v4)
        {
          *v27 = *(v26 + 832);
          gckSessionFreeCList(v26, v25);
        }

        else
        {
          v27 = (v26 + 832);
        }

        v26 = *v27;
      }

      while (*v27);
    }

    pthread_rwlock_unlock((v6 + 7192));
    global_queue = dispatch_get_global_queue(2, 0);
    v29 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, global_queue);
    v24 = v29;
    if (v29)
    {
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 0x40000000;
      handler[2] = __GCKSessionPrepareConnection_block_invoke_11;
      handler[3] = &__block_descriptor_tmp_12;
      v126 = v4;
      handler[4] = v6;
      dispatch_source_set_event_handler(v29, handler);
      v30 = dispatch_time(0, 10000000000);
      dispatch_source_set_timer(v24, v30, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(v24);
    }
  }

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v8);
  if (v24)
  {
    dispatch_source_cancel(v24);
    dispatch_release(v24);
  }

  v31 = micro();
  v34 = gcks_log(v32, v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *&buf[0].sa_len = 134218240;
    *&buf[0].sa_data[2] = v31 - v7;
    *&buf[0].sa_data[10] = 1024;
    *&buf[0].sa_data[12] = v4;
    _os_log_impl(&dword_239FB7000, v34, OS_LOG_TYPE_DEFAULT, "ICE StopConnectivityCheck took (%0.6f seconds) for participant [%08X].", &buf[0].sa_len, 0x12u);
  }

  LocalInterfaceListWithOptions = GetLocalInterfaceListWithOptions();
  if (!LocalInterfaceListWithOptions)
  {
    v112 = FreeLocalInterfaceList();
    v114 = gcks_log(v112, v113);
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      GCKSessionPrepareConnection_cold_5();
    }

    goto LABEL_133;
  }

  v37 = LocalInterfaceListWithOptions;
  v38 = gcks_log(LocalInterfaceListWithOptions, v36);
  v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
  if (v39)
  {
    *&buf[0].sa_len = 67109376;
    *&buf[0].sa_data[2] = v37;
    *&buf[0].sa_data[6] = 1024;
    *&buf[0].sa_data[8] = v4;
    _os_log_impl(&dword_239FB7000, v38, OS_LOG_TYPE_DEFAULT, "%d interfaces found for participant [%08X].", &buf[0].sa_len, 0xEu);
  }

  if (v37 < 1)
  {
    v123 = 0;
    goto LABEL_125;
  }

  v41 = 0;
  v123 = 0;
  v42 = v37;
  v122 = 1;
  do
  {
    while (1)
    {
      if ((*(v128 + 40 * v41 + 1) & 1) != 0 && *(v6 + 7536))
      {
        v43 = gcks_log(v39, v40);
        v39 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
        if (v39)
        {
          v44 = IPPORTToString();
          *v150 = 136315138;
          v151 = v44;
          _os_log_impl(&dword_239FB7000, v43, OS_LOG_TYPE_DEFAULT, "AWDL is disabled. Will not create socket for %s.", v150, 0xCu);
        }

        goto LABEL_60;
      }

      v45 = if_nametoindex((v128 + 40 * v41 + 4));
      v46 = v128;
      v47 = *(v6 + 400);
      v149 = 0;
      v136 = 0;
      memset(&v135, 0, sizeof(v135));
      v134 = 0;
      memset(buf, 0, sizeof(buf));
      v48 = malloc_type_calloc(1uLL, 0x348uLL, 0x10B0040FFDF9BCEuLL);
      if (!v48)
      {
        break;
      }

      v50 = v48;
      v51 = v46 + 40 * v41;
      v48[22] = v4;
      v48[18] = v47;
      *(v48 + 10) = -1;
      v48[94] = 0;
      v52 = *v51;
      v53 = *(v51 + 16);
      *(v48 + 52) = *(v51 + 32);
      *(v48 + 24) = v52;
      *(v48 + 25) = v53;
      v54 = *v51;
      if (*v51)
      {
        ai_family = 30;
      }

      else
      {
        ai_family = 2;
      }

      memset(&v135.ai_socktype, 0, 40);
      v135.ai_flags = 5;
      v135.ai_family = ai_family;
      v135.ai_socktype = 2;
      if (v54)
      {
        if (*(v51 + 20) != *MEMORY[0x277D85EE8] || *(v51 + 28) != *(MEMORY[0x277D85EE8] + 8))
        {
LABEL_47:
          v56 = IPToString();
          goto LABEL_56;
        }
      }

      else if (*(v51 + 20))
      {
        goto LABEL_47;
      }

      v56 = 0;
LABEL_56:
      __sprintf_chk(v137, 0, 6uLL, "%u", *(v51 + 36));
      v59 = getaddrinfo(v56, v137, &v135, &v134);
      if (v59)
      {
        v61 = v59;
        v62 = gcks_log(v59, v60);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *v140 = 67109120;
          *&v140[4] = v61 | 0xB01A0000;
          _os_log_error_impl(&dword_239FB7000, v62, OS_LOG_TYPE_ERROR, "Getaddrinfo failed (%X).", v140, 8u);
        }

LABEL_59:
        free(v50);
        goto LABEL_60;
      }

      v63 = v134;
      if (!v134)
      {
        v65 = gcks_log(v59, v60);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          GCKSessionPrepareConnection_cold_2(&v132, v133);
        }

        goto LABEL_59;
      }

      v64 = v134;
      while (v64->ai_family != ai_family)
      {
        v64 = v64->ai_next;
        if (!v64)
        {
          ai_family = v134->ai_family;
          goto LABEL_70;
        }
      }

      v63 = v64;
LABEL_70:
      v66 = socket(ai_family, v63->ai_socktype, v63->ai_protocol);
      *v50 = v66;
      if (v66 == -1)
      {
        v70 = __error();
        v71 = *v70;
        v73 = gcks_log(v70, v72);
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          *v140 = 67109120;
          *&v140[4] = v71 | 0xC00F0000;
          _os_log_error_impl(&dword_239FB7000, v73, OS_LOG_TYPE_ERROR, "Socket failed (%X).", v140, 8u);
        }

        freeaddrinfo(v134);
        goto LABEL_59;
      }

      v131 = 1;
      if (v54)
      {
        setsockopt(v66, 41, 27, &v131, 4u);
        if (*(v51 + 1))
        {
          *v140 = 1;
          setsockopt(*v50, 0xFFFF, 4356, v140, 4u);
        }

        v67 = *v50;
        v68 = 41;
        v69 = 61;
      }

      else
      {
        *v140 = if_nametoindex((v51 + 4));
        setsockopt(*v50, 0, 25, v140, 4u);
        setsockopt(*v50, 0, 7, &v131, 4u);
        v67 = *v50;
        v68 = 0;
        v69 = 20;
      }

      setsockopt(v67, v68, v69, &v131, 4u);
      v130 = 1;
      setsockopt(*v50, 0xFFFF, 4130, &v130, 4u);
      v129 = 500;
      setsockopt(*v50, 0xFFFF, 4230, &v129, 4u);
      ai_addr = v63->ai_addr;
      v75 = 16402;
      do
      {
        *ai_addr->sa_data = bswap32(v75) >> 16;
        if (!bind(*v50, v63->ai_addr, v63->ai_addrlen))
        {
          freeaddrinfo(v134);
          goto LABEL_86;
        }

        --v75;
      }

      while (v75 >= 0x4000u);
      *ai_addr->sa_data = 0;
      v76 = bind(*v50, v63->ai_addr, v63->ai_addrlen);
      freeaddrinfo(v134);
      if (v76)
      {
        v77 = __error();
        v78 = *v77;
        v80 = gcks_log(v77, v79);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          *v140 = 67109120;
          *&v140[4] = v78 | 0xC00F0000;
          v81 = v80;
          v82 = "Bind failed (%X) for all ports in range.";
          goto LABEL_97;
        }

        goto LABEL_93;
      }

LABEL_86:
      v136 = 128;
      if (getsockname(*v50, buf, &v136) == -1)
      {
        v91 = __error();
        v92 = *v91;
        v94 = gcks_log(v91, v93);
        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          *v140 = 67109120;
          *&v140[4] = v92 | 0xC01A0000;
          v81 = v94;
          v82 = "Getsockname failed (%X).";
LABEL_97:
          _os_log_error_impl(&dword_239FB7000, v81, OS_LOG_TYPE_ERROR, v82, v140, 8u);
        }

LABEL_93:
        close(*v50);
        free(v50);
        goto LABEL_60;
      }

      v83 = SAToIPPORT();
      *(v50 + 210) = WORD2(v149);
      v85 = gcks_log(v83, v84);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        v86 = IPPORTToString();
        v87 = *v50;
        *v140 = 67109890;
        *&v140[4] = v4;
        *v141 = 2080;
        *&v141[2] = v86;
        v142 = 2080;
        v143 = v50 + 97;
        v144 = 1024;
        v145 = v87;
        _os_log_impl(&dword_239FB7000, v85, OS_LOG_TYPE_DEFAULT, "For remoteID[%08X]: Start listening on %s (%s) sock %d.", v140, 0x22u);
      }

      *(v50 + 46) = 0;
      *v140 = 0;
      *v141 = 0;
      v88 = pthread_mutexattr_init(v140);
      if (v88)
      {
        v90 = gcks_log(v88, v89);
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          GCKSessionPrepareConnection_cold_1(v138, v139);
        }

        goto LABEL_93;
      }

      pthread_mutexattr_settype(v140, 2);
      pthread_mutex_init(v50 + 12, v140);
      pthread_mutexattr_destroy(v140);
      *(v50 + 86) = malloc_type_calloc(0x10uLL, 0x1A0uLL, 0x10000405F3595DEuLL);
      *(v50 + 45) = 0x404DFEB851EB851FLL;
      *(v50 + 44) = *(v6 + 24);
      v50[19] = v45;
      v95 = ICEAddOneInterface();
      if ((v95 & 0x80000000) != 0)
      {
        gckSessionFreeCList(v50, v96);
        goto LABEL_60;
      }

      v97 = gcks_log(v95, v96);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        *&buf[0].sa_len = 67109376;
        *&buf[0].sa_data[2] = v4;
        *&buf[0].sa_data[6] = 1024;
        *&buf[0].sa_data[8] = 6;
        _os_log_impl(&dword_239FB7000, v97, OS_LOG_TYPE_DEFAULT, "Added interface for participant [%08X]: proto %d.", &buf[0].sa_len, 0xEu);
      }

      pthread_rwlock_wrlock((v6 + 7192));
      v98 = (v6 + 7184);
      do
      {
        v99 = v98;
        v100 = *v98;
        v98 = (*v98 + 208);
      }

      while (v100);
      *v99 = v50;
      v101 = pthread_mutex_lock(v50 + 12);
      if (*(v6 + 7544))
      {
        v103 = 13.0;
      }

      else
      {
        v103 = 1.0;
      }

      v104 = *(v50 + 75);
      if (v104)
      {
        while (1)
        {
          v105 = v104;
          if (*v104 == 12)
          {
            break;
          }

          v104 = *(v104 + 64);
          if (!v104)
          {
            v106 = (v105 + 64);
            goto LABEL_110;
          }
        }

        *(v104 + 8) = v103;
        *(v104 + 16) = 0;
        *(v104 + 32) = 0x4024000000000000;
        *(v104 + 52) = v50[22];
      }

      else
      {
        v106 = (v50 + 150);
LABEL_110:
        v101 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
        *v101 = 12;
        *(v101 + 8) = v103;
        *(v101 + 16) = 0;
        *(v101 + 32) = 0x4024000000000000;
        *(v101 + 52) = v50[22];
        *v106 = v101;
      }

      v107 = gcks_log(v101, v102);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        v108 = v50[22];
        v109 = v50[18];
        *&buf[0].sa_len = 67109376;
        *&buf[0].sa_data[2] = v108;
        *&buf[0].sa_data[6] = 1024;
        *&buf[0].sa_data[8] = v109;
        _os_log_impl(&dword_239FB7000, v107, OS_LOG_TYPE_DEFAULT, "Scheduling ICE connection timeout for participant [%08X] on channel [%d].", &buf[0].sa_len, 0xEu);
      }

      pthread_mutex_unlock(v50 + 12);
      v110 = *(v6 + 16);
      if (v110 != -1)
      {
        *(v6 + 16) = -1;
        close(v110);
      }

      v39 = pthread_rwlock_unlock((v6 + 7192));
      ++*(v6 + 400);
      v122 = 0;
      ++v123;
      if (++v41 == v42)
      {
        goto LABEL_119;
      }
    }

    v57 = gcks_log(0, v49);
    v39 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
    if (v39)
    {
      GCKSessionPrepareConnection_cold_3(v146, v147);
    }

LABEL_60:
    ++v41;
  }

  while (v41 != v42);
  if (v122)
  {
    goto LABEL_125;
  }

LABEL_119:
  pthread_rwlock_rdlock((v6 + 7192));
  v111 = *(v6 + 16);
  if (v111 != -1)
  {
    *(v6 + 16) = -1;
    close(v111);
  }

  pthread_rwlock_unlock((v6 + 7192));
LABEL_125:
  v115 = FreeLocalInterfaceList();
  v117 = gcks_log(v115, v116);
  if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
  {
    *&buf[0].sa_len = 67109376;
    *&buf[0].sa_data[2] = v123;
    *&buf[0].sa_data[6] = 1024;
    *&buf[0].sa_data[8] = v4;
    _os_log_impl(&dword_239FB7000, v117, OS_LOG_TYPE_DEFAULT, "%d valid interfaces found for participant [%08X].", &buf[0].sa_len, 0xEu);
  }

  if (v123)
  {
    v118 = ICEGetCandidates();
    if ((v118 & 0x80000000) != 0)
    {
      v124 = v118;
      v120 = gcks_log(v118, v119);
      if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
      {
        GCKSessionPrepareConnection_cold_4();
      }
    }

    else
    {
      v124 = 0;
    }
  }

LABEL_133:
  CheckOutHandleDebug();
  return v124;
}

void gckCallICEListRemoveSignalBlock(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = pthread_mutex_lock((a1 + 80));
  v6 = 0;
  v7 = (a1 + 152);
  while (*(v7 - 2) != a2 || !*v7)
  {
    ++v6;
    v7 += 2;
    if (v6 == 16)
    {
      v8 = pthread_mutex_unlock((a1 + 80));
      goto LABEL_6;
    }
  }

  v11 = gcks_log(v4, v5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109376;
    v14 = a2;
    v15 = 1024;
    v16 = v6;
    _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "Remove signal block for participant [%08X] at slot %d.", &v13, 0xEu);
  }

  v12 = *v7;
  *v7 = 0;
  *(v7 - 2) = -1;
  v8 = pthread_mutex_unlock((a1 + 80));
  if (v12)
  {
    v12[2](v12);
    _Block_release(v12);
    return;
  }

LABEL_6:
  v10 = gcks_log(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109120;
    v14 = a2;
    _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "No signal block found for participant [%08X].", &v13, 8u);
  }
}

uint64_t gckSessionCancelRecvUDPInternal(uint64_t a1)
{
  if (!a1)
  {
    return 2149187588;
  }

  pthread_mutex_lock((a1 + 7400));
  *(a1 + 8) = 1;
  pthread_cond_broadcast((a1 + 7464));
  pthread_mutex_unlock((a1 + 7400));
  return 0;
}

void __GCKSessionPrepareConnection_block_invoke_11(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = gcks_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "ICE connectivity check failsafe timer for participant [%08X] fired!", v5, 8u);
  }

  gckCallICEListRemoveSignalBlock(*(a1 + 32), *(a1 + 40));
}

uint64_t GCKSessionCertificateDecision(uint64_t a1, uint64_t a2, int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149187586;
  }

  v6 = v5;
  pthread_rwlock_rdlock((v5 + 7192));
  v7 = *(v6 + 7184);
  if (v7)
  {
    v8 = 0;
    v9 = *(v6 + 7184);
    do
    {
      if (*(v9 + 88) == a2)
      {
        v10 = *(v9 + 80);
        if (v10 >= v8)
        {
          v8 = v10 + 1;
        }
      }

      v9 = *(v9 + 832);
    }

    while (v9);
    v11 = 0;
    do
    {
      if (*(v7 + 88) == a2)
      {
        v12 = pthread_mutex_lock((v7 + 768));
        if (*(v7 + 628) == 1 && *(v7 + 648))
        {
          if (a3)
          {
            v14 = gcks_log(v12, v13);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = *(v7 + 88);
              v16 = *(v7 + 72);
              v17 = *(v7 + 632);
              v20[0] = 67109888;
              v20[1] = v15;
              v21 = 1024;
              v22 = v16;
              v23 = 2048;
              v24 = v17;
              v25 = 2048;
              v26 = v7;
              _os_log_impl(&dword_239FB7000, v14, OS_LOG_TYPE_DEFAULT, "Starting OSPF Hello protocol with participant [%08X] channelID [%d] DTLS context [%p] pCList [%p].", v20, 0x22u);
            }

            *(v7 + 80) = v8;
            *(v7 + 84) = v8++;
            v18 = _Block_copy(*(v7 + 648));
            v11 = 1;
          }

          else
          {
            gckSessionChangeStateCList(v6);
            v18 = 0;
          }

          *(v7 + 628) = 0;
          _Block_release(*(v7 + 648));
          *(v7 + 648) = 0;
          pthread_mutex_unlock((v7 + 768));
          if (v18)
          {
            v18[2](v18);
            _Block_release(v18);
          }
        }

        else
        {
          if (!a3)
          {
            gckSessionChangeStateCList(v6);
          }

          pthread_mutex_unlock((v7 + 768));
        }
      }

      v7 = *(v7 + 832);
    }

    while (v7);
    if (v11)
    {
      gckSessionReconcileChannelPriority(v6, a2);
    }
  }

  pthread_rwlock_unlock((v6 + 7192));
  CheckOutHandleDebug();
  return 0;
}

uint64_t gckSessionChangeStateCList(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = v2;
  v6 = v1;
  v110 = *MEMORY[0x277D85DE8];
  result = 2149187628;
  v8 = *(v2 + 376);
  v9 = 4;
  if (v3 <= 1)
  {
    if (!v3)
    {
      if (v8)
      {
        return result;
      }

      *(v2 + 696) = micro();
      v9 = 1;
LABEL_22:
      v11 = gcks_log(result, v2);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_54;
      }

      if (v8 > 2)
      {
        if (v8 == 3)
        {
          v12 = "Connected";
          goto LABEL_39;
        }

        if (v8 != 4)
        {
          if (v8 == 255)
          {
            v12 = "Invalid";
            goto LABEL_39;
          }

          goto LABEL_36;
        }

        v12 = "Disconnected";
      }

      else
      {
        if (!v8)
        {
          v12 = "Created";
          goto LABEL_39;
        }

        if (v8 != 1)
        {
          if (v8 == 2)
          {
            v12 = "Connecting";
            goto LABEL_39;
          }

LABEL_36:
          v12 = "?";
          goto LABEL_39;
        }

        v12 = "ICE";
      }

LABEL_39:
      v13 = v5[22];
      v14 = v5[18];
      v15 = off_278B44388[v4];
      if (v9 > 2)
      {
        switch(v9)
        {
          case 3:
            v16 = "Connected";
            goto LABEL_53;
          case 4:
            v16 = "Disconnected";
            goto LABEL_53;
          case 255:
            v16 = "Invalid";
            goto LABEL_53;
        }
      }

      else
      {
        switch(v9)
        {
          case 0:
            v16 = "Created";
            goto LABEL_53;
          case 1:
            v16 = "ICE";
            goto LABEL_53;
          case 2:
            v16 = "Connecting";
LABEL_53:
            *buf = 67110146;
            *v104 = v13;
            *&v104[4] = 1024;
            *&v104[6] = v14;
            *v105 = 2080;
            *&v105[2] = v15;
            v106 = 2080;
            v107 = v12;
            v108 = 2080;
            v109 = v16;
            _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "Participant %08X, channel [%d]: State Change with event %s: %s -> %s.", buf, 0x2Cu);
LABEL_54:
            v5[94] = v9;
            if (v9 == 3)
            {
              InterfacePriorityForCList = gckSessionGetInterfacePriorityForCList(v6, v5);
              if ((InterfacePriorityForCList - 3) >= 5)
              {
                v39 = InterfacePriorityForCList;
                v40 = gcks_log(InterfacePriorityForCList, v37);
                v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
                v38 = 0;
                if (v41)
                {
                  *buf = 67109120;
                  *v104 = v39;
                  _os_log_impl(&dword_239FB7000, v40, OS_LOG_TYPE_DEFAULT, "Unexpected interface interface priority [%d].", buf, 8u);
                  v38 = 0;
                }
              }

              else
              {
                v38 = dword_239FEC398[(InterfacePriorityForCList - 3)];
              }

              v5[95] = v38;
              gckSessionReconcileChannelPriority(v6, v5[22]);
              return 0;
            }

            if (v9 != 4)
            {
              return 0;
            }

            v17 = pthread_mutex_lock((v6 + 7080));
            if ((v8 & 0xFFFFFFFE) == 2 && !v5[20])
            {
              v46 = gcks_log(v17, v18);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                v47 = v5[18];
                v48 = v5[22];
                *buf = 67109376;
                *v104 = v47;
                *&v104[4] = 1024;
                *&v104[6] = v48;
                _os_log_impl(&dword_239FB7000, v46, OS_LOG_TYPE_DEFAULT, "The disconnected channel [%d] was the active channel for participant [%08X].", buf, 0xEu);
              }

              v101 = 1;
            }

            else
            {
              v101 = 0;
            }

            v5[20] = -1;
            gckSessionReconcileChannelPriority(v6, v5[22]);
            v21 = *(v6 + 7184);
            if (v21)
            {
              v22 = 0;
              v23 = 0;
              v24 = 0;
              do
              {
                if (v21 != v5 && *(v21 + 88) == v5[22])
                {
                  v25 = *(v21 + 376);
                  switch(v25)
                  {
                    case 3:
                      if (!*(v21 + 80))
                      {
                        v32 = gcks_log(v19, v20);
                        v19 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
                        if (v19)
                        {
                          v33 = *(v21 + 72);
                          v34 = *(v21 + 88);
                          *buf = 67109376;
                          *v104 = v33;
                          *&v104[4] = 1024;
                          *&v104[6] = v34;
                          _os_log_impl(&dword_239FB7000, v32, OS_LOG_TYPE_DEFAULT, "Channel [%d] is active and connected for participant [%08X].", buf, 0xEu);
                        }

                        v101 = 0;
                        v24 = 1;
                      }

                      break;
                    case 2:
                      v29 = gcks_log(v19, v20);
                      v19 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
                      if (v19)
                      {
                        v30 = *(v21 + 72);
                        v31 = *(v21 + 88);
                        *buf = 67109376;
                        *v104 = v30;
                        *&v104[4] = 1024;
                        *&v104[6] = v31;
                        _os_log_impl(&dword_239FB7000, v29, OS_LOG_TYPE_DEFAULT, "Connection attempt in progress on channel [%d] for participant [%08X].", buf, 0xEu);
                      }

                      v23 = 1;
                      break;
                    case 1:
                      v26 = gcks_log(v19, v20);
                      v19 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
                      if (v19)
                      {
                        v27 = *(v21 + 72);
                        v28 = *(v21 + 88);
                        *buf = 67109376;
                        *v104 = v27;
                        *&v104[4] = 1024;
                        *&v104[6] = v28;
                        _os_log_impl(&dword_239FB7000, v26, OS_LOG_TYPE_DEFAULT, "ICE is still in progress on channel [%d] for participant [%08X].", buf, 0xEu);
                      }

                      v22 = 1;
                      break;
                  }
                }

                v21 = *(v21 + 832);
              }

              while (v21);
              v35 = v24 != 0;
            }

            else
            {
              v35 = 0;
              v23 = 0;
              v22 = 0;
            }

            v42 = 0;
            if (!v22 && !v23 && !v35)
            {
              v43 = *(v6 + 708);
              v44 = gcks_log(v19, v20);
              v19 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
              if (v19)
              {
                v45 = v5[22];
                *buf = 67109120;
                *v104 = v45;
                _os_log_impl(&dword_239FB7000, v44, OS_LOG_TYPE_DEFAULT, "No connected or connecting cList to [%08X].", buf, 8u);
              }

              if (v43 < 1)
              {
LABEL_93:
                v42 = 0;
              }

              else
              {
                v20 = (v6 + 712);
                while (*v20 != v5[22])
                {
                  v20 += 2;
                  if (!--v43)
                  {
                    goto LABEL_93;
                  }
                }

                gckSessionDeleteNeighbor(v6, v20);
                gckSessionUpdateRoutingTable(v6);
                gckSessionRequestLSAUpdateForNode((v6 + 424), v49);
                v42 = 1;
              }
            }

            v50 = (v6 + 424);
            v51 = *(v6 + 420);
            v100 = v35;
            if (v51 < 1)
            {
LABEL_102:
              v55 = 0;
              v56 = 1;
            }

            else
            {
              v52 = v5[22];
              v53 = (v6 + 424);
              v54 = *(v6 + 420);
              while (*v53 != v52)
              {
                v53 += 104;
                if (!--v54)
                {
                  goto LABEL_102;
                }
              }

              v57 = (v6 + 428);
              while (*(v57 - 1) != v52)
              {
                v57 += 104;
                if (!--v51)
                {
                  v55 = 0;
                  goto LABEL_108;
                }
              }

              v55 = *v57 != -1;
LABEL_108:
              v58 = gcks_log(v19, v20);
              v19 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
              if (v19)
              {
                v59 = "a";
                v60 = v5[22];
                if (!v55)
                {
                  v59 = "NO";
                }

                *buf = 136315394;
                *v104 = v59;
                *&v104[8] = 1024;
                *v105 = v60;
                _os_log_impl(&dword_239FB7000, v58, OS_LOG_TYPE_DEFAULT, "There is %s valid route to participant [%08X].", buf, 0x12u);
              }

              v56 = 0;
            }

            if ((v4 & 0xFFFFFFFE) == 4 && v101 && v8 == 3)
            {
              v61 = *(v6 + 708);
              if (v61 < 1)
              {
                LODWORD(v62) = 0;
              }

              else
              {
                v62 = 0;
                v63 = (v6 + 712);
                while (1)
                {
                  v64 = *v63;
                  v63 += 2;
                  if (v64 == v5[22])
                  {
                    break;
                  }

                  if (v61 == ++v62)
                  {
                    goto LABEL_129;
                  }
                }
              }

              if (v62 == v61 || (v65 = v6 + 712 + 8 * v62, v67 = *(v65 + 4), v66 = (v65 + 4), v67 == -1))
              {
LABEL_129:
                if (!v55)
                {
                  goto LABEL_149;
                }
              }

              else
              {
                *v66 = -1;
                v68 = v56;
                gckSessionUpdateRoutingTable(v6);
                v56 = v68;
                v69 = *(v6 + 420);
                if (v69 < 1)
                {
                  goto LABEL_149;
                }

                v70 = (v6 + 428);
                while (*(v70 - 1) != v5[22])
                {
                  v70 += 104;
                  if (!--v69)
                  {
                    goto LABEL_149;
                  }
                }

                if (*v70 == -1)
                {
                  goto LABEL_149;
                }
              }

              v71 = gcks_log(v19, v20);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
              {
                v73 = v5[22];
                *buf = 67109120;
                *v104 = v73;
                _os_log_impl(&dword_239FB7000, v71, OS_LOG_TYPE_DEFAULT, "Remain (indirectly) connected to participant %08X.", buf, 8u);
              }

              gckSessionRequestLSAUpdateForNode((v6 + 424), v72);
              gckSessionSendLSA(v6, *(v6 + 420), v6 + 424, v5[22], 0);
              v102 = 0;
              gckSessionFindAndRemoveDisconnectedNodes(v6, buf, &v102);
              v74 = v4 == 4;
              v75 = v102;
              if (v102 >= 1)
              {
                v76 = 0;
                do
                {
                  v77 = &buf[416 * v76];
                  v78 = *v77;
                  v79 = *v77 == v5[22] && v74;
                  gckSessionDisconnectParticipant(v6, *v77, v77 + 9, v77[8], v79);
                  for (i = *(v6 + 7184); i; i = *(i + 832))
                  {
                    if (*(i + 88) == v78)
                    {
                      gckSessionScheduleCListClose(i, v79);
                    }
                  }

                  ++v76;
                }

                while (v76 != v75);
              }

              v81 = *(v6 + 7184);
              if (v81)
              {
                v82 = v5[22];
                do
                {
                  if (*(v81 + 88) == v82)
                  {
                    gckSessionScheduleCListClose(v81, v74);
                  }

                  v81 = *(v81 + 832);
                }

                while (v81);
              }

LABEL_170:
              pthread_mutex_unlock((v6 + 7080));
              return 0;
            }

LABEL_149:
            if (v101)
            {
              if (!v55 || v8 != 2)
              {
                goto LABEL_173;
              }
            }

            else
            {
              v83 = v100;
              if (v22 | v23)
              {
                v83 = 1;
              }

              if ((v83 & 1) == 0 && !v55)
              {
                if (v8 == 3)
                {
                  v84 = gcks_log(v19, v20);
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                  {
                    v85 = v5[18];
                    v86 = v5[22];
                    *buf = 67109376;
                    *v104 = v85;
                    *&v104[4] = 1024;
                    *&v104[6] = v86;
                    _os_log_impl(&dword_239FB7000, v84, OS_LOG_TYPE_DEFAULT, "Channel [%d] wasn't active for participant [%08X]. Keeping connection open.", buf, 0xEu);
                  }

                  v87 = v42;
LABEL_190:
                  if (v87)
                  {
                    gckSessionSendLSA(v6, *(v6 + 420), v6 + 424, v5[22], 0);
                  }

                  goto LABEL_170;
                }

LABEL_173:
                v91 = v56;
                v92 = gcks_log(v19, v20);
                if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                {
                  v93 = v5[22];
                  *buf = 67109120;
                  *v104 = v93;
                  _os_log_impl(&dword_239FB7000, v92, OS_LOG_TYPE_DEFAULT, "Disconnected from a participant %08X. Stop ICE check.", buf, 8u);
                }

                ICEStopConnectivityCheck();
                if (!v91)
                {
                  v97 = gckSessionHandleDeletedNode(v6, v5[22], (v4 & 0xFFFFFFFE) == 4);
                  gckSessionSendLSA(v6, *(v6 + 420), v6 + 424, v5[22], 0);
                  gckSessionHandleRemainingDisconnectedNodes(v6);
                  if (v4 == 4 && v97 == -2145779690)
                  {
                    v98 = *(v6 + 420);
                    if (v98 >= 1)
                    {
                      while (*v50 != v5[22])
                      {
                        v50 += 104;
                        if (!--v98)
                        {
                          goto LABEL_170;
                        }
                      }

                      gckSessionDeleteDisconnectedNode(v6, v50);
                    }
                  }

                  goto LABEL_170;
                }

                v94 = *(v6 + 708);
                v95 = v5[22];
                if (v94 < 1)
                {
                  v87 = v42;
                }

                else
                {
                  v96 = (v6 + 712);
                  v87 = v42;
                  while (*v96 != v95)
                  {
                    v96 += 2;
                    if (!--v94)
                    {
                      goto LABEL_189;
                    }
                  }

                  gckSessionDeleteNeighbor(v6, v96);
                  gckSessionRequestLSAUpdateForNode((v6 + 424), v99);
                  v95 = v5[22];
                  v87 = 1;
                }

LABEL_189:
                gckSessionDisconnectParticipant(v6, v95, 0, 0, 1);
                goto LABEL_190;
              }
            }

            if (!v22)
            {
              v19 = ICEStopConnectivityCheck();
              if (v19 != -2146107370)
              {
                v19 = gckSessionCancelRecvUDPInternal(v6);
              }
            }

            if (v101)
            {
              if (v55 && v8 == 2)
              {
                v88 = gcks_log(v19, v20);
                if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                {
                  v89 = v5[18];
                  v90 = v5[22];
                  *buf = 67109376;
                  *v104 = v89;
                  *&v104[4] = 1024;
                  *&v104[6] = v90;
                  _os_log_impl(&dword_239FB7000, v88, OS_LOG_TYPE_DEFAULT, "Last channel [%d] closed for participant [%08X], but we are still indirectly connected.", buf, 0xEu);
                }
              }
            }

            gckSessionScheduleCListClose(v5, 1);
            goto LABEL_170;
        }
      }

      v16 = "?";
      goto LABEL_53;
    }

    if (v8 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = *(v2 + 376);
    }

    if (v3 == 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = 4;
    }

LABEL_21:
    if (v8 == v9)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (v3 == 2)
  {
    if (v8 == 1)
    {
      v9 = 2;
    }

    else
    {
      v9 = *(v2 + 376);
    }

    goto LABEL_21;
  }

  if (v3 == 3)
  {
    if (v8 <= 3)
    {
      v9 = 3;
    }

    else
    {
      v9 = *(v2 + 376);
    }

    goto LABEL_21;
  }

  if (v3 != 4)
  {
    goto LABEL_21;
  }

  if (v8 <= 3 && v8 != 1)
  {
    goto LABEL_22;
  }

  return result;
}

void gckSessionReconcileChannelPriority(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v61 = *MEMORY[0x277D85DE8];
  v3 = gcks_log(a1, a2);
  InterfacePriorityForCList = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (InterfacePriorityForCList)
  {
    *buf = 67109120;
    *v58 = v2;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Reconcile Channel Priority for participant [%08X].", buf, 8u);
  }

  v6 = *(a1 + 7184);
  if (!v6)
  {
    goto LABEL_68;
  }

  v7 = 0;
  v8 = 0;
  InterfacePriorityForCList = 0;
  v9 = 0;
  do
  {
    if (*(v6 + 88) == v2)
    {
      v10 = *(v6 + 80);
      if (*(v6 + 376) == 3 && v10 >= 0)
      {
        ++v8;
      }

      if (v10)
      {
        v9 = 1;
      }

      else
      {
        InterfacePriorityForCList = gckSessionGetInterfacePriorityForCList(a1, v6);
        v9 = 1;
        v7 = v6;
      }
    }

    v6 = *(v6 + 832);
  }

  while (v6);
  v53 = v7;
  v12 = *(a1 + 7184);
  if (!v12)
  {
    if (v9)
    {
      goto LABEL_66;
    }

LABEL_68:
    v51 = gcks_log(InterfacePriorityForCList, v5);
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 67109120;
    *v58 = v2;
    v48 = "Couldn't find a clist for participant [%08X].";
    goto LABEL_70;
  }

  v54 = v9;
  v52 = InterfacePriorityForCList;
  v13 = 0;
  v14 = 0;
  do
  {
    if (*(v12 + 88) != v2)
    {
      goto LABEL_50;
    }

    v15 = gcks_log(InterfacePriorityForCList, v5);
    InterfacePriorityForCList = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (InterfacePriorityForCList)
    {
      v16 = *(v12 + 72);
      v17 = *(v12 + 80);
      *buf = 67109376;
      *v58 = v16;
      *&v58[4] = 1024;
      *&v58[6] = v17;
      _os_log_impl(&dword_239FB7000, v15, OS_LOG_TYPE_DEFAULT, "Channel [%d] priority [%d].", buf, 0xEu);
    }

    if (v8 && *(v12 + 376) != 3)
    {
      v30 = gcks_log(InterfacePriorityForCList, v5);
      InterfacePriorityForCList = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
      if (!InterfacePriorityForCList)
      {
        goto LABEL_50;
      }

      v31 = *(v12 + 376);
      if (v31 > 2)
      {
        switch(v31)
        {
          case 3:
            v32 = "Connected";
            goto LABEL_49;
          case 4:
            v32 = "Disconnected";
            goto LABEL_49;
          case 255:
            v32 = "Invalid";
            goto LABEL_49;
        }
      }

      else
      {
        switch(v31)
        {
          case 0:
            v32 = "Created";
            goto LABEL_49;
          case 1:
            v32 = "ICE";
            goto LABEL_49;
          case 2:
            v32 = "Connecting";
LABEL_49:
            *buf = 136315138;
            *v58 = v32;
            _os_log_impl(&dword_239FB7000, v30, OS_LOG_TYPE_DEFAULT, "Not in connected state, currently %s. Skipping.", buf, 0xCu);
            goto LABEL_50;
        }
      }

      v32 = "?";
      goto LABEL_49;
    }

    if ((*(v12 + 80) & 0x80000000) == 0)
    {
      v18 = gckSessionGetInterfacePriorityForCList(a1, v12);
      v20 = v18;
      if (!v18)
      {
        v21 = gcks_log(v18, v19);
        v18 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (v18)
        {
          v22 = *(v12 + 384);
          *buf = 136315394;
          *v58 = v12 + 388;
          *&v58[8] = 1024;
          *&v58[10] = v22;
          _os_log_impl(&dword_239FB7000, v21, OS_LOG_TYPE_DEFAULT, "Failed to find a valid priority for interface [%s] flags [%08X].", buf, 0x12u);
        }
      }

      v23 = gcks_log(v18, v19);
      InterfacePriorityForCList = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (InterfacePriorityForCList)
      {
        v24 = v2;
        v25 = v14;
        v14 = v13;
        v26 = *(v12 + 72);
        v27 = *(v12 + 80);
        v55 = *(v12 + 384);
        v28 = GCKSessionInterfaceNameForPriority(v20, v5);
        *buf = 136316418;
        *v58 = v12 + 388;
        *&v58[8] = 1024;
        *&v58[10] = v26;
        v13 = v14;
        LODWORD(v14) = v25;
        v2 = v24;
        *&v58[14] = 1024;
        *&v58[16] = v27;
        *&v58[20] = 1024;
        *&v58[22] = v55;
        *&v58[26] = 1024;
        *&v58[28] = v20;
        v59 = 2080;
        v60 = v28;
        _os_log_impl(&dword_239FB7000, v23, OS_LOG_TYPE_DEFAULT, "Checking pCList if[%s] chan[%d] cList priority [%d] flags[%08X] interface priority [%d-%s].", buf, 0x2Eu);
      }

      v29 = v14 < v20;
      if (v14 <= v20)
      {
        v14 = v20;
      }

      else
      {
        v14 = v14;
      }

      if (v29)
      {
        v13 = v12;
      }
    }

LABEL_50:
    v12 = *(v12 + 832);
  }

  while (v12);
  if (!v54)
  {
    goto LABEL_68;
  }

  if (!v14)
  {
LABEL_66:
    v51 = gcks_log(InterfacePriorityForCList, v5);
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 67109120;
    *v58 = v2;
    v48 = "Unknown interface for participant [%08X].";
LABEL_70:
    v49 = v51;
    goto LABEL_71;
  }

  v33 = gcks_log(InterfacePriorityForCList, v5);
  v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v34)
    {
      v36 = GCKSessionInterfaceNameForPriority(v52, v35);
      v38 = GCKSessionInterfaceNameForPriority(v14, v37);
      *buf = 67109890;
      *v58 = v52;
      *&v58[4] = 2080;
      *&v58[6] = v36;
      *&v58[14] = 1024;
      *&v58[16] = v14;
      *&v58[20] = 2080;
      *&v58[22] = v38;
      _os_log_impl(&dword_239FB7000, v33, OS_LOG_TYPE_DEFAULT, "Currently active clist priority %d-%s; highest interface priority %d-%s.", buf, 0x22u);
    }

    if (v14 > v52)
    {
      if (v13[20])
      {
        if (v53)
        {
          v39 = gcks_log(v34, v35);
          v34 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
          if (v34)
          {
            v40 = v13[18];
            v41 = *(v53 + 72);
            v42 = v13[20];
            *buf = 67109888;
            *v58 = v40;
            *&v58[4] = 1024;
            *&v58[6] = 0;
            *&v58[10] = 1024;
            *&v58[12] = v41;
            *&v58[16] = 1024;
            *&v58[18] = v42;
            _os_log_impl(&dword_239FB7000, v39, OS_LOG_TYPE_DEFAULT, "Interface Switch! Setting priority of channel [%d] to [%d] and [%d] to [%d].", buf, 0x1Au);
          }

          *(v53 + 80) = v13[20];
        }

        v13[20] = 0;
      }

      v43 = gcks_log(v34, v35);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v45 = GCKSessionInterfaceNameForPriority(v14, v44);
        v46 = v13[18];
        v47 = v13[96];
        *buf = 136315906;
        *v58 = v45;
        *&v58[8] = 2080;
        *&v58[10] = v13 + 97;
        *&v58[18] = 1024;
        *&v58[20] = v46;
        *&v58[24] = 1024;
        *&v58[26] = v47;
        v48 = "Now connected over interface [%s]; Active pCList: if[%s] chan[%d] flags[%08X].";
        v49 = v43;
        v50 = 34;
        goto LABEL_72;
      }
    }

    return;
  }

  if (!v34)
  {
    return;
  }

  *buf = 67109120;
  *v58 = v2;
  v48 = "No clist with iPriority >= 0 and interface priority < GCK_IF_PRIORITY_NONE for participant [%08X].";
  v49 = v33;
LABEL_71:
  v50 = 8;
LABEL_72:
  _os_log_impl(&dword_239FB7000, v49, OS_LOG_TYPE_DEFAULT, v48, buf, v50);
}

uint64_t GCKSessionEstablishConnection(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v8 = a2;
  v38 = *MEMORY[0x277D85DE8];
  v9 = 2149187603;
  v10 = CheckInHandleDebug();
  if (!v10)
  {
    return 2149187586;
  }

  v11 = v10;
  v12 = ICEGetCallInfoForConnectionData();
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_34;
  }

  pthread_rwlock_rdlock((v11 + 7192));
  for (i = *(v11 + 7184); i; i = *(i + 832))
  {
    if (*(i + 88) == v8)
    {
      pthread_mutex_lock((i + 768));
      *(i + 612) = a4;
      *(i + 620) = a3;
      if (a3)
      {
        v14 = 1;
      }

      else
      {
        v14 = *(v11 + 7520) != 0;
      }

      *(i + 616) = v14;
      if (a4)
      {
        v14 = 1;
      }

      *(i + 624) = v14;
      pthread_mutex_unlock((i + 768));
    }
  }

  v15 = pthread_rwlock_unlock((v11 + 7192));
  if (*(v11 + 416))
  {
    v24 = gcks_log(v15, v16);
    v9 = 2149187616;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      GCKSessionEstablishConnection_cold_1();
    }

    goto LABEL_35;
  }

  v17 = pthread_mutex_lock((v11 + 7080));
  v19 = *(v11 + 708);
  if (v19 > 15)
  {
    v20 = gcks_log(v17, v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_239FB7000, v20, OS_LOG_TYPE_DEFAULT, "Max number of nodes reached.", buf, 2u);
    }

    v21 = pthread_mutex_unlock((v11 + 7080));
    v23 = gcks_log(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      GCKSessionEstablishConnection_cold_2();
    }

    goto LABEL_35;
  }

  if (v19 < 1)
  {
    LODWORD(v25) = 0;
  }

  else
  {
    v25 = 0;
    v26 = (v11 + 712);
    while (1)
    {
      v27 = *v26;
      v26 += 2;
      if (v27 == v8)
      {
        break;
      }

      if (v19 == ++v25)
      {
        goto LABEL_28;
      }
    }
  }

  if (v25 == v19)
  {
LABEL_28:
    v28 = (v11 + 712 + 8 * v19);
    *v28 = v8;
    v28[1] = -1;
    *(v11 + 708) = v19 + 1;
  }

  v29 = pthread_mutex_unlock((v11 + 7080));
  v31 = gcks_log(v29, v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v37 = v8;
    _os_log_impl(&dword_239FB7000, v31, OS_LOG_TYPE_DEFAULT, "Update ICE role for participant %08X.", buf, 8u);
  }

  ICEUpdateRole();
  v12 = ICEStartConnectivityCheck();
  if ((v12 & 0x80000000) != 0)
  {
LABEL_34:
    v9 = v12;
LABEL_35:
    CheckOutHandleDebug();
    return v9;
  }

  gckSessionChangeState(v11, v8);
  v32 = CheckOutHandleDebug();
  v34 = gcks_log(v32, v33);
  v9 = 0;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v37 = v8;
    _os_log_impl(&dword_239FB7000, v34, OS_LOG_TYPE_DEFAULT, "ICE started with participant %08X.", buf, 8u);
    return 0;
  }

  return v9;
}

uint64_t gckSessionChangeState(uint64_t a1, int a2)
{
  v4 = 2149187606;
  pthread_rwlock_rdlock((a1 + 7192));
  for (i = *(a1 + 7184); i; i = *(i + 832))
  {
    if (*(i + 88) == a2)
    {
      pthread_mutex_lock((i + 768));
      v4 = gckSessionChangeStateCList(a1);
      pthread_mutex_unlock((i + 768));
    }
  }

  pthread_rwlock_unlock((a1 + 7192));
  return v4;
}

uint64_t GCKSessionDisposeConnection(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149187586;
  }

  v4 = gckSessionChangeState(v3, v2);
  v6 = v4;
  if ((v4 & 0x80000000) != 0)
  {
    v7 = gcks_log(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      GCKSessionDisposeConnection_cold_1();
    }
  }

  CheckOutHandleDebug();
  return v6;
}

uint64_t GCKSessionDisposeAllConnections(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2149187586;
  }

  gckSessionDisposeAllConnections(v1);
  CheckOutHandleDebug();
  return 0;
}

uint64_t GCKSessionSendTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned int a10, unsigned int a11)
{
  v11 = MEMORY[0x28223BE20](a1);
  v75 = v12;
  v76 = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v77 = v22;
  v23 = v11;
  v84 = *MEMORY[0x277D85DE8];
  memset(v81, 0, sizeof(v81));
  MEMORY[0x28223BE20](v11);
  v78 = v67 - v24;
  v80 = CheckInHandleDebug();
  if (!v80)
  {
    return 2149187586;
  }

  v67[0] = v23;
  v67[1] = v67;
  *&v81[0] = v19;
  DWORD2(v81[0]) = v17;
  if (v21 < 1)
  {
    v71 = -2145779666;
  }

  else
  {
    v69 = a11;
    v73 = a10;
    v72 = a9;
    v26 = v21;
    *&v25 = 67109120;
    v70 = v25;
    v74 = v21;
    v27 = v77;
    v28 = v78;
    v29 = v15;
    v30 = v80;
    do
    {
      NextHop = gckSessionFindNextHop(v30, *v27);
      *v28 = NextHop;
      if (NextHop == -1)
      {
        v33 = gcks_log(NextHop, v32);
        NextHop = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        if (NextHop)
        {
          v34 = *v27;
          v83[0] = v70;
          v83[1] = v34;
          _os_log_impl(&dword_239FB7000, v33, OS_LOG_TYPE_DEFAULT, "No next hop for participant [%08X] in the routing table.", v83, 8u);
        }

        if (v15)
        {
          *v29 = -2145779666;
        }
      }

      ++v29;
      ++v28;
      ++v27;
      --v26;
    }

    while (v26);
    v35 = 0;
    v36 = v15 + 1;
    v37 = (v77 + 1);
    v38 = v78 + 4;
    v39 = v30;
    v40 = v74;
    v41 = v74 - 1;
    v68 = (v39 + 433);
    v71 = -2145779666;
    v42 = v69;
    do
    {
      v43 = *&v78[4 * v35];
      if (v43 == -1)
      {
        ++v35;
      }

      else
      {
        v79 = v67;
        MEMORY[0x28223BE20](NextHop);
        v47 = (v67 - ((v46 + 15) & 0x7FFFFFFF0));
        *v47 = v77[v35];
        if (v15)
        {
          v15[v35] = v45;
        }

        if (++v35 >= v44)
        {
          v53 = 1;
        }

        else
        {
          v48 = 1;
          v49 = v41;
          v50 = v38;
          v51 = v37;
          v52 = v36;
          do
          {
            if (*v50 == v43)
            {
              v53 = (v48 + 1);
              v47[v48] = *v51;
              *v50 = v45;
              if (v15)
              {
                *v52 = v45;
              }
            }

            else
            {
              v53 = v48;
            }

            ++v52;
            ++v51;
            v50 += 4;
            v48 = v53;
            --v49;
          }

          while (v49);
        }

        v54 = v80;
        NextHop = OSPFMakeData(v83, 4096, v81, 0, v73, *(v80 + 416), v47, v53, *(*(v80 + 408) + 24), *(*(v80 + 408) + 32), v75, v76, v72);
        if (NextHop < 1)
        {
          v56 = -2145779698;
        }

        else
        {
          NextHop = SendUDPPacketToParticipantChannelID(v54, v83, NextHop, v43, v42, -1, 1);
          v56 = -2145779670;
          if (NextHop == -2145779670)
          {
            v57 = gcks_log(NextHop, v55);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v82[0] = v70;
              v82[1] = v43;
              _os_log_impl(&dword_239FB7000, v57, OS_LOG_TYPE_DEFAULT, "SendUDPPacket failed with error GCK_E_INVALIDSOCKET (nextHop == %08X).", v82, 8u);
            }

            v58 = v80;
            pthread_mutex_lock((v80 + 7080));
            v59 = *(v58 + 408);
            v60 = *(v59 + 168);
            if (v60 < 1)
            {
              LODWORD(v61) = 0;
              v42 = v69;
            }

            else
            {
              v61 = 0;
              v42 = v69;
              while (*(v59 + 172 + 4 * v61) != v43)
              {
                if (v60 == ++v61)
                {
                  LODWORD(v61) = *(v59 + 168);
                  break;
                }
              }
            }

            if (v61 <= 0xF && v61 == v60)
            {
              *(v59 + 4 * v60 + 172) = v43;
              *(v59 + 168) = v60 + 1;
            }

            v62 = *(v80 + 420);
            v63 = v68;
            if (v62 >= 1)
            {
              while (*(v63 - 9) != v43)
              {
                v63 += 416;
                if (!--v62)
                {
                  goto LABEL_44;
                }
              }

              PostEventCallback(v59, v43, 2, v63, *(v63 - 1), 0);
            }

LABEL_44:
            NextHop = pthread_mutex_unlock((v80 + 7080));
          }

          else
          {
            v71 &= NextHop >> 31;
            v56 = NextHop;
          }
        }

        v40 = v74;
        v64 = v74;
        v65 = v15;
        do
        {
          if (v15)
          {
            if (*v65 == -1)
            {
              *v65 = v56;
            }
          }

          ++v65;
          --v64;
        }

        while (v64);
      }

      ++v36;
      ++v37;
      v38 += 4;
      --v41;
    }

    while (v35 != v40);
  }

  CheckOutHandleDebug();
  return v71;
}

uint64_t gckSessionFindNextHop(uint64_t a1, int a2)
{
  pthread_mutex_lock((a1 + 7080));
  v4 = *(a1 + 420);
  if (v4 < 1)
  {
LABEL_5:
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = (a1 + 428);
    while (*(v5 - 1) != a2)
    {
      v5 += 104;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v6 = *v5;
  }

  pthread_mutex_unlock((a1 + 7080));
  return v6;
}

uint64_t GCKSessionRegisterReliableTransportCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149187586;
  }

  v6 = *(v5 + 408);
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  CheckOutHandleDebug();
  return 0;
}

uint64_t GCKSessionStartEventCallbacks(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2149187586;
  }

  started = StartEventCallbackThread(*(v1 + 408));
  v4 = started;
  if ((started & 0x80000000) != 0)
  {
    v5 = gcks_log(started, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      GCKSessionStartEventCallbacks_cold_1();
    }
  }

  CheckOutHandleDebug();
  return v4;
}

uint64_t GCKSessionGetInterfacesForParticipant(uint64_t a1, int a2, int *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = CheckInHandleDebug();
  if (v5)
  {
    v7 = v5;
    v8 = gcks_log(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = a2;
      _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, "Getting interfaces for participant %08X.", buf, 8u);
    }

    v9 = pthread_rwlock_rdlock((v7 + 7192));
    v11 = *(v7 + 7184);
    if (v11)
    {
      v12 = 0;
      do
      {
        if (*(v11 + 88) == a2)
        {
          v12 |= *(v11 + 380);
          v13 = gcks_log(v9, v10);
          v9 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          if (v9)
          {
            v14 = *(v11 + 380);
            *buf = 67109120;
            v20 = v14;
            _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, "Available interface type: %d.", buf, 8u);
          }
        }

        v11 = *(v11 + 832);
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    pthread_rwlock_unlock((v7 + 7192));
    v15 = CheckOutHandleDebug();
    v17 = gcks_log(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = v12;
      _os_log_impl(&dword_239FB7000, v17, OS_LOG_TYPE_DEFAULT, "All available interface types: %d.", buf, 8u);
    }

    *a3 = v12;
  }

  return 0;
}

uint64_t GCKSessionSetHeartbeatTimeout(uint64_t a1, unsigned int a2)
{
  v3 = 2149187586;
  v4 = CheckInHandleDebug();
  if (v4)
  {
    if (*(v4 + 64))
    {
      *(v4 + 48) = a2 / 55.0;
      *(v4 + 56) = a2;
      CheckOutHandleDebug();
      return 0;
    }

    else
    {
      return 2149187588;
    }
  }

  return v3;
}

uint64_t gckSessionPListCopyDetailedDescription(pthread_mutex_t *a1)
{
  pthread_mutex_lock(a1 + 12);
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = *&a1[5].__opaque[48];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = "Connected";
      goto LABEL_15;
    }

    if (v3 != 4)
    {
      if (v3 == 255)
      {
        v4 = "Invalid";
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v4 = "Disconnected";
  }

  else
  {
    if (!v3)
    {
      v4 = "Created";
      goto LABEL_15;
    }

    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v4 = "Connecting";
        goto LABEL_15;
      }

LABEL_12:
      v4 = "?";
      goto LABEL_15;
    }

    v4 = "ICE";
  }

LABEL_15:
  v21 = v4;
  v22 = Mutable;
  v5 = "?";
  sig = a1[10].__sig;
  v7 = *&a1[5].__opaque[52];
  v19 = *&a1[1].__opaque[4];
  v20 = *&a1[1].__opaque[16];
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      v8 = "Bluetooth";
      goto LABEL_29;
    }

    if (v7 != 8)
    {
      if (v7 == 16)
      {
        v8 = "NCM";
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    v8 = "Ethernet";
  }

  else
  {
    if (!v7)
    {
      v8 = "None";
      goto LABEL_29;
    }

    if (v7 != 1)
    {
      if (v7 == 2)
      {
        v8 = "WiFi";
        goto LABEL_29;
      }

LABEL_26:
      v8 = "?";
      goto LABEL_29;
    }

    v8 = "AWDL";
  }

LABEL_29:
  if (!sig)
  {
    v5 = "DTLSNotConnected";
  }

  if (sig == 1)
  {
    v9 = "DTLSConnected";
  }

  else
  {
    v9 = v5;
  }

  if (*&a1->__opaque[52])
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if (LODWORD(a1[1].__sig))
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  v12 = *a1[1].__opaque;
  if (HIDWORD(a1[1].__sig))
  {
    v13 = "yes";
  }

  else
  {
    v13 = "no";
  }

  v14 = *&a1[1].__opaque[8];
  v15 = a1->__sig;
  v16 = IPPORTToString();
  v17 = IPPORTToString();
  CFStringAppendF(v22, "PID:%08X St:%s DTLS:%s If:%d[%s] Ch:%d Pri:%d Sd:%d TxDD:%s RxDD:%s GotICE:%s LocIP:%s DstIP:%s", v20, v21, v9, v19, v8, v12, v14, v15, v10, v11, v13, v16, v17);
  pthread_mutex_unlock(a1 + 12);
  return v22;
}

CFMutableStringRef GCKSessionCopyDetailedDescription(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendF(Mutable, "GCKSession\n");
  CFStringAppendF(Mutable, "----------\n");
  CFStringAppendF(Mutable, "Local Participant ID:                          %08X\n", *(v2 + 416));
  v4 = *(v2 + 7520);
  if (v4)
  {
    if (CFArrayGetCount(v4))
    {
      v5 = "yes";
    }

    else
    {
      v5 = "no";
    }
  }

  else
  {
    v5 = "no";
  }

  CFStringAppendF(Mutable, "Local Security Identity:                       %s\n", v5);
  if (*(v2 + 7536))
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  CFStringAppendF(Mutable, "AWDL Disabled:                                 %s\n", v6);
  pthread_rwlock_rdlock((v2 + 7192));
  if (*(v2 + 7184))
  {
    CFStringAppendF(Mutable, "Channel lists:\n");
    for (i = *(v2 + 7184); i; i = i[13].__sig)
    {
      v8 = gckSessionPListCopyDetailedDescription(i);
      if (v8)
      {
        v9 = v8;
        CFStringAppendF(Mutable, "    %@\n", v8);
        CFRelease(v9);
      }
    }
  }

  pthread_rwlock_unlock((v2 + 7192));
  CheckOutHandleDebug();
  return Mutable;
}

uint64_t GCKSessionSetAWDLDisabled(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149187586;
  }

  *(v3 + 7536) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t GCKSessionSetPreferNCMOverEthernet(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149187586;
  }

  *(v3 + 7540) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t GCKSessionSetICETimeoutForced(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149187586;
  }

  *(v3 + 7544) = a2;
  CheckOutHandleDebug();
  return 0;
}

uint64_t GCKSessionCloseDirectConnectionsWithPeer(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149187586;
  }

  v4 = gckSessionChangeState(v3, a2);
  CheckOutHandleDebug();
  return v4;
}

uint64_t gckSessionSendICEPacket(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = 2149187606;
  v11 = CheckInHandleDebug();
  if (!v11)
  {
    return 2149187586;
  }

  v13 = v11;
  if (a5)
  {
    if (a6)
    {
      v14 = gcks_log(v11, v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 136315394;
        v24 = IPPORTToString();
        v25 = 2080;
        v26 = IPPORTToString();
        _os_log_impl(&dword_239FB7000, v14, OS_LOG_TYPE_DEFAULT, "Send ICE packet from %s to %s.", &v23, 0x16u);
      }
    }
  }

  v15 = 2149187585;
  if (!a5)
  {
    goto LABEL_37;
  }

  if (!a6)
  {
    goto LABEL_37;
  }

  v15 = 0;
  if (!a3 || !a4)
  {
    goto LABEL_37;
  }

  pthread_rwlock_rdlock((v13 + 7192));
  v16 = *(v13 + 7184);
  if (!v16)
  {
    goto LABEL_36;
  }

  v17 = *a5 & 1;
  while ((*(v16 + 384) & 1) != v17)
  {
LABEL_23:
    if (*(v16 + 384))
    {
      goto LABEL_26;
    }

    if (!*(v16 + 404))
    {
      goto LABEL_31;
    }

LABEL_32:
    v16 = *(v16 + 832);
    if (!v16)
    {
      goto LABEL_36;
    }
  }

  v18 = (v16 + 404);
  if (!v17)
  {
    v19 = *v18;
    if (v19 != *(a5 + 20))
    {
      if (!v19)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    goto LABEL_22;
  }

  if (*v18 == *(a5 + 20) && *(v16 + 412) == *(a5 + 28))
  {
LABEL_22:
    if (*(v16 + 420) == *(a5 + 36))
    {
      goto LABEL_35;
    }

    goto LABEL_23;
  }

LABEL_26:
  if (*(v16 + 404) != *MEMORY[0x277D85EE8] || *(v16 + 412) != *(MEMORY[0x277D85EE8] + 8))
  {
    goto LABEL_32;
  }

LABEL_31:
  if (*(v16 + 420) != *(a5 + 36))
  {
    goto LABEL_32;
  }

LABEL_35:
  v10 = SendUDPPacketCList(v16, a3, a4, a6, 0);
LABEL_36:
  pthread_rwlock_unlock((v13 + 7192));
  v15 = v10;
LABEL_37:
  CheckOutHandleDebug();
  return v15;
}

uint64_t gckSessionRecvICEPacketWithTimeout(uint64_t a1, int a2, void *a3, _DWORD *a4, uint64_t a5, uint64_t a6, void *a7, int a8)
{
  v46 = *MEMORY[0x277D85DE8];
  v15 = 2149187614;
  v16 = CheckInHandleDebug();
  if (!v16)
  {
    return 2149187586;
  }

  v17 = v16;
  v18 = micro();
  pthread_mutex_lock((v17 + 7400));
  if (*(v17 + 8))
  {
LABEL_3:
    if (!*(v17 + 12))
    {
      *(v17 + 8) = 0;
    }

    pthread_mutex_unlock((v17 + 7400));
    CheckOutHandleDebug();
  }

  else
  {
    v19 = (v17 + 7392);
    v20 = a8 / 1000.0;
    while (1)
    {
      v41.tv_sec = 0;
      v41.tv_nsec = 0;
      v21 = *v19;
      if (*v19)
      {
        break;
      }

LABEL_13:
      v24 = v19;
      v25 = v20 - (micro() - v18);
      if (v25 < 0.0)
      {
        v40 = 0;
LABEL_33:
        if (*(v17 + 8))
        {
          v15 = 2149187614;
        }

        else
        {
          v15 = v40;
        }

        goto LABEL_3;
      }

      v41.tv_sec = v25;
      v41.tv_nsec = ((v25 - v25) * 1000000000.0);
      ++*(v17 + 12);
      v26 = pthread_cond_timedwait_relative_np((v17 + 7464), (v17 + 7400), &v41);
      --*(v17 + 12);
      if (v26)
      {
        v40 = v26 | 0xC01A0000;
        if (v26 == 60)
        {
          v40 = -2145779689;
        }

        goto LABEL_33;
      }

      v27 = *(v17 + 8);
      if (*v17)
      {
        if (v27)
        {
          v40 = -2145779682;
        }

        else
        {
          v40 = 0;
        }

        goto LABEL_33;
      }

      v19 = v24;
      if (v27)
      {
        goto LABEL_3;
      }
    }

    v22 = v19;
    v23 = *v19;
    if (a2)
    {
      while (*(v23 + 4108) != a2)
      {
        if (!*(v23 + 4200))
        {
          goto LABEL_13;
        }

        v22 = (v23 + 4200);
        v23 = *(v23 + 4200);
      }

      v21 = v23;
      v28 = v22;
    }

    else
    {
      v28 = v19;
    }

    v29 = *(v21 + 4104);
    *a4 = v29;
    v30 = memcpy(a3, v21, v29);
    v32 = *(v21 + 4144);
    v33 = *(v21 + 4128);
    *a5 = *(v21 + 4112);
    *(a5 + 16) = v33;
    *(a5 + 32) = v32;
    v35 = *(v21 + 4152);
    v34 = *(v21 + 4168);
    *(a6 + 32) = *(v21 + 4184);
    *a6 = v35;
    *(a6 + 16) = v34;
    if (a7)
    {
      *a7 = *(v21 + 4192);
    }

    v36 = gcks_log(v30, v31);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = IPPORTToString();
      v38 = IPPORTToString();
      *buf = 136315394;
      v43 = v37;
      v44 = 2080;
      v45 = v38;
      _os_log_impl(&dword_239FB7000, v36, OS_LOG_TYPE_DEFAULT, "Received ICE packet from %s to %s.", buf, 0x16u);
    }

    *v28 = *(v21 + 4200);
    free(v21);
    pthread_mutex_unlock((v17 + 7400));
    CheckOutHandleDebug();
    return 0;
  }

  return v15;
}

uint64_t gckSessionConnectedCallback(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v170 = *MEMORY[0x277D85DE8];
  v5 = CheckInHandleDebug();
  if (!v5)
  {
    return 2149187586;
  }

  v6 = v5;
  pthread_rwlock_rdlock((v5 + 7192));
  v7 = *(v6 + 7184);
  for (i = 1; v7; v7 = *(v7 + 832))
  {
    if (*(v7 + 88) == a2)
    {
      v9 = 0;
      atomic_compare_exchange_strong_explicit((v7 + 68), &v9, 1u, memory_order_relaxed, memory_order_relaxed);
      i = v9 == 0;
    }
  }

  v10 = pthread_rwlock_unlock((v6 + 7192));
  if (a3)
  {
    v12 = 0;
    v142 = v6;
    do
    {
      v13 = gcks_log(v10, v11);
      v10 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        v14 = i;
        v15 = a3[4];
        v16 = IPPORTToString();
        v17 = IPPORTToString();
        v18 = IPPORTToString();
        v19 = IPPORTToString();
        *buf = 67110914;
        *&buf[4] = a2;
        LOWORD(v144) = 1024;
        *(&v144 + 2) = v15;
        i = v14;
        HIWORD(v144) = 2080;
        v145 = v16;
        v6 = v142;
        *v146 = 2080;
        *&v146[2] = v17;
        *&v146[10] = 2080;
        *&v146[12] = v18;
        *v147 = 2080;
        *&v147[2] = v19;
        *&v147[10] = 2080;
        v148 = a3 + 8;
        v149 = 1024;
        v150 = v14;
        _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, "ICE check succeeded with participant %08X: proto %d local[%s], src[%s] <-> dst[%s], remote[%s] (on interface[%s]), first ICE result [%d].", buf, 0x46u);
      }

      if (a3[4] == 6)
      {
        v20 = gcks_log(v10, v11);
        v10 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&dword_239FB7000, v20, OS_LOG_TYPE_DEFAULT, "Proto GCK found.", buf, 2u);
        }

        if (!v12)
        {
          v12 = a3;
        }
      }

      a3 = *(a3 + 38);
    }

    while (a3);
    if (v12)
    {
      v21 = gcks_log(v10, v11);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = a2;
        v23 = *(v142 + 416);
        v24 = IPPORTToString();
        v25 = IPPORTToString();
        v26 = IPPORTToString();
        v27 = IPPORTToString();
        *buf = 67110402;
        *&buf[4] = v22;
        LOWORD(v144) = 1024;
        *(&v144 + 2) = v23;
        a2 = v22;
        v6 = v142;
        HIWORD(v144) = 2080;
        v145 = v24;
        *v146 = 2080;
        *&v146[2] = v25;
        *&v146[10] = 2080;
        *&v146[12] = v26;
        *v147 = 2080;
        *&v147[2] = v27;
        _os_log_impl(&dword_239FB7000, v21, OS_LOG_TYPE_DEFAULT, "ICE completed with participant %08X (I am %08X): local[%s], src[%s] <-> dst[%s], remote[%s].", buf, 0x36u);
      }

      v28 = v12;
      do
      {
        if (v28[4] != 6)
        {
          goto LABEL_38;
        }

        v29 = pthread_rwlock_wrlock((v6 + 7192));
        v31 = *(v6 + 7184);
        if (!v31)
        {
LABEL_35:
          v33 = pthread_rwlock_unlock((v6 + 7192));
          v35 = gcks_log(v33, v34);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = IPPORTToString();
            v37 = IPPORTToString();
            v38 = IPPORTToString();
            v39 = IPPORTToString();
            *v151 = 67110402;
            v152 = -1;
            v153 = 1024;
            v154 = a2;
            v155 = 2080;
            v156 = v36;
            v157 = 2080;
            v158 = v37;
            v159 = 2080;
            v160 = v38;
            v6 = v142;
            v161 = 2080;
            v162 = v39;
            _os_log_impl(&dword_239FB7000, v35, OS_LOG_TYPE_DEFAULT, "Failed to setup channel %d with participant %08X: local[%s], src[%s] <-> dst[%s], remote[%s].", v151, 0x36u);
          }

          *v28 = -1;
          goto LABEL_38;
        }

        while (1)
        {
          if ((*(v31 + 84) & 0x80000000) == 0 || *(v31 + 88) != a2 || (v28[7] & 1) != (*(v31 + 384) & 1))
          {
            goto LABEL_34;
          }

          if (v28[7])
          {
            if (*(v28 + 6) != *(v31 + 404) || *(v28 + 7) != *(v31 + 412))
            {
              goto LABEL_34;
            }
          }

          else if (v28[12] != *(v31 + 404))
          {
            goto LABEL_34;
          }

          if (*(v28 + 32) == *(v31 + 420))
          {
            break;
          }

LABEL_34:
          v31 = *(v31 + 832);
          if (!v31)
          {
            goto LABEL_35;
          }
        }

        v40 = gcks_log(v29, v30);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v141 = a2;
          v41 = *(v31 + 72);
          v140 = IPPORTToString();
          v42 = IPPORTToString();
          v43 = IPPORTToString();
          v44 = IPPORTToString();
          *v151 = 67110402;
          v152 = v41;
          a2 = v141;
          v153 = 1024;
          v154 = v141;
          v155 = 2080;
          v156 = v140;
          v157 = 2080;
          v158 = v42;
          v6 = v142;
          v159 = 2080;
          v160 = v43;
          v161 = 2080;
          v162 = v44;
          _os_log_impl(&dword_239FB7000, v40, OS_LOG_TYPE_DEFAULT, "Setup channel %d with participant %08X: local[%s], src[%s] <-> dst[%s], remote[%s].", v151, 0x36u);
        }

        gckSessionUpdateDstIPPortAndSockAddrForCList(v31, (v28 + 37));
        *(v31 + 84) = 0;
        *(v31 + 608) = v28[67];
        *(v31 + 704) = micro();
        *(v31 + 712) = 1;
        *v28 = *(v31 + 72);
        if (!*(v31 + 68))
        {
          *(v31 + 68) = 1;
        }

        pthread_rwlock_unlock((v6 + 7192));
LABEL_38:
        v28 = *(v28 + 38);
      }

      while (v28);
      gckSessionUpdateNode(v6, a2, v12[67], 0);
      if (i)
      {
        gckSessionChangeState(v6, a2);
      }

      v46 = *MEMORY[0x277CBECE8];
      theString = *MEMORY[0x277CDBEB0];
      config = *MEMORY[0x277CDBEB8];
      while (1)
      {
        if (v12[4] == 6)
        {
          if ((v12[7] & 4) != 0)
          {
            LOBYTE(v47) = 1;
          }

          else
          {
            v47 = (*(v12 + 68) >> 2) & 1;
          }

          v48 = *v12;
          pthread_rwlock_rdlock((v6 + 7192));
          CListFromParticipantChanId = FindCListFromParticipantChanId(v6, a2, v48);
          if (!CListFromParticipantChanId)
          {
            v77 = gcks_log(0, v50);
            if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              *v164 = 67109376;
              *v165 = a2;
              *&v165[4] = 1024;
              *&v165[6] = v48;
              _os_log_error_impl(&dword_239FB7000, v77, OS_LOG_TYPE_ERROR, "Something is terribly wrong; no clist for remoteID [%d] channelID [%d].", v164, 0xEu);
            }

            goto LABEL_90;
          }

          v51 = CListFromParticipantChanId;
          if ((v48 & 0x80000000) == 0)
          {
            v52 = gcks_log(CListFromParticipantChanId, v50);
            CListFromParticipantChanId = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
            if (CListFromParticipantChanId)
            {
              *v164 = 67109376;
              *v165 = a2;
              *&v165[4] = 1024;
              *&v165[6] = v48;
              _os_log_impl(&dword_239FB7000, v52, OS_LOG_TYPE_DEFAULT, "Connected to participant %08X on channel %d.", v164, 0xEu);
            }

            v6 = v142;
            if ((v47 & 1) == 0)
            {
              v53 = gcks_log(CListFromParticipantChanId, v50);
              CListFromParticipantChanId = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
              if (CListFromParticipantChanId)
              {
                *v164 = 67109120;
                *v165 = v48;
                _os_log_impl(&dword_239FB7000, v53, OS_LOG_TYPE_DEFAULT, "Quick disconnect enabled on channel %d.", v164, 8u);
              }

              v6 = v142;
              *(v51 + 360) = *(v142 + 56);
            }
          }

          v54 = *(v6 + 416);
          v55 = *(v51 + 88);
          *buf = MEMORY[0x277D85DD0];
          v144 = 0x40000000;
          v145 = __gckSessionSetupChannelWithDTLS_block_invoke;
          *v146 = &__block_descriptor_tmp_87;
          *&v146[8] = v6;
          *&v146[16] = a2;
          *v147 = v48;
          *&v147[4] = v54;
          *&v147[8] = v55;
          if (*(v51 + 624))
          {
            v56 = gcks_log(CListFromParticipantChanId, v50);
            v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
            if (v57)
            {
              *v164 = 0;
              _os_log_impl(&dword_239FB7000, v56, OS_LOG_TYPE_DEFAULT, "Initialization. Changing state to DTLSNotConnected.", v164, 2u);
            }

            *(v51 + 640) = 0;
            v59 = *(v6 + 7520) != 0;
            v60 = v59;
            if (*(v51 + 620) == v59)
            {
              v60 = *(v51 + 88) < *(v142 + 416);
            }

            v61 = gcks_log(v57, v58);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              v62 = *(v51 + 88);
              v63 = *(v51 + 616);
              v64 = *(v51 + 612);
              v65 = *(v51 + 620);
              *v164 = 67110400;
              *v165 = v62;
              *&v165[4] = 1024;
              *&v165[6] = v63;
              v166 = 1024;
              *v167 = v64;
              *&v167[4] = 1024;
              *&v167[6] = v59;
              LOWORD(v168) = 1024;
              *(&v168 + 2) = v65;
              HIWORD(v168) = 1024;
              v169 = v60;
              _os_log_impl(&dword_239FB7000, v61, OS_LOG_TYPE_DEFAULT, "DTLS Settings for participant [%08X]: authentication [%d] encryption [%d] localIdentitySet [%d] remoteIdentitySet [%d], isServer [%d].", v164, 0x26u);
            }

            v66 = *(v142 + 7520);
            pthread_mutex_lock((v51 + 768));
            v67 = SSLCreateContext(v46, !v60, kSSLDatagramType);
            if (v67)
            {
              v69 = v67;
              *(v51 + 632) = v67;
              *(v51 + 648) = _Block_copy(buf);
              v70 = SSLSetMaxDatagramRecordSize(v69, 0x4C7uLL);
              if (v70)
              {
                v72 = v70;
                v73 = gcks_log(v70, v71);
                if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                {
                  v74 = *(v51 + 88);
                  *v164 = 67109376;
                  *v165 = v74;
                  *&v165[4] = 1024;
                  *&v165[6] = v72;
                  v75 = v73;
                  v76 = "Failed to set maximum datagram size for participant [%08X] with error %d.";
                  goto LABEL_85;
                }

LABEL_87:
                v91 = pthread_mutex_unlock((v51 + 768));
                v93 = gcks_log(v91, v92);
                if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                {
                  v94 = *(v51 + 88);
                  v95 = *(v51 + 72);
                  v96 = *(v51 + 632);
                  *v164 = 67109888;
                  *v165 = v94;
                  *&v165[4] = 1024;
                  *&v165[6] = v95;
                  v166 = 2048;
                  *v167 = v96;
                  *&v167[8] = 2048;
                  v168 = v51;
                  _os_log_error_impl(&dword_239FB7000, v93, OS_LOG_TYPE_ERROR, "SetupDTLSContext failed for participant [%08X] channelID [%d] DTLS context [%p] pCList [%p].", v164, 0x22u);
                }

                pthread_mutex_lock((v51 + 768));
                v6 = v142;
                gckSessionChangeStateCList(v142);
                pthread_mutex_unlock((v51 + 768));
LABEL_90:
                pthread_rwlock_unlock((v6 + 7192));
                goto LABEL_91;
              }

              v81 = SSLSetIOFuncs(v69, DTLS_SocketRead, DTLS_SocketWrite);
              if (v81)
              {
                v83 = v81;
                v84 = gcks_log(v81, v82);
                if (!os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_87;
                }

                v85 = *(v51 + 88);
                *v164 = 67109376;
                *v165 = v85;
                *&v165[4] = 1024;
                *&v165[6] = v83;
                v75 = v84;
                v76 = "Failed to set IO functions for participant [%08X] with error %d.";
                goto LABEL_85;
              }

              v86 = SSLSetConnection(v69, v51);
              if (v86)
              {
                v88 = v86;
                v89 = gcks_log(v86, v87);
                if (!os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_87;
                }

                v90 = *(v51 + 88);
                *v164 = 67109376;
                *v165 = v90;
                *&v165[4] = 1024;
                *&v165[6] = v88;
                v75 = v89;
                v76 = "Failed to set connection for participant [%08X] with error %d.";
                goto LABEL_85;
              }

              if (v66)
              {
                v97 = gcks_log(v86, v87);
                if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                {
                  v98 = *(v51 + 88);
                  *v164 = 67109120;
                  *v165 = v98;
                  _os_log_impl(&dword_239FB7000, v97, OS_LOG_TYPE_DEFAULT, "Setting certificate for participant [%08X].", v164, 8u);
                }

                v86 = SSLSetCertificate(v69, v66);
                if (v86)
                {
                  v99 = v86;
                  v100 = gcks_log(v86, v87);
                  if (!os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_87;
                  }

                  v101 = *(v51 + 88);
                  *v164 = 67109376;
                  *v165 = v101;
                  *&v165[4] = 1024;
                  *&v165[6] = v99;
                  v75 = v100;
                  v76 = "Failed to set certificate for participant [%08X] with error %d.";
                  goto LABEL_85;
                }
              }

              if (*(v51 + 620))
              {
                if (v60)
                {
                  v102 = gcks_log(v86, v87);
                  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                  {
                    v103 = *(v51 + 88);
                    *v164 = 67109120;
                    *v165 = v103;
                    _os_log_impl(&dword_239FB7000, v102, OS_LOG_TYPE_DEFAULT, "Setting client side authentication for participant [%08X].", v164, 8u);
                  }

                  v104 = SSLSetClientSideAuthenticate(v69, kAlwaysAuthenticate);
                  if (v104)
                  {
                    v106 = v104;
                    v107 = gcks_log(v104, v105);
                    if (!os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_87;
                    }

                    v108 = *(v51 + 88);
                    *v164 = 67109376;
                    *v165 = v108;
                    *&v165[4] = 1024;
                    *&v165[6] = v106;
                    v75 = v107;
                    v76 = "Failed to set client side authentication for participant [%08X] with error %d.";
                    goto LABEL_85;
                  }

                  v109 = kSSLSessionOptionBreakOnClientAuth;
                }

                else
                {
                  v109 = kSSLSessionOptionBreakOnServerAuth;
                }

                v86 = SSLSetSessionOption(v69, v109, 1u);
                if (v86)
                {
                  v110 = v86;
                  v111 = gcks_log(v86, v87);
                  if (!os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_87;
                  }

                  v112 = *(v51 + 88);
                  *v164 = 67109376;
                  *v165 = v112;
                  *&v165[4] = 1024;
                  *&v165[6] = v110;
                  v75 = v111;
                  v76 = "Failed to set session option for participant [%08X] with error %d.";
                  goto LABEL_85;
                }
              }

              v113 = *(v51 + 612);
              if (!*(v51 + 616))
              {
                if (v113)
                {
                  v122 = gcks_log(v86, v87);
                  if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                  {
                    CStringPtr = CFStringGetCStringPtr(config, 0x8000100u);
                    *v164 = 136315138;
                    *v165 = CStringPtr;
                    _os_log_impl(&dword_239FB7000, v122, OS_LOG_TYPE_DEFAULT, "Auth=yes, encryption=no: setting session config to %s.", v164, 0xCu);
                  }

                  v124 = SSLSetSessionConfig(v69, config);
                  if (v124)
                  {
                    v119 = v124;
                    v120 = gcks_log(v124, v125);
                    if (!os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_87;
                    }

                    goto LABEL_117;
                  }
                }

LABEL_129:
                v132 = pthread_mutex_unlock((v51 + 768));
                v134 = gcks_log(v132, v133);
                if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
                {
                  v135 = *(v51 + 88);
                  v136 = *(v51 + 72);
                  v137 = *(v51 + 632);
                  *v164 = 67109888;
                  *v165 = v135;
                  *&v165[4] = 1024;
                  *&v165[6] = v136;
                  v166 = 2048;
                  *v167 = v137;
                  *&v167[8] = 2048;
                  v168 = v51;
                  _os_log_impl(&dword_239FB7000, v134, OS_LOG_TYPE_DEFAULT, "DTLSContext has been set up for participant [%08X] channelID [%d] DTLS context [%p] pCList [%p].", v164, 0x22u);
                }

                *(v51 + 720) = micro();
                v6 = v142;
                gckSessionScheduleDTLSHandshake(v142, v51);
                goto LABEL_90;
              }

              v114 = gcks_log(v86, v87);
              v115 = os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT);
              if (v113)
              {
                if (v115)
                {
                  v116 = CFStringGetCStringPtr(theString, 0x8000100u);
                  *v164 = 136315138;
                  *v165 = v116;
                  _os_log_impl(&dword_239FB7000, v114, OS_LOG_TYPE_DEFAULT, "Auth=yes, encryption=yes: setting session config to %s.", v164, 0xCu);
                }

                v117 = SSLSetSessionConfig(v69, theString);
                if (v117)
                {
                  v119 = v117;
                  v120 = gcks_log(v117, v118);
                  if (!os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_87;
                  }

LABEL_117:
                  v121 = *(v51 + 88);
                  *v164 = 67109376;
                  *v165 = v121;
                  *&v165[4] = 1024;
                  *&v165[6] = v119;
                  v75 = v120;
                  v76 = "Failed to set session config for participant [%08X] with error %d.";
                  goto LABEL_85;
                }

                goto LABEL_129;
              }

              if (v115)
              {
                v126 = *(v51 + 88);
                *v164 = 67109120;
                *v165 = v126;
                _os_log_impl(&dword_239FB7000, v114, OS_LOG_TYPE_DEFAULT, "Setting ciphers for: Authentication YES, encryption NO for participant [%08X].", v164, 8u);
              }

              *ciphers = 131131;
              v127 = SSLSetEnabledCiphers(v69, ciphers, 2uLL);
              if (!v127)
              {
                goto LABEL_129;
              }

              v129 = v127;
              v130 = gcks_log(v127, v128);
              if (!os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_87;
              }

              v131 = *(v51 + 88);
              *v164 = 67109376;
              *v165 = v131;
              *&v165[4] = 1024;
              *&v165[6] = v129;
              v75 = v130;
              v76 = "Failed to set enabled ciphers for participant [%08X] with error %d.";
LABEL_85:
              v80 = 14;
            }

            else
            {
              v78 = gcks_log(0, v68);
              if (!os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_87;
              }

              v79 = *(v51 + 88);
              *v164 = 67109120;
              *v165 = v79;
              v75 = v78;
              v76 = "Failed to create context for participant [%08X].";
              v80 = 8;
            }

            _os_log_error_impl(&dword_239FB7000, v75, OS_LOG_TYPE_ERROR, v76, v164, v80);
            goto LABEL_87;
          }

          *(v51 + 648) = _Block_copy(buf);
          pthread_mutex_lock((v51 + 768));
          *(v51 + 628) = 1;
          pthread_mutex_unlock((v51 + 768));
          pthread_rwlock_unlock((v6 + 7192));
          PostEventCallback(*(v6 + 408), a2, 6, 0, 0, 0);
        }

LABEL_91:
        v12 = *(v12 + 38);
        if (!v12)
        {
          goto LABEL_46;
        }
      }
    }
  }

  *buf = 0;
  gckSessionUpdateNode(v6, a2, -1, buf);
  gckSessionChangeState(v6, a2);
LABEL_46:
  gckSessionCheckPendingConnections(v6, 1);
  CheckOutHandleDebug();
  return 0;
}

uint64_t gckSessionCancelRecvUDP(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2149187586;
  }

  v2 = gckSessionCancelRecvUDPInternal(v1);
  CheckOutHandleDebug();
  return v2;
}

uint64_t gckSessionICEListRemoveCallback(uint64_t a1, int a2)
{
  v3 = CheckInHandleDebug();
  if (!v3)
  {
    return 2149187586;
  }

  gckCallICEListRemoveSignalBlock(v3, a2);
  CheckOutHandleDebug();
  return 0;
}

uint64_t SendUDPPacketCList(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, int a5)
{
  v6 = a3;
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = -2145779690;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2000000000;
  v24[3] = 0;
  v29 = 0;
  v30 = 0;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  v21 = 0;
  if (!a4)
  {
    a4 = (a1 + 424);
    v14 = (a1 + 444);
    if (*(a1 + 424))
    {
      if (*v14 != *MEMORY[0x277D85EE8] || *(a1 + 452) != *(MEMORY[0x277D85EE8] + 8))
      {
        goto LABEL_2;
      }
    }

    else if (*v14)
    {
      goto LABEL_2;
    }

    v12 = 0;
    goto LABEL_11;
  }

LABEL_2:
  if (a5)
  {
    gckSessionUpdateDstIPPortAndSockAddrForCList(a1, a4);
    v23 = *(a1 + 592);
    v9 = a1 + 464;
  }

  else if (*(a1 + 384))
  {
    v23 = 28;
    v9 = IPPORTToSA6();
  }

  else
  {
    v23 = 16;
    v9 = IPPORTToSA();
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 0x40000000;
  v16[2] = __SendUDPPacketCList_block_invoke;
  v16[3] = &unk_278B442F0;
  v16[6] = a1;
  v16[7] = v9;
  v17 = a5;
  v18 = v23;
  v16[4] = &v25;
  v16[5] = v24;
  pthread_mutex_lock((a1 + 768));
  v10 = OSPFAddDynamicOptions(a2, v6, v16);
  pthread_mutex_unlock((a1 + 768));
  if (v10)
  {
    do
    {
      v11 = *(v10 + 8);
      if (*v10)
      {
        free(*v10);
      }

      free(v10);
      v10 = v11;
    }

    while (v11);
  }

  v12 = *(v26 + 6);
LABEL_11:
  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v25, 8);
  return v12;
}

BOOL __SendUDPPacketCList_block_invoke(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 64) || (v3 = *(a1 + 48), !*(v3 + 624)))
  {
    memset(&data.msg_namelen, 0, 40);
    *processed = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = *(a2 + 24);
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = (*(a2 + 16) + 8);
      v11 = &processed[1];
      do
      {
        *(v11 - 1) = *(v10 - 1);
        v12 = *v10;
        v10 += 2;
        *v11 = v12;
        v11 += 2;
        ++v9;
      }

      while (v8 != v9);
      data.msg_iovlen = v9;
    }

    data.msg_iov = processed;
    v13 = *(a1 + 48);
    data.msg_name = *(a1 + 56);
    data.msg_namelen = *(a1 + 68);
    v14 = sendmsg(*v13, &data, 0);
    *(*(*(a1 + 40) + 8) + 24) = v14;
    if (*(*(*(a1 + 40) + 8) + 24) == -1)
    {
      v16 = gcks_log(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = __error();
        v18 = strerror(*v17);
        v19 = *__error();
        v25 = 136315394;
        v26 = v18;
        v27 = 1024;
        v28 = v19;
        _os_log_impl(&dword_239FB7000, v16, OS_LOG_TYPE_DEFAULT, "Sendmsg failed with error %s (%d).", &v25, 0x12u);
      }

      goto LABEL_18;
    }

LABEL_19:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *(*(a1 + 48) + 48) = micro();
    return *(*(*(a1 + 32) + 8) + 24) >= 0;
  }

  v4 = *(a2 + 24);
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = (*(a2 + 16) + 8);
    do
    {
      memcpy(&data + v5, *(v6 - 1), *v6);
      v7 = *v6;
      v6 += 2;
      v5 += v7;
      --v4;
    }

    while (v4);
  }

  processed[0] = 0;
  v20 = SSLWrite(*(v3 + 632), &data, v5, processed);
  if (!v20)
  {
    goto LABEL_19;
  }

  v22 = v20;
  v23 = gcks_log(v20, v21);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    __SendUDPPacketCList_block_invoke_cold_1((a1 + 48), v22, v23);
  }

LABEL_18:
  *(*(*(a1 + 32) + 8) + 24) = *__error() | 0xC01A0000;
  return *(*(*(a1 + 32) + 8) + 24) >= 0;
}

const char *DTLSErrorName(int a1)
{
  if ((a1 + 9851) > 0x33)
  {
    return "?";
  }

  else
  {
    return off_278B44418[a1 + 9851];
  }
}

uint64_t gckSessionUpdateNode(uint64_t a1, int a2, int a3, int *a4)
{
  pthread_mutex_lock((a1 + 7080));
  v8 = *(a1 + 708);
  if (v8 < 1)
  {
    LODWORD(v9) = 0;
    v11 = 0;
    if (a4)
    {
LABEL_8:
      v13 = v9 == v8 && v8 > 0 || v11;
      *a4 = v13;
    }
  }

  else
  {
    v9 = 0;
    v10 = (a1 + 716);
    while (*(v10 - 1) != a2)
    {
      ++v9;
      v10 += 2;
      if (v8 == v9)
      {
        v11 = 0;
        LODWORD(v9) = *(a1 + 708);
        if (a4)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }
    }

    *v10 = a3;
    v11 = v8 != 1;
    if (a4)
    {
      goto LABEL_8;
    }
  }

LABEL_15:

  return pthread_mutex_unlock((a1 + 7080));
}

void gckSessionCheckPendingConnections(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    pthread_rwlock_rdlock((a1 + 7192));
  }

  pthread_mutex_lock((a1 + 7080));
  v4 = *(a1 + 420);
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = (a1 + 428);
    do
    {
      if (*v6 == -1)
      {
        ++v5;
      }

      v6 += 104;
      --v4;
    }

    while (v4);
  }

  v7 = pthread_mutex_unlock((a1 + 7080));
  v9 = *(a1 + 7184);
  if (v9)
  {
    v10 = 0;
    v11 = *(a1 + 7184);
    do
    {
      if (!*(v11 + 68))
      {
        ++v10;
      }

      v11 = *(v11 + 832);
    }

    while (v11);
    v12 = 0;
    do
    {
      if (!*(v9 + 64))
      {
        ++v12;
      }

      v9 = *(v9 + 832);
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = gcks_log(v7, v8);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109632;
    v14[1] = v10;
    v15 = 1024;
    v16 = v5;
    v17 = 1024;
    v18 = v12;
    _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, "Pending connections state: iICEChecksLeft=%d, iUnconnectedNodeCount=%d, iDDsExpected=%d.", v14, 0x14u);
  }

  if (!v10 && !v5 && !v12)
  {
    PostEventCallback(*(a1 + 408), 0, 4, 0, 0, 0);
  }

  if (a2)
  {
    pthread_rwlock_unlock((a1 + 7192));
  }
}

uint64_t FindCListFromParticipantChanId(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v10 = *MEMORY[0x277D85DE8];
  result = *(a1 + 7184);
  if (result)
  {
    while (*(result + 88) != a2 || *(result + 72) != a3)
    {
      result = *(result + 832);
      if (!result)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = gcks_log(result, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109376;
      v7[1] = v4;
      v8 = 1024;
      v9 = a3;
      _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "No CList for participant [%08X] and channel [%d]", v7, 0xEu);
    }

    return 0;
  }

  return result;
}

uint64_t __gckSessionSetupChannelWithDTLS_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  CListFromParticipantChanId = FindCListFromParticipantChanId(*(a1 + 32), *(a1 + 40), *(a1 + 44));
  if (CListFromParticipantChanId)
  {
    *(CListFromParticipantChanId + 744) = micro();
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 52);
  v6 = gcks_log(CListFromParticipantChanId, v3);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4 <= v5)
  {
    if (v7)
    {
      v30 = *(a1 + 40);
      v31 = *(a1 + 44);
      v45 = 67109376;
      v46 = v30;
      v47 = 1024;
      v48 = v31;
      _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "Sending first Hello to participant %08X on channel %d.", &v45, 0xEu);
    }

    v32 = gckSessionSendHello(*(a1 + 32), *(a1 + 40), 1, *(*(a1 + 32) + 24), *(a1 + 44));
    v29 = v32;
    if ((v32 & 0x80000000) != 0)
    {
      v34 = gcks_log(v32, v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        __gckSessionSetupChannelWithDTLS_block_invoke_cold_1();
      }

      gckSessionChangeStateForParticipantAndChannel(*(a1 + 32), *(a1 + 40), *(a1 + 44));
    }

    return v29;
  }

  if (v7)
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 44);
    v45 = 67109376;
    v46 = v9;
    v47 = 1024;
    v48 = v10;
    _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "Waiting for first Hello from participant %08X on channel %d.", &v45, 0xEu);
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 44);
  v14 = gcks_log(v7, v8);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    v45 = 67109376;
    v46 = v12;
    v47 = 1024;
    v48 = 60;
    _os_log_impl(&dword_239FB7000, v14, OS_LOG_TYPE_DEFAULT, "Waiting for Hello from participant %08X for %d seconds.", &v45, 0xEu);
  }

  v17 = *(v11 + 7184);
  if (!v17)
  {
LABEL_15:
    v18 = gcks_log(v15, v16);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      __gckSessionSetupChannelWithDTLS_block_invoke_cold_2();
    }

    v21 = gcks_log(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __gckSessionSetupChannelWithDTLS_block_invoke_cold_3(v21, v22, v23, v24, v25, v26, v27, v28);
    }

    gckSessionChangeStateForParticipantAndChannel(*(a1 + 32), *(a1 + 40), *(a1 + 44));
    return 2149187606;
  }

  while (1)
  {
    if (*(v17 + 88) != v12)
    {
      goto LABEL_14;
    }

    if (v13 < 0)
    {
      break;
    }

    if (*(v17 + 72) == v13)
    {
      goto LABEL_26;
    }

LABEL_14:
    v17 = *(v17 + 832);
    if (!v17)
    {
      goto LABEL_15;
    }
  }

  if (*(v17 + 80))
  {
    goto LABEL_14;
  }

LABEL_26:
  v35 = pthread_mutex_lock((v17 + 768));
  if ((*(v17 + 40) & 0x8000000000000000) != 0)
  {
    v41 = gcks_log(v35, v36);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v45 = 67109120;
      v46 = v12;
      _os_log_impl(&dword_239FB7000, v41, OS_LOG_TYPE_DEFAULT, "Hello already received from participant %08X, no need to schedule a Hello timeout.", &v45, 8u);
    }
  }

  else
  {
    v37 = micro();
    v38 = *(v17 + 600);
    if (v38)
    {
      while (1)
      {
        v39 = v38;
        if (*v38 == 1)
        {
          break;
        }

        v38 = *(v38 + 64);
        if (!v38)
        {
          v40 = (v39 + 64);
          goto LABEL_34;
        }
      }
    }

    else
    {
      v40 = (v17 + 600);
LABEL_34:
      v42 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
      *v42 = 1;
      v42[1] = 0.065;
      v42[2] = v37 + 60.0;
      v42[4] = v37 + 60.0;
      v42[5] = 0.0;
      *(v42 + 12) = 0;
      *(v42 + 13) = v12;
      *v40 = v42;
      v43 = *(v11 + 16);
      if (v43 != -1)
      {
        *(v11 + 16) = -1;
        close(v43);
      }
    }
  }

  pthread_mutex_unlock((v17 + 768));
  return 0;
}

pthread_mutex_t *gckSessionChangeStateForParticipantAndChannel(uint64_t a1, uint64_t a2, int a3)
{
  result = FindCListFromParticipantChanId(a1, a2, a3);
  if (result)
  {
    v5 = result;
    pthread_mutex_lock(result + 12);
    gckSessionChangeStateCList(a1);

    return pthread_mutex_unlock(v5 + 12);
  }

  return result;
}

uint64_t gckSessionSendHello(uint64_t a1, uint64_t a2, int a3, __int16 a4, uint64_t a5)
{
  v5 = a5;
  v7 = a2;
  v39 = *MEMORY[0x277D85DE8];
  v32[0] = 0u;
  v31 = 0;
  WORD6(v32[0]) = a4;
  v32[1] = 0x8000000000000002;
  v9 = gcks_log(a1, a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "";
    *buf = 136315906;
    if (!a3)
    {
      v10 = " back";
    }

    *v34 = v10;
    *&v34[8] = 2048;
    *&v34[10] = 0x8000000000000002;
    *&v34[18] = 1024;
    *&v34[20] = v7;
    v35 = 1024;
    v36 = v5;
    _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Sending Hello%s with flags [%llX] to participant %08X over channel %d.", buf, 0x22u);
  }

  v11 = OSPFMakeHello(&v31, v32, *(a1 + 416), v7);
  if ((v11 & 0x80000000) != 0)
  {
    v16 = 2149187618;
    v17 = gcks_log(v11, v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      gckSessionSendHello_cold_2();
    }

    return v16;
  }

  v13 = v11;
  if (!a3)
  {
    v16 = SendUDPPacketToParticipantChannelID(a1, v31, v11, v7, 0, v5, 0);
    free(v31);
    return v16;
  }

  v14 = *(a1 + 7184);
  if (!v14)
  {
LABEL_14:
    v15 = gcks_log(v11, v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __gckSessionSetupChannelWithDTLS_block_invoke_cold_2();
    }

    free(v31);
    return 2149187606;
  }

  while (1)
  {
    if (*(v14 + 88) != v7)
    {
      goto LABEL_13;
    }

    if (v5 < 0)
    {
      break;
    }

    if (*(v14 + 72) == v5)
    {
      goto LABEL_20;
    }

LABEL_13:
    v14 = *(v14 + 832);
    if (!v14)
    {
      goto LABEL_14;
    }
  }

  if (*(v14 + 80))
  {
    goto LABEL_13;
  }

LABEL_20:
  pthread_mutex_lock((v14 + 768));
  v19 = *(v14 + 600);
  if (v19)
  {
    while (1)
    {
      v20 = v19;
      if (*v19 == 1)
      {
        break;
      }

      v19 = *(v19 + 64);
      if (!v19)
      {
        v21 = v20 + 64;
        goto LABEL_25;
      }
    }

    *(v19 + 8) = xmmword_239FEC300;
    *(v19 + 32) = *(a1 + 32);
    *(v19 + 24) = 1;
    v23 = *(v19 + 40);
    if (v23)
    {
      free(v23);
    }

    v22 = 0;
    *(v20 + 5) = v31;
    *(v20 + 12) = v13;
    *(v20 + 13) = v7;
  }

  else
  {
    v21 = (v14 + 600);
LABEL_25:
    v22 = 1;
    v23 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
    v20 = v23;
    *v23 = 1;
    *(v23 + 8) = xmmword_239FEC300;
    *(v23 + 4) = *(a1 + 32);
    *(v23 + 5) = v31;
    *(v23 + 12) = v13;
    *(v23 + 13) = v7;
    *v21 = v23;
  }

  v24 = gcks_log(v23, v18);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(v20 + 12);
    v26 = *(v20 + 2);
    v27 = *(v20 + 4);
    v28 = *(v20 + 6);
    *buf = 67110144;
    *v34 = v25;
    *&v34[4] = 2048;
    *&v34[6] = v26;
    *&v34[14] = 2048;
    *&v34[16] = v27;
    v35 = 1024;
    v36 = v28;
    v37 = 1024;
    v38 = v22;
    _os_log_impl(&dword_239FB7000, v24, OS_LOG_TYPE_DEFAULT, "Scheduled OSPF Hello packet: length=%d nextFire=%g waitUntil=%g rapidFireCount=%d newItem=%d.", buf, 0x28u);
  }

  pthread_mutex_unlock((v14 + 768));
  v29 = *(a1 + 16);
  if (v29 != -1)
  {
    *(a1 + 16) = -1;
    close(v29);
  }

  return 0;
}

uint64_t gckSessionScheduleDTLSHandshake(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a2 + 768));
  v4 = *(a2 + 600);
  if (v4)
  {
    while (1)
    {
      v5 = v4;
      if (*v4 == 11)
      {
        break;
      }

      v4 = *(v4 + 64);
      if (!v4)
      {
        v6 = (v5 + 64);
        goto LABEL_6;
      }
    }

    *(v4 + 8) = xmmword_239FEC300;
    *(v4 + 32) = 0x404E000000000000;
    *(v4 + 52) = *(a2 + 88);
  }

  else
  {
    v6 = (a2 + 600);
LABEL_6:
    v7 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
    *v7 = 11;
    *(v7 + 8) = xmmword_239FEC300;
    *(v7 + 4) = 0x404E000000000000;
    *(v7 + 13) = *(a2 + 88);
    *v6 = v7;
  }

  pthread_mutex_unlock((a2 + 768));
  result = *(a1 + 16);
  if (result != -1)
  {
    *(a1 + 16) = -1;

    return close(result);
  }

  return result;
}

uint64_t SendUDPPacketToParticipantChannelID(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7)
{
  v7 = 0;
  v24 = *MEMORY[0x277D85DE8];
  if (a2 && a3)
  {
    v14 = a1;
    if (a5)
    {
      a1 = pthread_rwlock_rdlock((a1 + 7192));
    }

    v7 = 2149187606;
    for (i = *(v14 + 7184); i; i = *(i + 832))
    {
      if (*(i + 88) == a4)
      {
        if (a6 < 0)
        {
          if (*(i + 80))
          {
            continue;
          }
        }

        else if (*(i + 72) != a6)
        {
          continue;
        }

        if ((*(i + 376) & 0xFFFFFFFE) == 2)
        {
          v17 = gcks_log(a1, a2);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            SendUDPPacketToParticipantChannelID_cold_1(i, a6, v17);
          }

          v20 = micro();
          if (a7 && v20 <= *(i + 24))
          {
            v22 = gcks_log(v18, v19);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23[0] = 67109120;
              v23[1] = a4;
              _os_log_impl(&dword_239FB7000, v22, OS_LOG_TYPE_DEFAULT, "Dropped packet for participant %08X.", v23, 8u);
            }
          }

          else
          {
            v21 = SendUDPPacketCList(i, a2, a3, 0, 1);
            if (v21 == -1072037876)
            {
              *(i + 24) = v20 + 3.0;
            }

            if (v21 == -1072037856)
            {
              v7 = 2149187626;
            }

            else
            {
              v7 = v21;
            }
          }

          break;
        }
      }
    }

    if (a5)
    {
      pthread_rwlock_unlock((v14 + 7192));
    }
  }

  return v7;
}

uint64_t DTLS_SocketRead(uint64_t a1, void *__dst, int *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 656);
  if (v5)
  {
    v6 = *(v5 + 4100);
    if (*(v5 + 4104) - v6 >= *a3)
    {
      v7 = *a3;
    }

    else
    {
      v7 = *(v5 + 4104) - v6;
    }

    memcpy(__dst, (v5 + v6), v7);
    *a3 = v7;
    v8 = *(v5 + 4100) + v7;
    *(v5 + 4100) = v8;
    if (v8 == *(v5 + 4104))
    {
      *(a1 + 656) = *(v5 + 4200);
      free(v5);
    }

    return 0;
  }

  else
  {
    v10 = gcks_log(a1, __dst);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *a3;
      v12 = *(a1 + 88);
      v13 = *(a1 + 72);
      v14 = *(a1 + 632);
      v15[0] = 67110144;
      v15[1] = v11;
      v16 = 1024;
      v17 = v12;
      v18 = 1024;
      v19 = v13;
      v20 = 2048;
      v21 = v14;
      v22 = 2048;
      v23 = a1;
      _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "No packets available (%d bytes requested) for participant [%08X] channelID [%d] DTLS context [%p] pCList [%p]. Have to wait for more data.", v15, 0x28u);
    }

    *a3 = 0;
    return 4294957493;
  }
}

uint64_t __gckSessionRecvProc_block_invoke(uint64_t a1)
{
  pthread_rwlock_rdlock((*(a1 + 32) + 7192));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3 != -1)
  {
    *(v2 + 16) = -1;
    close(v3);
    v2 = *(a1 + 32);
  }

  return pthread_rwlock_unlock((v2 + 7192));
}

const char *gckWaitForString(int a1)
{
  if ((a1 - 1) > 0xB)
  {
    return "UNHANDLED WAIT FOR TYPE";
  }

  else
  {
    return off_278B443B8[(a1 - 1)];
  }
}

uint64_t gckSessionPerformDTLSHandshake(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = SSLHandshake(*(a2 + 632));
  v5 = v4;
  v7 = gcks_log(v4, v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    v10 = *(a2 + 88);
    v11 = *(a2 + 72);
    v12 = *(a2 + 632);
    *buf = 67109888;
    *&buf[4] = v10;
    v35 = 1024;
    v36 = v11;
    v37 = 2048;
    v38 = v12;
    v39 = 1024;
    LODWORD(v40) = v5;
    _os_log_impl(&dword_239FB7000, v7, OS_LOG_TYPE_DEFAULT, "Perform handshake with participant [%08X] channelID [%d] DTLS context [%p] completed with error %d.", buf, 0x1Eu);
  }

  switch(v5)
  {
    case -9841:
      v21 = gcks_log(v8, v9);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a2 + 88);
        v23 = *(a2 + 72);
        v24 = *(a2 + 632);
        *buf = 67109888;
        *&buf[4] = v22;
        v35 = 1024;
        v36 = v23;
        v37 = 2048;
        v38 = v24;
        v39 = 2048;
        v40 = a2;
        _os_log_impl(&dword_239FB7000, v21, OS_LOG_TYPE_DEFAULT, "Peer Authentication Completed for participant [%08X] channelID [%d] DTLS context [%p] pCList [%p].", buf, 0x22u);
      }

      return 0;
    case -9803:
      return 0;
    case 0:
      v13 = gcks_log(v8, v9);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a2 + 88);
        v15 = *(a2 + 72);
        v16 = *(a2 + 632);
        *buf = 67109888;
        *&buf[4] = v14;
        v35 = 1024;
        v36 = v15;
        v37 = 2048;
        v38 = v16;
        v39 = 2048;
        v40 = a2;
        _os_log_impl(&dword_239FB7000, v13, OS_LOG_TYPE_DEFAULT, "Completed handshake with participant [%08X] channelID [%d] DTLS context [%p] pCList [%p]. Changing status to DTLSCONNECTED.", buf, 0x22u);
      }

      *(a2 + 640) = 1;
      *(a2 + 728) = micro();
      *(a2 + 736) = 1;
      if (*(a2 + 620))
      {
        *buf = 0;
        v17 = SSLCopyPeerTrust(*(a2 + 632), buf);
        if (v17)
        {
          v19 = gcks_log(v17, v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            gckSessionPerformDTLSHandshake_cold_1();
          }

          return 2149777412;
        }

        if (!*buf)
        {
          v32 = gcks_log(0, v18);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            gckSessionPerformDTLSHandshake_cold_2();
          }

          return 2149777412;
        }

        CertificateCount = SecTrustGetCertificateCount(*buf);
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], CertificateCount, MEMORY[0x277CBF128]);
        v33 = Mutable;
        if (CertificateCount >= 1)
        {
          v28 = Mutable;
          for (i = 0; i != CertificateCount; ++i)
          {
            CertificateAtIndex = SecTrustGetCertificateAtIndex(*buf, i);
            CFArrayAppendValue(v28, CertificateAtIndex);
          }
        }

        *(a2 + 628) = 1;
        PostEventCallback(*(a1 + 408), *(a2 + 88), 6, &v33, 8, 0);
        CFRelease(*buf);
      }

      else
      {
        *(a2 + 628) = 1;
        PostEventCallback(*(a1 + 408), *(a2 + 88), 6, 0, 0, 0);
      }

      return 0;
  }

  v20 = 2149777412;
  v25 = gcks_log(v8, v9);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    gckSessionPerformDTLSHandshake_cold_3();
  }

  return v20;
}

void attempt_failover(uint64_t a1, _DWORD *a2)
{
  *&v27[7] = *MEMORY[0x277D85DE8];
  v4 = gcks_log(a1, a2);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v7 = a2[22];
    v24 = 67109120;
    v25 = v7;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Attempting failover for participant %08X.", &v24, 8u);
  }

  if (a2[20])
  {
    goto LABEL_4;
  }

  v12 = *(a1 + 7184);
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = 0;
  do
  {
    if (v12 != a2 && *(v12 + 88) == a2[22] && *(v12 + 80) >= 0)
    {
      v13 = v12;
    }

    v12 = *(v12 + 832);
  }

  while (v12);
  if (!v13)
  {
LABEL_18:
    v20 = gcks_log(v5, v6);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
LABEL_34:
      gckSessionChangeStateCList(a1);
      return;
    }

    v21 = a2[22];
    v22 = a2[94];
    if (v22 > 2)
    {
      switch(v22)
      {
        case 3:
          v23 = "Connected";
          goto LABEL_33;
        case 4:
          v23 = "Disconnected";
          goto LABEL_33;
        case 255:
          v23 = "Invalid";
          goto LABEL_33;
      }
    }

    else
    {
      switch(v22)
      {
        case 0:
          v23 = "Created";
          goto LABEL_33;
        case 1:
          v23 = "ICE";
          goto LABEL_33;
        case 2:
          v23 = "Connecting";
LABEL_33:
          v24 = 67109378;
          v25 = v21;
          v26 = 2080;
          *v27 = v23;
          _os_log_impl(&dword_239FB7000, v20, OS_LOG_TYPE_DEFAULT, "Connection timed out for participant [%08X] (%s).", &v24, 0x12u);
          goto LABEL_34;
      }
    }

    v23 = "?";
    goto LABEL_33;
  }

  if (v13 != a2)
  {
    v13[20] = 0;
    updated = gckSessionUpdateNode(a1, v13[22], v13[152], 0);
    v16 = gcks_log(updated, v15);
    v5 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v17 = v13[18];
      v19 = v13[21];
      v18 = v13[22];
      v24 = 67109632;
      v25 = v17;
      v26 = 1024;
      *v27 = v18;
      v27[2] = 1024;
      *&v27[3] = v19;
      _os_log_impl(&dword_239FB7000, v16, OS_LOG_TYPE_DEFAULT, "Promoted channel %d for participant %08X to active status: original priority %d.", &v24, 0x14u);
    }
  }

LABEL_4:
  a2[20] = -1;
  v8 = gcks_log(v5, v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a2[18];
    v11 = a2[21];
    v10 = a2[22];
    v24 = 67109632;
    v25 = v9;
    v26 = 1024;
    *v27 = v10;
    v27[2] = 1024;
    *&v27[3] = v11;
    _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, "Demoted channel %d for participant %08X to inactive status: original priority %d.", &v24, 0x14u);
  }

  gckSessionReconcileChannelPriority(a1, a2[22]);
}

uint64_t gckSessionRecvMessage(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v200 = *MEMORY[0x277D85DE8];
  v197 = 0u;
  memset(v198, 0, 24);
  v196 = 0;
  v194 = 0u;
  v195 = 0u;
  memset(v193, 0, sizeof(v193));
  *&v179.msg_namelen = 128;
  memset(v192, 0, sizeof(v192));
  v191[0] = v199;
  v191[1] = 4096;
  v179.msg_name = v193;
  v179.msg_iov = v191;
  *&v179.msg_iovlen = 1;
  v179.msg_control = v192;
  *&v179.msg_controllen = 32;
  v7 = recvmsg(*v4, &v179, 0);
  if (v7 == -1)
  {
    v16 = __error();
    v11 = *v16 | 0xC01A0000;
    v18 = gcks_log(v16, v17);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      return v11;
    }

    v19 = *v5;
    v187 = 67109376;
    v188 = v19;
    v189 = 1024;
    v190 = v11;
    v20 = "Recvmsg on socket %d failed (%X).";
    v21 = &v187;
    v22 = v18;
LABEL_8:
    v23 = 14;
LABEL_9:
    _os_log_impl(&dword_239FB7000, v22, OS_LOG_TYPE_DEFAULT, v20, v21, v23);
    return v11;
  }

  v9 = v7;
  if (v7)
  {
    v24 = *(v5 + 400);
    v197 = *(v5 + 384);
    v198[0] = v24;
    *&v198[1] = *(v5 + 416);
    if (v179.msg_controllen >= 0xC)
    {
      msg_control = v179.msg_control;
      if (v179.msg_control)
      {
        while (msg_control[1] != 41 || msg_control[2] != 46)
        {
          msg_control = (msg_control + ((*msg_control + 3) & 0x1FFFFFFFCLL));
          if ((msg_control + 3) > v179.msg_control + v179.msg_controllen)
          {
            goto LABEL_21;
          }
        }

        if (msg_control[3] || msg_control[4] || msg_control[5] != -65536)
        {
          LODWORD(v197) = 1;
          *(v198 + 4) = *(msg_control + 3);
        }

        else
        {
          v26 = bswap32(msg_control[6]);
          LODWORD(v197) = v197 & 0xFFFFFFFE;
          DWORD1(v198[0]) = v26;
        }
      }
    }

LABEL_21:
    if (SockAddrCompareAddr())
    {
      SAToIPPORT();
    }

    else
    {
      v196 = *(v5 + 456);
      v27 = *(v5 + 440);
      v194 = *(v5 + 424);
      v195 = v27;
    }

    v177 = 0;
    v178 = 0;
    if (v199[0] == 208)
    {
      v186[0] = 0;
      v28 = malloc_type_calloc(1uLL, 0x1070uLL, 0x1020040E1A74566uLL);
      if (!v28)
      {
        v11 = 2149187587;
        v95 = gcks_log(0, v29);
        v47 = os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT);
        if (!v47)
        {
LABEL_78:
          v100 = gcks_log(v47, v48);
          if (!os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
          {
            return v11;
          }

          v181 = 134217984;
          *v182 = v11;
          v20 = "Failed to process DTLS packet with error %ld.";
          v21 = &v181;
          v22 = v100;
          v23 = 12;
          goto LABEL_9;
        }

        v187 = 67109376;
        v188 = 4208;
        v189 = 1024;
        v190 = -2145779709;
        v96 = "Calloc (%d bytes) failed (%X).";
        v97 = &v187;
        v98 = v95;
        v99 = 14;
LABEL_77:
        _os_log_impl(&dword_239FB7000, v98, OS_LOG_TYPE_DEFAULT, v96, v97, v99);
        goto LABEL_78;
      }

      v30 = v28;
      v31 = v9 - 1;
      v28[1027] = *(v5 + 88);
      __memcpy_chk();
      v30[1025] = 0;
      v30[1026] = v31;
      v32 = *(v5 + 416);
      v33 = *(v5 + 400);
      *(v30 + 257) = *(v5 + 384);
      *(v30 + 258) = v33;
      *(v30 + 518) = v32;
      v35 = *(v5 + 424);
      v34 = *(v5 + 440);
      *(v30 + 523) = *(v5 + 456);
      *(v30 + 1038) = v35;
      *(v30 + 1042) = v34;
      *(v30 + 524) = v3;
      pthread_mutex_lock((v5 + 768));
      v36 = (v5 + 656);
      do
      {
        v37 = v36;
        v38 = *v36;
        v36 = (*v36 + 4200);
      }

      while (v38);
      *v37 = v30;
      v39 = *(v5 + 640);
      v40 = *(v5 + 632);
      v41 = pthread_mutex_unlock((v5 + 768));
      if (!v40)
      {
        v101 = gcks_log(v41, v42);
        if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
        {
          return 0;
        }

        v102 = *(v5 + 88);
        v103 = *(v5 + 72);
        v187 = 67109376;
        v188 = v102;
        v189 = 1024;
        v190 = v103;
        v13 = "DTLS context isn't set up yet for participant [%08X] on channel [%d]. Drop this packet.";
        v14 = v101;
        v15 = 14;
LABEL_5:
        _os_log_impl(&dword_239FB7000, v14, OS_LOG_TYPE_DEFAULT, v13, &v187, v15);
        return 0;
      }

      if (v39 != 1)
      {
        gckSessionScheduleDTLSHandshake(v6, v5);
        return 0;
      }

      pthread_mutex_lock((v5 + 768));
      v43 = SSLRead(*(v5 + 632), &v187, v31, v186);
      v44 = pthread_mutex_unlock((v5 + 768));
      if (v43)
      {
        v46 = gcks_log(v44, v45);
        v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
        if (v47)
        {
          v49 = *(v5 + 88);
          v50 = *(v5 + 72);
          v51 = *(v5 + 632);
          if ((v43 + 9851) > 0x33)
          {
            v52 = "?";
          }

          else
          {
            v52 = off_278B44418[v43 + 9851];
          }

          v181 = 67110146;
          *v182 = v49;
          *&v182[4] = 1024;
          *&v182[6] = v50;
          LOWORD(v183[0]) = 2048;
          *(v183 + 2) = v51;
          HIWORD(v183[2]) = 2080;
          *&v183[3] = v52;
          v184 = 2048;
          v185[0] = v43;
          _os_log_impl(&dword_239FB7000, v46, OS_LOG_TYPE_DEFAULT, "SSLRead for participant [%08X] channelID [%d] DTLS context [%p] returned with error %s (%ld).", &v181, 0x2Cu);
        }

        v11 = 2149187618;
        if ((v43 + 9816) > 0xB)
        {
          goto LABEL_78;
        }

        if (((1 << (v43 + 88)) & 0xC01) == 0)
        {
          goto LABEL_78;
        }

        v130 = gcks_log(v47, v48);
        v47 = os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT);
        v11 = 2149187617;
        if (!v47)
        {
          goto LABEL_78;
        }

        v131 = *(v5 + 88);
        v132 = *(v5 + 72);
        v133 = *(v5 + 632);
        v181 = 67109632;
        *v182 = v131;
        *&v182[4] = 1024;
        *&v182[6] = v132;
        LOWORD(v183[0]) = 2048;
        *(v183 + 2) = v133;
        v96 = "DTLS connection closed gracefully for participant [%08X] channelID [%d] DTLS context [%p].";
        v97 = &v181;
        v98 = v130;
        v99 = 24;
        goto LABEL_77;
      }

      if (!v186[0])
      {
        return 0;
      }

      v9 = SLODWORD(v186[0]);
      v53 = &v187;
    }

    else
    {
      v53 = v199;
    }

    v176 = 0;
    v54 = OSPFParse(&v178, &v177, v53, v9, 0, 0, &v176);
    v174 = v6;
    if (v54 >= 1)
    {
      v56 = v178;
      v57 = *(v178 + 1);
      *(v5 + 16) = v3;
      v172 = v57;
      if (v57 == 1 && (*(v56 + 4) & 1) != 0)
      {
        *(v5 + 32) = 1;
      }

      v169 = v5;
      v58 = gcks_log(v54, v55);
      v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG);
      if (v59)
      {
        v126 = IPPORTToString();
        v127 = *(v178 + 12);
        v128 = IPPORTToString();
        v129 = *(v178 + 8);
        v181 = 136316418;
        *v182 = v126;
        v6 = v174;
        *&v182[8] = 1024;
        v183[0] = v127;
        LOWORD(v183[1]) = 2080;
        *(&v183[1] + 2) = v128;
        HIWORD(v183[3]) = 1024;
        v183[4] = v129;
        v184 = 1024;
        LODWORD(v185[0]) = v9;
        WORD2(v185[0]) = 1024;
        *(v185 + 6) = v172;
        _os_log_debug_impl(&dword_239FB7000, v58, OS_LOG_TYPE_DEBUG, "[%s] %08X <= [%s] %08X: %d bytes(%d).", &v181, 0x2Eu);
      }

      v60 = v178;
      v61 = (v178 + 12);
      v62 = *v178 & 0xF;
      v175 = 4 * v62;
      MEMORY[0x28223BE20](v59);
      v64 = (v168 - v63);
      v65 = v172;
      if (!v62)
      {
        goto LABEL_171;
      }

      v173 = 0;
      v66 = v62;
      v170 = v168 - v63;
      v171 = v61;
      do
      {
        v68 = *v61++;
        v67 = v68;
        if (v68 == *(v6 + 416))
        {
          v173 = 1;
          NextHop = 0xFFFFFFFFLL;
        }

        else
        {
          NextHop = gckSessionFindNextHop(v6, v67);
        }

        *v64++ = NextHop;
        --v66;
      }

      while (v66);
      v168[1] = v168;
      v70 = (v60 + 16);
      v71 = v170;
      v72 = v170 + 4;
      v73 = v62 - 1;
      do
      {
        v74 = *&v71[4 * v66];
        if (v74 == -1)
        {
          ++v66;
        }

        else
        {
          NextHop = MEMORY[0x28223BE20](NextHop);
          v76 = (v168 - v75);
          *(v168 - v75) = *(v77 + 4 * v66++);
          v78 = 1;
          if (v66 < v62)
          {
            v79 = v73;
            v80 = v72;
            v81 = v70;
            do
            {
              if (*v80 == v74)
              {
                v76[v78] = *v81;
                v78 = (v78 + 1);
                *v80 = -1;
              }

              ++v81;
              v80 += 4;
              --v79;
            }

            while (v79);
          }

          if (v65 == 10 || v65 == 5)
          {
            v82 = v65;
            v83 = v174;
            NextHop = OSPFMakeData(&v181, 4096, v177, 0, v82, *(v178 + 8), v76, v78, *(*(v174 + 408) + 24), *(*(v174 + 408) + 32), 64, 0, 0);
            if (NextHop >= 1)
            {
              NextHop = SendUDPPacketToParticipantChannelID(v83, &v181, NextHop, v74, 0, -1, 1);
            }

            v65 = v172;
            v71 = v170;
          }
        }

        ++v70;
        v72 += 4;
        --v73;
      }

      while (v66 != v62);
      v84 = v174;
      if (!v173)
      {
        goto LABEL_171;
      }

      pthread_mutex_lock((v174 + 7080));
      v85 = *(v84 + 420);
      if (v85 < 1)
      {
        v88 = 0;
        v87 = v169;
      }

      else
      {
        v86 = *(v178 + 8);
        v87 = v169;
        if (*(v84 + 424) == v86)
        {
          v88 = 1;
        }

        else
        {
          v104 = (v84 + 840);
          v105 = 1;
          do
          {
            v106 = v105;
            if (v85 == v105)
            {
              break;
            }

            v107 = *v104;
            ++v105;
            v104 += 104;
          }

          while (v107 != v86);
          v88 = v106 < v85;
        }
      }

      v108 = pthread_mutex_unlock((v174 + 7080));
      if (v65 == 10 || v65 == 5)
      {
        if (v88)
        {
          if (v65 == 10)
          {
            v110 = 5;
          }

          else
          {
            v110 = 3;
          }

          PostEventCallback(*(v174 + 408), *(v178 + 8), v110, *v177, *(v177 + 8), 0);
        }

        else
        {
          v111 = gcks_log(v108, v109);
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
          {
            v112 = *(v178 + 8);
            v181 = 67109120;
            *v182 = v112;
            _os_log_impl(&dword_239FB7000, v111, OS_LOG_TYPE_DEFAULT, "Skipping data from unroutable peer (OSPF source ID [%08X]).", &v181, 8u);
          }
        }
      }

      else
      {
        v113 = v177;
        v114 = *(v178 + 1);
        if (v114 <= 2)
        {
          if (v114 == 1)
          {
            gckSessionProcessHello(v174, v87, v177, 1);
          }

          else
          {
            if (v114 != 2)
            {
              goto LABEL_172;
            }

            gckSessionProcessDD(v174, v87, v177);
          }
        }

        else if (v114 == 3)
        {
          gckSessionProcessLSA(v174, v87, v177);
        }

        else
        {
          if (v114 == 4)
          {
            v147 = gcks_log(v108, v109);
            if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
            {
              v148 = *(v174 + 416);
              v149 = *(v87 + 88);
              v150 = v113[6];
              v151 = *(v87 + 72);
              v152 = *(v87 + 80);
              v181 = 67110144;
              *v182 = v148;
              *&v182[4] = 1024;
              *&v182[6] = v149;
              LOWORD(v183[0]) = 1024;
              *(v183 + 2) = v150;
              HIWORD(v183[1]) = 1024;
              v183[2] = v151;
              LOWORD(v183[3]) = 1024;
              *(&v183[3] + 2) = v152;
              _os_log_impl(&dword_239FB7000, v147, OS_LOG_TYPE_DEFAULT, "I am %08X. Received LSAACK from particpant %08X with SN [%d] channel [%d] priority [%d].", &v181, 0x20u);
            }

            pthread_mutex_lock((v87 + 768));
            v153 = *(v87 + 600);
            if (v153)
            {
              v154 = (v87 + 600);
              do
              {
                if (*v153 == 4 && *(v153 + 28) == v113[6])
                {
                  *v154 = *(v153 + 8);
                  v155 = *(v153 + 5);
                  if (v155)
                  {
                    free(v155);
                  }

                  free(v153);
                }

                else
                {
                  v154 = v153 + 64;
                }

                v153 = *v154;
              }

              while (*v154);
            }
          }

          else
          {
            if (v114 != 8)
            {
              goto LABEL_172;
            }

            v115 = micro();
            v118 = gcks_log(v116, v117);
            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
            {
              if ((v113[6] & 2) != 0)
              {
                v119 = "request";
              }

              else
              {
                v119 = "response";
              }

              v120 = v113[7];
              v121 = *(v87 + 88);
              v122 = *(v87 + 72);
              v181 = 136315906;
              *v182 = v119;
              *&v182[8] = 1024;
              v183[0] = v120;
              LOWORD(v183[1]) = 1024;
              *(&v183[1] + 2) = v121;
              HIWORD(v183[2]) = 1024;
              v183[3] = v122;
              _os_log_impl(&dword_239FB7000, v118, OS_LOG_TYPE_DEFAULT, "Received Heartbeat (%s) with SN [%d] from participant [%08X] over channel [%d].", &v181, 0x1Eu);
            }

            if ((v113[6] & 2) != 0)
            {
              v156 = *(v87 + 88);
              v157 = v113[7];
              v158 = *(v87 + 72);
              v180 = 0;
              v159 = OSPFMakeHeartbeat(&v180, *(v174 + 416), v156, 0, v157);
              v161 = gcks_log(v159, v160);
              v162 = v161;
              if ((v159 & 0x80000000) != 0)
              {
                if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
                {
                  v181 = 67109632;
                  *v182 = v156;
                  *&v182[4] = 1024;
                  *&v182[6] = v157;
                  LOWORD(v183[0]) = 1024;
                  *(v183 + 2) = v158;
                  _os_log_error_impl(&dword_239FB7000, v162, OS_LOG_TYPE_ERROR, "OSPFMakeHeartbeat failed for participant %08X, SN [%d], channel [%d].", &v181, 0x14u);
                }
              }

              else
              {
                if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
                {
                  v181 = 136315906;
                  *v182 = "response";
                  *&v182[8] = 1024;
                  v183[0] = v157;
                  LOWORD(v183[1]) = 1024;
                  *(&v183[1] + 2) = v156;
                  HIWORD(v183[2]) = 1024;
                  v183[3] = v158;
                  _os_log_impl(&dword_239FB7000, v162, OS_LOG_TYPE_DEFAULT, "Sending Heartbeat (%s) with SN [%d] to participant [%08X] over channel [%d].", &v181, 0x1Eu);
                }

                SendUDPPacketToParticipantChannelID(v174, v180, v159, v156, 0, v158, 0);
                free(v180);
              }

              goto LABEL_171;
            }

            v123 = pthread_mutex_lock((v87 + 768));
            v125 = *(v87 + 600);
            if (v125)
            {
              while (*v125 != 8)
              {
                v125 = *(v125 + 64);
                if (!v125)
                {
                  goto LABEL_163;
                }
              }

              if (*(v125 + 56) == v113[7])
              {
                *(v125 + 8) = *(v174 + 48);
                v164 = *(v87 + 360);
                *(v125 + 32) = v115 + v164;
                *(v125 + 16) = v115 + v164 * 0.5;
              }

              else
              {
                v165 = gcks_log(v123, v124);
                if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
                {
                  v166 = v113[7];
                  v167 = *(v125 + 56);
                  v181 = 67109376;
                  *v182 = v166;
                  *&v182[4] = 1024;
                  *&v182[6] = v167;
                  _os_log_impl(&dword_239FB7000, v165, OS_LOG_TYPE_DEFAULT, "Received SN [%u] doesn't match the expected SN [%u].", &v181, 0xEu);
                }
              }
            }
          }

LABEL_163:
          pthread_mutex_unlock((v87 + 768));
        }
      }

LABEL_171:
      v113 = v177;
LABEL_172:
      if (v113)
      {
        free(v113);
      }

      return 0;
    }

    if (!v54)
    {
      if (*(v178 + 1) == 1)
      {
        gckSessionProcessHello(v6, v5, v177, 0);
      }

      if (v177)
      {
        free(v177);
      }

      return 0;
    }

    v89 = "?";
    if ((v176 + 3010) <= 9)
    {
      v89 = off_278B445B8[v176 + 3010];
    }

    v90 = gcks_log(v54, v55);
    if (!os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_141;
    }

    v91 = *(v5 + 88);
    v92 = *(v5 + 72);
    v93 = *(v5 + 376);
    if (v93 > 2)
    {
      switch(v93)
      {
        case 3:
          v94 = "Connected";
          goto LABEL_135;
        case 4:
          v94 = "Disconnected";
          goto LABEL_135;
        case 255:
          v94 = "Invalid";
          goto LABEL_135;
      }
    }

    else
    {
      switch(v93)
      {
        case 0:
          v94 = "Created";
          goto LABEL_135;
        case 1:
          v94 = "ICE";
          goto LABEL_135;
        case 2:
          v94 = "Connecting";
LABEL_135:
          v134 = *(v5 + 640);
          v135 = "DTLSNotConnected";
          if (v134)
          {
            v135 = "?";
          }

          v181 = 67110146;
          *v182 = v91;
          *&v182[4] = 1024;
          if (v134 == 1)
          {
            v136 = "DTLSConnected";
          }

          else
          {
            v136 = v135;
          }

          *&v182[6] = v92;
          LOWORD(v183[0]) = 2080;
          *(v183 + 2) = v94;
          HIWORD(v183[2]) = 2080;
          *&v183[3] = v136;
          v184 = 2080;
          v185[0] = v89;
          _os_log_impl(&dword_239FB7000, v90, OS_LOG_TYPE_DEFAULT, "Non-OSPF packet received from participant %08X on channel %d. State=%s DTLSState=%s OSPFParse err=%s.", &v181, 0x2Cu);
LABEL_141:
          v137 = malloc_type_calloc(1uLL, 0x1070uLL, 0x1020040E1A74566uLL);
          if (v137)
          {
            v139 = v137;
            v137[1027] = *(v5 + 88);
            if (v9 >> 1 >= 0x801)
            {
              v140 = gcks_log(v137, v138);
              if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
              {
                gckSessionRecvMessage_cold_1();
              }

              MCDashboardLog("MC: iLenClearText=%ld (out of bounds) OSPFParse err=%s - <rdar://problem/26050877>.", v9, v89);
              LODWORD(v9) = 0;
            }

            __memcpy_chk();
            v139[1026] = v9;
            v141 = v198[0];
            *(v139 + 257) = v197;
            *(v139 + 258) = v141;
            *(v139 + 518) = *&v198[1];
            v142 = v195;
            *(v139 + 1038) = v194;
            *(v139 + 1042) = v142;
            *(v139 + 523) = v196;
            *(v139 + 524) = v3;
            pthread_mutex_lock((v174 + 7400));
            v143 = (v174 + 7392);
            do
            {
              v144 = v143;
              v145 = *v143;
              v143 = (*v143 + 4200);
            }

            while (v145);
            *v144 = v139;
            pthread_cond_broadcast((v174 + 7464));
            pthread_mutex_unlock((v174 + 7400));
            return 0;
          }

          v11 = 2149187587;
          v146 = gcks_log(0, v138);
          if (!os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
          {
            return v11;
          }

          v181 = 67109376;
          *v182 = 4208;
          *&v182[4] = 1024;
          *&v182[6] = -2145779709;
          v20 = "Calloc (%d bytes) failed with error (%X).";
          v21 = &v181;
          v22 = v146;
          goto LABEL_8;
      }
    }

    v94 = "?";
    goto LABEL_135;
  }

  v10 = gcks_log(0, v8);
  v11 = 0;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *v5;
    v187 = 67109120;
    v188 = v12;
    v13 = "Recvmsg on socket %d returned 0 (empty message).";
    v14 = v10;
    v15 = 8;
    goto LABEL_5;
  }

  return v11;
}

void gckSessionProcessHello(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&v60[5] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 376);
  v9 = gcks_log(a1, a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a2 + 88);
    v11 = *(a2 + 72);
    v12 = *(a3 + 16);
    *buf = 67109632;
    *v59 = v10;
    *&v59[4] = 1024;
    *&v59[6] = v11;
    v60[0] = 2048;
    *&v60[1] = v12;
    _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Received Hello from participant [%08X] over channel [%d]. Hello Flags [%llX].", buf, 0x18u);
  }

  v13 = micro();
  if (a4)
  {
    pthread_mutex_lock((a2 + 768));
    v14 = gckSessionChangeStateCList(a1);
    pthread_mutex_unlock((a2 + 768));
    v15 = *(a3 + 12);
    v16 = *(a1 + 24);
    if (v16 < v15)
    {
      v15 = v16;
    }

    if (v15 <= 5)
    {
      v17 = 5;
    }

    else
    {
      v17 = v15;
    }

    v18 = v14 >= 0;
  }

  else
  {
    v17 = 0;
    v18 = 1;
  }

  v19 = *(a2 + 88);
  if (*(a1 + 416) <= v19 || (v20 = gckSessionSendHello(a1, v19, 0, v17, *(a2 + 72)), (v20 & 0x80000000) == 0) || v20 == -1072037876)
  {
    if (!a4)
    {
      return;
    }
  }

  else
  {
    v22 = gcks_log(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      gckSessionProcessHello_cold_1();
      if (!a4)
      {
        return;
      }
    }

    else if (!a4)
    {
      return;
    }

    pthread_mutex_lock((a2 + 768));
    gckSessionChangeStateCList(a1);
    pthread_mutex_unlock((a2 + 768));
  }

  v23 = pthread_mutex_lock((a2 + 768));
  v25 = *(a3 + 16);
  *(a2 + 40) = v25;
  v26 = (a2 + 600);
  v27 = *(a2 + 600);
  if ((v25 & 2) == 0)
  {
    if (v27)
    {
      while (1)
      {
        v28 = v27;
        if (*v27 == 1)
        {
          break;
        }

        v27 = *(v27 + 8);
        if (!v27)
        {
          v26 = (v28 + 8);
          goto LABEL_23;
        }
      }

      v27[1] = 0.065;
      v48 = v13 + v17;
      v27[4] = v48;
      if (*(v27 + 5))
      {
        v49 = *(a1 + 32);
      }

      else
      {
        v49 = 0.0;
      }

      v27[2] = v48 - v49;
    }

    else
    {
LABEL_23:
      v29 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
      *v29 = 1;
      v29[1] = 0.065;
      v30 = v13 + v17;
      v29[4] = v30;
      v29[2] = v30;
      v29[5] = 0.0;
      *(v29 + 12) = 0;
      *(v29 + 13) = *(a2 + 88);
      *v26 = v29;
    }

    goto LABEL_44;
  }

  if (v27)
  {
    do
    {
      v31 = *v27;
      if (v31 == 1)
      {
        v32 = gcks_log(v23, v24);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(a2 + 88);
          v34 = *(a2 + 72);
          *buf = 67109376;
          *v59 = v33;
          *&v59[4] = 1024;
          *&v59[6] = v34;
          _os_log_impl(&dword_239FB7000, v32, OS_LOG_TYPE_DEFAULT, "Remove Hello from the retry list for participant [%08X] channel [%d].", buf, 0xEu);
        }

        *v26 = *(v27 + 8);
        v35 = *(v27 + 5);
        if (v35)
        {
          free(v35);
        }

        free(v27);
      }

      else
      {
        if (v31 == 8)
        {
          v27[1] = *(a1 + 48);
          v50 = *(a2 + 360);
          v27[4] = v13 + v50;
          v27[2] = v13 + v50 * 0.5;
          v51 = gcks_log(v23, v24);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = *(v27 + 2);
            v53 = *(v27 + 4);
            *buf = 134218240;
            *v59 = v52;
            *&v59[8] = 2048;
            *v60 = v53;
            v45 = "Heartbeat queued. Updated state to: nextFire [%.1lf] waitUntil [%.1lf].";
            v46 = v51;
            v47 = 22;
LABEL_41:
            _os_log_impl(&dword_239FB7000, v46, OS_LOG_TYPE_DEFAULT, v45, buf, v47);
          }

          goto LABEL_44;
        }

        v26 = (v27 + 8);
      }

      v27 = *v26;
    }

    while (*v26);
  }

  v57 = 0;
  v36 = OSPFMakeHeartbeat(&v57, *(a1 + 416), *(a2 + 88), 1, 1u);
  if ((v36 & 0x80000000) == 0)
  {
    v37 = v36;
    v38 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
    *v38 = 8;
    v38[1] = *(a1 + 48);
    v39 = *(a2 + 360);
    v38[4] = v13 + v39;
    v38[2] = v13 + v39 * 0.5;
    *(v38 + 5) = v57;
    *(v38 + 12) = v37;
    *(v38 + 28) = 1;
    *(v38 + 13) = *(a2 + 88);
    *v26 = v38;
    v41 = gcks_log(v38, v40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = *(v38 + 28);
      v43 = *(a2 + 88);
      v44 = *(a2 + 72);
      *buf = 67109632;
      *v59 = v42;
      *&v59[4] = 1024;
      *&v59[6] = v43;
      v60[0] = 1024;
      *&v60[1] = v44;
      v45 = "Schedule a Heartbeat with SN [%d] for participant [%08X] over channel [%d].";
      v46 = v41;
      v47 = 20;
      goto LABEL_41;
    }
  }

LABEL_44:
  v54 = *(a1 + 16);
  if (v54 != -1)
  {
    *(a1 + 16) = -1;
    close(v54);
  }

  pthread_mutex_unlock((a2 + 768));
  if (v8 != 3 && v18)
  {
    v56 = *(a2 + 88);
    if (*(a1 + 416) < v56)
    {
      gckSessionSendDD(a1, v56, -1, 1);
    }
  }
}

void gckSessionProcessDD(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = *MEMORY[0x277D85DE8];
  v6 = a1 + 424;
  IsNewInformationAvailableForParticipant = gckIsNewInformationAvailableForParticipant(*(a1 + 420), a1 + 424, *(a2 + 88));
  v72 = IsNewInformationAvailableForParticipant;
  v9 = gcks_log(IsNewInformationAvailableForParticipant, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 416);
    v11 = *(a2 + 88);
    v12 = *(a2 + 72);
    v13 = *(a2 + 80);
    *buf = 67109888;
    *&buf[4] = v10;
    *&buf[8] = 1024;
    *&buf[10] = v11;
    LOWORD(v80) = 1024;
    *(&v80 + 2) = v12;
    HIWORD(v80) = 1024;
    v81 = v13;
    _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "I am %08X. Received DD from participant %08X on channel [%d] priority [%d].", buf, 0x1Au);
  }

  pthread_mutex_lock((a1 + 7080));
  TracePrintNodes(a1, *(a3 + 12), *(a3 + 16), 0, *(a2 + 88));
  pthread_mutex_unlock((a1 + 7080));
  v14 = *(a2 + 88);
  if (*(a1 + 416) > v14)
  {
    gckSessionSendDD(a1, v14, *(a2 + 72), 0);
  }

  pthread_mutex_lock((a2 + 768));
  if (*(a2 + 752) == 0.0)
  {
    *(a2 + 752) = micro();
    v17 = gcks_log(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a2 + 752);
      v19 = v18 - *(a2 + 744);
      v20 = v18 - *(a2 + 696);
      *buf = 134218240;
      *&buf[4] = v19;
      *&buf[12] = 2048;
      v80 = v20;
      _os_log_impl(&dword_239FB7000, v17, OS_LOG_TYPE_DEFAULT, "OSPF setup took %g seconds. Overall connection establishment took %g.", buf, 0x16u);
    }

    *buf = 0;
    v21 = *(a2 + 696);
    v22 = *(a2 + 704) - v21;
    v23 = *(a2 + 752);
    v24 = v23 - v21;
    v25 = *(a1 + 7528);
    if (!v25)
    {
      v25 = &stru_284D24468;
    }

    Formatted = CFPropertyListCreateFormatted(0, buf, "{%kO=%O%kO=%i%kO=%i%kO=%i%kO=%f%kO=%f%kO=%f%kO=%f%kO=%i%kO=%i%kO=%i%kO=%i}", @"sid", v25, @"localPeer", *(a1 + 416), @"remotePeer", *(a2 + 88), @"if", *(a2 + 380), @"tICE", *&v22, @"tDTLS", *(a2 + 728) - *(a2 + 720), @"tOSPF", v23 - *(a2 + 744), @"tAll", *&v24, @"chPr", *(a2 + 80), @"auth", *(a2 + 616), @"remoteAuth", *(a2 + 620), @"crypt", *(a2 + 612));
    if (Formatted)
    {
      v28 = gcks_log(Formatted, v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        gckSessionProcessDD_cold_1();
      }
    }

    else
    {
      MCMetricsLog(@"com.apple.multipeerconnectivity.gcksession.connectivityinfo", *buf, 0);
      MCDashboardLogJSON(*buf, 0, @"ConnectivityInfo");
      if (*buf)
      {
        CFRelease(*buf);
      }
    }
  }

  v29 = *(a2 + 600);
  if (v29)
  {
    v30 = (a2 + 600);
    do
    {
      if (*v29 == 2)
      {
        *v30 = v29[8];
        v31 = v29[5];
        if (v31)
        {
          free(v31);
        }

        free(v29);
      }

      else
      {
        v30 = v29 + 8;
      }

      v29 = *v30;
    }

    while (*v30);
  }

  v32 = pthread_mutex_unlock((a2 + 768));
  v33 = *(a3 + 12);
  *&v78 = *(a3 + 16);
  MEMORY[0x28223BE20](v32);
  v35 = &v71 - ((v34 + 15) & 0x7FFFFFFF0);
  v36 = pthread_mutex_lock((a1 + 7080));
  v77 = v33;
  if (v33 < 1)
  {
    LODWORD(v76) = 0;
  }

  else
  {
    v39 = 0;
    LODWORD(v76) = 0;
    *&v38 = 67109632;
    v73 = v38;
    *&v38 = 67109120;
    v75 = v38;
    v74 = v6;
    do
    {
      v40 = *(a1 + 420);
      if (v40 < 1)
      {
        LODWORD(v41) = 0;
      }

      else
      {
        v41 = 0;
        v42 = (v78 + 416 * v39);
        v43 = v6;
        while (*v42 != *v43)
        {
          ++v41;
          v43 += 208;
          if (v40 == v41)
          {
            goto LABEL_36;
          }
        }

        if (v42[136] > v43[136])
        {
          v44 = gcks_log(v36, v37);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = v42[136];
            v46 = v43[136];
            v47 = *v43;
            *buf = v73;
            *&buf[4] = v45;
            *&buf[8] = 1024;
            *&buf[10] = v46;
            LOWORD(v80) = 1024;
            *(&v80 + 2) = v47;
            _os_log_impl(&dword_239FB7000, v44, OS_LOG_TYPE_DEFAULT, "DD has newer information (DD SN [%d]/our SN [%d]) about participant [%08X]. Updating the routing table.", buf, 0x14u);
          }

          v36 = memcpy(v43, v42, 0x1A0uLL);
          v6 = v74;
        }
      }

      if (v41 == v40)
      {
LABEL_36:
        v48 = *(a1 + 420);
        v49 = gcks_log(v36, v37);
        v36 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);
        if (v48 > 15)
        {
          if (v36)
          {
            v53 = *(v78 + 416 * v39);
            *buf = v75;
            *&buf[4] = v53;
            _os_log_impl(&dword_239FB7000, v49, OS_LOG_TYPE_DEFAULT, "Maximum number of nodes reached. Ignoring node for participant [%08X].", buf, 8u);
          }
        }

        else
        {
          if (v36)
          {
            v50 = *(v78 + 416 * v39);
            *buf = v75;
            *&buf[4] = v50;
            _os_log_impl(&dword_239FB7000, v49, OS_LOG_TYPE_DEFAULT, "Adding participant [%08X] to the routing table.", buf, 8u);
          }

          v51 = (v78 + 416 * v39);
          v36 = memcpy((v6 + 416 * *(a1 + 420)), v51, 0x1A0uLL);
          ++*(a1 + 420);
          v52 = v76;
          *&v35[4 * v76] = *v51;
          LODWORD(v76) = v52 + 1;
        }
      }

      ++v39;
    }

    while (v39 != v77);
  }

  gckSessionUpdateRoutingTable(a1);
  v54 = v76;
  gckPreemptivelyClearFlagsForTransientNodes(a1, v35, v76);
  if (v72)
  {
    v55 = -1;
  }

  else
  {
    v55 = *(a2 + 88);
  }

  gckSessionSendLSA(a1, *(a1 + 420), v6, v55, 0);
  gckSessionHandleRemainingDisconnectedNodes(a1);
  v77 = *(a1 + 420);
  v58 = gcks_log(v56, v57);
  v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);
  if (v59)
  {
    *buf = 67109376;
    *&buf[4] = v77;
    *&buf[8] = 1024;
    *&buf[10] = v54;
    _os_log_impl(&dword_239FB7000, v58, OS_LOG_TYPE_DEFAULT, "Number of nodes in the routing table [%d]. New nodes [%d].", buf, 0xEu);
  }

  if (v54 >= 1)
  {
    v62 = 0;
    v76 = v54;
    *&v75 = a1 + 433;
    *&v61 = 136315138;
    v78 = v61;
    while (v77 < 1)
    {
LABEL_65:
      if (++v62 == v76)
      {
        goto LABEL_66;
      }
    }

    v63 = v77;
    v64 = v75;
    v65 = v75;
    while (1)
    {
      v66 = *&v35[4 * v62];
      if (v66 != *(v64 - 9) || *(v64 - 5) == -1)
      {
        goto LABEL_64;
      }

      if (*(a2 + 80) || *(a2 + 88) != v66)
      {
        v70 = gcks_log(v59, v60);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v78;
          *&buf[4] = v65;
          v68 = v70;
          v69 = "DD: Connected to participant %s (new connection).";
          goto LABEL_62;
        }
      }

      else
      {
        v67 = gcks_log(v59, v60);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v78;
          *&buf[4] = v65;
          v68 = v67;
          v69 = "DD: Connected to participant %s (direct connection).";
LABEL_62:
          _os_log_impl(&dword_239FB7000, v68, OS_LOG_TYPE_DEFAULT, v69, buf, 0xCu);
        }
      }

      v59 = PostEventCallback(*(a1 + 408), *(v64 - 9), 0, v64, *(v64 - 1), 0);
LABEL_64:
      v64 += 416;
      v65 += 416;
      if (!--v63)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_66:
  *(a2 + 64) = 1;
  pthread_mutex_unlock((a1 + 7080));
  gckSessionCheckPendingConnections(a1, 0);
}

void gckSessionProcessLSA(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v121 = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 16);
  v109 = *(a3 + 24);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v104 - ((v8 + 15) & 0x7FFFFFFF0);
  v10 = pthread_mutex_lock((v7 + 7080));
  v12 = gcks_log(v10, v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    v15 = *(a1 + 416);
    v16 = *(a2 + 88);
    v17 = *(a3 + 12);
    v18 = *(a2 + 72);
    v19 = *(a2 + 80);
    *buf = 67110144;
    v112 = v15;
    v113 = 1024;
    v114 = v16;
    v115 = 1024;
    v116 = v17;
    v117 = 1024;
    v118 = v18;
    v119 = 1024;
    v120 = v19;
    _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "I am %08X. Received LSA from particpant %08X with SN [%d] channel [%d] priority [%d].", buf, 0x20u);
  }

  v20 = gcks_log(v13, v14);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_239FB7000, v20, OS_LOG_TYPE_DEFAULT, "My nodes:", buf, 2u);
  }

  v21 = *(a1 + 420);
  v22 = *(a1 + 416);
  *&v110 = a1 + 424;
  TracePrintNodes(a1, v21, a1 + 424, 1, v22);
  v25 = gcks_log(v23, v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_239FB7000, v25, OS_LOG_TYPE_DEFAULT, "LSA nodes:", buf, 2u);
  }

  TracePrintNodes(a1, *(a3 + 16), *(a3 + 24), 0, *(a2 + 88));
  v29 = *(a3 + 16);
  if (v29 == *(a2 + 680))
  {
    if (v29 < 1)
    {
LABEL_19:
      gckSessionSendLSAACK(a1, *(a2 + 88), *(a2 + 72), *(a3 + 12));
      v42 = gcks_log(v40, v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *(a2 + 88);
        *buf = 67109120;
        v112 = v43;
        _os_log_impl(&dword_239FB7000, v42, OS_LOG_TYPE_DEFAULT, "Duplicate LSA from participant %08X: ignoring.", buf, 8u);
      }

      v44 = (a1 + 7080);
      goto LABEL_112;
    }

    v30 = 0;
    v31 = *(a3 + 24);
    v32 = *(a2 + 688);
    v33 = (v31 + 292);
    v34 = (v32 + 292);
    while (1)
    {
      v35 = (v31 + 416 * v30);
      v36 = (v32 + 416 * v30);
      v26 = *v36;
      if (*v35 != v26)
      {
        break;
      }

      v26 = v36[1];
      if (v35[1] != v26)
      {
        break;
      }

      v26 = v36[70];
      if (v35[70] != v26)
      {
        break;
      }

      v37 = v35[71];
      if (v37 != v36[71])
      {
        break;
      }

      v38 = v34;
      v39 = v33;
      if (v37 >= 1)
      {
        do
        {
          v27 = *v39;
          v26 = (v38 + 2);
          if (v27 != *v38)
          {
            goto LABEL_22;
          }

          v27 = *(v39 - 1);
          if (v27 != *(v38 - 1))
          {
            goto LABEL_22;
          }

          v39 += 2;
          v38 += 2;
        }

        while (--v37);
      }

      ++v30;
      v33 += 104;
      v34 += 104;
      if (v30 == v29)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_22:
  *(a2 + 680) = v29;
  v45 = v109;
  if (v29 >= 1)
  {
    v46 = 0;
    v47 = *(a3 + 24);
    v48 = 288;
    do
    {
      v49 = (v47 + 416 * v46);
      v50 = (*(a2 + 688) + 416 * v46);
      *v50 = *v49;
      v51 = v49[35];
      v50[35] = v51;
      if (SHIDWORD(v51) >= 1)
      {
        v52 = 0;
        do
        {
          *(*(a2 + 688) + v48 + 8 * v52) = *(v47 + v48 + 8 * v52);
          ++v52;
          v47 = *(a3 + 24);
        }

        while (v52 < *(v47 + 416 * v46 + 284));
        LODWORD(v29) = *(a3 + 16);
      }

      ++v46;
      v48 += 416;
    }

    while (v46 < v29);
  }

  if (v6 < 1)
  {
    v54 = 0;
  }

  else
  {
    v53 = 0;
    v54 = 0;
    v55 = v45 + 72;
    do
    {
      v56 = v45[104 * v53 + 71];
      v57 = v55;
      if (v56 >= 1)
      {
        while (1)
        {
          v58 = *v57;
          v57 += 2;
          if (v58 == *(a1 + 416))
          {
            break;
          }

          if (!--v56)
          {
            goto LABEL_36;
          }
        }

        v54 = 1;
      }

LABEL_36:
      ++v53;
      v55 += 104;
    }

    while (v53 != v6);
  }

  if (*(a3 + 16) == 1 && !((*v45 != *(a2 + 88)) | v54 & 1))
  {
    v63 = gcks_log(v26, v27);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_239FB7000, v63, OS_LOG_TYPE_DEFAULT, "Got declining LSA.", buf, 2u);
    }

    v64 = *(a1 + 420);
    v27 = *v109;
    if (v64 < 1)
    {
      goto LABEL_52;
    }

    if (*v110 != v27)
    {
      v65 = (a1 + 840);
      v66 = 1;
      do
      {
        v67 = v66;
        if (v64 == v66)
        {
          break;
        }

        v68 = *v65;
        ++v66;
        v65 += 104;
      }

      while (v68 != v27);
      if (v67 >= v64)
      {
LABEL_52:
        PostEventCallback(*(a1 + 408), v27, 2, v109 + 9, *(v109 + 8), 0);
      }
    }

    *(a2 + 56) = 1;
    v26 = *(a1 + 16);
    v45 = v109;
    if (v26 != -1)
    {
      *(a1 + 16) = -1;
      v26 = close(v26);
      v45 = v109;
    }

    goto LABEL_55;
  }

  if (*(a2 + 64))
  {
LABEL_55:
    if (v6 >= 1)
    {
      v69 = 0;
      v108 = 0;
      v106 = a1 + 712;
      *&v28 = 67109632;
      v104 = v28;
      *&v28 = 67109120;
      v107 = v28;
      v105 = v6;
      while (1)
      {
        v70 = *(a1 + 420);
        if (v70 < 1)
        {
          LODWORD(v71) = 0;
        }

        else
        {
          v71 = 0;
          v72 = &v45[104 * v69];
          v73 = v110;
          while (*v72 != *v73)
          {
            ++v71;
            v73 += 104;
            if (v70 == v71)
            {
              goto LABEL_70;
            }
          }

          if (v72[136] > *(v73 + 136))
          {
            v74 = gcks_log(v26, v27);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
            {
              v75 = v72[136];
              v76 = *(v73 + 136);
              v77 = *v73;
              *buf = v104;
              v112 = v75;
              v113 = 1024;
              v114 = v76;
              v115 = 1024;
              v116 = v77;
              _os_log_impl(&dword_239FB7000, v74, OS_LOG_TYPE_DEFAULT, "LSA has newer information (LSA SN [%d]/our SN [%d]) about participant [%08X]. Updating the routing table.", buf, 0x14u);
            }

            v26 = memcpy(v73, v72, 0x1A0uLL);
            if (v73[71])
            {
              v6 = v105;
            }

            else
            {
              v86 = gcks_log(v26, v27);
              v26 = os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT);
              if (v26)
              {
                v87 = *v73;
                *buf = v107;
                v112 = v87;
                _os_log_impl(&dword_239FB7000, v86, OS_LOG_TYPE_DEFAULT, "Participant [%08X] is disconnected.", buf, 8u);
              }

              v88 = *(a1 + 708);
              v6 = v105;
              if (v88 > 0)
              {
                v27 = v106;
                while (*v27 != *v73)
                {
                  v27 += 8;
                  if (!--v88)
                  {
                    goto LABEL_68;
                  }
                }

                gckSessionDeleteNeighbor(a1, v27);
                gckSessionRequestLSAUpdateForNode(v110, v89);
              }
            }

LABEL_68:
            v45 = v109;
          }
        }

        if (v71 != v70)
        {
          goto LABEL_84;
        }

LABEL_70:
        v78 = &v45[104 * v69];
        if (v78[71])
        {
          break;
        }

        v83 = *(a1 + 708);
        if (v83 >= 1)
        {
          v27 = v106;
          while (*v27 != *v78)
          {
            v27 += 8;
            if (!--v83)
            {
              goto LABEL_83;
            }
          }

          gckSessionDeleteNeighbor(a1, v27);
          gckSessionRequestLSAUpdateForNode(v110, v85);
          goto LABEL_83;
        }

LABEL_84:
        if (++v69 == v6)
        {
          goto LABEL_95;
        }
      }

      v79 = *(a1 + 420);
      v80 = gcks_log(v26, v27);
      v26 = os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
      if (v79 > 15)
      {
        if (v26)
        {
          v84 = *v78;
          *buf = v107;
          v112 = v84;
          _os_log_impl(&dword_239FB7000, v80, OS_LOG_TYPE_DEFAULT, "Maximum number of nodes reached. Ignoring node [%08X].", buf, 8u);
        }
      }

      else
      {
        if (v26)
        {
          v81 = *v78;
          *buf = v107;
          v112 = v81;
          _os_log_impl(&dword_239FB7000, v80, OS_LOG_TYPE_DEFAULT, "Adding participant [%08X] to the routing table.", buf, 8u);
        }

        v26 = memcpy((v110 + 416 * *(a1 + 420)), v78, 0x1A0uLL);
        ++*(a1 + 420);
        v82 = v108;
        *&v9[4 * v108] = *v78;
        v108 = v82 + 1;
      }

LABEL_83:
      v45 = v109;
      goto LABEL_84;
    }

    v108 = 0;
LABEL_95:
    gckSessionUpdateRoutingTable(a1);
    gckSessionSendLSAACK(a1, *(a2 + 88), *(a2 + 72), *(a3 + 12));
    IsNewInformationAvailableForParticipant = gckIsNewInformationAvailableForParticipant(*(a1 + 420), v110, *(a2 + 88));
    gckPreemptivelyClearFlagsForTransientNodes(a1, v9, v108);
    if (IsNewInformationAvailableForParticipant)
    {
      v91 = -1;
    }

    else
    {
      v91 = *(a2 + 88);
    }

    gckSessionSendLSA(a1, *(a1 + 420), v110, v91, 0);
    v92 = v108;
    gckSessionHandleRemainingDisconnectedNodes(a1);
    v96 = *(a1 + 420);
    if (v92 >= 1)
    {
      v97 = 0;
      v98 = v108;
      v109 = (a1 + 433);
      *&v95 = 67109120;
      v110 = v95;
      do
      {
        if (v96 >= 1)
        {
          v99 = v96;
          v100 = v109;
          do
          {
            if (*&v9[4 * v97] == *(v100 - 9) && *(v100 - 5) != -1)
            {
              v101 = gcks_log(v93, v94);
              if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
              {
                v102 = *(v100 - 9);
                *buf = v110;
                v112 = v102;
                _os_log_impl(&dword_239FB7000, v101, OS_LOG_TYPE_DEFAULT, "Connected to participant [%08X] (new connection).", buf, 8u);
              }

              v93 = PostEventCallback(*(a1 + 408), *(v100 - 9), 0, v100, *(v100 - 1), 0);
            }

            v100 += 416;
            --v99;
          }

          while (v99);
        }

        ++v97;
      }

      while (v97 != v98);
    }

    v103 = gcks_log(v93, v94);
    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v112 = v96;
      v113 = 1024;
      v114 = v108;
      _os_log_impl(&dword_239FB7000, v103, OS_LOG_TYPE_DEFAULT, "Number of nodes in the routing table [%d] -- New nodes [%d].", buf, 0xEu);
    }

    v44 = (a1 + 7080);
LABEL_112:
    pthread_mutex_unlock(v44);
    return;
  }

  v59 = pthread_mutex_unlock((a1 + 7080));
  v61 = gcks_log(v59, v60);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    v62 = *(a2 + 88);
    *buf = 67109120;
    v112 = v62;
    _os_log_impl(&dword_239FB7000, v61, OS_LOG_TYPE_DEFAULT, "Premature LSA from participant %08X: ignoring.", buf, 8u);
  }
}